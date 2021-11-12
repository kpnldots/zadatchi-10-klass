const Nmax=1000; 
type Tmas=array[1..Nmax] of longint; 

procedure input_mas(var mas:tmas; var N:longint; var fin:text);
var i:longint;
begin 
  read(fin,N);
  for i:=1 to N do read(fin,mas[i]);
end;

function max(var mas:Tmas; N:longint):word;
var i:word;
begin
  max:=1;
  for i:=2 to N do
    if mas[i]>mas[max] then max:=i;
end;

function output(var mas:tmas; N:longint):word;
var i:word;
max_:longint;
begin
  max_:=max(mas,N);
  if (max_=1)then output:=2
  else output:=1;
  for i:=2 to N do if (mas[i]>=mas[output])and(mas[i]<mas[max_]) then output:=i
end;

var mas:tmas;
n:longint;
fin,fout:text;

begin
  Assign(Fin,'input.txt') ; 
  Assign(Fout, 'output.txt'); 
  reset(Fin); 
  rewrite(Fout);
  input_mas(mas,N,fin);
  write(fout,mas[output(mas,N)],' ',output(mas,N));
  close(Fin); 
  close(Fout); 
end.
