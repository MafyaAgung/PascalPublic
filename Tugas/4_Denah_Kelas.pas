{
    Muhammad Agung Febriyanto
    202143502349
    R35
}
uses crt;
var //Menyimpan data
    mat1 : array [1..10,1..10] of string; //memasukan array
    x, y, col, row : integer; // data
begin // isi
    clrscr;
    write ('Masukan jumlah baris : '); readln (row); // inputan
    write ('Masukan jumlah kolom : '); readln (col);
    writeln;
    writeln ('Masukan Data');
    for x := 1 to row do // perulangan
    begin
        for y := 1 to col do
        begin
        write ('Masukan Nama [',x,',',y,'] : '); readln (mat1[x,y]);
        end;
    end; // Akhir dari perulangan
    writeln;
    writeln ('Denah Kelas R35'); // output
    for x := 1 to row do // perulangan
    begin
        for y := 1 to col do
        begin
        write (mat1[x,y]:10);
        end;
        writeln;
    end; // akhir dari perulangan
readln;
end. // akhir program
