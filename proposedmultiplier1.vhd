---VHDL CODE FOR MAIN PROGRAM OF proposedmultiplier1

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY proposedmultiplier1 IS 
	PORT
	(
		a0 :  IN  STD_LOGIC;
		b0 :  IN  STD_LOGIC;
		a1 :  IN  STD_LOGIC;
		a2 :  IN  STD_LOGIC;
		a3 :  IN  STD_LOGIC;
		a4 :  IN  STD_LOGIC;
		a5 :  IN  STD_LOGIC;
		a6 :  IN  STD_LOGIC;
		a7 :  IN  STD_LOGIC;
		b1 :  IN  STD_LOGIC;
		b2 :  IN  STD_LOGIC;
		b3 :  IN  STD_LOGIC;
		b4 :  IN  STD_LOGIC;
		b5 :  IN  STD_LOGIC;
		b6 :  IN  STD_LOGIC;
		b7 :  IN  STD_LOGIC;
		Low :  IN  STD_LOGIC;
		high :  IN  STD_LOGIC;
		p0 :  OUT  STD_LOGIC;
		p1 :  OUT  STD_LOGIC;
		p2 :  OUT  STD_LOGIC;
		p3 :  OUT  STD_LOGIC;
		p4 :  OUT  STD_LOGIC;
		p5 :  OUT  STD_LOGIC;
		p6 :  OUT  STD_LOGIC;
		p7 :  OUT  STD_LOGIC;
		p8 :  OUT  STD_LOGIC;
		p9 :  OUT  STD_LOGIC;
		p10 :  OUT  STD_LOGIC;
		p11 :  OUT  STD_LOGIC;
		p12 :  OUT  STD_LOGIC;
		p13 :  OUT  STD_LOGIC;
		p14 :  OUT  STD_LOGIC;
		p15 :  OUT  STD_LOGIC
	);
END proposedmultiplier1;

ARCHITECTURE bdf_type OF proposedmultiplier1 IS 

COMPONENT fa_opt1
	PORT(bf : IN STD_LOGIC;
		 af : IN STD_LOGIC;
		 c1 : IN STD_LOGIC;
		 sf : OUT STD_LOGIC;
		 cf : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT fa_inv1
	PORT(b : IN STD_LOGIC;
		 a : IN STD_LOGIC;
		 ci : IN STD_LOGIC;
		 co : OUT STD_LOGIC;
		 s : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT nands2
	PORT(i1 : IN STD_LOGIC;
		 i2 : IN STD_LOGIC;
		 o1 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT fa_inv
	PORT(b : IN STD_LOGIC;
		 a : IN STD_LOGIC;
		 ci : IN STD_LOGIC;
		 co : OUT STD_LOGIC;
		 s : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT ha_invin1
	PORT(ahc : IN STD_LOGIC;
		 bhc : IN STD_LOGIC;
		 hc : OUT STD_LOGIC;
		 sh : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT ands2
	PORT(i1 : IN STD_LOGIC;
		 i2 : IN STD_LOGIC;
		 o1 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT nots
	PORT(Ai : IN STD_LOGIC;
		 Yi : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT haxor1
	PORT(bh : IN STD_LOGIC;
		 ah : IN STD_LOGIC;
		 hc : OUT STD_LOGIC;
		 sh : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SIG0 :  STD_LOGIC;
SIGNAL	SIG1 :  STD_LOGIC;
SIGNAL	SIG2 :  STD_LOGIC;
SIGNAL	SIG3 :  STD_LOGIC;
SIGNAL	SIG4 :  STD_LOGIC;
SIGNAL	SIG5 :  STD_LOGIC;
SIGNAL	SIG6 :  STD_LOGIC;
SIGNAL	SIG7 :  STD_LOGIC;
SIGNAL	SIG8 :  STD_LOGIC;
SIGNAL	SIG9 :  STD_LOGIC;
SIGNAL	SIG10 :  STD_LOGIC;
SIGNAL	SIG11 :  STD_LOGIC;
SIGNAL	SIG12 :  STD_LOGIC;
SIGNAL	SIG13 :  STD_LOGIC;
SIGNAL	SIG14 :  STD_LOGIC;
SIGNAL	SIG15 :  STD_LOGIC;
SIGNAL	SIG16 :  STD_LOGIC;
SIGNAL	SIG17 :  STD_LOGIC;
SIGNAL	SIG18 :  STD_LOGIC;
SIGNAL	SIG19 :  STD_LOGIC;
SIGNAL	SIG20 :  STD_LOGIC;
SIGNAL	SIG21 :  STD_LOGIC;
SIGNAL	SIG22 :  STD_LOGIC;
SIGNAL	SIG23 :  STD_LOGIC;
SIGNAL	SIG24 :  STD_LOGIC;
SIGNAL	SIG25 :  STD_LOGIC;
SIGNAL	SIG26 :  STD_LOGIC;
SIGNAL	SIG27 :  STD_LOGIC;
SIGNAL	SIG28 :  STD_LOGIC;
SIGNAL	SIG29 :  STD_LOGIC;
SIGNAL	SIG30 :  STD_LOGIC;
SIGNAL	SIG31 :  STD_LOGIC;
SIGNAL	SIG32 :  STD_LOGIC;
SIGNAL	SIG33 :  STD_LOGIC;
SIGNAL	SIG34 :  STD_LOGIC;
SIGNAL	SIG35 :  STD_LOGIC;
SIGNAL	SIG36 :  STD_LOGIC;
SIGNAL	SIG37 :  STD_LOGIC;
SIGNAL	SIG38 :  STD_LOGIC;
SIGNAL	SIG39 :  STD_LOGIC;
SIGNAL	SIG40 :  STD_LOGIC;
SIGNAL	SIG41 :  STD_LOGIC;
SIGNAL	SIG42 :  STD_LOGIC;
SIGNAL	SIG43 :  STD_LOGIC;
SIGNAL	SIG44 :  STD_LOGIC;
SIGNAL	SIG45 :  STD_LOGIC;
SIGNAL	SIG46 :  STD_LOGIC;
SIGNAL	SIG47 :  STD_LOGIC;
SIGNAL	SIG48 :  STD_LOGIC;
SIGNAL	SIG49 :  STD_LOGIC;
SIGNAL	SIG50 :  STD_LOGIC;
SIGNAL	SIG51 :  STD_LOGIC;
SIGNAL	SIG52 :  STD_LOGIC;
SIGNAL	SIG53 :  STD_LOGIC;
SIGNAL	SIG54 :  STD_LOGIC;
SIGNAL	SIG55 :  STD_LOGIC;
SIGNAL	SIG56 :  STD_LOGIC;
SIGNAL	SIG57 :  STD_LOGIC;
SIGNAL	SIG58 :  STD_LOGIC;
SIGNAL	SIG59 :  STD_LOGIC;
SIGNAL	SIG60 :  STD_LOGIC;
SIGNAL	SIG61 :  STD_LOGIC;
SIGNAL	SIG62 :  STD_LOGIC;
SIGNAL	SIG63 :  STD_LOGIC;
SIGNAL	SIG64 :  STD_LOGIC;
SIGNAL	SIG65 :  STD_LOGIC;
SIGNAL	SIG66 :  STD_LOGIC;
SIGNAL	SIG67 :  STD_LOGIC;
SIGNAL	SIG68 :  STD_LOGIC;
SIGNAL	SIG69 :  STD_LOGIC;
SIGNAL	SIG70 :  STD_LOGIC;
SIGNAL	SIG71 :  STD_LOGIC;
SIGNAL	SIG72 :  STD_LOGIC;
SIGNAL	SIG73 :  STD_LOGIC;
SIGNAL	SIG74 :  STD_LOGIC;
SIGNAL	SIG75 :  STD_LOGIC;
SIGNAL	SIG76 :  STD_LOGIC;
SIGNAL	SIG77 :  STD_LOGIC;
SIGNAL	SIG78 :  STD_LOGIC;
SIGNAL	SIG79 :  STD_LOGIC;
SIGNAL	SIG80 :  STD_LOGIC;
SIGNAL	SIG81 :  STD_LOGIC;
SIGNAL	SIG82 :  STD_LOGIC;
SIGNAL	SIG83 :  STD_LOGIC;
SIGNAL	SIG84 :  STD_LOGIC;
SIGNAL	SIG85 :  STD_LOGIC;
SIGNAL	SIG86 :  STD_LOGIC;
SIGNAL	SIG87 :  STD_LOGIC;
SIGNAL	SIG88 :  STD_LOGIC;
SIGNAL	SIG89 :  STD_LOGIC;
SIGNAL	SIG90 :  STD_LOGIC;
SIGNAL	SIG91 :  STD_LOGIC;
SIGNAL	SIG92 :  STD_LOGIC;
SIGNAL	SIG93 :  STD_LOGIC;
SIGNAL	SIG94 :  STD_LOGIC;
SIGNAL	SIG95 :  STD_LOGIC;
SIGNAL	SIG96 :  STD_LOGIC;
SIGNAL	SIG97 :  STD_LOGIC;
SIGNAL	SIG98 :  STD_LOGIC;
SIGNAL	SIG99 :  STD_LOGIC;
SIGNAL	SIG100 :  STD_LOGIC;
SIGNAL	SIG101 :  STD_LOGIC;
SIGNAL	SIG102 :  STD_LOGIC;
SIGNAL	SIG103 :  STD_LOGIC;
SIGNAL	SIG104 :  STD_LOGIC;
SIGNAL	SIG105 :  STD_LOGIC;
SIGNAL	SIG106 :  STD_LOGIC;
SIGNAL	SIG107 :  STD_LOGIC;
SIGNAL	SIG108 :  STD_LOGIC;
SIGNAL	SIG109 :  STD_LOGIC;
SIGNAL	SIG110 :  STD_LOGIC;
SIGNAL	SIG111 :  STD_LOGIC;
SIGNAL	SIG112 :  STD_LOGIC;
SIGNAL	SIG113 :  STD_LOGIC;
SIGNAL	SIG114 :  STD_LOGIC;
SIGNAL	SIG115 :  STD_LOGIC;
SIGNAL	SIG116 :  STD_LOGIC;
SIGNAL	SIG117 :  STD_LOGIC;
SIGNAL	SIG118 :  STD_LOGIC;
SIGNAL	SIG119 :  STD_LOGIC;
SIGNAL	SIG120 :  STD_LOGIC;
SIGNAL	SIG121 :  STD_LOGIC;
SIGNAL	SIG122 :  STD_LOGIC;
SIGNAL	SIG123 :  STD_LOGIC;
SIGNAL	SIG124 :  STD_LOGIC;
SIGNAL	SIG125 :  STD_LOGIC;
SIGNAL	SIG126 :  STD_LOGIC;
SIGNAL	SIG127 :  STD_LOGIC;
SIGNAL	SIG128 :  STD_LOGIC;
SIGNAL	SIG129 :  STD_LOGIC;
SIGNAL	SIG130 :  STD_LOGIC;
SIGNAL	SIG131 :  STD_LOGIC;
SIGNAL	SIG132 :  STD_LOGIC;
SIGNAL	SIG133 :  STD_LOGIC;
SIGNAL	SIG134 :  STD_LOGIC;
SIGNAL	SIG135 :  STD_LOGIC;
SIGNAL	SIG136 :  STD_LOGIC;
SIGNAL	SIG137 :  STD_LOGIC;
SIGNAL	SIG138 :  STD_LOGIC;
SIGNAL	SIG139 :  STD_LOGIC;
SIGNAL	SIG140 :  STD_LOGIC;
SIGNAL	SIG141 :  STD_LOGIC;
SIGNAL	SIG142 :  STD_LOGIC;
SIGNAL	SIG143 :  STD_LOGIC;
SIGNAL	SIG144 :  STD_LOGIC;
SIGNAL	SIG145 :  STD_LOGIC;
SIGNAL	SIG146 :  STD_LOGIC;
SIGNAL	SIG147 :  STD_LOGIC;
SIGNAL	SIG148 :  STD_LOGIC;
SIGNAL	SIG149 :  STD_LOGIC;
SIGNAL	SIG150 :  STD_LOGIC;
SIGNAL	SIG151 :  STD_LOGIC;
SIGNAL	SIG152 :  STD_LOGIC;
SIGNAL	SIG153 :  STD_LOGIC;
SIGNAL	SIG154 :  STD_LOGIC;
SIGNAL	SIG155 :  STD_LOGIC;
SIGNAL	SIG156 :  STD_LOGIC;
SIGNAL	SIG157 :  STD_LOGIC;
SIGNAL	SIG158 :  STD_LOGIC;
SIGNAL	SIG159 :  STD_LOGIC;
SIGNAL	SIG160 :  STD_LOGIC;
SIGNAL	SIG161 :  STD_LOGIC;
SIGNAL	SIG162 :  STD_LOGIC;
SIGNAL	SIG163 :  STD_LOGIC;
SIGNAL	SIG164 :  STD_LOGIC;
SIGNAL	SIG165 :  STD_LOGIC;
SIGNAL	SIG166 :  STD_LOGIC;
SIGNAL	SIG167 :  STD_LOGIC;
SIGNAL	SIG168 :  STD_LOGIC;


BEGIN 



b2v_inst : fa_opt1
PORT MAP(bf => SIG0,
		 af => SIG1,
		 c1 => SIG2,
		 sf => p4,
		 cf => SIG26);


b2v_inst1 : fa_opt1
PORT MAP(bf => SIG3,
		 af => SIG4,
		 c1 => SIG5,
		 sf => SIG25,
		 cf => SIG29);


b2v_inst10 : fa_inv1
PORT MAP(b => SIG6,
		 a => SIG7,
		 ci => SIG8,
		 co => SIG111,
		 s => SIG106);


b2v_inst11 : fa_inv1
PORT MAP(b => SIG9,
		 a => SIG10,
		 ci => SIG11,
		 co => SIG142,
		 s => SIG109);


b2v_inst12 : fa_inv1
PORT MAP(b => SIG12,
		 a => SIG13,
		 ci => SIG14,
		 co => SIG123,
		 s => SIG118);


b2v_inst121 : nands2
PORT MAP(i1 => b0,
		 i2 => a6,
		 o1 => SIG8);


b2v_inst125 : nands2
PORT MAP(i1 => b4,
		 i2 => a6,
		 o1 => SIG20);


b2v_inst13 : fa_inv1
PORT MAP(b => SIG15,
		 a => SIG16,
		 ci => SIG17,
		 co => SIG126,
		 s => SIG121);


b2v_inst14 : fa_inv1
PORT MAP(b => SIG18,
		 a => SIG19,
		 ci => SIG20,
		 co => SIG129,
		 s => SIG124);


b2v_inst149 : nands2
PORT MAP(i1 => b1,
		 i2 => a5,
		 o1 => SIG7);


b2v_inst15 : fa_inv1
PORT MAP(b => SIG21,
		 a => SIG22,
		 ci => SIG23,
		 co => SIG149,
		 s => SIG127);


b2v_inst150 : nands2
PORT MAP(i1 => b1,
		 i2 => a6,
		 o1 => SIG10);


b2v_inst151 : nands2
PORT MAP(i1 => b2,
		 i2 => a5,
		 o1 => SIG9);


b2v_inst152 : nands2
PORT MAP(i1 => b2,
		 i2 => a6,
		 o1 => SIG78);


b2v_inst153 : nands2
PORT MAP(i1 => b0,
		 i2 => a5,
		 o1 => SIG105);


b2v_inst154 : nands2
PORT MAP(i1 => b0,
		 i2 => a4,
		 o1 => SIG93);


b2v_inst155 : nands2
PORT MAP(i1 => b0,
		 i2 => a3,
		 o1 => SIG71);


b2v_inst156 : nands2
PORT MAP(i1 => b0,
		 i2 => a2,
		 o1 => SIG38);


b2v_inst157 : nands2
PORT MAP(i1 => b0,
		 i2 => a1,
		 o1 => SIG131);


b2v_inst158 : nands2
PORT MAP(i1 => b1,
		 i2 => a0,
		 o1 => SIG130);


b2v_inst159 : nands2
PORT MAP(i1 => b2,
		 i2 => a0,
		 o1 => SIG36);


b2v_inst16 : fa_opt1
PORT MAP(bf => SIG24,
		 af => SIG25,
		 c1 => SIG26,
		 sf => p5,
		 cf => SIG32);


b2v_inst160 : nands2
PORT MAP(i1 => b1,
		 i2 => a1,
		 o1 => SIG37);


b2v_inst161 : nands2
PORT MAP(i1 => b1,
		 i2 => a2,
		 o1 => SIG70);


b2v_inst162 : nands2
PORT MAP(i1 => b1,
		 i2 => a3,
		 o1 => SIG92);


b2v_inst163 : nands2
PORT MAP(i1 => b1,
		 i2 => a4,
		 o1 => SIG104);


b2v_inst164 : nands2
PORT MAP(i1 => b2,
		 i2 => a3,
		 o1 => SIG103);


b2v_inst165 : nands2
PORT MAP(i1 => b2,
		 i2 => a4,
		 o1 => SIG6);


b2v_inst166 : nands2
PORT MAP(i1 => b2,
		 i2 => a2,
		 o1 => SIG91);


b2v_inst167 : nands2
PORT MAP(i1 => b2,
		 i2 => a1,
		 o1 => SIG69);


b2v_inst168 : nands2
PORT MAP(i1 => b5,
		 i2 => a5,
		 o1 => SIG19);


b2v_inst169 : nands2
PORT MAP(i1 => b5,
		 i2 => a6,
		 o1 => SIG22);


b2v_inst17 : fa_opt1
PORT MAP(bf => SIG27,
		 af => SIG28,
		 c1 => SIG29,
		 sf => SIG30,
		 cf => SIG40);


b2v_inst170 : nands2
PORT MAP(i1 => b6,
		 i2 => a5,
		 o1 => SIG21);


b2v_inst171 : nands2
PORT MAP(i1 => b6,
		 i2 => a6,
		 o1 => SIG144);


b2v_inst172 : nands2
PORT MAP(i1 => b4,
		 i2 => a5,
		 o1 => SIG17);


b2v_inst173 : nands2
PORT MAP(i1 => b4,
		 i2 => a4,
		 o1 => SIG14);


b2v_inst174 : nands2
PORT MAP(i1 => b4,
		 i2 => a3,
		 o1 => SIG168);


b2v_inst175 : nands2
PORT MAP(i1 => b4,
		 i2 => a2,
		 o1 => SIG134);


b2v_inst176 : nands2
PORT MAP(i1 => b4,
		 i2 => a1,
		 o1 => SIG136);


b2v_inst177 : nands2
PORT MAP(i1 => b5,
		 i2 => a0,
		 o1 => SIG135);


b2v_inst178 : nands2
PORT MAP(i1 => b6,
		 i2 => a0,
		 o1 => SIG132);


b2v_inst179 : nands2
PORT MAP(i1 => b5,
		 i2 => a1,
		 o1 => SIG133);


b2v_inst18 : fa_opt1
PORT MAP(bf => SIG30,
		 af => SIG31,
		 c1 => SIG32,
		 sf => p6,
		 cf => SIG41);


b2v_inst180 : nands2
PORT MAP(i1 => b5,
		 i2 => a2,
		 o1 => SIG167);


b2v_inst181 : nands2
PORT MAP(i1 => b5,
		 i2 => a3,
		 o1 => SIG13);


b2v_inst182 : nands2
PORT MAP(i1 => b5,
		 i2 => a4,
		 o1 => SIG16);


b2v_inst183 : nands2
PORT MAP(i1 => b6,
		 i2 => a3,
		 o1 => SIG15);


b2v_inst184 : nands2
PORT MAP(i1 => b6,
		 i2 => a4,
		 o1 => SIG18);


b2v_inst185 : nands2
PORT MAP(i1 => b6,
		 i2 => a2,
		 o1 => SIG12);


b2v_inst186 : nands2
PORT MAP(i1 => b6,
		 i2 => a1,
		 o1 => SIG166);


b2v_inst189 : nands2
PORT MAP(i1 => b3,
		 i2 => a0,
		 o1 => SIG95);


b2v_inst19 : fa_opt1
PORT MAP(bf => SIG33,
		 af => SIG34,
		 c1 => SIG35,
		 sf => SIG39,
		 cf => SIG46);


b2v_inst190 : nands2
PORT MAP(i1 => b3,
		 i2 => a1,
		 o1 => SIG98);


b2v_inst191 : nands2
PORT MAP(i1 => b3,
		 i2 => a3,
		 o1 => SIG107);


b2v_inst192 : nands2
PORT MAP(i1 => b3,
		 i2 => a2,
		 o1 => SIG101);


b2v_inst194 : nands2
PORT MAP(i1 => b3,
		 i2 => a4,
		 o1 => SIG110);


b2v_inst195 : nands2
PORT MAP(i1 => b3,
		 i2 => a5,
		 o1 => SIG140);


b2v_inst196 : nands2
PORT MAP(i1 => b3,
		 i2 => a6,
		 o1 => SIG112);


b2v_inst197 : nands2
PORT MAP(i1 => b3,
		 i2 => a7,
		 o1 => SIG66);


b2v_inst2 : fa_inv1
PORT MAP(b => SIG36,
		 a => SIG37,
		 ci => SIG38,
		 co => SIG96,
		 s => SIG143);


b2v_inst20 : fa_opt1
PORT MAP(bf => SIG39,
		 af => SIG40,
		 c1 => SIG41,
		 sf => p7,
		 cf => SIG47);


b2v_inst21 : fa_opt1
PORT MAP(bf => SIG42,
		 af => SIG43,
		 c1 => SIG44,
		 sf => SIG45,
		 cf => SIG55);


b2v_inst22 : fa_opt1
PORT MAP(bf => SIG45,
		 af => SIG46,
		 c1 => SIG47,
		 sf => p8,
		 cf => SIG56);


b2v_inst23 : fa_opt1
PORT MAP(bf => SIG48,
		 af => SIG49,
		 c1 => SIG50,
		 sf => SIG42,
		 cf => SIG52);


b2v_inst24 : fa_opt1
PORT MAP(bf => SIG51,
		 af => SIG52,
		 c1 => SIG53,
		 sf => SIG54,
		 cf => SIG64);


b2v_inst25 : fa_opt1
PORT MAP(bf => SIG54,
		 af => SIG55,
		 c1 => SIG56,
		 sf => p9,
		 cf => SIG65);


b2v_inst26 : fa_opt1
PORT MAP(bf => SIG57,
		 af => SIG58,
		 c1 => SIG59,
		 sf => SIG51,
		 cf => SIG61);


b2v_inst27 : fa_opt1
PORT MAP(bf => SIG60,
		 af => SIG61,
		 c1 => SIG62,
		 sf => SIG63,
		 cf => SIG76);


b2v_inst28 : fa_opt1
PORT MAP(bf => SIG63,
		 af => SIG64,
		 c1 => SIG65,
		 sf => p10,
		 cf => SIG77);


b2v_inst29 : fa_opt1
PORT MAP(bf => SIG66,
		 af => SIG67,
		 c1 => SIG68,
		 sf => SIG60,
		 cf => SIG73);


b2v_inst3 : fa_inv1
PORT MAP(b => SIG69,
		 a => SIG70,
		 ci => SIG71,
		 co => SIG99,
		 s => SIG94);


b2v_inst30 : fa_opt1
PORT MAP(bf => SIG72,
		 af => SIG73,
		 c1 => SIG74,
		 sf => SIG75,
		 cf => SIG81);


b2v_inst31 : fa_opt1
PORT MAP(bf => SIG75,
		 af => SIG76,
		 c1 => SIG77,
		 sf => p11,
		 cf => SIG82);


b2v_inst32 : fa_inv1
PORT MAP(b => SIG78,
		 a => SIG79,
		 ci => Low,
		 co => SIG114,
		 s => SIG141);


b2v_inst33 : fa_opt1
PORT MAP(bf => SIG80,
		 af => SIG81,
		 c1 => SIG82,
		 sf => p12,
		 cf => SIG85);


b2v_inst34 : fa_opt1
PORT MAP(bf => SIG83,
		 af => SIG84,
		 c1 => SIG85,
		 sf => p13,
		 cf => SIG88);


b2v_inst35 : fa_opt1
PORT MAP(bf => SIG86,
		 af => SIG87,
		 c1 => SIG88,
		 sf => p14,
		 cf => SIG90);


b2v_inst36 : fa_opt1
PORT MAP(bf => high,
		 af => SIG89,
		 c1 => SIG90,
		 sf => p15);


b2v_inst4 : fa_inv1
PORT MAP(b => SIG91,
		 a => SIG92,
		 ci => SIG93,
		 co => SIG102,
		 s => SIG97);


b2v_inst47 : fa_inv
PORT MAP(b => SIG94,
		 a => SIG95,
		 ci => SIG96,
		 co => SIG156,
		 s => SIG155);


b2v_inst48 : fa_inv
PORT MAP(b => SIG97,
		 a => SIG98,
		 ci => SIG99,
		 co => SIG4,
		 s => SIG157);


b2v_inst49 : fa_inv
PORT MAP(b => SIG100,
		 a => SIG101,
		 ci => SIG102,
		 co => SIG28,
		 s => SIG3);


b2v_inst5 : fa_inv1
PORT MAP(b => SIG103,
		 a => SIG104,
		 ci => SIG105,
		 co => SIG108,
		 s => SIG100);


b2v_inst50 : fa_inv
PORT MAP(b => SIG106,
		 a => SIG107,
		 ci => SIG108,
		 co => SIG158,
		 s => SIG27);


b2v_inst51 : fa_inv
PORT MAP(b => SIG109,
		 a => SIG110,
		 ci => SIG111,
		 co => SIG49,
		 s => SIG159);


b2v_inst52 : fa_inv
PORT MAP(b => SIG112,
		 a => SIG113,
		 ci => SIG114,
		 co => SIG67,
		 s => SIG57);


b2v_inst54 : fa_inv
PORT MAP(b => SIG115,
		 a => SIG116,
		 ci => SIG117,
		 co => SIG50,
		 s => SIG35);


b2v_inst55 : fa_inv
PORT MAP(b => SIG118,
		 a => SIG119,
		 ci => SIG120,
		 co => SIG59,
		 s => SIG44);


b2v_inst56 : fa_inv
PORT MAP(b => SIG121,
		 a => SIG122,
		 ci => SIG123,
		 co => SIG68,
		 s => SIG53);


b2v_inst57 : fa_inv
PORT MAP(b => SIG124,
		 a => SIG125,
		 ci => SIG126,
		 co => SIG72,
		 s => SIG62);


b2v_inst58 : fa_inv
PORT MAP(b => SIG127,
		 a => SIG128,
		 ci => SIG129,
		 co => SIG161,
		 s => SIG74);


b2v_inst59 : ha_invin1
PORT MAP(ahc => SIG130,
		 bhc => SIG131,
		 hc => SIG147,
		 sh => p1);


b2v_inst6 : fa_inv1
PORT MAP(b => SIG132,
		 a => SIG133,
		 ci => SIG134,
		 co => SIG117,
		 s => SIG151);


b2v_inst60 : ha_invin1
PORT MAP(ahc => SIG135,
		 bhc => SIG136,
		 hc => SIG152,
		 sh => SIG24);


b2v_inst61 : fa_inv
PORT MAP(b => SIG137,
		 a => SIG138,
		 ci => SIG139,
		 co => SIG165,
		 s => SIG162);


b2v_inst62 : ands2
PORT MAP(i1 => b7,
		 i2 => a7,
		 o1 => SIG164);


b2v_inst63 : ands2
PORT MAP(i1 => b0,
		 i2 => a7,
		 o1 => SIG11);


b2v_inst64 : ands2
PORT MAP(i1 => b1,
		 i2 => a7,
		 o1 => SIG79);


b2v_inst65 : ands2
PORT MAP(i1 => b2,
		 i2 => a7,
		 o1 => SIG113);


b2v_inst66 : ands2
PORT MAP(i1 => b4,
		 i2 => a7,
		 o1 => SIG23);


b2v_inst67 : ands2
PORT MAP(i1 => b5,
		 i2 => a7,
		 o1 => SIG145);


b2v_inst68 : ands2
PORT MAP(i1 => b6,
		 i2 => a7,
		 o1 => SIG138);


b2v_inst69 : fa_inv
PORT MAP(b => SIG140,
		 a => SIG141,
		 ci => SIG142,
		 co => SIG58,
		 s => SIG48);


b2v_inst7 : ands2
PORT MAP(i1 => b0,
		 i2 => a0,
		 o1 => p0);


b2v_inst71 : nots
PORT MAP(Ai => SIG143,
		 Yi => SIG148);


b2v_inst72 : fa_inv1
PORT MAP(b => SIG144,
		 a => SIG145,
		 ci => SIG146,
		 co => SIG139,
		 s => SIG150);


b2v_inst73 : haxor1
PORT MAP(bh => SIG147,
		 ah => SIG148,
		 hc => SIG154,
		 sh => p2);


b2v_inst74 : ha_invin1
PORT MAP(ahc => SIG149,
		 bhc => SIG150,
		 hc => SIG163,
		 sh => SIG160);


b2v_inst75 : nots
PORT MAP(Ai => SIG151,
		 Yi => SIG153);


b2v_inst76 : haxor1
PORT MAP(bh => SIG152,
		 ah => SIG153,
		 hc => SIG34,
		 sh => SIG31);


b2v_inst77 : haxor1
PORT MAP(bh => SIG154,
		 ah => SIG155,
		 hc => SIG2,
		 sh => p3);


b2v_inst78 : haxor1
PORT MAP(bh => SIG156,
		 ah => SIG157,
		 hc => SIG5,
		 sh => SIG0);


b2v_inst79 : haxor1
PORT MAP(bh => SIG158,
		 ah => SIG159,
		 hc => SIG43,
		 sh => SIG33);


b2v_inst8 : ands2
PORT MAP(i1 => b4,
		 i2 => a0,
		 o1 => SIG1);


b2v_inst80 : haxor1
PORT MAP(bh => SIG160,
		 ah => SIG161,
		 hc => SIG84,
		 sh => SIG80);


b2v_inst81 : haxor1
PORT MAP(bh => SIG162,
		 ah => SIG163,
		 hc => SIG87,
		 sh => SIG83);


b2v_inst82 : haxor1
PORT MAP(bh => SIG164,
		 ah => SIG165,
		 hc => SIG89,
		 sh => SIG86);


b2v_inst83 : ands2
PORT MAP(i1 => b7,
		 i2 => a6,
		 o1 => SIG137);


b2v_inst84 : ands2
PORT MAP(i1 => b7,
		 i2 => a5,
		 o1 => SIG146);


b2v_inst85 : ands2
PORT MAP(i1 => b7,
		 i2 => a4,
		 o1 => SIG128);


b2v_inst86 : ands2
PORT MAP(i1 => b7,
		 i2 => a3,
		 o1 => SIG125);


b2v_inst87 : ands2
PORT MAP(i1 => b7,
		 i2 => a2,
		 o1 => SIG122);


b2v_inst88 : ands2
PORT MAP(i1 => b7,
		 i2 => a1,
		 o1 => SIG119);


b2v_inst89 : ands2
PORT MAP(i1 => b7,
		 i2 => a0,
		 o1 => SIG116);


b2v_inst9 : fa_inv1
PORT MAP(b => SIG166,
		 a => SIG167,
		 ci => SIG168,
		 co => SIG120,
		 s => SIG115);


END bdf_type;

---VHDL CODE FOR fa_opt1
LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY fa_opt1 IS 
	PORT
	(
		bf :  IN  STD_LOGIC;
		af :  IN  STD_LOGIC;
		c1 :  IN  STD_LOGIC;
		sf :  OUT  STD_LOGIC;
		cf :  OUT  STD_LOGIC
	);
END fa_opt1;

ARCHITECTURE bdf_type OF fa_opt1 IS 

COMPONENT ors2
	PORT(i1 : IN STD_LOGIC;
		 i2 : IN STD_LOGIC;
		 o1 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT xnorvhdl2
	PORT(i1 : IN STD_LOGIC;
		 i2 : IN STD_LOGIC;
		 o1 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT nands2
	PORT(i1 : IN STD_LOGIC;
		 i2 : IN STD_LOGIC;
		 o1 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SIGFAOPT10 :  STD_LOGIC;
SIGNAL	SIGFAOPT16 :  STD_LOGIC;
SIGNAL	SIGFAOPT12 :  STD_LOGIC;
SIGNAL	SIGFAOPT17 :  STD_LOGIC;


BEGIN 



b2v_inst : ors2
PORT MAP(i1 => bf,
		 i2 => af,
		 o1 => SIGFAOPT16);


b2v_inst1 : xnorvhdl2
PORT MAP(i1 => c1,
		 i2 => SIGFAOPT10,
		 o1 => sf);


b2v_inst5 : nands2
PORT MAP(i1 => bf,
		 i2 => af,
		 o1 => SIGFAOPT17);


b2v_inst6 : nands2
PORT MAP(i1 => c1,
		 i2 => SIGFAOPT16,
		 o1 => SIGFAOPT12);


b2v_inst7 : nands2
PORT MAP(i1 => SIGFAOPT12,
		 i2 => SIGFAOPT17,
		 o1 => cf);


b2v_inst8 : nands2
PORT MAP(i1 => SIGFAOPT16,
		 i2 => SIGFAOPT17,
		 o1 => SIGFAOPT10);


END bdf_type;

--VHDL CODE FOR fa_inv1
LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY fa_inv1 IS 
	PORT
	(
		ci :  IN  STD_LOGIC;
		b :  IN  STD_LOGIC;
		a :  IN  STD_LOGIC;
		co :  OUT  STD_LOGIC;
		s :  OUT  STD_LOGIC
	);
END fa_inv1;

ARCHITECTURE bdf_type OF fa_inv1 IS 

COMPONENT nors2
	PORT(i1 : IN STD_LOGIC;
		 i2 : IN STD_LOGIC;
		 o1 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT ands2
	PORT(i1 : IN STD_LOGIC;
		 i2 : IN STD_LOGIC;
		 o1 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SIGFAINV19 :  STD_LOGIC;
SIGNAL	SIGFAINV110 :  STD_LOGIC;
SIGNAL	SIGFAINV111 :  STD_LOGIC;
SIGNAL	SIGFAINV14 :  STD_LOGIC;
SIGNAL	SIGFAINV15 :  STD_LOGIC;
SIGNAL	SIGFAINV18 :  STD_LOGIC;


BEGIN 



b2v_inst : nors2
PORT MAP(i1 => b,
		 i2 => a,
		 o1 => SIGFAINV110);


b2v_inst1 : ands2
PORT MAP(i1 => b,
		 i2 => a,
		 o1 => SIGFAINV19);


b2v_inst2 : nors2
PORT MAP(i1 => SIGFAINV19,
		 i2 => SIGFAINV110,
		 o1 => SIGFAINV111);


b2v_inst3 : nors2
PORT MAP(i1 => SIGFAINV111,
		 i2 => ci,
		 o1 => SIGFAINV15);


b2v_inst4 : ands2
PORT MAP(i1 => SIGFAINV111,
		 i2 => ci,
		 o1 => SIGFAINV14);


b2v_inst5 : nors2
PORT MAP(i1 => SIGFAINV14,
		 i2 => SIGFAINV15,
		 o1 => s);


b2v_inst6 : nors2
PORT MAP(i1 => SIGFAINV19,
		 i2 => ci,
		 o1 => SIGFAINV18);


b2v_inst7 : nors2
PORT MAP(i1 => SIGFAINV110,
		 i2 => SIGFAINV18,
		 o1 => co);


END bdf_type;
--VHDL CODE FOR fainv
LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY fa_inv IS 
	PORT
	(
		ci :  IN  STD_LOGIC;
		b :  IN  STD_LOGIC;
		a :  IN  STD_LOGIC;
		co :  OUT  STD_LOGIC;
		s :  OUT  STD_LOGIC
	);
END fa_inv;

ARCHITECTURE bdf_type OF fa_inv IS 

COMPONENT nors2
	PORT(i1 : IN STD_LOGIC;
		 i2 : IN STD_LOGIC;
		 o1 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT ands2
	PORT(i1 : IN STD_LOGIC;
		 i2 : IN STD_LOGIC;
		 o1 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT ors2
	PORT(i1 : IN STD_LOGIC;
		 i2 : IN STD_LOGIC;
		 o1 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT nands2
	PORT(i1 : IN STD_LOGIC;
		 i2 : IN STD_LOGIC;
		 o1 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SIGFAIN9 :  STD_LOGIC;
SIGNAL	SIGFAIN1 :  STD_LOGIC;
SIGNAL	SIGFAIN10 :  STD_LOGIC;
SIGNAL	SIGFAIN4 :  STD_LOGIC;
SIGNAL	SIGFAIN5 :  STD_LOGIC;
SIGNAL	SIGFAIN11 :  STD_LOGIC;


BEGIN 



b2v_inst : nors2
PORT MAP(i1 => b,
		 i2 => a,
		 o1 => SIGFAIN9);


b2v_inst1 : ands2
PORT MAP(i1 => b,
		 i2 => a,
		 o1 => SIGFAIN11);


b2v_inst10 : ors2
PORT MAP(i1 => SIGFAIN9,
		 i2 => SIGFAIN1,
		 o1 => co);


b2v_inst11 : ors2
PORT MAP(i1 => SIGFAIN10,
		 i2 => ci,
		 o1 => SIGFAIN5);


b2v_inst13 : nands2
PORT MAP(i1 => SIGFAIN10,
		 i2 => ci,
		 o1 => SIGFAIN4);


b2v_inst14 : nands2
PORT MAP(i1 => SIGFAIN4,
		 i2 => SIGFAIN5,
		 o1 => s);


b2v_inst2 : nors2
PORT MAP(i1 => SIGFAIN11,
		 i2 => SIGFAIN9,
		 o1 => SIGFAIN10);


b2v_inst6 : nors2
PORT MAP(i1 => SIGFAIN11,
		 i2 => ci,
		 o1 => SIGFAIN1);


END bdf_type;



--VHDL CODE FOR hainvin1
LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY hainvin1 IS 
	PORT
	(
		ahc :  IN  STD_LOGIC;
		bhc :  IN  STD_LOGIC;
		sh :  OUT  STD_LOGIC;
		hc :  OUT  STD_LOGIC
	);
END hainvin1;

ARCHITECTURE bdf_type OF hainvin1 IS 

COMPONENT nands2
	PORT(i1 : IN STD_LOGIC;
		 i2 : IN STD_LOGIC;
		 o1 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT ors2
	PORT(i1 : IN STD_LOGIC;
		 i2 : IN STD_LOGIC;
		 o1 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SIGHAINV0 :  STD_LOGIC;
SIGNAL	SIGHAINV1 :  STD_LOGIC;


BEGIN 
hc <= SIGHAINV1;



b2v_inst3 : nands2
PORT MAP(i1 => bhc,
		 i2 => ahc,
		 o1 => SIGHAINV0);


b2v_inst4 : ors2
PORT MAP(i1 => bhc,
		 i2 => ahc,
		 o1 => SIGHAINV1);


b2v_inst5 : nands2
PORT MAP(i1 => SIGHAINV0,
		 i2 => SIGHAINV1,
		 o1 => sh);


END bdf_type;


==VHDL CODE FOR haxor1
LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY haxor1 IS 
	PORT
	(
		bh :  IN  STD_LOGIC;
		ah :  IN  STD_LOGIC;
		sh :  OUT  STD_LOGIC;
		hc :  OUT  STD_LOGIC
	);
END haxor1;

ARCHITECTURE bdf_type OF haxor1 IS 

COMPONENT ands2
	PORT(i1 : IN STD_LOGIC;
		 i2 : IN STD_LOGIC;
		 o1 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT nors2
	PORT(i1 : IN STD_LOGIC;
		 i2 : IN STD_LOGIC;
		 o1 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SIGHXOR10 :  STD_LOGIC;
SIGNAL	SIGHXOR11 :  STD_LOGIC;


BEGIN 
hc <= SIGHXOR11;



b2v_inst : ands2
PORT MAP(i1 => bh,
		 i2 => ah,
		 o1 => SIGHXOR11);


b2v_inst2 : nors2
PORT MAP(i1 => bh,
		 i2 => ah,
		 o1 => SIGHXOR10);


b2v_inst3 : nors2
PORT MAP(i1 => SIGHXOR10,
		 i2 => SIGHXOR11,
		 o1 => sh);


END bdf_type;

