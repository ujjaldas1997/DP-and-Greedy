function [ G ] = graph( LocX, LocY, n, delta )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    G = zeros(n, n);
    for i = 1 : n
        for j = i + 1 : n
            if distance(LocX(i), LocY(i), LocX(j), LocY(j)) < delta
                G(i, j) = 1;
                G(j, i) = 1;
            end
        end
    end
end

