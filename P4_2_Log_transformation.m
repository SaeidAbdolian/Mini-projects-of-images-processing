 clc
clear all

[A B]=uigetfile({'*.jpg;*.jpeg;*.tif;*.png;*.gif'},'open image');
IMAGE = imread([B A]);
Gray = rgb2gray(IMAGE);
GrayF = double (Gray);

%% Log transformation

c = 0.25;
L =  c * log( 1 + GrayF );

%% Display

subplot(1,2,1);
imshow(Gray);
title('Real Image')

subplot(1,2,2);
imshow(L);
title('Log transformation')