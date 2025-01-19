% Сортировка выбором
% Идея алгоритма сортировки выбором очень проста.
% В списке находим минимальный элемент. Удаляем его из списка.
% Оставшийся список сортируем. Приписываем минимальный элемент в качестве головы к отсортированному списку.
% Так как этот элемент был меньше всех элементов исходного списка, он будет меньше всех элементов отсортированного списка.
% И, следовательно, если его поместить в голову отсортированного списка, то порядок не нарушится.

% Предикат оболочка для сортировки выбором
selectionsort(List):-
  sorting(List, Res),
  write(Res).

% Основной предикат сортировки
% Базовый случай для пустого списка или списка из 1 элемента (уже отсортирован)
sorting(List, List):-
  length(List, Length),
  Length < 2.
% Рекурсивный случай
sorting(List, Result):-
  length(List, Length),
  Length > 1,
  minimum(List, Minimum),
  deleteonce(List, Minimum, Cutedlist),
  sorting(Cutedlist, Sortedcutedlist),
  append([Minimum], Sortedcutedlist, Result).

% Предикат получения наименьшего элемента в списке
% Минимум списка длины 2 есть минимум среди его элементов
minimum([H1,H2|T], Minimum):-
  length([H1,H2|T], 2),
  Minimum is min(H1,H2).
% Минимум списка есть минимум среди головы и результата рекурсии от хвоста
minimum([H|T], Minimum):-
  length([H|T], Length),
  Length > 2,
  minimum(T, Minimum1),
  Minimum is min(H, Minimum1).

% Предикат удаления одного вхождения элемента в список
% Удаление из пустого списка есть пустой список
deleteonce([], _, []).
% Удаление, если голова не элемент, есть склейка головы и рекурсии удаления из хвоста
deleteonce([H|T], Element, Res):-
  length([H|T], Length),
  Length >= 1,
  not(H = Element),
  deleteonce(T, Element, Res1),
  append([H], Res1, Res).
% Удаление, если голова - элемент, есть хвост
deleteonce([H|T], Element, Res):-
  length([H|T], Length),
  Length >= 1,
  H = Element,
  Res = T.
