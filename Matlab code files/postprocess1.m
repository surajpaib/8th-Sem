I=imread('C:\Users\Suraj\OneDrive\Documents\8th Sem\Repository\Deepthi\Gesture1\variant1.png');

i=imresize(I,[256,256]);
imshow(i);

img=imresize(I,[256,256]);


fun = @(block_struct) procblock(block_struct.data);
B=blockproc(img,[16 16],fun,'UseParallel',true);
C=zeros(256,1);
k=1;
count=1;
for j=1:16
     for i=1:4096
         C(k,1)=B(i,j);
         
         if (k>=256)
             
          xlswrite('C:\Users\Suraj\OneDrive\Documents\8th Sem\Repository\Suraj\Gesture1\dataset1.xls',C,count);   
          k=1;
          count=count+1;
         else
             k=k+1;
             
         end
     end
end
imshow(C);







