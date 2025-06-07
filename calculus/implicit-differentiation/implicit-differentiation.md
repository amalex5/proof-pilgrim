---
title: (implicit) differentiation
usemathjax: true
layout: post
---


## Example #1

Imagine we have the equation $y=x^2$ and we want to find $dy/dx$ (that is, the derivative of $y$ with respect to $x$). How do we do this? Easy. We just take the derivative of both sides:
\begin{align*}
y &=x^2\\
\frac{d}{dx}\left[ y\right] &= \frac{d}{dx}\left[ x^2 \right] \\ \\
\frac{dy}{dx} &= 2x
\end{align*}
Not very interesting. 

## Example #2

What if we have a more complicated equation, like $y^3 + x^2 = 5$? How do we find $dy/dx$? Presumably we do some algebra first to solve for $y$, and then take the derivative. To solve for $y$, we get:
\begin{align*}
y^3 + x^2 &= 5 \\ \\
y^3 &= 5-x^2 \\ \\
y &= \sqrt[3]{5-x^2}
\end{align*}
Then, differentiating, we get:
\begin{align*}
\frac{d}{dx}\left[ y \right] &= \frac{d}{dx}\left[ \sqrt[3]{5-x^2} \right] \\ \\
\frac{dy}{dx} &= \frac{d}{dx}\left[ (5-x^2)^{1/3} \right] \\ \\
\frac{dy}{dx} &=\frac{1}{3}(5-x^2)^{-2/3}\cdot\frac{d}{dx}\left[5-x^2 \right] \\ \\
\frac{dy}{dx} &=\frac{1}{3}(5-x^2)^{-2/3}\cdot(-2x)
\end{align*}
Again, not particularly interesting. 

## Example #3

But what if we want to find $dy/dx$ of the following equation:
$$y^5 + y = x^2$$

We'll just solve for $y$ and then take the derivative... except... we can't solve this equation for $y$. This is a perfectly valid equation, and it *does* represent some function or some curve in a two-dimensional plane---but we can't isolate $y$. We can't get a single $y$ alone, on one side^[If you don't believe me, try solving for $y$. You should ask yourself: what does it mean for an equation to be solvable? can we solve every equation? why, or why not? under what conditions are equations solvable? is it possible to make equations solvable by creating new numbers? ("creating new numbers"?? does that make any sense? what am I talking about? what about $x^2+1=0$? for what values of $x$ is that true?)]. 

Can we still take its derivative? Can we still come up with an equation for its rate of change? Yes! The idea is this: we can still take the derivative with respect to $x$ of both sides. $y$ here is *some function* of $x$---it somehow changes as $x$ changes---it's just that we don't know exactly *how* it changes. We don't know exactly what its relationship to $x$ is. 

So just to remind ourselves that $y$ is a function of $x$, and not a constant, we can write the $y$'s as "$y(x)$" and not "$y$". This doesn't change anything; it's just a clearer way of writing it.^[Sometimes you might see mathematicians abbreviate all of this simply by writing, "$y=y(x)$."]. It's exactly how we usually write functions as $f(x) = \text{blah blah}$, and not $f = \text{blah blah}$. It's just that here we're using the letter $y$ instead of $f$.
\begin{align*}
y^5 + y &= x^2\\ \\
\Big(\,y(x) \,\Big)^5 + y(x) &= x^2
\end{align*}
And then if we take the derivative of both sides with respect to $x$ (which means "considering $x$ as the variable"):
$$\frac{d}{dx}\Big[\, \left(y(x)\right)^5 + y(x) \,\Big] = \frac{d}{dx}\left[\, x^2 \,\right] $$
The right side is easy---that's just $2x$:
$$\frac{d}{dx}\Big[\, \left(y(x)\right)^5 + y(x) \,\Big]= 2x $$
And we know we can split the left side up:
$$\frac{d}{dx}\Big[ \, \big(\, y(x)\,\big)^5 \,\Big]  +\frac{d}{dx}\Big[\,  y(x) \,\Big] = 2x $$
To work out the first thing on the left side, we can use the chain rule. We have two functions: on the inside, we have $y(x)$, and on the outside, we have $(\text{stuff})^5$. So by the chain rule, the derivative will be:
$$5\Big(\,y(x)\,\Big)^4\cdot y'(x)  \,\,+\,\, \frac{d}{dx}\Big[  y(x) \Big] = 2x $$
Of course, we don't know what $y'(x)$ is, so we just have to leave it like that... except that's actually a GOOD thing, because $y'(x)$ is what we want to find, ultimately!!! It's just different notation for $dy/dx$. So eventually, we'll be able to use algebra to solve for it! But we need to finish taking the derivative first. The derivative of $y(x)$, clearly, is just $y'(x)$ (whatever that is):
$$5\Big(\,y(x)\,\Big)^4\cdot y'(x)  \,\,+\,\, y'(x) = 2x $$
So now we have an equation that has the derivative inside of it! We just need to solve for it. First we'll factor out the $y'(x)$:
$$y'(x)\cdot\Big(\,5\big(\,y(x)\,\big)^4+1\,\Big)= 2x $$
and divide:
$$y'(x)= \frac{2x}{\,\,5\big(\,y(x)\,\big)^4+1\,\,} $$
and there we go! We've found the derivative! If you want to write it in the other notation (and if you don't need the "of $x$" to remind you that $y$ is a function), you could write it like this:
$$\frac{dy}{dx} = \frac{2x}{\,\, 5y^4 + 1 \,\,}$$

So there we go! We've found the derivative! Of course, the derivative is in terms of $y$---in terms of the original function---and since we still don't know explicitly what $y$ is, we can't go much further. But, hey! It's progress!

## Example \#2, again

We could have done this with our previous equation, too. Rather than rewriting $y^3 + x^2 = 5$ as $y = \sqrt[3]{5-x^2}$, we could have kept it as:
$$y^3 + x^2 = 5$$
Or perhaps we could remind ourselves that $y$ is in fact $y(x)$:
$$(y(x))^3 + x^2 = 5$$
And then we could have differentiated both sides, and *then* solved for $y$:
\begin{align*}
\frac{d}{dx}\Big[\, \big(\,y(x)\,\big)^3 + x^2 \,\Big] &= \frac{d}{dx}\Big[\, 5 \,\Big] \\ \\
3\Big(y(x)\Big)^2 \cdot y'(x) + 2x &= 0 \\ \\
&\text{so if we solve for $y'(x)$:} \\
3\Big(y(x)\Big)^2\cdot y'(x) &= -2x \\
y'(x) &= \frac{-2x}{3(y(x))^2} \\ \\
&\text{written differently:} \\ \\
\frac{dy}{dx} &= \frac{-2x}{3y^2}
\end{align*}
Yay! One thing, though. This might look a little bit different. When we found the derivative the first way (by doing algebra and then calculus), we found that the derivative was:
$$\frac{dy}{dx} =\frac{1}{3}(5-x^2)^{-2/3}\cdot(-2x)$$
Which doesn't look the same as:
$$\frac{dy}{dx} = \frac{-2x}{3y^2}$$
Except they actually are the same! Because---remember that we found, by doing algebra, that $y= \sqrt[3]{5-x^2}$. So if we plug that into our second version of the derivative, we get...
$$\begin{align*}
\frac{-2x}{3y^2} &= \frac{-2x}{\,\, 3\,\left(\sqrt[3]{5-x^2}\right)^2 \,\,} \\ \\
&= \frac{-2x}{\,\, 3\left( \left(5-x^2\right)^{1/3} \right)^2 \,\,} \\ \\
&= \frac{-2x}{\,\, 3\left( 5-x^2 \right)^{2/3} \,\,} \\ \\
&= \frac{1}{3}\cdot \frac{1}{\,\, \left(5-x^2\right)^{2/3}\,\,}\cdot (-2x) \\ \\
&= \frac{1}{3}\cdot (5-x^2)^{-2/3}\cdot (-2x)
\end{align*}$$
Which is exactly what we found by taking the derivative the first way.

## So What?

In summary, then: if we have an equation and we want to find the derivative of one of the variables with respect to the other variable, we can either:

* do algebra to solve for the desired variable, then take its derivative, or

* take the derivative of both sides, and then solve for the desired derivative.

We can either do algebra first and then calculus, or we can do calculus first and then algebra.

In one sense, this is just a generalization of what we've been doing all along. Up until now, we've only taken the derivative of things that have been solved for $y$ (or $f$ or whatever). We've only taken the derivative of equations in which one side of the equation was a single, unique variable. But now, we can take the derivative of equations in which both sides can be anything. This is just the more general case (both sides can be anything) of a specific case (one side must be very clean). 

Incidentally, the name of this procedure (as you may have guessed from the title) is **implicit differentiation**. The idea is that we can have an equation that **explicitly** relates two variables (i.e., one variable is completely isolated):
$$y = \sqrt[3]{5-x^2}$$
or you can have an equation that, while it does relate two variables, does not explicitly show the relationship (it relates them **implicitly**):
$$y^3 + x^2 = 5$$
If you were a calculator plotting points to make a graph, it'd be easy to use the first equation to draw your graph. Just plug in a whole bunch of different $x$ values, and you get out a whole bunch of corresponding $y$-values! But you can't really do that with the second equation---you'd have to, like, pick random points  in the plane (random $(x,y)$ pairs), plug them into the equation, and see whether they work (whether $y^3 + x^2$ does, in fact, equal $5$). 


## Problems

Express $\displaystyle \frac{dy}{dx}$ (or $y'$ or $y'(x)$, if you prefer one of those notations) in terms of $x$ and $y$:

<div style="column-width: 14em;  column-gap: 2em;  column-rule: 1px solid #ccc;">
<ol class='problems'>
<li> $x^2 + y^2 = 4$ </li>
<li> $x^3 + y^3 - 3xy = 0$ </li>
<li> $x^2y + xy^2 = 6$ </li>
<li> $2xy + y^2 = x+y$ </li>
<li> $4x^2 + 9y^2 = 36$ </li>
<li> $x^4 + 4x^3y + y^4 = 1$ </li>
<li> $x^3-xy+y^3=1$ </li>
<li> $\sqrt{x} + \sqrt{y} = 4$ </li>
<li> $x^2 - x^2y + xy^2 + y^2 = 1$ </li>
<li> $x^3-xy+y^3=1$ </li>
<li> $(x-y)^2 - y = 0$ </li>
<li> $(y+3x)^2 - 4x = 0$ </li>
<li> $x^2(x-y)^2 = x^2 - y^2$ </li>
<li> $(3xy+7)^2 = 6y$ </li>
<li> $\sin(x+y) = xy$ </li>
<li> $\displaystyle x^2 = \frac{x-y}{x+y}$ </li>
<li> $x = \sin(y)$ </li>
<li> $x + \sin(y) = xy$ </li>
<li> $y\sin(1/y) = 1-xy$ </li>
<li> $y^2\cos(1/y) = 2x + 2y$ </li>
</ol>
</div>