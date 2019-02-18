program THENthQUEEN;

const
	MAX = 10000;

var
	n,count:longint;
	board:array[1..MAX,1..MAX] of boolean;

function isSave(row,col:longint):boolean;
var
	r,c:longint;
begin
	isSave := true;
	for r := 1 to n do isSave := isSave and (not board[r,col]);
	for c := 1 to n do isSave := isSave and (not board[row,c]);
	for r := 1 to n do
	begin
		c := (col + row) - r;
		if (c >= 1) and (c <= 8) then isSave := isSave and (not board[r,c]);
	end;
	for r := 1 to n do
	begin
		c := (col - row) + r;
		if (c >= 1) and (c <= 8) then isSave := isSave and (not board[r,c]);
	end;
end;

procedure writeAns;
var
	r,c:longint;

	function parseInt(q:boolean):longint; begin if q then exit(1) else exit(0) end;

begin
	for r := 1 to n do
	begin
		for c := 1 to n do write(parseInt(board[r,c]),' ');
		writeln;
	end;
	writeln;

	inc(count);
end;

procedure backtrack(col:longint);
var
	row:longint;
begin
	for row := 1 to n do
		if isSave(row,col) then
		begin
			board[row,col] := true;

			if col < n then backtrack(col+1)
			else writeAns;

			board[row,col] := false;			
		end;
end;

begin
	readln(n);
	fillchar(board,sizeof(board),false);
	count := 0; backtrack(1);

	writeln('Co ',count,' cach giai.');
end.