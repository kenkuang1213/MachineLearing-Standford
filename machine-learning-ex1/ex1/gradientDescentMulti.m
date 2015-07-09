function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
addX=X
for iter = 1:2

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %

    tmpTheta0=0;
    tmpTheta1=0;
    sigma=zeros(1,size(X,2));
    for f = 1:size(X,2)
        for i= 1:m
            h=theta'*addX(i,:)'-y(i)
            sigma(1,f)+=h*addX(i,f);
        end
    end
    theta=theta-(alpha/m)*sigma








    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
