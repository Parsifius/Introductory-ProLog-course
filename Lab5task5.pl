% 5) проверить, €вл€етс€ ли список палиндромом.
% ѕалиндромом называетс€ список, который совпадает со своим обращением.
% —оответственно, у данного предиката будет всего один аргумент (список, который провер€ем на "палиндромность");

% –еализаци€ обращени€
reverse2(List, Reversed) :- reverse2(List, [], Reversed).
reverse2([], Acc, Acc).
reverse2([H|T], Acc, Reversed) :- reverse2(T, [H|Acc], Reversed).

% –еализаци€ проверки на палиндром
is_palindrom(List):- reverse2(List, Reversed), Reversed=List.

% “ест-кейсы
% ?- is_palindrom([]).
% ?- is_palindrom([1]).
% ?- is_palindrom([1, 2, 3]).
% ?- is_palindrom([1, 2, 1]).
% ?- is_palindrom([[1, 2, 3], a, [1, 2, 3]]).
