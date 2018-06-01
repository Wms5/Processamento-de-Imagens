close all
clc

img = imread('h1.png');
figure
imshow(img),title('Imagem Original');

n=3;
imglaplaciano= laplaciano(img,n);
figure
imshow(imglaplaciano),title('Filtro Laplaciano 3x3');

n=5;
imglaplaciano= laplaciano(img,n);
figure
imshow(imglaplaciano),title('Filtro Laplaciano 5x5');

n=7;
imglaplaciano= laplaciano(img,n);
figure
imshow(imglaplaciano),title('Filtro Laplaciano 7x7');

n=9;
imglaplaciano= laplaciano(img,n);
figure
imshow(imglaplaciano),title('Filtro Laplaciano 9x9');

n=15;
imglaplaciano= laplaciano(img,n);
figure
imshow(imglaplaciano),title('Filtro Laplaciano 15x15');
