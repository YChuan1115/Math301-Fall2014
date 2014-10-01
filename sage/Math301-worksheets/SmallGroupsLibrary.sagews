︠e8a40236-987e-400d-ad03-a1c18ba57861is︠
%md
##Twelve Element Groups
︡cfb41efe-5909-4b62-b7d3-3ceb09f835a5︡{"md":"##Twelve Element Groups\n"}︡
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









