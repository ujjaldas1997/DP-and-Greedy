n = 20;
M = 1000;
P = round(rand(1, n) * M);
%P = [4 3 2 3 1 4];
fprintf('Profits are : ');
P
T = sum(P);
A = zeros(n, T + 1);
A(1, 1) = 1; A(1, P(1) + 1) = 2;
for i = 2 : n
    for j = 1 : T + 1
        if A(i - 1, j)
            A(i, j) = 1;
        elseif ((j - 1 >= P(i)) && (A(i - 1, j - P(i)))) == 1
            A(i, j) = 2;
        else
            A(i, j) = 0;
        end
    end
end
p1 = floor(2 * T / 3); p2 = p1 + 1;
while A(n, p1  + 1) == 0
    p1 = p1 - 1;
end
while A(n, p2 + 1) == 0
    p2 = p2 + 1;
end
temp1 = 2 * (T - p1) - p1;
temp2 = p2 - 2 * (T - p2);
if temp1 > temp2
    S1 = p2;
else
    S1 = p1;
end
S2 = T - S1;
fprintf('Profit for first son : %i\n', S1);
fprintf('Profit for second son : %i\n', S2);
H1 = [];
H2 = [];
i = n;
while S1 > 0
    if A(i, S1 + 1) == 2
        H1 = [H1 i];
        S1 = S1 - P(i);
        i = i - 1;
    elseif A(i, S1 + 1) == 1
        i = i - 1;
    end
end
count = 1;
for i = n : -1 : 1
    if H1(count) == i
        count = count + 1;
    else
        H2 = [H2 i];
    end
end
fprintf('First son get houses : ');
H1
fprintf('Second son get houses : ');
H2