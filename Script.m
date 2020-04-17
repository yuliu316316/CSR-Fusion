close all;
clear all;
clc;

% Load dictionary
load('dict.mat');  

% Load images
A=imread('sourceimages/s01_1.tif');
B=imread('sourceimages/s01_2.tif');
figure,imshow(A)
figure,imshow(B)

%key parameters
lambda=0.01; 
flag=1; % 1 for multi-focus image fusion and otherwise for multi-modal image fusion

%CSR-based fusion
tic;
F=CSR_Fusion(A,B,D,lambda,flag);
toc;

figure,imshow(F);
imwrite(F,'results/s01_csr.tif');