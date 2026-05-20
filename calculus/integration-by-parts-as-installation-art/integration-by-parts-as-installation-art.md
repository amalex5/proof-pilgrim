---
title: "psychedelic zippers: integration by parts as installation art"
usemathjax: true
layout: post
---


**Integration by parts: it's a psychedelic two-way zipper**. This was the point of my short-lived installation piece in the Main Room of Deep Springs College during a calculus class I taught in Spring 2026.
![](DSC_0645_processed_email.jpg)

The piece demonstrates two different ways to integrate-by-parts the integral:
$$\int\! x^5 \sin(x)\,dx$$
One way---the "obvious" way; the supposedly "better" way---is to multiply together $x^5$ and its derivatives with the antiderivatives of sine, summing the result with alternating plus-or-minusses. 

To visualize that, here's a table with $x^5$ and its derivatives, together with $\sin x$ and its antiderivatives, displayed such that differentiation proceeds in the downward direction:
<style>
    table      { border: none; margin: 1em auto; }
    tbody { border: none; }
    td         { background: whitesmoke; border:.5em solid white; text-align: center;
                 padding: 1 em; font-size: 15px; min-width: 5em; }
    td.pivot   { background: lightslategrey; color: white; border-color none; }
    td.meta    { background: transparent; border: none; font-size: 11px; color: #aaa; padding: 2px 0; }
    td.col-hdr { background: transparent; border: none; font-size: 13px; color: #888; padding-bottom: 2px; }
    td.vdots   { background: transparent; border: none; font-size: 20px; color: #aaa; padding: 2px 0; }
    td.blank { background: transparent; padding: 2px 0; border: none;}
</style> 
<table>
<tbody>
<tr><td class='blank'></td> <td class="vdots">$$\vdots$$</td></tr>
<!-- antiderivatives -->
<tr><td class='blank'></td> <td>$$-\sin x$$</td></tr>
<tr><td class='blank'></td>  <td>$$-\cos x$$</td></tr>
<tr><td class='blank'></td> <td>$$\sin x$$</td></tr>
<tr><td class='blank'></td><td>$$\cos x$$</td></tr>
<tr><td class='blank'></td> <td>$$-\sin x$$</td></tr>
<tr><td class='blank'></td> <td>$$-\cos x$$</td></tr>
<!-- pivot -->
<tr><td class="pivot">$${\Large x^5}$$</td> <td class="pivot">$${\Large \sin x}$$</td></tr>
<!-- derivatives -->
<tr><td>$$5x^4$$</td> <td class='blank'></td></tr>
<tr><td>$$20x^3$$</td>  <td class='blank'></td></tr>
<tr><td>$$60x^2$$</td> <td class='blank'></td></tr>
<tr><td>$$120x$$</td> <td class='blank'></td></tr>
<tr><td>$$120$$</td>  <td class='blank'></td></tr>
<tr><td>$$0$$</td> <td class='blank'></td></tr>
<tr><td>$$0$$</td> <td class='blank'></td></tr>
<tr>
<td class="vdots">$$\vdots$$</td> <td class="blank"></td>
</tr>
</tbody>
</table>
You can imagine picking up these two strands of functions and "folding" them togther to create the answer: attaching $x^5$ with $-\cos x$, attaching $5x^4$ with $-\sin x$, and so forth. We get:
\begin{align*}
\int\! x^5 \sin(x)\,dx \quad=\quad &+x^5(- \cos x) \\
&-5x^4(-\sin x) \\
&+20x^3\cos x \\
&-60x^2  \sin x \\
&+120x(-\cos x) \\
&-120(-\sin x) \\
&+ 0\cdot \cos x \\
&- 0\cdot \sin x \\
&\quad \vdots
\end{align*}
Simplifying the sign (*s-i-g-n*) stuff, we get:
\begin{align*}
\int\! x^5 \sin(x)\,dx \quad=\quad &-x^5\cos x \\
&+5x^4\sin x \\
&+20x^3\cos x  \\
&-60x^2  \sin x \\
&-120x \cos x \\
&+120\sin x.
\end{align*}
Alternatively, we can make the opposite choice. Rather than fold/pair up the derivatives of $x^5$ with the antiderivatives of sine, we can pair up the derivatives of sine with *anti*derivatives of $x^5$. The corresponding table then looks like:
<table>
<tbody>
<tr>
<td class="vdots">$$\vdots$$</td>
<td class="blank"></td>
</tr>
<!-- antiderivatives -->
<tr><td>$$\dfrac{x^{11}}{332640}$$</td> <td class='blank'></td></tr>
<tr><td>$$\dfrac{x^{10}}{30240}$$</td>  <td class='blank'></td></tr>
<tr><td>$$\dfrac{x^9}{3024}$$</td> <td class='blank'></td></tr>
<tr><td>$$\dfrac{x^8}{336}$$</td><td class='blank'></td></tr>
<tr><td>$$\dfrac{x^7}{42}$$</td> <td class='blank'></td></tr>
<tr><td>$$\dfrac{x^6}{6}$$</td> <td class='blank'></td></tr>
<!-- pivot -->
<tr><td class="pivot">$${\Large x^5}$$</td> <td class="pivot">$${\Large \sin x}$$</td></tr>
<!-- derivatives -->
<tr><td class='blank'></td> <td>$$\cos x$$</td></tr>
<tr><td class='blank'></td>  <td>$$-\sin x$$</td></tr>
<tr><td class='blank'></td> <td>$$-\cos x$$</td></tr>
<tr><td class='blank'></td> <td>$$\sin x$$</td></tr>
<tr><td class='blank'></td>  <td>$$\cos x$$</td></tr>
<tr><td class='blank'></td> <td>$$-\sin x$$</td></tr>
<tr><td class='blank'></td> <td>$$-\cos x$$</td></tr>
<tr>
<td class="blank"></td> <td class="vdots">$$\vdots$$</td>
</tr>
</tbody>
</table>
This gives us:
\begin{align*}
\int\! x^5 \sin(x)\,dx \quad=\quad &+\frac{x^6}{6}\sin x \\ \\
&-\frac{x^7}{42}\cos x\\ \\
&+\frac{x^8}{336}(-\sin x) \\ \\
&-\frac{x^9}{3024}(-\cos x) \\ \\
&+\frac{x^{10}}{30240} \sin x \\ \\
&-\frac{x^{11}}{332640} \cos x  \\ \\
&\quad\vdots
\end{align*}
It's an infinite series!!! In the first way of computing this integral, the derivatives of $x^5$ eventually zero out, meaning that our series terminates. But in this way, we're using the *anti*derivatives of $x^5$, which never become $0$, and so the series never terminates. We get an infinite series. Spiritually it relates closely to Taylor series (a marginally more sophisticated way of constructing an infinite series using integration by parts).

Here's the full table, with all the derivatives and antiderivatives of both functions:
<table>
<tbody>
<tr><td class="vdots">$$\vdots$$</td> <td class="vdots">$$\vdots$$</td></tr>
<!-- antiderivatives -->
<tr><td>$$\dfrac{x^{11}}{332640}$$</td> <td>$$-\sin x$$</td></tr>
<tr><td>$$\dfrac{x^{10}}{30240}$$</td>  <td>$$-\cos x$$</td></tr>
<tr><td>$$\dfrac{x^9}{3024}$$</td> <td>$$\sin x$$</td></tr>
<tr><td>$$\dfrac{x^8}{336}$$</td><td>$$\cos x$$</td></tr>
<tr><td>$$\dfrac{x^7}{42}$$</td> <td>$$-\sin x$$</td></tr>
<tr><td>$$\dfrac{x^6}{6}$$</td> <td>$$-\cos x$$</td></tr>
<!-- pivot -->
<tr><td class="pivot">$${\Large x^5}$$</td> <td class="pivot">$${\Large \sin x}$$</td></tr>
<!-- derivatives -->
<tr><td>$$5x^4$$</td> <td>$$\cos x$$</td></tr>
<tr><td>$$20x^3$$</td>  <td>$$-\sin x$$</td></tr>
<tr><td>$$60x^2$$</td> <td>$$-\cos x$$</td></tr>
<tr><td>$$120x$$</td> <td>$$\sin x$$</td></tr>
<tr><td>$$120$$</td>  <td>$$\cos x$$</td></tr>
<tr><td>$$0$$</td> <td>$$-\sin x$$</td></tr>
<tr><td>$$0$$</td> <td>$$-\cos x$$</td></tr>
<tr><td class="vdots">$$\vdots$$</td> <td class="vdots">$$\vdots$$</td></tr>
</tbody>
</table>
For the demo, I wrote out a half-dozen of each of the anti/derivatives on sheets of 8.5x11 paper, and taped them together, with a few inches of tape between each sheet so they could dangle. 

![](DSC_0652_processed_email.jpg)

We then taped the top of each column to the ceiling, and taped the matching derivative/antiderivative pairs together to create the two equivalent answers:

![](DSC_0644_processed_email.jpg)

It's like you have a giant `X`---two strands, connected at the middle, a diploid chromosome---and you fold up the two pairs of opposite legs together.