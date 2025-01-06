% 1. Три подруги вышли в белом, зеленом и синем платьях и туфлях.
% Известно, что только у Ани цвета платья и туфлей совпадали.
% Ни туфли, ни платье Вали не были белыми. Наташа была в зеленых туфлях.
% Определить цвета платья и туфель на каждой из подруг.

% База знаний

% Определим цвета как возможные факты color(цвет)
color(white).
color(green).
color(blue).

% Основное правило решения
solve :-
    % Зададим переменные для цветов платьев:
    color(AnyaDress), color(ValyaDress), color(NatashaDress),
    % У всех трёх девушек разные платья:
    not(AnyaDress = ValyaDress),
    not(AnyaDress = NatashaDress),
    not(ValyaDress = NatashaDress),
    % Зададим переменные для цветов туфель:
    color(AnyaShoes), color(ValyaShoes), color(NatashaShoes),
    % У всех трёх девушек разные туфли:
    not(AnyaShoes = ValyaShoes),
    not(AnyaShoes = NatashaShoes),
    not(ValyaShoes = NatashaShoes),
    % 1) Только у Ани совпадают цвета платья и туфель
    AnyaDress = AnyaShoes,
    % => у Вали и Наташи цвета платья и туфель не совпадают:
    not(ValyaDress = ValyaShoes),
    not(NatashaDress = NatashaShoes),
    % 2) Ни платье, ни туфли Вали не были белыми
    not(ValyaDress = white),
    not(ValyaShoes = white),
    % 3) Туфли Наташи были зелёными
    NatashaShoes = green,
    % Все условия выполнены, выводим результат:
    write('Аня: платье - '),   write(AnyaDress),
    write(', туфли - '),       write(AnyaShoes),    nl,
    write('Валя: платье - '),  write(ValyaDress),
    write(', туфли - '),       write(ValyaShoes),   nl,
    write('Наташа: платье - '),write(NatashaDress),
    write(', туфли - '),       write(NatashaShoes), nl.
    
% Запрос
% ?-solve.

