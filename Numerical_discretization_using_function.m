clear all 
close all
clc

% function f(x)= sin(x)/x^3

x = pi/3; 
dx = linspace(pi/40,pi/400,10);

% for loop is used so that values of dx ranging from pi/4 to pi/400 can be used 
for i = 1:length(dx)

    % calling the respective functions
    error_1st_order(i) = first_order_PD(x,dx(i));
    error_2nd_order(i) = second_order_PD(x,dx(i));
    error_4th_order(i) = fourth_order_PD(x,dx(i));
  
end

% Plotting of results
figure(1)
loglog(dx, error_1st_order,'Linewidth',2)
hold on
loglog(dx, error_2nd_order,'Linewidth',2,'color','r')
hold on
loglog(dx, error_4th_order,'Linewidth',2,'color',[0.4940 0.1840 0.5560])

xlabel('grid spacing(dx)','Fontsize',15,'Fontweight','bold','color','k')
ylabel('error','Fontsize',15,'Fontweight','bold','color','k')
legend('first order','second order','fourth order','Location','best')