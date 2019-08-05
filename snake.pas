program waz;
uses crt;

var r:array[1..79,1..24]of byte;
    w:array[1..1794]of record
                       x,y:byte;
                       end;


    dl,wyd,d:integer;
    c:char;
    i,j,l,x,y,xx,yy,kierunek:byte;



procedure losuj;
begin
l:=random(9)+1;
end;

procedure xy;
begin
x:=random(77)+2;
y:=random(22)+2;
end;

procedure gameover;
begin
clrscr;
gotoxy(20,20);
writeln('Game Over');
write('Dˆugo˜† w©¾a: ',dl);
repeat until keypressed;
halt;
end;

procedure zderzenie;
begin
if r[xx,yy]=177 then
begin
r[xx,yy]:=0;
repeat
xy;
xx:=x;
yy:=y;
until r[xx,yy]=0;
wyd:=wyd+l;
losuj;
r[xx,yy]:=l+48;
gotoxy(xx,yy);
write(l);


end;


end;

procedure lewo;
begin
if r[w[1].x-1,w[1].y]=177 then gameover;
if r[w[1].x-1,w[1].y]<>177 then
begin
zderzenie;
  if (dl=1)and(wyd=0) then
  begin
        r[w[1].x,w[1].y]:=0;
        gotoxy(w[1].x,w[1].y);
        write(#0);
        r[w[1].x-1,w[1].y]:=177;
        w[1].x:=w[1].x-1;
        gotoxy(w[1].x,w[1].y);
        write(#177);
        gotoxy(1,1);

   end else
       begin
        if wyd>0 then
         begin
           for i:=dl downto 1  do w[i+1]:=w[i];
           w[1].x:=w[2].x-1;
           w[1].y:=w[2].y;
          // w[i]:=w[i-1];
           r[w[1].x,w[1].y]:=177;
           gotoxy(w[1].x,w[1].y);
           write(#177);
           gotoxy(1,1);
           wyd:=wyd-1;
           dl:=dl+1;
         end else
             begin
             if wyd=0 then
             begin
              r[w[dl].x,w[dl].y]:=0;
              gotoxy(w[dl].x,w[dl].y);
              write(#0);

              for i:=dl downto 2 do
              w[i]:=w[i-1];

              w[1].x:=w[2].x-1;
              r[w[1].x,w[1].y]:=177;
              gotoxy(w[1].x,w[1].y);
              write(#177);
              gotoxy(1,1);
              end;

            end;

//if r[w[1].x,w[1].y]=l+48 then


     end;
end;

end;

procedure prawo;
begin
if r[w[1].x+1,w[1].y]=177 then gameover;
if r[w[1].x+1,w[1].y]<>177 then
begin
zderzenie;
if (dl=1)and(wyd=0) then
begin
        r[w[1].x,w[1].y]:=0;
        gotoxy(w[1].x,w[1].y);
        write(#0);
        r[w[1].x+1,w[1].y]:=177;
        w[1].x:=w[1].x+1;
        gotoxy(w[1].x,w[1].y);
        write(#177);
        gotoxy(1,1);
end else
 begin
        if wyd>0 then
         begin
           for i:=dl downto 1  do w[i+1]:=w[i];
           w[1].x:=w[2].x+1;
           w[1].y:=w[2].y;
           r[w[1].x,w[1].y]:=177;
           gotoxy(w[1].x,w[1].y);
           write(#177);
           gotoxy(1,1);
           wyd:=wyd-1;
           dl:=dl+1;
         end else
             begin
             if wyd=0 then
             begin
              r[w[dl].x,w[dl].y]:=0;
              gotoxy(w[dl].x,w[dl].y);
              write(#0);

              for i:=dl downto 2 do
              w[i]:=w[i-1];

              w[1].x:=w[2].x+1;
              r[w[1].x,w[1].y]:=177;
              gotoxy(w[1].x,w[1].y);
              write(#177);
              gotoxy(1,1);
              end;

            end;

//if r[w[1].x,w[1].y]=l+48 then


     end;
end;

end;







procedure dol;
begin
if r[w[1].x,w[1].y+1]=177 then gameover;
if r[w[1].x,w[1].y+1]<>177 then
begin
zderzenie;
if (dl=1)and(wyd=0) then
begin
        r[w[1].x,w[1].y]:=0;
        gotoxy(w[1].x,w[1].y);
        write(#0);
        r[w[1].x,w[1].y+1]:=177;
        w[1].y:=w[1].y+1;
        gotoxy(w[1].x,w[1].y);
        write(#177);
        gotoxy(1,1);
end else
 begin
        if wyd>0 then
         begin
           for i:=dl downto 1  do w[i+1]:=w[i];
           w[1].x:=w[2].x;
           w[1].y:=w[2].y+1;
           r[w[1].x,w[1].y]:=177;
           gotoxy(w[1].x,w[1].y);
           write(#177);
           gotoxy(1,1);
           wyd:=wyd-1;
           dl:=dl+1;
         end else
             begin
             if wyd=0 then
             begin
              r[w[dl].x,w[dl].y]:=0;
              gotoxy(w[dl].x,w[dl].y);
              write(#0);

              for i:=dl downto 2 do
              w[i]:=w[i-1];

              w[1].y:=w[2].y+1;
              r[w[1].x,w[1].y]:=177;
              gotoxy(w[1].x,w[1].y);
              write(#177);
              gotoxy(1,1);
              end;

            end;

//if r[w[1].x,w[1].y]=l+48 then


     end;
end;

end;


procedure gora;
begin
if r[w[1].x,w[1].y-1]=177 then gameover;
if r[w[1].x,w[1].y-1]<>177 then
begin
zderzenie;
if (dl=1)and(wyd=0) then
begin
        r[w[1].x,w[1].y]:=0;
        gotoxy(w[1].x,w[1].y);
        write(#0);
        r[w[1].x,w[1].y-1]:=177;
        w[1].y:=w[1].y-1;
        gotoxy(w[1].x,w[1].y);
        write(#177);
        gotoxy(1,1);
end else
 begin
        if wyd>0 then
         begin
           for i:=dl downto 1  do w[i+1]:=w[i];
           w[1].x:=w[2].x;
           w[1].y:=w[2].y-1;
           r[w[1].x,w[1].y]:=177;
           gotoxy(w[1].x,w[1].y);
           write(#177);
           gotoxy(1,1);
           wyd:=wyd-1;
           dl:=dl+1;
         end else
             begin
             if wyd=0 then
             begin
              r[w[dl].x,w[dl].y]:=0;
              gotoxy(w[dl].x,w[dl].y);
              write(#0);

              for i:=dl downto 2 do
              w[i]:=w[i-1];

              w[1].y:=w[2].y-1;
              r[w[1].x,w[1].y]:=177;
              gotoxy(w[1].x,w[1].y);
              write(#177);
              gotoxy(1,1);
              end;

            end;

//if r[w[1].x,w[1].y]=l+48 then


     end;
end;

end;





procedure rysuj;
begin
repeat
if keypressed then
begin
c:=readkey;
if c=#0 then
        c:=readkey;
        end;
case c of
#72:gora;
#75:lewo;
#80:dol;
#77:prawo;

end;

delay(d);



until  c=#13;
end;






begin
randomize;
dl:=1;
d:=100;
wyd:=0;


for i:=1 to 79 do
        for j:=1 to 24 do r[i,j]:=0;

for i:=1 to 79 do r[i,1]:=177;
for i:=1 to 79 do r[i,24]:=177;
for i:=1 to 24 do r[1,i]:=177;
for i:=1 to 24 do r[79,i]:=177;





clrscr;
gotoxy(1,1);

losuj;

xy;
r[x,y]:=l+48;
xx:=x;
yy:=y;
repeat
xy;
until (x<>xx)and(y<>yy);
r[x,y]:=177;
w[1].x:=x;
w[1].y:=y;

for j:=1 to 24 do
        for i:=1 to 79 do
        begin
                write(chr(r[i,j]));
                if i=79 then writeln;
        end;

rysuj;




end.






