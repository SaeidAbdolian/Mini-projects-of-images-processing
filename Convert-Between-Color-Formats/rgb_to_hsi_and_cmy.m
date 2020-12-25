clc
clear all
R = input('Enter The value of Red between 0 and 255=');
G = input('Enter The value of Green between 0 and 255=');
B = input('Enter The value of Blue between 0 and 255=');

r = R/255;
g = G/255;
b = B/255;

rgb = ones(1000);
rgb(:,:,1) = r;
rgb(:,:,2) = g;
rgb(:,:,3) = b;
subplot(3,1,1) ;
imshow(rgb)
title('RGB');



......................................................................
% H=

top = ((r-g)+(r-b))/2;              % The face of the fractional equation
sub =  sqrt((r-g)^2 + (r-b)*(g-b));   % The denominator of the fractional equation
tetta = (acos(top/sub))*180/pi;              % The equation
    
if b<=g 
    h = tetta;
    H =360-h/360;
else
    h = 360 - tetta;
    H = h/360;
end
......................................................................
% S=

if r<=b && r<=g
    min_rgb = r;
elseif g<=r && g<=b
    min_rgb = g;
else
    min_rgb = b;
end
    
S = 1 - ( (3/(r+g+b)) * (min_rgb) );
.......................................................................
% I=

I = (r+g+b)/3;
.......................................................................

HSI(:,:,1) = H;
HSI(:,:,2) = S;
HSI(:,:,3) = I;
subplot(3,1,2);
imshow(HSI)
title('HSI');

C = 1 - r;
M = 1 - g;
Y = 1 - b;

CMY(:,:,1) = C;
CMY(:,:,2) = M;
CMY(:,:,3) = Y;
subplot(3,1,3);
imshow(CMY)
title('CMY');