uint64_t sub_1EA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1EA0();
  *a1 = result;
  return result;
}

uint64_t EnvironmentValues.reactivePreferencesManager.getter()
{
  sub_1F3C();
  sub_50F20();
  return v1;
}

unint64_t sub_1F3C()
{
  v2 = qword_64CF0[0];
  if (!qword_64CF0[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_64CF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1FB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v10 = a2;
  v8[1] = a1;
  v13 = sub_50F10();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v9 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v14 = v8 - v9;
  (*(v11 + 16))(v8 - v9);
  v2 = EnvironmentValues.reactivePreferencesManager.getter();
  v3 = v11;
  v4 = v13;
  v5 = v2;
  v6 = v14;
  *v10 = v5;
  return (*(v3 + 8))(v6, v4);
}

uint64_t EnvironmentValues.reactivePreferencesManager.setter(uint64_t a1)
{

  sub_1F3C();
  sub_50F30();
}

void (*EnvironmentValues.reactivePreferencesManager.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = EnvironmentValues.reactivePreferencesManager.getter();
  return sub_21B8;
}

void sub_21B8(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;

    EnvironmentValues.reactivePreferencesManager.setter(v2);
    sub_2224(a1);
  }

  else
  {
    EnvironmentValues.reactivePreferencesManager.setter(*a1);
  }
}

void *sub_2264(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_229C(void *a1)
{

  sub_51130();

  return v2;
}

uint64_t sub_232C()
{
  v4 = *v0;
  sub_23A4(&v4, &v3);
  sub_23FC(&qword_64490, &qword_51CB0);
  sub_51140();
  sub_2468(&v4);
  return v2;
}

void *sub_23A4(uint64_t *a1, void *a2)
{
  v4 = *a1;

  *a2 = v4;
  v6 = a1[1];

  result = a2;
  a2[1] = v6;
  return result;
}

uint64_t sub_23FC(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v5;
}

uint64_t sub_24A0(uint64_t a1)
{
  v6 = *v1;
  sub_23A4(&v6, &v5);
  sub_23A4(&v6, &v4);
  v3 = v6;

  sub_23FC(&qword_64490, &qword_51CB0);
  sub_51150();
  sub_2468(&v3);
  sub_2468(&v6);
}

uint64_t sub_254C()
{
  v4 = *v0;
  sub_23A4(&v4, &v3);
  sub_23FC(&qword_64490, &qword_51CB0);
  sub_51160();
  sub_2468(&v4);
  return v2;
}

uint64_t sub_25DC()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_261C(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_2684(uint64_t a1)
{

  type metadata accessor for ReactiveMobilePreferencesManager(0);
  sub_51130();

  return v2;
}

uint64_t sub_26FC()
{
  v4 = *(v0 + 16);
  sub_2774(&v4, &v3);
  sub_23FC(&qword_64498, &qword_51CB8);
  sub_51140();
  sub_27CC(&v4);
  return v2;
}

void *sub_2774(void *a1, void *a2)
{
  v4 = *a1;

  *a2 = v4;
  v6 = a1[1];

  result = a2;
  a2[1] = v6;
  return result;
}

uint64_t sub_2804(uint64_t a1)
{
  v6 = *(v1 + 16);
  sub_2774(&v6, &v5);
  sub_2774(&v6, &v4);
  v3 = v6;

  sub_23FC(&qword_64498, &qword_51CB8);
  sub_51150();
  sub_27CC(&v3);
  sub_27CC(&v6);
}

uint64_t sub_28B0()
{
  v4 = *(v0 + 16);
  sub_2774(&v4, &v3);
  sub_23FC(&qword_64498, &qword_51CB8);
  sub_51160();
  sub_27CC(&v4);
  return v2;
}

uint64_t sub_2940()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_2980(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_29E8(void *a1)
{

  sub_51130();

  return v2;
}

uint64_t sub_2A78()
{
  v4 = *(v0 + 32);
  sub_2AF0(&v4, &v3);
  sub_23FC(&qword_644A0, &qword_51CC0);
  sub_51140();
  sub_2B48(&v4);
  return v2;
}

void *sub_2AF0(void *a1, void *a2)
{
  v4 = *a1;

  *a2 = v4;
  v6 = a1[1];

  result = a2;
  a2[1] = v6;
  return result;
}

uint64_t sub_2B80(uint64_t a1)
{
  v6 = *(v1 + 32);
  sub_2AF0(&v6, &v5);
  sub_2AF0(&v6, &v4);
  v3 = v6;

  sub_23FC(&qword_644A0, &qword_51CC0);
  sub_51150();
  sub_2B48(&v3);
  sub_2B48(&v6);
}

uint64_t sub_2C2C()
{
  v4 = *(v0 + 32);
  sub_2AF0(&v4, &v3);
  sub_23FC(&qword_644A0, &qword_51CC0);
  sub_51160();
  sub_2B48(&v4);
  return v2;
}

uint64_t sub_2CBC()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t sub_2CFC(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_2D64(void *a1)
{

  sub_51130();

  return v2;
}

uint64_t sub_2DF4()
{
  v4 = *(v0 + 48);
  sub_2E6C(&v4, &v3);
  sub_23FC(&qword_644A8, &qword_51CC8);
  sub_51140();
  sub_2EC4(&v4);
  return v2;
}

void *sub_2E6C(void *a1, void *a2)
{
  v4 = *a1;

  *a2 = v4;
  v6 = a1[1];

  result = a2;
  a2[1] = v6;
  return result;
}

uint64_t sub_2EFC(uint64_t a1)
{
  v6 = *(v1 + 48);
  sub_2E6C(&v6, &v5);
  sub_2E6C(&v6, &v4);
  v3 = v6;

  sub_23FC(&qword_644A8, &qword_51CC8);
  sub_51150();
  sub_2EC4(&v3);
  sub_2EC4(&v6);
}

uint64_t sub_2FA8()
{
  v4 = *(v0 + 48);
  sub_2E6C(&v4, &v3);
  sub_23FC(&qword_644A8, &qword_51CC8);
  sub_51160();
  sub_2EC4(&v4);
  return v2;
}

uint64_t sub_3038()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t sub_3078(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_30E0()
{
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  sub_3168(&v4, v3);
  sub_23FC(&qword_644B0, &qword_51CD0);
  sub_50DF0();
  sub_3200(&v4);
  return v2;
}

uint64_t sub_3168(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  sub_31C0(*a1);
  result = a2;
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_3278()
{
  swift_getKeyPath();
  sub_50E00();
  return v1;
}

uint64_t sub_32B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v10 = a2;
  v8[1] = a1;
  v13 = sub_50F10();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v9 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v14 = v8 - v9;
  (*(v11 + 16))(v8 - v9);
  v2 = sub_50E70();
  v3 = v11;
  v4 = v13;
  v5 = v2;
  v6 = v14;
  *v10 = v5;
  return (*(v3 + 8))(v6, v4);
}

uint64_t sub_33E8()
{
  v2 = *(v0 + 64);
  sub_31C0(v2);
  return v2;
}

uint64_t sub_3428(uint64_t a1, char a2)
{
  sub_31C0(a1);
  v3 = *(v2 + 64);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2 & 1;
  sub_3238(v3);
  return sub_3238(a1);
}

uint64_t sub_348C(uint64_t a1)
{

  sub_50CF0();
  sub_51130();

  return v2;
}

uint64_t sub_3504()
{
  v4 = *(v0 + 80);
  sub_357C(&v4, &v3);
  sub_23FC(&qword_644B8, &qword_51D08);
  sub_51140();
  sub_35D4(&v4);
  return v2;
}

void *sub_357C(void *a1, void *a2)
{
  v4 = *a1;

  *a2 = v4;
  v6 = a1[1];

  result = a2;
  a2[1] = v6;
  return result;
}

uint64_t sub_360C(uint64_t a1)
{
  v6 = *(v1 + 80);
  sub_357C(&v6, &v5);
  sub_357C(&v6, &v4);
  v3 = v6;

  sub_23FC(&qword_644B8, &qword_51D08);
  sub_51150();
  sub_35D4(&v3);
  sub_35D4(&v6);
}

uint64_t sub_36E4()
{
  v4 = *(v0 + 80);
  sub_357C(&v4, &v3);
  sub_23FC(&qword_644B8, &qword_51D08);
  sub_51160();
  sub_35D4(&v4);
  return v2;
}

uint64_t sub_3774()
{
  v2 = *(v0 + 80);

  return v2;
}

uint64_t sub_37B4(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t sub_3870()
{
  v4 = *(v0 + 96);
  sub_38EC(&v4, v3);
  sub_23FC(&qword_644C0, &qword_51D10);
  sub_51140();
  sub_392C(&v4);
  return v2 & 1;
}

uint64_t sub_38EC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 8);

  result = a2;
  *(a2 + 8) = v4;
  return result;
}

void sub_3958(char a1)
{
  v5 = *(v1 + 96);
  sub_38EC(&v5, v4);
  sub_38EC(&v5, v3);
  v2 = v5;
  sub_23FC(&qword_644C0, &qword_51D10);
  sub_51150();
  sub_392C(&v2);
  sub_392C(&v5);
}

uint64_t sub_3A00()
{
  v4 = *(v0 + 96);
  sub_38EC(&v4, v3);
  sub_23FC(&qword_644C0, &qword_51D10);
  sub_51160();
  sub_392C(&v4);
  return v2;
}

uint64_t sub_3A94()
{
  v2 = *(v0 + 96);

  return v2 & 1;
}

uint64_t sub_3AD0(char a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t sub_3B70()
{
  v4 = *(v0 + 112);
  sub_38EC(&v4, v3);
  sub_23FC(&qword_644C0, &qword_51D10);
  sub_51140();
  sub_392C(&v4);
  return v2 & 1;
}

void sub_3BEC(char a1)
{
  v5 = *(v1 + 112);
  sub_38EC(&v5, v4);
  sub_38EC(&v5, v3);
  v2 = v5;
  sub_23FC(&qword_644C0, &qword_51D10);
  sub_51150();
  sub_392C(&v2);
  sub_392C(&v5);
}

uint64_t sub_3C94()
{
  v4 = *(v0 + 112);
  sub_38EC(&v4, v3);
  sub_23FC(&qword_644C0, &qword_51D10);
  sub_51160();
  sub_392C(&v4);
  return v2;
}

uint64_t sub_3D28()
{
  v2 = *(v0 + 112);

  return v2 & 1;
}

uint64_t sub_3D64(char a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
}

uint64_t sub_3E04()
{
  v4 = *(v0 + 128);
  sub_38EC(&v4, v3);
  sub_23FC(&qword_644C0, &qword_51D10);
  sub_51140();
  sub_392C(&v4);
  return v2 & 1;
}

void sub_3E80(char a1)
{
  v5 = *(v1 + 128);
  sub_38EC(&v5, v4);
  sub_38EC(&v5, v3);
  v2 = v5;
  sub_23FC(&qword_644C0, &qword_51D10);
  sub_51150();
  sub_392C(&v2);
  sub_392C(&v5);
}

uint64_t sub_3F28()
{
  v4 = *(v0 + 128);
  sub_38EC(&v4, v3);
  sub_23FC(&qword_644C0, &qword_51D10);
  sub_51160();
  sub_392C(&v4);
  return v2;
}

uint64_t sub_3FBC()
{
  v2 = *(v0 + 128);

  return v2 & 1;
}

uint64_t sub_3FF8(char a1, uint64_t a2)
{

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
}

void *sub_4044@<X0>(void *a1@<X8>)
{
  memset(__b, 0, sizeof(__b));
  swift_getKeyPath();
  sub_50E00();
  __b[8] = v27;
  LOBYTE(__b[9]) = v28 & 1;
  sub_50CF0();
  v1 = sub_50CE0();
  __b[10] = sub_348C(v1);
  __b[11] = v2;
  LOBYTE(__b[12]) = sub_381C(0) & 1;
  __b[13] = v3;
  LOBYTE(__b[14]) = sub_3B1C(0) & 1;
  __b[15] = v4;
  LOBYTE(__b[16]) = sub_3DB0(0) & 1;
  __b[17] = v5;
  sub_50D40();
  sub_50D30();
  sub_23FC(&qword_644C8, &qword_51D18);
  swift_dynamicCast();
  v8 = v26;
  v25 = v26;
  sub_50D70();
  sub_50D30();
  v24 = sub_50D50();
  sub_50C70();
  sub_50D10();
  v23 = sub_50C60();

  v20 = v24;
  sub_51130();
  __b[4] = v21;
  __b[5] = v22;

  v17 = v23;
  sub_51130();
  __b[6] = v18;
  __b[7] = v19;
  sub_50BC0();
  sub_50D20();

  v14 = sub_50B80();
  sub_51130();
  __b[0] = v15;
  __b[1] = v16;
  type metadata accessor for ReactiveMobilePreferencesManager(0);
  v6 = sub_50D00();
  v11 = ReactiveMobilePreferencesManager.__allocating_init(wrapping:)(v6);
  sub_51130();
  __b[2] = v12;
  __b[3] = v13;

  _objc_release(v8);
  memcpy(__dst, __b, sizeof(__dst));
  sub_4354(__dst, v10);
  sub_4530(__b);
  return memcpy(a1, __dst, 0x90uLL);
}

uint64_t sub_4354(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  *(a2 + 8) = v4;
  v5 = a1[2];

  *(a2 + 16) = v5;
  v6 = a1[3];

  *(a2 + 24) = v6;
  v7 = a1[4];

  *(a2 + 32) = v7;
  v8 = a1[5];

  *(a2 + 40) = v8;
  v9 = a1[6];

  *(a2 + 48) = v9;
  v10 = a1[7];

  *(a2 + 56) = v10;
  v11 = a1[8];
  v12 = *(a1 + 72);
  sub_31C0(v11);
  *(a2 + 64) = v11;
  *(a2 + 72) = v12 & 1;
  v13 = a1[10];

  *(a2 + 80) = v13;
  v14 = a1[11];

  *(a2 + 88) = v14;
  *(a2 + 96) = *(a1 + 96);
  v15 = a1[13];

  *(a2 + 104) = v15;
  *(a2 + 112) = *(a1 + 112);
  v17 = a1[15];

  *(a2 + 120) = v17;
  *(a2 + 128) = *(a1 + 128);
  v19 = a1[17];

  result = a2;
  *(a2 + 136) = v19;
  return result;
}

void *sub_4530(void *a1)
{

  sub_3238(a1[8]);

  return a1;
}

uint64_t sub_4600@<X0>(uint64_t a1@<X8>)
{
  v120 = a1;
  v199 = 0;
  v244 = 0;
  v245 = *v1;
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v249 = v1[4];
  v248 = v4;
  v247 = v3;
  v246 = v2;
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v253 = v1[8];
  v252 = v7;
  v251 = v6;
  v250 = v5;
  v265 = v245;
  v269 = v249;
  v268 = v248;
  v267 = v247;
  v266 = v246;
  v273 = v253;
  v272 = v7;
  v271 = v6;
  v270 = v5;
  v121 = (*(*(sub_23FC(&qword_644D0, &qword_51D20) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v122 = &v46 - v121;
  sub_50990();
  __chkstk_darwin(v199);
  v123 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_50960();
  v125 = *(v124 - 8);
  v126 = v125;
  __chkstk_darwin(v199);
  v127 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_50910();
  v129 = *(v128 - 8);
  v130 = v129;
  __chkstk_darwin(v199);
  v131 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_512F0();
  __chkstk_darwin(v199);
  v132 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_50920();
  v134 = *(v133 - 8);
  v135 = v134;
  __chkstk_darwin(v199);
  v136 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_51230();
  v138 = *(v137 - 8);
  v139 = v138;
  __chkstk_darwin(v137 - 8);
  v140 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v141 = sub_23FC(&qword_644D8, &qword_51D28);
  v142 = (*(*(v141 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v199);
  v143 = &v46 - v142;
  v144 = sub_51450();
  v145 = *(v144 - 8);
  v146 = v145;
  __chkstk_darwin(v144 - 8);
  v147 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_23FC(&qword_644E0, &qword_51D30);
  v149 = (*(*(v148 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v148 - 8);
  v150 = &v46 - v149;
  v151 = sub_23FC(&qword_644E8, &qword_51D38);
  v152 = *(v151 - 8);
  v153 = v152;
  v154 = (*(v152 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v151 - 8);
  v198 = &v46 - v154;
  v155 = &v46 - v154;
  v156 = sub_23FC(&qword_644F0, &qword_51D40);
  v157 = (*(*(v156 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v156 - 8);
  v158 = &v46 - v157;
  v159 = sub_23FC(&qword_644F8, &qword_51D48);
  v160 = *(v159 - 8);
  v161 = v160;
  v162 = (*(v160 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v159 - 8);
  v163 = &v46 - v162;
  v164 = sub_23FC(&qword_64500, &qword_51D50);
  v165 = *(v164 - 8);
  v166 = v165;
  v167 = (*(v165 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v164 - 8);
  v168 = &v46 - v167;
  v169 = sub_23FC(&qword_64508, &qword_51D58);
  v170 = *(v169 - 8);
  v171 = v170;
  v172 = (*(v170 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v169 - 8);
  v173 = &v46 - v172;
  v174 = sub_23FC(&qword_64510, &qword_51D60);
  v175 = *(v174 - 8);
  v176 = v175;
  v177 = (*(v175 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v174 - 8);
  v178 = &v46 - v177;
  v179 = sub_23FC(&qword_64518, &qword_51D68);
  v180 = (*(*(v179 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v179 - 8);
  v181 = &v46 - v180;
  v182 = sub_23FC(&qword_64520, &qword_51D70);
  v183 = (*(*(v182 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v182 - 8);
  v184 = &v46 - v183;
  v185 = sub_23FC(&qword_64528, &qword_51D78);
  v186 = *(v185 - 8);
  v187 = v186;
  v188 = (*(v186 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v185 - 8);
  v189 = &v46 - v188;
  v190 = sub_23FC(&qword_64530, &qword_51D80);
  v191 = *(v190 - 8);
  v192 = v191;
  v194 = *(v191 + 64);
  __chkstk_darwin(v190 - 8);
  v196 = (v194 + 15) & 0xFFFFFFFFFFFFFFF0;
  v193 = &v46 - v196;
  __chkstk_darwin(&v46 - v196);
  v195 = &v46 - v196;
  __chkstk_darwin(&v46 - v196);
  v197 = &v46 - v196;
  v244 = &v46 - v196;
  v200 = sub_23FC(&qword_64538, &qword_51D88);
  sub_6298();
  sub_50A50();
  v15 = *(v1 + 8);
  v264 = *(v1 + 72);
  v263 = v15;
  v201 = &v263;
  sub_3168(&v263, &v243);
  v242 = v264;
  v241 = v263;
  sub_23FC(&qword_644B0, &qword_51CD0);
  sub_50DF0();
  v203 = v240;
  v202 = v240;
  sub_3200(v201);
  if (v203)
  {
    v118 = v202;
    v117 = v202;
    sub_50B00();

    v16 = sub_50970();
    (*(*(v16 - 8) + 56))(v150, 0, 1);
  }

  else
  {
    v43 = sub_50970();
    (*(*(v43 - 8) + 56))(v150, 1);
  }

  sub_4354(v119, &v239);
  v57 = 160;
  v58 = 7;
  v17 = swift_allocObject();
  v18 = v119;
  v54 = v17;
  v17[1] = *v119;
  v19 = *(v18 + 1);
  v20 = *(v18 + 2);
  v21 = *(v18 + 3);
  v17[5] = *(v18 + 4);
  v17[4] = v21;
  v17[3] = v20;
  v17[2] = v19;
  v22 = *(v18 + 5);
  v23 = *(v18 + 6);
  v24 = *(v18 + 7);
  v17[9] = *(v18 + 8);
  v17[8] = v24;
  v17[7] = v23;
  v17[6] = v22;
  v52 = sub_7C5C();
  v53 = sub_7CE4();
  sub_7C34(v151, v148);
  sub_510E0();
  (*(v146 + 8))(v147, v144);

  sub_7DFC(v150);
  (*(v153 + 8))(v155, v151);
  v262 = *(v119 + 5);
  v55 = &v262;
  sub_357C(&v262, &v238);
  v237 = v262;
  v91 = sub_23FC(&qword_644B8, &qword_51D08);
  sub_51140();
  v56 = v236[18];
  sub_35D4(v55);
  sub_50CC0();

  sub_4354(v119, v236);
  v25 = swift_allocObject();
  v26 = v119;
  v59 = v25;
  v25[1] = *v119;
  v27 = *(v26 + 1);
  v28 = *(v26 + 2);
  v29 = *(v26 + 3);
  v25[5] = *(v26 + 4);
  v25[4] = v29;
  v25[3] = v28;
  v25[2] = v27;
  v30 = *(v26 + 5);
  v31 = *(v26 + 6);
  v32 = *(v26 + 7);
  v25[9] = *(v26 + 8);
  v25[8] = v32;
  v25[7] = v31;
  v25[6] = v30;
  v61 = sub_8EFC();
  v62 = sub_902C();
  sub_8EE0();
  sub_51120();

  sub_9144(v143);
  sub_91EC(v158);
  v261 = *(v119 + 6);
  v60 = &v261;
  sub_38EC(&v261, &v235);
  v234 = v261;
  v80 = sub_23FC(&qword_644C0, &qword_51D10);
  sub_51160();
  v67 = v232[18];
  v68 = v232[19];
  v64 = v233;
  sub_392C(v60);
  sub_4354(v119, v232);
  v66 = &v46;
  v82 = 24;
  __chkstk_darwin(&v46);
  v65 = &v44;
  v70 = sub_23FC(&qword_64588, &qword_533C0);
  v231[4] = v156;
  v231[5] = v141;
  v231[6] = v61;
  v231[7] = v62;
  v116 = 1;
  v98 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63 = sub_6320(&qword_64590, &qword_51DB0);
  v33 = sub_9840();
  v231[2] = v63;
  v231[3] = v33;
  v74 = &opaque type descriptor for <<opaque return type of View.withSUUIEnvironmentContext(manager:reactivePlatform:reactiveAnalyticsReporter:)>>;
  v72 = swift_getOpaqueTypeConformance2();
  v45 = v72;
  sub_510D0();
  sub_4530(v119);

  (*(v161 + 8))(v163, v159);
  v260 = *(v119 + 7);
  v69 = &v260;
  sub_38EC(&v260, v231);
  v230 = v260;
  sub_51160();
  v78 = v228[18];
  v79 = v228[19];
  v75 = v229;
  sub_392C(v69);
  sub_4354(v119, v228);
  v77 = &v46;
  __chkstk_darwin(&v46);
  v76 = &v44;
  v83 = sub_23FC(&qword_645B8, &qword_51DC0);
  v227[4] = v159;
  v227[5] = v70;
  v227[6] = OpaqueTypeConformance2;
  v227[7] = v72;
  v97 = &opaque type descriptor for <<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>;
  v84 = swift_getOpaqueTypeConformance2();
  v73 = sub_6320(&qword_645C0, &qword_51DC8);
  v34 = sub_9F68();
  v227[2] = v73;
  v227[3] = v34;
  v85 = swift_getOpaqueTypeConformance2();
  v45 = v85;
  sub_510D0();
  sub_4530(v119);

  (*(v166 + 8))(v168, v164);
  v259 = *(v119 + 8);
  v81 = &v259;
  sub_38EC(&v259, v227);
  v226 = v259;
  sub_51160();
  v89 = v224[18];
  v90 = v224[19];
  v86 = v225;
  sub_392C(v81);
  sub_4354(v119, v224);
  v88 = &v46;
  __chkstk_darwin(&v46);
  v87 = &v44;
  v94 = sub_23FC(&qword_645D8, &qword_51DD0);
  v223[2] = v164;
  v223[3] = v83;
  v223[4] = v84;
  v223[5] = v85;
  v95 = swift_getOpaqueTypeConformance2();
  v96 = sub_A9B0();
  v45 = v96;
  sub_510D0();
  sub_4530(v119);

  (*(v171 + 8))(v173, v169);
  KeyPath = swift_getKeyPath();
  v258 = *(v119 + 5);
  v92 = &v258;
  sub_357C(&v258, v223);
  v222 = v258;
  sub_51140();
  v93 = v221[6];
  sub_35D4(v92);
  sub_50CC0();

  v221[2] = v169;
  v221[3] = v94;
  v221[4] = v95;
  v221[5] = v96;
  swift_getOpaqueTypeConformance2();
  sub_51090();
  sub_9144(v143);

  (*(v176 + 8))(v178, v174);
  v103 = swift_getKeyPath();
  v257 = *(v119 + 1);
  v100 = &v257;
  sub_2774(&v257, v221);
  v220 = v257;
  sub_23FC(&qword_64498, &qword_51CB8);
  sub_51140();
  v101 = v219[1];
  sub_27CC(v100);
  v219[0] = v101;
  sub_B710();
  v102 = v219;
  sub_51090();
  sub_2224(v102);

  sub_BA9C(v181);
  v256 = *(v119 + 2);
  v104 = &v256;
  sub_2AF0(&v256, &v218);
  v217 = v256;
  sub_23FC(&qword_644A0, &qword_51CC0);
  sub_51140();
  v110 = v216[2];
  sub_2B48(v104);
  v255 = *v119;
  v105 = &v255;
  sub_23A4(&v255, v216);
  v215 = v255;
  sub_23FC(&qword_64490, &qword_51CB0);
  sub_51140();
  v109 = v214[2];
  sub_2468(v105);
  v254 = *(v119 + 3);
  v106 = &v254;
  sub_2E6C(&v254, v214);
  v213 = v254;
  sub_23FC(&qword_644A8, &qword_51CC8);
  sub_51140();
  v108 = v212;
  sub_2EC4(v106);
  v107 = sub_BBF0();
  sub_51000();

  sub_BC98(v184);
  v35 = sub_51350("com.apple.graphic-icon.software-update", 0x26uLL, v116);
  v36 = v139;
  v37 = v35;
  v38 = v140;
  *v140 = v37;
  v38[1] = v39;
  (*(v36 + 104))();
  sub_51350("Software Update", 0xFuLL, v116);
  sub_512E0();
  v111 = *sub_411D0();
  v40 = v111;
  v112 = [v111 bundleURL];
  sub_50940();
  (*(v126 + 32))(v131, v127, v124);

  (*(v130 + 104))(v131, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v128);
  sub_BE24();
  v113 = 0;
  v208 = 0;
  v209 = 0;
  v210 = 0;
  v211 = v116;
  sub_50930();

  v114 = sub_51650();
  sub_51350("settings-navigation://com.apple.Settings.General/SOFTWARE_UPDATE_LINK", 0x45uLL, v116);
  v115 = v41;
  sub_50950();

  if ((*(v126 + 48))(v122, v116, v124) == 1)
  {
    sub_51610("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "SoftwareUpdateUIMobileSettingsPlugin/MobileSoftwareUpdateView.swift", 67, 2, 128, 0);
    __break(1u);
  }

  v206 = v182;
  v207 = v107;
  v48 = 1;
  v47 = swift_getOpaqueTypeConformance2();
  sub_51050();
  (*(v126 + 8))(v122, v124);

  (*(v135 + 8))(v136, v133);
  (*(v139 + 8))(v140, v137);
  (*(v187 + 8))(v189, v185);
  v204 = v185;
  v205 = v47;
  v49 = swift_getOpaqueTypeConformance2();
  sub_6394(v195, v190, v197);
  v51 = *(v192 + 8);
  v50 = v192 + 8;
  v51(v195, v190);
  (*(v192 + 16))(v193, v197, v190);
  sub_99E8(v193, v190, v120);
  v51(v193, v190);
  return (v51)(v197, v190);
}

uint64_t *sub_6018@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v32 = 0;
  v23 = __b;
  v8 = 80;
  memset(__b, 0, sizeof(__b));
  v19 = sub_50C50();
  v10 = *(v19 - 8);
  v11 = v19 - 8;
  v4 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v17 = &v3 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v3 - v4);
  v22 = &v3 - v5;
  v32 = &v3 - v5;
  v6 = v30;
  AutomaticUpdatesNavigationLink.init()(v30);
  v7 = __dst;
  memcpy(__dst, v6, v8);
  v9 = v29;
  memcpy(v29, v7, v8);
  v13 = sub_18228();
  v12 = &type metadata for AutomaticUpdatesNavigationLink;
  sub_6394(v9, &type metadata for AutomaticUpdatesNavigationLink, v23);
  sub_182A0(v9);
  sub_50C40();
  v14 = sub_182FC();
  sub_6394(v17, v19, v22);
  v21 = *(v10 + 8);
  v20 = v10 + 8;
  v21(v17, v19);
  v18 = v27;
  sub_1837C(v23, v27);
  v16 = v28;
  v28[0] = v18;
  (*(v10 + 16))(v17, v22, v19);
  v28[1] = v17;
  v26[0] = v12;
  v26[1] = v19;
  v24 = v13;
  v25 = v14;
  sub_63F8(v16, 2uLL, v26, v15);
  v21(v17, v19);
  sub_182A0(v18);
  v21(v22, v19);
  result = v23;
  sub_182A0(v23);
  return result;
}

unint64_t sub_6298()
{
  v2 = qword_64540;
  if (!qword_64540)
  {
    sub_6320(&qword_64538, &qword_51D88);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64540);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_6320(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v5;
}

uint64_t *sub_63F8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v25 = a2;
  v26 = a1;
  v27 = a4;
  v28 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (a2 == 1)
  {
    TupleTypeMetadata = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    v23 = 0;
  }

  else
  {
    v19 = &v9;
    __chkstk_darwin(&v9);
    v20 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; ; i = v5 + 1)
    {
      v18 = i;
      if (i >= v25)
      {
        break;
      }

      v5 = v18;
      *&v20[8 * v18] = *((v24 & 0xFFFFFFFFFFFFFFFELL) + 8 * v18);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v23 = v6;
  }

  v14 = TupleTypeMetadata;
  v16 = *(*(TupleTypeMetadata - 8) + 64);
  v15 = &v9;
  __chkstk_darwin(&v9);
  v17 = &v9 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {
    for (j = 0; ; j = v9)
    {
      v11 = j;
      v12 = *((v24 & 0xFFFFFFFFFFFFFFFELL) + 8 * j);
      v10 = v25 == 1 ? 0 : *(v14 + 16 * v11 + 32);
      (*(*(v12 - 8) + 16))(&v17[v10], *(v26 + 8 * v11));
      v9 = v11 + 1;
      if (v11 + 1 == v25)
      {
        break;
      }
    }
  }

  sub_511F0();
  return v15;
}

uint64_t sub_6654(uint64_t a1)
{
  v1[12] = a1;
  v1[8] = v1;
  v1[9] = 0;
  v1[11] = 0;
  v1[9] = a1;
  sub_51410();
  v1[13] = sub_51400();
  v1[14] = sub_513F0();
  v1[15] = v2;

  return _swift_task_switch(sub_6714);
}

uint64_t sub_6714()
{
  v1 = *(v0 + 96);
  *(v0 + 64) = v0;
  *(v0 + 16) = *(v1 + 64);
  *(v0 + 24) = *(v1 + 72);
  sub_3168((v0 + 16), v0 + 32);
  *(v0 + 48) = *(v0 + 16);
  *(v0 + 56) = *(v0 + 24);
  sub_23FC(&qword_644B0, &qword_51CD0);
  sub_50DF0();
  v6 = *(v0 + 80);
  *(v0 + 128) = v6;
  sub_3200((v0 + 16));
  if (v6)
  {
    v5[11] = v6;
    v2 = swift_task_alloc();
    v5[17] = v2;
    *v2 = v5[8];
    v2[1] = sub_68C4;

    return sub_6E24(v6);
  }

  else
  {

    v4 = *(v5[8] + 8);

    return v4();
  }
}

uint64_t sub_68C4()
{
  v4 = *v1;
  *(v4 + 64) = *v1;
  *(v4 + 144) = v0;

  if (v0)
  {
    v2 = sub_6AE8;
  }

  else
  {
    v2 = sub_6A3C;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_6A3C()
{
  *(v0 + 64) = v0;

  v1 = *(*(v0 + 64) + 8);

  return v1();
}

uint64_t sub_6AE8()
{
  *(v0 + 64) = v0;

  v1 = *(*(v0 + 64) + 8);

  return v1();
}

uint64_t sub_6B9C()
{

  sub_3238(*(v0 + 80));

  return swift_deallocObject();
}

uint64_t sub_6C4C()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_6CFC;

  return sub_6654(v0 + 16);
}

uint64_t sub_6CFC()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_6E24(uint64_t a1)
{
  v2[42] = v1;
  v2[41] = a1;
  v2[38] = v2;
  v2[39] = 0;
  v2[40] = 0;
  sub_23FC(&qword_64640, &qword_52260);
  v2[43] = swift_task_alloc();
  v3 = sub_50DB0();
  v2[44] = v3;
  v2[45] = *(v3 - 8);
  v2[46] = swift_task_alloc();
  v2[39] = a1;
  v2[40] = v1;
  sub_51410();
  v2[47] = sub_51400();
  sub_513F0();

  return _swift_task_switch(sub_6FAC);
}

uint64_t sub_6FAC()
{
  v41 = v0;
  __src = v0[42];
  v22 = v0[41];
  v0[38] = v0;
  sub_50D90();
  sub_4354(__src, (v0 + 2));
  v18 = swift_allocObject();
  memcpy((v18 + 16), __src, 0x90uLL);

  v34 = sub_50DA0();
  v35 = sub_51480();
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_FEFC;
  *(v19 + 24) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_145F8;
  *(v20 + 24) = v19;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_14644;
  *(v26 + 24) = v20;
  v27 = swift_allocObject();
  *(v27 + 16) = 32;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_FF04;
  *(v21 + 24) = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_14744;
  *(v29 + 24) = v21;
  v30 = swift_allocObject();
  *(v30 + 16) = 32;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_FF58;
  *(v23 + 24) = v22;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_14844;
  *(v32 + 24) = v23;
  sub_23FC(&qword_64648, &qword_51E60);
  sub_51650();
  v33 = v1;

  *v33 = sub_1457C;
  v33[1] = v24;

  v33[2] = sub_145B0;
  v33[3] = v25;

  v33[4] = sub_14690;
  v33[5] = v26;

  v33[6] = sub_146C8;
  v33[7] = v27;

  v33[8] = sub_146FC;
  v33[9] = v28;

  v33[10] = sub_14790;
  v33[11] = v29;

  v33[12] = sub_147C8;
  v33[13] = v30;

  v33[14] = sub_147FC;
  v33[15] = v31;

  v33[16] = sub_14890;
  v33[17] = v32;
  sub_1489C();

  if (os_log_type_enabled(v34, v35))
  {
    buf = sub_514F0();
    v12 = sub_23FC(&qword_64650, &unk_53930);
    v14 = sub_121D4(0, v12, v12);
    v15 = sub_121D4(3, &type metadata for Any + 8, &type metadata for Any + 8);
    v36 = buf;
    v37 = v14;
    v38 = v15;
    sub_12228(2, &v36);
    sub_12228(3, &v36);
    v39 = sub_1457C;
    v40 = v24;
    sub_1223C(&v39, &v36, &v37, &v38);
    v39 = sub_145B0;
    v40 = v25;
    sub_1223C(&v39, &v36, &v37, &v38);
    v39 = sub_14690;
    v40 = v26;
    sub_1223C(&v39, &v36, &v37, &v38);
    v39 = sub_146C8;
    v40 = v27;
    sub_1223C(&v39, &v36, &v37, &v38);
    v39 = sub_146FC;
    v40 = v28;
    sub_1223C(&v39, &v36, &v37, &v38);
    v39 = sub_14790;
    v40 = v29;
    sub_1223C(&v39, &v36, &v37, &v38);
    v39 = sub_147C8;
    v40 = v30;
    sub_1223C(&v39, &v36, &v37, &v38);
    v39 = sub_147FC;
    v40 = v31;
    sub_1223C(&v39, &v36, &v37, &v38);
    v39 = sub_14890;
    v40 = v32;
    sub_1223C(&v39, &v36, &v37, &v38);
    _os_log_impl(&dword_0, v34, v35, "%s.%s: Resolving deep link request: %s", buf, 0x20u);
    sub_12288(v14, 0, v12);
    sub_12288(v15, 3, &type metadata for Any + 8);
    sub_514D0();
  }

  else
  {
  }

  v10 = v16[46];
  v6 = v16[44];
  v11 = v16[43];
  v7 = v16[42];
  v8 = v16[41];
  v5 = v16[45];
  _objc_release(v34);
  (*(v5 + 8))(v10, v6);
  sub_51420();
  v2 = sub_51450();
  (*(*(v2 - 8) + 56))(v11, 0, 1);
  sub_4354(v7, (v16 + 20));

  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  memcpy(v9 + 4, v7, 0x90uLL);
  v9[22] = v8;
  sub_11A30(0, 0, v11, &unk_51E70, v9, &type metadata for () + 8);
  sub_14BA4(v11);

  v3 = *(v16[38] + 8);

  return v3();
}

unint64_t sub_7C5C()
{
  v2 = qword_64548;
  if (!qword_64548)
  {
    sub_6320(&qword_644E8, &qword_51D38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64548);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_7CE4()
{
  v2 = qword_64550;
  if (!qword_64550)
  {
    sub_6320(&qword_644E0, &qword_51D30);
    sub_7D7C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64550);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_7D7C()
{
  v2 = qword_64558;
  if (!qword_64558)
  {
    sub_50970();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64558);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_7DFC(uint64_t a1)
{
  v3 = sub_50970();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_7EA4(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v78 = v101;
  v79 = a3;
  v80 = a2;
  v88 = a1;
  v90 = 0;
  memset(&v108[1], 0, 48);
  v65 = 0;
  v105 = 0;
  v104 = 0;
  v66 = sub_50DB0();
  v67 = *(v66 - 8);
  v68 = v67;
  __chkstk_darwin(0);
  v69 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_50A70();
  v71 = *(v70 - 8);
  v72 = v71;
  __chkstk_darwin(v70 - 8);
  v73 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v78 + 19) = v73;
  v74 = *(*(sub_23FC(&qword_644D8, &qword_51D28) - 8) + 64);
  v5 = __chkstk_darwin(v90);
  v76 = (v74 + 15) & 0xFFFFFFFFFFFFFFF0;
  v75 = &v26 - v76;
  __chkstk_darwin(v5);
  v91 = &v26 - v76;
  v77 = &v26 - v76;
  v81 = sub_50C20();
  v82 = *(v81 - 8);
  v83 = v82;
  v85 = *(v82 + 64);
  v6 = __chkstk_darwin(v80);
  v87 = (v85 + 15) & 0xFFFFFFFFFFFFFFF0;
  v84 = &v26 - v87;
  v7 = __chkstk_darwin(v6);
  v86 = &v26 - v87;
  *(v8 + 144) = &v26 - v87;
  v9 = __chkstk_darwin(v7);
  v89 = &v26 - v87;
  v10[17] = v88;
  v10[16] = v9;
  v10[15] = v11;
  sub_174D4(v9, v12);
  v92 = sub_50B30();
  v93 = *(v92 - 8);
  if ((*(v93 + 48))(v91, 1))
  {
    goto LABEL_24;
  }

  sub_174D4(v77, v75);
  v64 = (*(v93 + 88))(v75, v92);
  if (v64 == enum case for DeepLinkResponse.navigate(_:))
  {
    (*(v93 + 96))(v75, v92);
    v13 = sub_23FC(&qword_646A8, &unk_52178);
    v63 = *&v75[*(v13 + 48)];
    (*(v83 + 32))(v86);
    (*(v83 + 16))(v89, v86, v81);
    (*(v83 + 8))(v86, v81);

    sub_9144(v77);
    goto LABEL_8;
  }

  if (v64 != enum case for DeepLinkResponse.perform(_:))
  {
    if (v64 != enum case for DeepLinkResponse.navigateAndPerform(_:))
    {
      (*(v93 + 8))(v75, v92);
LABEL_24:
      sub_9144(v77);
      return v65;
    }

    (*(v93 + 96))(v75, v92);
    v14 = sub_23FC(&qword_64660, ":)");
    v61 = &v75[*(v14 + 48)];
    v62 = *&v75[*(v14 + 64)];
    *(v78 + 18) = v86;
    (*(v83 + 32))(v86, v75, v81);
    (*(v83 + 16))(v89, v86, v81);
    (*(v83 + 8))(v86, v81);

    (*(v72 + 8))(v61, v70);
    sub_9144(v77);
LABEL_8:
    v15 = v84;
    v16 = v83;
    *(v78 + 7) = v89;
    (*(v16 + 16))(v15);
    v60 = (*(v83 + 88))(v84, v81);
    if (v60 == enum case for DeepLinkDestination.automaticUpdates(_:))
    {
      *(v78 + 10) = v79[6];
      v59 = v109;
      sub_38EC(v109, v97);
      sub_38EC(v59, &v96);
      v95 = *(v78 + 10);
      v94 = 1;
      sub_23FC(&qword_644C0, &qword_51D10);
      v58 = &v95;
      sub_51150();
      sub_392C(v58);
      sub_392C(v59);
    }

    else if (v60 == enum case for DeepLinkDestination.betaUpdates(_:))
    {
      *(v78 + 11) = v79[7];
      v57 = v110;
      sub_38EC(v110, v100);
      sub_38EC(v57, &v99);
      v98 = *(v78 + 11);
      v97[23] = 1;
      sub_23FC(&qword_644C0, &qword_51D10);
      v56 = &v98;
      sub_51150();
      sub_392C(v56);
      sub_392C(v57);
    }

    else if (v60 == enum case for DeepLinkDestination.alsoAvailable(_:))
    {
      *(v78 + 12) = v79[8];
      v55 = v111;
      sub_38EC(v111, v103);
      sub_38EC(v55, v102);
      *v78 = *(v78 + 12);
      v100[23] = 1;
      sub_23FC(&qword_644C0, &qword_51D10);
      v54 = v101;
      sub_51150();
      sub_392C(v54);
      sub_392C(v55);
    }

    else
    {
      sub_51660();
      __break(1u);
    }

    (*(v83 + 8))(v89, v81);
    return v65;
  }

  (*(v93 + 96))(v75, v92);
  v17 = sub_23FC(&qword_64690, &qword_52168);
  v51 = *&v75[*(v17 + 48)];
  v18 = v51;
  (*(v72 + 32))(v73);
  v19 = v78;
  *(v78 + 19) = v73;
  *(v19 + 14) = v18;
  v52 = sub_50AA0();
  v53 = sub_50BB0();
  if (v53)
  {
    v50 = v53;
    v44 = v53;
    *(v78 + 8) = v53;

    sub_8B3C(v51, v44, v73);

    (*(v72 + 8))(v73, v70);
    sub_9144(v77);
    return v65;
  }

  sub_50D90();
  v48 = sub_50DA0();
  v45 = v48;
  v47 = sub_514A0();
  v46 = v47;
  sub_23FC(&qword_64648, &qword_51E60);
  v49 = sub_51650();
  if (os_log_type_enabled(v48, v47))
  {
    v20 = v65;
    v35 = sub_514F0();
    v31 = v35;
    v32 = sub_23FC(&qword_64650, &unk_53930);
    v33 = 0;
    v36 = sub_121D4(0, v32, v32);
    v34 = v36;
    v21 = sub_121D4(v33, &type metadata for Any + 8, &type metadata for Any + 8);
    v22 = v36;
    v23 = v78;
    v37 = v21;
    *(v78 + 13) = v35;
    *(v23 + 12) = v22;
    *(v23 + 11) = v21;
    v38 = 0;
    v39 = v108;
    sub_12228(0, v108);
    sub_12228(v38, v39);
    *(v78 + 10) = v49;
    v40 = &v26;
    __chkstk_darwin(&v26);
    v41 = &v26 - 6;
    *(&v26 - 4) = v24;
    *(&v26 - 3) = &v107;
    *(&v26 - 2) = &v106;
    v42 = sub_23FC(&qword_64698, &qword_52170);
    sub_181A0();
    sub_513C0();
    v43 = v20;
    if (v20)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v45, v46, "Attempted to perform an update action without a preferred descriptor.", v31, 2u);
      v29 = 0;
      sub_12288(v34, 0, v32);
      sub_12288(v37, v29, &type metadata for Any + 8);
      sub_514D0();

      v30 = v43;
    }
  }

  else
  {

    v30 = v65;
  }

  v27 = v30;

  (*(v68 + 8))(v69, v66);

  (*(v72 + 8))(v73, v70);
  sub_9144(v77);
  return v27;
}

uint64_t sub_8A84()
{

  sub_3238(*(v0 + 80));

  return swift_deallocObject();
}

uint64_t sub_8B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v25 = a2;
  v22 = a3;
  v37 = &unk_51E88;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v36 = 0;
  v30 = sub_50A70();
  v26 = *(v30 - 8);
  v27 = v30 - 8;
  v23 = v26;
  v24 = *(v26 + 64);
  v20 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v29 = &v19 - v20;
  v21 = (*(*(sub_23FC(&qword_64640, &qword_52260) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36);
  v39 = &v19 - v21;
  v45 = v4;
  v44 = v5;
  v43 = v6;
  v42 = v3;
  v7 = sub_51450();
  (*(*(v7 - 8) + 56))(v39, 1);

  (*(v26 + 16))(v29, v22, v30);

  sub_4354(v34, v41);
  v28 = (*(v23 + 80) + 40) & ~*(v23 + 80);
  v32 = (v28 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = 144;
  v8 = swift_allocObject();
  v9 = v25;
  v10 = v26;
  v11 = v28;
  v12 = v29;
  v13 = v30;
  v38 = v8;
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v9;
  (*(v10 + 32))(v8 + v11, v12, v13);
  v14 = v33;
  v15 = v34;
  v16 = v35;
  v17 = v38;
  *(v38 + v32) = v31;
  memcpy((v17 + v14), v15, v16);
  v40 = sub_F350(v36, v36, v39, v37, v38, &type metadata for () + 8);
  sub_14BA4(v39);
}

unint64_t sub_8EFC()
{
  v2 = qword_64560;
  if (!qword_64560)
  {
    sub_6320(&qword_644F0, &qword_51D40);
    sub_7C5C();
    sub_8FA4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64560);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8FA4()
{
  v2 = qword_64568;
  if (!qword_64568)
  {
    sub_6320(&qword_64570, &unk_51DA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64568);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_902C()
{
  v2 = qword_64578;
  if (!qword_64578)
  {
    sub_6320(&qword_644D8, &qword_51D28);
    sub_90C4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64578);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_90C4()
{
  v2 = qword_64580;
  if (!qword_64580)
  {
    sub_50B30();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64580);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_9144(uint64_t a1)
{
  v3 = sub_50B30();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_91EC(uint64_t a1)
{
  v1 = sub_23FC(&qword_644E8, &qword_51D38);
  (*(*(v1 - 8) + 8))(a1);
  v5 = *(sub_23FC(&qword_644F0, &qword_51D40) + 36);

  v7 = sub_23FC(&qword_64570, &unk_51DA0);
  v6 = *(v7 + 36);
  v2 = sub_51450();
  (*(*(v2 - 8) + 8))(a1 + v5 + v6);
  v8 = *(v7 + 40);
  v9 = sub_50970();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(a1 + v5 + v8, 1))
  {
    (*(v10 + 8))(a1 + v5 + v8, v9);
  }

  return a1;
}

uint64_t sub_9394@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = &v55;
  v37 = a2;
  v25 = a1;
  v34 = &opaque type descriptor for <<opaque return type of View.withSUUIEnvironmentContext(manager:reactivePlatform:reactiveAnalyticsReporter:)>>;
  v61 = 0;
  v60 = 0;
  v41 = sub_23FC(&qword_64588, &qword_533C0);
  v35 = *(v41 - 8);
  v36 = v41 - 8;
  v10 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v25);
  v39 = &v10 - v10;
  v11 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v40 = &v10 - v11;
  v61 = &v10 - v11;
  v60 = v4;
  v12 = v58;
  sub_359C4(v58);
  v13 = __dst;
  v14 = 64;
  memcpy(__dst, v12, sizeof(__dst));
  v19 = v57;
  memcpy(v57, __dst, sizeof(v57));
  KeyPath = swift_getKeyPath();
  v5 = v25[1];
  v15 = v65;
  *(v26 + 19) = v5;
  sub_2774(v65, &v56);
  *v26 = *(v26 + 19);
  sub_23FC(&qword_64498, &qword_51CB8);
  sub_51140();
  v16 = v54[1];
  sub_27CC(v15);
  v17 = v54;
  v54[0] = v16;
  sub_98E8();
  v20 = &v59;
  sub_51090();
  sub_2224(v17);

  sub_180B8(v19);
  v21 = v67;
  v22 = 80;
  memcpy(v67, v20, sizeof(v67));
  v31 = v53;
  memcpy(v53, v67, sizeof(v53));
  v6 = *v25;
  v23 = v64;
  *(v26 + 18) = v6;
  sub_23A4(v64, &v52);
  v51 = *(v26 + 18);
  sub_23FC(&qword_64490, &qword_51CB0);
  sub_51140();
  v30 = v50[2];
  sub_2468(v23);
  v7 = v25[2];
  v24 = v63;
  *(v26 + 17) = v7;
  sub_2AF0(v63, v50);
  v49 = *(v26 + 17);
  sub_23FC(&qword_644A0, &qword_51CC0);
  sub_51140();
  v29 = v48[2];
  sub_2B48(v24);
  v8 = v25[3];
  v27 = v62;
  *(v26 + 16) = v8;
  sub_2E6C(v62, v48);
  v47 = *(v26 + 16);
  sub_23FC(&qword_644A8, &qword_51CC8);
  sub_51140();
  v28 = v46;
  sub_2EC4(v27);
  v32 = sub_23FC(&qword_64590, &qword_51DB0);
  v33 = sub_9840();
  sub_51030();

  sub_18108(v31);
  v44 = v32;
  v45 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_6394(v39, v41, v40);
  v43 = *(v35 + 8);
  v42 = v35 + 8;
  v43(v39, v41);
  (*(v35 + 16))(v39, v40, v41);
  sub_99E8(v39, v41, v37);
  v43(v39, v41);
  return (v43)(v40, v41);
}

unint64_t sub_9840()
{
  v2 = qword_64598;
  if (!qword_64598)
  {
    sub_6320(&qword_64590, &qword_51DB0);
    sub_98E8();
    sub_9960();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64598);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_98E8()
{
  v2 = qword_645A0;
  if (!qword_645A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_645A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_9960()
{
  v2 = qword_645A8;
  if (!qword_645A8)
  {
    sub_6320(&qword_645B0, &qword_51DB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_645A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_9A4C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = &v53;
  v36 = a2;
  v24 = a1;
  v33 = &opaque type descriptor for <<opaque return type of View.withSUUIEnvironmentContext(manager:reactivePlatform:reactiveAnalyticsReporter:)>>;
  v56 = 0;
  v55 = 0;
  v21 = sub_50A90();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v9 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v20 = &v9 - v9;
  v31 = sub_23FC(&qword_645C0, &qword_51DC8);
  v10 = (*(*(v31 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v31);
  v30 = &v9 - v10;
  v40 = sub_23FC(&qword_645B8, &qword_51DC0);
  v34 = *(v40 - 8);
  v35 = v40 - 8;
  v12 = *(v34 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v24);
  v38 = &v9 - v11;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v2);
  v39 = &v9 - v13;
  v56 = &v9 - v13;
  v55 = v3;
  sub_50A80();
  KeyPath = swift_getKeyPath();
  v4 = v24[1];
  v14 = v60;
  *(v25 + 6) = v4;
  sub_2774(v60, &v54);
  *v25 = *(v25 + 6);
  sub_23FC(&qword_64498, &qword_51CB8);
  sub_51140();
  v15 = v52[1];
  sub_27CC(v14);
  v16 = v52;
  v52[0] = v15;
  sub_A010();
  sub_51090();
  sub_2224(v16);

  (*(v18 + 8))(v20, v21);
  v5 = *v24;
  v22 = v59;
  *(v25 + 5) = v5;
  sub_23A4(v59, &v51);
  v50 = *(v25 + 5);
  sub_23FC(&qword_64490, &qword_51CB0);
  sub_51140();
  v29 = v49[2];
  sub_2468(v22);
  v6 = v24[2];
  v23 = v58;
  *(v25 + 4) = v6;
  sub_2AF0(v58, v49);
  v48 = *(v25 + 4);
  sub_23FC(&qword_644A0, &qword_51CC0);
  sub_51140();
  v28 = v47[2];
  sub_2B48(v23);
  v7 = v24[3];
  v26 = v57;
  *(v25 + 3) = v7;
  sub_2E6C(v57, v47);
  v46 = *(v25 + 3);
  sub_23FC(&qword_644A8, &qword_51CC8);
  sub_51140();
  v27 = v45;
  sub_2EC4(v26);
  v32 = sub_9F68();
  sub_51030();

  sub_18020(v30);
  v43 = v31;
  v44 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_6394(v38, v40, v39);
  v42 = *(v34 + 8);
  v41 = v34 + 8;
  v42(v38, v40);
  (*(v34 + 16))(v38, v39, v40);
  sub_99E8(v38, v40, v36);
  v42(v38, v40);
  return (v42)(v39, v40);
}

unint64_t sub_9F68()
{
  v2 = qword_645C8;
  if (!qword_645C8)
  {
    sub_6320(&qword_645C0, &qword_51DC8);
    sub_A010();
    sub_9960();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_645C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_A010()
{
  v2 = qword_645D0;
  if (!qword_645D0)
  {
    sub_50A90();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_645D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_A090@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = &v60;
  v27 = a2;
  v35 = a1;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v50 = 0;
  v49 = 0;
  v28 = sub_23FC(&qword_64600, &qword_51DE0);
  v29 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v30 = &v12 - v29;
  v31 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v12 - v29);
  v32 = &v12 - v31;
  v33 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v12 - v31);
  v34 = &v12 - v33;
  v64 = &v12 - v33;
  v36 = sub_23FC(&qword_645D8, &qword_51DD0);
  v40 = *(*(v36 - 8) + 64);
  v37 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v35);
  v38 = &v12 - v37;
  v39 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v4);
  v41 = &v12 - v39;
  v42 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v5);
  v43 = &v12 - v42;
  v63 = &v12 - v42;
  v62 = v6;
  v7 = *v6;
  v46 = &v67;
  *(v8 + 96) = v7;
  sub_23A4(&v67, &v61);
  *v44 = *(v44 + 6);
  v45 = sub_23FC(&qword_64490, &qword_51CB0);
  sub_51140();
  v47 = v59[2];
  sub_2468(v46);
  v48 = sub_50B50();

  if (v48)
  {
    v9 = *v35;
    v24 = &v66;
    *(v44 + 5) = v9;
    sub_23A4(&v66, &v53);
    v52 = *(v44 + 5);
    sub_51140();
    v25 = v51;
    sub_2468(v24);
    v26 = sub_50BB0();
    if (v26)
    {
      v23 = v26;
      v21 = v26;
      v50 = v26;

      sub_AD04(v21, v32);
      v22 = sub_AAE8();
      sub_6394(v32, v28, v34);
      sub_15258(v32);
      v49 = v32;
      sub_15338(v34, v30);
      sub_99E8(v30, v28, v32);
      sub_15258(v30);
      sub_15338(v32, v30);
      sub_B2D4(v30, v28, v28, v22, v22, v38);
      sub_15258(v30);
      v20 = sub_23FC(&qword_645F0, &qword_51DD8);
      (*(*(v20 - 8) + 56))(v38, 0, 1);
      sub_AA48();
      sub_B3CC(v38, v20, v41);
      sub_17724(v38);
      sub_17918(v41, v43);
      sub_15258(v32);
      sub_15258(v34);

      goto LABEL_8;
    }
  }

  v10 = *v35;
  v17 = &v65;
  *(v44 + 4) = v10;
  sub_23A4(&v65, v59);
  v58 = *(v44 + 4);
  sub_51140();
  v18 = v57;
  sub_2468(v17);
  v19 = sub_50BA0();
  if (v19)
  {
    v16 = v19;
    v14 = v19;
    v56 = v19;

    v55 = v34;
    sub_AD04(v14, v32);
    v13 = sub_AAE8();
    sub_6394(v32, v28, v34);
    sub_15258(v32);
    v54 = v32;
    sub_15338(v34, v30);
    sub_99E8(v30, v28, v32);
    sub_15258(v30);
    sub_15338(v32, v30);
    sub_B418(v30, v28, v28, v13, v13, v38);
    sub_15258(v30);
    v12 = sub_23FC(&qword_645F0, &qword_51DD8);
    (*(*(v12 - 8) + 56))(v38, 0, 1);
    sub_AA48();
    sub_B3CC(v38, v12, v41);
    sub_17724(v38);
    sub_17918(v41, v43);
    sub_15258(v32);
    sub_15258(v34);
  }

  else
  {

    v15 = sub_23FC(&qword_645F0, &qword_51DD8);
    (*(*(v15 - 8) + 56))(v38, 1);
    sub_AA48();
    sub_B3CC(v38, v15, v41);
    sub_17724(v38);
    sub_17918(v41, v43);
  }

LABEL_8:
  sub_17B78(v43, v41);
  sub_A9B0();
  sub_99E8(v41, v36, v27);
  sub_17724(v41);
  return sub_17724(v43);
}

unint64_t sub_A9B0()
{
  v2 = qword_645E0;
  if (!qword_645E0)
  {
    sub_6320(&qword_645D8, &qword_51DD0);
    sub_AA48();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_645E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_AA48()
{
  v2 = qword_645E8;
  if (!qword_645E8)
  {
    sub_6320(&qword_645F0, &qword_51DD8);
    sub_AAE8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_645E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_AAE8()
{
  v2 = qword_645F8;
  if (!qword_645F8)
  {
    sub_6320(&qword_64600, &qword_51DE0);
    sub_6320(&qword_64608, &qword_51DE8);
    sub_ABDC();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_645F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_ABDC()
{
  v2 = qword_64610;
  if (!qword_64610)
  {
    sub_6320(&qword_64608, &qword_51DE8);
    sub_AC84();
    sub_9960();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64610);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_AC84()
{
  v2 = qword_64618;
  if (!qword_64618)
  {
    sub_50A20();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64618);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_AD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = &v58;
  v50 = a2;
  v40 = a1;
  v43 = &opaque type descriptor for <<opaque return type of View.withSUUIEnvironmentContext(manager:reactivePlatform:reactiveAnalyticsReporter:)>>;
  v44 = sub_15218;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v29 = sub_50A20();
  v26 = *(v29 - 8);
  v27 = v29 - 8;
  v17 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v28 = &v17 - v17;
  v41 = sub_23FC(&qword_64608, &qword_51DE8);
  v18 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v41);
  v37 = &v17 - v18;
  v49 = sub_23FC(&qword_64658, &unk_51E90);
  v46 = *(v49 - 8);
  v47 = v49 - 8;
  v19 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v48 = &v17 - v19;
  v51 = sub_23FC(&qword_64600, &qword_51DE0);
  v20 = (*(*(v51 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v40);
  v53 = &v17 - v20;
  v21 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v54 = &v17 - v21;
  v66 = &v17 - v21;
  v65 = v5;
  v64 = v2;

  sub_50A10();
  KeyPath = swift_getKeyPath();
  v6 = *(v2 + 16);
  v22 = v70;
  *(v32 + 16) = v6;
  sub_2774(v70, &v63);
  *(v32 + 9) = *(v32 + 16);
  sub_23FC(&qword_64498, &qword_51CB8);
  sub_51140();
  v23 = v62[1];
  sub_27CC(v22);
  v24 = v62;
  v62[0] = v23;
  sub_AC84();
  sub_51090();
  v7 = v38;
  sub_2224(v24);

  (*(v26 + 8))(v28, v29);
  v8 = *v7;
  v30 = v69;
  *(v32 + 15) = v8;
  sub_23A4(v69, &v61);
  *(v32 + 6) = *(v32 + 15);
  sub_23FC(&qword_64490, &qword_51CB0);
  sub_51140();
  v9 = v38;
  v36 = v60[2];
  sub_2468(v30);
  v10 = *(v9 + 2);
  v31 = v68;
  *(v32 + 14) = v10;
  sub_2AF0(v68, v60);
  *(v32 + 3) = *(v32 + 14);
  sub_23FC(&qword_644A0, &qword_51CC0);
  sub_51140();
  v11 = v38;
  v35 = v59[2];
  sub_2B48(v31);
  v12 = *(v11 + 3);
  v33 = v67;
  *(v32 + 13) = v12;
  sub_2E6C(v67, v59);
  *v32 = *(v32 + 13);
  sub_23FC(&qword_644A8, &qword_51CC8);
  sub_51140();
  v34 = v57[18];
  sub_2EC4(v33);
  v42 = sub_ABDC();
  sub_51030();

  sub_150C8(v37);
  sub_4354(v38, v57);

  v39 = swift_allocObject();
  memcpy((v39 + 16), v38, 0x90uLL);
  v13 = v39;
  v14 = v41;
  v15 = v42;
  *(v39 + 160) = v40;
  v45 = v13;
  v55 = v14;
  v56 = v15;
  swift_getOpaqueTypeConformance2();
  sub_51110();
  sub_15224(v44, v45);
  (*(v46 + 8))(v48, v49);
  v52 = sub_AAE8();
  sub_6394(v53, v51, v54);
  sub_15258(v53);
  sub_15338(v54, v53);
  sub_99E8(v53, v51, v50);
  sub_15258(v53);
  return sub_15258(v54);
}

uint64_t sub_B2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a6;
  v8[1] = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v18 = a2;
  v17 = a3;
  v10 = sub_50F80();
  v9 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v12 = v8 - v9;
  (*(*(v6 - 8) + 16))();
  swift_storeEnumTagMultiPayload();
  return sub_50F90();
}

uint64_t sub_B418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a6;
  v8[1] = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v18 = a2;
  v17 = a3;
  v10 = sub_50F80();
  v9 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v12 = v8 - v9;
  (*(*(v6 - 8) + 16))();
  swift_storeEnumTagMultiPayload();
  return sub_50F90();
}

uint64_t sub_B510@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v6 = a1;
  v2 = sub_23FC(&qword_644D8, &qword_51D28);
  v5 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v8 = &v4 - v5;
  v12 = sub_50F10();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v13 = &v4 - v7;
  (*(v10 + 16))(&v4 - v7);
  sub_50EB0();
  sub_175FC(v8, v9);
  return (*(v10 + 8))(v13, v12);
}

uint64_t sub_B670(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(sub_23FC(&qword_644D8, &qword_51D28) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v4);
  v6 = &v3 - v5;
  sub_174D4(v1, &v3 - v5);
  return sub_50EC0();
}

unint64_t sub_B710()
{
  v2 = qword_64620;
  if (!qword_64620)
  {
    sub_6320(&qword_64518, &qword_51D68);
    sub_6320(&qword_64508, &qword_51D58);
    sub_6320(&qword_645D8, &qword_51DD0);
    sub_6320(&qword_64500, &qword_51D50);
    sub_6320(&qword_645B8, &qword_51DC0);
    sub_6320(&qword_644F8, &qword_51D48);
    sub_6320(&qword_64588, &qword_533C0);
    sub_6320(&qword_644F0, &qword_51D40);
    sub_6320(&qword_644D8, &qword_51D28);
    sub_8EFC();
    sub_902C();
    swift_getOpaqueTypeConformance2();
    sub_6320(&qword_64590, &qword_51DB0);
    sub_9840();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_6320(&qword_645C0, &qword_51DC8);
    sub_9F68();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_A9B0();
    swift_getOpaqueTypeConformance2();
    sub_BA14();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64620);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_BA14()
{
  v2 = qword_64628;
  if (!qword_64628)
  {
    sub_6320(&qword_64630, &qword_51E48);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64628);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_BA9C(uint64_t a1)
{
  v1 = sub_23FC(&qword_64510, &qword_51D60);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(sub_23FC(&qword_64518, &qword_51D68) + 36);

  v5 = *(sub_23FC(&qword_64630, &qword_51E48) + 28);
  v6 = sub_50B30();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(a1 + v4 + v5, 1))
  {
    (*(v7 + 8))(a1 + v4 + v5, v6);
  }

  return a1;
}

unint64_t sub_BBF0()
{
  v2 = qword_64638;
  if (!qword_64638)
  {
    sub_6320(&qword_64520, &qword_51D70);
    sub_B710();
    sub_9960();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64638);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_BC98(uint64_t a1)
{
  v1 = sub_23FC(&qword_64510, &qword_51D60);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(sub_23FC(&qword_64518, &qword_51D68) + 36);

  v5 = *(sub_23FC(&qword_64630, &qword_51E48) + 28);
  v6 = sub_50B30();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(a1 + v4 + v5, 1))
  {
    (*(v7 + 8))(a1 + v4 + v5, v6);
  }

  sub_23FC(&qword_64520, &qword_51D70);

  return a1;
}

uint64_t sub_BE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[29] = a7;
  v7[28] = a6;
  v7[27] = a5;
  v7[26] = a4;
  v7[20] = v7;
  v7[21] = 0;
  v7[22] = 0;
  v7[23] = 0;
  v7[24] = 0;
  v7[25] = 0;
  v8 = sub_50A30();
  v7[30] = v8;
  v7[31] = *(v8 - 8);
  v7[32] = swift_task_alloc();
  v9 = sub_50DB0();
  v7[33] = v9;
  v7[34] = *(v9 - 8);
  v7[35] = swift_task_alloc();
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v10 = sub_50A70();
  v7[39] = v10;
  v13 = *(v10 - 8);
  v7[40] = v13;
  v7[41] = *(v13 + 64);
  v7[42] = swift_task_alloc();
  v11 = sub_50A40();
  v7[43] = v11;
  v14 = *(v11 - 8);
  v7[44] = v14;
  v7[45] = *(v14 + 64);
  v7[46] = swift_task_alloc();
  v7[47] = swift_task_alloc();
  v7[48] = swift_task_alloc();
  v7[49] = swift_task_alloc();
  v7[50] = swift_task_alloc();
  v7[21] = a4;
  v7[22] = a5;
  v7[23] = a6;
  v7[24] = a7;

  return _swift_task_switch(sub_C180);
}

uint64_t sub_C180()
{
  v105 = v0;
  *(v0 + 160) = v0;
  v89 = sub_50C10();
  switch(v89)
  {
    case 0:
      goto LABEL_16;
    case 1:
      v86 = *(v88 + 336);
      v85 = *(v88 + 312);
      v84 = *(v88 + 320);
      (*(v84 + 104))();
      sub_1637C();
      v87 = sub_51670();
      (*(v84 + 8))(v86, v85);
      if (v87)
      {
        (*(*(v88 + 352) + 104))(*(v88 + 392), enum case for UpdateAction.updateNow(_:), *(v88 + 344));
      }

      else
      {
        (*(*(v88 + 352) + 104))(*(v88 + 392), enum case for UpdateAction.updateTonight(_:), *(v88 + 344));
      }

      (*(*(v88 + 352) + 32))(*(v88 + 400), *(v88 + 392), *(v88 + 344));
      break;
    case 2:
    case 3:
      goto LABEL_16;
    case 4:
      v82 = *(v88 + 336);
      v81 = *(v88 + 312);
      v80 = *(v88 + 320);
      (*(v80 + 104))();
      sub_1637C();
      v83 = sub_51670();
      (*(v80 + 8))(v82, v81);
      if (v83)
      {
        (*(*(v88 + 352) + 104))(*(v88 + 384), enum case for UpdateAction.installNow(_:), *(v88 + 344));
      }

      else
      {
        (*(*(v88 + 352) + 104))(*(v88 + 384), enum case for UpdateAction.installTonight(_:), *(v88 + 344));
      }

      (*(*(v88 + 352) + 32))(*(v88 + 400), *(v88 + 384), *(v88 + 344));
      break;
    case 5:
LABEL_16:
      v70 = *(v88 + 336);
      v71 = *(v88 + 312);
      v68 = *(v88 + 216);
      v67 = *(v88 + 320);
      sub_50D90();
      (*(v67 + 16))(v70, v68, v71);
      v69 = (*(v67 + 80) + 16) & ~*(v67 + 80);
      v72 = swift_allocObject();
      (*(v67 + 32))(v72 + v69, v70, v71);
      oslog = sub_50DA0();
      v79 = sub_51480();
      v74 = swift_allocObject();
      *(v74 + 16) = 32;
      v75 = swift_allocObject();
      *(v75 + 16) = 8;
      v73 = swift_allocObject();
      *(v73 + 16) = sub_16218;
      *(v73 + 24) = v72;
      v76 = swift_allocObject();
      *(v76 + 16) = sub_16324;
      *(v76 + 24) = v73;
      sub_23FC(&qword_64648, &qword_51E60);
      sub_51650();
      v77 = v1;

      *v77 = sub_162A8;
      v77[1] = v74;

      v77[2] = sub_162DC;
      v77[3] = v75;

      v77[4] = sub_16370;
      v77[5] = v76;
      sub_1489C();

      if (os_log_type_enabled(oslog, v79))
      {
        buf = sub_514F0();
        v63 = sub_23FC(&qword_64650, &unk_53930);
        v65 = sub_121D4(0, v63, v63);
        v66 = sub_121D4(1, &type metadata for Any + 8, &type metadata for Any + 8);
        v95 = buf;
        v96 = v65;
        v97 = v66;
        sub_12228(2, &v95);
        sub_12228(1, &v95);
        v98 = sub_162A8;
        v99 = v74;
        sub_1223C(&v98, &v95, &v96, &v97);
        v98 = sub_162DC;
        v99 = v75;
        sub_1223C(&v98, &v95, &v96, &v97);
        v98 = sub_16370;
        v99 = v76;
        sub_1223C(&v98, &v95, &v96, &v97);
        _os_log_impl(&dword_0, oslog, v79, "Could not perform the deep link action %s as the descriptor\nis not available to download or available to install. Aborting the request.", buf, 0xCu);
        sub_12288(v65, 0, v63);
        sub_12288(v66, 1, &type metadata for Any + 8);
        sub_514D0();
      }

      else
      {
      }

      v61 = *(v88 + 304);
      v62 = *(v88 + 264);
      v60 = *(v88 + 272);
      _objc_release(oslog);
      (*(v60 + 8))(v61, v62);
      goto LABEL_30;
    default:
      v50 = *(v88 + 336);
      v51 = *(v88 + 312);
      v48 = *(v88 + 216);
      v47 = *(v88 + 320);
      sub_50D90();
      (*(v47 + 16))(v50, v48, v51);
      v49 = (*(v47 + 80) + 16) & ~*(v47 + 80);
      v52 = swift_allocObject();
      (*(v47 + 32))(v52 + v49, v50, v51);
      log = sub_50DA0();
      v59 = sub_51480();
      v54 = swift_allocObject();
      *(v54 + 16) = 32;
      v55 = swift_allocObject();
      *(v55 + 16) = 8;
      v53 = swift_allocObject();
      *(v53 + 16) = sub_15FE8;
      *(v53 + 24) = v52;
      v56 = swift_allocObject();
      *(v56 + 16) = sub_160F4;
      *(v56 + 24) = v53;
      sub_23FC(&qword_64648, &qword_51E60);
      sub_51650();
      v57 = v2;

      *v57 = sub_16078;
      v57[1] = v54;

      v57[2] = sub_160AC;
      v57[3] = v55;

      v57[4] = sub_16140;
      v57[5] = v56;
      sub_1489C();

      if (os_log_type_enabled(log, v59))
      {
        v44 = sub_514F0();
        v43 = sub_23FC(&qword_64650, &unk_53930);
        v45 = sub_121D4(0, v43, v43);
        v46 = sub_121D4(1, &type metadata for Any + 8, &type metadata for Any + 8);
        v90 = v44;
        v91 = v45;
        v92 = v46;
        sub_12228(2, &v90);
        sub_12228(1, &v90);
        v93 = sub_16078;
        v94 = v54;
        sub_1223C(&v93, &v90, &v91, &v92);
        v93 = sub_160AC;
        v94 = v55;
        sub_1223C(&v93, &v90, &v91, &v92);
        v93 = sub_16140;
        v94 = v56;
        sub_1223C(&v93, &v90, &v91, &v92);
        _os_log_impl(&dword_0, log, v59, "Could not perform the deep link action %s as the descriptor\nis in an unknown state. Aborting the request.", v44, 0xCu);
        sub_12288(v45, 0, v43);
        sub_12288(v46, 1, &type metadata for Any + 8);
        sub_514D0();
      }

      else
      {
      }

      v41 = *(v88 + 296);
      v42 = *(v88 + 264);
      v40 = *(v88 + 272);
      _objc_release(log);
      (*(v40 + 8))(v41, v42);
LABEL_30:

      v8 = *(*(v88 + 160) + 8);

      return v8();
  }

  v18 = *(v88 + 400);
  v20 = *(v88 + 376);
  v21 = *(v88 + 344);
  v25 = *(v88 + 336);
  v26 = *(v88 + 312);
  v23 = *(v88 + 216);
  v17 = *(v88 + 352);
  v22 = *(v88 + 320);
  sub_50D90();
  v3 = *(v17 + 16);
  *(v88 + 408) = v3;
  *(v88 + 416) = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v20, v18, v21);
  v4 = *(v17 + 80);
  *(v88 + 488) = v4;
  v19 = (v4 + 16) & ~v4;
  v27 = swift_allocObject();
  v5 = *(v17 + 32);
  *(v88 + 424) = v5;
  *(v88 + 432) = (v17 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v5(v27 + v19, v20, v21);
  (*(v22 + 16))(v25, v23, v26);
  v24 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v29 = swift_allocObject();
  (*(v22 + 32))(v29 + v24, v25, v26);
  v38 = sub_50DA0();
  v39 = sub_51480();
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_164C8;
  *(v28 + 24) = v27;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_16704;
  *(v33 + 24) = v28;
  v34 = swift_allocObject();
  *(v34 + 16) = 32;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_165F8;
  *(v30 + 24) = v29;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_16804;
  *(v36 + 24) = v30;
  *(v88 + 440) = sub_23FC(&qword_64648, &qword_51E60);
  sub_51650();
  v37 = v6;

  *v37 = sub_16688;
  v37[1] = v31;

  v37[2] = sub_166BC;
  v37[3] = v32;

  v37[4] = sub_16750;
  v37[5] = v33;

  v37[6] = sub_16788;
  v37[7] = v34;

  v37[8] = sub_167BC;
  v37[9] = v35;

  v37[10] = sub_16850;
  v37[11] = v36;
  sub_1489C();

  if (os_log_type_enabled(v38, v39))
  {
    v14 = sub_514F0();
    v13 = sub_23FC(&qword_64650, &unk_53930);
    v15 = sub_121D4(0, v13, v13);
    v16 = sub_121D4(2, &type metadata for Any + 8, &type metadata for Any + 8);
    v100 = v14;
    v101 = v15;
    v102 = v16;
    sub_12228(2, &v100);
    sub_12228(2, &v100);
    v103 = sub_16688;
    v104 = v31;
    sub_1223C(&v103, &v100, &v101, &v102);
    v103 = sub_166BC;
    v104 = v32;
    sub_1223C(&v103, &v100, &v101, &v102);
    v103 = sub_16750;
    v104 = v33;
    sub_1223C(&v103, &v100, &v101, &v102);
    v103 = sub_16788;
    v104 = v34;
    sub_1223C(&v103, &v100, &v101, &v102);
    v103 = sub_167BC;
    v104 = v35;
    sub_1223C(&v103, &v100, &v101, &v102);
    v103 = sub_16850;
    v104 = v36;
    sub_1223C(&v103, &v100, &v101, &v102);
    _os_log_impl(&dword_0, v38, v39, "Atempting to perform update action %s to resolve the deep link action: %s", v14, 0x16u);
    sub_12288(v15, 0, v13);
    sub_12288(v16, 2, &type metadata for Any + 8);
    sub_514D0();
  }

  else
  {
  }

  v11 = *(v88 + 288);
  v12 = *(v88 + 264);
  v10 = *(v88 + 272);
  _objc_release(v38);
  v7 = *(v10 + 8);
  *(v88 + 448) = v7;
  *(v88 + 456) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v11, v12);
  sub_50AB0();
  sub_1685C();
  sub_513F0();

  return _swift_task_switch(sub_DCC8);
}

uint64_t sub_DCC8(uint64_t a1)
{
  v9 = v1[51];
  v7 = v1[50];
  v10 = v1[46];
  v8 = v1[43];
  v1[20] = v1;
  v1[58] = sub_50AA0();
  v9(v10, v7, v8);
  v2 = swift_task_alloc();
  v11[59] = v2;
  *v2 = v11[20];
  v2[1] = sub_DDE4;
  v3 = v11[46];
  v4 = v11[32];
  v5 = v11[26];

  return ReactiveUIManager.initiateUpdateAction(_:for:delegate:)(v4, v3, v5, 0);
}

uint64_t sub_DDE4()
{
  v4 = *v1;
  v4[20] = *v1;
  v4[60] = v0;

  if (v0)
  {
    v2 = sub_E134;
  }

  else
  {
    (*(v4[44] + 8))(v4[46], v4[43]);

    v2 = sub_DF84;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_DF84()
{
  v1 = v0[32];
  v2 = v0[31];
  v3 = v0[30];
  v0[20] = v0;
  (*(v2 + 8))(v1, v3);
  (*(v0[44] + 8))(v0[50], v0[43]);

  v4 = *(v0[20] + 8);

  return v4();
}

uint64_t sub_E134()
{
  v45 = v0;
  v14 = *(v0 + 480);
  v21 = *(v0 + 424);
  v18 = *(v0 + 488);
  v17 = *(v0 + 408);
  v16 = *(v0 + 400);
  v19 = *(v0 + 376);
  v1 = *(v0 + 368);
  v2 = *(v0 + 352);
  v20 = *(v0 + 344);
  __src = *(v0 + 232);
  *(v0 + 160) = v0;
  (*(v2 + 8))(v1);

  swift_errorRetain();
  *(v0 + 200) = v14;
  sub_50D80();
  sub_4354(__src, v0 + 16);
  v22 = swift_allocObject();
  memcpy((v22 + 16), __src, 0x90uLL);
  v17(v19, v16, v20);
  v26 = swift_allocObject();
  v21(v26 + ((v18 + 16) & ~v18), v19, v20);
  v38 = sub_50DA0();
  v39 = sub_514A0();
  v28 = swift_allocObject();
  *(v28 + 16) = 32;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1698C;
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_16B6C;
  *(v24 + 24) = v23;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_16BB8;
  *(v30 + 24) = v24;
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_F26C;
  *(v25 + 24) = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_16CB8;
  *(v33 + 24) = v25;
  v34 = swift_allocObject();
  *(v34 + 16) = 32;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_16A60;
  *(v27 + 24) = v26;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_16DB8;
  *(v36 + 24) = v27;
  sub_51650();
  v37 = v3;

  *v37 = sub_16AF0;
  v37[1] = v28;

  v37[2] = sub_16B24;
  v37[3] = v29;

  v37[4] = sub_16C04;
  v37[5] = v30;

  v37[6] = sub_16C3C;
  v37[7] = v31;

  v37[8] = sub_16C70;
  v37[9] = v32;

  v37[10] = sub_16D04;
  v37[11] = v33;

  v37[12] = sub_16D3C;
  v37[13] = v34;

  v37[14] = sub_16D70;
  v37[15] = v35;

  v37[16] = sub_16E04;
  v37[17] = v36;
  sub_1489C();

  if (os_log_type_enabled(v38, v39))
  {
    buf = sub_514F0();
    v9 = sub_23FC(&qword_64650, &unk_53930);
    v11 = sub_121D4(0, v9, v9);
    v12 = sub_121D4(3, &type metadata for Any + 8, &type metadata for Any + 8);
    v40 = buf;
    v41 = v11;
    v42 = v12;
    sub_12228(2, &v40);
    sub_12228(3, &v40);
    v43 = sub_16AF0;
    v44 = v28;
    sub_1223C(&v43, &v40, &v41, &v42);
    v43 = sub_16B24;
    v44 = v29;
    sub_1223C(&v43, &v40, &v41, &v42);
    v43 = sub_16C04;
    v44 = v30;
    sub_1223C(&v43, &v40, &v41, &v42);
    v43 = sub_16C3C;
    v44 = v31;
    sub_1223C(&v43, &v40, &v41, &v42);
    v43 = sub_16C70;
    v44 = v32;
    sub_1223C(&v43, &v40, &v41, &v42);
    v43 = sub_16D04;
    v44 = v33;
    sub_1223C(&v43, &v40, &v41, &v42);
    v43 = sub_16D3C;
    v44 = v34;
    sub_1223C(&v43, &v40, &v41, &v42);
    v43 = sub_16D70;
    v44 = v35;
    sub_1223C(&v43, &v40, &v41, &v42);
    v43 = sub_16E04;
    v44 = v36;
    sub_1223C(&v43, &v40, &v41, &v42);
    _os_log_impl(&dword_0, v38, v39, "%s.%s: Failed to perform update action: %s", buf, 0x20u);
    sub_12288(v11, 0, v9);
    sub_12288(v12, 3, &type metadata for Any + 8);
    sub_514D0();
  }

  else
  {
  }

  v8 = v13[56];
  v6 = v13[35];
  v7 = v13[33];
  _objc_release(v38);
  v8(v6, v7);

  (*(v13[44] + 8))(v13[50], v13[43]);

  v4 = *(v13[20] + 8);

  return v4();
}

uint64_t sub_EF8C(uint64_t a1)
{
  v2[1] = a1;
  v5 = sub_50A70();
  v4 = *(v5 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v6 = v2 - v3;
  (*(v4 + 16))();
  return sub_51330();
}

uint64_t sub_F040(uint64_t a1)
{
  v2[1] = a1;
  v5 = sub_50A70();
  v4 = *(v5 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v6 = v2 - v3;
  (*(v4 + 16))();
  return sub_51330();
}

uint64_t sub_F0F4(uint64_t a1)
{
  v2[1] = a1;
  v5 = sub_50A40();
  v4 = *(v5 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v6 = v2 - v3;
  (*(v4 + 16))();
  return sub_51330();
}

uint64_t sub_F1A8(uint64_t a1)
{
  v2[1] = a1;
  v5 = sub_50A70();
  v4 = *(v5 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v6 = v2 - v3;
  (*(v4 + 16))();
  return sub_51330();
}

uint64_t sub_F29C(uint64_t a1)
{
  v2[1] = a1;
  v5 = sub_50A40();
  v4 = *(v5 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v6 = v2 - v3;
  (*(v4 + 16))();
  return sub_51330();
}

uint64_t sub_F350(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a1;
  v45 = a2;
  v53 = a3;
  v54 = a4;
  v55 = a5;
  v46 = a6;
  v47 = "Fatal error";
  v48 = "Unexpectedly found nil while unwrapping an Optional value";
  v49 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v50 = &unk_52138;
  v51 = 0;
  v64 = a6;
  v52 = (*(*(sub_23FC(&qword_64640, &qword_52260) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v55);
  v56 = &v15 - v52;

  v62 = v54;
  v63 = v55;
  sub_1592C(v53, v56);
  v57 = sub_51450();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  if ((*(v58 + 48))(v56, 1) == 1)
  {
    sub_14BA4(v56);
    v43 = 0;
  }

  else
  {
    v42 = sub_51440();
    (*(v58 + 8))(v56, v57);
    v43 = v42;
  }

  v39 = v43 | 0x1000;
  v41 = *(v55 + 16);
  v40 = *(v55 + 24);
  swift_unknownObjectRetain();

  if (v41)
  {
    v37 = v41;
    v38 = v40;
    v31 = v40;
    v32 = v41;
    swift_getObjectType();
    v33 = sub_513F0();
    v34 = v6;
    swift_unknownObjectRelease();
    v35 = v33;
    v36 = v34;
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  v29 = v36;
  v30 = v35;
  if (v45)
  {
    v27 = v44;
    v28 = v45;
    v7 = v51;
    v25 = sub_51340();
    sub_12474(v25 + 32, &v62, v46, &v60);
    if (v7)
    {
      __break(1u);
    }

    v24 = v60;

    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  v23 = v26;
  if (v26)
  {
    v17 = v23;
    v18 = v23;
  }

  else
  {

    v19 = v62;
    v20 = v63;

    v8 = swift_allocObject();
    v9 = v19;
    v10 = v20;
    v11 = v30;
    v12 = v29;
    v21 = v8;
    v8[2] = v46;
    v8[3] = v9;
    v8[4] = v10;
    v22 = 0;
    if (v11 != 0 || v12 != 0)
    {
      v61[0] = 0;
      v61[1] = 0;
      v61[2] = v30;
      v61[3] = v29;
      v22 = v61;
    }

    v18 = swift_task_create();
  }

  sub_12460();
  v16 = v13;

  return v16;
}

uint64_t sub_F8E0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v19 = a2;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v31 = 0;
  v17 = 0;
  v12 = sub_50A70();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v16 = &v11 - v15;
  v38 = &v11 - v15;
  v18 = (*(*(sub_23FC(&qword_644D8, &qword_51D28) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v29 = &v11 - v18;
  v30 = sub_50B30();
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v21 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v20);
  v22 = &v11 - v21;
  v23 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v24 = &v11 - v23;
  v37 = &v11 - v23;
  v36 = v4;
  v35 = v5;
  v6 = *(v4 + 80);
  v25 = &v39;
  v39 = v6;
  sub_357C(&v39, &v34);
  v33 = v39;
  sub_23FC(&qword_644B8, &qword_51D08);
  sub_51140();
  v26 = v32;
  sub_35D4(v25);
  sub_50CC0();
  if ((*(v27 + 48))(v29, 1, v30) == 1)
  {
    sub_9144(v29);
  }

  else
  {
    (*(v27 + 32))(v24, v29, v30);

    (*(v27 + 16))(v22, v24, v30);
    if ((*(v27 + 88))(v22, v30) == enum case for DeepLinkResponse.navigateAndPerform(_:))
    {
      (*(v27 + 96))(v22, v30);
      v8 = sub_23FC(&qword_64660, ":)");
      v9 = &v22[*(v8 + 48)];
      v11 = *&v22[*(v8 + 64)];
      (*(v13 + 32))(v16, v9, v12);
      v31 = v11;
      v10 = sub_50C20();
      (*(*(v10 - 8) + 8))(v22);
      sub_8B3C(v11, v19, v16);

      (*(v13 + 8))(v16, v12);
    }

    else
    {
      (*(v27 + 8))(v22, v30);
    }

    return (*(v27 + 8))(v24, v30);
  }
}

uint64_t sub_FE4C()
{

  sub_3238(*(v0 + 80));

  return swift_deallocObject();
}

uint64_t sub_FF60(int a1, int a2, int a3, void *__src, uint64_t a5)
{
  v5[66] = a5;
  v5[65] = __src;
  v5[62] = v5;
  v5[63] = 0;
  memcpy(v5 + 20, __src, 0x90uLL);
  memcpy(v5 + 2, v5 + 20, 0x90uLL);
  sub_23FC(&qword_644D8, &qword_51D28);
  v5[67] = swift_task_alloc();
  v6 = sub_50B30();
  v5[68] = v6;
  v5[69] = *(v6 - 8);
  v5[70] = swift_task_alloc();
  v5[63] = a5;

  return _swift_task_switch(sub_100CC);
}

uint64_t sub_100CC()
{
  v0[62] = v0;
  v0[71] = sub_50AE0();
  v0[72] = sub_51410();
  v0[73] = sub_51400();
  sub_513F0();

  return _swift_task_switch(sub_10188);
}

uint64_t sub_10188()
{
  v1 = *(v0 + 520);
  *(v0 + 496) = v0;
  *(v0 + 448) = *v1;
  sub_23A4((v0 + 448), (v0 + 464));
  *(v0 + 480) = *(v0 + 448);
  sub_23FC(&qword_64490, &qword_51CB0);
  sub_51140();
  *(v0 + 592) = *(v0 + 512);
  sub_2468((v0 + 448));

  return _swift_task_switch(sub_10258);
}

uint64_t sub_10258()
{
  *(v0 + 496) = v0;
  *(v0 + 600) = sub_50AC0();
  v1 = swift_task_alloc();
  v5[76] = v1;
  *v1 = v5[62];
  v1[1] = sub_10328;
  v2 = v5[67];
  v3 = v5[66];

  return DeepLinkHandler.resolve(_:)(v2, v3);
}

uint64_t sub_10328()
{
  v4 = *v1;
  *(v4 + 496) = *v1;
  *(v4 + 616) = v0;

  if (v0)
  {
    v2 = sub_10950;
  }

  else
  {

    v2 = sub_104A8;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_104A8()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v0[62] = v0;
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_9144(v11[67]);

    v4 = *(v11[62] + 8);

    return v4();
  }

  else
  {
    v8 = v11[70];
    v7 = v11[65];
    (*(v11[69] + 32))();
    sub_4354(v7, (v11 + 38));
    v9 = swift_task_alloc();
    v11[78] = v9;
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    sub_11810();
    v6 = swift_task_alloc();
    v11[79] = v6;
    *v6 = v11[62];
    v6[1] = sub_106F4;

    return sub_11824(v10, &type metadata for () + 8, sub_16E10, v9);
  }
}

uint64_t sub_106F4()
{
  v5 = *v1 + 16;
  *(*v1 + 496) = *v1;

  if (v0)
  {
    v2 = sub_10A10;
  }

  else
  {
    v4 = *(v5 + 504);

    sub_4530(v4);
    v2 = sub_1087C;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_1087C()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[68];
  v0[62] = v0;
  (*(v2 + 8))(v1, v3);

  v4 = *(v0[62] + 8);

  return v4();
}

uint64_t sub_10950()
{
  *(v0 + 496) = v0;

  v1 = *(*(v0 + 496) + 8);

  return v1();
}

void *sub_10A10()
{
  v2 = *(v0 + 520);
  *(v0 + 496) = v0;

  return sub_4530(v2);
}

uint64_t sub_10A70(uint64_t *a1, uint64_t a2)
{
  v71 = a1;
  v72 = a2;
  v82 = sub_16EEC;
  v84 = sub_170CC;
  v86 = sub_17118;
  v88 = sub_1172C;
  v89 = sub_17218;
  v94 = sub_16FC0;
  v98 = sub_17318;
  v100 = sub_17050;
  v102 = sub_17084;
  v104 = sub_17164;
  v106 = sub_1719C;
  v108 = sub_171D0;
  v110 = sub_17264;
  v112 = sub_1729C;
  v114 = sub_172D0;
  v117 = sub_17364;
  v132 = 0;
  v131 = 0;
  v2 = sub_23FC(&qword_644D8, &qword_51D28);
  v62 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v63 = &v40 - v62;
  v64 = 0;
  v81 = sub_50B30();
  v77 = *(v81 - 8);
  v78 = v81 - 8;
  v75 = v77;
  v76 = *(v77 + 64);
  v65 = (v76 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v64);
  v80 = &v40 - v65;
  v66 = sub_50DB0();
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  v69 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v71);
  v70 = &v40 - v69;
  v132 = v3;
  v131 = v4;
  sub_50D90();
  sub_4354(v71, v130);
  v96 = 7;
  v83 = swift_allocObject();
  memcpy((v83 + 16), v71, 0x90uLL);
  v73 = *(v77 + 16);
  v74 = v77 + 16;
  v73(v80, v72, v81);
  v79 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v97 = swift_allocObject();
  (*(v77 + 32))(v97 + v79, v80, v81);
  v121 = sub_50DA0();
  v122 = sub_51480();
  v92 = 17;
  v101 = swift_allocObject();
  v91 = 32;
  *(v101 + 16) = 32;
  v103 = swift_allocObject();
  v93 = 8;
  *(v103 + 16) = 8;
  v95 = 32;
  v5 = swift_allocObject();
  v6 = v83;
  v85 = v5;
  *(v5 + 16) = v82;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v85;
  v87 = v7;
  *(v7 + 16) = v84;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v87;
  v105 = v9;
  *(v9 + 16) = v86;
  *(v9 + 24) = v10;
  v107 = swift_allocObject();
  *(v107 + 16) = v91;
  v109 = swift_allocObject();
  *(v109 + 16) = v93;
  v11 = swift_allocObject();
  v90 = v11;
  *(v11 + 16) = v88;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v90;
  v111 = v12;
  *(v12 + 16) = v89;
  *(v12 + 24) = v13;
  v113 = swift_allocObject();
  *(v113 + 16) = v91;
  v115 = swift_allocObject();
  *(v115 + 16) = v93;
  v14 = swift_allocObject();
  v15 = v97;
  v99 = v14;
  *(v14 + 16) = v94;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v99;
  v118 = v16;
  *(v16 + 16) = v98;
  *(v16 + 24) = v17;
  v120 = sub_23FC(&qword_64648, &qword_51E60);
  v116 = sub_51650();
  v119 = v18;

  v19 = v101;
  v20 = v119;
  *v119 = v100;
  v20[1] = v19;

  v21 = v103;
  v22 = v119;
  v119[2] = v102;
  v22[3] = v21;

  v23 = v105;
  v24 = v119;
  v119[4] = v104;
  v24[5] = v23;

  v25 = v107;
  v26 = v119;
  v119[6] = v106;
  v26[7] = v25;

  v27 = v109;
  v28 = v119;
  v119[8] = v108;
  v28[9] = v27;

  v29 = v111;
  v30 = v119;
  v119[10] = v110;
  v30[11] = v29;

  v31 = v113;
  v32 = v119;
  v119[12] = v112;
  v32[13] = v31;

  v33 = v115;
  v34 = v119;
  v119[14] = v114;
  v34[15] = v33;

  v35 = v118;
  v36 = v119;
  v119[16] = v117;
  v36[17] = v35;
  sub_1489C();

  if (os_log_type_enabled(v121, v122))
  {
    v54 = sub_514F0();
    v53 = sub_23FC(&qword_64650, &unk_53930);
    v55 = sub_121D4(0, v53, v53);
    v56 = sub_121D4(3, &type metadata for Any + 8, &type metadata for Any + 8);
    v57 = v127;
    v127[0] = v54;
    v58 = &v126;
    v126 = v55;
    v59 = &v125;
    v125 = v56;
    sub_12228(2, v127);
    sub_12228(3, v57);
    v37 = v61;
    v123 = v100;
    v124 = v101;
    sub_1223C(&v123, v57, v58, v59);
    v60 = v37;
    if (v37)
    {

      __break(1u);
    }

    else
    {
      v123 = v102;
      v124 = v103;
      sub_1223C(&v123, v127, &v126, &v125);
      v51 = 0;
      v123 = v104;
      v124 = v105;
      sub_1223C(&v123, v127, &v126, &v125);
      v50 = 0;
      v123 = v106;
      v124 = v107;
      sub_1223C(&v123, v127, &v126, &v125);
      v49 = 0;
      v123 = v108;
      v124 = v109;
      sub_1223C(&v123, v127, &v126, &v125);
      v48 = 0;
      v123 = v110;
      v124 = v111;
      sub_1223C(&v123, v127, &v126, &v125);
      v47 = 0;
      v123 = v112;
      v124 = v113;
      sub_1223C(&v123, v127, &v126, &v125);
      v46 = 0;
      v123 = v114;
      v124 = v115;
      sub_1223C(&v123, v127, &v126, &v125);
      v45 = 0;
      v123 = v117;
      v124 = v118;
      sub_1223C(&v123, v127, &v126, &v125);
      v44 = 0;
      _os_log_impl(&dword_0, v121, v122, "%s.%s: Resolved deep link with response: %s", v54, 0x20u);
      sub_12288(v55, 0, v53);
      sub_12288(v56, 3, &type metadata for Any + 8);
      sub_514D0();

      v52 = v44;
    }
  }

  else
  {

    v52 = v61;
  }

  v43 = v52;
  _objc_release(v121);
  (*(v67 + 8))(v70, v66);
  v38 = *(v71 + 5);
  v41 = &v133;
  v133 = v38;
  sub_357C(&v133, &v129);
  v128 = v133;
  sub_23FC(&qword_644B8, &qword_51D08);
  sub_51140();
  v42 = v127[1];
  sub_35D4(v41);
  v73(v63, v72, v81);
  (*(v77 + 56))(v63, 0, 1, v81);
  sub_50CD0();
}

uint64_t sub_1175C(uint64_t a1)
{
  v2[1] = a1;
  v5 = sub_50B30();
  v4 = *(v5 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v6 = v2 - v3;
  (*(v4 + 16))();
  return sub_51330();
}

uint64_t sub_11824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = v4;
  v5[5] = a4;
  v5[4] = a3;
  v5[3] = a1;
  v5[2] = v5;
  return _swift_task_switch(sub_11868);
}

uint64_t sub_11868()
{
  *(v0 + 16) = v0;
  *(v0 + 56) = sub_51400();
  sub_513F0();

  return _swift_task_switch(sub_11900);
}

uint64_t sub_11900()
{
  v4 = *(v0 + 32);
  *(v0 + 16) = v0;

  v4(v1);
  v2 = *(*(v0 + 16) + 8);

  return v2();
}

uint64_t sub_11A30(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a1;
  v39 = a2;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  v40 = a6;
  v41 = "Fatal error";
  v42 = "Unexpectedly found nil while unwrapping an Optional value";
  v43 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v44 = 0;
  v57 = a6;
  v45 = (*(*(sub_23FC(&qword_64640, &qword_52260) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v48);
  v49 = &v10 - v45;

  v55 = v47;
  v56 = v48;
  sub_1592C(v46, v49);
  v50 = sub_51450();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  if ((*(v51 + 48))(v49, 1) == 1)
  {
    sub_14BA4(v49);
    v37 = 0;
  }

  else
  {
    v36 = sub_51440();
    (*(v51 + 8))(v49, v50);
    v37 = v36;
  }

  v33 = v37 | 0x1000;
  v35 = *(v48 + 16);
  v34 = *(v48 + 24);
  swift_unknownObjectRetain();

  if (v35)
  {
    v31 = v35;
    v32 = v34;
    v25 = v34;
    v26 = v35;
    swift_getObjectType();
    v27 = sub_513F0();
    v28 = v6;
    swift_unknownObjectRelease();
    v29 = v27;
    v30 = v28;
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  v23 = v30;
  v24 = v29;
  if (v39)
  {
    v21 = v38;
    v22 = v39;
    v7 = v44;
    v19 = sub_51340();
    sub_122F0(v19 + 32, &v53);
    if (v7)
    {
      __break(1u);
    }

    v18 = v53;

    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  v17 = v20;
  if (v20)
  {
    v12 = v17;
    v13 = v17;
  }

  else
  {

    v14 = v55;
    v15 = v56;

    v16 = 0;
    if (v24 != 0 || v23 != 0)
    {
      v54[0] = 0;
      v54[1] = 0;
      v54[2] = v24;
      v54[3] = v23;
      v16 = v54;
    }

    v13 = swift_task_create();
  }

  v10 = v13;
  sub_23FC(&qword_64678, &qword_52148);
  sub_12460();
  v11 = v8;

  return v11;
}

uint64_t sub_11F7C(uint64_t a1)
{
  *(v2 + 160) = v2;
  memcpy((v2 + 16), v1, 0x90uLL);
  v3 = swift_task_alloc();
  *(v5 + 168) = v3;
  *v3 = *(v5 + 160);
  v3[1] = sub_12044;

  return sub_6E24(a1);
}

uint64_t sub_12044()
{
  v2 = *v1;
  *(v2 + 160) = *v1;
  v5 = v2 + 160;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t sub_121D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return sub_514F0();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_12228(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_12288(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    sub_514E0();
    sub_514D0();
  }
}

uint64_t sub_122F0@<X0>(uint64_t a1@<X0>, uint64_t *a7@<X8>)
{
  if (!a1)
  {
    sub_51610("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "_Concurrency/arm64e-apple-ios.private.swiftinterface", 52, 2, 4177, 0);
    __break(1u);
  }

  result = swift_task_create();
  *a7 = result;
  return result;
}

uint64_t sub_12474@<X0>(uint64_t a1@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (!a1)
  {
    sub_51610("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "_Concurrency/arm64e-apple-ios.private.swiftinterface", 52, 2, 4058, 0);
    __break(1u);
  }

  v8 = *a5;
  v9 = a5[1];

  v10 = swift_allocObject();
  v10[2] = a6;
  v10[3] = v8;
  v10[4] = v9;
  result = swift_task_create();
  *a7 = result;
  return result;
}

uint64_t sub_12634(uint64_t a1, int *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_12748;

  return v6(a1);
}

uint64_t sub_12748()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

void *sub_128DC(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = (a4)(a1, a2);
  sub_12978(v4, v5, a3);
  v8 = *a1;

  sub_51510();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t sub_12978(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = sub_12B1C(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_17410(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_17370(v12);
  }

  else
  {
    v13[3] = &type metadata for _StringGuts;
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_17410(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_17370(v13);
  }

  return v11;
}

void *sub_12B1C(void *result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          sub_51610("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "Swift/StringTesting.swift", 25, 2, 159, 0);
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_12ED4(v22, v17, v16);
        sub_51520();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_13050(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = sub_515E0();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = sub_51610("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "Swift/StringTesting.swift", 25, 2, 173, 0);
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *sub_12ED4(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = sub_51630();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    sub_51630();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_13050(uint64_t a1, uint64_t a2)
{
  v7 = sub_1310C(a1, a2);
  sub_23FC(&qword_64680, qword_52EA0);
  inited = swift_initStackObject();
  sub_1391C(inited, 1);
  *v3 = 0;
  sub_13968();
  sub_1399C(v4);

  v8 = sub_13D44(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *sub_1310C(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_51370();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_14264();
  }

  v10 = sub_13D5C(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_51630();
    __break(1u);
    return sub_14264();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_13EA0(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_515E0();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_13EA0(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_515D0();
  if (v2)
  {
LABEL_29:
    sub_51610("Fatal error", 11, 2, "Insufficient space allocated to copy string contents", 52, 2, "Swift/StringUTF8View.swift", 26, 2, 531, 0);
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_51610("Fatal error", 11, 2, "invalid Collection: less than 'count' elements in collection", 60, 2, "Swift/ContiguousArrayBuffer.swift", 33, 2, 1145, 0);
    __break(1u);
  }

  sub_174A8(v17);
  return v10;
}

uint64_t sub_1391C(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void sub_1399C(uint64_t a1)
{
  v18 = sub_13D44(a1);
  v2 = sub_13D44(*v1);
  v19 = v2 + v18;
  if (__OFADD__(v2, v18))
  {
    goto LABEL_31;
  }

  v14 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v19 > *(*v17 + 24) >> 1)
  {
    if (*(*v17 + 16) < v19)
    {
      v13 = v19;
    }

    else
    {
      v13 = *(*v17 + 16);
    }

    v12 = *v17;

    *v17 = sub_142A0(isUniquelyReferenced_nonNull_native, v13, 1, v12);
  }

  v4 = *(*v17 + 16);
  v10 = (*v17 + 32 + v4);
  v5 = *(*v17 + 24) >> 1;
  v11 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_32;
  }

  if (v11 < 0)
  {
LABEL_30:
    sub_51630();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_1440C(a1))
  {
LABEL_21:

    if (v18 <= 0)
    {
      goto LABEL_28;
    }

    sub_51610("Fatal error", 11, 2, "newElements.underestimatedCount was an overestimate", 51, 2, "Swift/Array.swift", 17, 2, 1259, 0);
    __break(1u);
    goto LABEL_30;
  }

  if (v11 < v18)
  {
    sub_51610("Fatal error", 11, 2, "Insufficient space allocated to copy array contents", 51, 2, "Swift/Array.swift", 17, 2, 1778, 0);
    __break(1u);
    goto LABEL_21;
  }

  sub_13EA0((a1 + 32), v18, v10);

  swift_unknownObjectRelease();
  if (v18 <= 0)
  {
    goto LABEL_28;
  }

  v7 = *(*v17 + 16);
  v9 = v7 + v18;
  if (!__OFADD__(v7, v18))
  {
    *(*v17 + 16) = v9;
LABEL_28:
    sub_14294();
    return;
  }

LABEL_33:
  __break(1u);
}

void *sub_13D5C(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (v6)
  {
    sub_23FC(&qword_64680, qword_52EA0);
    v5 = swift_allocObject();

    if (sub_17474())
    {
      v3 = sub_17480(v5) - 32;
      v5[2] = a1;
      v5[3] = 2 * v3;
    }

    else
    {
      v5[2] = a1;
      v5[3] = 2 * v6;
    }

    return v5;
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }
}

void *sub_13EA0(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_51630();
    __break(1u);
  }

  result = sub_51630();
  __break(1u);
  return result;
}

unint64_t sub_13FF0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = sub_51390();
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_51610("Fatal error", 11, 2, "String index is out of bounds", 29, 2, "Swift/StringUTF8View.swift", 26, 2, 167, 0);
    __break(1u);
  }

  v5 = sub_513B0();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

char *sub_142A0(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_13D5C(v4, v6);
  if (v7)
  {
    sub_14414((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    sub_13EA0((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_14414(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_51630();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **sub_1453C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_148E0()
{
  swift_unknownObjectRelease();

  sub_3238(*(v0 + 96));

  return swift_deallocObject();
}

uint64_t sub_149A0(int a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  *v6 = v1[2];
  *v7 = v1[3];
  v8 = v1[22];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_14A7C;

  return sub_FF60(a1, v6[0], v7[0], v1 + 4, v8);
}

uint64_t sub_14A7C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_14BA4(uint64_t a1)
{
  v3 = sub_51450();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_14C4C()
{
  v4 = sub_50A70();
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = (((v3 + *(v2 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v4);

  sub_3238(*(v0 + v5 + 64));

  return swift_deallocObject();
}

uint64_t sub_14E2C(uint64_t a1)
{
  v7 = v2;
  *(v2 + 16) = v2;
  v6 = *(sub_50A70() - 8);
  v11 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v3 = (v11 + *(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v12 = *(v1 + v3);
  v4 = swift_task_alloc();
  *(v7 + 24) = v4;
  *v4 = *(v7 + 16);
  v4[1] = sub_14FA0;

  return sub_BE3C(a1, v8, v9, v10, v1 + v11, v12, v1 + v13);
}

uint64_t sub_14FA0()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_150C8(uint64_t a1)
{
  v1 = sub_50A20();
  (*(*(v1 - 8) + 8))(a1);
  sub_23FC(&qword_64608, &qword_51DE8);

  return a1;
}

uint64_t sub_15160()
{

  sub_3238(*(v0 + 80));

  return swift_deallocObject();
}

uint64_t sub_15224(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_15258(uint64_t a1)
{
  v1 = sub_23FC(&qword_64658, &unk_51E90);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(sub_23FC(&qword_64600, &qword_51DE0) + 36);
  if (*(a1 + v4))
  {
  }

  if (*(a1 + v4 + 16))
  {
  }

  return a1;
}

uint64_t sub_15338(uint64_t a1, uint64_t a2)
{
  v2 = sub_23FC(&qword_64658, &unk_51E90);
  (*(*(v2 - 8) + 16))(a2, a1);
  v13 = *(sub_23FC(&qword_64600, &qword_51DE0) + 36);
  if (*(a1 + v13))
  {
    v9 = *(a1 + v13);
    v10 = *(a1 + v13 + 8);

    v3 = (a2 + v13);
    *v3 = v9;
    v3[1] = v10;
  }

  else
  {
    *(a2 + v13) = *(a1 + v13);
  }

  v7 = a2 + v13;
  v8 = a1 + v13;
  if (*(a1 + v13 + 16))
  {
    v5 = *(v8 + 16);
    v6 = *(a1 + v13 + 24);

    *(v7 + 16) = v5;
    *(a2 + v13 + 24) = v6;
  }

  else
  {
    *(v7 + 16) = *(v8 + 16);
  }

  return a2;
}

uint64_t sub_15534(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_1564C(void *result, int a2, int a3)
{
  v3 = result + 18;
  if (a2 < 0)
  {
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 + 0x80000000;
    result[17] = 0;
    result[16] = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *result = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_15854()
{
  sub_6320(&qword_64528, &qword_51D78);
  sub_6320(&qword_64520, &qword_51D70);
  sub_BBF0();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void *sub_1592C(const void *a1, void *a2)
{
  v6 = sub_51450();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_23FC(&qword_64640, &qword_52260);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_15A9C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_15B90;

  return sub_12634(a1, v6);
}

uint64_t sub_15B90()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_15D00(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_15DF4;

  return sub_12634(a1, v6);
}

uint64_t sub_15DF4()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_15F1C()
{
  v2 = *(sub_50A70() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_15FE8()
{
  v1 = *(sub_50A70() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_EF8C(v2);
}

uint64_t sub_1614C()
{
  v2 = *(sub_50A70() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_16218()
{
  v1 = *(sub_50A70() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_F040(v2);
}

unint64_t sub_1637C()
{
  v2 = qword_64668;
  if (!qword_64668)
  {
    sub_50A70();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64668);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_163FC()
{
  v2 = *(sub_50A40() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_164C8()
{
  v1 = *(sub_50A40() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_F0F4(v2);
}

uint64_t sub_1652C()
{
  v2 = *(sub_50A70() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_165F8()
{
  v1 = *(sub_50A70() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_F1A8(v2);
}

unint64_t sub_1685C()
{
  v2 = qword_64670;
  if (!qword_64670)
  {
    sub_50AB0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64670);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_168DC()
{

  sub_3238(*(v0 + 80));

  return swift_deallocObject();
}

uint64_t sub_16994()
{
  v2 = *(sub_50A40() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_16A60()
{
  v1 = *(sub_50A40() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_F29C(v2);
}

uint64_t sub_16E3C()
{

  sub_3238(*(v0 + 80));

  return swift_deallocObject();
}

uint64_t sub_16EF4()
{
  v2 = *(sub_50B30() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_16FC0()
{
  v1 = *(sub_50B30() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1175C(v2);
}

uint64_t sub_17370(void *a1)
{
  v2 = a1[3];
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t sub_17410(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

void *sub_174D4(const void *a1, void *a2)
{
  v6 = sub_50B30();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_23FC(&qword_644D8, &qword_51D28);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_175FC(const void *a1, void *a2)
{
  v6 = sub_50B30();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_23FC(&qword_644D8, &qword_51D28);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_17724(uint64_t a1)
{
  v1 = sub_23FC(&qword_645F0, &qword_51DD8);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    sub_23FC(&qword_64688, &qword_52160);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v3 = sub_23FC(&qword_64658, &unk_51E90);
      (*(*(v3 - 8) + 8))(a1);
      v5 = (a1 + *(sub_23FC(&qword_64600, &qword_51DE0) + 36));
      if (*v5)
      {
      }

      if (v5[2])
      {
      }
    }

    else
    {
      v2 = sub_23FC(&qword_64658, &unk_51E90);
      (*(*(v2 - 8) + 8))(a1);
      v6 = (a1 + *(sub_23FC(&qword_64600, &qword_51DE0) + 36));
      if (*v6)
      {
      }

      if (v6[2])
      {
      }
    }
  }

  return a1;
}

char *sub_17918(char *a1, char *a2)
{
  v10 = sub_23FC(&qword_645F0, &qword_51DD8);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(a1, 1))
  {
    v6 = sub_23FC(&qword_645D8, &qword_51DD0);
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  else
  {
    sub_23FC(&qword_64688, &qword_52160);
    swift_getEnumCaseMultiPayload();
    v2 = sub_23FC(&qword_64658, &unk_51E90);
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = sub_23FC(&qword_64600, &qword_51DE0);
    v4 = &a2[*(v3 + 36)];
    v5 = &a1[*(v3 + 36)];
    *v4 = *v5;
    *(v4 + 1) = *(v5 + 1);
    swift_storeEnumTagMultiPayload();
    (*(v11 + 56))(a2, 0, 1, v10);
  }

  return a2;
}

char *sub_17B78(char *a1, char *a2)
{
  v22 = sub_23FC(&qword_645F0, &qword_51DD8);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(a1, 1))
  {
    v6 = sub_23FC(&qword_645D8, &qword_51DD0);
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  else
  {
    sub_23FC(&qword_64688, &qword_52160);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = sub_23FC(&qword_64658, &unk_51E90);
      (*(*(v4 - 8) + 16))(a2, a1);
      v5 = sub_23FC(&qword_64600, &qword_51DE0);
      v12 = &a2[*(v5 + 36)];
      v13 = &a1[*(v5 + 36)];
      if (*v13)
      {
        v10 = *v13;
        v11 = *(v13 + 1);

        *v12 = v10;
        *(v12 + 1) = v11;
      }

      else
      {
        *v12 = *v13;
      }

      if (*(v13 + 2))
      {
        v8 = *(v13 + 2);
        v9 = *(v13 + 3);

        *(v12 + 2) = v8;
        *(v12 + 3) = v9;
      }

      else
      {
        *(v12 + 1) = *(v13 + 1);
      }
    }

    else
    {
      v2 = sub_23FC(&qword_64658, &unk_51E90);
      (*(*(v2 - 8) + 16))(a2, a1);
      v3 = sub_23FC(&qword_64600, &qword_51DE0);
      v18 = &a2[*(v3 + 36)];
      v19 = &a1[*(v3 + 36)];
      if (*v19)
      {
        v16 = *v19;
        v17 = *(v19 + 1);

        *v18 = v16;
        *(v18 + 1) = v17;
      }

      else
      {
        *v18 = *v19;
      }

      if (*(v19 + 2))
      {
        v14 = *(v19 + 2);
        v15 = *(v19 + 3);

        *(v18 + 2) = v14;
        *(v18 + 3) = v15;
      }

      else
      {
        *(v18 + 1) = *(v19 + 1);
      }
    }

    swift_storeEnumTagMultiPayload();
    (*(v23 + 56))(a2, 0, 1, v22);
  }

  return a2;
}

void *sub_17F10(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t sub_18020(uint64_t a1)
{
  v1 = sub_50A90();
  (*(*(v1 - 8) + 8))(a1);
  sub_23FC(&qword_645C0, &qword_51DC8);

  return a1;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_180B8(void *a1)
{
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_18108(void *a1)
{
}

unint64_t sub_181A0()
{
  v2 = qword_646A0;
  if (!qword_646A0)
  {
    sub_6320(&qword_64698, &qword_52170);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_646A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_18228()
{
  v2 = qword_646B0;
  if (!qword_646B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_646B0);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_182A0(void *a1)
{
}

unint64_t sub_182FC()
{
  v2 = qword_646B8;
  if (!qword_646B8)
  {
    sub_50C50();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_646B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1837C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  *a2 = v3;
  *(a2 + 8) = v4 & 1;
  v5 = a1[2];
  v6 = *(a1 + 24);

  *(a2 + 16) = v5;
  *(a2 + 24) = v6 & 1;
  v7 = a1[4];
  v8 = *(a1 + 40);

  *(a2 + 32) = v7;
  *(a2 + 40) = v8 & 1;
  v10 = a1[6];
  v11 = *(a1 + 56);

  *(a2 + 48) = v10;
  *(a2 + 56) = v11 & 1;
  *(a2 + 64) = *(a1 + 64);
  v13 = a1[9];

  result = a2;
  *(a2 + 72) = v13;
  return result;
}

void *sub_184A8(void *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_184E0()
{

  sub_23FC(&qword_646C0, &qword_53300);
  sub_50DF0();

  return v1;
}

uint64_t sub_1856C()
{
  swift_getKeyPath();
  sub_50E00();
  return v1;
}

uint64_t sub_185A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v10 = a2;
  v8[1] = a1;
  v13 = sub_50F10();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v9 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v14 = v8 - v9;
  (*(v11 + 16))(v8 - v9);
  v2 = sub_50E90();
  v3 = v11;
  v4 = v13;
  v5 = v2;
  v6 = v14;
  *v10 = v5;
  return (*(v3 + 8))(v6, v4);
}

uint64_t sub_186DC()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_18720(uint64_t a1, char a2)
{

  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

uint64_t sub_187A0()
{

  sub_23FC(&qword_646C8, &qword_53340);
  sub_50DF0();

  return v1;
}

uint64_t sub_1882C()
{
  swift_getKeyPath();
  sub_50E00();
  return v1;
}

uint64_t sub_18868()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_188AC(uint64_t a1, char a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
}

uint64_t sub_1892C()
{

  sub_23FC(&qword_646D0, &qword_52220);
  sub_50DF0();

  return v1;
}

uint64_t sub_189B8()
{
  swift_getKeyPath();
  sub_50E00();
  return v1;
}

uint64_t sub_189F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v10 = a2;
  v8[1] = a1;
  v13 = sub_50F10();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v9 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v14 = v8 - v9;
  (*(v11 + 16))(v8 - v9);
  v2 = sub_50ED0();
  v3 = v11;
  v4 = v13;
  v5 = v2;
  v6 = v14;
  *v10 = v5;
  return (*(v3 + 8))(v6, v4);
}

uint64_t sub_18B28()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t sub_18B6C(uint64_t a1, char a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2 & 1;
}

uint64_t AutomaticUpdatesView.mobileStatefulManager.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v6 = v0;
  memcpy(v5, __dst, sizeof(v5));
  sub_184E0();
  v3 = sub_50B90();

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v2 = v4;
  }

  else
  {
    _objc_release(v3);
    v2 = 0;
  }

  if (v2)
  {
    return v2;
  }

  sub_51350("The AutomaticUpdatesView except to have a mobile stateful manager", 0x41uLL, 1);
  result = sub_51620();
  __break(1u);
  return result;
}

uint64_t sub_18D58()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_18F68(__dst, v7);
  sub_51410();
  v2 = sub_51400();
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = &protocol witness table for MainActor;
  memcpy(v4 + 4, __dst, 0x40uLL);
  sub_18F68(__dst, v6);
  v3 = sub_51400();
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = &protocol witness table for MainActor;
  memcpy(v5 + 4, __dst, 0x40uLL);
  sub_511B0();
  return v8;
}

uint64_t sub_18EC0(int a1, int a2, void *__src)
{
  v6 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  v4 = sub_187A0();
  swift_getKeyPath();
  (*(*v4 + 200))();
}

uint64_t sub_18F68(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  *a2 = v3;
  *(a2 + 8) = v4 & 1;
  v5 = a1[2];
  v6 = *(a1 + 24);

  *(a2 + 16) = v5;
  *(a2 + 24) = v6 & 1;
  v8 = a1[4];
  v9 = *(a1 + 40);

  *(a2 + 32) = v8;
  *(a2 + 40) = v9 & 1;
  *(a2 + 48) = *(a1 + 48);
  v11 = a1[7];

  result = a2;
  *(a2 + 56) = v11;
  return result;
}

uint64_t sub_1905C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_190CC(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  *a1;
  *a2 = [v2 automaticUpdateEnabled];
  _objc_release(v2);
}

void sub_19138(char *a1, id *a2)
{
  v3 = *a1;
  v2 = *a2;
  *a2;
  [v2 setAutomaticUpdateEnabled:v3 & 1];
  _objc_release(v2);
}

__int128 *sub_191A4(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v34 = a1;
  v33 = a4;
  v42 = sub_40D64;
  v44 = sub_40E18;
  v46 = sub_40E64;
  v50 = sub_40EB0;
  v52 = sub_40D9C;
  v54 = sub_40DD0;
  v57 = sub_40EFC;
  v70 = 0;
  v69 = 0;
  v32 = 0;
  v35 = sub_50DB0();
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = v22 - v38;
  v40 = *__chkstk_darwin(v34);
  v70 = v40 & 1;
  v69 = v4;
  sub_50D90();
  v41 = 17;
  v48 = 7;
  v43 = swift_allocObject();
  *(v43 + 16) = v40;
  v61 = sub_50DA0();
  v62 = sub_51480();
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  v55 = swift_allocObject();
  *(v55 + 16) = 4;
  v47 = 32;
  v5 = swift_allocObject();
  v6 = v43;
  v45 = v5;
  *(v5 + 16) = v42;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v45;
  v49 = v7;
  *(v7 + 16) = v44;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v49;
  v51 = v9;
  *(v9 + 16) = v46;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v51;
  v58 = v11;
  *(v11 + 16) = v50;
  *(v11 + 24) = v12;
  v60 = sub_23FC(&qword_64648, &qword_51E60);
  v56 = sub_51650();
  v59 = v13;

  v14 = v53;
  v15 = v59;
  *v59 = v52;
  v15[1] = v14;

  v16 = v55;
  v17 = v59;
  v59[2] = v54;
  v17[3] = v16;

  v18 = v58;
  v19 = v59;
  v59[4] = v57;
  v19[5] = v18;
  sub_1489C();

  if (os_log_type_enabled(v61, v62))
  {
    v20 = v32;
    v25 = sub_514F0();
    v23 = sub_23FC(&qword_64650, &unk_53930);
    v24 = 0;
    v26 = sub_121D4(0, v23, v23);
    v27 = sub_121D4(v24, &type metadata for Any + 8, &type metadata for Any + 8);
    v28 = &v67;
    v67 = v25;
    v29 = &v66;
    v66 = v26;
    v30 = &v65;
    v65 = v27;
    sub_12228(0, &v67);
    sub_12228(1, v28);
    v63 = v52;
    v64 = v53;
    sub_1223C(&v63, v28, v29, v30);
    v31 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v63 = v54;
      v64 = v55;
      sub_1223C(&v63, &v67, &v66, &v65);
      v22[1] = 0;
      v63 = v57;
      v64 = v58;
      sub_1223C(&v63, &v67, &v66, &v65);
      _os_log_impl(&dword_0, v61, v62, "User Action: Sets %{BOOL}d for automatic Update in AutomaticUpdatesView", v25, 8u);
      v22[0] = 0;
      sub_12288(v26, 0, v23);
      sub_12288(v27, v22[0], &type metadata for Any + 8);
      sub_514D0();
    }
  }

  else
  {
  }

  _objc_release(v61);
  (*(v36 + 8))(v39, v35);
  memcpy(__dst, v33, sizeof(__dst));
  return sub_19918(v40 & 1);
}

uint64_t sub_198A0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

__int128 *sub_19918(unsigned int a1)
{
  v197 = a1;
  v160 = sub_32D50;
  v161 = sub_35E40;
  v162 = sub_35E8C;
  v163 = sub_32D58;
  v164 = sub_35F8C;
  v165 = sub_32DBC;
  v166 = sub_364E4;
  v167 = sub_36558;
  v168 = sub_365E0;
  v169 = sub_35DC4;
  v170 = sub_35DF8;
  v171 = sub_35ED8;
  v172 = sub_35F10;
  v173 = sub_35F44;
  v174 = sub_35FD8;
  v175 = sub_36010;
  v176 = sub_36044;
  v177 = sub_3662C;
  v178 = sub_36770;
  v179 = sub_36858;
  v180 = sub_368A4;
  v181 = sub_32B74;
  v182 = sub_369A4;
  v183 = sub_367A4;
  v184 = sub_36AA4;
  v185 = sub_36AF0;
  v186 = sub_36B3C;
  v187 = sub_367DC;
  v188 = sub_36810;
  v189 = sub_368F0;
  v190 = sub_36928;
  v191 = sub_3695C;
  v192 = sub_369F0;
  v193 = sub_36A28;
  v194 = sub_36A5C;
  v195 = sub_36B88;
  v224 = 0;
  v196 = 0;
  v198 = sub_50DB0();
  v199 = *(v198 - 8);
  v200 = v198 - 8;
  v201 = (*(v199 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v197);
  v202 = v80 - v201;
  v203 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v1);
  v204 = v80 - v203;
  v224 = v3 & 1;
  v205 = __dst;
  v206 = 64;
  memcpy(__dst, v4, sizeof(__dst));
  memcpy(v223, __dst, sizeof(v223));
  v207 = sub_184E0();
  v208 = sub_50B40();

  if (v208)
  {
    sub_50D90();
    v132 = __dst;
    sub_18F68(__dst, &v215);
    v143 = 7;
    v133 = swift_allocObject();
    memcpy((v133 + 16), v132, 0x40uLL);
    v139 = 17;
    v140 = swift_allocObject();
    *(v140 + 16) = v197;
    v158 = sub_50DA0();
    v159 = sub_51480();
    v146 = swift_allocObject();
    v136 = 32;
    *(v146 + 16) = 32;
    v147 = swift_allocObject();
    v137 = 8;
    *(v147 + 16) = 8;
    v142 = 32;
    v5 = swift_allocObject();
    v6 = v133;
    v134 = v5;
    *(v5 + 16) = v178;
    *(v5 + 24) = v6;
    v7 = swift_allocObject();
    v8 = v134;
    v135 = v7;
    *(v7 + 16) = v179;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v135;
    v148 = v9;
    *(v9 + 16) = v180;
    *(v9 + 24) = v10;
    v149 = swift_allocObject();
    *(v149 + 16) = v136;
    v150 = swift_allocObject();
    *(v150 + 16) = v137;
    v11 = swift_allocObject();
    v138 = v11;
    *(v11 + 16) = v181;
    *(v11 + 24) = 0;
    v12 = swift_allocObject();
    v13 = v138;
    v151 = v12;
    *(v12 + 16) = v182;
    *(v12 + 24) = v13;
    v152 = swift_allocObject();
    *(v152 + 16) = 0;
    v153 = swift_allocObject();
    *(v153 + 16) = 4;
    v14 = swift_allocObject();
    v15 = v140;
    v141 = v14;
    *(v14 + 16) = v183;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v141;
    v144 = v16;
    *(v16 + 16) = v184;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v144;
    v145 = v18;
    *(v18 + 16) = v185;
    *(v18 + 24) = v19;
    v20 = swift_allocObject();
    v21 = v145;
    v155 = v20;
    *(v20 + 16) = v186;
    *(v20 + 24) = v21;
    v157 = sub_23FC(&qword_64648, &qword_51E60);
    v154 = sub_51650();
    v156 = v22;

    v23 = v146;
    v24 = v156;
    *v156 = v187;
    v24[1] = v23;

    v25 = v147;
    v26 = v156;
    v156[2] = v188;
    v26[3] = v25;

    v27 = v148;
    v28 = v156;
    v156[4] = v189;
    v28[5] = v27;

    v29 = v149;
    v30 = v156;
    v156[6] = v190;
    v30[7] = v29;

    v31 = v150;
    v32 = v156;
    v156[8] = v191;
    v32[9] = v31;

    v33 = v151;
    v34 = v156;
    v156[10] = v192;
    v34[11] = v33;

    v35 = v152;
    v36 = v156;
    v156[12] = v193;
    v36[13] = v35;

    v37 = v153;
    v38 = v156;
    v156[14] = v194;
    v38[15] = v37;

    v39 = v155;
    v40 = v156;
    v156[16] = v195;
    v40[17] = v39;
    sub_1489C();

    if (os_log_type_enabled(v158, v159))
    {
      v41 = v196;
      v125 = sub_514F0();
      v124 = sub_23FC(&qword_64650, &unk_53930);
      v126 = sub_121D4(0, v124, v124);
      v127 = sub_121D4(2, &type metadata for Any + 8, &type metadata for Any + 8);
      v128 = &v213;
      v213 = v125;
      v129 = &v212;
      v212 = v126;
      v130 = &v211;
      v211 = v127;
      sub_12228(2, &v213);
      sub_12228(3, v128);
      v209 = v187;
      v210 = v146;
      sub_1223C(&v209, v128, v129, v130);
      v131 = v41;
      if (v41)
      {

        __break(1u);
      }

      else
      {
        v209 = v188;
        v210 = v147;
        sub_1223C(&v209, &v213, &v212, &v211);
        v123 = 0;
        v209 = v189;
        v210 = v148;
        sub_1223C(&v209, &v213, &v212, &v211);
        v122 = 0;
        v209 = v190;
        v210 = v149;
        sub_1223C(&v209, &v213, &v212, &v211);
        v121 = 0;
        v209 = v191;
        v210 = v150;
        sub_1223C(&v209, &v213, &v212, &v211);
        v120 = 0;
        v209 = v192;
        v210 = v151;
        sub_1223C(&v209, &v213, &v212, &v211);
        v119 = 0;
        v209 = v193;
        v210 = v152;
        sub_1223C(&v209, &v213, &v212, &v211);
        v118 = 0;
        v209 = v194;
        v210 = v153;
        sub_1223C(&v209, &v213, &v212, &v211);
        v117 = 0;
        v209 = v195;
        v210 = v155;
        sub_1223C(&v209, &v213, &v212, &v211);
        _os_log_impl(&dword_0, v158, v159, "%s.%s: Toggeled automatic update enabled while targetted update is scheduled: %{BOOL}d", v125, 0x1Cu);
        sub_12288(v126, 0, v124);
        sub_12288(v127, 2, &type metadata for Any + 8);
        sub_514D0();
      }
    }

    else
    {
    }

    _objc_release(v158);
    (*(v199 + 8))(v204, v198);
    memcpy(v214, __dst, sizeof(v214));
    return sub_32BAC(v197 & 1);
  }

  else
  {
    sub_50D90();
    v89 = __dst;
    sub_18F68(__dst, v222);
    v100 = 7;
    v90 = swift_allocObject();
    memcpy((v90 + 16), v89, 0x40uLL);
    v96 = 17;
    v97 = swift_allocObject();
    *(v97 + 16) = v197;
    v115 = sub_50DA0();
    v116 = sub_51480();
    v103 = swift_allocObject();
    v93 = 32;
    *(v103 + 16) = 32;
    v104 = swift_allocObject();
    v94 = 8;
    *(v104 + 16) = 8;
    v99 = 32;
    v43 = swift_allocObject();
    v44 = v90;
    v91 = v43;
    *(v43 + 16) = v160;
    *(v43 + 24) = v44;
    v45 = swift_allocObject();
    v46 = v91;
    v92 = v45;
    *(v45 + 16) = v161;
    *(v45 + 24) = v46;
    v47 = swift_allocObject();
    v48 = v92;
    v105 = v47;
    *(v47 + 16) = v162;
    *(v47 + 24) = v48;
    v106 = swift_allocObject();
    *(v106 + 16) = v93;
    v107 = swift_allocObject();
    *(v107 + 16) = v94;
    v49 = swift_allocObject();
    v95 = v49;
    *(v49 + 16) = v163;
    *(v49 + 24) = 0;
    v50 = swift_allocObject();
    v51 = v95;
    v108 = v50;
    *(v50 + 16) = v164;
    *(v50 + 24) = v51;
    v109 = swift_allocObject();
    *(v109 + 16) = 0;
    v110 = swift_allocObject();
    *(v110 + 16) = 4;
    v52 = swift_allocObject();
    v53 = v97;
    v98 = v52;
    *(v52 + 16) = v165;
    *(v52 + 24) = v53;
    v54 = swift_allocObject();
    v55 = v98;
    v101 = v54;
    *(v54 + 16) = v166;
    *(v54 + 24) = v55;
    v56 = swift_allocObject();
    v57 = v101;
    v102 = v56;
    *(v56 + 16) = v167;
    *(v56 + 24) = v57;
    v58 = swift_allocObject();
    v59 = v102;
    v112 = v58;
    *(v58 + 16) = v168;
    *(v58 + 24) = v59;
    v114 = sub_23FC(&qword_64648, &qword_51E60);
    v111 = sub_51650();
    v113 = v60;

    v61 = v103;
    v62 = v113;
    *v113 = v169;
    v62[1] = v61;

    v63 = v104;
    v64 = v113;
    v113[2] = v170;
    v64[3] = v63;

    v65 = v105;
    v66 = v113;
    v113[4] = v171;
    v66[5] = v65;

    v67 = v106;
    v68 = v113;
    v113[6] = v172;
    v68[7] = v67;

    v69 = v107;
    v70 = v113;
    v113[8] = v173;
    v70[9] = v69;

    v71 = v108;
    v72 = v113;
    v113[10] = v174;
    v72[11] = v71;

    v73 = v109;
    v74 = v113;
    v113[12] = v175;
    v74[13] = v73;

    v75 = v110;
    v76 = v113;
    v113[14] = v176;
    v76[15] = v75;

    v77 = v112;
    v78 = v113;
    v113[16] = v177;
    v78[17] = v77;
    sub_1489C();

    if (os_log_type_enabled(v115, v116))
    {
      v79 = v196;
      v82 = sub_514F0();
      v81 = sub_23FC(&qword_64650, &unk_53930);
      v83 = sub_121D4(0, v81, v81);
      v84 = sub_121D4(2, &type metadata for Any + 8, &type metadata for Any + 8);
      v85 = &v220;
      v220 = v82;
      v86 = &v219;
      v219 = v83;
      v87 = &v218;
      v218 = v84;
      sub_12228(2, &v220);
      sub_12228(3, v85);
      v216 = v169;
      v217 = v103;
      sub_1223C(&v216, v85, v86, v87);
      v88 = v79;
      if (v79)
      {

        __break(1u);
      }

      else
      {
        v216 = v170;
        v217 = v104;
        sub_1223C(&v216, &v220, &v219, &v218);
        v80[6] = 0;
        v216 = v171;
        v217 = v105;
        sub_1223C(&v216, &v220, &v219, &v218);
        v80[5] = 0;
        v216 = v172;
        v217 = v106;
        sub_1223C(&v216, &v220, &v219, &v218);
        v80[4] = 0;
        v216 = v173;
        v217 = v107;
        sub_1223C(&v216, &v220, &v219, &v218);
        v80[3] = 0;
        v216 = v174;
        v217 = v108;
        sub_1223C(&v216, &v220, &v219, &v218);
        v80[2] = 0;
        v216 = v175;
        v217 = v109;
        sub_1223C(&v216, &v220, &v219, &v218);
        v80[1] = 0;
        v216 = v176;
        v217 = v110;
        sub_1223C(&v216, &v220, &v219, &v218);
        v80[0] = 0;
        v216 = v177;
        v217 = v112;
        sub_1223C(&v216, &v220, &v219, &v218);
        _os_log_impl(&dword_0, v115, v116, "%s.%s: Toggeled automatic update enabled while targetted update is not scheduled: %{BOOL}d", v82, 0x1Cu);
        sub_12288(v83, 0, v81);
        sub_12288(v84, 2, &type metadata for Any + 8);
        sub_514D0();
      }
    }

    else
    {
    }

    _objc_release(v115);
    (*(v199 + 8))(v202, v198);
    memcpy(v221, __dst, sizeof(v221));
    return sub_32DC8(v197 & 1);
  }
}

uint64_t sub_1AEF8()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_18F68(__dst, v7);
  sub_51410();
  v2 = sub_51400();
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = &protocol witness table for MainActor;
  memcpy(v4 + 4, __dst, 0x40uLL);
  sub_18F68(__dst, v6);
  v3 = sub_51400();
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = &protocol witness table for MainActor;
  memcpy(v5 + 4, __dst, 0x40uLL);
  sub_511B0();
  return v8;
}

uint64_t sub_1B060(int a1, int a2, void *__src)
{
  v6 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  v4 = sub_187A0();
  swift_getKeyPath();
  (*(*v4 + 200))();
}

void sub_1B108(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  *a1;
  *a2 = [v2 autoInstallSecurityResponse];
  _objc_release(v2);
}

void sub_1B174(char *a1, id *a2)
{
  v3 = *a1;
  v2 = *a2;
  *a2;
  [v2 setAutoInstallSecurityResponse:v3 & 1];
  _objc_release(v2);
}

__int128 *sub_1B1E0(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v34 = a1;
  v33 = a4;
  v42 = sub_40AC8;
  v44 = sub_40B7C;
  v46 = sub_40BC8;
  v50 = sub_40C14;
  v52 = sub_40B00;
  v54 = sub_40B34;
  v57 = sub_40C60;
  v70 = 0;
  v69 = 0;
  v32 = 0;
  v35 = sub_50DB0();
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = v22 - v38;
  v40 = *__chkstk_darwin(v34);
  v70 = v40 & 1;
  v69 = v4;
  sub_50D90();
  v41 = 17;
  v48 = 7;
  v43 = swift_allocObject();
  *(v43 + 16) = v40;
  v61 = sub_50DA0();
  v62 = sub_51480();
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  v55 = swift_allocObject();
  *(v55 + 16) = 4;
  v47 = 32;
  v5 = swift_allocObject();
  v6 = v43;
  v45 = v5;
  *(v5 + 16) = v42;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v45;
  v49 = v7;
  *(v7 + 16) = v44;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v49;
  v51 = v9;
  *(v9 + 16) = v46;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v51;
  v58 = v11;
  *(v11 + 16) = v50;
  *(v11 + 24) = v12;
  v60 = sub_23FC(&qword_64648, &qword_51E60);
  v56 = sub_51650();
  v59 = v13;

  v14 = v53;
  v15 = v59;
  *v59 = v52;
  v15[1] = v14;

  v16 = v55;
  v17 = v59;
  v59[2] = v54;
  v17[3] = v16;

  v18 = v58;
  v19 = v59;
  v59[4] = v57;
  v19[5] = v18;
  sub_1489C();

  if (os_log_type_enabled(v61, v62))
  {
    v20 = v32;
    v25 = sub_514F0();
    v23 = sub_23FC(&qword_64650, &unk_53930);
    v24 = 0;
    v26 = sub_121D4(0, v23, v23);
    v27 = sub_121D4(v24, &type metadata for Any + 8, &type metadata for Any + 8);
    v28 = &v67;
    v67 = v25;
    v29 = &v66;
    v66 = v26;
    v30 = &v65;
    v65 = v27;
    sub_12228(0, &v67);
    sub_12228(1, v28);
    v63 = v52;
    v64 = v53;
    sub_1223C(&v63, v28, v29, v30);
    v31 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v63 = v54;
      v64 = v55;
      sub_1223C(&v63, &v67, &v66, &v65);
      v22[1] = 0;
      v63 = v57;
      v64 = v58;
      sub_1223C(&v63, &v67, &v66, &v65);
      _os_log_impl(&dword_0, v61, v62, "User Action: Sets %{BOOL}d for auto Install Security Response in AutomaticUpdatesView", v25, 8u);
      v22[0] = 0;
      sub_12288(v26, 0, v23);
      sub_12288(v27, v22[0], &type metadata for Any + 8);
      sub_514D0();
    }
  }

  else
  {
  }

  _objc_release(v61);
  (*(v36 + 8))(v39, v35);
  memcpy(__dst, v33, sizeof(__dst));
  return sub_1B8E4(v40 & 1);
}

__int128 *sub_1B8E4(char a1)
{
  v9 = a1 & 1;
  memcpy(__dst, v1, sizeof(__dst));
  v8 = v1;
  memcpy(v7, __dst, sizeof(v7));
  v2 = sub_25A44();
  sub_25A50(a1 & 1, 2, v2 & 1);
  memcpy(v6, __dst, sizeof(v6));
  v3 = sub_25A44();
  return sub_25A50(a1 & 1, 3, v3 & 1);
}

uint64_t sub_1B9A0()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_18F68(__dst, v7);
  sub_51410();
  v2 = sub_51400();
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = &protocol witness table for MainActor;
  memcpy(v4 + 4, __dst, 0x40uLL);
  sub_18F68(__dst, v6);
  v3 = sub_51400();
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = &protocol witness table for MainActor;
  memcpy(v5 + 4, __dst, 0x40uLL);
  sub_511B0();
  return v8;
}

uint64_t sub_1BB08(int a1, int a2, void *__src)
{
  v6 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  v4 = sub_187A0();
  swift_getKeyPath();
  (*(*v4 + 200))();
}

void sub_1BBB0(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  *a1;
  *a2 = [v2 automaticDownloadEnabled];
  _objc_release(v2);
}

void sub_1BC1C(char *a1, id *a2)
{
  v3 = *a1;
  v2 = *a2;
  *a2;
  [v2 setAutomaticDownloadEnabled:v3 & 1];
  _objc_release(v2);
}

uint64_t sub_1BC88(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v34 = a1;
  v33 = a4;
  v42 = sub_40890;
  v44 = sub_40944;
  v46 = sub_40990;
  v50 = sub_409DC;
  v52 = sub_408C8;
  v54 = sub_408FC;
  v57 = sub_40A28;
  v70 = 0;
  v69 = 0;
  v32 = 0;
  v35 = sub_50DB0();
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = v22 - v38;
  v40 = *__chkstk_darwin(v34);
  v70 = v40 & 1;
  v69 = v4;
  sub_50D90();
  v41 = 17;
  v48 = 7;
  v43 = swift_allocObject();
  *(v43 + 16) = v40;
  v61 = sub_50DA0();
  v62 = sub_51480();
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  v55 = swift_allocObject();
  *(v55 + 16) = 4;
  v47 = 32;
  v5 = swift_allocObject();
  v6 = v43;
  v45 = v5;
  *(v5 + 16) = v42;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v45;
  v49 = v7;
  *(v7 + 16) = v44;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v49;
  v51 = v9;
  *(v9 + 16) = v46;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v51;
  v58 = v11;
  *(v11 + 16) = v50;
  *(v11 + 24) = v12;
  v60 = sub_23FC(&qword_64648, &qword_51E60);
  v56 = sub_51650();
  v59 = v13;

  v14 = v53;
  v15 = v59;
  *v59 = v52;
  v15[1] = v14;

  v16 = v55;
  v17 = v59;
  v59[2] = v54;
  v17[3] = v16;

  v18 = v58;
  v19 = v59;
  v59[4] = v57;
  v19[5] = v18;
  sub_1489C();

  if (os_log_type_enabled(v61, v62))
  {
    v20 = v32;
    v25 = sub_514F0();
    v23 = sub_23FC(&qword_64650, &unk_53930);
    v24 = 0;
    v26 = sub_121D4(0, v23, v23);
    v27 = sub_121D4(v24, &type metadata for Any + 8, &type metadata for Any + 8);
    v28 = &v67;
    v67 = v25;
    v29 = &v66;
    v66 = v26;
    v30 = &v65;
    v65 = v27;
    sub_12228(0, &v67);
    sub_12228(1, v28);
    v63 = v52;
    v64 = v53;
    sub_1223C(&v63, v28, v29, v30);
    v31 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v63 = v54;
      v64 = v55;
      sub_1223C(&v63, &v67, &v66, &v65);
      v22[1] = 0;
      v63 = v57;
      v64 = v58;
      sub_1223C(&v63, &v67, &v66, &v65);
      _os_log_impl(&dword_0, v61, v62, "User Action: Sets %{BOOL}d for automatic Download in AutomaticUpdatesView", v25, 8u);
      v22[0] = 0;
      sub_12288(v26, 0, v23);
      sub_12288(v27, v22[0], &type metadata for Any + 8);
      sub_514D0();
    }
  }

  else
  {
  }

  _objc_release(v61);
  (*(v36 + 8))(v39, v35);
  memcpy(__dst, v33, sizeof(__dst));
  return sub_1C38C(v40 & 1);
}

uint64_t sub_1C38C(unsigned int a1)
{
  v273 = a1;
  v274 = sub_36E14;
  v276 = sub_36EFC;
  v278 = sub_36F48;
  v282 = sub_32F48;
  v283 = sub_37048;
  v286 = sub_36E48;
  v288 = sub_37148;
  v290 = sub_37194;
  v294 = sub_371E0;
  v296 = sub_36E80;
  v298 = sub_36EB4;
  v300 = sub_36F94;
  v302 = sub_36FCC;
  v304 = sub_37000;
  v306 = sub_37094;
  v308 = sub_370CC;
  v310 = sub_37100;
  v313 = sub_3722C;
  v228 = sub_372F8;
  v229 = sub_373E0;
  v230 = sub_3742C;
  v231 = sub_33068;
  v232 = sub_3752C;
  v233 = sub_3732C;
  v234 = sub_3762C;
  v235 = sub_37678;
  v236 = sub_376C4;
  v237 = sub_37364;
  v238 = sub_37398;
  v239 = sub_37478;
  v240 = sub_374B0;
  v241 = sub_374E4;
  v242 = sub_37578;
  v243 = sub_375B0;
  v244 = sub_375E4;
  v245 = sub_37710;
  v246 = &unk_52270;
  v247 = sub_37A34;
  v248 = sub_37AE4;
  v249 = sub_37B30;
  v250 = sub_330B0;
  v251 = sub_37C30;
  v252 = sub_37A68;
  v253 = sub_37A9C;
  v254 = sub_37B7C;
  v255 = sub_37BB4;
  v256 = sub_37BE8;
  v257 = sub_37C7C;
  v344 = 0;
  v341 = 0;
  v258 = 0;
  v1 = sub_23FC(&qword_64640, &qword_52260);
  v259 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v260 = &v113 - v259;
  v261 = sub_50DB0();
  v262 = *(v261 - 8);
  v263 = v261 - 8;
  v264 = (*(v262 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v273);
  v265 = &v113 - v264;
  v266 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v267 = &v113 - v266;
  v268 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v270 = &v113 - v268;
  v269 = 1;
  v344 = v6 & 1;
  v271 = __dst;
  v272 = 64;
  memcpy(__dst, v7, sizeof(__dst));
  memcpy(v343, __dst, sizeof(v343));
  v8 = sub_25A44();
  sub_25A50(v273 & 1, v269, v8 & 1);
  sub_50D90();
  sub_18F68(v271, v342);
  v292 = 7;
  v275 = swift_allocObject();
  memcpy((v275 + 16), v271, v272);
  v285 = 17;
  v287 = swift_allocObject();
  *(v287 + 16) = v273;
  v317 = sub_50DA0();
  v318 = sub_51490();
  v297 = swift_allocObject();
  v280 = 32;
  *(v297 + 16) = 32;
  v299 = swift_allocObject();
  v281 = 8;
  *(v299 + 16) = 8;
  v291 = 32;
  v9 = swift_allocObject();
  v10 = v275;
  v277 = v9;
  *(v9 + 16) = v274;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v277;
  v279 = v11;
  *(v11 + 16) = v276;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v279;
  v301 = v13;
  *(v13 + 16) = v278;
  *(v13 + 24) = v14;
  v303 = swift_allocObject();
  *(v303 + 16) = v280;
  v305 = swift_allocObject();
  *(v305 + 16) = v281;
  v15 = swift_allocObject();
  v284 = v15;
  *(v15 + 16) = v282;
  *(v15 + 24) = 0;
  v16 = swift_allocObject();
  v17 = v284;
  v307 = v16;
  *(v16 + 16) = v283;
  *(v16 + 24) = v17;
  v309 = swift_allocObject();
  *(v309 + 16) = 0;
  v311 = swift_allocObject();
  *(v311 + 16) = 4;
  v18 = swift_allocObject();
  v19 = v287;
  v289 = v18;
  *(v18 + 16) = v286;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v289;
  v293 = v20;
  *(v20 + 16) = v288;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  v23 = v293;
  v295 = v22;
  *(v22 + 16) = v290;
  *(v22 + 24) = v23;
  v24 = swift_allocObject();
  v25 = v295;
  v314 = v24;
  *(v24 + 16) = v294;
  *(v24 + 24) = v25;
  v316 = sub_23FC(&qword_64648, &qword_51E60);
  v312 = sub_51650();
  v315 = v26;

  v27 = v297;
  v28 = v315;
  *v315 = v296;
  v28[1] = v27;

  v29 = v299;
  v30 = v315;
  v315[2] = v298;
  v30[3] = v29;

  v31 = v301;
  v32 = v315;
  v315[4] = v300;
  v32[5] = v31;

  v33 = v303;
  v34 = v315;
  v315[6] = v302;
  v34[7] = v33;

  v35 = v305;
  v36 = v315;
  v315[8] = v304;
  v36[9] = v35;

  v37 = v307;
  v38 = v315;
  v315[10] = v306;
  v38[11] = v37;

  v39 = v309;
  v40 = v315;
  v315[12] = v308;
  v40[13] = v39;

  v41 = v311;
  v42 = v315;
  v315[14] = v310;
  v42[15] = v41;

  v43 = v314;
  v44 = v315;
  v315[16] = v313;
  v44[17] = v43;
  sub_1489C();

  if (os_log_type_enabled(v317, v318))
  {
    v45 = v258;
    v221 = sub_514F0();
    v220 = sub_23FC(&qword_64650, &unk_53930);
    v222 = sub_121D4(0, v220, v220);
    v223 = sub_121D4(2, &type metadata for Any + 8, &type metadata for Any + 8);
    v224 = &v323;
    v323 = v221;
    v225 = &v322;
    v322 = v222;
    v226 = &v321;
    v321 = v223;
    sub_12228(2, &v323);
    sub_12228(3, v224);
    v319 = v296;
    v320 = v297;
    sub_1223C(&v319, v224, v225, v226);
    v227 = v45;
    if (v45)
    {

      __break(1u);
    }

    else
    {
      v319 = v298;
      v320 = v299;
      sub_1223C(&v319, &v323, &v322, &v321);
      v218 = 0;
      v319 = v300;
      v320 = v301;
      sub_1223C(&v319, &v323, &v322, &v321);
      v217 = 0;
      v319 = v302;
      v320 = v303;
      sub_1223C(&v319, &v323, &v322, &v321);
      v216 = 0;
      v319 = v304;
      v320 = v305;
      sub_1223C(&v319, &v323, &v322, &v321);
      v215 = 0;
      v319 = v306;
      v320 = v307;
      sub_1223C(&v319, &v323, &v322, &v321);
      v214 = 0;
      v319 = v308;
      v320 = v309;
      sub_1223C(&v319, &v323, &v322, &v321);
      v213 = 0;
      v319 = v310;
      v320 = v311;
      sub_1223C(&v319, &v323, &v322, &v321);
      v212 = 0;
      v319 = v313;
      v320 = v314;
      sub_1223C(&v319, &v323, &v322, &v321);
      v211 = 0;
      _os_log_impl(&dword_0, v317, v318, "%s.%s: Assigning %{BOOL}d to automaticDownload.", v221, 0x1Cu);
      sub_12288(v222, 0, v220);
      sub_12288(v223, 2, &type metadata for Any + 8);
      sub_514D0();

      v219 = v211;
    }
  }

  else
  {
    v46 = v258;

    v219 = v46;
  }

  v208 = v219;
  _objc_release(v317);
  v209 = *(v262 + 8);
  v210 = v262 + 8;
  v209(v270, v261);
  if (v273)
  {
    memcpy(&v324[1], __dst, 0x40uLL);
    v47 = sub_187A0();
    v204 = v47;
    KeyPath = swift_getKeyPath();
    (*(*v47 + 200))(v324);
    v206 = v324[0];

    v207 = v206;
  }

  else
  {
    v207 = 0;
  }

  v177 = v207;
  v176 = 1;
  v341 = v207 & 1;
  v174 = __dst;
  v175 = 64;
  memcpy(v340, __dst, sizeof(v340));
  sub_25A50(v207 & 1, 0, 0);
  sub_50D90();
  sub_18F68(v174, &v339);
  v188 = 7;
  v178 = swift_allocObject();
  memcpy((v178 + 16), v174, v175);
  v184 = 17;
  v185 = swift_allocObject();
  *(v185 + 16) = v177 & v176;
  v202 = sub_50DA0();
  v203 = sub_51490();
  v191 = swift_allocObject();
  v181 = 32;
  *(v191 + 16) = 32;
  v192 = swift_allocObject();
  v182 = 8;
  *(v192 + 16) = 8;
  v187 = 32;
  v48 = swift_allocObject();
  v49 = v178;
  v179 = v48;
  *(v48 + 16) = v228;
  *(v48 + 24) = v49;
  v50 = swift_allocObject();
  v51 = v179;
  v180 = v50;
  *(v50 + 16) = v229;
  *(v50 + 24) = v51;
  v52 = swift_allocObject();
  v53 = v180;
  v193 = v52;
  *(v52 + 16) = v230;
  *(v52 + 24) = v53;
  v194 = swift_allocObject();
  *(v194 + 16) = v181;
  v195 = swift_allocObject();
  *(v195 + 16) = v182;
  v54 = swift_allocObject();
  v183 = v54;
  *(v54 + 16) = v231;
  *(v54 + 24) = 0;
  v55 = swift_allocObject();
  v56 = v183;
  v196 = v55;
  *(v55 + 16) = v232;
  *(v55 + 24) = v56;
  v197 = swift_allocObject();
  *(v197 + 16) = 0;
  v198 = swift_allocObject();
  *(v198 + 16) = 4;
  v57 = swift_allocObject();
  v58 = v185;
  v186 = v57;
  *(v57 + 16) = v233;
  *(v57 + 24) = v58;
  v59 = swift_allocObject();
  v60 = v186;
  v189 = v59;
  *(v59 + 16) = v234;
  *(v59 + 24) = v60;
  v61 = swift_allocObject();
  v62 = v189;
  v190 = v61;
  *(v61 + 16) = v235;
  *(v61 + 24) = v62;
  v63 = swift_allocObject();
  v64 = v190;
  v200 = v63;
  *(v63 + 16) = v236;
  *(v63 + 24) = v64;
  v199 = sub_51650();
  v201 = v65;

  v66 = v191;
  v67 = v201;
  *v201 = v237;
  v67[1] = v66;

  v68 = v192;
  v69 = v201;
  v201[2] = v238;
  v69[3] = v68;

  v70 = v193;
  v71 = v201;
  v201[4] = v239;
  v71[5] = v70;

  v72 = v194;
  v73 = v201;
  v201[6] = v240;
  v73[7] = v72;

  v74 = v195;
  v75 = v201;
  v201[8] = v241;
  v75[9] = v74;

  v76 = v196;
  v77 = v201;
  v201[10] = v242;
  v77[11] = v76;

  v78 = v197;
  v79 = v201;
  v201[12] = v243;
  v79[13] = v78;

  v80 = v198;
  v81 = v201;
  v201[14] = v244;
  v81[15] = v80;

  v82 = v200;
  v83 = v201;
  v201[16] = v245;
  v83[17] = v82;
  sub_1489C();

  if (os_log_type_enabled(v202, v203))
  {
    v84 = v208;
    v167 = sub_514F0();
    v166 = sub_23FC(&qword_64650, &unk_53930);
    v168 = sub_121D4(0, v166, v166);
    v169 = sub_121D4(2, &type metadata for Any + 8, &type metadata for Any + 8);
    v170 = &v329;
    v329 = v167;
    v171 = &v328;
    v328 = v168;
    v172 = &v327;
    v327 = v169;
    sub_12228(2, &v329);
    sub_12228(3, v170);
    v325 = v237;
    v326 = v191;
    sub_1223C(&v325, v170, v171, v172);
    v173 = v84;
    if (v84)
    {

      __break(1u);
    }

    else
    {
      v325 = v238;
      v326 = v192;
      sub_1223C(&v325, &v329, &v328, &v327);
      v164 = 0;
      v325 = v239;
      v326 = v193;
      sub_1223C(&v325, &v329, &v328, &v327);
      v163 = 0;
      v325 = v240;
      v326 = v194;
      sub_1223C(&v325, &v329, &v328, &v327);
      v162 = 0;
      v325 = v241;
      v326 = v195;
      sub_1223C(&v325, &v329, &v328, &v327);
      v161 = 0;
      v325 = v242;
      v326 = v196;
      sub_1223C(&v325, &v329, &v328, &v327);
      v160 = 0;
      v325 = v243;
      v326 = v197;
      sub_1223C(&v325, &v329, &v328, &v327);
      v159 = 0;
      v325 = v244;
      v326 = v198;
      sub_1223C(&v325, &v329, &v328, &v327);
      v158 = 0;
      v325 = v245;
      v326 = v200;
      sub_1223C(&v325, &v329, &v328, &v327);
      v157 = 0;
      _os_log_impl(&dword_0, v202, v203, "%s.%s: Assigning %{BOOL}d to automaticUpdate. userSpecified: false", v167, 0x1Cu);
      sub_12288(v168, 0, v166);
      sub_12288(v169, 2, &type metadata for Any + 8);
      sub_514D0();

      v165 = v157;
    }
  }

  else
  {
    v85 = v208;

    v165 = v85;
  }

  v156 = v165;
  _objc_release(v202);
  v209(v267, v261);
  if (v273)
  {
    v135 = __dst;
    v136 = 64;
    memcpy(v336, __dst, sizeof(v336));
    v133 = AutomaticUpdatesView.mobileStatefulManager.getter();
    v134 = [v133 client];
    _objc_release(v133);
    [v134 autoScanAndDownloadIfAvailable:0];
    _objc_release(v134);
    sub_50D90();
    sub_18F68(v135, &v335);
    v144 = 7;
    v137 = swift_allocObject();
    memcpy((v137 + 16), v135, v136);
    v154 = sub_50DA0();
    v155 = sub_51490();
    v141 = 17;
    v146 = swift_allocObject();
    v140 = 32;
    *(v146 + 16) = 32;
    v147 = swift_allocObject();
    v142 = 8;
    *(v147 + 16) = 8;
    v143 = 32;
    v86 = swift_allocObject();
    v87 = v137;
    v138 = v86;
    *(v86 + 16) = v247;
    *(v86 + 24) = v87;
    v88 = swift_allocObject();
    v89 = v138;
    v139 = v88;
    *(v88 + 16) = v248;
    *(v88 + 24) = v89;
    v90 = swift_allocObject();
    v91 = v139;
    v148 = v90;
    *(v90 + 16) = v249;
    *(v90 + 24) = v91;
    v149 = swift_allocObject();
    *(v149 + 16) = v140;
    v150 = swift_allocObject();
    *(v150 + 16) = v142;
    v92 = swift_allocObject();
    v145 = v92;
    *(v92 + 16) = v250;
    *(v92 + 24) = 0;
    v93 = swift_allocObject();
    v94 = v145;
    v152 = v93;
    *(v93 + 16) = v251;
    *(v93 + 24) = v94;
    v151 = sub_51650();
    v153 = v95;

    v96 = v146;
    v97 = v153;
    *v153 = v252;
    v97[1] = v96;

    v98 = v147;
    v99 = v153;
    v153[2] = v253;
    v99[3] = v98;

    v100 = v148;
    v101 = v153;
    v153[4] = v254;
    v101[5] = v100;

    v102 = v149;
    v103 = v153;
    v153[6] = v255;
    v103[7] = v102;

    v104 = v150;
    v105 = v153;
    v153[8] = v256;
    v105[9] = v104;

    v106 = v152;
    v107 = v153;
    v153[10] = v257;
    v107[11] = v106;
    sub_1489C();

    if (os_log_type_enabled(v154, v155))
    {
      v108 = v156;
      v125 = sub_514F0();
      v124 = sub_23FC(&qword_64650, &unk_53930);
      v126 = sub_121D4(0, v124, v124);
      v127 = sub_121D4(2, &type metadata for Any + 8, &type metadata for Any + 8);
      v129 = &v334;
      v334 = v125;
      v130 = &v333;
      v333 = v126;
      v131 = &v332;
      v332 = v127;
      v128 = 2;
      sub_12228(2, &v334);
      sub_12228(v128, v129);
      v330 = v252;
      v331 = v146;
      sub_1223C(&v330, v129, v130, v131);
      v132 = v108;
      if (v108)
      {

        __break(1u);
      }

      else
      {
        v330 = v253;
        v331 = v147;
        sub_1223C(&v330, &v334, &v333, &v332);
        v123 = 0;
        v330 = v254;
        v331 = v148;
        sub_1223C(&v330, &v334, &v333, &v332);
        v122 = 0;
        v330 = v255;
        v331 = v149;
        sub_1223C(&v330, &v334, &v333, &v332);
        v121 = 0;
        v330 = v256;
        v331 = v150;
        sub_1223C(&v330, &v334, &v333, &v332);
        v120 = 0;
        v330 = v257;
        v331 = v152;
        sub_1223C(&v330, &v334, &v333, &v332);
        _os_log_impl(&dword_0, v154, v155, "%s.%s: autoScanAndDownloadIfAvailable(nil) called", v125, 0x16u);
        sub_12288(v126, 0, v124);
        sub_12288(v127, 2, &type metadata for Any + 8);
        sub_514D0();
      }
    }

    else
    {
    }

    _objc_release(v154);
    return (v209)(v265, v261);
  }

  else
  {
    memcpy(v338, __dst, sizeof(v338));
    v118 = sub_184E0();
    v119 = sub_50B40();

    result = v119;
    if (v119)
    {
      sub_51430();
      v115 = 0;
      v110 = sub_51450();
      (*(*(v110 - 8) + 56))(v260, 0, 1);
      v114 = __dst;
      sub_18F68(__dst, &v337);
      v111 = swift_allocObject();
      v112 = v114;
      v116 = v111;
      v111[2] = 0;
      v111[3] = 0;
      memcpy(v111 + 4, v112, 0x40uLL);
      v117 = sub_F350(v115, v115, v260, v246, v116, &type metadata for () + 8);
      sub_14BA4(v260);
    }
  }

  return result;
}

uint64_t sub_1E3B0()
{

  sub_23FC(&qword_646E0, &unk_522D8);
  sub_51140();

  return v1;
}

uint64_t sub_1E434(char a1)
{
  v7 = 0;
  v8 = a1;
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);

  v5[0] = v3;
  v6 = v4;
  sub_23FC(&qword_646E0, &unk_522D8);
  sub_51150();
  sub_37C94(v5);
}

uint64_t sub_1E4E8()
{

  sub_23FC(&qword_646E0, &unk_522D8);
  sub_51160();

  return v1;
}

uint64_t sub_1E584()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t sub_1E5C4(char a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t AutomaticUpdatesView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v181 = &v218;
  v113 = a1;
  v133 = 0;
  v220 = 0;
  v114 = (*(*(sub_23FC(&qword_644D0, &qword_51D20) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v115 = v67 - v114;
  v116 = sub_50960();
  v117 = *(v116 - 8);
  v118 = v117;
  __chkstk_darwin(v133);
  v119 = v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_50910();
  v121 = *(v120 - 8);
  v122 = v121;
  __chkstk_darwin(v133);
  v123 = v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_50920();
  v125 = *(v124 - 8);
  v126 = v125;
  __chkstk_darwin(v133);
  v127 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_51230();
  v129 = *(v128 - 8);
  v130 = v129;
  __chkstk_darwin(v133);
  v131 = (v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_50990();
  __chkstk_darwin(v133);
  v132 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_512F0();
  __chkstk_darwin(v133);
  v134 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_50FB0();
  v136 = *(v135 - 8);
  v137 = v136;
  __chkstk_darwin(v135 - 8);
  v138 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_23FC(&qword_646E8, &qword_522E8);
  v140 = *(v139 - 8);
  v141 = v140;
  v142 = (*(v140 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v139 - 8);
  v177 = v67 - v142;
  v143 = v67 - v142;
  v144 = sub_23FC(&qword_646F0, &qword_522F0);
  v145 = *(v144 - 8);
  v146 = v145;
  v147 = (*(v145 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v144 - 8);
  v148 = v67 - v147;
  v149 = sub_23FC(&qword_646F8, &qword_522F8);
  v150 = *(v149 - 8);
  v151 = v150;
  v152 = (*(v150 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v149 - 8);
  v153 = v67 - v152;
  v154 = sub_23FC(&qword_64700, &qword_52300);
  v155 = *(v154 - 8);
  v156 = v155;
  v157 = (*(v155 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v154 - 8);
  v158 = v67 - v157;
  v159 = sub_23FC(&qword_64708, &qword_52308);
  v160 = *(v159 - 8);
  v161 = v160;
  v162 = (*(v160 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v159 - 8);
  v163 = v67 - v162;
  v164 = sub_23FC(&qword_64710, &qword_52310);
  v165 = *(v164 - 8);
  v166 = v165;
  v167 = (*(v165 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v164 - 8);
  v168 = v67 - v167;
  v169 = sub_23FC(&qword_64718, &qword_52318);
  v170 = *(v169 - 8);
  v171 = v170;
  v173 = *(v170 + 64);
  __chkstk_darwin(v169 - 8);
  v175 = (v173 + 15) & 0xFFFFFFFFFFFFFFF0;
  v172 = v67 - v175;
  __chkstk_darwin(v67 - v175);
  v174 = v67 - v175;
  __chkstk_darwin(v67 - v175);
  v176 = v67 - v175;
  v220 = v67 - v175;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v12[12] = v1[3];
  v12[11] = v11;
  v12[10] = v10;
  v12[9] = v9;
  v13 = *v1;
  v14 = v1[1];
  v15 = v1[2];
  v12[16] = v1[3];
  v12[15] = v15;
  v12[14] = v14;
  v12[13] = v13;
  sub_18F68(v221, v219);
  v16 = swift_allocObject();
  v178 = v16;
  v17 = *(v181 + 9);
  v18 = *(v181 + 10);
  v19 = *(v181 + 11);
  v16[4] = *(v181 + 12);
  v16[3] = v19;
  v16[2] = v18;
  v16[1] = v17;
  v179 = sub_23FC(&qword_64720, &qword_52320);
  v180 = sub_37D20();
  sub_20C80();
  sub_50A60();
  v20 = sub_50FC0();
  v21 = v181;
  v182 = v20;
  v22 = *(v181 + 9);
  v23 = *(v181 + 10);
  v24 = *(v181 + 11);
  *(v181 + 3) = *(v181 + 12);
  *(v21 + 2) = v24;
  *(v21 + 1) = v23;
  *v21 = v22;
  v183 = sub_18D58();
  v184 = v25;
  v215 = v183;
  v216 = v25;
  v217 = v26 & 1;
  sub_23FC(&qword_64730, &qword_52328);
  sub_511A0();
  v185 = v214;

  if (v185 == 1)
  {
    v112 = 20.0;
  }

  else
  {
    v112 = 5.0;
  }

  v69 = v112;
  v71 = sub_37DA8();
  sub_20CB0();
  v106 = 0;
  sub_510B0();
  (*(v137 + 8))(v138, v135);
  (*(v141 + 8))(v143, v139);
  v103 = "Automatic Updates";
  v104 = 17;
  v111 = 1;
  sub_51350("Automatic Updates", 0x11uLL, 1);
  sub_512E0();
  v70 = *sub_411D0();
  v27 = v70;
  sub_20CD4();
  v108 = 0;
  v211[2] = 0;
  v211[3] = 0;
  v212 = v106;
  v213 = v111;
  v211[0] = sub_51320();
  v211[1] = v28;
  v210[2] = v139;
  v210[3] = v71;
  v101 = v111;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v96 = sub_37E30();
  v92 = &type metadata for String;
  v72 = v211;
  sub_510C0();
  sub_37EA8(v72);
  (*(v146 + 8))(v148, v144);
  v90 = v221;
  v210[0] = sub_20CEC(v221);
  v210[1] = v29;
  sub_18F68(v90, v208);
  v73 = sub_51410();
  v74 = sub_51400();
  v75 = 96;
  v91 = 7;
  v30 = swift_allocObject();
  v31 = v181;
  v32 = v30;
  v33 = v90;
  v77 = v32;
  *(v32 + 16) = v74;
  v76 = &protocol witness table for MainActor;
  *(v32 + 24) = &protocol witness table for MainActor;
  v34 = *(v31 + 9);
  v35 = *(v31 + 10);
  v36 = *(v31 + 11);
  *(v32 + 80) = *(v31 + 12);
  *(v32 + 64) = v36;
  *(v32 + 48) = v35;
  *(v32 + 32) = v34;
  sub_18F68(v33, &v207);
  v78 = sub_51400();
  v37 = swift_allocObject();
  v38 = v76;
  v39 = v181;
  *(v37 + 16) = v78;
  *(v37 + 24) = v38;
  v40 = *(v39 + 9);
  v41 = *(v39 + 10);
  v42 = *(v39 + 11);
  *(v37 + 80) = *(v39 + 12);
  *(v37 + 64) = v42;
  *(v37 + 48) = v41;
  *(v37 + 32) = v40;
  sub_511B0();
  v87 = v208[8];
  v88 = v208[9];
  v81 = v209;
  sub_18F68(v90, &v206);
  v86 = v67;
  v79 = 24;
  v43 = __chkstk_darwin(v90);
  v82 = v66;
  sub_18F68(v43, &v205);
  v85 = v67;
  __chkstk_darwin(v67);
  v83 = v66;
  v93 = sub_23FC(&qword_64748, &qword_52330);
  v94 = sub_23FC(&qword_64750, &qword_52338);
  v204[8] = v144;
  v204[9] = v92;
  v204[10] = OpaqueTypeConformance2;
  v204[11] = v96;
  v95 = swift_getOpaqueTypeConformance2();
  v97 = sub_37FC4();
  v98 = sub_38220();
  v84 = v65;
  v66[3] = v98;
  v66[2] = v97;
  v66[1] = v96;
  v66[0] = v95;
  v65[3] = v94;
  v65[2] = v93;
  v65[1] = v92;
  v65[0] = v149;
  v89 = v210;
  sub_510F0();
  sub_180B8(v90);
  sub_180B8(v90);

  sub_37EA8(v89);
  (*(v151 + 8))(v153, v149);
  sub_18F68(v90, v204);
  v44 = swift_allocObject();
  v45 = v149;
  v46 = v92;
  v47 = v93;
  v48 = v94;
  v49 = v95;
  v50 = v96;
  v51 = v97;
  v52 = v44;
  v53 = v98;
  v99 = v52;
  v54 = *(v181 + 9);
  v55 = *(v181 + 10);
  v56 = *(v181 + 11);
  v52[4] = *(v181 + 12);
  v52[3] = v56;
  v52[2] = v55;
  v52[1] = v54;
  v196 = v45;
  v197 = v46;
  v198 = v47;
  v199 = v48;
  v200 = v49;
  v201 = v50;
  v202 = v51;
  v203 = v53;
  v100 = swift_getOpaqueTypeConformance2();
  sub_51040();

  (*(v156 + 8))(v158, v154);
  v194 = v154;
  v195 = v100;
  v102 = swift_getOpaqueTypeConformance2();
  sub_51020();
  (*(v161 + 8))(v163, v159);
  v57 = sub_51350("com.apple.graphic-icon.software-update", 0x26uLL, v111);
  v58 = v130;
  v59 = v57;
  v60 = v131;
  *v131 = v59;
  v60[1] = v61;
  (*(v58 + 104))();
  sub_51350(v103, v104, v111);
  sub_512E0();
  v105 = *sub_411D0();
  v62 = v105;
  v107 = [v105 bundleURL];
  sub_50940();
  (*(v118 + 32))(v123, v119, v116);

  (*(v122 + 104))(v123, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v120);
  sub_BE24();
  v190 = v108;
  v191 = v108;
  v192 = v106;
  v193 = v111;
  sub_50930();

  v109 = sub_51650();
  sub_51350("settings-navigation://com.apple.Settings.General/SOFTWARE_UPDATE_LINK/SUAutomaticUpdateButton", 0x5DuLL, v111);
  v110 = v63;
  sub_50950();

  if ((*(v118 + 48))(v115, v111, v116) == 1)
  {
    sub_51610("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "SoftwareUpdateUIMobileSettingsPlugin/AutomaticUpdatesView.swift", 63, 2, 226, 0);
    __break(1u);
  }

  v188 = v159;
  v189 = v102;
  v67[1] = 1;
  v67[0] = swift_getOpaqueTypeConformance2();
  sub_51050();
  (*(v118 + 8))(v115, v116);

  (*(v126 + 8))(v127, v124);
  (*(v130 + 8))(v131, v128);
  (*(v166 + 8))(v168, v164);
  v186 = v164;
  v187 = v67[0];
  v67[2] = swift_getOpaqueTypeConformance2();
  sub_6394(v174, v169, v176);
  v68 = *(v171 + 8);
  v67[3] = v171 + 8;
  v68(v174, v169);
  (*(v171 + 16))(v172, v176, v169);
  sub_99E8(v172, v169, v113);
  v68(v172, v169);
  return (v68)(v176, v169);
}

uint64_t sub_1FA0C@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v62 = a1;
  v87 = a2;
  v78 = &opaque type descriptor for <<opaque return type of View.suuiIdentifiable(_:)>>;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v92 = 0;
  v52 = 0;
  v30 = sub_50F50();
  v31 = *(v30 - 8);
  v32 = v30 - 8;
  v33 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v34 = &v18 - v33;
  v35 = sub_23FC(&qword_64828, &qword_523A0);
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35);
  v39 = &v18 - v38;
  v40 = sub_23FC(&qword_648D8, &qword_52E68);
  v41 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40);
  v42 = &v18 - v41;
  v43 = sub_23FC(&qword_648E0, &qword_52E70);
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v43);
  v47 = &v18 - v46;
  v48 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v18 - v46);
  v49 = &v18 - v48;
  v50 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v18 - v48);
  v51 = &v18 - v50;
  v111 = &v18 - v50;
  v53 = sub_23FC(&qword_648E8, &qword_52E78);
  v54 = (*(*(v53 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v52);
  v55 = &v18 - v54;
  v56 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v5);
  v57 = &v18 - v56;
  v58 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v59 = &v18 - v58;
  v110 = &v18 - v58;
  v70 = sub_50C30();
  v67 = *(v70 - 8);
  v68 = v70 - 8;
  v60 = (v67[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v70);
  v69 = &v18 - v60;
  v76 = sub_23FC(&qword_647A8, &qword_52360);
  v73 = *(v76 - 8);
  v74 = v76 - 8;
  v61 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v76);
  v75 = &v18 - v61;
  v84 = sub_23FC(&qword_648F0, qword_52E80);
  v81 = *(v84 - 8);
  v82 = v84 - 8;
  v63 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v62);
  v83 = &v18 - v63;
  v64 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = __chkstk_darwin(v9);
  v79 = &v18 - v64;
  v109 = &v18 - v64;
  v108 = v11;
  v107 = v12;
  v88 = 64;
  memcpy(__dst, v12, sizeof(__dst));
  sub_204F8(v75);
  v65 = v67[13];
  v66 = v67 + 13;
  v65(v69, enum case for AccessibilityIdentifiers.automaticInstallGroup(_:), v70);
  v77 = sub_3880C();
  sub_50FF0();
  v71 = v67[1];
  v72 = v67 + 1;
  v71(v69, v70);
  (*(v73 + 8))(v75, v76);
  v104 = v76;
  v105 = v77;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_6394(v83, v84, v79);
  v85 = *(v81 + 8);
  v86 = v81 + 8;
  v85(v83, v84);
  memcpy(v103, v87, v88);
  v89 = sub_18D58();
  v90 = v13;
  v100 = v89;
  v101 = v13;
  v102 = v14 & 1;
  sub_23FC(&qword_64730, &qword_52328);
  sub_511A0();
  v91 = v99;

  if (v91)
  {
    (*(v44 + 56))(v55, 1, 1, v43);
    v16 = sub_3F53C();
    v98[2] = v40;
    v98[3] = v16;
    swift_getOpaqueTypeConformance2();
    sub_B3CC(v55, v43, v57);
    sub_3F5E4(v55);
    sub_3F698(v57, v59);
  }

  else
  {
    memcpy(v95, v87, sizeof(v95));
    sub_20828(v39);
    sub_20B80();
    v24 = sub_38A84();
    v15 = sub_3BF78();
    sub_20B98(v34, v35, v30, v24, v15, v42);
    (*(v31 + 8))(v34, v30);
    (*(v36 + 8))(v39, v35);
    v65(v69, enum case for AccessibilityIdentifiers.automaticDownloadGroup(_:), v70);
    v25 = sub_3F53C();
    sub_50FF0();
    v71(v69, v70);
    sub_3F9E8(v42);
    v93 = v40;
    v94 = v25;
    v26 = swift_getOpaqueTypeConformance2();
    sub_6394(v49, v43, v51);
    v27 = *(v44 + 8);
    v28 = v44 + 8;
    v27(v49, v43);
    v92 = v49;
    v23 = *(v44 + 16);
    v22 = v44 + 16;
    v23(v47, v51, v43);
    sub_99E8(v47, v43, v49);
    v27(v47, v43);
    v23(v55, v49, v43);
    (*(v44 + 56))(v55, 0, 1, v43);
    sub_B3CC(v55, v43, v57);
    sub_3F5E4(v55);
    sub_3F698(v57, v59);
    v27(v49, v43);
    v27(v51, v43);
  }

  (*(v81 + 16))(v83, v79, v84);
  v21 = v98;
  v98[0] = v83;
  sub_3F7CC(v59, v57);
  v98[1] = v57;
  v19 = v97;
  v97[0] = v84;
  v97[1] = v53;
  v20 = v96;
  v96[0] = OpaqueTypeConformance2;
  v96[1] = sub_3F900();
  sub_63F8(v21, 2uLL, v19, v29);
  sub_3F5E4(v57);
  v85(v83, v84);
  sub_3F5E4(v59);
  return (v85)(v79, v84);
}

uint64_t sub_204F8@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v20 = sub_383C0;
  v14 = sub_383C8;
  v16 = sub_383D0;
  v37 = 0;
  v28 = sub_23FC(&qword_647A8, &qword_52360);
  v22 = *(v28 - 8);
  v23 = v28 - 8;
  v6 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v26 = &v5 - v6;
  v7 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v5 - v6);
  v27 = &v5 - v7;
  v37 = &v5 - v7;
  v21 = __dst;
  v9 = 64;
  memcpy(__dst, v2, sizeof(__dst));
  memcpy(v39, v8, sizeof(v39));
  sub_18F68(__dst, v36);
  v13 = v33;
  v33[2] = v21;
  sub_18F68(v21, &v35);
  v15 = v32;
  v32[2] = v21;
  sub_18F68(v21, &v34);
  v17 = v31;
  v31[2] = v21;
  v18 = sub_23FC(&qword_647B0, &qword_52368);
  v19 = sub_23FC(&qword_647B8, &qword_52370);
  v10 = sub_23FC(&qword_647C0, &qword_52378);
  v11 = sub_383D8();
  v12 = sub_3859C();
  v3 = sub_38624();
  sub_316F4(v20, v13, v16, v17, v18, v19, v26, v10, v11, v12, v3);
  sub_180B8(v21);
  sub_180B8(v21);
  sub_180B8(v21);
  v25 = sub_3880C();
  sub_6394(v26, v28, v27);
  v30 = *(v22 + 8);
  v29 = v22 + 8;
  v30(v26, v28);
  (*(v22 + 16))(v26, v27, v28);
  sub_99E8(v26, v28, v24);
  v30(v26, v28);
  return (v30)(v27, v28);
}

uint64_t sub_20828@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v20 = 0;
  v13 = &opaque type descriptor for <<opaque return type of View.suuiIdentifiable(_:)>>;
  v15 = &opaque type descriptor for <<opaque return type of View.analyticsForToggle(onType:offType:isOn:)>>;
  v22 = sub_388C4;
  v18 = sub_32588;
  v19 = sub_32758;
  v35 = 0;
  v30 = sub_23FC(&qword_64828, &qword_523A0);
  v24 = *(v30 - 8);
  v25 = v30 - 8;
  v8 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v28 = &v7 - v8;
  v9 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v8);
  v29 = &v7 - v9;
  v35 = &v7 - v9;
  v23 = __dst;
  v11 = 64;
  memcpy(__dst, v2, sizeof(__dst));
  memcpy(v37, v10, sizeof(v37));
  sub_18F68(__dst, v34);
  v17 = v33;
  v33[2] = v23;
  v21 = sub_23FC(&qword_64830, &qword_523A8);
  v14 = sub_6320(&qword_64838, &qword_523B0);
  v12 = sub_6320(&qword_64840, &qword_523B8);
  v3 = sub_388CC();
  v33[6] = v12;
  v33[7] = v3;
  v16 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33[4] = v14;
  v33[5] = OpaqueTypeConformance2;
  v5 = swift_getOpaqueTypeConformance2();
  sub_316F4(v22, v17, v19, v20, &type metadata for Text, v21, v28, &type metadata for Text, &protocol witness table for Text, v5, &protocol witness table for Text);
  sub_180B8(v23);
  v27 = sub_38A84();
  sub_6394(v28, v30, v29);
  v32 = *(v24 + 8);
  v31 = v24 + 8;
  v32(v28, v30);
  (*(v24 + 16))(v28, v29, v30);
  sub_99E8(v28, v30, v26);
  v32(v28, v30);
  return (v32)(v29, v30);
}

uint64_t sub_20B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = a6;
  v7 = a1;
  v14 = a2;
  v10 = a3;
  v15 = a4;
  v11 = a5;
  v18 = a2;
  v17 = a3;
  v9 = *(a3 - 8);
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v12 = &v7 - v8;
  (*(v9 + 16))(&v7 - v8);
  v16 = sub_50E10();
  sub_51080();
}

uint64_t sub_20CEC(uint64_t a1)
{
  v16 = a1;
  v12 = "RecoveryOS is a device's state enables the user to perform system recovery actions";
  v28 = 0;
  v13 = 0;
  v14 = (*(*(sub_50990() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v15 = &v6[-v14];
  v1 = sub_512F0();
  v17 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v18 = &v6[-v17];
  v28 = v2;
  memcpy(__dst, v2, sizeof(__dst));
  v19 = sub_1E3B0();
  if (v19)
  {
    if (v19 == 1)
    {
      v7 = 1;
      sub_51350("Turn off automatic updates?", 0x1BuLL, 1);
      sub_512E0();
      v8 = *sub_411D0();
      v8;
      sub_20CD4();
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = v7 & 1;
    }

    else
    {
      sub_51350("RecoveryOS Information", 0x16uLL, 1);
      sub_512E0();
      v9 = *sub_411D0();
      v9;
      sub_20CD4();
      v20 = v12;
      v21 = 82;
      v22 = 2;
    }

    v10 = sub_51320();
    v11 = v3;
  }

  else
  {
    v10 = sub_51350("", 0, 1);
    v11 = v4;
  }

  return v10;
}

BOOL sub_20F80@<W0>(void *__src@<X2>, BOOL *a2@<X8>)
{
  v6 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  v2 = sub_1E3B0();
  result = sub_35740(v2, 0);
  *a2 = !result;
  return result;
}

void *sub_20FEC(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = 0;
  v8 = 0;
  v4 = *result;
  v9 = *result & 1;
  v8 = a4;
  if ((v4 & 1) == 0)
  {
    sub_18F68(a4, v7);
    memcpy(__dst, a4, sizeof(__dst));
    sub_1E434(0);
    result = __dst;
    sub_180B8(__dst);
  }

  return result;
}

uint64_t sub_21078@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v117 = a1;
  v77 = sub_3D4E8;
  v78 = sub_3D5D0;
  v79 = sub_3D630;
  v80 = sub_3D9F8;
  v81 = sub_3DA58;
  v161 = 0;
  v160 = 0;
  v159 = 0;
  v158 = 0;
  v157 = 0;
  v155 = 0;
  v151 = 0;
  v146 = 0;
  v132 = 0;
  v82 = sub_23FC(&qword_64788, &unk_52350);
  v83 = (*(*(v82 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v82);
  v84 = &v31 - v83;
  v85 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v31 - v83);
  v86 = &v31 - v85;
  v161 = &v31 - v85;
  v87 = sub_23FC(&qword_64768, &qword_52340);
  v88 = (*(*(v87 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v87);
  v89 = &v31 - v88;
  v90 = sub_23FC(&qword_64778, &qword_52348);
  v91 = (*(*(v90 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v90);
  v92 = &v31 - v91;
  v93 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v31 - v91);
  v94 = &v31 - v93;
  v160 = &v31 - v93;
  v4 = sub_23FC(&qword_648A0, &qword_52E10);
  v95 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v96 = &v31 - v95;
  v97 = 0;
  v98 = (*(*(sub_50990() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v97);
  v99 = &v31 - v98;
  v5 = sub_512F0();
  v100 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v101 = &v31 - v100;
  v102 = sub_23FC(&qword_648A8, &qword_52E18);
  v103 = *(v102 - 8);
  v104 = v102 - 8;
  v105 = (v103[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v102);
  v106 = &v31 - v105;
  v107 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v31 - v105);
  v108 = &v31 - v107;
  v109 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v31 - v107);
  v110 = &v31 - v109;
  v111 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v31 - v109);
  v112 = &v31 - v111;
  v113 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v31 - v111);
  v114 = &v31 - v113;
  v115 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v31 - v113);
  v116 = &v31 - v115;
  v159 = &v31 - v115;
  v118 = sub_23FC(&qword_64748, &qword_52330);
  v119 = (*(*(v118 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v118);
  v120 = &v31 - v119;
  v121 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v31 - v119);
  v122 = &v31 - v121;
  v158 = &v31 - v121;
  v157 = v12;
  memcpy(__dst, v12, sizeof(__dst));
  v123 = sub_1E3B0();
  if (v123)
  {
    if (v123 == 1)
    {
      v155 = v116;
      *&v49[1] = 1;
      sub_51350("Turn off Automatic Updates", 0x1AuLL, 1);
      sub_512E0();
      v47 = *sub_411D0();
      v47;
      sub_20CD4();
      v48 = 0;
      v153[2] = 0;
      v153[3] = 0;
      v154 = *v49 & 0x100;
      v20 = sub_51320();
      v54 = v153;
      v153[0] = v20;
      v153[1] = v21;
      sub_50DC0();
      v50 = sub_50DE0();
      v22 = *(v50 - 8);
      v51 = *(v22 + 56);
      v52 = v22 + 56;
      v51(v96, 0, *&v49[1]);
      sub_18F68(v117, v152);
      v53 = swift_allocObject();
      memcpy((v53 + 16), v117, 0x40uLL);
      v55 = sub_37E30();
      sub_51170();
      v56 = sub_3D4F0();
      sub_6394(v114, v102, v116);
      v57 = v103[1];
      v58 = v103 + 1;
      v57(v114, v102);
      v151 = v114;
      v43 = 1;
      sub_51350("Cancel Install Tonight", 0x16uLL, 1);
      sub_512E0();
      v44 = *sub_411D0();
      v44;
      sub_20CD4();
      v148[2] = 0;
      v148[3] = 0;
      v149 = 0;
      v150 = v43 & 1;
      v23 = sub_51320();
      v45 = v148;
      v148[0] = v23;
      v148[1] = v24;
      sub_18F68(v117, &v147);
      v46 = swift_allocObject();
      memcpy((v46 + 16), v117, 0x40uLL);
      sub_51180();
      sub_6394(v112, v102, v114);
      v57(v112, v102);
      v146 = v112;
      v36 = 1;
      sub_51350("Cancel", 6uLL, 1);
      sub_512E0();
      v35 = *sub_411D0();
      v35;
      sub_20CD4();
      v143[2] = 0;
      v143[3] = 0;
      v144 = 0;
      v145 = v36 & 1;
      v25 = sub_51320();
      v37 = v143;
      v143[0] = v25;
      v143[1] = v26;
      sub_50DD0();
      (v51)(v96, 0, v36, v50);
      sub_18F68(v117, &v142);
      v38 = swift_allocObject();
      memcpy((v38 + 16), v117, 0x40uLL);
      sub_51170();
      sub_6394(v110, v102, v112);
      v57(v110, v102);
      v40 = v103[2];
      v39 = v103 + 2;
      v40(v110, v116, v102);
      v41 = v141;
      v141[0] = v110;
      v40(v108, v114, v102);
      v141[1] = v108;
      v40(v106, v112, v102);
      v141[2] = v106;
      v140[0] = v102;
      v140[1] = v102;
      v140[2] = v102;
      v137 = v56;
      v138 = v56;
      v139 = v56;
      sub_63F8(v41, 3uLL, v140, v86);
      v57(v106, v102);
      v57(v108, v102);
      v57(v110, v102);
      sub_3D638(v86, v84);
      v42 = sub_38110();
      v27 = sub_38198();
      sub_B418(v84, v90, v82, v42, v27, v89);
      sub_3D730(v84);
      v28 = sub_38068();
      sub_B2D4(v89, v87, &type metadata for EmptyView, v28, &protocol witness table for EmptyView, v120);
      sub_3D80C(v89);
      sub_3CE18(v120, v122);
      sub_3D730(v86);
      v57(v112, v102);
      v57(v114, v102);
      v57(v116, v102);
    }

    else
    {
      v68 = 1;
      sub_51350("Update Now", 0xAuLL, 1);
      sub_512E0();
      v69 = *sub_411D0();
      v69;
      sub_20CD4();
      v134[2] = 0;
      v134[3] = 0;
      v135 = 0;
      v136 = v68 & 1;
      v13 = sub_51320();
      v71 = v134;
      v134[0] = v13;
      v134[1] = v14;
      sub_18F68(v117, &v133);
      v70 = swift_allocObject();
      memcpy((v70 + 16), v117, 0x40uLL);
      v72 = sub_37E30();
      sub_51180();
      v73 = sub_3D4F0();
      sub_6394(v114, v102, v116);
      v74 = v103[1];
      v75 = v103 + 1;
      v74(v114, v102);
      v132 = v114;
      v61 = 1;
      sub_51350("Close", 5uLL, 1);
      sub_512E0();
      v59 = *sub_411D0();
      v59;
      sub_20CD4();
      v60 = 0;
      v129[2] = 0;
      v129[3] = 0;
      v130 = 0;
      v131 = v61 & 1;
      v15 = sub_51320();
      v62 = v129;
      v129[0] = v15;
      v129[1] = v16;
      sub_50DD0();
      v17 = sub_50DE0();
      (*(*(v17 - 8) + 56))(v96, 0, v61);
      sub_18F68(v117, &v128);
      v63 = swift_allocObject();
      memcpy((v63 + 16), v117, 0x40uLL);
      sub_51170();
      sub_6394(v112, v102, v114);
      v74(v112, v102);
      v65 = v103[2];
      v64 = v103 + 2;
      v65(v112, v116, v102);
      v66 = v127;
      v127[0] = v112;
      v65(v110, v114, v102);
      v127[1] = v110;
      v126[0] = v102;
      v126[1] = v102;
      v124 = v73;
      v125 = v73;
      sub_63F8(v66, 2uLL, v126, v94);
      v74(v110, v102);
      v74(v112, v102);
      sub_3DA60(v94, v92);
      v67 = sub_38110();
      v18 = sub_38198();
      sub_B2D4(v92, v90, v82, v67, v18, v89);
      sub_3DB20(v92);
      v19 = sub_38068();
      sub_B2D4(v89, v87, &type metadata for EmptyView, v19, &protocol witness table for EmptyView, v120);
      sub_3D80C(v89);
      sub_3CE18(v120, v122);
      sub_3DB20(v94);
      v74(v114, v102);
      v74(v116, v102);
    }
  }

  else
  {
    sub_511E0();
    v32 = &type metadata for EmptyView;
    v33 = &protocol witness table for EmptyView;
    sub_6394(v34, &type metadata for EmptyView, v34);
    sub_99E8(v34, v32, v34);
    v29 = sub_38068();
    sub_B418(v34, v87, v32, v29, v33, v120);
    sub_3CE18(v120, v122);
  }

  sub_3D074(v122, v120);
  sub_37FC4();
  sub_99E8(v120, v118, v76);
  sub_3D2D0(v120);
  return sub_3D2D0(v122);
}

void *sub_221E0(uint64_t *a1)
{
  v29 = &v48;
  v31 = a1;
  v38 = 0;
  v49 = 0;
  v30 = 0;
  v32 = sub_50DB0();
  v33 = *(v32 - 8);
  v34 = v33;
  v1 = __chkstk_darwin(v31);
  v35 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v1;
  sub_50D90();
  v40 = sub_50DA0();
  v36 = v40;
  v39 = sub_51480();
  v37 = v39;
  sub_23FC(&qword_64648, &qword_51E60);
  v41 = sub_51650();
  if (os_log_type_enabled(v40, v39))
  {
    v3 = v30;
    v20 = sub_514F0();
    v16 = v20;
    v17 = sub_23FC(&qword_64650, &unk_53930);
    v18 = 0;
    v21 = sub_121D4(0, v17, v17);
    v19 = v21;
    v22 = sub_121D4(v18, &type metadata for Any + 8, &type metadata for Any + 8);
    v45 = v20;
    v44 = v21;
    v43 = v22;
    v23 = 0;
    v24 = &v45;
    sub_12228(0, &v45);
    sub_12228(v23, v24);
    v42 = v41;
    v25 = &v13;
    __chkstk_darwin(&v13);
    v26 = &v13 - 6;
    *(&v13 - 4) = v4;
    *(&v13 - 3) = &v44;
    *(&v13 - 2) = &v43;
    v27 = sub_23FC(&qword_64698, &qword_52170);
    sub_181A0();
    sub_513C0();
    v28 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v36, v37, "User Action: Clicked 'Update Now' on the nerdMenu alert in AutomaticUpdatesView", v16, 2u);
      v14 = 0;
      sub_12288(v19, 0, v17);
      sub_12288(v22, v14, &type metadata for Any + 8);
      sub_514D0();

      v15 = v28;
    }
  }

  else
  {

    v15 = v30;
  }

  (*(v34 + 8))(v35, v32);
  v5 = v29;
  v6 = *v31;
  v7 = *(v31 + 1);
  v8 = *(v31 + 2);
  *(v29 + 3) = *(v31 + 3);
  *(v5 + 2) = v8;
  *(v5 + 1) = v7;
  *v5 = v6;
  sub_226C4();
  sub_18F68(v31, v47);
  v9 = *v31;
  v10 = *(v31 + 1);
  v11 = *(v31 + 2);
  v46[3] = *(v31 + 3);
  v46[2] = v11;
  v46[1] = v10;
  v46[0] = v9;
  v13 = v46;
  sub_1E434(0);
  result = v13;
  sub_180B8(v13);
  return result;
}

void sub_226C4()
{
  v47 = sub_38C28;
  v49 = sub_38CD8;
  v51 = sub_38D24;
  v56 = sub_35448;
  v59 = sub_38E24;
  v61 = sub_38C5C;
  v63 = sub_38C90;
  v65 = sub_38D70;
  v67 = sub_38DA8;
  v69 = sub_38DDC;
  v72 = sub_38E70;
  v39 = 0;
  v40 = sub_50DB0();
  v41 = *(v40 - 8);
  v42 = v40 - 8;
  v43 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40);
  v44 = v24 - v43;
  v45 = __dst;
  v46 = 64;
  memcpy(__dst, v0, sizeof(__dst));
  sub_50D90();
  sub_18F68(v45, v84);
  v58 = 7;
  v48 = swift_allocObject();
  memcpy((v48 + 16), v45, v46);
  v76 = sub_50DA0();
  v77 = sub_51480();
  v54 = 17;
  v62 = swift_allocObject();
  v53 = 32;
  *(v62 + 16) = 32;
  v64 = swift_allocObject();
  v55 = 8;
  *(v64 + 16) = 8;
  v57 = 32;
  v1 = swift_allocObject();
  v2 = v48;
  v50 = v1;
  *(v1 + 16) = v47;
  *(v1 + 24) = v2;
  v3 = swift_allocObject();
  v4 = v50;
  v52 = v3;
  *(v3 + 16) = v49;
  *(v3 + 24) = v4;
  v5 = swift_allocObject();
  v6 = v52;
  v66 = v5;
  *(v5 + 16) = v51;
  *(v5 + 24) = v6;
  v68 = swift_allocObject();
  *(v68 + 16) = v53;
  v70 = swift_allocObject();
  *(v70 + 16) = v55;
  v7 = swift_allocObject();
  v60 = v7;
  *(v7 + 16) = v56;
  *(v7 + 24) = 0;
  v8 = swift_allocObject();
  v9 = v60;
  v73 = v8;
  *(v8 + 16) = v59;
  *(v8 + 24) = v9;
  v75 = sub_23FC(&qword_64648, &qword_51E60);
  v71 = sub_51650();
  v74 = v10;

  v11 = v62;
  v12 = v74;
  *v74 = v61;
  v12[1] = v11;

  v13 = v64;
  v14 = v74;
  v74[2] = v63;
  v14[3] = v13;

  v15 = v66;
  v16 = v74;
  v74[4] = v65;
  v16[5] = v15;

  v17 = v68;
  v18 = v74;
  v74[6] = v67;
  v18[7] = v17;

  v19 = v70;
  v20 = v74;
  v74[8] = v69;
  v20[9] = v19;

  v21 = v73;
  v22 = v74;
  v74[10] = v72;
  v22[11] = v21;
  sub_1489C();

  if (os_log_type_enabled(v76, v77))
  {
    v23 = v39;
    v31 = sub_514F0();
    v30 = sub_23FC(&qword_64650, &unk_53930);
    v32 = sub_121D4(0, v30, v30);
    v33 = sub_121D4(2, &type metadata for Any + 8, &type metadata for Any + 8);
    v35 = &v82;
    v82 = v31;
    v36 = &v81;
    v81 = v32;
    v37 = &v80;
    v80 = v33;
    v34 = 2;
    sub_12228(2, &v82);
    sub_12228(v34, v35);
    v78 = v61;
    v79 = v62;
    sub_1223C(&v78, v35, v36, v37);
    v38 = v23;
    if (v23)
    {

      __break(1u);
    }

    else
    {
      v78 = v63;
      v79 = v64;
      sub_1223C(&v78, &v82, &v81, &v80);
      v29 = 0;
      v78 = v65;
      v79 = v66;
      sub_1223C(&v78, &v82, &v81, &v80);
      v28 = 0;
      v78 = v67;
      v79 = v68;
      sub_1223C(&v78, &v82, &v81, &v80);
      v27 = 0;
      v78 = v69;
      v79 = v70;
      sub_1223C(&v78, &v82, &v81, &v80);
      v26 = 0;
      v78 = v72;
      v79 = v73;
      sub_1223C(&v78, &v82, &v81, &v80);
      _os_log_impl(&dword_0, v76, v77, "%s.%s: Automatic Updates: Triggering RecoveryOS Software Update Request", v31, 0x16u);
      sub_12288(v32, 0, v30);
      sub_12288(v33, 2, &type metadata for Any + 8);
      sub_514D0();
    }
  }

  else
  {
  }

  _objc_release(v76);
  (*(v41 + 8))(v44, v40);
  memcpy(v83, __dst, sizeof(v83));
  v24[1] = sub_184E0();
  v25 = sub_50B90();

  [v25 updateNeRDVersion];
  _objc_release(v25);
}

void *sub_231CC(uint64_t *a1)
{
  v27 = a1;
  v34 = 0;
  v44 = 0;
  v26 = 0;
  v28 = sub_50DB0();
  v29 = *(v28 - 8);
  v30 = v29;
  v1 = __chkstk_darwin(v27);
  v31 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v1;
  sub_50D90();
  v36 = sub_50DA0();
  v32 = v36;
  v35 = sub_51480();
  v33 = v35;
  sub_23FC(&qword_64648, &qword_51E60);
  v37 = sub_51650();
  if (os_log_type_enabled(v36, v35))
  {
    v3 = v26;
    v17 = sub_514F0();
    v13 = v17;
    v14 = sub_23FC(&qword_64650, &unk_53930);
    v15 = 0;
    v18 = sub_121D4(0, v14, v14);
    v16 = v18;
    v19 = sub_121D4(v15, &type metadata for Any + 8, &type metadata for Any + 8);
    v41 = v17;
    v40 = v18;
    v39 = v19;
    v20 = 0;
    v21 = &v41;
    sub_12228(0, &v41);
    sub_12228(v20, v21);
    v38 = v37;
    v22 = &v9;
    __chkstk_darwin(&v9);
    v23 = &v9 - 6;
    *(&v9 - 4) = v4;
    *(&v9 - 3) = &v40;
    *(&v9 - 2) = &v39;
    v24 = sub_23FC(&qword_64698, &qword_52170);
    sub_181A0();
    sub_513C0();
    v25 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v32, v33, "User Action: Clicked 'Close' on the nerdMenu alert in AutomaticUpdatesView", v13, 2u);
      v11 = 0;
      sub_12288(v16, 0, v14);
      sub_12288(v19, v11, &type metadata for Any + 8);
      sub_514D0();

      v12 = v25;
    }
  }

  else
  {

    v12 = v26;
  }

  (*(v30 + 8))(v31, v28);
  sub_18F68(v27, v43);
  v5 = *v27;
  v6 = *(v27 + 1);
  v7 = *(v27 + 2);
  v42[3] = *(v27 + 3);
  v42[2] = v7;
  v42[1] = v6;
  v42[0] = v5;
  v10 = v42;
  sub_1E434(0);
  result = v10;
  sub_180B8(v10);
  return result;
}

void *sub_23634(uint64_t *a1)
{
  v38 = a1;
  v45 = 0;
  v56 = 0;
  v35 = 0;
  v36 = (*(*(sub_23FC(&qword_64640, &qword_52260) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v37 = v17 - v36;
  v39 = sub_50DB0();
  v40 = *(v39 - 8);
  v41 = v40;
  v1 = __chkstk_darwin(v38);
  v42 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v1;
  sub_50D90();
  v47 = sub_50DA0();
  v43 = v47;
  v46 = sub_51480();
  v44 = v46;
  sub_23FC(&qword_64648, &qword_51E60);
  v48 = sub_51650();
  if (os_log_type_enabled(v47, v46))
  {
    v3 = v35;
    v26 = sub_514F0();
    v22 = v26;
    v23 = sub_23FC(&qword_64650, &unk_53930);
    v24 = 0;
    v27 = sub_121D4(0, v23, v23);
    v25 = v27;
    v28 = sub_121D4(v24, &type metadata for Any + 8, &type metadata for Any + 8);
    v52 = v26;
    v51 = v27;
    v50 = v28;
    v29 = 0;
    v30 = &v52;
    sub_12228(0, &v52);
    sub_12228(v29, v30);
    v49 = v48;
    v31 = v17;
    __chkstk_darwin(v17);
    v32 = &v17[-6];
    v17[-4] = v4;
    v17[-3] = &v51;
    v17[-2] = &v50;
    v33 = sub_23FC(&qword_64698, &qword_52170);
    sub_181A0();
    sub_513C0();
    v34 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v43, v44, "User Action: Clicked 'Turn off Automatic Updates' on the automaticUpdatesCancellation alert in AutomaticUpdatesView", v22, 2u);
      v20 = 0;
      sub_12288(v25, 0, v23);
      sub_12288(v28, v20, &type metadata for Any + 8);
      sub_514D0();

      v21 = v34;
    }
  }

  else
  {

    v21 = v35;
  }

  (*(v41 + 8))(v42, v39);
  sub_51430();
  v17[0] = 0;
  v5 = *(*(sub_51450() - 8) + 56);
  v18 = 0;
  v5(v37);
  sub_18F68(v38, v55);
  v6 = swift_allocObject();
  v7 = v17[0];
  v8 = v37;
  v9 = v38;
  *(v6 + 16) = v17[0];
  *(v6 + 24) = v7;
  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = *(v9 + 2);
  *(v6 + 80) = *(v9 + 3);
  *(v6 + 64) = v12;
  *(v6 + 48) = v11;
  *(v6 + 32) = v10;
  v17[1] = sub_F350(v7, v7, v8, &unk_52E60, v6, &type metadata for () + 8);
  sub_14BA4(v37);

  sub_18F68(v38, v54);
  v13 = *v38;
  v14 = *(v38 + 1);
  v15 = *(v38 + 2);
  v53[3] = *(v38 + 3);
  v53[2] = v15;
  v53[1] = v14;
  v53[0] = v13;
  v19 = v53;
  sub_1E434(v18);
  result = v19;
  sub_180B8(v19);
  return result;
}

uint64_t sub_23C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 296) = a4;
  *(v4 + 272) = v4;
  *(v4 + 280) = 0;
  *(v4 + 288) = 0;
  *(v4 + 384) = 0;
  v5 = sub_50DB0();
  *(v4 + 304) = v5;
  *(v4 + 312) = *(v5 - 8);
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 280) = a4;

  return _swift_task_switch(sub_23D78);
}

uint64_t sub_23D78()
{
  v1 = *(v0 + 296);
  *(v0 + 272) = v0;
  memcpy((v0 + 16), v1, 0x40uLL);
  *(v0 + 385) = sub_25A44() & 1;
  *(v0 + 336) = sub_51410();
  *(v0 + 344) = sub_51400();
  sub_513F0();

  return _swift_task_switch(sub_23E44);
}

uint64_t sub_23E44()
{
  v1 = *(v0 + 385);
  *(v0 + 272) = v0;
  sub_25A50(0, 0, v1 & 1);

  return _swift_task_switch(sub_23ED8);
}

uint64_t sub_23ED8()
{
  v1 = v0[37];
  v0[34] = v0;
  memcpy(v0 + 10, v1, 0x40uLL);
  v0[44] = sub_51400();
  sub_513F0();

  return _swift_task_switch(sub_23F84);
}

uint64_t sub_23F84()
{
  *(v0 + 272) = v0;
  *(v0 + 360) = sub_184E0();

  v1 = swift_task_alloc();
  *(v3 + 368) = v1;
  *v1 = *(v3 + 272);
  v1[1] = sub_24058;

  return ReactiveUIManager.unscheduleTargetedUpdate(delegate:)(0);
}

uint64_t sub_24058(char a1)
{
  v5 = *v2;
  *(v5 + 272) = *v2;
  *(v5 + 386) = a1;
  *(v5 + 376) = v1;

  if (v1)
  {
    v3 = sub_24E14;
  }

  else
  {

    v3 = sub_241E4;
  }

  return _swift_task_switch(v3);
}

uint64_t sub_241E4(uint64_t a1)
{
  v42 = v1;
  v2 = *(v1 + 386);
  v16 = v2;
  __src = *(v1 + 296);
  *(v1 + 272) = v1;
  *(v1 + 384) = v2 & 1;
  sub_50D90();
  sub_18F68(__src, v1 + 208);
  v17 = swift_allocObject();
  memcpy((v17 + 16), __src, 0x40uLL);
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  v35 = sub_50DA0();
  v36 = sub_51490();
  v25 = swift_allocObject();
  *(v25 + 16) = 32;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_3F0B0;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_3F198;
  *(v19 + 24) = v18;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_3F1E4;
  *(v27 + 24) = v19;
  v28 = swift_allocObject();
  *(v28 + 16) = 32;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_28CD8;
  *(v20 + 24) = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_3F2E4;
  *(v30 + 24) = v20;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 4;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_3F0E4;
  *(v22 + 24) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_3F3E4;
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_3F430;
  *(v24 + 24) = v23;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_3F47C;
  *(v33 + 24) = v24;
  sub_23FC(&qword_64648, &qword_51E60);
  sub_51650();
  v34 = v3;

  *v34 = sub_3F11C;
  v34[1] = v25;

  v34[2] = sub_3F150;
  v34[3] = v26;

  v34[4] = sub_3F230;
  v34[5] = v27;

  v34[6] = sub_3F268;
  v34[7] = v28;

  v34[8] = sub_3F29C;
  v34[9] = v29;

  v34[10] = sub_3F330;
  v34[11] = v30;

  v34[12] = sub_3F368;
  v34[13] = v31;

  v34[14] = sub_3F39C;
  v34[15] = v32;

  v34[16] = sub_3F4C8;
  v34[17] = v33;
  sub_1489C();

  if (os_log_type_enabled(v35, v36))
  {
    v4 = v14[47];
    buf = sub_514F0();
    v10 = sub_23FC(&qword_64650, &unk_53930);
    v12 = sub_121D4(0, v10, v10);
    v13 = sub_121D4(2, &type metadata for Any + 8, &type metadata for Any + 8);
    v37 = buf;
    v38 = v12;
    v39 = v13;
    sub_12228(2, &v37);
    sub_12228(3, &v37);
    v40 = sub_3F11C;
    v41 = v25;
    sub_1223C(&v40, &v37, &v38, &v39);
    if (v4)
    {
    }

    v40 = sub_3F150;
    v41 = v26;
    sub_1223C(&v40, &v37, &v38, &v39);
    v40 = sub_3F230;
    v41 = v27;
    sub_1223C(&v40, &v37, &v38, &v39);
    v40 = sub_3F268;
    v41 = v28;
    sub_1223C(&v40, &v37, &v38, &v39);
    v40 = sub_3F29C;
    v41 = v29;
    sub_1223C(&v40, &v37, &v38, &v39);
    v40 = sub_3F330;
    v41 = v30;
    sub_1223C(&v40, &v37, &v38, &v39);
    v40 = sub_3F368;
    v41 = v31;
    sub_1223C(&v40, &v37, &v38, &v39);
    v40 = sub_3F39C;
    v41 = v32;
    sub_1223C(&v40, &v37, &v38, &v39);
    v40 = sub_3F4C8;
    v41 = v33;
    sub_1223C(&v40, &v37, &v38, &v39);
    _os_log_impl(&dword_0, v35, v36, "%s.%s: unscheduleTargetedUpdate result: %{BOOL}d", buf, 0x1Cu);
    sub_12288(v12, 0, v10);
    sub_12288(v13, 2, &type metadata for Any + 8);
    sub_514D0();
  }

  else
  {
  }

  v8 = v14[41];
  v9 = v14[38];
  v7 = v14[39];
  _objc_release(v35);
  (*(v7 + 8))(v8, v9);

  v6 = *(v14[34] + 8);

  return v6();
}

uint64_t sub_24E14()
{
  v38 = v0;
  v13 = v0[47];
  __src = v0[37];
  v0[34] = v0;

  swift_errorRetain();
  v0[36] = v13;
  sub_50D90();
  sub_18F68(__src, (v0 + 18));
  v14 = swift_allocObject();
  memcpy((v14 + 16), __src, 0x40uLL);
  swift_errorRetain();
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  sub_28D78();

  v31 = sub_50DA0();
  v32 = sub_514A0();
  v21 = swift_allocObject();
  *(v21 + 16) = 32;
  v22 = swift_allocObject();
  *(v22 + 16) = 8;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_3EC70;
  *(v15 + 24) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_3ED68;
  *(v16 + 24) = v15;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_3EDB4;
  *(v23 + 24) = v16;
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_28D20;
  *(v17 + 24) = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_3EEB4;
  *(v26 + 24) = v17;
  v27 = swift_allocObject();
  *(v27 + 16) = 64;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_3ECB8;
  *(v19 + 24) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_3EFB4;
  *(v20 + 24) = v19;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_3F000;
  *(v29 + 24) = v20;
  sub_23FC(&qword_64648, &qword_51E60);
  sub_51650();
  v30 = v1;

  *v30 = sub_3ECEC;
  v30[1] = v21;

  v30[2] = sub_3ED20;
  v30[3] = v22;

  v30[4] = sub_3EE00;
  v30[5] = v23;

  v30[6] = sub_3EE38;
  v30[7] = v24;

  v30[8] = sub_3EE6C;
  v30[9] = v25;

  v30[10] = sub_3EF00;
  v30[11] = v26;

  v30[12] = sub_3EF38;
  v30[13] = v27;

  v30[14] = sub_3EF6C;
  v30[15] = v28;

  v30[16] = sub_3F04C;
  v30[17] = v29;
  sub_1489C();

  if (os_log_type_enabled(v31, v32))
  {
    buf = sub_514F0();
    v7 = sub_23FC(&qword_64650, &unk_53930);
    v9 = sub_121D4(1, v7, v7);
    v10 = sub_121D4(2, &type metadata for Any + 8, &type metadata for Any + 8);
    v33 = buf;
    v34 = v9;
    v35 = v10;
    sub_12228(2, &v33);
    sub_12228(3, &v33);
    v36 = sub_3ECEC;
    v37 = v21;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_3ED20;
    v37 = v22;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_3EE00;
    v37 = v23;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_3EE38;
    v37 = v24;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_3EE6C;
    v37 = v25;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_3EF00;
    v37 = v26;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_3EF38;
    v37 = v27;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_3EF6C;
    v37 = v28;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_3F04C;
    v37 = v29;
    sub_1223C(&v36, &v33, &v34, &v35);
    _os_log_impl(&dword_0, v31, v32, "%s.%s: Failed to unschedule targeted update: %@", buf, 0x20u);
    sub_12288(v9, 1, v7);
    sub_12288(v10, 2, &type metadata for Any + 8);
    sub_514D0();
  }

  else
  {
  }

  v5 = v11[40];
  v6 = v11[38];
  v4 = v11[39];
  _objc_release(v31);
  (*(v4 + 8))(v5, v6);

  v2 = *(v11[34] + 8);

  return v2();
}

__int128 *sub_25A50(unsigned int a1, int a2, int a3)
{
  v504 = a3;
  v507 = a2;
  v506 = a1;
  v505 = a2;
  v500 = a3;
  v501 = a2;
  v502 = a1;
  v584 = 0;
  v583 = 0;
  v582 = 0;
  v503 = 0;
  v508 = sub_50DB0();
  v509 = *(v508 - 8);
  v510 = v509;
  v513 = *(v509 + 64);
  v4 = __chkstk_darwin(v506);
  v515 = (v513 + 15) & 0xFFFFFFFFFFFFFFF0;
  v511 = &v209 - v515;
  v5 = __chkstk_darwin(v4);
  v512 = &v209 - v515;
  v6 = __chkstk_darwin(v5);
  v514 = &v209 - v515;
  v7 = __chkstk_darwin(v6);
  v516 = &v209 - v515;
  v584 = v7;
  v583 = v8;
  v582 = v9;
  v10 = *v3;
  v11 = v3[1];
  v12 = v3[2];
  v588 = v3[3];
  v587 = v12;
  v586 = v11;
  v585 = v10;
  v13 = *v3;
  v14 = v3[1];
  v15 = v3[2];
  v592 = v3[3];
  v591 = v15;
  v590 = v14;
  v589 = v13;
  if (v16)
  {
    if (v501 == 1)
    {
      v544 = v588;
      v543 = v587;
      v542 = v586;
      v541 = v585;
      v65 = sub_187A0();
      v420 = v65;
      KeyPath = swift_getKeyPath();
      (*(*v65 + 192))(&v540);
      v422 = v540;

      if (v422 == 1)
      {
        sub_50D90();
        sub_18F68(&v585, &v534);
        v402 = 7;
        v66 = swift_allocObject();
        v386 = v66;
        v67 = v585;
        v68 = v586;
        v69 = v587;
        v66[4] = v588;
        v66[3] = v69;
        v66[2] = v68;
        v66[1] = v67;
        v396 = 17;
        v399 = swift_allocObject();
        *(v399 + 16) = v502 & 1;
        v419 = sub_50DA0();
        v382 = v419;
        v418 = sub_514A0();
        v383 = v418;
        v406 = swift_allocObject();
        v384 = v406;
        v390 = 32;
        *(v406 + 16) = 32;
        v70 = swift_allocObject();
        v71 = v390;
        v407 = v70;
        v385 = v70;
        v392 = 8;
        *(v70 + 16) = 8;
        v401 = v71;
        v72 = swift_allocObject();
        v73 = v386;
        v387 = v72;
        *(v72 + 16) = sub_398E4;
        *(v72 + 24) = v73;
        v74 = swift_allocObject();
        v75 = v387;
        v388 = v74;
        *(v74 + 16) = sub_399CC;
        *(v74 + 24) = v75;
        v76 = swift_allocObject();
        v77 = v388;
        v408 = v76;
        v389 = v76;
        *(v76 + 16) = sub_39A18;
        *(v76 + 24) = v77;
        v409 = swift_allocObject();
        v391 = v409;
        *(v409 + 16) = v390;
        v410 = swift_allocObject();
        v393 = v410;
        *(v410 + 16) = v392;
        v78 = swift_allocObject();
        v394 = v78;
        *(v78 + 16) = sub_34FE8;
        *(v78 + 24) = 0;
        v79 = swift_allocObject();
        v80 = v394;
        v411 = v79;
        v395 = v79;
        *(v79 + 16) = sub_39B18;
        *(v79 + 24) = v80;
        v412 = swift_allocObject();
        v397 = v412;
        *(v412 + 16) = 0;
        v413 = swift_allocObject();
        v398 = v413;
        *(v413 + 16) = 4;
        v81 = swift_allocObject();
        v82 = v399;
        v400 = v81;
        *(v81 + 16) = sub_39918;
        *(v81 + 24) = v82;
        v83 = swift_allocObject();
        v84 = v400;
        v403 = v83;
        *(v83 + 16) = sub_39C18;
        *(v83 + 24) = v84;
        v85 = swift_allocObject();
        v86 = v403;
        v404 = v85;
        *(v85 + 16) = sub_39C64;
        *(v85 + 24) = v86;
        v87 = swift_allocObject();
        v88 = v404;
        v416 = v87;
        v405 = v87;
        *(v87 + 16) = sub_39CB0;
        *(v87 + 24) = v88;
        v417 = sub_23FC(&qword_64648, &qword_51E60);
        v414 = sub_51650();
        v415 = v89;

        v90 = v406;
        v91 = v415;
        *v415 = sub_39950;
        v91[1] = v90;

        v92 = v407;
        v93 = v415;
        v415[2] = sub_39984;
        v93[3] = v92;

        v94 = v408;
        v95 = v415;
        v415[4] = sub_39A64;
        v95[5] = v94;

        v96 = v409;
        v97 = v415;
        v415[6] = sub_39A9C;
        v97[7] = v96;

        v98 = v410;
        v99 = v415;
        v415[8] = sub_39AD0;
        v99[9] = v98;

        v100 = v411;
        v101 = v415;
        v415[10] = sub_39B64;
        v101[11] = v100;

        v102 = v412;
        v103 = v415;
        v415[12] = sub_39B9C;
        v103[13] = v102;

        v104 = v413;
        v105 = v415;
        v415[14] = sub_39BD0;
        v105[15] = v104;

        v106 = v415;
        v107 = v416;
        v415[16] = sub_39CFC;
        v106[17] = v107;
        sub_1489C();

        if (os_log_type_enabled(v419, v418))
        {
          v108 = v503;
          v375 = sub_514F0();
          v372 = v375;
          v373 = sub_23FC(&qword_64650, &unk_53930);
          v376 = sub_121D4(0, v373, v373);
          v374 = v376;
          v377 = 2;
          v378 = sub_121D4(2, &type metadata for Any + 8, &type metadata for Any + 8);
          v533 = v375;
          v532 = v376;
          v531 = v378;
          v379 = &v533;
          sub_12228(v377, &v533);
          sub_12228(3, v379);
          v529 = sub_39950;
          v530 = v384;
          sub_1223C(&v529, v379, &v532, &v531);
          v380 = v108;
          v381 = v108;
          if (v108)
          {
            v370 = 0;

            __break(1u);
          }

          else
          {
            v529 = sub_39984;
            v530 = v385;
            sub_1223C(&v529, &v533, &v532, &v531);
            v368 = 0;
            v369 = 0;
            v529 = sub_39A64;
            v530 = v389;
            sub_1223C(&v529, &v533, &v532, &v531);
            v366 = 0;
            v367 = 0;
            v529 = sub_39A9C;
            v530 = v391;
            sub_1223C(&v529, &v533, &v532, &v531);
            v364 = 0;
            v365 = 0;
            v529 = sub_39AD0;
            v530 = v393;
            sub_1223C(&v529, &v533, &v532, &v531);
            v362 = 0;
            v363 = 0;
            v529 = sub_39B64;
            v530 = v395;
            sub_1223C(&v529, &v533, &v532, &v531);
            v360 = 0;
            v361 = 0;
            v529 = sub_39B9C;
            v530 = v397;
            sub_1223C(&v529, &v533, &v532, &v531);
            v358 = 0;
            v359 = 0;
            v529 = sub_39BD0;
            v530 = v398;
            sub_1223C(&v529, &v533, &v532, &v531);
            v356 = 0;
            v357 = 0;
            v529 = sub_39CFC;
            v530 = v405;
            sub_1223C(&v529, &v533, &v532, &v531);
            v354 = 0;
            v355 = 0;
            _os_log_impl(&dword_0, v382, v383, "%s.%s: Skipping on assignment of automatic download to %{BOOL}d because the automatic download toggle is disabled", v372, 0x1Cu);
            sub_12288(v374, 0, v373);
            sub_12288(v378, 2, &type metadata for Any + 8);
            sub_514D0();

            v371 = v354;
          }
        }

        else
        {
          v109 = v503;

          v371 = v109;
        }

        v353 = v371;

        (*(v510 + 8))(v514, v508);
        return v353;
      }

      v539 = v588;
      v538 = v587;
      v537 = v586;
      v536 = v585;
      v110 = sub_187A0();
      v352 = v110;
      v111 = swift_getKeyPath();
      v535 = v502 & 1;
      (*(*v110 + 208))(&v535, v111);

      return v503;
    }

    else if (v501 == 2)
    {
      v565 = v588;
      v564 = v587;
      v563 = v586;
      v562 = v585;
      v112 = sub_187A0();
      v349 = v112;
      v350 = swift_getKeyPath();
      (*(*v112 + 192))(&v561);
      v351 = v561;

      if (v351 == 1)
      {
        sub_50D90();
        sub_18F68(&v585, &v550);
        v331 = 7;
        v113 = swift_allocObject();
        v315 = v113;
        v114 = v585;
        v115 = v586;
        v116 = v587;
        v113[4] = v588;
        v113[3] = v116;
        v113[2] = v115;
        v113[1] = v114;
        v325 = 17;
        v328 = swift_allocObject();
        *(v328 + 16) = v502 & 1;
        v348 = sub_50DA0();
        v311 = v348;
        v347 = sub_514A0();
        v312 = v347;
        v335 = swift_allocObject();
        v313 = v335;
        v319 = 32;
        *(v335 + 16) = 32;
        v117 = swift_allocObject();
        v118 = v319;
        v336 = v117;
        v314 = v117;
        v321 = 8;
        *(v117 + 16) = 8;
        v330 = v118;
        v119 = swift_allocObject();
        v120 = v315;
        v316 = v119;
        *(v119 + 16) = sub_393E8;
        *(v119 + 24) = v120;
        v121 = swift_allocObject();
        v122 = v316;
        v317 = v121;
        *(v121 + 16) = sub_394D0;
        *(v121 + 24) = v122;
        v123 = swift_allocObject();
        v124 = v317;
        v337 = v123;
        v318 = v123;
        *(v123 + 16) = sub_3951C;
        *(v123 + 24) = v124;
        v338 = swift_allocObject();
        v320 = v338;
        *(v338 + 16) = v319;
        v339 = swift_allocObject();
        v322 = v339;
        *(v339 + 16) = v321;
        v125 = swift_allocObject();
        v323 = v125;
        *(v125 + 16) = sub_35030;
        *(v125 + 24) = 0;
        v126 = swift_allocObject();
        v127 = v323;
        v340 = v126;
        v324 = v126;
        *(v126 + 16) = sub_3961C;
        *(v126 + 24) = v127;
        v341 = swift_allocObject();
        v326 = v341;
        *(v341 + 16) = 0;
        v342 = swift_allocObject();
        v327 = v342;
        *(v342 + 16) = 4;
        v128 = swift_allocObject();
        v129 = v328;
        v329 = v128;
        *(v128 + 16) = sub_3941C;
        *(v128 + 24) = v129;
        v130 = swift_allocObject();
        v131 = v329;
        v332 = v130;
        *(v130 + 16) = sub_3971C;
        *(v130 + 24) = v131;
        v132 = swift_allocObject();
        v133 = v332;
        v333 = v132;
        *(v132 + 16) = sub_39768;
        *(v132 + 24) = v133;
        v134 = swift_allocObject();
        v135 = v333;
        v345 = v134;
        v334 = v134;
        *(v134 + 16) = sub_397B4;
        *(v134 + 24) = v135;
        v346 = sub_23FC(&qword_64648, &qword_51E60);
        v343 = sub_51650();
        v344 = v136;

        v137 = v335;
        v138 = v344;
        *v344 = sub_39454;
        v138[1] = v137;

        v139 = v336;
        v140 = v344;
        v344[2] = sub_39488;
        v140[3] = v139;

        v141 = v337;
        v142 = v344;
        v344[4] = sub_39568;
        v142[5] = v141;

        v143 = v338;
        v144 = v344;
        v344[6] = sub_395A0;
        v144[7] = v143;

        v145 = v339;
        v146 = v344;
        v344[8] = sub_395D4;
        v146[9] = v145;

        v147 = v340;
        v148 = v344;
        v344[10] = sub_39668;
        v148[11] = v147;

        v149 = v341;
        v150 = v344;
        v344[12] = sub_396A0;
        v150[13] = v149;

        v151 = v342;
        v152 = v344;
        v344[14] = sub_396D4;
        v152[15] = v151;

        v153 = v344;
        v154 = v345;
        v344[16] = sub_39800;
        v153[17] = v154;
        sub_1489C();

        if (os_log_type_enabled(v348, v347))
        {
          v155 = v503;
          v304 = sub_514F0();
          v301 = v304;
          v302 = sub_23FC(&qword_64650, &unk_53930);
          v305 = sub_121D4(0, v302, v302);
          v303 = v305;
          v306 = 2;
          v307 = sub_121D4(2, &type metadata for Any + 8, &type metadata for Any + 8);
          v549 = v304;
          v548 = v305;
          v547 = v307;
          v308 = &v549;
          sub_12228(v306, &v549);
          sub_12228(3, v308);
          v545 = sub_39454;
          v546 = v313;
          sub_1223C(&v545, v308, &v548, &v547);
          v309 = v155;
          v310 = v155;
          if (v155)
          {
            v299 = 0;

            __break(1u);
          }

          else
          {
            v545 = sub_39488;
            v546 = v314;
            sub_1223C(&v545, &v549, &v548, &v547);
            v297 = 0;
            v298 = 0;
            v545 = sub_39568;
            v546 = v318;
            sub_1223C(&v545, &v549, &v548, &v547);
            v295 = 0;
            v296 = 0;
            v545 = sub_395A0;
            v546 = v320;
            sub_1223C(&v545, &v549, &v548, &v547);
            v293 = 0;
            v294 = 0;
            v545 = sub_395D4;
            v546 = v322;
            sub_1223C(&v545, &v549, &v548, &v547);
            v291 = 0;
            v292 = 0;
            v545 = sub_39668;
            v546 = v324;
            sub_1223C(&v545, &v549, &v548, &v547);
            v289 = 0;
            v290 = 0;
            v545 = sub_396A0;
            v546 = v326;
            sub_1223C(&v545, &v549, &v548, &v547);
            v287 = 0;
            v288 = 0;
            v545 = sub_396D4;
            v546 = v327;
            sub_1223C(&v545, &v549, &v548, &v547);
            v285 = 0;
            v286 = 0;
            v545 = sub_39800;
            v546 = v334;
            sub_1223C(&v545, &v549, &v548, &v547);
            v283 = 0;
            v284 = 0;
            _os_log_impl(&dword_0, v311, v312, "%s.%s: Skipping on assignment of automatic security responses to %{BOOL}d because the automatic security response toggle is disabled", v301, 0x1Cu);
            sub_12288(v303, 0, v302);
            sub_12288(v307, 2, &type metadata for Any + 8);
            sub_514D0();

            v300 = v283;
          }
        }

        else
        {
          v156 = v503;

          v300 = v156;
        }

        v282 = v300;

        (*(v510 + 8))(v512, v508);
        return v282;
      }

      v560 = v588;
      v559 = v587;
      v558 = v586;
      v557 = v585;
      v157 = sub_187A0();
      v281 = v157;
      v158 = swift_getKeyPath();
      v556 = v502 & 1;
      (*(*v157 + 208))(&v556, v158);

      if (v500)
      {
        v555 = v588;
        v554 = v587;
        v553 = v586;
        v552 = v585;
        v159 = sub_187A0();
        v280 = v159;
        v160 = swift_getKeyPath();
        v551 = v502 & 1;
        (*(*v159 + 208))(&v551, v160);
      }

      return v503;
    }

    else
    {
      v581 = v588;
      v580 = v587;
      v579 = v586;
      v578 = v585;
      v161 = sub_187A0();
      v277 = v161;
      v278 = swift_getKeyPath();
      (*(*v161 + 192))(&v577);
      v279 = v577;

      if (v279 == 1)
      {
        sub_50D90();
        sub_18F68(&v585, &v571);
        v259 = 7;
        v162 = swift_allocObject();
        v243 = v162;
        v163 = v585;
        v164 = v586;
        v165 = v587;
        v162[4] = v588;
        v162[3] = v165;
        v162[2] = v164;
        v162[1] = v163;
        v253 = 17;
        v256 = swift_allocObject();
        *(v256 + 16) = v502 & 1;
        v276 = sub_50DA0();
        v239 = v276;
        v275 = sub_514A0();
        v240 = v275;
        v263 = swift_allocObject();
        v241 = v263;
        v247 = 32;
        *(v263 + 16) = 32;
        v166 = swift_allocObject();
        v167 = v247;
        v264 = v166;
        v242 = v166;
        v249 = 8;
        *(v166 + 16) = 8;
        v258 = v167;
        v168 = swift_allocObject();
        v169 = v243;
        v244 = v168;
        *(v168 + 16) = sub_38EEC;
        *(v168 + 24) = v169;
        v170 = swift_allocObject();
        v171 = v244;
        v245 = v170;
        *(v170 + 16) = sub_38FD4;
        *(v170 + 24) = v171;
        v172 = swift_allocObject();
        v173 = v245;
        v265 = v172;
        v246 = v172;
        *(v172 + 16) = sub_39020;
        *(v172 + 24) = v173;
        v266 = swift_allocObject();
        v248 = v266;
        *(v266 + 16) = v247;
        v267 = swift_allocObject();
        v250 = v267;
        *(v267 + 16) = v249;
        v174 = swift_allocObject();
        v251 = v174;
        *(v174 + 16) = sub_35150;
        *(v174 + 24) = 0;
        v175 = swift_allocObject();
        v176 = v251;
        v268 = v175;
        v252 = v175;
        *(v175 + 16) = sub_39120;
        *(v175 + 24) = v176;
        v269 = swift_allocObject();
        v254 = v269;
        *(v269 + 16) = 0;
        v270 = swift_allocObject();
        v255 = v270;
        *(v270 + 16) = 4;
        v177 = swift_allocObject();
        v178 = v256;
        v257 = v177;
        *(v177 + 16) = sub_38F20;
        *(v177 + 24) = v178;
        v179 = swift_allocObject();
        v180 = v257;
        v260 = v179;
        *(v179 + 16) = sub_39220;
        *(v179 + 24) = v180;
        v181 = swift_allocObject();
        v182 = v260;
        v261 = v181;
        *(v181 + 16) = sub_3926C;
        *(v181 + 24) = v182;
        v183 = swift_allocObject();
        v184 = v261;
        v273 = v183;
        v262 = v183;
        *(v183 + 16) = sub_392B8;
        *(v183 + 24) = v184;
        v274 = sub_23FC(&qword_64648, &qword_51E60);
        v271 = sub_51650();
        v272 = v185;

        v186 = v263;
        v187 = v272;
        *v272 = sub_38F58;
        v187[1] = v186;

        v188 = v264;
        v189 = v272;
        v272[2] = sub_38F8C;
        v189[3] = v188;

        v190 = v265;
        v191 = v272;
        v272[4] = sub_3906C;
        v191[5] = v190;

        v192 = v266;
        v193 = v272;
        v272[6] = sub_390A4;
        v193[7] = v192;

        v194 = v267;
        v195 = v272;
        v272[8] = sub_390D8;
        v195[9] = v194;

        v196 = v268;
        v197 = v272;
        v272[10] = sub_3916C;
        v197[11] = v196;

        v198 = v269;
        v199 = v272;
        v272[12] = sub_391A4;
        v199[13] = v198;

        v200 = v270;
        v201 = v272;
        v272[14] = sub_391D8;
        v201[15] = v200;

        v202 = v272;
        v203 = v273;
        v272[16] = sub_39304;
        v202[17] = v203;
        sub_1489C();

        if (os_log_type_enabled(v276, v275))
        {
          v204 = v503;
          v232 = sub_514F0();
          v229 = v232;
          v230 = sub_23FC(&qword_64650, &unk_53930);
          v233 = sub_121D4(0, v230, v230);
          v231 = v233;
          v234 = 2;
          v235 = sub_121D4(2, &type metadata for Any + 8, &type metadata for Any + 8);
          v570 = v232;
          v569 = v233;
          v568 = v235;
          v236 = &v570;
          sub_12228(v234, &v570);
          sub_12228(3, v236);
          v566 = sub_38F58;
          v567 = v241;
          sub_1223C(&v566, v236, &v569, &v568);
          v237 = v204;
          v238 = v204;
          if (v204)
          {
            v227 = 0;

            __break(1u);
          }

          else
          {
            v566 = sub_38F8C;
            v567 = v242;
            sub_1223C(&v566, &v570, &v569, &v568);
            v225 = 0;
            v226 = 0;
            v566 = sub_3906C;
            v567 = v246;
            sub_1223C(&v566, &v570, &v569, &v568);
            v223 = 0;
            v224 = 0;
            v566 = sub_390A4;
            v567 = v248;
            sub_1223C(&v566, &v570, &v569, &v568);
            v221 = 0;
            v222 = 0;
            v566 = sub_390D8;
            v567 = v250;
            sub_1223C(&v566, &v570, &v569, &v568);
            v219 = 0;
            v220 = 0;
            v566 = sub_3916C;
            v567 = v252;
            sub_1223C(&v566, &v570, &v569, &v568);
            v217 = 0;
            v218 = 0;
            v566 = sub_391A4;
            v567 = v254;
            sub_1223C(&v566, &v570, &v569, &v568);
            v215 = 0;
            v216 = 0;
            v566 = sub_391D8;
            v567 = v255;
            sub_1223C(&v566, &v570, &v569, &v568);
            v213 = 0;
            v214 = 0;
            v566 = sub_39304;
            v567 = v262;
            sub_1223C(&v566, &v570, &v569, &v568);
            v211 = 0;
            v212 = 0;
            _os_log_impl(&dword_0, v239, v240, "%s.%s: Skipping on assignment of automatic system files & data to %{BOOL}d because the automatic security response toggle is disabled", v229, 0x1Cu);
            sub_12288(v231, 0, v230);
            sub_12288(v235, 2, &type metadata for Any + 8);
            sub_514D0();

            v228 = v211;
          }
        }

        else
        {
          v205 = v503;

          v228 = v205;
        }

        v210 = v228;

        (*(v510 + 8))(v511, v508);
        return v210;
      }

      v576 = v588;
      v575 = v587;
      v574 = v586;
      v573 = v585;
      v206 = sub_187A0();
      v209 = v206;
      v207 = swift_getKeyPath();
      v572 = v502 & 1;
      (*(*v206 + 208))(&v572, v207);

      return v503;
    }
  }

  v528 = v588;
  v527 = v587;
  v526 = v586;
  v525 = v585;
  v17 = sub_187A0();
  v497 = v17;
  v498 = swift_getKeyPath();
  (*(*v17 + 192))(&v524);
  v499 = v524;

  if (v499 == 1)
  {
    sub_50D90();
    sub_18F68(&v585, &v522);
    v479 = 7;
    v18 = swift_allocObject();
    v463 = v18;
    v19 = v585;
    v20 = v586;
    v21 = v587;
    v18[4] = v588;
    v18[3] = v21;
    v18[2] = v20;
    v18[1] = v19;
    v473 = 17;
    v476 = swift_allocObject();
    *(v476 + 16) = v502 & 1;
    v496 = sub_50DA0();
    v459 = v496;
    v495 = sub_514A0();
    v460 = v495;
    v483 = swift_allocObject();
    v461 = v483;
    v467 = 32;
    *(v483 + 16) = 32;
    v22 = swift_allocObject();
    v23 = v467;
    v484 = v22;
    v462 = v22;
    v469 = 8;
    *(v22 + 16) = 8;
    v478 = v23;
    v24 = swift_allocObject();
    v25 = v463;
    v464 = v24;
    *(v24 + 16) = sub_39E0C;
    *(v24 + 24) = v25;
    v26 = swift_allocObject();
    v27 = v464;
    v465 = v26;
    *(v26 + 16) = sub_39EF4;
    *(v26 + 24) = v27;
    v28 = swift_allocObject();
    v29 = v465;
    v485 = v28;
    v466 = v28;
    *(v28 + 16) = sub_39F40;
    *(v28 + 24) = v29;
    v486 = swift_allocObject();
    v468 = v486;
    *(v486 + 16) = v467;
    v487 = swift_allocObject();
    v470 = v487;
    *(v487 + 16) = v469;
    v30 = swift_allocObject();
    v471 = v30;
    *(v30 + 16) = sub_34E28;
    *(v30 + 24) = 0;
    v31 = swift_allocObject();
    v32 = v471;
    v488 = v31;
    v472 = v31;
    *(v31 + 16) = sub_3A040;
    *(v31 + 24) = v32;
    v489 = swift_allocObject();
    v474 = v489;
    *(v489 + 16) = 0;
    v490 = swift_allocObject();
    v475 = v490;
    *(v490 + 16) = 4;
    v33 = swift_allocObject();
    v34 = v476;
    v477 = v33;
    *(v33 + 16) = sub_39E40;
    *(v33 + 24) = v34;
    v35 = swift_allocObject();
    v36 = v477;
    v480 = v35;
    *(v35 + 16) = sub_3A140;
    *(v35 + 24) = v36;
    v37 = swift_allocObject();
    v38 = v480;
    v481 = v37;
    *(v37 + 16) = sub_3A18C;
    *(v37 + 24) = v38;
    v39 = swift_allocObject();
    v40 = v481;
    v493 = v39;
    v482 = v39;
    *(v39 + 16) = sub_3A1D8;
    *(v39 + 24) = v40;
    v494 = sub_23FC(&qword_64648, &qword_51E60);
    v491 = sub_51650();
    v492 = v41;

    v42 = v483;
    v43 = v492;
    *v492 = sub_39E78;
    v43[1] = v42;

    v44 = v484;
    v45 = v492;
    v492[2] = sub_39EAC;
    v45[3] = v44;

    v46 = v485;
    v47 = v492;
    v492[4] = sub_39F8C;
    v47[5] = v46;

    v48 = v486;
    v49 = v492;
    v492[6] = sub_39FC4;
    v49[7] = v48;

    v50 = v487;
    v51 = v492;
    v492[8] = sub_39FF8;
    v51[9] = v50;

    v52 = v488;
    v53 = v492;
    v492[10] = sub_3A08C;
    v53[11] = v52;

    v54 = v489;
    v55 = v492;
    v492[12] = sub_3A0C4;
    v55[13] = v54;

    v56 = v490;
    v57 = v492;
    v492[14] = sub_3A0F8;
    v57[15] = v56;

    v58 = v492;
    v59 = v493;
    v492[16] = sub_3A224;
    v58[17] = v59;
    sub_1489C();

    if (os_log_type_enabled(v496, v495))
    {
      v60 = v503;
      v452 = sub_514F0();
      v449 = v452;
      v450 = sub_23FC(&qword_64650, &unk_53930);
      v453 = sub_121D4(0, v450, v450);
      v451 = v453;
      v454 = 2;
      v455 = sub_121D4(2, &type metadata for Any + 8, &type metadata for Any + 8);
      v521 = v452;
      v520 = v453;
      v519 = v455;
      v456 = &v521;
      sub_12228(v454, &v521);
      sub_12228(3, v456);
      v517 = sub_39E78;
      v518 = v461;
      sub_1223C(&v517, v456, &v520, &v519);
      v457 = v60;
      v458 = v60;
      if (v60)
      {
        v447 = 0;

        __break(1u);
      }

      else
      {
        v517 = sub_39EAC;
        v518 = v462;
        sub_1223C(&v517, &v521, &v520, &v519);
        v445 = 0;
        v446 = 0;
        v517 = sub_39F8C;
        v518 = v466;
        sub_1223C(&v517, &v521, &v520, &v519);
        v443 = 0;
        v444 = 0;
        v517 = sub_39FC4;
        v518 = v468;
        sub_1223C(&v517, &v521, &v520, &v519);
        v441 = 0;
        v442 = 0;
        v517 = sub_39FF8;
        v518 = v470;
        sub_1223C(&v517, &v521, &v520, &v519);
        v439 = 0;
        v440 = 0;
        v517 = sub_3A08C;
        v518 = v472;
        sub_1223C(&v517, &v521, &v520, &v519);
        v437 = 0;
        v438 = 0;
        v517 = sub_3A0C4;
        v518 = v474;
        sub_1223C(&v517, &v521, &v520, &v519);
        v435 = 0;
        v436 = 0;
        v517 = sub_3A0F8;
        v518 = v475;
        sub_1223C(&v517, &v521, &v520, &v519);
        v433 = 0;
        v434 = 0;
        v517 = sub_3A224;
        v518 = v482;
        sub_1223C(&v517, &v521, &v520, &v519);
        v431 = 0;
        v432 = 0;
        _os_log_impl(&dword_0, v459, v460, "%s.%s: Skipping on assignment of automatic update to %{BOOL}d because the automatic updates toggle is disabled", v449, 0x1Cu);
        sub_12288(v451, 0, v450);
        sub_12288(v455, 2, &type metadata for Any + 8);
        sub_514D0();

        v448 = v431;
      }
    }

    else
    {
      v61 = v503;

      v448 = v61;
    }

    v429 = v448;

    (*(v510 + 8))(v516, v508);
    return v429;
  }

  v62 = v503;
  v425 = sub_511D0();
  v424 = v425;
  v427 = &v585;
  sub_18F68(&v585, &v523);
  v426 = &v209;
  __chkstk_darwin(v425);
  v63 = v502;
  *(&v209 - 2) = v427;
  *(&v209 - 8) = v63 & 1;
  *(&v209 - 7) = v64 & 1;
  sub_50E20();
  v428 = v62;
  if (!v62)
  {
    sub_180B8(&v585);

    return v428;
  }

  result = &v585;
  sub_180B8(&v585);
  __break(1u);
  return result;
}