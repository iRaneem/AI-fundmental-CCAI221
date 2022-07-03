menuLoop(Tree):-
write(" Code Operation "),nl, 
write("1 update the word tree"),nl, 
write("2 Display the word tree"),nl, 
write("3 count the word tree"),nl, 
write("4 Exit the program"),nl, 
write("please enter the desire operation code: "), 
read(SChoice),atom_string(SChoice,CChoice), 
string_upper(CChoice,Choice),write(Choice),nl, 
Choice \= "4"-> 
action(Choice,Tree,NewTree), 
menuLoop(NewTree);nl. 
%.......................................menu choise
action("1",Tree,NewTree):-
write("Enter words [use STOP to end]: "),nl, 
createTree(Tree,NewTree). 
action("2",Tree,Tree):-
write("Tree: "), 
displayTree(Tree),nl.
action("3",Tree,Tree):-
countT(Tree,C), 
write("Number of Nodes in Tree: "), 
write(C),nl. 
%.......................................create
createTree(Tree,NewTree):-
read(RWord), atom_string(RWord,Word), 
Word \= "stop", ! , 
write_a_list([apple,banan,kiwi,orange]).
B) length_of_list([(apple,5.2),(orange,3.25),(banan,5.50),(kiwi,7.75),(apple,7.95)],F).
C)
1- member((apple,X),[(apple,5.2),(orange,3.25),(banan,5.50),(kiwi,7.75),(apple,7.95)]).
2- member((X,_),[(apple,5.2),(orange,3.25),(banan,5.50),(kiwi,7.75),(apple,7.95)]).
3- member((kiwi,X),[(apple,5.2),(orange,3.25),(banan,5.50),(kiwi,7.75),(apple,7.95)]).
4- member((X,Y),[(apple,5.2),(orange,3.25),(banan,5.50),(kiwi,7.75),(apple,7.95)]),Y>4.


