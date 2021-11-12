const Nmax=1000; 
type Tmas=array[1..Nmax] of longint; 

procedure input_mas(var mas:tmas; var N:longint; var fin:text);
begin 
  read(fin,mas[1]);
  N:=1;
  while mas[N]<>0 do begin
    inc(N);
    read(fin,mas[N]);
  end;
  dec(N);
end;

procedure output(var mas:tmas; N:longint; var fout:text);
var i,j,cnt:word;
begin
  cnt:=0;
  for i:=1 to 9 do begin
    for j:=1 to N do if mas[j]=i then inc(cnt);
    write(fout,cnt,' ');
    cnt:=0
  end;
end;

var mas:tmas;
n:longint;
fin,fout:text;

begin
  Assign(Fin,'input.txt') ; 
  Assign(Fout, 'output.txt'); 
  reset(Fin); 
  rewrite(Fout);
  input_mas(mas,N,fin);
  output(mas,N,fout);
  close(Fin); 
  close(Fout); 
end.
