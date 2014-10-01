︠90d53e54-0251-45b9-a7a2-0542d2ad4d26is︠
%md 
##The group $\mathbb{Z}_8$

Another 8-element group we have seen is the abelian group $\mathbb{Z}_8$ of (congruence classes of) integers modulo 8.
︡eaaf86d3-506c-4f44-8236-926da5f5e5a1︡{"md":"##The group $\\mathbb{Z}_8$\n\nAnother 8-element group we have seen is the abelian group $\\mathbb{Z}_8$ of (congruence classes of) integers modulo 8.\n"}︡
︠06ab0a59-3c5c-47c3-8921-f04f4ae491c1︠
G = AdditiveAbelianGroup([8])
G.list()

︠f71f4f9a-35d8-4ef9-953b-bdeb2bc9f143i︠
%md This is an abelian group, as we can readily verify.
︡8ae9dd60-e555-4902-856b-975f7667140a︡{"md":"This is an abelian group, as we can readily verify."}︡

︠5afff61f-ed85-4bfa-a462-e40ea7d7a277︠
G.is_abelian()
︠d6d3d245-f744-4839-a7cb-53f770f2c235i︠
%md Therefore, it is immediately apparent that this is not the same group as the (nonabelian) dihedral group on 4 letters.
︡0d45c3d0-c0a5-4731-930a-b02c8ca41469︡{"md":"Therefore, it is immediately apparent that this is not the same group as the (nonabelian) dihedral group on 4 letters."}︡
︠49db9858-2643-4470-bf54-34a7d2f37912︠
G.is_cyclic()
︠2aaab052-fd44-40be-b526-91b399fee9ddi︠
%md 
##Twelve Element Groups
︡0c808599-1ca3-4633-b8dc-aae0ebbb0a27︡{"md":"##Twelve Element Groups\n"}︡
︠649808bc-31ed-4c78-85e6-ddece75761e3i︠
%md To find out how many groups there are with a certain number of elements (say, twelve) we can query the GAP SmallGroups Library.
︡e0ea1f3b-f858-4a1f-82f2-d33a544fb3b7︡{"md":"To find out how many groups there are with a certain number of elements (say, twelve) we can query the GAP SmallGroups Library."}︡
︠9c85365a-f5d5-4f51-afe6-245621e58733︠
%gap
NumberSmallGroups(12)
︠6f48c41f-43b8-47a5-ab64-e9bad0330d8ei︠
%md So there are five distinct groups with 12 elements.  Let's print their "structure descriptions."
︡b0c451b3-078d-4b96-a493-5358820eee36︡{"md":"So there are five distinct groups with 12 elements.  Let's print their \"structure descriptions.\""}︡
︠9bea5b3c-ff3b-464e-9cc3-9e4606fa1479︠
%gap
for k in [1..5] do
    Print(StructureDescription(SmallGroup(12,k)), "\n");
od;
︠e994df1e-348b-49da-ae15-b52ccd157db0i︠
%md This may not mean a whole lot to us right now, but we can recognize a few of these groups.  The notation C12 means the cyclic group of size 12, while C6 x C2 means the direct product of the cyclic group C6 with the cyclic group C2.
︡1b3892e8-87a4-40fd-b0d5-6c2a9a8d56b5︡{"md":"This may not mean a whole lot to us right now, but we can recognize a few of these groups.  The notation C12 means the cyclic group of size 12, while C6 x C2 means the direct product of the cyclic group C6 with the cyclic group C2."}︡

︠9cc96f1b-817f-460c-b25f-97bccbf1573d︠









