% �������� ���������, ����������� ��������� ����� N.
% ��������:
% ����  fact(5,F)  ������ ���������� F=120, � fact(10,F) � 3628800.

% ������� ������
fact(1,1).

% ����������� ������
fact(Num,F):-
  Num > 1,
  Numnext is Num - 1,
  fact(Numnext, F1),
  F is Num * F1.
  
% �������
% ?-fact(1,Res).
% ?-fact(2,Res).
% ?-fact(3,Res).
% ?-fact(4,Res).
% ?-fact(5,Res).
% ?-fact(10,Res).
