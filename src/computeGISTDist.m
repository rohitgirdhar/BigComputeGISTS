function D = computeGISTDist(img1_fpath, img2_fpath, GISTS_STOR_DIR)
gist1 = computeGIST(img1_fpath, GISTS_STOR_DIR);
gist2 = computeGIST(img2_fpath, GISTS_STOR_DIR);

D = norm(gist1 - gist2);
