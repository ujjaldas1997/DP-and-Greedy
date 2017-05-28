function [  ] = printPartition( P, n )
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
    fprintf('Tribe 1 families get the houses:\n');
    for i = 1 : n
        if P(i) == 1
            fprintf('%i\t', i);
        end
    end
    fprintf('\nTribe 2 families get the houses:\n');
    for i = 1 : n
        if P(i) == 2
            fprintf('%i\t', i);
        end
    end
    fprintf('\n');
end

