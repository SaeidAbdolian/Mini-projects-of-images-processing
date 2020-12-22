clc
clear all

%% Data

%a=imread('C:\Users\Asus\Desktop\mmd.parsa\prj\chloe.jpg');
[A B] = uigetfile({'*.jpg;*.jpeg;*.tif;*.png;*.gif;'},'Select An Image');
DATA = imread([B A]);
DATA = rgb2gray(DATA);

%% Histogram

histogram = zeros(1,256);

for i = 0 : 255
    
    c = (DATA == i);
    histogram(i+1) = sum (c(:));
    
end

%% Display

subplot(1,2,1);
imshow(DATA)
title('Gray Image')

subplot(1,2,2);
bar (histogram,0,'k')
grid on
ylabel('Number of pixels')
xlabel('Intensity levels'), xlim([0 255])
title('Histogram')
