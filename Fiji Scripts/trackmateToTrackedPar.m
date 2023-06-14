clear; clc;
addpath('C:\Users\admin\Documents\Fiji.app\scripts')
dirPath = uigetdir;
fileList = dir([dirPath, filesep, '*.xml']);
exposureTime = 10; % in ms

% Create a new folder to store the data
mkdir([dirPath, filesep, 'Data']);
for n = 1 : length(fileList)
  % Import trackmate data
  tracks = importTrackMateTracks([dirPath, filesep, fileList(n).name]);

  % Creating new empty trackedPar
  trackedPar = repmat(struct('xy', [], 'Frame', [], 'TimeStamp', []), length(tracks), 1);
  for m = 1 : length(tracks)
    trackedPar(m).xy = tracks{m}(:, 2:3);
    trackedPar(m).Frame = tracks{m}(:,1);
    trackedPar(m).TimeStamp = tracks{m}(:,1) .* exposureTime;
  end
  save([dirPath, filesep, 'Data', filesep, fileList(n).name(1:end-4), '_Tracked.mat'], 'trackedPar');
end