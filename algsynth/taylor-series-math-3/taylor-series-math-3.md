---
title: Taylor's Theorem (Math 3 Version)
usemathjax: true
layout: post
---


*(do in-class Desmos demonstration of the polynomialization of sine and cosine)*


We can turn ANY FUNCTION into an INFINITELY-LONG POLYNOMIAL, by using this formula:
\begin{align*}
\text{a polynomialized function} =& \text{   (the value of the function, when $x=0$)}\\ \\
&+(\text{the slope of the function, at $x=0$})\cdot x \\ \\
&+\left(\frac{\text{the slope of the slope of the function, at $x=0$}}{2}\right)\cdot x^2  \\ \\
&+\left(\frac{\text{the slope of the slope of the slope of the function, at $x=0$}}{6}\right)\cdot x^3 \\ \\
&+\left(\frac{\substack{\text{the slope of the slope of}\\\text{the slope of the function}}\text{ at $x=0$}}{24}\right)\cdot x^4 \\ \\
&\quad\vdots \\ \\
&+\left(\frac{\overbrace{\text{the slope of the slope of the slope of }\cdots}^{n\text{ times}} \text{ the function}\text{, at }x=0}{n!}\right)\cdot x^n \\ \\
&\quad\vdots \\ \\
&\quad\text{ON AND ON INFINITELY!}
\end{align*}

If you want to write this with fancy big-sigma $\Sigma$ sum notation, you can write it all as:

$$\sum_{n=0}^{n=\infty}\frac{\overbrace{\text{the slope of the slope of the slope of }\cdots}^{n\text{ times}} \text{ the function}\text{, at }x=0}{n!}\,\cdot\, x^n$$

In this formula $x=a$ is some $x$-value of the function. It's kind of like we're *growing* the polynomial around that point---the more and more terms we add, the more and more this longer and longer polynomial looks like the function. 

So, in class, we saw that if we want to write sine as polynomial, we can write it like:
$$\sin x = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!} + \frac{x^9}{9!} -\cdots$$
And we saw that the more and more terms we added on, it was like we were *growing* the polynomial! We were growing it outward from the origin!

If we wanted to grow it outwards from somewhere else, we could just shift it left or right. So, for example, if you wanted to turn sine into a polynomial, but grow it outwards from, say, $3\pi$, you could write:
$$\sin x = (x-3\pi) - \frac{(x-3\pi)^3}{3!} + \frac{(x-3\pi)^5}{5!} - \frac{(x-3\pi)^7}{7!} + \frac{(x-3\pi)^9}{9!} -\cdots$$

The big formula---**Taylor's Formula** or **Taylor's Theorem** if you want to look it up---for polynomializing a function by growing it outwards from $x=a$ would then look like:

$$\sum_{n=0}^{n=\infty}\frac{\overbrace{\text{the slope of the slope of the slope of }\cdots}^{n\text{ times}} \text{ the function}\text{, at }x=a}{n!}\,\cdot\, (x-a)^n$$

By the way, it's not strictly true that we can turn *any* function into a polynomial; there are some caveats. But that's the big idea! *Everything is a polynomial*.