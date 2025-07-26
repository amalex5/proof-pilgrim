---
title: power rule scenic route
usemathjax: true
layout: post
---


At 6:30 in the morning in a coffee shop in Jackson Hole, this delightful, absurd, using-a-backhoe-to-dig-a-garden derivation of the power rule ocurred to me. 

The product rule, in its normal form, is:
$$\Big(\,\, f(x)g(x) \,\,\Big)' = f'(x)g(x) + f(x)g'(x)$$
But if we have not two functions but *a bunch* of functions, the product rule becomes:
$$\Big(\,\, f_1(x)f_2(x)\cdots f_n(x)\,\,\Big)' \,\, = \,\,
\begin{matrix}
    {\color{red} f_1'(x)}\cdot f_2(x)\cdot f_3(x)\cdot \cdots f_n(x)  \\
   + \\
   f_1(x)\cdot {\color{red} f_2'(x)}\cdot f_3(x)\cdot \cdots f_n(x)  \\
   + \\
      f_1(x)\cdot f_2(x)\cdot {\color{red} f_3'(x)}\cdots f_n(x)  \\
   + \\
\vdots \\
  +\\
f_1(x)\cdot f_2(x)\cdot f_3(x)\cdot \cdots{\color{red} f_n'(x) }
\end{matrix}$$
Maybe it's clearer if we just drop all the ``of $x$'' $(x)$'s:
$$\Big(\,\, f_1f_2\cdots f_n\,\,\Big)' \,\, = \,\,
\begin{matrix}
    {\color{red} f_1'}\cdot f_2\cdot f_3\cdot \cdots f_n  \\
   + \\
   f_1\cdot {\color{red} f_2'}\cdot f_3\cdot \cdots f_n  \\
   + \\
      f_1\cdot f_2\cdot {\color{red} f_3'}\cdots f_n  \\
   + \\
\vdots \\
  +\\
f_1\cdot f_2\cdot f_3\cdot \cdots{\color{red} f_n' }
\end{matrix}$$
If we write it more compactly and intimidatingly with $\prod$ and $\sum$ notation, it's:
$$\left(\,\, \prod_{i=1}^{i=n}f_i(x) \,\,\right)' \,\,=\,\, \sum_{i=1}^{i=n} \left(\, f_j'(x) \prod_{\substack{i=1 \\ i\neq j}}^{i=n}f_i(x) \,\right)$$
Or again sans $(x)$'s:
$$\left(\,\, \prod_{i=1}^{i=n}f_i \,\,\right)' \,\,=\,\, \sum_{i=1}^{i=n} \left(\, f_j' \prod_{\substack{i=1 \\ i\neq j}}^{i=n}f_i \,\right)$$

Anyway, we can use this to prove the power rule!!!
$$\boxed{\Large \,\, \left(x^n\right)' = nx^{n-1} \,\,}$$
After all, $x^n$ is just $n$ $x$'s multiplied together! So we have:
\begin{align*}
{\Large \left(x^n\right)'} \quad&=\quad \left(\,\underbrace{x \cdot x \cdot x \cdots}_{n \text{ times}} \right)' \\ \\
&=\,\, \left.
\begin{matrix}
    {\color{red} x '}\cdot x\cdot x\cdot \cdots x  \\
   + \\
   x\cdot {\color{red} x '}\cdot x\cdot \cdots x  \\
   + \\
      x\cdot x\cdot {\color{red} x '}\cdots x  \\
   + \\
\vdots \\
  +\\
  \underbrace{ x\cdot x\cdot x\cdot \cdots{\color{red} x ' }}_{\text{also $n$ times}}
\end{matrix}
\,\,\right\} \text{$n$ times} \\  \\
&=\,\, \left.
\begin{matrix}
    {\color{red} 1}\cdot x\cdot x\cdot \cdots x  \\
   + \\
   x\cdot {\color{red} 1}\cdot x\cdot \cdots x  \\
   + \\
      x\cdot x\cdot {\color{red} 1}\cdots x  \\
   + \\
\vdots \\
  +\\
  \underbrace{ x\cdot x\cdot x\cdot \cdots{\color{red} 1 }}_{\text{also $n$ times}}
\end{matrix}
\,\,\right\} \text{$n$ times} \\  \\
&=\,\, \left.
\begin{matrix}
    x\cdot x \cdots x  \\
   + \\
   x\cdot x \cdots x  \\
   + \\
      x\cdot x \cdots x  \\
   + \\
\vdots \\
  +\\
  \underbrace{ x\cdot x\cdot x\cdots}_{\substack{\text{now $n-1$ times}\\\text{'cause we zonked off the $1$}}}
\end{matrix}
\,\, \right\} {\text{$n$ times} } \\  \\
&=\,\, \left.
\begin{matrix}
    x^{n-1}  \\
   + \\
    x^{n-1}  \\
   + \\
    x^{n-1}  \\
   + \\
\vdots \\
  +\\
    x^{n-1}  \\
\end{matrix}
\,\,\right\} \text{$n$ times} \\  \\
&=\,\, {\large nx^{n-1} }
\end{align*}

Written more compactly with $\prod$- and $\sum$-notation, here's how I'd write this. We have:
$$\begin{align*}
{\Large \left(\,x^n\,\right)'} \,\, &= \left(\,\underbrace{x \cdot x \cdot x \cdots}_{n \text{ times}} \right)'
\end{align*}$$
These $x$'s are all identical but let's label them individually anyway:
$$\begin{align*}
&= \left(\,\underbrace{x_1 \cdot x_2 \cdot x_3 \cdots}_{n \text{ times}} \right)' \\ \\
&= \left(\,\prod_{k=1}^{k=n}x_k \right)'
\end{align*}$$
So then by the generalized product rule, we have:
$$\begin{align*}
&= \sum_{i=1}^{i=n} \left( x_i\right)'\prod_{\substack{k=1 \\ k\neq i}}^{k=n}x_k \\ \\
&= \sum_{i=1}^{i=n} 1\cdot \prod_{\substack{k=1 \\ k\neq i}}^{k=n}x_k \\ \\
&= \sum_{i=1}^{i=n} 1\cdot \left(\,\underbrace{x \cdot x \cdot x \cdots}_{(n-1) \text{ times}} \right) \\ \\
&= \sum_{i=1}^{i=n} \left(\,\underbrace{x \cdot x \cdot x \cdots}_{(n-1) \text{ times}} \right) \\ \\
&= \sum_{i=1}^{i=n} x^{n-1} \\ \\
&= \underbrace{ x^{n-1} + x^{n-1} + x^{n-1} + \cdots}_{n \text{ times} } \\ \\
&= {\Large nx^{n-1}}
\end{align*}$$


