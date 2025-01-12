% ��������� ����� ������, �.�. ���������� ��������� � ������;

% ����������, ��� ������� ��������� ������ - ���� �������.
list_len1([],0).
list_len1([_|T],Len):- list_len1(T,Len1), Len is 1 + Len1.

% ����-�����
% ?-list_len1([],Res).
% ?-list_len1([1],Res).
% ?-list_len1([1,2,3],Res).
% ?-list_len1([1,[2],3],Res).
% ?-list_len1([[],[],[]],Res).
% ?-list_len1([[1,2,3],[1,2,3],[1,2,3]],Res).

% ����������, ������� ������������ ����������� ���������� ��������� ���������
list_len2([],0).
list_len2([H|T],Len):- atomic(H), not(H=[]), list_len2(T,Len1), Len is 1 + Len1.
list_len2([H|T],Len):- atomic(H), H=[], list_len2(T,Len1), Len is Len1.
list_len2([H|T],Len):- not(atomic(H)), list_len2(H,Len1), list_len2(T,Len2), Len is Len1 + Len2.

% ����-�����
% ?-list_len2([],Res).
% ?-list_len2([1],Res).
% ?-list_len2([1,2,3],Res).
% ?-list_len2([1,[2],3],Res).
% ?-list_len2([[],[],[]],Res).
% ?-list_len2([[1,2,3],[1,2,3],[1,2,3]],Res).

% ���������� ����� ���������� ��������
list_len3(List, Res):- length(List, Res).

% ����-�����
% ?-list_len3([],Res).
% ?-list_len3([1],Res).
% ?-list_len3([1,2,3],Res).
% ?-list_len3([1,[2],3],Res).
% ?-list_len3([[],[],[]],Res).
% ?-list_len3([[1,2,3],[1,2,3],[1,2,3]],Res).
