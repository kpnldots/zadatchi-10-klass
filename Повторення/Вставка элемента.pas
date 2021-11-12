const Nmax=1000; 
type Tmas=array[1..Nmax] of longint; 

procedure input_mas(var mas:Tmas; var n:longint; var fin:text);
var i:longint;
begin
  read(fin,N);
  for i:=1 to N do read(fin,mas[i]);
end;

procedure insert(var mas:Tmas; n,c,b:longint);
var i:word; 
begin
  for i:=N downto b do mas[i+1]:=mas[i];
  mas[b]:=c
end;

procedure output(var mas:tmas; N:longint; var fout:text);
var i:word;
begin
  for i:=1 to (N+1) do write(fout,mas[i],' ')
end;

var c,b,n:longint; 
mas:Tmas;
fin,fout:text;

begin
  Assign(Fin,'input.txt');
  Assign(Fout,'output.txt');
  reset(Fin);
  Rewrite(Fout);
  input_mas(mas,n,fin);
  Read(fin,b,c);
  insert(mas,n,c,b);
  output(mas,N,fout);
  close(Fin);
  close(Fout);
end.
