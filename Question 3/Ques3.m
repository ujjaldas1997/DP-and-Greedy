clear; clc;
n1 = 25; n2 = 35; delta = 0.1;
n = n1 + n2;
LocX = randperm(1000, n) ./ 1000; LocY = randperm(1000, n) ./ 1000;
%LocX = [0.9476 0.7173 0.7623 0.6699 0.3332 0.5136 0.8128 0.6518 0.1198 0.9646 0.6699 0.6303 0.0133 0.1198 0.0386 0.2717 0.8949 0.8534 0.2932 0.5144 0.3398 0.5394 0.5590 0.3060 0.2625];
%LocY = [0.7485 0.0515 0.6844 0.2113 0.5093 0.9299 0.0107 0.1991 0.2471 0.7128 0.9820 0.0284 0.3945 0.2082 0.0960 0.2194 0.9845 0.8760 0.9686 0.6023 0.0915 0.8007 0.0870 0.1029 0.8981];
G = graph(LocX, LocY, n, delta);
P = initPartition( G, n1, n2 );
[r, P] = refinePartition(P, G, n);
while r
    [r, P] = refinePartition(P, G, n);
end
printPartition(P, n);
P = randPartition(G, n1, n2);
[r, P] = refinePartition(P, G, n);
while r
    [r, P] = refinePartition(P, G, n);
end
printPartition(P, n);