function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.

%% Theta1 has size 25 x 401
% Theta2 has size 10 x 26

probability = sigmoid([ones(m,1),sigmoid([ones(m,1),X] * Theta1')]*Theta2');
[pmax,p] = max(probability, [], 2);

%第二种方法逻辑简单
%X = [ones(m,1) X];   #注意这里是添加一列1
%z2 = X * Theta1';
%a2 = sigmoid(z2);
%n = size(a2);
%a2 = [ones(n,1) a2];  #注意这里是添加一列1
%z3 = a2 * Theta2';
%a3 = sigmoid(z3);

%[h_max p] = max(a3,[],2);





% =========================================================================


end
