function first_order_error = first_order_PD(x,dx)

% Analytical derivative
% f'(x) = (x^3*(cos(x)) - 3*(sin(x))*x^2)/x^6

analytical_derivative = (x^3*(cos(x)) - 3*(sin(x))*x^2)/x^6 ; 


% Numerical derivative

% First order Approximation
% forward differencing = (f(x+dx) - f(x))/dx
first_order_approx = ((sin(x+dx)/(x+dx)^3) - (sin(x)/(x)^3))/dx ;

first_order_error = abs(analytical_derivative - first_order_approx);

end 