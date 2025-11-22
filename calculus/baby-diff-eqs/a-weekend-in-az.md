---
title:  A Weekend in Arizona
usemathjax: true
layout: post
---



You are trying to drive the 15 miles to Veritas from your house in Tempe, but the traffic on the 202 is awful---it is total stop-and-go---and so your speed fluctuates sinusoidally between 24 mph and 0 mph. Put a bit more formally, your speed (or velocity) as a function of time is $v(t) = 12\sin(20\pi \cdot t) + 12$ mph (where $t$ is in hours). **(1)** Find the total amount of distance you cover in 10 minutes. **(2)** Find the total amount of distance you cover in $t$ minutes. **(3)** How long does it take you to get to school? (You might have to estimate using a calculator.)

<div style="height:3em;"></div>

Later, over the weekend, you drive to Prescott in order to show off your proper pronunciation of the name to the townies. But on one of the flat stretches of I-17 near Agua Fria, you run out of gas, and your car slowly rolls to a stop. At the moment you run out of gas, you are driving 90 mph, and without gas, the speed of your car decreases autoproportionally\footnote{I have no idea if this is a word, but I wanted to use it. What I mean is just that your speed decreases proportionately to itself---i.e., that $\frac{dv}{dt} = -kv$ for some positive $k$.}, such that after one minute *sin petrol* you are driving only 45 mph. **(4)** Find an equation for your speed (after you run out of gas) as a function of time. (You can do  this without calculus, but I want you to do it with calculus.) **(5)** How fast will you be going after 2 minutes? 3 minutes? what about after 6.4 minutes? **(6)** When will you be going only 1 mph? (Note that we're ignoring friction in this problem, and assuming the road is perfectly flat.) **(7)** Find how much distance you cover in 10 minutes of coasting. 

<div style="height:3em;"></div>

Once you get to Prescott, you go to a local coffee shop and down, in quick succession, five shots of espresso. One shot (= 30mL) of espresso contains approximately 100mg of caffeine (molecular formula $C_8H_{10}N_4O_2$). Imagine that the concentration of caffeine in the body follows the following differential equation^[I'll admit that I basically made this math up all by myself, but only after an evening of doing heavy background research---I needed math that would challenge you in a very specific way, but also wanted it to be grounded in reality. It's really interesting stuff---you should Google (or Google Scholar) "caffeine," "drug clearance," and "pharmacokinetics." I learned a whole lot.]:
$$\frac{dy}{dt} = y\left(\frac{1}{t} - k\right)$$
where $y$ represents the concentration of the caffeine in the blood, and $k$ is some positive constant, which for caffeine equals about $.01 \, L/mg/min$. **(8)** Come up with an equation for the concentration of caffeine in your bloodstream as a function of time. (Be sure to solve for the constant---which is hard. It might help to contemplate the fact that the maximum concentration of caffeine will be $500mg/5L$, where $5L$ is roughly the amount of blood in an adult human.) **(9)** How many caffeine molecules do you ingest? **(10)** Based on this model, when will your veins be fully expunged of caffeine? (This is hard, too---in fact, it's mathematically impossible. But that doesn't mean it's impossible---you can use your calculator in a creative way to estimate it.)
