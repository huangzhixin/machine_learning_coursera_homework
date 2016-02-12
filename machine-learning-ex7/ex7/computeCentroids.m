function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returs the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%
for i=1:K
   centroids(i,:) = sum(X.*(idx==i),1)/sum(idx==1); #求每列的平均值
   #这里不能直接用mean,应为这样平均的总数是x样本的总数，我们需要的是idx=1 时的总数
   #受到one to multi 分类的启发 idx==i 返回的是【0 1 1 0 0】这样的真值表
   #与X点乘，即可得到只属于该类的X，剩下的都为0
   # x=[1 2;3 4;2 3;4 5;1 1; 2 2; 3 3;4 4;7 7]
   # idx=[1 2 3 2 3 2 1 1  2]'
   # x.*(idx==1)
#ans =
#
#   1   2
#   0   0
#   0   0
#   0   0
#   0   0
#   0   0
#   3   3
#   4   4
#   0   0
end







% =============================================================


end

