{Muhammad Agung Febriyanto
    202143502349
    R35}
Uses crt;
type
    mhs = record
        nim     : String[12];
        nama    : String[40];
        usia    : string;
        saudara : string;
    end;
var // penyimpanan data
    data    : array[1..10] of mhs; //data array
    a,b     : integer; // data
begin // isi program
    clrscr; // pembersih layar
    write('Masukan banyaknya data : '); Readln(b); // inputan
    for a := 1 to b do // perulangan
        begin
        writeln('Data Ke- ',a);
            write('NIM      : '); readln(data[a].nim);
            write('Nama     : '); readln(data[a].nama);
            write('Usia     : '); readln(data[a].usia);
            write('Saudara  : '); readln(data[a].saudara);
            writeln('');
        end; // akhir perulangan
    writeln('');
    writeln('Data yang Anda masukan :'); // output
    for a :=1 to b do // perulangan
        begin
        writeln(data[a].nim,'   ',data[a].nama,' ',data[a].usia,' ',data[a].saudara);
        end; // akhir perulangan
    writeln;
    readln;
end. // akhir program
