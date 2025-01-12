% 6) �������� ������� ������ �� ��� ������ ��� ��, ��� �� ������ �����
% �������� ������� ������� � ������������ ������ ����������������.
% �������� ����� ���������������: ������ �������� � �������� ������,
% ������ �������� � ����� �������� � ������ � ������� ������,
% ���������� � �������� ������� ��������� ���������,
% ������� �����, ��������� � �������� ������� ���������;

get_element([H|_], 0, H).
get_element([_|T], Number, Element):-
  not(Number=0),
  Nextnumber is Number - 1,
  get_element(T, Nextnumber, Element).
  
% ?- get_element([a, b, c, d, e], 0, Res).
% ?- get_element([a, b, c, d, e], 1, Res).
% ?- get_element([a, b, c, d, e], 2, Res).
% ?- get_element([a, b, c, d, e], 3, Res).
% ?- get_element([a, b, c, d, e], 4, Res).
% ?- get_element([a, b, c, d, e], 5, Res).
