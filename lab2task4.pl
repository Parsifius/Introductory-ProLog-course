% 4. ��������� ���� ������.
% ������ � ���������� �����, ������� � ������ �����, ����� � ����� �����.
% ����, ������ � ������ � ������. ������ � �����, ������ � �����.
% ��� ��������, �������� ������� �������� � �������, ������ �����������.
% �������� ������� ����� ������� � ����������� ���������, � ������� �������
% ����� �������� �������� �����, ������� �� �������� �������������� ��������.
% ���� ������� ������, ���� ������� �� ������� ������� � ���� ������ �� �����
% �����������. ���� � ��������� ������.
% ����������, ����� �������� �� ����� ������.

% ���� ������
% ������������� �����
animal('������','����������','�����').
animal('�������','������','�����').
animal('�����','�����','�����').
animal('����','���������','������').
animal('������','�����','������').
animal('������','�����','������').

% �������
% ������������� ������������ �������(������, ��������)
own('��������',X):-animal(X,'������',_);animal(X,'����������',_).
own('�������',X):-animal(X,Color,'������'),Color\='�����',not(own('��������',X)).
own('����','�����'):-not(own('��������','������')),not(own('�������','������')),not(own('�������','������')).
% ������������� ������������ ��� ���������(��������)
notown(X) :- animal(X, _, _), not(own(_, X)).

% ������: � ���� ��� ���������
% ?-notown(X).
