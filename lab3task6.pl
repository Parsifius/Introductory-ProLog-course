% 6. ���� ������ ����� X, Y, Z � T.
% X ������ Y � ������ T; Y ������ Z � ������ T; Z ������ X � ������ T.
% � ����� ������� ����������� ��� �����?

% ���� ������

% �����
% ��������� ���� ���� ���������� varr(�������� ����������)
varr(x).
varr(y).
varr(z).
varr(t).
% ��������� ���� ���� ������ more(������� ����������, ������� ����������)
more(y,x).
more(t,x).
more(y,z).
more(y,t).
more(z,x).
more(t,z).

% �������
% �������� ������� �������
order(First,Second,Third,Fourth):-
  %��������� ������������ ����������
  varr(First),varr(Second),varr(Third),varr(Fourth),
  %������� ������� ������������
  more(First,Second),more(Second,Third),more(Third,Fourth).
  
% ������
% ?-order(First,Second,Third,Fourth).
