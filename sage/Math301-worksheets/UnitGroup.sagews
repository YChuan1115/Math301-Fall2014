︠77dfd867-9994-4110-a7cb-865d6799d3d9is︠
%md
Here we show how to use GAP to generate a "structure description" of all unit groups $U(n)$ for $2\leq n \leq 20$.
︡5bec3aaa-d01f-4939-85d2-2cd0a2e2412a︡{"md":"Here we show how to use GAP to generate a \"structure description\" of all unit groups $U(n)$ for $2\\leq n \\leq 20$.\n"}︡
︠2583ab2f-cca0-484b-b027-b4b83c54f2ee︠
%gap
for k in [2..20] do
    G:= Units(Integers mod k); 
    Print("U(",k,"): ", StructureDescription(G), "\n"); 
od;

︡40921664-a632-4678-8bdd-b315fd5e001d︡{"stdout":"U(2): 1\nU(3): C2\nU(4): C2\nU(5): C4\nU(6): C2\nU(7): C6\nU(8): C2 x C2\nU(9): C6\nU(10): C4\nU(11): C10\nU(12): C2 x C2\nU(13): C12\nU(14): C6\nU(15): C4 x C2\nU(16): C4 x C2\nU(17): C16\nU(18): C6\nU(19): C18\nU(20): C4 x C2"}︡
︠eeeeb4bd-c36e-4bad-b7d0-b2e8fd10ee2b︠









