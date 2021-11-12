const Nmax=1000; 
type Tmas=array[1..Nmax] of int64; 
type Tarr=array[1..Nmax] of Tmas;

procedure input_mas(var mas:Tarr; n,m:longint);
var i,j:longint;
begin
  for i:=1 to n do
    for j:=1 to m do mas[i,j]:=i*j;
end;

function count_5_blue(var mas:tarr; n,m:longint):int64;
var i,j,cnt:longint;
begin
  cnt:=0;
  for i:=1 to n do
    for j:=1 to m do if mas[i,j] mod 5 = 0 then inc(cnt);
  count_5_blue:=cnt;
end;

function count_3_green(var mas:tarr; n,m:longint):int64;
var i,j,cnt:longint;
begin
  cnt:=0;
  for i:=1 to n do
    for j:=1 to m do if ((mas[i,j] mod 3 = 0) and (mas[i,j] mod 5<>0)) then inc(cnt);
  count_3_green:=cnt;
end;

function count_2_red(var mas:tarr; n,m:longint):int64;
var i,j,cnt:longint;
begin
  cnt:=0;
  for i:=1 to n do
    for j:=1 to m do if (((mas[i,j] mod 3 <> 0) and (mas[i,j] mod 5<>0)) and (mas[i,j] mod 2 = 0)) then inc(cnt);
  count_2_red:=cnt;
end;

var mas:tarr ; n,m:longint;
begin
  Read(n,m);
  input_mas(mas,n,m);
  Writeln('RED   : ',count_2_red(mas,n,m));
  Writeln('GREEN : ',count_3_green(mas,n,m));
  Writeln('BLUE  : ',count_5_blue(mas,n,m));
  Writeln('BLACK : ',n*m-count_3_green(mas,n,m)-count_5_blue(mas,n,m)-count_2_red(mas,n,m))
end.
