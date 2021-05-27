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

Assume $$\psi_i$$ is injective. 

We define $$\phi: k[x_1, \ldots, x_i][x] \to k[x]$$ by applying $$\psi_{i}$$ to each of the coordinates. Note that $$\phi$$ is injective by injectivity of $$\psi_i$$. Also note that $$\psi_{i+1} = \psi_1 \circ \phi$$, so it suffices to show that $$\psi_1$$ is injective$$.


Let $$p \in k[x] \textrm{ s.t. } \psi_{1}(p) = 0$$. Since it is the 0 function, and $$k$$ is infinite field, it has an infinite amount of zeroes. Therefore, $$p$$ is the zero polynomial. Hence, $$\psi_1$$ is injective, so $$\psi_{i+1}$$ is injective.

By induction, $$\psi_n$$ is injective for all $$n \geq 0$$






## Exercise 1.2

We consider $$\mathscr{Z}(IJ)$$, $$\mathscr{Z}(I \cap J)$$ and $$\mathscr{Z}(I) \cup \mathscr{Z}(J)$$

Since $$\mathscr{Z}$$ is inclusion-reversing and $$IJ \subseteq I \cap J$$, $$\mathscr{Z}(I \cap J) \subseteq \mathscr{Z}(IJ)$$.
In addition, $$\mathscr{Z}(I) \subseteq \mathscr{Z}(I \cap J)$$ and $$\mathscr{Z}(J) \subseteq \mathscr{Z}(I \cap J)$$, so $$\mathscr{Z}(I) \cup \mathscr{Z}(J) \subseteq \mathscr{Z}(I \cap J)$$.

Finally, we prove $$\mathscr{Z}(IJ) \subseteq \mathscr{Z}(I) \cup \mathscr{Z}(J)$$ to prove equality of all three sets.

Let $$x \in \mathscr{Z}(IJ) \setminus \mathscr{Z}(I)$$. Then: $$\forall p \in IJ, p(x) = 0$$. Let $$q \in I \mathrm{ s.t. } q(x)\neq 0$$.

Then let $$p' \in J$$, then since $$p'q \in IJ$$: $$p'q(x)=p'(x)q(x)=0$$. Since $$q(x) \neq 0$$, $$p'(x)=0$$.  
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

(ii): Apply (i) to $$R / \sqrt{I}$$


## Exercise 1.5

(i): Let $$U \subset X$$, non-empty and open. Suppose $$U$$ is reducible: $$U_1, U_2 \subsetneq U$$ closed in $$U$$ s.t. 
$$U_1 \cup U_2 = U$$. So there exist $$X_1, X_2 \subset X$$ closed, s.t. $$X_1 \cap U =  U_1$$ and $$X_2 \cap U = U_2$$. Therefore $$X_1 \cup X_2 \cup U^\complement = X$$, which are all closed sets, which contradicts the irreducibility of $$X$$. So $$U$$ is irreducible.

Suppose $$U$$ is not dense, then there exists an open subset $$X_3 \subset U^\complement$$. Then $$X_3^\complement \cup U^\complement = X$$
which contradicts the irreducibility of $$X$$.

A single point is Hausdorff. Suppose $$|X| > 1$$, then let $$x_1, x_2 \in X$$. Then any open set around $$x_1$$ is dense, therefore it intersects
any open set around $$x_2$$, so there can not be disjoint neighbourhoods, so $$X$$ is not Hausdorff.

(ii) Suppose $$\overline{Y} = Y_1 \cup Y_2$$ is a reduction of $$\overline{Y}$$, then $$Y'_1=Y_1 \cap Y, Y'_2= Y_2 \cap Y$$ is a reduction of $$Y$$. 
Clearly, these sets are closed, because they are closed in the bigger $$\overline{Y}$$. $$Y'_1, Y'_2$$ must be proper subsets, because if they were not, then $$Y_1$$ or $$Y_2$$ would also not be proper subsets of $$\overline{Y}$$ which they are by definiton.

## Exercise 1.6

Let $$A \subset \mathbb{A}^n$$ an affine variety. Let $$\bigcup_{i \geq 0} O_i$$ be an open cover of $$A$$.
Then $$(\bigcap_{i=0}^m O_i^\complement)_m$$ is a descending chain of closed subsets. Since $$\mathbb{A}^n$$ is Noetherian
this is a stable chain. Hence $$A \subseteq \bigcup_{i=0}^m O_i$$ for some $$m$$, so every finite cover has an open subcover.

TODO: I'm missing something here, I'm using no properties of $$A$$?

## Exercise 1.7

We show that $$f$$ is continuous. Let $$Y \subseteq \mathbb{A}^n$$ closed. We show that $$f^{-1}(Y)$$ is closed. 
Since $$Y$$ is closed, $$\mathscr{Z}(S) = Y$$ for some finite set $$S \subset k[x_1, \ldots, x_m]$$.

We define $$S' = \{s \circ f_i \forall s \in S, i \in [0, m]\}$$

Then:

$$
\begin{align}
     f^{-1}(Y) &= \{ x \in \mathbb{A}^n: f(x) \in Y\} \\
     &= \{ x \in \mathbb{A}^n: s(f(x)) = 0 \forall s \in S\} \\
     &= \{ x \in \mathbb{A}^n: s(f_i(x)) = 0 \forall s \in S, i \in [0, m]\} \\
     &= \mathscr{Z}(S') \\
\end{align}
$$

So, $$f^{-1}(Y)$$ is closed, so $$f$$ is continuous.

As for a counter-example that $$f$$ is a closed map: let $$n=2, m=2$$, $$f_1 = (x-1)x, f_2=(x-1)y$$, which maps $$\mathscr{Z}(y-1)$$ to 
$$\{(x, 1): x\neq 1\} \cup \{0, 0\}$$, which is not closed.

(ii): The kernel of the natural map is $$\mathscr{I}(Y)$$ by definition, so $$A(Y)$$ is isomorphic to the image of the natural map.
$$F(Y, k)$$ contains the image, but injectivity remains for the map $$A(Y) \to F(Y, k)$$

(iii): Suppose $$f \neq 0$$ and $$g \neq 0$$. Note that $$f^{-1}(\{0\}) \subsetneq Y$$ and $$g^{-1}(\{0\}) \subsetneq Y$$. Since $$k$$ is a field, products of non-zero elements are non-zero, so since $$fg=0$$, for each $$x \in Y$$, either $$f(x)=0$$ or $$g(x)=0$$. Hence $$f^{-1}(\{0\}) \cup g^{-1}(\{0\}) = Y$$, but this contradicts the irreducibility of the affine variety $$Y$$. Hence, $$f = 0$$ or $$g = 0$$.

## Exercise 1.8

Let $$S=\{x^4-y^3, x^5-z^3, y^5-z^4\}$$. Clearly $$X \subseteq \mathscr{Z}(S)$$. If we could prove the equality, that would prove that $$X$$ is closed, and these polynomials would generate $$\mathscr{I}$$.


To prove $$\mathscr{Z}(S) \subseteq X$$: Let $$(a, b, c) \in \mathscr{Z}(S)$$. Note that if one is $$0$$, the others must be as well and this is also in $$X$$. Suppose $$a, b, c \neq 0$$. Then we write $$a'=\frac{a}{t'^3}, b'=\frac{b}{t'^4}, c'=\frac{c}{t'^5}$$, then we choose $$t$$ such that $$a=t'^3$$, hence $$a'=1$$. We show $$(a', b', c') \in \mathscr{Z}(S)$$. Subsitution gives:

$$
\begin{align*}
     1-b'^3&=0 \\
     1-c'^3&=0 \\
     b'^5-c'^4&=0 \\
\end{align*}
$$

So:

$$
\begin{align*}
     b'^3&=1 \\
     c'^3&=1 \\
     b'^5&=c'^4 \\
\end{align*}
$$

$$
\begin{align*}
     b'^2&=c'\\
\end{align*}
$$

So: 

$$
\begin{align*}
     a'&=b'^3\\
     b'&=b'^4 \\
     c'&=b'^5 \\
\end{align*}
$$

So:

$$
\begin{align*}
     (a, b, c) &= (t'^3a', t'^4b', t'^5c') \\
     &= (t'^3b'^3, t'^4b'^4, t'^5b'^5 ) \\
\end{align*}
$$

Then we choose $$t=t'b'$$, so all zeroes are of the form $$(t^3, t^4, t^5)$$.

Now we determine the components of $$\mathscr{Z}(x^4-y^3, x^5-z^3)$$.

We write these zeroes as $$(a^3, b^4, c^5)$$. Then:

$$
\begin{align*}
     (b^4)^3&=a^{12}\\
     (c^5)^3&=a^{15}\\
\end{align*}
$$

So:

$$
\begin{align*}
          (b^4)^3&=a^{12} = (a^4)^3\\
\end{align*}
$$

Let $$g$$ generate the subgroup of $$k^*$$ determined by $$x^3-1=0$$. Then:

$$
\begin{align*}
          b^4&=a^4 \vee\\
          b^4&=ga^4 \vee\\
          b^4&=g^2a^4 \\
\end{align*}
$$

In addition:

$$
\begin{align*}
          (c^5)^3&=a^{3}(b^4)^3 = (ab^4)^3\\
\end{align*}
$$

$$
\begin{align*}
          c^5&=ab^4 \vee\\
          c^5&=gab^4 \vee\\
          c^5&=g^2ab^4 \\
\end{align*}
$$

Since these two roots can be combined in any from, there are six components of the forms: $$(a^3, g^ia^4, g^ja^5), 0 \leq i \leq 2, 0 \leq j \leq 2$$


## Exercise 1.9

Factoring the given polynomials yields $$y^4-x^6 = (y^2+x^3)(y^2-x^3)$$ and $$y^3-xy^2-yx^3+x^4=(x-y)(x^3-y^2)$$

This means that the set $$x^3=y^2$$ is one of the irreducible components. Then the other component has $$x=y$$ and $$y^2=-x^3$$, so $$x=y=-1$$ is the other component ($$x=y=0$$ is already included in the other component).

## Exercise 1.10

(i): The irreducible components of $$\mathscr{Z}(f)$$ are the zero serts of the factors of $$f$$.

(ii): Suppose $$\mathscr{Z}(f)$$ has an inifinite closed set, $$X \subsetneq \mathscr{Z}$$. Then there exists a polynomial $$g \in k[x,y]$$, such that $$\mathscr{Z}(f) 
\cap \mathscr{Z}(g) = X$$. Then intuitively, it has to divide $$f$$. Intuition could be hardened by a dimension argument (to come later)

(iii): The closed sets $$\mathscr{Z}(x^2+y^2-1) \cup \{0, 0\}$$ and $$\mathscr{Z}(x^2+y^2-1) \cup \{42, 42\}$$ are reducible, but the intersection is irreducible (just the circle).

## Exercise 1.11

If $$R$$ is a domain, we apply 1.27 to its field of fractions and the result follows.

For $$R$$ a commutative ring, we consider $$R'=\mathbb{Z}[x_1, x_2, \ldots, x_{m^2}]$$ and the homomorphism defined by mapping $$x_i \to a_{i}$$, where $$a_i$$ is the $$i$$-th coefficient of the matrix (lexicographically ordered). Then, we define $$A' \in M_m(R')$$ to have $$x_i$$ as its $$i$$-th coefficient. By 1.27, we obtain $$P_{A'}(A') = 0$$. Since the homomorphism respects the polynomial, applying it yields $$P_A(A)=0$$

## Exercise A.1.8 

We consider the chain of ideals $$I_n = \langle \{xy^i: 1 \leq i \leq n\} \rangle$$. 
A basis for $$I_n$$ is $$\{ xy^j: 1 \leq j \leq n\} \cup \{x^iy^j: i \geq 2, j \geq 1\}$$. Monomials with just $$x$$ clearly are not in $$I_n$$, multiplication with any element of $$R$$ with a factor $$y$$ needs to be with a monomial containing $$x$$ as well, and arbitrary monomials can be constructed this way. Therefore, $$I_n \subsetneq I_{n+1}$$, so the chain is non-stationary.

## Exercise A.1.9

 Let $$\sqrt{I}$$ be finitely generated by $$m$$ generators $$\{g_i: 1 \leq i \leq m\}$$. Let $$M_i$$ be such that $$g_i^{M_i} \in I$$. We define $$M=\max\{M_i: 1 \leq i \leq m\}$$. We claim that $$N=kM+1$$ satisfies $$\sqrt{I}^N \subset I$$.

 Let $$a \in \sqrt{I}$$. Then $$a = c_ig_i$$ for some coefficients $$c_i \in R$$

 Then, by the multinomial theorem:

   $$
\begin{align*}
          a^n &= (c_1g_1 + c_2g_2  + \cdots + c_mg_m)^n \\
 &= \sum_{k_1+k_2+\cdots+k_m=n} {n \choose k_1, k_2, \ldots, k_m}
  \prod_{t=1}^m (c_tg_t)^{k_t} \\
   &= \sum_{k_1+k_2+\cdots+k_m=n} {n \choose k_1, k_2, \ldots, k_m}
  \prod_{t=1}^m c_t^{k_t}g_t^{k_t} \\
\end{align*}
 $$

By a pidgeonhole argument it follows that there in each term of the sum, there is a $$t$$ such that $$k_t \geq M_t$$, so $$g_t^{k_t} \in I$$. So the sum is the form $$\sum_j r_jg_t^{k_t}$$, hence, $$a^n \in I$$, so $$\sqrt{I}^N \subset I$$.


Since in a noetherian ring, all ideals are finitely generated, so is $$\sqrt{I}$$ for any ideal $$I$$, so we can apply this result.

Suppose $$\sqrt{I}=\sqrt{J}$$ for ideals $$I, J$$. Choose $$N_1$$ such that $$\sqrt{J}^{N_1} \subset J$$. Note that $$I \subset \sqrt{I}$$, so $$I^{N_1} \subset \sqrt{I}^{N_1} = \sqrt{J}^{N_1} \subset J$$. By symmetry, we can obtain $$N_2$$ such that $$J^{N_2} \subset I$$. $$N = \max\{N_1, N_2\}$$ satisifies both, since choosing a higher exponent only makes the set smaller. 

Suppose we have an $$N$$ such that $$I^N \subset J, J^N \subset I$$. Note that this implies $$I \subset \sqrt{J}$$. There exists an $$N_1$$ such that $$\sqrt{I}^{N_1} \subset I$$. Let $$i \in \sqrt{I}$$, then $$i^{N_1} \in I$$, so $$i^{N_1} \in \sqrt{J}$$. Hence, there exists $$m$$ such that $$(i^N_1)^m \in J$$. So $$i^{N_1m} \in J$$, so $$i \in \sqrt{J}$$. Therefore $$\sqrt{I} \subset \sqrt{J}$$. A symmetrical argument gives the other inclusion and hence the equality $$\sqrt{I} = \sqrt{J}$$ 







