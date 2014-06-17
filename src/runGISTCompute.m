function runGISTCompute(id, N)
% compute gist with all others
config;
Ds = zeros([1, N]);

fid = fopen(IMG_NAMES_LIST);
L = textscan(fid, '%s', N);
fclose(fid);
L = L{1};
img1_path = fullfile(IMGS_DIR, [L{id}, '.jpg']);
for i = 1 : length(L)
    img2_path = fullfile(IMGS_DIR, [L{i}, '.jpg']);
    Ds(1, i) = computeGISTDist(img1_path, img2_path, GISTS_STOR_DIR);
end
fid = fopen(fullfile(RESULTS_DIR, int2str(id)), 'w');
fprintf(fid, '%f\n', Ds);
fclose(fid);
