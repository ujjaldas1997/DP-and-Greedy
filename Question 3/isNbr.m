function [ truth ] = isNbr( G, u, v )
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
    truth = 0;
    n = length(G);
    for i = 1 : n
        if G(u, i)
            if i == v
                truth = 1;
                break;
            end
        end
    end
end

