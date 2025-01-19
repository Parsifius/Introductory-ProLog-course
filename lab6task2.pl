% ���������� ��������
% ���������� �������� �������� �� ���, ��� ���� ����� ������ ��� ������������,
% �� ���������� ��������� ������ ������� ������ �� ��� ����� � ������,
% � ���� ������ ����� ������������.

% �������� �������� ���������� ��������
insertionsort(List):-
  sorting(List, Result),
  write(Result).

% �������� ����������
% ������� ������ - ������ ������ 0 ��� 1 ��� ������������
sorting(List, List):-
  length(List, Length),
  Length < 2.
% ����������� ������: ����������� ���������� �������� ������� ������ � ���������� ��������������� �����
sorting([H|T], Result):-
  length([H|T], Length),
  Length > 1,
  sorting(T, Result1),
  insertion(Result1, H, Result).

% �������� ������� �������� �� ����������� ������� � ��������������� ������
% ������� � ������ ������ ���� ������ �� ��������
insertion([], Element, [Element]).
% ���� ������� ������ ������, �� ��������� ������� �������� ��� <�������|������>
insertion([H|T], Element, Insertedlist):-
  Element =< H,
  append([Element], [H|T], Insertedlist).
% ���� ������� ������ ������, �� ��������� ����� ����� ���. �� ����, ��������� <������|����������� ������� � �����>
insertion([H|T], Element, Insertedlist):-
  Element > H,
  insertion(T, Element, Insertedtail),
  append([H], Insertedtail, Insertedlist).
  
