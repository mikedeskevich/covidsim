#!/usr/bin/perl

#power of the population
#the goal is to keep the population a power of 4
#so I just build it up from the power so everything
#is self consistent
$pdim=8;

#initial infection rate
$pinf=0.001;

#transmission probability
$ptrans=0.20;

#death rate
$pdeath=0.001;

#hospital capacity factor
$capacity=4;

#leaky border factor
#$pleak=0.100;
$pleak=shift;

#contageous time
$ttrans=20;

######################

#for graphing, the size of the square
#to put people on
$dim=2**$pdim;
$capacity=$dim/$capacity;

#the number of people that fit in our square
$popct=$dim*$dim;

#a list of the people, in efficent, but makes the perl easier to read
@people=(0..$popct-1);

#size of social distance borders
$sdim=$dim;

#adjust probability of death to an approximate daily rate
$pdeath/=$ttrans;

######################

#this loop will keep dividing the border size by 2
while ($sdim>1)
{
	$nsplit=$dim/$sdim;
	$spopct=$sdim*$sdim;
	print STDERR "Social Distance Size = $spopct\n";

	#write the grid file for plotting
	open (GRID, ">grid-$popct-$spopct.dat") or die;
	if ($nsplit>1)
	{
		for $i (1..$nsplit-1)
		{
			$loc=$sdim*$i-0.5;
			$start=0;
			$end=$dim-1;
			print GRID "$loc $start\n";
			print GRID "$loc $end\n";
			print GRID "\n";
			print GRID "$start $loc\n";
			print GRID "$end $loc\n";
			print GRID "\n";
		}
	}
	else
	{
		print GRID "0 0\n";
	}
	close GRID;

	#assign people to groups and infect some of them
	@infected=(0)x$popct;
	@group=(0)x$popct;
	for $p (@people)
	{
		$infected[$p]=1 if (rand() < $pinf);
	
		$x=$p % $dim;
		$y=int($p / $dim);
		$i=int($x / $sdim);
		$j=int($y / $sdim);
		$g=($nsplit)*$j+$i;

		#mapping what group each person belongs to
		$group[$p]=$g;
	}

	open (INFECTED, ">infected-$popct-$spopct.dat") or die;
	$t=0;
	do {
		for $p1 (@people)
		{
			if (rand()<$pleak)
			{
				$p2=$people[rand @people];
				$g1=$group[$p1];
				$g2=$group[$p2];
				$group[$p1]=$g2;
				$group[$p2]=$g1;
			}
		}
		
		#a reverse mapping for quicker lookups
		#using a hash as a set to list people in each group
		@rgroup=();
		for $p (@people)
		{
			push @{$rgroup[$group[$p]]}, $p;
		}

		#count the number of infectious people
		$ninfectious=0;
		$ninfected=0;
		$ndead=0;
		for $p (@people)
		{
			$ninfectious++ if ($infected[$p]>0 && $infected[$p]<$ttrans);
			$ninfected++ if ($infected[$p]!=0);
			$ndead++ if ($infected[$p]<0);
		}
		print INFECTED "$t $ninfectious $ninfected $ndead\n";
		#print STDERR "  $t $ninfectious $ninfected $ndead\n";

		$tpdeath=$pdeath;
		$tpdeath*=10 if ($ninfected>$capacity);

		#pick a random neighbor that they might bump into
		#if either is infectious, they'll infect the other
		%trans=();
		%dead=();
		for $p1 (@people)
		{
			$g1=$group[$p1];
			$p2=$rgroup[$g1][rand @{$rgroup[$g1]}];

			$trans{$p2}=1 if ($infected[$p1]>0 && $infected[$p1]<$ttrans && rand()<$ptrans);
			$trans{$p1}=1 if ($infected[$p2]>0 && $infected[$p2]<$ttrans && rand()<$ptrans);
			$dead{$p1}=1 if ($infected[$p1]>0 && $infected[$p1]<$ttrans && rand()<$tpdeath);
		}
	
		#increment the time of infection for each infected person
		for $p (@people)
		{
			$infected[$p]++ if ($infected[$p]>0);
		}

		#mark new people as infected
		for $p (keys %trans)
		{
			$infected[$p]=1 if ($infected[$p]==0);
		}

		#mark some people as dead
		for $p (keys %dead)
		{
			$infected[$p]=-1;
		}
	
		#create plottable picture
		open (POP, ">pop-$popct-$spopct-$t.dat") or die;
		for $p (@people)
		{
			$x=($p % $dim);
			$y=int($p / $dim);
			$out=0;
			$out=1 if ($infected[$p]>0);
			$out=2 if ($infected[$p]>=$ttrans);
			$out=3 if ($infected[$p]<0);
			print POP "$x $y $out\n";
		}
		close POP;
	
		$t++;
	} while ($ninfectious>0);

	#make the social distance size smaller and try again
	$sdim/=2;
}
