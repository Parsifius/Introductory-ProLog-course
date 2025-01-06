% 8. � ������� �� �������� � ���� �����: ���, ����, ������, ���� � ����. ��������, ���:
% ��� ����� ����� ������, ��� ����, �� ����� �����.
% ������ � ���� �� ������ �����.
% ���� �� ��������� ����� �� � ������, �� � ����, �� � �������.
% ��� �� ��� �����?

% ���� ������

% �����
% ��������� ������������ position(����� �������)
position(1).
position(2).
position(3).
position(4).
position(5).

% �������
% ��������� ������������ ���� nearby(����� �������, ����� ������� �����)
nearby(A,B):-
  (A is B+1);
  (A is B-1).
% �������, ��� ��� ���������� ������
alldifferent(A,B,C,D,E):-
  not(A=B),
  not(A=C),
  not(A=D),
  not(A=E),
  not(B=C),
  not(B=D),
  not(B=E),
  not(C=D),
  not(C=E),
  not(D=E).
% ������� �������
solve(Yura,Misha,Volodya,Sasha,Oleg):-
  % ����������� ����������
  position(Yura),
  position(Misha),
  position(Volodya),
  position(Sasha),
  position(Oleg),
  % ��� ����� ����� ������, ��� ����, �� ����� �����.
  Yura<Misha, Yura>Oleg,
  % ������ � ���� �� ������ �����.
  not(nearby(Volodya,Oleg)),
  % ���� �� ��������� ����� �� � ������, �� � ����, �� � �������.
  not(nearby(Sasha,Oleg)),
  not(nearby(Sasha,Yura)),
  not(nearby(Sasha,Volodya)),
  % ��� ��������
  alldifferent(Yura,Misha,Volodya,Sasha,Oleg).

% ������
% ?-solve(Yura,Misha,Volodya,Sasha,Oleg).
