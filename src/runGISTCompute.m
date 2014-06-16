function runGISTCompute(id, N)
% compute gist with all others
config;
Ds = zeros([1, N]);

fid = fopen(IMG_NAMES_LIST);
L = textscan(fid, '%s', N);
fclose(fid);
L = L{1};
img1_path = fullfile(IMGS_DIR, [L{id}, '.jpg']);
img1 = imread(img1_path);
for i = 1 : length(L)
    img2_path = fullfile(IMGS_DIR, [L{i}, '.jpg']);
    img2 = imread(img2_path);
    Ds(1, i) = computeGISTDist(img1, img2);
end
fid = fopen(fullfile(RESULTS_DIR, int2str(id)), 'w');
fprintf(fid, '%f\n', Ds);
fclose(fid);
