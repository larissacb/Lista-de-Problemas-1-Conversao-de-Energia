%%Conversao de Energia - Eng. Eletrica
%%Lista de Problemas 1 - Questao 1-39
%08/11/2021
%Larissa de Castro Braga - Matricula 20183000581

clc;
clear all;
close all;

%%
%Dados do exercicio
B = [0 0.2 0.4 0.6 0.7 0.8 0.9 1.0 0.95 0.9 0.8 0.7 0.6 0.4 0.2 0]; %Densidade de fluxo magnetico [T]
H = [48 52 58 73 85 103 135 193 80 42 2 -18 -29 -40 -45 -48]; %Intensidade de campo magnetico [A/m]
f = 60; %Frequencia [Hz]
ro = 7.65e3; %Densidade do aco M-5[kg/m^3]

%%
%Item a - Plotar o grafico do laco de histerese com os pontos dados no
%exercicio
figure(1)
plot(H, B,'-m','linewidth', 1.5),grid;
title("Metade Superior do Laço de Histerese do aço M-5");
xlabel("B [T]");
ylabel("H [A/m]");

%%
%Item b - Calcule a area do laco de histerese em joules

%A area foi calculada atraves do metedo dos trapezios. Como a curva de
%histerese e simetrica, basta multiplicar por 2 para encontrar a area
%total. O modulo foi obtido, pois ja se e sabido que a area equivale as
%perdas. Logo, o sinal e omitido
areaLaco = abs(2*trapz(H,B));
fprintf("A área total do laço de histerese é: %.3f J/m^3\n", areaLaco);

%%
%Item c - Calcule a densidade de perdas no nucleo a 60 Hz em W/kg

%De acordo com UMANS,2014 (pag 25): "as perdas por histerese sao proporcionais a
%area do ciclo de histerese e ao volume total do material. Como ha uma
%perda de energia a cada ciclo, a potencia das perdas por histerese e
%proporcional a frequencia de excitacao aplicada"

dPerdas =(areaLaco*f)/ro;
fprintf("A densidade de perdas no núcleo é de: %.3f W/kg\n", dPerdas);
