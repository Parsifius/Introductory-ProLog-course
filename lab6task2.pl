% Сортировка вставкой
% Сортировка вставкой основана на том, что если хвост списка уже отсортирован,
% то достаточно поставить первый элемент списка на его место в хвосте,
% и весь список будет отсортирован.

% Предикат оболочка сортировки вставкой
insertionsort(List):-
  sorting(List, Result),
  write(Result).

% Предикат сортировки
% Базовый случай - список длиной 0 или 1 уже отсортирован
sorting(List, List):-
  length(List, Length),
  Length < 2.
% Рекурсивный случай: результатом сортировки является вставка головы в рекурсивно отсортированный хвост
sorting([H|T], Result):-
  length([H|T], Length),
  Length > 1,
  sorting(T, Result1),
  insertion(Result1, H, Result).

% Предикат вставки элемента на необходимую позицию в отсортированный список
% Вставка в пустой список есть список из элемента
insertion([], Element, [Element]).
% Если элемент меньше головы, то результат вставки выглядит как <Элемент|список>
insertion([H|T], Element, Insertedlist):-
  Element =< H,
  append([Element], [H|T], Insertedlist).
% Если элемент больше головы, то вставлять нужно после нее. То есть, результат <Голова|рекурсивная вставка в хвост>
insertion([H|T], Element, Insertedlist):-
  Element > H,
  insertion(T, Element, Insertedtail),
  append([H], Insertedtail, Insertedlist).
  
