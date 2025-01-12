% 4) Ђобратитьї список (записать его элементы в обратном пор€дке).
% ѕредикат будет иметь два аргумента: первый Ч исходный список,
% второй Ч список, получающийс€ в результате записи элементов первого аргумента в обратном пор€дке;

% –еализаци€ через встроенный предикат
reverse1(List, RList):- reverse(List, RList).

% тест-кейсы
% ?- reverse1([], Res).
% ?- reverse1([1, 2, 3, 4, 5], Res).
% ?- reverse1([1, 2, [3, 4, 5]], Res).
% ?- reverse1([1], Res).
% ?- reverse1([1, 2, 1], Res).

% –еализаци€ вручную через аккумулирование
reverse2(List, Reversed) :- reverse2(List, [], Reversed).
reverse2([], Acc, Acc).
reverse2([H|T], Acc, Reversed) :- reverse2(T, [H|Acc], Reversed).

% тест-кейсы
% ?- reverse2([], Res).
% ?- reverse2([1, 2, 3, 4, 5], Res).
% ?- reverse2([1, 2, [3, 4, 5]], Res).
% ?- reverse2([1], Res).
% ?- reverse2([1, 2, 1], Res).
