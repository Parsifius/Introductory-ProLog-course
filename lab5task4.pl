% 4) «îáðàòèòü» ñïèñîê (çàïèñàòü åãî ýëåìåíòû â îáðàòíîì ïîðÿäêå).
% Ïðåäèêàò áóäåò èìåòü äâà àðãóìåíòà: ïåðâûé — èñõîäíûé ñïèñîê,
% âòîðîé — ñïèñîê, ïîëó÷àþùèéñÿ â ðåçóëüòàòå çàïèñè ýëåìåíòîâ ïåðâîãî àðãóìåíòà â îáðàòíîì ïîðÿäêå;

% Ðåàëèçàöèÿ ÷åðåç âñòðîåííûé ïðåäèêàò
reverse1(List, RList):- reverse(List, RList).

% òåñò-êåéñû
% ?- reverse1([], Res).
% ?- reverse1([1, 2, 3, 4, 5], Res).
% ?- reverse1([1, 2, [3, 4, 5]], Res).
% ?- reverse1([1], Res).
% ?- reverse1([1, 2, 1], Res).

% Ðåàëèçàöèÿ âðó÷íóþ ÷åðåç àêêóìóëèðîâàíèå
reverse2(List, Reversed) :- reverse2(List, [], Reversed).
reverse2([], Acc, Acc).
reverse2([H|T], Acc, Reversed) :- reverse2(T, [H|Acc], Reversed).

% òåñò-êåéñû
% ?- reverse2([], Res).
% ?- reverse2([1, 2, 3, 4, 5], Res).
% ?- reverse2([1, 2, [3, 4, 5]], Res).
% ?- reverse2([1], Res).
% ?- reverse2([1, 2, 1], Res).
