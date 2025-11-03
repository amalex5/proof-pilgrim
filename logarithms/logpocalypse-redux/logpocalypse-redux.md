---
title:  LOGPOCALYPSE REDUX!!!
usemathjax: true
layout: post
---

In the ruins of a post-apocalyptic America, we found a charred scrap of paper, containing the decimal approximations of a few logarithms of some unknown base:

<div style='callout-box'>
* $\log_\blacksquare(2) = 0.3011$
* $\log_\blacksquare(3) = 0.4771$
* $\log_\blacksquare(7) = 0.8451$
* $\log_\blacksquare(300) = 2.4771$
</div>

Using just this information, we had to a) figure out what the base of these logarithms were, and b) compute the decimal approximations of a bunch more logarithms of this same base.

Most of you correctly managed to figure out that the log base in question was base 10. We can see this by noticing that two of the logs have suspiciously similar decimals:
$$\log_\blacksquare(300) = 2.\boxed{4771} \quad\quad\quad \log_\blacksquare(3) = 0.\boxed{4771} $$
Gosh! So similar! Can it just be a coincidence?!? It's like we have:
\begin{align*}
\log_\blacksquare(300) &= 2 + \log_\blacksquare(3) \\ \\
2.4771 &= 2 + 0.4771
\end{align*}
And meanwhile, $300$ and $3$ have got some similarities! After all, $300$ is $3$ times $100$. Soooooooo it's like we have:
\begin{align*}
\log_\blacksquare(300) &=  \log_\blacksquare(100 \cdot 3) \\ \\
&\text{but log rules mean that this is: } \\ \\
&=  \log_\blacksquare(100) + \log_\blacksquare(3) \\ \\
&\text{buuuuuut this also has to equal:} \\ \\
&= \,\, 2 \quad\quad + \quad\quad .4771
\end{align*}
Sooooooo we gotta have:
$$\log_\blacksquare(100) = 2$$
But that means:
$$\blacksquare = 10$$
So these are actually all log base ten!!!! And then we can start figuring out more stuff. For instance, we can figure out $\log_{10}(5)$ by knowing $\log_{10}(10)$ and $\log_{10}(2)$, because:
\begin{align*}
\log_{10}(5) &= \log_{10}\left(\frac{10}{2}\right) \\ \\
&= \log_{10}(10) - \log_{10}(2) \\
&= 1 - 0.3011 \\
&=  0.6989
\end{align*}
Then we know the log base ten of a whole bunch of nice primes---two, three, five, and seven! So any number that we can rewrite as a bunch of those primes multiplied together (maybe with an exponent), we can use log rules to split up and figure out! For instance:
\begin{align*}
\log_{10}(9) &= \log_{10}\left( 3^2\right) \\ \\
&= 2\log_{10}(3) \\
&= 2\cdot 0.4771 \\
&=  0.9542
\end{align*}
Or:
\begin{align*}
\log_{10}(210) &= \log_{10}\left( 2\cdot 3 \cdot 5 \cdot 7 \right) \\
&= \log_{10}(2)  + \log_{10}(3)  + \log_{10}(5)  + \log_{10}(7) \\
&= 0.3011 + 0.4771 +  0.6989 + 0.8451 \\
&=  2.3222
\end{align*}
Of course, if we're adding and multiplying lots of decimals here, we might have rounding errors pile up, but it's the end of the world, so it's not the end of the world.



## Another way to find this base!

In class, a lot (most?) of you figured out that these logs are base $10$ in a totally different way than what I did. Instead of using log properties, you used exponent properties! You rewrote two of these ambiguous logs as exponents:
$$ \log_\blacksquare(3) = 0.4771 \quad\implies \blacksquare^{0.4771} = 3$$
$$ \log_\blacksquare(300) = 2.4771 \quad\implies  \blacksquare^{2.4771} = 300$$
And then you did some algebra! You had:
\begin{align*}
\blacksquare^{2.4771}  &= 300 \\ \\
\text{by properties of exponents, this is:} \\
\blacksquare^{2 + 0.4771}  &= 300 \\
\blacksquare^{2}\blacksquare^{0.4771}  &= 300 \\ \\
\text{but we know $\blacksquare^{0.4771}$ is $3$, so this becomes:} \\
\blacksquare^{2}\cdot 3  &= 300 \\
\blacksquare^{2} &= 100 \\
\blacksquare &= 10
\end{align*}
Wahoo!!!


## Can we figure out ALL the logs using this method??

What about the logs we wanted to figure out that included prime factors that we didn't know?? For instance, we had to figure out $\log_{10}(57)$. 
$$\log_{10}(57)\quad = \quad???$$
But $57$ is $3\cdot 19$, so if we try the same decompose-it-into-primes method, we get:
\begin{align*}
\log_{10}(57) &= \log_{10}(3\cdot 19) \\ 
&= \log_{10}(3) + \log_{10}(19) \\
&= 0.4771 \,+ \,???? \\
&= \text{ sad!}
\end{align*}
Darn. That sucks. But we still need to figure out all these logs so that we can rebuild society. So, for all those logs that we couldn't easily compute by breaking them up into sums/products of the small number of logs we already knew, what's your best estimate for them? Without a calculator, without anything other than these scraps of information, what's your best estimate for those logs, like $\log_{10}(57)$ and the others that aren't prime powers of $2$, $3$, $5$, and $7$? (And yes, you have to figure out which logs those are! I'm not going to tell you.) What's a bad estimate? What's an OK estimate? What's a better estimate? What's an even better estimate? How good of an estimate can you make? Can you make an initial estimate, and then make it better???

For example... let's think about $\log_{10}(13)$, which was another one of the problems. $13$ is a prime, and it's not a prime we have, so we can't figure it out exactly. But we can estimate it! And "estimate" can mean lots of things: there are good estimates and bad estimates; better estimates and worse estimates.

### Bad estimate:

OK, here's a bad way to estimate $\log_{10}(13)$. We know that $13$ is greater than zero, and the bigger the number the bigger its logarithm, so therefore we know that $\log_{10}(13)$ is greater than zero:
$$ 0 < \log_{10}(13)$$
This is true, and also not very insightful.

### Better-but-still-bad estimate

We can do better! $13$ is greater than $10$, so:
$$\log_{10}(10) < \log_{10}(13)$$
Or:
$$1 < \log_{10}(13)$$
So $\log_{10}(13)$ is greater than $1$. Not that surprising or insightful or useful.

### Kinda-okay estimate:

Of course, $13$ is between $10$ and $100$, so actually we can do a bit better:
$$\log_{10}(10) < \log_{10}(13) < \log_{10}(100)$$
So we have:
$$ 1 < \log_{10}(13) <  2$$
So whatever $\log_{10}(13)$ is, it's between $1$ and $2$!!! This is much better than just saying it's "greater than zero" or "greater than one"---we've trapped it between two integers! Not bad.

### Decent estimate:

But we can do even better than this!!!! Actually, we know that $13$ is between $12$ and $14$:
$$12 < 13 < 14$$
So $\log_{10}(13)$ is trapped by $12$ and $14$'s corresponding logarithms:
$$ {\color{blue} \log_{10}(12) } \quad < \log_{10}(13)<\quad {\color{red} \log_{10}(14) } $$
And those are logs we can work out!!!
$$ {\color{blue} \underbrace{\log_{10}(12)}_{\text{we can work this out}} }  \quad<  \log_{10}(13)<\quad {\color{red}\underbrace{\log_{10}(14)}_{\text{this, too}} } $$
Because $12$ is $2\cdot 2 \cdot 3$, and $14$ is $7\cdot 2$:
$$ {\color{blue} \log_{10}\left(2\cdot 2\cdot 3\right)  } \quad<\,\, \log_{10}(13) \,\,< \quad {\color{red} \log_{10}(7\cdot 2) } $$
So because of log properties, this is:
$$ {\color{blue} \log_{10}(2) +  \log_{10}(2) + \log_{10}(3)  }   \quad<\,\, \log_{10}(13) \,\,<\quad {\color{red}\log_{10}(7)+ \log_{10}(2)    } $$
Or:
$$ {\color{blue} 0.30113 + 0.30113 + 0.4771 } \quad<\,\, \log_{10}(13) \,\,<\quad {\color{red} 0.8451 + 0.30113 }$$
And we can do the arithmetic:
$$  {\color{blue} 1.07936  }  < \log_{10}(13) < {\color{red} 1.14623 } $$
Yay!!! Look at how great of an estimate that is!!! Such a narrow range!

(I decided to use colors there because I thought it'd make this muddle more clear; I was going to use just one color for the not-$\log_{10}(13)$ stuff, but then I thought two colors might be even better, and I went with blue and red because of cold and hot... the blue is the color for the **lower bound** (that's the fancy math word for the bottom edge of an estimation range) and red for the **upper bound**.)

### EVEN BETTER ESTIMATE!!!

This might seem great, because we've now trapped $\log_{10}(13)$ not just between two next-to-each-other integers, but between the *logarithms* of two next-to-each-other integers. But why stick with integers???? After all:
$$12.5 < 13 < 13.5$$
So:
$${\color{blue} \log_{10}(12.5) } < \log_{10}(13) < {\color{red}\log_{10}(13.5)} $$
And $12.5$ is just $25/2$, and $13.5$ is just $27/2$, so really this is:
$${\color{blue} \log_{10}\left(\frac{25}{2}\right) } < \log_{10}(13) < {\color{red} \log_{10}\left( \frac{27}{2} \right) } $$
but by properties of logs this is:
$${\color{blue} \log_{10}\left(25\right) -  \log_{10}\left(2\right)}  < \log_{10}(13) < {\color{red} \log_{10}\left( 27 \right)  -\log_{10}\left( 2 \right) } $$
or just:
$${\color{blue} \log_{10}\left(5^2 \right) -  \log_{10}\left(2\right)} < \log_{10}(13) < {\color{red} \log_{10}\left( 3^3 \right)  -\log_{10}\left( 2 \right)} $$
$${\color{blue} 2\log_{10}\left(5\right) -  \log_{10}\left(2\right) }  < \log_{10}(13) < {\color{red} 3\log_{10}\left( 3 \right)  -\log_{10}\left( 2 \right) } $$
And now this is all stuff we know!!! We know $\log_{10}(3)$ as a decimal; same with $\log_{10}(2)$ and $\log_{10}(5)$. So really it's just:
$${\color{blue} 2\!\cdot\!0.6989 -   0.30113 }  < \log_{10}(13) < {\color{red} 3\!\cdot\!0.4771 -   0.30113 } $$
Which, doing the arithmetic by hand, is:
$${\color{blue} 1.09667} < \log_{10}(13) < {\color{red}  1.13017}$$
Wow!!! An even TIGHTER estimate!!!!

### WHAT'S EVEN BETTER?!!?

Keep going!!!! For this---as well as for the other logs we couldn't figure out exactly---what's the best estimate you can come up with?!? Like, could we trap $13$ between $12.75$ and $13.25$? Or between $12.9$ and $13.1$?!? What about the others?!?!? What's the best estimate you can get??!?!? (Could you maybe even make like an INFINITE SERIES or something?!?)

