clear all
clc
clf
syms E l ro_0 A
nodes = [5, 10, 25, 200];
filename = 'eigenvaluescsc.csv';
num_nodes = {'5nodes', '10nodes', '25nodes'};
i = 0;
node = nodes(1);
    i= i+1;
    m = 1/(node+1);
    K = gallery('tridiag',node,1,-2,1);
    L = K./m;
    eigenValues_K = eig(K);
    eigenValues_L = eig(L);
    eigenValues_correct_order_K = flip(eigenValues_K);

    eigenValues_correct_order_L = flip(eigenValues_L);
    %We know lambda = -(eigenfrequency^2)
    %Then the numerical eigenfrequencies are suppousd to be:
    eigenfrequency_numerical_5_L = sqrt(-(eigenValues_correct_order_L));
    eigenfrequency_numerical_5_K = sqrt(-(eigenValues_correct_order_K));

    %eigenfrequency_numerical*2*pi
    n=[1:1:node];
   k_node5 = (n.^2)'.*(pi^2)./((eigenfrequency_numerical_5_K.^2).*(node+1))

    %%Calculating teoretical eigenfrequencies
    eigenFrequency_teoretical_5 = (n.*(pi))
    kvot_L_K = eigenfrequency_numerical_5_L./eigenfrequency_numerical_5_K;
    estimated_kValue = kvot_L_K.^2*m;
    table_K_an_L_values = table([eigenfrequency_numerical_5_K(:)], [eigenfrequency_numerical_5_L(:)],[kvot_L_K(:)], [estimated_kValue(:)], [eigenFrequency_teoretical_5(:)])
    %table_K_an_L_values.Properties.VariableNames{'EgenvaleK', 'EigenValueL', 'kvotLtoK'}
    %vikted_numerical_5 = eigenfrequency_numerical_5.*k_node5;
    %kvot_num_teo_5 = eigenfrequency_numerical_5./eigenFrequency_teoretical_5 ;
    %tabel.(num_nodes{i}) = magic(length(num_nodes{i}))
    %table5_nodes = table([eigenfrequency_numerical_5(:)], [eigenFrequency_teoretical_5(:)], [vikted_numerical_5(:)], [1./kvot_num_teo_5(:)], [k_node5(:)]);
    %table5_nodes.Properties.VariableNames = {'Numrerisk', 'Teoretisk', 'vikted', 'kvot', 'kvalue'}
    %csvwrite(filename, eigenfrequency_numerical(:))
    
    
node = nodes(2);
    i= i+1;
    m = 1/(node+1);
    K = gallery('tridiag',node,1,-2,1);
    L = K./m;
    eigenValues = eig(L);
    eigenValues_correct_order = flip(eigenValues);
    %We know lambda = -(eigenfrequency^2)
    %Then the numerical eigenfrequencies are suppousd to be:
    eigenfrequency_numerical_10= sqrt(-(eigenValues_correct_order));
    %eigenfrequency_numerical*2*pi
    n=[1:1:node];

    %%Calculating teoretical eigenfrequencies
    eigenFrequency_teoretical_10 = (n.*(pi))';
      
    eigenValues_K = eig(K);
    eigenValues_L = eig(L);
    eigenValues_correct_order_K = flip(eigenValues_K);

    eigenValues_correct_order_L = flip(eigenValues_L);
      k_node10 = (n.^2)'.*(pi^2)./((eigenfrequency_correct_order_K.^2).*(node+1))

    vikted_mumerical_10 = eigenfrequency_numerical_10.*k_node10;
    kvot_num_teo_10 = eigenfrequency_numerical_10./eigenFrequency_teoretical_10;
    %We know lambda = -(eigenfrequency^2)
    %Then the numerical eigenfrequencies are suppousd to be:
    eigenfrequency_numerical_5_L = sqrt(-(eigenValues_correct_order_L));
    eigenfrequency_numerical_5_K = sqrt(-(eigenValues_correct_order_K));

    %eigenfrequency_numerical*2*pi
    n=[1:1:node];
   % k_node5 = (n.^2)'.*(pi^2)./((eigenfrequency_numerical_5.^2).*(node+1))

    %%Calculating teoretical eigenfrequencies
    %eigenFrequency_teoretical_5 = (n.*(pi
    kvot_L_K = eigenfrequency_numerical_5_L./eigenfrequency_numerical_5_K;
    estimated_kValue = kvot_L_K.^2*m;
    table_K_an_L_values = table([eigenfrequency_numerical_5_K(:)], [eigenfrequency_numerical_5_L(:)],[kvot_L_K(:)], [estimated_kValue(:)], [eigenFrequency_teoretical_10(:)])
    %tabel.(num_nodes{i}) = magic(length(num_nodes{i}))
   % table10_nodes = table([eigenfrequency_numerical_10(:)], [eigenFrequency_teoretical_10(:)], [vikted_mumerical_10(:)], [1./kvot_num_teo_10(:)], [k_node10(:)]);
    %table10_nodes.Properties.VariableNames = {'Numrerisk', 'Teoretisk', 'vikted', 'kvot', 'kvalue'}
    %csvwrite(filename, eigenfrequency_numerical(:))
    
    node = nodes(3);
    i= i+1;
    m = 1/(node+1);
    K = gallery('tridiag',node,1,-2,1);
    L = K./m;
   % eigenValues = eig(L)
    eigenValues_L = eig(L)
    eigenValues_correct_order_L = flip(eigenValues_L)
    %We know lambda = -(eigenfrequency^2)
    %Then the numerical eigenfrequencies are suppousd to be:
    eigenfrequency_numerical_25 = sqrt(-(eigenValues_correct_order));
    %eigenfrequency_numerical*2*pi
    n=[1:1:node];
    %k_node25 = (n.^2)'.*(pi^2)./((eigenfrequency_numerical_25.^2).*(node+1))

    %%Calculating teoretical eigenfrequencies
    eigenFrequency_teoretical_25 = (n.*(pi))';
    eigenValues_K = eig(K);
    eigenValues_L = eig(L);
    eigenValues_correct_order_K = flip(eigenValues_K);

    eigenValues_correct_order_L = flip(eigenValues_L);
    %We know lambda = -(eigenfrequency^2)
    %Then the numerical eigenfrequencies are suppousd to be:
    eigenfrequency_numerical_5_L = sqrt(-(eigenValues_correct_order_L));
    eigenfrequency_numerical_5_K = sqrt(-(eigenValues_correct_order_K));

    %eigenfrequency_numerical*2*pi
    n=[1:1:node];
   % k_node5 = (n.^2)'.*(pi^2)./((eigenfrequency_numerical_5.^2).*(node+1))

    %%Calculating teoretical eigenfrequencies
    %eigenFrequency_teoretical_5 = (n.*(pi
    kvot_L_K = eigenfrequency_numerical_5_L./eigenfrequency_numerical_5_K;
    estimated_kValue =  kvot_L_K.^2*m;
    table_K_an_L_values = table([eigenfrequency_numerical_5_K(:)], [eigenfrequency_numerical_5_L(:)],[kvot_L_K(:)], [estimated_kValue(:)], [eigenFrequency_teoretical_25(:)])
   % kvot_num_teo_25 = eigenfrequency_numerical_25./eigenFrequency_teoretical_25;
    %table([eigenfrequency_numerical_25(:)], [eigenFrequency_teoretical_25(:)]);
   % table25_nodes.Properties.VariableNames = {'Numrerisk', 'Teoretisk'}
    %csvwrite(filename, eigenfrequency_numerical(:))
    node_numbers = ['5','5','10','10','25','25'];
    testmulti25 = k_node25.*eigenfrequency_numerical_25
    
   % table25_nodes = table([eigenfrequency_numerical_25(:)], [eigenFrequency_teoretical_25(:)], [testmulti25(:)], [1./kvot_num_teo_25(:)], [k_node25(:)]);
   % table25_nodes.Properties.VariableNames = {'Numrerisk', 'Teoretisk', 'vikted','kvot', 'kvalue'}
    %Calculating differnce between teoretical frequency and numerical

    
    
