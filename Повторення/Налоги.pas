const Nmax=1000;
type Tmas=array[-Nmax..Nmax] of longword; 

procedure input_mas(var mas:tmas; var N:longint; var fin:text);
var i:longint;
begin 
  read(fin,N);
  for i:=1 to N do read(fin,mas[i]);
  for i:=-1 downto -N do read(fin,mas[i]);
end;

function output(var mas:tmas; N:longint):longword;
var i:word;
begin
  output:=1;
  for i:=2 to N do if mas[i]*mas[-i]>mas[output]*mas[-output] then output:=i;
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
  write(fout,output(mas,N));
  close(Fin); 
  close(Fout); 
end.
