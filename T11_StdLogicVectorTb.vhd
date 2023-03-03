
Library ieee;
use ieee.std_logic_1164.all;


entity T11_StdLogicVectorTb is
end entity;


    architecture sim of T11_StdLogicVectorTb is
        signal Slv1 : std_logic_vector(7 downto 0);
        signal Slv2 : std_logic_vector(7 downto 0):= (others =>'0');
        signal Slv3 : std_logic_vector(7 downto 0):= (others =>'1');
        signal Slv4 : std_logic_vector(7 downto 0):= x"AA";
        signal Slv5 : std_logic_vector(0 to 7):= "10101010";
        signal Slv6 : std_logic_vector(7 downto 0):= "00000001";



        begin
            --shift register
            process is
                begin
            wait for 10 ns;
            for i in slv6'left downto slv6'right + 1 loop
                slv6(i) <= slv6(i-1);
            end loop;
        slv6(0)<= slv6(7) ;
            end process;


    end architecture;


