---
title: integration by parts, intuition and SCRATCHPAD
usemathjax: true
layout: post
---


<style>
    table      { border: none; margin: 1em auto; }
    td         { background: whitesmoke; border:.5em solid white; text-align: center;
                 padding: 1 em; font-size: 15px; min-width: 5em; }
    td.pivot   { background: #2c2c2a; color: #f1efe8; border-color: #444441; }
    td.meta    { background: transparent; border: none; font-size: 11px; color: #aaa; padding: 2px 0; }
    td.col-hdr { background: transparent; border: none; font-size: 13px; color: #888; padding-bottom: 2px; }
    td.vdots   { background: transparent; border: none; font-size: 20px; color: #aaa; padding: 2px 0; }
  </style> 


<table>
<thead>
<tr>
<td class="col-hdr">powers of $$x$$</td>
<td class="col-hdr">trig</td>
</tr>
<tr>
<td class="meta">↑ antiderivatives</td>
<td class="meta">↑ antiderivatives</td>
</tr>
</thead>
<tbody>
<tr>
<td class="vdots">$$\vdots$$</td>
<td class="vdots">$$\vdots$$</td>
</tr>
<!-- antiderivatives -->
<tr><td>$$\dfrac{x^{11}}{332640}$$</td> <td>$$-\sin x$$</td></tr>
<tr><td>$$\dfrac{x^{10}}{30240}$$</td>  <td>$$\cos x$$</td></tr>
<tr><td>$$\dfrac{x^9}{3024}$$</td> <td>$$\sin x$$</td></tr>
<tr><td>$$\dfrac{x^8}{336}$$</td><td>$$-\cos x$$</td></tr>
<tr><td>$$\dfrac{x^7}{42}$$</td> <td>$$-\sin x$$</td></tr>
<tr><td>$$\dfrac{x^6}{6}$$</td> <td>$$-\cos x$$</td></tr>
<!-- pivot -->
<tr><td class="pivot">$$x^5$$</td> <td class="pivot">$$\sin x$$</td></tr>
<!-- derivatives -->
<tr><td>$$5x^4$$</td> <td>$$\cos x$$</td></tr>
<tr><td>$$20x^3$$</td>  <td>$$-\sin x$$</td></tr>
<tr><td>$$60x^2$$</td> <td>$$-\cos x$$</td></tr>
<tr><td>$$120x$$</td> <td>$$\sin x$$</td></tr>
<tr><td>$$120$$</td>  <td>$$\cos x$$</td></tr>
<tr><td>$$0$$</td> <td>$$-\sin x$$</td></tr>
<tr><td>$$0$$</td> <td>$$-\cos x$$</td></tr>
<tr>
<td class="meta">↓ derivatives</td>
<td class="meta">↓ derivatives</td>
</tr>
</tbody>
</table>




$$\int 2x\cos(x)\,dx$$
$$\int xe^x \,dx$$
$$\int x^2 e^x \, dx$$


$$\int x^3 e^x \, dx$$
$$\int x^2\cos(x) \, dx$$


$$\int xf(x)\, dx$$




so. recap. the kids have been working through my giant list of 200+ antiderivatives. and the last section is basically stuff that's integration by parts. and in class last time, we talked about:

$$\int 2x\cos(x) \, dx$$

if it were $\int 2x\cos\left(x^2\right)\, dx$, it wouldn't be so bad. it'd look like something that'd been chain-ruled. it'd be like:

$$\int 2x\cos\left(x^2\right)\, dx = sin\left(x^2\right)$$

but it's not that. it's $2x\cos x$. how do we deal with that???

is it just $2x\sin(x)$? we can check by taking a derivative:

$$\big(\, 2x\sin x \,\big)' \quad=\quad 2\sin(x) + 2x\cos(x)$$

nope. so:

$$ \int 2x\cos(x) \, dx \quad\neq\quad 2\sin(x) + 2x\cos(x)$$

but... it's almost that. if we could just... subtract off the $2\sin(x)$ part, it'd work. and we can do that? like what if we do:

\begin{align*}
\big(\, 2x\sin x  - 2\sin x \,\big)' &= 2\sin(x) + 2x\cos(x) - 2\cos(x) \\
&= \cancel{2\sin(x)} + 2x\cos(x) - \cancel{2\cos(x)} \\
&= 2x\sin x
\end{align*}

yay! it works! so we have:

$$ \int 2x\cos(x) \, dx \quad=\quad 2x\sin x  - 2\sin x$$

grace and victoria figured this out.

similarly, what about:

$$\int xe^x \,dx \quad=\quad ???$$

like before, this *almost* looks like something that's been chain-ruled. if ONLY the thing $e$ is raised to were $x^2$ rather than $x$, we could work this out:

$$\int xe^{x^2} \,dx \quad=\quad \frac{1}{2}e^{x^2}$$

but it's not. so... same idea. what if we just see if just $xe^x$ is the antiderivative? we can take a derivative to check:

\begin{align*}
\big(\, xe^x \,\big)'  &= 1\!\cdot\!e^x + xe^x \\
&= e^x + xe^x \\
&\neq xe^x
\end{align*}

nope. again, it doesn't quite work. so:

$$\int xe^x \,dx \quad\neq\quad xe^x $$

but... sort of like with the earlier examples, it *almost* works. we just get that extra $e^x$! can we somehow subtract that off? if we include a $-e^x$ term in the antiderivative, will that do it??? let's see:

\begin{align*}
\big(\, xe^x  - e^ x \,\big)'  &= 1\!\cdot\!e^x + xe^x  - e^x\\
&= e^x + xe^x  - e^x\\
&= \cancel{e^x} + xe^x  - \cancel{e^x}\\
&= xe^x
\end{align*}

yes!! it works! wowww. 

$$\int xe^x \,dx \quad=\quad xe^x  - e^ x$$

kids managed to figure this out, too, in class. 

okay. slightly harder problem now. what about:

$$\int x^2e^x \,dx \quad=\quad ???$$

hmm. now we've raised the power on the $x$ by one. what if we try taking a derivative of $x^2e^x$, to just get a feeling?

\begin{align*}
\big(\, x^2e^x  - e^ x \,\big)'  &= 2xe^x + x^2e^x
\end{align*}

okay. we have this $x^2e^x$ in the answer. can we somehow subtract off the $2xe^x$ so we can get just that? 

i mean... we basically just figured out what gives us a derivative of $2xe^x$, in the previous problem. (or rather, multiplied by two.) so what if we try:

\begin{align*}
\Big(\, x^2e^x  -\,\, \substack{\text{the thing that}\\\text{differentiates to $xe^x$}} \,\Big)'  &= \Big(\, x^2e^x \Big)' - \Big( \substack{\text{the thing that}\\\text{differentiates to $xe^x$}} \Big) \\  \\
&= 2xe^x + x^2e^x - xe^x \\
&= 1xe^x + x^2e^x
\end{align*}
Oh... right, we actually need to subtract *twice* times the thing that differentiates to $xe^x$. So we should have:
\begin{align*}
\Big(\, x^2e^x  -\,\, 2\substack{\text{the thing that}\\\text{differentiates to $xe^x$}} \,\Big)'  &= \Big(\, x^2e^x \Big)' - 2\Big( \substack{\text{the thing that}\\\text{differentiates to $xe^x$}} \Big) \\  \\
&= 2xe^x + x^2e^x - 2xe^x \\
&= \cancel{2xe^x} + x^2e^x - \cancel{2xe^x} \\
&= x^2e^x
\end{align*}
Yay! It works!!! So what we have is:
\begin{align*}
\Big(\, x^2e^x  -\,\, 2\left(x^2e^x  - e^ x \right)\,\Big)'  &= \Big(\, x^2e^x  -2x^2e^x  +2e^ x \,\Big)'\\
&= \Big(\, x^2e^x \Big)' - 2\Big( \substack{\text{the thing that}\\\text{differentiates to $xe^x$}} \Big) \\  \\
&= 2xe^x + x^2e^x - 2xe^x \\
&= \cancel{2xe^x} + x^2e^x - \cancel{2xe^x} \\
&= x^2e^x
\end{align*}


\begin{align*}
\Big(\,  x^2 \sin x + 2x\cos x - 2\sin x \,\Big)' &= 2x\sin x \,+\, x^2\cos x\\
&\quad +2\cos x \,-\, 2x\sin x \\
&\quad -2\cos x \\ \\
&= \cancel{2x\sin x} \,+\, x^2\cos x\\
&\quad +2\cos x \,-\, \cancel{2x\sin x} \\
&\quad -2\cos x \\ \\
&= \cancel{2x\sin x} \,+\, x^2\cos x\\
&\quad +\cancel{2\cos x }\,-\, \cancel{2x\sin x} \\
&\quad \cancel{-2\cos x} \\ \\
&= x^2\cos x
\end{align*}





Grace's formula:
$$\int f(x)g(x) \quad=\quad f(x)\int g(x) \,\,-\,\, f'(x)\int\!\!\int g(x) \,\,+\,\, f''(x)\int\!\!\int\!\!\int g(x) \,\,-\,\, \text{etc.}$$

\begin{align*}
\int 2x\cos(x)\, dx \quad&\overset{\text{one way}}{=}\quad 2x\sin x  - 2\sin x \\
\quad&\overset{\text{other way}}{=}\quad  x^2\cos x + \frac13 x^3\sin x + \frac{1}{12}\cos x + \,\,\, \text{etc.} \\

\end{align*}