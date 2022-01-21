clc
clear all
close all
a = imread("my.jpg");
original_image=imshow(a)
size(a)

%task1
R = a(:,:,1);
G= a(:,:,2);
B = a(:,:,3);
newimage = zeros(size(a,1),size(a,2),'uint8');
for x=1:size(a,1)
    for y=1:size(a,2)
        newimage(x,y) = (R(x,y).333)+(G(x,y).333)+(B(x,y)*.333);
    end
end
gray_image=figure,imshow(newimage)
size(newimage)

%task2
[r,c] = size(newimage)
for i = 1:r
    for j=1:c
        f = newimage(i,j);
        if f<127
            newimage1(i,j)=0;
        elseif f>127 && f<256
            newimage1(i,j)=255;
        end
        
    end
end

binary_image=figure,imshow(newimage1)
size(newimage1)

%task3
image = newimage+newimage;
add_image=figure,imshow(image)
size(image)

%task4
resize_gray= imresize(newimage,[size(newimage)+20]);

resized_image=figure,imshow(resize_gray)
size(resize_gray)