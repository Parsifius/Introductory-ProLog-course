% соединить два списка в один.
% Первые два аргумента предиката будут представлять соединяемые списки,
% а третий — результат соединения;

% Реализация через встроенный предикат
concatanation1(List1, List2, Res):- append(List1, List2, Res).

% Тест-кейсы
% ?- concatanation1([1], [], Res).
% ?- concatanation1([1,2,3], [], Res).
% ?- concatanation1([], [1], Res).
% ?- concatanation1([], [1,2,3], Res).
% ?- concatanation1([1,2],[3,4], Res).
% ?- concatanation1([4,3],[2,1], Res).

% Реализация вручную
concatanation2([], List2, List2).
concatanation2([H|T], List2, [H|T1]):- concatanation2(T, List2, T1).

% Тест-кейсы
% ?- concatanation2([1], [], Res).
% ?- concatanation2([1,2,3], [], Res).
% ?- concatanation2([], [1], Res).
% ?- concatanation2([], [1,2,3], Res).
% ?- concatanation2([1,2],[3,4], Res).
% ?- concatanation2([4,3],[2,1], Res).
