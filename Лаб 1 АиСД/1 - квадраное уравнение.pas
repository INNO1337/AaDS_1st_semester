program Kvadratnoe_uravnenie; 

var 
a,b,c,D:real; 

Begin 
  read(a,b,c); 
  D := sqr(b) - (4*a*c); 
    if a <> 0 then 
    begin 
      if D < 0 then 
        writeln('Среди действительных чисел корней нет'); 
      if D = 0 then 
        writeln('x = ', -b/(2*a)); 
      if D > 0 then 
        writeln('x1 = ', (-b - sqrt(D))/(2*a),' x2 = ', (-b + sqrt(D))/(2*a)); 
    end
      else 
      begin 
        if b <> 0 then 
          writeln('x = ', -(c/b)) 
        else 
      begin 
        if c <> 0 then 
          writeln('Уравнение не имеет корней') 
        else 
          writeln('Уравнение имеет бесконечное множество корней'); 
      end; 
      end; 
End.
  