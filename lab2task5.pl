% ������� 5. ���� ���������� ����� ��������� ��� ������ ��������� ��������������� ����������:
% ��������� ���� ������ � ����������� ���������, ��������� � ��� ��������� �������:
% �������� � ��� �������, � �������� �� ���� ��������� �������;
% �������� � ���� ���� ���� �� ���� ������;
% ��������� � ���� �� ������� � ��������� ������ �� 4 � 5.
%
% �������� ������ �� ��������� �������:
% �������� �� ������� ����������?
% ���������� ���� ����������.
% ���������� ���� ����������.
% �������� �� ������ �����������?
% ���������� ���� ������������ �� �������.

% ���� ������

% ���������� ����� � ������� grades(�������, �������, ���������, �����������)
grades('�������', 5, 5, 5).
grades('������', 5, 3, 2).
grades('������', 5, 5, 5).
grades('�����', 4, 4, 4).
grades('����������', 5, 5, 5).
grades('������', 2, 3, 3).
grades('������', 5, 4, 5).
grades('�������', 2, 3, 2).
grades('���������', 2, 3, 3).
grades('��������', 5, 5, 5).
grades('������', 4, 4, 4).

% �������
% ���������� ������������ ���������(��� ��������)
mathematician(X):-grades(X,Alg,Geo,_), (Alg=4;Alg=5), (Geo=4;Geo=5).
% ���������� ������������ ��������(��� ��������)
excellent(X):-grades(X,5,5,5).
% ���������� ������������ ��������(��� ��������)
twoman(X):-grades(X,2,_,_) ;
           grades(X,_,2,_),not(grades(X,2,_,_)) ;
           grades(X,_,_,2),not(grades(X,2,_,_)),not(grades(X,_,2,_)).

% �������
% ?-excellent('�������').     �������� �� ������� ����������?
% ?-excellent(X).             ���������� ���� ����������.
% ?-twoman(X).                ���������� ���� ����������.
% ?-mathematician('������').  �������� �� ������ �����������?
% ?-grades(Name, 2, _, _).    ���������� ���� ������������ �� �������.
