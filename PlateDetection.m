clear all;
close all;
clc;

img = imread('1.png');
img = rgb2gray(img);
img = imbinarize(img);
h_im = imshow(img);
e = [24 13 154 33];
img = imerode(img,strel('disk',1));
img = imdilate(img,strel('diamond',2));
BW = imcrop(img,e);
ocrResults = ocr(BW);
fprintf('%c',ocrResults.Text);


img2 = imread('2.png');
img2 = rgb2gray(img2);
img2 = imbinarize(img2);
h_im2 = imshow(img2);
e2 = [28 9 124 32];
img2 = imerode(img2,strel('disk',1));
img2 = imdilate(img2,strel('diamond',1));
BW2 = imcrop(img2,e2);
ocrResults2 = ocr(BW2);
fprintf('%c',ocrResults2.Text);

img3 = imread('3.png');
img3 = rgb2gray(img3);
img3 = imbinarize(img3);
h_im3 = imshow(img3);
e3 = [57.3786936236392 21.9696734059098 239.98133748056 49.8662519440124];
img3 = imerode(img3,strel('disk',1));
img3 = imdilate(img3,strel('square',7));
BW3 = imcrop(img3,e3);
ocrResults3 = ocr(BW3);
fprintf('%c',ocrResults3.Text);

img4 = imread('4.png');
img4 = rgb2gray(img4);
img4 = imbinarize(img4);
h_im4 = imshow(img4);
e4 = [11.0530877573131 16.2957746478873 141.289274106176 26.6879739978331];
BW4 = imcrop(img4,e4);
ocrResults4 = ocr(BW4);
fprintf('%c',ocrResults4.Text);

img5 = imread('5.png');
img5 = imresize(img5, 9);
img5 = im2double(img5);
img5 = im2gray(img5);
h_im5 = imshow(img5);
e5 = [135 94 1235 225];
img5 = imerode(img5,strel('disk',5));
BW5 = imcrop(img5,e5);
ocrResults5 = ocr(BW5);
fprintf('%c',ocrResults5.Text);

img6 = imread('6.png');
img6 = imresize(img6, 9);
img6 = im2double(img6);
img6 = rgb2gray(img6);
img6 = imbinarize(img6);
h_im6 = imshow(img6);
%e6 = imrect(gca,[]);
%%%%%Crop W
%e6 = [121 49 194 253];
%%%%Crop Numbers
%e6 = [760 50 426 253];
%%%%Crop K
%e6 = [1186 44 172 249];
%%%%Crop Second
%e62 = [767 42 606 261];
%%%%%All
e6 = [46 46 1403 258];
img6 = imdilate(img6,strel('diamond',10));
BW6 = imcrop(img6,e6);
ocrResults6 = ocr(BW6,'CharacterSet','WRKl023456789');
fprintf('%c',ocrResults6.Text);


img7 = imread('7.png');
img7 = imresize(img7, 9);
img7 = im2double(img7);
img7 = rgb2gray(img7);
img7 = imbinarize(img7);
h_im7 = imshow(img7);
ocrResults7 = ocr(img7);
fprintf('%c',ocrResults7.Text);

subplot(421), imshow(BW), title(ocrResults.Text)
subplot(422), imshow(BW2), title(ocrResults2.Text)
subplot(423), imshow(BW3), title(ocrResults3.Text)
subplot(424), imshow(BW4), title(ocrResults4.Text)
subplot(425), imshow(BW5), title(ocrResults5.Text)
subplot(426), imshow(BW6), title(ocrResults6.Text)
subplot(427), imshow(img7), title(ocrResults7.Text)
