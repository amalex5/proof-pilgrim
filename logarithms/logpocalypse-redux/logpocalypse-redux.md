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
So these are actually all log base ten!!!! And then we can start figuring out more stuff. For instance, we can figure out $\log{10}(5)$ by knowing $\log_{10}(10)$ and $\log_{10}(2)$, because:
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

What about the logs we wanted to figure out that included prime factors that we didn't know?? For instance, we had to figure out $\log_{10}(57)$. But $57$ is $3\cdot 19$, so if we try this method, we get:
\begin{align*}
\log_{10}(57) &= \log_{10}(3\cdot 19) \\ 
&= \log_{10}(3) + \log_{10}(19) \\
&= 0.4771 \,+ \,???? \\
&= \text{ sad!}
\end{align*}
Darn. That sucks. But we still need to figure out all these logs so that we can rebuild society. So, for all those logs that we couldn't easily compute by breaking them up into sums/products of the small number of logs we already knew, what's your best estimate for them? Without a calculator, without anything other than these scraps of information, what's your best estimate for those logs, like $\log_{10}(57)$ and the others that aren't prime powers of $2$, $3$, $5$, and $7$? (And yes, you have to figure out which logs those are! I'm not going to tell you.) What's a bad estimate? What's an OK estimate? What's a better estimate? What's an even better estimate? How good of an estimate can you make? Can you make an initial estimate, and then make it better???




## Another way to find this base!

An addendum! In class, a lot (most?) of you figured out that these logs are base $10$ in a totally different way than what I did. Instead of using log properties, you used exponent properties! You rewrote two of these ambiguous logs as exponents:
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



