{$mode objfpc}

program factorizacia;

var
  state, n, m, e: int64;
begin
  state := 2;
  Read(m);
  if m = 1 then
    writeln(m, ' (1)')
  else
    while state * state <= n do
    begin
      if m mod state = 0 then
      begin
        n := 0;
        while (m > 1) and (m mod state = 0) do
        begin
          n += 1;
          m := m div state;
        end;
        writeln(state, ' (', n, ')');
      end;
      state += 1;
    end;
  if m > 1 then
    writeln(m, ' (1)');
  readln(e);

end.
