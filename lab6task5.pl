% ���������� ���������
% ���� ����� ������ ����������� � ���������.
% �������� ������, ������� ����� �����������, �� ��� ���������.
% ���������� ������ �� ��� ���� �� �������, ����� ���� ������ ������������� ��������� ������� � ���� ����� ������.

% ������� �������� ��� ����������� ������
mergesort(List):-
  sorting(List, Res),
  write(Res).

% ������� ������ ��� ������� ������ ��� ������ �� 1 �������� (��� ������������)
sorting(List, List):-
  length(List, Length),
  Length < 2.
% ����������� ������: ����� ������ �������, ��������� ��������, ���������
sorting(List, Sortedlist):-
  length(List, Listlength),
  Listlength > 1,
  spliting(List, List1, List2),
  sorting(List1, Sortedlist1),
  sorting(List2, Sortedlist2),
  merging(Sortedlist1, Sortedlist2, Sortedlist).

% �������� ������� ������ �������
% C����� ������� �������
spliting(List, List1, List2):-
  append(List1, List2, List),
  length(List, Len), 0 is Len mod 2,
  length(List1, X),
  length(List2, X).
% C����� ��������� �������
spliting(List, List1, List2):-
  append(List1, List2, List),
  length(List, Len), 1 is Len mod 2,
  length(List1, X1),
  length(List2, X2),
  X1 is X2 + 1.

% �������� ������� ���� ��������������� ������� � ������
% ������ ������ ����
merging([], List2, List2).
% ������ ������ ����
merging(List1, [], List1).
% ������ �������, ������ ������� ������ ������ �������
merging([H1|T1], [H2|T2], List):-
  H1 >= H2,
  merging([H1|T1], T2, Taillist),
  append([H2], Taillist, List).
% ������ �������, ������ ������� ������ ������ �������
merging([H1|T1], [H2|T2], List):-
  H1 < H2,
  merging(T1, [H2|T2], Taillist),
  append([H1], Taillist, List).
