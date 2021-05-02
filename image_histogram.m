function [histo] = image_histogram(img)
[a, b] = size (img) ;
histo = zeros (1, 256) ;

for bin =0:255
histo(bin+1)= sum(sum(img == bin) );
end
end