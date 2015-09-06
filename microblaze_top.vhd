----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:59:26 08/17/2015 
-- Design Name: 
-- Module Name:    microblaze_top - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity microblaze_top is
    Port ( clk : in STD_LOGIC;
           uartRx : in  STD_LOGIC;
           uartTx : out  STD_LOGIC;
           Reset : in std_logic;
           FIT1_Interrupt : out std_logic;
           FIT1_Toggle : out std_logic;
           GPO1 : out std_logic_vector(7 downto 0);
           INTC_IRQ : out std_logic);
end microblaze_top;


architecture Behavioral of microblaze_top is

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT microblaze
  PORT (
    Clk : IN STD_LOGIC;
    Reset : IN STD_LOGIC;
    UART_Rx : IN STD_LOGIC;
    UART_Tx : OUT STD_LOGIC;
    FIT1_Interrupt : OUT STD_LOGIC;
    FIT1_Toggle : OUT STD_LOGIC;
    GPO1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    INTC_IRQ : OUT STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

begin

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.
------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
mcs_0 : microblaze
  PORT MAP (
    Clk => clk,
    Reset => Reset,
    UART_Rx => uartRx,
    UART_Tx => uartTx,
    FIT1_Interrupt => FIT1_Interrupt,
    FIT1_Toggle => FIT1_Toggle,
    GPO1 => GPO1,
    INTC_IRQ => INTC_IRQ
  );
-- INST_TAG_END ------ End INSTANTIATION Template ------------


end Behavioral;


