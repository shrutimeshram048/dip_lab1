clc 
clear all
close all
I = imread('girl.jpg');
Icolor = I;
imshow(I)

Ig1 = round(I(:,:,1)/3);
Ig2 = round(I(:,:,2)/3);
Ig3 = round(I(:,:,3)/3);
Igimg = Ig1+Ig2+Ig3;
figure,imshow(Igimg)

Ir1 = Icolor; %red image
Ir1(:,:,2) = 0;
Ir1(:,:,3) = 0;
figure,imshow(Ir1)

Ig1 = Icolor; %green image
Ig1(:,:,1) = 0;
Ig1(:,:,3) = 0;
figure,imshow(Ig1)

Ib1 = Icolor; %blue image
Ib1(:,:,1) = 0;
Ib1(:,:,2) = 0;
figure,imshow(Ib1)