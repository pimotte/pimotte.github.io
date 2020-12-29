---
layout: post
title: "Algebraic geometry"
---


## Exercise 1.1

We denote by $$\psi_n$$ the canonical homomorphism $$ k[x_1, x_2, \ldots, x_n] \to \{ \textrm{functions } \mathbb{A}^n \to k \}$$.
We prove it is injective by induction.

### Base case (n=0)

In case $$n=0$$, the polynomials are constant. Hence, if the functions are the same, they must be the same constant, and thus the same polynomial.

### Induction step

Assume $$\psi_i$$ is injective.

Let $$p_1, p_2 \in k[x_1, x_2, \ldots, x_{i+1}] \textrm{ s.t. } \psi_{i+1}(p_1) = \psi_{i+1}(p_2)$$ with coefficients $$a_j, b_j$$ respectively.
Evaluating at $$0$$ gives that $$a_0 = b_0$$

Then $$\forall x \in k$$ non-zero:

$$
    \sum_{j=0}^{i+1} a_j x^j = \sum_{j=0}^{i+1} b_j x^j
$$

$$
     \sum_{j=1}^{i+1} a_j x^j = \sum_{j=1}^{i+1} b_j x^j
$$

$$
     x\sum_{j=1}^{i+1} a_j x^{j-1} = x\sum_{j=1}^{i+1} b_j x^{j-1}
$$

Since $$x \neq 0$$ and $$k$$ is a field:

$$
     \sum_{j=1}^{i+1} a_j x^{j-1} = \sum_{j=1}^{i+1} b_j x^{j-1}
$$

By injectivity of $$\psi_i$$, $$a_j = b_j$$ for $$1 \leq j \leq i+1$$. Hence, $$p_1 = p_2$$ so $$\psi_{i+1}$$ is injective.

## Exercise 1.2

Let $$I = \langle (x-1)(x+1) \rangle, J = \langle (x-1) \rangle$$. Then $$\mathcal{L}(I) = \{-1, 1\}, \mathcal{L}(J) = \{1\}$$
Hence $$\mathcal{L}(I) \cup \mathcal{L}(J) = \{-1, 1\}$$. $$I \cap J = \langle (x-1) \rangle$$, so $$\mathcal{L}(I \cap J) = \{1\}$$,
so in general $$\mathcal{L}(I \cap J) \neq \mathcal{L}(I) \cup \mathcal{L}(J)$$

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

(i): Let $$X \subset U$$, irreducible, non-empty and open. Suppose $$U$$ is reducible: $$U_1, U_2 \subsetneq U$$ closed s.t. 
$$U_1 \cup U_2 = U$$. 




