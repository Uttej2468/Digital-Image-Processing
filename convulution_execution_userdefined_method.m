img=imread("cameraman.tif"); %reading cameraman image and loading into variable img
figure,imshow(img);          %displaying img's image
[m,n]=size(img);             %initializing the size of image into m and n variables
imgpad = zeros(258,258);     %assigning the imgpad to zeros 258 rows and 258 coloumns .
imgpad(2:257,2:257)=img;

subplot(2,3,1)
edgemask=[-1 -1 -1 ;-1 8 -1;-1 -1 -1];
op=convulution_user(imgpad,m,n,edgemask);
figure, imshow(uint8(op));

subplot(2,3,2)
line_de_ho=[-1 -1 -1 ;2 2 2;-1 -1 -1];
op=convulution_user(imgpad,m,n,line_de_ho);
figure, imshow(uint8(op));

subplot(2,3,3)
line_de_ho=[-1 2 -1 ;-1 2 -1;-1 2 -1];
op=convulution_user(imgpad,m,n,line_de_ho);
figure, imshow(uint8(op));

%imshow(imgaussfilt(uit8("cameraman.tif")));