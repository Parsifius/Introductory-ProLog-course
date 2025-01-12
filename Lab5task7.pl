% 7) удал€ть все вхождени€ заданного значени€ из списка.
% ѕредикат будет зависеть от трех параметров.
% ѕервый параметр будет соответствовать удал€емому списку,
% второй Ч исходному значению,
% а третий Ч результату удалени€ из первого параметра всех вхождений второго параметра.

deleter([], _, Acc, Acc).
deleter([Element|T], Element, Acc, Outputlist):- deleter(T, Element, Acc, Outputlist).
deleter([Notelement|T], Element, Acc, Outputlist):- not(Notelement=Element), deleter(T, Element, [Notelement|Acc], Outputlist).

deleteall(Inputlist, Element, Outputlist):- deleter(Inputlist, Element, [], Outputlistreversed), reverse(Outputlistreversed, Outputlist).

% “ест-кейсы
% ?- deleteall([], 1, Res).
% ?- deleteall([1, 1, 1, 1, 1], 1, Res).
% ?- deleteall([[a], [a], a, [a]], a, Res).
% ?- deleteall([[a], [a], a, [a]], [a], Res).
% ?- deleteall([1, a, 2, a, 3, a], a, Res).
% ?- deleteall([1, 3, 3, 3, 1], 1, Res).
