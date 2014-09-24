︠90d53e54-0251-45b9-a7a2-0542d2ad4d26is︠
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
︠f9e16dd9-cd4d-4fed-8806-4594339d4672is︠
%md 
##The dihedral group in Sage

Sage has a function which returns the dihedral group which is called as follows:

︡8be4b3d9-c2a1-4df7-8b2b-6c2bef1fef30︡{"md":"##The dihedral group in Sage\n\nSage has a function which returns the dihedral group which is called as follows:\n\n"}︡
︠b090221a-2899-4401-b185-f8ee7c43eed3s︠
G = DihedralGroup(4)
︡438a4444-c54b-49fc-aaa7-8e88c679fed1︡
︠030536d9-7e57-4e00-a0fe-7f6795811402is︠
%md We can list the elements of the group by calling its list method:
︡39002591-6e2e-458a-904a-2c4ed028bdb9︡{"md":"We can list the elements of the group by calling its list method:"}︡
︠6552bce3-b303-4066-a20f-3489e9096737os︠
G.list()

︡e3aab781-65a1-463c-a224-474a9b2a8193︡{"stdout":"[(), (2,4), (1,2)(3,4), (1,2,3,4), (1,3), (1,3)(2,4), (1,4,3,2), (1,4)(2,3)]\n"}︡
︠a7ef6cc0-b14e-4b94-bc50-5e9077052f79is︠
%md We can even get Sage to print out the group's Cayley table:
︡a430574a-5a11-47eb-ad33-d552c8bb34d2︡{"md":"We can even get Sage to print out the group's Cayley table:"}︡
︠4d0d3cec-c3e8-46a6-b565-cb13e1449d3bos︠
G.cayley_table()
︡0836b88e-1aac-4dcd-99ac-0a1fae388404︡{"stdout":"*  a b c d e f g h\n +----------------\na| a b c d e f g h\nb| b a d c f e h g\nc| c g a e d h b f\nd| d h b f c g a e\ne| e f g h a b c d\nf| f e h g b a d c\ng| g c e a h d f b\nh| h d f b g c e a\n\n"}︡
︠f0b68d8a-dafb-408d-b9d9-fef70f2eda1fis︠
%md However, this is not very informative because Sage has chosen letters a through h as the names of the group elements, and it's hard to tell which element each letter represents.  So, let's tell Sage to use the permutations as the names:
︡c4bbce27-ff5d-447a-82c3-ad7e0249d846︡{"md":"However, this is not very informative because Sage has chosen letters a through h as the names of the group elements, and it's hard to tell which element each letter represents.  So, let's tell Sage to use the permutations as the names:"}︡

︠6691672a-91db-4ab0-be41-f1daf2261f60so︠
G.cayley_table(names='elements')

︡f09743ee-0e71-4eab-a2f9-0dba56ec4837︡{"stdout":"         *          ()      (2,4) (1,2)(3,4)  (1,2,3,4)      (1,3) (1,3)(2,4)  (1,4,3,2) (1,4)(2,3)\n          +----------------------------------------------------------------------------------------\n        ()|         ()      (2,4) (1,2)(3,4)  (1,2,3,4)      (1,3) (1,3)(2,4)  (1,4,3,2) (1,4)(2,3)\n     (2,4)|      (2,4)         ()  (1,2,3,4) (1,2)(3,4) (1,3)(2,4)      (1,3) (1,4)(2,3)  (1,4,3,2)\n(1,2)(3,4)| (1,2)(3,4)  (1,4,3,2)         ()      (1,3)  (1,2,3,4) (1,4)(2,3)      (2,4) (1,3)(2,4)\n (1,2,3,4)|  (1,2,3,4) (1,4)(2,3)      (2,4) (1,3)(2,4) (1,2)(3,4)  (1,4,3,2)         ()      (1,3)\n     (1,3)|      (1,3) (1,3)(2,4)  (1,4,3,2) (1,4)(2,3)         ()      (2,4) (1,2)(3,4)  (1,2,3,4)\n(1,3)(2,4)| (1,3)(2,4)      (1,3) (1,4)(2,3)  (1,4,3,2)      (2,4)         ()  (1,2,3,4) (1,2)(3,4)\n (1,4,3,2)|  (1,4,3,2) (1,2)(3,4)      (1,3)         () (1,4)(2,3)  (1,2,3,4) (1,3)(2,4)      (2,4)\n(1,4)(2,3)| (1,4)(2,3)  (1,2,3,4) (1,3)(2,4)      (2,4)  (1,4,3,2) (1,2)(3,4)      (1,3)         ()\n\n"}︡
︠1ee5fedf-41aa-4be3-963c-30dd20860d70os︠
G.cayley_table(names=['e', 'mu1', 'mu2', 'rho1', 'mu3', 'rho2', 'rho3', 'mu4'])
︡326b6bd5-fe3c-400a-bde5-ee3a8e2a9992︡{"stdout":"   *     e  mu1  mu2 rho1  mu3 rho2 rho3  mu4\n    +----------------------------------------\n   e|    e  mu1  mu2 rho1  mu3 rho2 rho3  mu4\n mu1|  mu1    e rho1  mu2 rho2  mu3  mu4 rho3\n mu2|  mu2 rho3    e  mu3 rho1  mu4  mu1 rho2\nrho1| rho1  mu4  mu1 rho2  mu2 rho3    e  mu3\n mu3|  mu3 rho2 rho3  mu4    e  mu1  mu2 rho1\nrho2| rho2  mu3  mu4 rho3  mu1    e rho1  mu2\nrho3| rho3  mu2  mu3    e  mu4 rho1 rho2  mu1\n mu4|  mu4 rho1 rho2  mu1 rho3  mu2  mu3    e\n\n"}︡
︠bc4882ba-c241-4d16-b0c8-fb794a0187bdis︠
%md 
##The group $\mathbb{Z}_8$

Another 8-element group we have seen is the abelian group $\mathbb{Z}_8$ of (congruence classes of) integers modulo 8.
︡979f6513-3995-43e3-91d3-b84fc327ac3b︡{"md":"##The group $\\mathbb{Z}_8$\n\nAnother 8-element group we have seen is the abelian group $\\mathbb{Z}_8$ of (congruence classes of) integers modulo 8.\n"}︡
︠06ab0a59-3c5c-47c3-8921-f04f4ae491c1s︠
G = AdditiveAbelianGroup([8])
G.list()
︡b61bbbff-6f89-4113-821b-e1b51e4297b9︡{"stdout":"[(0), (1), (2), (3), (4), (5), (6), (7)]\n"}︡
︠f71f4f9a-35d8-4ef9-953b-bdeb2bc9f143is︠
%md This is an abelian group, as we can readily verify.
︡8ae9dd60-e555-4902-856b-975f7667140a︡{"md":"This is an abelian group, as we can readily verify."}︡

︠5afff61f-ed85-4bfa-a462-e40ea7d7a277︠
G.is_abelian()
︡8e767100-6f25-4aaf-b3ac-168a80283136︡{"stdout":"True\n"}︡
︠d6d3d245-f744-4839-a7cb-53f770f2c235is︠
%md Therefore, it is immediately apparent that this is not the same group as the (nonabelian) dihedral group on 4 letters.
︡0d45c3d0-c0a5-4731-930a-b02c8ca41469︡{"md":"Therefore, it is immediately apparent that this is not the same group as the (nonabelian) dihedral group on 4 letters."}︡
︠49db9858-2643-4470-bf54-34a7d2f37912s︠
G.is_cyclic()
︡b866bccf-43a5-4970-ae38-ab76c95bc799︡{"stdout":"True\n"}︡
︠2aaab052-fd44-40be-b526-91b399fee9ddi︠
%md 
##Twelve Element Groups
︡0c808599-1ca3-4633-b8dc-aae0ebbb0a27︡{"md":"##Twelve Element Groups\n"}︡
︠649808bc-31ed-4c78-85e6-ddece75761e3is︠
%md To find out how many groups there are with a certain number of elements (say, twelve) we can query the GAP SmallGroups Library.
︡e0ea1f3b-f858-4a1f-82f2-d33a544fb3b7︡{"md":"To find out how many groups there are with a certain number of elements (say, twelve) we can query the GAP SmallGroups Library."}︡
︠9c85365a-f5d5-4f51-afe6-245621e58733s︠
%gap
NumberSmallGroups(12)
︡c2def64b-ca04-41ec-98d8-e0b7d5b419c1︡{"stdout":"5"}︡
︠6f48c41f-43b8-47a5-ab64-e9bad0330d8eis︠
%md So there are five distinct groups with 12 elements.  Let's print their "structure descriptions."
︡b0c451b3-078d-4b96-a493-5358820eee36︡{"md":"So there are five distinct groups with 12 elements.  Let's print their \"structure descriptions.\""}︡
︠9bea5b3c-ff3b-464e-9cc3-9e4606fa1479s︠
%gap
for k in [1..5] do
    Print(StructureDescription(SmallGroup(12,k)), "\n");
od;
︡8e3f95c0-4de9-43d7-969f-3d200aac9bb7︡{"stdout":"C3 : C4\nC12\nA4\nD12\nC6 x C2"}︡
︠e994df1e-348b-49da-ae15-b52ccd157db0i︠
%md This may not mean a whole lot to us right now, but we can recognize a few of these groups.  The notation C12 means the cyclic group of size 12, while C6 x C2 means the direct product of the cyclic group C6 with the cyclic group C2.
︡1b3892e8-87a4-40fd-b0d5-6c2a9a8d56b5︡{"md":"This may not mean a whole lot to us right now, but we can recognize a few of these groups.  The notation C12 means the cyclic group of size 12, while C6 x C2 means the direct product of the cyclic group C6 with the cyclic group C2."}︡

︠9cc96f1b-817f-460c-b25f-97bccbf1573d︠









