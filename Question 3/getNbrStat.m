function [ nbr ] = getNbrStat( G, P, u )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
    nbr = zeros(1, 2);
    n = length(G);
    for i = 1 : n
        if G(u, i)
            if P(i) == P(u)
                nbr(1) = nbr(1) + 1;
            else
                nbr(2) = nbr(2) + 1;
            end
        end
    end
end

