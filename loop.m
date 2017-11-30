% input the image into a matrix
manc = rgb2gray(imread('mancunian.jpg'));

% normalize the grayscale values 
manc = im2double(manc);

% perform the Singular Value Decomposition
[U,S,V ] = svd(manc);

sigmas = diag(S);

ranks = [200, 100, 50, 30, 20, 10, 3];
ns = length(sigmas);
for i = 1:length(ranks)
	asigmas = sigmas; 
	asigmas(ranks(i) : end) = 0;
	aS = S;
	aS(1 : ns, 1 : ns) = diag(asigmas);
	amanc = U*aS*V' ; 	
	imshow(amanc);
end
