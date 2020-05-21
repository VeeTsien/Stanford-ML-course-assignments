function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and
%   sigma. You should complete this function to return the optimal C and
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example,
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using
%        mean(double(predictions ~= yval))
%

predictions = [];
err_list = [];

C_list = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
sigma_list = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];



for i = 1:numel(C_list)
    C = C_list(i);
      for j = 1:numel(sigma_list)
        sigma = sigma_list(j);
          predictions = svmPredict(svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma)), Xval);
          err = mean(double(predictions ~= yval));
          err_list = [err_list err];
          j = j+1;
      end
    i = i+1;
end

[x, ix] = min(err_list);
disp(ix);
disp(x);
disp(err_list);

if ix < 8
    C = C_list(1);
    sigma = sigma_list(ix);
else
    C = C_list(floor(ix/8));
    sigma = sigma_list(mod(ix,8));
end

disp(C);
disp(sigma);






% =========================================================================

end
