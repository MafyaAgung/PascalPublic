{
    Muhammad Agung Febriyanto
    202143502349
    R35
}
uses crt;
type
Mahasiswa   = record
    nim     : string;
    nama    : string;
    tugas   : real;
    uts     : real;
    uas     : real;
    na      : real;
end;
var
    data    : array [1..10] of Mahasiswa;
    a,b     : integer;
begin
    clrscr;
    write('Masukan banyaknya data : '); Readln(b);
    for a:=1 to b do 
        begin  
            writeln ('Mahasiswa ke : ', a);
            write   ('Nim    : '); readln(data[a].nim);
            write   ('Nama   : '); readln(data[a].nama);
            write   ('Tugas  : '); readln(data[a].tugas);
            write   ('UTS    : '); readln(data[a].uts);
            write   ('UAS    : '); readln(data[a].uas);
        end;
    writeln('-------------------------------------------------------');
    writeln('  No   NIM     NAMA  TUGAS   UTS    UAS    NA   GRADE');
    writeln('-------------------------------------------------------');
    for a:=1 to b do
        begin  
            data[a].na:=(data[a].tugas+data[a].uts+data[a].uas)/3;
    write('  ',a,'  ',data[a].nim,'  ',data[a].nama,'  ',data[a].tugas:0:2,'  ',data[a].uts:0:2,'  ',data[a].uas:0:2,'  ',data[a].na:0:2,'  ');
            if((data[a].na<=100)and(data[a].na>=80))then
                begin
                    writeln('A');
                end
            else if((data[a].na<80)and(data[a].na>=70))then
                begin
                    writeln('B');
                end
            else if((data[a].na<70)and(data[a].na>=60))then
                begin
                    writeln('C');
                end
            else if((data[a].na<60)and(data[a].na>=50))then
                begin
                    writeln('D');
                end
            else if((data[a].na<50)and(data[a].na>=0))then
                begin
                    writeln('E');
                end
            else
                begin
                    writeln('Error');
                end;
        end;  
    writeln('-------------------------------------------------------');
    readln;
end.
