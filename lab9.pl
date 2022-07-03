birthDate(person("amin","mohamad","khalid"),bdate(1,4,1960)).
birthDate(person("mohamd","amin","hosam"),bdate(11,5,1988)).
birthDate(person("abdo","mohamad","hatan"),bdate(11,7,1964)).
birthDate(person("ali","mohamad","badr"),bdate(1,6,1950)).
birthDate(person("suzan","antar","fahad"),bdate(1,4,1982)).
birthDate(person("Yuqi","idle","song"),bdate(25,9,1999)).
birthDate(person("raneem","saad","alomari"),bdate(14,9,2001)).
get_birth_thismonth:-
date(_,Thism,_), 
write("now month is: "),write(Thism), nl, 
birthDate(P,D), % go through all facts ( all alternatives) 
testnow(Thism, D), % test if fact match month 
write_person(P),nl, 
write_data(D),fail. 
testnow(TM,bdate(_,BM,_)):-TM=BM.
write_person(person(_,_, Ln)):-
write(" "),write(Ln), nl. 
write_data(bdate(Day,Month,Year)):-
write(Day),write(" / "),write(Month),write(" / "),write(Year),nl.
date(_,Month,_):-
get_time(Stamp), 
stamp_date_time(Stamp, DateTime, local), 
date_time_value(month, DateTime, Month




