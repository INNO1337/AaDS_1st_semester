var
n, m, b, k, q, d: Int64;

begin
assign(input, 'input.txt');
reset(input);
assign(output, 'output.txt');
rewrite(output);
read(d, m);

for n := 1 to m do
    begin
        k := 1;
        q := 1;
        while (true) do
        begin
            b := 2 * n - ((k - 1) * k * d);
            if (b <= 0) then
            break;
            if (b mod (2 * k) = 0) then
                q := k;
                k := k + 1;
        end;
        write (q, ' ');
    end;
    close(output);
end.

