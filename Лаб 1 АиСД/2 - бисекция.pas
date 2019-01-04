program BS;
function Qexp(b:double; n:integer): double;
var
   c: double;
begin
  c := 1;
  while  (n <> 0) do
    begin
      if (n mod 2 = 1) then
        c := c * b;
        b := b * b;
        n := n div 2;
    end;
  Qexp := c;
end;
//............................................................................//
var
   i, r, l, e, a, fi: double;
   n: integer;
   Neg: boolean = false;
begin
     read (a);
     read (n);
     e := 1e-10;
     l := 0;
     if(a < 0) then Neg := true;
     a := abs(a);
     if (a > 1) then
        r := a
     else
        r := 1;
     while ((r - l) > e) do
     begin
           i := l + (r - l) / 2;
           fi := Qexp (i, n);
           if (fi < a) then
              l := i
           else
              r := i;
     end;
     if (Neg = true) and (n mod 2 = 0) or (n <= 0) then
       writeln('Error')
     else if (Neg = true) and (n mod 2 <> 0) and (n <> 1) then
             writeln((-i:6:10))
          else if (n = 1) then
                  writeln(a:6:10)
                else
                  writeln(i:6:10);
end.

