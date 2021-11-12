

 
Исходный код

const Nmax=1000; 
type Tmas=array[1..Nmax] of longint; 

procedure input_mas(var mas:Tmas; var n:longint; var Fin:text);
var i:longint;
begin
  read(Fin,N);
  for i:=1 to N do read(Fin,mas[i]);
end;


function cnt_num(var mas:Tmas; n,m:longint; var fout:text):longint;
var i,cnt:Longint;
begin
  cnt:=1;
  for i:= 1 to N do if mas[i]>=m then inc(cnt);
  cnt_num:=cnt;
end;

var Fin,Fout:text; 
M,n:longint; 
mas:Tmas;

begin
  Assign(Fin,'input.txt');
  Assign(Fout,'output.txt');
  reset(Fin);
  Rewrite(Fout);
  input_mas(mas,n,Fin);
  Read(Fin,M);
  Write(Fout,cnt_num(mas,n,m,fout));
  close(Fin);
  close(Fout);
end.
