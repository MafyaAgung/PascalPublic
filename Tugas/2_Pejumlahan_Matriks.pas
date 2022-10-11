{
    Muhammad Agung Febriyanto
    202143502349
    R35
}
uses crt;
var //tempat untuk mengisi variabel
    mat1, mat2, hasil : array [1..10,1..10] of integer;
    x, y, col, row : integer;
begin // isi atau badan dari seluruh program
    clrscr; //Fungsi untuk membersihkan layar
    write ('Masukan jumlah baris : '); readln (row); // Tempat unutk memasukan inputan
    write ('Masukan jumlah kolom : '); readln (col); // Tempat unutk memasukan inputan
    writeln;

    // Proses dari Matriks Pertama
    writeln ('Elemen matriks pertama');
    for x := 1 to row do //Fungsi untuk melakukan perulangan
    begin
        for y := 1 to col do
        begin
        write ('Masukan elemen matriks [',x,',',y,'] : '); readln (mat1[x,y]); // Tempat unutk memasukan inputan matriks
        end;
    end; // Akhir dari perulangan 
    writeln;

    //Proses dari Matriks Ke-2
    writeln ('Elemen matriks kedua');
    for x := 1 to row do //Fungsi untuk melakukan perulangan
    begin
        for y := 1 to col do
        begin
        write ('Masukan elemen matriks [',x,',',y,'] : '); readln (mat2[x,y]); // Tempat unutk memasukan inputan matriks
        end;
    end; // Akhir dari perulangan

    clrscr; //Fungsi untuk membersihkan layar
    writeln ('Matriks pertama');
    for x := 1 to row do //Fungsi untuk melakukan perulangan
    begin
        for y := 1 to col do //Fungsi untuk melakukan perulangan
        begin
        write (mat1[x,y]:5);
        end; // Akhir dari perulangan
        writeln;
    end; // Akhir dari perulangan
    writeln;
    writeln ('Matriks kedua');
    for x := 1 to row do //Fungsi untuk melakukan perulangan
    begin
        for y := 1 to col do //Fungsi untuk melakukan perulangan
        begin
        write (mat2[x,y]:5);
        end; // Akhir dari perulangan
        writeln;
    end; // Akhir dari perulangan
    writeln;
    writeln ('Penambahan Matriks (Matriks1 + Matriks2)');
    for x := 1 to row do //Fungsi untuk melakukan perulangan
    begin
        for y := 1 to col do //Fungsi untuk melakukan perulangan
        begin
        hasil[x,y] := mat1[x,y]+ mat2[x,y];
        write (hasil[x,y]:5);
        end; // Akhir dari perulangan
        writeln;
    end; // Akhir dari perulangan
readln;
end. // Akhir dari seluruh program