% 4. У Ивана машина красная, у Петра — не черная, не синяя, не голубая,
% у Михаила — черная и синяя, у Александра есть машины любого цвета
% (из всех выше перечисленных), у Бориса белого и синего цветов.
% У кого какого цвета машина, если все юноши были на машинах разного цвета?

% База знаний

% Определим цвета как возможные факты color(цвет)
color(red).
color(black).
color(white).
color(blue).
color(cian).

% Основное правило решения
solve(Ivan, Petr, Michail, Alexander, Boris):-
    % Зададим переменные для цветов машин:
    color(Ivan), color(Petr), color(Michail), color(Alexander), color(Boris),
    % У всех парней разные машины
    not(Ivan=Petr),
    not(Ivan=Michail),
    not(Ivan=Alexander),
    not(Ivan=Boris),
    not(Petr=Michail),
    not(Petr=Alexander),
    not(Petr=Boris),
    not(Michail=Alexander),
    not(Michail=Boris),
    not(Alexander=Boris),
    % Цвета
    Ivan=red,                                                            % У Ивана красная
    not(Petr=black ; Petr=blue ; Petr=cian),                             % Петра не черная, не синяя и не голубая
    (Michail=black ; Michail=blue),                                      % У Михаила черная и синяя
    (Alexander=red ; Alexander=black ; Alexander=blue ; Alexander=cian), % У Александра красная, черная, синяя и голубая
    (Boris=white ; Boris=blue).                                          % У Бориса белая и синяя

% Запрос
% ?-solve(Ivan, Petr, Michail, Alexander, Boris).
