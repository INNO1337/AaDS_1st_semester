var
  a, n, m, e: int64;
begin
  assignfile(input, 'input.txt');
  reset(input);
  read(input, m, n);
  closefile(input);
  assignfile(output, 'output.txt');
  rewrite(output);

  a := 2;
  if m = 1 then
    writeln(m, ' (1)')
  else
    while a * a <= m do
    begin
      if m mod a = 0 then
      begin
        e := 0;
        while (m > 1) and (m mod a = 0) do
        begin
          e += 1;
          m := m div a;
        end;
        writeln(a, ' (', e, ')');
      end;
      a += 1;
    end;
  if n > 1 then
    writeln(n, ' (1)');
    closefile(output);
end.




