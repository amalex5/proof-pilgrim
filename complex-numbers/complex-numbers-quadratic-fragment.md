---
title: complex numbers eqn quadratic fragment
usemathjax: true
layout: post
---



Suppose we have an equation involving a complex number:

$$4i = z^2 + z$$

We'd like to be able to find what values of $z$ make this equation true. Maybe there's one value, maybe there are multiple values, maybe there are no values. We're pretty good at solving equations with real numbers! But what about with complex numbers? I guess we could factor the right-hand side:

$$4i = z(z+1)$$

But that's not very helpful, since the left side is $4i$, not $0$, so it's not as easy as just solving the factors individually. 

Here's a better idea. There's a useful trick for solving equations with complex numbers: every complex number is *made up of two real numbers*, so **if we have one equation relating one complex number, we can turn it into two equations relating two real numbers**. Let's continue this example so that I can show you what I mean.

We have this complex number $z$, and we know that any complex number can be written in the form $a+bi$, where $a$ and $b$ are both real numbers. So then we can turn this equation about a complex number into an equation about some real numbers, $a$ and $b$:

$$4i = (a+bi)^2 + (a+bi)$$

If we simplify that a bit, we get:

$$
\begin{align*}
4i &= a^2 + 2bi + b^2i^2 +a+bi \\
4i&= a^2 + 2bi - b^2 + a + bi &\text{(because $i^2=-1$)}\\
4i&= a^2 - b^2 + a + 3bi
\end{align*}
$$

Then we've got two complex numbers---one on the left side of the equation, and one on the right side:

$$
\begin{align*}
0+4i &= \left(a^2 - b^2 + a\right) + 3bi\\ \\
\underbrace{0}_{\text{real part}} + \underbrace{4}_{\text{imaginary part}}\cdot i \quad&=\quad (\underbrace{a^2 - b^2 + a}_{\text{real part}}) +\underbrace{3b}_{\text{imaginary part}}\cdot i
\end{align*}
$$

This looks like one equation with two unknowns---but actually it's *two* equations! Since these two complex numbers on the left and on the right are equal, **their real and imaginary parts must also be equal**. So then, we can set the imaginary parts equal to each other:

$$4 = 3b$$

$$b = 4/3$$

And we've found $b$! We're halfway there to finding the complex number we're looking for, $z=a+bi$. Now we just need to find $a$. So we can set the real parts equal:

$$0 = a^2 - b^2 + a$$

Since we've found out that $b=4/3$, we can plug that in:

$$0 = a^2 - \left(\frac{4}{3}\right)^2 - a$$

Looks like we have a quadratic! 

$$0 = a^2 + a - \left(\frac{4}{3}\right)^2$$

We can try to factor it, but it turns out to be a mess. Let's use the quadratic equation:

$$
\begin{align*}
a &= \frac{-1 \pm \sqrt{1^2- 4\cdot1\cdot \left(\frac{4}{3}\right)^2 }}{2} \\
&\vdots \\
&\text{a whole bunch of arithmetic later...} \\
&\vdots \\
&= \frac{-1}{2} \pm\frac{\sqrt{13}}{4} \\
\end{align*}
$$

So we've found what $a$ can be! There are two possibilities! So we have:

$$a= \left\{\frac{-1}{2} +\frac{\sqrt{13}}{4} , \quad \frac{-1}{2} -\frac{\sqrt{13}}{4} \right\}\quad\text{and}\quad b=4/3$$

So then there are two possible solutions for $z$:

$$
\begin{align*}
z =& a+bi \\
= &\left(\frac{-1}{2} +\frac{\sqrt{13}}{4}\right)  \quad+\quad\frac43i ,\\
&\left(\frac{-1}{2} -\frac{\sqrt{13}}{4} \right) \quad+\quad\frac43i 
\end{align*}
$$

Boy, that's a lot of work! Maybe I should have made a simpler example. Oh well! If we want to verify that those are both solutions, we could plug them back into the original equation (but this seems like a lot of work).