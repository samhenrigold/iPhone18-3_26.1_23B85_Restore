double sub_1BCC74FB8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v21 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08780, &qword_1BCE4B410);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22[-v12 - 7];
  if (qword_1EBD07278 != -1)
  {
    OUTLINED_FUNCTION_0_59(&qword_1EBD07278);
  }

  v14 = qword_1EBD2A348;

  sub_1BCE1C3C0();
  v15 = *MEMORY[0x1E6980E28];
  v16 = sub_1BCE1C350();
  OUTLINED_FUNCTION_4();
  (*(v17 + 104))(v13, v15, v16);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v16);
  v18 = sub_1BCE1C3D0();
  sub_1BC94C05C(v13, &qword_1EBD08780, &qword_1BCE4B410);
  *a6 = a1;
  *(a6 + 8) = a2;
  v19 = v21;
  *(a6 + 16) = a3;
  *(a6 + 24) = v19;
  *(a6 + 32) = a5 & 1;
  *(a6 + 33) = *v22;
  *(a6 + 36) = *&v22[3];
  *(a6 + 40) = xmmword_1BCE551E0;
  result = 4.0;
  *(a6 + 56) = xmmword_1BCE551F0;
  *(a6 + 72) = 0x4008000000000000;
  *(a6 + 80) = v14;
  *(a6 + 88) = v18;
  return result;
}

__n128 sub_1BCC75168@<Q0>(uint64_t a2@<X8>)
{
  v4 = sub_1BCE1BE10();
  v13 = 0;
  sub_1BCC75258(v2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v15, __src, sizeof(v15));
  sub_1BCB958BC(__dst, v10);
  sub_1BC94C05C(v15, &qword_1EBD0A510, &qword_1BCE5C5A0);
  memcpy(&v12[7], __dst, 0x60uLL);
  v5 = v13;
  v9 = *(v2 + 56);
  v6 = *(v2 + 72);
  v7 = sub_1BCE1C250();
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  memcpy((a2 + 17), v12, 0x67uLL);
  *(a2 + 120) = v7;
  *(a2 + 128) = 0;
  result = v9;
  *(a2 + 136) = v9;
  *(a2 + 152) = v6;
  *(a2 + 160) = 0;
  return result;
}

double sub_1BCC75258@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  if ((v3 & 1) != 0 && qword_1EDA17938 != -1)
  {
    swift_once();
  }

  v4 = sub_1BCE1C610();
  v6 = v5;
  v8 = v7;

  v9 = sub_1BCE1C5C0();
  v28 = v10;
  v29 = v9;
  v27 = v11;
  v30 = v12;
  sub_1BC998CF4(v4, v6, v8 & 1);

  if (qword_1EBD07270 != -1)
  {
    swift_once();
  }

  v13 = *&qword_1EBD0BA20;
  if ((v3 & 1) != 0 && qword_1EDA17938 != -1)
  {
    swift_once();
  }

  v14 = sub_1BCE1C610();
  v16 = v15;
  v18 = v17;

  v19 = sub_1BCE1C5C0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_1BC998CF4(v14, v16, v18 & 1);

  *a2 = v29;
  *(a2 + 8) = v28;
  *(a2 + 16) = v27 & 1;
  *(a2 + 24) = v30;
  *(a2 + 32) = 0;
  *(a2 + 40) = -v13;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = v19;
  *(a2 + 72) = v21;
  *(a2 + 80) = v23 & 1;
  *(a2 + 88) = v25;
  sub_1BCA81D10(v29, v28, v27 & 1);

  sub_1BCA81D10(v19, v21, v23 & 1);

  sub_1BC998CF4(v19, v21, v23 & 1);

  sub_1BC998CF4(v29, v28, v27 & 1);

  return result;
}

double sub_1BCC75534()
{
  v0 = [objc_opt_self() systemFontOfSize:9.0 weight:*MEMORY[0x1E69DB980]];
  [v0 ascender];
  v2 = v1;
  [v0 capHeight];
  v4 = v3;

  result = v2 - v4;
  *&qword_1EBD0BA20 = v2 - v4;
  return result;
}

uint64_t sub_1BCC755C0(uint64_t a1)
{
  sub_1BCE1CAB0();
  v1 = sub_1BCE1CAE0();

  qword_1EBD2A348 = v1;
  return result;
}

double sub_1BCC75604@<D0>(uint64_t a1@<X8>)
{
  memcpy(v4, v1, sizeof(v4));
  *&result = sub_1BCC75168(a1).n128_u64[0];
  return result;
}

void sub_1BCC75648()
{
  sub_1BCC75670();
  qword_1EBD2A350 = v0;
  *algn_1EBD2A358 = v1;
  qword_1EBD2A360 = v2;
  unk_1EBD2A368 = v3;
}

void sub_1BCC75670()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v0 setMinimumIntegerDigits_];
  [v0 setMaximumFractionDigits_];
  v1 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v2 = [v0 stringFromNumber_];

  if (v2)
  {
    sub_1BCE1D280();

    v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v4 = [v0 stringFromNumber_];

    if (v4)
    {
      sub_1BCE1D280();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BCC757F8(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCC75FA8();
  v4 = v3;
  sub_1BCC75FA8();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC422800000000000;
  *(a1 + 80) = xmmword_1BCE3E630;
  *(a1 + 96) = xmmword_1BCE3F420;
  *(a1 + 112) = 0x3EB851EB3E428F5CLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3F430;
  *(a1 + 160) = xmmword_1BCE3F440;
  *(a1 + 176) = 1148152459;
  *(a1 + 184) = 0x3E3851EC3E0F5C29;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4220000040B00000;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4461000042480000;
  *(a1 + 328) = 0x3E8000003E19999ALL;
  *(a1 + 336) = 0x3FB5C28F00000000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3F800000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3F450;
  *(a1 + 448) = 0x3E99999A3E428F5CLL;
  *(a1 + 464) = xmmword_1BCE3F460;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x4396000040400000;
  *(a1 + 504) = 1119748096;
  *(a1 + 512) = 0x3E4CCCCD3E19999ALL;
  *(a1 + 528) = xmmword_1BCE3F470;
  *(a1 + 544) = xmmword_1BCE3F480;
  *(a1 + 560) = 0x42B4000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C7C0;
  *(a1 + 592) = xmmword_1BCE3F490;
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3FC000003F666667;
  *(a1 + 720) = 0x41A8000041800000;
  *(a1 + 728) = 1095761920;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3BF40;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F99999A3F666667;
  *(a1 + 848) = 0x4140000041000000;
  *(a1 + 856) = 0x42480000402EACC0;
  *(a1 + 864) = 1;
  *(a1 + 872) = 5;
  *(a1 + 880) = xmmword_1BCE3F4C0;
  *(a1 + 896) = 0x2073756C756D7543;
  *(a1 + 904) = 0xEB000000004C202DLL;
  *(a1 + 912) = 0x5F73756C756D7543;
  *(a1 + 920) = 0xEF4C656C676E6953;
  *(a1 + 928) = 10;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x400666663FE66667;
  *(a1 + 976) = 0x4063D70A40400000;
  *(a1 + 984) = 0x42480000BFBDCB60;
  *(a1 + 992) = 0;
  *(a1 + 1000) = 6;
  *(a1 + 1008) = xmmword_1BCE3D8A0;
  *(a1 + 1024) = 0x7970736957;
  *(a1 + 1032) = 0xE500000000000000;
  strcpy((a1 + 1040), "Wispy_Single");
  *(a1 + 1053) = 0;
  *(a1 + 1054) = -5120;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0;
  __asm { FMOV            V3.2S, #3.25 }

  *(a1 + 1104) = _D3;
  *(a1 + 1112) = 0x42820000C0D00000;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 2;
  *(a1 + 1136) = xmmword_1BCE3C710;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE55B20;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x73757461727453;
  *(a1 + 1248) = 0xE700000000000000;
  *(a1 + 1256) = 0x5F73757461727453;
  *(a1 + 1264) = 0xEF74656B6E616C42;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400C28F63F88F5C2;
  *(a1 + 1296) = 0x41A0000042B40000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 2;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3F4F0;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V2.2S, #-30.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 0;
  *(a1 + 1630) = 1;
  *(a1 + 1639) = 0;
  *(a1 + 1631) = 0;
  *(a1 + 1641) = 1;
  *(v2 + 206) = 0x101010100000000;
  *(a1 + 1650) = 257;
  *(a1 + 1652) = 2;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v13;
  *(a1 + 1659) = v14;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 9;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1052770304;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3E99999A00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3E700;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E428F5C3E19999ALL;
  *(a1 + 2128) = 0x4039999A3FA3D70ALL;
  *(a1 + 2136) = 0x4100000040800000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1043878380;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2304) = 3;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
}

__n128 sub_1BCC75FA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858, &qword_1BCE6CF50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3EBD0;
  *(v0 + 48) = xmmword_1BCE3F510;
  *(v0 + 64) = 0x420C000043480000;
  *(v0 + 80) = xmmword_1BCE3F520;
  *(v0 + 96) = xmmword_1BCE3F530;
  *(v0 + 112) = xmmword_1BCE3F540;
  *(v0 + 128) = xmmword_1BCE3F550;
  *(v0 + 144) = xmmword_1BCE3F560;
  *(v0 + 160) = xmmword_1BCE3F570;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 4928) = 1147207680;
  *(v0 + 6144) = 1147207680;
  *(v0 + 5600) = xmmword_1BCE3F9F0;
  *(v0 + 6816) = xmmword_1BCE3F9F0;
  *(v0 + 5888) = xmmword_1BCE3CBA0;
  *(v0 + 7104) = xmmword_1BCE3CBA0;
  *(v0 + 3696) = xmmword_1BCE3EE30;
  *(v0 + 4912) = xmmword_1BCE3EE30;
  *(v0 + 6128) = xmmword_1BCE3EE30;
  *(v0 + 7344) = xmmword_1BCE3EE30;
  *(v0 + 3712) = 1145569280;
  *(v0 + 7360) = 1145569280;
  *(v0 + 3760) = xmmword_1BCE3F920;
  *(v0 + 4976) = xmmword_1BCE3F920;
  *(v0 + 6192) = xmmword_1BCE3F920;
  *(v0 + 7408) = xmmword_1BCE3F920;
  *(v0 + 3776) = xmmword_1BCE3F930;
  *(v0 + 4992) = xmmword_1BCE3F930;
  *(v0 + 6208) = xmmword_1BCE3F930;
  *(v0 + 7424) = xmmword_1BCE3F930;
  *(v0 + 3888) = xmmword_1BCE3F940;
  *(v0 + 5104) = xmmword_1BCE3F940;
  *(v0 + 6320) = xmmword_1BCE3F940;
  *(v0 + 7536) = xmmword_1BCE3F940;
  *(v0 + 3904) = xmmword_1BCE3F950;
  *(v0 + 5120) = xmmword_1BCE3F950;
  *(v0 + 6336) = xmmword_1BCE3F950;
  *(v0 + 7552) = xmmword_1BCE3F950;
  *(v0 + 3920) = xmmword_1BCE3F960;
  *(v0 + 5136) = xmmword_1BCE3F960;
  *(v0 + 6352) = xmmword_1BCE3F960;
  *(v0 + 7568) = xmmword_1BCE3F960;
  *(v0 + 3952) = xmmword_1BCE3F970;
  *(v0 + 5168) = xmmword_1BCE3F970;
  *(v0 + 6384) = xmmword_1BCE3F970;
  *(v0 + 7600) = xmmword_1BCE3F970;
  *(v0 + 3968) = xmmword_1BCE3F980;
  *(v0 + 5184) = xmmword_1BCE3F980;
  *(v0 + 6400) = xmmword_1BCE3F980;
  *(v0 + 7616) = xmmword_1BCE3F980;
  *(v0 + 3984) = xmmword_1BCE3F990;
  *(v0 + 5200) = xmmword_1BCE3F990;
  *(v0 + 6416) = xmmword_1BCE3F990;
  *(v0 + 7632) = xmmword_1BCE3F990;
  *(v0 + 4000) = xmmword_1BCE3C9D0;
  *(v0 + 5216) = xmmword_1BCE3C9D0;
  *(v0 + 6432) = xmmword_1BCE3C9D0;
  *(v0 + 7648) = xmmword_1BCE3C9D0;
  *(v0 + 4016) = xmmword_1BCE3FD30;
  *(v0 + 5232) = xmmword_1BCE3FD30;
  *(v0 + 6448) = xmmword_1BCE3FD30;
  *(v0 + 7664) = xmmword_1BCE3FD30;
  *(v0 + 4032) = 1063675494;
  *(v0 + 5248) = 1063675494;
  *(v0 + 6464) = 1063675494;
  *(v0 + 7680) = 1063675494;
  *(v0 + 4048) = xmmword_1BCE3CDC0;
  *(v0 + 5264) = xmmword_1BCE3CDC0;
  *(v0 + 6480) = xmmword_1BCE3CDC0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 4160) = xmmword_1BCE3F9A0;
  *(v0 + 5376) = xmmword_1BCE3F9A0;
  *(v0 + 6592) = xmmword_1BCE3F9A0;
  *(v0 + 7808) = xmmword_1BCE3F9A0;
  *(v0 + 4192) = xmmword_1BCE3F9B0;
  *(v0 + 5408) = xmmword_1BCE3F9B0;
  *(v0 + 6624) = xmmword_1BCE3F9B0;
  *(v0 + 7840) = xmmword_1BCE3F9B0;
  *(v0 + 4224) = xmmword_1BCE3F9C0;
  *(v0 + 5440) = xmmword_1BCE3F9C0;
  *(v0 + 6656) = xmmword_1BCE3F9C0;
  *(v0 + 7872) = xmmword_1BCE3F9C0;
  __asm { FMOV            V18.2D, #0.75 }

  *(v0 + 4144) = _Q18;
  *(v0 + 4176) = _Q18;
  *(v0 + 4208) = _Q18;
  *(v0 + 4240) = _Q18;
  *(v0 + 5360) = _Q18;
  *(v0 + 5392) = _Q18;
  *(v0 + 5424) = _Q18;
  *(v0 + 5456) = _Q18;
  *(v0 + 6576) = _Q18;
  *(v0 + 6608) = _Q18;
  *(v0 + 6640) = _Q18;
  *(v0 + 6672) = _Q18;
  *(v0 + 7792) = _Q18;
  *(v0 + 7824) = _Q18;
  *(v0 + 7856) = _Q18;
  *(v0 + 7888) = _Q18;
  *(v0 + 4256) = xmmword_1BCE3F9D0;
  *(v0 + 5472) = xmmword_1BCE3F9D0;
  *(v0 + 6688) = xmmword_1BCE3F9D0;
  *(v0 + 7904) = xmmword_1BCE3F9D0;
  *(v0 + 4416) = xmmword_1BCE3D4E0;
  *(v0 + 5632) = xmmword_1BCE3D4E0;
  *(v0 + 6848) = xmmword_1BCE3D4E0;
  *(v0 + 8064) = xmmword_1BCE3D4E0;
  *(v0 + 4448) = xmmword_1BCE3D430;
  *(v0 + 5664) = xmmword_1BCE3D430;
  *(v0 + 6880) = xmmword_1BCE3D430;
  *(v0 + 8096) = xmmword_1BCE3D430;
  *(v0 + 4576) = xmmword_1BCE3F9E0;
  *(v0 + 5792) = xmmword_1BCE3F9E0;
  *(v0 + 7008) = xmmword_1BCE3F9E0;
  *(v0 + 8224) = xmmword_1BCE3F9E0;
  *(v0 + 4672) = xmmword_1BCE3EF30;
  *(v0 + 8320) = xmmword_1BCE3EF30;
  *(v0 + 2480) = xmmword_1BCE3F7B0;
  *(v0 + 8560) = xmmword_1BCE3F7B0;
  *(v0 + 2496) = 1137180672;
  *(v0 + 8576) = 1137180672;
  *(v0 + 2512) = xmmword_1BCE3F7C0;
  *(v0 + 8592) = xmmword_1BCE3F7C0;
  *(v0 + 2528) = xmmword_1BCE3F7D0;
  *(v0 + 8608) = xmmword_1BCE3F7D0;
  *(v0 + 2544) = xmmword_1BCE3F7E0;
  *(v0 + 8624) = xmmword_1BCE3F7E0;
  *(v0 + 2560) = xmmword_1BCE3F7F0;
  *(v0 + 8640) = xmmword_1BCE3F7F0;
  *(v0 + 2576) = xmmword_1BCE3E180;
  *(v0 + 3792) = xmmword_1BCE3E180;
  *(v0 + 5008) = xmmword_1BCE3E180;
  *(v0 + 6224) = xmmword_1BCE3E180;
  *(v0 + 7440) = xmmword_1BCE3E180;
  *(v0 + 8656) = xmmword_1BCE3E180;
  *(v0 + 2592) = xmmword_1BCE3CB90;
  *(v0 + 3808) = xmmword_1BCE3CB90;
  *(v0 + 5024) = xmmword_1BCE3CB90;
  *(v0 + 6240) = xmmword_1BCE3CB90;
  *(v0 + 7456) = xmmword_1BCE3CB90;
  *(v0 + 8672) = xmmword_1BCE3CB90;
  *(v0 + 2672) = xmmword_1BCE3F800;
  *(v0 + 8752) = xmmword_1BCE3F800;
  *(v0 + 2688) = xmmword_1BCE3F810;
  *(v0 + 8768) = xmmword_1BCE3F810;
  *(v0 + 2704) = xmmword_1BCE3F820;
  *(v0 + 8784) = xmmword_1BCE3F820;
  *(v0 + 2720) = xmmword_1BCE3F830;
  *(v0 + 8800) = xmmword_1BCE3F830;
  *(v0 + 2736) = xmmword_1BCE3F840;
  *(v0 + 8816) = xmmword_1BCE3F840;
  *(v0 + 2752) = xmmword_1BCE3F850;
  *(v0 + 8832) = xmmword_1BCE3F850;
  *(v0 + 2768) = xmmword_1BCE3F860;
  *(v0 + 8848) = xmmword_1BCE3F860;
  *(v0 + 2784) = xmmword_1BCE3F870;
  *(v0 + 8864) = xmmword_1BCE3F870;
  *(v0 + 2800) = xmmword_1BCE42C40;
  *(v0 + 8880) = xmmword_1BCE42C40;
  *&_Q18 = vdup_n_s32(0x3F4CCCCDu);
  *(v0 + 2816) = _Q18;
  *(v0 + 8896) = _Q18;
  *(v0 + 2928) = xmmword_1BCE3F880;
  *(v0 + 9008) = xmmword_1BCE3F880;
  *(v0 + 2944) = xmmword_1BCE3F890;
  *(v0 + 9024) = xmmword_1BCE3F890;
  *(v0 + 2976) = xmmword_1BCE3F8B0;
  *(v0 + 9056) = xmmword_1BCE3F8B0;
  *(v0 + 2992) = xmmword_1BCE3F8C0;
  *(v0 + 9072) = xmmword_1BCE3F8C0;
  *(v0 + 3008) = xmmword_1BCE3F8D0;
  *(v0 + 9088) = xmmword_1BCE3F8D0;
  *(v0 + 2960) = xmmword_1BCE3F8A0;
  *(v0 + 3024) = xmmword_1BCE3F8A0;
  *(v0 + 9040) = xmmword_1BCE3F8A0;
  *(v0 + 9104) = xmmword_1BCE3F8A0;
  *(v0 + 3040) = xmmword_1BCE3F8E0;
  *(v0 + 9120) = xmmword_1BCE3F8E0;
  *(v0 + 3232) = xmmword_1BCE3F8F0;
  *(v0 + 9312) = xmmword_1BCE3F8F0;
  *(v0 + 3344) = xmmword_1BCE3F900;
  *(v0 + 9424) = xmmword_1BCE3F900;
  *(v0 + 3360) = xmmword_1BCE3F910;
  *(v0 + 9440) = xmmword_1BCE3F910;
  *(v0 + 1264) = xmmword_1BCE3F6C0;
  *(v0 + 9776) = xmmword_1BCE3F6C0;
  *(v0 + 1296) = xmmword_1BCE3E140;
  *(v0 + 3728) = xmmword_1BCE3E140;
  *(v0 + 4944) = xmmword_1BCE3E140;
  *(v0 + 6160) = xmmword_1BCE3E140;
  *(v0 + 7376) = xmmword_1BCE3E140;
  *(v0 + 9808) = xmmword_1BCE3E140;
  *(v0 + 1312) = xmmword_1BCE3E150;
  *(v0 + 3744) = xmmword_1BCE3E150;
  *(v0 + 4960) = xmmword_1BCE3E150;
  *(v0 + 6176) = xmmword_1BCE3E150;
  *(v0 + 7392) = xmmword_1BCE3E150;
  *(v0 + 9824) = xmmword_1BCE3E150;
  *(v0 + 1328) = xmmword_1BCE3F6D0;
  *(v0 + 9840) = xmmword_1BCE3F6D0;
  *(v0 + 1360) = xmmword_1BCE3F6E0;
  *(v0 + 9872) = xmmword_1BCE3F6E0;
  *(v0 + 1376) = xmmword_1BCE3ED00;
  *(v0 + 9888) = xmmword_1BCE3ED00;
  *(v0 + 1456) = xmmword_1BCE3F6F0;
  *(v0 + 9968) = xmmword_1BCE3F6F0;
  *(v0 + 1472) = xmmword_1BCE3F700;
  *(v0 + 9984) = xmmword_1BCE3F700;
  *(v0 + 1488) = xmmword_1BCE3F710;
  *(v0 + 10000) = xmmword_1BCE3F710;
  *(v0 + 1552) = xmmword_1BCE3F740;
  *(v0 + 10064) = xmmword_1BCE3F740;
  *(v0 + 1712) = xmmword_1BCE3F750;
  *(v0 + 10224) = xmmword_1BCE3F750;
  *(v0 + 1744) = xmmword_1BCE3F760;
  *(v0 + 10256) = xmmword_1BCE3F760;
  *(v0 + 1776) = xmmword_1BCE3F770;
  *(v0 + 10288) = xmmword_1BCE3F770;
  *(v0 + 2016) = xmmword_1BCE3F780;
  *(v0 + 10528) = xmmword_1BCE3F780;
  *(v0 + 2128) = xmmword_1BCE3F790;
  *(v0 + 10640) = xmmword_1BCE3F790;
  *(v0 + 2144) = xmmword_1BCE3F7A0;
  *(v0 + 10656) = xmmword_1BCE3F7A0;
  *(v0 + 240) = xmmword_1BCE3F580;
  *(v0 + 256) = xmmword_1BCE3DCB0;
  *(v0 + 10992) = xmmword_1BCE3F510;
  *(v0 + 272) = xmmword_1BCE3F590;
  *(v0 + 1280) = 0x420C000043480000;
  *(v0 + 9792) = 0x420C000043480000;
  *(v0 + 11008) = 0x420C000043480000;
  *(v0 + 11024) = xmmword_1BCE3F520;
  *(v0 + 304) = xmmword_1BCE3F5B0;
  *(v0 + 320) = xmmword_1BCE3F5C0;
  *(v0 + 11040) = xmmword_1BCE3F530;
  *(v0 + 11056) = xmmword_1BCE3F540;
  *(v0 + 336) = xmmword_1BCE3F5D0;
  *(v0 + 352) = xmmword_1BCE3F5E0;
  *(v0 + 1344) = xmmword_1BCE3F550;
  *(v0 + 9856) = xmmword_1BCE3F550;
  *(v0 + 11072) = xmmword_1BCE3F550;
  *(v0 + 368) = xmmword_1BCE3FC10;
  *(v0 + 11088) = xmmword_1BCE3F560;
  *(v0 + 384) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11104) = xmmword_1BCE3F570;
  *(v0 + 11184) = xmmword_1BCE3F580;
  *(v0 + 11200) = xmmword_1BCE3DCB0;
  *(v0 + 8368) = result;
  *(v0 + 11216) = xmmword_1BCE3F590;
  *(v0 + 1520) = xmmword_1BCE3F5B0;
  *(v0 + 8304) = result;
  *(v0 + 8336) = result;
  *(v0 + 8352) = xmmword_1BCE3F6B0;
  *(v0 + 8240) = result;
  *(v0 + 8256) = xmmword_1BCE3A880;
  *(v0 + 8272) = result;
  *(v0 + 8288) = xmmword_1BCE3F6A0;
  *(v0 + 10032) = xmmword_1BCE3F5B0;
  *(v0 + 11248) = xmmword_1BCE3F5B0;
  *(v0 + 8144) = result;
  *(v0 + 8160) = result;
  *(v0 + 8176) = result;
  *(v0 + 0x2000) = xmmword_1BCE3F680;
  *(v0 + 8208) = result;
  *(v0 + 1536) = xmmword_1BCE3F5C0;
  *(v0 + 8080) = result;
  *(v0 + 8112) = result;
  *(v0 + 8128) = result;
  *(v0 + 10048) = xmmword_1BCE3F5C0;
  *(v0 + 11264) = xmmword_1BCE3F5C0;
  *(v0 + 8016) = result;
  *(v0 + 8032) = xmmword_1BCE3C8C0;
  *(v0 + 8048) = result;
  *(v0 + 11280) = xmmword_1BCE3F5D0;
  *(v0 + 7936) = xmmword_1BCE3A880;
  *(v0 + 7952) = result;
  *(v0 + 7968) = result;
  *(v0 + 7984) = result;
  *(v0 + 8000) = xmmword_1BCE3E1D0;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 1568) = xmmword_1BCE3F5E0;
  *(v0 + 7920) = result;
  *(v0 + 10080) = xmmword_1BCE3F5E0;
  *(v0 + 11296) = xmmword_1BCE3F5E0;
  *(v0 + 1584) = xmmword_1BCE3FC10;
  *(v0 + 10096) = xmmword_1BCE3FC10;
  *(v0 + 11312) = xmmword_1BCE3FC10;
  *(v0 + 7744) = 0u;
  *(v0 + 7728) = 0u;
  *(v0 + 7760) = result;
  *(v0 + 7776) = xmmword_1BCE3DAE0;
  *(v0 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v0 + 1664) = 0u;
  *(v0 + 1648) = 0u;
  *(v0 + 7584) = result;
  *(v0 + 2880) = 0u;
  *(v0 + 2864) = 0u;
  *(v0 + 7488) = result;
  *(v0 + 7504) = result;
  *(v0 + 7520) = result;
  *(v0 + 4096) = 0u;
  *(v0 + 4080) = 0u;
  *(v0 + 5312) = 0u;
  *(v0 + 7472) = result;
  *(v0 + 5296) = 0u;
  *(v0 + 6528) = 0u;
  *(v0 + 6512) = 0u;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 7336) = 1;
  *(v0 + 7337) = *v12;
  *(v0 + 7368) = 1058642330;
  *(v0 + 7340) = *&v12[3];
  *(v0 + 8960) = 0u;
  *(v0 + 8944) = 0u;
  *(v0 + 10176) = 0u;
  *(v0 + 10160) = 0u;
  *(v0 + 11392) = 0u;
  *(v0 + 11376) = 0u;
  *(v0 + 7184) = result;
  *(v0 + 7264) = result;
  *(v0 + 7280) = result;
  *(v0 + 7296) = result;
  *(v0 + 7200) = xmmword_1BCE3DAE0;
  *(v0 + 7216) = result;
  *(v0 + 7232) = result;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 496) = xmmword_1BCE3F5F0;
  *(v0 + 512) = xmmword_1BCE3F600;
  *(v0 + 7088) = result;
  *(v0 + 7120) = result;
  *(v0 + 7136) = xmmword_1BCE3F6B0;
  *(v0 + 7152) = result;
  *(v0 + 7168) = xmmword_1BCE3C8C0;
  *(v0 + 6992) = result;
  *(v0 + 7024) = result;
  *(v0 + 7040) = xmmword_1BCE3A880;
  *(v0 + 7056) = result;
  *(v0 + 7072) = xmmword_1BCE3F6A0;
  *(v0 + 6912) = result;
  *(v0 + 6928) = result;
  *(v0 + 6944) = result;
  *(v0 + 6960) = result;
  *(v0 + 6976) = xmmword_1BCE3F680;
  *(v0 + 11440) = xmmword_1BCE3F5F0;
  *(v0 + 1728) = xmmword_1BCE3F600;
  *(v0 + 6832) = result;
  *(v0 + 6864) = result;
  *(v0 + 6896) = result;
  *(v0 + 10240) = xmmword_1BCE3F600;
  *(v0 + 11456) = xmmword_1BCE3F600;
  *(v0 + 6768) = result;
  *(v0 + 6784) = xmmword_1BCE3E1D0;
  *(v0 + 6800) = result;
  *(v0 + 528) = xmmword_1BCE3F610;
  *(v0 + 544) = xmmword_1BCE3F620;
  *(v0 + 6704) = result;
  *(v0 + 6720) = xmmword_1BCE3A880;
  *(v0 + 6736) = result;
  *(v0 + 6752) = result;
  *(v0 + 11472) = xmmword_1BCE3F610;
  *(v0 + 1760) = xmmword_1BCE3F620;
  *(v0 + 10272) = xmmword_1BCE3F620;
  *(v0 + 11488) = xmmword_1BCE3F620;
  *(v0 + 560) = xmmword_1BCE3F630;
  *(v0 + 576) = xmmword_1BCE3F640;
  *(v0 + 6560) = xmmword_1BCE3DAE0;
  *(v0 + 11504) = xmmword_1BCE3F630;
  *(v0 + 1792) = xmmword_1BCE3F640;
  *(v0 + 6504) = 0;
  *(v0 + 6544) = result;
  *(v0 + 10304) = xmmword_1BCE3F640;
  *(v0 + 11520) = xmmword_1BCE3F640;
  *(v0 + 1808) = xmmword_1BCE3F650;
  *(v0 + 6472) = 0x3FEF0AE2E0000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 10320) = xmmword_1BCE3F650;
  *(v0 + 11536) = xmmword_1BCE3F650;
  *(v0 + 592) = xmmword_1BCE3F650;
  *(v0 + 608) = xmmword_1BCE3F660;
  *(v0 + 6368) = result;
  *(v0 + 1824) = xmmword_1BCE3F660;
  *(v0 + 10336) = xmmword_1BCE3F660;
  *(v0 + 11552) = xmmword_1BCE3F660;
  *(v0 + 6288) = result;
  *(v0 + 6304) = result;
  *(v0 + 736) = xmmword_1BCE3E350;
  *(v0 + 1952) = xmmword_1BCE3E350;
  *(v0 + 3168) = xmmword_1BCE3E350;
  *(v0 + 3200) = xmmword_1BCE3E350;
  *(v0 + 6256) = result;
  *(v0 + 6272) = result;
  *(v0 + 9248) = xmmword_1BCE3E350;
  *(v0 + 9280) = xmmword_1BCE3E350;
  *(v0 + 10464) = xmmword_1BCE3E350;
  *(v0 + 11680) = xmmword_1BCE3E350;
  *(v0 + 6064) = result;
  *(v0 + 6121) = *v11;
  *(v0 + 6152) = 1061158912;
  *(v0 + 6080) = result;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x404E000000000000;
  *(v0 + 6120) = 1;
  *(v0 + 6124) = *&v11[3];
  *(v0 + 5984) = xmmword_1BCE3DAE0;
  *(v0 + 6000) = result;
  *(v0 + 6016) = result;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = result;
  *(v0 + 768) = xmmword_1BCE3E1D0;
  *(v0 + 5904) = result;
  *(v0 + 5920) = xmmword_1BCE3F6B0;
  *(v0 + 5936) = result;
  *(v0 + 5952) = xmmword_1BCE3C8C0;
  *(v0 + 5968) = result;
  *(v0 + 5808) = result;
  *(v0 + 5824) = xmmword_1BCE3A880;
  *(v0 + 5840) = result;
  *(v0 + 5856) = xmmword_1BCE3F6A0;
  *(v0 + 5872) = result;
  *(v0 + 5696) = result;
  *(v0 + 5712) = result;
  *(v0 + 5728) = result;
  *(v0 + 5744) = result;
  *(v0 + 5760) = xmmword_1BCE3F680;
  *(v0 + 5776) = result;
  *(v0 + 1984) = xmmword_1BCE3E1D0;
  *(v0 + 4352) = xmmword_1BCE3E1D0;
  *(v0 + 5568) = xmmword_1BCE3E1D0;
  *(v0 + 5616) = result;
  *(v0 + 5648) = result;
  *(v0 + 5680) = result;
  *(v0 + 10496) = xmmword_1BCE3E1D0;
  *(v0 + 11712) = xmmword_1BCE3E1D0;
  *(v0 + 5536) = result;
  *(v0 + 5552) = result;
  *(v0 + 5584) = result;
  *(v0 + 800) = xmmword_1BCE3F670;
  *(v0 + 11744) = xmmword_1BCE3F670;
  *(v0 + 896) = xmmword_1BCE3F680;
  *(v0 + 5488) = result;
  *(v0 + 5504) = xmmword_1BCE3A880;
  *(v0 + 5520) = result;
  *(v0 + 2112) = xmmword_1BCE3F680;
  *(v0 + 3328) = xmmword_1BCE3F680;
  *(v0 + 4544) = xmmword_1BCE3F680;
  *(v0 + 9408) = xmmword_1BCE3F680;
  *(v0 + 10624) = xmmword_1BCE3F680;
  *(v0 + 11840) = xmmword_1BCE3F680;
  *(v0 + 928) = xmmword_1BCE3F690;
  *(v0 + 5288) = 0;
  *(v0 + 5328) = result;
  *(v0 + 5344) = xmmword_1BCE3DAE0;
  *(v0 + 11872) = xmmword_1BCE3F690;
  *(v0 + 640) = xmmword_1BCE3A880;
  *(v0 + 704) = xmmword_1BCE3A880;
  *(v0 + 960) = xmmword_1BCE3A880;
  *(v0 + 5256) = 0x3FEF0AE2E0000000;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 1856) = xmmword_1BCE3A880;
  *(v0 + 1920) = xmmword_1BCE3A880;
  *(v0 + 2176) = xmmword_1BCE3A880;
  *(v0 + 3072) = xmmword_1BCE3A880;
  *(v0 + 3136) = xmmword_1BCE3A880;
  *(v0 + 5152) = result;
  *(v0 + 3392) = xmmword_1BCE3A880;
  *(v0 + 4288) = xmmword_1BCE3A880;
  *(v0 + 5040) = result;
  *(v0 + 5056) = result;
  *(v0 + 5072) = result;
  *(v0 + 5088) = result;
  *(v0 + 4592) = result;
  *(v0 + 4608) = xmmword_1BCE3A880;
  *(v0 + 4624) = result;
  *(v0 + 4640) = xmmword_1BCE3F6A0;
  *(v0 + 4656) = result;
  *(v0 + 4688) = result;
  *(v0 + 4704) = xmmword_1BCE3F6B0;
  *(v0 + 4905) = *v10;
  *(v0 + 4936) = 1061158912;
  *(v0 + 4864) = result;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0x404E000000000000;
  *(v0 + 4904) = 0;
  *(v0 + 4908) = *&v10[3];
  *(v0 + 4784) = result;
  *(v0 + 4800) = result;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = result;
  *(v0 + 4848) = result;
  *(v0 + 4720) = result;
  *(v0 + 4736) = xmmword_1BCE3C8C0;
  *(v0 + 4752) = result;
  *(v0 + 4768) = xmmword_1BCE3DAE0;
  *(v0 + 9152) = xmmword_1BCE3A880;
  *(v0 + 9216) = xmmword_1BCE3A880;
  *(v0 + 9472) = xmmword_1BCE3A880;
  *(v0 + 10368) = xmmword_1BCE3A880;
  *(v0 + 10432) = xmmword_1BCE3A880;
  *(v0 + 10688) = xmmword_1BCE3A880;
  *(v0 + 11584) = xmmword_1BCE3A880;
  *(v0 + 11648) = xmmword_1BCE3A880;
  *(v0 + 11904) = xmmword_1BCE3A880;
  *(v0 + 992) = xmmword_1BCE3F6A0;
  *(v0 + 4496) = result;
  *(v0 + 4512) = result;
  *(v0 + 4528) = result;
  *(v0 + 4560) = result;
  *(v0 + 2208) = xmmword_1BCE3F6A0;
  *(v0 + 4400) = result;
  *(v0 + 4432) = result;
  *(v0 + 4464) = result;
  *(v0 + 4480) = result;
  *(v0 + 3424) = xmmword_1BCE3F6A0;
  *(v0 + 4336) = result;
  *(v0 + 4368) = result;
  *(v0 + 4384) = xmmword_1BCE3C8C0;
  *(v0 + 9504) = xmmword_1BCE3F6A0;
  *(v0 + 10720) = xmmword_1BCE3F6A0;
  *(v0 + 11936) = xmmword_1BCE3F6A0;
  *(v0 + 1024) = xmmword_1BCE3CE90;
  *(v0 + 4272) = result;
  *(v0 + 4304) = result;
  *(v0 + 4320) = result;
  *(v0 + 2240) = xmmword_1BCE3CE90;
  *(v0 + 3456) = xmmword_1BCE3CE90;
  *(v0 + 9536) = xmmword_1BCE3CE90;
  *(v0 + 10752) = xmmword_1BCE3CE90;
  *(v0 + 11968) = xmmword_1BCE3CE90;
  *(v0 + 1056) = xmmword_1BCE3F6B0;
  *(v0 + 2272) = xmmword_1BCE3F6B0;
  *(v0 + 3488) = xmmword_1BCE3F6B0;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 0;
  *(v0 + 4112) = result;
  *(v0 + 4128) = xmmword_1BCE3DAE0;
  *(v0 + 9568) = xmmword_1BCE3F6B0;
  *(v0 + 10784) = xmmword_1BCE3F6B0;
  *(v0 + 12000) = xmmword_1BCE3F6B0;
  *(v0 + 1088) = xmmword_1BCE3C8C0;
  *(v0 + 2304) = xmmword_1BCE3C8C0;
  *(v0 + 4040) = 0x3FEF0AE2E0000000;
  *(v0 + 3520) = xmmword_1BCE3C8C0;
  *(v0 + 8384) = xmmword_1BCE3C8C0;
  *(v0 + 9600) = xmmword_1BCE3C8C0;
  *(v0 + 10816) = xmmword_1BCE3C8C0;
  *(v0 + 12032) = xmmword_1BCE3C8C0;
  *(v0 + 3936) = result;
  *(v0 + 480) = xmmword_1BCE3DAE0;
  *(v0 + 1120) = xmmword_1BCE3DAE0;
  *(v0 + 3824) = result;
  *(v0 + 3840) = result;
  *(v0 + 3856) = result;
  *(v0 + 3872) = result;
  *(v0 + 1696) = xmmword_1BCE3DAE0;
  *(v0 + 2336) = xmmword_1BCE3DAE0;
  *(v0 + 2912) = xmmword_1BCE3DAE0;
  *(v0 + 3440) = result;
  *(v0 + 3472) = result;
  *(v0 + 3504) = result;
  *(v0 + 3689) = *v9;
  *(v0 + 3692) = *&v9[3];
  *(v0 + 3720) = 1058642330;
  *(v0 + 3616) = result;
  *(v0 + 3632) = result;
  *(v0 + 3648) = result;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 3688) = 0;
  *(v0 + 3536) = result;
  *(v0 + 3552) = xmmword_1BCE3DAE0;
  *(v0 + 3568) = result;
  *(v0 + 3584) = result;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 8416) = xmmword_1BCE3DAE0;
  *(v0 + 8992) = xmmword_1BCE3DAE0;
  *(v0 + 9632) = xmmword_1BCE3DAE0;
  *(v0 + 10208) = xmmword_1BCE3DAE0;
  *(v0 + 10848) = xmmword_1BCE3DAE0;
  *(v0 + 11424) = xmmword_1BCE3DAE0;
  *(v0 + 12064) = xmmword_1BCE3DAE0;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 3248) = result;
  *(v0 + 3376) = result;
  *(v0 + 3408) = result;
  *(v0 + 3264) = result;
  *(v0 + 3280) = result;
  *(v0 + 3296) = result;
  *(v0 + 3312) = result;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  *(v0 + 464) = result;
  *(v0 + 3152) = result;
  *(v0 + 3184) = result;
  *(v0 + 3216) = result;
  *(v0 + 624) = result;
  *(v0 + 688) = result;
  *(v0 + 3056) = result;
  *(v0 + 3088) = result;
  *(v0 + 3104) = result;
  *(v0 + 3120) = result;
  *(v0 + 720) = result;
  *(v0 + 752) = result;
  *(v0 + 784) = result;
  *(v0 + 880) = result;
  *(v0 + 912) = result;
  *(v0 + 944) = result;
  *(v0 + 976) = result;
  *(v0 + 1008) = result;
  *(v0 + 176) = result;
  *(v0 + 192) = result;
  *(v0 + 2896) = result;
  *(v0 + 208) = result;
  *(v0 + 224) = result;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = result;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 0;
  *(v0 + 288) = result;
  *(v0 + 400) = result;
  *(v0 + 656) = result;
  *(v0 + 672) = result;
  *(v0 + 816) = result;
  *(v0 + 832) = result;
  *(v0 + 848) = result;
  *(v0 + 864) = result;
  *(v0 + 2608) = result;
  *(v0 + 2624) = result;
  *(v0 + 2640) = result;
  *(v0 + 2656) = result;
  *(v0 + 1040) = result;
  *(v0 + 1072) = result;
  *(v0 + 1104) = result;
  *(v0 + 1136) = result;
  *(v0 + 1152) = result;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = result;
  *(v0 + 1200) = result;
  *(v0 + 2464) = 0xC018000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v8;
  *(v0 + 2476) = *&v8[3];
  *(v0 + 2504) = 1053609165;
  *(v0 + 1216) = result;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = result;
  *(v0 + 2416) = result;
  *(v0 + 2432) = result;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 1256) = 0;
  *(v0 + 2352) = result;
  *(v0 + 2368) = result;
  *(v0 + 1257) = *v7;
  *(v0 + 2288) = result;
  *(v0 + 2320) = result;
  *(v0 + 1260) = *&v7[3];
  *(v0 + 1288) = 1036831949;
  *(v0 + 1392) = result;
  *(v0 + 2192) = result;
  *(v0 + 2224) = result;
  *(v0 + 2256) = result;
  *(v0 + 1408) = result;
  *(v0 + 1424) = result;
  *(v0 + 1440) = result;
  *(v0 + 1504) = result;
  *(v0 + 2096) = result;
  *(v0 + 2160) = result;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 2000) = result;
  *(v0 + 2032) = result;
  *(v0 + 2048) = result;
  *(v0 + 2064) = result;
  *(v0 + 2080) = result;
  *(v0 + 1616) = result;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 1640) = 0;
  *(v0 + 1904) = result;
  *(v0 + 1936) = result;
  *(v0 + 1968) = result;
  *(v0 + 1680) = result;
  *(v0 + 1840) = result;
  *(v0 + 1872) = result;
  *(v0 + 1888) = result;
  *(v0 + 8400) = result;
  *(v0 + 8432) = result;
  *(v0 + 8448) = result;
  *(v0 + 8480) = result;
  *(v0 + 8496) = result;
  *(v0 + 8512) = result;
  *(v0 + 8688) = result;
  *(v0 + 8704) = result;
  *(v0 + 8720) = result;
  *(v0 + 8736) = result;
  *(v0 + 8912) = result;
  *(v0 + 8976) = result;
  *(v0 + 9136) = result;
  *(v0 + 9168) = result;
  *(v0 + 9184) = result;
  *(v0 + 9200) = result;
  *(v0 + 9232) = result;
  *(v0 + 9264) = result;
  *(v0 + 9296) = result;
  *(v0 + 9328) = result;
  *(v0 + 9344) = result;
  *(v0 + 9360) = result;
  *(v0 + 9376) = result;
  *(v0 + 9392) = result;
  *(v0 + 9456) = result;
  *(v0 + 9488) = result;
  *(v0 + 9520) = result;
  *(v0 + 9552) = result;
  *(v0 + 9584) = result;
  *(v0 + 9616) = result;
  *(v0 + 9648) = result;
  *(v0 + 9664) = result;
  *(v0 + 9696) = result;
  *(v0 + 9712) = result;
  *(v0 + 9728) = result;
  *(v0 + 9904) = result;
  *(v0 + 9920) = result;
  *(v0 + 9936) = result;
  *(v0 + 9952) = result;
  *(v0 + 10016) = result;
  *(v0 + 10128) = result;
  *(v0 + 10192) = result;
  *(v0 + 10352) = result;
  *(v0 + 10384) = result;
  *(v0 + 10400) = result;
  *(v0 + 10416) = result;
  *(v0 + 10448) = result;
  *(v0 + 10480) = result;
  *(v0 + 10512) = result;
  *(v0 + 10544) = result;
  *(v0 + 10560) = result;
  *(v0 + 10576) = result;
  *(v0 + 10592) = result;
  *(v0 + 10608) = result;
  *(v0 + 10672) = result;
  *(v0 + 10704) = result;
  *(v0 + 10736) = result;
  *(v0 + 10768) = result;
  *(v0 + 10800) = result;
  *(v0 + 10832) = result;
  *(v0 + 10864) = result;
  *(v0 + 10880) = result;
  *(v0 + 10912) = result;
  *(v0 + 10928) = result;
  *(v0 + 10944) = result;
  *(v0 + 11120) = result;
  *(v0 + 11136) = result;
  *(v0 + 11152) = result;
  *(v0 + 11168) = result;
  *(v0 + 11232) = result;
  *(v0 + 11344) = result;
  *(v0 + 11408) = result;
  *(v0 + 11568) = result;
  *(v0 + 11600) = result;
  *(v0 + 11616) = result;
  *(v0 + 11632) = result;
  *(v0 + 11664) = result;
  *(v0 + 11696) = result;
  *(v0 + 11728) = result;
  *(v0 + 11760) = result;
  *(v0 + 11776) = result;
  *(v0 + 11792) = result;
  *(v0 + 11808) = result;
  *(v0 + 11824) = result;
  *(v0 + 11856) = result;
  *(v0 + 11888) = result;
  *(v0 + 11920) = result;
  *(v0 + 11952) = result;
  *(v0 + 11984) = result;
  *(v0 + 12016) = result;
  *(v0 + 12048) = result;
  *(v0 + 12080) = result;
  *(v0 + 12096) = result;
  *(v0 + 12128) = result;
  *(v0 + 12144) = result;
  *(v0 + 12160) = result;
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 424) = 0;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 40) = 0;
  *(v0 + 72) = 1036831949;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8553) = *v13;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0xC017FFFFFFFFFFE8;
  *(v0 + 8552) = 1;
  *(v0 + 8556) = *&v13[3];
  *(v0 + 8584) = 1053609165;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0xC032000000000004;
  *(v0 + 9769) = *v14;
  *(v0 + 9768) = 1;
  *(v0 + 9772) = *&v14[3];
  *(v0 + 9800) = 1036831949;
  *(v0 + 10120) = 0x3FF0000000000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0xC056800000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v15;
  *(v0 + 10988) = *&v15[3];
  *(v0 + 11016) = 1036831949;
  *(v0 + 11336) = 0x3FF0000000000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  return result;
}

void sub_1BCC770D8(uint64_t a3@<X8>)
{
  v34 = sub_1BCE18AF0();
  v30 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07978, &qword_1BCE3F3C0);
  MEMORY[0x1EEE9AC00](v33);
  v31 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890, &qword_1BCE47340);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09C20, &qword_1BCE52728);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v35 = &v28 - v14;
  v15 = sub_1BCE18B80();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = *(v3 + 80);
  v16 = *(v3 + 88);

  sub_1BCE18B70();
  v32 = a3;
  sub_1BCE18B00();
  v36 = v17;
  v37 = v16;
  v38 = 32;
  v39 = 0xE100000000000000;
  sub_1BC970820();
  v18 = sub_1BCE1DB50();

  if (v18[2])
  {
    v20 = v18[4];
    v19 = v18[5];

    v36 = v20;
    v37 = v19;
    v21 = sub_1BCE19280();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v21);
    sub_1BCC777CC();
    v22 = v34;
    v23 = v35;
    sub_1BCE18C60();
    sub_1BC94C0B4(v9, &qword_1EBD07890, &qword_1BCE47340);
    sub_1BCC77824(v23, v12);
    if (__swift_getEnumTagSinglePayload(v12, 1, v33) == 1)
    {
      sub_1BC94C0B4(v35, &qword_1EBD09C20, &qword_1BCE52728);

      v24 = v12;
    }

    else
    {
      v25 = v31;
      sub_1BCB96424(v12, v31);
      sub_1BCE1D2E0();

      sub_1BCE18B70();
      v26 = v29;
      sub_1BCE18B00();
      sub_1BCC77894();
      sub_1BCE18990();
      (*(v30 + 8))(v26, v22);
      v27 = sub_1BCE18B40();
      LOBYTE(v38) = 1;
      sub_1BCC778F8();
      sub_1BCE18C20();
      v27(&v36, 0);
      sub_1BC94C0B4(v25, &qword_1EBD07978, &qword_1BCE3F3C0);
      v24 = v35;
    }

    sub_1BC94C0B4(v24, &qword_1EBD09C20, &qword_1BCE52728);
  }

  else
  {
  }
}

uint64_t static AirQualityViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v24 = *(a1 + 88);
  v25 = *(a1 + 80);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  v13 = *(a2 + 72);
  v14 = *(a2 + 80);
  v15 = *(a2 + 88);
  v22 = *(a2 + 96);
  v23 = *(a1 + 96);
  v16 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  v20 = *(a2 + 104);
  v21 = *(a1 + 104);
  if (!v16 && (sub_1BCE1E090() & 1) == 0)
  {
    return 0;
  }

  v17 = v6 == v10 && v7 == v11;
  if (!v17 && (sub_1BCE1E090() & 1) == 0)
  {
    return 0;
  }

  v18 = v8 == v12 && v9 == v13;
  if (!v18 && (sub_1BCE1E090() & 1) == 0)
  {
    return 0;
  }

  if (v25 == v14 && v24 == v15)
  {
    if (v23 != v22)
    {
      return 0;
    }
  }

  else if (sub_1BCE1E090() & 1) == 0 || ((v23 ^ v22))
  {
    return 0;
  }

  return sub_1BCABA53C(v21, v20);
}

uint64_t sub_1BCC77720(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BCC77760(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BCC777CC()
{
  result = qword_1EDA1EC08;
  if (!qword_1EDA1EC08)
  {
    sub_1BCE18AF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1EC08);
  }

  return result;
}

uint64_t sub_1BCC77824(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09C20, &qword_1BCE52728);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BCC77894()
{
  result = qword_1EDA1C1D8;
  if (!qword_1EDA1C1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD07978, &qword_1BCE3F3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1C1D8);
  }

  return result;
}

unint64_t sub_1BCC778F8()
{
  result = qword_1EBD0BA28;
  if (!qword_1EBD0BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0BA28);
  }

  return result;
}

void sub_1BCC7794C(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCC78044();
  v4 = v3;
  sub_1BCC78044();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 6;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42A0000042480000;
  *(a1 + 72) = 0xC3AF000000000000;
  *(a1 + 80) = xmmword_1BCE43900;
  *(a1 + 96) = xmmword_1BCE43040;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 128) = _Q0;
  *(a1 + 144) = _Q0;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = _Q0;
  *(a1 + 208) = _Q0;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  *(a1 + 288) = _Q0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = _Q0;
  *(a1 + 368) = _Q0;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3EC1C9A8;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = _Q0;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = _Q0;
  *(a1 + 592) = _Q0;
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = _Q0;
  *(a1 + 640) = _Q0;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = vdup_n_s32(0x402CCCCCu);
  *(a1 + 720) = 0x4200000041F00000;
  *(a1 + 728) = 0x42480000C106680CLL;
  *(a1 + 736) = 0;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE43910;
  *(a1 + 768) = 0x7970736957;
  *(a1 + 776) = 0xE500000000000000;
  strcpy((a1 + 784), "Wispy_Single");
  *(a1 + 797) = 0;
  *(a1 + 798) = -5120;
  *(a1 + 800) = 6;
  *(a1 + 816) = xmmword_1BCE3BF50;
  *(a1 + 832) = 1077936128;
  *(a1 + 840) = vdup_n_s32(0x40666667u);
  *(a1 + 848) = 0x4180000041600000;
  *(a1 + 856) = 0x42480000C11197ACLL;
  *(a1 + 864) = 0;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE43920;
  *(a1 + 896) = 0x7970736957;
  *(a1 + 904) = 0xE500000000000000;
  strcpy((a1 + 912), "Wispy_Single");
  *(a1 + 925) = 0;
  *(a1 + 926) = -5120;
  *(a1 + 928) = 6;
  *(a1 + 944) = xmmword_1BCE3BF70;
  *(a1 + 960) = 1077936128;
  __asm { FMOV            V2.2S, #4.5 }

  *(a1 + 968) = _D2;
  __asm { FMOV            V2.2S, #6.0 }

  *(a1 + 976) = _D2;
  *(a1 + 984) = 0x42480000C0E6680CLL;
  *(a1 + 992) = 0;
  *(a1 + 1000) = 3;
  *(a1 + 1008) = xmmword_1BCE3F040;
  *(a1 + 1024) = 0x7970736957;
  *(a1 + 1032) = 0xE500000000000000;
  strcpy((a1 + 1040), "Wispy_Single");
  *(a1 + 1053) = 0;
  *(a1 + 1054) = -5120;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1077936128;
  *(a1 + 1096) = 0;
  __asm { FMOV            V2.2S, #3.25 }

  *(a1 + 1104) = _D2;
  *(a1 + 1112) = 0x42820000C0D00000;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 2;
  *(a1 + 1136) = xmmword_1BCE3C710;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE47CB0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1376) = _Q0;
  *(a1 + 1392) = xmmword_1BCE3BFB0;
  *(a1 + 1408) = _Q0;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3BFD0;
  *(a1 + 1568) = 0x42B5FAE142458F5CLL;
  *(a1 + 1584) = xmmword_1BCE3BFE0;
  *(a1 + 1600) = xmmword_1BCE3BFF0;
  __asm { FMOV            V3.2S, #-15.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 0u;
  *(a1 + 1644) = 0x101010100010000;
  *(a1 + 1652) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v15;
  *(a1 + 1659) = v16;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 6;
  *(a1 + 1776) = xmmword_1BCE3C030;
  *(a1 + 1792) = xmmword_1BCE3C040;
  *(a1 + 1808) = xmmword_1BCE3C050;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1052770304;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3E99999A00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3E700;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 7;
  *(a1 + 2208) = 0x40F478343FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE43930;
  *(a1 + 2256) = _Q0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2304) = 3;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v14;
}

__n128 sub_1BCC78044()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858, &qword_1BCE6CF50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C0B0;
  *(v0 + 48) = xmmword_1BCE3C0C0;
  *(v0 + 200) = xmmword_1BCE43940;
  *(v0 + 232) = xmmword_1BCE5C6E0;
  *(v0 + 216) = xmmword_1BCE43950;
  *(v0 + 248) = xmmword_1BCE43950;
  *(v0 + 3936) = xmmword_1BCE43A60;
  *(v0 + 5152) = xmmword_1BCE43A60;
  *(v0 + 3872) = xmmword_1BCE3CBA0;
  *(v0 + 3904) = xmmword_1BCE3CBA0;
  *(v0 + 3968) = xmmword_1BCE3CBA0;
  *(v0 + 5088) = xmmword_1BCE3CBA0;
  *(v0 + 5120) = xmmword_1BCE3CBA0;
  *(v0 + 5184) = xmmword_1BCE3CBA0;
  *(v0 + 4096) = xmmword_1BCE3C420;
  *(v0 + 5312) = xmmword_1BCE3C420;
  *(v0 + 4128) = xmmword_1BCE3C430;
  *(v0 + 5344) = xmmword_1BCE3C430;
  *(v0 + 2480) = xmmword_1BCE3C030;
  *(v0 + 3696) = xmmword_1BCE3C030;
  *(v0 + 4912) = xmmword_1BCE3C030;
  *(v0 + 6128) = xmmword_1BCE3C030;
  *(v0 + 2496) = 0x43FA000043149A74;
  *(v0 + 3712) = 0x43FA000043149A74;
  *(v0 + 4928) = 0x43FA000043149A74;
  *(v0 + 6144) = 0x43FA000043149A74;
  v1 = vdupq_n_s64(0x3FCF1B2BA0000000uLL);
  *(v0 + 2512) = v1;
  *(v0 + 3728) = v1;
  *(v0 + 4944) = v1;
  *(v0 + 6160) = v1;
  *(v0 + 2528) = xmmword_1BCE3C3A0;
  *(v0 + 3744) = xmmword_1BCE3C3A0;
  *(v0 + 4960) = xmmword_1BCE3C3A0;
  *(v0 + 6176) = xmmword_1BCE3C3A0;
  *(v0 + 2704) = xmmword_1BCE43A10;
  *(v0 + 3920) = xmmword_1BCE43A10;
  *(v0 + 5136) = xmmword_1BCE43A10;
  *(v0 + 6352) = xmmword_1BCE43A10;
  *(v0 + 2720) = xmmword_1BCE43A20;
  *(v0 + 6368) = xmmword_1BCE43A20;
  *(v0 + 2736) = xmmword_1BCE43A30;
  *(v0 + 3952) = xmmword_1BCE43A30;
  *(v0 + 5168) = xmmword_1BCE43A30;
  *(v0 + 6384) = xmmword_1BCE43A30;
  *(v0 + 2656) = xmmword_1BCE3CE90;
  *(v0 + 2688) = xmmword_1BCE3CE90;
  *(v0 + 2752) = xmmword_1BCE3CE90;
  *(v0 + 6304) = xmmword_1BCE3CE90;
  *(v0 + 6336) = xmmword_1BCE3CE90;
  *(v0 + 6400) = xmmword_1BCE3CE90;
  *(v0 + 2800) = xmmword_1BCE5C700;
  *(v0 + 4016) = xmmword_1BCE5C700;
  *(v0 + 5232) = xmmword_1BCE5C700;
  *(v0 + 6448) = xmmword_1BCE5C700;
  *(v0 + 2816) = 0x3EC1C9A83F800000;
  *(v0 + 4032) = 0x3EC1C9A83F800000;
  *(v0 + 5248) = 0x3EC1C9A83F800000;
  *(v0 + 6464) = 0x3EC1C9A83F800000;
  *(v0 + 2880) = xmmword_1BCE43A40;
  *(v0 + 6528) = xmmword_1BCE43A40;
  *(v0 + 2912) = xmmword_1BCE43A50;
  *(v0 + 6560) = xmmword_1BCE43A50;
  v2 = vdupq_n_s64(0x3C74BCC7A0000000uLL);
  *(v0 + 1296) = v2;
  *(v0 + 7376) = v2;
  *(v0 + 1312) = xmmword_1BCE3C1B0;
  *(v0 + 7392) = xmmword_1BCE3C1B0;
  *(v0 + 1424) = xmmword_1BCE439B0;
  *(v0 + 1456) = xmmword_1BCE439B0;
  *(v0 + 7504) = xmmword_1BCE439B0;
  *(v0 + 7536) = xmmword_1BCE439B0;
  *(v0 + 1440) = xmmword_1BCE439C0;
  *(v0 + 1472) = xmmword_1BCE439C0;
  *(v0 + 7520) = xmmword_1BCE439C0;
  *(v0 + 7552) = xmmword_1BCE439C0;
  *(v0 + 1488) = xmmword_1BCE439D0;
  *(v0 + 7568) = xmmword_1BCE439D0;
  *(v0 + 1504) = xmmword_1BCE439E0;
  *(v0 + 7584) = xmmword_1BCE439E0;
  *(v0 + 1520) = xmmword_1BCE439F0;
  *(v0 + 7600) = xmmword_1BCE439F0;
  *(v0 + 1536) = xmmword_1BCE43A00;
  *(v0 + 7616) = xmmword_1BCE43A00;
  *(v0 + 64) = 0x43FA000042C80000;
  *(v0 + 1264) = xmmword_1BCE3C0C0;
  *(v0 + 7344) = xmmword_1BCE3C0C0;
  *(v0 + 8560) = xmmword_1BCE3C0C0;
  *(v0 + 88) = 0u;
  *(v0 + 1280) = 0x43FA000042C80000;
  *(v0 + 7360) = 0x43FA000042C80000;
  *(v0 + 8576) = 0x43FA000042C80000;
  *(v0 + 8592) = 0u;
  *(v0 + 8720) = xmmword_1BCE43A70;
  *(v0 + 8752) = xmmword_1BCE43A70;
  *(v0 + 8736) = xmmword_1BCE43A80;
  *(v0 + 8768) = xmmword_1BCE43A80;
  *(v0 + 272) = xmmword_1BCE43A90;
  *(v0 + 288) = xmmword_1BCE43AA0;
  *(v0 + 8784) = xmmword_1BCE43A90;
  *(v0 + 8800) = xmmword_1BCE43AA0;
  *(v0 + 304) = xmmword_1BCE43980;
  *(v0 + 320) = xmmword_1BCE43990;
  *(v0 + 8816) = xmmword_1BCE43980;
  *(v0 + 368) = xmmword_1BCE5C6F0;
  *(v0 + 8832) = xmmword_1BCE43990;
  __asm { FMOV            V0.2S, #1.0 }

  *(v0 + 384) = _D0;
  *(v0 + 1584) = xmmword_1BCE5C6F0;
  *(v0 + 7664) = xmmword_1BCE5C6F0;
  *(v0 + 8880) = xmmword_1BCE5C6F0;
  *(v0 + 1600) = _D0;
  *(v0 + 7680) = _D0;
  *(v0 + 8896) = _D0;
  *(v0 + 432) = xmmword_1BCE3C130;
  *(v0 + 448) = xmmword_1BCE3C200;
  *(v0 + 1648) = xmmword_1BCE3C130;
  *(v0 + 7728) = xmmword_1BCE3C130;
  *(v0 + 8944) = xmmword_1BCE3C130;
  *(v0 + 1664) = xmmword_1BCE3C200;
  *(v0 + 7744) = xmmword_1BCE3C200;
  *(v0 + 8960) = xmmword_1BCE3C200;
  *(v0 + 1680) = xmmword_1BCE3C150;
  *(v0 + 7760) = xmmword_1BCE3C150;
  *(v0 + 8976) = xmmword_1BCE3C150;
  *(v0 + 464) = xmmword_1BCE3C150;
  *(v0 + 480) = xmmword_1BCE3C210;
  *(v0 + 1696) = xmmword_1BCE3C210;
  *(v0 + 7776) = xmmword_1BCE3C210;
  *(v0 + 8992) = xmmword_1BCE3C210;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 104) = result;
  *(v0 + 120) = result;
  *(v0 + 136) = result;
  *(v0 + 152) = result;
  *(v0 + 168) = result;
  *(v0 + 184) = result;
  *(v0 + 336) = result;
  *(v0 + 352) = result;
  *(v0 + 400) = result;
  *(v0 + 496) = result;
  *(v0 + 512) = result;
  *(v0 + 528) = result;
  *(v0 + 544) = result;
  *(v0 + 560) = result;
  *(v0 + 576) = result;
  *(v0 + 592) = result;
  *(v0 + 608) = result;
  *(v0 + 624) = result;
  *(v0 + 640) = result;
  *(v0 + 656) = result;
  *(v0 + 672) = result;
  *(v0 + 688) = result;
  *(v0 + 704) = result;
  *(v0 + 720) = result;
  *(v0 + 736) = result;
  *(v0 + 752) = result;
  *(v0 + 768) = result;
  *(v0 + 784) = result;
  *(v0 + 800) = result;
  *(v0 + 816) = result;
  *(v0 + 832) = result;
  *(v0 + 848) = result;
  *(v0 + 864) = result;
  *(v0 + 880) = result;
  *(v0 + 896) = result;
  *(v0 + 912) = result;
  *(v0 + 928) = result;
  *(v0 + 944) = result;
  *(v0 + 960) = result;
  *(v0 + 976) = result;
  *(v0 + 992) = result;
  *(v0 + 1008) = result;
  *(v0 + 1024) = result;
  *(v0 + 1040) = result;
  *(v0 + 1056) = result;
  *(v0 + 1072) = result;
  *(v0 + 1088) = result;
  *(v0 + 1104) = result;
  *(v0 + 1120) = result;
  *(v0 + 1136) = result;
  *(v0 + 1152) = result;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = result;
  *(v0 + 1200) = result;
  *(v0 + 1216) = result;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v9;
  *(v0 + 1260) = *&v9[3];
  *(v0 + 1288) = 0;
  *(v0 + 1328) = result;
  *(v0 + 1344) = result;
  *(v0 + 1360) = result;
  *(v0 + 1376) = result;
  *(v0 + 1392) = result;
  *(v0 + 1408) = result;
  *(v0 + 1552) = result;
  *(v0 + 1568) = result;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = result;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 1640) = 0;
  *(v0 + 1712) = result;
  *(v0 + 1728) = result;
  *(v0 + 1744) = result;
  *(v0 + 1760) = result;
  *(v0 + 1776) = result;
  *(v0 + 1792) = result;
  *(v0 + 1808) = result;
  *(v0 + 1824) = result;
  *(v0 + 1840) = result;
  *(v0 + 1856) = result;
  *(v0 + 1872) = result;
  *(v0 + 1888) = result;
  *(v0 + 1904) = result;
  *(v0 + 1920) = result;
  *(v0 + 1936) = result;
  *(v0 + 1952) = result;
  *(v0 + 1968) = result;
  *(v0 + 1984) = result;
  *(v0 + 2000) = result;
  *(v0 + 2016) = result;
  *(v0 + 2032) = result;
  *(v0 + 2048) = result;
  *(v0 + 2064) = result;
  *(v0 + 2080) = result;
  *(v0 + 2096) = result;
  *(v0 + 2112) = result;
  *(v0 + 2128) = result;
  *(v0 + 2144) = result;
  *(v0 + 2160) = result;
  *(v0 + 2176) = result;
  *(v0 + 2192) = result;
  *(v0 + 2208) = result;
  *(v0 + 2224) = result;
  *(v0 + 2240) = result;
  *(v0 + 2256) = result;
  *(v0 + 2272) = result;
  *(v0 + 2288) = result;
  *(v0 + 2304) = result;
  *(v0 + 2320) = result;
  *(v0 + 2336) = result;
  *(v0 + 2352) = result;
  *(v0 + 2368) = result;
  *(v0 + 5888) = result;
  *(v0 + 5904) = result;
  *(v0 + 5920) = result;
  *(v0 + 5936) = result;
  *(v0 + 5952) = result;
  *(v0 + 5792) = result;
  *(v0 + 5808) = result;
  *(v0 + 5824) = result;
  *(v0 + 5840) = result;
  *(v0 + 5856) = result;
  *(v0 + 5872) = result;
  *(v0 + 5696) = result;
  *(v0 + 5712) = result;
  *(v0 + 5728) = result;
  *(v0 + 5744) = result;
  *(v0 + 5760) = result;
  *(v0 + 5776) = result;
  *(v0 + 5600) = result;
  *(v0 + 5616) = result;
  *(v0 + 5632) = result;
  *(v0 + 5648) = result;
  *(v0 + 5664) = result;
  *(v0 + 5680) = result;
  *(v0 + 5504) = result;
  *(v0 + 5520) = result;
  *(v0 + 5536) = result;
  *(v0 + 5552) = result;
  *(v0 + 5568) = result;
  *(v0 + 5584) = result;
  *(v0 + 5408) = result;
  *(v0 + 5424) = result;
  *(v0 + 5440) = result;
  *(v0 + 5456) = result;
  *(v0 + 5472) = result;
  *(v0 + 5488) = result;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = result;
  *(v0 + 5328) = result;
  *(v0 + 5360) = result;
  *(v0 + 5376) = result;
  *(v0 + 5392) = result;
  *(v0 + 2416) = result;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5264) = result;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5288) = 0;
  *(v0 + 5296) = result;
  *(v0 + 2432) = result;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v10;
  *(v0 + 2476) = *&v10[3];
  *(v0 + 5200) = result;
  *(v0 + 5216) = result;
  *(v0 + 2504) = 0;
  *(v0 + 2544) = result;
  *(v0 + 5040) = result;
  *(v0 + 5056) = result;
  *(v0 + 5072) = result;
  *(v0 + 5104) = result;
  *(v0 + 2560) = result;
  *(v0 + 2576) = result;
  *(v0 + 2592) = result;
  *(v0 + 4992) = result;
  *(v0 + 5008) = result;
  *(v0 + 5024) = result;
  *(v0 + 4905) = *v12;
  *(v0 + 4936) = 0;
  *(v0 + 4976) = result;
  *(v0 + 2608) = result;
  *(v0 + 2624) = result;
  *(v0 + 4908) = *&v12[3];
  *(v0 + 4832) = result;
  *(v0 + 4848) = result;
  *(v0 + 4864) = result;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0x40567FEF9DB22D0ELL;
  *(v0 + 4904) = 1;
  *(v0 + 2640) = result;
  *(v0 + 4752) = result;
  *(v0 + 4768) = result;
  *(v0 + 4784) = result;
  *(v0 + 4800) = result;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4656) = result;
  *(v0 + 4672) = result;
  *(v0 + 4688) = result;
  *(v0 + 4704) = result;
  *(v0 + 4720) = result;
  *(v0 + 4736) = result;
  *(v0 + 4560) = result;
  *(v0 + 4576) = result;
  *(v0 + 4592) = result;
  *(v0 + 4608) = result;
  *(v0 + 4624) = result;
  *(v0 + 4640) = result;
  *(v0 + 4464) = result;
  *(v0 + 4480) = result;
  *(v0 + 4496) = result;
  *(v0 + 4512) = result;
  *(v0 + 4528) = result;
  *(v0 + 4544) = result;
  *(v0 + 4368) = result;
  *(v0 + 4384) = result;
  *(v0 + 4400) = result;
  *(v0 + 4416) = result;
  *(v0 + 4432) = result;
  *(v0 + 4448) = result;
  *(v0 + 4272) = result;
  *(v0 + 4288) = result;
  *(v0 + 4304) = result;
  *(v0 + 4320) = result;
  *(v0 + 4336) = result;
  *(v0 + 4352) = result;
  *(v0 + 4176) = result;
  *(v0 + 4192) = result;
  *(v0 + 4208) = result;
  *(v0 + 4224) = result;
  *(v0 + 4240) = result;
  *(v0 + 4256) = result;
  *(v0 + 2672) = result;
  *(v0 + 2768) = result;
  *(v0 + 4080) = result;
  *(v0 + 4112) = result;
  *(v0 + 4144) = result;
  *(v0 + 4160) = result;
  *(v0 + 2784) = result;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 4040) = 0x3FF0000000000000;
  *(v0 + 4048) = result;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 0;
  *(v0 + 2832) = result;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 0;
  *(v0 + 2864) = result;
  *(v0 + 3984) = result;
  *(v0 + 4000) = result;
  *(v0 + 2896) = result;
  *(v0 + 2928) = result;
  *(v0 + 3824) = result;
  *(v0 + 3840) = result;
  *(v0 + 3856) = result;
  *(v0 + 3888) = result;
  *(v0 + 2944) = result;
  *(v0 + 2960) = result;
  *(v0 + 3760) = result;
  *(v0 + 3776) = result;
  *(v0 + 3792) = result;
  *(v0 + 3808) = result;
  *(v0 + 2976) = result;
  *(v0 + 2992) = result;
  *(v0 + 3689) = *v11;
  *(v0 + 3720) = 0;
  *(v0 + 3648) = result;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x40567FEF9DB22D0ELL;
  *(v0 + 3688) = 0;
  *(v0 + 3692) = *&v11[3];
  *(v0 + 3008) = result;
  *(v0 + 3568) = result;
  *(v0 + 3584) = result;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = result;
  *(v0 + 3632) = result;
  *(v0 + 3472) = result;
  *(v0 + 3488) = result;
  *(v0 + 3504) = result;
  *(v0 + 3520) = result;
  *(v0 + 3536) = result;
  *(v0 + 3552) = result;
  *(v0 + 3376) = result;
  *(v0 + 3392) = result;
  *(v0 + 3408) = result;
  *(v0 + 3424) = result;
  *(v0 + 3440) = result;
  *(v0 + 3456) = result;
  *(v0 + 3280) = result;
  *(v0 + 3296) = result;
  *(v0 + 3312) = result;
  *(v0 + 3328) = result;
  *(v0 + 3344) = result;
  *(v0 + 3360) = result;
  *(v0 + 3184) = result;
  *(v0 + 3200) = result;
  *(v0 + 3216) = result;
  *(v0 + 3232) = result;
  *(v0 + 3248) = result;
  *(v0 + 3264) = result;
  *(v0 + 3088) = result;
  *(v0 + 3104) = result;
  *(v0 + 3120) = result;
  *(v0 + 3136) = result;
  *(v0 + 3152) = result;
  *(v0 + 3168) = result;
  *(v0 + 3024) = result;
  *(v0 + 3040) = result;
  *(v0 + 3056) = result;
  *(v0 + 3072) = result;
  *(v0 + 5968) = result;
  *(v0 + 5984) = result;
  *(v0 + 6000) = result;
  *(v0 + 6016) = result;
  *(v0 + 6048) = result;
  *(v0 + 6064) = result;
  *(v0 + 6080) = result;
  *(v0 + 6192) = result;
  *(v0 + 6208) = result;
  *(v0 + 6224) = result;
  *(v0 + 6240) = result;
  *(v0 + 6256) = result;
  *(v0 + 6272) = result;
  *(v0 + 6288) = result;
  *(v0 + 6320) = result;
  *(v0 + 6416) = result;
  *(v0 + 6432) = result;
  *(v0 + 6480) = result;
  *(v0 + 6512) = result;
  *(v0 + 6544) = result;
  *(v0 + 6576) = result;
  *(v0 + 6592) = result;
  *(v0 + 6608) = result;
  *(v0 + 6624) = result;
  *(v0 + 6640) = result;
  *(v0 + 6656) = result;
  *(v0 + 6672) = result;
  *(v0 + 6688) = result;
  *(v0 + 6704) = result;
  *(v0 + 6720) = result;
  *(v0 + 6736) = result;
  *(v0 + 6752) = result;
  *(v0 + 6768) = result;
  *(v0 + 6784) = result;
  *(v0 + 6800) = result;
  *(v0 + 6816) = result;
  *(v0 + 6832) = result;
  *(v0 + 6848) = result;
  *(v0 + 6864) = result;
  *(v0 + 6880) = result;
  *(v0 + 6896) = result;
  *(v0 + 6912) = result;
  *(v0 + 6928) = result;
  *(v0 + 6944) = result;
  *(v0 + 6960) = result;
  *(v0 + 6976) = result;
  *(v0 + 6992) = result;
  *(v0 + 7008) = result;
  *(v0 + 7024) = result;
  *(v0 + 7040) = result;
  *(v0 + 7056) = result;
  *(v0 + 7072) = result;
  *(v0 + 7088) = result;
  *(v0 + 7104) = result;
  *(v0 + 7120) = result;
  *(v0 + 7136) = result;
  *(v0 + 7152) = result;
  *(v0 + 7168) = result;
  *(v0 + 7184) = result;
  *(v0 + 7200) = result;
  *(v0 + 7216) = result;
  *(v0 + 7232) = result;
  *(v0 + 7264) = result;
  *(v0 + 7280) = result;
  *(v0 + 7296) = result;
  *(v0 + 7408) = result;
  *(v0 + 7424) = result;
  *(v0 + 7440) = result;
  *(v0 + 7456) = result;
  *(v0 + 7472) = result;
  *(v0 + 7488) = result;
  *(v0 + 7632) = result;
  *(v0 + 7648) = result;
  *(v0 + 7696) = result;
  *(v0 + 7792) = result;
  *(v0 + 7808) = result;
  *(v0 + 7824) = result;
  *(v0 + 7840) = result;
  *(v0 + 7856) = result;
  *(v0 + 7872) = result;
  *(v0 + 7888) = result;
  *(v0 + 7904) = result;
  *(v0 + 7920) = result;
  *(v0 + 7936) = result;
  *(v0 + 7952) = result;
  *(v0 + 7968) = result;
  *(v0 + 7984) = result;
  *(v0 + 8000) = result;
  *(v0 + 8016) = result;
  *(v0 + 8032) = result;
  *(v0 + 8048) = result;
  *(v0 + 8064) = result;
  *(v0 + 8080) = result;
  *(v0 + 8096) = result;
  *(v0 + 8112) = result;
  *(v0 + 8128) = result;
  *(v0 + 8144) = result;
  *(v0 + 8160) = result;
  *(v0 + 8176) = result;
  *(v0 + 0x2000) = result;
  *(v0 + 8208) = result;
  *(v0 + 8224) = result;
  *(v0 + 8240) = result;
  *(v0 + 8256) = result;
  *(v0 + 8272) = result;
  *(v0 + 8288) = result;
  *(v0 + 8304) = result;
  *(v0 + 8320) = result;
  *(v0 + 8336) = result;
  *(v0 + 8352) = result;
  *(v0 + 8368) = result;
  *(v0 + 8384) = result;
  *(v0 + 8400) = result;
  *(v0 + 8416) = result;
  *(v0 + 8432) = result;
  *(v0 + 8448) = result;
  *(v0 + 8480) = result;
  *(v0 + 8496) = result;
  *(v0 + 8512) = result;
  *(v0 + 8624) = result;
  *(v0 + 8640) = result;
  *(v0 + 8656) = result;
  *(v0 + 8672) = result;
  *(v0 + 8688) = result;
  *(v0 + 8704) = result;
  *(v0 + 8848) = result;
  *(v0 + 8864) = result;
  *(v0 + 8912) = result;
  *(v0 + 9008) = result;
  *(v0 + 9024) = result;
  *(v0 + 9040) = result;
  *(v0 + 9056) = result;
  *(v0 + 9072) = result;
  *(v0 + 9088) = result;
  *(v0 + 9104) = result;
  *(v0 + 9120) = result;
  *(v0 + 9136) = result;
  *(v0 + 9152) = result;
  *(v0 + 9168) = result;
  *(v0 + 9184) = result;
  *(v0 + 9200) = result;
  *(v0 + 9216) = result;
  *(v0 + 9232) = result;
  *(v0 + 9248) = result;
  *(v0 + 9264) = result;
  *(v0 + 9280) = result;
  *(v0 + 9296) = result;
  *(v0 + 9312) = result;
  *(v0 + 9328) = result;
  *(v0 + 9344) = result;
  *(v0 + 9360) = result;
  *(v0 + 9376) = result;
  *(v0 + 9392) = result;
  *(v0 + 9408) = result;
  *(v0 + 9424) = result;
  *(v0 + 9440) = result;
  *(v0 + 9456) = result;
  *(v0 + 9472) = result;
  *(v0 + 9488) = result;
  *(v0 + 9504) = result;
  *(v0 + 9520) = result;
  *(v0 + 9536) = result;
  *(v0 + 9552) = result;
  *(v0 + 9568) = result;
  *(v0 + 9584) = result;
  *(v0 + 9600) = result;
  *(v0 + 9616) = result;
  *(v0 + 9632) = result;
  *(v0 + 9648) = result;
  *(v0 + 9664) = result;
  *(v0 + 9696) = result;
  *(v0 + 9712) = result;
  *(v0 + 9728) = result;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 424) = 0;
  *(v0 + 40) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 264) = 0x3FDD70A3E0000000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 6120) = 1;
  *(v0 + 6121) = *v13;
  *(v0 + 6124) = *&v13[3];
  *(v0 + 6152) = 0;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 7336) = 1;
  *(v0 + 7337) = *v14;
  *(v0 + 7340) = *&v14[3];
  *(v0 + 7368) = 0;
  *(v0 + 7688) = 0x3FF0000000000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0xC056800000000000;
  *(v0 + 8553) = *v15;
  *(v0 + 8552) = 1;
  *(v0 + 8556) = *&v15[3];
  *(v0 + 8584) = 0;
  *(v0 + 8608) = 0;
  *(v0 + 8616) = 0x3FF0000000000000;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  return result;
}

void sub_1BCC78C8C(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  v3 = sub_1BCC79418();
  sub_1BCA36A38();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC402000000000000;
  *(a1 + 80) = xmmword_1BCE3E530;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3B03126F3F800000;
  *(a1 + 400) = xmmword_1BCE3C670;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
  *(a1 + 432) = xmmword_1BCE3C680;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x40C0000040800000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x419DAE1441200000;
  *(a1 + 664) = 0x402000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = vdup_n_s32(0x3E4CCCCDu);
  *(a1 + 720) = 0x4182A3D74124CCCDLL;
  *(a1 + 728) = 1077280320;
  *(a1 + 736) = 1;
  *(a1 + 744) = 8;
  *(a1 + 752) = xmmword_1BCE3BF40;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3E99999A3E4CCCCDLL;
  *(a1 + 848) = 0x4199999A417947AELL;
  *(a1 + 856) = 0xC1054A4841700000;
  *(a1 + 864) = 1;
  *(a1 + 872) = 6;
  *(a1 + 880) = xmmword_1BCE3E0B0;
  *(a1 + 896) = 0xD000000000000010;
  *(a1 + 904) = 0x80000001BCE79320;
  *(a1 + 912) = 0xD000000000000014;
  *(a1 + 920) = 0x80000001BCE79340;
  *(a1 + 928) = 9;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3ECCCCCD3E4CCCCDLL;
  *(a1 + 976) = 0x4140000040370A3DLL;
  *(a1 + 984) = 1092536556;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 6;
  *(a1 + 1008) = xmmword_1BCE42370;
  *(a1 + 1024) = 0x2D20737572726943;
  *(a1 + 1032) = 0xEA00000000004C20;
  strcpy((a1 + 1040), "Cirrus_SingleL");
  *(a1 + 1055) = -18;
  *(a1 + 1056) = 10;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0;
  __asm { FMOV            V4.2S, #3.5 }

  *(a1 + 1104) = _D4;
  *(a1 + 1112) = 0x42820000C0D00000;
  *(a1 + 1120) = 1;
  *(a1 + 1128) = 2;
  *(a1 + 1136) = xmmword_1BCE3C710;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE435B0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x41D3333341BD3333;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V2.2S, #-30.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1632) = 0;
  *(a1 + 1628) = 0;
  *(v2 + 198) = 0x1000001010001;
  *(v2 + 206) = 0x10000;
  *(a1 + 1646) = 16843009;
  *(a1 + 1650) = 257;
  *(a1 + 1652) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 2;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C7B0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1056964608;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1109917696;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 1;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 0x40000000;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3EBC0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F6666663E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x417000003F4CCCCDLL;
  *(a1 + 2224) = xmmword_1BCE42410;
  *(a1 + 2240) = xmmword_1BCE43060;
  *(a1 + 2256) = _Q0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2304) = 3;
  *(a1 + 2312) = v3;
  *(a1 + 2320) = v11;
}

uint64_t sub_1BCC79418()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858, &qword_1BCE6CF50);
  result = swift_allocObject();
  *(result + 16) = xmmword_1BCE3C820;
  *(result + 32) = 0xC056800000000000;
  *(result + 40) = 0;
  *(result + 48) = xmmword_1BCE3C830;
  *(result + 64) = 0x432A000043160000;
  *(result + 72) = 1040242952;
  *(result + 80) = xmmword_1BCE3C840;
  *(result + 96) = xmmword_1BCE3C850;
  *(result + 112) = xmmword_1BCE3C860;
  *(result + 128) = xmmword_1BCE3C870;
  *(result + 144) = xmmword_1BCE3C880;
  *(result + 160) = xmmword_1BCE3C890;
  *(result + 176) = xmmword_1BCE42430;
  *(result + 192) = xmmword_1BCE42440;
  __asm { FMOV            V0.2D, #1.0 }

  *(result + 208) = _Q0;
  *(result + 224) = xmmword_1BCE3C8C0;
  *(result + 240) = _Q0;
  *(result + 256) = _Q0;
  *(result + 272) = _Q0;
  *(result + 288) = xmmword_1BCE3CBC0;
  *(result + 304) = xmmword_1BCE42450;
  *(result + 320) = xmmword_1BCE3E1D0;
  *(result + 336) = xmmword_1BCE3C8F0;
  *(result + 352) = _Q0;
  *(result + 368) = xmmword_1BCE3C900;
  *(result + 384) = 0x3E4CCCCD3F800000;
  *(result + 392) = 0x3FF0000000000000;
  *(result + 400) = _Q0;
  *(result + 416) = 0;
  *(result + 424) = 1065353216;
  *(result + 432) = _Q0;
  *(result + 448) = _Q0;
  *(result + 464) = _Q0;
  *(result + 480) = _Q0;
  *(result + 496) = _Q0;
  *(result + 512) = _Q0;
  *(result + 528) = _Q0;
  *(result + 544) = _Q0;
  *(result + 560) = _Q0;
  *(result + 576) = _Q0;
  *(result + 592) = _Q0;
  *(result + 608) = _Q0;
  *(result + 624) = _Q0;
  *(result + 640) = _Q0;
  *(result + 656) = _Q0;
  *(result + 672) = _Q0;
  *(result + 688) = _Q0;
  *(result + 704) = _Q0;
  *(result + 720) = _Q0;
  *(result + 736) = _Q0;
  *(result + 752) = _Q0;
  *(result + 768) = _Q0;
  *(result + 784) = _Q0;
  *(result + 800) = _Q0;
  *(result + 816) = _Q0;
  *(result + 832) = _Q0;
  *(result + 848) = _Q0;
  *(result + 864) = _Q0;
  *(result + 880) = _Q0;
  *(result + 896) = _Q0;
  *(result + 912) = _Q0;
  *(result + 928) = _Q0;
  *(result + 944) = _Q0;
  *(result + 960) = _Q0;
  *(result + 976) = _Q0;
  *(result + 992) = _Q0;
  *(result + 1008) = _Q0;
  *(result + 1024) = _Q0;
  *(result + 1040) = _Q0;
  *(result + 1056) = _Q0;
  *(result + 1072) = vdupq_n_s64(0x3FCF82F740000000uLL);
  *(result + 1088) = xmmword_1BCE3C910;
  *(result + 1104) = xmmword_1BCE3C920;
  *(result + 1120) = xmmword_1BCE3C930;
  *(result + 1136) = _Q0;
  *(result + 1152) = _Q0;
  *(result + 1168) = 0x4170000000000000;
  *(result + 1176) = 0x3FF0000000000000;
  *(result + 1184) = _Q0;
  *(result + 1200) = _Q0;
  *(result + 1216) = _Q0;
  *(result + 1232) = 0x3FF0000000000000;
  *(result + 1248) = 0xC04E000000000000;
  *(result + 1256) = 0;
  *(result + 1257) = *v9;
  *(result + 1260) = *&v9[3];
  *(result + 1264) = xmmword_1BCE3C830;
  *(result + 1280) = 0x432A000043160000;
  *(result + 1288) = 1040242952;
  *(result + 1296) = xmmword_1BCE3C840;
  *(result + 1312) = xmmword_1BCE3C850;
  *(result + 1328) = xmmword_1BCE3C860;
  *(result + 1344) = xmmword_1BCE3C870;
  *(result + 1360) = xmmword_1BCE3C880;
  *(result + 1376) = xmmword_1BCE3C890;
  *(result + 1392) = xmmword_1BCE42430;
  *(result + 1408) = xmmword_1BCE42440;
  *(result + 1424) = _Q0;
  *(result + 1440) = xmmword_1BCE3C8C0;
  *(result + 1456) = _Q0;
  *(result + 1472) = _Q0;
  *(result + 1488) = _Q0;
  *(result + 1504) = xmmword_1BCE3CBC0;
  *(result + 1520) = xmmword_1BCE42450;
  *(result + 1536) = xmmword_1BCE3E1D0;
  *(result + 1552) = xmmword_1BCE3C8F0;
  *(result + 1568) = _Q0;
  *(result + 1584) = xmmword_1BCE3C900;
  *(result + 1600) = 0x3E4CCCCD3F800000;
  *(result + 1608) = 0x3FF0000000000000;
  *(result + 1616) = _Q0;
  *(result + 1632) = 0;
  *(result + 1640) = 1065353216;
  *(result + 1648) = _Q0;
  *(result + 1664) = _Q0;
  *(result + 1680) = _Q0;
  *(result + 1696) = _Q0;
  *(result + 1712) = _Q0;
  *(result + 1728) = _Q0;
  *(result + 1744) = _Q0;
  *(result + 1760) = _Q0;
  *(result + 1776) = _Q0;
  *(result + 1792) = _Q0;
  *(result + 1808) = _Q0;
  *(result + 1824) = _Q0;
  *(result + 1840) = _Q0;
  *(result + 1856) = _Q0;
  *(result + 1872) = _Q0;
  *(result + 1888) = _Q0;
  *(result + 1904) = _Q0;
  *(result + 1920) = _Q0;
  *(result + 1936) = _Q0;
  *(result + 1952) = _Q0;
  *(result + 1968) = _Q0;
  *(result + 1984) = _Q0;
  *(result + 2000) = _Q0;
  *(result + 2016) = _Q0;
  *(result + 2032) = _Q0;
  *(result + 2048) = _Q0;
  *(result + 2064) = _Q0;
  *(result + 2080) = _Q0;
  *(result + 2096) = _Q0;
  *(result + 2112) = _Q0;
  *(result + 2128) = _Q0;
  *(result + 2144) = _Q0;
  *(result + 2160) = _Q0;
  *(result + 2176) = _Q0;
  *(result + 2192) = _Q0;
  *(result + 2208) = _Q0;
  *(result + 2224) = _Q0;
  *(result + 2240) = _Q0;
  *(result + 2256) = _Q0;
  *(result + 2272) = _Q0;
  *(result + 2288) = vdupq_n_s64(0x3FCF6CD7E0000000uLL);
  *(result + 2304) = xmmword_1BCE3C940;
  *(result + 2320) = xmmword_1BCE3C950;
  *(result + 2336) = xmmword_1BCE3C960;
  *(result + 2352) = _Q0;
  *(result + 2368) = _Q0;
  *(result + 2384) = 0x4170000000000000;
  *(result + 2392) = 0x3FF0000000000000;
  *(result + 2400) = _Q0;
  *(result + 2416) = _Q0;
  *(result + 2432) = _Q0;
  *(result + 2448) = 0x3FF0000000000000;
  *(result + 2464) = 0xC028000000000000;
  *(result + 2472) = 0;
  *(result + 2473) = *v10;
  *(result + 2476) = *&v10[3];
  *(result + 2480) = xmmword_1BCE3C780;
  *(result + 2496) = 0x4396000042C80000;
  *(result + 2504) = 1036831949;
  *(result + 2512) = xmmword_1BCE3C970;
  *(result + 2528) = _Q0;
  *(result + 2544) = xmmword_1BCE42460;
  *(result + 2560) = xmmword_1BCE3C990;
  *(result + 2576) = xmmword_1BCE3C9A0;
  *(result + 2592) = _Q0;
  *(result + 2608) = xmmword_1BCE42430;
  *(result + 2624) = xmmword_1BCE42470;
  *(result + 2640) = _Q0;
  *(result + 2656) = xmmword_1BCE3C8C0;
  *(result + 2672) = _Q0;
  *(result + 2688) = _Q0;
  *(result + 2704) = xmmword_1BCE3D3C0;
  *(result + 2720) = xmmword_1BCE3D3D0;
  *(result + 2736) = xmmword_1BCE3C9E0;
  *(result + 2752) = xmmword_1BCE3E2C0;
  *(result + 2768) = xmmword_1BCE42480;
  *(result + 2784) = xmmword_1BCE3CA00;
  *(result + 2800) = xmmword_1BCE3CA10;
  *(result + 2816) = 0x3E4CCCCD3F4CCCCDLL;
  *(result + 2824) = 0x3FF0000000000000;
  *(result + 2832) = _Q0;
  *(result + 2848) = 0;
  *(result + 2856) = 1065353216;
  *(result + 2864) = _Q0;
  *(result + 2880) = _Q0;
  *(result + 2896) = _Q0;
  *(result + 2912) = _Q0;
  *(result + 2928) = _Q0;
  *(result + 2944) = _Q0;
  *(result + 2960) = _Q0;
  *(result + 2976) = _Q0;
  *(result + 2992) = _Q0;
  *(result + 3008) = _Q0;
  *(result + 3024) = _Q0;
  *(result + 3040) = _Q0;
  *(result + 3056) = _Q0;
  *(result + 3072) = _Q0;
  *(result + 3088) = _Q0;
  *(result + 3104) = _Q0;
  *(result + 3120) = _Q0;
  *(result + 3136) = _Q0;
  *(result + 3152) = _Q0;
  *(result + 3168) = _Q0;
  *(result + 3184) = _Q0;
  *(result + 3200) = _Q0;
  *(result + 3216) = _Q0;
  *(result + 3232) = _Q0;
  *(result + 3248) = _Q0;
  *(result + 3264) = _Q0;
  *(result + 3280) = _Q0;
  *(result + 3296) = _Q0;
  *(result + 3312) = _Q0;
  *(result + 3328) = _Q0;
  *(result + 3344) = _Q0;
  *(result + 3360) = _Q0;
  *(result + 3376) = _Q0;
  *(result + 3392) = _Q0;
  *(result + 3408) = _Q0;
  *(result + 3424) = _Q0;
  *(result + 3440) = _Q0;
  *(result + 3456) = _Q0;
  *(result + 3472) = _Q0;
  *(result + 3488) = _Q0;
  *(result + 3504) = vdupq_n_s64(0x3FCF992720000000uLL);
  *(result + 3520) = xmmword_1BCE3CA20;
  *(result + 3536) = xmmword_1BCE3CA30;
  *(result + 3552) = xmmword_1BCE3CA40;
  *(result + 3568) = _Q0;
  *(result + 3584) = _Q0;
  *(result + 3600) = 0x4170000000000000;
  *(result + 3608) = 0x3FF0000000000000;
  *(result + 3616) = _Q0;
  *(result + 3632) = _Q0;
  *(result + 3648) = _Q0;
  *(result + 3664) = 0x3FF0000000000000;
  *(result + 3680) = 0xC018000000000000;
  *(result + 3688) = 0;
  *(result + 3689) = *v11;
  *(result + 3692) = *&v11[3];
  *(result + 4720) = xmmword_1BCE3CB00;
  *(result + 4736) = xmmword_1BCE3CB10;
  *(result + 4752) = xmmword_1BCE3CB20;
  *(result + 4768) = xmmword_1BCE3CB10;
  *(result + 4624) = _Q0;
  *(result + 4640) = _Q0;
  *(result + 4656) = _Q0;
  *(result + 4672) = _Q0;
  *(result + 4688) = _Q0;
  *(result + 4704) = _Q0;
  *(result + 4528) = _Q0;
  *(result + 4544) = _Q0;
  *(result + 4560) = _Q0;
  *(result + 4576) = _Q0;
  *(result + 4592) = _Q0;
  *(result + 4608) = _Q0;
  *(result + 4432) = _Q0;
  *(result + 4448) = _Q0;
  *(result + 4464) = _Q0;
  *(result + 4480) = _Q0;
  *(result + 4496) = _Q0;
  *(result + 4512) = _Q0;
  *(result + 4336) = _Q0;
  *(result + 4352) = _Q0;
  *(result + 4368) = _Q0;
  *(result + 4384) = _Q0;
  *(result + 4400) = _Q0;
  *(result + 4416) = _Q0;
  *(result + 4240) = _Q0;
  *(result + 4256) = _Q0;
  *(result + 4272) = _Q0;
  *(result + 4288) = _Q0;
  *(result + 4304) = _Q0;
  *(result + 4320) = _Q0;
  *(result + 4160) = _Q0;
  *(result + 4176) = _Q0;
  *(result + 4192) = _Q0;
  *(result + 4208) = _Q0;
  *(result + 4224) = _Q0;
  *(result + 4080) = _Q0;
  *(result + 4096) = _Q0;
  *(result + 4112) = _Q0;
  *(result + 4128) = _Q0;
  *(result + 4144) = _Q0;
  *(result + 3952) = _Q0;
  *(result + 4048) = _Q0;
  *(result + 4064) = 0;
  *(result + 4072) = 0;
  *(result + 3968) = xmmword_1BCE3E230;
  *(result + 4032) = 1062836634;
  *(result + 4040) = 0x3FF0000000000000;
  *(result + 3984) = xmmword_1BCE3CAD0;
  *(result + 4000) = xmmword_1BCE3CA00;
  *(result + 4016) = xmmword_1BCE3CAE0;
  *(result + 3696) = xmmword_1BCE3CA50;
  *(result + 3888) = _Q0;
  *(result + 3904) = _Q0;
  *(result + 3920) = _Q0;
  *(result + 3936) = _Q0;
  *(result + 3712) = 0x447A000044160000;
  *(result + 3744) = _Q0;
  *(result + 3856) = _Q0;
  *(result + 3872) = xmmword_1BCE3C8C0;
  *(result + 3824) = xmmword_1BCE424A0;
  *(result + 3840) = xmmword_1BCE424B0;
  *(result + 3792) = xmmword_1BCE42490;
  *(result + 3808) = xmmword_1BCE3EEE0;
  *(result + 3760) = xmmword_1BCE3CA70;
  *(result + 3776) = xmmword_1BCE3CA80;
  *(result + 3720) = 1061997773;
  *(result + 3728) = xmmword_1BCE3CA60;
  *(result + 4784) = _Q0;
  *(result + 4800) = _Q0;
  *(result + 4816) = 0x4170000000000000;
  *(result + 4824) = 0x3FF0000000000000;
  *(result + 4832) = _Q0;
  *(result + 4848) = _Q0;
  *(result + 4864) = _Q0;
  *(result + 4880) = 0x3FF0000000000000;
  *(result + 4896) = 0;
  *(result + 4904) = 0;
  *(result + 4905) = *v12;
  *(result + 4908) = *&v12[3];
  *(result + 4912) = xmmword_1BCE3CB30;
  *(result + 4928) = 0x44C8000044160000;
  *(result + 4936) = 1061997773;
  *(result + 4944) = xmmword_1BCE424C0;
  *(result + 4960) = xmmword_1BCE3CB50;
  *(result + 4976) = xmmword_1BCE3CB60;
  *(result + 4992) = xmmword_1BCE3CB70;
  *(result + 5008) = xmmword_1BCE3CB80;
  *(result + 5024) = xmmword_1BCE3CB90;
  *(result + 5040) = xmmword_1BCE424D0;
  *(result + 5056) = xmmword_1BCE3C8C0;
  *(result + 5072) = _Q0;
  *(result + 5088) = xmmword_1BCE3C8C0;
  *(result + 5104) = _Q0;
  *(result + 5120) = xmmword_1BCE3CBB0;
  *(result + 5136) = _Q0;
  *(result + 5152) = xmmword_1BCE3CBC0;
  *(result + 5168) = xmmword_1BCE3CBD0;
  *(result + 5184) = xmmword_1BCE424E0;
  *(result + 5200) = vdupq_n_s64(0x3FEF9F9F80000000uLL);
  *(result + 5216) = xmmword_1BCE3CA00;
  strcpy((result + 5232), "fff?fff?333?fff?fff?");
  *(result + 5936) = xmmword_1BCE3CC10;
  *(result + 5968) = xmmword_1BCE3CC30;
  *(result + 5952) = xmmword_1BCE3CC20;
  *(result + 5984) = xmmword_1BCE3CC20;
  *(result + 6128) = xmmword_1BCE3CC40;
  *(result + 6144) = 0x44480000443B8000;
  *(result + 6160) = xmmword_1BCE42500;
  *(result + 6176) = xmmword_1BCE3CC60;
  *(result + 6192) = xmmword_1BCE42510;
  *(result + 6208) = xmmword_1BCE3CC80;
  *(result + 6224) = xmmword_1BCE3CC90;
  *(result + 6240) = xmmword_1BCE3CCA0;
  *(result + 6384) = xmmword_1BCE3DAF0;
  *(result + 6400) = xmmword_1BCE42520;
  *(result + 6416) = xmmword_1BCE42530;
  *(result + 6432) = xmmword_1BCE42540;
  *(result + 6448) = xmmword_1BCE42550;
  *(result + 6480) = xmmword_1BCE3CD00;
  *(result + 7152) = xmmword_1BCE3CD10;
  *(result + 7184) = xmmword_1BCE3CD30;
  *(result + 7168) = xmmword_1BCE3CD20;
  *(result + 7200) = xmmword_1BCE3CD20;
  *(result + 7344) = xmmword_1BCE3CD40;
  *(result + 7360) = 1147207680;
  *(result + 7408) = xmmword_1BCE42560;
  *(result + 7424) = xmmword_1BCE3C9D0;
  *(result + 7440) = xmmword_1BCE3CD70;
  *(result + 7456) = xmmword_1BCE3DEF0;
  *(result + 7552) = xmmword_1BCE3CBB0;
  *(result + 7632) = xmmword_1BCE42570;
  *(result + 7648) = xmmword_1BCE42580;
  *(result + 7664) = xmmword_1BCE3CDB0;
  *(result + 7696) = xmmword_1BCE3E2F0;
  *(result + 8368) = xmmword_1BCE3CDD0;
  *(result + 8400) = xmmword_1BCE3CDE0;
  *(result + 8560) = xmmword_1BCE3CDF0;
  *(result + 8576) = 0x41A0000044A28000;
  *(result + 8624) = xmmword_1BCE3CE00;
  *(result + 9584) = xmmword_1BCE3CE20;
  *(result + 10800) = xmmword_1BCE3CE20;
  *(result + 9776) = xmmword_1BCE3CE40;
  *(result + 10992) = xmmword_1BCE3CE40;
  *(result + 9792) = 1150681088;
  *(result + 11008) = 1150681088;
  *(result + 9840) = xmmword_1BCE3CE50;
  *(result + 11056) = xmmword_1BCE3CE50;
  *(result + 9856) = xmmword_1BCE3CE60;
  *(result + 11072) = xmmword_1BCE3CE60;
  *(result + 9872) = xmmword_1BCE3CE70;
  *(result + 11088) = xmmword_1BCE3CE70;
  *(result + 9888) = xmmword_1BCE3CE80;
  *(result + 11104) = xmmword_1BCE3CE80;
  *(result + 11264) = xmmword_1BCE42590;
  v6 = vdupq_n_s32(0x3F666666u);
  *(result + 8880) = v6;
  *(result + 10096) = v6;
  *(result + 11312) = v6;
  *(result + 10816) = xmmword_1BCE3CE90;
  *(result + 12032) = xmmword_1BCE3CE90;
  *(result + 9616) = xmmword_1BCE3CE30;
  *(result + 12048) = xmmword_1BCE3CE30;
  *(result + 12208) = xmmword_1BCE3CEC0;
  *(result + 12224) = 0x146D097C44A28000;
  v7 = vdupq_n_s64(0x3FECBCBCC0000000uLL);
  *(result + 7376) = v7;
  *(result + 8592) = v7;
  *(result + 9808) = v7;
  *(result + 11024) = v7;
  *(result + 12240) = v7;
  *(result + 7392) = xmmword_1BCE3CD50;
  *(result + 8608) = xmmword_1BCE3CD50;
  *(result + 9824) = xmmword_1BCE3CD50;
  *(result + 11040) = xmmword_1BCE3CD50;
  *(result + 12256) = xmmword_1BCE3CD50;
  *(result + 12272) = xmmword_1BCE3CED0;
  *(result + 12528) = xmmword_1BCE3CEF0;
  *(result + 8912) = xmmword_1BCE3CE10;
  *(result + 10128) = xmmword_1BCE3CE10;
  *(result + 11344) = xmmword_1BCE3CE10;
  *(result + 12560) = xmmword_1BCE3CE10;
  *(result + 10832) = xmmword_1BCE3CEA0;
  *(result + 13264) = xmmword_1BCE3CEA0;
  *(result + 13424) = xmmword_1BCE425A0;
  *(result + 13440) = 0x2C31C71D44610000;
  *(result + 13456) = vdupq_n_s64(0x3FEC9C9CC0000000uLL);
  *(result + 13472) = xmmword_1BCE425B0;
  *(result + 13488) = xmmword_1BCE425C0;
  *(result + 13520) = xmmword_1BCE425D0;
  *(result + 13536) = xmmword_1BCE425E0;
  *(result + 7488) = xmmword_1BCE3CBA0;
  *(result + 13568) = xmmword_1BCE3CBA0;
  *(result + 13712) = xmmword_1BCE425F0;
  *(result + 13744) = xmmword_1BCE3CF70;
  *(result + 13776) = xmmword_1BCE3CF80;
  *(result + 12016) = xmmword_1BCE3CEB0;
  *(result + 13232) = xmmword_1BCE3CEB0;
  *(result + 14448) = xmmword_1BCE3CEB0;
  *(result + 14480) = xmmword_1BCE3CF90;
  *(result + 14640) = xmmword_1BCE42600;
  *(result + 14656) = 0x441EC000443B8000;
  *(result + 14672) = xmmword_1BCE42610;
  *(result + 5253) = 0;
  *(result + 5254) = 0;
  *(result + 5256) = 0x3FF0000000000000;
  *(result + 5264) = _Q0;
  *(result + 5280) = 0;
  *(result + 5288) = 0;
  *(result + 5296) = _Q0;
  *(result + 5312) = _Q0;
  *(result + 5328) = _Q0;
  *(result + 5344) = _Q0;
  *(result + 5360) = _Q0;
  *(result + 5376) = _Q0;
  *(result + 5392) = _Q0;
  *(result + 5408) = _Q0;
  *(result + 5424) = _Q0;
  *(result + 5440) = _Q0;
  *(result + 5456) = _Q0;
  *(result + 5472) = _Q0;
  *(result + 5488) = _Q0;
  *(result + 5504) = _Q0;
  *(result + 5520) = _Q0;
  *(result + 5536) = _Q0;
  *(result + 5552) = _Q0;
  *(result + 5568) = _Q0;
  *(result + 5584) = _Q0;
  *(result + 5600) = _Q0;
  *(result + 5616) = _Q0;
  *(result + 5632) = _Q0;
  *(result + 5648) = _Q0;
  *(result + 5664) = _Q0;
  *(result + 5680) = _Q0;
  *(result + 5696) = _Q0;
  *(result + 5712) = _Q0;
  *(result + 5728) = _Q0;
  *(result + 5744) = _Q0;
  *(result + 5760) = _Q0;
  *(result + 5776) = _Q0;
  *(result + 5792) = _Q0;
  *(result + 5808) = _Q0;
  *(result + 5824) = _Q0;
  *(result + 5840) = _Q0;
  *(result + 5856) = _Q0;
  *(result + 5872) = _Q0;
  *(result + 5888) = _Q0;
  *(result + 5904) = _Q0;
  *(result + 5920) = _Q0;
  *(result + 6000) = _Q0;
  *(result + 6016) = _Q0;
  *(result + 6032) = 0x4170000000000000;
  *(result + 6040) = 0x3FF0000000000000;
  *(result + 6048) = _Q0;
  *(result + 6064) = _Q0;
  *(result + 6080) = _Q0;
  *(result + 6096) = 0x3FF0000000000000;
  *(result + 6112) = 0x4017FFFFFFFFFFFALL;
  *(result + 6120) = 0;
  *(result + 6121) = *v13;
  *(result + 6124) = *&v13[3];
  *(result + 6152) = 1060739482;
  *(result + 6256) = _Q0;
  *(result + 6272) = _Q0;
  *(result + 6288) = _Q0;
  *(result + 6304) = xmmword_1BCE3C8C0;
  *(result + 6320) = _Q0;
  *(result + 6336) = xmmword_1BCE3CBB0;
  *(result + 6352) = _Q0;
  *(result + 6368) = xmmword_1BCE3CBC0;
  *(result + 6464) = 1063675494;
  *(result + 6472) = 0x3FEF857180000000;
  *(result + 6496) = 0x3FE0000000000000;
  *(result + 6504) = 0;
  *(result + 6512) = _Q0;
  *(result + 6528) = _Q0;
  *(result + 6544) = _Q0;
  *(result + 6560) = _Q0;
  *(result + 6576) = _Q0;
  *(result + 6592) = _Q0;
  *(result + 6608) = _Q0;
  *(result + 6624) = _Q0;
  *(result + 6640) = _Q0;
  *(result + 6656) = _Q0;
  *(result + 6672) = _Q0;
  *(result + 6688) = _Q0;
  *(result + 6704) = _Q0;
  *(result + 6720) = _Q0;
  *(result + 6736) = _Q0;
  *(result + 6752) = _Q0;
  *(result + 6768) = _Q0;
  *(result + 6784) = _Q0;
  *(result + 6800) = _Q0;
  *(result + 6816) = _Q0;
  *(result + 6832) = _Q0;
  *(result + 6848) = _Q0;
  *(result + 6864) = _Q0;
  *(result + 6880) = _Q0;
  *(result + 6896) = _Q0;
  *(result + 6912) = _Q0;
  *(result + 6928) = _Q0;
  *(result + 6944) = _Q0;
  *(result + 6960) = _Q0;
  *(result + 6976) = _Q0;
  *(result + 6992) = _Q0;
  *(result + 7008) = _Q0;
  *(result + 7024) = _Q0;
  *(result + 7040) = _Q0;
  *(result + 7056) = _Q0;
  *(result + 7072) = _Q0;
  *(result + 7088) = _Q0;
  *(result + 7104) = _Q0;
  *(result + 7120) = _Q0;
  *(result + 7136) = _Q0;
  *(result + 7216) = _Q0;
  *(result + 7232) = _Q0;
  *(result + 7248) = 0x4170000000000000;
  *(result + 7256) = 0x3FF0000000000000;
  *(result + 7264) = _Q0;
  *(result + 7280) = _Q0;
  *(result + 7296) = _Q0;
  *(result + 7337) = *v14;
  *(result + 7312) = 0x3FF0000000000000;
  *(result + 7328) = 0x4027FFFFFFFFFFFALL;
  *(result + 7336) = 0;
  *(result + 7340) = *&v14[3];
  *(result + 7368) = 1059481190;
  *(result + 7472) = _Q0;
  *(result + 7504) = _Q0;
  *(result + 7520) = xmmword_1BCE3C8C0;
  *(result + 7536) = _Q0;
  *(result + 14688) = xmmword_1BCE3E790;
  *(result + 14704) = xmmword_1BCE42620;
  *(result + 14720) = xmmword_1BCE42630;
  *(result + 14736) = xmmword_1BCE42640;
  *(result + 14752) = xmmword_1BCE42650;
  *(result + 14864) = xmmword_1BCE3D010;
  *(result + 14928) = xmmword_1BCE42660;
  *(result + 14944) = xmmword_1BCE42670;
  *(result + 14960) = xmmword_1BCE42680;
  *(result + 14992) = xmmword_1BCE3D060;
  *(result + 15664) = xmmword_1BCE3D070;
  *(result + 15680) = xmmword_1BCE3D080;
  *(result + 15696) = xmmword_1BCE3D090;
  *(result + 15712) = xmmword_1BCE3D0A0;
  *(result + 15856) = xmmword_1BCE3D0B0;
  *(result + 15872) = 0x449EC00044160000;
  *(result + 15888) = xmmword_1BCE3D0C0;
  *(result + 15904) = xmmword_1BCE3D0D0;
  *(result + 15920) = xmmword_1BCE3DBF0;
  *(result + 15936) = xmmword_1BCE3DC00;
  *(result + 15952) = xmmword_1BCE3D100;
  *(result + 15968) = xmmword_1BCE3D110;
  *(result + 8848) = xmmword_1BCE3CCB0;
  *(result + 10064) = xmmword_1BCE3CCB0;
  *(result + 11248) = xmmword_1BCE3CCB0;
  *(result + 11280) = xmmword_1BCE3CCB0;
  *(result + 16080) = xmmword_1BCE3CCB0;
  *(result + 7616) = xmmword_1BCE3E230;
  *(result + 10048) = xmmword_1BCE3E230;
  *(result + 13696) = xmmword_1BCE3E230;
  *(result + 16128) = xmmword_1BCE3E230;
  *(result + 16144) = xmmword_1BCE42690;
  *(result + 16160) = xmmword_1BCE426A0;
  *(result + 16176) = xmmword_1BCE426B0;
  *(result + 7680) = 1063675494;
  *(result + 8896) = 1063675494;
  *(result + 10112) = 1063675494;
  *(result + 11328) = 1063675494;
  *(result + 12544) = 1063675494;
  *(result + 13760) = 1063675494;
  *(result + 14976) = 1063675494;
  *(result + 16192) = 1063675494;
  *(result + 16208) = xmmword_1BCE3D150;
  *(result + 16880) = xmmword_1BCE3D160;
  *(result + 16896) = xmmword_1BCE3D170;
  *(result + 16912) = xmmword_1BCE3D180;
  *(result + 16928) = xmmword_1BCE3D190;
  *(result + 17072) = xmmword_1BCE3CB30;
  *(result + 17088) = 0x4483CC9D445C8321;
  *(result + 17104) = xmmword_1BCE3D1A0;
  *(result + 17120) = xmmword_1BCE3D1B0;
  *(result + 17136) = xmmword_1BCE3D1C0;
  *(result + 17152) = xmmword_1BCE3D1D0;
  *(result + 17168) = xmmword_1BCE3D1E0;
  *(result + 17184) = xmmword_1BCE3D1F0;
  *(result + 17200) = xmmword_1BCE424D0;
  *(result + 8384) = xmmword_1BCE3CBB0;
  *(result + 8768) = xmmword_1BCE3CBB0;
  *(result + 9600) = xmmword_1BCE3CBB0;
  *(result + 9984) = xmmword_1BCE3CBB0;
  *(result + 11200) = xmmword_1BCE3CBB0;
  *(result + 12416) = xmmword_1BCE3CBB0;
  *(result + 13248) = xmmword_1BCE3CBB0;
  *(result + 13632) = xmmword_1BCE3CBB0;
  *(result + 14464) = xmmword_1BCE3CBB0;
  *(result + 14848) = xmmword_1BCE3CBB0;
  *(result + 16000) = xmmword_1BCE3CBB0;
  *(result + 16064) = xmmword_1BCE3CBB0;
  *(result + 17280) = xmmword_1BCE3CBB0;
  *(result + 8832) = xmmword_1BCE3ECB0;
  *(result + 12480) = xmmword_1BCE3ECB0;
  *(result + 14912) = xmmword_1BCE3ECB0;
  *(result + 17344) = xmmword_1BCE3ECB0;
  *(result + 17360) = xmmword_1BCE3CAD0;
  *(result + 17392) = xmmword_1BCE426C0;
  *(result + 17408) = 1062836634;
  *(result + 17424) = xmmword_1BCE3D220;
  *(result + 18096) = xmmword_1BCE3D230;
  *(result + 18112) = xmmword_1BCE3D240;
  *(result + 18128) = xmmword_1BCE3D250;
  *(result + 18144) = xmmword_1BCE3D260;
  *(result + 18288) = xmmword_1BCE3C780;
  *(result + 18304) = 0x4396000042C80000;
  *(result + 18320) = xmmword_1BCE3D270;
  *(result + 18352) = xmmword_1BCE426D0;
  *(result + 18368) = xmmword_1BCE3D290;
  *(result + 18384) = xmmword_1BCE3C9A0;
  *(result + 18432) = xmmword_1BCE42470;
  *(result + 18512) = xmmword_1BCE3D2B0;
  *(result + 18528) = xmmword_1BCE3D2C0;
  *(result + 18544) = xmmword_1BCE3D2D0;
  *(result + 18560) = xmmword_1BCE3E350;
  *(result + 18576) = xmmword_1BCE426F0;
  *(result + 13504) = xmmword_1BCE3CA00;
  *(result + 13728) = xmmword_1BCE3CA00;
  *(result + 17376) = xmmword_1BCE3CA00;
  *(result + 18592) = xmmword_1BCE3CA00;
  *(result + 18608) = xmmword_1BCE3CA10;
  *(result + 18624) = 0x3E4CCCCD3F4CCCCDLL;
  *(result + 19312) = xmmword_1BCE3D2E0;
  *(result + 19344) = xmmword_1BCE3D2F0;
  __asm { FMOV            V26.2D, #0.25 }

  *(result + 20528) = _Q26;
  *(result + 20560) = xmmword_1BCE3D300;
  *(result + 19504) = xmmword_1BCE3C830;
  *(result + 20720) = xmmword_1BCE3C830;
  *(result + 19520) = 0x432A000043160000;
  *(result + 20736) = 0x432A000043160000;
  *(result + 19536) = xmmword_1BCE3C840;
  *(result + 20752) = xmmword_1BCE3C840;
  *(result + 19552) = xmmword_1BCE3C850;
  *(result + 20768) = xmmword_1BCE3C850;
  *(result + 19568) = xmmword_1BCE3C860;
  *(result + 20784) = xmmword_1BCE3C860;
  *(result + 19584) = xmmword_1BCE3C870;
  *(result + 20800) = xmmword_1BCE3C870;
  *(result + 19600) = xmmword_1BCE3C880;
  *(result + 20816) = xmmword_1BCE3C880;
  *(result + 19616) = xmmword_1BCE3C890;
  *(result + 20832) = xmmword_1BCE3C890;
  *(result + 18416) = xmmword_1BCE426E0;
  *(result + 19632) = xmmword_1BCE426E0;
  *(result + 20848) = xmmword_1BCE426E0;
  *(result + 19648) = xmmword_1BCE42440;
  *(result + 20864) = xmmword_1BCE42440;
  *(result + 8736) = xmmword_1BCE3C8C0;
  *(result + 9952) = xmmword_1BCE3C8C0;
  *(result + 11168) = xmmword_1BCE3C8C0;
  *(result + 12384) = xmmword_1BCE3C8C0;
  *(result + 13600) = xmmword_1BCE3C8C0;
  *(result + 14816) = xmmword_1BCE3C8C0;
  *(result + 16032) = xmmword_1BCE3C8C0;
  *(result + 17216) = xmmword_1BCE3C8C0;
  *(result + 17248) = xmmword_1BCE3C8C0;
  *(result + 18464) = xmmword_1BCE3C8C0;
  *(result + 19680) = xmmword_1BCE3C8C0;
  *(result + 20896) = xmmword_1BCE3C8C0;
  *(result + 7584) = xmmword_1BCE3CBC0;
  *(result + 8416) = xmmword_1BCE3CBC0;
  *(result + 8800) = xmmword_1BCE3CBC0;
  *(result + 9632) = xmmword_1BCE3CBC0;
  *(result + 10016) = xmmword_1BCE3CBC0;
  *(result + 10848) = xmmword_1BCE3CBC0;
  *(result + 11232) = xmmword_1BCE3CBC0;
  *(result + 12064) = xmmword_1BCE3CBC0;
  *(result + 12448) = xmmword_1BCE3CBC0;
  *(result + 13280) = xmmword_1BCE3CBC0;
  *(result + 13664) = xmmword_1BCE3CBC0;
  *(result + 14496) = xmmword_1BCE3CBC0;
  *(result + 14880) = xmmword_1BCE3CBC0;
  *(result + 16096) = xmmword_1BCE3CBC0;
  *(result + 17312) = xmmword_1BCE3CBC0;
  *(result + 19744) = xmmword_1BCE3CBC0;
  *(result + 20960) = xmmword_1BCE3CBC0;
  *(result + 19760) = xmmword_1BCE42700;
  *(result + 20976) = xmmword_1BCE42700;
  *(result + 19776) = xmmword_1BCE3E1D0;
  *(result + 20992) = xmmword_1BCE3E1D0;
  *(result + 19792) = xmmword_1BCE3C8F0;
  *(result + 21008) = xmmword_1BCE3C8F0;
  *(result + 19824) = xmmword_1BCE3C900;
  *(result + 19840) = 0x3E4CCCCD3F800000;
  *(result + 21040) = xmmword_1BCE3C900;
  *(result + 21056) = 0x3E4CCCCD3F800000;
  *(result + 21744) = vdupq_n_s64(0x3FCFEB6B80000000uLL);
  *(result + 19328) = xmmword_1BCE3C910;
  *(result + 19360) = xmmword_1BCE3C910;
  *(result + 20544) = xmmword_1BCE3C910;
  *(result + 20576) = xmmword_1BCE3C910;
  *(result + 21760) = xmmword_1BCE3C910;
  *(result + 21776) = xmmword_1BCE3D310;
  *(result + 21792) = xmmword_1BCE3D320;
  *(result + 8464) = 0x4170000000000000;
  *(result + 9680) = 0x4170000000000000;
  *(result + 10896) = 0x4170000000000000;
  *(result + 12112) = 0x4170000000000000;
  *(result + 13328) = 0x4170000000000000;
  *(result + 14544) = 0x4170000000000000;
  *(result + 15760) = 0x4170000000000000;
  *(result + 16976) = 0x4170000000000000;
  *(result + 18192) = 0x4170000000000000;
  *(result + 19408) = 0x4170000000000000;
  *(result + 20624) = 0x4170000000000000;
  *(result + 21840) = 0x4170000000000000;
  *(result + 18080) = _Q0;
  *(result + 17984) = _Q0;
  *(result + 18000) = _Q0;
  *(result + 18016) = _Q0;
  *(result + 18032) = _Q0;
  *(result + 18048) = _Q0;
  *(result + 18064) = _Q0;
  *(result + 17888) = _Q0;
  *(result + 17904) = _Q0;
  *(result + 17920) = _Q0;
  *(result + 17936) = _Q0;
  *(result + 17952) = _Q0;
  *(result + 17968) = _Q0;
  *(result + 17792) = _Q0;
  *(result + 17808) = _Q0;
  *(result + 17824) = _Q0;
  *(result + 17840) = _Q0;
  *(result + 17856) = _Q0;
  *(result + 17872) = _Q0;
  *(result + 17696) = _Q0;
  *(result + 17712) = _Q0;
  *(result + 17728) = _Q0;
  *(result + 17744) = _Q0;
  *(result + 17760) = _Q0;
  *(result + 17776) = _Q0;
  *(result + 17600) = _Q0;
  *(result + 17616) = _Q0;
  *(result + 17632) = _Q0;
  *(result + 17648) = _Q0;
  *(result + 17664) = _Q0;
  *(result + 17680) = _Q0;
  *(result + 17504) = _Q0;
  *(result + 17520) = _Q0;
  *(result + 17536) = _Q0;
  *(result + 17552) = _Q0;
  *(result + 17568) = _Q0;
  *(result + 17584) = _Q0;
  *(result + 7568) = _Q0;
  *(result + 7600) = _Q0;
  *(result + 17456) = _Q0;
  *(result + 17472) = _Q0;
  *(result + 17488) = _Q0;
  *(result + 7728) = _Q0;
  *(result + 7744) = _Q0;
  *(result + 17416) = 0x3FEF23CF40000000;
  *(result + 17440) = 0;
  *(result + 17448) = 665496235;
  *(result + 7760) = _Q0;
  *(result + 7776) = _Q0;
  *(result + 7792) = _Q0;
  *(result + 7808) = _Q0;
  *(result + 17296) = _Q0;
  *(result + 17328) = _Q0;
  *(result + 7824) = _Q0;
  *(result + 7840) = _Q0;
  *(result + 7856) = _Q0;
  *(result + 7872) = _Q0;
  *(result + 17232) = _Q0;
  *(result + 17264) = _Q0;
  *(result + 7888) = _Q0;
  *(result + 7904) = _Q0;
  *(result + 7920) = _Q0;
  *(result + 7936) = _Q0;
  *(result + 7952) = _Q0;
  *(result + 7968) = _Q0;
  *(result + 7984) = _Q0;
  *(result + 8000) = _Q0;
  *(result + 16992) = _Q0;
  *(result + 17065) = *v22;
  *(result + 17068) = *&v22[3];
  *(result + 17096) = 1050388079;
  *(result + 17008) = _Q0;
  *(result + 17024) = _Q0;
  *(result + 17040) = 0x3FF0000000000000;
  *(result + 17056) = 0xC017FFFFFFFFFFE8;
  *(result + 17064) = 1;
  *(result + 8016) = _Q0;
  *(result + 8032) = _Q0;
  *(result + 8048) = _Q0;
  *(result + 16944) = _Q0;
  *(result + 16960) = _Q0;
  *(result + 16984) = 0x3FF0000000000000;
  *(result + 8064) = _Q0;
  *(result + 8080) = _Q0;
  *(result + 16816) = _Q0;
  *(result + 16832) = _Q0;
  *(result + 16848) = _Q0;
  *(result + 16864) = _Q0;
  *(result + 16720) = _Q0;
  *(result + 16736) = _Q0;
  *(result + 16752) = _Q0;
  *(result + 16768) = _Q0;
  *(result + 16784) = _Q0;
  *(result + 16800) = _Q0;
  *(result + 16624) = _Q0;
  *(result + 16640) = _Q0;
  *(result + 16656) = _Q0;
  *(result + 16672) = _Q0;
  *(result + 16688) = _Q0;
  *(result + 16704) = _Q0;
  *(result + 16528) = _Q0;
  *(result + 16544) = _Q0;
  *(result + 16560) = _Q0;
  *(result + 16576) = _Q0;
  *(result + 16592) = _Q0;
  *(result + 16608) = _Q0;
  *(result + 16432) = _Q0;
  *(result + 16448) = _Q0;
  *(result + 16464) = _Q0;
  *(result + 16480) = _Q0;
  *(result + 16496) = _Q0;
  *(result + 16512) = _Q0;
  *(result + 16336) = _Q0;
  *(result + 16352) = _Q0;
  *(result + 16368) = _Q0;
  *(result + 0x4000) = _Q0;
  *(result + 16400) = _Q0;
  *(result + 16416) = _Q0;
  *(result + 8096) = _Q0;
  *(result + 16256) = _Q0;
  *(result + 16272) = _Q0;
  *(result + 16288) = _Q0;
  *(result + 16304) = _Q0;
  *(result + 16320) = _Q0;
  *(result + 8112) = _Q0;
  *(result + 16200) = 0x3FEE6AC340000000;
  *(result + 16224) = 0;
  *(result + 16232) = 0;
  *(result + 16240) = _Q0;
  *(result + 8128) = _Q0;
  *(result + 8144) = _Q0;
  *(result + 8160) = _Q0;
  *(result + 8176) = _Q0;
  *(result + 0x2000) = _Q0;
  *(result + 16112) = _Q0;
  *(result + 8208) = _Q0;
  *(result + 8224) = _Q0;
  *(result + 8240) = _Q0;
  *(result + 8256) = _Q0;
  *(result + 16016) = _Q0;
  *(result + 16048) = _Q0;
  *(result + 8272) = _Q0;
  *(result + 8288) = _Q0;
  *(result + 8304) = _Q0;
  *(result + 8320) = _Q0;
  *(result + 8336) = _Q0;
  *(result + 15984) = _Q0;
  *(result + 8352) = _Q0;
  *(result + 8432) = _Q0;
  *(result + 8448) = _Q0;
  *(result + 15840) = 0;
  *(result + 15848) = 1;
  *(result + 15849) = *v21;
  *(result + 15852) = *&v21[3];
  *(result + 15880) = 1061997773;
  *(result + 8472) = 0x3FF0000000000000;
  *(result + 15768) = 0x3FF0000000000000;
  *(result + 15776) = _Q0;
  *(result + 15792) = _Q0;
  *(result + 15808) = _Q0;
  *(result + 15824) = 0x3FF0000000000000;
  *(result + 8480) = _Q0;
  *(result + 8496) = _Q0;
  *(result + 8512) = _Q0;
  *(result + 8528) = 0x3FF0000000000000;
  *(result + 15728) = _Q0;
  *(result + 15744) = _Q0;
  *(result + 15568) = _Q0;
  *(result + 15584) = _Q0;
  *(result + 15600) = _Q0;
  *(result + 15616) = _Q0;
  *(result + 15632) = _Q0;
  *(result + 15648) = _Q0;
  *(result + 15472) = _Q0;
  *(result + 15488) = _Q0;
  *(result + 15504) = _Q0;
  *(result + 15520) = _Q0;
  *(result + 15536) = _Q0;
  *(result + 15552) = _Q0;
  *(result + 15376) = _Q0;
  *(result + 15392) = _Q0;
  *(result + 15408) = _Q0;
  *(result + 15424) = _Q0;
  *(result + 15440) = _Q0;
  *(result + 15456) = _Q0;
  *(result + 15280) = _Q0;
  *(result + 15296) = _Q0;
  *(result + 15312) = _Q0;
  *(result + 15328) = _Q0;
  *(result + 15344) = _Q0;
  *(result + 15360) = _Q0;
  *(result + 15184) = _Q0;
  *(result + 15200) = _Q0;
  *(result + 15216) = _Q0;
  *(result + 15232) = _Q0;
  *(result + 15248) = _Q0;
  *(result + 15264) = _Q0;
  *(result + 15104) = _Q0;
  *(result + 15120) = _Q0;
  *(result + 15136) = _Q0;
  *(result + 15152) = _Q0;
  *(result + 15168) = _Q0;
  *(result + 8544) = 0x4032000000000001;
  *(result + 8552) = 0;
  *(result + 15056) = _Q0;
  *(result + 15072) = _Q0;
  *(result + 15088) = _Q0;
  *(result + 8553) = *v15;
  *(result + 15016) = 0;
  *(result + 15024) = _Q0;
  *(result + 15040) = _Q0;
  *(result + 8556) = *&v15[3];
  *(result + 14984) = 0x3FEDEF5480000000;
  *(result + 15008) = 0x3FE0000000000000;
  *(result + 8584) = 1061158912;
  *(result + 8640) = _Q0;
  *(result + 8656) = _Q0;
  *(result + 8672) = _Q0;
  *(result + 8688) = _Q0;
  *(result + 14896) = _Q0;
  *(result + 8704) = _Q0;
  *(result + 8720) = _Q0;
  *(result + 8752) = _Q0;
  *(result + 14784) = _Q0;
  *(result + 14800) = _Q0;
  *(result + 14832) = _Q0;
  *(result + 8784) = _Q0;
  *(result + 8816) = _Q0;
  *(result + 8864) = _Q0;
  *(result + 8904) = 0x3FEB9B9BC0000000;
  *(result + 14768) = _Q0;
  *(result + 8928) = 0x3FF0000000000000;
  *(result + 8936) = 0;
  *(result + 14624) = 0x4018000000000010;
  *(result + 14632) = 1;
  *(result + 14633) = *v20;
  *(result + 14636) = *&v20[3];
  *(result + 14664) = 1061158912;
  *(result + 8944) = _Q0;
  *(result + 14552) = 0x3FF0000000000000;
  *(result + 14560) = _Q0;
  *(result + 14576) = _Q0;
  *(result + 14592) = _Q0;
  *(result + 14608) = 0x3FF0000000000000;
  *(result + 8960) = _Q0;
  *(result + 8976) = _Q0;
  *(result + 8992) = _Q0;
  *(result + 9008) = _Q0;
  *(result + 14512) = _Q0;
  *(result + 14528) = _Q0;
  *(result + 14352) = _Q0;
  *(result + 14368) = _Q0;
  *(result + 14384) = _Q0;
  *(result + 14400) = _Q0;
  *(result + 14416) = _Q0;
  *(result + 14432) = _Q0;
  *(result + 14256) = _Q0;
  *(result + 14272) = _Q0;
  *(result + 14288) = _Q0;
  *(result + 14304) = _Q0;
  *(result + 14320) = _Q0;
  *(result + 14336) = _Q0;
  *(result + 14160) = _Q0;
  *(result + 14176) = _Q0;
  *(result + 14192) = _Q0;
  *(result + 14208) = _Q0;
  *(result + 14224) = _Q0;
  *(result + 14240) = _Q0;
  *(result + 14064) = _Q0;
  *(result + 14080) = _Q0;
  *(result + 14096) = _Q0;
  *(result + 14112) = _Q0;
  *(result + 14128) = _Q0;
  *(result + 14144) = _Q0;
  *(result + 13968) = _Q0;
  *(result + 13984) = _Q0;
  *(result + 14000) = _Q0;
  *(result + 14016) = _Q0;
  *(result + 14032) = _Q0;
  *(result + 14048) = _Q0;
  *(result + 13872) = _Q0;
  *(result + 13888) = _Q0;
  *(result + 13904) = _Q0;
  *(result + 13920) = _Q0;
  *(result + 13936) = _Q0;
  *(result + 13952) = _Q0;
  *(result + 9024) = _Q0;
  *(result + 13800) = 0;
  *(result + 13808) = _Q0;
  *(result + 13824) = _Q0;
  *(result + 13840) = _Q0;
  *(result + 13856) = _Q0;
  *(result + 9040) = _Q0;
  *(result + 9056) = _Q0;
  *(result + 9072) = _Q0;
  *(result + 13768) = 0x3FED73E5C0000000;
  *(result + 13792) = 0x3FF0000000000000;
  *(result + 9088) = _Q0;
  *(result + 9104) = _Q0;
  *(result + 9120) = _Q0;
  *(result + 9136) = _Q0;
  *(result + 13648) = _Q0;
  *(result + 13680) = _Q0;
  *(result + 9152) = _Q0;
  *(result + 9168) = _Q0;
  *(result + 9184) = _Q0;
  *(result + 13552) = _Q0;
  *(result + 13584) = _Q0;
  *(result + 13616) = _Q0;
  *(result + 9200) = _Q0;
  *(result + 9216) = _Q0;
  *(result + 9232) = _Q0;
  *(result + 9248) = _Q0;
  *(result + 9264) = _Q0;
  *(result + 9280) = _Q0;
  *(result + 9296) = _Q0;
  *(result + 9312) = _Q0;
  *(result + 13336) = 0x3FF0000000000000;
  *(result + 13416) = 1;
  *(result + 13417) = *v19;
  *(result + 13420) = *&v19[3];
  *(result + 13448) = 1060320051;
  *(result + 13344) = _Q0;
  *(result + 13360) = _Q0;
  *(result + 13376) = _Q0;
  *(result + 13392) = 0x3FF0000000000000;
  *(result + 13408) = 0x4028000000000010;
  *(result + 9328) = _Q0;
  *(result + 9344) = _Q0;
  *(result + 9360) = _Q0;
  *(result + 9376) = _Q0;
  *(result + 13296) = _Q0;
  *(result + 13312) = _Q0;
  *(result + 9392) = _Q0;
  *(result + 13152) = _Q0;
  *(result + 13168) = _Q0;
  *(result + 13184) = _Q0;
  *(result + 13200) = _Q0;
  *(result + 13216) = _Q0;
  *(result + 13056) = _Q0;
  *(result + 13072) = _Q0;
  *(result + 13088) = _Q0;
  *(result + 13104) = _Q0;
  *(result + 13120) = _Q0;
  *(result + 13136) = _Q0;
  *(result + 12960) = _Q0;
  *(result + 12976) = _Q0;
  *(result + 12992) = _Q0;
  *(result + 13008) = _Q0;
  *(result + 13024) = _Q0;
  *(result + 13040) = _Q0;
  *(result + 12864) = _Q0;
  *(result + 12880) = _Q0;
  *(result + 12896) = _Q0;
  *(result + 12912) = _Q0;
  *(result + 12928) = _Q0;
  *(result + 12944) = _Q0;
  *(result + 12768) = _Q0;
  *(result + 12784) = _Q0;
  *(result + 12800) = _Q0;
  *(result + 12816) = _Q0;
  *(result + 12832) = _Q0;
  *(result + 12848) = _Q0;
  *(result + 12672) = _Q0;
  *(result + 12688) = _Q0;
  *(result + 12704) = _Q0;
  *(result + 12720) = _Q0;
  *(result + 12736) = _Q0;
  *(result + 12752) = _Q0;
  *(result + 12584) = 0;
  *(result + 12592) = _Q0;
  *(result + 12608) = _Q0;
  *(result + 12624) = _Q0;
  *(result + 12640) = _Q0;
  *(result + 12656) = _Q0;
  *(result + 9408) = _Q0;
  *(result + 9424) = _Q0;
  *(result + 9440) = _Q0;
  *(result + 12512) = _Q0;
  *(result + 12552) = 0x3FEB9B9BC0000000;
  *(result + 12576) = 0x3FF0000000000000;
  *(result + 9456) = _Q0;
  *(result + 9472) = _Q0;
  *(result + 9488) = _Q0;
  *(result + 12432) = _Q0;
  *(result + 12464) = _Q0;
  *(result + 12496) = _Q0;
  *(result + 9504) = _Q0;
  *(result + 12320) = _Q0;
  *(result + 12336) = _Q0;
  *(result + 12352) = _Q0;
  *(result + 12368) = _Q0;
  *(result + 12400) = _Q0;
  *(result + 9520) = _Q0;
  *(result + 9536) = _Q0;
  *(result + 9552) = _Q0;
  *(result + 9568) = _Q0;
  *(result + 12288) = _Q0;
  *(result + 12304) = _Q0;
  *(result + 9648) = _Q0;
  *(result + 12201) = *v18;
  *(result + 12232) = 1061158912;
  *(result + 12176) = 0x3FF0000000000000;
  *(result + 12192) = 0x4031FFFFFFFFFFF6;
  *(result + 12200) = 1;
  *(result + 12204) = *&v18[3];
  *(result + 9664) = _Q0;
  *(result + 12096) = _Q0;
  *(result + 12120) = 0x3FF0000000000000;
  *(result + 12128) = _Q0;
  *(result + 12144) = _Q0;
  *(result + 12160) = _Q0;
  *(result + 9688) = 0x3FF0000000000000;
  *(result + 9696) = _Q0;
  *(result + 9712) = _Q0;
  *(result + 9728) = _Q0;
  *(result + 12000) = _Q0;
  *(result + 12080) = _Q0;
  *(result + 11904) = _Q0;
  *(result + 11920) = _Q0;
  *(result + 11936) = _Q0;
  *(result + 11952) = _Q0;
  *(result + 11968) = _Q0;
  *(result + 11984) = _Q0;
  *(result + 11808) = _Q0;
  *(result + 11824) = _Q0;
  *(result + 11840) = _Q0;
  *(result + 11856) = _Q0;
  *(result + 11872) = _Q0;
  *(result + 11888) = _Q0;
  *(result + 11712) = _Q0;
  *(result + 11728) = _Q0;
  *(result + 11744) = _Q0;
  *(result + 11760) = _Q0;
  *(result + 11776) = _Q0;
  *(result + 11792) = _Q0;
  *(result + 11616) = _Q0;
  *(result + 11632) = _Q0;
  *(result + 11648) = _Q0;
  *(result + 11664) = _Q0;
  *(result + 11680) = _Q0;
  *(result + 11696) = _Q0;
  *(result + 11520) = _Q0;
  *(result + 11536) = _Q0;
  *(result + 11552) = _Q0;
  *(result + 11568) = _Q0;
  *(result + 11584) = _Q0;
  *(result + 11600) = _Q0;
  *(result + 9744) = 0x3FF0000000000000;
  *(result + 11440) = _Q0;
  *(result + 11456) = _Q0;
  *(result + 11472) = _Q0;
  *(result + 11488) = _Q0;
  *(result + 11504) = _Q0;
  *(result + 9760) = 0x403DFFFFFFFFFFFELL;
  *(result + 11392) = _Q0;
  *(result + 11408) = _Q0;
  *(result + 11424) = _Q0;
  *(result + 9769) = *v16;
  *(result + 11360) = 0x3FF0000000000000;
  *(result + 11368) = 0;
  *(result + 11376) = _Q0;
  *(result + 9768) = 0;
  *(result + 9772) = *&v16[3];
  *(result + 9800) = 1061997773;
  *(result + 11296) = _Q0;
  *(result + 11336) = 0x3FEB9B9BC0000000;
  *(result + 9904) = _Q0;
  *(result + 9920) = _Q0;
  *(result + 9936) = _Q0;
  *(result + 9968) = _Q0;
  *(result + 11184) = _Q0;
  *(result + 11216) = _Q0;
  *(result + 10000) = _Q0;
  *(result + 10032) = _Q0;
  *(result + 10080) = _Q0;
  *(result + 11120) = _Q0;
  *(result + 11136) = _Q0;
  *(result + 11152) = _Q0;
  *(result + 10120) = 0x3FEB9B9BC0000000;
  *(result + 10144) = 0x3FF0000000000000;
  *(result + 10152) = 0;
  *(result + 10160) = _Q0;
  *(result + 10176) = _Q0;
  *(result + 10985) = *v17;
  *(result + 10988) = *&v17[3];
  *(result + 11016) = 1061997773;
  *(result + 10912) = _Q0;
  *(result + 10928) = _Q0;
  *(result + 10944) = _Q0;
  *(result + 10960) = 0x3FF0000000000000;
  *(result + 10976) = 0x403DFFFFFFFFFFFELL;
  *(result + 10984) = 1;
  *(result + 10192) = _Q0;
  *(result + 10208) = _Q0;
  *(result + 10224) = _Q0;
  *(result + 10864) = _Q0;
  *(result + 10880) = _Q0;
  *(result + 10904) = 0x3FF0000000000000;
  *(result + 10240) = _Q0;
  *(result + 10256) = _Q0;
  *(result + 10736) = _Q0;
  *(result + 10752) = _Q0;
  *(result + 10768) = _Q0;
  *(result + 10784) = _Q0;
  *(result + 10640) = _Q0;
  *(result + 10656) = _Q0;
  *(result + 10672) = _Q0;
  *(result + 10688) = _Q0;
  *(result + 10704) = _Q0;
  *(result + 10720) = _Q0;
  *(result + 10544) = _Q0;
  *(result + 10560) = _Q0;
  *(result + 10576) = _Q0;
  *(result + 10592) = _Q0;
  *(result + 10608) = _Q0;
  *(result + 10624) = _Q0;
  *(result + 10448) = _Q0;
  *(result + 10464) = _Q0;
  *(result + 10480) = _Q0;
  *(result + 10496) = _Q0;
  *(result + 10512) = _Q0;
  *(result + 10528) = _Q0;
  *(result + 10352) = _Q0;
  *(result + 10368) = _Q0;
  *(result + 10384) = _Q0;
  *(result + 10400) = _Q0;
  *(result + 10416) = _Q0;
  *(result + 10432) = _Q0;
  *(result + 10272) = _Q0;
  *(result + 10288) = _Q0;
  *(result + 10304) = _Q0;
  *(result + 10320) = _Q0;
  *(result + 10336) = _Q0;
  *(result + 18160) = _Q0;
  *(result + 18176) = _Q0;
  *(result + 18208) = _Q0;
  *(result + 18224) = _Q0;
  *(result + 18240) = _Q0;
  *(result + 18336) = _Q0;
  *(result + 18400) = _Q0;
  *(result + 18448) = _Q0;
  *(result + 18480) = _Q0;
  *(result + 18496) = _Q0;
  *(result + 18640) = _Q0;
  *(result + 18672) = _Q0;
  *(result + 18688) = _Q0;
  *(result + 18704) = _Q0;
  *(result + 18720) = _Q0;
  *(result + 18736) = _Q0;
  *(result + 18752) = _Q0;
  *(result + 18768) = _Q0;
  *(result + 18784) = _Q0;
  *(result + 18800) = _Q0;
  *(result + 18816) = _Q0;
  *(result + 18832) = _Q0;
  *(result + 18848) = _Q0;
  *(result + 18864) = _Q0;
  *(result + 18880) = _Q0;
  *(result + 18896) = _Q0;
  *(result + 18912) = _Q0;
  *(result + 18928) = _Q0;
  *(result + 18944) = _Q0;
  *(result + 18960) = _Q0;
  *(result + 18976) = _Q0;
  *(result + 18992) = _Q0;
  *(result + 19008) = _Q0;
  *(result + 19024) = _Q0;
  *(result + 19040) = _Q0;
  *(result + 19056) = _Q0;
  *(result + 19072) = _Q0;
  *(result + 19088) = _Q0;
  *(result + 19104) = _Q0;
  *(result + 19120) = _Q0;
  *(result + 19136) = _Q0;
  *(result + 19152) = _Q0;
  *(result + 19168) = _Q0;
  *(result + 19184) = _Q0;
  *(result + 19200) = _Q0;
  *(result + 19216) = _Q0;
  *(result + 19232) = _Q0;
  *(result + 19248) = _Q0;
  *(result + 19264) = _Q0;
  *(result + 19280) = _Q0;
  *(result + 19296) = _Q0;
  *(result + 19376) = _Q0;
  *(result + 19392) = _Q0;
  *(result + 19424) = _Q0;
  *(result + 19440) = _Q0;
  *(result + 19456) = _Q0;
  *(result + 19664) = _Q0;
  *(result + 19696) = _Q0;
  *(result + 19712) = _Q0;
  *(result + 19728) = _Q0;
  *(result + 19808) = _Q0;
  *(result + 19856) = _Q0;
  *(result + 19888) = _Q0;
  *(result + 19904) = _Q0;
  *(result + 19920) = _Q0;
  *(result + 19936) = _Q0;
  *(result + 19952) = _Q0;
  *(result + 19968) = _Q0;
  *(result + 19984) = _Q0;
  *(result + 20000) = _Q0;
  *(result + 20016) = _Q0;
  *(result + 20032) = _Q0;
  *(result + 20048) = _Q0;
  *(result + 20064) = _Q0;
  *(result + 20080) = _Q0;
  *(result + 20096) = _Q0;
  *(result + 20112) = _Q0;
  *(result + 20128) = _Q0;
  *(result + 20144) = _Q0;
  *(result + 20160) = _Q0;
  *(result + 20176) = _Q0;
  *(result + 20192) = _Q0;
  *(result + 20208) = _Q0;
  *(result + 20224) = _Q0;
  *(result + 20240) = _Q0;
  *(result + 20256) = _Q0;
  *(result + 20272) = _Q0;
  *(result + 20288) = _Q0;
  *(result + 20304) = _Q0;
  *(result + 20320) = _Q0;
  *(result + 20336) = _Q0;
  *(result + 20352) = _Q0;
  *(result + 20368) = _Q0;
  *(result + 20384) = _Q0;
  *(result + 20400) = _Q0;
  *(result + 20416) = _Q0;
  *(result + 20432) = _Q0;
  *(result + 20448) = _Q0;
  *(result + 20464) = _Q0;
  *(result + 20480) = _Q0;
  *(result + 20496) = _Q0;
  *(result + 20512) = _Q0;
  *(result + 20592) = _Q0;
  *(result + 20608) = _Q0;
  *(result + 20640) = _Q0;
  *(result + 20656) = _Q0;
  *(result + 20672) = _Q0;
  *(result + 20880) = _Q0;
  *(result + 20912) = _Q0;
  *(result + 20928) = _Q0;
  *(result + 20944) = _Q0;
  *(result + 21024) = _Q0;
  *(result + 21072) = _Q0;
  *(result + 21104) = _Q0;
  *(result + 21120) = _Q0;
  *(result + 21136) = _Q0;
  *(result + 21152) = _Q0;
  *(result + 21168) = _Q0;
  *(result + 21184) = _Q0;
  *(result + 21200) = _Q0;
  *(result + 21216) = _Q0;
  *(result + 21232) = _Q0;
  *(result + 21248) = _Q0;
  *(result + 21264) = _Q0;
  *(result + 21280) = _Q0;
  *(result + 21296) = _Q0;
  *(result + 21312) = _Q0;
  *(result + 21328) = _Q0;
  *(result + 21344) = _Q0;
  *(result + 21360) = _Q0;
  *(result + 21376) = _Q0;
  *(result + 21392) = _Q0;
  *(result + 21408) = _Q0;
  *(result + 21424) = _Q0;
  *(result + 21440) = _Q0;
  *(result + 21456) = _Q0;
  *(result + 21472) = _Q0;
  *(result + 21488) = _Q0;
  *(result + 21504) = _Q0;
  *(result + 21520) = _Q0;
  *(result + 21536) = _Q0;
  *(result + 21552) = _Q0;
  *(result + 21568) = _Q0;
  *(result + 21584) = _Q0;
  *(result + 21600) = _Q0;
  *(result + 21616) = _Q0;
  *(result + 21632) = _Q0;
  *(result + 21648) = _Q0;
  *(result + 21664) = _Q0;
  *(result + 21680) = _Q0;
  *(result + 21696) = _Q0;
  *(result + 21712) = _Q0;
  *(result + 21728) = _Q0;
  *(result + 21808) = _Q0;
  *(result + 21824) = _Q0;
  *(result + 21856) = _Q0;
  *(result + 21872) = _Q0;
  *(result + 21888) = _Q0;
  *(result + 7688) = 0x3FEF0AE2E0000000;
  *(result + 7712) = 0x3FF0000000000000;
  *(result + 7720) = 0;
  *(result + 18200) = 0x3FF0000000000000;
  *(result + 18256) = 0x3FF0000000000000;
  *(result + 18272) = 0xC028000000000000;
  *(result + 18280) = 1;
  *(result + 18281) = *v23;
  *(result + 18284) = *&v23[3];
  *(result + 18312) = 1036831948;
  *(result + 18632) = 0x3FF0000000000000;
  *(result + 18656) = 0;
  *(result + 18664) = 1065353216;
  *(result + 19416) = 0x3FF0000000000000;
  *(result + 19472) = 0x3FF0000000000000;
  *(result + 19488) = 0xC04E000000000002;
  *(result + 19496) = 1;
  *(result + 19497) = *v24;
  *(result + 19500) = *&v24[3];
  *(result + 19528) = 1040242952;
  *(result + 19848) = 0x3FF0000000000000;
  *(result + 19872) = 0;
  *(result + 19880) = 1065353216;
  *(result + 20632) = 0x3FF0000000000000;
  *(result + 20688) = 0x3FF0000000000000;
  *(result + 20704) = 0xC056800000000000;
  *(result + 20712) = 1;
  *(result + 20713) = *v25;
  *(result + 20716) = *&v25[3];
  *(result + 20744) = 1040242952;
  *(result + 21064) = 0x3FF0000000000000;
  *(result + 21088) = 0;
  *(result + 21096) = 1065353216;
  *(result + 21848) = 0x3FF0000000000000;
  *(result + 21904) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1BCC7B42C@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = type metadata accessor for HourlyGaugeView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1BCC7CDE8(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1BCC7CCA4(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a1 = sub_1BCC7CE44;
  a1[1] = v7;
  return result;
}

uint64_t sub_1BCC7B548@<X0>(uint64_t a2@<X8>)
{
  sub_1BCC7B6E4(a2);
  v3 = sub_1BCE1C240();
  type metadata accessor for HourlyGaugeView(0);
  sub_1BCE1B4A0();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BAC0, &qword_1BCE5C970) + 36);
  *v12 = v3;
  *(v12 + 8) = v5;
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  v13 = sub_1BCE1C260();
  sub_1BCE1B4A0();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BAC8, &qword_1BCE5C978) + 36);
  *v22 = v13;
  *(v22 + 8) = v15;
  *(v22 + 16) = v17;
  *(v22 + 24) = v19;
  *(v22 + 32) = v21;
  *(v22 + 40) = 0;
  sub_1BCE1CEE0();
  sub_1BCE1B610();
  v23 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BAD0, &qword_1BCE5C980) + 36));
  *v23 = v30;
  v23[1] = v31;
  v23[2] = v32;
  sub_1BCE1B630();
  v25 = v24 * 0.5;
  v27 = v26 * 0.5;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BAD8, &qword_1BCE5C988);
  v29 = (a2 + *(result + 36));
  *v29 = v25;
  v29[1] = v27;
  return result;
}

double sub_1BCC7B6E4@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A730, &unk_1BCE55DB0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AD80, &qword_1BCE58118);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - v9;
  v11 = 0.0;
  if ((*(v1 + 8) & 1) == 0)
  {
    v11 = 1.0;
    if (*v1 <= 1.0)
    {
      v11 = *v1;
    }
  }

  *&v17[1] = v11;
  v18 = xmmword_1BCE3A870;
  sub_1BC96ABEC();
  sub_1BCE1CB90();
  v12 = sub_1BCC7B9AC();
  v13 = *(v1 + 16);
  *&v18 = v12;
  *(&v18 + 1) = v13;
  sub_1BC957184(&qword_1EBD0A728, &qword_1EBD0A730, &unk_1BCE55DB0, MEMORY[0x1E697D638]);
  sub_1BCBF4594();
  sub_1BCE1C7C0();
  (*(v4 + 8))(v6, v3);
  type metadata accessor for HourlyGaugeView(0);
  sub_1BCE1CEE0();
  sub_1BCE1B610();
  (*(v8 + 32))(a1, v10, v7);
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AD88, &qword_1BCE5C990) + 36));
  v15 = v19;
  *v14 = v18;
  v14[1] = v15;
  result = *&v20;
  v14[2] = v20;
  return result;
}

double sub_1BCC7B9AC()
{
  v1 = (v0 + *(type metadata accessor for HourlyGaugeView(0) + 20));
  v2 = v1[1];
  if ((*(v0 + 8) & 1) != 0 || *v0 <= 1.0 && *v0 < 0.9)
  {
    v2 = v2 * 0.5;
  }

  return *v1 - v2;
}

double sub_1BCC7BA0C@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08780, &qword_1BCE4B410);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  if (qword_1EBD07288 != -1)
  {
    swift_once();
  }

  v9 = qword_1EBD2A370;
  v10 = *algn_1EBD2A378;
  v18 = a2 & 1;

  sub_1BCE1C3C0();
  v11 = *MEMORY[0x1E6980E28];
  v12 = sub_1BCE1C350();
  OUTLINED_FUNCTION_4();
  (*(v13 + 104))(v8, v11, v12);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v12);
  v14 = sub_1BCE1C3D0();
  sub_1BC94C05C(v8, &qword_1EBD08780, &qword_1BCE4B410);
  v15 = v18;
  *a3 = a1;
  *(a3 + 8) = v15;
  result = 9.0;
  *(a3 + 16) = xmmword_1BCE5C730;
  *(a3 + 32) = v9;
  *(a3 + 40) = v10;
  *(a3 + 48) = v14;
  return result;
}

uint64_t sub_1BCC7BBA4()
{
  v1 = sub_1BCE19280();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07888, &qword_1BCE4EB90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  if (v0[8])
  {
    if (qword_1EDA17938 != -1)
    {
      swift_once();
    }

    v8 = xmmword_1EDA2EEA8;
  }

  else
  {
    v9 = *v0;
    if (*(*v0 + 16))
    {
      if (qword_1EBD07170 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for UltravioletComplicationHourlyViewModel(0);
      v11 = *(v10 - 8);
      v10 -= 8;
      v12 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v13 = *(v10 + 32);
      v14 = *(v10 + 36);
      v15 = sub_1BCE19470();
      (*(*(v15 - 8) + 16))(v7, v12 + v14, v15);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v15);
      sub_1BCE191B0();
      v8 = sub_1BCBA01D4(v12 + v13, v4, v7);
      (*(v2 + 8))(v4, v1);
      sub_1BC94C05C(v7, &qword_1EBD07888, &qword_1BCE4EB90);
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1BCC7BE34@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BCE1BE00();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BA30, &qword_1BCE5C7F8);
  return sub_1BCC7BE84(v2, a1 + *(v4 + 44));
}

uint64_t sub_1BCC7BE84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BA38, &qword_1BCE5C800);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v53 = &v42[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42[-v6];
  v8 = sub_1BCE1BC90();
  v52 = v7;
  *v7 = v8;
  *(v7 + 1) = 0;
  v7[16] = 0;
  v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BA40, &qword_1BCE5C808) + 44);
  v61 = *a1;
  v62[0] = v61;
  v9 = swift_allocObject();
  v10 = *(a1 + 1);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(a1 + 2);
  *(v9 + 64) = a1[6];
  sub_1BC952ABC(&v61, &v63, &qword_1EBD0BA48, &qword_1BCE5C810);
  sub_1BCC7CAFC(a1, &v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BA48, &qword_1BCE5C810);
  sub_1BCE19090();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BA50, &qword_1BCE5C818);
  sub_1BC957184(&qword_1EBD0BA58, &qword_1EBD0BA48, &qword_1BCE5C810, MEMORY[0x1E69E6338]);
  sub_1BC957184(&qword_1EBD0BA60, &qword_1EBD0BA50, &qword_1BCE5C818, MEMORY[0x1E6981F48]);
  sub_1BCC7CB34();
  v11 = v52;
  sub_1BCE1CE20();
  v63 = sub_1BCC7BBA4();
  v64 = v12;
  sub_1BC970820();
  v13 = sub_1BCE1C6A0();
  v15 = v14;
  v17 = v16;
  v18 = sub_1BCE1C610();
  v48 = v19;
  v49 = v18;
  v21 = v20;
  v50 = v22;
  sub_1BC998CF4(v13, v15, v17 & 1);

  KeyPath = swift_getKeyPath();
  v47 = sub_1BCE1C240();
  sub_1BCE1B4A0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  LOBYTE(v63) = v21 & 1;
  v43 = v21 & 1;
  LOBYTE(v62[0]) = 0;
  LOBYTE(v54) = 0;
  v44 = a1[5];
  v45 = swift_getKeyPath();

  sub_1BCE1BE00();
  sub_1BCE1BC60();
  sub_1BCE1B610();
  v31 = v53;
  sub_1BC952ABC(v11, v53, &qword_1EBD0BA38, &qword_1BCE5C800);
  v32 = v51;
  sub_1BC952ABC(v31, v51, &qword_1EBD0BA38, &qword_1BCE5C800);
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BA70, &qword_1BCE5C880) + 48);
  *&v62[15] = v54;
  v35 = v48;
  v34 = v49;
  v62[0] = v49;
  v62[1] = v48;
  LOBYTE(v62[2]) = v21 & 1;
  *(&v62[2] + 1) = *v59;
  HIDWORD(v62[2]) = *&v59[3];
  v36 = v50;
  v37 = KeyPath;
  v62[3] = v50;
  v62[4] = KeyPath;
  v62[5] = 1;
  LOBYTE(v62[6]) = 0;
  *(&v62[6] + 1) = *v58;
  HIDWORD(v62[6]) = *&v58[3];
  v38 = v47;
  LOBYTE(v62[7]) = v47;
  *(&v62[7] + 1) = *v57;
  HIDWORD(v62[7]) = *&v57[3];
  v62[8] = v24;
  v62[9] = v26;
  v62[10] = v28;
  v62[11] = v30;
  LOBYTE(v62[12]) = 0;
  HIDWORD(v62[12]) = *&v60[3];
  *(&v62[12] + 1) = *v60;
  v40 = v44;
  v39 = v45;
  v62[13] = v45;
  v62[14] = v44;
  *&v62[17] = v55;
  *&v62[19] = v56;
  memcpy((v32 + v33), v62, 0xA8uLL);
  sub_1BC952ABC(v62, &v63, &qword_1EBD0BA78, &unk_1BCE5C888);
  sub_1BC94C05C(v52, &qword_1EBD0BA38, &qword_1BCE5C800);
  v63 = v34;
  v64 = v35;
  v65 = v43;
  *v66 = *v59;
  *&v66[3] = *&v59[3];
  v67 = v36;
  v68 = v37;
  v69 = 1;
  v70 = 0;
  *v71 = *v58;
  *&v71[3] = *&v58[3];
  v72 = v38;
  *&v73[3] = *&v57[3];
  *v73 = *v57;
  v74 = v24;
  v75 = v26;
  v76 = v28;
  v77 = v30;
  v78 = 0;
  *&v79[3] = *&v60[3];
  *v79 = *v60;
  v80 = v39;
  v81 = v40;
  v82 = v54;
  v83 = v55;
  v84 = v56;
  sub_1BC94C05C(&v63, &qword_1EBD0BA78, &unk_1BCE5C888);
  return sub_1BC94C05C(v53, &qword_1EBD0BA38, &qword_1BCE5C800);
}

uint64_t sub_1BCC7C3D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v50 = a3;
  v47 = type metadata accessor for UltravioletComplicationHourlyViewModel(0);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BA80, &qword_1BCE5C898);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BA88, &qword_1BCE5C8A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v46 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - v15;
  v17 = type metadata accessor for HourlyGaugeView(0);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BA90, &qword_1BCE5C8A8);
  v22 = v21 - 8;
  MEMORY[0x1EEE9AC00](v21);
  v49 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v44 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v44 - v28;
  sub_1BCCE1220(v20);
  v30 = *(v18 + 28);
  v31 = v47;
  *&v20[v30] = xmmword_1BCE5C740;
  sub_1BCE1CEE0();
  sub_1BCE1B910();
  v32 = v20;
  v33 = v29;
  sub_1BCC7CCA4(v32, v26);
  memcpy(&v26[*(v22 + 44)], __src, 0x70uLL);
  sub_1BCC7CBD8(v26, v29);
  sub_1BCC7CDE8(a1, v16);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v31);
  sub_1BCA3F470(*v48, v13);
  v34 = *(v6 + 56);
  sub_1BC952ABC(v16, v8, &qword_1EBD0BA88, &qword_1BCE5C8A0);
  sub_1BC952ABC(v13, &v8[v34], &qword_1EBD0BA88, &qword_1BCE5C8A0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v31) == 1)
  {
    sub_1BC94C05C(v13, &qword_1EBD0BA88, &qword_1BCE5C8A0);
    sub_1BC94C05C(v16, &qword_1EBD0BA88, &qword_1BCE5C8A0);
    if (__swift_getEnumTagSinglePayload(&v8[v34], 1, v31) == 1)
    {
      sub_1BC94C05C(v8, &qword_1EBD0BA88, &qword_1BCE5C8A0);
LABEL_13:
      v36 = 0;
      v37 = 0;
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  v35 = v46;
  sub_1BC952ABC(v8, v46, &qword_1EBD0BA88, &qword_1BCE5C8A0);
  if (__swift_getEnumTagSinglePayload(&v8[v34], 1, v31) == 1)
  {
    sub_1BC94C05C(v13, &qword_1EBD0BA88, &qword_1BCE5C8A0);
    sub_1BC94C05C(v16, &qword_1EBD0BA88, &qword_1BCE5C8A0);
    sub_1BCC7CC48(v35);
LABEL_6:
    sub_1BC94C05C(v8, &qword_1EBD0BA80, &qword_1BCE5C898);
    goto LABEL_7;
  }

  v38 = v45;
  sub_1BCC7CCA4(&v8[v34], v45);
  v39 = static UltravioletComplicationHourlyViewModel.== infix(_:_:)(v35, v38);
  sub_1BCC7CC48(v38);
  sub_1BC94C05C(v13, &qword_1EBD0BA88, &qword_1BCE5C8A0);
  sub_1BC94C05C(v16, &qword_1EBD0BA88, &qword_1BCE5C8A0);
  sub_1BCC7CC48(v35);
  sub_1BC94C05C(v8, &qword_1EBD0BA88, &qword_1BCE5C8A0);
  if (v39)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (qword_1EBD07190 != -1)
  {
    swift_once();
  }

  v36 = qword_1EBD2A238;
  if (qword_1EBD07198 != -1)
  {
    swift_once();
  }

  v37 = qword_1EBD2A240;

LABEL_14:
  v40 = v49;
  sub_1BC952ABC(v33, v49, &qword_1EBD0BA90, &qword_1BCE5C8A8);
  v41 = v50;
  sub_1BC952ABC(v40, v50, &qword_1EBD0BA90, &qword_1BCE5C8A8);
  v42 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BA98, &qword_1BCE5C8B0) + 48));
  *v42 = v36;
  v42[1] = v37;

  sub_1BC94C05C(v33, &qword_1EBD0BA90, &qword_1BCE5C8A8);

  return sub_1BC94C05C(v40, &qword_1EBD0BA90, &qword_1BCE5C8A8);
}

uint64_t sub_1BCC7C9E0(uint64_t a1)
{
  v1 = sub_1BCE1CAB0();
  sub_1BCE1CAB0();
  v2 = sub_1BCE1CAE0();

  qword_1EBD2A370 = v1;
  *algn_1EBD2A378 = v2;
  return result;
}

uint64_t sub_1BCC7CA38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BCC7CB34()
{
  result = qword_1EBD0BA68;
  if (!qword_1EBD0BA68)
  {
    type metadata accessor for UltravioletComplicationHourlyViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0BA68);
  }

  return result;
}

uint64_t type metadata accessor for HourlyGaugeView(uint64_t a1)
{
  result = qword_1EBD0BAA0;
  if (!qword_1EBD0BAA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BCC7CBD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BA90, &qword_1BCE5C8A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BCC7CC48(uint64_t a1)
{
  v2 = type metadata accessor for UltravioletComplicationHourlyViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BCC7CCA4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1BCC7CD28(uint64_t a1)
{
  result = type metadata accessor for ComplicationHourlyGaugeViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BCC7CDE8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1BCC7CE44@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for HourlyGaugeView(0);

  return sub_1BCC7B548(a1);
}

uint64_t type metadata accessor for AirQualityComplicationDataStatus(uint64_t a1)
{
  result = qword_1EDA17BF0;
  if (!qword_1EDA17BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BCC7CF3C(uint64_t a1)
{
  v1 = type metadata accessor for AirQualityComplicationViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1BCC7CF94(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07948, &qword_1BCE3F390) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BCBED3C4();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1BCC84718(v6);
  *a1 = v3;
}

double GoodMorningStringBuilder.__allocating_init()()
{
  v0 = swift_allocObject();
  __asm { FMOV            V1.2D, #10.0 }

  v0[1] = xmmword_1BCE5C9D0;
  v0[2] = _Q1;
  result = 1.6;
  v0[3] = xmmword_1BCE5C9E0;
  return result;
}

double GoodMorningStringBuilder.init()()
{
  __asm { FMOV            V1.2D, #10.0 }

  v0[1] = xmmword_1BCE5C9D0;
  v0[2] = _Q1;
  result = 1.6;
  v0[3] = xmmword_1BCE5C9E0;
  return result;
}

uint64_t GoodMorningStringBuilder.buildString(from:hourlyForecast:dailyForecast:)(unint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v631 = a3;
  v630 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868, &unk_1BCE3E4F0);
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_0();
  v570 = v6;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_1();
  v585 = v8;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_1();
  v588 = v10;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_1();
  v590 = v12;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_1();
  v561 = v14;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_1();
  v566 = v16;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6_1();
  v572 = v18;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_6_1();
  v578 = v20;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6_1();
  v563 = v22;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_6_1();
  v568 = v24;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_6_1();
  v579 = v26;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_6_1();
  v584 = v28;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_6_1();
  v601 = v30;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_6_1();
  v600 = v32;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_6_1();
  v599 = v34;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_35();
  v598 = v36;
  OUTLINED_FUNCTION_13();
  sub_1BCE188F0();
  OUTLINED_FUNCTION_2();
  v602 = v38;
  v603 = v37;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5_1();
  v612 = v39;
  OUTLINED_FUNCTION_13();
  v608 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v604 = v40;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_3_0();
  v571 = v42;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_6_1();
  v580 = v44;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_6_1();
  v564 = v46;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_6_1();
  v565 = v48;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_6_1();
  v567 = v50;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_6_1();
  v569 = v52;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_6_1();
  v623 = v54;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_6_1();
  v622 = v56;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_6_1();
  v621 = v58;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_6_1();
  v615 = v60;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_6_1();
  v616 = v62;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_35();
  v620 = v64;
  OUTLINED_FUNCTION_13();
  v609 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v576 = v65;
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_5_1();
  v575 = v67;
  v68 = OUTLINED_FUNCTION_13();
  v574 = type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle(v68);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_3_0();
  v587 = v70;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_35();
  v577 = v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890, &qword_1BCE47340);
  v74 = OUTLINED_FUNCTION_14(v73);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_3_0();
  v583 = v75;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_6_1();
  v607 = v77;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_6_1();
  v582 = v79;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_35();
  v591 = v81;
  v82 = OUTLINED_FUNCTION_13();
  v83 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(v82);
  v84 = OUTLINED_FUNCTION_14(v83);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_5_1();
  v592 = v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B68, &unk_1BCE4B890);
  OUTLINED_FUNCTION_2();
  v596 = v87;
  v597 = v86;
  MEMORY[0x1EEE9AC00](v86);
  v595 = &v556 - v88;
  v606 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860, &unk_1BCE3D7E0);
  OUTLINED_FUNCTION_2();
  v617.n128_u64[0] = v89;
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_3_0();
  v586 = v91;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_35();
  v594 = v93;
  OUTLINED_FUNCTION_13();
  sub_1BCE1A000();
  OUTLINED_FUNCTION_2();
  v610 = v95;
  v611 = v94;
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_3_0();
  v573 = v96;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_35();
  v605 = v98;
  v618 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8, &unk_1BCE42160);
  OUTLINED_FUNCTION_2();
  v619 = v99;
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_3_0();
  v593 = v101;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_35();
  v614 = v103;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08CA8, &unk_1BCE4CC30);
  v105 = OUTLINED_FUNCTION_14(v104);
  MEMORY[0x1EEE9AC00](v105);
  v629 = &v556 - v106;
  OUTLINED_FUNCTION_13();
  v107 = sub_1BCE19540();
  OUTLINED_FUNCTION_2();
  v626 = v108;
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_5_1();
  v633 = v110;
  v628 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A0, &off_1BCE48AE0);
  OUTLINED_FUNCTION_2();
  v112 = v111;
  MEMORY[0x1EEE9AC00](v113);
  v115 = &v556 - v114;
  v635 = sub_1BCE193E0();
  OUTLINED_FUNCTION_2();
  v634 = v116;
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_3_0();
  v589 = v118;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_6_1();
  v625 = v120;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v121);
  v123 = &v556 - v122;
  v637 = sub_1BCE199D0();
  OUTLINED_FUNCTION_2();
  v632 = v124;
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_3_0();
  v560 = v126;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_6_1();
  v562 = v128;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_6_1();
  v581 = v130;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v131);
  OUTLINED_FUNCTION_6_1();
  v627 = v132;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v133);
  v135 = &v556 - v134;
  MEMORY[0x1EEE9AC00](v136);
  v138 = &v556 - v137;
  sub_1BCE19620();
  sub_1BCE196D0();
  v624 = sub_1BCE19920();
  v636 = v139;
  v613 = a1;
  sub_1BCE196D0();
  sub_1BCE19390();
  (*(v112 + 16))(v115, v630, v628);
  v639[2] = v123;
  v140 = sub_1BC9781E0(sub_1BCC801DC, v639);
  v638 = v123;
  v141 = v629;
  sub_1BC994C58();
  OUTLINED_FUNCTION_15_13(v141);
  if (v142)
  {

    v143 = *(v632 + 8);
    v143(v135, v637);
    v144 = OUTLINED_FUNCTION_42_7();
    (v143)(v144);
    sub_1BC94C05C(v141, &qword_1EBD08CA8, &unk_1BCE4CC30);
    v145 = 0;
LABEL_9:
    v159 = v635;
    v160 = v634;
    goto LABEL_10;
  }

  v559 = v123;
  v557 = v140;
  v628 = v138;
  v146 = v626;
  (*(v626 + 32))(v633, v141, v107);
  v147 = v632;
  v148 = *(v632 + 104);
  v149 = v627;
  v150 = v637;
  v148(v627, *MEMORY[0x1E6984C50], v637);
  v151 = sub_1BC99EE9C();
  v631 = *(v147 + 8);
  v631(v149, v150);
  v558 = v107;
  v629 = v135;
  v630 = v147 + 8;
  if (v151 & 1) != 0 || (v152 = v627, v148(v627, *MEMORY[0x1E6984D20], v150), v153 = sub_1BC99EE9C(), v631(v152, v150), (v153))
  {

    v123 = v559;
    if (qword_1EDA1EFB0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v154 = qword_1EDA1EFB8;
    sub_1BCE18B60();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880, &unk_1BCE483D0);
    v155 = swift_allocObject();
    *(v155 + 16) = xmmword_1BCE3E050;
    *(v155 + 56) = MEMORY[0x1E69E6158];
    *(v155 + 64) = sub_1BC9804E0();
    v156 = v636;
    *(v155 + 32) = v624;
    *(v155 + 40) = v156;
    v145 = sub_1BCE1D250();

    (*(v146 + 8))(v633, v558);
    v157 = v637;
    v158 = v631;
    v631(v629, v637);
    v158(v628, v157);
    goto LABEL_9;
  }

  v640 = 0;
  v641 = 0xE000000000000000;
  v643 = MEMORY[0x1E69E7CC0];
  v162 = v593;
  sub_1BCE19680();
  v163 = objc_opt_self();
  v164 = [v163 celsius];
  v165 = v614;
  v166 = v618;
  sub_1BCE18680();

  v168 = (v619 + 1);
  v167 = v619[1];
  v167(v162, v166);
  sub_1BCE185E0();
  v170 = v169;
  v167(v165, v166);
  sub_1BCE19640();
  v171 = [v163 celsius];
  sub_1BCE18680();

  v167(v162, v166);
  sub_1BCE185E0();
  v173 = v172;
  v593 = v167;
  v167(v165, v166);
  if (v170 <= -25.0)
  {
    v174 = 1;
    v177 = 1;
    v175 = v610;
    v176 = v607;
    if (v170 >= 39.0)
    {
      goto LABEL_16;
    }

LABEL_15:
    v177 = v170 - v173 > 10.0;
    goto LABEL_16;
  }

  v174 = v173 - v170 > 10.0;
  v175 = v610;
  v176 = v607;
  if (v170 < 39.0)
  {
    goto LABEL_15;
  }

  v177 = 1;
LABEL_16:
  v178 = v605;
  sub_1BCE196B0();
  sub_1BCE19FF0();
  v180 = *(v175 + 8);
  v179 = v175 + 8;
  v619 = v180;
  (v180)(v178, v611);
  sub_1BCE185E0();
  v182 = v181;
  v183 = OUTLINED_FUNCTION_42_7();
  v617.n128_u64[0] = v184;
  v594 = v185;
  (v185)(v183);
  sub_1BCE19630();
  sub_1BCE185E0();
  v187 = v186;
  v188 = OUTLINED_FUNCTION_42_7();
  v189(v188);
  if (!v174 && !v177 && v182 < 25.0 && v187 > 1.6)
  {
    goto LABEL_37;
  }

  MEMORY[0x1BFB2FB00](0x4F495449444E4F43, 0xEE005F574F4E5F4ELL);

  sub_1BCB653B4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v191 = v190;
  v193 = *(v190 + 16);
  v192 = *(v190 + 24);
  if (v193 >= v192 >> 1)
  {
    sub_1BCB653B4(v192 > 1, v193 + 1, 1, v190);
    v191 = v542;
  }

  *(v191 + 16) = v193 + 1;
  v194 = v191 + 16 * v193;
  v195 = v636;
  *(v194 + 32) = v624;
  *(v194 + 40) = v195;
  v643 = v191;
  if (v174)
  {
    v196 = v179;
    MEMORY[0x1BFB2FB00](0x4C494843444E4957, 0xEA00000000005F4CLL);
LABEL_26:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C550, &qword_1BCE3F300);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BCE3E050;
    v198 = v614;
    v199 = sub_1BCE19680();
    static Set<>.full.getter(v199, v200);
    v201 = v591;
    OUTLINED_FUNCTION_19_0();
    __swift_storeEnumTagSinglePayload(v202, v203, v204, v609);
    v205 = v592;
    static WeatherFormatStyle<>.weather(_:locale:)();

    sub_1BC94C05C(v201, &qword_1EBD07890, &qword_1BCE47340);
    sub_1BCE1A3E0();
    v206 = sub_1BCE1A3A0();
    sub_1BCB37580(v205, 0, v206, v198);
    OUTLINED_FUNCTION_15_27();
    OUTLINED_FUNCTION_0_60();
    sub_1BCC85C64(v205, v207);
    v593(v198, v618);
    *(inited + 32) = v201;
    *(inited + 40) = v179;
    OUTLINED_FUNCTION_33_12();
    v179 = v196;
    v176 = v607;
    goto LABEL_27;
  }

  if (v177)
  {
    v196 = v179;
    MEMORY[0x1BFB2FB00](0x444E495F54414548, 0xEB000000005F5845);
    goto LABEL_26;
  }

LABEL_27:
  if (v182 >= 25.0)
  {
    MEMORY[0x1BFB2FB00](0x5F444E4957, 0xE500000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C550, &qword_1BCE3F300);
    v607 = swift_initStackObject();
    *(v607 + 16) = xmmword_1BCE3E030;
    v208 = v573;
    sub_1BCE196B0();
    sub_1BCE19FF0();
    v610 = v179;
    (v619)(v208, v611);
    v209 = v176;
    v210 = v582;
    OUTLINED_FUNCTION_19_0();
    v211 = v609;
    __swift_storeEnumTagSinglePayload(v212, v213, v214, v609);
    static Set<>.full.getter();
    v216 = v215;
    sub_1BC952ABC(v210, v209, &qword_1EBD07890, &qword_1BCE47340);
    v217 = v587;
    *v587 = v216;
    *(v217 + 8) = 0;
    v218 = v583;
    OUTLINED_FUNCTION_22_0();
    sub_1BC952ABC(v219, v220, v221, &qword_1BCE47340);
    OUTLINED_FUNCTION_15_13(v218);
    if (v142)
    {
      v230 = v575;
      if (qword_1EDA1F658 != -1)
      {
        swift_once();
      }

      sub_1BCE1A9F0();

      OUTLINED_FUNCTION_22_0();
      sub_1BC94C05C(v222, v223, v224);
      OUTLINED_FUNCTION_22_0();
      sub_1BC94C05C(v225, v226, v227);
      v228 = v583;
      OUTLINED_FUNCTION_15_13(v583);
      v229 = v576;
      if (!v142)
      {
        sub_1BC94C05C(v228, &qword_1EBD07890, &qword_1BCE47340);
      }
    }

    else
    {
      sub_1BC94C05C(v209, &qword_1EBD07890, &qword_1BCE47340);
      sub_1BC94C05C(v210, &qword_1EBD07890, &qword_1BCE47340);
      v230 = v575;
      v229 = v576;
      v231 = OUTLINED_FUNCTION_16_2();
      v232(v231);
    }

    v233 = v574;
    v234 = v587;
    (*(v229 + 32))(v587 + *(v574 + 24), v230, v211);
    *(v234 + *(v233 + 28)) = 0;
    *(v234 + *(v233 + 32)) = 1;
    v235 = v234;
    v236 = v577;
    sub_1BC979F00(v235, v577);
    sub_1BCE1A3E0();
    sub_1BCE1A3A0();
    v237 = OUTLINED_FUNCTION_80();
    v238 = v586;
    sub_1BC979F64(v237, v239, v240, v586);
    OUTLINED_FUNCTION_15_27();
    sub_1BCC85C64(v236, type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle);
    v594(v238, v606);
    v241 = v607;
    *(v607 + 32) = v233;
    v241[5] = v230;
    v242 = v605;
    sub_1BCE196B0();
    sub_1BCE19FC0();
    (v619)(v242, v611);
    v241[6] = sub_1BCE19F90();
    v241[7] = v243;
    OUTLINED_FUNCTION_33_12();
  }

  if (v187 <= 1.6)
  {
    MEMORY[0x1BFB2FB00](0x494C494249534956, 0xEB000000005F5954);
  }

LABEL_37:
  v619 = v168;
  sub_1BCE196A0();
  sub_1BCE197B0();
  sub_1BCE19390();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08570, &unk_1BCE4D9F0);
  v244 = sub_1BCE193C0();
  OUTLINED_FUNCTION_2();
  v246 = v245;
  v248 = *(v247 + 72);
  v249 = (*(v245 + 80) + 32) & ~*(v245 + 80);
  v250 = swift_allocObject();
  v617 = xmmword_1BCE43610;
  *(v250 + 16) = xmmword_1BCE43610;
  v251 = v250 + v249;
  v252 = *(v246 + 104);
  v252(v251, *MEMORY[0x1E6969A68], v244);
  v252(v251 + v248, *MEMORY[0x1E6969A78], v244);
  v252(v251 + 2 * v248, *MEMORY[0x1E6969A48], v244);
  sub_1BC94FCF8();
  v160 = v612;
  sub_1BCE192E0();

  OUTLINED_FUNCTION_49_6(4);
  v253 = v598;
  sub_1BCE19360();
  v254 = v608;
  if (__swift_getEnumTagSinglePayload(v253, 1, v608) == 1)
  {
    v255 = v604;
    OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_24_16();
    v256();
    OUTLINED_FUNCTION_15_13(v253);
    v257 = v601;
    v258 = v599;
    if (!v142)
    {
      sub_1BC94C05C(v253, &qword_1EBD07868, &unk_1BCE3E4F0);
    }
  }

  else
  {
    v255 = v604;
    v259 = OUTLINED_FUNCTION_16_2();
    v260(v259);
    v257 = v601;
    v258 = v599;
  }

  OUTLINED_FUNCTION_49_6(10);
  sub_1BCE19360();
  OUTLINED_FUNCTION_15_13(v258);
  if (v142)
  {
    OUTLINED_FUNCTION_24_16();
    v261();
    OUTLINED_FUNCTION_15_13(v258);
    if (!v142)
    {
      sub_1BC94C05C(v258, &qword_1EBD07868, &unk_1BCE3E4F0);
    }
  }

  else
  {
    (*(v255 + 32))(v621, v258, v254);
  }

  OUTLINED_FUNCTION_49_6(18);
  v262 = v600;
  sub_1BCE19360();
  v263 = v262;
  if (__swift_getEnumTagSinglePayload(v262, 1, v254) == 1)
  {
    OUTLINED_FUNCTION_24_16();
    v264();
    OUTLINED_FUNCTION_15_13(v262);
    v265 = v627;
    if (!v142)
    {
      sub_1BC94C05C(v263, &qword_1EBD07868, &unk_1BCE3E4F0);
    }
  }

  else
  {
    (*(v255 + 32))(v622, v262, v254);
    v265 = v627;
  }

  OUTLINED_FUNCTION_49_6(23);
  sub_1BCE188A0();
  sub_1BCE19360();
  if (__swift_getEnumTagSinglePayload(v257, 1, v254) == 1)
  {
    OUTLINED_FUNCTION_24_16();
    v266();
    OUTLINED_FUNCTION_15_13(v257);
    v267 = v637;
    if (!v142)
    {
      sub_1BC94C05C(v257, &qword_1EBD07868, &unk_1BCE3E4F0);
    }
  }

  else
  {
    (*(v255 + 32))(v623, v257, v254);
    v267 = v637;
  }

  sub_1BCC85D2C(&qword_1EDA1EF40, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if ((sub_1BCE1D1E0() & 1) == 0 && (OUTLINED_FUNCTION_29_14(v621) & 1) == 0)
  {

    v280 = v581;
    v281 = OUTLINED_FUNCTION_40_8();
    sub_1BCC80334(v281, v282, v623, v283);

    OUTLINED_FUNCTION_5_45();
    if (!v284)
    {
      v285 = v628;
      OUTLINED_FUNCTION_39_8();
      v286();
      (*(v632 + 16))(v285, v280, v267);
      OUTLINED_FUNCTION_17_22();
      v287 = sub_1BCE19920();
      v289 = v288;
      v290 = v643;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v543 = OUTLINED_FUNCTION_73_0();
        sub_1BCB653B4(v543, v544, v545, v290);
        v290 = v546;
      }

      v291 = v609;
      v292 = v613;
      v294 = *(v290 + 16);
      v293 = *(v290 + 24);
      if (v294 >= v293 >> 1)
      {
        sub_1BCB653B4(v293 > 1, v294 + 1, 1, v290);
        v290 = v547;
      }

      *(v290 + 16) = v294 + 1;
      v295 = v290 + 16 * v294;
      *(v295 + 32) = v287;
      *(v295 + 40) = v289;
      v643 = v290;
      OUTLINED_FUNCTION_25_12();
      MEMORY[0x1BFB2FB00]();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C550, &qword_1BCE3F300);
      v296 = swift_initStackObject();
      OUTLINED_FUNCTION_22_21(v296, xmmword_1BCE3E030);
      v297 = sub_1BCE19640();
      static Set<>.full.getter(v297, v298);
      v299 = v591;
      OUTLINED_FUNCTION_19_0();
      __swift_storeEnumTagSinglePayload(v300, v301, v302, v291);
      v303 = v592;
      static WeatherFormatStyle<>.weather(_:locale:)();

      sub_1BC94C05C(v299, &qword_1EBD07890, &qword_1BCE47340);
      v304 = sub_1BCE1A3E0();
      OUTLINED_FUNCTION_36_10(v304);
      v305 = OUTLINED_FUNCTION_80();
      sub_1BCB37580(v305, v306, v307, v294);
      OUTLINED_FUNCTION_23_23();
      OUTLINED_FUNCTION_0_60();
      v632 = v308;
      sub_1BCC85C64(v303, v309);
      v310 = OUTLINED_FUNCTION_2_63();
      v311(v310);
      v296[2].n128_u64[0] = v291;
      v296[2].n128_u64[1] = v292;
      v312 = sub_1BCE194C0();
      static Set<>.full.getter(v312, v313);
      OUTLINED_FUNCTION_19_0();
      __swift_storeEnumTagSinglePayload(v314, v315, v316, v291);
      static WeatherFormatStyle<>.weather(_:locale:)();

      sub_1BC94C05C(v299, &qword_1EBD07890, &qword_1BCE47340);
      sub_1BCE1A3A0();
      v317 = OUTLINED_FUNCTION_80();
      sub_1BCB37580(v317, v318, v319, v294);
      OUTLINED_FUNCTION_15_27();
      OUTLINED_FUNCTION_35_9();
      v320 = OUTLINED_FUNCTION_2_63();
      v321(v320);
      v296[3].n128_u64[0] = v291;
      v296[3].n128_u64[1] = v299;
      OUTLINED_FUNCTION_33_12();
      v254 = v608;
      v160 = v612;
    }

    OUTLINED_FUNCTION_39_8();
    v322();
    goto LABEL_114;
  }

  if ((sub_1BCE18FC0() & 1) != 0 && (OUTLINED_FUNCTION_29_14(v622) & 1) == 0)
  {
    OUTLINED_FUNCTION_46_5();
    v323 = v584;
    v324(v584, v622, v254);
    OUTLINED_FUNCTION_19_23();
    v325 = v579;
    OUTLINED_FUNCTION_28_11();
    v326 = OUTLINED_FUNCTION_20_21();
    v327(v326);
    OUTLINED_FUNCTION_21_20(v325);
    v328 = v568;
    sub_1BC952ABC(v323, v568, &qword_1EBD07868, &unk_1BCE3E4F0);
    OUTLINED_FUNCTION_15_13(v328);
    if (!v142)
    {
      v323 = *(v255 + 32);
      v267 = v569;
      (v323)(v569, v328, v254);
      v328 = v563;
      sub_1BC952ABC(v325, v563, &qword_1EBD07868, &unk_1BCE3E4F0);
      OUTLINED_FUNCTION_15_13(v328);
      v265 = v629;
      if (!v142)
      {
        (v323)(v567, v328, v254);
        OUTLINED_FUNCTION_5_45();
        if (v414)
        {

          v415 = v633;
        }

        else
        {
          MEMORY[0x1BFB2FB00](0x4C544E4552525543, 0xEE005F574F4E5F59);
          v436 = v643;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v415 = v633;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v548 = OUTLINED_FUNCTION_73_0();
            sub_1BCB653B4(v548, v549, v550, v436);
            v436 = v551;
          }

          v438 = *(v436 + 24);
          if (*(v436 + 16) >= v438 >> 1)
          {
            OUTLINED_FUNCTION_37_10(v438);
          }

          OUTLINED_FUNCTION_30_12();
        }

        sub_1BCC80334(v557, v569, v567, v562);

        OUTLINED_FUNCTION_42_7();
        if (sub_1BC99EE9C())
        {
          MEMORY[0x1BFB2FB00](0x535F59414444494DLL, 0xEB00000000454D41);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C550, &qword_1BCE3F300);
          v439 = swift_initStackObject();
          OUTLINED_FUNCTION_22_21(v439, xmmword_1BCE3E030);
          v440 = sub_1BCE194C0();
          static Set<>.full.getter(v440, v441);
          v442 = v591;
          OUTLINED_FUNCTION_3_58(v591);
          static WeatherFormatStyle<>.weather(_:locale:)();

          sub_1BC94C05C(v442, &qword_1EBD07890, &qword_1BCE47340);
          v443 = sub_1BCE1A3E0();
          v444 = OUTLINED_FUNCTION_36_10(v443);
          v445 = sub_1BCB37580(v267, 0, v444, v265);
          v447 = v446;

          OUTLINED_FUNCTION_0_60();
          v632 = v448;
          sub_1BCC85C64(v267, v449);
          v450 = OUTLINED_FUNCTION_2_63();
          v451(v450);
          v439[2].n128_u64[0] = v445;
          v439[2].n128_u64[1] = v447;
          v452 = sub_1BCE194A0();
          static Set<>.full.getter(v452, v453);
          OUTLINED_FUNCTION_8_42(v442);
          static WeatherFormatStyle<>.weather(_:locale:)();

          sub_1BC94C05C(v442, &qword_1EBD07890, &qword_1BCE47340);
          sub_1BCE1A3A0();
          v454 = OUTLINED_FUNCTION_80();
          sub_1BCB37580(v454, v455, v456, v265);
          OUTLINED_FUNCTION_15_27();
          OUTLINED_FUNCTION_35_9();
          v457 = OUTLINED_FUNCTION_2_63();
          v458(v457);
          v439[3].n128_u64[0] = v442;
          v439[3].n128_u64[1] = v444;
        }

        else
        {
          OUTLINED_FUNCTION_17_22();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C550, &qword_1BCE3F300);
          v459 = swift_initStackObject();
          OUTLINED_FUNCTION_22_21(v459, v617);
          v460 = sub_1BCE194C0();
          static Set<>.full.getter(v460, v461);
          v462 = v591;
          OUTLINED_FUNCTION_3_58(v591);
          static WeatherFormatStyle<>.weather(_:locale:)();

          sub_1BC94C05C(v462, &qword_1EBD07890, &qword_1BCE47340);
          v463 = sub_1BCE1A3E0();
          OUTLINED_FUNCTION_36_10(v463);
          v464 = OUTLINED_FUNCTION_80();
          sub_1BCB37580(v464, v465, v466, v265);
          OUTLINED_FUNCTION_23_23();
          OUTLINED_FUNCTION_0_60();
          v632 = v467;
          sub_1BCC85C64(v267, v468);
          v469 = OUTLINED_FUNCTION_2_63();
          v470(v469);
          v459[2].n128_u64[0] = v415;
          v459[2].n128_u64[1] = v160;
          v459[3].n128_u64[0] = sub_1BCE19920();
          v459[3].n128_u64[1] = v471;
          v472 = sub_1BCE194A0();
          static Set<>.full.getter(v472, v473);
          OUTLINED_FUNCTION_8_42(v462);
          static WeatherFormatStyle<>.weather(_:locale:)();

          sub_1BC94C05C(v462, &qword_1EBD07890, &qword_1BCE47340);
          sub_1BCE1A3A0();
          v474 = OUTLINED_FUNCTION_80();
          sub_1BCB37580(v474, v475, v476, v265);
          OUTLINED_FUNCTION_15_27();
          OUTLINED_FUNCTION_35_9();
          v477 = OUTLINED_FUNCTION_2_63();
          v478(v477);
          v459[4].n128_u64[0] = v462;
          v459[4].n128_u64[1] = v415;
        }

        OUTLINED_FUNCTION_33_12();
        OUTLINED_FUNCTION_39_8();
        v479();
        v480 = *(v255 + 8);
        v254 = v608;
        v480(v567, v608);
        v480(v569, v254);
        OUTLINED_FUNCTION_69_2(v579);
        OUTLINED_FUNCTION_69_2(v584);
        v160 = v612;
        goto LABEL_114;
      }

      (*(v255 + 8))(v267, v254);
    }

    sub_1BC94C05C(v328, &qword_1EBD07868, &unk_1BCE3E4F0);
    OUTLINED_FUNCTION_5_45();
    if (v329)
    {

      v330 = v325;
    }

    else
    {
      OUTLINED_FUNCTION_16_26();
      OUTLINED_FUNCTION_25_12();
      MEMORY[0x1BFB2FB00]();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C550, &qword_1BCE3F300);
      v395 = swift_initStackObject();
      v396 = OUTLINED_FUNCTION_12_36(v395);
      static Set<>.full.getter(v396, v397);
      v398 = v591;
      OUTLINED_FUNCTION_3_58(v591);
      static WeatherFormatStyle<>.weather(_:locale:)();

      sub_1BC94C05C(v398, &qword_1EBD07890, &qword_1BCE47340);
      v399 = sub_1BCE1A3E0();
      OUTLINED_FUNCTION_36_10(v399);
      v400 = OUTLINED_FUNCTION_80();
      sub_1BCB37580(v400, v401, v402, v265);
      OUTLINED_FUNCTION_23_23();
      OUTLINED_FUNCTION_0_60();
      v632 = v403;
      sub_1BCC85C64(v267, v404);
      v405 = OUTLINED_FUNCTION_2_63();
      v406(v405);
      OUTLINED_FUNCTION_9_36();
      v407 = sub_1BCE194C0();
      static Set<>.full.getter(v407, v408);
      OUTLINED_FUNCTION_8_42(v398);
      static WeatherFormatStyle<>.weather(_:locale:)();

      sub_1BC94C05C(v398, &qword_1EBD07890, &qword_1BCE47340);
      sub_1BCE1A3A0();
      v409 = OUTLINED_FUNCTION_80();
      sub_1BCB37580(v409, v410, v411, v265);
      OUTLINED_FUNCTION_15_27();
      OUTLINED_FUNCTION_35_9();
      v412 = OUTLINED_FUNCTION_2_63();
      v413(v412);
      *(v323 + 64) = v325;
      *(v323 + 72) = v398;
      OUTLINED_FUNCTION_33_12();
      v330 = v579;
    }

    OUTLINED_FUNCTION_69_2(v330);
    v361 = v584;
    goto LABEL_113;
  }

  if ((sub_1BCE18FC0() & 1) != 0 && (OUTLINED_FUNCTION_29_14(v623) & 1) == 0)
  {
    OUTLINED_FUNCTION_46_5();
    v331 = v578;
    v332(v578, v622, v254);
    OUTLINED_FUNCTION_19_23();
    v333 = v572;
    OUTLINED_FUNCTION_28_11();
    v334 = OUTLINED_FUNCTION_20_21();
    v335(v334);
    OUTLINED_FUNCTION_21_20(v333);
    v336 = v566;
    sub_1BC952ABC(v331, v566, &qword_1EBD07868, &unk_1BCE3E4F0);
    OUTLINED_FUNCTION_15_13(v336);
    if (!v142)
    {
      v331 = *(v255 + 32);
      v337 = v565;
      OUTLINED_FUNCTION_24_16();
      (v331)();
      v336 = v561;
      sub_1BC952ABC(v333, v561, &qword_1EBD07868, &unk_1BCE3E4F0);
      OUTLINED_FUNCTION_15_13(v336);
      if (!v142)
      {
        OUTLINED_FUNCTION_24_16();
        (v331)();
        OUTLINED_FUNCTION_5_45();
        if (v435)
        {
        }

        else
        {
          OUTLINED_FUNCTION_17_22();
          v481 = v643;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v552 = OUTLINED_FUNCTION_73_0();
            sub_1BCB653B4(v552, v553, v554, v481);
            v481 = v555;
          }

          v482 = *(v481 + 24);
          if (*(v481 + 16) >= v482 >> 1)
          {
            OUTLINED_FUNCTION_37_10(v482);
          }

          OUTLINED_FUNCTION_30_12();
        }

        v483 = OUTLINED_FUNCTION_40_8();
        sub_1BCC80334(v483, v484, v564, v485);

        if (sub_1BC99EE9C())
        {
          MEMORY[0x1BFB2FB00](0x4F4F4E5245544641, 0xEE00454D41535F4ELL);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C550, &qword_1BCE3F300);
          v486 = swift_initStackObject();
          OUTLINED_FUNCTION_22_21(v486, xmmword_1BCE3E050);
          v487 = sub_1BCE194A0();
          static Set<>.full.getter(v487, v488);
          v489 = v591;
          OUTLINED_FUNCTION_3_58(v591);
          static WeatherFormatStyle<>.weather(_:locale:)();

          sub_1BC94C05C(v489, &qword_1EBD07890, &qword_1BCE47340);
          sub_1BCE1A3E0();
          sub_1BCE1A3A0();
          v490 = OUTLINED_FUNCTION_80();
          sub_1BCB37580(v490, v491, v492, v265);
          OUTLINED_FUNCTION_15_27();
          OUTLINED_FUNCTION_0_60();
          sub_1BCC85C64(v336, v493);
          v494 = OUTLINED_FUNCTION_41_8();
          v495(v494);
          v486[2].n128_u64[0] = v489;
          v486[2].n128_u64[1] = v337;
        }

        else
        {
          OUTLINED_FUNCTION_16_26();
          OUTLINED_FUNCTION_25_12();
          MEMORY[0x1BFB2FB00]();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C550, &qword_1BCE3F300);
          v496 = swift_initStackObject();
          *(v496 + 16) = xmmword_1BCE3E030;
          v497 = sub_1BCE19920();
          OUTLINED_FUNCTION_44_7(v497, v498);
          v499 = sub_1BCE194A0();
          static Set<>.full.getter(v499, v500);
          v501 = v591;
          OUTLINED_FUNCTION_3_58(v591);
          static WeatherFormatStyle<>.weather(_:locale:)();

          sub_1BC94C05C(v501, &qword_1EBD07890, &qword_1BCE47340);
          sub_1BCE1A3E0();
          sub_1BCE1A3A0();
          v502 = OUTLINED_FUNCTION_80();
          sub_1BCB37580(v502, v503, v504, v265);
          OUTLINED_FUNCTION_15_27();
          OUTLINED_FUNCTION_0_60();
          sub_1BCC85C64(v336, v505);
          v506 = OUTLINED_FUNCTION_41_8();
          v507(v506);
          *(v496 + 48) = v501;
          *(v496 + 56) = v337;
        }

        OUTLINED_FUNCTION_33_12();
        OUTLINED_FUNCTION_39_8();
        v508();
        v509 = *(v255 + 8);
        v509(v564, v254);
        v509(v565, v254);
        goto LABEL_111;
      }

      v338 = OUTLINED_FUNCTION_45_5();
      v339(v338);
    }

    sub_1BC94C05C(v336, &qword_1EBD07868, &unk_1BCE3E4F0);
    OUTLINED_FUNCTION_5_45();
    if (v340)
    {

      v341 = v333;
LABEL_112:
      OUTLINED_FUNCTION_69_2(v341);
      v361 = v578;
LABEL_113:
      OUTLINED_FUNCTION_69_2(v361);
      goto LABEL_114;
    }

    OUTLINED_FUNCTION_16_26();
    OUTLINED_FUNCTION_25_12();
    MEMORY[0x1BFB2FB00]();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C550, &qword_1BCE3F300);
    v416 = swift_initStackObject();
    v417 = OUTLINED_FUNCTION_12_36(v416);
    static Set<>.full.getter(v417, v418);
    v419 = v591;
    OUTLINED_FUNCTION_3_58(v591);
    static WeatherFormatStyle<>.weather(_:locale:)();

    sub_1BC94C05C(v419, &qword_1EBD07890, &qword_1BCE47340);
    v420 = sub_1BCE1A3E0();
    OUTLINED_FUNCTION_36_10(v420);
    v421 = OUTLINED_FUNCTION_80();
    sub_1BCB37580(v421, v422, v423, v265);
    OUTLINED_FUNCTION_23_23();
    OUTLINED_FUNCTION_0_60();
    v632 = v424;
    sub_1BCC85C64(v336, v425);
    v426 = OUTLINED_FUNCTION_2_63();
    v427(v426);
    OUTLINED_FUNCTION_9_36();
    v428 = sub_1BCE194C0();
    static Set<>.full.getter(v428, v429);
    OUTLINED_FUNCTION_8_42(v419);
    static WeatherFormatStyle<>.weather(_:locale:)();

    sub_1BC94C05C(v419, &qword_1EBD07890, &qword_1BCE47340);
    sub_1BCE1A3A0();
    v430 = OUTLINED_FUNCTION_80();
    sub_1BCB37580(v430, v431, v432, v265);
    OUTLINED_FUNCTION_15_27();
    OUTLINED_FUNCTION_35_9();
    v433 = OUTLINED_FUNCTION_2_63();
    v434(v433);
    *(v331 + 64) = v333;
    *(v331 + 72) = v419;
    OUTLINED_FUNCTION_33_12();
LABEL_111:
    v341 = v572;
    goto LABEL_112;
  }

  OUTLINED_FUNCTION_46_5();
  v268 = v590;
  v269 = OUTLINED_FUNCTION_40_8();
  v270(v269);
  OUTLINED_FUNCTION_19_23();
  v271 = v588;
  OUTLINED_FUNCTION_28_11();
  v272 = OUTLINED_FUNCTION_20_21();
  v273(v272);
  OUTLINED_FUNCTION_21_20(v271);
  v274 = v585;
  sub_1BC952ABC(v268, v585, &qword_1EBD07868, &unk_1BCE3E4F0);
  OUTLINED_FUNCTION_15_13(v274);
  if (v142)
  {
LABEL_63:

    sub_1BC94C05C(v274, &qword_1EBD07868, &unk_1BCE3E4F0);
    OUTLINED_FUNCTION_5_45();
    if (v278)
    {

      v279 = v271;
    }

    else
    {
      OUTLINED_FUNCTION_16_26();
      OUTLINED_FUNCTION_25_12();
      MEMORY[0x1BFB2FB00]();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C550, &qword_1BCE3F300);
      v342 = swift_initStackObject();
      v343 = OUTLINED_FUNCTION_12_36(v342);
      static Set<>.full.getter(v343, v344);
      v345 = v591;
      OUTLINED_FUNCTION_3_58(v591);
      static WeatherFormatStyle<>.weather(_:locale:)();

      sub_1BC94C05C(v345, &qword_1EBD07890, &qword_1BCE47340);
      v346 = sub_1BCE1A3E0();
      OUTLINED_FUNCTION_36_10(v346);
      v347 = OUTLINED_FUNCTION_80();
      sub_1BCB37580(v347, v348, v349, v265);
      OUTLINED_FUNCTION_23_23();
      OUTLINED_FUNCTION_0_60();
      v632 = v350;
      sub_1BCC85C64(v274, v351);
      v352 = OUTLINED_FUNCTION_2_63();
      v353(v352);
      OUTLINED_FUNCTION_9_36();
      v354 = sub_1BCE194C0();
      static Set<>.full.getter(v354, v355);
      OUTLINED_FUNCTION_8_42(v345);
      static WeatherFormatStyle<>.weather(_:locale:)();

      sub_1BC94C05C(v345, &qword_1EBD07890, &qword_1BCE47340);
      sub_1BCE1A3A0();
      v356 = OUTLINED_FUNCTION_80();
      sub_1BCB37580(v356, v357, v358, v265);
      OUTLINED_FUNCTION_15_27();
      OUTLINED_FUNCTION_35_9();
      v359 = OUTLINED_FUNCTION_2_63();
      v360(v359);
      *(v268 + 64) = v271;
      *(v268 + 72) = v345;
      OUTLINED_FUNCTION_33_12();
      v279 = v588;
    }

    OUTLINED_FUNCTION_69_2(v279);
    v361 = v590;
    goto LABEL_113;
  }

  v268 = *(v255 + 32);
  v275 = v580;
  OUTLINED_FUNCTION_24_16();
  (v268)();
  v274 = v570;
  sub_1BC952ABC(v271, v570, &qword_1EBD07868, &unk_1BCE3E4F0);
  OUTLINED_FUNCTION_15_13(v274);
  if (v142)
  {
    v276 = OUTLINED_FUNCTION_45_5();
    v277(v276);
    goto LABEL_63;
  }

  v160 = v571;
  OUTLINED_FUNCTION_24_16();
  (v268)();
  v362 = OUTLINED_FUNCTION_40_8();
  sub_1BCC80334(v362, v363, v160, v364);

  v365 = v628;
  v366 = v637;
  v631(v628, v637);
  (*(v632 + 16))(v365, v265, v366);

  v640 = 0xD00000000000002BLL;
  v641 = 0x80000001BCE88090;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C550, &qword_1BCE3F300);
  v367 = swift_allocObject();
  v367[1] = v617;
  v368 = sub_1BCE19920();
  OUTLINED_FUNCTION_44_7(v368, v369);
  v370 = sub_1BCE194C0();
  static Set<>.full.getter(v370, v371);
  v372 = v591;
  OUTLINED_FUNCTION_3_58(v591);
  static WeatherFormatStyle<>.weather(_:locale:)();

  sub_1BC94C05C(v372, &qword_1EBD07890, &qword_1BCE47340);
  v373 = sub_1BCE1A3E0();
  OUTLINED_FUNCTION_36_10(v373);
  v374 = OUTLINED_FUNCTION_80();
  sub_1BCB37580(v374, v375, v376, v265);
  OUTLINED_FUNCTION_23_23();
  OUTLINED_FUNCTION_0_60();
  v632 = v377;
  sub_1BCC85C64(v274, v378);
  v379 = OUTLINED_FUNCTION_2_63();
  v380(v379);
  OUTLINED_FUNCTION_9_36();
  v381 = sub_1BCE194A0();
  static Set<>.full.getter(v381, v382);
  OUTLINED_FUNCTION_8_42(v372);
  static WeatherFormatStyle<>.weather(_:locale:)();

  sub_1BC94C05C(v372, &qword_1EBD07890, &qword_1BCE47340);
  sub_1BCE1A3A0();
  v383 = OUTLINED_FUNCTION_80();
  sub_1BCB37580(v383, v384, v385, v265);
  OUTLINED_FUNCTION_15_27();
  OUTLINED_FUNCTION_35_9();
  v386 = OUTLINED_FUNCTION_2_63();
  v387(v386);
  v367[4].n128_u64[0] = v372;
  v367[4].n128_u64[1] = v275;
  v631(v627, v637);
  v388 = *(v255 + 8);
  v388(v571, v254);
  v388(v580, v254);
  OUTLINED_FUNCTION_22_0();
  sub_1BC94C05C(v389, v390, v391);
  OUTLINED_FUNCTION_22_0();
  sub_1BC94C05C(v392, v393, v394);

  v643 = v367;
LABEL_114:
  v510 = v643;

  v511 = OUTLINED_FUNCTION_16_2();
  sub_1BCC8073C(v511, v512, v510);
  v514 = v513;

  if (v514)
  {

    v159 = sub_1BCC8404C(v515);

    v145 = sub_1BCE1D2A0();

    v516 = *(v255 + 8);
    v516(v623, v254);
    v516(v622, v254);
    v516(v621, v254);
    v516(v615, v254);
    (*(v602 + 8))(v160, v603);
    v517 = OUTLINED_FUNCTION_31_12();
    v518(v517);
    v516(v616, v254);
    v516(v620, v254);
    v519 = OUTLINED_FUNCTION_48_5();
    v520(v519);
    v521 = v637;
    v522 = v631;
    v631(v629, v637);
    v522(v628, v521);
  }

  else
  {
    if (qword_1EBD070B8 != -1)
    {
      swift_once();
    }

    v523 = sub_1BCE1ACC0();
    __swift_project_value_buffer(v523, qword_1EBD094C8);
    v524 = sub_1BCE1ACA0();
    v159 = sub_1BCE1D8D0();
    if (os_log_type_enabled(v524, v159))
    {
      v525 = swift_slowAlloc();
      v636 = swift_slowAlloc();
      v642 = v636;
      *v525 = 136446466;

      v526 = OUTLINED_FUNCTION_16_2();
      v529 = sub_1BC98FE38(v526, v527, v528);

      *(v525 + 4) = v529;
      *(v525 + 12) = 2082;

      v531 = MEMORY[0x1BFB2FCC0](v530, MEMORY[0x1E69E6158]);
      v160 = v532;

      v533 = sub_1BC98FE38(v531, v160, &v642);

      *(v525 + 14) = v533;
      _os_log_impl(&dword_1BC940000, v524, v159, "Could not create the good morning lock screen string from arguments; format=%{public}s, arguments=%{public}s", v525, 0x16u);
      v534 = v636;
      swift_arrayDestroy();
      MEMORY[0x1BFB31B10](v534, -1, -1);
      MEMORY[0x1BFB31B10](v525, -1, -1);

      v535 = *(v255 + 8);
      v535(v623, v254);
      v535(v622, v254);
      v535(v621, v254);
      v535(v615, v254);
      (*(v602 + 8))(v612, v603);
    }

    else
    {

      v535 = *(v255 + 8);
      v535(v623, v254);
      v535(v622, v254);
      v535(v621, v254);
      v535(v615, v254);
      (*(v602 + 8))(v160, v603);
    }

    v536 = OUTLINED_FUNCTION_31_12();
    v537(v536);
    v535(v616, v254);
    v535(v620, v254);
    v538 = OUTLINED_FUNCTION_48_5();
    v539(v538);
    v540 = v637;
    v541 = v631;
    v631(v629, v637);
    v541(v628, v540);

    v145 = 0;
  }

  v123 = v559;
LABEL_10:
  (*(v160 + 8))(v123, v159);
  return v145;
}

uint64_t sub_1BCC80210(uint64_t a1, uint64_t a2, void (*a3)(__n128))
{
  v4 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(v8);
  LOBYTE(a3) = sub_1BCE192B0();
  (*(v6 + 8))(v10, v4);
  return a3 & 1;
}

uint64_t sub_1BCC80334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BAF0, &qword_1BCE5CA70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v47 = &v45 - v8;
  v55 = sub_1BCE199D0();
  v9 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v45 - v12;
  v58 = a2;
  v59 = a3;

  v13 = 0;
  sub_1BCA14764(sub_1BCC85D0C, v57, a1);
  v15 = sub_1BCC842DC(v14);
  v46 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BAF8, &qword_1BCE5CA78);
  v16 = sub_1BCE1DE70();
  v17 = v16;
  v18 = 0;
  v20 = v15 + 8;
  v19 = v15[8];
  v56 = v15;
  v21 = 1 << *(v15 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v19;
  v24 = (v21 + 63) >> 6;
  v49 = v16 + 64;
  v50 = v9 + 16;
  v53 = (v9 + 32);
  v54 = v9;
  v51 = v16;
  v25 = v55;
  if ((v22 & v19) != 0)
  {
    while (1)
    {
      v26 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_10:
      v13 = v26 | (v18 << 6);
      v29 = v56;
      v30 = v54;
      v31 = *(v54 + 72) * v13;
      v32 = v52;
      (*(v54 + 16))(v52, v56[6] + v31, v25);
      v33 = *(*(v29[7] + 8 * v13) + 16);
      *(v49 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v34 = v32;
      v17 = v51;
      (*(v30 + 32))(*(v51 + 48) + v31, v34, v25);
      *(*(v17 + 56) + 8 * v13) = v33;
      v35 = *(v17 + 16);
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        break;
      }

      *(v17 + 16) = v37;
      if (!v23)
      {
        goto LABEL_5;
      }
    }

LABEL_18:
    __break(1u);
LABEL_19:

    __break(1u);
  }

  else
  {
LABEL_5:
    v27 = v18;
    while (1)
    {
      v18 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v18 >= v24)
      {
        break;
      }

      v28 = v20[v18];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v23 = (v28 - 1) & v28;
        goto LABEL_10;
      }
    }

    v38 = sub_1BCAF52B0(v17);

    v60 = v38;
    v13 = v46;
    sub_1BCC7CF94(&v60);
    if (v13)
    {
      goto LABEL_19;
    }

    v39 = v47;
    sub_1BCA14000(v60, v47);

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07948, &qword_1BCE3F390);
    if (__swift_getEnumTagSinglePayload(v39, 1, v40) == 1)
    {
      sub_1BC94C05C(v39, &qword_1EBD0BAF0, &qword_1BCE5CA70);
      return (*(v54 + 104))(v48, *MEMORY[0x1E6984C98], v55);
    }

    else
    {
      v42 = *v53;
      v43 = v45;
      v44 = v55;
      (*v53)(v45, v39, v55);
      return (v42)(v48, v43, v44);
    }
  }

  return result;
}

uint64_t sub_1BCC8073C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 == 0xD000000000000023 && 0x80000001BCE882D0 == a2;
  if (v5 || (sub_1BCE1E090() & 1) != 0)
  {
    if (*(a3 + 16) == 2)
    {
      if (qword_1EDA1EFB0 == -1)
      {
        goto LABEL_17;
      }

LABEL_649:
      swift_once();
      goto LABEL_17;
    }

    return 0;
  }

  v7 = a1 == 0xD00000000000003FLL && 0x80000001BCE88300 == a2;
  if (v7 || (sub_1BCE1E090() & 1) != 0)
  {
    if (sub_1BCB8F3E4(a3) < 4)
    {
      return 0;
    }

    if (qword_1EDA1EFB0 == -1)
    {
LABEL_17:
      swift_beginAccess();
      v9 = qword_1EDA1EFB8;
      v8 = sub_1BCE18B60();

      return v8;
    }

LABEL_68:
    swift_once();
    goto LABEL_17;
  }

  v11 = a1 == 0xD00000000000002ELL && 0x80000001BCE88340 == a2;
  if (v11 || (sub_1BCE1E090() & 1) != 0)
  {
    if (sub_1BCB8F3E4(a3) != 4)
    {
      return 0;
    }

    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_68;
  }

  v12 = a1 == 0xD000000000000033 && 0x80000001BCE88370 == a2;
  if (v12 || (sub_1BCE1E090() & 1) != 0)
  {
    if (sub_1BCB8F3E4(a3) != 5)
    {
      return 0;
    }

    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_68;
  }

  v13 = a1 == 0xD000000000000031 && 0x80000001BCE883B0 == a2;
  if (v13 || (sub_1BCE1E090() & 1) != 0)
  {
    if (sub_1BCB8F3E4(a3) != 3)
    {
      return 0;
    }

    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_68;
  }

  v14 = a1 == 0xD000000000000036 && 0x80000001BCE883F0 == a2;
  if (v14 || (sub_1BCE1E090() & 1) != 0)
  {
    if (sub_1BCB8F3E4(a3) != 4)
    {
      return 0;
    }

    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_68;
  }

  v15 = a1 == 0xD000000000000029 && 0x80000001BCE88430 == a2;
  if (v15 || (sub_1BCE1E090() & 1) != 0)
  {
    if (sub_1BCB8F3E4(a3) != 4)
    {
      return 0;
    }

    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_68;
  }

  v16 = a1 == 0xD000000000000045 && 0x80000001BCE88460 == a2;
  if (!v16 && (sub_1BCE1E090() & 1) == 0)
  {
    v17 = a1 == 0xD000000000000034 && 0x80000001BCE884B0 == a2;
    if (v17 || (sub_1BCE1E090() & 1) != 0)
    {
      if (sub_1BCB8F3E4(a3) != 6)
      {
        return 0;
      }

      if (qword_1EDA1EFB0 == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_68;
    }

    v18 = a1 == 0xD000000000000039 && 0x80000001BCE884F0 == a2;
    if (v18 || (sub_1BCE1E090() & 1) != 0)
    {
      if (sub_1BCB8F3E4(a3) != 7)
      {
        return 0;
      }

      if (qword_1EDA1EFB0 == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_68;
    }

    v19 = a1 == 0xD000000000000037 && 0x80000001BCE88530 == a2;
    if (v19 || (sub_1BCE1E090() & 1) != 0)
    {
      if (sub_1BCB8F3E4(a3) == 5)
      {
        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_17;
        }

        goto LABEL_649;
      }

      return 0;
    }

    v20 = a1 == 0xD00000000000003CLL && 0x80000001BCE88570 == a2;
    if (v20 || (sub_1BCE1E090() & 1) != 0)
    {
      if (sub_1BCB8F3E4(a3) == 6)
      {
        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_17;
        }

        goto LABEL_649;
      }

      return 0;
    }

    v21 = a1 == 0xD00000000000001ELL && 0x80000001BCE885B0 == a2;
    if (v21 || (sub_1BCE1E090() & 1) != 0)
    {
      if (sub_1BCB8F3E4(a3) != 3)
      {
        return 0;
      }

      if (qword_1EDA1EFB0 == -1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v22 = a1 == 0xD00000000000003ALL && 0x80000001BCE885D0 == a2;
      if (v22 || (sub_1BCE1E090() & 1) != 0)
      {
        if (sub_1BCB8F3E4(a3) != 5)
        {
          return 0;
        }

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v23 = a1 == 0xD000000000000029 && 0x80000001BCE88610 == a2;
        if (v23 || (sub_1BCE1E090() & 1) != 0)
        {
          if (sub_1BCB8F3E4(a3) == 5)
          {
            if (qword_1EDA1EFB0 == -1)
            {
              goto LABEL_17;
            }

            goto LABEL_649;
          }

          return 0;
        }

        v24 = a1 == 0xD00000000000002ELL && 0x80000001BCE88640 == a2;
        if (v24 || (sub_1BCE1E090() & 1) != 0)
        {
          if (sub_1BCB8F3E4(a3) != 6)
          {
            return 0;
          }

          if (qword_1EDA1EFB0 == -1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v25 = a1 == 0xD00000000000002CLL && 0x80000001BCE88670 == a2;
          if (!v25 && (sub_1BCE1E090() & 1) == 0)
          {
            v26 = a1 == 0xD000000000000031 && 0x80000001BCE886A0 == a2;
            if (v26 || (sub_1BCE1E090() & 1) != 0)
            {
              if (sub_1BCB8F3E4(a3) != 5)
              {
                return 0;
              }

              if (qword_1EDA1EFB0 == -1)
              {
                goto LABEL_17;
              }

              goto LABEL_68;
            }

            v27 = a1 == 0xD000000000000018 && 0x80000001BCE886E0 == a2;
            if (v27 || (sub_1BCE1E090() & 1) != 0)
            {
              if (sub_1BCB8F3E4(a3) != 2)
              {
                return 0;
              }

              if (qword_1EDA1EFB0 == -1)
              {
                goto LABEL_17;
              }

              goto LABEL_68;
            }

            v28 = a1 == 0xD000000000000034 && 0x80000001BCE88700 == a2;
            if (v28 || (sub_1BCE1E090() & 1) != 0)
            {
              if (sub_1BCB8F3E4(a3) != 4)
              {
                return 0;
              }

              if (qword_1EDA1EFB0 == -1)
              {
                goto LABEL_17;
              }

              goto LABEL_68;
            }

            v29 = a1 == 0xD000000000000023 && 0x80000001BCE88740 == a2;
            if (v29 || (sub_1BCE1E090() & 1) != 0)
            {
              if (sub_1BCB8F3E4(a3) != 4)
              {
                return 0;
              }

              if (qword_1EDA1EFB0 == -1)
              {
                goto LABEL_17;
              }

              goto LABEL_68;
            }

            v30 = a1 == 0xD000000000000028 && 0x80000001BCE88770 == a2;
            if (v30 || (sub_1BCE1E090() & 1) != 0)
            {
              if (sub_1BCB8F3E4(a3) != 5)
              {
                return 0;
              }

              if (qword_1EDA1EFB0 == -1)
              {
                goto LABEL_17;
              }

              goto LABEL_68;
            }

            v31 = a1 == 0xD000000000000026 && 0x80000001BCE887A0 == a2;
            if (v31 || (sub_1BCE1E090() & 1) != 0)
            {
              if (sub_1BCB8F3E4(a3) != 3)
              {
                return 0;
              }

              if (qword_1EDA1EFB0 == -1)
              {
                goto LABEL_17;
              }

              goto LABEL_68;
            }

            v32 = a1 == 0xD00000000000002BLL && 0x80000001BCE887D0 == a2;
            if (v32 || (sub_1BCE1E090() & 1) != 0)
            {
              if (sub_1BCB8F3E4(a3) != 4)
              {
                return 0;
              }

              if (qword_1EDA1EFB0 == -1)
              {
                goto LABEL_17;
              }

              goto LABEL_68;
            }

            v33 = a1 == 0xD000000000000019 && 0x80000001BCE88800 == a2;
            if (v33 || (sub_1BCE1E090() & 1) != 0)
            {
              if (sub_1BCB8F3E4(a3) != 2)
              {
                return 0;
              }

              if (qword_1EDA1EFB0 == -1)
              {
                goto LABEL_17;
              }

              goto LABEL_68;
            }

            v34 = a1 == 0xD000000000000035 && 0x80000001BCE88820 == a2;
            if (v34 || (sub_1BCE1E090() & 1) != 0)
            {
              if (sub_1BCB8F3E4(a3) != 4)
              {
                return 0;
              }

              if (qword_1EDA1EFB0 == -1)
              {
                goto LABEL_17;
              }
            }

            else
            {
              v35 = a1 == 0xD000000000000024 && 0x80000001BCE88860 == a2;
              if (v35 || (sub_1BCE1E090() & 1) != 0)
              {
                if (sub_1BCB8F3E4(a3) == 4)
                {
                  if (qword_1EDA1EFB0 != -1)
                  {
                    swift_once();
                  }

                  goto LABEL_17;
                }

                return 0;
              }

              v36 = a1 == 0xD000000000000029 && 0x80000001BCE88890 == a2;
              if (v36 || (sub_1BCE1E090() & 1) != 0)
              {
                if (sub_1BCB8F3E4(a3) == 5)
                {
                  if (qword_1EDA1EFB0 != -1)
                  {
                    swift_once();
                  }

                  goto LABEL_17;
                }

                return 0;
              }

              v37 = a1 == 0xD000000000000027 && 0x80000001BCE888C0 == a2;
              if (v37 || (sub_1BCE1E090() & 1) != 0)
              {
                if (sub_1BCB8F3E4(a3) == 3)
                {
                  if (qword_1EDA1EFB0 != -1)
                  {
                    swift_once();
                  }

                  goto LABEL_17;
                }

                return 0;
              }

              v38 = a1 == 0xD00000000000002CLL && 0x80000001BCE888F0 == a2;
              if (v38 || (sub_1BCE1E090() & 1) != 0)
              {
                if (sub_1BCB8F3E4(a3) == 4)
                {
                  if (qword_1EDA1EFB0 != -1)
                  {
                    swift_once();
                  }

                  goto LABEL_17;
                }

                return 0;
              }

              v39 = a1 == 0xD000000000000019 && 0x80000001BCE88920 == a2;
              if (v39 || (sub_1BCE1E090() & 1) != 0)
              {
                if (sub_1BCB8F3E4(a3) != 1)
                {
                  return 0;
                }

                if (qword_1EDA1EFB0 == -1)
                {
                  goto LABEL_17;
                }

                goto LABEL_280;
              }

              v40 = a1 == 0xD000000000000035 && 0x80000001BCE88940 == a2;
              if (v40 || (sub_1BCE1E090() & 1) != 0)
              {
                if (sub_1BCB8F3E4(a3) == 3)
                {
                  if (qword_1EDA1EFB0 != -1)
                  {
                    swift_once();
                  }

                  goto LABEL_17;
                }

                return 0;
              }

              v41 = a1 == 0xD000000000000024 && 0x80000001BCE88980 == a2;
              if (v41 || (sub_1BCE1E090() & 1) != 0)
              {
                if (sub_1BCB8F3E4(a3) == 3)
                {
                  if (qword_1EDA1EFB0 != -1)
                  {
                    swift_once();
                  }

                  goto LABEL_17;
                }

                return 0;
              }

              v42 = a1 == 0xD000000000000029 && 0x80000001BCE889B0 == a2;
              if (v42 || (sub_1BCE1E090() & 1) != 0)
              {
                if (sub_1BCB8F3E4(a3) == 4)
                {
                  if (qword_1EDA1EFB0 != -1)
                  {
                    swift_once();
                  }

                  goto LABEL_17;
                }

                return 0;
              }

              v43 = a1 == 0xD000000000000027 && 0x80000001BCE889E0 == a2;
              if (v43 || (sub_1BCE1E090() & 1) != 0)
              {
                if (sub_1BCB8F3E4(a3) == 2)
                {
                  if (qword_1EDA1EFB0 != -1)
                  {
                    swift_once();
                  }

                  goto LABEL_17;
                }

                return 0;
              }

              v44 = a1 == 0xD00000000000002CLL && 0x80000001BCE88A10 == a2;
              if (v44 || (sub_1BCE1E090() & 1) != 0)
              {
                if (sub_1BCB8F3E4(a3) == 3)
                {
                  if (qword_1EDA1EFB0 != -1)
                  {
                    swift_once();
                  }

                  goto LABEL_17;
                }

                return 0;
              }

              v45 = a1 == 0xD000000000000024 && 0x80000001BCE88A40 == a2;
              if (v45 || (sub_1BCE1E090() & 1) != 0)
              {
                if (sub_1BCB8F3E4(a3) == 2)
                {
                  if (qword_1EDA1EFB0 != -1)
                  {
                    swift_once();
                  }

                  goto LABEL_17;
                }

                return 0;
              }

              v46 = a1 == 0xD000000000000040 && 0x80000001BCE88A70 == a2;
              if (v46 || (sub_1BCE1E090() & 1) != 0)
              {
                if (sub_1BCB8F3E4(a3) == 4)
                {
                  if (qword_1EDA1EFB0 != -1)
                  {
                    swift_once();
                  }

                  goto LABEL_17;
                }

                return 0;
              }

              v47 = a1 == 0xD00000000000002FLL && 0x80000001BCE88AC0 == a2;
              if (v47 || (sub_1BCE1E090() & 1) != 0)
              {
                if (sub_1BCB8F3E4(a3) == 4)
                {
                  if (qword_1EDA1EFB0 != -1)
                  {
                    swift_once();
                  }

                  goto LABEL_17;
                }

                return 0;
              }

              v48 = a1 == 0xD000000000000034 && 0x80000001BCE88AF0 == a2;
              if (v48 || (sub_1BCE1E090() & 1) != 0)
              {
                if (sub_1BCB8F3E4(a3) == 5)
                {
                  if (qword_1EDA1EFB0 != -1)
                  {
                    swift_once();
                  }

                  goto LABEL_17;
                }

                return 0;
              }

              v49 = a1 == 0xD000000000000032 && 0x80000001BCE88B30 == a2;
              if (v49 || (sub_1BCE1E090() & 1) != 0)
              {
                if (sub_1BCB8F3E4(a3) == 3)
                {
                  if (qword_1EDA1EFB0 != -1)
                  {
                    swift_once();
                  }

                  goto LABEL_17;
                }

                return 0;
              }

              v50 = a1 == 0xD000000000000037 && 0x80000001BCE88B70 == a2;
              if (v50 || (sub_1BCE1E090() & 1) != 0)
              {
                if (sub_1BCB8F3E4(a3) == 4)
                {
                  if (qword_1EDA1EFB0 != -1)
                  {
                    swift_once();
                  }

                  goto LABEL_17;
                }

                return 0;
              }

              v51 = a1 == 0xD00000000000001DLL && 0x80000001BCE88BB0 == a2;
              if (v51 || (sub_1BCE1E090() & 1) != 0)
              {
                if (sub_1BCB8F3E4(a3) == 4)
                {
                  if (qword_1EDA1EFB0 != -1)
                  {
                    swift_once();
                  }

                  goto LABEL_17;
                }

                return 0;
              }

              v52 = a1 == 0xD000000000000039 && 0x80000001BCE88BD0 == a2;
              if (!v52 && (sub_1BCE1E090() & 1) == 0)
              {
                v53 = a1 == 0xD000000000000028 && 0x80000001BCE88C10 == a2;
                if (v53 || (sub_1BCE1E090() & 1) != 0)
                {
                  if (sub_1BCB8F3E4(a3) == 6)
                  {
                    if (qword_1EDA1EFB0 != -1)
                    {
                      swift_once();
                    }

                    goto LABEL_17;
                  }
                }

                else
                {
                  v54 = a1 == 0xD00000000000002DLL && 0x80000001BCE88C40 == a2;
                  if (v54 || (sub_1BCE1E090() & 1) != 0)
                  {
                    if (sub_1BCB8F3E4(a3) == 7)
                    {
                      if (qword_1EDA1EFB0 != -1)
                      {
                        swift_once();
                      }

                      goto LABEL_17;
                    }
                  }

                  else
                  {
                    v55 = a1 == 0xD00000000000002BLL && 0x80000001BCE88C70 == a2;
                    if (v55 || (sub_1BCE1E090() & 1) != 0)
                    {
                      if (sub_1BCB8F3E4(a3) == 5)
                      {
                        if (qword_1EDA1EFB0 != -1)
                        {
                          swift_once();
                        }

                        goto LABEL_17;
                      }
                    }

                    else
                    {
                      v56 = a1 == 0xD000000000000030 && 0x80000001BCE88CA0 == a2;
                      if (v56 || (sub_1BCE1E090() & 1) != 0)
                      {
                        if (sub_1BCB8F3E4(a3) == 6)
                        {
                          if (qword_1EDA1EFB0 != -1)
                          {
                            swift_once();
                          }

                          goto LABEL_17;
                        }
                      }

                      else
                      {
                        v57 = a1 == 0xD000000000000028 && 0x80000001BCE88CE0 == a2;
                        if (v57 || (sub_1BCE1E090() & 1) != 0)
                        {
                          if (sub_1BCB8F3E4(a3) == 4)
                          {
                            if (qword_1EDA1EFB0 != -1)
                            {
                              swift_once();
                            }

                            goto LABEL_17;
                          }
                        }

                        else
                        {
                          v58 = a1 == 0xD000000000000044 && 0x80000001BCE88D10 == a2;
                          if (v58 || (sub_1BCE1E090() & 1) != 0)
                          {
                            if (sub_1BCB8F3E4(a3) == 6)
                            {
                              if (qword_1EDA1EFB0 != -1)
                              {
                                swift_once();
                              }

                              goto LABEL_17;
                            }
                          }

                          else
                          {
                            v59 = a1 == 0xD000000000000033 && 0x80000001BCE88D60 == a2;
                            if (v59 || (sub_1BCE1E090() & 1) != 0)
                            {
                              if (sub_1BCB8F3E4(a3) == 6)
                              {
                                if (qword_1EDA1EFB0 != -1)
                                {
                                  swift_once();
                                }

                                goto LABEL_17;
                              }
                            }

                            else
                            {
                              v60 = a1 == 0xD000000000000038 && 0x80000001BCE88DA0 == a2;
                              if (v60 || (sub_1BCE1E090() & 1) != 0)
                              {
                                if (sub_1BCB8F3E4(a3) == 7)
                                {
                                  if (qword_1EDA1EFB0 != -1)
                                  {
                                    swift_once();
                                  }

                                  goto LABEL_17;
                                }
                              }

                              else
                              {
                                v61 = a1 == 0xD000000000000036 && 0x80000001BCE88DE0 == a2;
                                if (v61 || (sub_1BCE1E090() & 1) != 0)
                                {
                                  if (sub_1BCB8F3E4(a3) == 5)
                                  {
                                    if (qword_1EDA1EFB0 != -1)
                                    {
                                      swift_once();
                                    }

                                    goto LABEL_17;
                                  }
                                }

                                else
                                {
                                  v62 = a1 == 0xD00000000000003BLL && 0x80000001BCE88E20 == a2;
                                  if (v62 || (sub_1BCE1E090() & 1) != 0)
                                  {
                                    if (sub_1BCB8F3E4(a3) == 6)
                                    {
                                      if (qword_1EDA1EFB0 != -1)
                                      {
                                        swift_once();
                                      }

                                      goto LABEL_17;
                                    }
                                  }

                                  else
                                  {
                                    v63 = a1 == 0xD000000000000013 && 0x80000001BCE88E60 == a2;
                                    if (v63 || (sub_1BCE1E090() & 1) != 0)
                                    {
                                      if (sub_1BCB8F3E4(a3) == 3)
                                      {
                                        if (qword_1EDA1EFB0 != -1)
                                        {
                                          swift_once();
                                        }

                                        goto LABEL_17;
                                      }
                                    }

                                    else
                                    {
                                      v64 = a1 == 0xD00000000000002FLL && 0x80000001BCE88E80 == a2;
                                      if (v64 || (sub_1BCE1E090() & 1) != 0)
                                      {
                                        if (sub_1BCB8F3E4(a3) == 5)
                                        {
                                          if (qword_1EDA1EFB0 != -1)
                                          {
                                            swift_once();
                                          }

                                          goto LABEL_17;
                                        }
                                      }

                                      else
                                      {
                                        v65 = a1 == 0xD00000000000001ELL && 0x80000001BCE88EB0 == a2;
                                        if (v65 || (sub_1BCE1E090() & 1) != 0)
                                        {
                                          if (sub_1BCB8F3E4(a3) == 5)
                                          {
                                            if (qword_1EDA1EFB0 != -1)
                                            {
                                              swift_once();
                                            }

                                            goto LABEL_17;
                                          }
                                        }

                                        else
                                        {
                                          v66 = a1 == 0xD000000000000023 && 0x80000001BCE88ED0 == a2;
                                          if (v66 || (sub_1BCE1E090() & 1) != 0)
                                          {
                                            if (sub_1BCB8F3E4(a3) == 6)
                                            {
                                              if (qword_1EDA1EFB0 != -1)
                                              {
                                                swift_once();
                                              }

                                              goto LABEL_17;
                                            }
                                          }

                                          else
                                          {
                                            v67 = a1 == 0xD000000000000021 && 0x80000001BCE88F00 == a2;
                                            if (v67 || (sub_1BCE1E090() & 1) != 0)
                                            {
                                              if (sub_1BCB8F3E4(a3) == 4)
                                              {
                                                if (qword_1EDA1EFB0 != -1)
                                                {
                                                  swift_once();
                                                }

                                                goto LABEL_17;
                                              }
                                            }

                                            else
                                            {
                                              v68 = a1 == 0xD000000000000026 && 0x80000001BCE88F30 == a2;
                                              if (v68 || (sub_1BCE1E090() & 1) != 0)
                                              {
                                                if (sub_1BCB8F3E4(a3) == 5)
                                                {
                                                  if (qword_1EDA1EFB0 != -1)
                                                  {
                                                    swift_once();
                                                  }

                                                  goto LABEL_17;
                                                }
                                              }

                                              else
                                              {
                                                v69 = a1 == 0xD00000000000001ELL && 0x80000001BCE88F60 == a2;
                                                if (v69 || (sub_1BCE1E090() & 1) != 0)
                                                {
                                                  if (sub_1BCB8F3E4(a3) == 4)
                                                  {
                                                    if (qword_1EDA1EFB0 != -1)
                                                    {
                                                      swift_once();
                                                    }

                                                    goto LABEL_17;
                                                  }
                                                }

                                                else
                                                {
                                                  v70 = a1 == 0xD00000000000003ALL && 0x80000001BCE88F80 == a2;
                                                  if (v70 || (sub_1BCE1E090() & 1) != 0)
                                                  {
                                                    if (sub_1BCB8F3E4(a3) == 6)
                                                    {
                                                      if (qword_1EDA1EFB0 != -1)
                                                      {
                                                        swift_once();
                                                      }

                                                      goto LABEL_17;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v71 = a1 == 0xD000000000000029 && 0x80000001BCE88FC0 == a2;
                                                    if (v71 || (sub_1BCE1E090() & 1) != 0)
                                                    {
                                                      if (sub_1BCB8F3E4(a3) == 6)
                                                      {
                                                        if (qword_1EDA1EFB0 != -1)
                                                        {
                                                          swift_once();
                                                        }

                                                        goto LABEL_17;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v72 = a1 == 0xD00000000000002ELL && 0x80000001BCE88FF0 == a2;
                                                      if (v72 || (sub_1BCE1E090() & 1) != 0)
                                                      {
                                                        if (sub_1BCB8F3E4(a3) == 7)
                                                        {
                                                          if (qword_1EDA1EFB0 != -1)
                                                          {
                                                            swift_once();
                                                          }

                                                          goto LABEL_17;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v73 = a1 == 0xD00000000000002CLL && 0x80000001BCE89020 == a2;
                                                        if (v73 || (sub_1BCE1E090() & 1) != 0)
                                                        {
                                                          if (sub_1BCB8F3E4(a3) == 5)
                                                          {
                                                            if (qword_1EDA1EFB0 != -1)
                                                            {
                                                              swift_once();
                                                            }

                                                            goto LABEL_17;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v74 = a1 == 0xD000000000000031 && 0x80000001BCE89050 == a2;
                                                          if (v74 || (sub_1BCE1E090() & 1) != 0)
                                                          {
                                                            if (sub_1BCB8F3E4(a3) == 6)
                                                            {
                                                              if (qword_1EDA1EFB0 != -1)
                                                              {
                                                                swift_once();
                                                              }

                                                              goto LABEL_17;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v75 = a1 == 0xD000000000000026 && 0x80000001BCE880C0 == a2;
                                                            if (v75 || (sub_1BCE1E090() & 1) != 0)
                                                            {
                                                              if (sub_1BCB8F3E4(a3) == 3)
                                                              {
                                                                if (qword_1EDA1EFB0 != -1)
                                                                {
                                                                  swift_once();
                                                                }

                                                                goto LABEL_17;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v76 = a1 == 0xD00000000000002BLL && 0x80000001BCE88090 == a2;
                                                              if (v76 || (sub_1BCE1E090() & 1) != 0)
                                                              {
                                                                if (sub_1BCB8F3E4(a3) == 3)
                                                                {
                                                                  if (qword_1EDA1EFB0 != -1)
                                                                  {
                                                                    swift_once();
                                                                  }

                                                                  goto LABEL_17;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v77 = a1 == 0xD00000000000002CLL && 0x80000001BCE89090 == a2;
                                                                if (v77 || (sub_1BCE1E090() & 1) != 0)
                                                                {
                                                                  if (sub_1BCB8F3E4(a3) == 3)
                                                                  {
                                                                    if (qword_1EDA1EFB0 != -1)
                                                                    {
                                                                      swift_once();
                                                                    }

                                                                    goto LABEL_17;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v78 = a1 == 0xD000000000000023 && 0x80000001BCE890C0 == a2;
                                                                  if (v78 || (sub_1BCE1E090() & 1) != 0)
                                                                  {
                                                                    if (sub_1BCB8F3E4(a3) == 3)
                                                                    {
                                                                      if (qword_1EDA1EFB0 != -1)
                                                                      {
                                                                        swift_once();
                                                                      }

                                                                      goto LABEL_17;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v79 = a1 == 0xD00000000000001ELL && 0x80000001BCE890F0 == a2;
                                                                    if (v79 || (sub_1BCE1E090() & 1) != 0)
                                                                    {
                                                                      if (sub_1BCB8F3E4(a3) == 2)
                                                                      {
                                                                        if (qword_1EDA1EFB0 != -1)
                                                                        {
                                                                          swift_once();
                                                                        }

                                                                        goto LABEL_17;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v80 = a1 == 0xD000000000000019 && 0x80000001BCE89110 == a2;
                                                                      if (v80 || (sub_1BCE1E090() & 1) != 0)
                                                                      {
                                                                        if (sub_1BCB8F3E4(a3) == 3)
                                                                        {
                                                                          if (qword_1EDA1EFB0 == -1)
                                                                          {
                                                                            goto LABEL_17;
                                                                          }

                                                                          goto LABEL_649;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v81 = a1 == 0xD00000000000001ELL && 0x80000001BCE89130 == a2;
                                                                        if (v81 || (sub_1BCE1E090() & 1) != 0)
                                                                        {
                                                                          if (sub_1BCB8F3E4(a3) == 4)
                                                                          {
                                                                            if (qword_1EDA1EFB0 != -1)
                                                                            {
                                                                              swift_once();
                                                                            }

                                                                            goto LABEL_17;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v82 = a1 == 0xD00000000000002ALL && 0x80000001BCE88060 == a2;
                                                                          if (v82 || (sub_1BCE1E090()) && sub_1BCB8F3E4(a3) == 3)
                                                                          {
                                                                            if (qword_1EDA1EFB0 != -1)
                                                                            {
                                                                              swift_once();
                                                                            }

                                                                            goto LABEL_17;
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                return 0;
              }

              if (sub_1BCB8F3E4(a3) != 6)
              {
                return 0;
              }

              if (qword_1EDA1EFB0 == -1)
              {
                goto LABEL_17;
              }
            }

            swift_once();
            goto LABEL_17;
          }

          if (sub_1BCB8F3E4(a3) != 4)
          {
            return 0;
          }

          if (qword_1EDA1EFB0 == -1)
          {
            goto LABEL_17;
          }
        }
      }
    }

LABEL_280:
    swift_once();
    goto LABEL_17;
  }

  if (sub_1BCB8F3E4(a3) == 6)
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_649;
  }

  return 0;
}

uint64_t sub_1BCC8404C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1BC9804BC(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 40);
    v5 = MEMORY[0x1E69E6158];
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v14 = v2;
      v8 = *(v2 + 16);
      v9 = *(v2 + 24);

      if (v8 >= v9 >> 1)
      {
        sub_1BC9804BC((v9 > 1), v8 + 1, 1);
        v2 = v14;
      }

      v12 = v5;
      v13 = sub_1BC9804E0();
      *&v11 = v7;
      *(&v11 + 1) = v6;
      *(v2 + 16) = v8 + 1;
      sub_1BC947AB4(&v11, v2 + 40 * v8 + 32);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1BCC84148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1BCE19060();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE195A0();
  sub_1BCC85D2C(&qword_1EDA1EF40, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v7 = sub_1BCE1D1E0();
  v8 = *(v4 + 8);
  v8(v6, v3);
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    sub_1BCE195A0();
    v10 = sub_1BCE1D1E0();
    v8(v6, v3);
    v9 = v10 ^ 1;
  }

  return v9 & 1;
}

void *sub_1BCC842DC(uint64_t a1)
{
  v2 = sub_1BCE199D0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1BCE195D0();
  MEMORY[0x1EEE9AC00](v49);
  v43 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v35 - v7;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC8];
  v51 = MEMORY[0x1E69E7CC8];
  v10 = *(a1 + 16);
  v45 = v11;
  v46 = v10;
  v44 = v11 + 16;
  v47 = (v11 + 32);
  v38 = v3 + 32;
  v39 = v3;
  v37 = (v3 + 8);
  v36 = xmmword_1BCE3E050;
  v40 = v2;
  v41 = a1;
  while (1)
  {
    if (v46 == v8)
    {

      return v9;
    }

    if (v8 >= *(a1 + 16))
    {
      break;
    }

    v12 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v13 = *(v45 + 72);
    (*(v45 + 16))(v48, a1 + v12 + v13 * v8, v49);
    v14 = v50;
    sub_1BCE195C0();
    v16 = sub_1BCA9B658(v14);
    v17 = v9[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_19;
    }

    v20 = v15;
    if (v9[3] < v19)
    {
      sub_1BCC8588C(v19, 1);
      v9 = v51;
      v21 = sub_1BCA9B658(v50);
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_21;
      }

      v16 = v21;
    }

    if (v20)
    {
      (*v37)(v50, v2);
      v23 = v9[7];
      v24 = *v47;
      (*v47)(v43, v48, v49);
      v25 = *(v23 + 8 * v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v23 + 8 * v16) = v25;
      v42 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BCB661F8();
        v25 = v32;
        *(v23 + 8 * v16) = v32;
      }

      v27 = *(v25 + 16);
      if (v27 >= *(v25 + 24) >> 1)
      {
        sub_1BCB661F8();
        v25 = v33;
        *(v23 + 8 * v16) = v33;
      }

      v2 = v40;
      *(v25 + 16) = v27 + 1;
      v42((v25 + v12 + v27 * v13), v43, v49);
      a1 = v41;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07928, &qword_1BCE3F370);
      v28 = swift_allocObject();
      *(v28 + 16) = v36;
      (*v47)((v28 + v12), v48, v49);
      v9[(v16 >> 6) + 8] |= 1 << v16;
      (*(v39 + 32))(v9[6] + *(v39 + 72) * v16, v50, v2);
      *(v9[7] + 8 * v16) = v28;
      v29 = v9[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_20;
      }

      v9[2] = v31;
    }

    ++v8;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1BCE1E0F0();
  __break(1u);
  return result;
}

void sub_1BCC84718(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BCE1E040();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07948, &qword_1BCE3F390);
        v6 = sub_1BCE1D5A0();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07948, &qword_1BCE3F390) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1BCC84AB4(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1BCC84860(0, v2, 1, a1);
  }
}

void sub_1BCC84860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07948, &qword_1BCE3F390);
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v28 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v39 = &v28 - v14;
  v30 = a2;
  if (a3 != a2)
  {
    v15 = *a4;
    v16 = *(v13 + 72);
    v17 = *a4 + v16 * (a3 - 1);
    v35 = -v16;
    v36 = v15;
    v18 = a1 - a3;
    v29 = v16;
    v19 = v15 + v16 * a3;
    v38 = v8;
    while (2)
    {
      v33 = v17;
      v34 = a3;
      v31 = v19;
      v32 = v18;
      do
      {
        v20 = v39;
        sub_1BC952ABC(v19, v39, &qword_1EBD07948, &qword_1BCE3F390);
        v21 = v40;
        sub_1BC952ABC(v17, v40, &qword_1EBD07948, &qword_1BCE3F390);
        v22 = *(v8 + 48);
        v23 = *(v20 + v22);
        v24 = *(v21 + v22);
        sub_1BC94C05C(v21, &qword_1EBD07948, &qword_1BCE3F390);
        sub_1BC94C05C(v20, &qword_1EBD07948, &qword_1BCE3F390);
        v25 = v24 < v23;
        v8 = v38;
        if (!v25)
        {
          break;
        }

        if (!v36)
        {
          __break(1u);
          return;
        }

        v26 = v37;
        sub_1BCBAC4D0(v19, v37);
        swift_arrayInitWithTakeFrontToBack();
        sub_1BCBAC4D0(v26, v17);
        v17 += v35;
        v19 += v35;
      }

      while (!__CFADD__(v18++, 1));
      a3 = v34 + 1;
      v17 = v33 + v29;
      v18 = v32 - 1;
      v19 = v31 + v29;
      if (v34 + 1 != v30)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1BCC84AB4(unint64_t *a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v5 = v4;
  v119 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07948, &qword_1BCE3F390);
  v128 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v124 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v134 = &v117 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v136 = &v117 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v135 = &v117 - v16;
  v130 = a3;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v137 = *v119;
    if (!v137)
    {
      goto LABEL_148;
    }

    a4 = v5;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_108:
      v109 = v19 + 16;
      v110 = *(v19 + 2);
      while (v110 >= 2)
      {
        if (!*v130)
        {
          goto LABEL_145;
        }

        v111 = v19;
        v112 = &v19[16 * v110];
        v113 = *v112;
        v114 = &v109[2 * v110];
        v115 = *(v114 + 1);
        sub_1BCC853CC(*v130 + *(v128 + 72) * *v112, *v130 + *(v128 + 72) * *v114, *v130 + *(v128 + 72) * v115, v137);
        if (a4)
        {
          break;
        }

        if (v115 < v113)
        {
          goto LABEL_133;
        }

        if (v110 - 2 >= *v109)
        {
          goto LABEL_134;
        }

        *v112 = v113;
        *(v112 + 1) = v115;
        v116 = *v109 - v110;
        if (*v109 < v110)
        {
          goto LABEL_135;
        }

        v110 = *v109 - 1;
        sub_1BCBECE14(v114 + 16, v116, v114);
        *v109 = v110;
        v19 = v111;
      }

LABEL_116:

      return;
    }

LABEL_142:
    v19 = sub_1BCBECBBC();
    goto LABEL_108;
  }

  v137 = v15;
  v118 = a4;
  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    v120 = v18;
    v121 = v19;
    if (v18 + 1 < v17)
    {
      v22 = *v130;
      v23 = *(v128 + 72);
      a4 = (*v130 + v23 * v21);
      v131 = v5;
      v24 = v135;
      v127 = v17;
      sub_1BC952ABC(a4, v135, &qword_1EBD07948, &qword_1BCE3F390);
      v25 = v136;
      sub_1BC952ABC(v22 + v23 * v20, v136, &qword_1EBD07948, &qword_1BCE3F390);
      v26 = *(v137 + 48);
      v27 = *(v24 + v26);
      v125 = *(v25 + v26);
      v126 = v27;
      sub_1BC94C05C(v25, &qword_1EBD07948, &qword_1BCE3F390);
      v28 = v24;
      v5 = v131;
      sub_1BC94C05C(v28, &qword_1EBD07948, &qword_1BCE3F390);
      v29 = v127;
      v30 = v20 + 2;
      v129 = v23;
      v31 = v22 + v23 * (v20 + 2);
      while (1)
      {
        v32 = v30;
        v33 = v21 + 1;
        if (v33 >= v29)
        {
          break;
        }

        v131 = v5;
        LODWORD(v132) = v125 < v126;
        v34 = v135;
        v133 = v30;
        sub_1BC952ABC(v31, v135, &qword_1EBD07948, &qword_1BCE3F390);
        v35 = v136;
        sub_1BC952ABC(a4, v136, &qword_1EBD07948, &qword_1BCE3F390);
        v36 = *(v137 + 48);
        v37 = v33;
        v38 = *(v34 + v36);
        v39 = *(v35 + v36);
        sub_1BC94C05C(v35, &qword_1EBD07948, &qword_1BCE3F390);
        sub_1BC94C05C(v34, &qword_1EBD07948, &qword_1BCE3F390);
        v32 = v133;
        v29 = v127;
        v40 = v39 < v38;
        v21 = v37;
        v41 = !v40;
        v42 = v132 ^ v41;
        v5 = v131;
        v31 += v129;
        a4 += v129;
        v30 = v133 + 1;
        if ((v42 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v21 = v29;
LABEL_12:
      if (v125 >= v126)
      {
        v19 = v121;
      }

      else
      {
        v20 = v120;
        if (v21 < v120)
        {
          goto LABEL_139;
        }

        if (v120 >= v21)
        {
          v19 = v121;
          goto LABEL_35;
        }

        v131 = v5;
        if (v29 >= v32)
        {
          v43 = v32;
        }

        else
        {
          v43 = v29;
        }

        v44 = v21;
        v45 = v129 * (v43 - 1);
        v46 = v129 * v43;
        v47 = v120 * v129;
        v127 = v44;
        v19 = v121;
        do
        {
          if (v20 != --v44)
          {
            v48 = *v130;
            if (!*v130)
            {
              goto LABEL_146;
            }

            a4 = (v48 + v47);
            sub_1BCBAC4D0(v48 + v47, v124);
            v49 = v47 < v45 || a4 >= v48 + v46;
            if (v49)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v47 != v45)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1BCBAC4D0(v124, v48 + v45);
            v19 = v121;
          }

          ++v20;
          v45 -= v129;
          v46 -= v129;
          v47 += v129;
        }

        while (v20 < v44);
        v5 = v131;
        v21 = v127;
      }

      v20 = v120;
    }

LABEL_35:
    v50 = v130[1];
    if (v21 < v50)
    {
      if (__OFSUB__(v21, v20))
      {
        goto LABEL_138;
      }

      if (v21 - v20 < v118)
      {
        break;
      }
    }

LABEL_54:
    if (v21 < v20)
    {
      goto LABEL_137;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v127 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1BCB65134(0, *(v19 + 2) + 1, 1, v19);
      v19 = v107;
    }

    v65 = *(v19 + 2);
    v64 = *(v19 + 3);
    v66 = v65 + 1;
    if (v65 >= v64 >> 1)
    {
      sub_1BCB65134(v64 > 1, v65 + 1, 1, v19);
      v19 = v108;
    }

    *(v19 + 2) = v66;
    v67 = v19 + 32;
    v68 = &v19[16 * v65 + 32];
    v69 = v127;
    *v68 = v120;
    *(v68 + 1) = v69;
    v133 = *v119;
    if (!v133)
    {
      goto LABEL_147;
    }

    if (v65)
    {
      while (1)
      {
        v70 = v66 - 1;
        v71 = &v67[16 * v66 - 16];
        v72 = &v19[16 * v66];
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v73 = *(v19 + 4);
          v74 = *(v19 + 5);
          v83 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          v76 = v83;
LABEL_74:
          if (v76)
          {
            goto LABEL_124;
          }

          v88 = *v72;
          v87 = *(v72 + 1);
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_127;
          }

          v92 = *(v71 + 1);
          v93 = v92 - *v71;
          if (__OFSUB__(v92, *v71))
          {
            goto LABEL_130;
          }

          if (__OFADD__(v90, v93))
          {
            goto LABEL_132;
          }

          if (v90 + v93 >= v75)
          {
            if (v75 < v93)
            {
              v70 = v66 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        if (v66 < 2)
        {
          goto LABEL_126;
        }

        v95 = *v72;
        v94 = *(v72 + 1);
        v83 = __OFSUB__(v94, v95);
        v90 = v94 - v95;
        v91 = v83;
LABEL_89:
        if (v91)
        {
          goto LABEL_129;
        }

        v97 = *v71;
        v96 = *(v71 + 1);
        v83 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v83)
        {
          goto LABEL_131;
        }

        if (v98 < v90)
        {
          goto LABEL_103;
        }

LABEL_96:
        if (v70 - 1 >= v66)
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*v130)
        {
          goto LABEL_144;
        }

        v102 = v19;
        v103 = &v67[16 * v70 - 16];
        v104 = *v103;
        a4 = &v67[16 * v70];
        v105 = *(a4 + 1);
        sub_1BCC853CC(*v130 + *(v128 + 72) * *v103, *v130 + *(v128 + 72) * *a4, *v130 + *(v128 + 72) * v105, v133);
        if (v5)
        {
          goto LABEL_116;
        }

        if (v105 < v104)
        {
          goto LABEL_119;
        }

        v106 = *(v102 + 2);
        if (v70 > v106)
        {
          goto LABEL_120;
        }

        *v103 = v104;
        *(v103 + 1) = v105;
        if (v70 >= v106)
        {
          goto LABEL_121;
        }

        v66 = v106 - 1;
        sub_1BCBECE14(a4 + 16, v106 - 1 - v70, &v67[16 * v70]);
        v19 = v102;
        *(v102 + 2) = v106 - 1;
        if (v106 <= 2)
        {
          goto LABEL_103;
        }
      }

      v77 = &v67[16 * v66];
      v78 = *(v77 - 8);
      v79 = *(v77 - 7);
      v83 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v83)
      {
        goto LABEL_122;
      }

      v82 = *(v77 - 6);
      v81 = *(v77 - 5);
      v83 = __OFSUB__(v81, v82);
      v75 = v81 - v82;
      v76 = v83;
      if (v83)
      {
        goto LABEL_123;
      }

      v84 = *(v72 + 1);
      v85 = v84 - *v72;
      if (__OFSUB__(v84, *v72))
      {
        goto LABEL_125;
      }

      v83 = __OFADD__(v75, v85);
      v86 = v75 + v85;
      if (v83)
      {
        goto LABEL_128;
      }

      if (v86 >= v80)
      {
        v100 = *v71;
        v99 = *(v71 + 1);
        v83 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v83)
        {
          goto LABEL_136;
        }

        if (v75 < v101)
        {
          v70 = v66 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_74;
    }

LABEL_103:
    v17 = v130[1];
    v18 = v127;
    if (v127 >= v17)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v20, v118))
  {
    goto LABEL_140;
  }

  if (v20 + v118 >= v50)
  {
    v51 = v130[1];
  }

  else
  {
    v51 = v20 + v118;
  }

  if (v51 < v20)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (v21 == v51)
  {
    goto LABEL_54;
  }

  v52 = *v130;
  v53 = *(v128 + 72);
  v54 = *v130 + v53 * (v21 - 1);
  v131 = v5;
  v132 = -v53;
  v55 = v20 - v21;
  v127 = v21;
  v133 = v52;
  v122 = v53;
  v123 = v51;
  a4 = (v52 + v21 * v53);
  v56 = v137;
LABEL_45:
  v125 = a4;
  v126 = v55;
  v129 = v54;
  while (1)
  {
    v57 = v135;
    sub_1BC952ABC(a4, v135, &qword_1EBD07948, &qword_1BCE3F390);
    v58 = v136;
    sub_1BC952ABC(v54, v136, &qword_1EBD07948, &qword_1BCE3F390);
    v59 = *(v56 + 48);
    v60 = *(v57 + v59);
    v61 = *(v58 + v59);
    sub_1BC94C05C(v58, &qword_1EBD07948, &qword_1BCE3F390);
    sub_1BC94C05C(v57, &qword_1EBD07948, &qword_1BCE3F390);
    if (v61 >= v60)
    {
      v56 = v137;
LABEL_52:
      v54 = v129 + v122;
      v55 = v126 - 1;
      a4 = (v125 + v122);
      if (++v127 == v123)
      {
        v21 = v123;
        v5 = v131;
        v20 = v120;
        v19 = v121;
        goto LABEL_54;
      }

      goto LABEL_45;
    }

    if (!v133)
    {
      break;
    }

    v62 = v134;
    sub_1BCBAC4D0(a4, v134);
    v56 = v137;
    swift_arrayInitWithTakeFrontToBack();
    sub_1BCBAC4D0(v62, v54);
    v54 += v132;
    a4 += v132;
    v49 = __CFADD__(v55++, 1);
    if (v49)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
}

void sub_1BCC853CC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07948, &qword_1BCE3F390);
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v48 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_61;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v18 = v14 / v13;
  v61 = a1;
  v60 = a4;
  v19 = v16 / v13;
  v57 = v8;
  if (v14 / v13 >= v16 / v13)
  {
    sub_1BCA15040(a2, v16 / v13, a4);
    v32 = a4 + v19 * v13;
    v33 = -v13;
    v34 = v32;
    v51 = -v13;
    v52 = a4;
    v58 = a1;
LABEL_37:
    v53 = a2 + v33;
    v35 = v34;
    v50 = v34;
    while (1)
    {
      if (v32 <= a4)
      {
        v61 = a2;
        v59 = v35;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v49 = v35;
      v36 = a3 + v33;
      v37 = v32 + v33;
      v38 = v32 + v33;
      v39 = v55;
      v40 = v56;
      v41 = v32;
      sub_1BC952ABC(v38, v56, &qword_1EBD07948, &qword_1BCE3F390);
      sub_1BC952ABC(v53, v39, &qword_1EBD07948, &qword_1BCE3F390);
      v42 = v39;
      v43 = *(v57 + 48);
      v54 = *(v40 + v43);
      v44 = *(v39 + v43);
      sub_1BC94C05C(v42, &qword_1EBD07948, &qword_1BCE3F390);
      sub_1BC94C05C(v40, &qword_1EBD07948, &qword_1BCE3F390);
      if (v44 < v54)
      {
        if (a3 < a2 || v36 >= a2)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v34 = v49;
          a3 = v36;
          v33 = v51;
          a4 = v52;
          a1 = v58;
          v32 = v41;
        }

        else
        {
          v34 = v49;
          v15 = a3 == a2;
          a4 = v52;
          v47 = v53;
          a2 = v53;
          a1 = v58;
          a3 = v36;
          v33 = v51;
          v32 = v41;
          if (!v15)
          {
            v34 = v49;
            swift_arrayInitWithTakeBackToFront();
            v32 = v41;
            a2 = v47;
          }
        }

        goto LABEL_37;
      }

      if (a3 < v41 || v36 >= v41)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 = v36;
        v32 = v37;
        v35 = v37;
        v33 = v51;
        a4 = v52;
        a1 = v58;
        v34 = v50;
      }

      else
      {
        v35 = v37;
        v15 = v41 == a3;
        a3 = v36;
        v32 = v37;
        v33 = v51;
        a4 = v52;
        a1 = v58;
        v34 = v50;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v36;
          v32 = v37;
          v35 = v37;
        }
      }
    }

    v61 = a2;
    v59 = v34;
  }

  else
  {
    sub_1BCA15040(a1, v14 / v13, a4);
    v53 = a3;
    v54 = a4 + v18 * v13;
    v59 = v54;
    while (a4 < v54 && a2 < a3)
    {
      v58 = a1;
      v21 = v13;
      v22 = v56;
      sub_1BC952ABC(a2, v56, &qword_1EBD07948, &qword_1BCE3F390);
      v23 = a4;
      v24 = a4;
      v25 = v55;
      sub_1BC952ABC(v23, v55, &qword_1EBD07948, &qword_1BCE3F390);
      v26 = *(v8 + 48);
      v27 = *(v22 + v26);
      v28 = *(v25 + v26);
      sub_1BC94C05C(v25, &qword_1EBD07948, &qword_1BCE3F390);
      sub_1BC94C05C(v22, &qword_1EBD07948, &qword_1BCE3F390);
      v13 = v21;
      if (v28 >= v27)
      {
        a4 = v24 + v21;
        v29 = v58;
        if (v58 < v24 || v58 >= a4)
        {
          v8 = v57;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v8 = v57;
          if (v58 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v60 = v24 + v21;
      }

      else
      {
        v29 = v58;
        v30 = v58 < a2 || v58 >= a2 + v21;
        a4 = v24;
        if (v30)
        {
          v8 = v57;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v8 = v57;
          if (v58 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a2 += v21;
      }

      a1 = v29 + v21;
      v61 = a1;
      a3 = v53;
    }
  }

LABEL_59:
  sub_1BCBECD2C(&v61, &v60, &v59);
}

uint64_t sub_1BCC8588C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1BCE199D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BB00, &unk_1BCE5CA80);
  v39 = v4;
  result = sub_1BCE1DE80();
  v11 = result;
  if (!*(v9 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v11;
    return result;
  }

  v43 = v8;
  v35 = v2;
  v12 = 0;
  v13 = (v9 + 64);
  v14 = 1 << *(v9 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v9 + 64);
  v17 = (v14 + 63) >> 6;
  v36 = (v6 + 16);
  v37 = v9;
  v38 = v6;
  v40 = (v6 + 32);
  v18 = result + 64;
  if (!v16)
  {
LABEL_7:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v12 >= v17)
      {
        break;
      }

      v21 = v13[v12];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      sub_1BC99E464(0, (v33 + 63) >> 6, v13);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_12:
    v22 = v19 | (v12 << 6);
    v23 = *(v9 + 48);
    v42 = *(v38 + 72);
    v24 = v23 + v42 * v22;
    if (v39)
    {
      (*v40)(v43, v24, v5);
      v41 = *(*(v9 + 56) + 8 * v22);
    }

    else
    {
      (*v36)(v43, v24, v5);
      v41 = *(*(v9 + 56) + 8 * v22);
    }

    sub_1BCC85D2C(&qword_1EDA1BEE8, MEMORY[0x1E6984D30], MEMORY[0x1E6984D40]);
    result = sub_1BCE1D180();
    v25 = -1 << *(v11 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v18 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = (*v40)(*(v11 + 48) + v42 * v28, v43, v5);
    *(*(v11 + 56) + 8 * v28) = v41;
    ++*(v11 + 16);
    v9 = v37;
    if (!v16)
    {
      goto LABEL_7;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v18 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1BCC85C64(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BCC85D2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_49_6(uint64_t a1)
{

  return sub_1BCE18860();
}

uint64_t sub_1BCC85DC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 120 && a2 == 0xE100000000000000;
  if (v3 || (sub_1BCE1E090() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BCE1E090();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BCC85E80(char a1)
{
  if (a1)
  {
    return 121;
  }

  else
  {
    return 120;
  }
}

uint64_t sub_1BCC85E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCC85DC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BCC85EC4(uint64_t a1)
{
  v2 = sub_1BCC86094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCC85F00(uint64_t a1)
{
  v2 = sub_1BCC86094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CodableUnitPoint.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BB08, &qword_1BCE5CA90);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v11 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCC86094();
  sub_1BCE1E170();
  v20 = v11;
  HIBYTE(v19) = 0;
  v12 = sub_1BCA4DCAC();
  v15 = OUTLINED_FUNCTION_1_58(v12, v13, v14, MEMORY[0x1E69E7DE0]);
  if (!v2)
  {
    v20 = v10;
    HIBYTE(v19) = 1;
    OUTLINED_FUNCTION_1_58(v15, v16, v17, MEMORY[0x1E69E7DE0]);
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1BCC86094()
{
  result = qword_1EBD0BB10;
  if (!qword_1EBD0BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0BB10);
  }

  return result;
}

uint64_t CodableUnitPoint.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1BFB30880](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x1BFB30880](*&v3);
}

uint64_t CodableUnitPoint.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BCE1E100();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1BFB30880](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1BFB30880](*&v4);
  return sub_1BCE1E150();
}

uint64_t CodableUnitPoint.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BB18, &qword_1BCE5CA98);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCC86094();
  sub_1BCE1E160();
  if (!v2)
  {
    HIBYTE(v14) = 0;
    sub_1BCA4DD9C();
    OUTLINED_FUNCTION_0_61(MEMORY[0x1E69E7DE0]);
    v11 = v15;
    HIBYTE(v14) = 1;
    OUTLINED_FUNCTION_0_61(MEMORY[0x1E69E7DE0]);
    (*(v7 + 8))(v10, v5);
    v12 = v15;
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BCC86388(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1BCE1E100();
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1BFB30880](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x1BFB30880](*&v5);
  return sub_1BCE1E150();
}

unint64_t sub_1BCC86400()
{
  result = qword_1EBD0BB20;
  if (!qword_1EBD0BB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0BB20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CodableUnitPoint.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BCC86544()
{
  result = qword_1EBD0BB28;
  if (!qword_1EBD0BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0BB28);
  }

  return result;
}

unint64_t sub_1BCC8659C()
{
  result = qword_1EBD0BB30;
  if (!qword_1EBD0BB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0BB30);
  }

  return result;
}

unint64_t sub_1BCC865F4()
{
  result = qword_1EBD0BB38;
  if (!qword_1EBD0BB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0BB38);
  }

  return result;
}

uint64_t WeatherConditionBackgroundConfig.colliderAEnabled.getter()
{
  v2 = 1852399986;
  switch(*(v1 + 1652))
  {
    case 1:
      goto LABEL_5;
    case 2:
      v2 = OUTLINED_FUNCTION_13_32();
      goto LABEL_5;
    case 3:
      v2 = OUTLINED_FUNCTION_12_37();
LABEL_5:
      OUTLINED_FUNCTION_3_59(v2);
      OUTLINED_FUNCTION_17_23();
      result = 0;
      if (v0)
      {
        return result;
      }

      OUTLINED_FUNCTION_6_44();
      if (v6)
      {
        goto LABEL_7;
      }

      break;
    default:

      return 0;
  }

LABEL_8:
  v7 = 0;
  while (v4 != 3)
  {
    ++v4;
    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    OUTLINED_FUNCTION_0_62(v4, v5, v8, v9, v10);
  }

  return v7 ^ 1u;
}

uint64_t WeatherConditionBackgroundConfig.colliderBEnabled.getter()
{
  v2 = 1852399986;
  switch(*(v1 + 1652))
  {
    case 1:
      goto LABEL_5;
    case 2:
      v2 = OUTLINED_FUNCTION_13_32();
      goto LABEL_5;
    case 3:
      v2 = OUTLINED_FUNCTION_12_37();
LABEL_5:
      OUTLINED_FUNCTION_3_59(v2);
      OUTLINED_FUNCTION_17_23();
      result = 0;
      if (v0)
      {
        return result;
      }

      OUTLINED_FUNCTION_6_44();
      if (v6)
      {
        goto LABEL_7;
      }

      break;
    default:

      return 0;
  }

LABEL_8:
  v7 = 0;
  while (v4 != 3)
  {
    ++v4;
    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    OUTLINED_FUNCTION_0_62(v4, v5, v8, v9, v10);
  }

  return v7 ^ 1u;
}

uint64_t WeatherConditionBackgroundConfig.colliderCEnabled.getter()
{
  v2 = 1852399986;
  switch(*(v1 + 1652))
  {
    case 1:
      goto LABEL_5;
    case 2:
      v2 = OUTLINED_FUNCTION_13_32();
      goto LABEL_5;
    case 3:
      v2 = OUTLINED_FUNCTION_12_37();
LABEL_5:
      OUTLINED_FUNCTION_3_59(v2);
      OUTLINED_FUNCTION_17_23();
      result = 0;
      if (v0)
      {
        return result;
      }

      OUTLINED_FUNCTION_6_44();
      if (v6)
      {
        goto LABEL_7;
      }

      break;
    default:

      return 0;
  }

LABEL_8:
  v7 = 0;
  while (v4 != 3)
  {
    ++v4;
    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    OUTLINED_FUNCTION_0_62(v4, v5, v8, v9, v10);
  }

  return v7 ^ 1u;
}

uint64_t WeatherConditionBackgroundConfig.colliderDEnabled.getter()
{
  v2 = 1852399986;
  switch(*(v1 + 1652))
  {
    case 1:
      goto LABEL_5;
    case 2:
      v2 = OUTLINED_FUNCTION_13_32();
      goto LABEL_5;
    case 3:
      v2 = OUTLINED_FUNCTION_12_37();
LABEL_5:
      OUTLINED_FUNCTION_3_59(v2);
      OUTLINED_FUNCTION_17_23();
      result = 0;
      if (v0)
      {
        return result;
      }

      OUTLINED_FUNCTION_6_44();
      if (v6)
      {
        goto LABEL_7;
      }

      break;
    default:

      return 0;
  }

LABEL_8:
  v7 = 0;
  while (v4 != 3)
  {
    ++v4;
    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    OUTLINED_FUNCTION_0_62(v4, v5, v8, v9, v10);
  }

  return v7 ^ 1u;
}

uint64_t WeatherConditionBackgroundConfig.colliderEEnabled.getter()
{
  v2 = 1852399986;
  switch(*(v1 + 1652))
  {
    case 1:
      goto LABEL_5;
    case 2:
      v2 = OUTLINED_FUNCTION_13_32();
      goto LABEL_5;
    case 3:
      v2 = OUTLINED_FUNCTION_12_37();
LABEL_5:
      OUTLINED_FUNCTION_3_59(v2);
      OUTLINED_FUNCTION_17_23();
      result = 0;
      if (v0)
      {
        return result;
      }

      OUTLINED_FUNCTION_6_44();
      if (v6)
      {
        goto LABEL_7;
      }

      break;
    default:

      return 0;
  }

LABEL_8:
  v7 = 0;
  while (v4 != 3)
  {
    ++v4;
    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    OUTLINED_FUNCTION_0_62(v4, v5, v8, v9, v10);
  }

  return v7 ^ 1u;
}

uint64_t WeatherConditionBackgroundConfig.colliderFEnabled.getter()
{
  v2 = 1852399986;
  switch(*(v1 + 1652))
  {
    case 1:
      goto LABEL_5;
    case 2:
      v2 = OUTLINED_FUNCTION_13_32();
      goto LABEL_5;
    case 3:
      v2 = OUTLINED_FUNCTION_12_37();
LABEL_5:
      OUTLINED_FUNCTION_3_59(v2);
      OUTLINED_FUNCTION_17_23();
      result = 0;
      if (v0)
      {
        return result;
      }

      OUTLINED_FUNCTION_6_44();
      if (v6)
      {
        goto LABEL_7;
      }

      break;
    default:

      return 0;
  }

LABEL_8:
  v7 = 0;
  while (v4 != 3)
  {
    ++v4;
    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    OUTLINED_FUNCTION_0_62(v4, v5, v8, v9, v10);
  }

  return v7 ^ 1u;
}

BOOL WeatherConditionBackgroundConfig.shouldRandomizeClouds(lastConfig:forceRandomization:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_14_23(v233);
  if (v3)
  {
    return 1;
  }

  v197 = *(v1 + 776);
  v198 = *(v1 + 768);
  v6 = *(v1 + 784);
  v199 = *(v1 + 792);
  v7 = *(v1 + 800);
  v195 = *(v1 + 904);
  v196 = *(v1 + 896);
  v192 = *(v1 + 912);
  v193 = *(v1 + 920);
  v194 = *(v1 + 928);
  v190 = *(v1 + 1024);
  v191 = *(v1 + 1032);
  v188 = *(v1 + 1040);
  v189 = *(v1 + 1048);
  v186 = *(v1 + 1152);
  v187 = *(v1 + 1056);
  v184 = *(v1 + 1176);
  v185 = *(v1 + 1160);
  v182 = *(v1 + 1184);
  v183 = *(v1 + 1168);
  v180 = *(v1 + 1248);
  v181 = *(v1 + 1240);
  v178 = *(v1 + 1256);
  v179 = *(v1 + 1264);
  v177 = *(v1 + 1272);
  v8 = *(v1 + 1646);
  v9 = *(v1 + 1647);
  v10 = *(v1 + 1648);
  v11 = *(v1 + 1649);
  v12 = *(v1 + 1650);
  v13 = *(v1 + 1651);
  v14 = &v223;
  OUTLINED_FUNCTION_14_23(v232);
  OUTLINED_FUNCTION_38_1(v232);
  if (v39)
  {
    v15 = 2;
  }

  else
  {
    v16 = 256;
    if (!v232[1647])
    {
      v16 = 0;
    }

    v17 = v16 | v232[1646];
    v18 = 0x10000;
    if (!v232[1648])
    {
      v18 = 0;
    }

    v19 = 0x1000000;
    if (!v232[1649])
    {
      v19 = 0;
    }

    v20 = v17 | v18 | v19;
    v21 = 0x100000000;
    if (!v232[1650])
    {
      v21 = 0;
    }

    v22 = 0x10000000000;
    if (!v232[1651])
    {
      v22 = 0;
    }

    v15 = v20 | v21 | v22;
  }

  v23 = 256;
  if (!v9)
  {
    v23 = 0;
  }

  v24 = 0x10000;
  if (!v10)
  {
    v24 = 0;
  }

  v25 = 0x1000000;
  if (!v11)
  {
    v25 = 0;
  }

  v26 = 0x100000000;
  if (!v12)
  {
    v26 = 0;
  }

  v27 = 0x10000000000;
  if (!v13)
  {
    v27 = 0;
  }

  v224 = (v26 | v27) >> 32;
  v223 = v23 | v8 | v24 | v25;
  v225 = v15;
  v226 = WORD2(v15);
  WORD2(v208) = v224;
  LODWORD(v208) = v223;
  if (v15 == 2)
  {
    return 1;
  }

  v28 = OUTLINED_FUNCTION_18_20();
  if (!static WeatherConditionBackgroundConfig.Layers.CloudLayers.== infix(_:_:)(v28, (v29 | 6)))
  {
    return 1;
  }

  OUTLINED_FUNCTION_14_23(&v223);
  OUTLINED_FUNCTION_38_1(&v223);
  if (v39)
  {
    v30 = v7;
    v31 = v6;
    v33 = v198;
    v32 = v199;
    v34 = v197;
    if (v197)
    {
      v14 = 0;
      v37 = 0;
      v38 = 0;
      v35 = 0;
LABEL_67:

      v65 = OUTLINED_FUNCTION_1_59();
      sub_1BCAA84D4(v65, v66, v67, v68);

      v36 = 0;
      goto LABEL_68;
    }

LABEL_47:

    sub_1BC983420(v33, 0, v31, v32);
    goto LABEL_48;
  }

  v14 = v227;
  v36 = v228;
  v37 = v229;
  v38 = v230;
  v176 = v231;

  v30 = v7;
  v31 = v6;
  v34 = v197;
  if (!v197)
  {
    v33 = v198;
    v32 = v199;
    if (v36)
    {

      v35 = v176;
LABEL_68:
      v208 = v33;
      v209 = v34;
      v210 = v31;
      v211 = v32;
      v212 = v30;
      v213 = v14;
      v214 = v36;
      v215 = v37;
      v216 = v38;
      v217 = v35;
      v69 = OUTLINED_FUNCTION_18_20();
LABEL_156:
      sub_1BCC877BC(v69);
      return 1;
    }

    goto LABEL_47;
  }

  v33 = v198;
  v32 = v199;
  if (!v36)
  {
    v35 = v176;
    goto LABEL_67;
  }

  v39 = v198 == v14 && v36 == v197;
  if (!v39 && (sub_1BCE1E090() & 1) == 0)
  {

    v88 = OUTLINED_FUNCTION_1_59();
    sub_1BCAA84D4(v88, v89, v90, v91);
    OUTLINED_FUNCTION_10_38();
    sub_1BC983420(v92, v93, v94, v95);
LABEL_94:

    v96 = OUTLINED_FUNCTION_1_59();
LABEL_167:
    sub_1BC983420(v96, v97, v98, v99);
    return 1;
  }

  if (v31 == v37 && v38 == v199)
  {

    v70 = OUTLINED_FUNCTION_1_59();
    sub_1BCAA84D4(v70, v71, v72, v73);
    v74 = v14;
    v14 = v176;
    sub_1BC983420(v74, v36, v31, v38);
  }

  else
  {
    OUTLINED_FUNCTION_10_38();
    v175 = sub_1BCE1E090();

    v41 = OUTLINED_FUNCTION_1_59();
    sub_1BCAA84D4(v41, v42, v43, v44);
    OUTLINED_FUNCTION_10_38();
    v14 = v176;
    sub_1BC983420(v45, v46, v47, v48);
    if ((v175 & 1) == 0)
    {
      goto LABEL_94;
    }
  }

  v75 = OUTLINED_FUNCTION_1_59();
  sub_1BC983420(v75, v76, v77, v78);
  if (v30 != v14)
  {
    return 1;
  }

LABEL_48:
  v49 = OUTLINED_FUNCTION_18_20();
  OUTLINED_FUNCTION_14_23(v49);
  v50 = OUTLINED_FUNCTION_18_20();
  OUTLINED_FUNCTION_38_1(v50);
  if (v39)
  {
    v52 = v193;
    v51 = v194;
    v53 = v195;
    if (v195)
    {
      v32 = 0;
      v55 = 0;
      v30 = 0;
      v14 = 0;
LABEL_65:
      v62 = v53;

      v63 = v196;
      v64 = v192;
      sub_1BCAA84D4(v196, v62, v192, v52);

      v54 = 0;
LABEL_74:
      v207[0] = v63;
      v207[1] = v62;
      v207[2] = v64;
      v207[3] = v52;
      v207[4] = v51;
      v207[5] = v32;
      v207[6] = v54;
      v207[7] = v55;
      v207[8] = v30;
      v207[9] = v14;
      v69 = v207;
      goto LABEL_156;
    }

LABEL_75:

    sub_1BC983420(v196, 0, v192, v52);
    goto LABEL_76;
  }

  v32 = v218;
  v54 = v219;
  v55 = v220;
  v30 = v221;
  v14 = v222;

  v52 = v193;
  v51 = v194;
  v53 = v195;
  if (!v195)
  {
    if (v219)
    {
      v62 = 0;

      v64 = v192;
      v63 = v196;
      goto LABEL_74;
    }

    goto LABEL_75;
  }

  if (!v219)
  {
    goto LABEL_65;
  }

  v56 = v196 == v218 && v219 == v195;
  if (!v56 && (sub_1BCE1E090() & 1) == 0)
  {

    OUTLINED_FUNCTION_10_38();
    sub_1BCAA84D4(v121, v122, v123, v124);
    sub_1BC983420(v218, v219, v220, v221);
LABEL_121:

    OUTLINED_FUNCTION_7_47();
    goto LABEL_167;
  }

  if (v192 == v220 && v221 == v193)
  {

    OUTLINED_FUNCTION_7_47();
    sub_1BCAA84D4(v104, v105, v106, v107);
    sub_1BC983420(v218, v219, v192, v221);
  }

  else
  {
    v200 = sub_1BCE1E090();

    OUTLINED_FUNCTION_7_47();
    sub_1BCAA84D4(v58, v59, v60, v61);
    sub_1BC983420(v218, v219, v220, v221);
    if ((v200 & 1) == 0)
    {
      goto LABEL_121;
    }
  }

  OUTLINED_FUNCTION_7_47();
  sub_1BC983420(v108, v109, v110, v111);
  if (v194 != v222)
  {
    return 1;
  }

LABEL_76:
  OUTLINED_FUNCTION_14_23(v207);
  OUTLINED_FUNCTION_38_1(v207);
  if (v39)
  {
    v79 = v187;
    if (v191)
    {
      OUTLINED_FUNCTION_9_37();
LABEL_95:
      v100 = v80;

      v101 = v189;

      v102 = v190;
      v103 = v188;
      OUTLINED_FUNCTION_15_28(v190, v100);

      v81 = 0;
LABEL_101:
      __dst[0] = v102;
      __dst[1] = v100;
      __dst[2] = v103;
      __dst[3] = v101;
      __dst[4] = v79;
      __dst[5] = v30;
      __dst[6] = v81;
      __dst[7] = v32;
      __dst[8] = v14;
      __dst[9] = v5;
      v69 = __dst;
      goto LABEL_156;
    }

LABEL_102:

    v5 = v189;

    sub_1BC983420(v190, 0, v188, v189);
    goto LABEL_103;
  }

  v30 = v207[128];
  v81 = v207[129];
  v32 = v207[130];
  v14 = v207[131];
  v5 = v207[132];

  v79 = v187;
  v80 = v191;
  if (!v191)
  {
    if (v81)
    {
      v101 = v189;
      v100 = 0;

      v103 = v188;
      v102 = v190;
      goto LABEL_101;
    }

    goto LABEL_102;
  }

  if (!v81)
  {
    goto LABEL_95;
  }

  v82 = v190 == v30 && v81 == v191;
  if (!v82 && (OUTLINED_FUNCTION_16_27(v190, v191) & 1) == 0)
  {

    sub_1BCAA84D4(v190, v191, v188, v189);
    OUTLINED_FUNCTION_5_46();
LABEL_148:

    v96 = OUTLINED_FUNCTION_4_48();
    goto LABEL_167;
  }

  if (v188 == v32 && v14 == v189)
  {

    v131 = OUTLINED_FUNCTION_4_48();
    sub_1BCAA84D4(v131, v132, v133, v134);
    OUTLINED_FUNCTION_8_43();
  }

  else
  {
    v201 = OUTLINED_FUNCTION_11_33(v188);

    v84 = OUTLINED_FUNCTION_4_48();
    sub_1BCAA84D4(v84, v85, v86, v87);
    OUTLINED_FUNCTION_5_46();
    if ((v201 & 1) == 0)
    {
      goto LABEL_148;
    }
  }

  v135 = OUTLINED_FUNCTION_4_48();
  sub_1BC983420(v135, v136, v137, v138);
  if (v187 != v5)
  {
    return 1;
  }

LABEL_103:
  memcpy(__dst, v233, 0x918uLL);
  OUTLINED_FUNCTION_38_1(__dst);
  if (v39)
  {
    v112 = v185;
    if (v185)
    {
      OUTLINED_FUNCTION_9_37();
LABEL_122:
      v125 = v112;

      v126 = v184;

      v127 = v186;
      v128 = v112;
      v129 = v182;
      v130 = v183;
      OUTLINED_FUNCTION_15_28(v186, v128);

      v113 = 0;
LABEL_128:
      v205[0] = v127;
      v205[1] = v125;
      v205[2] = v130;
      v205[3] = v126;
      v205[4] = v129;
      v205[5] = v30;
      v205[6] = v113;
      v205[7] = v32;
      v205[8] = v14;
      v205[9] = v5;
      v69 = v205;
      goto LABEL_156;
    }

LABEL_129:

    v5 = v184;

    sub_1BC983420(v186, 0, v183, v184);
    goto LABEL_130;
  }

  v30 = __dst[144];
  v113 = __dst[145];
  v32 = __dst[146];
  v14 = __dst[147];
  v5 = __dst[148];

  v112 = v185;
  if (!v185)
  {
    if (v113)
    {
      v126 = v184;
      v125 = 0;

      v129 = v182;
      v130 = v183;
      v127 = v186;
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  if (!v113)
  {
    goto LABEL_122;
  }

  v114 = v186 == v30 && v113 == v185;
  if (!v114 && (OUTLINED_FUNCTION_16_27(v186, v185) & 1) == 0)
  {

    v163 = v184;

    v164 = v186;
    v165 = v185;
    v166 = v183;
LABEL_165:
    sub_1BCAA84D4(v164, v165, v166, v163);
    OUTLINED_FUNCTION_5_46();
LABEL_166:

    v96 = OUTLINED_FUNCTION_2_64();
    goto LABEL_167;
  }

  if (v183 == v32 && v14 == v184)
  {

    v154 = OUTLINED_FUNCTION_2_64();
    v117 = v182;
    sub_1BCAA84D4(v154, v155, v156, v157);
    OUTLINED_FUNCTION_8_43();
  }

  else
  {
    v202 = OUTLINED_FUNCTION_11_33(v183);

    v116 = OUTLINED_FUNCTION_2_64();
    v117 = v182;
    sub_1BCAA84D4(v116, v118, v119, v120);
    OUTLINED_FUNCTION_5_46();
    if ((v202 & 1) == 0)
    {
      goto LABEL_166;
    }
  }

  v158 = OUTLINED_FUNCTION_2_64();
  sub_1BC983420(v158, v159, v160, v161);
  if (v117 != v5)
  {
    return 1;
  }

LABEL_130:
  memcpy(v205, v233, 0x918uLL);
  OUTLINED_FUNCTION_38_1(v205);
  if (v39)
  {
    v139 = v180;
    if (v180)
    {
      OUTLINED_FUNCTION_9_37();
LABEL_149:
      v148 = v139;

      v149 = v179;

      v150 = v181;
      v151 = v139;
      v152 = v177;
      v153 = v178;
      OUTLINED_FUNCTION_15_28(v181, v151);

      v140 = 0;
LABEL_155:
      v204[0] = v150;
      v204[1] = v148;
      v204[2] = v153;
      v204[3] = v149;
      v204[4] = v152;
      v204[5] = v30;
      v204[6] = v140;
      v204[7] = v32;
      v204[8] = v14;
      v204[9] = v5;
      v69 = v204;
      goto LABEL_156;
    }

LABEL_158:

    sub_1BC983420(v181, 0, v178, v179);
    return 0;
  }

  v30 = v205[155];
  v140 = v205[156];
  v32 = v205[157];
  v14 = v205[158];
  v5 = v205[159];

  v139 = v180;
  if (!v180)
  {
    if (v140)
    {
      v149 = v179;
      v148 = 0;

      v152 = v177;
      v153 = v178;
      v150 = v181;
      goto LABEL_155;
    }

    goto LABEL_158;
  }

  if (!v140)
  {
    goto LABEL_149;
  }

  v141 = v181 == v30 && v140 == v180;
  if (!v141 && (OUTLINED_FUNCTION_16_27(v181, v180) & 1) == 0)
  {

    v163 = v179;

    v164 = v181;
    v165 = v180;
    v166 = v178;
    goto LABEL_165;
  }

  if (v178 == v32 && v14 == v179)
  {

    v167 = OUTLINED_FUNCTION_2_64();
    v144 = v177;
    sub_1BCAA84D4(v167, v168, v169, v170);
    OUTLINED_FUNCTION_8_43();
  }

  else
  {
    v203 = OUTLINED_FUNCTION_11_33(v178);

    v143 = OUTLINED_FUNCTION_2_64();
    v144 = v177;
    sub_1BCAA84D4(v143, v145, v146, v147);
    OUTLINED_FUNCTION_5_46();
    if ((v203 & 1) == 0)
    {
      goto LABEL_166;
    }
  }

  v171 = OUTLINED_FUNCTION_2_64();
  sub_1BC983420(v171, v172, v173, v174);
  return v144 != v5;
}