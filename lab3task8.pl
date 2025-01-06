% 8. В очереди за билетами в кино стоят: Юра, Миша, Володя, Саша и Олег. Известно, что:
% Юра купил билет раньше, чем Миша, но позже Олега.
% Володя и Олег не стояли рядом.
% Саша не находится рядом ни с Олегом, ни с Юрой, ни с Володей.
% Кто за кем стоит?

% База знаний

% Факты
% Установим соответствия position(номер позиции)
position(1).
position(2).
position(3).
position(4).
position(5).

% Правила
% Установим соответствие вида nearby(номер позиции, номер позиции рядом)
nearby(A,B):-
  (A is B+1);
  (A is B-1).
% Правило, что все переменные разные
alldifferent(A,B,C,D,E):-
  not(A=B),
  not(A=C),
  not(A=D),
  not(A=E),
  not(B=C),
  not(B=D),
  not(B=E),
  not(C=D),
  not(C=E),
  not(D=E).
% Правило решения
solve(Yura,Misha,Volodya,Sasha,Oleg):-
  % Перечисляем переменные
  position(Yura),
  position(Misha),
  position(Volodya),
  position(Sasha),
  position(Oleg),
  % Юра купил билет раньше, чем Миша, но позже Олега.
  Yura<Misha, Yura>Oleg,
  % Володя и Олег не стояли рядом.
  not(nearby(Volodya,Oleg)),
  % Саша не находится рядом ни с Олегом, ни с Юрой, ни с Володей.
  not(nearby(Sasha,Oleg)),
  not(nearby(Sasha,Yura)),
  not(nearby(Sasha,Volodya)),
  % Все разнятся
  alldifferent(Yura,Misha,Volodya,Sasha,Oleg).

% Запрос
% ?-solve(Yura,Misha,Volodya,Sasha,Oleg).
