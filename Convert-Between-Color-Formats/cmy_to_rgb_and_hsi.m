clc
clear all
C = input('Enter value of C between 0 and 1 :');
M = input('Enter value of M between 0 and 1 :');
Y = input('Enter value of Y between 0 and 1 :');

CMY = ones(1000);

R = 1-C;
G = 1-M;
B = 1-Y;
CMY(:,:,1) = R;
CMY(:,:,2) = G;
CMY(:,:,3) = B;
subplot(3,1,1)
imshow(CMY)
title('CMY')

RGB(:,:,1) = C;
RGB(:,:,2) = M;
RGB(:,:,3) = Y;

subplot(3,1,2)
imshow(RGB)
title('RGB')
.....................................................................
% H=

top = ((R-G)+(R-B))/2;              % The face of the fractional equation
sub =  sqrt((R-G)^2 + (R-B)*(G-B));   % The denominator of the fractional equation
tetta = (acos(top/sub))*180/pi;              % The equation
    
if B<=G 
    h = tetta;
else
    h = 360 - tetta;
end
.........................................................................
% S=

if R<=B && R<=G
    min_rgb = R;
elseif G<=R && G<=B
    min_rgb = G;
else
    min_rgb = B;
end

s = 1-((3*min(min_rgb))/(R+G+B));
........................................................................
% I=

i = (R+G+B)/3;
........................................................................
H = double(h);
S = double(s);
I = double(i);

HSI(:,:,1)=H;
HSI(:,:,2)=S;
HSI(:,:,3)=I;
subplot(3,1,3)
imshow(HSI)
title('HSI')