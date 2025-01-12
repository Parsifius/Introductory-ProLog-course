% ��������� ��� ������ � ����.
% ������ ��� ��������� ��������� ����� ������������ ����������� ������,
% � ������ � ��������� ����������;

% ���������� ����� ���������� ��������
concatanation1(List1, List2, Res):- append(List1, List2, Res).

% ����-�����
% ?- concatanation1([1], [], Res).
% ?- concatanation1([1,2,3], [], Res).
% ?- concatanation1([], [1], Res).
% ?- concatanation1([], [1,2,3], Res).
% ?- concatanation1([1,2],[3,4], Res).
% ?- concatanation1([4,3],[2,1], Res).

% ���������� �������
concatanation2([], List2, List2).
concatanation2([H|T], List2, [H|T1]):- concatanation2(T, List2, T1).

% ����-�����
% ?- concatanation2([1], [], Res).
% ?- concatanation2([1,2,3], [], Res).
% ?- concatanation2([], [1], Res).
% ?- concatanation2([], [1,2,3], Res).
% ?- concatanation2([1,2],[3,4], Res).
% ?- concatanation2([4,3],[2,1], Res).
