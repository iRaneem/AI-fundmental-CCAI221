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
studies(sarah,physics).
studies(sarah,math).
studies(jim,physics).
studies(jim,math).
studies(jim,prolog).
studies(jim,java).
studies(rose,biology).
studies(rose,history).
studies(peter,french).
studies(alice,math).
studies(alice,java).
studies(mark,biology)
classmate(S1,S2):-
studies(S1,Course),studies(S2,Course),S1\=S2.
sciencetent(S):-
studies(S,math),studies(S,physics).
computersciencetent(S):-
studies(S,prolog),studies(S,java),sciencetent(S).
active(S):-
studies(S,Course),Course\=french.

