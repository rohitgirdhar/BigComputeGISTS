function D = computeGISTDist(img1, img2)
gist1 = computeGIST(img1);
gist2 = computeGIST(img2);

D = norm(gist1 - gist2);
