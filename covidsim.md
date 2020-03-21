---
title: Modeling Infection Disease 
date: March 20, 2020
author: Michael Deskevich (mikedeskevich@gmail.com)
---

# Modeling Infection Disease

* I'm a modeler at heart and I wanted to see if all of the _Social Distancing_ being prescribed makes a difference.  I have a gut feeling that it does, and that we're doing the right thing here, as opposed to the UK, which is going for herd immunity as their solution.
* My plan here is to make a _very simple_ model with some _very rough assumptions_ that I've pulled out of the media and do a series of models to track the number of people infected and the number dead while an infectious disease makes it's way through a city.

# The City

* I chose to use a city of 65536 (64K) people.  To make my math and my plotting easy, I needed a power of 4 and 65536 = 256 x 256. It's about half the size of Boulder, the next easy size up would be 2 times the size of Boulder and would take longer to compute, so I stopped there.

# The Interactions

## Approach

* I start with some small proportion of the population already infected.
* I go through every person and randomly choose another person to interact with, if either is infected, they will infect the other with some probability.
* Anyone who is infectious will stay infectious for a chunk of time, after which they either recover or die.
* Infectious people who recover are labelled infected and are no longer carriers nor susceptible to the disease.
* I repeat until there are no infectious people.

## Details

* Proportion of the population infected at the start `0.1%`.
* Infection rate during an interaction `20%`.
* Infection time `20 days`.
* Death rate `0.1%` unless the hospitals are overcrowded, then it becomes `1.0%`.
* The hospitals become overcrowded when `25%` of the city is infectious.

# Social Distancing

* To model social distancing, I took the city and split it in half horizontally and vertically and made 4 regions of 16K people each. People can't leave the regions and interact.  
* I then kept breaking each region into 4 sub-regions until I reach a family-size region.  The total number of people in every simulation was 64K people.

```
1 city of 64K people
4 regions of 16K people each
16 regions of 4K people each
64 regions of 1K people each
256 regions of 256 people each
1K regions of 64 people each
4K regions of 16 people each
16K regions of 4 people each
```

# Travel

* Travelling allows the infection to move between regions.

* Unless we go with full martial law, it's impossible to restrict travel completely, so there will be some travel between regions.  I model 4 cases.

```
No Travel
1 Person in 1000 Travels daily
1 Person in 100 Travels daily
1 Person in 10 Travels daily
```

# No Travel

## 1 Region with 64K People (Whole City)

![](leak000/all-65536.gif)

## 4 Regions of 16K People each

![](leak000/all-16384.gif)

## 16 Regions of 4K People each

![](leak000/all-4096.gif)

## 64 Regions of 1K People each

![](leak000/all-1024.gif)

## 256 Regions of 256 People each

![](leak000/all-256.gif)

## 1K Regions of 64 People each

![](leak000/all-64.gif)

## 4K Regions of 16 People each

![](leak000/all-16.gif)

## 16K Regions of 4 People each (16K Families)

![](leak000/all-4.gif)

# 1 Person in 1000 Travels Daily

## 1 Region with 64K People (Whole City)

![](leak001/all-65536.gif)

## 4 Regions of 16K People each

![](leak001/all-16384.gif)

## 16 Regions of 4K People each

![](leak001/all-4096.gif)

## 64 Regions of 1K People each

![](leak001/all-1024.gif)

## 256 Regions of 256 People each

![](leak001/all-256.gif)

## 1K Regions of 64 People each

![](leak001/all-64.gif)

## 4K Regions of 16 People each

![](leak001/all-16.gif)

## 16K Regions of 4 People each (16K Families)

![](leak001/all-4.gif)

# 1 Person in 100 Travels Daily

## 1 Region with 64K People (Whole City)

![](leak010/all-65536.gif)

## 4 Regions of 16K People each

![](leak010/all-16384.gif)

## 16 Regions of 4K People each

![](leak010/all-4096.gif)

## 64 Regions of 1K People each

![](leak010/all-1024.gif)

## 256 Regions of 256 People each

![](leak010/all-256.gif)

## 1K Regions of 64 People each

![](leak010/all-64.gif)

## 4K Regions of 16 People each

![](leak010/all-16.gif)

## 16K Regions of 4 People each (16K Families)

![](leak010/all-4.gif)

# 1 Person in 10 Travels Daily

## 1 Region with 64K People (Whole City)

![](leak100/all-65536.gif)

## 4 Regions of 16K People each

![](leak100/all-16384.gif)

## 16 Regions of 4K People each

![](leak100/all-4096.gif)

## 64 Regions of 1K People each

![](leak100/all-1024.gif)

## 256 Regions of 256 People each

![](leak100/all-256.gif)

## 1K Regions of 64 People each

![](leak100/all-64.gif)

## 4K Regions of 16 People each

![](leak100/all-16.gif)

## 16K Regions of 4 People each (16K Families)

![](leak100/all-4.gif)

# Infection Rate

## No Travel

![](leak000/infectious.png)

## 1 Person in 1000 Travels Daily

![](leak001/infectious.png)

## 1 Person in 100 Travels Daily

![](leak010/infectious.png)

## 1 Person in 10 Travels Daily

![](leak100/infectious.png)

# Total Number Infected

## No Travel

![](leak000/infected.png)

## 1 Person in 1000 Travels Daily

![](leak001/infected.png)

## 1 Person in 100 Travels Daily

![](leak010/infected.png)

## 1 Person in 10 Travels Daily

![](leak100/infected.png)

# Total Number Dead

## No Travel

![](leak000/dead.png)

## 1 Person in 1000 Travels Daily

![](leak001/dead.png)

## 1 Person in 100 Travels Daily

![](leak010/dead.png)

## 1 Person in 10 Travels Daily

![](leak100/dead.png)
