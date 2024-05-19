%% Θ(z, q) = 2*(q^(¼))*Σ((-1)^n)*(q^n(n+1))*sin(2*n+1)z
function result = jacobi_theta1(z, q)
    result = 0;
    for n = 0:Inf
        term = (-1)^n * q^(n + 0.5) * (n + 1) * sin((2 * n + 1) * z);
        result = result + term;  
        if abs(term) < eps
            break;
        end
    end
    result = 2 * q^(1/4) * result;
end
z = 0.5;
q = 0.1 * exp(1i * pi); 
result = jacobi_theta1(z, q);
disp(result);
plot(z_range, real(theta1_values), 'b', z_range, imag(theta1_values), 'r');
xlabel('z');
ylabel('\theta_1(z, q)');
title('Jacobi Theta Function \theta_1(z, q)');
legend('Real part', 'Imaginary part');
