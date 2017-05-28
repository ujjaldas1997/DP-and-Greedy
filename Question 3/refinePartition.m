function [ r, P ] = refinePartition( P, G, n )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
    r = 0;
    maxref1 = -n; maxref2 = -n;
    for i = 1 : n
        if P(i) == 1
            ns = getNbrStat(G, P, i);
            thisRef =   ns(2) - ns(1);
            if thisRef > maxref1
                maxref1 = thisRef;
                u = i;
            end
        end
    end
    for i = 1 : n
        if ((P(i) == 2) && (~isNbr(G, u, i)))
            ns = getNbrStat(G, P, i);
            thisRef =   ns(2) - ns(1);
            if thisRef > maxref2
                maxref2 = thisRef;
                v = i;
            end
        end
    end
    if maxref1 + maxref2 > 0
        fprintf('\t\t+++Switching node %i to Part 2: Gain = %i\n', u, maxref1);
        fprintf('\t\t+++Switching node %i to Part 1: Gain = %i\n', v, maxref2);
        P(u) = 2; P(v) = 1;
        fprintf('\tNumber of cross edges = %i\n', numberCrossEdges(G, P, n));
        r = 1;
    else
        fprintf('\t   +++ No further refinement possible\n');
    end
end