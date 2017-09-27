z=imread('C:\Users\prathima\Desktop\DIPproject\final.jpg');//z is the eroded image that we obtained

H=imread('C:\Users\prathima\Desktop\DIPproject\finalA.jpg');
I=imread('C:\Users\prathima\Desktop\DIPproject\finalB.jpg');
J=imread('C:\Users\prathima\Desktop\DIPproject\finalD.jpg');
K=imread('C:\Users\prathima\Desktop\DIPproject\finalF.jpg');
L=imread('C:\Users\prathima\Desktop\DIPproject\finalI.jpg');

a=1;
b=1;
d=1;
f=1;
l=1;

for i=1:size(z,1)
    for j=1:size(z,2)
        if z(i,j) <> H(i,j)
            a=-1;
        elseif z(i,j) <> I(i,j)
            b=-1;
        elseif z(i,j) <> J(i,j)
            d=-1; 
        elseif z(i,j) <> K(i,j)
            f=-1;
        elseif z(i,j) <> L(i,j)
            l=-1;  
        end
    end
end

if b==1 
    disp("B");
elseif a==1 
    disp("A");
elseif d==1 
    disp("D");
elseif f==1 
    disp("F");
elseif l==1 
    disp("I");
else 
    disp("No matching results");
end
