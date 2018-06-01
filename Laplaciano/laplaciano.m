function imgSai = laplaciano(imgEnt,n)
imgCinza = (0.2989 * double(imgEnt(:,:,1)) + 0.5870 * double(imgEnt(:,:,2)) + 0.1140 * double(imgEnt(:,:,3)))/255;

kernel=ones(n); 
kernel(int8(n/2),int8(n/2)) = -(n*n-1);

imgSai = conv_2d(imgCinza,kernel);

end

