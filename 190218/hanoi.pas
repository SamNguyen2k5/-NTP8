program HaNoi;

var
	n:longint;

procedure hanoi(n:longint; a,b,c:char);
begin
	if n > 1 then hanoi(n-1,a,c,b);
	writeln(a,' -> ',b);
	if n > 1 then hanoi(n-1,c,b,a);
end;

begin
	readln(n);
	hanoi(n,'A','B','C');
end.