---
title: Complex<sup>Complex<sup>Complex<sup>...</sup></sup></sup>
usemathjax: true
layout: post
---


What's $i^i$? Can we even figure it out? Is it even a complex number? Or is it possibly something even more complex than the complex numbers? Does raising a complex number to another complex number wormhole us out into an even more bizarre realm of numbers?

Here's the answer: it doesn't. In fact, here's the really weird thing: it actually wormholes us into a *simpler* realm of numbers. $i^i$ *is in fact a real number*:

$$i^i \approx 0.20787\dots$$

That's a *totally ordinary and boring and bland number*---yet one that arises from the complicated combination of two very strange numbers! That itself is kind of wacky.

Just kidding. I lied. $i^i$ is indeed $0.20787ish$, but it's not *just* that. Actually, it's an infinite number of things:

\begin{align*}
i^i = \big\{ &0.2078795763507619\dots,\\
&0.0003882032039267\dots,\\
&0.0000000724947252\dots,\\
&0.0000000001353797\dots,\\
&\quad\quad\vdots
\end{align*}

Whoah. *That's* weird.

Wait, I lied again. There are some big ones, too:

\begin{align*}
&\quad\quad\vdots\\
&31,920,519.1574213\dots,\\
&59,609.74149287215\dots,\\
&111.31777848985622\dots,\\
i^i =\quad &0.2078795763507619\dots,\\
&0.0003882032039267\dots,\\
&0.0000000724947252\dots,\\
&0.0000000001353797\dots,\\
&\quad\quad\vdots
\end{align*}

There are an infinite number of $i^i$s!!!! They can't be *any* number---it's not random---there *is* some order---but what is the order? What's the fundamental logic here?  Why is $i^i$ not only a bizarrely-normal real number, but also an infinite number of them? 

The tricky thing is that, unlike with normal exponentiation, we can't just multiply $i$ by itself $i$ times:

$$i^i = \underbrace{i\cdot i\cdot i\cdot i\cdots}_{i\text{ times}}$$

What does that even mean??? How do we count to $i$? Rather than resolve that question, we'll use a different strategy. We know that we can write any number on the unit circle as $e^{i\theta}$. And we know that $i$ is on the unit circle, with an angle of $\pi/2$. So then we can write $i$ as:

$$i = e^{i\cdot\frac{\pi}{2}}$$

This is a little unsatisfying, since we have $i$ on both sides, but that doesn't make the equation any less true. But then what happens if we raise both sides to the $i$? We have:

\begin{align*}
i^i &= \left(e^{i\cdot\frac{\pi}{2}}\right)^i \\
&= e^{\left(i\cdot\frac{\pi}{2}\right)\cdot i} \quad\quad\text{(exponent rules)}\\
&= e^{i^2\cdot\frac{\pi}{2}} \\
&= e^{-\frac{\pi}{2}} \quad\quad(i^2=-1)\\
&\approx 0.20787957635\dots
\end{align*}

So we've found $i^i$! It's just some boring ol' real number! What a letdown. (Alternatively, perhaps the fact that from a combination of strange numbers we get such a pedestrian number is itself interesting!)

Of course, $i$ isn't just $e^{i\pi/2}$. It's also $e^{5i\pi/2}$. And $e^{9i\pi/2}$. And so forth. We can add or subtract $2\pi$ from the angle, and we've found another way to write $i$!

\begin{align*}
&\quad\quad\vdots\\
&e^{-11i\pi/2},\\
&e^{-7i\pi/2},\\
&e^{-3i\pi/2},\\
i =\quad &e^{i\pi/2},\\
&e^{5i\pi/2},\\
&e^{-9i\pi/2},\\
&\quad\quad\vdots
\end{align*}

Usually we don't worry too much about these extra multiples of $2\pi$. But now, they actually matter! Raising everything to the $i$, we get:

\begin{align*}
&\quad\quad\vdots&\vdots \quad\quad&&\vdots\quad &&\vdots\quad\quad\\
&\left(e^{-11i\pi/2}\right)^i, &e^{-i^2\cdot11\pi/2},    &&e^{11\pi/2},&&  31,920,519.1\dots,\\
&\left(e^{-7i\pi/2}\right)^i, &e^{-i^2\cdot7\pi/2},&&e^{7\pi/2},  &&59,609.74149\dots,\\
&\left(e^{-3i\pi/2}\right)^i,&e^{-i^2\cdot3\pi/2},&&e^{3\pi/2},  &&  111.31777849\dots, \\
i^i =\quad &\left(e^{i\pi/2}\right)^i, \quad\quad=&e^{i^2\cdot\pi/2}, &&=\quad e^{-\pi/2}, &&\approx \quad 0.2078795763\dots, \\
&\left(e^{5i\pi/2}\right)^i, & e^{i^2\cdot5\pi/2},&&e^{-5\pi/2},  &&  0.0003882032\dots,  \\
&\left(e^{9i\pi/2}\right)^i, &e^{i^2\cdot9\pi/2},&&e^{-9\pi/2},  &&  0.0000000724\dots,  \\
&\quad\quad\vdots&\vdots \quad\quad&&\vdots\quad &&\vdots\quad\quad\\
\end{align*}

So all these multiples of $2\pi$ actually do matter! We get an infinite number of values of $i^i$, each of them a multiple of the previous one by a factor of $e^{2\pi}$. We could write it a bit more concisely:

\begin{align*}
i^i &= \left(e^{i\left(\frac{\pi}{2}+2k\pi \right)}\right)^i,\quad\text{for }k\in\mathbb{Z}\\ 
&= e^{-\left(\frac{\pi}{2}+2k\pi \right)} \\
&= e^{\frac{\pi}{2}(4k+3)}
\end{align*}

If $k$ is any integer, then multiplying it by $4$ and then adding $3$ will get us the coefficients we want---all the numbers which are $3\mod4$, i.e., whose remainder when divided by $4$ is $3$.


## Any complex number to any other complex number??

Here's the more general question: how do we raise numbers to complex powers? We've spent a lot of time raising complex *bases* to real powers:

$$(1+2i)^4,\quad\quad\left(7e^{i\pi/6}\right)^{1/3}, \quad\quad\text{etc.}$$

But what if the *power* is complex? What if we have some arbitrary complex number and we want to raise it to some other arbitrary complex number? Suppose we have two complex numbers, $z$ and $w$, with radii $r_z$ and $r_w$ and angles $\theta_z$ and $\theta_w$, respectively:

$$z = r_ze^{i\theta_z}$$

$$w = r_we^{i\theta_w}$$

Can we raise them to each other? What do we get?

$$z^w = \left( r_ze^{i\theta_z}\right)^{\left(r_we^{i\theta_w}\right)} =\quad ???$$

Maybe if we write each complex number in the right form, it'll be clearer how to compute it?? Hmm. Let's return to this.

## Imaginary roots?? $\sqrt[i]{i}$??

Imaginary exponents!!!! What about *imaginary roots*?? Roots are just exponents! Can we take the $i$'th root of $i$? Sure!!! We have:

$$\sqrt[i]{i} = (i)^{1/i}$$

But we know that $1/i$ is $-i$. We could figure this out by thinking about the cycles of the powers of $i$: $i^{-1}$ has to be the same as $i^3$. Or we could figure it out by multiplying by the conjugate. So this becomes:

\begin{align*}
\sqrt[i]{i}  &= (i)^{1/i}\\
&= (i)^{-i}\\
&= \frac{1}{i^i}  \quad\text{(properties of exponents)}\\
\text{but we just figured out that } i^i = e^{-\pi/2}\text{, so this is:}\\
&= \frac{1}{e^{-\pi/2}} \\
&\text{which, by properties of exponents, is:}\\
&= e^{\pi/2}
\end{align*}

So we have:

$$\sqrt[i]{i} = e^{\pi/2}$$

What does this even *mean*?? It means that if we multiply $e^{\pi/2}$ by itself $i$ times, we get $i$. But what does it---what does---what does "multiply something $i$ times" even *mean*?!?!? Can you count to $i$ on your fingers??? Is the reason we can't count to $i$ on our fingers because we haven't yet evolved to do so, or is there a fundamental reason preventing us?

By the way, just like before, is this the only value of $\sqrt[i]{i}$? Or are there others? I'll ask you to figure that out in a homework problem.


## Imaginary exponents, with real bases?? $2^i$??

What about something like $2^i$? With $2^i$, we've got a real base, and an imaginary exponent. Like before, this is "very easy" because we "just" "multiply" two by itself "$i$ times:"

$$2^i = \underbrace{2\cdot2\cdot2\cdot2\cdots}_{i\text{ times}}$$

Just kidding! That still doesn't make any sense. Maybe like before, we can find a clever way to rewrite $2$ or $i$ so that the algebra is tractable. Let's try writing $2$ in polar/exponential/Euler/$e^{i\theta}$ form, and see what happens. The radius is $2$ and the angle is $0$, so we have:

$$2\cdot e^{i\cdot0}$$

So then, if we raise it to the $i$, we get:

$$\left(2\cdot e^{i\cdot0}\right)^i$$

So, if we distribute the outer $i$ exponent, we get:

$$2^i\cdot e^{i^2\cdot0}$$

But actually this is all totally pointless, because we've got that zero in the exponent, so $e^{i^2\cdot0} = e^0 = 1$. So this all just becomes:

$$2^i\cdot1$$

So we're back where we started. Darn. We need a different idea. Here's one: remember back when we were talking about logarithms, and how we started a bunch of log proofs by rewriting some arbitrary number $x$ as $e^{\ln x}$? It was a way of rewriting things that seemed silly and tautological, but turned out to be useful (like "adding zero" in a clever way, or "multiplying by one" in a clever way). This way is useful here, too. We can rewrite $2$ as:

$$2 = e^{\ln 2}$$

Then, raising it to the $i$, we have:

$$2^i = \left(e^{\ln2}\right)^i$$

Or:

$$2^i = e^{i\ln2}$$

But the right side, then, is $e$ raised to $i$ times something---so it's now in polar/exponential/Euler form!!! The right side is a complex number with radius $1$ and angle 
$\ln2$:

$$2^i = e^{i\ln2}=1\angle \ln2$$

The angle being $\ln2$ is weird. We think of $\ln2$ as being just a number, and not an angle. Our internal type-checker should be going off:


    >..Traceback (most recent call last):
    .....File "3.math.nueva", line i, in <complex-numbers>
    .....TypeError: polar form takes "angle" as input, not "natural logarithm"

But hey, angles are also numbers! So $\ln2$ certainly can be an angle. What are the units? Radians! Using a calculator we can find that:

$$\ln(2) \approx .6931\dots$$

So it's about $70\%$ of a radian. A radian is about $57^\circ$. Let's actually compute this in degrees so we have some intuition:

$$\frac{\ln(2) \text{ radians}}{\pi/180 \text{ radians per degree}} \approx 39\text{ish degrees}$$

So, in summary:

$$2^i = e^{i\ln2}=1\angle 39^\circ\text{ish}$$

If we wanted to write it in rectangular, we have:

$$2^i = e^{i\ln2} = \underbrace{\cos(\ln2)}_{.769\text{ish}} + \, i\underbrace{\sin(\ln2)}_{.639\text{ish}}$$

## The Bigger Picture

Your teachers have been lying to you all your lives: not only are numbers in fact two-dimensional, but also *functions can in fact have multiple values*. That's what we're seeing now. 

You've known for years that square roots have two values. When we're younger, that gets shoved behind the curtain. "Oh, we only care about the *positive* root! Don't worry about the negative one!" We've been discovering recently that not only do square roots have two values, but cube roots have three values, quartic roots have four values, and $n$th roots have $n$ values. And now, what we're seeing is that if we raise things to imaginary powers, we have an infinite number of values. 

Square roots are fundamentally multi-valued. Actually, *most* things are fundamentally multi-valued. The real-numbered world we inhabit is only a slice through that---a particular slice of reality in which most things only have one value. But sometimes we see cracks in that reality. Square roots are an example of that. So are inverse trig functions. (They're infinite-valued.) Complex numbers lead us to the deeper reality: the world is fundamentally multi-valued.



## Problems

Evaluate/simplify the following complex exponentials:

<div class='double-column-potentially'>
<ol class='problems'>
<li> $5^i$
<li>  $247^i$
<li>  $2^{3i}$
<li>  $75^{i}$
<li>  $(2i)^i$
<li>  $2^{-i}$
<li>  $2^{-12i}$
<li>  $2^{1+i}$
<li>  $2^{3+4i}$
<li>  $x^i$, where $x$ is any (positive) real number
<li>  $x^{a+bi}$, where $x$, $a$, and $b$ are real
</ol>
</div>

<div style='height:3em;'></div>

<ol class='problems'>
<li> In the notes, we found that $2^i = e^{i\ln2}$. But is that the *only* value of $2^i$? Like with $i^i$, are there more? What are they?

<li> Suppose we have $2^{xi}$, where $x$ is some real number. As $x$ changes, how does $2^{xi}$ change? Test a bunch of values, perhaps; draw a picture, perhaps. 

<li> Suppose we have $x^i$, as above, where $x$ is any real number. As $x$ changes, how does $x^i$ change? For example, if $x$ starts at $0$ and gets bigger and bigger and bigger, what happens to $x^i$? Can you draw a picture? 

<li> Find *all* the values of $\sqrt[i]{i}$, not just the single value we found in the notes above.

<li> Find $i^{5i}$; if there are multiple values, find (slash describe) all of them.

<li> Find $\sqrt[3i]{i}$; if there are multiple values, find (slash describe) all of them.

<li> Having played around with all this stuff, do you have any further thoughts on how to raise any complex number to any other complex number? If we want to simplify $z$ and $w$, where $z$ and $w$ are both complex numbers that can be written in any form, which forms might help us simplify $z^w$, and what do we get as a result?

<li> $i^{i^i}\,$???

<li> Now that we've done all this, we have a very solid handle on exponentiation with complex numbers! We can raise any complex base to any complex exponent---hooray! But what about exponentiation's <s>evil</s> awesome twin, logarithmancy? Can we take logarithms of complex numbers? Can we take complex-based logarithms of complex numbers? Like, for example, what is:
$$\log_{\left(r_1e^{i\theta_1}\right)}\left(r_2e^{i\theta_2}\right) = \quad???$$
Yikes. If we want to get a handle on that, we'd better start with something simpler. What about just taking a normal ol' natural log of a complex number? Natural logarithms, remember, are just logarithms with our old friend, $e\approx 2.7182\dots$, who is a real number, as the base. But what if their argument (the thing we're taking the log of) is complex?

For example, suppose $z=5e^{i\pi/4}$. What's $\ln(z)$? Is there only one solution? Is there a multitude of them? An infinitude? Can you come up with a general formula for the natural log of any complex number? Can you then generalize to the logarithm with any real base of any complex number?
</ol>

