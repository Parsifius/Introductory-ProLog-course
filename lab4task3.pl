% �������� ���������, ���������� � ������� 2 ���, ����� ��� ��������� ���� ����� �������� ����������� ����� �� 1 �� ���������� ��������� �����, ���� ����� ������ ����������� ����� �� 2 �� ���������� ������� �����.
% ��������:
% ����  sum3(9,S)  ������ ���������� S=25, � sum3(10,S) � 30.
% ����������: 25=1+3+5+7+9,   30=2+4+6+8+10.

% ������� ������ ��� �������� ����� �������
sum3(1,1).

% ������� ������ ��� ������ ����� �������
sum3(2,2).

% ����������� ������
sum3(Input,S):-
  Input>2,
  Input1 is Input-2,
  sum3(Input1,S1),
  S is S1 + Input.
  
% �������
% ?-sum3(1,Res).
% ?-sum3(2,Res).
% ?-sum3(3,Res).
% ?-sum3(4,Res).
% ?-sum3(5,Res).
% ?-sum3(9,Res).
% ?-sum3(10,Res).
