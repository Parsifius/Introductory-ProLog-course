% 7) óäàëÿòü âñå âõîæäåíèÿ çàäàííîãî çíà÷åíèÿ èç ñïèñêà.
% Ïðåäèêàò áóäåò çàâèñåòü îò òðåõ ïàðàìåòðîâ.
% Ïåðâûé ïàðàìåòð áóäåò ñîîòâåòñòâîâàòü óäàëÿåìîìó ñïèñêó,
% âòîðîé — èñõîäíîìó çíà÷åíèþ,
% à òðåòèé — ðåçóëüòàòó óäàëåíèÿ èç ïåðâîãî ïàðàìåòðà âñåõ âõîæäåíèé âòîðîãî ïàðàìåòðà.

deleter([], _, Acc, Acc).
deleter([Element|T], Element, Acc, Outputlist):- deleter(T, Element, Acc, Outputlist).
deleter([Notelement|T], Element, Acc, Outputlist):- not(Notelement=Element), deleter(T, Element, [Notelement|Acc], Outputlist).

deleteall(Inputlist, Element, Outputlist):- deleter(Inputlist, Element, [], Outputlistreversed), reverse(Outputlistreversed, Outputlist).

% Òåñò-êåéñû
% ?- deleteall([], 1, Res).
% ?- deleteall([1, 1, 1, 1, 1], 1, Res).
% ?- deleteall([[a], [a], a, [a]], a, Res).
% ?- deleteall([[a], [a], a, [a]], [a], Res).
% ?- deleteall([1, a, 2, a, 3, a], a, Res).
% ?- deleteall([1, 3, 3, 3, 1], 1, Res).
