% 6) ďîëó÷ŕňü ýëĺěĺíň ńďčńęŕ ďî ĺăî íîěĺđó ňŕę ćĺ, ęŕę ďî íîěĺđó ěîćíî
% ďîëó÷ŕňü ýëĺěĺíň ěŕńńčâŕ â čěďĺđŕňčâíűő ˙çűęŕő ďđîăđŕěěčđîâŕíč˙.
% Ďđĺäčęŕň áóäĺň ňđĺőŕđăóěĺíňíűé: ďĺđâűé ŕđăóěĺíň — čńőîäíűé ńďčńîę,
% âňîđîé ŕđăóěĺíň — íîěĺđ ýëĺěĺíňŕ č ňđĺňčé — ýëĺěĺíň ńďčńęŕ,
% óęŕçŕííîăî â ęŕ÷ĺńňâĺ ďĺđâîăî ŕđăóěĺíňŕ ďđĺäčęŕňŕ,
% čěĺţůčé íîěĺđ, óęŕçŕííűé â ęŕ÷ĺńňâĺ âňîđîăî ŕđăóěĺíňŕ;

get_element([H|_], 0, H).
get_element([_|T], Number, Element):-
  not(Number=0),
  Nextnumber is Number - 1,
  get_element(T, Nextnumber, Element).
  
% ?- get_element([a, b, c, d, e], 0, Res).
% ?- get_element([a, b, c, d, e], 1, Res).
% ?- get_element([a, b, c, d, e], 2, Res).
% ?- get_element([a, b, c, d, e], 3, Res).
% ?- get_element([a, b, c, d, e], 4, Res).
% ?- get_element([a, b, c, d, e], 5, Res).
