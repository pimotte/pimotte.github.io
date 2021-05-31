---
layout: post
title: "Algebraic geometry 2"
---


## Exercise 2.1

We choose $$X = \mathbb{A}^2$$. Then we choose $$\varphi: (t_1, t_2) \to (t_1, t_1t_2)$$. By Lemma 2.13, this is a morphism. 

For $$t_1=0, \varphi(0, t_2) = (0, 0)$$. For $$t_1 \neq 0, \varphi$$ takes exactly the values $$\{(a,b) \in \mathbb{A}^2: a \neq 0 \}$$.


## Exercise 2.2

(i): Let $$[U_1, f_1], [U_2, f_2] \in \mathscr{O}_{Y,Z}$$. Then $$k_1[U_1, f_1] + k_2[U_2, f_2] = [U_{12}, k_1f_1 + k_2f_2]$$.
To show this is an element of $$\mathscr{O}_{Y,Z}$$ we need to show $$U_{12} \cap Z \neq \emptyset$$. Note that $$U_{12}$$ is a non-empty open set in $$Y$$, hence it is dense, so it's dense in $$\overline{Z}$$, and $$Z$$ is open in $$\overline{Z}$$, so it intersects $$U_{12}$$.

The unique maximal ideal is $$I = \{[U, f] \in \mathscr{O}_{Y, Z} : f(z) = 0 \forall z \in Z \cap U\}$$. This is clearly an ideal. Let $$[U, g] \in \mathscr{O}_{Y,Z} \setminus I$$, then it has an inverse $$[U \setminus g^{-1}(0), \frac{1}{g}]$$, so this is maximal. 

(ii): The inclusion map $$\mathscr{O}_{Y,Z} \to \mathscr{O}_{Y,\overline{Z}}$$ is injective: If $$[U, f] = 0$$ on $$Z$$, that extends to $$\overline{Z}$$ by Lemma 2.2. Then, to prove the surjectivity, we need to show that $$U \cap \overline{Z} \neq \emptyset$$ then $$U \cap Z \neq \emptyset$$. This follows from the fact that $$$U \cap \overline{Z}$$ is open and dense in $$\overline{Z}$$, so it has non-empty intersection with $$Z$$.

(iii): The homomorphism $$A(Y) \to \mathscr{O}_{Y,Z}$$ has exactly $$\mathfrak{p}$$ as kernel by definition of $$\mathscr{O}_{Y,Z}$$. It is surjective, as the homomorphism to $$\mathscr{O}(Y)$$ is surjective. Hence $$A(Y)_{\mathfrak{p}} \simeq \mathscr{O}_{Y,Z}$$

## Exercise 2.3

This subgroup is of the form:

$$
\begin{pmatrix}
1&2\\
1&1\\
\end{pmatrix}
\begin{pmatrix}
a&b\\
0&c\\
\end{pmatrix}
\begin{pmatrix}
1&2\\
1&1\\
\end{pmatrix}^{-1}
=
\begin{pmatrix}
-a+b+2c& 2a-b-2c\\
-a+b+c&2a-b-c\\
\end{pmatrix}
$$

Identifying with $$k[x_{11}, x_{12}, x_{21}, x_{22}]$$ we observe that $$x_{11} + x_{12} - x_{21} - x_{22} = 0$$ is a necessary condition. 

If we have this condition, we can write any matrix in the above form by choosing $$a= x_{21} + x_{22}, b = 3x_{21}+x_{22}-x_{11}, c = x_{11}-x_{21}$$, hence the ideal is generated by this polynomial. 

## Exercise 2.4

(i): TODO: Is this even true? We can just send everything to 0, then $$f^{-1}(\mathfrak{m}_2)=R_1 \subsetneq \mathfrak{m}_1$$

(ii): The embedding of $$\mathscr{O}_{Y,Z} \to \mathscr{O}_{Y,P}$$, which is clearly not a local ring homomorphism per exercise 2.2(iii).

(iii): We have $$\varphi^*: f \to f \circ \varphi$$. In this case $$\mathfrak{m}_2$$ are the regular functions that are $$0$$ on $$Q$$ and $$\mathfrak{m}_1$$ are the regular functions that are $$0$$ at $$P$$.

To prove: $$\mathfrak{m}_1 \subseteq (\varphi^*)^{-1}(\mathfrak{m}_2)$$.

Let $$g \in \mathfrak{m}_1$$, $$q \in Q$$
We show that $$g' = g \circ \varphi = \phi^*(g) \in \mathfrak{m}_2$$

$$
\begin{align*}
          (g \circ \varphi)(P) &= (g(\varphi(P))) \\
          &= (g(q)) = 0 \\ 
\end{align*}
$$

where $$q \in Q$$, so $$g'$$ is zero at $$P$$, so in $$\mathfrak{m}_2$$.
