---
layout: post
title: "Algebraic geometry"
---


## Exercise 1.1

We denote by $$\psi_n$$ the canonical homomorphism $$ k[x_1, x_2, \ldots, x_n] \to \{ \textrm{functions } \mathbb{A}^n \to k \}$$.
We prove it is injective by induction.

### Base case (n=0)

In case $$n=0$$, the polynomials are constants. Hence, if the functions are the same, they must be the same constant, and thus the same polynomial.

### Induction step

Assume $$\psi_i$$ is injective. It suffices to show that $$\ker \psi_{i+1}= 0$$

Let $$p \in k[x_1, x_2, \ldots, x_{i+1}] \textrm{ s.t. } \psi_{i+1}(p) = 0$$.

TODO: No clue how to procede.




## Exercise 1.2

Let $$I = \langle (x-1)(x+1) \rangle, J = \langle (x-1) \rangle$$. Then $$\mathscr{L}(I) = \{-1, 1\}, \mathscr{L}(J) = \{1\}$$
Hence $$\mathscr{L}(I) \cup \mathscr{L}(J) = \{-1, 1\}$$. $$I \cap J = \langle (x-1) \rangle$$, so $$\mathscr{L}(I \cap J) = \{1\}$$,
so in general $$\mathscr{L}(I \cap J) \neq \mathscr{L}(I) \cup \mathscr{L}(J)$$

## Exercise 1.3

Let $$I \subset R$$ an ideal. We prove $$\sqrt{I} = \{r \in R : \exists m > 0 \textrm{ s.t. } r^m \in I\}$$ is an ideal.

Let $$i, j \in \sqrt{I}$$. Let $$m_1, m_2$$ such that $$i^{m_1} \in I, j^{m_2} \in I$$. 

We prove that $$(i+j)^{m_1 + m_2} \in I$$.

$$
\begin{align}
     (i+j)^{m_1+m_2} &= \sum_{k=0}^{m_1+m_2} {m_1+m_2 \choose k}i^{m_1+m_2-k}j^k \\
     &= \sum_{k=0}^{m_2} \left( {m_1+m_2 \choose k} i^{m_1+m_2-k}j^k\right) + \sum_{k=m_2+1}^{m_1+m_2} \left({m_1+m_2 \choose k} i^{m_1+m_2-k}j^k\right) \\
     &= \sum_{k=0}^{m_2} \left({m_1+m_2 \choose k} i^{m_1+m_2-k}j^k\right) + \sum_{k=1}^{m_1} \left({m_1+m_2 \choose k + m_2} i^{m_1-k}j^{k+m_2}\right) \\
     &= i^{m_1}\sum_{k=0}^{m_2} \left({m_1+m_2 \choose k} i^{m_2-k}j^k\right) + j^{m_2}\sum_{k=1}^{m_1} \left({m_1+m_2 \choose k + m_2} i^{m_1-k}j^{k}\right) \\
\end{align}
$$

So, since $$i^{m_1} \in I, j^{m_2} \in I$$ we get $$(i+j)^{m_1+m_2} \in I$$, so $$i+j \in \sqrt{I}$$

Let $$r \in R$$. Then $$(ri)^{m_1} = r^{m_1}i^{m_1}$$, so $$ri \in \sqrt{I}$$.

Since $$\sqrt{I}$$ is closed under addition and absorbs the ring, it is an ideal.

## Exercise 1.4 

(i): [Clear proof on wikipedia](https://en.wikipedia.org/wiki/Nilradical_of_a_ring#Commutative_rings)

(ii): Since $$\sqrt{I} \subset I$$, $$\sqrt{I}$$ is contained in the intersection of all prime ideals containing $$I$$.
Since $$\sqrt{0} \subset \sqrt{I}$$, any $$a \notin \sqrt{I}$$ is also non-nilpotent, so per proof on wikipedia above, it is
not in any prime ideal. Therefore the intersection of all prime ideals containing $$I$$ contains $$\sqrt{I}$$.


## Exercise 1.5

(i): Let $$U \subset X$$, non-empty and open. Suppose $$U$$ is reducible: $$U_1, U_2 \subsetneq U$$ closed in $$U$$ s.t. 
$$U_1 \cup U_2 = U$$. So there exist $$X_1, X_2 \subset X$$ closed, s.t. $$X_1 \cap U =  U_1$$ and $$X_2 \cap U = U_2$$. Therefore $$X_1 \cup X_2 \cup U^\complement = X$$, which are all closed sets, which contradicts the irreducibility of $$X$$. So $$U$$ is irreducible.

Suppose $$U$$ is not dense, then there exists an open subset $$X_3 \subset U^\complement$$. Then $$X_3^\complement \cup U^\complement = X$$
which contradicts the irreducibility of $$X$$.

A single point is Hausdorff. Suppose $$|X| > 1$$, then let $$x_1, x_2 \in X$$. Then any open set around $$x_1$$ is dense, therefore it intersects
any open set around $$x_2$$, so there can not be disjoint neighbourhoods, so $$X$$ is not Hausdorff.

(ii) Probably something using $$\overline{Y} = \partial Y \cup Y$$ and the fact the boundary is closed?

## Exercise 1.6

Let $$A \subset \mathbb{A}^n$$ an affine variety. Let $$\bigcup_{i \geq 0} O_i$$ be an open cover of $$A$$.
Then $$(\bigcap_{i=0}^m O_i^\complement)_m$$ is a descending chain of closed subsets. Since $$\mathbb{A}^n$$ is Noetherian
this is a stable chain. Hence $$A \subseteq \bigcup_{i=0}^m O_i$$ for some $$m$$, so every finite cover has an open subcover.

TODO: I'm missing something here, I'm using no properties of $$A$$?

## Exercise 1.7

We show that $$f$$ is continuous. Let $$Y \subseteq \mathbb{A}^n$$ closed. We show that $$f^{-1}(Y)$$ is closed. 
Since $$Y$$ is closed, $$\mathscr{L}(S) = Y$$ for some finite set $$S \subset k[x_1, \ldots, x_m]$$.

We define $$S' = \{s \circ f_i \forall s \in S, i \in [0, m]\}$$

Then:

$$
\begin{align}
     f^{-1}(Y) &= \{ x \in \mathbb{A}^n: f(x) \in Y\} \\
     &= \{ x \in \mathbb{A}^n: s(f(x)) = 0 \forall s \in S\} \\
     &= \{ x \in \mathbb{A}^n: s(f_i(x)) = 0 \forall s \in S, i \in [0, m]\} \\
     &= \{ x \in \mathbb{A}^n: f(x) \in Y\} &&
\end{align}
$$

So, $$f^{-1}(Y)$$ is closed, so $$f$$ is continuous.

As for a counter-example that $$f$$ is a closed map: let $$n=m=1$$, $$ f_1 = x^2$$, which maps $$\mathbb{A}^1$$ to $$[0, 
\infty)$$, which is not closed in the co-finite topology.

(ii): Let $$p_1, p_2 \in k[x_1, \ldots, x_n]$$. The natural map is clearly an injection. Injectivity follows from showing
that the kernel is exactly $$\mathscr{I}(Y)$$, with the same trick I'm missing in 1.1. 

(iii): Suppose $$f \neq 0$$ and $$g \neq 0$$. Note that $$f^{-1}(\{0\}) \subsetneq Y$$ and $$g^{-1}(\{0\}) \subsetneq Y$$. Since $$k$$ is a field, products of non-zero elements are non-zero, so since $$fg=0$$, for each $$x \in Y$$, either $$f(x)=0$$ or $$g(x)=0$$. Hence $$f^{-1}(\{0\}) \cup g^{-1}(\{0\}) = Y$$, but this contradicts the irreducibility of the affine variety $$Y$$. Hence, $$f = 0$$ or $$g = 0$$.

## Exercise 1.8

Let $$S=\{x^4-y^3, x^5-z^3, y^5-z^4\}$$. Clearly $$X \subseteq \mathscr{L}(S)$$. If we could prove the equality, that would prove that $$X$$ is closed, and these polynomials would generate $$\mathscr{I}$$. TODO: How to prove? How to do the irreducible components of two of these?

## Exercise 1.9

Factoring the given polynomials yields $$y^4-x^6 = (y^2+x^3)(y^2-x^3)$$ and $$y^3-xy^2-yx^3+x^4=(x-y)(x^3-y^2)$$

This means that the set $$x^3=y^2$$ is one of the irreducible components. Then the other component has $$x=y$$ and $$y^2=-x^3$$, so $$x=y=-1$$ is the other component.

## Exercise 1.10

(i): The irreducible components of $$\mathscr{L}(f)$$ are the zero serts of the factors of $$f$$.

(ii): Suppose $$\mathscr{L}(f)$$ has an inifinite closed set, $$X \subsetneq \mathscr{L}$$. Then there exists a polynomial $$g \in k[x,y]$$, such that $$\mathscr{L}(f) 
\cap \mathscr{L}(g) = X$$. Then intuitively, it has to divide $$f$$. TODO: Harden this intuition.

(iii): The closed sets $$\mathscr{L}(x^2+y^2) \cup \{0, 0\}$$ and $$\mathscr{L}(x^2+y^2) \cup \{42, 42\}$$ are reducible, but the intersection is irreducible (just the circle).





