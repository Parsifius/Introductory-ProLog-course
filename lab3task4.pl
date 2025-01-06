% 4. � ����� ������ �������, � ����� � �� ������, �� �����, �� �������,
% � ������� � ������ � �����, � ���������� ���� ������ ������ �����
% (�� ���� ���� �������������), � ������ ������ � ������ ������.
% � ���� ������ ����� ������, ���� ��� ����� ���� �� ������� ������� �����?

% ���� ������

% ��������� ����� ��� ��������� ����� color(����)
color(red).
color(black).
color(white).
color(blue).
color(cian).

% �������� ������� �������
solve(Ivan, Petr, Michail, Alexander, Boris):-
    % ������� ���������� ��� ������ �����:
    color(Ivan), color(Petr), color(Michail), color(Alexander), color(Boris),
    % � ���� ������ ������ ������
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
    % �����
    Ivan=red,                                                            % � ����� �������
    not(Petr=black ; Petr=blue ; Petr=cian),                             % ����� �� ������, �� ����� � �� �������
    (Michail=black ; Michail=blue),                                      % � ������� ������ � �����
    (Alexander=red ; Alexander=black ; Alexander=blue ; Alexander=cian), % � ���������� �������, ������, ����� � �������
    (Boris=white ; Boris=blue).                                          % � ������ ����� � �����

% ������
% ?-solve(Ivan, Petr, Michail, Alexander, Boris).
