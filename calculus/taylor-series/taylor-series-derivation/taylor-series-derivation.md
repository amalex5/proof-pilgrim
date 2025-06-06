---
title: whence taylor series
usemathjax: true
layout: post
---



> I'm writing these notes for you MVC'ers intended as your *second* exposure to Taylor series. I'm going to spend most of them talking about how to derive Taylor series, and not so much time motivating it. I'm guessing that in the excitement of Zoom learning last year, the actual proof/derivation/argument behind Taylor series didn't quite get the appreciation it deserves.


**You know Taylor series**. We can take a function and turn it into a polynomial---albeit a possibly-infinitely-long one---using this formula:

<div class='callout-box'>
\begin{align*}
    p(x) & \text{, polynomialized around $x=c$} \\ \\
    &= p(c) +(x-c)p'(c) + \frac{(x-c)^2}{2}p''(c) + \frac{(x-c)^3}{6}p'''(c) + \cdots \\ \\
    &= \sum_{k=0}^{k=\infty} \frac{p^{(k)}(c)}{k!}(x-c)^k
\end{align*}
</div>

What's cool about Taylor series is both the **result** and the **reason**. 

* The **result** of Taylor series is remarkable: *everything is a polynomial*. Why is that cool? Well, because polynomials are *really nice functions*. They don't spike up to infinity like rational functions do. They're never infinitely-steep, like square/cube/$n$th roots are. They don't jump around or disappear. They're continuous everywhere and differentiable everywhere. They're just *really nice*, *really predictable* functions. So that fact that we can turn anything into a polynomial is really, really helpful.
* The **reason** behind Taylor series is cool, too. Why is everything a polynomial? Where does Taylor series come from? Well... Taylor series is just integration by parts. You just integrate an arbitrary function by parts, over and over, *ad infinitum*, and you get Taylor series.


There are a lot of caveats to what I've just said.

* For one thing, it's definitely not the case that we can turn *every* function into a polynomial. There are lots of details and fine print. Mathematicians have special names that they use for the subset of functions that we can think of as "basically polynomials": they call them **[analytic](https://en.wikipedia.org/wiki/Analytic_function)** or **[holomorphic](https://en.wikipedia.org/wiki/Holomorphic_function)** or **[smooth](https://en.wikipedia.org/wiki/Smoothness)** or **[entire](https://en.wikipedia.org/wiki/Entire_function)**. (Those four words all have slight shades of meaning and subtle distinctions between them; I never remember the particulars.) Plus, even for polynomializable functions, sometimes you can only polynomialize them over a finite interval. (People call this the **radius of convergence**: for instance, if you try to polynomialize a logarithm, you can only do it within $\pm1$ unit of the point around which you expand/grow the Taylor series.)

*  And, for another thing, even though I think it's reasonable to say that Taylor series is "just" integration by parts, there are some subtle details in the way you need to set it up ("irritating" details would be another way to put it). The Taylor series formula is long and complicated and has lots of details---and that means that our derivation of it also has to be long and complicated and involve lots of details, necessarily, even if the core idea is very simple.

So, as a result, we'll do this proof in two steps. First, we'll do a straightforward version of this argument, that gets the core ideas across. But it won't really get us the precise result we want, in exactly the right form. So then, second, we'll do the more detailed version, which will include all the ~~irritating details~~ subtle nuances, and which will get us the exact result we want.

Think of how when you're building something, you prototype first. You build a rough version of what you want. It's not intended to be the final product---it's just supposed to be a coarse approximation of the shape and the functionality. That gets you a feeling for how the thing should work, and lets you fill in the details in subsequent revisions (or, I guess, "iterations" is the design-thinking word). That's what we're doing here. We're prototyping and design-thinking our way to a polished abstract argument (rather than to a polished physical object, like you might in an $\sqrt{-1}$-Lab class).

So that's my rhetorical plan in these notes: we'll make a rough argument that accomplishes the basic outline, and then we'll make a more detailed argument that begets the final version.


## Whence Taylor Series, Try \#1 

There are lots of details involved in coming up with Taylor series. But the core idea is very simple: all we do is take a function, write it as the integral of its derivative, and then integrate by parts over and over and over again. In symbolic form, here's the outline of the argument:

* We're going to take some arbitrary function, $p(x)$, and write it as $\displaystyle\int\!p'(x)\,dx$ (i.e., as the integral of its derivative).

* Then we're going to integrate that by parts, over and over and over and over, *ad infinitum*

* From this a Taylor series will emerge!

More symbolically, our argument will look like:
<div class='callout-box'>
\begin{align*}
\displaystyle p(x) &= \int\! p'(x) \, dx \\
&= \int\! 1\cdot p'(x) \, dx \\
&\quad\quad\text{integrate this by parts} \\
&\quad\quad\quad\quad\vdots \\
&\quad\quad\text{keep integrating by parts, an infinite number of times...} \\
&\quad\quad\quad\quad\vdots \\
&= \text{the Taylor series formula/Taylor polynomial} \\
&\quad\quad\quad\text{(kinda)}
\end{align*}
</div>

So, let's start.


<div style='height:5em;'></div>

The theme of this proof is *stupidity*. That is not, note, a bad thing. Lots of the proofs we've done in math involve really stupid steps. The particular type of stupidity we'll do here involves doing nothing. Yet this will result in actually doing something. And this is a strategy we've employed many times before in mathematics. For example:

<ul>
<li> We can add zero! (But we can add zero in a special way that actually makes things look algebraically different, and which lets us cleverly manipulate things into a more useful form.) </li>
<li> We can multiply by one! (But we can multiply by $1$ in a special way that actually makes things look algebraically different, and which lets us cleverly manipulate things into a more useful form. You might remember that we did this early in the year, in our derivation of the arc length formula, to make it nicer and more tractable.) </li>
<li> In Math 3, when we proved logarithm rules, we did the logs/exponents version of this: if we have some lovely variable like $x$, we can stupidly rewrite it and make it needlessly complicated by writing it as the log base something of something raised to it:
$$x = \log_a\left(a^x\right)$$
Or, alternatively, write it as something raised to the log base that thing of $x$:
$$x = a^{\log_a(x)}$$</li>
</ul>

So, in other words, we're *doing something by doing nothing.* Wittgenstein has some nice lines in the *Tractatus* about how if we were gods, the tautology of the world would resolve itself in an instant; that we can never actually *do anything* at all in mathematics, because math and logic always just *is*, eternally. (That's my gloss/paraphrase, not his phrasing.) Yet, as finite and limited beings, we can still imagine we are doing things, as we come to understand the tautology of the world better.

Anyway. Now we're in calculus. What's the calculus version of all this? What's the calculus equivalent of *doing something by doing nothing*? What's the calculus equivalent of a lovely pair of functions that cancel each other out, as inverses? Integrals and derivatives! Integration and differentiation are inverse operations, so they cancel out! A function is equal to the integral of its derivative!^[Okay... that's not *totally* true, since derivatives destroy constants. So it's only true *up to a constant*. But that's not that big of a deal.]

So. Let's actually start to make this argument, and to create a Taylor series. Let's say we have some lovely function $p(x)$:
$$p(x)$$
(I'm using $p$ rather than $f$ because there's an $f$ in the version of the integration by parts formula that I use, which will come up in a minute.)

We can stupidly overcomplicate it by rewriting it as the derivative of its integral:
$$\displaystyle p(x) = \frac{d}{dx}\left[ \int\! p(x) \, dx \right]$$
Or as the integral of its derivative:
$$\displaystyle p(x) = \int\! p'(x) \, dx$$
Let's play with this second version for a bit. In fact, let's *keep being stupid*, and do something *really ridiculous*: let's integrate this by parts!!! I mean, I only see one "part" to the integral, but we can conjure up a second "part," just by multiplying $p(x)$ by $1$: 
$$\displaystyle \int\! 1\cdot p'(x) \, dx$$
This is basically the same as how we can compute the antiderivative for $\ln(x)$: we write $\int\!\ln x$ as $\int\!1\!\cdot\!\ln x$, and then hit it up with parts. (Hopefully you've done this at some point???)

Let's remind ourselves, by the way, of the integration by parts formula. I never can remember it, so I always have to write it down. Here it is:
$$\int f'(x)g(x)\, dx \quad=\quad f(x) g(x) \,-\, \int\! f(x)g'(x) \,dx$$
Anyway, back to the problem at hand. We want to integrate by parts, and as always when we integrate by parts, we have a choice to make. Which part is the $f'(x)$ part, and which part is the $g(x)$ part?
$$\displaystyle \int\! 1\cdot p'(x) \, dx \quad = \quad \int\! \underbrace{1}_{f'(x)}\cdot \underbrace{p'(x)}_{g(x)} \, dx \quad = \quad   \int\! \underbrace{1}_{g(x)}\cdot \underbrace{p'(x)}_{f'(x)} \, dx$$
The sensible way to integrate this by parts is to let $1$ be the $f(x)$ part, and $p'(x)$ be the $g'(x)$ part. Then we get just:
\begin{align*}
  p(x) = \int\! \underbrace{1}_{g(x)}\cdot \underbrace{p'(x)}_{f'(x)} \, dx &= f(x)\cdot g(x) \,\,-\,\, \int f(x)g'(x) \,dx \\
&= p(x)\cdot 1 \,\,-\,\, \int p(x)\cdot  0 \,dx \\
&= p(x)
\end{align*}
So $p(x)$ equals $p(x)$. Very true! Very sensible! But... we're trying to be stupid and ridiculous and completely over-the-top here. So what if we make the opposite choice? What if we let $1$ be the $f'(x)$ part, and $p(x)$ be the $g(x)$ part??? Then we'll get:
\begin{align*}
  p(x) = \int\! \underbrace{1}_{f'(x)}\cdot \underbrace{p'(x)}_{g(x)} \, dx &= f(x)\cdot g(x) - \int f(x)g'(x) \,dx \\
&= xp'(x) - \int x p''(x) \,dx
\end{align*}
Okay. We have indeed made our original, very simple function $p(x)$ far more complicated. But why not keep going? We have another integral---why not hit THAT with parts?!?! If we make the analogous choices for which part is the $f$ and which is the $g'$, we have:
\begin{align*}
  p(x) = \int\! 1\cdot p(x) \, dx &= xp'(x) - \int x p''(x) \,dx \\ \\
&= xp'(x) - \int \underbrace{x}_{f'(x)} \underbrace{p''(x)}_{g(x)} \,dx \\ \\
&= xp'(x) - \left( f(x)\cdot g(x) - \int f(x)g'(x) \,dx \right) \\ \\
&= xp'(x) - \left( \frac12x^2\cdot p''(x) - \int \frac12x^2 p'''(x) \,dx \right) \\ \\
&= xp'(x) - \frac12x^2 p''(x) + \int \frac12x^2 p'''(x) \,dx
\end{align*}
And let's keep going!!! Why not CONTINUE integrating this by parts?!?
\begin{align*}
    &= xp'(x) - \frac12x^2 p''(x) + \int \underbrace{\frac12x^2}_{f'(x)} \underbrace{p'''(x)}_{g(x)} \,dx \\ \\
    &= xp'(x) - \frac12x^2 p''(x) + \left( f(x)\cdot g(x) - \int f(x)g'(x) \,dx \right) \\ \\
    &= xp'(x) - \frac12x^2 p''(x) + \left( \frac{1}{6}x^6\3p^{'''}(x) - \int \frac{1}{6}x^3p^{''''}(x) \,dx \right) \\ \\
    &= xp'(x) - \frac12x^2 p''(x) +  \frac{1}{6}x^3p^{'''}(x) - \int \frac{1}{6}x^3p^{''''}(x) \,dx 
    \end{align*}

More! MORE!!!!!
\begin{align*}
    &= xp'(x) - \frac12x^2 p''(x) +  \frac{1}{6}x^3p^{'''}(x) - \int \underbrace{\frac{1}{6}x^3}_{f'(x)}\underbrace{p^{''''}(x)}_{g(x)} \,dx \\ \\
    &= xp'(x) - \frac12x^2 p''(x) +  \frac{1}{6}x^3p^{'''}(x) - \left( f(x)\cdot g(x) - \int f(x)g'(x) \,dx \right) \\ \\
    &= xp'(x) - \frac12x^2 p''(x) +  \frac{1}{6}x^3p^{'''}(x) - \left( \frac{1}{24}x^4p^{''''}(x) - \int \frac{1}{24}x^4p^{'''''}(x)  \,dx \right)
    \end{align*}
Uh, let's start using numbers to indicate how many derivatives we're taking; tally marks get a bit inefficient...
\begin{align*}
    &= xp'(x) - \frac12x^2 p''(x) +  \frac{1}{6}x^3p^{'''}(x) - \left( \frac{1}{24}x^4p^{''''}(x) - \int \frac{1}{24}x^4p^{(5)}(x)  \,dx \right) \\ \\
    &= xp'(x) - \frac12x^2 p''(x) +  \frac{1}{6}x^3p^{'''}(x) - \frac{1}{24}x^4p^{''''}(x) + \int \frac{1}{24}x^4p^{(5)}(x)  \,dx 
\end{align*}
Okay, you see where this is going! 

When you learned how to integrate by parts, you may have learned a fun technique for doing crazy repeated integration by parts like this. We can make a little table of the antiderivatives of $f'$ and the derivatives of $g$, and put them together, being sure to alternate signs appropriately. (People call this **tabular integration**; it's just repeated/iterated integration by parts.) If we do something like that here, to make our work somewhat less messy, we'll get a nice little table like:

\begin{center}\begin{tabular}{c c c | c}
sign & $g$ and its derivatives & $f'$ and its antiderivatives  & corresponding term \\
\hline& & &\\

$+$ & $p'(x)$ & 1   & n/a\\
& & &\\
$-$ & $p''(x)$ & $x$ &  $+x\!\cdot\!p'(x)$\\
& & &\\
$+$ & $p'''(x)$ & $\displaystyle\frac12x^2$ & $\displaystyle-\frac12x^2p''(x)$ \\ 
& & &\\
$-$ & $p''''(x)$ & $\displaystyle\frac16x^3$ & $+\displaystyle\frac16x^3p'''(x)$ \\
& & &\\
$+$ & $p^{(5)}(x)$  & $\displaystyle \frac{1}{24}x^4$ & $-\displaystyle\frac{1}{24}x^4p^{(4)}(x)$ \\
& & &\\
\vdots & \vdots & \vdots  & \vdots \\
& & &\\
$(-1)^{k+1}$ & $\displaystyle p^{(k)}(x)$ & $\displaystyle\frac{1}{(k-1)!}x^{k-1}$ \\
& & &\\
$(-1)^{k}$ & $\displaystyle p^{(k+1)}(x)$ & $\displaystyle\frac{1}{k!}x^{k}$ & $\displaystyle(-1)^{k+1}\frac{1}{k!}x^kp^{(k)}(x)$
\end{tabular}\end{center}
So, either way we calculate it, we have:
\begin{align*}
    p(x) &= xp'(x) - \frac12x^2 p''(x) +  \frac{1}{6}x^3p^{'''}(x) - \frac{1}{24}x^4p^{''''}(x) + \cdots \\ \\
    &= \sum_{k=1}^{k=\infty} \frac{(-1)^{k+1}x^kp^{(k)}(x)}{k!}
\end{align*}
This is ... almost the Taylor series formula we know and love. *But not quite.*

There are a couple issues:
<ol>
<li>The biggest is that *it's not a polynomial*. Yes, we have all those lovely $x$, $x^2$, $x^3$ terms---but then we have those derivatives. We have $p'(x)$, $p''(x)$, and so forth. *Those are also functions of $x$*. And $p$, along with its derivatives, is/are not necessarily polynomials!

For instance, if we plug sine into this formula, it'll give us:
$$\sin(x) = x\cos(x) - \frac12x^2(-\sin x) + \frac16x^3(-\cos x) -\frac{1}{24}x^4\sin(x)  + \cdots$$
It still has the trig functions. It isn't really a polynomial.

In our actual version of Taylor series, we get around this by *evaluating* the derivative at the point $x=c$ around which we're growing the Taylor series (i.e., plugging $c$ for $x$ into the derivatives), giving us just the instantaneous slope (or slope-of-the-slope-of-the-slope, etc.) at that point. But it's not clear how we'd get to that from here. We can't just plug $x=c$ into *some* of the $x$'s, and leave the rest as $x$. That's definitely not allowed!</li>

<li>Also, there's no constant term. The formula we know and love for Taylor series includes a constant, a zeroth-order term with an $x^0$. We don't have that here. But that's easier to fix. There's no constant term because we took an indefinite integral/antiderivative. Those don't have constants! If we take a definite integral (i.e., with bounds), or evaluate this from some lower bound to some upper bound, then we'll get a definite constant. Doing so will actually be a bit irritating, but we'll get to that later.</li>

<li>Finally, as a third issue, there are all these negatives! The actual Taylor series formula doesn't have negatives---all the terms are positive. Yet in this version, we have alternating negative and positive signs. </li>
</ol>

Close---but no cigar!

## Whence Taylor Series, Try \#2

Okay, so, that was our rough draft. We integrated by parts an infinite number of times, and we got something that looked an awful lot like a Taylor series! Great first try! But let's iterate (or whatever John Feland would say).

Here are some things we're going to do differently this time:

<ul>
<li> First, we've been using the variable $x$ to represent too many different things. (In CS parlance, we've been **overloading our namespace**.) It's been part of our final answer, and it's also been our variable of integration. That's been the root of some of our maladies. So, to disambiguate things, we're going to add a new dummy variable, $t$, to our integral. Rather than integrate $\int\!p'(x)dx$, we'll integrate:
$$\int\! p'(t)dt$$ </li>
<li> Second, we're going to take a definite integral. That'll give us the constant in the Taylor series expansion. (And it'll require a tiny bit of algebra to get things in position for the subsequent integration by parts.) We'll take a definite integral from $t=c$ to $t=x$, i.e.:
$$\int_c^x \!p'(t)dt$$
That'll give us both the $x$ in our final Taylor polynomial, as well as the "origin" of our Taylor polynomial, around which we grow it (at $c$).  </li>
<li> And third, we're going to use a weird antiderivative in the integration by parts. The antiderivative of $x^2$ isn't *just* $\frac13x^3$---it's also $\frac13x^3+5$, $\frac13x^3-7$, $-\frac{-2x^3-47.8}{6}$ and so forth. There's going to be a special one that we'll need to use to make the algebra work out nicely.</li>
</ul>
So, in a more symbolic form, our argument this time will look like:
<div class='callout-box'>
\begin{align*}
\displaystyle p(x) &= \int_c^x\! p'(t) \, dt \\
&= \int_c^x \! 1\cdot p'(t) \, dt \\ \\
&\quad\text{integrate this by parts an infinite number of times} \\
&\quad\text{but this time, plug in $x$ and $c$ and subtract} \\
&\quad\text{(also use a weird antiderivative for the integration by parts)} \\ \\
&= \text{the Taylor series formula/Taylor polynomial}\\
&\quad\quad\quad\text{(expanded around $x=c$)}
\end{align*}
</div>

So, let's start!

<div style='height:2em;'>

Let's say we have a definite integral:
$$\int_{c}^{x}\! p'(t)dt$$
So this is a definite integral from $c$ to $x$, where $c$ is the constant around which we're growing the Taylor series, and $x$ is the actual variable of our final, resulting Taylor series.

Because of how integrals work, this is just
$$\int_{c}^{x}\! p'(t)dt = \left(\substack{\text{the antiderivative of $p'(t)$}\\\text{with $x$ plugged in for $t$}}\right) - \left(\substack{\text{the antiderivative of $p'(t)$}\\\text{with $c$ plugged in for $t$}}\right)$$
But the antiderivative of $p'$ is, of course, just $p$. So we have:
$$\int_{c}^{x}\! p'(t)dt = p(x) - p(c)$$
If we rearrange this slightly, we get:
$$p(x) - p(c) = \int_{c}^{x}\! p'(t)dt $$
Or:
$$p(x) = p(c) +  \int_{c}^{x}\! p'(t)dt$$
Okay, and NOW we have something on which we can go to town and integrate by parts!!! And you can see where the first, constant term of the Taylor series formula comes from, too.

There's another weird thing we're going to do when we integrate this by parts. I'll come to that in a second. If we're trying to integrate this by parts, the obvious way to do it is to do basically what we just did before (but now with the added complication that we have a definite integral, so we have to subtract things after we antidifferentiate). So, we'll get something like:
\begin{align*}
    p(x) &= p(c) +  \int_{c}^{x}\! p'(t)dt \\
    &= p(c) +  \int_{c}^{x}\! \underbrace{1}_{f'(t)}\cdot \underbrace{p'(t)}_{g(t)}dt\\
    &= p(c) + \left[ f(t)g(t) - \int\!f(t)g'(t)\,dt \right]_c^x \\
    &= p(c) + \left[ tp'(t) - \int\!tp''(t)\,dt \right]_c^x \\
    &= p(c) + xp'(x) - cp'(c) + \int_c^x\!tp''(t)\,dt
\end{align*}
But this... isn't quite what we want. We still have $p'(x)$ in there. We want our only $x$'s to be part of the polynomial terms. We want the derivative parts to look more like $p(c)$. That's just a number. We want to have $p'(c)$, $p''(c)$, etc. But it doesn't look like that's what's happening here. Hmmm. What to do.

I know! Let's try this again---but using a *different* antiderivative for $g'(t)$. And... this step is pretty weird, and I'm not sure I'd be able to come up with it myself, not unless I was really trying, and I knew what I wanted the ultimate answer to be. So, anyway, let's back up. We had:
$$p(x) = p(c) +  \int_{c}^{x}\! \underbrace{1}_{f'(t)}\cdot \underbrace{p'(t)}_{g(t)}dt$$
We were trying to integrate this by parts:
\begin{align*}
    g(t) &= p'(t) \quad\quad\quad &f(t) =\quad \\
    g'(t) &=  \quad\quad\quad &f'(t) = 1
\end{align*}
The obvious antiderivative for $f'(t)=1$ is $f(t)=t$. But... that's not the only antiderivative. Antidifferentiation isn't unique! $f'(t)=1$ has plenty of antiderivatives! $f(t) = t + 7$ is one of them. So is $f(t)= t-2000$. 

And so is... $f(t)=-(x-t)$. This is a little weird, so let's linger on it for a moment. We normally think of $x$ as the variable, but if we're anti/differentiating with respect to $t$, then $x$ is just a constant. So if we differentiate this, we get:
\begin{align*}
    \frac{d}{dt}\Big[ f(t) \Big] &= \frac{d}{dt}\Big[ -(x-t)\Big] \\
    &= \frac{d}{dt}\Big[ -x+t \Big] \\
    &= \frac{d}{dt}\Big[ t- x \Big]  \\
    &= 1 - 0 \\
    &= 1 \\
    &= f'(t)
\end{align*}
So, let's try integrating by parts with *that* antiderivative, and see what happens. We have:
\begin{align*}
    g(t) = p'(t) \quad\quad\quad f(t) = -(x-t) \\
    g'(t) = p''(t)\quad  \quad\quad\quad f'(t) = 1
\end{align*}
So, antidifferentiating by parts, we'll get:
\begin{align*}
    p(x) &= p(c) +  \int_{c}^{x}\! p'(t)dt \\
    &= p(c) +  \int_{c}^{x}\! \underbrace{1}_{f'(t)}\cdot \underbrace{p'(t)}_{g(t)}dt \\
    &= p(c) + \left[ f(t)g(t) - \int\!f(t)g'(t)\,dt \right]_c^x 
    \end{align*}
Here comes the weird antiderivative:
\begin{align*}
    &= p(c) + \left[ -(x-t)p'(t) - \int\!-(x-t)p''(t)\,dt \right]_c^x 
    \end{align*}
And let's actually evaluate it from $t=c$ to $t=x$:
\begin{align*}
    &= p(c) + -(x-x)p'(x) - -(x-c)p'(c) - \int_c^x\!-(x-t)p''(t)\,dt\\
    &= p(c) -(x-x)p'(x) +(x-c)p'(c) - \int_c^x\!-(x-t)p''(t)\,dt
    \end{align*}
WAIT!!!! The $p'(x)$ term goes away!!! 'Cuz it's got a coefficient of just $(x-x)=0$!!!
\begin{align*}
    &= p(c) -\underbrace{(x-x)}_{=0}p'(x) +(x-c)p'(c) - \int_c^x\!-(x-t)p''(t)\,dt \\
    &= p(c) -0p'(x) +(x-c)p'(c) - \int_c^x\!-(x-t)p''(t)\,dt \\
    &= p(c) \,\,\cancel{-0p'(x)}\,\, +(x-c)p'(c) - \int_c^x\!-(x-t)p''(t)\,dt \\
    &= p(c) +(x-c)p'(c) - \int_c^x\!-(x-t)p''(t)\,dt
    \end{align*}
So now we can just keep integrating by parts! We have this weird antiderivative, but we can just keep antidifferentiating it "normally" ("boringly"). Let's do the next term:
\begin{align*}
    &= p(c) +(x-c)p'(c) - \int_c^x\!\underbrace{-(x-t)}_{f'(t)}\underbrace{p''(t)}_{g(t)}\,dt \\
    &= p(c) +(x-c)p'(c) - \left[ f(t)g(t) - \int\!f(t)g'(t)\,dt \right]_c^x \\
    &= p(c) +(x-c)p'(c) - \left[ \frac{(x-t)^2}{2}p''(t) - \int\!\frac{(x-t)^2}{2}p'''(t)\,dt \right]_c^x
    \end{align*}
Note that the antiderivative is a little different there---it's $+\frac{(x-t)^2}{2}$, not $-\frac{(x-t)^2}{2}$. We've lost the negative; it reappears when we take the derivative because of the $-t$ and the chain rule, etc.; if you're uncertain about that, you can check. From here the antiderivatives will alternate between being $+$ or $-$, because of the chain rule, but they're perfectly matched to cancel out the negatives in the integration by parts formula. (Like destructive interference in physics/wave mechanics.) Anyway, this becomes:
\begin{align*}
    &= p(c) +(x-c)p'(c) -\left(  \underbrace{\frac{(x-x)^2}{2}p''(x)}_{=0} -  \frac{(x-c)^2}{2}p''(c) - \int_c^x\!\frac{(x-t)^2}{2}p'''(t)\,dt \right) \\
    &= p(c) +(x-c)p'(c) -\left(  0 - \frac{(x-c)^2}{2}p''(c) - \int_c^x\!\frac{(x-t)^2}{2}p'''(t)\,dt \right)\\ \\
    &= p(c) +(x-c)p'(c) + \frac{(x-c)^2}{2}p''(c) + \int_c^x\!\frac{(x-t)^2}{2}p'''(t)\,dt\end{align*}
Okay! You can totally see where things are going! But to be thorough, let's take one more term:
\begin{align*}
    &= p(c) +(x-c)p'(c) + \frac{(x-c)^2}{2}p''(c) + \int_c^x\!\underbrace{\frac{(x-t)^2}{2}}_{f'(t)}\underbrace{p'''(t)}_{g(t)}\,dt \\ \\
    &= p(c) +(x-c)p'(c) + \frac{(x-c)^2}{2}p''(c) + \left[ f(t)g(t) - \int\!f(t)g'(t)\,dt \right]_c^x \\ \\
    &= p(c) +(x-c)p'(c) + \frac{(x-c)^2}{2}p''(c) + \left[ -\frac{(x-t)^3}{6}p'''(t) - \int\!-\frac{(x-t)^3}{6}p''''(t)\,dt \right]_c^x \\ \\
    &= p(c) +(x-c)p'(c) + \frac{(x-c)^2}{2}p''(c) + \left( -\frac{(x-x)^3}{6}p'''(x) - -\frac{(x-c)^3}{6}p'''(c) - \int_c^x\!-\frac{(x-t)^3}{6}p''''(t)\,dt \right)\\ \\
    &= p(c) +(x-c)p'(c) + \frac{(x-c)^2}{2}p''(c) + \left( 0 + \frac{(x-c)^3}{6}p'''(c) - \int_c^x\!-\frac{(x-t)^3}{6}p''''(t)\,dt \right)\\ \\
    &= p(c) +(x-c)p'(c) + \frac{(x-c)^2}{2}p''(c) + \frac{(x-c)^3}{6}p'''(c) - \int_c^x\!-\frac{(x-t)^3}{6}p''''(t)\,dt
\end{align*}
Yay!!! There's our Taylor series/Taylor polynomial, out to the cubic term!!! So you can see what happens. That's how Taylor series comes into being! We just do a bunch of stupid stuff---write something as the integral of its derivative, wildly integrate by parts like a lunatic, go all baroque on our antiderivatives---and, in doing so, we manage to turn any arbitrary function into a polynomial!

<div class='callout-box'>
\begin{align*}
    p(x) &= p(c) +(x-c)p'(c) + \frac{(x-c)^2}{2}p''(c) + \frac{(x-c)^3}{6}p'''(c) + \cdots \\ \\
    &= \sum_{k=0}^{k=\infty} \frac{p^{(k)}(c)}{k!}(x-c)^k
\end{align*}
 \includesvg[width=1cm]{andrew-logo.svg} \bigskip
</div>




## Finite Taylor series expansions as approximations

Before we attempt to tackle higher-dimensional Taylor series, let's remind ourselves of some more ways of thinking about 1D Taylor series.

If we have a full, infinitely-long Taylor series, then I guess that's just another way of writing the function. But what if we have only *part* of a Taylor series? Like, what if we have only the first few terms? How does that relate to the original function? Plus, given that we're finite beings---we can never *actually* write out an infinite Taylor series---every Taylor series is just a finite truncation of the actual infinite one.

So, we can think of a Taylor series with a finite number of terms as being an *approximation* of the original function. The more terms it has, the better the approximation becomes. We're approximating the function increasingly better using increasingly complicated polynomials.

So, for instance, we can approximate a function using just the first term of a Taylor series:
$$f(x) \approx f(c)$$
This is a bad approximation! Visually, it looks like a flat straight line, that intersects the function (at wherever we're growing the Taylor series from).

It's not *totally horrible*---I mean, the function and the one-term Taylor series do have the same value, at $x=c$. But it's not great.

So let's add a second term, and make the approximation a bit better! We'll have:
$$f(x) \quad\approx\quad f(c) + f'(c)(x-c)$$
This is a straight line! If $c=0$ (if we're growing the Taylor series around the origin), then it's just a straight line with a $y$-intercept of $f(c)$ and a slope of $f'(c)$. If $c$ is not $0$, then we can do a bit more algebra to figure out the slope and $y$-intercept. This is, note, exactly the same as **tangent line approximation** to a function at a point that you may have seen in 1VC!

How about if we keep going? What if we approximate the function with a parabola (a second-order polynomial)? We'll have:
$$f(x) \quad\approx\quad f(c) + f'(c)(x-c) + \frac{f''(c)}{2}(x-c)^2$$
Like in the linear/tangent line approximation, we could expand this and do some algebra if we wanted to see this in normal $ax^2+bx+c$ form. (Of course, if the $c$ in our original formula is $0$, we already have this.)

Note how here we're starting to divide the higher-order terms. We have a $2$ in the denominator here. Each of the $n$'th order terms has an $n!$ in the denominator; it's just that $0!$ and $1!$ are both $1$, so we didn't show them explicitly.

One way of thinking about these $n!$'s in the denominator is that *the higher the power, the less and less it matters.* If we're trying to approximate the function at $x=c$, then the function's value at $x=c$ matters A LOT. And the function's slope at $x=c$ matters a lot, too. The slope of the slope matters somewhat less. And the slope of the slope of the slope even less. Once we're out to the forty-seventh derivative, it's just not going to make that big of a difference. So that's one way of thinking about why there's a $n!$ in the denominator of the $n$'th term.^[Note that this isn't an explanation for why the denominator of the $n$'th term is $n!$, as opposed to just $n$, or $n^2$, or something else that increases with $n$; it's just an argument for why the denominator should get bigger.] It's a way of making higher-order terms smaller. The higher-order the term, the less it matters. 

So, in summary, we can think of a Taylor series as being a way of approximating a function increasingly better using increasingly complicated polynomials:
$$f(x) \approx \underbrace{f(c)}_{\mathclap{\text{constant term}}} +\, \underbrace{f'(c)(x-c)}_{\mathclap{\text{linear term}}} \,+\, \underbrace{\frac{f''(c)}{2}(x-c)^2}_{\mathclap{\text{quadratic term}}} \,+\, \underbrace{\frac{f'''(c)}{6}(x-c)^3}_{\text{cubic term}} \,+ \cdots +\, \underbrace{\frac{f^{(n)}(c)}{n!}(x-c)^n}_{\text{$n$th-order term}} \,+ \cdots$$



## Polynomials in two dimensions


Whoops! I meant for us to talk about this earlier this fall. But we didn't. Oh well! Let's briefly discuss this now.

We spent a long time in Math 3 talking about polynomials in one dimension, and how their algebraic representation connects to what they look like, visually. Algebraically, a polynomial in 1D looks like a bunch of terms added together, where each term consists of the variable raised to some power (a positive integer power) and multiplied by some coefficient, e.g.:
$$a + bx + cx^2  + dx^3 + ex^4 + \cdots$$
What about a two-dimensional polynomial? Or, as people say, a "**polynomial in two variables**''? What do they look like, visually and algebraically?

A degree-zero 2D polynomial is easy. Here's an example:
$$f(x,y) = 5$$
So this is just a flat plane at $z=5$. It's just like how a degree-zero 1D polynomial is a flat line.

A first-degree 2D polynomial is a plane! Here's an example:
$$f(x,y) = 3x - 7y + 2$$
So it's a linear plane, with a slope of $3$ in the $x$-direction, a slope of $-7$ in the $y$-direction, and a "$z$-intercept" of $2$. Of course we could also have a first-degree 2D polynomial that's flat in one of those directions, like:
\begin{align*}
    g(x,y) &= 3x + 0y + 2 \\
    &= 3x+2
    \end{align*}
The first problem you did on the roofs problem set was basically like this. It was a 2D plane, flat in one direction and linear in the other. Either way, we don't just have *one* linear term---we have *two* linear terms!

What about when we move up to a degree-two/quadratic polynomial in 2D? Now things get a little messier! If we're thinking about a quadratic in two dimensions, there are FOUR different ways we can multiply together $x$'s and $y$'s so that the total degree is two:
$$x^2,\quad yx,\quad xy,\quad\text{ and }y^2$$ 
In 1D, we only have one quadratic term we need to worry about. In 2D, we have four! Well, okay, not really, because $xy$ and $yx$ are the same. So I guess we really just have three possible quadratic terms in 2D:
$$x^2, \quad xy,\quad\text{ and }y^2$$ 
The shapes get way more complicated! We've seen 2D polynomials that look like two-dimensional parabolas:
$$x^2+y^2$$
We've discovered this weird new Pringles hyperbolic parabola shape:
$$x^2 - y^2$$
And, in general, the three quadratric terms of a 2D polynomial will look like:
$$\text{(SOMETHING)}x^2 + \text{(SOMETHING ELSE)}y^2 + \text{(SOMETHING ELSE ELSE)}xy$$
Those are just the quadratic terms! I'm not even including the two linear terms, or the constant term! And then when we're talking about a polynomial out to the cubic terms, things get even more complicated!

And I'd write more, but... it's Tuesday night, and I'm desperately trying to get these finished up for tomorrow!


## Taylor series in two dimensions

\noindent So, we're definitely not going to derive the formula for a Taylor series in two dimensions. Deriving the formula for a Taylor series in 1D was enough work itself! And---like many things in higher dimensions---Taylor series does not get easier or less complicated as we move into higher dimensions. Instead it gets messier. Way messier. So I'm just going to write out what the formula is, and try to motivate where it comes from. That's enough!

What if we think about approximating a 2D surface (i.e., a surface from $\mathbb{R}^2$ to $\mathbb{R}^1$) with a 2D polynomial? How can we do this?
\begin{itemize}
\item We can approximate it with a single number (i.e., a flat plane)
\item We can approximate it with a plane! (linear)
\item We can approximate it with a parboloid/2D parabola!
\item We can approximate it with a, uh, two-dimensional cubic! (a cubicoid?)
\item We can approximate it with a two-dimensional quartic/fourth degree shape!
\item Et cetera!
\end{itemize}
Let's get more specific. Let's say we have some function:
$$f: \mathbb{R}^2 \rightarrow \mathbb{R}^1$$
And we want to approximate it/grow a 2D Taylor series around the point $(x=a, y=b)$. 

If we try to approximate it with just a single number (a constant, a flat plane), we have:
$$f(x,y) \approx f(a,b)$$
It's just the value of the function at that point.

If we want to approximate it with a plane (i.e., a not-necessarily flat, maybe-angled plane), well, now we have *two* linear terms. We have a linear term in the $x$-direction, which will be $(x-a)$, times the slope/derivative/partial with respect to $x$, evaluated at $(a,b)$:
$$\underbrace{f_x(a,b)(x-a)}_{\substack{\text{the linear term}\\\text{in the $x$-direction}}}$$
And we have the same thing (or rather, the analgous thing) for the $y$-direction:
$$\underbrace{f_y(a,b)(y-b)}_{\substack{\text{the linear term}\\\text{in the $y$-direction}}}$$
So, to put these together, if we want to approximate $f$ with a (slanted) plane, we have:
$$f(x,y) \approx f(a,b) \,+\, \underbrace{f_x(a,b)(x-a) \,+\, f_y(a,b)(y-b)}_{\text{linear terms}}$$
What if we want to approximate it as a 2D paraboloidy shape? I.e., with a second-order 2D polynomial? Now we have FOUR terms to deal with!!! After all, if we're thinking about what total combination of exponent degree gives us a quadratic, i.e., degree two, we have four choices:
$$x^2,\quad yx,\quad xy,\quad\text{ and }y^2$$ 
In 1D, we only have one quadratic term we need to worry about. In 2D, we have four! So each of these four terms has some coefficient. And, like with Taylor series in 1D, we can find those coefficients by scaling by the value of the derivative at that point, divided by the order of the term factorial'd. So our four quadratic terms are:
$$\frac12f_{xx}(a,b)(x-a)(x-a)$$
$$\frac12f_{yy}(a,b)(y-b)(y-b)$$
$$\frac12f_{xy}(a,b)(x-a)(y-b)$$
$$\frac12f_{yx}(a,b)(y-b)(x-a)$$
Well, okay, this is a little silly---we don't *really* have four quadratic terms. After all, $xy$ and $yx$ are the same. And likewise, the mixed partials $f_{xy}$ and $f_{yx}$ are the same:
\begin{align*}
    & \frac12f_{xx}(a,b)(x-a)^2  \\
    &\begin{rcases}
        \!\displaystyle\frac12f_{xy}(a,b)(x-a)(y-b) \\
        \!\displaystyle\frac12f_{yx}(a,b)(y-b)(x-a)
    \end{rcases} \quad\text{ same} \\
    &\frac12f_{yy}(a,b)(y-b)^2
\end{align*}
So really, we can combine them, and our three quadratic terms are actually just:
\begin{align*}
    & \frac12f_{xx}(a,b)(x-a)^2  \\
    & f_{xy}(a,b)(x-a)(y-b) \\
    &\frac12f_{yy}(a,b)(y-b)^2
\end{align*}
Note how the fraction of the mixed partial is different---we had two of them divided by two, so we only have one divided by one. (That makes no sense in English.) So then, our Taylor series in 2D, out to the quadratic terms, is:
$$f(x) \approx \overbrace{f(a,b)}^{\text{constant term}} \,+\, \underbrace{f_x(a,b)(x-a) \,+\, f_y(a,b)(y-b)}_{\text{linear terms}} + \underbrace{\frac{f_{xx}(a,b)}{2}(x-a)^2 + \frac{f_{yy}(a,b)}{2}(y-b)^2 + f_{xy}(a,b)(x-a)(y-b)}_{\text{quadratic terms}}$$
Uhh, that's running off the page. Let's start listing these terms vertically:
\begin{align*}
f(x,y) \approx&\quad f(a,b)\quad\text{ constant term} \\ \\
&\begin{rcases}
+&  f_{x}(a,b)(x-a)  \\
+& f_{y}(a,b)(y-b) \\
\end{rcases} \quad\text{ linear terms} \\ \\
&\begin{rcases}
+&  \frac12f_{xx}(a,b)(x-a)^2  \\
+& \frac12f_{yy}(a,b)(y-b)^2 \\
+& f_{xy}(a,b)(x-a)(y-b)
\end{rcases} \quad\text{ quadratic terms}
\end{align*}
What about the cubic terms?!?! We now have EIGHT possibilities: eight different ways we can multiply together different numbers of $x$'s and $y$'s to get a degree-three thing. 
$$x^3,\quad x^2y,\quad xyx, \quad yx^2,\quad xy^2,\quad yxy,\quad y^2x,\quad \text{ and } y^3$$
Or... well, again, not really, because multiplication is commutative, and so order doesn't matter. Once we ignore that, there will only be four different cubic terms:
$$x^3,\quad x^2y,\quad xy^2,\quad \text{ and } y^3$$
Anyway... this is all getting very detailed. Let's just put all these together with their relevant partials. It's a cubic, so the denominator will be $3!=6$. So our cubic terms are:
\begin{align*}
    & \frac16f_{xxx}(a,b)(x-a)^3  \\
    &\begin{rcases}
        \!\frac16f_{xxy}(a,b)(x-a)^2(y-b) \\
        \!\frac16f_{xyx}(a,b)(x-a)^2(y-b) \\
        \!\frac16f_{yxx}(a,b)(x-a)^2(y-b)
    \end{rcases} \text{ same} \\
    &\begin{rcases}
        \!\frac16f_{xyy}(a,b)(x-a)(y-b)^2 \\
        \!\frac16f_{yxy}(a,b)(x-a)(y-b)^2 \\
        \!\frac16f_{yyx}(a,b)(x-a)(y-b)^2
    \end{rcases} \text{ same} \\
    &\frac16f_{yyy}(a,b)(y-b)^3
\end{align*}
So, if we account for the fact that multiplication and differentiation are commutative (order doesn't matter), this reduces to just four terms. There are three of each of the "mixed" terms, and $\frac16+\frac16+\frac16=\frac12$, so that's what the coefficient on the two combined mixed terms will be. We get, as the four third-order/cubic terms:
$$\frac16f_{xxx}(a,b)(x-a)^3$$
$$\frac12f_{xxy}(a,b)(x-a)^2(y-b)$$
$$\frac12f_{xyy}(a,b)(x-a)(y-b)^2$$
$$\frac16f_{yyy}(a,b)(y-b)^3$$
So then, our 2D Taylor series, out to the cubic terms, is:
\begin{align*}
f(x,y)\quad \approx& \quad f(a,b) \quad\text{ constant term} \\ \\
&\begin{rcases}
+&  f_{x}(a,b)(x-a)  \\
+& f_{y}(a,b)(y-b) \\
\end{rcases} \quad\text{ linear terms} \\ \\
&\begin{rcases}
+&  \frac12f_{xx}(a,b)(x-a)^2  \\
+& \frac12f_{yy}(a,b)(y-b)^2 \\
+& f_{xy}(a,b)(x-a)(y-b)
\end{rcases} \quad\text{ quadratic terms} \\ \\
&\begin{rcases}
+&  \frac16f_{xxx}(a,b)(x-a)^3 \\
+& \frac12f_{xxy}(a,b)(x-a)^2(y-b)\\
+& \frac12f_{xyy}(a,b)(x-a)(y-b)^2 \\
+& \frac16f_{yyy}(a,b)(y-b)^3
\end{rcases} \quad\text{ cubic terms} \\
&\quad\vdots
\end{align*}
My gosh, what a mess. And we're not even proving/deriving this! I'm just sketching it out and hand-waving and reasoning by analogy! And it keeps going!!!!

If you want to see the whole formula, as an infinite sum, here's one way to write it:

$$\boxed{f(x,y) = \sum_{i=0}^{i=\infty} \sum_{j=0}^{j=\infty} \frac{1}{i!j!}\cdot f_{x^iy^j}(a,b)\cdot (x-a)^i(y-b)^j}$$

A sum of a sum!!! My goodness. (If you actually wanted to apply this formula---which sounds dreadfully unpleasant---you could write it out as a table, with the values of $i$ varying in one direction, the values of $j$ varying in the other direction, and each cell as one of the terms of the double sum.)

I'm out of space, but there's so much more I want to say. This is all such a mess, but the ideas are so simple---that means we probably need to be coming up with a better notation! Also, those coefficients on the terms seem so familiar---do they remind you of Pascal's triangle/the binomial coefficient/combinations at all?!? And why haven't I mentioned the Hessian?!?!?
