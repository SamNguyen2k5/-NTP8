program ARRAGEMENT;

const
	MAX = 10000;

var 
	choosen:array[1..MAX] of boolean;
	x:array[0..MAX] of longint;
	n,k:longint;

procedure writeAns;
var
	i:longint;
begin
	for i := 1 to k do write(x[i],' '); writeln;
end;

procedure backtrack(j:longint);
var
	q:longint;
begin
	for q := 1 to n do
		if not choosen[q] then
		begin
			x[j] := q; choosen[q] := true;
			if j < k then backtrack(j+1)
			else writeAns;

			choosen[q] := false;
		end;
end;

begin
	readln(n,k);
	fillchar(x,sizeof(x),0); fillchar(choosen,sizeof(choosen),false);
	backtrack(1);
end.