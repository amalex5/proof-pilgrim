---
title: taylor series scratchpad
usemathjax: true
layout: post
---






growing polynomials
approximating functions
generalizing ideas of straightness
safety


## taylor series as approximations

If we have a full, infinitely-long Taylor series, then that's just another way of writing the function. But what if we have only *part* of a Taylor series? Like, what if we have only the first few terms? How does that relate to the original function? (Given that we're finite beings---we can never *actually* write out an infinite Taylor series---every Taylor series is just a finite truncation of the actual infinite one!)

We can think of a Taylor series with a finite number of terms as being an *approximation* of the original function. The more terms it has, the better the approximation becomes. We're approximating the function increasingly better using increasingly complicated polynomials.

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




## taylor series as generalizing this idea of tangent line approximations

The core assertion/paradox/weirdness/etc. behind calculus is:
$$\begin{array}{l}
\text{if we zoom in {\color{blue}infinitely far}, everything becomes {\color{blue}straight}}
\end{array}$$
Or, put differently:
$$\begin{array}{l}
\text{if we zoom in {\color{blue}far enough}, everything becomes {\color{blue}straight}}
\end{array}$$
Or:
$$\begin{array}{l}
\text{if we zoom in {\color{blue}far enough}, everything becomes {\color{blue}a first-degree polynomial}}
\end{array}$$
Taylor's theorem generalizes this paradox/assertion/conclusion/observation. It generalizes it from just about lines to about arbitrary-degree polynomials. Taylor's theorem says:
$$\begin{array}{l}
\text{\small if we zoom in far enough, everything becomes a zeroth-degree polynomial} \\
\text{\small if we zoom in far enough, everything becomes a first-degree polynomial} \\
\text{\small if we zoom in far enough, everything becomes a quadratic polynomial} \\
\text{\small if we zoom in far enough, everything becomes a cubic polynomial} \\
\text{\small if we zoom in far enough, everything becomes a quartic polynomial} \\
\text{\small if we zoom in far enough, everything becomes a fifth-degree polynomial} \\
\text{\small if we zoom in far enough, everything becomes a sixth-degree polynomial} \\
\hfill \vdots \hfill
\end{array}$$
Or, put more simply:
$$
\left.
\begin{array}{r}
\text{\small if we zoom in far enough, everything becomes a zeroth-degree polynomial} \\
\text{\small if we zoom in far enough, everything becomes a first-degree polynomial} \\
\text{\small if we zoom in far enough, everything becomes a quadratic polynomial} \\
\text{\small if we zoom in far enough, everything becomes a cubic polynomial} \\
\text{\small if we zoom in far enough, everything becomes a quartic polynomial} \\
\text{\small if we zoom in far enough, everything becomes a fifth-degree polynomial} \\
\text{\small if we zoom in far enough, everything becomes a sixth-degree polynomial} \\
\hfill \vdots \hfill
\end{array}
\right\} \substack{\text{\large  if we zoom in far enough,}\\\text{\large  everything becomes an}\\\text{\large $n$th-degree polynomial}\\\text{\large  for any/all $n$}}
$$
I.e., just:
$$\begin{array}{l}
\text{if we zoom in {\color{blue}far enough}, everything becomes {\color{blue}an $n$th-degree polynomial}} \\
\hfill \text{(for any/all $n$)} \hfill
\end{array}$$





I've built up lots of anticipation for Taylor series---too much, I worry, since I don't want to make it seem anticlimactic---but we're finally here. Let's go.

<div style='height:5em'></div>



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

