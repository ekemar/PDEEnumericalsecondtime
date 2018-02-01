clear all
clc
clf
syms E l ro_0 A
nodes = [5, 10, 25, 100, 200];
filename = 'eigenvaluescsc.csv';
num_nodes = {'5nodes', '10nodes', '25nodes'};
i = 0;
for node = nodes
    i= i+1;
    m = 1/(node+1);
    K = gallery('tridiag',node,1,-2,1);
    L = K./m;
    eigenValues_K = eig(K);
    eigenValues_correct_order_K = flip(eigenValues_K);
    eigenfrequency_numerical_5_K = sqrt(-(eigenValues_correct_order_K));

    n=[1:1:node]; 
    calculated_k_value_5 = (n.^2)'.*(pi^2)./((eigenfrequency_numerical_5_K.^2).*(node+1));
    eigenFrequency_teoretical_5 = (n.*(pi));
    estimated_k_value = m.*(eigenFrequency_teoretical_5.^2)'./(eigenfrequency_numerical_5_K .^2);
    Frequency_table = table([eigenfrequency_numerical_5_K(:)],[eigenFrequency_teoretical_5(:)], [estimated_k_value(:)], [calculated_k_value_5(:)]);
    Frequency_table.Properties.VariableNames = {'Numrerisk', 'Teoretisk', 'k_Value_estimated', 'calculated_kvalue'}
    test = (n.^2)./(node+1);
end
