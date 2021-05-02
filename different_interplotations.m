%% 
% *DIGITAL IMAGE PROCESSING LAB L-55+56*
% 
% *ASSIGNMENT-4* 
% 
% *Author :- P.SAI UTTEJ*
% 
% *19BCE7163* 
% 
% 
% 
% *4A]*

clc
clear
close all
img=imread("cameraman.tif");
imshow(img);

%Nearest neighbor interpolation.
%The value of a pixel located at (x, y) is the 
% value of the pixel that is closest to (x, y) in the original image

imgnear=imresize(img,[512 512],"Method","nearest");
imshow(imgnear);

%Bicubic interpolation uses cubic splines or other 
%polynomial technique for sharpening and enlarging digital images.
imgbicubic=imresize(img,[512 512],"Method","bicubic");
imshow(imgbicubic);

%Bilinear interpolation. The value of a pixel located at (x, y)
% is a weighted average of the surrounding pixels in the
% original image.
imgbilinear=imresize(img,[512 512],"Method","bilinear");
imshow(imgbilinear);

%ploting all the images in a row.
subplot(3,3,1);
title("Nearest image");
imshow(imgnear);
subplot(3,3,2);
title("Bicubic image");
imshow(imgnear);
subplot(3,3,3);
title("Bilinear image");
imshow(imgnear);

% CONCLUSION :- Bicubic interplotation is better than rest of them.
% we can compare the zoomed images and we can conclude.
%% 
% *4B-part1)*

clear
close all
img=imread("rice.png");
imgnew=255-img;
subplot(2,2,1);
title("Before Transformation");
imshow(img);
subplot(2,2,2);
title("After Transformation");
imshow(imgnew);
%% 
% *4B-part2)*

clear
close all
img=imread("Hubble.tif");
[m,n]=size(img);
for i=1:m
    for j=1:n
        if (0<img(i,j)<=50)
            imgnew(i,j)=2*img(i,j);
        elseif(img(i,j)>50 && img(i,j)<=100)
            imgnew(i,j)=100;
        elseif(img(i,j)>100 && img(i,j)<=150)
            imgnew(i,j)=150;
        elseif(img(i,j)>150 && img(i,j)<=255)
            imgnew(i,j)=105-img(i,j);
        end
    end
end
subplot(2,2,1);
title("Before Transformation");
imshow(img);
subplot(2,2,2);
title("After Transformation");
imshow(imgnew);