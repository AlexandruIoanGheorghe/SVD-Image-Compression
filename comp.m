% input the image into a matrix
manc = rgb2gray(imread('mancunian.jpg'));

% normalize the grayscale values 
manc = im2double(manc);

% perform the Singular Value Decomposition
[U,S,V ] = svd(manc);

sigmas = diag(S);
imshow(manc);

ns = length(sigmas);
asigmas = sigmas;

% take only the first 40 Singular Values
asigmas(40 : end) = 0;
aS = S;
aS(1 : ns, 1 : ns) = diag(asigmas);
amanc = U*aS*V'; 

% display the new image
imshow(amanc);