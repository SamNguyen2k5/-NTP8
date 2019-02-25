program sum;

const
	MAX = 100;

var
	n,c,p:longint;
	x:array[0..MAX] of longint;

procedure print(l:longint);
var
	i:longint;
begin
	for i := 1 to l do write(x[i],' '); writeln;
	inc(c);
end;

procedure try(i:longint; s:longint);
var
	q:longint;
begin
	//writeln(i);
	if s = 0 then print(i-1)
	else if s > 0 then
		for q := x[i-1] to s do
		begin
			x[i] := q;
			try(i+1,s-q);
		end;
end;

begin
	readln(n); x[0] := 1; 
	c := 0;	try(1,n); writeln('c = ', c);
end.