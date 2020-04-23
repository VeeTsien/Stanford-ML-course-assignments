function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly (initialize g)
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
% g = (ones(size(z))+(e.^(z)).^-1).^-1;

%Mapping Function: exp (x) Compute e^x for each element of x.

 g = 1./(1 + exp(-z));


% =============================================================

end
