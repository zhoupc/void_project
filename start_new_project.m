function start_new_project(project_name, folder)
%% start a new project and save it into the selected folder 
%% input: 
%   project_name: string, project name 
%   folder: string, parent folder of the project, default: ./
%% output: 
%   flag: boolean, indicate whether the project is created successfully 
%% author: 
% Pengcheng Zhou @ Columbia University
% zhoupc1988@gmail.com


if nargin<2 
    folder = pwd(); 
elseif ~exist(folder, 'dir')
    error('the selected folder doesn''t exist!'); 
end 

project_folder = fullfile(folder, project_name); 
subfolder_list = {'Data', 'Figure', 'packages', 'Results','scripts',...
    'manuscript', 'Videos'}; 

fprintf('project folder:\n\t%s\n', project_folder); 
fprintf('creating subfolders:\n'); 
for m=1:length(subfolder_list)
    mkdir(fullfile(project_folder, subfolder_list{m}));
    fprintf('\t%s\n', subfolder_list{m}); 
end
