function fourth_order_error = fourth_order_PD(x,dx)

% Analytical derivative
% f'(x) = (x^3*(cos(x)) - 3*(sin(x))*x^2)/x^6

analytical_derivative = (x^3*(cos(x)) - 3*(sin(x))*x^2)/x^6; 


% Fourth order Approximation

% central differencing = (f(x-2*dx) - 8(f(x-dx)) + 8(f(x+dx) - f(x+2*dx))/12*dx
fourth_order_approx = ( (sin(x-(2*dx))/(x-(2*dx))^3) - ((8*sin(x-dx))/(x-dx)^3) + ((8*sin(x+dx))/(x+dx)^3) - ((sin(x+(2*dx))/(x+(2*dx))^3)) )/(12*dx);

fourth_order_error = abs(analytical_derivative - fourth_order_approx);


end