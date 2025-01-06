% 6. Даны четыре числа X, Y, Z и T.
% X меньше Y и меньше T; Y больше Z и больше T; Z больше X и меньше T.
% В каком порядке расположены эти числа?

% База знаний

% Факты
% Установим факт вида переменная varr(название переменной)
varr(x).
varr(y).
varr(z).
varr(t).
% Установим факт вида больше more(большая переменная, меньшая переменная)
more(y,x).
more(t,x).
more(y,z).
more(y,t).
more(z,x).
more(t,z).

% Правила
% Основное правило решения
order(First,Second,Third,Fourth):-
  %Установим соответствие переменных
  varr(First),varr(Second),varr(Third),varr(Fourth),
  %Зададим порядок расположения
  more(First,Second),more(Second,Third),more(Third,Fourth).
  
% Запрос
% ?-order(First,Second,Third,Fourth).
