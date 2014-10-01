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


︡60737303-dd9e-4b82-8ed1-d53b0a4e92c2︡{"md":"# The dihedral group\n\nLet's begin with the group of symmetries of a square. \n\nThe technical name for this group is the *dihedral group on 4 letters*, which is sometimes denoted by $D_4$.  \n\n**Remarks**\n\n1. Here \"letters\" refer to the points that are moved under the rigid motion, in this case, the vertices of the square. Below, we will label the vertices of the square with numbers 1, 2, 3, 4, so for us the set of letters will be $\\{1,2,3,4\\}$.\n\n2. To the frustration of many an undergraduate student, this group is also denoted by $D_8$.\n\n3. Recall, you found the elements and Cayley table for this group of symmetries in Homework 3.\n\n**Elements of the dihedral group**\nThe dihedral group on the set $\\{1, 2, 3, 4\\}$ has 8 elements. To identify the elements, imagine a square with vertices labelled counter-clockwise: 1 in the south-west corner, 2 in the south-east corner, 3 in the north-east corner, and 4 in the north-west corner. The result looks something like this:\n$$\\begin{bmatrix} 4 & 3 \\\\ 1 & 2 \\end{bmatrix}$$\n\n1. The identity element (leaves all four corners of the square fixed)\n$e = \\begin{pmatrix} 1 & 2 & 3 & 4\\\\ 1 & 2 & 3 & 4 \\end{pmatrix}$\n\n2. Reflection across a 45 degree line\n$\\mu_1 = \\begin{pmatrix}1 & 2 & 3 &4\\\\1 & 4 & 3 &2\\end{pmatrix}$\n\n3. Reflection across a vertical line\n$\\mu_2 = \\begin{pmatrix}1 & 2 & 3 &4\\\\2 & 1 & 4 &3\\end{pmatrix}$\n\n4. Rotation by 90 degrees\n$\\rho_1 = \\begin{pmatrix}1 & 2 & 3 &4\\\\2 & 3 & 4 &1\\end{pmatrix}$\n\n5. Reflection across a -45 degree line\n$\\mu_3 = \\begin{pmatrix}1 & 2 & 3 &4\\\\3 & 2 & 1 &4\\end{pmatrix}$\n\n6. Rotation by 180 degrees\n$\\rho_2 = \\begin{pmatrix}1 & 2 & 3 &4\\\\3 & 4 & 1 &2\\end{pmatrix}$\n\n7. Rotation by 270 degrees\n$\\rho_3 = \\begin{pmatrix}1 & 2 & 3 &4\\\\4 & 1 & 2 &3\\end{pmatrix}$\n\n8. Reflection across a horizontal line\n$\\mu_4 = \\begin{pmatrix}1 & 2 & 3 &4\\\\4 & 3 & 2 &1\\end{pmatrix}$\n\n\n"}︡
︠f9e16dd9-cd4d-4fed-8806-4594339d4672i︠
%md 
##The dihedral group in Sage

Sage has a function which returns the dihedral group which is called as follows:

︡8be4b3d9-c2a1-4df7-8b2b-6c2bef1fef30︡{"md":"##The dihedral group in Sage\n\nSage has a function which returns the dihedral group which is called as follows:\n\n"}︡
︠b090221a-2899-4401-b185-f8ee7c43eed3︠
G = DihedralGroup(4)
︡3900ab90-c566-4383-90d2-6391d984e332︡
︠030536d9-7e57-4e00-a0fe-7f6795811402i︠
%md We can list the elements of the group by calling its list method:
︡39002591-6e2e-458a-904a-2c4ed028bdb9︡{"md":"We can list the elements of the group by calling its list method:"}︡
︠6552bce3-b303-4066-a20f-3489e9096737o︠
G.list()

︠a7ef6cc0-b14e-4b94-bc50-5e9077052f79i︠
%md We can even get Sage to print out the group's Cayley table:
︡a430574a-5a11-47eb-ad33-d552c8bb34d2︡{"md":"We can even get Sage to print out the group's Cayley table:"}︡

︠4d0d3cec-c3e8-46a6-b565-cb13e1449d3bo︠
G.cayley_table()
︠f0b68d8a-dafb-408d-b9d9-fef70f2eda1fi︠
%md However, this is not very informative because Sage has chosen letters a through h as the names of the group elements, and it's hard to tell which element each letter represents.  So, let's tell Sage to use the permutations as the names:
︡c4bbce27-ff5d-447a-82c3-ad7e0249d846︡{"md":"However, this is not very informative because Sage has chosen letters a through h as the names of the group elements, and it's hard to tell which element each letter represents.  So, let's tell Sage to use the permutations as the names:"}︡

︠6691672a-91db-4ab0-be41-f1daf2261f60o︠
G.cayley_table(names='elements')
︠1ee5fedf-41aa-4be3-963c-30dd20860d70o︠
G.cayley_table(names=['e', 'mu1', 'mu2', 'rho1', 'mu3', 'rho2', 'rho3', 'mu4'])
︠bc4882ba-c241-4d16-b0c8-fb794a0187bdi︠
%md 
##The group $\mathbb{Z}_8$

Another 8-element group we have seen is the abelian group $\mathbb{Z}_8$ of (congruence classes of) integers modulo 8.
%md This is an abelian group, as we can readily verify.
%md Therefore, it is immediately apparent that this is not the same group as the (nonabelian) dihedral group on 4 letters.
%md 
##Twelve Element Groups
%md To find out how many groups there are with a certain number of elements (say, twelve) we can query the GAP SmallGroups Library.
%md So there are five distinct groups with 12 elements.  Let's print their "structure descriptions."
%md This may not mean a whole lot to us right now, but we can recognize a few of these groups.  The notation C12 means the cyclic group of size 12, while C6 x C2 means the direct product of the cyclic group C6 with the cyclic group C2.









