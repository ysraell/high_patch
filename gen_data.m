%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Gnerate data: image and Wij.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Image:
[z1,z2,x] = func_genFIG(fig,rblur,N1,N2,0,1,0);
z2=double(z2);
z1=double(z1);

%Wij
W = func_WJcpp(z2,z1,K,delta,Block_size);

% Functions
% setting the function f
f.grad = @(x) 2.*(x-z1);
f.eval = @(x) norm(x(:)-z1(:))^2;
f.beta = 2;
% setting the function R
T= @(x) func_Tx(x,z2,W);
R.eval =@(x) lambda*norm_l12(T(x));
R.prox =@(x,omega) prox_l12(x, omega*lambda);
R.L = T;
func_TxT= @(x) T(x);
R.Lt = func_TxT;
fw.norm_L = 1;
% setting the function H
H.eval =@(x) norm(x - imhistmatch(x,z2));
H.prox =@(x,omega) prox_l12(x, omega);

save Image_Wij.mat