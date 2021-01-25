clc; clear all;

[file adrs]=uigetfile({'*.jpg;*.png;*.gif','All Image Files';...
          '*.*','All Files' });
pic1=imread([adrs file]);
pic1=rgb2gray(pic1);

[s1,s2,s3]=size(pic1);

N=s1*s2; % number of pixles
%%
hist=[0:255];
 for i=0:255
   
       hist(i+1)=sum(sum( pic1==i));%Histogram
 end

   
pdf=hist./N; %Probability density function


for i=1:255;
    
    cdf(i)=sum(pdf(1:i)); % cumulative distribution function
end

 hieq=round((cdf)*255);% Equalized Histogram

pic2=pic1;
 %%
 
%  for i=1:255;
%     
%     cdf(i)=sum(hist(1:i)); % cumulative distribution function
% end
% hieq=round(((cdf-min(cdf))./(N-min(cdf))).*255); 

%%

 %final output image reconstruction
for i=1:255

    pic2(pic1==i)=hieq(i); %Enhanced Image
    
end


for i=0:255
        hist2(i+1)=sum(sum( pic2==i) );% Histogram of Enhanced Image
end
%%
figure
subplot(2,1 ,1)
c = bar(hist,'g');
title('Histogram of orginal image');
grid on
subplot(2,1 ,2)
c = bar(hist2,'b');
title('Histogram of Enhanced Image');
grid on

figure
subplot(1,2,1), imshow(pic1)
title('orginal image');
subplot(1,2,2), imshow(pic2)
title('Enhanced Image');
