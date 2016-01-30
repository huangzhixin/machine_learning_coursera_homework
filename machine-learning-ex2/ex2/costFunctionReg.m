function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
n = length(theta); %theta 的总长度
% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

J=(1/m)*(sum(-y.*log(sigmoid(X*theta))-(1-y).*log(1-sigmoid(X*theta)))+(lambda/2)*sum(theta(2:n,1).*theta(2:n,1)));

grad=(1/m)*((X'*(sigmoid(X*theta)-y))+ [0;lambda*theta(2:n,1)]); %两种方法都可

%grad(1)相当于没有加lambda*theta(0),所以[0;lambda*theta(2:n,1)]，也就是[0;lambda*theta(1);lambda*theta(2);..;..;..]
%grad(1) = 1/m * sum((sigmoid(X*theta) - y) .* X(:,1)); 
%for i = 2:size(theta,1);
%	grad(i) = (1/m * sum((sigmoid(X*theta) - y) .* X(:,i))) + lambda/m*theta(i);
%end



% =============================================================

end
