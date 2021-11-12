const Nmax=10000; 
type Tmas=array[1..Nmax] of longint; 

procedure swap(var a,b:longint);
var c:longint;
begin
  c:=a;
  a:=b;
  b:=c
end;

procedure input_mas(var mas:tmas; var N:longint; var fin:text);
var i:word;
begin 
  read(Fin,N);
  for i:=1 to N do read(Fin,mas[i])
end;

function min(var mas:Tmas; N:longint):longint;
var i:longint;
begin
  min:=mas[1];
  for i:=1 to N do
    if mas[i]<min then min:=mas[i];
end;

function max(var mas:Tmas; N:longint):longint;
var i:longint;
begin
  max:=mas[1];
  for i:=1 to N do
    if mas[i]>max then max:=mas[i];
end;

function output(var mas:tmas; N:longint; var fout:text):int64;
var i:word;
min_,max_:longint;
begin
  min_:=min(mas,N);
  max_:=max(mas,N);
  if abs(min_)>abs(max_)then swap(min_,max_);
  if min_*max_>0 then output:=abs(max_)
  else output:=2*(abs(min_))+abs(max_)
end;

var mas:tmas;
n:longint;
fin,fout:text;

begin
  Assign(Fin,'input.txt') ; 
  Assign(Fout,'output.txt'); 
  reset(Fin); 
  rewrite(Fout); 
  input_mas(mas,N,fin);
  write(fout,output(mas,N,fout));
  close(Fin); 
  close(Fout); 
end.
