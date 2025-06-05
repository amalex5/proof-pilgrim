---
title: log base play notes
usemathjax: true
layout: post
---


> *Andrew note: these are my notes to myself on these fun log base problems! Ordinarily when I write math for you guys, I try to write things really thoroughly and explicitly. That's not what this is! These are just my own unvarnished stream-of-consciousness from when I worked through these problems for the first time. But I think perhaps it might be good for you to see them even in this raw state, as an example of a different way to write about and explain mathematics.*

<div style='height:3em;'></div>


**ANDREW NOTES NOT 4 KIDS**

this is all deliberately unscaffolded, because I want to throw it at the kids and see what happens! here are some of my notes, written off the cuff, on the theorems that it seems one can easily find and prove (or not). 

---

$$\boxed{ \text{\bf THM: } \log_{a^b}(c) = \frac1b \log_a(c)}$$

I'm going to call this **Coltrane's Theorem**, because he emailed me about how to prove it at some point during springtime remote learning.

**PF \#1: from first principles:**

i mean, this is basically the same as the proof of the change-of-base formula in my notes. we can rewrite $c$ as:
$$c = \left(a^b\right)^{ \log_{a^b}(c)}$$
which is:
$$c = a^{b\cdot \log_{a^b}(c)}$$
taking the $\log_a$ of both sides:
$$\log_a(c) = \log_a\left(a^{b\cdot \log_{a^b}(c)}\right)$$
$$\log_a(c) =b\cdot \log_{a^b}(c)$$
$$\frac{\log_a(c)}{b} = \log_{a^b}(c)$$
$$\log_{a^b}(c) = \frac1b \log_a(c)$$
$$\includegraphics[width=1em]{andrewproof.png}$$

**PF \#2: via change-of-base formula:**
\begin{align*}
\log_{a^b}(c) &= \frac{\log_{d}(c)}{\log_d\left(a^b\right)} \quad(\text{for some }d)\\
&= \frac{\log_{d}(c)}{b\log_d\left(a\right)}\\
&= \frac{1}{b}\cdot\frac{\log_{d}(c)}{\log_d\left(a\right)} \\
\text{now RE-applying change-of-base formula, in reverse:} \\
&= \frac{1}{b}\cdot\log_{a}(c)\\
&\quad\includegraphics[width=1em]{andrewproof.png}
\end{align*}


**And now we can solve Coltrane's problem!**

We start with:
$$\log_5(x)+\log_{\sqrt{5}}(x) + \log_{\frac15}(x) = 6 $$
I.e.:
$$\log_5(x)+\log_{5^{0.5}}(x) + \log_{5^{-1}}(x) = 6 $$
Using this theorem about $\log_{a^b}(c) = \frac1b\log_ac$, this becomes:
$$\log_5(x)+\frac{1}{0.5}\log_{5}(x) + \frac{1}{-1}\log_{5}(x) = 6$$
$$\log_5(x)+2\log_{5}(x) - \log_{5}(x) = 6$$
Which is:
$$2\log_{5}(x)= 6$$
$$\log_{5}(x)= 3$$
So, raising both sides by $5$, we get:
$$5^{\log_{5}(x)}= 5^3$$
I.e.:
$$x= 5^3$$
$$x= 125$$

---


$$\boxed{ \text{\bf THM: } \log_{1/a}(b) =  - \log_{a}(b) }$$


**PF: via the above theorem:**
\begin{align*} 
 \log_{1/a}(b) &=  \log_{a^{-1}}(b) \\
 &= \frac{1}{-1}\log_{a}(b) \quad \text{(applying $\log_{a^b}(c)$ thm)}\\
 &= - \log_{a}(b)\\
 &\quad\includegraphics[width=1em]{andrewproof.png}
\end{align*}

--- 

$$\boxed{ \text{\bf THM: } \log_{a\cdot b}(c) = \, ??? }$$


**PF: via change-of-base formula:**
\begin{align*}
 \log_{a\cdot b}(c) &= \frac{\log_d(c)}{\log_d(a\cdot b)} \\
 &=  \frac{\log_d(c)}{\log_d(a)+\log_d(b)} \\
& \text{yeah i think not a whole lot more we can do from here :(}\\
&\text{I 'spose we could set $d=c$, and then we'd get:}\\
 &=  \frac{\log_c(c)}{\log_c(a)+\log_c(b)} \\
  &=  \frac{1}{\log_c(a)+\log_c(b)} \\
 &\text{that's kinda cool! I guess we coulda set $d=a$ or $d=b$, too, and gotten:}\\
  &=  \frac{\log_a(c)}{1+\log_d(b)} \quad\text{(with $d=a$)}\\
 &=  \frac{\log_b(c)}{\log_b(a)+1}  \quad\text{(with $d=b$)}\\
 \end{align*}
I've just figured this out by playing with this directly. I kinda like the cool reciprocal theorem; I wonder what examples might be motivatingly useful?? What about, like:
$$\log_{2\cdot3}(12) =$$
OH WAIT GOLLY THIS IS ACTUALLY REALLY EFFING COOL. THINK ABOUT THIS FORMULA---okay, not creating the formula here, but applying it---we get:
\begin{align*}
\log_{2\cdot3}(12) &= \log_{6}(12) \\
&= \frac{1}{\log_{12}(2)+\log_{12}(3)}
\end{align*}
what's $\log_{12}(2)$? it must be the $k$ such that:
$$12^k = 2$$
or:
$$\left(2\cdot2\cdot3\right)^k = 2$$
$$\left(2^2\cdot3\right)^k = 2$$
$$2^{2k}\cdot3^k = 2$$
$$3^k = 2^{1-2k}$$
yeah, never mind, I don't think this is going anywhere. transcendental equations, man. can't trust them! anyway, cool moral of the story is that:
$$\boxed{ \log_{a\cdot b}(c)  = \frac{1}{\log_c(a)+\log_c(b)} \ }$$


---

$$\boxed{ \text{\bf THM: } \log_{a/b}(c) = \text{ ????} }$$

okay, this is clearly the same deal as above, but with subtraction rather than addition. we have:
\begin{align*}
 \log_{a/ b}(c) &= \frac{\log_d(c)}{\log_d(a/ b)}\\
 &=  \frac{\log_d(c)}{\log_d(a)-\log_d(b)} \\
  &=  \frac{1}{\log_c(a)-\log_c(b)} \quad\text{(with $d=c$)} \\
  &=  \frac{\log_a(c)}{1-\log_d(b)} \quad\text{(with $d=a$)}\\
 &=  \frac{\log_b(c)}{\log_b(a)-1}  \quad\text{(with $d=b$)}
\end{align*}

---

$$\boxed{ \text{\bf THM: } \log_{a+b}(c) = \text{ ????} }$$
yeah don't think this is anything interesting or tractable?!?!?

---

$$\boxed{ \text{\bf THM: } \log_{\log_a(b)}(c) = \text{ ??!?! } }$$
YEAH BUDDY JUST KEEP GOING!!!!

