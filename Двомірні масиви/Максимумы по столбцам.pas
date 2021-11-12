

 
Исходный код

const Nmax=100; 
type Tmas=array[1..Nmax] of longint; 
type Tarr=array[1..Nmax] of Tmas;

procedure input_arr(var arr:tarr; var N,M:longint);
var i,j:word;
begin 
  read(N,M);
  for i:=1 to N do begin 
    for j:=1 to M do read(arr[i,j])
  end;
end;

function max(var arr:tarr; N,M:longint):word;
var i:word;
begin
  max:=1;
  for i:=2 to N do 
    if arr[max,M]<arr[i,M] then max:=i;
end;

var arr:tarr;
mas:tmas;
n,m:longint;
i:word;  

begin
  input_arr(arr,N,M);
  for i:=1 to M do
    write(arr[max(arr,N,i),i],' ')
end.
