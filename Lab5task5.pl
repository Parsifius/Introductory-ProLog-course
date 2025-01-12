% 5) ���������, �������� �� ������ �����������.
% ����������� ���������� ������, ������� ��������� �� ����� ����������.
% ��������������, � ������� ��������� ����� ����� ���� �������� (������, ������� ��������� �� "��������������");

% ���������� ���������
reverse2(List, Reversed) :- reverse2(List, [], Reversed).
reverse2([], Acc, Acc).
reverse2([H|T], Acc, Reversed) :- reverse2(T, [H|Acc], Reversed).

% ���������� �������� �� ���������
is_palindrom(List):- reverse2(List, Reversed), Reversed=List.

% ����-�����
% ?- is_palindrom([]).
% ?- is_palindrom([1]).
% ?- is_palindrom([1, 2, 3]).
% ?- is_palindrom([1, 2, 1]).
% ?- is_palindrom([[1, 2, 3], a, [1, 2, 3]]).
