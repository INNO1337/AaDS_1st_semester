Program ebs;
  var
    n:integer;
    s,p:double;
    begin
    n:=8;
    s:=2;
    p:=1;
      while (n<>0) do begin
         if n mod 2 = 1 then begin
          p:=p*s;
         end; 
         s:=s*s;
         n:=n div 2;
      end;
      writeln(p);
    end.
    

