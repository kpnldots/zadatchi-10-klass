const Nmax=10000; 
type Tmas=array[1..Nmax] of longint; 
type tmas2=array[-Nmax..Nmax] of boolean;

procedure input_mas(var mas:tmas; var mas2:tmas2; var N,L:longint; var fin:text);
var i:longint;
begin 
  read(fin,N,L);
  for i:=-Nmax to Nmax do mas2[i]:=false;
  for i:=1 to N do begin
    read(fin,mas[i]);
    mas2[mas[i]]:=true
  end;
end;

function output(mas:tmas; mas2:tmas2; N,L:longint):longword;
var cnt:word;
i:longint;
begin
  cnt:=0;
  i:=-Nmax;
  while(i<Nmax)do begin
    if(mas2[i])then
      begin
        i:=i+L;
        inc(cnt);
      end;
    inc(i);
  end;
  output:=cnt;
end;

var mas:tmas;
mas2:tmas2;
n,l:longint;
fin,fout:text;

begin
  Assign(Fin,'input.txt') ; 
  Assign(Fout, 'output.txt'); 
  reset(Fin); 
  rewrite(Fout);
  input_mas(mas,mas2,N,L,fin);
  write(fout,output(mas,mas2,N,L));
  close(Fin); 
  close(Fout); 
end.
