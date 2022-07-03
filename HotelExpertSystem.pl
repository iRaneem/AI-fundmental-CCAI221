hotel(sheraton).
hotel(orchid).
hotel(hilton).
hotel(rotana).
hotel(romeKings).
hotel(impero).
hotel(tango).
season(winter).
season(summer).
season(fall).
season(spring).
sale(winter,"40%").
sale(summer,"5%").
sale(fall,"0%").
sale(spring,"15%").
location(dubai,middleEast).
location(jeddah,middleEast).
location(makkah,middleEast).
location(london,euroupe).
location(california,america).
location(paris,euroupe).
location(egypt,africa).
city(dubai).
city(jeddah).
city(makkah).
city(london).
city(california).
city(paris).
city(egypt).
hotelCity(sheraton,jeddah).
hotelCity(hilton,jeddah).
hotelCity(sheraton,makkah).
hotelCity(rotana,makkah).
hotelCity(hilton,makkah).
hotelCity(rotana,egypt).
hotelCity(orchid,egypt).
hotelCity(hilton,egypt).
hotelCity(sheraton,dubai).
hotelCity(rotana,dubai).
hotelCity(hilton,dubai).
hotelCity(romeKings,london).
hotelCity(impero,london).
hotelCity(orchid,london).
hotelCity(tango,california).
hotelCity(sheraton,california).
hotelCity(hilton,california).
hotelCity(orchid,paris).
hotelCity(sheraton,paris).
hotelCity(hilton,paris).
hotelCity(tango,paris).
service(sheraton,oneBedroom).
service(sheraton,suite).
service(sheraton,twoBedroom).
service(sheraton,royal).
service(sheraton,villa).
service(orchid,oneBedroom).
service(orchid,suite).
service(orchid,twoBedroom).
service(orchid,royal).
service(hilton,oneBedroom).
service(hilton,suite).
service(hilton,twoBedroom).
service(hilton,villa).
service(rotana,oneBedroom).
service(rotana,suite).
service(rotana,twoBedroom).
service(rotana,royal).
service(romeKings,suite).
service(romeKings,twoBedroom).
service(romeKings,royal).
service(romeKings,villa).
service(impero,oneBedroom).
service(impero,suite).
service(impero,royal).
service(tango,oneBedroom).
service(tango,suite).
service(tango,twoBedroom).
offer(Hotel,Season,Sale):-
   hotel(Hotel),sale(Season,Sale),
   write("Hotel "),write(Hotel),
   write(" Offers "),write(Sale),
   write(" In "),write(Season),nl,
   fail.
regionList(Region,Hotel):-
location(City,Region),hotelCity(Hotel,City),
   write("Region "),write(Region),
   write(", City "),write(City),
   write(", has "),write(Hotel),nl,fail.
cityList(City,Hotel):-city(City),hotelCity(Hotel,City),
   write("City "),write(City),
   write(",has "),write(Hotel),nl,fail.
services(Hotel,Service):-
   service(Hotel,Service),
   write(" Hotel "),write(Hotel),
   write(" Offers "),write(Service),nl,fail.
everythingsale(location,hotelCity,sale):- 
location(City,Region),hotelCity(Hotel,City),sale(Season,Sale),
   write("Region "),write(Region),
   write(", City "),write(City),
   write(", has "),write(Hotel),
   write(" Offers "),write(Sale),
   write(" In "),write(Season),nl,fail.
everythingservice(location,hotelCity,service):- 
location(City,Region),hotelCity(Hotel,City),service(Hotel,Service),
   write("Region "),write(Region),
   write(", City "),write(City),
   write(", has "),write(Hotel),
   write(" Offers "),write(Service),nl,fail.


