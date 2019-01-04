{$mode objfpc}

program factorizacia;

var
  state, cell, mult, e: int64;
begin
  state := 2;
  Read(cell);
  if cell = 1 then
    writeln(cell, ' (1)')
  else
    while state * state <= cell do
    begin
      if cell mod state = 0 then
      begin
        mult := 0;
        while (cell > 1) and (cell mod state = 0) do
        begin
          mult += 1;
          cell := cell div state;
        end;
        writeln(state, ' (', mult, ')');
      end;
      state += 1;
    end;
  if cell > 1 then
    writeln(cell, ' (1)');
  readln(e);

end.
