img=imread('cameraman.tif');%reading cameraman image and loading into variable img
subplot(2,4,1) ,imshow(img);   %displaying img's image
title('orginal Image')
[m,n]=size(img);             %initializing the size of image into m and n variables
imgpad = zeros(258,258);     %assigning the imgpad to zeros 258 rows and 258 coloumns .
imgpad(2:257,2:257)=img;


edgemask=[-1 -1 -1 ;-1 8 -1;-1 -1 -1];
op=convulution_user(imgpad,m,n,edgemask);
subplot(2,4,2),imshow(uint8(op));
title('Edge Mask')


line_de_ho=[-1 -1 -1 ;2 2 2;-1 -1 -1];
op=convulution_user(imgpad,m,n,line_de_ho);
subplot(2,4,3), imshow(uint8(op));
title('horizontal_line detection ')


line_de_ho=[-1 2 -1 ;-1 2 -1;-1 2 -1];
op=convulution_user(imgpad,m,n,line_de_ho);
subplot(2,4,4) , imshow(uint8(op));
title('vertical_line detection ')

horiz_edge=[-1 -2 -1 ;-0 0 0;1 2 1];
op=convulution_user(imgpad,m,n,horiz_edge);
subplot(2,4,5) , imshow(uint8(op));
title('horizantal edge')

horiz_edge=[-1 0 1 ;-2 0 2;-1 0 1];
op=convulution_user(imgpad,m,n,horiz_edge);
subplot(2,4,6) , imshow(uint8(op));
title('Vertical edge')

Img = imread('cameraman.tif');
A = imnoise(Img,'Gaussian',0.04,0.003);
figure,imshow(A);
title('')