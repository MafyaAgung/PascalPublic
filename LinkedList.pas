uses crt;
label 1;
type
    DMHS = record
    NPM : String;
    Nama : String;
    KELAS : string;
    end;
var
    List : array [1..15] of DMHS;
    i, h, j, n, pil, m : integer;
    NPM1 : String;
    temp : DMHS;
procedure insert;
begin
    inc(i);
    inc(n);
    gotoxy(6,16); write('Masukkan Data Mahasiswa');
    gotoxy(6,18); write('NPM Mahasiswa : ');        readln(List[i].NPM);
    gotoxy(6,19); write('Nama Mahasiswa : ');       readln(List[i].Nama);
    gotoxy(6,20); write('KELAS Mahasiswa : ');      readln(List[i].KELAS);
end;

procedure cari(z : String);
var
    k : integer;
    ketemu : boolean;
begin
    k := 1;
    ketemu := false;
    while (not ketemu) and (k if List[k].NPM = z then
    ketemu := true
    else
    k := k + 1;
    if ketemu then
    begin
        gotoxy(21,15); write('Mahasiswa Dengan NPM ',z,' : Ditemukan');
        gotoxy(18,17); writeln('|¯¯¯¯¯¯¯¯¯¯¯|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯|¯¯¯¯¯¯¯¯¯|');
        gotoxy(18,18); writeln('| NPM | NAMA | KELAS |');
        gotoxy(18,19); writeln('|___________|____________________|_________|');
        gotoxy(18,20); writeln('| | | |');
        gotoxy(18,21); writeln('| | | |');
        gotoxy(20,21); writeln(List[k].NPM);
        gotoxy(33,21); writeln(List[k].Nama);
        gotoxy(55,21); writeln(List[k].KELAS);
        gotoxy(18,22); writeln('|___________|____________________|_________|');
    end
        else
        begin
            gotoxy(20,15); write('Mahasiswa Dengan NPM ',z,' : Tidak Ditemukan');
        end;
end;

procedure update(p : String);
var
    z, x, y : String;
    q, o : integer;
    ketemu : boolean;
begin
    q := 1;
    if (NPM1 = '0') or (NPM1 = '') then
    begin
        gotoxy(15,20); write('Masukkan NPM yang Benar');
    end
    else
        begin
            ketemu := false;
            while (not ketemu) and (q List[j+1].NPM then
            begin
                temp := List[j];
                List[j] := List[j+1];
                List[j+1] := temp;
            end;
        end;

    2 : begin
        for h := 1 to n-1 do
        for j := 1 to n-1 do
        if List[j].Nama > List[j+1].Nama then
        begin
        temp := List[j];
        List[j] := List[j+1];
        List[j+1] := temp;
        end;
        end;
        3 : begin
        for h := 1 to n-1 do
        for j := 1 to n-1 do
        if List[j].KELAS > List[j+1].KELAS then
        begin
        temp := List[j];
        List[j] := List[j+1];
        List[j+1] := temp;
        end;
        end;
        4 : begin
        goto 1;
        end;
        end;
        cetak;
        until
        pil >= 5;
        end;
        3 : begin
        gotoxy(21,15); write('NPM Mahasiswa yang akan dicari : ');
readln(NPM1);
cari(NPM1);
gotoxy(18,24); write('Tekan Sembarang Tombol Untuk Kembali Ke Menu');
end;

4 : begin
gotoxy(5,18); write('NPM Mahasiswa Yang Akan di Update : ');
readln(NPM1);
update(NPM1);
end;
end;
until pil >= 5;
end.
