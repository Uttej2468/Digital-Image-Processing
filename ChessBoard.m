clc
clear all
image=[256,256];
for i =1:32:256
    for j= 1:32:256
        if mod ( (i-1)/32, 2)==0
            if mod ((j-1)/32, 2)==0
                image(i: i+31, j: j+31)=255;
            end
        else
            if mod ( (j-1) /32, 2) == 1
                image(i : i+31, j: j+31)=255;
            end
        end
        
    end
end
imshow(image);