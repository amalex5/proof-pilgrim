---
title: Reversing the product rule
usemathjax: true
layout: post
---


So far, in our exploration of antiderivatives, we've learned how to reverse many of our basic differentiation rules. Every statement about a derivative we can rephrase as a statement about an integral:
$$(\text{blargh})' = \text{yargh} \quad\iff\quad \int\!\text{yargh} = \text{blargh}$$ 
So, for instance, we've learned how to reverse the chain rule:
$$\frac{d}{dx}\Big[ f\Big(\,g(x)\,\Big) \Big] = f'\Big(\,g(x)\,\Big)\cdot g'(x) \quad\iff\quad \int\! f'\Big( \,g(x)\, \Big)  \cdot g'(x) \, dx = f\Big(\,g(x)\,\Big)$$
What about the product rule? Can we reverse that? The product rule is:
$$\Big(\,f(x)\cdot g(x)\, \Big)' = f'(x)g(x) + f(x)g'(x)$$
We can rephrase the product rule using an integral instead of a derivative:
$$f(x)\cdot g(x) = \int f'(x)g(x) + f(x)g'(x) \,dx$$
This doesn't look all that useful. How often are we going to see an integral that looks like $f'(x)g(x)+f(x)g'(x)$? Even if such integrals exist, there are *four* things we'd need to get perfectly lined up in order to apply this formula. Sounds tough!

So, let's fiddle with this a bit. Integrals split up along addition, so this is:
$$f(x)\cdot g(x) = \int f'(x)g(x)\, dx  + \int f(x)g'(x) \,dx$$
Let's rearrange this a bit:
$$\boxed{\int\! f'(x)g(x)\, dx \quad=\quad f(x)\cdot g(x) \,-\, \int\! f(x)g'(x) \,dx}$$
Now, *this* is useful---even if it doesn't appear at first glance to be. What is this? It's a formula that tells us how to work out one integral in terms of some other stuff. It tells us how to rewrite the integral of $f'(x)g(x)$ in terms of $f(x)$, $g(x)$, their derivatives, and another integral. It doesn't immediately look all that useful or interesting---but potentially it could be! This gives us a way to turn one integral into another integral. And if the original integral is really hard, and if the new integral is easier---well, then it'd be a useful formula!

Is this, in fact, a useful formula? Can it help us with hard integrals? Maybe! If we have some integral that looks like $f'(x)g(x)$---i.e., that looks like the derivative of one function, multiplied by another function---then this gives us a way to rewrite it. And if $\int\! f(x)g'(x) \,dx$ is easier to evaluate than$\int\! f'(x)g(x)\, dx$, we'll be in luck! 

So, potentially, this could give us a way of turning hard integrals into easier integrals! It could give us a way of making the impossible possible!

<br>
But nothing is certain.

<br>

Suppose, for example, we have this integral:
$$\int 2x\cos x\, dx$$
We have no idea how to do it! Sad. Perhaps this formula would help. After all, we have two things multiplied together, $2x$ and $\cos x$. So maybe we can plug it into the formula! But there are two different ways we could do so. We could say that $2x$ is the $f'(x)$ part and $\cos x$ is the $g(x)$ part:
$$\int \underbrace{2x}_{f'(x)}\cdot\underbrace{ \cos(x)}_{g(x)}\,dx$$
Or we could make the opposite choice:
$$\int \underbrace{2x}_{g(x)}\cdot\underbrace{ \cos(x)}_{f'(x)}\,dx$$
Does it make a difference which choice we make? Let's try both ways, and see what happens. If we try the first way, we have:
$$\int \underbrace{2x}_{f'(x)}\cdot\underbrace{ \cos(x)}_{g(x)}\,dx$$
To apply this formula, we'll need to figure out $f(x)$ and $g'(x)$. We know $f'(x)$ and $g(x)$:
\begin{align*}
f(x) &= \quad\quad& g(x) &= \cos(x)\\
f'(x) &= 2x \quad\quad& g'(x) &=
\end{align*}
If $f'(x)$ is $2x$, then $f(x)$ is $x^2$. (That's an easy antiderivative!) And if $g(x)$ is $\cos(x)$, then $g'(x)$ is $-\sin(x)$ (an easy derivative). So we have:
\begin{align*}
f(x) = x^2 \quad\quad& g(x) = \cos x \\
f'(x) = 2x \quad\quad& g'(x) = -\sin(x)
\end{align*}
So then, plugging things into this formula, we get:
\begin{align*}
\int \underbrace{2x}_{f'(x)}\cdot\underbrace{ \cos(x)}_{g(x)}\,dx &= f(x)\cdot g(x) - \int f(x)g'(x) \,dx \\
&= x^2\cdot \cos x - \int x^2(-\sin x) \,dx \\
&= x^2\cos x + \int x^2\sin x \, dx
\end{align*}
This... does not seem any easier. We don't know how to evaluate $\int x^2\sin x \, dx$, either. And actually, it seems *worse* in a sense, because now the exponent is bigger! $x$ was linear; now it's quadratic!

Let's try the other way. Let's make the opposite choice of $f'(x)$ and $g(x)$. We have:
$$\int \underbrace{2x}_{g(x)}\cdot\underbrace{ \cos(x)}_{f'(x)}\,dx$$
\begin{align*}
f(x) &= & g(x) &= 2x\\
f'(x) &= \cos(x) & g'(x) &=
\end{align*}
If $f'(x)$ is $\cos(x)$, then $f(x)$ must be $\sin(x)$ (the derivative of sine is cosine, so the antiderivative of cosine is sine). And if $g(x)$ is $2x$, then $g'(x)$ is just $2$. So we get:
\begin{align*}
f(x) &= \sin(x) & g(x) &= 2x\\
f'(x) &= \cos(x) & g'(x) &=2
\end{align*}
So then, applying the formula, we'll have:
\begin{align*}
 \int \underbrace{2x}_{g(x)}\cdot\underbrace{ \cos(x)}_{f'(x)}\,dx &= f(x)\cdot g(x) - \int f(x)g'(x) \,dx \\
&= \sin(x)\cdot 2x - \int \sin(x) \cdot 2 \,dx \\
&= 2x\sin(x) - \int 2\sin x \, dx \\
\text{And this is something we can do!!!}\\
&= 2x\sin(x) - \left(-2\cos(x)\right) \\
&= 2x\sin(x) + 2\cos(x)
\end{align*}
So we've done it!!! We've worked out this hard integral that we didn't know how to do!!!

Just to make sure we haven't made any errors, let's check it. We'll take a derivative:
\begin{align*}
    \Big( 2x\sin(x) + 2\cos(x) \Big)' &= 2\cdot \sin x + 2x\cdot\cos(x) - 2\sin(x) \\
    &= \cancel{2\sin x} + 2x\cos(x) - \cancel{2\sin(x)} \\
    &= 2x\cos(x)
\end{align*}
Yup! That's what we wanted! This works!!!

<br>

This technique gets known as **integration by parts**, and it's one of the most powerful integration techniques there is. It gives us a method to come up with some really beautiful antiderivatives---ones for which the "stare at it until you see the answer" method would almost certainly result in tears. Plus, it's a great fallback strategy when nothing else seems viable. Have some hard scary integral that you don't know how to do? Integrate it by parts!!! Maybe that'll make it easier! Still stuck? Integrate it by parts again!


## Problems

Evaluate each of the following antiderivatives:

<div style="column-width: 14em;  column-gap: 2em;  column-rule: 1px solid #ccc;">
<ol class='problems'>
<li> $\displaystyle \int\! x^2 \, dx = \displaystyle \int\! x\cdot x \, dx$ (Of course you know what the answer is... but try running it through the integration-by-parts algorithm and show that you get exactly what you expect to get!)
<li> $\displaystyle \int\! xe^x \, dx$
<li> $\displaystyle \int\! x^2e^x \, dx$
<li> $\displaystyle \int\! x\sin(x) \, dx$
<li> $\displaystyle \int\! x^2\sin(x) \, dx$
<li> $\displaystyle \int\! x^3\sin(x) \, dx$
<li> $\displaystyle \int\! x^5\sin(x) \, dx$
<li> $\displaystyle \int\! x^{25}\sin(x) \, dx$
<li> $\displaystyle \int\! x^{n}\sin(x) \, dx$ (where $n$ is some positive integer)
<li> $\displaystyle \int\! x^{n}\cos(x) \, dx$ (same)
<li> $\displaystyle \int\! x\sqrt{x+4} \, dx$
<li> $\displaystyle \int\! x(x+3)^7 \, dx$
<li> $\displaystyle \int\! \frac{x^3}{\left(1+x^2\right)^{3}} \, dx$
<li> $\displaystyle \int\! \ln(x) \, dx$
<li> $\displaystyle \int 1\cdot\ln(x) \, dx$ 
<li> $\displaystyle \int\! x\ln(x) \, dx$
<li> $\displaystyle \int\! x^2\ln(x) \, dx$
<li> $\displaystyle \int e^x\cos(x) \, dx$ 
<li> $\displaystyle \int e^x\sin(x) \, dx$ 
<li> $\displaystyle \int\! p'(x) \, dx$, where $p(x)$ is just some function (any function!) and $p'(x)$ is its derivative.
</ol>
</div>

<br>

<ol class='problems'>
<li>
Suppose you want to take the integral/antiderivative of two functions divided:
$$\int \frac{f(x)}{g(x)}\,dx$$
Can you come up with a formula for this integral?
</ol>

