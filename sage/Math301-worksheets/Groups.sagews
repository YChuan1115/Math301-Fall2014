︠90d53e54-0251-45b9-a7a2-0542d2ad4d26i︠
%md 
# The dihedral group

Let's begin with the group of symmetries of a square. 

The technical name for this group is the *dihedral group on 4 letters*, which is sometimes denoted by $D_4$.  

**Remarks**

1. Here "letters" refer to the points that are moved under the rigid motion, in this case, the vertices of the square. Below, we will label the vertices of the square with numbers 1, 2, 3, 4, so for us the set of letters will be $\{1,2,3,4\}$.

2. To the frustration of many an undergraduate student, this group is also denoted by $D_8$.

3. Recall, you found the elements and Cayley table for this group of symmetries in Homework 3.

**Elements of the dihedral group**
The dihedral group on the set $\{1, 2, 3, 4\}$ has 8 elements. To identify the elements, imagine a square with vertices labelled counter-clockwise: 1 in the south-west corner, 2 in the south-east corner, 3 in the north-east corner, and 4 in the north-west corner. The result looks something like this:
$$\begin{bmatrix} 4 & 3 \\ 1 & 2 \end{bmatrix}$$

1. The identity element (leaves all four corners of the square fixed)
$e = \begin{pmatrix} 1 & 2 & 3 & 4\\ 1 & 2 & 3 & 4 \end{pmatrix}$

2. Reflection across a 45 degree line
$\mu_1 = \begin{pmatrix}1 & 2 & 3 &4\\1 & 4 & 3 &2\end{pmatrix}$

3. Reflection across a vertical line
$\mu_2 = \begin{pmatrix}1 & 2 & 3 &4\\2 & 1 & 4 &3\end{pmatrix}$

4. Rotation by 90 degrees
$\rho_1 = \begin{pmatrix}1 & 2 & 3 &4\\2 & 3 & 4 &1\end{pmatrix}$

5. Reflection across a -45 degree line
$\mu_3 = \begin{pmatrix}1 & 2 & 3 &4\\3 & 2 & 1 &4\end{pmatrix}$

6. Rotation by 180 degrees
$\rho_2 = \begin{pmatrix}1 & 2 & 3 &4\\3 & 4 & 1 &2\end{pmatrix}$

7. Rotation by 270 degrees
$\rho_3 = \begin{pmatrix}1 & 2 & 3 &4\\4 & 1 & 2 &3\end{pmatrix}$

8. Reflection across a horizontal line
$\mu_4 = \begin{pmatrix}1 & 2 & 3 &4\\4 & 3 & 2 &1\end{pmatrix}$


**The dihedral group in Sage**

Sage has a function which returns the dihedral group which is called as follows:
︡ec1ce6a8-9e62-4591-a50f-bb82c1a4408e︡{"md":"# The dihedral group\n\nLet's begin with the group of symmetries of a square. \n\nThe technical name for this group is the *dihedral group on 4 letters*, which is sometimes denoted by $D_4$.  \n\n**Remarks**\n\n1. Here \"letters\" refer to the points that are moved under the rigid motion, in this case, the vertices of the square. Below, we will label the vertices of the square with numbers 1, 2, 3, 4, so for us the set of letters will be $\\{1,2,3,4\\}$.\n\n2. To the frustration of many an undergraduate student, this group is also denoted by $D_8$.\n\n3. Recall, you found the elements and Cayley table for this group of symmetries in Homework 3.\n\n**Elements of the dihedral group**\nThe dihedral group on the set $\\{1, 2, 3, 4\\}$ has 8 elements. To identify the elements, imagine a square with vertices labelled counter-clockwise: 1 in the south-west corner, 2 in the south-east corner, 3 in the north-east corner, and 4 in the north-west corner. The result looks something like this:\n$$\\begin{bmatrix} 4 & 3 \\\\ 1 & 2 \\end{bmatrix}$$\n\n1. The identity element (leaves all four corners of the square fixed)\n$e = \\begin{pmatrix} 1 & 2 & 3 & 4\\\\ 1 & 2 & 3 & 4 \\end{pmatrix}$\n\n2. Reflection across a 45 degree line\n$\\mu_1 = \\begin{pmatrix}1 & 2 & 3 &4\\\\1 & 4 & 3 &2\\end{pmatrix}$\n\n3. Reflection across a vertical line\n$\\mu_2 = \\begin{pmatrix}1 & 2 & 3 &4\\\\2 & 1 & 4 &3\\end{pmatrix}$\n\n4. Rotation by 90 degrees\n$\\rho_1 = \\begin{pmatrix}1 & 2 & 3 &4\\\\2 & 3 & 4 &1\\end{pmatrix}$\n\n5. Reflection across a -45 degree line\n$\\mu_3 = \\begin{pmatrix}1 & 2 & 3 &4\\\\3 & 2 & 1 &4\\end{pmatrix}$\n\n6. Rotation by 180 degrees\n$\\rho_2 = \\begin{pmatrix}1 & 2 & 3 &4\\\\3 & 4 & 1 &2\\end{pmatrix}$\n\n7. Rotation by 270 degrees\n$\\rho_3 = \\begin{pmatrix}1 & 2 & 3 &4\\\\4 & 1 & 2 &3\\end{pmatrix}$\n\n8. Reflection across a horizontal line\n$\\mu_4 = \\begin{pmatrix}1 & 2 & 3 &4\\\\4 & 3 & 2 &1\\end{pmatrix}$\n\n\n**The dihedral group in Sage**\n\nSage has a function which returns the dihedral group which is called as follows:\n"}︡
︠b090221a-2899-4401-b185-f8ee7c43eed3︠
G = DihedralGroup(4)
︠030536d9-7e57-4e00-a0fe-7f6795811402is︠
%md We can list the elements of the group by calling its list method:
︡39002591-6e2e-458a-904a-2c4ed028bdb9︡{"md":"We can list the elements of the group by calling its list method:"}︡
︠6552bce3-b303-4066-a20f-3489e9096737s︠
G.list()
︡4db00b6f-e479-405a-bf0c-240ec9a07f13︡{"stdout":"[(), (2,4), (1,2)(3,4), (1,2,3,4), (1,3), (1,3)(2,4), (1,4,3,2), (1,4)(2,3)]\n"}︡
︠a7ef6cc0-b14e-4b94-bc50-5e9077052f79is︠
%md We can even get Sage to print out the group's Cayley table:
︡a430574a-5a11-47eb-ad33-d552c8bb34d2︡{"md":"We can even get Sage to print out the group's Cayley table:"}︡
︠4d0d3cec-c3e8-46a6-b565-cb13e1449d3bs︠
G.cayley_table()
︡4fdd4dd4-ac02-405e-9d2e-ead4a184e8e5︡{"stdout":"*  a b c d e f g h\n +----------------\na| a b c d e f g h\nb| b a d c f e h g\nc| c g a e d h b f\nd| d h b f c g a e\ne| e f g h a b c d\nf| f e h g b a d c\ng| g c e a h d f b\nh| h d f b g c e a\n\n"}︡
︠f0b68d8a-dafb-408d-b9d9-fef70f2eda1fis︠
%md However, this is not very informative because Sage has chosen letters a through h as the names of the group elements, and it's hard to tell which element each letter represents.  So, let's tell Sage to use the permutations as the names:
︡c4bbce27-ff5d-447a-82c3-ad7e0249d846︡{"md":"However, this is not very informative because Sage has chosen letters a through h as the names of the group elements, and it's hard to tell which element each letter represents.  So, let's tell Sage to use the permutations as the names:"}︡
︠6691672a-91db-4ab0-be41-f1daf2261f60s︠
G.cayley_table(names='elements')
︡5610959f-f92e-419c-a8e0-006b4095cc0d︡{"stdout":"         *          ()      (2,4) (1,2)(3,4)  (1,2,3,4)      (1,3) (1,3)(2,4)  (1,4,3,2) (1,4)(2,3)\n          +----------------------------------------------------------------------------------------\n        ()|         ()      (2,4) (1,2)(3,4)  (1,2,3,4)      (1,3) (1,3)(2,4)  (1,4,3,2) (1,4)(2,3)\n     (2,4)|      (2,4)         ()  (1,2,3,4) (1,2)(3,4) (1,3)(2,4)      (1,3) (1,4)(2,3)  (1,4,3,2)\n(1,2)(3,4)| (1,2)(3,4)  (1,4,3,2)         ()      (1,3)  (1,2,3,4) (1,4)(2,3)      (2,4) (1,3)(2,4)\n (1,2,3,4)|  (1,2,3,4) (1,4)(2,3)      (2,4) (1,3)(2,4) (1,2)(3,4)  (1,4,3,2)         ()      (1,3)\n     (1,3)|      (1,3) (1,3)(2,4)  (1,4,3,2) (1,4)(2,3)         ()      (2,4) (1,2)(3,4)  (1,2,3,4)\n(1,3)(2,4)| (1,3)(2,4)      (1,3) (1,4)(2,3)  (1,4,3,2)      (2,4)         ()  (1,2,3,4) (1,2)(3,4)\n (1,4,3,2)|  (1,4,3,2) (1,2)(3,4)      (1,3)         () (1,4)(2,3)  (1,2,3,4) (1,3)(2,4)      (2,4)\n(1,4)(2,3)| (1,4)(2,3)  (1,2,3,4) (1,3)(2,4)      (2,4)  (1,4,3,2) (1,2)(3,4)      (1,3)         ()\n\n"}︡
︠36d8e764-d889-43fa-970f-aaa400a23eb4is︠
%md This is fine, since we see that Sage labeled the elements in the same order that we did.  However, the table looks a bit messy.  Let's clean it up, as follows:
︡e5c33dc3-7244-47f1-a487-3013af7a1ead︡{"md":"This is fine, since we see that Sage labeled the elements in the same order that we did.  However, the table looks a bit messy.  Let's clean it up, as follows:"}︡
︠1ee5fedf-41aa-4be3-963c-30dd20860d70s︠
G.cayley_table(names=['e', 'mu1', 'mu2', 'rho1', 'mu3', 'rho2', 'rho3', 'mu4'])
︡4536f1f7-332e-4df4-af35-34185dcee7e5︡{"stdout":"   *     e  mu1  mu2 rho1  mu3 rho2 rho3  mu4\n    +----------------------------------------\n   e|    e  mu1  mu2 rho1  mu3 rho2 rho3  mu4\n mu1|  mu1    e rho1  mu2 rho2  mu3  mu4 rho3\n mu2|  mu2 rho3    e  mu3 rho1  mu4  mu1 rho2\nrho1| rho1  mu4  mu1 rho2  mu2 rho3    e  mu3\n mu3|  mu3 rho2 rho3  mu4    e  mu1  mu2 rho1\nrho2| rho2  mu3  mu4 rho3  mu1    e rho1  mu2\nrho3| rho3  mu2  mu3    e  mu4 rho1 rho2  mu1\n mu4|  mu4 rho1 rho2  mu1 rho3  mu2  mu3    e\n\n"}︡
︠2aaab052-fd44-40be-b526-91b399fee9dd︠









