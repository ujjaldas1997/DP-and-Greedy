function [ P ] = randPartition( G, n1, n2 )
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here
    P = ones(1, n1 + n2);
    a = randperm(n1 + n2, n2);
    for i = 1 : length(a)
        P(a(i)) = 2;
    end
    fprintf('\tNumber of cross edges = %d\n', numberCrossEdges(G, P, n1 + n2));
end

