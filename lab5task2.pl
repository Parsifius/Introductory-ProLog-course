% ïðîâåðèòü ïðèíàäëåæíîñòü ýëåìåíòà ñïèñêó.
% Ïðåäèêàò áóäåò èìåòü äâà àðãóìåíòà:
% ïåðâûé — èñêîìîå çíà÷åíèå, âòîðîé — ñïèñîê, â êîòîðîì ïðîèçâîäèòñÿ ïîèñê;

% ðåàëèçàöèÿ äëÿ ïîèñêà ýëåìåíòîâ íà îäíîì óðîâíå (áåç ó÷¸òà âëîæåííîñòè)

is_member1(_, []):- fail.
is_member1(Value, [H|T]):- H=Value ; is_member1(Value,T).

% Òåñò-êåéñû
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

% ðåàëèçàöèÿ äëÿ ïîèñêà ýëåìåíòîâ íà âñåõ óðîâíÿõ (ó÷èòûâàåò âëîæåííîñòü)

is_member2(_, []):- fail.
is_member2(Value, [H|T]):- atomic(H), (H=Value ; is_member2(Value, T)).
is_member2(Value, [H|T]):- not(atomic(H)), (H=Value ; is_member2(Value, H) ; is_member2(Value, T)).

% Òåñò-êåéñû
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

% Ðåàëèçàöèÿ ÷åðåç âñòðîåííûé ïðåäèêàò
is_member3(Value, List):- member(Value, List).

% Òåñò-êåéñû
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
