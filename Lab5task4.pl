% 4) ���������� ������ (�������� ��� �������� � �������� �������).
% �������� ����� ����� ��� ���������: ������ � �������� ������,
% ������ � ������, ������������ � ���������� ������ ��������� ������� ��������� � �������� �������;

% ���������� ����� ���������� ��������
reverse1(List, RList):- reverse(List, RList).

% ����-�����
% ?- reverse1([], Res).
% ?- reverse1([1, 2, 3, 4, 5], Res).
% ?- reverse1([1, 2, [3, 4, 5]], Res).
% ?- reverse1([1], Res).
% ?- reverse1([1, 2, 1], Res).

% ���������� ������� ����� ���������������
reverse2(List, Reversed) :- reverse2(List, [], Reversed).
reverse2([], Acc, Acc).
reverse2([H|T], Acc, Reversed) :- reverse2(T, [H|Acc], Reversed).

% ����-�����
% ?- reverse2([], Res).
% ?- reverse2([1, 2, 3, 4, 5], Res).
% ?- reverse2([1, 2, [3, 4, 5]], Res).
% ?- reverse2([1], Res).
% ?- reverse2([1, 2, 1], Res).
