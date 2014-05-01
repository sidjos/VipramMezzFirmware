-- Address decode logic for ipbus fabric
--
-- This file has been AUTOGENERATED from the address table - do not hand edit
--
-- We assume the synthesis tool is clever enough to recognise exclusive conditions
-- in the if statement.
--
-- Dave Newbold, February 2011

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use work.ipbus.all;

package ipbus_addr_decode is

  function ipbus_addr_sel(signal addr : in std_logic_vector(31 downto 0)) return integer;

end ipbus_addr_decode;

package body ipbus_addr_decode is

  function ipbus_addr_sel(signal addr : in std_logic_vector(31 downto 0)) return integer is
    variable sel : integer;
  begin
		if    std_match(addr, "-----------0------00--------000-") then
			sel := 0; -- ctrl_reg / base 00000000 / mask 00000001
		elsif std_match(addr, "-----------0------00--------001-") then
			sel := 1; -- reg / base 00000002 / mask 00000000
		elsif std_match(addr, "-----------0------00--------01--") then
			sel := 2; -- err_inject / base 00000004 / mask 00000003
		elsif std_match(addr, "-----------0------00--------100-") then
			sel := 3; -- pkt_ctr / base 00000008 / mask 00000001
		elsif std_match(addr, "-----------0------01------------") then
			sel := 4; -- ram / base 00001000 / mask 000003ff
		elsif std_match(addr, "-----------0------10------------") then
			sel := 5; -- pram / base 00002000 / mask 000003ff
		elsif std_match(addr, "-----------1--------------------") then
			sel := 6; -- vipram / base 00100000 / mask 000fffff
		else
			sel := 99;
		end if;
		return sel;
	end ipbus_addr_sel;
 
end ipbus_addr_decode;
