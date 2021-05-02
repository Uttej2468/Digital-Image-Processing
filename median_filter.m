function [imgnew]=median_filter(img,img2,imgnew)
    for x=1:size(img,1)
    for y=1:size(img,2)
        img2(x+1,y+1)=img(x,y);
    end
end
for i= 1:size(img2,1)-2
    for j=1:size(img2,2)-2
        window=zeros(9,1);
        inc=1;
    for x=1:3
        for y=1:3
            window(inc)=img2(i+x-1,j+y-1);
            inc=inc+1;
        end
    end
    med=sort(window);
    imgnew(i,j)=med(5);
    end
end
end
