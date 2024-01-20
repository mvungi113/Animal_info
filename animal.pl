%facts about animal

animal(elephant).
animal(lion).
animal(giraffe).
animal(zebra).
animal(hippopotamus).
animal(crocodile).

%more facts about animal
has_stripes(zebra).
has_mane(lion).
has_trunk(elephant).
has_long_neck(giraffe).
has_thick_skin(hippopotamus).
has_scales(crocodile).

herbivore(zebra).
carnivore(lion).
herbivore(giraffe).
herbivore(hippopotamus).
carnivore(crocodile).



%define facts about animal classes and phyla
mammal(lion).
chordata(crocodile).
mamal(hippopotamus).
chordata(crocodile).
arthropoda(zebra).
chordata(giraffe).

%defines facts about animal species
species(zebra, 'Equus quagga').
species(lion, 'Pantera leo').
species(elephant, 'Laxodonta ofricana').
species(giraffe, 'Giraffa camelopardails').
species(hippopotamus, 'Hippopotamus ampibius').
species(crocodile, 'Crocodylus niloticus').


%facts about animal habitats
habitat(zebra, savanna).
habitat(lion, savanna).
habitat(Elephant, savana, forest).
habitat(giraffe, savana).
habitat(hippopotamus, river, lake).
habitat(crocodile, rive, lake).

%facts about animal food
food(zebra, grass).
food(lion, zebra,antelope).
food(elephant, leaves, fruits).
food(giraffe, leaves, fruits).
food(hippopotamus, grass, aquatic plants).
food(crocodile, fish, birds).


%rules  animals identification

is_animal(X) :- animal(X).

identfy_animal(Animal):- write('Please describe the animal: '),
 read(Feature), 
 find_feature(Feture, Animal).

find_feature(Feature,Animal):-
 has(Animal,Feture);
  is_characteristic(Feature, Class),
   has_class(Animal,Class).

is_characteristic(Feature, Class):- 
member(Feature, characteristics(Class)).

characteristics(mammal) :- 
[has_backbone, has_dorsal_nerve_cord].

characteristics(chordata):-
 [has_fur, has_milk, has_warm_blooded].

characteristics(arthropoda):-
[has_exoskeleton, has_jointed_legs].



has_class(Animal,Class):- member(Class, classes(Animal)).

classes(zebra):- [herbivore, mamal, arthropoda].

classes(lion):- [carnivore, mammal].
classes(elephant):- [herbivore, mammal].
classes(hippopotamus):- [herbivore, mammal].
classes(giraffe):- [herbivore, mammal].
classes(crocodile):- [carnivore, chordata].

%rule to provide more animal details
more_details(Animal) :- species(Animal, species), write('Species : '), 
write(Species), nl, habitat(Animal, Habitat1, Habitat2),(Habitat2 = []-> write('Habitat : '), write(Habitat1), nl;
write('Habitats: '),
write(Habitat1), write(', '), write(Habitat2), nl),
food(Animal, Food1, Food2), (Food2 = [] -> write('Food '), write(Food1), nl; 
write('Food: '), write(Food1), write(', '), write(Food2), nl).





