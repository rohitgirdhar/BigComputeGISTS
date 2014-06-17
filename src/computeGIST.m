function gist = computeGIST(img_fpath, GISTS_STOR_DIR)
[~, name, ~] = fileparts(img_fpath);
gist_path = fullfile(GISTS_STOR_DIR, [name, '_gist.mat']);
try
    load(gist_path, 'gist');
    if exist('gist', 'var')
        fprintf('Successfully read GIST from %s\n', name);
    end
catch
end
if ~exist('gist', 'var')
    % GIST Parameters:
    clear param
    param.imageSize = [512 384]; % set a normalized image size
    param.orientationsPerScale = [8 8 8 8]; % number of orientations per scale (from HF to LF)
    param.numberBlocks = 4;
    param.fc_prefilt = 4;

    % Computing gist:
    img = imread(img_fpath);
    [gist, ~] = LMgist(img, '', param);
    save(gist_path, 'gist');
end
