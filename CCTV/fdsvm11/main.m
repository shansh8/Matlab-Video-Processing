% Version : 1.0
% Date : 12.26.2010
% Author  : Omid Sakhi
% http://www.facedetectioncode.com

clear all;
close all;
clc;

if ~exist('gabor.mat','file')
    fprintf ('Creating Gabor Filters ...');
    create_gabor;
end
if exist('imgdb.mat','file')
    load imgdb;
else
    IMGDB = loadimages;
end
if exist('net.mat','file')
    load net;
end
while (1==1)
    choice=menu('Face Detection',...
                'Generate Database',...
                'Create SVM',...
                'Test on Photos',...
                'Exit');
    if (choice == 1)
        IMGDB = loadimages;
    end
    if (choice == 2)
        net = trainnet(IMGDB);
    end
    if (choice == 3)
        pause(0.01);
        [file_name file_path] = uigetfile ('*.jpg');
        if file_path ~= 0
            im = imread ([file_path,file_name]);
            try 
                im = rgb2gray(im);
            end 
            tic
            im_out = imscan (net,im);
            toc
            figure;imshow(im_out,'notruesize');
        end
    end
    if (choice == 4)
        clear all;
        clc;
        close all;
        return;
    end    
end