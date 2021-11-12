const Nmax=1000;
type Tmas=array[1..Nmax] of longint;
type Tarr=array[1..Nmax] of Tmas;

procedure read_mas(var arr:Tarr; var N,M:longint);
var i,j:longint;
begin
  read(N,M);
  for i:=1 to M do
    for j:=1 to N do read(arr[i,j]);
end;

function min(var arr:Tarr; N,M:longint):longint;
var i,j:longint;
begin
  min:=arr[1,1];
  for i:=1 to M do
    for j:=1 to N do 
      if arr[i,j]<min then min:=arr[i,j];
end;

function max(var arr:Tarr;  N,M:longint):longint;
var i,j:longint;
begin
  max:=arr[1,1];
  for i:=1 to M do
    for j:=1 to N do 
      if arr[i,j]>max then max:=arr[i,j];
end;

function sum(var arr:Tarr;  N,M:longint):longint;
var i,j,cnt:longint;
begin
  cnt:=0;
  for i:=1 to M do
    for j:=1 to N do
      cnt:=cnt+arr[i,j];
  sum:=cnt;
end;

var mas:Tarr;
N,M:longint; 

begin
  read_mas(mas,N,M);
  write(sum(mas,N,M),' ',min(mas,N,M),' ',max(mas,N,M));
end.
