% Быстрая сортировка
% Выбирается некоторый «барьерный» элемент, относительно которого мы разбиваем исходный список на два подсписка.
% В один мы помещаем элементы, меньшие барьерного элемента, во второй — большие либо равные.
% Каждый из этих списков мы сортируем тем же способом, после чего приписываем к списку тех элементов,
% которые меньше барьерного, вначале сам барьерный элемент, а затем — список элементов не меньших барьерного.
% В итоге получаем список, состоящий из элементов, стоящих в правильном порядке.

% Оболочка для вывода
quicksort(List):-
  sorting(List, Result),
  write(Result).

% Базовый случай для пустого списка или списка из 1 элемента (уже отсортирован)
sorting(List, List):-
  length(List, Length),
  Length < 2.
% Рекурсивный случай
sorting(List, Result):-
  length(List, Length),
  Length > 1,
  getpivotnumber(List, Pivotnumber),
  getpivot(List, Pivot),
  lesssublist(List, Pivot, Sublist1),
  moresublist(List, Pivot, Pivotnumber, Sublist2),
  sorting(Sublist1, Sortedsublist1),
  sorting(Sublist2, Sortedsublist2),
  append(Sortedsublist1, [Pivot], Result1),
  append(Result1, Sortedsublist2, Result).

% Получение номера опорного элемента
getpivotnumber(List, Pivotnumber):-
  length(List, Length),
  Pivotnumber is Length div 2.

% Получение опорного элемента для списка нечетной длины (строго медианный)
getpivot(List, Pivot):-
  length(List, Length),
  1 is Length mod 2,
  append(Left, [Mid|Right], List),
  length(Left, Leftlength),
  length(Right, Leftlength),
  Pivot is Mid.
% Получение опорного элемента для списка четной длины (правый из медианных)
getpivot(List, Pivot):-
  length(List, Length),
  0 is Length mod 2,
  append(Left, [Mid|Right], List),
  length(Left, Leftlength),
  length(Right, Rightlength),
  Leftlength is Rightlength + 1,
  Pivot is Mid.
  
% Предикат получения элементов меньше опорного
% Список элементов из пустого списка, которые меньше опорного, равны пустому списку
lesssublist([], _, []).
% Список элементов из списка, в котором голова больше опорного, меньших опорного есть аналогичный список из хвоста
lesssublist([H|T], Pivot, Sublist):-
  H >= Pivot,
  lesssublist(T, Pivot, Sublist).
% Список элементов из списка, в котором голова меньше опорного, меньших опорного, есть склейка головы и рекурсии от хвоста
lesssublist([H|T], Pivot, Sublist):-
  H < Pivot,
  lesssublist(T, Pivot, Sublist1),
  append([H], Sublist1, Sublist).
  
% Предикат получения элементов больше опорного
% Из пустого списка больше опорного - пустой список
moresublist([], _, _, []).
% Если голова меньше, то элементы >= опорного аналогичны рекурсии от хвоста
moresublist([H|T], Pivot, Pivotnumber, Sublist):-
  H < Pivot,
  Pivotnumber1 is Pivotnumber - 1,
  moresublist(T, Pivot, Pivotnumber1, Sublist).
% Если достигнут опорный (счетчик опорного снизился до нуля), то элементы >= опорного аналогичны рекурсии от хвоста
moresublist([H|T], Pivot, Pivotnumber, Sublist):-
  H >= Pivot,
  Pivotnumber is 0,
  Pivotnumber1 is Pivotnumber - 1,
  moresublist(T, Pivot, Pivotnumber1, Sublist).
% Если элемент больше либо равен опорному и это не ПОЗИЦИЯ опорного элемента - то добавляем его в результат
moresublist([H|T], Pivot, Pivotnumber, Sublist):-
  H >= Pivot,
  not(Pivotnumber is 0),
  Pivotnumber1 is Pivotnumber - 1,
  moresublist(T, Pivot, Pivotnumber1, Sublist1),
  append([H], Sublist1, Sublist).

