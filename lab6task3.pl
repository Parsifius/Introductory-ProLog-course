% ���������� �������
% ���� ��������� ���������� ������� ����� ������.
% � ������ ������� ����������� �������. ������� ��� �� ������.
% ���������� ������ ���������. ����������� ����������� ������� � �������� ������ � ���������������� ������.
% ��� ��� ���� ������� ��� ������ ���� ��������� ��������� ������, �� ����� ������ ���� ��������� ���������������� ������.
% �, �������������, ���� ��� ��������� � ������ ���������������� ������, �� ������� �� ���������.

% �������� �������� ��� ���������� �������
selectionsort(List):-
  sorting(List, Res),
  write(Res).

% �������� �������� ����������
% ������� ������ ��� ������� ������ ��� ������ �� 1 �������� (��� ������������)
sorting(List, List):-
  length(List, Length),
  Length < 2.
% ����������� ������
sorting(List, Result):-
  length(List, Length),
  Length > 1,
  minimum(List, Minimum),
  deleteonce(List, Minimum, Cutedlist),
  sorting(Cutedlist, Sortedcutedlist),
  append([Minimum], Sortedcutedlist, Result).

% �������� ��������� ����������� �������� � ������
% ������� ������ ����� 2 ���� ������� ����� ��� ���������
minimum([H1,H2|T], Minimum):-
  length([H1,H2|T], 2),
  Minimum is min(H1,H2).
% ������� ������ ���� ������� ����� ������ � ���������� �������� �� ������
minimum([H|T], Minimum):-
  length([H|T], Length),
  Length > 2,
  minimum(T, Minimum1),
  Minimum is min(H, Minimum1).

% �������� �������� ������ ��������� �������� � ������
% �������� �� ������� ������ ���� ������ ������
deleteonce([], _, []).
% ��������, ���� ������ �� �������, ���� ������� ������ � �������� �������� �� ������
deleteonce([H|T], Element, Res):-
  length([H|T], Length),
  Length >= 1,
  not(H = Element),
  deleteonce(T, Element, Res1),
  append([H], Res1, Res).
% ��������, ���� ������ - �������, ���� �����
deleteonce([H|T], Element, Res):-
  length([H|T], Length),
  Length >= 1,
  H = Element,
  Res = T.
