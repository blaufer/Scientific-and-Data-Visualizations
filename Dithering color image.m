% Dithering color image

clear; clc;
X = imread('http://thumbs.dreamstime.com/x/cartoon-hedgehog-17359364.jpg');
Z = X;
Zmean1 = mean(mean(Z(:,:,1)));
for i = 1:size(Z,1);
    for j = 1:size(Z,2)
        if (Z(i,j,1) < Zmean1); 
            Z(i,j,1) = 0;
        else
            Z(i,j,1) = 255;
        end
    end
end
Zmean2 = mean(mean(Z(:,:,2)));
for i = 1:size(Z,1);
    for j = 1:size(Z,2)
        if (Z(i,j,2) < Zmean2); 
            Z(i,j,2) = 0;
        else
            Z(i,j,2) = 255;
        end
    end
end
Zmean3 = mean(mean(Z(:,:,3)));
for i = 1:size(Z,1);
    for j = 1:size(Z,2)
        if (Z(i,j,3) < Zmean3); 
            Z(i,j,3) = 0;
        else
            Z(i,j,3) = 255;
        end
    end
end
imshow(X)
figure, imshow(Z)