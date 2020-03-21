# covidsim

This is a _very simple_ model that shows how social distancing will/will not work as a function of isolation size and travel between isolated groups.

All of the assumptions are just stuff I pulled off of the news, there are **absolutely no scientific claims being made here**. 

The code is just a quick and dirty perl - yes perl, I'm old - script that produces output to be plotted by gnuplot - yes, I'm old.  All of the scripts and stuff are here if you want to play with it.  It wasn't really designed to be shared or collaborated on, so don't complain about the portability. I'm just putting it here for transparency and inspiration for someone to do better.

Before you complain about that large `covidsim.html` file.  My normal workflow is to produce reports and presentations that need to be standalone, loaded on a CD-ROM and viewed in locations without internet access.  So all of my scripts are setup that way to produce self-contained output.  I'm not changing my scripts for this.  I did make a `index.html` that links to the animations rather than embed them in the file.

Yes, there are lots of things I left out, no age distributions, no severity, no queuing at the hospital, everyone has equal probability of running into someone else in their region, etc.  If I were to do anything more sophisticated, I'd re-write this to be agent-based rather than just a big loop over an array that contains status.  But I'm not going to do that (unless the lock-down lasts long enough that I get _really_ bored).  

I think this is still a pretty informative model that shows the sigmoidal growth and the non-linear death rate when the hospital gets over crowded.  Great for qualitative arguments, I'm not trying to be an epidemiologist!