const Nmax=1000; 
type Tmas=array[1..Nmax] of longint; 

procedure input_mas(var mas:Tmas; n:longint; var fin:text);
var i:longint;
begin
  for i:=1 to N do read(fin,mas[i]);
end;


function avg_min_max(var mas:Tmas; n:longint):extended;
var i,j,min,max:longint;
begin
  max:=mas[1];
  min:=mas[1];
  for i:=2 to N do if mas[i]>max then max:=mas[i];
  for i:=2 to N do if mas[i]<min then min:=mas[i];
  avg_min_max:=(min+max)/2
end;

procedure output(var mas:Tmas; n:longint; var fout:text);
var i,cnt:longint;
begin
  cnt:=0;
  for i:=1 to N do if mas[i]>avg_min_max(mas,n) then inc(cnt);
  Write(fout,cnt);
end;

var  Fin,Fout:text; mas:Tmas; n:longint;
begin
  Assign(Fin,'input.txt');
  Assign(Fout,'output.txt');
  reset(Fin);
  Rewrite(Fout);
  Read(Fin,N);
  input_mas(mas,n,Fin);
  output(mas,n,Fout);
  close(Fin);
  close(Fout);
end.
