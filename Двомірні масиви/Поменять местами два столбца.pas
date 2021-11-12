const Nmax=100; 
type Tmas=array[1..Nmax] of longint; 
type Tarr=array[1..Nmax] of Tmas;

procedure swap(var a,b:longint);
var c:longint;
begin
  c:=a;
  a:=b;
  b:=c
end;

procedure input_arr(var arr:tarr; var N,M:longint);
var i,j:word;
begin 
  read(N,M);
  for j:=1 to N do begin 
    for i:=1 to M do read(arr[j,i])
  end;
end;

procedure swap_arr(var arr:tarr; N:longint);
var i,M1,M2:word;
begin 
  read(M1,M2);
  for i:=1 to N do swap(arr[i,M1],arr[i,M2])
end;

procedure output(var arr:tarr;  N,M:longint);
var i,j:word;
begin
  for j:=1 to N do begin 
    for i:=1 to M do write(arr[j,i],' ');
    writeln();
  end;
end;

var arr:tarr;
n,m:longint;

begin
  input_arr(arr,N,M);
  swap_arr(arr,N);
  output(arr,N,M)
end.
