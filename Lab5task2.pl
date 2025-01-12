% ��������� �������������� �������� ������.
% �������� ����� ����� ��� ���������:
% ������ � ������� ��������, ������ � ������, � ������� ������������ �����;

% ���������� ��� ������ ��������� �� ����� ������ (��� ����� �����������)

is_member1(_, []):- fail.
is_member1(Value, [H|T]):- H=Value ; is_member1(Value,T).

% ����-�����
% ?- is_member1(1, []).
% ?- is_member1(1, [2,3,4]).
% ?- is_member1(1, [1,2,3,4]).
% ?- is_member1(1, [[1]]).
% ?- is_member1(1, [[1],2,3]).
% ?- is_member1(1, [[[1]],2,3]).
% ?- is_member1(1, [[[[1]]],2,3]).
% ?- is_member1([1], []).
% ?- is_member1([1], [2,3,4]).
% ?- is_member1([1], [1,2,3,4]).
% ?- is_member1([1], [[1]]).
% ?- is_member1([1], [[1],2,3]).
% ?- is_member1([1], [[[1]],2,3]).

% ���������� ��� ������ ��������� �� ���� ������� (��������� �����������)

is_member2(_, []):- fail.
is_member2(Value, [H|T]):- atomic(H), (H=Value ; is_member2(Value, T)).
is_member2(Value, [H|T]):- not(atomic(H)), (H=Value ; is_member2(Value, H) ; is_member2(Value, T)).

% ����-�����
% ?- is_member2(1, []).
% ?- is_member2(1, [2,3,4]).
% ?- is_member2(1, [1,2,3,4]).
% ?- is_member2(1, [[1]]).
% ?- is_member2(1, [[1],2,3]).
% ?- is_member2(1, [[[1]],2,3]).
% ?- is_member2(1, [[[[1]]],2,3]).
% ?- is_member2([1], []).
% ?- is_member2([1], [2,3,4]).
% ?- is_member2([1], [1,2,3,4]).
% ?- is_member2([1], [[1]]).
% ?- is_member2([1], [[1],2,3]).
% ?- is_member2([1], [[[1]],2,3]).

% ���������� ����� ���������� ��������
is_member3(Value, List):- member(Value, List).

% ����-�����
% ?- is_member3(1, []).
% ?- is_member3(1, [2,3,4]).
% ?- is_member3(1, [1,2,3,4]).
% ?- is_member3(1, [[1]]).
% ?- is_member3(1, [[1],2,3]).
% ?- is_member3(1, [[[1]],2,3]).
% ?- is_member3(1, [[[[1]]],2,3]).
% ?- is_member3([1], []).
% ?- is_member3([1], [2,3,4]).
% ?- is_member3([1], [1,2,3,4]).
% ?- is_member3([1], [[1]]).
% ?- is_member3([1], [[1],2,3]).
% ?- is_member3([1], [[[1]],2,3]).
