-- Euler1 in Ada
with Ada.Integer_Text_IO;

procedure Euler1_3 is

    function Euler(n : in Integer; acc : in Integer) return Integer is
    begin
        if n = 0 then
	    return acc;
	elsif n mod 3 = 0 or n mod 5 = 0 then
	    return Euler(n-1, acc+n);
	else
	    return Euler(n-1, acc);
	end if;
    end Euler;

    function Euler1(size : in Integer) return Integer is
    begin
	return Euler(size, 0);
    end Euler1;

begin
    Ada.Integer_Text_IO.Put (Integer( Euler1(999) ));
end Euler1_3;
