A=imread("C:\Users\prathima\Desktop\DIPproject\i.png");

S=rgb2gray(A);//coverting coloured image to grayscale

B=[1 0 0; 0 1 0; 0 0 1]; //structuring element for dilation

Z=edge(S,'canny',[.08,.09]); //canny edge detection

imwrite(Z,"C:\Users\prathima\Desktop\DIPproject\cannyI.jpg");

C = zeros(258,258);

for i=2:size(C,1)-1
    for j=2:size(C,2)-1
        C(i,j)=Z((i-1),(j-1));
    end
end
//C is the padded array 

D=zeros(256,256);
for i=1:size(C,1)-2
    for j=1:size(C,2)-2
        D(i,j)=sum(B&C(i:i+2,j:j+2));
    end
end

for i=1:size(D,1)
    for j=1:size(D,2)
        if D(i,j)>0 then
            D(i,j)=1;
        else
            D(i,j)=0;
        end
    end
end

//D is the dilated image

imwrite(D,"C:\Users\prathima\Desktop\DIPproject\dilateI.jpg");

P=[0 1 1]; //structuring element for erosion

Q=ones(256,258);

R = zeros(256,256);

for i=1:size(Q,1)
    for j=2:size(Q,2)-1
        Q(i,j)=D((i),(j-1));
    end
end

//R is the padded array

for i=1:size(Q,1)
    for j=1:size(Q,2)-2
        In=Q(i,j:j+2);
        In1=find(P==1);
        if(In(In1)==1)
        R(i,j)=1;
        end
    end
end

//R is the eroded image

imwrite(R,"C:\Users\prathima\Desktop\DIPproject\finalI.jpg");


