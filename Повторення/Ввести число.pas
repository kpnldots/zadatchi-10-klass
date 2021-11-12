const Nmax = 1000;
type Tmas=array[0..Nmax] of longint;

procedure fill_mas(var mas:Tmas; num:longint; var Fin:text);
var i:integer;
begin
  for i:=0 to 9 do
    mas[i] := 0;
  while (num>0) do
    begin
      mas[num mod 10]:=1;
      num:=trunc(num/10);
    end;
end;

function cnt_dig(mas:Tmas):integer;
var i,cnt,dig:integer;
begin
  cnt:=0;
  for i:=0 to 2 do
  begin
    read(dig);
    mas[dig]:=0;
  end;
  for i:=0 to 9 do
    cnt+=mas[i];
  cnt_dig:=cnt;
end;

var mas:Tmas; 
num:longint; 
fin,fout:text;
    
begin
  Assign(fin,'input.txt');
  Assign(fout,'output.txt');
  reset(fin);
  Rewrite(fout);
  read(num);
  fill_mas(mas,num,fin);
  write(fout,cnt_dig(mas));
  close(fin);
  close(fout);
end.
