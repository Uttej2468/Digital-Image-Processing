function[op]= convulution_user(imgpad,m,n,w)
    for i=1:m
    for j=1:n
        te=imgpad(i:i+2 , j:j+2).*w;
        op(i,j)=sum(te,"all");  %summing up the values and assigning to mid value in array
    end
end
end
