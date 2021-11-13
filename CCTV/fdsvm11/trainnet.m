% Version : 1.0
% Date : 12.26.2010
% Author  : Omid Sakhi
% http://www.facedetectioncode.com

function NET = trainnet(IMGDB)

%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~        
options = optimset('maxiter',100000);
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

fprintf('Creating & training the machine ->\n');
fprintf('This may take a while. Have a tea or\n');
fprintf('coffee or something. Please entertain\n');
fprintf('yourself until further notice ...\n');
T = cell2mat(IMGDB(2,:));
P = cell2mat(IMGDB(3,:));
net = svmtrain(P',T','Kernel_Function','linear','Polyorder',2,'quadprog_opts',options);
%net = svmtrain(P',T','Kernel_Function','quadratic','Polyorder',4,'quadprog_opts',options);
%fprintf('done. \n');
fprintf('Number of Support Vectors: %d\n',size(net.SupportVectors,1));
classes = svmclassify(net,P');
fprintf('done. %d \n',sum(abs(classes-T')));
save net net
NET = net;