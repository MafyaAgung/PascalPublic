{
    Muhammad Agung Febriyanto
    202143502349
    R35
}
uses crt;
type
Mahasiswa = record
    nim: string;
    nama: string;
    tugas: real;
    uts: real;
    uas: real;
    na: real;
end;
var
    data:array [1..10] of Mahasiswa;
    a,b : integer;
begin
clrscr;
    write('Masukan banyaknya data : '); Readln(b);
    for a:=1 to b do
    begin
        with data[a] do  
        begin  
            writeln ('Mahasiswa ke : ', a);
            write   ('Nim    : '); readln(nim);
            write   ('Nama   : '); readln(nama);
            write   ('Tugas  : '); readln(tugas);
            write   ('UTS    : '); readln(uts);
            write   ('UAS    : '); readln(uas);
        end;
    end;
    writeln('-------------------------------------------------------');
    writeln('  No   NIM     NAMA  TUGAS   UTS    UAS    NA   GRADE');
    writeln('-------------------------------------------------------');
    for a:=1 to b do
    begin
        with data[a] do  
        begin  
            na:=(tugas+uts+uas)/3;
            write('  ',a,'  ',nim,'  ',nama,'  ',tugas:0:2,'  ',uts:0:2,'  ',uas:0:2,'  ',na:0:2,'  ');
            if((na<=100)and(na>=80))then
                begin
                    writeln('A');
                end
            else if((na<80)and(na>=70))then
                begin
                    writeln('B');
                end
            else if((na<70)and(na>=60))then
                begin
                    writeln('C');
                end
            else if((na<60)and(na>=50))then
                begin
                    writeln('D');
                end
            else if((na<50)and(na>=0))then
                begin
                    writeln('E');
                end
            else
                begin
                    writeln('Error');
                end;
        end;  
    end;
    writeln('-------------------------------------------------------');
    readln;
end.