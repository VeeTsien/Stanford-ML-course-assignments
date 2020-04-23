function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

% Find mathod finds the index of data that fits the condition
pos = find(y==1); neg = find(y == 0);

x = 30:10:100;
y = 30:10:100;
xlabel('Exam1 score');
ylabel('Exam2 score');

% Plot Examples
% X(pos,1) finds exam1 score(first column) in positive(admitted) result. X(pos,2) finds exam2 score(second column) in positive(admitted) result

plot(X(pos, 1), X(pos, 2), 'k+','LineWidth', 2, ...
     'MarkerSize', 7);
plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y', ...
     'MarkerSize', 7);



% =========================================================================



hold off;

end
