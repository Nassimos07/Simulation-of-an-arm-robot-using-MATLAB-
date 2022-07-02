function [x]=inverse_vector(a)
    b=a;
    n=length(a);
    x=[a(n)];
    for i=1:n-1
        x=[x,a(n-i)];
    end
end