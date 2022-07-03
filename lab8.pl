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
insertWord(Word,Tree,TempTree), 
createTree(TempTree,NewTree). 
createTree(Tree,Tree).
%.......................................insert
insertWord(Word,empty,tree(Word,empty,empty)):-!.
insertWord(Word,tree(Data,Left,Right),tree(Data,NewLeft,Right)):-
Word < Data,!, 
insertWord(Word,Left,NewLeft). 
insertWord(Word,tree(Data,Left,Right),
tree(Data,Left,NewRight)):- 
insertWord(Word,Right,NewRight). 
%........................................ display
displayTree(empty).
displayTree(tree(Data,Left,Right)):-
displayTree(Left), 
write(Data), 
displayTree(Right). 
%......................................... count
countT(empty,0):- !.
countT(tree(_, Left, Right), C):-
countT(Left,C1), 
countT(Right,C2), 
C is C1 + C2 +1.


