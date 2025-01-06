% Напишите программу, вычисляющую факториал числа N.
% Например:
% Цель  fact(5,F)  должна возвращать F=120, а fact(10,F) — 3628800.

% Базовый случай
fact(1,1).

% Рекурсивный случай
fact(Num,F):-
  Num > 1,
  Numnext is Num - 1,
  fact(Numnext, F1),
  F is Num * F1.
  
% Запросы
% ?-fact(1,Res).
% ?-fact(2,Res).
% ?-fact(3,Res).
% ?-fact(4,Res).
% ?-fact(5,Res).
% ?-fact(10,Res).
