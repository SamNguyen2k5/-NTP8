program _1;

const
    MAX = 10000;

var
    n,i,gcda,lcma:longint;
    a:array[1..MAX] of longint;

function gcd(a,b:longint):longint;
begin
    if b = 0 then gcd := a
    else gcd := gcd(b,a mod b);
end;

function lcm(a,b:longint):longint;
begin
    lcm := a * b div gcd(a,b);
end;

begin
    readln(n); for i := 1 to n do read(a[i]);

    gcda := a[1]; for i := 2 to n do gcda := gcd(gcda,a[i]);
    lcma := a[1]; for i := 2 to n do lcma := lcm(lcma,a[i]);

    writeln('UCLN = ',gcda);
    writeln('BCNN = ',lcma);
end.