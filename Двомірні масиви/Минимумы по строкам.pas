const Nmax=100; 
type Tmas=array[1..Nmax] of longint; 
type Tarr=array[1..Nmax] of Tmas;

procedure input_arr(var arr:tarr; var N,M:longint);
var i,j:word;
begin 
  read(N,M);
  for j:=1 to N do begin 
    for i:=1 to M do read(arr[j,i])
  end;
end;

function min(var arr:tarr; N,M:longint):word;
var i:word;
begin
  min:=1;
  for i:=2 to m do 
    if arr[n,min]>arr[n,i] then min:=i
end;

var arr:tarr;
mas:tmas;
n,m:longint;
i:word;  

begin
  input_arr(arr,N,M);
  for i:=1 to N do
    write(arr[i,min(arr,i,M)],' ')
end.
