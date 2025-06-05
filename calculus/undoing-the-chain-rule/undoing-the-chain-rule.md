---
title: putting humpty-dumpty back together
usemathjax: true
layout: post
---


One of the things we occasionally do when we take derivatives is use the chain rule. The chain rule *explodes* things. So sometimes, when we take anti-derivatives, we need to *implode* things. We need to take the scattered pieces of something that's been exploded by the chain rule, and carefully, delicately, put them back together. 



exploded remanents of the chain rule

pieces lying on the floor





undoing the chain rule




$$\int 2x \, dx = x^2$$



$$\left(x^2\right)' = 2x \quad\iff\quad \int\! 2x \, dx = x^2$$



the chain rule explodes things
how do we IMNPLODE things

how do we put humpty-dumpty back together again



(leaving out the $+C$; if you feel like being a stickler, you can say that we're just finding *an* antiderivative instead of *every* antiderivative)
(derivatives backwards... mostly.)

$$\int 4x^3 \, dx = x^4$$

## example \#1

Here's an integral:

$$\int \left(2x + 5\right)\cdot \cos\left( x^2 + 5x\right) \, dx = ???$$

Can we antidifferentiate this? Can we find the function whose derivative is this???

$$\frac{d}{dx}\Big[\, ??? \, \Big] \quad=\quad \left(2x + 5\right)\cdot \cos\left( x^2 + 5x\right)$$

Well... wait a second! It kind of looks like a derivative! In particular, it kind of looks like the expoded remanents of something that's been blown up by the chain rule. There's an $x^2+5x$ on the inside of the cosine, and there's a $2x+5$ on the outside---and $2x+5$ is the derivative of $x^2+5$!!! So it's kind of like we have the original insides, times the derivative of the insides. 

$$\underbrace{\left(2x + 5\right)}_{\substack{\text{derivative}\\\text{of inside?}}}\cdot \cos\left( \underbrace{x^2 + 5x}_{\text{inside fxn?}}\right) $$

What about the outside function? Here, it's cosine. If this is something that's been chain-ruled, then this outside function is the derivative of some original outside function:

$$\underbrace{\left(2x + 5\right)}_{\substack{\text{derivative}\\\text{of inside?}}}\cdot \overbrace{\cos\left( \underbrace{x^2 + 5x}_{\text{inside fxn?}}\right)}^{\substack{\text{derivative of}\\\text{some original}\\\text{outside fxn?}}} $$

What's cosine the derivative of? Sine! Sine, differentiated, turns into cosine. So might this whole thing be just:

$$\int \left(2x + 5\right)\cdot \cos\left( x^2 + 5x\right) \, dx \quad\overset{???}{=}\quad \sin\left(x^2+5x\right)$$

Let's check! We can check by differentiating $\sin\left(x^2+5x\right)$. If we get $\left(2x + 5\right)\cdot \cos\left( x^2 + 5x\right)$, then we'll know we were right!

We have:

\begin{align*}
\frac{d}{dx}\Big[\, \sin\left(x^2+5x\right) \, \Big] &= \cos\left( x^2 + 5x\right)\cdot \frac{d}{dx}\Big[ x^2+5x \Big] \\ \\
&= \cos\left( x^2 + 5x\right)\left(2x + 5\right)
\end{align*}

Yay! It works! So we have:

$$\int \left(2x + 5\right)\cdot \cos\left( x^2 + 5x\right) \, dx \quad=\quad \sin\left(x^2+5x\right)$$


## example \#2

Here's another integral/antiderivative:

$$\int 347\left(x^5-2x^3 + 7\right)^{346}\cdot\left(5x^4-6x^2\right) \, dx = ???$$

So we need to find some function that, when we differentiate it, gives us $347\left(x^5-2x^3 + 7\right)^{346}\cdot\left(5x^4-6x^2\right)$:

$$\frac{d}{dx}\Big[\, ??? \, \Big] \quad=\quad 347\left(x^5-2x^3 + 7\right)^{346}\cdot\left(5x^4-6x^2\right)$$

But that kind of looks like something that's been chain-ruled!!! It kind looks like we took just $\left(x^5-2x^3+7\right)^{347}$ and took its derivative! After all, we have an "inside" function of $x^5-2x^3+7$, an "outside" function of $(\text{stuff})^{347}$, and this extra derivative-of-the-inside factor of $5x^4-6x^2$:

$$347\cdot \underbrace{\left( 5x^4 + 6x^2\right)}_{\substack{\text{derivative}\\\text{of inside?}}}\cdot \left( \underbrace{x^5-2x^3 + 7}_{\text{inside fxn?}}\right)^{346} $$




Let's check:

\begin{align*}
\frac{d}{dx}\Big[\, \left(x^5-2x^3+7\right)^{347} \, \Big] &=  347\left(x^5-2x^3 + 7\right)^{346} \cdot \frac{d}{dx}\Big[ x^5-2x^3 + 7 \Big] \\ \\
&= 347\left(x^5-2x^3 + 7\right)^{346}\cdot\left(5x^4-6x^2 + 0\right) \\ \\
&= 347\left(x^5-2x^3 + 7\right)^{346}\left(5x^4-6x^2 \right)
\end{align*}

Yay! It works! So we have:

$$\int 347\left(x^5-2x^3 + 7\right)^{348}\cdot\left(5x^4-6x^2\right) \, dx = \left(x^5-2x^3+7\right)^{347}$$


## example \#3

Here's another example:

$$\int \left(x^8 + 3x^4\right)^6\left(8x^7+12x^3\right) \, dx = ???$$

This also looks like it's something that's been chain-ruled! It looks kind of like the derivative of $\left(x^8 + 3x^4\right)^7$! Is it???

$$\overbrace{\left(\underbrace{x^8 + 3x^4}_{\text{inside fxn}}\right)^6}^{\text{outside function}}\underbrace{\left(8x^7+12x^3\right)}_{\text{derivative of inside?}}$$

So is this just:

$$\int \left(x^8 + 3x^4\right)^6\left(8x^7+12x^3\right) \, dx \quad \overset{???}{=}  \quad \left(x^8 + 3x^4\right)^7 \quad\quad ???$$

Let's check:

\begin{align*}
\frac{d}{dx}\Big[\, \left(x^8 + 3x^4\right)^7 \, \Big] &=  7\left(x^8 + 3x^4\right)^6 \cdot \frac{d}{dx}\Big[ x^8 + 3x^4 \Big] \\ \\
&= 7\left(x^8 + 3x^4\right)^6 \cdot\left( 8x^7 + 12x^3\right) \\ \\
&= 7\left(x^8 + 3x^4\right)^6 \left( 8x^7 + 12x^3\right) \\ \\
&\neq \left(x^8 + 3x^4\right)^6 \left( 8x^7 + 12x^3\right)
\end{align*}

Hmm. OK. It's *close*. But it's not exactly correct.

$$\int \left(x^8 + 3x^4\right)^6\left(8x^7+12x^3\right) \, dx \quad\neq\quad \left(x^8 + 3x^4\right)^7$$

The problem is there's that extra $7$ out front. But we can deal with that! We can just multiply by $1/7$, and that'll cancel out the $7$, and give us what we want! Let's see if that works:

\begin{align*}
\frac{d}{dx}\left[\, \frac17\left(x^8 + 3x^4\right)^7 \, \right] &=  \frac17\cdot 7\left(x^8 + 3x^4\right)^6 \cdot \frac{d}{dx}\Big[ x^8 + 3x^4 \Big] \\ \\
&= \frac17\cdot 7\left(x^8 + 3x^4\right)^6 \cdot\left( 8x^7 + 12x^3\right) \\ \\
&= \frac{1}{\cancel{7}}\cdot \cancel{7}\left(x^8 + 3x^4\right)^6 \cdot\left( 8x^7 + 12x^3\right) \\ \\
&= \left(x^8 + 3x^4\right)^6 \cdot\left( 8x^7 + 12x^3\right) \\ \\
\end{align*}

Now it works! So we have:

$$\int \left(x^8 + 3x^4\right)^6\left(8x^7+12x^3\right) \, dx \,\,=\,\, \frac17\left(x^8 + 3x^4\right)^7$$

## harder example




## general



$$\frac{d}{dx}\Big[ f\Big(\,g(x)\,\Big) \Big] = f'\Big(\,g(x)\,\Big)\cdot g'(x) \quad\iff\quad \int\! f'\Big( \,g(x)\, \Big)  \cdot g'(x) \, dx = f\Big(\,g(x)\,\Big)$$


The chain rule, phrased in the taking-the-derivative direction is this:

$$\frac{d}{dx}\Bigg[ f\Big(\,g(x)\,\Big) \Bigg] \quad=\quad f'\Big(\,g(x)\,\Big)\cdot g'(x) $$

Phrased backwards, in the anti-taking-a-derivative/undoing-the-chain-rule direction, it's:

$$\int\! f'\Big( \,g(x)\, \Big)  \cdot g'(x) \, dx \quad=\quad f\Big(\,g(x)\,\Big)$$

So if we're trying to take an antiderivative, and if it looks like something that's been chain-ruled, 


aha! it looks like something that's been chain-ruled

collapse it back together

and then fiddle to figure out the constants





Integrals are just derivatives *backwards*. Every statement about a 



Every integral is really just a derivative. Every integral is really just *something that's been differentiated*. If we can find what it is that's been differentiated, then we've won!

$$(\text{blargh})' = \text{yargh} \quad\iff\quad \int\!\text{yargh} = \text{blargh}$$ 
So, for instance, we've learned how to reverse the chain rule:
$$\frac{d}{dx}\Big[ f\Big(\,g(x)\,\Big) \Big] = f'\Big(\,g(x)\,\Big)\cdot g'(x) \quad\iff\quad \int\! f'\Big( \,g(x)\, \Big)  \cdot g'(x) \, dx = f\Big(\,g(x)\,\Big)$$





$u$-substitution


get really good at differentiating things w chain ruile

take a lot of derivatives

There's a method some people like for doing this called **$u$-substitution**. I've never been a huge fan of it. When I first learned calculus, it seemed to make things more confusing. It gives a process and procedure---a formula, an algorithm---for how to reverse the chain rule, but, for me at least, it made things *more* confusing. And the point of our tools should be to make things *less* confusing. So, if you look up $u$-substitution and decided you like it as a method, go ahead and use it. But 



triple chain rule


