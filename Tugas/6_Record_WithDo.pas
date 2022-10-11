{
    Muhammad Agung Febriyanto
    202143502349
    R35
    }
Uses crt;
type
    mhs = record
        nim     : String[12];
        nama    : String[40];
        usia    : string;
        saudara : string;
    end;
var // penyimpan data
    data    : array[1..10] of mhs; // data array
    a,b     : integer; // data
begin // isi
    clrscr; // clrear layar
    write('Masukan banyaknya data : '); Readln(b); // inputan
    for a := 1 to b do // perulangan
    begin
    with data[a] do // With do
        begin
        writeln('Data Ke- ',a);
            write('NIM      : '); readln(nim);
            write('Nama     : '); readln(nama);
            write('Usia     : '); readln(usia);
            write('Saudara  : '); readln(saudara);
            writeln('');
        end; 
    end; // akhir perulangan
    writeln('');
    writeln('Data yang Anda masukan :'); // output
    for a :=1 to b do // perulangan
    with data[a] do // with do
    begin
        begin
        writeln(nim,'   ',nama,' ',usia,' ',saudara);
        end;
    end; // akhir perulangan
    writeln;
    readln;
end. // akhir program