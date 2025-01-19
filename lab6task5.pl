% Сортировка слияниями
% Идея этого метода заключается в следующем.
% Разобьем список, который нужно упорядочить, на два подсписка.
% Упорядочим каждый из них этим же методом, после чего сольем упорядоченные подсписки обратно в один общий список.

% Функция оболочка для корректного вывода
mergesort(List):-
  sorting(List, Res),
  write(Res).

% Базовый случай для пустого списка или списка из 1 элемента (уже отсортирован)
sorting(List, List):-
  length(List, Length),
  Length < 2.
% Рекурсивный случай: делим список пополам, сортируем половины, соединяем
sorting(List, Sortedlist):-
  length(List, Listlength),
  Listlength > 1,
  spliting(List, List1, List2),
  sorting(List1, Sortedlist1),
  sorting(List2, Sortedlist2),
  merging(Sortedlist1, Sortedlist2, Sortedlist).

% Предикат деления списка пополам
% Cлучай четного массива
spliting(List, List1, List2):-
  append(List1, List2, List),
  length(List, Len), 0 is Len mod 2,
  length(List1, X),
  length(List2, X).
% Cлучай нечетного массива
spliting(List, List1, List2):-
  append(List1, List2, List),
  length(List, Len), 1 is Len mod 2,
  length(List1, X1),
  length(List2, X2),
  X1 is X2 + 1.

% Предикат слияния двух отсортированных списков в третий
% Первый список пуст
merging([], List2, List2).
% Второй список пуст
merging(List1, [], List1).
% Списки непусты, голова первого больше головы второго
merging([H1|T1], [H2|T2], List):-
  H1 >= H2,
  merging([H1|T1], T2, Taillist),
  append([H2], Taillist, List).
% Списки непусты, голова первого меньше головы второго
merging([H1|T1], [H2|T2], List):-
  H1 < H2,
  merging(T1, [H2|T2], Taillist),
  append([H1], Taillist, List).
