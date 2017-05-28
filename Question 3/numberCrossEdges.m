function [ count ] = numberCrossEdges( G, P, n )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
    count = 0;
    for i = 1 : n
        nbr = getNbrStat(G, P, i);
        count = count + nbr(2);
    end
    count = count / 2;
end

