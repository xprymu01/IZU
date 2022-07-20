% Zadání č. 10:
% Napište program řešící úkol daný predikátem u10(VIN,LOUT), kde VIN je vstupní 
% proměnná obsahující přirozené číslo menší než 20 určující požadovaný počet prvků  
% výstupního seznamu LOUT, který vrací čísla Fibonacciho posloupnosti. 

% Testovací predikáty:                          % LOUT
u10_1:- u10(7,LOUT),write(LOUT).               	% [0,1,1,2,3,5,8]
u10_2:- u10(3,LOUT),write(LOUT).                % [0,1,1]
u10_r:- write('Zadej VIN: '),read(VIN),
        u10(VIN,LOUT),write(LOUT).

u10(1, [0]).
u10(2, [0, 1]).
u10(VIN, LOUT) :-
    VIN > 2,
    N1 is VIN - 1,
    N2 is VIN - 2,
    u10(N1, F1),
    last(F1, L1),
    u10(N2, F2),
    last(F2, L2),
    L_new is L1 + L2,
    append(F1, [L_new], LOUT). 