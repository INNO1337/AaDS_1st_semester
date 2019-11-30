program Cats_C;

Var
  a, m, b, c, n, ncheck: qword;
BEGIN
  assignfile(input, 'input.txt');
  assignfile(output, 'output.txt');
  reset(input);
  Read(input, m, n);
  Close(input);
  rewrite(output);

    a:= 1;
    while (a <= (m div a)) do
    begin
    if (m mod a = 0) then
    begin
      b:= 1;
      while (b <= (m div b)) do
      begin
        if (m mod b = 0) then
        begin
          c:= (m div (b * a));
          ncheck:=((a * (b + 1) * (c + 1)) + ((a + 1) * b * (c + 1)) +
            ((a + 1) * (b + 1) * c));
          if (n = ncheck)  then
          begin
            Write(output, '1');
            exit;
          end;
        end;
        b:= b + 1;
      end;
    end;
    a:= a + 1;
    end;
  Write(output, '0');
  Close(output);
END.
