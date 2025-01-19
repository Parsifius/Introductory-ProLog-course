% ������� ����������
% ���������� ��������� ���������� �������, ������������ �������� �� ��������� �������� ������ �� ��� ���������.
% � ���� �� �������� ��������, ������� ���������� ��������, �� ������ � ������� ���� ������.
% ������ �� ���� ������� �� ��������� ��� �� ��������, ����� ���� ����������� � ������ ��� ���������,
% ������� ������ ����������, ������� ��� ��������� �������, � ����� � ������ ��������� �� ������� ����������.
% � ����� �������� ������, ��������� �� ���������, ������� � ���������� �������.

% �������� ��� ������
quicksort(List):-
  sorting(List, Result),
  write(Result).

% ������� ������ ��� ������� ������ ��� ������ �� 1 �������� (��� ������������)
sorting(List, List):-
  length(List, Length),
  Length < 2.
% ����������� ������
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

% ��������� ������ �������� ��������
getpivotnumber(List, Pivotnumber):-
  length(List, Length),
  Pivotnumber is Length div 2.

% ��������� �������� �������� ��� ������ �������� ����� (������ ���������)
getpivot(List, Pivot):-
  length(List, Length),
  1 is Length mod 2,
  append(Left, [Mid|Right], List),
  length(Left, Leftlength),
  length(Right, Leftlength),
  Pivot is Mid.
% ��������� �������� �������� ��� ������ ������ ����� (������ �� ���������)
getpivot(List, Pivot):-
  length(List, Length),
  0 is Length mod 2,
  append(Left, [Mid|Right], List),
  length(Left, Leftlength),
  length(Right, Rightlength),
  Leftlength is Rightlength + 1,
  Pivot is Mid.
  
% �������� ��������� ��������� ������ ��������
% ������ ��������� �� ������� ������, ������� ������ ��������, ����� ������� ������
lesssublist([], _, []).
% ������ ��������� �� ������, � ������� ������ ������ ��������, ������� �������� ���� ����������� ������ �� ������
lesssublist([H|T], Pivot, Sublist):-
  H >= Pivot,
  lesssublist(T, Pivot, Sublist).
% ������ ��������� �� ������, � ������� ������ ������ ��������, ������� ��������, ���� ������� ������ � �������� �� ������
lesssublist([H|T], Pivot, Sublist):-
  H < Pivot,
  lesssublist(T, Pivot, Sublist1),
  append([H], Sublist1, Sublist).
  
% �������� ��������� ��������� ������ ��������
% �� ������� ������ ������ �������� - ������ ������
moresublist([], _, _, []).
% ���� ������ ������, �� �������� >= �������� ���������� �������� �� ������
moresublist([H|T], Pivot, Pivotnumber, Sublist):-
  H < Pivot,
  Pivotnumber1 is Pivotnumber - 1,
  moresublist(T, Pivot, Pivotnumber1, Sublist).
% ���� ��������� ������� (������� �������� �������� �� ����), �� �������� >= �������� ���������� �������� �� ������
moresublist([H|T], Pivot, Pivotnumber, Sublist):-
  H >= Pivot,
  Pivotnumber is 0,
  Pivotnumber1 is Pivotnumber - 1,
  moresublist(T, Pivot, Pivotnumber1, Sublist).
% ���� ������� ������ ���� ����� �������� � ��� �� ������� �������� �������� - �� ��������� ��� � ���������
moresublist([H|T], Pivot, Pivotnumber, Sublist):-
  H >= Pivot,
  not(Pivotnumber is 0),
  Pivotnumber1 is Pivotnumber - 1,
  moresublist(T, Pivot, Pivotnumber1, Sublist1),
  append([H], Sublist1, Sublist).

