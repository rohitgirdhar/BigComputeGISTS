function gist = computeGIST(img)
% GIST Parameters:
clear param
param.imageSize = [512 384]; % set a normalized image size
param.orientationsPerScale = [8 8 8 8]; % number of orientations per scale (from HF to LF)
param.numberBlocks = 4;
param.fc_prefilt = 4;

% Computing gist:
[gist, ~] = LMgist(img, '', param); 
