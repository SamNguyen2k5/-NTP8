program _2;

const
    MAX = 10000;

var
    n:longint;

function fib(n:longint):longint;
var
    f:array[1..MAX] of longint;
    i:longint;
begin
    f[1] := 0; f[2] := 1; for i := 3 to n do f[i] := f[i-1] + f[i-2];
    for i := 1 to n do write(f[i],' ');
end;

begin
    readln(n);
    fib(n);
end.
