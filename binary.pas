program BINARY;

var
	n:longint;
	s:string;

procedure backtrack(j:longint);
var
	q:char;
begin
	for q := '0' to '1' do
	begin
		s[j] := q;
		if j < n then backtrack(j+1)
		else writeln(s);
	end;
end;

begin
	readln(n); s[0] := chr(n);	//Đặt chiều dài cho s
	backtrack(1);
end.