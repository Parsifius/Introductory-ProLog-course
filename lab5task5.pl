% 5) проверить, является ли список палиндромом.
% Палиндромом называется список, который совпадает со своим обращением.
% Соответственно, у данного предиката будет всего один аргумент (список, который проверяем на "палиндромность");

% Реализация обращения
reverse2(List, Reversed) :- reverse2(List, [], Reversed).
reverse2([], Acc, Acc).
reverse2([H|T], Acc, Reversed) :- reverse2(T, [H|Acc], Reversed).

% Реализация проверки на палиндром
is_palindrom(List):- reverse2(List, Reversed), Reversed=List.

% Тест-кейсы
% ?- is_palindrom([]).
% ?- is_palindrom([1]).
% ?- is_palindrom([1, 2, 3]).
% ?- is_palindrom([1, 2, 1]).
% ?- is_palindrom([[1, 2, 3], a, [1, 2, 3]]).
