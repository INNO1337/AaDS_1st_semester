program diafantovo;
 
  //EGCD
  //
  // на входе:
  // a, b
  // на выходе:
  // НОД(a, b) = GCD(a, b)
  // x, y - числа, такие, что a*x+b*y=GCD(a, b)
  
  function EGCD(a, b: integer; var x, y: integer): integer;
  var
    x1, y1, d: integer;
  begin
    if (a = 0) then
    begin
      x := 0;
      y := 1;
      EGCD := b;
      Exit;
    end;
    d := EGCD(b mod a, a, x1, y1);
    x := y1 - (b div a) * x1;
    y := x1;
    EGCD := d;
  end;
 
 
var
  a, b, c: integer;
  Xg, Yg, g: integer;
  X0, Y0:  integer;
begin
write('введите a: ');
  readln(a);
write('введите b: ');
  readln(b);
write('введите с: ');
  readln(c);
  
  //рассмотрим некоторые вырожденные случаи
  // 1. a=0, b=0, c=0 - бесконечное множество решений с произвольными x и y
  // 2. a=0, b=0, c<>0 - нет ни одного решения
   
  if (a = 0) and (b = 0) then
  begin
    if (c = 0) then
      writeln('Бесконечное множество решений с любыми значениями x и y.')
    else
      writeln('Нет ни одного решения.');
      exit;
  end;
  
  g := EGCD(a, b, Xg, Yg);
  
  if (c mod g) <> 0 then
  begin
    writeln('Нет ни одного решения.');
    exit;
  end;
  
  X0 := Xg * (c div g);
  Y0 := Yg * (c div g);
  
  writeln( a, 'x+','(', b, 'y',')=', c);
  writeln('x0=', X0);
  writeln('y0=', Y0);
  writeln('ΔX=',(b div g));
  writeln('ΔY=', (-(a div g)));

end.