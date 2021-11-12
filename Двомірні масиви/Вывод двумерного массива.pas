const Nmax=10000; 
type Tmas=array[1..Nmax] of longint; 
type Tarr=array[1..Nmax] of Tmas;
 
procedure input_mas(var mas:tmas; var N,M:longint);
var i:word;
begin
  read(M,N);
  for i := 1 to N*M do read(mas[i])
end;
 
procedure gen_arr(var mas:tmas; var arr:tarr; N,M:longint);
var i,j:word;
begin 
  for j:=1 to M do begin 
    for i:=1 to N do arr[j,i]:=mas[N*(j-1) + i]
  end;
end;

procedure output(var mas:tmas; var arr:tarr; var N,M:longint);
var i,j:word;
begin
  for j:=1 to M do begin 
    for i:=1 to N do write(arr[j,i],' ');
    writeln();
  end;
end;

var mas:Tmas; 
arr:tarr;
N,M:longint;

begin
  input_mas(mas,N,M);
  gen_arr(mas,arr,N,M);
  output(mas,arr,N,M);
end.
