const Nmax=1000;
type Tmas=array[1..Nmax] of longint;
type Tarr=array[1..Nmax] of Tmas;

procedure read_mas(var arr:Tarr; var N,M:longint);
var i,j:longint;
begin
  read(N,M);
  for i:=1 to N do
    for j:=1 to M do read(arr[i,j]);
end;

function sum_arr(var arr:Tarr;  N,M:longint):extended;
var i,j,cnt:word;
sum:int64;
begin
  sum:=0;
  j:=1;
  cnt:=0;
  for i:=1 to N do begin
    while (j<i)and(j<=M) do begin
      sum:=sum+arr[i,j];
      inc(j);
      inc(cnt);
    end;
    j:=1;
  end;
  sum_arr:=sum/cnt;
end;

var mas:Tarr;
N,M:longint; 

begin
  read_mas(mas,N,M);
  write(sum_arr(mas,N,M));
end.
