% 1. ��� ������� ����� � �����, ������� � ����� ������� � ������.
% ��������, ��� ������ � ��� ����� ������ � ������ ���������.
% �� �����, �� ������ ���� �� ���� ������. ������ ���� � ������� ������.
% ���������� ����� ������ � ������ �� ������ �� ������.

% ���� ������

% ��������� ����� ��� ��������� ����� color(����)
color(white).
color(green).
color(blue).

% �������� ������� �������
solve :-
    % ������� ���������� ��� ������ �������:
    color(AnyaDress), color(ValyaDress), color(NatashaDress),
    % � ���� ��� ������� ������ ������:
    not(AnyaDress = ValyaDress),
    not(AnyaDress = NatashaDress),
    not(ValyaDress = NatashaDress),
    % ������� ���������� ��� ������ ������:
    color(AnyaShoes), color(ValyaShoes), color(NatashaShoes),
    % � ���� ��� ������� ������ �����:
    not(AnyaShoes = ValyaShoes),
    not(AnyaShoes = NatashaShoes),
    not(ValyaShoes = NatashaShoes),
    % 1) ������ � ��� ��������� ����� ������ � ������
    AnyaDress = AnyaShoes,
    % => � ���� � ������ ����� ������ � ������ �� ���������:
    not(ValyaDress = ValyaShoes),
    not(NatashaDress = NatashaShoes),
    % 2) �� ������, �� ����� ���� �� ���� ������
    not(ValyaDress = white),
    not(ValyaShoes = white),
    % 3) ����� ������ ���� �������
    NatashaShoes = green,
    % ��� ������� ���������, ������� ���������:
    write('���: ������ - '),   write(AnyaDress),
    write(', ����� - '),       write(AnyaShoes),    nl,
    write('����: ������ - '),  write(ValyaDress),
    write(', ����� - '),       write(ValyaShoes),   nl,
    write('������: ������ - '),write(NatashaDress),
    write(', ����� - '),       write(NatashaShoes), nl.
    
% ������
% ?-solve.

