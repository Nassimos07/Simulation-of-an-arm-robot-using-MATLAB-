function [a,b]=concatinate(x,y,x1,y1)
    a=x;
    b=y;
    n=length(x1);
    for i=1:n
        a=[a,x1(i)];
        b=[b,y1(i)];
    end
end