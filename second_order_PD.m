function second_order_error = second_order_PD(x,dx)

% Analytical derivative
% f'(x) = (x^3*(cos(x)) - 3*(sin(x))*x^2)/x^6

analytical_derivative = (x^3*(cos(x)) - 3*(sin(x))*x^2)/x^6; 



% Numerical derivative

% Second order Approximation
% central differencing = (f(x+dx) - f(x-dx))/2*dx
second_order_approx = ((sin(x+dx)/(x+dx)^3) - (sin(x-dx)/(x-dx)^3))/(2*dx); 

second_order_error = abs(analytical_derivative - second_order_approx);


end