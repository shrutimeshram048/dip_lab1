clc
clear all
close all
I = [52	55	61	59	79	61	76	61;
62	59	55	104	94	85	59	71;
63	65	66	113	144	104	63	72;
64	70	70	126	154	109	71	69;
67	73	68	106	122	88	68	68;
68	79	60	70	77	66	58	75;
69	85	64	58	55	61	65	83;
70	87	69	68	65	73	78	90]
I = uint8(I)
pixels=size(I,1)*size(I,2);
imshow(I)
Heq = uint8(zeros(size(I,1),size(I,2)));
f = zeros(256,1)
pf = zeros(256,1)
pc = zeros(256,1)
c = zeros(256,1)
out = zeros(256,1)
n = 1:256;
for i=1:size(I,1) % histogram
    for j = 1:size(I,2)
        v = I(i,j);
        f(v+1)=f(v+1)+1;
        pf(v+1)=f(v+1)/pixels;
    end
end
stem(n,pf)
title('Histogram')
figure
sum =0;
for i=1:size(pf) %cdf
    sum = sum+f(i);
    c(i) = sum;
    pc(i) = c(i)/pixels;
    out(i) = round(pc(i)*255);
end
figure
for i=1:size(I,1) %Histogram Equlization.
    for j=1:size(I,2)
        Heq(i,j) = out(I(i,j)+1);
    end
end
imshow(Heq)
title('histogram equilization.')
figure
for i=1:size(Heq,1) % histogram Equilization
    for j = 1:size(Heq,2)
        v = Heq(i,j);
        f(v+1)=f(v+1)+1;
        pf(v+1)=f(v+1)/pixels;
    end
end
stem(n,pf)
title('Histogram Equlization')
