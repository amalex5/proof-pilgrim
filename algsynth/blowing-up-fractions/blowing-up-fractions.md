---
title: Fraction Fission/Blowing Up Quotients
usemathjax: true
layout: post
---

Here's how Richard Rhodes starts *The Making of the Atomic Bomb*:

> In London, where Southampton Row passes Russell Square, across from the British Museum in Bloomsbury, Leo Szilard waited irritably one gray Depression morning for the stoplight to change. A trace of rain had fallen during the night; Tuesday, September 12, 1933, dawned cool, humid and dull. Drizzling rain would begin again in early afternoon. When Szilard told the story later he never mentioned his destination that morning. He may have had none; he often walked to think. In any case another destination intervened. The stoplight changed to green. Szilard stepped off the curb. As he crossed the street time cracked open before him and he saw a way to the future, death into the world and all our woe, the shape of things to come.^[p13 in my 2012 paperback edition]

As a talented narrator, Rhodes waits until the end of the chapter to reveal exactly what it is that Szilard realized:

>"As the light changed to green and I crossed the street," Szilard recalls, "it ... suddenly occurred to me that if we could find an element which is split by neutrons and which would emit two neutrons when it absorbs one neutron, such an element, if assembled in sufficiently large mass, could sustain a nuclear chain reaction.
>
>"I didn't see at the moment just how one would go about finding such an element, or what experiments would be needed, but the idea never left me. In certain circumstances it might be possible to set up a nuclear chain reaction, liberate energy on an industrial scale, and construct atomic bombs."
>
>Leo Szilard stepped up onto the sidewalk. Behind him the light changed to red.^[ibid., p28]

The drama!!! Reading this, I can *see* Szilard stepping off the curb on that rainy London day. Rhodes's writing is downright *cinematic*^[Also notice the reference to *Paradise Lost*: "death into the world and all our woe" is from the fourth line of Milton's epic poem. "The Shape of Things to Come," meanwhile, is the title of an H.G. Wells dystopian sci-fi novel published a few years before Szilard's fateful day. Rhodes discusses Wells's novel later in *The Making of the Atomic Bomb*, using it to give context for the intellectual climate of the 1930s.]. Szilard, in that moment, discovered the core idea behind atomic bombs and nuclear power: splitting atoms in a self-perpetuating, postive-feedback loop, releasing energy almost automatically. Behind his realization was the discovery, over the course of the previous half-century, that atoms were not solid indivisible objects, but could in fact be split into smaller objects (or at least their nuclei could), releasing energy in the process. **[Nuclear fission](https://en.wikipedia.org/wiki/Nuclear_fission)** is the word for that. 

There's a converse process, **[nuclear fusion](https://en.wikipedia.org/wiki/Nuclear_fusion)**, in which rather than blowing up one atom into two, we melt two atoms into one (we *fuse* them). Perhaps counterintuitively, that *also* releases huge amounts of energy. Nuclear fusion is the process behind hydrogen bombs (["thermonuclear" bombs](https://en.wikipedia.org/wiki/Thermonuclear_weapon), which is basically all modern nuclear weapons); it's also [the process that happens inside the Sun](https://en.wikipedia.org/wiki/Stellar_nucleosynthesis) and gives us all our heat and light. Achieving [controlled nuclear fusion](https://en.wikipedia.org/wiki/Fusion_power)---the sort you could turn into a power plant, for example---has been a long-running challenge and goal for  our civilization. Physicists at Lawrence Livermore National Laboratory, out in the East Bay suburbs, [claim to have achieved it on a tiny scale in 2022](https://www.llnl.gov/news/ignition), when their experimental fusion reactor briefly outputted a tiny bit more energy than the massive amount of energy being put into it. But, in general, we're good at splitting atoms; we're less good at fusing them.


## Splitting atoms; splitting fractions

When it comes to fractions, we're in the opposite situation. We know how to combine them. We know how to fuse them. We don't know how to split them. We don't know how to---what's the verb for "fission"---we don't know how to *fizz*^[Barak and I have discussed controversies relating to how one pronounces "fission."] them. 

Meaning: we know how to add fractions. We've known how to for years. We do that annoying technique where we find a common denominator, cross-multiply, and put things together:

$$\frac{2}{3}+\frac{4}{5}\quad \xrightarrow[\quad \frac{2\cdot 5 + 4\cdot 3}{3\cdot 5} \quad]{\quad\text{finding a common denominator!}\quad } \quad \frac{22}{15}$$

Adding fractions isn't as easy as multiplying fractions. But it's not that hard. There's just a simple algorithm.

But... what if we want to do this *in reverse*??? What if we have ONE fraction, and we want to shoot a neutron at it and split it into TWO fractions?!?

$$\frac{22}{15} \quad \xrightarrow{\quad\text{blow up into two fractions!}\quad} \quad \frac{2}{3}+\frac{4}{5}$$

In the above example, it's easy, because we already knew how we got $22/15$ in the first place. But what if we didn't??? How would we do it? In other words, how to we figure out how to go in both directions---to take two fractions and melt them into one, and to take one fraction and blow it up into two?

$$\text{two fractions} \quad \substack{   \xrightarrow{\quad\text{fraction fusion!}\quad }\\  \xleftarrow[\quad\text{fraction fission!}\quad ]{} } \quad  \text{one fraction}$$

Like, say, concretely, what if we had this fraction:

$$\frac{5}{21}$$

And we wanted to blow it up into two fractions??

$$\frac{5}{21} \quad \xrightarrow{\quad\text{blow up into two fractions!}\quad} \quad ???$$

In other words, how do we run the adding-fractions algorithm backwards? When we add fractions, we find a common denominator. So how do we *un-find* a common demoninator??

$$\text{two fractions} \quad \substack{   \xrightarrow{\quad\text{finding a common denominator}\quad }\\  \xleftarrow[\quad\text{UN-finding a common denominator}\quad ]{} } \quad  \text{one fraction}$$

Maybe one way to think about it is to realize that a common denominator is (or at least can be) two things multiplied together. In the case of the fraction above, $21$ is $3\cdot 7$. So, if $21$ is a common denominator in disguise, maybe it comes from being $3$ times $7$?? And maybe the two fractions that added to give us $\frac{5}{21}$ have denominators of $3$ and $7$?

$$\frac{5}{21} \quad=\quad \frac{5}{3\cdot7} \quad=\quad \frac{\quad???\quad}{3} + \frac{\quad???\quad}{7}$$

We don't know what the tops of those fractions would be.

$$\frac{5}{21} \quad=\quad \frac{\quad\text{something}\quad}{3} + \frac{\quad\text{something else}\quad}{7}$$

But maybe we could figure it out! Because of the way the adding-fractions algorithm works, we have to have:
$$\frac{\text{something}}{3} + \frac{\text{something else}}{7} \quad=\quad \frac{(\text{something})\cdot 7 \,\,+\,\, (\text{something else})\cdot 3}{3\cdot 7} \quad=\quad \frac{5}{21}$$

So in other words, just from comparing the tops of the fractions, we have to have:

$$(\text{something})\cdot 7 \,\,+\,\, (\text{something else})\cdot 3 = 5$$

And this is annoying, because we have an equation with two unknowns! Only one equation, but two unknowns. That's not a problem---it just means we have more than one possible solution. It means we have an infinite number of solutions, actually. One possibility (I just got this from trial and error and some scribbled arithmetic) is:
$$\text{something} = 2$$
$$\text{something else} = -3$$
Let's check! We have:

\begin{align*}
\frac{2}{3} + \frac{\,\,-3\,\,}{7} &= \frac{2\cdot 7 \quad+\quad (-3)\cdot 3}{3\cdot 7} \\ \\
&= \frac{14 - 9}{21} \\ \\
&= \frac{5}{21}
\end{align*}

Awesome! So we have:

$$\frac{5}{21} = \frac{2}{3} + \frac{\,\,-3\,\,}{7}$$

Or:

$$\frac{2}{3} + \frac{\,\,-3\,\,}{7} \quad \substack{   \xrightarrow{\quad\text{finding a common denominator!}\quad }\\  \xleftarrow[\quad\text{blowing it up}\quad ]{} } \quad  \frac{5}{21} $$

It's not the *only* way to blow up this fraction, but it is *one* way.

## Let's do another example!

OK, here's another fraction. This time, it has a variable. It's not so much a *number* as it is a *function*:
$$\frac{1}{x^2-x}$$
Can we BLOW THIS UP into two fractions??? Is it, in fact, already, secretly, privately, two fractions that have been added together??
$$\frac{???}{???} +\frac{???}{???} \quad\overset{???}{=}\quad \frac{1}{x^2-x}$$

There are some boring ways we could do this. Skye <!-- Calegari-Buster --> split it up into "two" fractions like this:
\begin{align*}
\frac{1}{x^2-x} \quad&= \underbrace{\frac{1}{x^2-x} \quad+\quad \frac{0}{1}}_{\text{"two" fractions}} \\ \\
&= \frac{1}{x^2-x} + 0\\ \\
&= \frac{1}{x^2-x}
\end{align*}
Which is... really pushing the limits of what "two" means. Eli <!-- Wee --> simply divided it in half and then added the two halves together:
\begin{align*}
\frac{1}{x^2-x} \quad&= \frac{\quad\frac{1}{x^2-x}\quad}{2} + \frac{\quad\frac{1}{x^2-x}\quad}{2} \\ \\
&= \frac{1}{2\left(x^2-x\right)} + \frac{1}{2\left(x^2-x\right)}
\end{align*}
Then, when I complained that that was boring, she divided it into fourths, and added the fourths together:
\begin{align*}
\frac{1}{x^2-x} \quad&= \frac{\quad\frac{1}{x^2-x}\quad}{4} + \frac{\quad\frac{1}{x^2-x}\quad}{4} + \frac{\quad\frac{1}{x^2-x}\quad}{4} + \frac{\quad\frac{1}{x^2-x}\quad}{4} \\ \\
&= \frac{1}{4\left(x^2-x\right)} + \frac{1}{4\left(x^2-x\right)} +\frac{1}{4\left(x^2-x\right)} +\frac{1}{4\left(x^2-x\right)}
\end{align*}
OK, fine. But can we split up this fraction in a way that (to use an obnoxious math word) is non-trivial and non-obvious and kind of interesting and cool? For example, here's a specific challenge: can we split it up into two fractions, neither of which have an $x^2$ in the denominator?? And which only have an $x$ in the denominator?

Fundamentally, what are the possibilities for how we can split this fraction up? How can we take this fraction and run the adding-fraction algorithm in reverse? What happens? If this is two fractions that have been added together, that means that the denominator, $x^2-x$, is really a common denominator in disguise:
$$\frac{???}{???} +\frac{???}{???} \quad\overset{???}{=}\quad \frac{1}{\underbrace{x^2-x}_{\substack{\text{is this a common}\\\text{denominator}\\\text{in disguise?}}}}$$
A common denominator is two things multiplied together. Is $x^2-x$ two things multiplied together? Yeah! Potentially $x^2-x$ could have come from $(x-1)\cdot x$:
$$\frac{???}{???} +\frac{???}{???} \quad\overset{???}{=}\quad \frac{1}{\underbrace{(x-1)x}_{\substack{\text{is this a common}\\\text{denominator}\\\text{in disguise?}}}}$$
So perhaps the original fractions we added to get $\frac{1}{x^2-x}$ looked like this:
$$\frac{???}{x-1} + \frac{???}{x} \quad\overset{???}{=}\quad  \frac{1}{x(x-1)}$$
OK, let's proceed as if this were the case. If it is, we'll need to figure out what the numerators over $x-1$ and $x$ could be. Rather than question marks or "something" and "something else," let's use some variables. We'll use $a$ and $b$:
$$\frac{1}{x(x-1)} \quad\overset{???}{=}\quad \frac{a}{x} + \frac{b}{x-1}$$
OK, so now we can just do some algebra to try to figure out what $a$ and $b$ are! Note that there's an $x$ in here, too, but the $x$ isn't something we're trying to find---our final answer is going to include $x$'s. So for our purposes right now, $x$ isn't a variable we're trying to solve for. Anyway, if we can in fact blow up this fraction, then whatever $a$ and $b$ are, they cross-multiply to become $1$. So then we have to have:
$$\frac{a}{x} + \frac{b}{x-1} \quad\overset{???}{=}\quad \frac{a\cdot(x-1) \quad+\quad b\cdot x}{x(x-1)} \quad\overset{???}{=}\quad \frac{1}{x^2-x} $$
So how do we *un*cross-multiply??? Let's try to find $a$ and $b$,  and let's do that by pulling out that numerator equation so we can focus on it. We have:
$$a(x-1) + b(x) = 1$$
Simplifying:
$$ax - a + bx = 1$$
Simplifying further:
$$(a+b)x - a = 1$$
OK, this is annoying. We have two variables we want to find, $a$ and $b$, but, like before, we only have one equation. We could try random things. We could just look at it and hope that an answer *appears* in our brain. As long as we *somehow* get *some* value for $a$ and $b$ that works, we'll have done it.

But also! COOL ALGEBRA SURPRISE!!!! WE ACTUALLY HAVE TWO EQUATIONS!!! We don't actually have one equation here with two unknowns; we actually DO have two equations, with two unknowns!!! Namely: the $x$ here, as we've discussed, isn't really a variable. It's not something we're solving for. We want our final answer to (probably, or at least potentially) have an $x$ in it. And... that means that since we have an $x$ on the left side of our equation, there should be an $x$ on the right side, too. The equation is some stuff times $x$, plus some other stuff. So that's what we need on both sides:
$$\underbrace{(a+b)x - a}_{\text{there's an $x$ on this side}} = \underbrace{1}_{\text{gotta be an $x$ on this side, too}}$$
But there's no $x$ on the other side! Except, yes, there actually *is*; it's just zero times $x$:
$$(a+b)x - a = 0x + 1$$
And because the $x$ is just chilling, we have to have:

* the stuff times $x$ on the left has to be equal to the stuff times $x$ on the right
* the stuff not times $x$ on the left has to be equal to the stuff not times $x$ on the right

Put visually, the red stuff has to be equal to the blue stuff:
$${\color{red}(a+b)x} {\color{blue}\quad - a} \quad\quad=\quad\quad {\color{red} 0x} {\color{blue} \quad + 1}$$
So really we do have two equations here!!! We have:
$$\cases{ (a+b)x &= 0x \\ -a &= 1}$$
(I'm writing that with a curly brace just to indicate/emphasize that this is a connected system of two equations, not two different steps of the same equation.)

We can solve this! For starters, we can zonk out the $x$:
$$\cases{ a+b &= 0 \\ -a &= 1}$$
Meanwhile, $-a=+1$, so $a=-1$. And then we can plug that into $a+b=0$ to get:
$$-1 + b = 0$$
$$b = 1$$
That's it!!! We have:
$$(a=-1,\, b= 1)$$
So then our blown-up fraction is:
$$\frac{a}{x} + \frac{b}{x-1} = \frac{-1}{x} + \frac{1}{x-1}$$
Does all this voodoo actually work?!? We should check. We'll just add these two fractions together and hopefully we should get what we started with. We have:
\begin{align*}
\frac{-1}{x} \quad+\quad \frac{1}{x-1} \quad\quad&= \frac{-1\cdot(x-1) \quad + \quad 1\cdot(x)}{x(x-1)} \\ \\
&= \frac{-x +1 \quad+\quad x}{x(x-1)} \\ \\
&= \frac{1}{x^2-x}
\end{align*}
Yay!!! So we have:
$$\frac{1}{x-1} - \frac{1}{x} \quad \substack{   \xrightarrow{\quad\text{finding a common denominator!}\quad }\\  \xleftarrow[\quad\text{blowing it up}\quad ]{\Huge =} } \quad  \frac{1}{x^2-x} $$

## Beauty and Utility

This idea of BLOWING FRACTIONS UP is inherently cool and interesting, but it's also got some utility. If we want to understand rational functions better, spitting them up into a bunch of seperate fractions can give us insights. It's like how seeing a polynomial in factored form and in multiplied-out form both teach us different things about the polynomial. The analogy for rational functions is that we can see them in either in their "divided" form (two polynomials, divided), or we can see them in their as-undivided-as-possible form.

For example, here's a rational function, written as a single fraction:

$$f(x) = \frac{x^2{\left(x + 5\right)}^{2} {\left(x - 1\right)} }{{\left(x + 1\right)} {\left(x - 3\right)}^{2}}$$
And if we blow it up into multiple fractions (not showing the work)(there's also some polynomial long division going on here)^[Full disclosure, I wrote this in factored/divided form myself, but because I'm lazy, I had Sage do the division/blowing up], it's equal to:
$$f(x) =  x^{2} + 14 \, x  + 82 - \frac{2}{(x + 1)} + \frac{336}{(x - 3)} + \frac{288}{{\left(x - 3\right)}^{2}}$$
Notice what's going on!!! It makes it really easy to see that the end behavior is like $+x^2$, because that's the term that dominates as $x$ gets really big. It makes it easy to see those vertical asymptotes, which here get split up into fractional terms. The vertical asymptote at $x=-1$ of multiplicity $1$ turns into this single fraction with $(x+1)^1$ on the denominator; the vertical asymptote at $x=+3$ of multiplicity $2$ turns into *two* fractions, one with $(x-3)^1$ in the denominator and one with $(x-3)^2$ in the denominator. It's like this whole thing turns into an ordinary quadratic parabola... but with these extra terms added on that create the vertical asymptotes!!! And whenever $x$ is far away from those vertical asymptotes, those fractions turn into zero. It's only when $x$ is close to $-1$ or $+3$ that those fractions BLOW UP and overwhelm/dominate all the other terms. When $x$ is far away from $-1$ or $+3$, those fractions disappear.

Another way of thinking about it is that it's like we're now having polynomials with *negative powers*. Like, this is:
$$f(x) =  x^{2} + 14 \, x^1  + 82x^0 - 2(x+1)^{-1}+ 336(x-3)^{-1} + 288(x-3)^{-2}$$
(This sort of thinking comes up a lot in **complex analysis** ("calculus with imaginary numbers"), where we spend a lot of time thinking about rational functions of complex numbers.)

## Trinity

So. To blow up fractions, we need to figure out how to run the adding-fractions algorithm in reverse. We need to un-find a common denominator to find the two denominators, and then un-cross-multiply to figure out the two numerators. Both of these steps might require some nasty algebra! Un-finding a common denominator might involve some tricky factoring; un-cross-multiplying might involve a bunch of algebra-bashing and maybe even systems of equations. But! The big idea is that we're just trying to do what we do when we add fractions *but in reverse*.

If you know **linear algebra**, that can make parts of this process easier, or at least more systematic. The short version is that, while it's easy to describe this idea of "just find a common denominator and then figure out what the numerators need to be," actually doing the algebra for that can get very nasty very fast. Sometimes we end up with big systems of linear equations. So it's helpful to have the full machinery of linear algebra (which is about solving huge systems of linear equations; a zillion equations and a zillion unknowns). But you don't really *need* to know it, specifically. 

Note the asymmetry of this process, which is something we see so often: it's easy to add two fractions together; un-adding one fraction into two is harder. That's kind of like how FOIL'ing binomials is easy, but factoring  FOIL'd binomials is tough. Math, like many things, has a *directionality*. It's hard to hike up to the top of Mt. Shasta---but once you're on top, skiing down is (comparatively) easy! It's hard to build things---but it's easy to burn them down. 

People call this procedure **partial fraction decomposition**, but that's such a bland and sterile and clinical and soulless name for an operation that's so vivid! Don't you want math to be *fun*? Don't you want math to be *exciting*? Don't you want math to have the drama of the Manhattan Project and not the doldrums of the DMV?!?



## Problems

BLOW UP the following fractions into two (or more!) fractions!^[For purposes of honesty I should acknowledge that I stole all these problems from a textbook, but, it's a textbook I otherwise despise, so, despite the mild hypocrisy in doing so, I'm not going to cite it by name.]

<div style="column-width: 14em;  column-gap: 2em;  column-rule: 1px solid #ccc;">
<ol class='problems'>
<li> $\displaystyle \frac{ 3}{x^2-3x }$
<li> $\displaystyle \frac{1 }{2x^2+x }$ <!-- \displaystyle -\frac{2}{2 \, x + 1} + \frac{1}{x} -->
<li> $\displaystyle \frac{3 }{x^2+x-2 }$
<li> $\displaystyle \frac{5 }{x^2+x-6 }$
<li> $\displaystyle \frac{ x+1}{x^2-x-6 }$
<li> $\displaystyle \frac{1 }{x^2-1 }$
<li> $\displaystyle \frac{1 }{4x^2-9 }$
<li> $\displaystyle \frac{x^2+12x+12 }{x^3-4x }$
<li> $\displaystyle \frac{ x+2}{x\left(x^2-9\right) }$
<li> $\displaystyle \frac{ 3x}{ (x-3)^3 }$
<li> $\displaystyle \frac{2x-3 }{(x-1)^2 }$
<li> $\displaystyle \frac{ 4x^2+2x-1}{x^2(x+1) }$
<li> $\displaystyle \frac{ 6x^2+1}{x^2(x-1)^2 }$
<li> $\displaystyle \frac{x^2+2x+3 }{x^3+x }$
<li> $\displaystyle \frac{2x }{x^3-1 }$
<li> $\displaystyle \frac{x }{x^3-x^2-2x+1 }$
<li> $\displaystyle \frac{ x+6}{x^3-3x^2-4x+12 }$
<li> $\displaystyle \frac{2x^2+x+8 }{\left(x^2+4\right)^2 }$
<li> $\displaystyle \frac{x^2 }{x^4-2x^2-8 }$
<li> $\displaystyle \frac{x }{16x^4-1 }$
<li> $\displaystyle \frac{3 }{x^4+x }$
<li> $\displaystyle \frac{x^2+5 }{(x+1)\left(x^2-2x+3\right) }$
<li> $\displaystyle \frac{ x^2-4x+7}{(x+1)\left(x^2-2x+3\right) }$
<li> $\displaystyle \frac{8x-12 }{x^2\left(x^2+2\right)^2 }$
<li> $\displaystyle \frac{x+1 }{x^3\left(x^2+1\right)^2 }$
<li> $\displaystyle \frac{x^2-x }{x^2+x+1 }$
<li> $\displaystyle \frac{ x^2-4x}{x^2+x+6 }$
<li> $\displaystyle \frac{2x^3-x^2+x+5 }{x^2+3x+2 }$
<li> $\displaystyle \frac{x^3+2x^2-x+1 }{x^2+3x-4 }$
<li> $\displaystyle \frac{x^4 }{(x-1)^3 }$
<li> $\displaystyle \frac{16x^4 }{(2x-1)^3 }$
<li> $\displaystyle \frac{x^4+2x^3+4x^2+8x+2 }{x^3+2x^2+x }$
<li> $\displaystyle \frac{2x^4+8x^3+7x^2-7x-12 }{x^3+4x^2+4x }$
<li> $\displaystyle \frac{1 }{a^2-x^2 }$ <!-- \displaystyle -\frac{1}{2 \, {\left(a + x\right)} x} + \frac{1}{2 \, {\left(a - x\right)} x} -->
<li> $\displaystyle \frac{1 }{x(x+a) }$
<li> $\displaystyle \frac{1 }{x(a-x) }$
<li> $\displaystyle \frac{-1}{x^2+x-ax-a }$
<li>$\displaystyle \frac{5x-1}{x^2-x-2}$
</ol>
</div>

<ol class='problems'>
<li> Here's a rational function:
$$f(x) = \frac{2x^{2} + 5x + 2}{ x^3+2x^2+x}$$
Graph it, using our tried-and-true knowledge of how to graph rational functions. Then, split it up into two fractions:
$$f(x) = \frac{2x^{2} + 5x + 2}{ x^3+2x^2+x} \quad=\quad \frac{???}{???} \quad+\quad \frac{???}{???}$$
In three seperate colors but on the same axes, graph the entire function, and its two constituent fractions!!! (Like, graph both of the two fractions as functions in their own right.) Can you see how these two fractions add to create the entire rational function? Observations? Thoughts???
</li>
<li> Here's a function:
$$f(x) =  x^{3} - x^{2} - 10x + 26 - \frac{153}{4 \, {\left(x + 1\right)}} + \frac{5}{4 \, {\left(x - 1\right)}} + \frac{27}{2 \, {\left(x + 1\right)}^{2}}$$
Graph it!!! (No technology... *obviously*.)
</ol>

<!--


## other example

Actually, let's do another example relatign the the beauty and utility


and only 1 example


OK, here's a fraction:
$$\displaystyle \frac{2x^{2} + 5 \, x + 2}{ x^3+2x^2+x}$$
If we think of this as a rational function, can we graph it?
$$f(x) = \displaystyle \frac{2x^{2} + 5 \, x + 2}{ x^3+2x^2+x}$$
We know:
<ul>
<li> **Roots:** Where does this have roots? We need to figure out where the numerator is zero, i.e., where:
$$0 = 2x^{2} + 5 \, x + 2$$
This factors as:
$$0 = (2x+1)(x+2)$$
So for the roots, we get:
$$x = -\frac{1}{2} \quad \text{ (multiplicity $1$)}$$
$$x = -2 \quad\text{ (multiplicity $1$)}$$
</li>
<li> **Vertical asymptotes:** Where does this have vertical asymptotes? We need to figure out where the denominator is zero, i.e., where:
$$0 = x^3+2x^2+x$$
Not showing the work, this factors as:
$$0 = x(x+1)^2$$
So for the vertical asymptotes, we get
$$x = 0 \quad \text{ (multiplicity $1$)}$$
$$x=-1 \quad \text{ (multiplicity $2$)}$$
</li>
<li> **End asymptote:** Where's the end asymptote? We'll look at the ratio of the leading terms:
$$y = \frac{2x^2}{x^3} = \frac{2}{x} \sim \frac{1}{x} \sim 0$$
So it's looking like $2/x$ on the sides, which looks basically like $1/x$, which goes to zero. </li>
<li> **$y$-intercept:** We'll plug in $0$ for $x$, or, equivalently, look at the ration of the constants... but, yeah, we get like $1/0$, because there's a vertical asymptote at the $y$-axis! So it doesn't have a $y$-intercept.
<li> **Holes:** Nope!</li>
</ul>
So it looks like:

PICTURE

OK. So that's ONE way of drawing and thinking about this function. 





Meanwhile! Can we break this rational function up into two (or more) seperate fractions?? Then can we graph each of the fractions seperately, and see how they combine to produce the entire rational function?

$$f(x) = \frac{2x^{2} + 5 \, x + 2}{ x^3+2x^2+x} \quad\overset{???}{=}\quad \frac{???}{???} + \frac{???}{???}$$
We already factored the bottom to find the roots, so the function is really:
$$f(x) = \frac{2x^{2} + 5 \, x + 2}{ x(x+1)^2}$$
So maybe 


$$\frac{2x^{2} + 5 \, x + 2}{ x^3+2x^2+x} \quad\overset{???}{=}\quad \frac{???}{x} + \frac{???}{(x+1)^2}$$



$$f(x) = \frac{1}{x} + \frac{2}{(x+1)^2}$$




Meanwhile, can we break it up into two 

-->