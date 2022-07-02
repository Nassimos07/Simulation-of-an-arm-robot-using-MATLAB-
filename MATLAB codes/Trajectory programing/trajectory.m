function [traj]=trajectory
x=[-5:1/500:5];
y=[-10:1/500:10];
x3=[];
y3=[];

for i=1:length(x)
      if  x(i)>=-3.3 && x(i)<=-2 
      y3=[y3 , 0.7*(x(i)+2.65)^2+1.7 ];
      x3=[x3 , x(i)] ;
      end
end
x4=[];
y4=[];

for i=1:length(x)
      if  x(i)>=-2.66 && x(i)<=-2 
      y4=[y4 ,1.2*sqrt(-x(i)-2)+2  ];
      x4=[x4 , x(i)] ;
      end
end
x4=inverse_vector(x4);
y4=inverse_vector(y4);

x5=[];
y5=[];

for i=1:length(x)
      if  x(i)>=-2.66 && x(i)<=-1.5
      y5=[y5 ,0.9*sqrt(-x(i)-1.5)+2 ];
      x5=[x5 , x(i)] ;
      end
end


x6=[];
y6=[];

for i=1:length(x)
      if  x(i)>=-1.736 && x(i)<=-1.5
      y6=[y6 ,1.5*sqrt(-x(i)-1.5)+2 ];
      x6=[x6 , x(i)] ;
      end
end
x6=inverse_vector(x6);
y6=inverse_vector(y6);


x7=[];
y7=[];

for i=1:length(x)
      if  x(i)>=-1.736 && x(i)<=-1.04
      y7=[y7 ,0.85*sqrt(-x(i)-1)+2 ];
      x7=[x7 , x(i)] ;
      end
end


x8=[];
y8=[];

for i=1:length(x)
      if  x(i)>=-1.264 && x(i)<= -1.04 
      y8=[y8 ,-4*sqrt(x(i)+1.25)+4 ];
      x8=[x8 , x(i)] ;
      end
end
x8=[-1.26,x8];
y8=[4.111355287256603, y8];
x8=inverse_vector(x8);
y8=inverse_vector(y8);
x9=[];
y9=[];

for i=1:length(x)
      if  x(i)>=-1.264 && x(i)<=0
      y9=[y9 ,4 + sqrt(1.6-x(i)^2)];
      x9=[x9 , x(i)] ;
      end
end



x10=[];
y10=[];

for i=1:length(x)
      if  x(i)>=0 && x(i)<=0.54 && y(i) < 7.6 
      y10=[y10 ,6.5 + sqrt(1.5-x(i)^2)];
      x10=[x10 , x(i)] ;
      end
end

x10=inverse_vector(x10);
y10=inverse_vector(y10);

x11=[];
y11=[];

for i=1:length(x)
      if x(i)<= 0.52 && x(i)>= -0.991
      y11=[y11 ,0.9*sqrt(x(i)+1)+6.5]; 
      x11=[x11 , x(i)] ;
      end
end
 
x11=inverse_vector(x11);
y11= inverse_vector(y11);





x12=[-1.12];
y12=[6.006846879762482];

for i=1+2:length(x)
      if x(i)<= -1 && x(i) >= -1.11
      y12=[y12 ,1.7*sqrt(x(i)+1.11)+6];
      x12=[x12 , x(i)] ;
      end
end
x12=inverse_vector(x12);
y12=inverse_vector(y12);

x13=[];
y13=[];

for i=1:length(x)
      if x(i)<= -1.11  && x(i) >= -1.5
      y13=[y13 ,-0.8*sqrt(x(i)+1.5)+6.5];
      x13=[x13 , x(i)] ;
      end
end

x13=inverse_vector(x13);
y13=inverse_vector(y13);


x14=[];
y14=[];

for i=1:length(x)
       if x(i)<= -1.25  && x(i) >= -1.5
      y14=[y14 ,1.1*sqrt(x(i)+1.5)+6.5 ]; 
      x14=[x14 , x(i)] ;
      end
end




x16=[-1.26];
y16=[7.0388877434123];

for i=1+1:length(x)
       if x(i)>= -1.25  && x(i) <= -1.01
         
        y16=[y16 ,3.3*sqrt(x(i)+1.25)+7  ]; 
        x16=[x16 , x(i)] ;
      end
end


x17=[];
y17=[];

for i=1:length(x)
       if x(i)>= -1.49  && x(i) <= -1
         
        y17=[y17 ,-2*sqrt(x(i)+1.49)+10 ]; 
        x17=[x17 , x(i)] ;
      end
end
y17=[9.9857 y17];
x17=[-1.4800 x17];
x17=inverse_vector(x17);
y17=inverse_vector(y17);

x18=[];
y18=[];

for i=1:length(x)
       if x(i)>= -1.49  && x(i) <= 1.05
         
        y18=[y18 ,0.45*x(i)^2+9 ]; 
        x18=[x18 , x(i)] ;
      end
end


x19=[];
y19=[];

for i=1:length(x)
       if x(i)>=0.5  && x(i) <=1.05
         
        y19=[y19 ,2*sqrt(x(i)-0.5)+8]; 
        x19=[x19 , x(i)] ;
      end
end
x19=inverse_vector(x19);
y19=inverse_vector(y19);


x20=[];
y20=[];

for i=1:length(x)
       if x(i)>=0.5  && x(i) <=1
         
        y20=[y20 ,-0.1*sqrt(-x(i)+1)+8.0803]; 
        x20=[x20 , x(i)] ;
      end
end



y21=[5.275:1/100:7.6];
x21=[sqrt(1.5-(6.5-y21(1))^2)];
n=1;i=2;
while 1
    x21=[x21,sqrt(1.5-(6.5-y21(i))^2)];
    n=length(x21);
    i=i+1;
    if i==length(y21)+1
        break
    end
end






y23=[4.902:1/100:8.068];
x23=[0.05+sqrt(3.4-(6.5-y23(1))^2)];
n=1;i=2;
while 1
    x23=[x23,0.05+sqrt(3.4-(6.5-y23(i))^2)];
    n=length(x23);
    i=i+1;
    if i==length(y23)+1
        break
    end
end


y23=inverse_vector(y23);
x23=inverse_vector(x23);

y24=[2.1:1/100:4.9];
x24=[0.5*(y24(1)-3.5)^2];
n=1;i=2;
while 1
    x24=[x24,0.5*(y24(i)-3.5)^2];
    n=length(x24);
    i=i+1;
    if i==length(y24)+1
        break
    end
end

y24=inverse_vector(y24);
x24=inverse_vector(x24);
x25=[];
y25=[];

for i=1:length(x)
      if  x(i)<=1.736 && x(i)>=1.04
         y25=[y25 ,0.85*sqrt(x(i)-1)+2 ];
         x25=[x25 , x(i)] ;
      end
end


x26=[];
y26=[];

for i=1:length(x)
      if  x(i)<=1.736 && x(i) >=1.5
      y26=[y26 ,1.5*sqrt(x(i)-1.5)+2 ];
      x26=[x26 , x(i)] ;
      end
end
y26=inverse_vector(y26);
x26=inverse_vector(x26);
x27=[];
y27=[];

for i=1:length(x)
      if  x(i)>=1.5 && x(i)<=2.66
      y27=[y27 ,0.9*sqrt(x(i)-1.5)+2 ];
      x27=[x27 , x(i)] ;
      end
end

x28=[];
y28=[];

for i=1:length(x)
      if  x(i)>=2 && x(i)<=2.66 
      y28=[y28 ,1.2*sqrt(x(i)-2)+2  ];
      x28=[x28 , x(i)] ;
      end
end
y28=inverse_vector(y28);
x28=inverse_vector(x28);

x29=[];
y29=[];

for i=1:length(x)
      if  x(i)>=2 && x(i)<=3.3 
      y29=[y29 , 0.7*(x(i)-2.65)^2+1.7 ];
      x29=[x29 , x(i)] ;
      end
end


x30=[];
y30=[];

for i=1:length(x)
      if  x(i)>=2.5 && x(i)<=3.3 
      y30=[y30 , 10-abs(10*x(i)-25)];
      x30=[x30 , x(i)] ;
      end
end
y30=inverse_vector(y30);
x30=inverse_vector(x30);
x31=[];
y31=[];

for i=1:length(x)
    
   if  x(i)>= 2.5 
     y31=[y31 , abs(4*x(i)-20)];
     x31=[x31 , x(i)] ;
   end
end

x_3=[x3,x4,x5,x6,x7,x8,x9,x21,x11,x12,x13,x14,x16,x17,x18,x19,x20,x23,x24,x25,x26,x27,x28,x29];
y_3=[y3,y4,y5,y6,y7,y8,y9,y21,y11,y12,y13,y14,y16,y17,y18,y19,y20,y23,y24,y25,y26,y27,y28,y29];


x=[];y=[];
x_1=[];y_1=[];
x1=[2.5:1/100:5];
x22=-x1;
y1=[abs(4*x1(1)-20)];
y2=[-abs(4*x1(1)-20)];
y22=[-abs(4*x22(1)+20)];
n=1;
i=2;
while y1(n)<=10 
    y1=[y1,abs(4*x1(i)-20)];
    y2=[y2,-abs(4*x1(i)-20)];
    y22=[y22,-abs(4*x22(i)+20)];

    n=length(y2);
    i=i+1;
    if i==length(x1)+1
        break
    end
end

x3=[2.5:1/100:3.3];
y3=[-abs(10*x3(1)-25)+10];
n=1;
i=2;
while y3(n)>=2 
    y3=[y3,-abs(10*x3(i)-25)+10];
    n=length(y3);
    i=i+1;
    if i==length(x3)+1
        break
    end
end

x=inverse_vector(x3);y=inverse_vector(y3);
[x,y]=concatinate(x,y,x1,y1);
[x,y]=concatinate(x,y,inverse_vector(x1),inverse_vector(y2));
x4=[-1.49:1/500:1.05];
y4=[0.45*(x4(1)^2)+9];
n=1;
i=2;
while y4(n)<=10 
    y4=[y4,0.45*(x4(i)^2)+9];
    n=length(y4);
    i=i+1;
    if i==length(x4)+1
        break
    end
end

y5=[-10:1/100:-7];
x5=[2.5];
y21=y5;
for i=2:length(y5)
    x5=[x5,2.5];
end
x21=-x5;

y=[y,y5];x=[x,x5];
x6=[2.5:1/500:2.94];
x20=-x6;
y20=[10*(x20(1)+2.5)^2-7];
y6=[10*(x6(1)-2.5)^2-7];
n=1;i=2;
while y6(n)<=-5 
    y6=[y6,10*(x6(i)-2.5)^2-7];
    y20=[y20,10*(x20(i)+2.5)^2-7];
    n=length(y6);
    i=i+1;
    if i==length(x6)+1
        break
    end
end
y6(length(y6))=-5;

y=[y,y6];x=[x,x6];
x7=[2.94:1/250:3.18 ];
x71=-x7;
y7=[2*sqrt(10*x7(1)-29.4)-5];
y71=[2*sqrt(-10*x71(1)-29.4)-5];
n=1;
i=2;
while y7(n)<=-1.915
    y7=[y7,2*sqrt(10*x7(i)-29.4)-5];
    y71=[y71,2*sqrt(-10*x71(i)-29.4)-5];
    n=length(y7);
    i=i+1;
    if i==length(x7)+1
        break
    end
end
y71(n)=-1.91372;

y=[y,y7];x=[x,x7];         
x8=[2:1/250:3.18 ];
y8=[sqrt(x8(1)-2)-3];
x19=-x8;
y19=[sqrt(-x8(1)-2)-3];
n=1;
i=2;
while 1
    y8=[y8,sqrt(x8(i)-2)-3];
    y19=[y19,sqrt(-x19(i)-2)-3];
    n=length(y8);
    i=i+1;
    if i==length(x8)+1
        break
    end
end

y=[y,inverse_vector(y8)];x=[x,inverse_vector(x8)];
x9=[2:1/500:2.05 ];
x10=-x9;
y9=[5*sqrt(x9(1)-2)-3];
y10=[5*sqrt(-x10(1)-2)-3];
n=1;
i=2;
while y9(n)<=-1.88 || y10(n)
    y9=[y9,5*sqrt(x9(i)-2)-3];
    y10=[y10,5*sqrt(-x10(i)-2)-3];
    n=length(y9);
    i=i+1;
    if i==length(x9)+1
        break
    end
end
y10(length(y10))=-1.84783;

%y9(length(y9))=-1.88;
y=[y,y9];x=[x,x9];
x11=[1.41:1/100:2.049 ];
y11=[2.5*sqrt(x11(1)-0.5)-5];
n=1;
i=2;
while 1
    y11=[y11,2.5*sqrt(x11(i)-0.5)-5];
    n=length(y11);
    i=i+1;
    if i==length(x11)+1
        break
    end
end

y=[y,inverse_vector(y11)];x=[x,inverse_vector(x11)];
x12=[0.54:1/500:1.41];
y12=[20*    (x12(1)-1)^3-4];
n=1;
i=2;
while y12>=-6
    y12=[y12,20*(x12(i)-1)^3-4];
    n=length(y12);
    i=i+1;
    if i==length(x12)+1
        break
    end
end

y=[y,inverse_vector(y12)];x=[x,inverse_vector(x12)];
x13=[-0.949:1/250:0.54];
y13=[-1.6*sqrt(-x13(1)+0.53584)-6];
n=1;
i=2;
while y13>=-7.95
    y13=[y13,-1.6*sqrt(-x13(i)+0.53584)-6];
    n=length(y13);
    i=i+1;
    if i==length(x13)+1
        break
    end
end
x13(i-1)=0.54;
y13(n)=-5.94672;
y=[y,inverse_vector(y13)];x=[x,inverse_vector(x13)];
x14=[-1:1/250:-0.75];
y14=[-2*sqrt(x14(1)+1)-8];
n=1;
i=2;
while y14>=-9
    y14=[y14,-2*sqrt(x14(i)+1)-8];
    n=length(y14);
    i=i+1;
    if i==length(x14)+1
        break
    end
end
x15=[-1:1/250:0];
y15=[-2*sqrt(-x15(1))-6];
n=1;
i=2;
while y15>=-8
    y15=[y15,-2*sqrt(-x15(i))-6];
    n=length(y15);
    i=i+1;
    if i==length(x15)+1
        break
    end
end
%x14 et y14 sont les derniere coordonnées
x16=[-0.75:1/500:0.75];
y16=[-9];
n=1;
i=2;
while 1
    y16=[y16,0.45*x16(i)^2-9.25];
    n=length(y16);
    i=i+1;
    if i==length(x16)+1
        break
    end
end
x_1=[x_1,x16];y_1=[y_1,y16];
x17=[-0.75:1/100:0.75];
y17=[-9];
n=1;
i=2;
while y17<=-9
    y17=[y17,1.34*abs(x17(i))-10];
    n=length(y17);
    i=i+1;
    if i==length(x17)+1
        break
    end
end

y_1=[y_1,inverse_vector(y17)];x_1=[x_1,inverse_vector(x17)];
y_1=[y_1,inverse_vector(y14)];x_1=[x_1,inverse_vector(x14)];
y_1=[y_1,y15];x_1=[x_1,x15];
x18=[-2.05:1/250:0];
y18=[2.9*sqrt(-x18(1))-6];
n=1;
i=2;
while 1
    y18=[y18,2.9*sqrt(-x18(i))-6];
    n=length(y18);
    i=i+1;
    if i==length(x18)+1
        break
    end
end
y_1=[y_1,inverse_vector(y18)];x_1=[x_1,inverse_vector(x18)];
y_1=[y_1,inverse_vector(y10)];x_1=[x_1,inverse_vector(x10)];
y_1=[y_1,y19];x_1=[x_1,x19];
y_1=[y_1,inverse_vector(y71)];x_1=[x_1,inverse_vector(x71)];
y_1=[y_1,inverse_vector(y20)];x_1=[x_1,inverse_vector(x20)];
y_1=[y_1,inverse_vector(y21)];x_1=[x_1,inverse_vector(x21)];
y_1=[y_1,y22];x_1=[x_1,x22];
y_1=[y_1,-inverse_vector(y22)];x_1=[x_1,inverse_vector(x22)];
y_1=[y_1,y3];x_1=[x_1,-x3];
x_2=x;
%plot(inverse_vector(x22),-inverse_vector(y22))
%plot(x1,y1,x1,y2,x14,y14,x5,y5,x6,y6,x7,y7,x8,y8,x9,y9,x11,y11,x12,y12,x13,y13,x15,y15,x16,y16,x17,y17,x18,y18,x10,y10,x19,y19,x71,y71)
X=[];
Y=[];

Y=[y_1,y_3,y];
X=[x_1,x_3,x];
traj=[X;Y]';
end
