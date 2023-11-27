library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CaminhoDados is
  port
	(
		Sensor_de_cor :  in  std_logic_vector(31 DOWNTO 0);
		Codigo_de_cor :  in  std_logic_vector(31 DOWNTO 0);
		Clock : in std_logic;
		Reset : in std_logic;
		Habilita_escrita : in std_logic;
		Habilita_pigmento : in std_logic;
		Habilita_mistura : in std_logic;
		
		Misturando :  out  std_logic;
		Ciano :  out  std_logic;
		Magenta :  out  std_logic;
		Amarelo :  out  std_logic;
		Preto :  out  std_logic;
		Codigo_valido :  out  std_logic;
		Cor_valida :  out  std_logic;
		Codigo_cor_misturada :  out  std_logic_vector(31 DOWNTO 0)
	);
end CaminhoDados;

architecture dados of CaminhoDados is

	component CodValido
	
		port 
		(
			cod	: in std_logic_vector	(31 downto 0);
			valido	: out std_logic
		);
	
	end component;


	component Reg
		generic
		(
			W : integer:= 16
		);
		port
		( 
			clock: in std_logic;
			reset: in std_logic;
			load: in std_logic;
			D: in std_logic_vector ((W-1) downto 0);
			Q: out std_logic_vector ((W-1) downto 0)
		 );
	end component;
	
	component comparador
	
		generic
		(
			DATA_WIDTH: natural := 16
		);
		
		port
		(
			a: in std_logic_vector ((DATA_WIDTH-1) downto 0);
			b: in std_logic_vector ((DATA_WIDTH-1) downto 0);
			maior: out std_logic;
			menor: out std_logic;
			igual: out std_logic
		);
	
	end component;
	
	component CompMist
	
		port 
		(
			b	: in std_logic_vector	(15 downto 0);
			menor	: out std_logic
		);
	
	end component;
	
	component contador
	
		port
		(
			Clock, Reset, E : IN STD_LOGIC;
			Q : OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
		);
	
	end component;
	
	component multiplicador
	
		Port (
        A : in  STD_LOGIC_VECTOR (7 downto 0);  
        Produto : out  STD_LOGIC_VECTOR (15 downto 0)  
		);
	
	end component;
	
	
	
	
	
	signal fioC, fioM, fioY, fioK :  std_logic_vector(7 DOWNTO 0);
	signal fioCMult, fioContC, fioMMult, fioContM, fioYMult, fioContY, fioKMult, fioContK, fioContMist :  std_logic_vector(15 DOWNTO 0);
	signal fioCPronto, fioMPronto, fioYPronto, fioKPronto : std_logic;
	
	begin
		
	--Ciano
		instance_RegC: Reg generic map (W => 8) port map (clock => Clock, reset => Reset, load => Habilita_escrita, D => Codigo_de_cor(31 downto 24), Q => fioC);
		instance_MultC: multiplicador port map (A => fioC, Produto => fioCMult);
		instance_ContC: contador port map (Clock => Clock, Reset => Reset, E => Habilita_pigmento, Q => fioContC);
		instance_CompC: comparador port map (a => fioCMult, b => fioContC, maior => Ciano);
	--Magenta
		instance_RegM: Reg generic map (W => 8) port map (clock => Clock, reset => Reset, load => Habilita_escrita, D => Codigo_de_cor(23 downto 16), Q => fioM);
		instance_MultM: multiplicador port map (A => fioM, Produto => fioMMult);
		instance_ContM: contador port map (Clock => Clock, Reset => Reset, E => Habilita_pigmento, Q => fioContM);
		instance_CompM: comparador port map (a => fioMMult, b => fioContM, maior => Magenta);
	--Amarelo
		instance_RegY: Reg generic map (W => 8) port map (clock => Clock, reset => Reset, load => Habilita_escrita, D => Codigo_de_cor(15 downto 8), Q => fioY);
		instance_MultY: multiplicador port map (A => fioY, Produto => fioYMult);
		instance_ContY: contador port map (Clock => Clock, Reset => Reset, E => Habilita_pigmento, Q => fioContY);
		instance_CompY: comparador port map (a => fioYMult, b => fioContY, maior => Amarelo);
	--Preto
		instance_RegK: Reg generic map (W => 8) port map (clock => Clock, reset => Reset, load => Habilita_escrita, D => Codigo_de_cor(7 downto 0), Q => fioK);
		instance_MulTK: multiplicador port map (A => fioK, Produto => fioKMult);
		instance_ContK: contador port map (Clock => Clock, Reset => Reset, E => Habilita_pigmento, Q => fioContK);
		instance_CompK: comparador port map (a => fioKMult, b => fioContK, maior => Preto);
	--CodValido
		instance_CodValid: CodValido port map (cod => Codigo_de_cor, valido => Codigo_valido);
	--Comparador
		instance_Compcor: comparador generic map (DATA_WIDTH => 32) port map (a => Sensor_de_cor, b(31 downto 24) => fioC, b(23 downto 16) => fioM, b(15 downto 8) => fioY, b(7 downto 0) => fioK, igual => Cor_valida);
	--Misturador
		instance_compmist: CompMist port map (b => fioContMist, menor => Misturando);
		instance_contmist: contador port map (Clock => Clock, Reset => Reset, E => Habilita_mistura, Q => fioContMist);

end dados;