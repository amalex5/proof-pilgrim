---
title: Some tricky integration by parts examples!
usemathjax: true
layout: post
---

## Integration by parts works even when we don't need it!

We know the integral of $x^2$:

$$\int x^2 \, dx = \frac{1}{3}x^3 $$

But... what if we didn't??? Or, put differently, *what if we tried to integrate this by parts*?!? After all, this is really:

$$\int x^2 \, dx = \int x\cdot x \, dx$$

So let's try to integrate this by parts, just for fun! Presumably we should get $\frac13 x^3$! 

Let's remind ourselves of the integration-by-parts formula, 'cause I never remember it:

$$\boxed{\int\! f'(x)g(x)\, dx \quad=\quad f(x)\cdot g(x) \,-\, \int\! f(x)g'(x) \,dx}$$

Here, we have:

$$\int \underbrace{x}_{f'(x)}\cdot\underbrace{ x}_{g(x)}\,dx$$
\begin{align*}
f(x) &= \quad\quad & g(x) &= x\\
f'(x) &= x \quad\quad& g'(x) &=
\end{align*}

Working out these (anti-)derivatives, we have:

\begin{align*}
f(x) &= \frac{1}{2}x^2 \quad\quad & g(x) &= x \\
f'(x) &= x \quad\quad& g'(x) &= 1
\end{align*}

So we get:

\begin{align*}
\int x^2 \, dx = \int  \underbrace{x}_{g(x)}\cdot\underbrace{ x}_{f'(x)} \,dx &= f(x)\cdot g(x) - \int f(x)g'(x) \,dx \\ \
&= \frac{1}{2}x^2 \cdot x - \int \frac{1}{2}x^2 \cdot 1 \,dx \\ \\
&= \frac{1}{2}x^2 \cdot x - \frac{1}{6}x^3 \ \\ \\
&= \frac{1}{2}x^3 - \frac{1}{6}x^3 \\ \\
&= \left(\frac{1}{2} - \frac{1}{6}\right)x^3 \\ \\
&= \frac{1}{3}x^3 
\end{align*}

Yay! That's exactly what we expect to get!!! Except, actually, we were cheating. In those last few steps there we assumed we knew how to integrate $\int x^2 \, dx$. But we can't do that, since figuring that out was the whole point. So let's *redo* this, without making that assumption. We had:

\begin{align*}
\int x^2 \, dx = \int  \underbrace{x}_{g(x)}\cdot\underbrace{ x}_{f'(x)} \,dx &= f(x)\cdot g(x) - \int f(x)g'(x) \,dx \\ \
&= \frac{1}{2}x^2 \cdot x - \int \frac{1}{2}x^2 \cdot 1 \,dx \\ \\
&= \frac{1}{2}x^3 - \frac{1}{2}\int x^2 \,dx \\ \\
\end{align*}
OK. We have an answer, but it's in terms of *another* $\int x^2$, and that won't do. So, writing it out as a single equation (both sides), we have:

$$ \int x^2 \, dx = \frac{1}{2}x^3 - \frac{1}{2}\int x^2 \,dx$$

But actually, we can do something with this!!! Let's move the $\frac{1}{2}\int x^2 \,dx$ on the right over to the left:

$$ \int x^2 \, dx + \frac{1}{2}\int x^2 \,dx = \frac{1}{2}x^3 $$

I.e.:

$$ \frac{3}{2}\int x^2 \,dx = \frac{1}{2}x^3 $$

So if we divide:

$$ \int x^2 \,dx = \frac{2}{3}\cdot \frac{1}{2}x^2 \cdot x $$

I.e.:

$$ \int x^2 \,dx = \frac{1}{3}x^3 $$

So we have it!!! That's it! We've computed the antiderivative of $x^2$!!!! Of course, we knew it already, but we were able to calculate it, blindly, *ab initio*, using integration by parts!!!!

It's kind of like how we could also take the derivative of $x^2$ using the product rule. It's ridiculous and unnecessary, but we *could*:

\begin{align*}
\Big( x^2 \Big)' &= \Big( x\cdot x\Big)' \\
&= (x)'\!\cdot\! x \,+\, x\!\cdot\! (x)' \\
&= 1\cdot x + x\cdot 1 \\
&= x + x \\
&= 2x
\end{align*}

## Integration by parts... in a totally weird and cool and surprising way!

Here's an integral that doesn't look like fun:

$$\int e^x\cos(x)\, dx$$

We can try to integrate this by parts, but here's my concern: both of these "parts" (the $e^x$ and the $\cos x$) have derivatives/antiderivatives that go on forever. They never zero out, like $x^n$ will. So if we integrate this by parts, maybe we'll just get some perpetual series.


But let's try anyway!!! Here's one way we could choose $f'$ and $g$:

$$\int \underbrace{e^x}_{g(x)}\cdot\underbrace{ \cos(x)}_{f'(x)}\,dx$$
\begin{align*}
f(x) &= \quad\quad & g(x) &= e^x\\
f'(x) &= \cos(x) \quad\quad& g'(x) &=
\end{align*}

If this choice doesn't go anywhere, we can make the opposite choice and try again. Anyway, finding $f$ and $g'$, we have:

\begin{align*}
f(x) &= \sin(x) \quad\quad & g(x) &= e^x\\
f'(x) &= \cos(x) \quad\quad& g'(x) &= e^x
\end{align*}

So, running the computation, we get:

\begin{align*}
\int  \underbrace{e^x}_{g(x)}\cdot\underbrace{ \cos(x)}_{f'(x)} \,dx &= f(x)\cdot g(x) - \int f(x)g'(x) \,dx \\ \
&= \sin(x) \cdot e^x  - \int \sin(x) \cdot e^x\,dx \\ \\
&= e^x\sin(x)  - \int e^x\sin(x) \,dx \\ \\
\end{align*}

Yeah, this does not seem all that promising. But let's continue anyway! Let's try to integrate $\int e^x \sin(x)\, dx$ by parts now. We'll make the analogous choice, and have $e^x$ be the $g(x)$, and $\sin(x)$ be the $f'(x)$. So we have:

\begin{align*}
&= e^x\sin(x)  - \int \underbrace{e^x}_{g(x)}\underbrace{\sin(x)}_{f'(x)} \,dx \\ \\
&= e^x\sin(x)  - \Big(  f(x)g(x) \,-\, \int\! f(x)g'(x) \,dx  \Big) \\ \\
&= e^x\sin(x)  - \Big(  -\cos(x)\cdot e^x \,-\, \int\! -\cos(x)\cdot e^x \,dx  \Big) \\ \\
&= e^x\sin(x)  + \cos(x)\cdot e^x + \int\! - \cos(x)\cdot e^x \,dx  \\ \\
&= e^x\sin(x)  + e^x\cos(x) - \int\! e^x\cos(x) \,dx \\ \\
\end{align*}

Hey... wait a minute. I think I notice something. Let's actually write out this whole equation now, with the original left side, just to show where we're at:

$$\underbrace{\int e^x\cos(x)\, dx}_{\text{what we're trying to calculate}} = \underbrace{x\sin(x)  + e^x\cos(x)- \int\! e^x\cos(x) \,dx}_{\text{what we've gotten so far}} $$

We were trying to calculate $\int e^x\cos(x)\, dx$, but our answer now includes another $\int e^x\cos(x)\, dx$. Darn! It must be impossibly recursive and self-referential and gross.

Except... wait. The integral is negative on one side; it's positive on the other. What if we... just move it around? Like, what if we move both integrals to the same side, like so:

$$ \int e^x\cos(x)\, dx  + \int\! e^x\cos(x) \,dx =x\sin(x)  + e^x\cos(x)$$

It's just two of the same thing, so we have:

$$ 2\int e^x\cos(x)\, dx  =x\sin(x)  + e^x\cos(x) $$

But wait!!! We have it! Now we just divide by two, and we've found an expression for the original integral!!!

$$ \int e^x\cos(x)\, dx  = \frac{x\sin(x)  + e^x\cos(x)}{2} $$

Wow!!!! Rather than getting some boring repeating infinite series, the cyclic nature of the trig derivatives let us beautifully cancel out and simplify things. And this is totally not an integral we could have seen otherwise! (At least I never would have been able to see it otherwise.)


## Integration by parts helping us integrate something we couldn't previously integrate!!!!

Let's integrate this by parts:

$$\int\, \ln(x)\, dx$$

Trick question! There are no "parts"! There's only one part! Only the $\ln$! Fooled you!

Wait, no, *doubly*-trick question... *there actually are two parts here*!!!! This is really:

$$\int \! 1 \cdot \ln(x) \, dx$$

See, guys, *everything* has parts. *Everything* can be integrated by parts! There's always an invisible imaginary $1$ that everything is multiplied by!!!

So... ridiculous as this situation is, let's integrate this by parts!

Actually, this isn't ridiculous at all, because how else would we know how to find the antiderivative of $\ln(x)$? I mean, you might have seen it somewhere and memorized it as a formula; you might have experimented and guessed and been given it as a gift from the mathematical muses (a totally valid method!), but integration by parts here actually gives us a *systematic method* for calculating it. 

If we want to integrate this by parts, we have a couple options. We can let $\ln(x)$ be $g(x)$ and let $1$ be $f'(x)$:

$$\int \underbrace{1}_{f'(x)}\cdot\underbrace{ \ln(x)}_{g(x)}\,dx$$

Or we can make the opposite choice, and let $\ln(x)$ be the $f'(x)$, and let $1$ be the $g(x)$:

$$\int \underbrace{1}_{g(x)}\cdot\underbrace{ \ln(x)}_{f'(x)}\,dx$$

Let's try both!!!

If we let $\ln(x)$ be $f'(x)$ and let $1$ be $g(x)$, then we have:
$$\int \underbrace{1}_{g(x)}\cdot\underbrace{ \ln(x)}_{f'(x)}\,dx$$
\begin{align*}
f(x) &= \quad\quad & g(x) &= 1\\
f'(x) &= \ln(x) \quad\quad& g'(x) &=
\end{align*}

Working out these (anti-)derivatives, we have:

\begin{align*}
f(x) &= \int\!\ln(x)\,dx \quad\quad & g(x) &= 1\\
f'(x) &= \ln(x) \quad\quad& g'(x) &= x
\end{align*}

Uhh... this does not seem promising. We need to work out the antiderivative of $\ln(x)$ to use our formula, but... working out the antiderivative of $\ln(x)$ was kinda the whole point. Um, just plugging things into the formula anyway, we get:

\begin{align*}
\int  \underbrace{1}_{g(x)}\cdot\underbrace{ \ln(x)}_{f'(x)} \,dx &= f(x)\cdot g(x) - \int f(x)g'(x) \,dx \\ \
&= 1\cdot \int\!\ln(x)\,dx  - \int \left(\int\!\ln(x)\,dx \right) \cdot x \,dx \\ \\
&= \int\!\ln(x)\,dx  - \int \left(\int\!\ln(x)\,dx \right) \cdot x \,dx \\ \\
&= \text{?!?!?!?!?!?!}
\end{align*}

Okay, this sucks. It's recursive, in the worst way: we were trying to work out $\int \ln(x)$, and we got an answer that includes $\int \ln(x)$ itself. Let's try the opposite choice. If we let $\ln(x)$ be $g(x)$ and let $1$ be $f'(x)$, then we have:
$$\int \underbrace{1}_{f'(x)}\cdot\underbrace{ \ln(x)}_{g(x)}\,dx$$
\begin{align*}
f(x) &= \quad\quad & g(x) &= \ln(x)\\
f'(x) &= 1 \quad\quad& g'(x) &=
\end{align*}

So, if we work out those (anti-)derivatives, we have:

\begin{align*}
f(x) &= x \quad\quad & g(x) &= \ln(x)\\
f'(x) &= 1 \quad\quad& g'(x) &= \frac1x
\end{align*}

Yeah, this seems way more promising. So then, by the integration-by-parts formula, we get:

\begin{align*}
\int  \underbrace{1}_{f'(x)}\cdot\underbrace{ \ln(x)}_{g(x)} \,dx &= f(x)\cdot g(x) - \int f(x)g'(x) \,dx \\
&= x\cdot \ln(x)  - \int x \cdot \frac1x \,dx \\
&= x\ln(x)  - \int \frac{x}{x} \,dx \\
&= x\ln(x)  - \int 1\,dx \\
&= x\ln(x)  - x 
\end{align*}

Yay!!!! This is a nice closed-form solution. (**Closed-form** meaning "there's no integral and no other scary stuff.")

Let's check that it works, just so we can really *see* and *feel* how this wacky formula collapses upon differentiation to just $\ln x$:

\begin{align*}
\Big(\, x\ln(x) - x \,\Big)' &= \left(x\ln x \right)' - (x)' \\ \\
&= (x)'\!\cdot\! \ln(x) + x\!\cdot\!\left(\ln x\right)' \,\,-\,\, 1\\ \\
&= 1\!\cdot\! \ln(x) + x\!\cdot\!\frac{1}{x} \,\,-\,\, 1 \\ \\
&= \ln(x) + \frac{x}{x} - 1 \\ \\
&= \ln(x) + 1 - 1 \\ \\
&= \ln(x)
\end{align*}