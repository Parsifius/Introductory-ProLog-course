% проверить принадлежность элемента списку.
% Предикат будет иметь два аргумента:
% первый — искомое значение, второй — список, в котором производится поиск;

% реализация для поиска элементов на одном уровне (без учёта вложенности)

is_member1(_, []):- fail.
is_member1(Value, [H|T]):- H=Value ; is_member1(Value,T).

% Тест-кейсы
% ?- is_member1(1, []).
% ?- is_member1(1, [2,3,4]).
% ?- is_member1(1, [1,2,3,4]).
% ?- is_member1(1, [[1]]).
% ?- is_member1(1, [[1],2,3]).
% ?- is_member1(1, [[[1]],2,3]).
% ?- is_member1(1, [[[[1]]],2,3]).
% ?- is_member1([1], []).
% ?- is_member1([1], [2,3,4]).
% ?- is_member1([1], [1,2,3,4]).
% ?- is_member1([1], [[1]]).
% ?- is_member1([1], [[1],2,3]).
% ?- is_member1([1], [[[1]],2,3]).

% реализация для поиска элементов на всех уровнях (учитывает вложенность)

is_member2(_, []):- fail.
is_member2(Value, [H|T]):- atomic(H), (H=Value ; is_member2(Value, T)).
is_member2(Value, [H|T]):- not(atomic(H)), (H=Value ; is_member2(Value, H) ; is_member2(Value, T)).

% Тест-кейсы
% ?- is_member2(1, []).
% ?- is_member2(1, [2,3,4]).
% ?- is_member2(1, [1,2,3,4]).
% ?- is_member2(1, [[1]]).
% ?- is_member2(1, [[1],2,3]).
% ?- is_member2(1, [[[1]],2,3]).
% ?- is_member2(1, [[[[1]]],2,3]).
% ?- is_member2([1], []).
% ?- is_member2([1], [2,3,4]).
% ?- is_member2([1], [1,2,3,4]).
% ?- is_member2([1], [[1]]).
% ?- is_member2([1], [[1],2,3]).
% ?- is_member2([1], [[[1]],2,3]).

% Реализация через встроенный предикат
is_member3(Value, List):- member(Value, List).

% Тест-кейсы
% ?- is_member3(1, []).
% ?- is_member3(1, [2,3,4]).
% ?- is_member3(1, [1,2,3,4]).
% ?- is_member3(1, [[1]]).
% ?- is_member3(1, [[1],2,3]).
% ?- is_member3(1, [[[1]],2,3]).
% ?- is_member3(1, [[[[1]]],2,3]).
% ?- is_member3([1], []).
% ?- is_member3([1], [2,3,4]).
% ?- is_member3([1], [1,2,3,4]).
% ?- is_member3([1], [[1]]).
% ?- is_member3([1], [[1],2,3]).
% ?- is_member3([1], [[[1]],2,3]).
