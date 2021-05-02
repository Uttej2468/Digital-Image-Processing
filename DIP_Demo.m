%%Demo for Image Processing.
clc
close all;
clear

% Code

I=imread('cameraman.tif');
imshow(I)
Ipart4=I(128:255 , 128:255);
figure,imshow(Ipart4);
Ipart2=I(1:127 , 1:255);
figure,imshow(Ipart2+100)
for i=1:128
    for j = 1:128
        img_new(i,j)=0;
    end
end
figure,imshow(img_new)
