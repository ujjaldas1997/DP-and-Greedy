function [ P ] = initPartition( G, n1, n2 )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    P = zeros(1, n1 + n2);
    for i = 1 : n1
        P(i) = 1;
    end
    for i = n1 + 1 : n1 + n2
        P(i) = 2;
    end
    fprintf('\tNumber of cross edges = %i\n', numberCrossEdges(G, P, n1 + n2));
end

