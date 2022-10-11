program p9;
{Program While Do}

{Soal 1}

{Pada contoh program sebelumnya , yaitu menampilkan kelipatan 5.
penentuan kelipatan 5 langsung didalam kode program.
Kembangkan program tersebut sehingga program tersebut meminta inputan dari
console angka kelipatan yang ingin ditampilkan}

uses crt;
var 
    i: integer;
    angka: integer;
begin
    clrscr;
        i:=6;
        Write('Input angka kelipatan yang diinginkan: ');
        ReadLn(angka);
        Write('Input batasan angka yang ingin ditampilkan: ');
        ReadLn(angka);
        WriteLn('Bilangan kelipatan 6 antara 0 - 60');
        While(i <= 60) do
            begin
            write(i,' ');
            i:= i + 6;
            end;  
    readln;
end.
