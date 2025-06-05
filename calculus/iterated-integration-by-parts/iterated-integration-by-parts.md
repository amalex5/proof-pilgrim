---
title: Integrating By Parts By Parts By Parts By Parts By Parts By Parts By Parts By Parts By Parts
usemathjax: true
layout: post
---

Here's an antiderivative:
$$\int\! x^5 \sin(x)\,dx$$
Looks hard! We probably can't immediately see how to antidifferentiate it... which means that we should pull out our all-purpose, use-when-all-else-fails integration tool: integration by parts! Integration by parts, after all, is the *machine gun* of integration techniques---sometimes it's overkill, but even when it is, you know it'll get the job done!

I never remember the integration-by-parts formula, so here it is, for our reference:

$$\int\! f'(x)g(x)\, dx \quad=\quad f(x)\cdot g(x) \,-\, \int\! f(x)g'(x) \,dx$$

So, if we integrate this by parts, we'll have:

\begin{align*}
    \int\! x^5 \sin(x)\,dx &= \int\! \underbrace{x^5}_{g(x)} \underbrace{\sin(x)}_{f'(x)}\,dx \\
    &=  f(x)\cdot g(x) \,-\, \int\! f(x)g'(x) \,dx \\
    &=  (-\cos x)x^5 \,-\, \int\! (-\cos x)\!\cdot\! 5x^4 \,dx \\
    &=  -x^5\cos x \,-\, \int\! (-\cos x)\!\cdot\! 5x^4 \,dx
\end{align*}

Okay, well, this is nice, but we still have another integral we need to work out. This looks like something ELSE to work out by parts. So let's do it again---let's integrate by parts again!!! We have:

\begin{align*}
    &=  -x^5\cos x \,-\, \int\! \underbrace{(-\cos x)}_{f'(x)}\!\cdot\! \underbrace{5x^4}_{g(x)} \,dx \\
    &=  -x^5\cos x - \left( f(x) g(x) \,-\, \int\! f(x)g'(x) \,dx \right)\\
    &=  -x^5\cos x - (-\sin x)5x^4 + \int\! (-\sin x)20x^3 \,dx \\
    &=  -x^5\cos x + 5x^4\sin x+ \int\! (-\sin x)20x^3 \,dx
    \end{align*}

Okay, we seem to be making some progress---the exponents on the $x$'s are trending in a hopeful direction---but we're not done! There's ANOTHER integral to work out by parts. Here we go:

\begin{align*}
    &=  -x^5\cos x + 5x^4\sin x + \int\! \underbrace{(-\sin x)}_{f'(x)} \cdot \underbrace{20x^3}_{g(x)} \,dx \\
    &=  -x^5\cos x + 5x^4\sin x + \left( f(x) g(x) \,-\, \int\! f(x)g'(x) \,dx \right) \\
    &=  -x^5\cos x + 5x^4\sin x + \left( \cos(x)\cdot 20x^3 \,-\, \int\! \cos(x)\!\cdot\!60x^2 \,dx \right) \\
    &=  -x^5\cos x + 5x^4\sin x + 20x^3\cos(x)- \int\! \cos(x)\!\cdot\!60x^2 \,dx 
    \end{align*}

AND AGAIN!

\begin{align*}
    &=  -x^5\cos x + 5x^4\sin x + 20x^3\cos(x)- \int\! \underbrace{\cos(x)}_{f'(x)}\!\cdot\!\underbrace{60x^2}_{g(x)} \,dx \\
    &=  -x^5\cos x + 5x^4\sin x + 20x^3\cos(x)- \left( f(x) g(x) \,-\, \int\! f(x)g'(x) \,dx \right)\\
    &=  -x^5\cos x + 5x^4\sin x + 20x^3\cos(x)- \left( \sin(x)\!\cdot\! 60x^2 \,-\, \int\! \sin(x)\!\cdot\!120x \,dx \right)\\
    &=  -x^5\cos x + 5x^4\sin x + 20x^3\cos(x)- 60x^2  \sin(x) + \int\! \sin(x)\!\cdot\!120x \,dx
    \end{align*}

AGAIN!!!

\begin{align*}
    &=  -x^5\cos x + 5x^4\sin x + 20x^3\cos(x)- 60x^2  \sin(x) + \int\! \underbrace{\sin(x)}_{f'(x)}\!\cdot\!\underbrace{120x}_{g(x)} \,dx \\
    &=  -x^5\cos x + 5x^4\sin x + 20x^3\cos(x)- 60x^2  \sin(x) + \left( f(x) g(x) \,-\, \int\! f(x)g'(x) \,dx \right) \\
    &=  -x^5\cos x + 5x^4\sin x + 20x^3\cos(x)- 60x^2  \sin(x) + \left( (-\cos x) 120x \,-\, \int\! (-\cos x)\cdot 120 \,dx \right) \\
    &=  -x^5\cos x + 5x^4\sin x + 20x^3\cos(x)- 60x^2  \sin(x) -120x \cos x - \int\! -120\cos x \,dx
 \end{align*}

 Okay, wait, this is now an integral we can do without integrating by parts! I mean, we *could* integrate it by parts---we *always* can integrate by parts---but we can just do this by hand, as it were, from knowing how to antidifferentiate cosine. We have:

 \begin{align*}
    &=  -x^5\cos x + 5x^4\sin x + 20x^3\cos(x)- 60x^2  \sin(x) -120x \cos x -\left(-120\sin x \right) \\
    &=  -x^5\cos x + 5x^4\sin x + 20x^3\cos(x)- 60x^2  \sin(x) -120x \cos x + 120\sin x
\end{align*}

We're done! We're done! We're finally done!!! What a huge pain that was! But it looks like we have, as our final answer:

$$\boxed{ \int\! x^5 \sin(x)\,dx \,=\, -x^5\cos x + 5x^4\sin x + 20x^3\cos(x)- 60x^2  \sin(x) -120x \cos x + 120\sin x }$$

I guess we could check it by differentiating. But that seems like a pain, so let's just assume that we did this all correctly.

Was there an easier way to do this? All that algebra was clunky and gross. And fundamentally, what we were doing was repetitive and simple. We were just pairing up derivatives of $x^5$ with antiderivatives of $\sin x$. So we just need to find the precise pattern of how they pair up. Oh, and we need to pay attention to the sign---there's that negative in the integration-by-parts formula, so the sign keeps flipping.\footnote{OK, the sign also changes as a result of the changing signs in the anti/derivatives of trig functions, so maybe this isn't the greatest example. Whoops.} So, in principle, we could just make a table/chart, listing all three of these things, and use that to build each term!

I'm not going to motivate this particularly extensively, because (a) I don't have that much time to write this, and (b) I don't think it's *that* hard to figure out, but anyway, we can list all the derivatives of $g(x)$ and all the antiderivatives of $f'(x)$:

<table style='text-align:center;'>
    <thead>
        <td>$g$ and its derivatives</td> <td>$f'$ and its antiderivatives</td>
    </thead>
    <tr>
        <td>$x^5$</td> <td>$\sin(x)$</td>
    </tr>
      <tr>
        <td>$5x^4$ </td> <td> $-\cos(x)$ </td>
    </tr>
  <tr>
        <td>$20x^3$ </td> <td> $-\sin(x)$</td>
    </tr>
  <tr>
        <td>$60x^2$ </td> <td> $\cos(x)$ </td>
    </tr>
  <tr>
        <td>$120x$ </td> <td> $\sin(x)$ </td>
    </tr>
  <tr>
        <td>$120$ </td> <td> $-\cos(x)$ </td>
    </tr>
  <tr>
        <td>$0$ </td> <td> $-\sin(x)$</td>
    </tr>
  <tr>
        <td>$0$ </td> <td> $-\cos(x)$ </td>
    </tr>
  <tr>
        <td>$\vdots$ </td> <td> $\vdots$</td>
    </tr>
      <tr>
        <td>etc. </td> <td> etc.</td>
    </tr>
</table>

There are some alternating signs, too, from the negative in the integration by parts formula:

<table style='text-align:center;'>
<thead><td>sign </td> <td> $g$ and its derivatives </td> <td> $f'$ and its antiderivatives</td> </thead> <tr>
<td>$+$  </td> <td> $x^5$ </td> <td> $\sin(x)$</td> </tr> <tr>
<td>$-$ </td> <td> $5x^4$ </td> <td> $-\cos(x)$ </td> </tr> <tr>
<td>$+$ </td> <td> $20x^3$ </td> <td> $-\sin(x)$</td> </tr> <tr>
<td>$-$ </td> <td> $60x^2$ </td> <td> $\cos(x)$</td> </tr> <tr>
<td>$+$ </td> <td> $120x$ </td> <td> $\sin(x)$</td> </tr> <tr>
<td>$-$ </td> <td> $120$ </td> <td> $-\cos(x)$ </td> </tr> <tr>
<td>$+$ </td> <td> $0$ </td> <td> $-\sin(x)$  </td> </tr> <tr>
<td>$-$ </td> <td> $0$ </td> <td> $-\cos(x)$ </td> </tr> <tr>
<td>$+$ </td> <td> $0$ </td> <td> \text{etc.}</td> </tr> <tr>
</td> <td> \vdots </td> <td> \vdots </td> </tr>
</table>

How do we combine these all to get our result? Well, the first term of integration by parts is $f(x)g(x)$, so we need to take $x^5$, with the first antiderivative of $\sin x$, and multiply them together. Oh, and there's a $+$ sign in front. (Well, not exactly, because the antiderivative of $\sin x$ has a negative... but there's not an additional negative.) So, I'll label that stuff in blue, and write the corresponding term:

<table style='text-align:center;'>
<thead><td> sign </td> <td> $g$ and its derivatives </td> <td> $f'$ and its antiderivatives </td> <td> corresponding term </td> </thead>
<tr> <td>$\color{blue} +$ </td> <td> $\color{blue}  x^5$ </td> <td> $\sin(x)$ </td> <td> (n/a) </td> </tr>
<tr> <td>$-$ </td> <td> $5x^4$ </td> <td> $\color{blue} -\cos(x)$ </td> <td> $+x^5\cdot(-\cos x)$  </td> </tr>
<tr> <td>$+$ </td> <td> $20x^3$ </td> <td> $-\sin(x)$ </td> <td> </td> </tr>
<tr> <td>$-$ </td> <td> $60x^2$ </td> <td> $\cos(x)$ </td> <td> </td> </tr>
<tr> <td>$+$ </td> <td> $120x$ </td> <td> $\sin(x)$ </td> <td> </td> </tr>
<tr> <td>$-$ </td> <td> $120$ </td> <td> $-\cos(x)$ </td> <td>   </td> </tr>
<tr> <td>$+$ </td> <td> $0$ </td> <td> $-\sin(x)$ </td> <td>    </td> </tr>
<tr> <td>$-$ </td> <td> $0$ </td> <td> $-\cos(x)$ </td> <td>  </td> </tr>
<tr> <td> $\vdots$ </td> <td> $\vdots$ </td> <td> $\vdots$ </td> </tr>
</table>

Great! Note that this is a little weird: we're not multiplying together things from the exact same row. You could set this up differently if you want. This is just a procedure---it's just a way of making repeated integration by parts easier.

For the next term, we'll multiply together the next set of things. I'll label them in red:

<table style='text-align:center;'>
<thead><td> sign </td> <td> $g$ and its derivatives </td> <td> $f'$ and its antiderivatives </td> <td> corresponding term </td> </thead>
<tr> <td>  $\color{blue} +$ </td> <td>  $\color{blue} x^5$ </td> <td> $\sin(x)$ </td> <td> (n/a) </td></tr>
<tr> <td> $\color{red}-$ </td> <td> $\color{red} 5x^4$ </td> <td> $\color{blue} -\cos(x)$ </td> <td> $+x^5(-\cos x)$  </td> </tr>
<tr> <td> $+$ </td> <td> $20x^3$ </td> <td> $\color{red}-\sin(x)$ </td> <td> $-5x^4\left(-\sin x\right)$ </td></tr>
<tr> <td> $-$ </td> <td> $60x^2$ </td> <td> $\cos(x)$ </td> <td>  </td> </tr>
<tr> <td> $+$ </td> <td> $120x$ </td> <td> $\sin(x)$ </td> <td> </td> </tr>
<tr> <td> $-$ </td> <td> $120$ </td> <td> $-\cos(x)$ </td> <td>   </td> </tr>
<tr> <td> $+$ </td> <td> 0 </td> <td> $-\sin(x)$ </td> <td>    </td> </tr>
<tr> <td> $-$ </td> <td> 0 </td> <td> $-\cos(x)$ </td> <td>  </td> </tr>
<tr> <td> </td> <td> $\vdots$ </td> <td> $\vdots$ </td> </tr>
</table>

Let's keep going! I'll label the next set in green:

<table style='text-align:center;'>
<thead><td>sign </td> <td> $g$ and its derivatives </td> <td> $f'$ and its antiderivatives </td> <td> corresponding term </td> </thead>
<tr> <td> $\color{blue} +$</td> <td>  $\color{blue} x^5$ </td> <td> $\sin(x)$ </td> <td> (n/a) </td></tr>
<tr> <td>$\color{red} -$ </td> <td> $\color{red} 5x^4$ </td> <td> $\color{blue} -\cos(x)$ </td> <td> $\color{blue} +x^5\cdot(-\cos x)$  </td> </tr>
<tr> <td> $\color{green} +$ </td> <td> $\color{green} 20x^3$ </td> <td> $\color{red} -\sin(x)$ </td> <td> $\color{red} -5x^4\left(-\sin x\right)$ </td> </tr>
<tr> <td>$-$ </td> <td> $60x^2$ </td> <td>$\color{green} \cos(x)$ </td> <td> $\color{green} +20x^3\cos(x)$ </td> </tr>
<tr> <td>$+$ </td> <td> $120x$ </td> <td> $\sin(x)$ </td> <td> </td> </tr>
<tr> <td>$-$ </td> <td> $120$ </td> <td> $-\cos(x)$ </td> <td>   </td> </tr>
<tr> <td>$+$ </td> <td> 0 </td> <td> $-\sin(x)$ </td> <td>    </td> </tr>
<tr> <td>$-$ </td> <td> 0 </td> <td> $-\cos(x)$ </td> <td>  </td> </tr>
<tr> <td> $\vdots$ </td> <td> $\vdots$ </td> </tr>
</table>

You get the idea. Ultimately, this looks like:

<table style='text-align:center;'>
<thead><td> sign </td> <td> $g$ and its derivatives </td> <td> $f'$ and its antiderivatives </td> <td> corresponding term </td> </thead>
<tr> <td>$+$ </td> <td> $x^5$ </td> <td> $\sin(x)$ </td> <td> (n/a) </td></tr>
<tr> <td>$-$ </td> <td> $5x^4$ </td> <td> $-\cos(x)$ </td> <td> $+x^5\cdot(-\cos x)$ </td> </tr>
<tr> <td>$+$ </td> <td> $20x^3$ </td> <td> $-\sin(x)$ </td> <td> $-5x^4 \cdot (-\sin x)$ </td></tr>
<tr> <td>$-$ </td> <td> $60x^2$ </td> <td> $\cos(x)$ </td> <td> $+20x^3\cdot(\cos x)$ </td> </tr>
<tr> <td>$+$ </td> <td> $120x$ </td> <td> $\sin(x)$ </td> <td> $-60x^2 \cdot (\sin x)$ </td> </tr>
<tr> <td>$-$ </td> <td> $120$ </td> <td> $-\cos(x)$ </td> <td>  $+120x \cdot (-\cos x)$ </td> </tr>
<tr> <td>$+$ </td> <td> 0 </td> <td> $-\sin(x)$ </td> <td> $-120 \cdot (-\sin x)$   </td> </tr>
<tr> <td>$-$ </td> <td> 0 </td> <td> $-\cos(x)$ </td> <td> $+0\cdot (-\cos x)$   </td> </tr>
<tr> <td>\vdots </td> <td> $\vdots$ </td> <td> $\vdots$  </td> <td> $\vdots$
<tr> <td>etc. </td> <td> $0$ </td> <td> etc. </td> <td> $0$ </td> </tr>
</table>

So, from adding together and simplifying all these things, we get the same answer:

$$\int\! x^5 \sin(x)\,dx \,=\, -x^5\cos x + 5x^4\sin x + 20x^3\cos(x)- 60x^2  \sin(x) -120x \cos x + 120\sin x $$

People often call this **tabular integration**; sometimes I refer to it as **the table method**, but it's really not an actual theorem so much as an organizational strategy that makes iterated integration by parts less tedious. If integration by parts is like a *machine gun* for integration, using a table to integrate by parts over and over and over is like *an anti-aircraft gun*!!!


