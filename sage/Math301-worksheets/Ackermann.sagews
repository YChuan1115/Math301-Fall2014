
︠bcfe42c9-7991-423b-9e2d-3c2b5d66f41di︠
%md
##Sage Extra Credit Assignment 1

###Ackerman's Function

Let ${\mathbb N}^0 = {\mathbb N} \cup \{ 0 \}$. 

Ackermann's function is the function $A :{\mathbb N}^0 \times {\mathbb N}^0 \rightarrow {\mathbb N}^0$ defined by the following equations:
\begin{align*}
A(0, y) & = y + 1, \\
A(x + 1, 0) & = A(x, 1), \\
A(x + 1, y + 1) & = A(x, A(x + 1, y)).
\end{align*}

1. Use this definition to compute $A(3, 1)$.  
2. Write a program to evaluate Ackermann's function.  
3. Modify the  program to count the number of statements executed in the program when Ackermann's function is evaluated.  
4. How many statements are executed in the evaluation of $A(4, 1)$?  
5. What about $A(5, 1)$?

**Solution to part 2:**

︡005269c4-f04b-4b62-a7ba-c1aabdfed173︡{"md":"##Sage Extra Credit Assignment 1\n\n###Ackerman's Function\n\nLet ${\\mathbb N}^0 = {\\mathbb N} \\cup \\{ 0 \\}$. \n\nAckermann's function is the function $A :{\\mathbb N}^0 \\times {\\mathbb N}^0 \\rightarrow {\\mathbb N}^0$ defined by the following equations:\n\\begin{align*}\nA(0, y) & = y + 1, \\\\\nA(x + 1, 0) & = A(x, 1), \\\\\nA(x + 1, y + 1) & = A(x, A(x + 1, y)).\n\\end{align*}\n\n1. Use this definition to compute $A(3, 1)$.  \n2. Write a program to evaluate Ackermann's function.  \n3. Modify the  program to count the number of statements executed in the program when Ackermann's function is evaluated.  \n4. How many statements are executed in the evaluation of $A(4, 1)$?  \n5. What about $A(5, 1)$?\n\n**Solution to part 2:**\n\n"}︡
︠e3cabcdc-9135-4260-be4d-9fff110cf96e︠
def A(x, y):
    if (x==0):
        return y+1
    if (y==0):
        return A(x-1,1)
    return A(x-1,A(x,y-1))

A(3,1)
︡daa2d989-e078-4142-8e7f-096147b2c6b9︡{"stdout":"13\n"}︡
︠7288ef1d-b923-4c6c-83a9-42e09c476555︠









