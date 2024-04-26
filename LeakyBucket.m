clc;
clear;

IP = input('Enter the input packets array: ');
S = input('Enter the bucket size: ');
R = input('Enter the output rate: ');

C = 0;
OP = [];
I = 1;

for i = 1:length(IP)
    C = C + IP(i);
    if C > S
        excess = C - S;
        C = C-excess;
        OP(I) = R;
        I = I + 1;
        C = C - R;
    end
    while C >= R
            OP(I) = R;
            I = I + 1;
            C = C - R;
    end
end
if C > 0
  OP(I) = C;
  I = I + 1;
end

disp('Output:');
disp(OP);

