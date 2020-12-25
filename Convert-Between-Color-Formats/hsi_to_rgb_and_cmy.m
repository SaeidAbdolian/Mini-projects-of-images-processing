clc
clear all
H=input('Enter value of H according to degree between 0 and 360 :');
S=input('Enter value of S between 0 and 1:');
I=input('Enter value of I between 0 and 1:'); 

HSI = ones(1000);

HSI(:,:,1) = H/360;
HSI(:,:,2) = S;
HSI(:,:,3) = I;
subplot(3,1,1);
imshow(HSI)
title('HSI');

R=(I/3)-S*cos(H/sqrt(6))-S*sin(H/2);
G=(I/3)-S*cos(H/sqrt(6))+S*sin(H/2);
B=(I/3)+sqrt(6)*S*cos(H/3);


RGB(:,:,1)=R;
RGB(:,:,2)=G;
RGB(:,:,3)=B;

subplot(3,1,2)
imshow(RGB)
title('RGB')

C = 1 - ((I/3)-S*cos(H/sqrt(6))-S*sin(H/2));
M = 1 - ((I/3)-S*cos(H/sqrt(6))+S*sin(H/2));
Y = 1 - ((I/3)+sqrt(6)*S*cos(H/3));

CMY(:,:,1) = C;
CMY(:,:,2) = M;
CMY(:,:,3) = Y;
subplot(3,1,3);
imshow(CMY)
title('CMY');
