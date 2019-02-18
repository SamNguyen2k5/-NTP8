program _8;

const
	MAX = 10000;

type
	larray = array[1..MAX] of longint;

var
	a,b,c:larray;
	m,n,p:longint;

procedure merge(var x:larray; l,k,r:longint);
var 
	re:larray;
	i,j,p:longint;

	procedure insert(v:longint);
	begin
		re[p] := v; inc(p);
	end;

begin
	i := l; j := k+1; p := l;
	while (i <= k) or (j <= r) do
	begin
		if i > k then insert(x[j])
		else if j > r then insert(x[i])
		else if x[i] < x[j] then insert(x[i])
		else insert(x[j]);
	end;

	for p := l to r do x[p] := re[p];
end;

procedure sort(var x:larray; l,r:longint);
var
	k:longint;
begin
	if l < r then
	begin
		k := (l+r) div 2;
		sort(x,l,k); sort(x,k+1,r);
		merge(x,l,k,r);
	end;
end;

procedure input(var a:larray; var n:longint);
var
	i:longint;
begin
	readln(n);
	for i := 1 to n do read(a[i]);
end;

procedure writeArr(a:larray; n:longint);
var
	i:longint;
begin
	for i := 1 to n do write(a[i],' '); writeln;
end;

begin
	input(a,m); input(b,n);
	sort(a,1,m); sort(b,1,n);
	writeArr(a,m); writeArr(b,n);
end.