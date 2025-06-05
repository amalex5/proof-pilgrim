---
title: Series convergence
usemathjax: true
layout: post
---


i gave you those three infinite series





basic stuff







comparison


geometric series





telescoping



rearrangement


sequences series convergence tests


"convergence tests"

you ight see flowcharts


## A Basic Starter Test For Series Convergence


Here's an infinite series:
$$\sum_{n=1}^{n=\infty} n = 1+2+3+4+5+6+\cdots$$
Obviously this diverges. We're adding bigger and bigger numbers! The sum is getting bigger and bigger! So clearly, if each of the individual terms in the series increase, the series will diverge. In fact, even if each of the terms stay the same, the series diverges:
$$\sum_{n=1}^{n=\infty} 5 = 5+5+5+5+5+\cdots = \infty$$
So we can say this: **if the individual terms of a series do not decrease (i.e., increase or remain constant), the sequence will diverge**. But just because the **terms** of a series decrease, it doesn't mean that the **series itself** always converges. For example, consider the two series:
$$1+\frac{1}{2}+\frac{1}{3}+\frac{1}{4} + \frac{1}{5} + \cdots$$
$$1 + \frac{1}{2} + \frac{1}{4} + \frac{1}{8} + \frac{1}{16} + \cdots$$
The terms in both of these series go to $0$. But the sums don't. One of these series converges, and the other diverges. (We haven't yet seen why; just trust me that this is true, and we'll figure out why later.) To summarize:


VENN DIAGRAM

<div class='callout-box' style='text-align:left;'>
* if the individual terms increase or remain constant
    * then the series diverges
* if the individual terms decrease
    * then the series might diverge or might converge
</div>


top even have the HOPE that a series convreges, its underlying sequence has to go to zero. if it does---if the underlying sequence does go to zero---that doesn't mean that the series always will converge. but it *might*. whereas, if the underlying sequence doesn't go to zero, then the series definitely won't converge. 




## A Cool, Simple Series 

Here's a series:
$$\sum_{n=0}^{n=\infty} \left(\frac{1}{2}\right)^n = 1 + \frac{1}{2} + \frac{1}{4} + \frac{1}{8} + \frac{1}{16} + \cdots$$
Here's what's cool about it: even though it's an infinite series, even though it's infinitely long and we're adding up an infinite number of positive numbers, {\em this series is finite}. We add up this infinite number of reciprocals of powers of $2$, and we get a *finite number*. In fact, we get a pretty small finite number: two.
\begin{align*}
\sum_{n=0}^{n=\infty} \left(\frac{1}{2}\right)^n &= 1 + \frac{1}{2} + \frac{1}{4} + \frac{1}{8} + \frac{1}{16} + \cdots\\ \\
&= 2
\end{align*}

That's totally nuts!!! Let me see if I can try to convince you *that* that's true, and *why* that's true.

For convenience, let's call this series $S$:
\begin{align*}
S &= 1 + \frac{1}{2} + \frac{1}{4} + \frac{1}{8} + \frac{1}{16} + \cdots
\end{align*}
Now, let's try multiplying it by $1/2$. We get:
\begin{align*} \frac{1}{2}S &= \frac{1}{2}\cdot\left(1 + \frac{1}{2} + \frac{1}{4} + \frac{1}{8} + \frac{1}{16} + \cdots\right) \\ \\
\frac{1}{2}S &=  \frac{1}{2} + \frac{1}{4} + \frac{1}{8} + \frac{1}{16} + \frac{1}{32} \cdots
\end{align*}
Your first thought should be, "But why? Why are we multiplying this by $1/2$? Where does that come from?" Just trust me for a moment. I hope you agree that we can multiply both sides of this equation by $1/2$, and if we do, we get what we wrote above as the result. 

Next, let's think about the quantity $S-(1/2)S$. Again, this seems like something I'm pulling out of nowhere, but bear with me for a moment. We know what $S$ is, and we just figured out what $(1/2)S$ is, so we should have:
$$S-\frac{1}{2}S = \overbrace{\left(1 + \frac{1}{2} + \frac{1}{4} + \frac{1}{8} + \cdots\right)}^{S} - \overbrace{ \left(\frac{1}{2} + \frac{1}{4} + \frac{1}{8} + \frac{1}{16} \cdots\right)}^{(1/2)S}$$
But now we can distribute that negative sign and combine these two parentheses. When we do so, almost everything cancels out: we have a $+(1/2)$ and a $-(1/2)$; we have a $+(1/4)$ and a $-(1/4)$, and so forth. The only thing that's left is the $+1$:
$$S-\frac{1}{2}S = 1 + \cancel{\frac{1}{2}} + \cancel{\frac{1}{4}} + \cancel{\frac{1}{8}} + \cdots - \cancel{\frac{1}{2}} - \cancel{\frac{1}{4}} - \cancel{\frac{1}{8}} - \cancel{\frac{1}{16}} \cdots$$
$$S-\frac{1}{2}S = 1$$
But of course we can easily rearrange this to solve for $S$:
\begin{align*}
S\left(1-\frac{1}{2}\right) &= 1\\
\frac{1}{2}S &= 1 \\
S &= 2
\end{align*}
Wow!!!! So we have this infinitely-long infinite series, and it all just adds up to two:
$$\sum_{n=0}^{n=\infty} \left(\frac{1}{2}\right)^n = 1 + \frac{1}{2} + \frac{1}{4} + \frac{1}{8} + \frac{1}{16} + \cdots = 2$$
The really cool thing is that it doesn't just work for this series. There's nothing particualrly special about the powers of $2$. We could have powers of some arbitrary number, like $a$:
$$\sum_{n=0}^{n = \infty} a^n = 1 + a + a^2 + a^3 + a^4 + \cdots$$
And then we'd be able to follow the same reasoning as above, and get just:
\begin{align*}
\sum_{n=0}^{n = \infty} a^n &= 1 + a + a^2 + a^3 + a^4 + \cdots \\
&= \frac{1}{1-a}
\end{align*}
So, for instance, in the case of $a=1/2$, no matter how many terms we add, the series simply gets closer and closer to $2$:
$$\sum_{n=0}^{n=\infty} \left(\frac{1}{2}\right)^n = 1 + \frac{1}{2} + \frac{1}{4} + \frac{1}{8} + \frac{1}{16} + \cdots = \frac{1}{1-1/2} = \frac{1}{1/2} = 2$$
Let's prove this. Imagine, for the sake of convenience, we call this series $S$:
$$S = 1 + a + a^2 + a^3 + a^4 + \cdots$$
Then: what happens if we multiply both sides of this equation by $a$? We'll have:
$$aS = a + a^2 + a^3 + a^4 + a^5 \cdots$$
What if we consider the quantity $S-aS$? This must be just:
$$S-aS = (\overbrace{1 + a + a^2 + a^3 + a^4 + \cdots}^{S}) - (\overbrace{a + a^2 + a^3 + a^4 + a^5 \cdots}^{aS})$$
But if we combine those two parentheses, most nearly everything will cancel out---we've got an $a$, and a $-a$; we've got an $a^2$, and a $-a^2$, etc. The only thing that will be left is $1$:
$$S-aS = 1$$
But we can easily solve this for $S$:
$$S(1-a) = 1$$
$$S = \frac{1}{1-a}$$
$$ \includegraphics[scale=.25]{andrewproof.png}$$
Ta-da! Now we can deal with any series of the form $\sum a^n$. In fact, we have quite a bit of power, because lots of tests for convergence only tell us whether a certain series converges---they don't tell us what such series converge {\em to}. But this test does. For instance, if we have the series: $$1+\frac{2}{3} + \frac{4}{9} + \frac{8}{27} + \frac{16}{81} + \cdots$$which is really just the series:$$\sum_{n=0}^{n=\infty} \left(\frac{2}{3}\right)^n$$
we know, using this formula we just proved, that this series must converge, and it must converge to $3$:
$$\sum_{n=0}^{n=\infty} \left(\frac{2}{3}\right)^n = \frac{1}{1-2/3} = \frac{1}{1/3} = 3$$
Unfortunately (or fortunately, depending on how you look at it), there's a pretty substantial caveat. Namely: what if we have the series $\sum 2^n$:
$$\sum_{n=0}^{n=\infty} \left(2\right)^n = 1 + 2 + 4 + 8 + 16 + \cdots$$
Does this series converge? Certainly not! It just keeps getting bigger and bigger! It goes to $\infty$! But according to our theorem, it does converge: 
$$\sum_{n=0}^{n=\infty} \left(2\right)^n = \frac{1}{1-2} = -1$$
This series is not $-1$. You cannot keep adding powers of two and get $-1$. That is utterly ridiculous. You will keep getting bigger and bigger numbers. The problem is pervasive---consider $a=1$:
$$\sum_{n=0}^{n=\infty} (1)^n =1 + 1 + 1 + 1 + 1 + \cdots = \infty$$
So really, we should specify that in order for this series to converge, $a$ must be less than $1$. And, actually, we should say that $a$ has to be between $-1$ and $1$, because numbers below $-1$ give us the same problem:
$$\sum_{n=0}^{n=\infty}(-1)^n =1 - 1 + 1 - 1 - 1 - \cdots = \text{doesn't converge! keeps flipping between } 0\text{ and }1$$
$$\sum_{n=0}^{n=\infty}(-2)^n =1 - 2 + 4 - 8 + 16 - \cdots = \text{doesn't converge! gets bigger and bigger, but with alternating signs}$$
So we should restate our theorem a little bit more precisely:
$$\boxed{ \sum_{n=0}^{n = \infty} a^n = \frac{1}{1-a} \text{, but only if } -1<a<1} $$
This type of series, by the way, is known as a **geometric series**. Not that the name really means much, but other people use the name, so you should probably know it.

## Another Test For Convergence/Divergence (A Reasonably Important One!)

Here's another cool series: $$1+ \frac{1}{2} + \frac{1}{6} + \frac{1}{24} + \frac{1}{120} + \frac{1}{720} + \cdots$$
Any idea what its formula is? No? It's a factorial! It's $1/n!$: 
$$\sum_{n=1}^{n=\infty} \frac{1}{n!} = 1+ \frac{1}{2} + \frac{1}{6} + \frac{1}{24} + \frac{1}{120} + \frac{1}{720} + \cdots$$
So the obvious question we can ask about this series, like about every other series, is: does it converge? Each of the terms are getting smaller, so it might. But we can't come up with a nice little algebraic formula for its sum, like we could for a geometric series. Hmmm. How can we figure out whether the series converges? Here's the idea: we can compare it to a series that we *do* know converges or diverges:

* If we can find a series that converges, and which is always greater than $\sum 1/n!$, then we'll know that $\sum 1/n!$ must converge, too.
* If we can find a series that diverges and which is always less than $\sum 1/n!$, then we'll know that $\sum 1/n!$ must diverge, too.

Here's what we know: we know that $n!$ is a skyrocketing function---it goes up really, really fast. Compare it, for example, with $x^2$ (or $n^2$) and $2^n$:

TBALE


<table>
<thead><td>$n$</td> <td>$n^2$</td> <td> $2^n$</td> <td>$n!$</td></thead>
<tr> <td> $1$ </td> <td> $1$ </td> <td> $2$ </td> <td> $1$ </td> </tr>
<tr> <td> $2$ </td> <td> $4$ </td> <td> $4$ </td> <td> $2$ </td> </tr>
<tr> <td> $3$ </td> <td> $9$ </td> <td> $8$ </td> <td> $6$ </td> </tr>
<tr> <td> $4$ </td> <td> $16$ </td> <td> $16$ </td> <td> $24$ </td> </tr>
<tr> <td> $5$ </td> <td> $25$ </td> <td> $32$ </td> <td> $120$ </td> </tr>
<tr> <td> $6$ </td> <td> $36$ </td> <td> $64$ </td> <td> $720$ </td> </tr>
<tr> <td> $7$ </td> <td> $49$ </td> <td> $128$ </td> <td> $5,040$ </td> </tr>
<tr> <td> $8$ </td> <td> $64$ </td> <td> $256$ </td> <td> $40,320$ </td> </tr>
<tr> <td> $9$ </td> <td> $81$ </td> <td> $512$ </td> <td> $362,880$ </td> </tr>
<tr> <td> $\vdots$ </td> <td> $\vdots$ </td> <td> $\vdots$ </td> <td> $\vdots$ </td> </tr>
</table>

It takes $n!$ slightly longer to get going---it's not the winner until $n=4$---but after that, it *zooms* up. Factorials are HUGE!!!!! Which means, of course, that $1/n!$ is tiny. It's zooming down, zooming down to $0$ far faster than $1/n^2$ or $1/2^n$. BUT WAIT. We know that $\sum 1/2^n$ converges. That's just a geometric series:

$$\sum_{n=0}^{n=\infty}\frac{1}{2^n} = \sum_{n=0}^{n=\infty} \left(\frac{1}{2}\right)^n = \frac{1}{1-1/2} = \frac{1}{1/2} = 2$$

AND we know that

$$\frac{1}{2^n} > \frac{1}{n!} \text{, at least after } n=4$$

so then we know that 


\begin{align*}
\sum_{n=1}^{n=\infty} \frac{1}{2^n} &= \frac{1}{2} + \frac{1}{4} + \frac{1}{8} + \frac{1}{16} + \frac{1}{32} + \frac{1}{64}\cdots \\ \\
\sum_{n=1}^{n=\infty} \frac{1}{n!} &= 1+ \frac{1}{2} + \frac{1}{6} + \frac{1}{24} + \frac{1}{120} + \frac{1}{720} + \frac{1}{5040} + \cdots
\end{align*}




$$\sum_{n=4}^{n=\infty}\frac{1}{2^n} \,>\, \sum_{n=4}^{n=\infty} \frac{1}{n!}$$
(Note how I changed the $n$'s to start at $4$. Not a big deal, though. I'll address it more in a moment.) Since the $1/2^n$ series converges, and since $1/n!$ is less than $1/2^n$, the $1/n!$ series must converge, too:
$$\underbrace{\sum_{n=4}^{n=\infty}\frac{1}{2^n}}_\text{this converges} \,>\, \underbrace{\sum_{n=4}^{n=\infty} \frac{1}{n!}}_\text{so this must, too}$$
Of course, our original question was not about $\sum 1/n!$ when $n$ starts at $4$; our question was about $\sum 1/n!$ when $n$ starts at $1$. But this isn't a concern. If I just add the first few terms back in, I'll just be adding some finite number, and that won't all-of-sudden make the series diverge.  Put more formally:
\begin{align*}
\sum_{n=0}^{n=\infty} \frac{1}{n!} &= \overbrace{1}^{\mathclap{\text{the }n=1\text{ term}}} + \underbrace{\frac{1}{2}}_{\mathclap{\text{the }n=2\text{ term}}} + \overbrace{\frac{1}{6}}^{\mathclap{\text{the }n=3\text{ term}}} +  \sum_{n=4}^{n=\infty} \frac{1}{n!}\\
\sum_{n=0}^{n=\infty} \frac{1}{n!} &= \frac{10}{6}+  \sum_{n=4}^{n=\infty} \frac{1}{n!}
\end{align*}
We know that the series from $n=4$ converges, so adding $10/6$ won't make it diverge. It will still converge, even if we add $10/6$. The sum from $n=1$ will converge to a slightly different point, yes (a point $10/6$ greater than what the sum from $n=4$ converges to), but since we don't know what the sum from $n=4$ converges to in the first place, this doesn't really change our situation. We can't take a finite number, add another finite number, and get infinity. So: 

$$\sum_{n=1}^{n=\infty} \frac{1}{n!} \text{ converges.}$$


So this is another method we can use to determine whether series converge or diverge: **we can compare it to a series we know something about**^[In high school math classes, this often gets called the "**comparison test**.]. We might have a series that's always greater than a series which diverges; therefore, we know it diverges. We might have a series that's always smaller than a series which converges; therefore, we know it converges.

(If we have a series that's always greater than a series which converges; we know nothing, since the series could either converge or diverge (the latter if it's too much greater than the series that converges). If we have a series that's always less than a series that diverges, we know nothing, since the series could either converge or diverge (the latter if it's not smaller enough than the series which diverges).)


So, to sum up:

<div class='callout-box'>
If we have a series that's always smaller than a series that converges, we'll know it converges.

If we have a series that's always greater than a series that diverges, we'll know it diverges. 
</div>

This is a very general argument, and a powerful tool to use for series in general. If we have some series, the convergence/divergence of which we're trying to understand, and we can't understand the series directly, maybe we could trap it above or beneath a series that we understand better. That's the essence of this idea. 

