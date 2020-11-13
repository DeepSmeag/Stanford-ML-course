function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2)); % mu = 1x2 , each element is the mean for each of x's columns
sigma = zeros(1, size(X, 2)); % sigma = 1x2 , each element is the standard deviation for each of x's columns

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%    
mu = mean(X_norm);
sigma = std(X_norm);
%X_norm = X_norm - ones(size(X_norm,1),  1)*mu;
%X_norm = X_norm ./ (ones(size(X_norm,1), 1)*sigma);
mu_matrix = ones(size(X_norm,1), 1) * mu  ;
sigma_matrix = ones(size(X_norm,1), 1) * sigma;
X_norm = (X - mu_matrix) ./ sigma_matrix;





% ============================================================

end
