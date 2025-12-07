uint64_t sub_1001EF20C@<X0>(int a1@<W8>)
{
  v6 = 545 * (*(v4 + (85 * (v1 & 0xF) - 15386) % 0x3CDu) ^ 0x65 ^ (16 * (*(v4 + (85 * (v1 >> v2) - 15386) % 0x3CDu) & 0xF))) + 319915;
  v7 = ((*(v3 + (v6 - 928 * ((4628198 * v6) >> 32))) & 0xF0) >> 4) ^ 0xD;
  v8 = 85 * v7;
  if (v7 >= 0xC)
  {
    v8 = 85 * v7 - 973;
  }

  *(v4 + (85 * v1 + 58140) % 0x3CD) = 16 * *(v4 + v8);
  return (*(v5 + 8 * ((7455 * (v1 == 255)) ^ a1)))();
}

uint64_t sub_1001EF304(int a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7, int a8)
{
  v17 = ((v13 ^ 0x3005) - 398960837) ^ a3;
  v18 = (((a3 + 14) ^ a3 ^ (2 - a3)) ^ (((a3 ^ 0xE) + 4) ^ ((a3 ^ 3) - 1))) & 0xF;
  v19 = 2 * (a3 & 0x10E);
  v20 = (v19 | 0x4C228000) & v17 | 0x22547EA2;
  v21 = (2 * v17) & 0x43FA ^ 0x4009 ^ ((2 * v17) ^ 0x92670BF6) & v17;
  v22 = (4 * (v19 & 0xFFFFFFFB ^ a3 & 0x10E ^ v20)) & 0x7E2207F8 ^ v19 & 0xFFFFFFFB ^ a3 & 0x10E ^ v20 ^ ((4 * (v19 & 0xFFFFFFFB ^ a3 & 0x10E ^ v20)) ^ 0xE7737E88) & v21;
  v23 = (4 * v21) & (v11 + 8) ^ 0x620C013 ^ ((4 * v21) ^ 0x96A99BEC) & v21;
  v24 = (16 * v22) & v11 ^ v22 ^ ((16 * v22) ^ 0xA547C2A0) & v23;
  v25 = (16 * v23) & v11 ^ 0x1C02804B ^ ((16 * v23) ^ 0xE22C7FB0) & v23;
  v26 = v24 ^ (v24 << 8) & (v11 - 240) ^ ((v24 << 8) ^ 0x56BE8A00) & v25;
  v27 = ((v26 ^ 0x2656FB71) << 16) & 0x7E220000 ^ v26 ^ 0x2656FB71 ^ (((v26 ^ 0x2656FB71) << 16) ^ 0x47FB0000) & ((v25 << 8) & 0x7E220000 ^ 0x5C200000 ^ ((v25 << 8) ^ 0x22C70000) & v25);
  v28 = (((v18 ^ 0xA51D) + 5846) ^ ((v18 ^ 0xE676) + 21951) ^ ((v18 ^ 0x4369) - 3934)) * v9 + 4479;
  v29 = (((((a3 ^ (2 * v27)) >> 4) ^ 0x3FB7978D) + 213550688) ^ ((((a3 ^ (2 * v27)) >> 4) ^ 0x3B5F4132) + 139612385) ^ ((((a3 ^ (2 * v27)) >> 4) ^ 0xA896590) + 964981827)) * v9 - 1695636080;
  v30 = a3 * v9 - 170190998;
  LOBYTE(v28) = *(v14 + (v28 - (((v28 * a1) >> 16) >> 8) * a2));
  v31 = (v30 ^ 0xFDE1A77A) & (2 * (v30 & 0xE105C47B)) ^ v30 & 0xE105C47B;
  v32 = ((2 * (v30 ^ 0x7FEBA71E)) ^ 0x3DDCC6CA) & (v30 ^ 0x7FEBA71E) ^ (2 * (v30 ^ 0x7FEBA71E)) & v10;
  v33 = v32 ^ 0x82222125;
  v34 = (v32 ^ 0xC0C0240) & (4 * v31) ^ v31;
  v35 = ((4 * v33) ^ 0x7BB98D94) & v33 ^ (4 * v33) & v10;
  v36 = (v35 ^ 0x1AA80100) & (16 * v34) ^ v34;
  v37 = ((16 * (v35 ^ 0x84466261)) ^ 0xEEE63650) & (v35 ^ 0x84466261) ^ (16 * (v35 ^ 0x84466261)) & (v10 - 4);
  LOBYTE(v28) = (v28 - ((2 * v28) & 0x62) + 49) ^ (16 * *(v14 + v29 - (((v29 * v12) >> 32) >> 6) * a2));
  v38 = v36 ^ (v10 + 1) ^ (v37 ^ 0x8EE62200) & (v36 << 8);
  v39 = v30 ^ (2 * ((v38 << 16) & 0x1EEE0000 ^ v38 ^ ((v38 << 16) ^ 0x63650000) & (((v37 ^ 0x10084125) << 8) & 0x1EEE0000 ^ 0x108C0000 ^ (((v37 ^ 0x10084125) << 8) ^ 0xEE630000) & (v37 ^ 0x10084125)))) ^ 0xECB3DA89;
  v40 = 0x435AC553EE1BE4 * (((v39 ^ 0x8CC58858691722CLL) - 0x8CC58858691722CLL) ^ ((v39 ^ 0x25A67D61090EFD00) + 0x5A59829EF6F10300) ^ ((v39 ^ 0x2D6A25E4BB3D5714) + 0x5295DA1B44C2A8ECLL)) + 0xB6F0BAF567348BDLL;
  v41 = v40 ^ ((v40 ^ 0xBB5E589F9D672D69) - 0x196F6FC381EBE3B4) ^ ((v40 ^ 0x8CD1192314B2628DLL) - 0x2EE02E7F083EAC50) ^ ((v40 ^ 0xFE40703FEB155CD7) - 0x5C714763F799920ALL) ^ ((v40 ^ 0x6BFE06DF7E4CDDEELL) + 0x3630CE7C9D3FECCDLL);
  v42 = ((v41 ^ 0x5076F0FD4535F7A1) + 0x71178384133BE990) ^ ((v41 ^ 0x6038F68174ABB1B8) + 0x415985F822A5AF97);
  LOBYTE(v28) = *(v8 + ((v28 ^ 0xAB) * a6 + 10355 - ((((v28 ^ 0xABu) * a6 + 10355) * a7) >> 32) * a8));
  v43 = v28 ^ 0xCE ^ (((8 * v28) ^ 0xC0) + 120);
  *(v14 + __CFADD__((v42 ^ ((v41 ^ 0x927F31202D1288C4) - 0x4CE1BDA684E36915)) * a2, 0xE7ECFE43CCCBD09CLL) + (((v42 ^ ((v41 ^ 0x927F31202D1288C4) - 0x4CE1BDA684E36915)) * a2) >> 64) + ((__CFADD__(v41 ^ 0x5076F0FD4535F7A1, 0x71178384133BE990) - 1) ^ (__CFADD__(v41 ^ 0x6038F68174ABB1B8, 0x415985F822A5AF97) - 1) ^ (__CFADD__(v41 ^ 0x927F31202D1288C4, 0xB31E42597B1C96EBLL) - 1)) * a2 + 473) = *(v14 + (v43 * v9 - (((1465655 * v43) >> 16) >> 8) * a2));
  return (*(v15 + 8 * ((16345 * (a3 + 1 == v16 + 256)) ^ v13)))();
}

uint64_t sub_1001EF990(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v8 = 545 * (*(v6 + ((((17 - a4) | (a4 + 590)) & 0x55) * (a4 + 590)) % 0x3CDu) ^ 2) + 159685;
  *(v6 + (335 * (a5 ^ 0x23B4u) + 76060 + 85 * a4) % 0x3CD) = *(v5 + (v8 - 928 * ((4628198 * v8) >> 32))) ^ 0x15;
  return (*(v7 + 8 * (a5 | (4 * (a4 != 15)))))(a1, a2, a3);
}

uint64_t sub_1001EFA5C@<X0>(__int16 a1@<W8>)
{
  v9 = *(v3 + ((v4 ^ 7) * v5) % ((v6 ^ 0x1B29) - 1499)) ^ 0xEA;
  *(v7 + (v4 * a1 - 15386 - ((((v4 * a1 - 15386) * v1) >> 16) >> 8) * v2)) = *(v7 + (v9 * a1 - (((1465655 * v9) >> 16) >> 8) * v2));
  return (*(v8 + 8 * ((55 * (v4 == 15)) ^ v6)))();
}

uint64_t sub_1001EFAF0()
{
  v2 = LODWORD(STACK[0x540]) != LODWORD(STACK[0x570]);
  LODWORD(STACK[0x560]) = -156740173;
  LODWORD(STACK[0x570]) = -825929951;
  LODWORD(STACK[0x558]) = 448210047;
  return (*(v1 + 8 * ((((((v0 + 8855) | 0xC0) + 5) ^ v0 ^ 0x25A9) * v2) ^ v0)))();
}

uint64_t sub_1001EFB5C(uint64_t a1, int a2)
{
  v2 = LODWORD(STACK[0x568]) + 1309705011;
  LODWORD(STACK[0x550]) = 448210047;
  v3 = (*STACK[0x398] ^ 0x7F3BFDFF) + 2 * *STACK[0x398] + 1766700689;
  v4 = (v3 ^ 0x6A80BDD4) & (2 * (v3 & 0x6C9539D1)) ^ v3 & 0x6C9539D1;
  v5 = ((2 * (v3 ^ 0x6280FCF4)) ^ 0x1C2B8A4A) & (v3 ^ 0x6280FCF4) ^ (2 * (v3 ^ 0x6280FCF4)) & 0xE15C524;
  v6 = (v5 ^ 0x4018000) & (4 * v4) ^ v4;
  v7 = ((4 * (v5 ^ 0x2144525)) ^ 0x38571494) & (v5 ^ 0x2144525) ^ (4 * (v5 ^ 0x2144525)) & 0xE15C524;
  v8 = (v7 ^ 0x8150400) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x600C121)) ^ 0xE15C5250) & (v7 ^ 0x600C121) ^ (16 * (v7 ^ 0x600C121)) & 0xE15C520;
  v10 = v8 ^ 0xE15C525 ^ (v9 ^ 0x144000) & (v8 << 8);
  v11 = v3 ^ (2 * ((v10 << 16) & 0xE150000 ^ v10 ^ ((v10 << 16) ^ 0x45250000) & (((v9 ^ 0xE018525) << 8) & 0xE150000 ^ 0xA100000 ^ (((v9 ^ 0xE018525) << 8) ^ 0x15C50000) & (v9 ^ 0xE018525))));
  v12 = v11 & 0xCF4C1701;
  v13 = -1951274857 - 325739921 * (((v11 ^ 0x1546141C) + 1898760339) ^ ((v11 ^ 0x8CD11B98) - 390346985) ^ ((v11 ^ 0xE123BC1F) - 2058788718));
  v14 = ((((((((v12 ^ 0x96CB4E57) + 1474649634) ^ ((v12 ^ 0x40CC4964) - 2115872493) ^ ((v12 ^ 0x514F0333) - 1872686266)) + (((v12 ^ 0xB30CF478) + 1655819676) ^ ((v12 ^ 0x7A8ADDFE) - 1422400482) ^ ((v12 ^ 0x81823A87) + 1346306917)) + 1351920037 + v13) % 0x101) ^ v13) - 656420664) ^ LODWORD(STACK[0x550])) - 1571657655;
  v15 = v14 + 813160837;
  v16 = v14 ^ LODWORD(STACK[0x550]);
  v17 = -156740173 - v14;
  HIDWORD(v18) = v14;
  LODWORD(v18) = v14;
  v19 = v16 ^ 0x1FBF321F ^ ((v18 >> 28) + 1189044567 - ((2 * ((v18 >> 28) + 656420664)) & 0x3F7E643E));
  v20 = (v19 - 641095770) ^ v15;
  HIDWORD(v18) = v19 - 641095770;
  LODWORD(v18) = v19 - 641095770;
  v21 = v19 - 641095770 + v17;
  v22 = (v18 >> 29) - (v21 + v20);
  v23 = v16 ^ 0xB32221A8 ^ (v19 - 641095770);
  v24 = v2 < 0x23C1E824;
  v25 = ((85906655 - v19) | (v19 + 2061576992)) & 0x4F4E6F86;
  v26 = v23 ^ v25 ^ (v22 - 1289608792 - ((2 * v22) & 0x66444350));
  v27 = v22 ^ v25;
  HIDWORD(v18) = v26;
  LODWORD(v18) = v26;
  v28 = v20 - v26 + (v26 ^ v21) + (v18 >> 31);
  if (v2 >= 0x23C1E824)
  {
    v24 = v2 > 0x23C1E825;
  }

  v29 = v27 ^ 0x6A190026 ^ v28;
  v30 = v24 ^ 0x6B32BBF3;
  if (v24)
  {
    v31 = 2;
  }

  else
  {
    v31 = 0;
  }

  LODWORD(STACK[0x550]) = v29 + v27;
  return (*(STACK[0x480] + 8 * ((15503 * (v30 + v31 == 1798487027)) ^ (a2 - 4632))))();
}

uint64_t sub_1001EFFCC(int a1)
{
  v1 = LODWORD(STACK[0x568]) - 899411231;
  v2 = v1 < 0xA01577D2 || v1 > 0xA01577D3;
  return (*(STACK[0x480] + 8 * ((23 * v2) ^ (a1 - 2056))))();
}

uint64_t sub_1001F0390@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x530]) = 1876742811;
  LODWORD(STACK[0x538]) = -2087301595;
  LODWORD(STACK[0x53C]) = -156740173;
  LODWORD(STACK[0x550]) = 448210047;
  return (*(v1 + 8 * ((((a1 ^ 0x3FE3) - 4713) * (((LODWORD(STACK[0x540]) != 346094117) ^ 0xDE623DF3) + 2 * (LODWORD(STACK[0x540]) != 346094117) != -563986957)) ^ (a1 - 10338))))();
}

uint64_t sub_1001F0454@<X0>(int a1@<W1>, int a2@<W8>)
{
  v5 = LODWORD(STACK[0x568]) - 1187697373;
  v6 = v5 < 0x8EE69214;
  v7 = LODWORD(STACK[0x570]) + ((*v3 ^ 0xEF3EFF77) + 771056893 + ((2 * *v3) & 0xEE) + 1482) * ((a1 ^ a2) - 325744834) + 2123061549;
  v8 = (((v7 % 0x101) ^ v7) - (LODWORD(STACK[0x560]) + 813160837)) ^ LODWORD(STACK[0x558]);
  v9 = ((2 * v8) & 0x44A4D092) + (v8 ^ 0xA2526849);
  v10 = v9 + 813160837;
  v11 = v9 ^ LODWORD(STACK[0x558]);
  v12 = LODWORD(STACK[0x560]) - v9;
  HIDWORD(v13) = v9;
  LODWORD(v13) = v9;
  v14 = ((LODWORD(STACK[0x560]) + 813160837 + (v13 >> 28)) ^ v11) - 641095770;
  v15 = v14 + v12;
  v16 = v14 ^ v10;
  v17 = v14 ^ v11;
  HIDWORD(v13) = v14;
  LODWORD(v13) = v14;
  v18 = (v13 >> 29) - (v16 + v15);
  v19 = v17 ^ v18 ^ 0x4F4E6F86;
  v20 = v16 - v19;
  v21 = v19 ^ v15;
  HIDWORD(v13) = v19;
  LODWORD(v13) = v19;
  v22 = v13 >> 31;
  if (v5 >= 0x8EE69214)
  {
    v6 = v5 > 0x8EE69215;
  }

  v23 = v18 ^ 0x25576FA0 ^ (v20 + v21 + v22);
  LODWORD(STACK[0x558]) = v23 + (v18 ^ 0x4F4E6F86);
  LODWORD(STACK[0x570]) = v23;
  LODWORD(STACK[0x560]) = v23 ^ v21;
  return (*(v4 + 8 * ((4939 * v6) ^ v2)))(2123061549);
}

uint64_t sub_1001F0608()
{
  LODWORD(STACK[0x3F8]) = 0;
  STACK[0x2E0] = 0;
  v2 = (v0 - 4902) | 0x1464;
  v3 = LODWORD(STACK[0x568]) - 1808540095;
  v4 = 1521593833 - LODWORD(STACK[0x568]);
  v5 = (v4 ^ 0x38FFB4A7) & (2 * (v4 & 0xBAFFB6C7)) ^ v4 & 0xBAFFB6C7;
  LODWORD(STACK[0x568]) = v2;
  v6 = ((v2 + 1297778785) ^ (2 * (v4 ^ 0x1C52F8AF))) & (v4 ^ 0x1C52F8AF) ^ (2 * (v4 ^ 0x1C52F8AF)) & 0xA6AD4E68;
  v7 = v6 ^ 0xA2A54228;
  v8 = (v6 ^ 0x4080C00) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0x9AB539A0) & v7 ^ (4 * v7) & 0xA6AD4E68;
  v10 = (v9 ^ 0x82A50820) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x24084648)) ^ 0x6AD4E680) & (v9 ^ 0x24084648) ^ (16 * (v9 ^ 0x24084648)) & 0xA6AD4E60;
  v12 = v10 ^ 0xA6AD4E68 ^ (v11 ^ 0x22844600) & (v10 << 8);
  v13 = v4 ^ (2 * ((v12 << 16) & 0x8F8F8F8F ^ v12 ^ ((v12 << 16) ^ 0x6000000) & (((v11 ^ 0x84290868) << 8) & 0x26AD0000 ^ 0x2810000 ^ (((v11 ^ 0x84290868) << 8) ^ 0x2D4E0000) & (v11 ^ 0x84290868))));
  LODWORD(STACK[0x2DC]) = v3;
  v14 = (((v3 ^ 0xB0737079) + 644468085) ^ v3 ^ ((v3 ^ 0x3D469489) + 727460229) ^ ((v3 ^ 0x1B2E58DC) + 221570514) ^ ((v3 ^ 0x3FFEFEDE) + 702825428)) & 0x2D2B7D2E;
  LODWORD(STACK[0x2D8]) = (((v14 ^ 0x85FD5A80) - 728300979) ^ ((v14 ^ 0x7053CD4E) + 557421955) ^ ((v14 ^ 0xDC8FD7EC) - 1914335455)) - 1984106899 + (((v13 & 0x2D2B7D2E ^ 0xEACE1EB8) - 1679668130) ^ ((v13 & 0x2D2B7D2E ^ 0xC6270CD) + 2102272553) ^ ((v13 & 0x2D2B7D2E ^ 0xCF8D4673) - 1096739689));
  LODWORD(STACK[0x3B8]) = -131425;
  LODWORD(STACK[0x404]) = -603998701;
  LODWORD(STACK[0x3B4]) = 1326870810;
  LODWORD(STACK[0x3B0]) = 4262043;
  LODWORD(STACK[0x464]) = 536753161;
  LODWORD(STACK[0x460]) = 101337870;
  LODWORD(STACK[0x3AC]) = -1886056694;
  LODWORD(STACK[0x304]) = 1542180380;
  LODWORD(STACK[0x300]) = -1919920704;
  LODWORD(STACK[0x2FC]) = 1311791;
  LODWORD(STACK[0x2F8]) = 366092;
  LODWORD(STACK[0x2F4]) = -424760658;
  v15 = STACK[0x568];
  v16 = (LODWORD(STACK[0x530]) + 1592294534) ^ (LODWORD(STACK[0x568]) + 385 + LODWORD(STACK[0x538]) - 1394510480);
  v17 = (((v16 ^ LODWORD(STACK[0x550]) ^ 0x3684C3C6) - 1023169110) ^ ((v16 ^ LODWORD(STACK[0x550]) ^ 0x59289EE3) - 1397755763) ^ ((v16 ^ LODWORD(STACK[0x550]) ^ 0x6FAC5D25) - 1708444853)) - (((v16 ^ 0xFD76F76B) + 1896856202) ^ ((v16 ^ 0x4A9F8312) - 957952271) ^ ((v16 ^ 0xB7E97479) + 999307676));
  LODWORD(STACK[0x3F4]) = (LODWORD(STACK[0x530]) ^ 1) - 122;
  v18 = *(v1 + 8 * (v15 ^ 0xE7));
  LODWORD(STACK[0x560]) = v17;
  return v18();
}

uint64_t sub_1001F0B9C@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W4>, int a4@<W5>, int a5@<W8>)
{
  v15 = v7 + a3 + 2141159007;
  v16 = v14;
  v17 = v5 + v14 + 1389362121;
  LODWORD(STACK[0x41C]) = a4 + 96100879;
  LODWORD(STACK[0x420]) = LODWORD(STACK[0x2D8]) + v6;
  LODWORD(STACK[0x430]) = a5 - 1423110175;
  v18 = v15 + a4 + 1748708343;
  v19 = a2 + a5 + 1955808426;
  LODWORD(STACK[0x568]) = a1 - 4990;
  LODWORD(STACK[0x410]) = ((a1 - 4990) ^ 0xB3C086FE) + v5;
  v20 = a4 + v8 + 196069378;
  v21 = v5 + v19;
  v22 = v17 + v19;
  v23 = v21 + v22;
  v24 = v15 + v20;
  v25 = v7 + v20 + v24;
  v26 = v25 + 1259924955 + a4 + 1748708343;
  v27 = v26 + 1408327297;
  v28 = v26 + v18;
  LODWORD(STACK[0x454]) = 2075244980 - v26;
  v29 = v17 + a2 - 2018064426;
  v30 = v23 + 560195897;
  v31 = v23 + 560195897 + a2 - 2018064426;
  v32 = v31 + 1893979842;
  v33 = v29 + 2070825295 + v31 + 1893979842;
  v34 = ((v27 ^ 0x2A7640CA) + 1077604304) ^ ((v27 ^ 0x80DCE90) + 1648451990) ^ ((v27 ^ 0x215D2BF) + 1750695355);
  LODWORD(STACK[0x418]) = v29 - 2086588674;
  LODWORD(STACK[0x458]) = 897508670 - v23;
  LODWORD(STACK[0x40C]) = v25 + 1283754944;
  LODWORD(STACK[0x438]) = -1244246252 - v22;
  LODWORD(STACK[0x434]) = v31 - 632055692;
  LODWORD(STACK[0x424]) = v24 + 202092598;
  v35 = v24 + v25 + 1259924955 - v34 - 697776801;
  LODWORD(STACK[0x448]) = -511780467 - v18;
  v36 = v34 + 200542010;
  v37 = v24 - v28 - 9182184 + v34;
  v38 = v22 + v30 - (v32 ^ 0x206E5CE5) - 616410825;
  v39 = v22 - v33 + (v32 ^ 0x206E5CE5) + 949796749;
  v40 = (v32 ^ 0x206E5CE5) + 49841787;
  v41 = v33 - v39;
  v42 = STACK[0x2DC];
  v43 = LODWORD(STACK[0x570]) ^ 0x30;
  v44 = LODWORD(STACK[0x568]) ^ 0x2EA0;
  LODWORD(STACK[0x428]) = 1196935751 - a2;
  LODWORD(STACK[0x414]) = 2047097296 - v7;
  LODWORD(STACK[0x43C]) = 226192534 - v16;
  LODWORD(STACK[0x42C]) = -1829551622 - LODWORD(STACK[0x560]);
  LOBYTE(v18) = ((2 * (1 - v42)) & 0x50 ^ 0x28) & (1 - v42);
  v45 = ((((-1408951551 - v42) ^ 0xB839A9B6) << (v44 + 47)) ^ 0xBB3033C) & ((-1408951551 - v42) ^ 0xB839A9B6) ^ (((-1408951551 - v42) ^ 0xB839A9B6) << (v44 + 47)) & 0x5D9819E;
  v46 = ((1 - v42) ^ (2 * ((16 * (v18 ^ 0x9E ^ v45 & (4 * v18))) & ~((4 * v45) & 0x90 ^ ((4 * v45) ^ 0x70) & v45) ^ v18 ^ 0x9E ^ v45 & (4 * v18)))) & 0x3F;
  v47 = v42 - 1623539794 + (((v46 ^ 0x35683DED) + 1512668494) ^ ((v46 ^ 0xBE44F652) - 788154637) ^ ((v46 ^ 0x8B2CCBAB) - 462583028));
  v48 = ((v47 ^ 0x3D409904) - 1159846472) ^ v47 ^ ((v47 ^ 0xEB98A7CE) + 1812339582) ^ ((v47 ^ 0x517680F9) - 689423285) ^ ((v47 ^ 0xFFCFFD7F) + 2018591181);
  LODWORD(STACK[0x394]) = v42 - 1197489660;
  LODWORD(STACK[0x390]) = 579142902;
  LODWORD(STACK[0x388]) = v42 - 1813914073;
  LODWORD(STACK[0x384]) = v42 + 1338501311;
  LODWORD(STACK[0x380]) = (((v48 ^ 0x480E73D6) + 34124744) ^ ((v48 ^ 0xB2AFD2E) + 1093418304) ^ ((v48 ^ 0x3B45CDB4) + 1900219814)) - 1376078902;
  LODWORD(STACK[0x37C]) = -530434264;
  LODWORD(STACK[0x3A8]) = ((v48 ^ 0x70512A7F) + 978840175) ^ ((v48 ^ 0x266E8700) + 1818773266) ^ ((v48 ^ 0x2E5EEE33) + 1683500579);
  v49 = (v42 ^ 0x96D8396E) & (2 * (v42 & 0x961ABD0E)) ^ v42 & 0x961ABD0E;
  v50 = ((2 * (v42 ^ 0xB2E8736A)) ^ 0x49E59CC8) & (v42 ^ 0xB2E8736A) ^ (2 * (v42 ^ 0xB2E8736A)) & 0x24F2CE64;
  v51 = v50 ^ 0x24124224;
  v52 = (v50 ^ 0xE08C40) & (4 * v49) ^ v49;
  v53 = ((4 * v51) ^ 0x93CB3990) & v51 ^ (4 * v51) & 0x24F2CE64;
  v54 = (v53 ^ 0xC20800) & (16 * v52) ^ v52;
  v55 = ((16 * (v53 ^ 0x2430C664)) ^ 0x4F2CE640) & (v53 ^ 0x2430C664) ^ (16 * (v53 ^ 0x2430C664)) & 0x24F2CE60;
  v56 = v54 ^ 0x24F2CE64 ^ (v55 ^ 0x420C600) & (v54 << 8);
  LODWORD(STACK[0x3C8]) = (((v48 ^ 0xC8BAFF61) - 2101592207) ^ ((v48 ^ 0xE96B2E6A) - 1553076612) ^ ((v48 ^ 0x59B09247) + 330715735)) - 2063738739;
  LODWORD(STACK[0x3C4]) = -1218094101;
  LODWORD(STACK[0x440]) = 185455739;
  LODWORD(STACK[0x45C]) = 1353281685;
  LODWORD(STACK[0x3A4]) = v42;
  LODWORD(STACK[0x38C]) = (16 * ((v56 << 16) & 0x4F20000 ^ v56 ^ ((v56 << 16) ^ 0xE640000) & (((v55 ^ 0x20D20824) << 8) & 0x4F20000 ^ 0x4300000 ^ (((v55 ^ 0x20D20824) << 8) ^ 0x2CE0000) & (v55 ^ 0x20D20824)))) ^ (8 * v42);
  v57 = STACK[0x548];
  v58 = (v28 - v37 + 2106523387) ^ LODWORD(STACK[0x3F4]);
  LOBYTE(STACK[0xF30]) = v43 ^ v41;
  v59 = v58 ^ (v36 + 96);
  LOBYTE(v25) = v44 ^ 0x35 ^ v59;
  v60 = v59 ^ v35;
  LOBYTE(STACK[0x1247]) = v25;
  v61 = v43 ^ v41 ^ v40;
  LOBYTE(STACK[0xF85]) = v61;
  v62 = v61 ^ v38;
  v63 = v60 ^ v37;
  LOBYTE(STACK[0xFDA]) = v62;
  LOBYTE(STACK[0x129C]) = (v44 + 26) ^ 0xB ^ v60;
  LOBYTE(STACK[0x12F1]) = v60 ^ v37 ^ 0xE7;
  v64 = v62 ^ v39;
  LOBYTE(STACK[0x11F2]) = v58 ^ 0xE7;
  LOBYTE(STACK[0x102F]) = v64;
  v65 = v39 + v38;
  v66 = v37 + v35;
  v67 = v66 - 1396474398;
  v68 = v28 - v37 + 2106523509 + v36 - v37;
  v69 = (v28 - v37 - 982208425) ^ v66;
  v70 = (v41 - 386059172) ^ v65;
  v71 = v65 - 1396474398;
  v72 = v64 ^ v70;
  v73 = v63 ^ v69;
  v74 = v41 + v40 + 434850284 - v39;
  LOBYTE(STACK[0x1084]) = v72;
  v75 = v72 ^ v74;
  v76 = v73 ^ (v68 - 46);
  LOBYTE(STACK[0x10D9]) = v75;
  v77 = v75 ^ (434850284 - v39);
  v78 = v76 ^ (-20 - v37);
  LOBYTE(STACK[0xF79]) = v73 ^ 0xE7;
  v79 = 2144258047 - v37;
  LOBYTE(STACK[0xFCE]) = v76 ^ 0xE7;
  v80 = v78 ^ (v66 - 1396474398);
  LOBYTE(STACK[0x112E]) = v77;
  v81 = 2144258047 - v39;
  v82 = v78 ^ 0xE7;
  if ((v77 & v71 & 2) != 0)
  {
    v83 = -(v71 & 2);
  }

  else
  {
    v83 = v71 & 2;
  }

  LOBYTE(STACK[0x1023]) = v82;
  v84 = (v83 + v77) ^ v71 & 0xFFFFFFFD;
  v85 = v67 ^ 0x54DF58C8;
  v86 = v71 ^ 0x54DF58C8;
  v87 = v74 - v86;
  LOBYTE(STACK[0x1078]) = v80 ^ 0xE7;
  v88 = v68 + 2027144818 + ((((v69 + 555189114) & 0x3263E4E8) + ((518552709 - v69) & 0x3263E4E8)) & 0x52066498 ^ 0xBEE3EFE8);
  LOBYTE(STACK[0x1183]) = v84;
  v89 = v88 - v85;
  v90 = v69 - 2 * v85;
  v91 = v70 - 2 * v86;
  v92 = v89 ^ 0xB6AA4962;
  v93 = v80 ^ v90;
  LOBYTE(STACK[0x10CD]) = v80 ^ v90 ^ 0xE7;
  v94 = v84 ^ v91;
  v95 = (v80 ^ v90) & 0x40;
  v96 = (v90 & 0x510C0AA8 ^ 0x510C0AA8) + (v90 & 0x510C0AA8);
  v97 = v87 ^ 0xB6AA4962;
  v98 = v97 ^ v91;
  v99 = v92 ^ v90;
  if ((v95 & v92) != 0)
  {
    v100 = -v95;
  }

  else
  {
    v100 = v95;
  }

  *(v57 + (v96 & 0xA20006A8)) = v94;
  v101 = (v100 + v92) ^ v93 & 0xFFFFFFBF;
  LOBYTE(STACK[0x1122]) = v101 ^ 0xE7;
  v102 = v101 ^ v79;
  v103 = v79 ^ 0xDBB511A2 ^ (v99 - ((2 * v99) & 0x94FD4D8C) + 1249814214);
  v104 = v94 ^ v97;
  v105 = v92 + 1199201533;
  v106 = v102 ^ v88;
  LOBYTE(STACK[0x122D]) = v104;
  v107 = v81 ^ 0x64 ^ v104;
  LOBYTE(STACK[0x1282]) = v107;
  v108 = v105 + v88;
  v109 = v107 ^ v74;
  v110 = v97 + 1199201533;
  LOBYTE(STACK[0x1177]) = v102 ^ 0x83;
  v111 = v108 + v105;
  v112 = v98 - v110;
  v113 = v110 + v74;
  v114 = v113 + v110;
  v108 += 954152114;
  v115 = v99 - v105;
  LOBYTE(STACK[0x11CC]) = v106 ^ 0x83;
  LOBYTE(STACK[0x12D7]) = v109;
  v116 = v109 ^ v112;
  LOBYTE(STACK[0xF5F]) = v116;
  LOBYTE(STACK[0x1221]) = v106 ^ v115 ^ 0x83;
  v117 = v81 ^ 0x718636CB ^ (v98 - ((2 * v98) & 0xC09B035E) - 531791441);
  v113 += 954152114;
  v118 = v116 ^ v114;
  v119 = v106 ^ v115 ^ v111;
  LOBYTE(STACK[0xFB4]) = v118;
  v120 = (v103 - 302814491) ^ v115;
  v121 = v118 ^ (v117 - 302814491);
  v122 = v119 ^ (v103 - 302814491);
  LOBYTE(STACK[0x12CB]) = v122 ^ 0x83;
  v123 = v122 ^ v108;
  LOBYTE(STACK[0x1009]) = v121;
  v124 = v121 ^ v113;
  v125 = v113 - v114;
  v126 = v108 - v111;
  v127 = (v111 ^ 0x9A86F16C) + v126;
  v128 = (v117 - 302814491) ^ v112;
  LOBYTE(STACK[0x1276]) = v119 ^ 0x83;
  v129 = (v103 + 2107972033) ^ v126;
  v130 = v123 ^ (v120 + 264588192);
  v131 = (v114 ^ 0x9A86F16C) + v125;
  v126 -= 2086639941;
  LOBYTE(STACK[0x105E]) = v124;
  v132 = v124 ^ (v128 + 264588192);
  LOBYTE(STACK[0x10B3]) = v132;
  v133 = (v117 + 2107972033) ^ v125;
  v134 = v130 ^ v127;
  v125 -= 2086639941;
  v135 = v127 ^ v126;
  LOBYTE(STACK[0xF53]) = v123 ^ 0x83;
  LOBYTE(v123) = v134 ^ v129;
  LOBYTE(STACK[0xFA8]) = v130 ^ 0x83;
  v136 = v134 ^ v129 ^ v126;
  v137 = v132 ^ v131;
  v138 = v125 ^ v131;
  LOBYTE(STACK[0x1108]) = v137;
  v139 = v120 + 264588192 + v126;
  v140 = v137 ^ v133;
  LOBYTE(STACK[0x115D]) = v140;
  LOBYTE(STACK[0xFFD]) = v134 ^ 0x83;
  v141 = v139 + v129;
  v142 = v140 ^ v125;
  LOBYTE(STACK[0x1052]) = v123 ^ 0x83;
  v143 = v128 + 264588192 + v125;
  v144 = v139 + v135;
  v145 = v144 ^ (v120 - 1391136954);
  v146 = v143 + v133;
  LOBYTE(STACK[0x10A7]) = v136 ^ 0x83;
  v147 = v143 + v138;
  LOBYTE(STACK[0x11B2]) = v142;
  v148 = v135 - (v141 ^ 0x14638263);
  v149 = v147 ^ (v128 - 1391136954);
  v150 = v136 ^ v145;
  v151 = v142 ^ v149;
  LOBYTE(STACK[0x1207]) = v151;
  v152 = v138 - (v146 ^ 0x14638263);
  LOBYTE(STACK[0x1151]) = v150 ^ v148 ^ 0x83;
  LOBYTE(STACK[0x10FC]) = v150 ^ 0x83;
  v153 = v150 ^ v148 ^ v141 ^ 0x14638263;
  v154 = v151 ^ v152;
  LOBYTE(STACK[0x11A6]) = v153 ^ 0x83;
  LOBYTE(STACK[0x125C]) = v154;
  v155 = v154 ^ v146 ^ 0x14638263;
  v156 = v153 ^ v144;
  v141 ^= 0x489E1DDCu;
  v157 = v145 - 1592294534 + v141;
  LOBYTE(STACK[0x12B1]) = v155;
  v158 = (v141 + v145) ^ v144;
  v159 = v158 + v148;
  v160 = v155 ^ v147;
  v146 ^= 0x489E1DDCu;
  v161 = v149 + v146;
  v162 = v156 ^ (v157 + 1721951225);
  v163 = (v149 + v146) ^ v147;
  v164 = v163 + v152;
  v165 = -(v145 + 129656691);
  v166 = v158 + v145 + 129656691;
  LOBYTE(STACK[0xF39]) = v160;
  LOBYTE(STACK[0x11FB]) = v156 ^ 0x83;
  LOBYTE(STACK[0x1250]) = v156 ^ (v157 - 7) ^ 0x83;
  v167 = v146 - (v161 + 129656691);
  v168 = v160 ^ (v161 + 129656691);
  LOBYTE(STACK[0xF8E]) = v168;
  LOBYTE(STACK[0x12A5]) = v162 ^ v159 ^ 0xBA;
  v169 = v164 ^ 0x39 ^ v168;
  v170 = v162 ^ v159 ^ v165;
  v171 = v163 - v167;
  *(v57 + ((133 - v145) & 0xB3) + ((v145 - 1592294534) & 0xB3)) = v169;
  v172 = v166 ^ 0x12 ^ v170;
  v173 = v166 - 308283725;
  LOBYTE(STACK[0x1038]) = v169 ^ v167;
  v174 = v169 ^ v167 ^ (v163 - v167);
  LOBYTE(v163) = ((v169 ^ v167) & 0xD6 ^ 0xD6) + ((v169 ^ v167) & 0xD6);
  v175 = (v166 - ((2 * (v166 - 308283725)) & 0x19ACD1A) - 294822592) ^ v159;
  LOBYTE(STACK[0x108D]) = v174;
  LOBYTE(STACK[0x12FA]) = v170 ^ 0xBA;
  v176 = v175 ^ 0x8BBAC6B4 ^ (v157 + 2032223395);
  v166 -= 997710353;
  LOBYTE(STACK[0xF82]) = (126 - v163) ^ v172;
  v177 = (v171 - ((2 * (v171 - 308283725)) & 0x5B661872) - 1689058580) ^ v164;
  v178 = (v176 - ((2 * v176) & 0xFFFFFFFC) + 126) ^ v172;
  v179 = v177 ^ 0x26C4AC00 ^ (v161 + 439928861);
  v180 = v165 ^ 0x48D502FC ^ v173 ^ (v176 + 1221919484 - ((2 * v176) & 0x91AA05F8));
  v181 = (v175 ^ 0x8BBAC6B4) - v166;
  v182 = v167 ^ 0x61C325AE ^ (v171 - 308283725) ^ (v179 + 1640179118 - ((2 * v179) & 0xC3864B5C));
  v183 = v174 ^ v179;
  v184 = v178 + v181 - 2 * (v178 & v181);
  LOBYTE(STACK[0xFD7]) = v178 ^ 0xD6;
  v185 = v184 ^ v180;
  v171 -= 997710353;
  LOBYTE(STACK[0x10E2]) = v183;
  v186 = (v177 ^ 0x26C4AC00) - v171;
  v187 = v183 ^ v186;
  LOBYTE(STACK[0x1137]) = v187;
  v188 = v187 ^ v182;
  v189 = v180 + v181;
  v190 = v185 ^ v166;
  v191 = v166 - v189;
  v192 = v182 + v186;
  LOBYTE(STACK[0x102C]) = v184 ^ 0xD6;
  LOBYTE(STACK[0x1081]) = v185 ^ 0xD6;
  v193 = v191 + v176;
  LOBYTE(STACK[0x118C]) = v188;
  v194 = v188 ^ v171;
  v195 = (v175 ^ 0x8BBAC6B4) - v189;
  v196 = v191 - v189;
  v197 = v171 - v192;
  LOBYTE(STACK[0x10D6]) = v190 ^ 0xD6;
  LOBYTE(STACK[0x11E1]) = v194;
  v198 = v193 - v196;
  v199 = (v177 ^ 0x26C4AC00) - v192;
  v200 = v197 + v179;
  v201 = v197 - v192;
  v202 = v198 ^ v190;
  v203 = v200 - v201;
  v204 = v194 ^ v203;
  LOBYTE(STACK[0x1236]) = v204;
  v205 = v202 ^ v198 ^ v195;
  v206 = v204 ^ v203 ^ v199;
  LOBYTE(STACK[0x1180]) = v205 ^ 0xD6;
  v207 = v205 ^ v175 ^ 0x8BBAC6B4;
  v208 = v207 ^ v196;
  LOBYTE(STACK[0x128B]) = v206;
  v209 = v198 ^ v196;
  LOBYTE(STACK[0x11D5]) = v207 ^ 0xD6;
  LOBYTE(STACK[0x12E0]) = v206 ^ v177;
  v210 = v206 ^ v177 ^ v201;
  LOBYTE(STACK[0xF68]) = v210;
  v211 = v203 ^ v201;
  v212 = v175 ^ v195 ^ v196 ^ 0x63AD55BA;
  v213 = v198 - 1321170803 + v209;
  v214 = v177 ^ v199 ^ v201 ^ 0xCED33F0E;
  LOBYTE(STACK[0x112B]) = v202 ^ 0xD6;
  LOBYTE(STACK[0x122A]) = v208 ^ 0xD6;
  v215 = v203 - 1321170803 + v211;
  v175 ^= 0x980667C3;
  LOBYTE(STACK[0xF5C]) = v208 ^ (v198 + 4) ^ v212 ^ v175 ^ 0xD6;
  v216 = v213 + v175;
  LOBYTE(STACK[0x127F]) = v208 ^ (v198 + 4) ^ 0xD6;
  v217 = v210 ^ (v203 - 70501884);
  LOBYTE(STACK[0xFBD]) = v217;
  v218 = v217 ^ v214;
  LOBYTE(STACK[0x1012]) = v218;
  v219 = v208 ^ (v198 - 70501884) ^ v212 ^ v175 ^ v213;
  LOBYTE(STACK[0x12D4]) = v208 ^ (v198 + 4) ^ v212 ^ 0xD6;
  v220 = v177 ^ 0x35780D77;
  v221 = v218 ^ v177 ^ 0x35780D77;
  v222 = ((v214 & v10) + v9 + (v214 & v10 ^ v10) + v212) ^ (v198 - 70501884);
  v223 = v215 + v220;
  v224 = v222 + v213 + v175;
  LOBYTE(STACK[0x1067]) = v221;
  v225 = v221 ^ v215;
  v226 = v214 ^ (v203 - 70501884);
  v227 = v213 - v212 - v224;
  v228 = v198 - 632559473 - v227;
  LOBYTE(STACK[0x10BC]) = v225;
  LOBYTE(STACK[0xFB1]) = v219 ^ 0xD6;
  v229 = v215 - v214 - (v223 + v226);
  v230 = v203 - 632559473 - v229;
  v231 = v225 ^ v230;
  LOBYTE(STACK[0x1111]) = v231;
  v232 = v219 ^ v228 ^ (v222 - 46);
  LOBYTE(STACK[0x1006]) = v219 ^ v228 ^ 0xD6;
  LOBYTE(STACK[0x105B]) = v232 ^ 0xD6;
  v233 = v231 ^ (v226 - 46);
  LOBYTE(v215) = v232 ^ v224;
  LOBYTE(STACK[0x1166]) = v233;
  v234 = v233 ^ (v223 + v226);
  v235 = v232 ^ v224 ^ v227;
  LOBYTE(STACK[0x10B0]) = v215 ^ 0xD6;
  LOBYTE(STACK[0x11BB]) = v234;
  v236 = v234 ^ v229;
  LOBYTE(STACK[0x1210]) = v236;
  LOBYTE(STACK[0x1105]) = v235 ^ 0xD6;
  v237 = v228 - v222;
  v238 = v227 - v228;
  v239 = v226 - 1946179390 + v229 - v230;
  v240 = v236 ^ (v230 - v226 + 65);
  v241 = v235 ^ (v237 + 65);
  LOBYTE(STACK[0x1265]) = v240;
  v242 = v239 ^ (v223 - 85810386);
  v243 = v241 ^ (v222 + 73);
  v244 = v222 - 1946179390 + v238;
  v245 = v244 ^ (v216 - 85810386);
  v246 = v240 ^ (v226 + 73);
  LOBYTE(STACK[0x115A]) = v241 ^ 0xD6;
  LOBYTE(STACK[0x12BA]) = v246;
  LOBYTE(STACK[0x11AF]) = v243 ^ 0xD6;
  v247 = v246 ^ v242;
  v248 = v244 + v237;
  LOBYTE(STACK[0xF42]) = v247;
  v249 = v243 ^ v245;
  v250 = v247 ^ v239;
  v229 -= 360033789;
  LOBYTE(STACK[0x1204]) = v249 ^ 0xD6;
  v251 = v239 - v229;
  v252 = v249 ^ v244;
  LOBYTE(STACK[0x1259]) = v252 ^ 0xD6;
  v253 = (v244 + v237 + 1586145601) ^ 0x25668C66;
  LOBYTE(STACK[0xF97]) = v250;
  v254 = v252 ^ v253;
  v255 = v226 + 1727405972;
  LOBYTE(STACK[0x12AE]) = v254 ^ 0xD6;
  v229 ^= 0x25668C66u;
  v256 = v254 ^ (v222 - 29);
  v257 = v250 ^ v229;
  v258 = v251 + v226 + 1727405972;
  v259 = v244 + v222 + 1727405972 - v248 + 6148934 + ((((v244 + v222 + 1727405972) & 0x24A6381A ^ 0x24A6381A) + ((v244 + v222 + 1727405972) & 0x24A6381A)) ^ 0x85B1BB63);
  LOBYTE(STACK[0xFEC]) = v257;
  LOBYTE(STACK[0xF36]) = v256 ^ 0xD6;
  v260 = (v222 + 1727405972) ^ 0x63361004 ^ v245;
  v261 = v256 ^ v260;
  v262 = v226 - 946975517;
  LOBYTE(STACK[0xF8B]) = v256 ^ v260 ^ 0xD6;
  v263 = v222 - 946975517;
  v264 = v261 ^ v259;
  v265 = v259 ^ v253;
  v266 = v257 ^ (v226 - 946975517);
  v267 = v260 - 1924001267;
  LOBYTE(STACK[0x1041]) = v266;
  v268 = v253 + v260 - 1924001267;
  v269 = v255 ^ 0x63361004 ^ v242;
  v270 = v266 ^ v269;
  v271 = (v260 - 1924001267) ^ v263 ^ (v265 + 1160008190 - ((2 * v265) & 0x8A48A3FC));
  LOBYTE(STACK[0xFE0]) = v264 ^ 0xD6;
  LOBYTE(STACK[0x1096]) = v270;
  v272 = v270 ^ v258;
  LOBYTE(STACK[0x10EB]) = v270 ^ v258;
  v273 = v258 ^ v229;
  v274 = (v269 - 1924001267) ^ v262 ^ (v273 + 1617663282 - ((2 * v273) & 0xC0D72A64));
  v275 = v229 - 1046278111 + v269 - 1924001267;
  LOBYTE(STACK[0x1140]) = v272 ^ (v229 + 33 + v269 + 13);
  v276 = v272 ^ v275 ^ v274 ^ 0x606B9532;
  v277 = (v265 & 0xA27184D5) + v265 + (v265 & 0xA27184D5 ^ 0xA27184D5);
  LOBYTE(STACK[0x1195]) = v276;
  v278 = v264 ^ (v268 - 1046278111);
  v279 = v271 ^ 0x452451FE ^ v278;
  v280 = v279 ^ (v268 - 1046278111 + v267);
  LOBYTE(STACK[0x108A]) = v279 ^ 0xD6;
  v273 -= 1569618731;
  v281 = v275 + v269 - 1924001267 + v276 + ((2 * ((v276 & (v275 + v269 - 1924001267)) - ((2 * (v276 & (v275 + v269 - 1924001267))) & 0x58)) + 88) ^ 0xFFFFFFA7) + 1;
  v282 = (v271 ^ 0x452451FE) + v277;
  v283 = v280 ^ v277;
  LOBYTE(STACK[0x11EA]) = v281;
  v284 = v281 ^ v273;
  v285 = (v274 ^ 0x606B9532) + v273;
  LOBYTE(STACK[0x1134]) = v283 ^ 0xD6;
  v286 = v282 ^ (v268 - 2001336943);
  v287 = v271 ^ 0xE0682B26;
  v288 = v285 ^ (v275 - 955058832);
  v289 = v282 - (v271 ^ 0xE0682B26);
  LOBYTE(STACK[0x10DF]) = v280 ^ 0xD6;
  LOBYTE(v275) = v283 ^ v286;
  v290 = v274 ^ 0xC527EFEA;
  LOBYTE(STACK[0x123F]) = v284;
  LOBYTE(STACK[0x1294]) = v284 ^ v288;
  LOBYTE(STACK[0x1035]) = v278 ^ 0xD6;
  v291 = v283 ^ v286 ^ (v287 + 51);
  LOBYTE(STACK[0x11DE]) = v291 ^ 0xD6;
  v292 = v284 ^ v288 ^ ((v274 ^ 0xC527EFEA) + 1093599283);
  v293 = v290 + 1093599283 + v269 - 1924001267;
  LOBYTE(STACK[0x12E9]) = v292;
  v294 = v292 ^ v293;
  LOBYTE(STACK[0xF71]) = v294;
  v295 = v267 + 1093599283 + v287;
  v296 = v291 ^ v295;
  v297 = v294 ^ (v285 - (v290 + 1093599283));
  v298 = v296 ^ (v289 - 51);
  LOBYTE(STACK[0x1189]) = v275 ^ 0xD6;
  LOBYTE(STACK[0x1288]) = v298 ^ 0xD6;
  v299 = v269 + v285;
  LOBYTE(STACK[0x1233]) = v296 ^ 0xD6;
  v300 = (v287 - 521345529) ^ 0xB4155980;
  v301 = v287 + v286 + ((-873159336 - v287) & 0xA117837A) + ((v287 + 873159335) & 0xA117837A) - 2 * (v287 - 521345529);
  v302 = v298 ^ (v301 - 1142972076);
  v303 = v289 + v295 - v286 - 471972858;
  v304 = (v295 - 1877869680) ^ 0xB1D97F94;
  LOBYTE(v275) = ((v298 ^ (v301 + 84) ^ v300 ^ 0x3F) >> 5) | (8 * (v298 ^ (v301 + 84) ^ v300 ^ 0x3F));
  v305 = v302 ^ v300 ^ v304;
  LOBYTE(STACK[0xF65]) = (((v275 ^ 0xBE) >> 3) | (32 * (v275 ^ 0xBE))) ^ 0x3E;
  LOBYTE(STACK[0x100F]) = v302 ^ v300 ^ v304 ^ v303 ^ 0xD6;
  LOBYTE(STACK[0x12DD]) = v302 ^ 0xD6;
  v306 = v44 - 9695;
  LOBYTE(STACK[0xFC6]) = v297;
  v307 = v299 - v288 - 1302374842;
  v308 = v288 - v290 - 100280896;
  v309 = v297 ^ v308;
  LOBYTE(STACK[0x101B]) = v309;
  v310 = (v290 - 521345529) ^ 0xB4155980;
  v311 = v309 ^ v310;
  LOBYTE(STACK[0x1070]) = v311;
  v312 = (v293 - 1877869680) ^ 0xB1D97F94;
  v313 = v311 ^ v312;
  LOBYTE(STACK[0x10C5]) = v313;
  v310 += 15261037;
  LODWORD(STACK[0x3F4]) = v305 ^ v303 ^ 0x31;
  v314 = v304 - 1744166639;
  v315 = v308 - v310;
  LODWORD(STACK[0x560]) = ((v301 - v300 + 434061543) ^ 0x598DA1C7) - 1592294534;
  v316 = v300 + 1409765901 + v314;
  v317 = v312 - 1744166639 + v310;
  LOBYTE(STACK[0xFBA]) = v305 ^ 0xD6;
  LODWORD(STACK[0x550]) = v314 - (v303 ^ 0xB466F697);
  v318 = v306 ^ (488 * (STACK[0x3F8] & 1));
  LODWORD(STACK[0x558]) = v316;
  LODWORD(STACK[0x530]) = (v316 + v10) ^ v303 ^ 0xB466F697;
  LODWORD(STACK[0x514]) = v312 - 1744166639 - (v307 ^ 0xB466F697);
  LODWORD(STACK[0x3CC]) = v313 ^ v307;
  LOBYTE(STACK[0x111A]) = v313 ^ v307;
  LODWORD(STACK[0x540]) = v317;
  LODWORD(STACK[0x538]) = v317 ^ v307 ^ 0xB466F697;
  v319 = *(v13 + 8 * v318);
  STACK[0x3D8] = v11;
  STACK[0x3D0] = v12;
  LODWORD(STACK[0x53C]) = v315 ^ 0x598DA1C7;
  LODWORD(STACK[0x520]) = v316 + v10;
  return v319();
}

uint64_t sub_1001F2A60()
{
  *(v3 + v4 % (v0 ^ 0x2F1Fu)) ^= *(v5 + (LODWORD(STACK[0x45C]) - 1353281685)) ^ v6;
  v8 = v1 + 1 < v2;
  if (v2 < v1)
  {
    v8 = 1;
  }

  return (*(v7 + 8 * ((59 * v8) ^ (v0 - 10562))))();
}

uint64_t sub_1001F2B00()
{
  v2 = LODWORD(STACK[0x440]) + 393687291;
  v3 = v2 < ((v0 + 1406268434) & 0xAC2E064B) + 579141804;
  v4 = v2 > LODWORD(STACK[0x394]);
  if (LODWORD(STACK[0x394]) < LODWORD(STACK[0x390]) != v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  return (*(v1 + 8 * ((v5 * (v0 ^ 0xA2E)) ^ v0)))();
}

uint64_t sub_1001F2BA4(int a1)
{
  v3 = v1 ^ 0x615;
  v4 = LODWORD(STACK[0x388]) < 0xFDC72119;
  if (v4 == (a1 - 222737186) < 0xFDC72119)
  {
    v4 = LODWORD(STACK[0x388]) > a1 - 222737186;
  }

  return (*(v2 + 8 * ((((v3 - 1186123940) & 0x46B2DBBF ^ ((v3 ^ 0x30E) - 2129)) * v4) ^ v3)))();
}

uint64_t sub_1001F2C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8)
{
  v15 = v9 < (v11 ^ 0xE02812C9);
  v16 = a7 - (((a7 * a8) >> 32) >> 6) * v12;
  *(v13 + v16) ^= *(a6 + (LODWORD(STACK[0x45C]) - 1353281685));
  if (v9 >= (v11 ^ 0xE02812C9))
  {
    v15 = v8 + 1 < v9;
  }

  return (*(v14 + 8 * ((10008 * v15) ^ ((v10 ^ 0x2025) - 8137))))();
}

uint64_t sub_1001F2D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v14 = v8 - 9166;
  v15 = v7 < a7;
  *v9 = (*v9 - ((2 * *v9) & 0xCC) - 26) ^ *(v12 + (LODWORD(STACK[0x45C]) - 1353281685));
  if (v15 == (v10 == 0))
  {
    v15 = a7 + 1 < v7;
  }

  v16 = v15 ^ 0xFFFFFFEF;
  if (v15)
  {
    v17 = v11;
  }

  else
  {
    v17 = 0;
  }

  return (*(v13 + 8 * (((v16 + v17 != -17) | (8 * (v16 + v17 != -17))) ^ v14)))();
}

uint64_t sub_1001F2E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v13 = v8 + 4541;
  v14 = (LODWORD(STACK[0x3A4]) - LODWORD(STACK[0x45C])) * v11 - 1625039342 - (((((LODWORD(STACK[0x3A4]) - LODWORD(STACK[0x45C])) * v11 - 1625039342) * a8) >> 32) >> 6) * v9;
  v15 = (v13 + 1308412444) & 0xB2030D3D;
  *(v10 + v14) ^= v15 + 84;
  return (*(v12 + 8 * ((((3 * (v15 ^ 0x1F9)) ^ 0x1553 ^ (183 * (v15 ^ 0x42A))) * (LODWORD(STACK[0x3A8]) - LODWORD(STACK[0x45C]) != -507636919)) ^ v15)))(a1, a2, 214, a4, a5, a6, a7);
}

uint64_t sub_1001F2F20@<X0>(unsigned int a1@<W2>, int a2@<W8>)
{
  v4 = (v2 - 1779482085) & 0x6A10AD7F;
  LODWORD(STACK[0x568]) = v4;
  v4 += 11192;
  v5 = LOBYTE(STACK[0x11F2]) ^ a1;
  LODWORD(STACK[0x570]) = v4;
  v6 = (v5 << (v4 ^ 0xCA)) + ((LOBYTE(STACK[0x1247]) ^ a1) << 16);
  v7 = LOBYTE(STACK[0xF30]);
  v8 = (LOBYTE(STACK[0x12F1]) | ((LOBYTE(STACK[0x129C]) ^ a1) << 8)) + v6;
  v9 = v8 ^ a1;
  v10 = ((v8 ^ a1) >> (((v8 & 0x3F ^ 0x29) + ((v8 ^ a1) & 0x3F)) & 0x5B)) | (32 * (v8 ^ a1));
  v11 = (v5 >> 6) | (4 * v9);
  v12 = v5 >> 2;
  v13 = LOBYTE(STACK[0x102F]) | (LOBYTE(STACK[0xFDA]) << 8) | (LOBYTE(STACK[0xF85]) << 16) | (v7 << 24);
  v14 = __PAIR64__(v9, v8) >> 10;
  v15 = __PAIR64__(v9, v8) >> 12;
  v16 = (v7 >> 7) | (2 * v13);
  v17 = (v7 >> 6) | (4 * v13);
  v18 = (v7 >> 3) | (32 * v13);
  v19 = (v7 >> 4) | (16 * v13);
  HIDWORD(v21) = v13;
  LODWORD(v21) = (LOBYTE(STACK[0xF85]) << 16) | (v7 << 24);
  v20 = v21 >> 21;
  HIDWORD(v21) = v13;
  v22 = v21 >> 22;
  HIDWORD(v21) = v13;
  v23 = v21 >> 19;
  v24 = (v7 >> 2) | (v13 << 6);
  v25 = (__PAIR64__(v9, v6) >> 19) ^ v8;
  HIDWORD(v21) = LOBYTE(STACK[0x102F]) | (LOBYTE(STACK[0xFDA]) << 8);
  LODWORD(v21) = v13;
  v26 = v21 >> 15;
  LODWORD(v21) = (LOBYTE(STACK[0xF85]) << 16) | (v7 << 24);
  v27 = v21 >> 16;
  v28 = (__PAIR64__(v9, v6) >> 20) ^ v15;
  LODWORD(v21) = v13;
  v29 = v21 >> 14;
  v30 = v25 ^ v28;
  LODWORD(v21) = v13;
  v31 = v21 >> 12;
  v32 = v30 ^ v14;
  LODWORD(v21) = v13;
  v33 = v21 >> 11;
  LODWORD(v21) = v13;
  v34 = v21 >> 10;
  v35 = v32 ^ __ROR4__(v9, 7) ^ __ROR4__(v9, 5) ^ __ROR4__(v9, 2) ^ v11 ^ (v12 | (v9 << 6)) ^ v10;
  HIDWORD(v21) = LOBYTE(STACK[0x102F]);
  LODWORD(v21) = v13;
  v36 = v21 >> 4;
  v37 = v27 ^ v7 ^ v13;
  LODWORD(v21) = v13;
  v38 = v21 >> 5;
  LODWORD(v21) = v13;
  v39 = v37 ^ v38 ^ v36 ^ (v13 << 8) ^ v22 ^ v20 ^ v23 ^ __ROR4__(v13, 18) ^ v29 ^ v26 ^ v31 ^ v33 ^ v34 ^ __ROR4__(v13, 3) ^ (v21 >> 2) ^ v17 ^ v16 ^ v19 ^ v18 ^ v24;
  LOBYTE(STACK[0xF30]) = HIBYTE(v39);
  LOBYTE(STACK[0xFDA]) = BYTE1(v39);
  LOBYTE(STACK[0x12F1]) = v35;
  LOBYTE(STACK[0x102F]) = v39;
  LOBYTE(STACK[0x129C]) = (v35 ^ v3) >> 8;
  LOBYTE(STACK[0x11F2]) = (v35 ^ v3) >> 24;
  LOBYTE(STACK[0x1247]) = (v35 ^ v3) >> 16;
  LOBYTE(STACK[0xF85]) = BYTE2(v39);
  v40 = LOBYTE(STACK[0x1084]);
  v41 = LOBYTE(STACK[0xF79]) ^ 0xD6;
  v42 = (LOBYTE(STACK[0x10D9]) << 16) | (v40 << 24);
  v43 = ((LOBYTE(STACK[0xFCE]) ^ 0xD6) << 16) | ((LOBYTE(STACK[0x1023]) ^ 0xD6) << 8) | (v41 << 24);
  v44 = LOBYTE(STACK[0x1078]);
  v45 = (v43 | v44) ^ 0xD6;
  v46 = LOBYTE(STACK[0x1183]);
  v47 = v46 | (LOBYTE(STACK[0x112E]) << 8);
  v48 = v47 | v42;
  v49 = v45 ^ (__PAIR64__(v43 | v44, v43) >> 20) ^ (__PAIR64__(v45, v43) >> 19) ^ (__PAIR64__(v45, v43) >> 12) ^ (__PAIR64__(v45, v43) >> 10) ^ __ROR4__(v45, 7) ^ __ROR4__(v45, 5) ^ ((v41 >> 2) | (v45 << 6)) ^ ((v41 >> 6) | (4 * v45)) ^ ((32 * v45) | (v41 >> 3));
  v50 = v49 ^ 0xD6000;
  v51 = ((v40 >> 7) | (2 * v48)) ^ v48 ^ ((v40 >> 6) | (4 * v48)) ^ ((v40 >> 4) | (16 * v48)) ^ ((v40 >> 3) | (32 * v48)) ^ ((v40 >> 2) | (v48 << 6)) ^ (v40 | (v48 << 8));
  HIDWORD(v21) = v47 | v42;
  LODWORD(v21) = v42;
  v52 = v21 >> 22;
  v53 = (v21 >> 22) & 2;
  v54 = v49 & 0x3F | v49 & 0x3F ^ 0x3F;
  if ((v51 & v53) != 0)
  {
    LODWORD(v53) = -v53;
  }

  HIDWORD(v56) = v47 | v42;
  LODWORD(v56) = v47 | v42;
  v55 = v56 >> 16;
  v57 = __PAIR64__(v47, v48) >> 12;
  v58 = __PAIR64__(v47, v48) >> 11;
  LODWORD(STACK[0x52C]) = v3 + 214;
  v60 = __PAIR64__(v47, __ROR4__(v45, 2));
  v59 = (v3 + 214) ^ v60;
  LODWORD(v60) = v47 | v42;
  v61 = v60 >> 10;
  v62 = v59 ^ v50;
  LOBYTE(STACK[0xFCE]) = BYTE2(v62);
  LOBYTE(STACK[0xF79]) = HIBYTE(v62);
  HIDWORD(v60) = v48;
  LODWORD(v60) = v48;
  v63 = (__PAIR64__(v46, v48) >> 4) ^ (__PAIR64__(v46, v48) >> 5) ^ (v48 << 11) ^ (__PAIR64__(v48, v42) >> 19) ^ (__PAIR64__(v48, v42) >> 18) ^ __ROR4__(v48, 15) ^ __ROR4__(v48, 14) ^ v57 ^ v58 ^ v61 ^ __ROR4__(v48, 3) ^ v55 ^ (v60 >> 2) ^ v52 & 0xFFFFFFFD ^ (v53 + v51) ^ (v48 >> (v54 - 42));
  LOBYTE(STACK[0x10D9]) = BYTE2(v63);
  LOBYTE(STACK[0x1023]) = v62 >> ((v55 | 8) - (v55 & 0xF7));
  LOBYTE(STACK[0x1084]) = HIBYTE(v63);
  v64 = STACK[0x548];
  *(STACK[0x548] + ((v60 >> 2) & 0x1FE) + ((v60 >> 2) & 0x1FE ^ 0x1FE)) = BYTE1(v63);
  LOBYTE(STACK[0x1078]) = v62;
  LOBYTE(STACK[0x1183]) = v63;
  v65 = LOBYTE(STACK[0x10CD]) ^ 0xD6;
  v66 = LOBYTE(STACK[0x11D8]);
  v67 = LOBYTE(STACK[0x11CC]) | ((LOBYTE(STACK[0x1177]) ^ 0xD6) << 8) | ((LOBYTE(STACK[0x1122]) ^ 0xD6) << 16) | (v65 << 24);
  HIDWORD(v60) = (LOBYTE(STACK[0x122D]) << 16) | (LOBYTE(STACK[0x1282]) << 8) | LOBYTE(STACK[0x12D7]);
  LODWORD(v60) = v66 << 24;
  v68 = (v60 >> 24) ^ (HIDWORD(v60) << 11);
  v69 = HIDWORD(v60) & 0xFFFFFF | (v66 << 24);
  HIDWORD(v60) = v67 ^ 0xD6;
  LODWORD(v60) = ((LOBYTE(STACK[0x1122]) ^ 0xD6) << 16) | (v65 << 24);
  v70 = v60 >> 20;
  HIDWORD(v60) = v67 ^ 0xD6;
  v71 = v60 >> 19;
  HIDWORD(v60) = v67 ^ 0xD6;
  LODWORD(v60) = v67;
  v72 = v60 >> 12;
  HIDWORD(v60) = v67 ^ 0xD6;
  LODWORD(v60) = v67;
  v73 = v71 ^ v67 ^ v70 ^ v72 ^ (v60 >> 10) ^ __ROR4__(v67 ^ 0xD6, 7) ^ __ROR4__(v67 ^ 0xD6, 5) ^ __ROR4__(v67 ^ 0xD6, 2) ^ ((v65 >> 3) | (32 * (v67 ^ 0xD6))) ^ ((v65 >> 6) | (4 * (v67 ^ 0xD6))) ^ ((v65 >> 2) | ((v67 ^ 0xD6) << 6));
  LOBYTE(STACK[0x10CD]) = (v73 ^ v3) >> 24;
  v74 = v68 ^ v69 ^ (__PAIR64__(v69, v66 << 24) >> 31) ^ (__PAIR64__(v69, v66 << 24) >> 30) ^ (__PAIR64__(v69, v66 << 24) >> 28) ^ (__PAIR64__(v69, v66 << 24) >> 27) ^ (__PAIR64__(v69, v66 << 24) >> 26) ^ __ROR4__(v69, 22) ^ (v69 >> 21) ^ __ROR4__(v69, 19) ^ __ROR4__(v69, 16) ^ __ROR4__(v69, 15) ^ __ROR4__(v69, 14) ^ __ROR4__(v69, 12) ^ __ROR4__(v69, 11) ^ __ROR4__(v69, 10) ^ __ROR4__(v69, 5) ^ __ROR4__(v69, 4) ^ __ROR4__(v69, 3) ^ __ROR4__(v69, 2) ^ __ROR4__(v69, 18);
  LOBYTE(STACK[0x11D8]) = HIBYTE(v74);
  LOBYTE(STACK[0x11CC]) = v73;
  LOBYTE(STACK[0x12D7]) = v74;
  LOBYTE(STACK[0x1122]) = (v73 ^ v3) >> 16;
  LOBYTE(STACK[0x122D]) = BYTE2(v74);
  LOBYTE(STACK[0x1177]) = (v73 ^ v3) >> 8;
  LOBYTE(STACK[0x1282]) = BYTE1(v74);
  v75 = LOBYTE(STACK[0xF5F]);
  v76 = LOBYTE(STACK[0x1221]) ^ 0xD6;
  v77 = LOBYTE(STACK[0x105E]);
  v78 = (v76 << 24) | ((LOBYTE(STACK[0x1276]) ^ 0xD6) << 16) | LOBYTE(STACK[0xF53]) | ((LOBYTE(STACK[0x12CB]) ^ 0xD6) << 8);
  v79 = (v75 << 24) | (LOBYTE(STACK[0xFB4]) << 16);
  v80 = v77 | (LOBYTE(STACK[0x1009]) << 8);
  v81 = v79 | v80;
  HIDWORD(v60) = v78 ^ 0xD6;
  LODWORD(v60) = (v76 << 24) | ((LOBYTE(STACK[0x1276]) ^ 0xD6) << 16);
  v82 = v60 >> 20;
  HIDWORD(v60) = v78 ^ 0xD6;
  v83 = v60 >> 19;
  HIDWORD(v60) = v78 ^ 0xD6;
  LODWORD(v60) = v78;
  v84 = v60 >> 10;
  v85 = (v75 >> 7) | (2 * (v79 | v80));
  v86 = (v75 >> 6) | (4 * (v79 | v80));
  v87 = (v75 >> 4) | (16 * (v79 | v80));
  v88 = (v75 >> 2) | ((v79 | v80) << 6);
  v89 = (v75 >> 3) | (32 * (v79 | v80));
  v90 = v75 | ((v79 | v80) << 8);
  HIDWORD(v60) = v79 | v80;
  LODWORD(v60) = v79;
  v91 = v60 >> 22;
  HIDWORD(v60) = v79 | v80;
  LODWORD(v60) = v79;
  v92 = v60 >> 21;
  HIDWORD(v60) = v79 | v80;
  LODWORD(v60) = v79;
  v93 = v60 >> 18;
  v94 = __PAIR64__(v77, __ROR4__(v78 ^ 0xD6, 12));
  v95 = v83 ^ v78 ^ v82 ^ v94 ^ v84;
  LODWORD(v94) = v81;
  v96 = v94 >> 4;
  v97 = __PAIR64__(v77, __ROR4__(v78 ^ 0xD6, 2));
  v98 = v95 ^ __ROR4__(v78 ^ 0xD6, 7) ^ __ROR4__(v78 ^ 0xD6, 5) ^ v97 ^ ((v76 >> 2) | ((v78 ^ 0xD6) << 6)) ^ ((v76 >> 3) | (32 * (v78 ^ 0xD6))) ^ ((v76 >> 6) | (4 * (v78 ^ 0xD6)));
  LODWORD(v97) = v81;
  LOBYTE(STACK[0x12CB]) = (v98 ^ v3) >> 8;
  v99 = v81 ^ (v80 << 18) ^ __ROR4__(v81, 12) ^ (__PAIR64__(v77, v81) >> 5) ^ v96 ^ (v97 >> 3) ^ (__PAIR64__(v77, v81) >> 2) ^ __ROR4__(v81, 10) ^ (__PAIR64__(v80, v81) >> 11) ^ __ROR4__(v81, 16) ^ (__PAIR64__(v80, v81) >> 15) ^ (v81 >> 14) ^ v91 ^ __ROR4__(v81, 19) ^ v93 ^ v92 ^ v88 ^ v86 ^ v87 ^ v89 ^ v90 ^ v85;
  LOBYTE(STACK[0x1276]) = (v98 ^ v3) >> 16;
  LOBYTE(STACK[0xF5F]) = HIBYTE(v99);
  LOBYTE(STACK[0x105E]) = v99;
  LOBYTE(STACK[0xF53]) = v98;
  LOBYTE(STACK[0x1221]) = (v98 ^ v3) >> 24;
  LOBYTE(STACK[0x1009]) = BYTE1(v99);
  LOBYTE(STACK[0xFB4]) = BYTE2(v99);
  v100 = LOBYTE(STACK[0x10B3]);
  v101 = LOBYTE(STACK[0xFA8]) ^ 0xD6;
  v102 = LOBYTE(STACK[0x10A7]) | ((LOBYTE(STACK[0xFFD]) ^ 0xD6) << 16) | (v101 << 24) | ((LOBYTE(STACK[0x1052]) ^ 0xD6) << 8);
  v103 = (v100 << 24) | (LOBYTE(STACK[0x1108]) << 16);
  v104 = LOBYTE(STACK[0x11B2]) | (LOBYTE(STACK[0x115D]) << 8);
  v105 = v104 | v103;
  HIDWORD(v97) = v102 ^ 0xD6;
  LODWORD(v97) = LOBYTE(STACK[0x10A7]) | ((LOBYTE(STACK[0xFFD]) ^ 0xD6) << 16) | (v101 << 24);
  v106 = v97 >> 20;
  HIDWORD(v97) = v102 ^ 0xD6;
  LODWORD(v97) = v102;
  v107 = v97 >> 12;
  v108 = (v100 >> 7) | (2 * (v104 | v103));
  HIDWORD(v97) = v102 ^ 0xD6;
  LODWORD(v97) = v102 ^ 0xD6;
  v109 = v97 >> 10;
  v110 = (v100 >> 6) | (4 * (v104 | v103));
  v111 = (v100 >> 4) | (16 * (v104 | v103));
  v112 = 32 * (v104 | v103) + ((v104 | v103) >> ((((v102 ^ 0xD6u) >> 5) & 0x1B ^ 0x1B) + (((v102 ^ 0xD6u) >> 5) & 0x1B)));
  HIDWORD(v97) = v104 | v103;
  LODWORD(v97) = v103;
  v113 = v97 >> 19;
  v114 = ((v104 | v103) << 6) + ((v104 | v103) >> ((v109 & 0x1A ^ 0x1A) + (v109 & 0x1A)));
  v115 = v100 | ((v104 | v103) << 8);
  HIDWORD(v97) = v104 | v103;
  LODWORD(v97) = v103;
  v116 = v97 >> 22;
  HIDWORD(v97) = v104 | v103;
  LODWORD(v97) = v103;
  v117 = v97 >> 21;
  v118 = v102 ^ __ROR4__(v102 ^ 0xD6, 19) ^ v106 ^ v107 ^ __ROR4__(v102 ^ 0xD6, 7) ^ __ROR4__(v102 ^ 0xD6, 2) ^ v109 ^ ((v101 >> 3) | (32 * (v102 ^ 0xD6))) ^ ((v101 >> 6) | (4 * (v102 ^ 0xD6))) ^ ((v101 >> 2) | ((v102 ^ 0xD6) << 6)) ^ __ROR4__(v102 ^ 0xD6, 5);
  HIDWORD(v97) = LOBYTE(STACK[0x11B2]);
  LODWORD(v97) = v105;
  v119 = v97 >> 5;
  LODWORD(v97) = v105;
  v120 = v97 >> 4;
  LODWORD(v97) = v105;
  v121 = v97 >> 3;
  v122 = __PAIR64__(v105, __ROR4__(v105, 12));
  v123 = v105 ^ __ROR4__(v105, 10) ^ v119 ^ v116 ^ v117 ^ v113 ^ __ROR4__(v105, 16) ^ __ROR4__(v105, 18) ^ __ROR4__(v105, 15) ^ (__PAIR64__(v104, v105) >> 14) ^ v122 ^ (__PAIR64__(v104, v105) >> 11) ^ v120 ^ v121 ^ v110 ^ v108 ^ v111 ^ v115 ^ v112 ^ v114;
  LOBYTE(STACK[0xFA8]) = (v118 ^ v3) >> 24;
  LODWORD(v122) = v105;
  v124 = v123 + (v122 >> 2) - 2 * (v123 & (v122 >> 2));
  LOBYTE(STACK[0xFFD]) = (v118 ^ v3) >> 16;
  LOBYTE(STACK[0x11B2]) = v124;
  LOBYTE(STACK[0x1052]) = (v118 ^ v3) >> 8;
  LOBYTE(STACK[0x1108]) = BYTE2(v124);
  LOBYTE(STACK[0x115D]) = BYTE1(v124);
  LOBYTE(STACK[0x10A7]) = v118;
  LOBYTE(STACK[0x10B3]) = HIBYTE(v124);
  v125 = LOBYTE(STACK[0x1207]);
  v126 = LOBYTE(STACK[0xF39]) | (LOBYTE(STACK[0x12B1]) << 8);
  v127 = (v125 << 24) | (LOBYTE(STACK[0x125C]) << 16) | v126;
  v128 = LOBYTE(STACK[0x10FC]) ^ 0xD6;
  v129 = ((LOBYTE(STACK[0x1151]) ^ 0xD6) << 16) | (v128 << 24) | LOBYTE(STACK[0x11FB]) | ((LOBYTE(STACK[0x11A6]) ^ 0xD6) << 8);
  v130 = v129 ^ 0xD6u;
  HIDWORD(v122) = v129 ^ 0xD6;
  LODWORD(v122) = v129;
  v131 = v122 >> 10;
  HIDWORD(v122) = v129 ^ 0xD6;
  LODWORD(v122) = ((LOBYTE(STACK[0x1151]) ^ 0xD6) << 16) | (v128 << 24);
  v132 = v122 >> 19;
  HIDWORD(v122) = v129 ^ 0xD6;
  LODWORD(v122) = v129;
  v133 = v122 >> 12;
  HIDWORD(v122) = v129 ^ 0xD6;
  LODWORD(v122) = ((LOBYTE(STACK[0x1151]) ^ 0xD6) << 16) | (v128 << 24);
  v134 = v133 ^ v129 ^ v132 ^ (v122 >> 20) ^ v131 ^ __ROR4__(v130, 5) ^ __ROR4__(v130, 2) ^ ((v128 >> 3) | (32 * v130)) ^ ((v128 >> 6) | (4 * v130)) ^ ((v128 >> 2) | (v130 << 6)) ^ ((v130 << ((((v130 >> 7) & 0x1D ^ 0x1D) + ((v130 >> 7) & 0x1D)) & 0xFB)) | (v130 >> 7));
  LOBYTE(STACK[0x10FC]) = (v134 ^ v3) >> 24;
  v135 = v127 ^ (v126 << 21) ^ __ROR4__(v127, 15) ^ __ROR4__(v127, 12) ^ (v127 >> 11) ^ __ROR4__(v127, 10) ^ __ROR4__(v127, 5) ^ __ROR4__(v127, 4) ^ __ROR4__(v127, 3) ^ __ROR4__(v127, 2) ^ (__PAIR64__(v126, v127) >> 14) ^ __ROR4__(v127, 21) ^ __ROR4__(v127, 22) ^ __ROR4__(v127, 19) ^ __ROR4__(v127, 18) ^ __ROR4__(v127, 16) ^ ((v125 >> 6) | (4 * v127)) ^ ((v125 >> 7) | (2 * v127)) ^ ((v125 >> 4) | (16 * v127)) ^ ((v125 >> 3) | (32 * v127)) ^ ((v125 >> 2) | (v127 << 6)) ^ (v125 | (v127 << 8));
  *(v64 + (((v127 & 0x1A3603FF ^ 0x1A3603FF) + (v127 & 0x1A3603FF)) & 0x202A07FF & ((v135 & 0x27D9CED7 ^ 0x27D9CED7) + (v135 & 0x27D9CED7)))) = HIBYTE(v135);
  v136 = LOBYTE(STACK[0xF8E]);
  LODWORD(v130) = LOBYTE(STACK[0x1250]) ^ 0xD6;
  v137 = ((LOBYTE(STACK[0x12A5]) ^ 0xD6) << 16) | (v130 << 24);
  v138 = LOBYTE(STACK[0xF82]) | ((LOBYTE(STACK[0x12FA]) ^ 0xD6) << 8) | v137;
  v139 = v138 ^ 0xD6;
  v140 = LOBYTE(STACK[0x108D]);
  v141 = v140 | (LOBYTE(STACK[0x1038]) << 8);
  v142 = v141 | (v136 << 24) | (LOBYTE(STACK[0xFE3]) << 16);
  HIDWORD(v122) = v142;
  LODWORD(v122) = (v136 << 24) | (LOBYTE(STACK[0xFE3]) << 16);
  v143 = v122 >> 18;
  HIDWORD(v122) = v141;
  v144 = v122 >> 16;
  v145 = (v130 >> 6) | (4 * (v138 ^ 0xD6));
  v146 = (v130 >> 3) | (32 * (v138 ^ 0xD6));
  LODWORD(v130) = (v130 >> 2) | ((v138 ^ 0xD6) << 6);
  HIDWORD(v122) = v138 ^ 0xD6;
  LODWORD(v122) = v137;
  v147 = v122 >> 19;
  HIDWORD(v122) = v138 ^ 0xD6;
  LODWORD(v122) = v138;
  v148 = v122 >> 12;
  HIDWORD(v122) = LOBYTE(STACK[0xF82]);
  LODWORD(v122) = v139;
  LODWORD(v130) = v139 ^ __ROR4__(v139, 2) ^ (v122 >> 5) ^ __ROR4__(v139, 7) ^ __ROR4__(v139, 10) ^ __ROR4__(v139, 20) ^ v147 ^ v148 ^ v146 ^ v145 ^ v130 ^ 0x66D6D6D6;
  LOBYTE(STACK[0x1151]) = (v134 ^ v3) >> 16;
  LOBYTE(STACK[0xF39]) = v135;
  LOBYTE(STACK[0x12B1]) = BYTE1(v135);
  LOBYTE(STACK[0x11A6]) = (v134 ^ v3) >> 8;
  LOBYTE(STACK[0x11FB]) = v134;
  LOBYTE(STACK[0x125C]) = BYTE2(v135);
  v149 = __PAIR64__(v140, __ROR4__(v142, 19));
  v150 = v142 ^ v144 ^ v143 ^ __ROR4__(v142, 22) ^ __ROR4__(v142, 21) ^ v149 ^ (__PAIR64__(v141, v142) >> 15) ^ (__PAIR64__(v141, v142) >> 14) ^ (__PAIR64__(v141, v142) >> 12) ^ (__PAIR64__(v141, v142) >> 11);
  LODWORD(v149) = v142;
  v151 = v150 ^ __ROR4__(v142, 10) ^ (v149 >> 5) ^ (__PAIR64__(v140, v142) >> 4) ^ (__PAIR64__(v140, v142) >> 3) ^ __ROR4__(v142, 2) ^ ((v136 >> 6) | (4 * v142)) ^ ((v136 >> 7) | (2 * v142)) ^ ((v136 >> 4) | (16 * v142)) ^ ((v136 >> 3) | (32 * v142)) ^ ((v136 >> 2) | (v142 << 6)) ^ (v136 | (v142 << 8));
  LOBYTE(STACK[0xF8E]) = HIBYTE(v151);
  LOBYTE(STACK[0x1250]) = BYTE3(v130);
  LOBYTE(STACK[0x12A5]) = BYTE2(v130);
  LOBYTE(STACK[0x108D]) = v151;
  LOBYTE(STACK[0xF82]) = v130;
  LOBYTE(STACK[0xFE3]) = BYTE2(v151);
  LOBYTE(STACK[0x1038]) = BYTE1(v151);
  LOBYTE(STACK[0x12FA]) = BYTE1(v130);
  v152 = LOBYTE(STACK[0x10E2]);
  v153 = LOBYTE(STACK[0xFD7]) ^ 0xD6;
  v154 = ((v152 - ((2 * v152) & 0x3A)) << 24) + 486539264;
  v155 = ((((LOBYTE(STACK[0x1137]) - ((2 * LOBYTE(STACK[0x1137])) & 0x18)) << 16) - 1962147840) ^ 0xF594FA0B) & (v154 ^ 0xE2FFFE8F) ^ (v154 & 0x81DEFB7B | 0x210484);
  v156 = v155 ^ 0x99E899CF;
  v157 = (v153 << 24) | ((LOBYTE(STACK[0x102C]) ^ 0xD6) << 16);
  v158 = LOBYTE(STACK[0x10D6]) | ((LOBYTE(STACK[0x1081]) ^ 0xD6) << 8) | v157;
  v159 = v158 ^ 0xD6;
  v160 = v159 ^ (v153 >> 2) ^ ((v153 >> 3) | (32 * v159)) ^ ((v153 >> 6) | (4 * v159));
  HIDWORD(v149) = v158 ^ 0xD6;
  LODWORD(v149) = v157;
  v161 = (v149 >> 20) ^ ((v158 ^ 0xD6) << 6);
  v162 = v161 & 0x40;
  v163 = v161 & 0xFFFFFFBF;
  if ((v160 & v162) != 0)
  {
    v162 = -v162;
  }

  v164 = v162 + v160;
  v165 = LOBYTE(STACK[0x11E1]) - ((2 * LOBYTE(STACK[0x11E1])) & 0x1C) + 928696846;
  v166 = ((((LOBYTE(STACK[0x118C]) - ((2 * LOBYTE(STACK[0x118C])) & 0x88)) << 8) + 24331264) ^ 0x7C1AF56) & (v165 ^ 0xC8A535F9) ^ v165 & 0x210800A9;
  v167 = (v166 ^ 0xD966A3C1) & (v155 ^ 0x80460170) ^ v155 & 0x123B600;
  v168 = __PAIR64__(v159, v157) >> 19;
  v169 = v167 ^ LODWORD(STACK[0x3B8]);
  v170 = (__PAIR64__(v159, v158) >> 10) ^ (__PAIR64__(v159, v158) >> 5) ^ __ROR4__(v159, 2) ^ __ROR4__(v159, 7) ^ (__PAIR64__(v159, v158) >> 12) ^ v168 ^ v163 ^ v164;
  v171 = (v170 & 0xDB ^ 0xFD) - 37 + (v170 & 0xDB ^ 0x26);
  HIDWORD(v172) = v167 ^ LODWORD(STACK[0x3B8]);
  LODWORD(v172) = HIDWORD(v172);
  v173 = (v172 >> 15) - ((2 * (v172 >> 15)) & 0x82819694);
  LODWORD(v172) = HIDWORD(v172);
  v174 = (v172 >> 12) + 1915423836 + (~(2 * (v172 >> 12)) | 0x1BA9E749);
  v175 = v170 ^ (v3 + 208);
  HIDWORD(v172) = v172;
  v176 = (v172 >> 4) - ((2 * (v172 >> 4)) & 0x5A3D6F80);
  HIDWORD(v172) = v165;
  LODWORD(v172) = v167 ^ LODWORD(STACK[0x3B8]);
  v177 = v172 >> 3;
  LOBYTE(STACK[0xFD7]) = HIBYTE(v175);
  HIDWORD(v172) = v169;
  LODWORD(v172) = v169;
  v178 = (v172 >> 2) - ((2 * (v172 >> 2)) & 0x69E179BA);
  HIDWORD(v172) = v166 ^ 0x9C1D0B8B;
  LODWORD(v172) = v156;
  v179 = (v172 >> 16) ^ ((v152 >> 2) | 0x29183E40) ^ ((v166 ^ 0x9C1D0B8B) << 21) ^ (v167 >> 11) ^ v169 ^ (__PAIR64__(v169, v156) >> 19) ^ (__PAIR64__(v169, v156) >> 21) ^ (__PAIR64__(v169, v156) >> 18);
  HIDWORD(v172) = v166 ^ 0x9C1D0B8B;
  LODWORD(v172) = v169;
  v180 = v179 ^ (v172 >> 10) ^ (__PAIR64__(v165, v169) >> 5) ^ (__PAIR64__(v169, v156) >> 22) ^ (__PAIR64__(v166, v169) >> 14) ^ ((v152 >> 6) | (4 * v169)) ^ ((v152 >> 7) | (2 * v169)) ^ ((v152 >> 4) | (16 * v169)) ^ ((v152 >> 3) | (32 * v169)) ^ (v173 - 1052718262) ^ (v176 - 1390495808) ^ (v178 + 888192221) ^ v174 ^ ((v152 | (v169 << 8)) + 1534387778 - 2 * ((v152 | (v169 << 8)) & 0x5B74E64F ^ v152 & a2)) ^ ((v177 ^ 0xC0000000) + 1253780501 - 2 * ((v177 ^ 0xC0000000) & 0x4ABB2C17 ^ v177 & 2)) ^ (v169 << (v171 + 8));
  LOBYTE(STACK[0x10E2]) = HIBYTE(v180);
  LOBYTE(STACK[0x102C]) = BYTE2(v175);
  LOBYTE(STACK[0x1081]) = BYTE1(v175);
  LOBYTE(STACK[0x1137]) = BYTE2(v180);
  LOBYTE(STACK[0x11E1]) = v180;
  LOBYTE(STACK[0x10D6]) = v175;
  LOBYTE(STACK[0x118C]) = BYTE1(v180);
  v181 = *(v64 + (((HIWORD(v180) & 0x7A ^ 0x7A) + (HIWORD(v180) & 0x7A)) | ((v174 & 0x2B0 ^ 0x2A0) + (v174 & 0x2B0 ^ 0x10))));
  v182 = ((v181 - ((2 * v181) & 0x108) + 1307678340) & 0x24A ^ 0x77DECB44 ^ ((v181 - ((2 * v181) & 0x108) + 1307678340) ^ 0xB2066931) & ((LOBYTE(STACK[0x11D5]) << 8) ^ 0xFFE63BB5)) & (((((LOBYTE(STACK[0x112B]) ^ 0x88888888) << 24) ^ 0x1F9074E8) & ((LOBYTE(STACK[0x1180]) << 16) ^ 0xFF4EFEEE) | (LOBYTE(STACK[0x1180]) << 16) & 0x6F0000) ^ 0xBE298B17) ^ ((((LOBYTE(STACK[0x112B]) ^ 0x88888888) << 24) ^ 0x1F9074E8) & ((LOBYTE(STACK[0x1180]) << 16) ^ 0xFF4EFEEE) & 0x77C75000 | (LOBYTE(STACK[0x1180]) << 16) & 0x470000);
  LOBYTE(v165) = v165 & 0x12;
  LODWORD(v169) = ((v182 >> 10) & 0x3D ^ 0xE497BD19) & ((v182 >> 10) & 0x3D ^ 0xE4DFBF1F) ^ (v182 >> 10) & 0x39;
  LOBYTE(v165) = (((v165 ^ 0x90) + 91) ^ ((v165 ^ 0xA) - 63) ^ ((v165 ^ 0x8A) + 65)) + (((v165 ^ 0x4B) + 127) ^ ((v165 ^ 0x95) - 95) ^ ((v165 ^ 0xDC) - 22)) - 54;
  LOBYTE(v169) = (((v169 ^ 0xE1) - 100) ^ (-v169 - 123) ^ ((v169 ^ 0x3A) + 65)) - 5;
  return (*(STACK[0x480] + 8 * ((226 * (((v169 * v165 + 21 * (23 * v169 + 14 * v165) + 114) & 0x30) == 0)) ^ v2)))();
}

uint64_t sub_1001F4DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, unsigned int a8)
{
  LODWORD(STACK[0x570]) = 0;
  v15 = LOBYTE(STACK[0x1236]);
  v16 = LOBYTE(STACK[0xF68]) | (v15 << 24) | (LOBYTE(STACK[0x128B]) << 16) | (LOBYTE(STACK[0x12E0]) << 8);
  v17 = STACK[0x568];
  v18 = (LODWORD(STACK[0x568]) - 1933574426) & (v9 << 22) | ((v9 << 22) ^ 0x13FFFFF) & (v10 ^ 0x7326E100);
  v19 = ((v11 << 13) ^ 0x521FFF) & ((a8 >> 19) ^ 0x84D6FFC6) | (v11 << 13) & 0x7B290000;
  v20 = ((v13 >> 2) ^ 0x35) - ((v13 >> 1) & 0x14) - 745425142;
  v21 = v20 & 0x81900066;
  v22 = ((v9 << 6) ^ 0xB609D919) & (v20 ^ 0x2C6E48D1);
  v23 = (4 * v11) ^ 0x42CDB833;
  v24 = v22 ^ v21;
  v25 = (v13 >> 3) | (32 * v9);
  v26 = v23 & ((v13 >> 6) | 0xFFFFFFFC) ^ v9;
  v27 = (__PAIR64__(v9, a8) >> 20) ^ __ROR4__(v9, 7) ^ __ROR4__(v9, 5) ^ __ROR4__(v9, 2);
  v28 = v26 ^ v25 ^ 0x73237B04;
  v30 = __PAIR64__(v16, __ROR4__(v16, 21));
  v29 = v16 ^ __ROR4__(v16, 31) ^ __ROR4__(v16, 30) ^ __ROR4__(v16, 28) ^ __ROR4__(v16, 27) ^ __ROR4__(v16, 26) ^ __ROR4__(v16, 22) ^ v30;
  LODWORD(v30) = LOBYTE(STACK[0xF68]) | (v15 << 24) | (LOBYTE(STACK[0x128B]) << 16) | (LOBYTE(STACK[0x12E0]) << 8);
  v31 = v30 >> 4;
  v32 = (LOBYTE(STACK[0x1012]) << 16) | (LOBYTE(STACK[0xFBD]) << 24);
  v33 = LOBYTE(STACK[0x10BC]) | (LOBYTE(STACK[0x1067]) << 8);
  v34 = (258892501 - (((v26 ^ v25 ^ 0x678AF75) - 1968952433) ^ ((v26 ^ v25 ^ 0x2675952A) - 1431760430) ^ ((v26 ^ v25 ^ 0xA3BFDC70) + 795039884))) ^ v28 ^ ((((v24 ^ 0x15D832FB) - 198596062) ^ ((v24 ^ 0xD5CF1EB2) + 876512873) ^ ((v24 ^ 0x578383D2) - 1234035959)) - (((v28 ^ v24 ^ 0x4857C372) - 1448715351) ^ ((v28 ^ v24 ^ 0xE8368984) + 164041055) ^ ((v28 ^ v24 ^ 0xC7647846) + 647356573)) + 277836585);
  v35 = ((v34 ^ 0xD3D28BA8) - 2094667713) ^ ((v34 ^ 0xF61ED7AD) - 1494633412) ^ ((v34 ^ 0xD55DC12E) - 2052414791);
  v36 = LOBYTE(STACK[0xFB1]) ^ a6;
  v37 = v36 | ((LOBYTE(STACK[0xF5C]) ^ a6) << 8);
  v38 = (((v24 ^ 0x1218742E) - 202773259) ^ ((v24 ^ 0x7739E11D) - 1765246520) ^ ((v24 ^ 0xF2B53AA8) + 323265139)) - 382481920 + v35;
  v39 = LOBYTE(STACK[0x127F]) ^ a6;
  v40 = ((LOBYTE(STACK[0x12D4]) ^ a6) << 16) | (v39 << 24);
  v41 = v27 ^ v19 ^ v12 ^ v18 ^ v38;
  v42 = (v41 ^ 0x42E6883u) >> (((v30 >> 4) & 0x10 ^ 0x10) + ((v30 >> 4) & 0x10));
  v43 = v40 | v37;
  LOBYTE(STACK[0x122A]) = v41 ^ 0x83;
  HIDWORD(v30) = v16;
  LODWORD(v30) = v16;
  v44 = (v30 >> 18) ^ __ROR4__(v16, 16) ^ __ROR4__(v16, 14) ^ __ROR4__(v16, 12) ^ __ROR4__(v16, 11) ^ __ROR4__(v16, 10) ^ __ROR4__(v16, 5) ^ __ROR4__(v16, 3);
  v46 = __PAIR64__(v16, __ROR4__(v16, 2));
  v45 = v44 ^ v46;
  LODWORD(v46) = v16;
  v47 = v45 ^ v31 ^ ((v16 << (((v15 & 0xDF ^ 0xDF) + (v15 & 0xDF)) & 0xFB ^ 0xCAu)) + (v16 >> 15)) ^ (((v46 >> 19) ^ -(v46 >> 19) ^ ((v29 ^ (v15 | (v16 << 8))) - (v29 ^ (v15 | (v16 << 8)) ^ (v46 >> 19)))) + (v29 ^ (v15 | (v16 << 8))));
  LOBYTE(STACK[0x1236]) = HIBYTE(v47);
  LOBYTE(STACK[0x11D5]) = BYTE1(v41) ^ 0x68;
  LOBYTE(STACK[0x112B]) = HIBYTE(v41) ^ 4;
  LOBYTE(STACK[0x128B]) = BYTE2(v47);
  LOBYTE(STACK[0xF68]) = v45 ^ v31 ^ ((v16 << (((v15 & 0xDF ^ 0xDF) + (v15 & 0xDF)) & 0xFB ^ 0xCAu)) + (v16 >> 15)) ^ (((v46 >> 19) ^ -(v46 >> 19) ^ ((v29 ^ v15) - (v29 ^ v15 ^ (v46 >> 19)))) + (v29 ^ v15));
  LOBYTE(STACK[0x12E0]) = BYTE1(v47);
  HIDWORD(v46) = v40 | v37;
  LODWORD(v46) = v40;
  v48 = v46 >> 20;
  HIDWORD(v46) = v40 | v37;
  LODWORD(v46) = v40;
  LOBYTE(STACK[0x1180]) = (v42 - ((2 * v42) & 0xFB) - 3) ^ 0xFD;
  v49 = v43 ^ (v37 << 20) ^ v48 ^ __ROR4__(v43, 10) ^ __ROR4__(v43, 5) ^ __ROR4__(v43, 2) ^ (v46 >> 19) ^ (((v40 | v37) >> 12) | (v36 << 25)) ^ ((v40 | v37) >> ((v39 >> 3) & 7) >> ((v39 >> 3) & 7 ^ 7)) ^ ((v39 >> 3) | (32 * (v40 | v37))) ^ ((v39 >> 6) | (4 * (v40 | v37))) ^ ((v39 >> 2) | ((v40 | v37) << 6));
  v50 = STACK[0x52C];
  v51 = v49 ^ LODWORD(STACK[0x52C]);
  LOBYTE(STACK[0x127F]) = HIBYTE(v51);
  v52 = (v33 | v32) ^ (v32 >> 19) ^ (v32 >> 18) ^ __ROR4__(v33 | v32, 31) ^ __ROR4__(v33 | v32, 30) ^ __ROR4__(v33 | v32, 28) ^ __ROR4__(v33 | v32, 27) ^ __ROR4__(v33 | v32, 26) ^ __ROR4__(v33 | v32, 24) ^ __ROR4__(v33 | v32, 22) ^ __ROR4__(v33 | v32, 21) ^ ((v33 | v32) << 13) ^ ((v33 | v32) << 14) ^ __ROR4__(v33 | v32, 16) ^ __ROR4__(v33 | v32, 15) ^ __ROR4__(v33 | v32, 14) ^ __ROR4__(v33 | v32, 12) ^ __ROR4__(v33 | v32, 11) ^ __ROR4__(v33 | v32, 10) ^ __ROR4__(v33 | v32, 5) ^ __ROR4__(v33 | v32, 4) ^ __ROR4__(v33 | v32, 3) ^ __ROR4__(v33 | v32, 2);
  LOBYTE(STACK[0xFBD]) = HIBYTE(v52);
  LOBYTE(STACK[0x1012]) = BYTE2(v52);
  LOBYTE(STACK[0x12D4]) = BYTE2(v51);
  LOBYTE(STACK[0x10BC]) = v52;
  LOBYTE(STACK[0x1067]) = BYTE1(v52);
  LOBYTE(STACK[0xF5C]) = BYTE1(v51);
  LOBYTE(STACK[0xFB1]) = v51;
  v53 = v8[(v49 & 0x1E1 ^ 0x121u) + (v51 & 0x1E1)];
  v54 = LOBYTE(STACK[0x1006]) ^ a6;
  v55 = (v54 << 24) | ((LOBYTE(STACK[0x105B]) ^ a6) << 16);
  v56 = LOBYTE(STACK[0x1210]);
  v57 = v55 | LOBYTE(STACK[0x1105]) | ((LOBYTE(STACK[0x10B0]) ^ a6) << 8);
  v58 = (LOBYTE(STACK[0x1166]) << 16) | (v53 << 24);
  v59 = (v54 >> 3) | (32 * (v57 ^ a6));
  v60 = v54 >> 2;
  v61 = v54 >> 6;
  v62 = v56 | (LOBYTE(STACK[0x11BB]) << 8);
  v63 = v62 | v58;
  HIDWORD(v46) = v57 ^ a6;
  LODWORD(v46) = v55;
  LODWORD(v16) = v46 >> 20;
  HIDWORD(v46) = v57 ^ a6;
  LODWORD(v46) = v57;
  v64 = v16 ^ (v46 >> 12);
  HIDWORD(v46) = v57 ^ a6;
  LODWORD(v46) = v55;
  v65 = (v46 >> 19) ^ v57 ^ a6 ^ v64;
  HIDWORD(v46) = v57 ^ a6;
  LODWORD(v46) = v57;
  v66 = v65 ^ (v46 >> 10) ^ __ROR4__(v57 ^ a6, 7) ^ __ROR4__(v57 ^ a6, 5) ^ __ROR4__(v57 ^ a6, 2);
  v67 = v59 ^ (v61 | (4 * (v57 ^ a6))) ^ (v60 | ((v57 ^ a6) << 6));
  HIDWORD(v46) = v62 | v58;
  LODWORD(v46) = v58;
  v68 = v46 >> 22;
  v69 = v66 ^ v67;
  LOBYTE(STACK[0x105B]) = (v69 ^ v50) >> 16;
  LOBYTE(STACK[0x1006]) = (v69 ^ v50) >> 24;
  HIDWORD(v46) = v62 | v58;
  LODWORD(v46) = v58;
  v70 = v68 ^ (v46 >> 21);
  HIDWORD(v46) = v62 | v58;
  LODWORD(v46) = v58;
  v71 = v70 ^ (v46 >> 19);
  HIDWORD(v46) = v62 | v58;
  LODWORD(v46) = v58;
  v72 = (v62 | v58) ^ (v62 << 16) ^ (HIWORD(v58) | (v62 << 21)) ^ (v63 >> 11) ^ v71 ^ (v46 >> 18) ^ (__PAIR64__(v62, v62 | v58) >> 15) ^ (__PAIR64__(v62, v63) >> 14) ^ (__PAIR64__(v62, v63) >> 12) ^ (__PAIR64__(v62, v63) >> 10) ^ (__PAIR64__(v56, v63) >> 5) ^ (__PAIR64__(v56, v63) >> 4) ^ __ROR4__(v63, 3) ^ __ROR4__(v62 | v58, 2) ^ ((v53 >> 6) | (4 * v63)) ^ ((v53 >> 7) | (2 * (v62 | v58))) ^ ((v53 >> 4) | (16 * v63)) ^ ((v53 >> 3) | (32 * v63)) ^ ((v53 >> 2) | (v63 << 6)) ^ (v53 | (v63 << 8));
  LOBYTE(STACK[0x1105]) = v69 ^ v50;
  LOBYTE(STACK[0x1166]) = BYTE2(v72);
  LOBYTE(STACK[0x10B0]) = a6 ^ BYTE1(v69);
  LOBYTE(STACK[0x1210]) = v72;
  LOBYTE(STACK[0x11BB]) = BYTE1(v72);
  LOBYTE(STACK[0x1111]) = HIBYTE(v72);
  LODWORD(v16) = LOBYTE(STACK[0x1265]);
  v73 = (v16 << 24) | (LOBYTE(STACK[0x12BA]) << 16);
  v74 = LOBYTE(STACK[0xF97]) | (LOBYTE(STACK[0xF42]) << 8);
  v75 = v74 | v73;
  v76 = (v16 >> 2) | ((v74 | v73) << 6);
  v77 = LOBYTE(STACK[0x115A]) ^ a6;
  v78 = (v77 << 24) | ((LOBYTE(STACK[0x11AF]) ^ a6) << 16) | LOBYTE(STACK[0x1259]) | ((LOBYTE(STACK[0x1204]) ^ a6) << 8);
  v79 = v78 ^ a6;
  HIDWORD(v46) = v78 ^ a6;
  LODWORD(v46) = (v77 << 24) | ((LOBYTE(STACK[0x11AF]) ^ a6) << 16);
  v80 = v46 >> 20;
  v81 = (v16 >> 3) | (32 * (v74 | v73));
  HIDWORD(v46) = v78 ^ a6;
  v82 = v46 >> 19;
  HIDWORD(v46) = v78 ^ a6;
  LODWORD(v46) = v78;
  v83 = v82 ^ v78 ^ v80 ^ (v46 >> 12);
  HIDWORD(v46) = v78 ^ a6;
  LODWORD(v46) = v78;
  v84 = (v77 >> 6) | (4 * (v78 ^ a6));
  v85 = v83 ^ (v46 >> 10) ^ __ROR4__(v78 ^ a6, 7) ^ __ROR4__(v78 ^ a6, 5) ^ __ROR4__(v78 ^ a6, 2);
  v86 = (v16 >> 7) | (2 * (v74 | v73));
  v87 = ((v77 >> 3) | (32 * v79)) ^ v84;
  v88 = (v16 >> 6) | (4 * (v74 | v73));
  v89 = v87 ^ ((v77 >> 2) | (v79 << 6));
  HIDWORD(v46) = v74 | v73;
  LODWORD(v46) = v73;
  v90 = v46 >> 22;
  v91 = v85 ^ v89;
  HIDWORD(v46) = v74 | v73;
  LODWORD(v46) = v73;
  v92 = v90 ^ (v46 >> 21);
  HIDWORD(v46) = v74 | v73;
  LODWORD(v46) = v73;
  v93 = ((v74 | v73) << ((((LOBYTE(STACK[0x1265]) >> 7) ^ 0xF) + (LOBYTE(STACK[0x1265]) >> 7)) & 0x1E)) + (v73 >> 18);
  v94 = (v74 | v73) ^ (__PAIR64__(v74, v73) >> 16) ^ v92 ^ (v46 >> 19) ^ (__PAIR64__(v74, v74 | v73) >> 15);
  HIDWORD(v46) = LOBYTE(STACK[0xF97]);
  LODWORD(v46) = v75;
  v95 = v46 >> 4;
  v96 = v94 ^ (__PAIR64__(v74, v75) >> 14) ^ (__PAIR64__(v74, v75) >> 12) ^ (__PAIR64__(v74, v75) >> 11);
  LODWORD(v46) = v75;
  v97 = v46 >> 3;
  LODWORD(v46) = v75;
  v98 = v96 ^ __ROR4__(v75, 10) ^ __ROR4__(v75, 5) ^ v95 ^ v97 ^ (v46 >> 2) ^ v88 ^ v86 ^ ((v16 >> 4) | (16 * v75)) ^ v81 ^ v76 ^ (v16 | (v75 << 8)) ^ v93;
  LOBYTE(STACK[0x11AF]) = (v91 ^ v14) >> 16;
  LOBYTE(STACK[0x1265]) = HIBYTE(v98);
  LOBYTE(STACK[0x1204]) = (v91 ^ v14) >> 8;
  LOBYTE(STACK[0x115A]) = (v91 ^ v14) >> 24;
  LOBYTE(STACK[0x1259]) = v91;
  LOBYTE(STACK[0x12BA]) = BYTE2(v98);
  LOBYTE(STACK[0xF42]) = BYTE1(v98);
  LOBYTE(STACK[0xF97]) = v98;
  v99 = ((LOBYTE(STACK[0x12AE]) ^ a6) << 24) | ((LOBYTE(STACK[0xF36]) ^ a6) << 16);
  v100 = LOBYTE(STACK[0xFE0]) | ((LOBYTE(STACK[0xF8B]) ^ a6) << 8) | v99;
  HIDWORD(v46) = v100 ^ a6;
  LODWORD(v46) = v100;
  v101 = v46 >> 10;
  HIDWORD(v46) = v100 ^ a6;
  LODWORD(v46) = v100;
  v102 = v46 >> 12;
  HIDWORD(v46) = v100 ^ a6;
  LODWORD(v46) = (LOBYTE(STACK[0x12AE]) ^ a6) << 24;
  v103 = v46 >> 30;
  v104 = (LOBYTE(STACK[0xFEC]) << 24) | (LOBYTE(STACK[0x1041]) << 16);
  v105 = LOBYTE(STACK[0x10EB]) | (LOBYTE(STACK[0x1096]) << 8);
  v106 = (v105 | v104) ^ __ROR4__(v105 | v104, 31);
  HIDWORD(v46) = v100 ^ a6;
  v107 = v46 >> 27;
  HIDWORD(v46) = v100 ^ a6;
  v108 = v46 >> 26;
  HIDWORD(v46) = v105 | v104;
  LODWORD(v46) = v104;
  v109 = v101 ^ v100 ^ __ROR4__(v100 ^ a6, 5) ^ __ROR4__(v100 ^ a6, 2) ^ v107 ^ v103 ^ v108 ^ __ROR4__(v100 ^ a6, 20) ^ (__PAIR64__(v100 ^ a6, v99) >> 19) ^ v102 ^ __ROR4__(v100 ^ a6, 7);
  LOBYTE(STACK[0xF8B]) = (v109 ^ v14) >> 8;
  LOBYTE(STACK[0xF36]) = (v109 ^ v14) >> 16;
  v110 = (HIWORD(v104) | (v105 << 18)) ^ (v105 << 16) ^ __ROR4__(v105 | v104, 4) ^ __ROR4__(v105 | v104, 5) ^ __ROR4__(v105 | v104, 28) ^ __ROR4__(v105 | v104, 30) ^ __ROR4__(v105 | v104, 27) ^ __ROR4__(v105 | v104, 26) ^ __ROR4__(v105 | v104, 24) ^ __ROR4__(v105 | v104, 22) ^ __ROR4__(v105 | v104, 21) ^ __ROR4__(v105 | v104, 18) ^ __ROR4__(v105 | v104, 15) ^ __ROR4__(v105 | v104, 12) ^ __ROR4__(v105 | v104, 11) ^ __ROR4__(v105 | v104, 10) ^ __ROR4__(v105 | v104, 3) ^ __ROR4__(v105 | v104, 2) ^ (v46 >> 19) ^ v106 ^ ((v105 | v104) >> (((v106 & 0x9F ^ 0x9F) + (v106 & 0x9F)) & 0xE));
  LOBYTE(STACK[0x1096]) = BYTE1(v110);
  LOBYTE(STACK[0x1041]) = BYTE2(v110);
  LOBYTE(STACK[0xFEC]) = HIBYTE(v110);
  LOBYTE(STACK[0x12AE]) = (v109 ^ v14) >> 24;
  LOBYTE(STACK[0xFE0]) = v109;
  LOBYTE(STACK[0x10EB]) = v110;
  v111 = LOBYTE(STACK[0x1035]);
  v112 = v111 ^ a6;
  v113 = (v111 ^ a6) << 24;
  v114 = LOBYTE(STACK[0x10DF]);
  v115 = LOBYTE(STACK[0x1140]) << ((v111 ^ a6) & 0x18 | v111 & 0x18 ^ 8);
  v116 = v113 | ((LOBYTE(STACK[0x108A]) ^ a6) << 16);
  v117 = (LOBYTE(STACK[0x123F]) | (LOBYTE(STACK[0x11EA]) << 8) | (LOBYTE(STACK[0x1195]) << 16)) ^ v115;
  v118 = LOBYTE(STACK[0x1134]) | ((v114 ^ a6) << 8) | v116;
  HIDWORD(v46) = v118 ^ a6;
  LODWORD(v46) = v116;
  v119 = v46 >> 20;
  HIDWORD(v46) = v118 ^ a6;
  LODWORD(v46) = v116;
  v120 = v46 >> 19;
  HIDWORD(v46) = v118 ^ a6;
  LODWORD(v46) = v118;
  v121 = v120 ^ v118 ^ a6 ^ (v46 >> 12) ^ __ROR4__(v118 ^ a6, 5);
  v122 = __PAIR64__(v117, __ROR4__(v118 ^ a6, 2));
  v123 = v121 ^ v122 ^ v119;
  LODWORD(v122) = v115;
  v124 = v122 >> 27;
  v126 = __PAIR64__(v117, __ROR4__(v118 ^ a6, 7));
  v125 = v123 ^ v126;
  LODWORD(v126) = v115;
  LODWORD(v16) = v126 >> 28;
  v127 = v125 ^ (((v118 ^ a6) >> ((v114 & 0xA ^ 0xA) + (v114 & 0xA))) + ((v118 ^ a6) << 22)) ^ ((v112 >> 3) | (32 * (v118 ^ a6))) ^ ((v112 >> 6) | (4 * (v118 ^ a6))) ^ ((v112 >> 2) | ((v118 ^ a6) << 6));
  LOBYTE(STACK[0x1035]) = a6 ^ HIBYTE(v127);
  HIDWORD(v126) = v117;
  LODWORD(v126) = v117;
  v128 = v126 >> 2;
  v129 = v117 ^ HIBYTE(v115) ^ __ROR4__(v117, 14) ^ __ROR4__(v117, 15) ^ (__PAIR64__(v117, v115) >> 30) ^ (__PAIR64__(v117, v115) >> 31) ^ v16 ^ v124 ^ __ROR4__(v117, 22) ^ (v117 << 11) ^ __ROR4__(v117, 19) ^ __ROR4__(v117, 16) ^ (__PAIR64__(v117, v115) >> 26) ^ __ROR4__(v117, 12) ^ __ROR4__(v117, 11) ^ __ROR4__(v117, 10) ^ __ROR4__(v117, 5) ^ __ROR4__(v117, 4) ^ __ROR4__(v117, 3) ^ (v117 << 8) ^ (v117 >> 21) ^ v128 ^ ((v117 << (((v117 >> 21) & 0xE ^ 0xE) + ((v117 >> 21) & 0xE))) + (v117 >> 18));
  LOBYTE(STACK[0x11EA]) = BYTE1(v129);
  LOBYTE(STACK[0x1195]) = BYTE2(v129);
  LOBYTE(STACK[0x1140]) = HIBYTE(v129);
  LOBYTE(STACK[0x123F]) = v129;
  LOBYTE(STACK[0x1134]) = v127 ^ a6;
  LOBYTE(STACK[0x108A]) = a6 ^ BYTE2(v127);
  LOBYTE(STACK[0x10DF]) = a6 ^ BYTE1(v127);
  v130 = LOBYTE(STACK[0x1294]);
  v131 = v8[((v129 & 0x3A0 ^ 0x3A0) + (v129 & 0x3A0u)) | 0xB9];
  v132 = LOBYTE(STACK[0x1189]) ^ a6;
  LODWORD(v16) = (v132 << 24) | ((LOBYTE(STACK[0x11DE]) ^ a6) << 16);
  v133 = (v130 << 24) | (v131 << 16);
  v134 = LOBYTE(STACK[0x1288]) | ((LOBYTE(STACK[0x1233]) ^ a6) << 8) | v16;
  v135 = v134 ^ ((v128 | 0x59) - (v128 & 0xA6) + 125) & 0xFE;
  v136 = LOBYTE(STACK[0xFC6]) | (LOBYTE(STACK[0xF71]) << 8);
  v137 = v132 >> 2;
  v138 = __PAIR64__(v135, v16) >> 20;
  v139 = __PAIR64__(v135, v16) >> 19;
  v140 = ((v132 >> 6) | (4 * v135)) ^ v135 ^ ((v132 >> 3) | (32 * v135));
  v141 = v136 | v133;
  v142 = (__PAIR64__(v135, v134) >> 10) ^ __ROR4__(v135, 7) ^ __ROR4__(v135, 2) ^ v139 ^ (__PAIR64__(v135, v134) >> 12) ^ v138 ^ __ROR4__(v135, 5) ^ (((v137 | (v135 << 6)) ^ -(v137 | (v135 << 6)) ^ (v140 - (v140 ^ (v137 | (v135 << 6))))) + v140);
  HIDWORD(v126) = v136 | v133;
  LODWORD(v126) = v133;
  v143 = v126 >> 21;
  HIDWORD(v126) = v136 | v133;
  LODWORD(v126) = v133;
  v144 = v126 >> 19;
  HIDWORD(v126) = v136;
  LODWORD(v126) = v136 | v133;
  v145 = v141 ^ __ROR4__(v141, 22) ^ v143 ^ (v126 >> 14) ^ v144;
  v146 = (v141 << (((v131 >> 2) & 0x10 ^ 0x10) + ((v131 >> 2) & 0x10))) + HIWORD(v133);
  HIDWORD(v126) = v136 | v133;
  LODWORD(v126) = v133;
  v147 = v126 >> 18;
  HIDWORD(v126) = LOBYTE(STACK[0xFC6]);
  LODWORD(v126) = v141;
  v148 = v145 ^ ((v130 >> 3) | (32 * v141)) ^ ((v130 >> 6) | (4 * v141)) ^ ((v130 >> 7) | (2 * v141)) ^ ((v130 >> 4) | (16 * v141)) ^ ((v130 >> 2) | (v141 << 6)) ^ (v130 | (v141 << 8)) ^ v147 ^ v146;
  HIDWORD(v126) = v148 ^ (v126 >> 12);
  LODWORD(v126) = v148 ^ (v136 << 20);
  v149 = (v126 >> 24) ^ 0xCF228A08;
  HIDWORD(v126) = LOBYTE(STACK[0xFC6]);
  LODWORD(v126) = v141;
  v150 = v126 >> 3;
  LODWORD(v126) = v141;
  v151 = v126 >> 4;
  LODWORD(v126) = v141;
  v152 = (__PAIR64__(v136, v141) >> 11) ^ (__PAIR64__(v136, v141) >> 15) ^ (__PAIR64__(v136, v141) >> 10) ^ __ROR4__(v141, 5) ^ v151 ^ v150 ^ (v126 >> 2) ^ __ROR4__(v149, 8) ^ 0x8CF228A;
  LOBYTE(STACK[0xF71]) = BYTE1(v152);
  LOBYTE(STACK[0x1294]) = HIBYTE(v152);
  LOBYTE(STACK[0x12E9]) = BYTE2(v152);
  LOBYTE(STACK[0x11DE]) = (v142 ^ v50) >> 16;
  LOBYTE(STACK[0x1288]) = v142 ^ v50;
  LOBYTE(STACK[0x1189]) = (v142 ^ v50) >> 24;
  LOBYTE(STACK[0x1233]) = (v142 ^ v50) >> 8;
  LOBYTE(STACK[0xFC6]) = v152;
  v153 = LOBYTE(STACK[0x100F]);
  v154 = v8[(v142 ^ v50) & 0x3AD | v142 & 0x3AD ^ 0x129] ^ a6;
  v155 = (((LOBYTE(STACK[0xF65]) ^ a6) << 16) | (v154 << 24) | v153 | ((LOBYTE(STACK[0xFBA]) ^ a6) << 8)) ^ a6;
  LODWORD(v141) = LOBYTE(STACK[0x101B]);
  v156 = (v141 << 24) | (LOBYTE(STACK[0x1070]) << 16);
  HIDWORD(v126) = v155;
  LODWORD(v126) = ((LOBYTE(STACK[0xF65]) ^ a6) << 16) | (v154 << 24);
  v157 = v126 >> 20;
  HIDWORD(v126) = v155;
  v158 = v126 >> 19;
  HIDWORD(v126) = v155;
  LODWORD(v126) = v126 | v153 | ((LOBYTE(STACK[0xFBA]) ^ a6) << 8);
  v159 = v126 >> 12;
  HIDWORD(v126) = v155;
  v160 = v158 ^ v157 ^ v159 ^ (v126 >> 10) ^ __ROR4__(v155, 7) ^ __ROR4__(v155, 5) ^ __ROR4__(v155, 2);
  v161 = LOBYTE(STACK[0x111A]) | (LOBYTE(STACK[0x10C5]) << 8);
  v162 = v161 | v156;
  v163 = ((v141 >> 7) | (2 * v162)) ^ v162 ^ ((v141 >> 6) | (4 * v162)) ^ ((v141 >> 4) | (16 * v162));
  HIDWORD(v126) = v163 ^ ((v141 >> 3) | (32 * v162));
  LODWORD(v126) = v163 ^ (32 * v162);
  v164 = v126 >> 21;
  v165 = v160 ^ ((v154 >> 3) | (32 * v155)) ^ ((v154 >> 6) | (4 * v155)) ^ ((v154 >> 2) | (v155 << 6));
  HIDWORD(v126) = v161 | v156;
  LODWORD(v126) = v156;
  v166 = v126 >> 22;
  HIDWORD(v126) = v161 | v156;
  LODWORD(v126) = v156;
  LODWORD(v141) = (v126 >> 21) ^ v166 ^ __ROR4__(v162, 19) ^ __ROR4__(v162, 18) ^ __ROR4__(v162, 16) ^ __ROR4__(v162, 12) ^ (__PAIR64__(v161, v162) >> 10) ^ ((v141 >> 2) | (v162 << 6)) ^ (v141 | (v162 << 8)) ^ (__PAIR64__(v161, v162) >> 15) ^ __ROR4__((v162 >> 8) & 0xFFFFF8 ^ __ROR4__(v162 << (((LOBYTE(STACK[0x101B]) >> 4) & 4) + ((LOBYTE(STACK[0x101B]) >> 4) & 4 ^ 0xC4) + 81), 29) ^ 0x798D87DA, 3) ^ __ROR4__(v164 ^ 0xAAD9F12B, 11);
  HIDWORD(v126) = LOBYTE(STACK[0x111A]);
  LODWORD(v126) = v161 | v156;
  v167 = v126 >> 4;
  LODWORD(v126) = v161 | v156;
  v168 = (v126 >> 3) ^ v167;
  LODWORD(v126) = v162;
  v169 = v168 ^ (v126 >> 5);
  v170 = v165 ^ v155;
  LODWORD(v126) = __ROR4__(__ROR4__(v141 ^ ((v162 << (-10 * (((v162 >> 15) & 0xCB ^ 0xCB) + ((v162 >> 15) & 0xCB)))) | (v162 >> 14)) ^ 0x6A44EBC5, 5) ^ 0xE0BE2CD, 27);
  LOWORD(v141) = v169 ^ v126;
  v171 = v169 ^ v126 ^ 0xC17C59A1;
  LODWORD(v126) = v162;
  v172 = v171 ^ (v126 >> 2);
  LOBYTE(STACK[0x101B]) = HIBYTE(v172);
  LOBYTE(STACK[0x10C5]) = BYTE1(v172);
  LOBYTE(STACK[0xF65]) = a6 ^ BYTE2(v170);
  LOBYTE(STACK[0x1070]) = BYTE2(v172);
  LOBYTE(STACK[0x111A]) = v172;
  LOBYTE(STACK[0xFBA]) = a6 ^ BYTE1(v170);
  LOBYTE(STACK[0x100F]) = v165 ^ v153;
  LODWORD(STACK[0x4F0]) = v17 + 250;
  LODWORD(STACK[0x4EC]) = v17 + 8678;
  v8[((v171 & 0x101) + (v141 & 0x101)) | 0x2ADLL] = a6 ^ HIBYTE(v170);
  v173 = v8;
  v174 = STACK[0x53C];
  v175 = LODWORD(STACK[0x4EC]) | 0x40;
  LODWORD(STACK[0x4FC]) = 0;
  LODWORD(STACK[0x4F4]) = v175;
  v176 = v8[(v175 ^ 0xEF73u) % 0x3CD];
  v177 = v8[791];
  v178 = (v177 << 16) ^ 0xFF29EE6D;
  v179 = ((*v173 - ((2 * *v173) & 0x22)) << 24) + 285212672;
  v180 = (((v177 >> 4) & 1) << 20) | 0x1CA1370B;
  HIDWORD(v126) = v174;
  LODWORD(v126) = v174;
  v181 = v126 >> 26;
  v182 = v174;
  v183 = (((v176 ^ 0x8A ^ ((v176 & 0xFFFFFFD6 ^ 0xD6) + (v176 & 0xFFFFFFD6))) << 24) ^ 0xAEF6A65) & v178 ^ v180;
  HIDWORD(v126) = v174;
  LODWORD(v126) = v174;
  v184 = v126 >> 31;
  LODWORD(v126) = v174;
  v185 = v126 >> 30;
  LODWORD(v141) = (v179 ^ 0xEEFFA97A) & ((((v173[85] - ((2 * v173[85]) & 0x1D0)) << 16) - 555220992) ^ 0x8055A97A);
  v186 = v179 & 0xA1000000 | 0x20F54;
  HIDWORD(v126) = v174;
  v187 = v126 >> 28;
  HIDWORD(v126) = v174;
  LODWORD(v126) = v174;
  v188 = v126 >> 27;
  LODWORD(v126) = v174;
  v189 = v126 >> 24;
  LODWORD(v141) = ((v141 ^ (v186 + 1324)) & 0xC219DD2 ^ 0xAC820139 ^ (v141 ^ (v186 + 1324) ^ 0xA0404200) & ((((v173[170] - ((2 * v173[170]) & 0x18A)) << 8) + 2118829312) ^ 0x8D94A728)) & ((v173[255] - ((2 * v173[255]) & 0x1D6) + 369870827) ^ 0xE9F43814);
  v190 = v181 - ((2 * v181) & 0x48F4EEEA);
  v191 = v174 >> 11;
  v192 = v184 - ((2 * v184) & 0xE487141C);
  v193 = v185 - ((2 * v185) & 0xF50C4042);
  HIDWORD(v126) = v174;
  LODWORD(v126) = v174;
  v194 = v187 - ((2 * v187) & 0xDDAE0F30);
  v195 = v189 - ((2 * v189) & 0x8CB6B306);
  v196 = (v126 >> 22) - ((2 * (v126 >> 22)) & 0x533E591C);
  HIDWORD(v126) = v174;
  LODWORD(v126) = v174;
  v197 = v174 << 21;
  v198 = (v126 >> 21) - ((2 * (v126 >> 21)) & 0xAC9A75A8);
  HIDWORD(v126) = v174;
  LODWORD(v126) = v174;
  v199 = (v126 >> 18) - 607974330 + (~(2 * (v126 >> 18)) | 0x4879E775);
  HIDWORD(v126) = v174;
  LODWORD(v126) = v174;
  v200 = (v126 >> 19) - ((2 * (v126 >> 19)) & 0x5D88F18E);
  v201 = (v191 ^ 0x1F0BB72A) & (v197 ^ 0x3FBFFFFF) | v197 & 0xE0FFFFFF;
  HIDWORD(v126) = v182;
  LODWORD(v126) = v182;
  v202 = (v126 >> 14) - ((2 * (v126 >> 14)) & 0xD347ED04);
  HIDWORD(v126) = v182;
  LODWORD(v126) = v182;
  v203 = (v126 >> 16) - ((2 * (v126 >> 16)) & 0xBF7970D2);
  HIDWORD(v126) = v182;
  LODWORD(v126) = v182;
  v204 = (v126 >> 12) - ((2 * (v126 >> 12)) & 0xC1674DE8);
  v205 = (v191 ^ 0x5E69131C) & ~v197 | v197 & 0xA1800000;
  HIDWORD(v126) = v182;
  LODWORD(v126) = v182;
  v206 = (v126 >> 10) - ((2 * (v126 >> 10)) & 0x4784EADC);
  v207 = (v193 - 91873247) ^ (v194 - 287897704);
  v208 = STACK[0x560];
  v209 = LODWORD(STACK[0x560]) + 1592294534;
  v210 = v8[961];
  HIDWORD(v126) = v209;
  LODWORD(v126) = v209;
  v211 = (v126 >> 30) ^ __ROR4__(v209, 27) ^ __ROR4__(v209, 26) ^ __ROR4__(v209, 20) ^ __ROR4__(v209, 19) ^ __ROR4__(v209, 12) ^ __ROR4__(v209, 10) ^ __ROR4__(v209, 7) ^ __ROR4__(v209, 5) ^ __ROR4__(v209, 2);
  v213 = __PAIR64__(v182, __ROR4__(v201 ^ 0x36B0D4AA, 4));
  v212 = (v192 + 1917028878) ^ v182 ^ v207 ^ (v188 - ((2 * v188) & 0xB6AF83EC) - 615005706) ^ (v190 + 612005749) ^ (v195 + 1180391811) ^ (v198 + 1447901908) ^ (v200 - 1362855737) ^ v199 ^ (v202 - 375130494) ^ (v203 - 541280151) ^ (v204 + 1622386420) ^ v205 ^ (v206 - 1547537042) ^ (v196 - 1449186162) ^ v213;
  LODWORD(v213) = v182;
  v214 = (v213 >> 3) - ((2 * (v213 >> 3)) & 0x47231EE8);
  HIDWORD(v213) = v182;
  LODWORD(v213) = v182;
  v215 = (v214 - 1550741644) ^ (v182 >> 4) ^ ((v213 >> 2) - ((2 * (v213 >> 2)) & 0x44BA17E0) + 576523248) ^ v212 ^ (v173[255] - ((2 * v173[255]) & 0x1D6) - 14357) & 0x13C ^ ((v182 >> (((v182 & 0x3F ^ 0x3F) + (v182 & 0x3F)) & 0x8F & ((v212 & 0x95 ^ 0x85) + (v212 & 0x95 ^ 0x10)))) + (v182 << 27)) ^ v141;
  LODWORD(v141) = v215 ^ (v182 << 28);
  v216 = v211 ^ (LODWORD(STACK[0x560]) - ((2 * v209) & 0xAC1BFBD2) - 1258915217) ^ (v210 - ((2 * v210) & 0x196) - 1243265077) & 0x41327D ^ ((v183 & ((v173[876] << 8) ^ 0xFFFFA96F) | (v173[876] << 8) & 0xA200) ^ 0x29CA92EC) & ((v210 - ((2 * v210) & 0x196) - 1243265077) ^ 0x4A1AB824);
  v217 = v216 ^ 0xE3D8B222;
  v218 = v216 ^ 0xD4132BF;
  v219 = v216;
  LODWORD(STACK[0x52C]) = v216;
  HIDWORD(v213) = v216 ^ 0xD4132BF;
  LODWORD(v213) = v216 ^ 0xE3D8B222;
  v220 = v213 >> 28;
  HIDWORD(v213) = v216 ^ 0xD4132BF;
  LODWORD(v213) = v216 ^ 0xE3D8B222;
  v221 = v213 >> 26;
  HIDWORD(v213) = v216 ^ 0xD4132BF;
  LODWORD(v213) = v216 ^ 0xE3D8B222;
  v222 = v213 >> 22;
  v223 = v215 ^ 0xDCB58BCB;
  v224 = v141 ^ 0x2E9C6355;
  HIDWORD(v213) = v215 ^ 0xDCB58BCB;
  LODWORD(v213) = v141 ^ 0x2E9C6355;
  v225 = v213 >> 28;
  HIDWORD(v213) = v215 ^ 0xDCB58BCB;
  LODWORD(v213) = v141 ^ 0x2E9C6355;
  v226 = v213 >> 12;
  v227 = 175 * LODWORD(STACK[0x570]);
  v229 = __PAIR64__(v215 ^ 0xDCB58BCB, __ROR4__(v218, 4));
  v228 = v220 ^ v218 ^ v221 ^ v222 ^ (__PAIR64__(v218, v217) >> 19) ^ (__PAIR64__(v218, v217) >> 18) ^ __ROR4__(v218, 16) ^ (v217 >> 8) ^ (v218 << 24) ^ __ROR4__(v218, 6) ^ v229;
  LOWORD(v221) = 175 * LOWORD(STACK[0x570]) - 29136;
  LODWORD(v229) = v141 ^ 0x2E9C6355;
  v230 = v229 >> 8;
  STACK[0x518] = (175 * LOWORD(STACK[0x570]) + 12775) % 0x11Au;
  HIDWORD(v229) = v215 ^ 0xDCB58BCB;
  LODWORD(v229) = v141 ^ 0x2E9C6355;
  v231 = v229 >> 3;
  LOWORD(v188) = v221 % 0x11Au;
  v232 = LODWORD(STACK[0x558]) - 1394504864;
  v233 = LODWORD(STACK[0x550]) + v232;
  v234 = STACK[0x550];
  HIDWORD(v229) = v223;
  LODWORD(v229) = v141 ^ 0x2E9C6355;
  v235 = v229 >> 25;
  v236 = v228 ^ (__PAIR64__(v219, v218) >> 1);
  HIDWORD(v229) = v141 ^ 0x2E9C6355;
  LODWORD(v229) = v141;
  v237 = (v223 << 12) ^ __ROR4__(v224, 5) ^ v230 ^ v231 ^ __ROR4__(v224, 16) ^ __ROR4__(v224, 19) ^ __ROR4__(v224, 13) ^ ((v141 >> 29) | 0xF9D61FB8) ^ (v229 >> 30) ^ (8 * v224) ^ v225 ^ v235 ^ __ROR4__(v224, 22) ^ (__PAIR64__(v223, v224) >> 21) ^ (v224 >> 20) ^ v226 ^ __ROR4__(v224, 10) ^ (__PAIR64__(v223, v224) >> 9) ^ (((v223 << 8) ^ 0xBE0A9E9C) & (BYTE3(v141) ^ 0xFFFFFF92) | BYTE3(v141) & 0x63) ^ 0xD1DFA360;
  v238 = v209 ^ (LODWORD(STACK[0x558]) - 2 * (v232 & 0x4EF2BA5F ^ STACK[0x558] & 0x14) + 2077509035) ^ 0x74DD70C9 ^ v236;
  v239 = STACK[0x540];
  v240 = (v237 ^ (LODWORD(STACK[0x540]) - 1062442361 - ((2 * LODWORD(STACK[0x540])) & 0x8158D50E))) - LODWORD(STACK[0x540]);
  v241 = (v236 ^ 0xBA2FCA82) + LODWORD(STACK[0x550]);
  LODWORD(STACK[0x508]) = v241;
  LODWORD(STACK[0x550]) = v234;
  v242 = (v8[158] ^ 0xD6u) << ((v241 & 0xB6) + 90 + (v241 & 0xB6 ^ 0xB6));
  LODWORD(STACK[0x568]) = v208 + 63479473;
  v243 = v233 ^ (v208 + 63479473);
  HIDWORD(v229) = v243;
  LODWORD(v229) = v243;
  v244 = v237 ^ (v182 - 1062442361 - ((2 * v182) & 0x8158D50E));
  v245 = v8[328];
  v246 = v8[73];
  v247 = v8[243];
  v248 = (v237 ^ (v238 - 1062442361 - ((2 * v238) & 0x8158D50E))) - v238;
  LODWORD(STACK[0x504]) = 2 * v243;
  v249 = v182 - 1528815061;
  LODWORD(STACK[0x53C]) = v182;
  v250 = v248 ^ 0xEF088E73 ^ (v244 - v182) ^ (v240 - 284651917 - ((2 * v240) & 0xDE111CE6));
  v251 = STACK[0x514];
  v252 = (v229 >> 30) ^ __ROR4__(v243, 27) ^ __ROR4__(v243, 20) ^ __ROR4__(v243, 19) ^ __ROR4__(v243, 12) ^ __ROR4__(v243, 10) ^ __ROR4__(v243, 7) ^ __ROR4__(v243, 5) ^ __ROR4__(v243, 2) ^ (v243 - ((2 * v243) & 0xF91B9BE0) + 2089668080) ^ ((v243 << 6) + (v243 >> 26)) ^ ((v246 ^ 0x2F) << 24) ^ (v247 << 8);
  v253 = (v234 ^ LODWORD(STACK[0x530])) - v208;
  v254 = ((v173[340] - ((2 * v173[340]) & 0x58)) << 24) + 738197504;
  LODWORD(STACK[0x500]) = 0;
  v255 = v253 - 63479473;
  v256 = (v251 + v239) ^ (v182 - 1528815061);
  v257 = ((v173[425] - ((2 * v173[425]) & 0x36)) << 16) - 1376256;
  v258 = ((v173[510] - ((2 * v173[510]) & 0x7777)) << 8) + 858241792;
  LODWORD(STACK[0x4F8]) = 16;
  LODWORD(STACK[0x530]) = 1252757088 - v251 + v250;
  HIDWORD(v229) = v256;
  LODWORD(v229) = v256;
  v259 = v229 >> 31;
  STACK[0x560] = (v227 + 12950) % 0x11Au;
  HIDWORD(v229) = v256;
  LODWORD(v229) = v256;
  v260 = v252 ^ (v245 - ((2 * v245) & 0x1D0) - 1635371032) ^ (v242 - ((2 * v242) & 0xF1D7E892) - 118754231);
  v261 = ((v257 - 1875902464) & 0x97300000 ^ 0xFD3C3873 ^ ((v257 - 1875902464) ^ 0x6FC4768C) & (v254 ^ 0x64CF768C)) & (v258 ^ 0xCCD844FF);
  v262 = v259 - ((2 * v259) & 0xCF6171C0);
  v263 = (v229 >> 30) - ((2 * (v229 >> 30)) & 0xF4A15F24);
  HIDWORD(v229) = v256;
  LODWORD(v229) = v256;
  v264 = v173[595] - ((2 * v173[595]) & 0x96);
  v265 = (v229 >> 26) - ((2 * (v229 >> 26)) & 0xD2DD8C9E);
  HIDWORD(v229) = v256;
  LODWORD(v229) = v256;
  v266 = (v258 & 0x121CB100 ^ 0xBDD21BCA ^ v261) & ((v264 - 977984949) ^ 0x3A4ADDB4);
  v267 = (v229 >> 28) - ((2 * (v229 >> 28)) & 0x462B3778);
  HIDWORD(v229) = v256;
  LODWORD(v229) = v256;
  v268 = (v229 >> 27) - ((2 * (v229 >> 27)) & 0x281B5246);
  HIDWORD(v229) = v256;
  LODWORD(v229) = v256;
  LODWORD(v173) = (v229 >> 24) - ((2 * (v229 >> 24)) & 0x7B3E2AEC);
  v269 = ((v256 >> (~(15 - ((16 - v253) | (v253 + 79))) & 4) >> ((15 - ((16 - v253) | (v253 + 79))) & 0x12 ^ 2)) ^ 0xBA24D0FF) & ~(v256 << 10);
  HIDWORD(v229) = v256;
  LODWORD(v229) = v256;
  v270 = (v229 >> 21) - ((2 * (v229 >> 21)) & 0xA559E98);
  HIDWORD(v229) = v256;
  LODWORD(v229) = v256;
  v271 = (v229 >> 18) - ((2 * (v229 >> 18)) & 0xA454094C);
  HIDWORD(v229) = v256;
  LODWORD(v229) = v256;
  STACK[0x558] = (v227 - 28961) % 0x11Au;
  v272 = (v263 - 95375470) ^ (v262 - 407848736) ^ (v267 - 1558864964);
  v273 = v268 - 1811044061;
  v274 = STACK[0x488];
  v275 = (STACK[0x488] + 4 * STACK[0x518]);
  v276 = (STACK[0x488] + 4 * v188);
  v277 = (STACK[0x488] + 4 * ((v227 + 24150) % 0x11Au));
  LODWORD(STACK[0x540]) = v260;
  v278 = v256 ^ __ROR4__(v256, 16) ^ (v256 << 13) ^ __ROR4__(v256, 15) ^ __ROR4__(v256, 14) ^ __ROR4__(v256, 12) ^ __ROR4__(v256, 11) ^ __ROR4__(v256, 10) ^ __ROR4__(v256, 5) ^ __ROR4__(v256, 4) ^ __ROR4__(v256, 3) ^ (v256 >> 19) ^ v272 ^ v273 ^ (v265 - 378616241) ^ (v173 - 1113647754) ^ (v270 - 2060791988) ^ (v271 + 1378485414) ^ ((v229 >> 2) - ((2 * (v229 >> 2)) & 0x12717832) + 154713113) ^ (v269 | (v256 << 10) & 0x45DB2C00);
  v279 = v260 ^ 0xE3E0D887;
  HIDWORD(v229) = v260 ^ 0xE3E0D887;
  LODWORD(v229) = v260 ^ 0xE3E0D851;
  v280 = v229 >> 26;
  HIDWORD(v229) = v260 ^ 0xE3E0D887;
  LODWORD(v229) = v260 ^ 0xE3E0D851;
  LODWORD(v242) = v229 >> 28;
  v281 = v278 ^ (v264 + 8779) & 0x3CA ^ 0x9020B7A7 ^ v266;
  HIDWORD(v229) = v260 ^ 0xE3E0D887;
  LODWORD(v229) = v260 ^ 0xE3E0D851;
  v282 = v242 ^ (v229 >> 22);
  HIDWORD(v229) = v260 ^ 0xE3E0D887;
  LODWORD(v229) = v260 ^ 0xE3E0D851;
  v283 = v280 ^ v260 ^ 0xE3E0D887 ^ v282 ^ (v229 >> 19);
  HIDWORD(v229) = v260 ^ 0xE3E0D887;
  LODWORD(v229) = v260 ^ 0xE3E0D851;
  v284 = v283 ^ __ROR4__(v260 ^ 0xE3E0D887, 18) ^ (v229 >> 16);
  HIDWORD(v229) = v260 ^ 0xE3E0D887;
  LODWORD(v229) = v260 ^ 0xE3E0D887;
  v285 = (v229 >> 6) & 0xBFFFFFFF;
  v286 = v284 ^ ((v260 ^ 0xE3E0D851) >> 8) ^ ((v260 ^ 0xE3E0D887) << 24);
  v287 = (v229 >> 6) & 0x40000000;
  if ((v286 & v287) != 0)
  {
    LODWORD(v287) = -v287;
  }

  v288 = __PAIR64__(v281, __ROR4__(v279, 4));
  v289 = __ROR4__(v279, 1) ^ 0x3CEEF006 ^ v288 ^ v285 ^ (v287 + v286);
  LODWORD(v288) = v281;
  v290 = (v288 >> 3) - 1453315293 - ((2 * (v288 >> 3)) & 0x52C05646);
  HIDWORD(v288) = v281;
  LODWORD(v288) = v281;
  v291 = (v288 >> 29) ^ __ROR4__(v281, 30) ^ __ROR4__(v281, 28) ^ __ROR4__(v281, 25) ^ __ROR4__(v281, 22) ^ __ROR4__(v281, 21) ^ __ROR4__(v281, 24) ^ __ROR4__(v281, 19) ^ __ROR4__(v281, 20) ^ __ROR4__(v281, 16) ^ __ROR4__(v281, 13) ^ __ROR4__(v281, 12) ^ __ROR4__(v281, 10) ^ (v281 << 23) ^ (v281 >> 9) ^ __ROR4__(v281, 8) ^ __ROR4__(v281, 5) ^ v290;
  v292 = LODWORD(STACK[0x52C]) ^ 0x5CB1F157;
  v293 = LODWORD(STACK[0x508]) + 821037270;
  v294 = (v251 ^ LODWORD(STACK[0x538])) - v249;
  v295 = v182 - 1528815061;
  LODWORD(STACK[0x514]) = (v251 ^ 0x45C59480) - v256;
  v296 = (LODWORD(STACK[0x550]) ^ 0x45C59480) - v243;
  v297 = ((v243 & 0xE5DA4628 ^ 0xE5DA4628) + (v243 & 0xE5DA4628)) ^ v255;
  LODWORD(STACK[0x550]) = v297;
  LODWORD(STACK[0x538]) = v243 - v255;
  v298 = v296 ^ LODWORD(STACK[0x568]) ^ v297;
  v299 = (v243 - (STACK[0x504] & 0xB15EA3E2) - 659598863) ^ LODWORD(STACK[0x568]) ^ v291;
  *v275 = v292;
  *v276 = v224;
  *v277 = STACK[0x530];
  *(v274 + 4 * (v227 % 0x11Au)) = v293;
  v300 = (v289 ^ (v256 + 1022291974 - ((2 * v256) & 0x79DDE00C))) - v256;
  v301 = v256 - v294;
  v302 = (2 * (v256 - v294)) & 0xD797BE86;
  LODWORD(STACK[0x52C]) = v294 ^ 0xE5DA4628;
  v303 = STACK[0x500];
  v304 = (v294 ^ 0xE5DA4628) - 1266550340 - 2 * ((v294 ^ 0xE5DA4628) & 0x3481F9BE ^ v294 & 2);
  v305 = STACK[0x548];
  v306 = *(STACK[0x548] + (LODWORD(STACK[0x500]) + 53040) % 0x3CDu);
  v307 = ((v289 ^ (v182 - ((2 * v249) & 0x79DDE00C) - 506523087)) - v249) ^ 0x7B33B437 ^ ((((v299 ^ 0x71CF7AD2) + 1022291974 - 2 * ((v299 ^ 0x71CF7AD2) & 0x3CEEF00E ^ v299 & 8)) ^ v289) - (v299 ^ 0x71CF7AD2)) ^ (v300 + 2066986039 + (~(2 * v300) | 0x9989791) + 1);
  v308 = (*(STACK[0x548] + (LODWORD(STACK[0x500]) + 52955) % 0x3CDu) << 24) ^ 0x1DBF6C2C;
  v309 = v291 ^ 0xA9602B23;
  v310 = v302 + (v301 ^ 0x6BCBDF43);
  HIDWORD(v288) = v298 ^ 0x1AE056D;
  LODWORD(v288) = v298;
  v311 = v288 >> 30;
  LODWORD(STACK[0x530]) = v296 + 1252757088 + v309;
  LOWORD(v302) = (v227 + 24325) % 0x11Au;
  HIDWORD(v288) = v298 ^ 0x1AE056D;
  LODWORD(v288) = v298;
  v312 = v288 >> 27;
  v313 = ((v306 << 16) ^ 0xFF296C2C) & v308;
  HIDWORD(v288) = v298 ^ 0x1AE056D;
  LODWORD(v288) = v298;
  v314 = v313 & 0xFFBFFFFF | (((v306 >> 6) & 1) << 22);
  v315 = v298 ^ v311 ^ v312 ^ (v288 >> 26) ^ __ROR4__(v298 ^ 0x1AE056D, 20);
  v316 = STACK[0x514];
  LODWORD(STACK[0x518]) = 821037270 - LODWORD(STACK[0x514]) + v307;
  v318 = __PAIR64__(v298, __ROR4__(v298 ^ 0x1AE056D, 19));
  v317 = v315 ^ v318;
  LODWORD(v318) = v298;
  v319 = v318 >> 5;
  v320 = v317 ^ __ROR4__(v298 ^ 0x1AE056D, 12) ^ __ROR4__(v298 ^ 0x1AE056D, 10);
  LODWORD(v318) = __ROR4__(v298 ^ 0x1AE056D, 7);
  v321 = ((-v319 ^ 0x82CEC4D1 ^ (v319 - 2100378415 - ((2 * v319) & 0x59D89A2)) ^ ((v320 ^ v318 ^ 0xAF91BE10) - (v320 ^ v318 ^ 0xAF91BE10 ^ v319))) + (v320 ^ v318 ^ 0xAF91BE10)) ^ __ROR4__(v298 ^ 0x1AE056D, 2);
  v322 = (v227 + 175) % 0x11Au;
  v323 = *(v305 + (v303 + 680) % 0x3CDu);
  v324 = v305;
  v325 = (*(v305 + (v303 + 53125) % 0x3CDu) << 8) ^ 0x5B58AD3F;
  v326 = *(v305 + (v303 + 53210) % 0x3CDu);
  v327 = *(v305 + (v303 + 765) % 0x3CDu);
  LODWORD(v305) = v316 ^ v295 ^ v304;
  v328 = *(v324 + (v303 + 850) % 0x3CDu);
  v329 = (v314 ^ 0x10009313) & v325;
  v330 = ((v328 - ((2 * v328) & 0xE8)) << 8) + 326530048;
  v331 = v326 - ((2 * v326) & 0xFFFFFF87) + 2013487555;
  LODWORD(STACK[0x520]) = v227;
  v332 = *(v324 + (v303 + 935) % 0x3CDu);
  LOWORD(v301) = (v227 + 13125) % 0x11Au;
  v333 = v321 ^ v331 & 0x1559A ^ ((v329 | v313 & 0xA4A70000) ^ 0xB443515A) & (v331 ^ 0x87FC9EBC);
  v334 = ((v327 - ((2 * v327) & 0x7A)) << 16) + 1866268672;
  v335 = (v334 & 0x5DB30000 ^ 0xFC6D886 ^ (v334 ^ 0x9040217D) & ((((v323 - ((2 * v323) & 0x88888888)) << 24) + 1140850688) ^ 0x664C217D)) & (v330 ^ 0xEC898BFF);
  HIDWORD(v318) = v333 ^ 0x6504E6CB;
  LODWORD(v318) = v333 ^ 0x2FD6EABC;
  v336 = v318 >> 28;
  v337 = v332 - ((2 * v332) & 0x1B0) + 439729624;
  v338 = v305 ^ __ROR4__(v305 ^ 0xB481F9BC, 12) ^ __ROR4__(v305 ^ 0xB481F9BC, 11) ^ __ROR4__(v305 ^ 0xB481F9BC, 10) ^ __ROR4__(v305 ^ 0xB481F9BC, 5) ^ __ROR4__(v305 ^ 0xB481F9BC, 4) ^ __ROR4__(v305 ^ 0xB481F9BC, 3) ^ __ROR4__(v305 ^ 0xB481F9BC, 31) ^ __ROR4__(v305 ^ 0xB481F9BC, 30) ^ __ROR4__(v305 ^ 0xB481F9BC, 28) ^ ((v305 ^ 0xB481F9BC) >> 26) ^ ((v305 ^ 0xB481F9BC) << 6) ^ __ROR4__(v305 ^ 0xB481F9BC, 24) ^ __ROR4__(v305 ^ 0xB481F9BC, 22) ^ __ROR4__(v305 ^ 0xB481F9BC, 21) ^ __ROR4__(v305 ^ 0xB481F9BC, 19) ^ __ROR4__(v305 ^ 0xB481F9BC, 18) ^ __ROR4__(v305 ^ 0xB481F9BC, 16) ^ __ROR4__(v305 ^ 0xB481F9BC, 15) ^ __ROR4__(v305 ^ 0xB481F9BC, 14) ^ __ROR4__(v305 ^ 0xB481F9BC, 27) ^ (((v305 ^ 0xB481F9BC) >> ((v305 & 2 ^ 2) + (v305 & 2))) | (v305 << 30)) ^ v337 & 0x2112E01 ^ (v330 & 0x13440600 ^ 0x869DEC05 ^ v335) & (v337 ^ 0xE5CA4227);
  HIDWORD(v318) = v333 ^ 0x6504E6CB;
  LODWORD(v318) = v333 ^ 0x2FD6EABC;
  v339 = v318 >> 26;
  HIDWORD(v318) = v333 ^ 0x6504E6CB;
  LODWORD(v318) = v333 ^ 0x2FD6EABC;
  v340 = v339 ^ (v318 >> 22);
  HIDWORD(v318) = v333 ^ 0x6504E6CB;
  LODWORD(v318) = v333 ^ 0x2FD6EABC;
  v341 = v318 >> 19;
  HIDWORD(v318) = v333 ^ 0x6504E6CB;
  LODWORD(v318) = v333 ^ 0x2FD6EABC;
  v342 = v333 ^ v336 ^ v340 ^ v341 ^ (v318 >> 18) ^ ((v333 ^ 0x6504E6CB) << 16) ^ 0xB05AEC3A;
  HIDWORD(v318) = v333 ^ 0x6504E6CB;
  LODWORD(v318) = v333 ^ 0x2FD6EABC;
  v343 = (v318 >> 8) ^ __ROR4__(v333 ^ 0x6504E6CB, 6);
  v345 = __PAIR64__(v333, __ROR4__(v333 ^ 0x6504E6CB, 4));
  v344 = v343 ^ v345;
  LODWORD(v345) = v333 ^ 0x6504E6CB;
  v346 = (v274 + 4 * STACK[0x558]);
  v347 = v338 ^ 0x43F2C442;
  *(v274 + 4 * STACK[0x560]) = LODWORD(STACK[0x540]) ^ 0x5C899B24;
  v348 = STACK[0x538];
  v349 = LODWORD(STACK[0x538]) + 1488257110;
  *v346 = v281;
  LOWORD(v297) = (v227 - 28786) % 0x11Au;
  LODWORD(v346) = v310 - 1714770829;
  v350 = v344 ^ (v345 >> 1) ^ (v342 + ((v333 ^ 0x2FD6EABC) >> 16) - 2 * (v342 & ((v333 ^ 0x2FD6EABC) >> 16)));
  v351 = __ROR4__(v338 ^ 0x43F2C442, 16) ^ 0x4C411254 ^ __ROR4__(v338 ^ 0x43F2C442, 19) ^ __ROR4__(v338 ^ 0x43F2C442, 29) ^ __ROR4__(v338 ^ 0x43F2C442, 30) ^ __ROR4__(v338 ^ 0x43F2C442, 25) ^ __ROR4__(v347, 24) ^ (v347 >> 22) ^ (v347 << 10) ^ __ROR4__(v347, 21) ^ __ROR4__(v347, 20) ^ __ROR4__(v347, 13) ^ __ROR4__(v347, 12) ^ __ROR4__(v347, 9) ^ __ROR4__(v347, 8) ^ __ROR4__(v347, 3) ^ __ROR4__(v347, 28) ^ __ROR4__(v347, 10) ^ (((v338 ^ 0x43F2C442u) >> ((v338 & 5 ^ 5) + (v338 & 5))) + ((v338 ^ 0x43F2C442) << 27));
  v352 = STACK[0x568];
  v353 = v348;
  v354 = STACK[0x550];
  v355 = LODWORD(STACK[0x550]) + LODWORD(STACK[0x568]) - v348;
  v356 = STACK[0x52C];
  v357 = LODWORD(STACK[0x53C]) + LODWORD(STACK[0x52C]) - v310 + 279708014;
  v358 = (((2 * v349) & 0x59C316C0) + (v349 ^ 0xACE18B60)) ^ (v355 - ((2 * v355) & 0xF19BD9DE) - 120722193) ^ 0xED228247 ^ v350;
  v359 = v351 ^ (v310 - ((2 * (v310 - 1714770829)) & 0x988224A8) - 435437881);
  v360 = ((v351 ^ (v357 + 1279332948 - ((2 * v357) & 0x988224A8))) - v357) ^ 0x4FB15744 ^ ((v351 ^ (v358 + 1279332948 - ((2 * v358) & 0x988224A8))) - v358);
  v361 = (v274 + 4 * v302);
  v362 = v360 ^ (v359 - (v310 - 1714770829) + 1337022276 + (~(2 * (v359 - (v310 - 1714770829))) | 0x609D5177) + 1);
  v363 = STACK[0x570];
  LOWORD(v302) = 175 * (LODWORD(STACK[0x570]) | 2);
  *v361 = STACK[0x530];
  LOWORD(v361) = (v302 + 24150) % 0x11Au;
  *(v274 + 4 * v322) = STACK[0x518];
  LOBYTE(v349) = (v361 & 0xAF ^ 0xAF) + (v361 & 0xAF);
  v364 = (v274 + 4 * v301);
  v365 = (v274 + 4 * v361);
  v366 = v354 + v352;
  v367 = v354 - v353;
  LODWORD(v361) = v353 + 93752246;
  LOWORD(v360) = v349 * (v363 | 2);
  v368 = v350 ^ 0x15EF6EA8 ^ v298;
  v369 = (v350 ^ 0x15EF6EA8) & v298;
  v370 = v366 + v367;
  v371 = (v366 + v367) ^ v361;
  LODWORD(v361) = v298 ^ 0x481976E1;
  v372 = v366 + 93752246 + (v298 ^ 0x481976E1);
  v373 = v372 + v370;
  *v364 = v333 ^ 0x90BFA9C9;
  *(v274 + 4 * v297) = v347;
  *v365 = 1252757088 - (v305 ^ 0xB481F9BC) + v362;
  LOWORD(v298) = v360 % 0x11Au;
  v374 = *(v324 + (v303 + 53465) % 0x3CDu);
  v375 = (*(v324 + (v303 + 53295) % 0x3CDu) ^ 0xFFFFFF9F) << 24;
  LODWORD(v364) = *(v324 + (v303 + 53550) % 0x3CDu);
  v376 = v373 ^ __ROR4__(v373, 20) ^ __ROR4__(v373, 30) ^ __ROR4__(v373, 27) ^ __ROR4__(v373, 26) ^ __ROR4__(v373, 12) ^ __ROR4__(v373, 10) ^ __ROR4__(v373, 7) ^ __ROR4__(v373, 5) ^ __ROR4__(v373, 2) ^ (v364 - ((2 * v364) & 0x160) - 400850000) & 0x880000A1 ^ ((v373 << ((v374 & 0xD ^ 9) + (v374 & 0xD ^ 4))) | (v373 >> 19)) ^ ((((v374 ^ 0xF8) << 8) & 0x5000 | ((((*(v324 + (v303 + 53380) % 0x3CDu) << 16) | 0x78006ABC) & (v375 ^ 0xB3FF6BBE) | v375 & 0x87FFFFFF) ^ 0x89E6C52D) & (((v374 ^ 0xF8) << 8) ^ 0xFFFFD1BF)) ^ 0xC7AF50CF) & ((v364 - ((2 * v364) & 0x160) - 400850000) ^ 0x17E47C4F);
  v377 = *(v324 + (v303 + 1190) % 0x3CDu);
  v378 = ((v377 - 1648783125 - ((2 * v377) & 0x1D6)) ^ 0x9DB990EB) << ((((v364 & 1) == 0) + (v364 | 0xE)) & 8);
  v379 = v378 - ((2 * v378) & 0x2386A38C);
  v380 = *(v324 + (v303 + 1275) % 0x3CDu);
  LODWORD(v364) = v380 - ((2 * v380) & 0xB4);
  v381 = *(v324 + (v303 + 1020) % 0x3CDu);
  v382 = *(v324 + (v303 + 1105) % 0x3CDu);
  v383 = ((v382 - ((2 * v382) & 0x1A6)) << 16) - 237830144;
  v384 = v357 + v356;
  v385 = v357 + v346;
  LODWORD(v346) = (v357 + v356) ^ v346;
  v386 = v305 ^ 0xFC988F5D;
  v387 = v385 + (v305 ^ 0xFC988F5D);
  v388 = v387 + v384;
  LODWORD(v305) = (v383 ^ 0xE282854) & ((((v381 - ((2 * v381) & 0xB6)) << 24) + 1526726656) ^ 0x1F2B2854) ^ v383 & 0xBBD40000;
  v389 = v388 ^ __ROR4__(v388, 26) ^ (v388 << 29) ^ __ROR4__(v388, 30) ^ __ROR4__(v388, 31) ^ __ROR4__(v388, 28) ^ __ROR4__(v388, 27) ^ __ROR4__(v388, 22) ^ __ROR4__(v388, 21) ^ __ROR4__(v388, 19) ^ __ROR4__(v388, 18) ^ __ROR4__(v388, 16) ^ __ROR4__(v388, 15) ^ __ROR4__(v388, 14) ^ __ROR4__(v388, 12) ^ __ROR4__(v388, 11) ^ __ROR4__(v388, 10) ^ __ROR4__(v388, 5) ^ __ROR4__(v388, 4) ^ __ROR4__(v388, 2) ^ __ROR4__(v388, 24) ^ (v388 >> 3) ^ v305 & 0x2B40840 ^ (v305 ^ 0xA04D7AB) & ((v364 + 189105242) ^ 0xE7CD27A0 ^ (v379 + 298013126));
  LODWORD(v364) = v389 ^ 0xFDFBFA7C;
  HIDWORD(v345) = v389 ^ 0xFDFBFA7C;
  LODWORD(v345) = v389;
  v390 = v345 >> 28;
  HIDWORD(v345) = v364;
  LODWORD(v345) = v364;
  v391 = (v345 >> 30) ^ __ROR4__(v364, 29) ^ v390;
  *(v274 + 4 * v298) = v368 + 821037270 + 2 * v369;
  HIDWORD(v345) = v376 ^ 0x55CC1B45;
  LODWORD(v345) = v376 ^ 0xBF9FFFFE;
  v392 = v345 >> 28;
  HIDWORD(v345) = v376 ^ 0x55CC1B45;
  LODWORD(v345) = v376 ^ 0xBF9FFFFE;
  v393 = v345 >> 26;
  HIDWORD(v345) = v376 ^ 0x55CC1B45;
  LODWORD(v345) = v376 ^ 0xBF9FFFFE;
  v394 = v376 ^ v392 ^ v393 ^ (v345 >> 22);
  HIDWORD(v345) = v376 ^ 0x55CC1B45;
  LODWORD(v345) = v376 ^ 0xBF9FFFFE;
  v395 = v394 ^ (v345 >> 19);
  HIDWORD(v345) = v376 ^ 0x55CC1B45;
  LODWORD(v345) = v376 ^ 0xBF9FFFFE;
  v396 = v345 >> 16;
  HIDWORD(v345) = v376 ^ 0x55CC1B45;
  LODWORD(v345) = v376 ^ 0xBF9FFFFE;
  v397 = v395 ^ ((v376 ^ 0x55CC1B45) << 14) ^ ((v376 ^ 0xBF9FFFFE) >> 18) ^ v396 ^ (v345 >> 8);
  HIDWORD(v345) = v364;
  LODWORD(v345) = v364;
  v398 = v391 ^ __ROR4__(v364, 25) ^ __ROR4__(v364, 24) ^ __ROR4__(v364, 22) ^ __ROR4__(v364, 21) ^ __ROR4__(v364, 20) ^ __ROR4__(v364, 19) ^ __ROR4__(v364, 16) ^ __ROR4__(v364, 13) ^ __ROR4__(v364, 12) ^ __ROR4__(v364, 10) ^ __ROR4__(v364, 9) ^ __ROR4__(v364, 8) ^ __ROR4__(v364, 5) ^ ((v345 >> 3) + 1941225587 - ((2 * (v345 >> 3)) & 0xE76980F8) + 9);
  *(v274 + 4 * ((v302 + 12950) % 0x11Au)) = v376 ^ 0xF6BC8B;
  v399 = v373 ^ v361;
  LODWORD(v361) = v372 ^ (v371 - 2 * ((v371 - 1558947704) & 0x7F54AB7F ^ v371 & 2) - 1570175995) ^ 0x8CE06B0E ^ v398;
  *(v274 + 4 * ((v302 - 28961) % 0x11Au)) = v364;
  LOWORD(v356) = STACK[0x520];
  *(v274 + 4 * ((v356 + 24675) % 0x11Au)) = v399 + 1252757088 + (v398 ^ 0x73B4C073);
  v400 = v397 ^ __ROR4__(v376 ^ 0x55CC1B45, 6) ^ __ROR4__(v376 ^ 0x55CC1B45, 4);
  LODWORD(v345) = __ROR4__(v376 ^ 0x55CC1B45, 1);
  v401 = v346 - 1558947704;
  v402 = v400 ^ v345 ^ 0xA07D06DC;
  v403 = v388 ^ v386;
  *(v274 + 4 * ((v356 + 525) % 0x11Au)) = 821037270 - v403 + (((v402 ^ (v387 - 244681851 - ((2 * v387) & 0xE2D4E70A))) - v387) ^ 0xFA5D2A8B ^ ((v402 ^ (v346 - ((2 * v401) & 0xE2D4E70A) - 1803629555)) - v401 - 94557557 - ((2 * ((v402 ^ (v346 - ((2 * v401) & 0xE2D4E70A) - 1803629555)) - v401)) & 0xF4BA5516)) ^ (((v361 - 244681851 - ((2 * v361) & 0xE2D4E70A)) ^ v402) - v361));
  return (*(STACK[0x480] + 8 * (((v363 > 0xB) | (2 * (v363 > 0xB))) ^ LODWORD(STACK[0x4F0]))))(((v388 + v403 + (v403 ^ v387) + 728202378) ^ (v403 + 38668534) ^ 0xA0BA19C9) + ((v403 + 38668534) ^ 0xA0BA19C9) + 1733306283, ((v373 + v399 + 38668534 + (v399 ^ v372) + 689533844) ^ (v399 + 38668534) ^ 0xA0BA19C9) + ((v399 + 38668534) ^ 0xA0BA19C9) + 1733306283);
}

void sub_1001F7D2C(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x558]) = a6;
  LODWORD(STACK[0x560]) = v6;
  LODWORD(STACK[0x550]) = a2;
  LODWORD(STACK[0x530]) = v7;
  LODWORD(STACK[0x514]) = a1;
  LODWORD(STACK[0x538]) = v9;
  LODWORD(STACK[0x540]) = v8;
  LODWORD(STACK[0x570]) += 4;
  JUMPOUT(0x1001F5F24);
}

uint64_t sub_1001F7D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  HIDWORD(v9) = v7;
  LODWORD(v9) = v7;
  LODWORD(STACK[0x518]) = v9 >> 8;
  HIDWORD(v9) = v7;
  LODWORD(v9) = v7;
  LODWORD(STACK[0x568]) = v9 >> 29;
  HIDWORD(v9) = v7;
  LODWORD(v9) = v7;
  LODWORD(STACK[0x52C]) = v9 >> 11;
  v10 = STACK[0x488];
  LODWORD(STACK[0x508]) = v8;
  LODWORD(STACK[0x4F8]) = a7;
  v11 = STACK[0x570];
  LODWORD(STACK[0x570]) = STACK[0x570];
  v12 = (v11 - 10438) | 0x1142;
  LODWORD(STACK[0x504]) = v12;
  v13 = 141 * (v12 ^ 0x1503);
  LODWORD(STACK[0x500]) = v13;
  v14 = (((v7 << 29) ^ 0xB8DB3C58) & ((v7 >> 3) ^ 0xFD0F39C0) | (v7 >> 3) & 0x724C3A7) ^ 0xFEDB3EFB;
  v15 = (((v7 >> 7) ^ 0x5C7D6F99) & ((v7 << (v13 ^ 0x70)) ^ 0xE9FFFFFF) | (v7 << (v13 ^ 0x70)) & 0xA2000000) ^ LODWORD(STACK[0x508]);
  v16 = v14 ^ -v14 ^ ((((v15 ^ 0xAB231F10) + 243599149) ^ ((v15 ^ 0xC234D954) + 1737671017) ^ ((v15 ^ 0x1599D62C) - 1337995759)) - (((v15 ^ v14 ^ 0x2C03E41B) - 468102254) ^ ((v15 ^ v14 ^ 0x8193D812) + 1233743769) ^ ((v15 ^ v14 ^ 0xD11E2C61) + 419732460)) - 613638258);
  v17 = (((v15 ^ 0x4FD4FA2F) - 361569772) ^ ((v15 ^ 0xF2E72957) + 1463890284) ^ ((v15 ^ 0xC1BDC310) + 1679547181)) - 543762439 + (((v16 ^ 0x9933A644) - 562906634) ^ ((v16 ^ 0xE7AA1427) - 1595208809) ^ ((v16 ^ 0x7E99B263) + 970501587));
  HIDWORD(v9) = v7;
  LODWORD(v9) = v7;
  v18 = v9 >> 26;
  HIDWORD(v9) = v7;
  LODWORD(v9) = v7;
  v19 = v9 >> 19;
  v20 = v18 ^ __ROR4__(v7, 24) ^ __ROR4__(v7, 18) ^ v19 ^ (((v7 << 10) ^ 0x4785E74) & ((v7 >> 22) ^ 0xFFFFFE2D) | (v7 >> 22) & 0x18B);
  v22 = __PAIR64__(v7, __ROR4__(v7, 14));
  v21 = LODWORD(STACK[0x518]) ^ v22;
  LODWORD(v22) = v7;
  v23 = v22 >> 5;
  v24 = LODWORD(STACK[0x568]) ^ LODWORD(STACK[0x52C]) ^ __ROR4__(v7, 21) ^ __ROR4__(v7, 31);
  LODWORD(v22) = __ROR4__(v7, 25);
  v25 = (v24 ^ v22 ^ v19) & 0x1FFFFFFF ^ (((v7 << 10) & 0x1FFFFC00 ^ 0xA5CFF25A) & ((v7 >> 22) ^ 0xBFFFFE25) | (v7 >> 22) & 0x1A5);
  LOBYTE(v24) = (v24 ^ v22 ^ v19 ^ (((v7 >> 22) ^ 0x25) & 0x5A | (v7 >> 22) & 0xA5)) & 0x19;
  v26 = (v7 ^ 0x368035DA) << (((((v24 ^ 0x81) + 56) ^ ((v24 ^ 0x7B) - 50)) ^ ((v24 ^ 0xFA) + 77)) + ((((v24 ^ 0x57) - 19) ^ (v24 | 0xC4)) ^ ((v24 ^ 0xCA) + 114)) - 90);
  LODWORD(v26) = v26 - ((2 * v26) & 0x1B2614EC) + 764611190;
  v27 = STACK[0x4F8];
  v28 = 175 * LODWORD(STACK[0x4F8]);
  v29 = (v26 & 0x3FFFFFFF ^ 0xD06CF589) & ((v7 >> 7) ^ 0xD4325E1D);
  v30 = v26 & 0xBA0A189;
  v31 = *(v10 + 4 * ((v28 + 33775) % 0x11A));
  v32 = __PAIR64__(v31, __ROR4__(v7, 1));
  v33 = v23 ^ __ROR4__(v7, 12) ^ __ROR4__(v7, 2) ^ v32 ^ (v7 >> 3) ^ (((v7 >> 3) << 31) | 0xC009AA0) ^ ((v7 >> 4) ^ 0x72816210) & ((v7 << 28) ^ 0x5FFFFFFF) ^ v21 & 0xB96EC72B ^ ((((v7 >> 4) & 3) << 27) | 0x647404) ^ ((v7 >> 4) ^ 0x7EAB835B) & (~(v7 << 28) | 0xEFFFFFFF) ^ (((v7 & 0xF) << 23) ^ 0x62FFFFFF) & ((v7 >> 9) ^ 0x67804A40) ^ (v20 ^ 0x5452BBED) & (v21 ^ 0xD5E5A35) ^ (v20 ^ 0x12C38339) & (v21 ^ 0xF2A1A5CA) ^ v25 ^ v17 ^ v30 ^ v29;
  LODWORD(v32) = *(v10 + 4 * ((v28 + 33775) % 0x11A));
  v34 = v32 >> 31;
  HIDWORD(v32) = v32;
  v35 = v32 >> 28;
  HIDWORD(v32) = v32;
  LODWORD(v32) = HIDWORD(v32);
  v36 = v32 >> 27;
  LODWORD(v32) = *(v10 + 4 * ((v28 + 33775) % 0x11A));
  v37 = v32 >> 26;
  HIDWORD(v32) = v32;
  v38 = v32 >> 23;
  HIDWORD(v32) = v32;
  LODWORD(v32) = HIDWORD(v32);
  v39 = v32 >> 19;
  LODWORD(v32) = *(v10 + 4 * ((v28 + 33775) % 0x11A));
  v40 = v32 >> 15;
  v41 = v40 - ((2 * v40) & 0x723108F8) + 957908092;
  HIDWORD(v32) = v32;
  v42 = v32 >> 16;
  HIDWORD(v32) = v32;
  LODWORD(v32) = HIDWORD(v32);
  v43 = (v32 >> 30) ^ __ROR4__(v31, 21) ^ v37 ^ v38 ^ v42 ^ v34 ^ v35 ^ v36 ^ (((v31 >> 14) ^ 0xC4AA50DC) & ((v31 << 18) ^ 0xEDAFFFFF) | (v31 << 18) & 0x3B540000) ^ v41;
  v44 = v31 >> 11;
  LOBYTE(v14) = (v43 & 0x27 ^ 0xF6) & (v43 & 0x27 ^ 0xF0) ^ v43 & 0x21;
  LOBYTE(v23) = ((v14 ^ 0x7C) - 53) ^ ((v14 ^ 0x9D) + 44) ^ ((v14 ^ 0x36) - 127);
  LODWORD(v32) = *(v10 + 4 * ((v28 + 33775) % 0x11A));
  v45 = (v32 >> 7) - ((2 * (v32 >> 7)) & 0xD5C674);
  HIDWORD(v32) = v32;
  v46 = (v32 >> 2) - ((2 * (v32 >> 2)) & 0xA999A08E);
  v47 = v31 ^ __ROR4__(v31, 22) ^ v38 ^ v35 ^ v34 ^ v36 ^ __ROR4__(v31, 25) ^ __ROR4__(v31, 24) ^ v42 ^ __ROR4__(v31, 13) ^ v39 ^ v40;
  HIDWORD(v32) = v32;
  LODWORD(v32) = HIDWORD(v32);
  v48 = v32 >> 6;
  LODWORD(v32) = *(v10 + 4 * ((v28 + 33775) % 0x11A));
  v49 = v32 >> 5;
  HIDWORD(v32) = v32;
  v50 = (v32 >> 10) ^ v49;
  v51 = v50 ^ v39 ^ v42 ^ v34 ^ v35;
  v52 = v31 << (99 * v23 + 26);
  v53 = v51 ^ v36;
  HIDWORD(v32) = v32;
  LODWORD(v32) = HIDWORD(v32);
  v54 = v32 >> 12;
  v55 = v53 ^ v37 ^ v38;
  LODWORD(v32) = *(v10 + 4 * ((v28 + 33775) % 0x11A));
  v56 = v32 >> 8;
  LODWORD(v31) = v31 ^ __ROR4__(v31, 4) ^ v54 ^ (v31 >> 3) ^ (v31 << 29) ^ __ROR4__(v31, 17) ^ __ROR4__(v31, 29) ^ __ROR4__(v31, 20) ^ v55 ^ (v31 >> 1) & 0x1FFFFFFF ^ v54 & 0x1FFFFFFF ^ v56 & 0x1FFFFFFF ^ (((v31 >> 11) ^ 0xF64E6A19) & (~(v31 << 21) | 0xE9BFFFFF) | (v31 << 21) & 0x9A00000) ^ v41 ^ ((v48 & 0x1FFFFFFF) + 198459375 - 2 * (v48 & 0xBD43FFF ^ (v31 >> 6) & 0x10)) ^ v47 & 0x1FFFFFFF;
  v57 = (((((v31 & 0xAF ^ 0x64ECB4DC) - 1927644626) ^ ((v31 & 0xAF ^ 0xAE66B2F7) + 1200651271) ^ ((v31 & 0xAF ^ 0xCA8A060E) + 595380480)) + (((v31 & 0xAF ^ 0x41622C9D) + 1200149465) ^ ((v31 & 0xAF ^ LODWORD(STACK[0x404])) - 585807529) ^ ((v31 & 0xAF ^ 0x9A9D9A04) - 1669896894)) + 253636955) | 0xA) * (LODWORD(STACK[0x4F8]) + 71);
  LODWORD(v31) = v50 ^ v44 ^ v48 ^ v56 ^ (v45 + 7004986) ^ (v46 + 1422708807) ^ v43 ^ v31;
  v58 = *(v10 + 4 * (v57 % 0x11A)) ^ 0xBF6943A3;
  HIDWORD(v32) = v58;
  LODWORD(v32) = v58;
  v59 = v32 >> 18;
  HIDWORD(v32) = v58;
  LODWORD(v32) = v58;
  v60 = v32 >> 11;
  LODWORD(v31) = v31 ^ v52;
  HIDWORD(v32) = v58;
  LODWORD(v32) = v58;
  v61 = v32 >> 20;
  HIDWORD(v32) = v58;
  LODWORD(v32) = v58;
  v62 = v32 >> 9;
  v63 = (v58 ^ __ROR4__(v58, 29) ^ __ROR4__(v58, 28) ^ __ROR4__(v58, 26) ^ __ROR4__(v58, 16) ^ __ROR4__(v58, 14) ^ v59) & 0x3FFFFF;
  v64 = *(v10 + 4 * ((v28 + 36050) % 0x11A));
  v65 = ((v58 >> 6) ^ (v58 >> 4)) & 0x3FFFFF;
  HIDWORD(v32) = v64;
  LODWORD(v32) = v64;
  LODWORD(v52) = v32 >> 30;
  LODWORD(STACK[0x568]) = v62;
  v67 = __PAIR64__(v64, __ROR4__(v58, 6));
  v66 = v61 ^ (v58 >> 10) ^ __ROR4__(v58, 27) ^ __ROR4__(v58, 19) ^ __ROR4__(v58, 15) ^ __ROR4__(v58, 5) ^ __ROR4__(v58, 21) ^ __ROR4__(v58, 17) ^ __ROR4__(v58, 7) ^ __ROR4__(v58, 4) ^ __ROR4__(v58, 1) ^ v59 ^ v60 ^ v62 ^ v60 & 0x3FFFFF ^ v67;
  v68 = v65 ^ v63;
  LODWORD(v67) = v64;
  v69 = v67 >> 26;
  HIDWORD(v67) = v64;
  LODWORD(v67) = v64;
  v70 = v67 >> 20;
  HIDWORD(v67) = v64;
  LODWORD(v67) = v64;
  v71 = v67 >> 13;
  HIDWORD(v67) = v64;
  LODWORD(v67) = v64;
  v72 = v67 >> 31;
  HIDWORD(v67) = v64;
  LODWORD(v67) = v64;
  v73 = v67 >> 7;
  HIDWORD(v67) = v64;
  LODWORD(v67) = v64;
  v74 = v67 >> 6;
  HIDWORD(v67) = v64;
  LODWORD(v67) = v64;
  v75 = v67 >> 3;
  v76 = v66 ^ v68;
  HIDWORD(v67) = v64;
  LODWORD(v67) = v64;
  v77 = v67 >> 22;
  HIDWORD(v67) = v64;
  LODWORD(v67) = v64;
  v78 = v67 >> 15;
  v79 = __PAIR64__(v64, __ROR4__(v64, 10));
  v80 = v64 ^ __ROR4__(v64, 24) ^ __ROR4__(v64, 28) ^ __ROR4__(v64, 17) ^ __ROR4__(v64, 16) ^ __ROR4__(v64, 12) ^ __ROR4__(v64, 11) ^ __ROR4__(v64, 4) ^ __ROR4__(v64, 5) ^ __ROR4__(v64, 1) ^ v78 ^ v77 ^ __ROR4__(v64, 14) ^ v79 ^ v73 ^ v74;
  v81 = v72 ^ v64 ^ v52;
  LODWORD(v79) = v64;
  v82 = v72 ^ v70 ^ v52 ^ v69;
  v83 = (v79 >> 29) & 0x3FFFFF;
  LODWORD(v52) = ((v64 & 0x55BDABF6 ^ 0x55BDABF6) + (v64 & 0x55BDABF6)) ^ 0x9CF8C0C4;
  v84 = v82 ^ v71 ^ v75 ^ v74;
  HIDWORD(v79) = v64;
  LODWORD(v79) = v64;
  v85 = (v79 >> 23) & 0x3FFFFF;
  v86 = __PAIR64__(v64, __ROR4__(v64, 25));
  v87 = v80 ^ v86 ^ v84 ^ v73;
  LODWORD(v86) = v64;
  v88 = (v86 >> 19) & 0x3FFFFF;
  HIDWORD(v86) = v64;
  LODWORD(v86) = v64;
  v89 = v77 ^ v78 ^ v85 ^ (v86 >> 18) & 0x3FFFFF ^ v71 & 0x3FFFFF ^ (v64 >> 8) & 0x3FFFFF ^ v69 & 0x3FFFFF;
  v90 = LODWORD(STACK[0x560]) + 1592294534;
  v91 = v87 ^ __ROR4__(v64, 8) ^ v89 ^ v70 & 0x3FFFFF ^ v88 ^ (v64 >> 7) & 0x3FFFFF ^ (v64 >> 6) & 0x3FFFFF ^ v75 & 0x3FFFFF ^ (v64 >> 2) & 0x3FFFFF ^ v83 ^ v77 & 0x3FFFFF ^ v78 & 0x3FFFFF ^ v81 & 0x3FFFFF;
  v92 = v33 ^ 0xBAAA46A5;
  v93 = (v33 ^ 0xBAAA46A5 ^ LODWORD(STACK[0x53C])) - LODWORD(STACK[0x53C]);
  v94 = v90 ^ LODWORD(STACK[0x520]) ^ v31;
  v95 = (((v94 ^ v33 ^ 0x55F670AF) + 66997652) ^ ((v94 ^ v33 ^ 0x312A05B2) + 1730295951) ^ ((v94 ^ v33 ^ 0xB3E005EF) - 437765932)) - (((v94 ^ 0x212EE988) + 1398237161) ^ ((v94 ^ 0x9F0D7905) - 311101594) ^ ((v94 ^ 0xD3B5A6DA) - 1580455749)) - 1631884695;
  v96 = LODWORD(STACK[0x53C]) + LODWORD(STACK[0x538]);
  v97 = ((v92 ^ LODWORD(STACK[0x540])) - LODWORD(STACK[0x540])) ^ v93 ^ v95;
  v98 = LODWORD(STACK[0x53C]) + 407875273;
  v99 = STACK[0x514];
  v100 = v98 ^ LODWORD(STACK[0x514]) ^ LODWORD(STACK[0x540]);
  v101 = ((v31 ^ 0x1EEB0A2E) - 1175648472) ^ ((v31 ^ 0x689B5580) - 811771766) ^ ((v31 ^ 0x1BE669F9) - 1126144783);
  v102 = LODWORD(STACK[0x530]) + v90 - v52 - 918197454;
  v103 = v102 ^ (LODWORD(STACK[0x558]) - LODWORD(STACK[0x560]) + 900292625);
  v104 = (LODWORD(STACK[0x540]) - v98) ^ v96;
  v105 = LODWORD(STACK[0x53C]) + 1985448017;
  v106 = LODWORD(STACK[0x560]) - 717224745;
  v107 = STACK[0x550];
  v108 = LODWORD(STACK[0x550]) ^ LODWORD(STACK[0x520]) ^ (LODWORD(STACK[0x560]) + 2000169807);
  LODWORD(STACK[0x53C]) = v104 - v100;
  LODWORD(v52) = ((v76 ^ v104) - v104) ^ ((v76 ^ v105) - v105) ^ ((v103 ^ v106 ^ v91 ^ v76) - (v103 ^ v106 ^ v91));
  v109 = v103 + 1394504864 - v108;
  v110 = v102 - v109 - 1172694146;
  v111 = v96 - (v104 - v100) + 1727768286;
  v112 = *(v10 + 4 * ((v28 + 21350) % 0x11A));
  LODWORD(STACK[0x518]) = v100 ^ v105;
  v113 = v111 + ((v104 - v100) ^ v105);
  LODWORD(STACK[0x558]) = v113;
  v114 = v113 & 0x83A4ACB2;
  v115 = (v100 ^ v105) - v113;
  LODWORD(v31) = v108 - v99 + v112 + *(v10 + 4 * ((((v112 & 0x3BC96BF ^ 0x3BC96BF) + (v112 & 0x3BC96BF)) & 0x44000AF & ((81890143 - v103) | (v103 + 1394504864))) * (v27 + 131) % 0x11A)) + v91 + 1789453120 + v97;
  *(v10 + 4 * ((v28 + 24150) % 0x11A)) = v31 + 1252757088;
  LODWORD(STACK[0x538]) = v115;
  v116 = *(v10 + 4 * ((v28 - 2800) % 0x11A));
  v117 = v107 + (((v114 ^ 0x9A93EF44) - 2095885749) ^ ((v114 ^ 0xB9034447) - 1601963702) ^ ((v114 ^ 0x2390AB03) + 974132750)) + (((v114 ^ 0xC4175848) + 439543208) ^ ((v114 ^ 0xED6AD415) + 860842491) ^ ((v114 ^ 0xAAD920EF) + 1962712321)) + *(v10 + 4 * ((((~(2 * v115) + v115) ^ v115) & 0xAFu) * (v27 - 7) % 0x11A)) - 655804458 + v101;
  LODWORD(v52) = (v117 | v116) - v100 + (v117 & v116) + v52;
  LODWORD(STACK[0x52C]) = v28;
  *(v10 + 4 * (v28 % 0x11A)) = v52 + 821037270;
  LODWORD(STACK[0x550]) = v110 ^ 0x19AD4F3A;
  v118 = v52 + (v110 ^ 0x19AD4F3A);
  v119 = STACK[0x548];
  LODWORD(v52) = *(STACK[0x548] + (85 * (v118 >> 28) - 15386) % 0x3CDu);
  v120 = *(STACK[0x548] + (85 * (HIBYTE(v118) & 0xF) - 15386) % 0x3CDu);
  v121 = *(STACK[0x548] + (85 * ((v118 >> 20) & 0xF) - 15386) % 0x3CDu);
  LODWORD(STACK[0x540]) = v111 ^ 0x19AD4F3A;
  v122 = *(v119 + (85 * (v118 >> 12) - 15386) % 0x3CDu);
  v123 = (((v120 << 8) ^ (v52 << 12) | *(v119 + (85 * (BYTE2(v118) & 0xF) - 15386) % 0x3CDu)) << 8) ^ (v121 << 12);
  LODWORD(v52) = v123 | *(v119 + (85 * ((v118 >> 8) & 0xF) - 15386) % 0x3CDu);
  LODWORD(STACK[0x520]) = v52;
  v124 = (v52 << 8) ^ (v122 << 12);
  v125 = 85 * (v118 & 0xF);
  v126 = *(v119 + (v125 + 50150) % ((((v124 & 0xA7D01F00 ^ 0xA7D01FFF) + (v124 & 0xA7D01F00)) & 0xC6B01F6B) - ((v125 + 50150) & 0xB08 ^ (-50151 - v125) & 0x84100B08 | (v125 + 50150) & 0x29E ^ (-50151 - v125) & 0x280129E)));
  v127 = (v124 | v126) ^ (16 * *(v119 + (85 * (v118 >> 4) - 15386) % 0x3CDu));
  LODWORD(v52) = v31 - (v111 ^ 0x19AD4F3A);
  LODWORD(v31) = *(v119 + (85 * (v52 >> 12) - 15386) % 0x3CDu);
  v128 = (*(v119 + (85 * (BYTE3(v52) & 0xF) - 15386) % 0x3CDu) << 8) ^ (*(v119 + (85 * (v52 >> 28) - 15386) % 0x3CDu) << 12);
  LODWORD(STACK[0x560]) = v128;
  v129 = v128 ^ (16 * *(v119 + (85 * ((v52 >> 20) & 0xF) - 15386) % 0x3CDu));
  v130 = v129 ^ *(v119 + (85 * (BYTE2(v52) & 0xF) - 15386) % 0x3CDu);
  v131 = ((*(v119 + (85 * ((v52 >> 8) & 0xF) - 15386) % 0x3CDu) << 8) | (v130 << 16)) ^ (v31 << 12);
  LODWORD(v31) = ((((v52 & 0xF) + 590) & 0x55555555 ^ (-591 - (v52 & 0xF)) & 0x35) & ((((v52 & 0xF) + 590) & 0xFDFDFDFD) + ((-591 - (v52 & 0xF)) & 0x4947589D))) * ((v52 & 0xF) + 590);
  LODWORD(v31) = *(v119 + (v31 - 973 * ((4414150 * v31) >> 32)));
  v132 = *(v119 + (85 * (v52 >> 4) - 15386) % 0x3CDu) ^ ((v131 | v31) >> 4);
  LODWORD(v10) = 85 * ((v127 >> 4) | (16 * (v132 & 0xF)));
  v133 = v126 & 0xF;
  LODWORD(v31) = 85 * (v133 | (16 * (v31 & 0xF)));
  v134 = 85 * (*(v119 + (v31 + 28050) % 0x3CDu) ^ (16 * LOBYTE(STACK[0x113F])));
  v135 = v31 + 58140 - 973 * ((4414150 * (v31 + 58140)) >> 32);
  v136 = v108 ^ v106;
  LODWORD(v31) = v109 - 1394504864;
  v137 = (v109 - 1394504864) ^ v106;
  v138 = *(v119 + (v134 + 58140 - 973 * ((4414150 * (v134 + 58140)) >> 32)));
  LOWORD(v135) = *(v119 + v135);
  v139 = v110 + v137;
  LODWORD(STACK[0x530]) = v110 + v137;
  v140 = 85 * (*(v119 + (v10 + 28050) % 0x3CDu) ^ (16 * *(v119 + (85 * (v135 ^ (v138 >> 4)) + 28050) % 0x3CDu)));
  LOWORD(v107) = *(v119 + (v10 + 58140) % ((~(v132 & 0xF) & 0x3CD) + (v132 & 0xD)));
  v141 = *(v119 + (v140 + 58140 - 973 * ((4414150 * (v140 + 58140)) >> 32)));
  LODWORD(STACK[0x53C]) ^= LODWORD(STACK[0x518]);
  LOWORD(v108) = (85 * (v107 ^ (v141 >> 4)) + 28050) % 0x3CDu;
  v142 = 85 * (v132 & 0xF0 | (v127 >> 8) & 0xF);
  v143 = *(v119 + (v142 + 28050) % 0x3CDu) ^ (16 * *(v119 + v108));
  LODWORD(v52) = (~(v132 & 0xF) & 0xA2F79D83) + (v132 & 3);
  LODWORD(STACK[0x408]) = 85;
  LODWORD(v52) = 85 * (((-179752 * v52) ^ 0x87622AD1) - ((-359504 * v52) & 0xF13BAA50) + v143) + 85;
  LOWORD(v143) = (85 * (*(v119 + (v142 + 58140 - 973 * ((4414150 * (v142 + 58140)) >> 32))) ^ (*(v119 + (85 * v143 + 58140 - 973 * ((4414150 * (85 * v143 + 58140)) >> 32))) >> 4)) + 28050) % 0x3CDu;
  v144 = 85 * ((v131 >> 8) & 0xF0 | (v124 >> 12));
  v145 = 85 * (*(v119 + (v144 + 28050) % 0x3CDu) ^ (16 * *(v119 + v143)));
  LODWORD(v10) = *(v119 + (v140 + 28050 - 973 * ((4414150 * (v140 + 28050)) >> 32)));
  v146 = *(v119 + (v134 + 28050 - 973 * ((4414150 * (v134 + 28050)) >> 32)));
  v147 = (*(v119 + (v145 + 28050 - 973 * ((4414150 * (v145 + 28050)) >> 32))) << 12) ^ (*(v119 + v52 % 0x3CD) << 8);
  LODWORD(v52) = v146 ^ (16 * v10);
  v148 = v52 ^ v147;
  v149 = ((v52 ^ v147) >> 4) & 0xF0 | (v127 >> 8) & 0xF;
  LOWORD(v135) = (85 * (v52 & 0xF0 | (v127 >> 4)) + 5695) % 0x3CDu;
  LOWORD(v52) = (85 * (*(v119 + (v144 + 58140 - 973 * ((4414150 * (v144 + 58140)) >> 32))) ^ (*(v119 + (v145 + 58140 - 973 * ((4414150 * (v145 + 58140)) >> 32))) >> 4)) + 28050) % 0x3CDu;
  v150 = 85 * ((v131 >> 12) & 0xF0 | HIWORD(v124) & 0xF);
  LODWORD(v52) = 85 * (*(v119 + (v150 + 28050) % 0x3CDu) ^ (16 * *(v119 + v52)));
  v151 = v52 + 28050 - 973 * ((4414150 * (v52 + 28050)) >> 32);
  LOWORD(v144) = *(v119 + (v150 + 58140 - 973 * ((4414150 * (v150 + 58140)) >> 32)));
  v152 = v31 ^ v136;
  LODWORD(v31) = 85 * (v130 & 0xF0 | (v123 >> 12));
  v153 = 85 * (*(v119 + (v31 + 28050) % 0x3CDu) ^ (16 * *(v119 + (85 * ((*(v119 + (v52 + 58140 - 973 * ((4414150 * (v52 + 58140)) >> 32))) >> (((v126 & 0xB ^ 0xB) + (v126 & 0xB)) & 0xFB ^ 0xF)) ^ v144) + 28050) % 0x3CDu)));
  LODWORD(v52) = v153 + 28050 - 973 * ((4414150 * (v153 + 28050)) >> 32);
  v154 = 85 * ((v129 >> 4) & 0xF0 | HIWORD(v123) & 0xF);
  LODWORD(v31) = 85 * (*(v119 + (v154 + 28050) % 0x3CDu) ^ (16 * *(v119 + (85 * (*(v119 + (v31 + 58140 - 973 * ((4414150 * (v31 + 58140)) >> 32))) ^ (*(v119 + (v153 + 58140 - 973 * ((4414150 * (v153 + 58140)) >> 32))) >> 4)) + 28050) % 0x3CDu)));
  v155 = v31 + 28050 - 973 * ((4414150 * (v31 + 28050)) >> 32);
  v156 = v154 + 58140 - 973 * ((4414150 * (v154 + 58140)) >> 32);
  LODWORD(v10) = v31 + 58140 - 973 * ((4414150 * (v31 + 58140)) >> 32);
  LODWORD(v31) = v136 - v139;
  v157 = v136;
  v158 = *(v119 + v135);
  v159 = *(v119 + v155);
  v160 = v148 ^ (*(v119 + v151) << 16);
  v161 = v133;
  v162 = STACK[0x520];
  v163 = 85 * (*(v119 + (85 * ((LODWORD(STACK[0x560]) >> 8) & 0xF0 | (LODWORD(STACK[0x520]) >> 20) & 0xF) + 28050) % 0x3CDu) ^ (16 * *(v119 + (85 * (*(v119 + v156) ^ (*(v119 + v10) >> 4)) + 28050) % 0x3CDu))) + 28050;
  v164 = v160 ^ (*(v119 + v52) << 20);
  LODWORD(v52) = v164 ^ (v159 << 24) ^ (*(v119 + (v163 - 973 * ((4414150 * v163) >> 32))) << 28);
  LODWORD(STACK[0x560]) = v161;
  v165 = *(v119 + (85 * (v161 & 0xFF0F | (16 * (v146 & 0xF))) + 5695) % 0x3CDu);
  v166 = *(v119 + (85 * v149 + 5695) % (((448 - 85 * v149) | (85 * v149 + 5695)) & 0x248 | 0x185));
  v167 = *(v119 + (85 * ((v147 >> 8) & 0xF0 | (v124 >> 12)) + 5695) % 0x3CDu);
  v168 = *(v119 + (85 * ((v160 >> 12) & 0xF0 | BYTE2(v124) & 0xF) + 5695) % 0x3CDu);
  v169 = *(v119 + (85 * (BYTE2(v164) & 0xF0 | (v123 >> 12)) + 5695) % 0x3CDu);
  v170 = (v165 - ((2 * v165) & 0x42) - 698118111) ^ (16 * v158) ^ (((v167 - ((2 * v167) & 0x2A)) << 12) - 121548800) ^ (((v166 - ((2 * v166) & 0x164)) << 8) + 1338946048) ^ 0xF7A694A1 ^ (((v168 - ((2 * v168) & 0x1B4)) << 16) - 1696989184);
  v171 = BYTE3(v52);
  LODWORD(v52) = BYTE3(v52) & 0xF;
  v172 = v171 & 0xF0 | (v162 >> 20) & 0xF;
  v173 = *(v119 + ((((16 * v52) | BYTE2(v123) & 0xF) + 67) * (~v52 & 0x55 | v171 & 5)) % 0x3CDu);
  LODWORD(v52) = *(v119 + (85 * v172 + 5695) % (((~v52 & 0x1445 ^ v171 & 5) - (((-5696 - 85 * v172) | (85 * v172 + 5695)) & 0xB697)) ^ ((v171 & 0x60 ^ 0x5E63) + (v171 & 0x60))));
  v174 = (((v173 - ((2 * v173) & 0x44444444)) << 24) + 570425344) ^ (((v169 - ((2 * v169) & 0x78)) << 20) - 742391808) ^ v170;
  LODWORD(v52) = (v174 ^ (((v52 - ((2 * v52) & 0xFFFFFFFB)) << 28) + 1342177280)) >> 28;
  LODWORD(v52) = *(v119 + (85 * (((v52 ^ 0x94674F8B) - 1849550706) ^ ((v52 ^ 0x9E40FA37) - 1679446734) ^ ((v52 ^ 0xA27B5B6) + 260235953)) + 538661917) % 0x3CD);
  v175 = (16 * (v52 - ((2 * v52) & 0xDE)) + 724969200) ^ 0x160D518D;
  LODWORD(v52) = *(v119 + (85 * (((HIBYTE(v174) & 0xF ^ 0xB661D07A) + 89643119) ^ ((HIBYTE(v174) & 0xF) + 884364437) ^ ((HIBYTE(v174) & 0xF ^ 0x7491F637) - 945291740)) + 2131790540) % 0x3CD);
  v176 = v175 ^ (v52 + 15114382 + (~(2 * v52) | 0xFFFEE5));
  v177 = v31 ^ v152;
  LODWORD(v52) = *(v119 + (85 * ((((v174 >> 12) ^ 0xC1461891) - 1608986033) ^ ((v174 >> 12) | 0x9EA0D4E0) ^ (((v174 >> 12) ^ 0x9EB3DF5F) - 1239679)) - 1417157708) % 0x3CD);
  LODWORD(v31) = *(v119 + (85 * (((((v174 >> 19) & 0xC ^ 0x2E6D98EC) - 985008674) ^ (((v174 >> 19) & 0xC) + 213216566) ^ (((v174 >> 19) & 0xC ^ 0x7FA178F7) - 1803217465)) + ((((v174 >> 20) & 0xF ^ 0x759339AF) - 1512163768) ^ (((v174 >> 20) & 0xF ^ 0xC1C92A4F) + 293873064) ^ (((v174 >> 20) & 0xF ^ 0xB45A105B) + 1679237044))) - 1017994278) % 0x3CD);
  v178 = *(v119 + (85 * (((HIWORD(v174) & 0xF ^ 0xDB077A0E) - 219999296) ^ ((HIWORD(v174) & 0xF ^ 0x891E7EF2) - 1594222780) ^ ((HIWORD(v174) & 0xF ^ 0x521904FC) + 2080206158)) + 388637524) % 0x3CD);
  LODWORD(v31) = (16 * (v31 - ((2 * v31) & 0x42)) - 775613936) ^ (v178 - ((2 * v178) & 0x19A) + 523529421) & 0x2104C31 ^ ((v176 << 8) ^ 0x807573CE) & ((v178 - ((2 * v178) & 0x19A) + 523529421) ^ 0xE0CB9332);
  v179 = (v31 & 0x3B6 ^ 0x9772605A) & (v31 & 0x3B6 ^ 0xBFF26A69) ^ v31 & 0x184;
  v180 = *(v119 + (85 * (((((v174 >> 8) & 0xF) + 1945719334) ^ (((v174 >> 8) & 0xF) - 1946333754) ^ (((v174 >> 8) & 0xF ^ 0x9D030A76) - 286128204)) + (((v179 ^ 0xE1E810CF) - 572376043) ^ ((v179 ^ 0xB61CF547) - 1978213987) ^ ((v179 ^ 0xC0868676) - 57890130))) - 1845221810) % 0x3CD);
  v181 = ((v180 - ((2 * v180) & 0x10)) << 8) - 2001008640;
  v182 = *(v119 + (85 * (((v170 & 0xF ^ 0xEC9965F8) + 929713493) ^ ((v170 & 0xF ^ 0xA03EA7A) - 772750633) ^ ((v170 & 0xF ^ 0xE69A8F82) + 1030334255)) - 129713667) % 0x3CD);
  v183 = *(v119 + (85 * ((((v174 >> 4) ^ 0xB4D6D2F7) - 973054374) ^ (((v174 >> 4) ^ 0x50C6377E) + 571522001) ^ (((v174 >> 4) ^ 0xE410E581) - 1765381840)) - 557545477) % 0x3CD);
  v184 = STACK[0x53C];
  LODWORD(v52) = (LODWORD(STACK[0x53C]) - ((2 * LODWORD(STACK[0x53C])) & 0x65065DEA) + 847458037) ^ (v182 - ((2 * v182) & 0xDC) + 387552878) & 0x100117C ^ (16 * (v183 - ((2 * v183) & 0x152)) + 1587329680) ^ 0x8FAEA28A ^ ((((v52 - ((2 * v52) & 0x1F8)) << 12) - 889208832) ^ v181 & 0x88B82400 ^ ((v31 << 16) ^ 0xD998DB9F) & (v181 ^ 0x7744D79F) ^ 0xA4B13D1C) & ((v182 - ((2 * v182) & 0xDC) + 387552878) ^ 0xE8E66991);
  v185 = STACK[0x52C];
  LODWORD(v31) = (LODWORD(STACK[0x52C]) + 12775) % 0x11Au;
  *(STACK[0x488] + 4 * v31) = v152 ^ 0xBF6943A3 ^ v118;
  v186 = (v185 + 36400) % 0x11Au;
  *(STACK[0x488] + 4 * v186) = v52;
  LODWORD(v52) = *(STACK[0x488] + 4 * v31);
  v187 = v52 ^ 0xBF6943A3;
  *(STACK[0x488] + 4 * v31) = v52 ^ __ROR4__(v187, 30) ^ __ROR4__(v187, 27) ^ __ROR4__(v187, 26) ^ __ROR4__(v187, 20) ^ __ROR4__(v187, 19) ^ __ROR4__(v187, 12) ^ __ROR4__(v187, 7) ^ __ROR4__(v187, 5) ^ __ROR4__(v187, 2) ^ __ROR4__(v187, 10);
  v188 = *(STACK[0x488] + 4 * v186);
  HIDWORD(v86) = v188;
  LODWORD(v86) = v188;
  LODWORD(v31) = v86 >> 22;
  LODWORD(v119) = v188 ^ __ROR4__(v188, 31) ^ (4 * v188) ^ (v188 >> 30) ^ __ROR4__(v188, 27);
  v189 = __PAIR64__(v188, __ROR4__(v31 ^ 0x4106199, 6));
  LOBYTE(v52) = v119 ^ v189;
  LODWORD(v119) = v119 ^ v189 ^ 0x64104186;
  LODWORD(v52) = v188 >> ((81 * (v119 & 0x88 | v52 & 0x88 ^ 8)) | 0x10);
  v190 = v31 ^ __ROR4__(v188, 26) ^ v119 ^ (v52 | (v188 << 8));
  LODWORD(v189) = v188;
  LODWORD(v119) = (v189 >> 15) - ((2 * (v189 >> 15)) & 0x58AC346C);
  HIDWORD(v189) = v188;
  LODWORD(v189) = v188;
  v191 = (v189 >> 12) - ((2 * (v189 >> 12)) & 0x5C87FF72);
  HIDWORD(v189) = v188;
  LODWORD(v189) = v188;
  v192 = (v189 >> 11) - ((2 * (v189 >> 11)) & 0xBE5090AC);
  v193 = ((v188 - 339955077 - ((2 * v188) & 0xD77964F6)) ^ 0xEBBCB27B) << ((v52 & 0x1C ^ 0x1C) + (v52 & 0x1C));
  LODWORD(v31) = v193 - ((2 * v193) & 0x2B5F2250) - 1783656152;
  HIDWORD(v189) = v188;
  LODWORD(v189) = v188;
  LODWORD(v193) = (v189 >> 5) - ((2 * (v189 >> 5)) & 0x6543F2A8);
  HIDWORD(v189) = v188;
  LODWORD(v189) = v188;
  v194 = v189 >> 14;
  HIDWORD(v189) = v188;
  LODWORD(v189) = v188;
  LODWORD(v31) = v194 ^ (((v188 >> 2) << 31) | 0x42C8400) ^ ((v188 >> 3) ^ 0x7BD102BF) & ((v188 << 29) ^ 0x7FFFFFFF) ^ (v191 - 1371275335) ^ (v119 + 743840310) ^ (v192 - 551008170) ^ (((v188 << 22) ^ 0x7D6D54FA) & ((v188 >> 10) ^ 0xFFEF5FFA) | (v188 >> 10) & 0x12AB05) ^ (v193 + 849475924) ^ (v189 >> 21) ^ __ROR4__(v188, 19) ^ __ROR4__(v188, 18) ^ __ROR4__(v188, 16) ^ v190 ^ v31 & 0xBA389336 ^ (v31 ^ 0x4A506ED7) & ((v188 >> 4) ^ 0x45C76CC9);
  v195 = STACK[0x488];
  v196 = LODWORD(STACK[0x570]) - 1997;
  v197 = STACK[0x538];
  v198 = LODWORD(STACK[0x558]) - (LODWORD(STACK[0x538]) ^ v184);
  LODWORD(STACK[0x53C]) = v198 - 1921068884;
  *(v195 + 4 * v186) = (((v188 << 30) ^ 0xAF6AA8CE) & ((v188 >> 2) ^ 0xFF7BECFE) | (v188 >> 2) & 0x10955731) ^ 0x8C5388F2 ^ v31 ^ 0x9BDA5B1D;
  return (*(STACK[0x480] + 8 * ((26 * (v52 == (v52 + 110))) ^ v196)))((v198 - 1921068884 + v197 + 1353024208), (v157 - v177 - 568044676));
}

uint64_t sub_1001FA3D8(int a1, int a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6, int a7, unsigned int a8)
{
  LODWORD(STACK[0x500]) = v17;
  LODWORD(STACK[0x4D0]) = v20;
  LODWORD(STACK[0x46C]) = v18;
  LODWORD(STACK[0x4F0]) = a7;
  LODWORD(STACK[0x550]) = a2;
  LODWORD(STACK[0x530]) = v14;
  LODWORD(STACK[0x514]) = a1;
  LODWORD(STACK[0x558]) = v10;
  LODWORD(STACK[0x538]) = v21;
  LODWORD(STACK[0x518]) = v16 >> 10;
  LODWORD(STACK[0x468]) = a6 << 16;
  LODWORD(STACK[0x3E4]) = a6 >> 14;
  v22 = 31 * (LODWORD(STACK[0x504]) ^ 0x15AB);
  LODWORD(STACK[0x4D8]) = v12 ^ 0x64751710;
  LODWORD(STACK[0x47C]) = v22;
  LODWORD(STACK[0x3E8]) = v22 ^ 0x36802E61 | v9;
  LODWORD(STACK[0x4EC]) = v8 - 1592294534;
  LODWORD(STACK[0x570]) = 0;
  v23 = STACK[0x548];
  v24 = *(STACK[0x548] + 527) - ((2 * *(STACK[0x548] + 527)) & 0xCA) + 1474375525;
  v25 = ((16 * v24) | 0xFE898F0F) & (a5 ^ 0xFE898F4C) | (16 * v24) & 0xB0;
  v26 = *(STACK[0x548] + (85 * v13) % 0x3CDu);
  v27 = (v26 - ((2 * v26) & 0x128) + 337262484) ^ (16 * (v15 + 2163844 - ((2 * v15) & 0x1C8)) + 5632) ^ v11;
  v28 = *(STACK[0x548] + 527);
  v29 = LOBYTE(STACK[0x113F]);
  LODWORD(STACK[0x508]) = v29;
  v29 *= 16;
  LODWORD(STACK[0x52C]) = v29;
  v30 = 85 * (((v25 ^ 0x4E757345) - 1724596796) ^ ((v25 ^ 0x6729D02C) - 1335353685) ^ ((v25 ^ 0xD7D52C35) + 9757364));
  v31 = *(v23 + (v30 + 545427419) % 0x3CD);
  v32 = (v28 - ((2 * v28) & 0x4C) + 1266603558) ^ ((((v27 << 8) ^ 0xE376FAD0) & (v24 ^ 0xA81ED090) ^ v24 & 0x1C02D20) >> 4);
  LODWORD(STACK[0x540]) = a8 >> 4;
  v33 = v30 + 545457509;
  v34 = a8 >> 4;
  v35 = 85 * (v29 ^ v31);
  v36 = *(v23 + (v35 + 28050 - 973 * ((4414150 * (v35 + 28050)) >> 32)));
  v37 = ((16 * (v32 & 0xF)) ^ 0x110B3AA9) & (v34 ^ 0xBF4FFEF5) | (a8 >> 4) & 6;
  v38 = 85 * (((v37 ^ 0x4C133FC4) + 1858960905) ^ ((v37 ^ 0x7F2F0F1) + 623685950) ^ ((v37 ^ 0x5AEAF50C) + 2016720065));
  v39 = 85 * (*(v23 + (v38 - 903985948) % 0x3CDu) ^ (16 * *(v23 + (85 * (*(v23 + v33 % 0x3CD) ^ (*(v23 + (v35 + 58140 - 973 * ((4414150 * (v35 + 58140)) >> 32))) >> 4)) + 28050) % 0x3CDu)));
  v40 = *(v23 + (v39 + 28050) % ((((-28051 - v39) & 0x41284290 ^ (v39 + 28050) & 0x84290) - 2138697691) * (((-28051 - v39) | (v39 + 28050)) & 0xDA09A3B9)));
  v41 = v39 + 58140;
  v42 = (a8 >> 8) & 0xF;
  v43 = (v32 | 0xC510B30F) & (v42 ^ 0xC510B34F) | v32 & 0xB0;
  v44 = 85 * (((v43 ^ 0x23CE237A) - 1793817304) ^ ((v43 ^ 0x17D6A7EC) - 1593048654) ^ ((v43 ^ 0xF108374F) + 1204982035));
  v45 = 85 * (*(v23 + (v44 - 1914222487) % 0x3CD) ^ (16 * *(v23 + (85 * (*(v23 + (v38 - 903955858) % 0x3CDu) ^ (*(v23 + (v41 - 973 * ((4414150 * v41) >> 32))) >> 4)) + 28050) % 0x3CDu)));
  LOWORD(v41) = *(v23 + (v44 - 1914192397) % 0x3CD);
  v46 = v36 ^ (16 * v40);
  v47 = v45 + 28050 - 973 * ((4414150 * (v45 + 28050)) >> 32);
  v48 = (v27 & 0x30 ^ 0x14BE051F) & ((a8 >> 12) ^ 0x14BE053C) | v27 & 0xC0;
  v49 = 85 * (((v48 ^ 0x349D971B) - 1701661254) ^ ((v48 ^ 0xCBAFFD95) + 1705041720) ^ ((v48 ^ 0xEB8C6F7C) + 1166233055));
  v50 = (v27 >> 4) & 0xF0 | HIWORD(a8) & 0xF;
  v51 = 85 * (((v50 ^ 0xDAFF97C1) - 14710301) ^ ((v50 ^ 0x3D47A813) + 413644337) ^ ((v50 ^ 0xE7B83F42) - 1034411678));
  v52 = 85 * (*(v23 + (v49 + 53370797) % 0x3CD) ^ (16 * *(v23 + (85 * (v41 ^ (*(v23 + (v45 + 57167 - 973 * ((4414150 * (v45 + 57167)) >> 32))) >> 4)) + 28050) % 0x3CDu)));
  v53 = 16 * *(v23 + (85 * (*(v23 + (v49 + 53400887) % 0x3CD) ^ (*(v23 + (v52 + 58140 - 973 * ((4414150 * (v52 + 58140)) >> 32))) >> 4)) + 28050) % 0x3CDu);
  v54 = *(v23 + (v51 + 15310) % 0x3CDu);
  v55 = v53 + v54 - 2 * (v53 & v54);
  v56 = 85 * v55;
  v57 = 85 * (*(v23 + (v51 + 1821815128) % 0x3CD) ^ (*(v23 + (85 * v55 + 58140) % 0x3CDu) >> 4)) + 28050;
  v58 = v57 - 973 * ((17243 * v57) >> 24);
  v59 = *(v23 + v58);
  v60 = ((v58 & 0x35F ^ 0x84135F) + (v58 & 0x35F)) & ((v55 & 0x7AE0AF ^ 0x7AE0AF) + (v55 & 0x7AE0AF));
  v61 = (v27 >> 8) & 0xF0 ^ (a8 >> 20) & 0x3E7 ^ ((v60 - ((2 * v60) & 0x8C) + 3654) ^ 0xDA1) & ((a8 >> 20) ^ 0xC1);
  v62 = 85 * (((v61 ^ 0x65D601) + 1215772890) ^ ((v61 ^ 0x27ACEA81) + 1874723930) ^ ((v61 ^ 0x27C93C01) + 1876677338));
  v63 = 85 * (*(v23 + (v62 + 297224624) % 0x3CDu) ^ (16 * v59));
  v64 = v63 + 28050 - 973 * ((4414150 * (v63 + 28050)) >> 32);
  v65 = 85 * (*(v23 + (v62 + 297254714) % 0x3CDu) ^ (*(v23 + (v63 + 58140 - 973 * ((4414150 * (v63 + 58140)) >> 32))) >> 4)) + 28050;
  v66 = v52 + 28050 - 973 * ((4414150 * (v52 + 28050)) >> 32);
  v67 = (v56 + 28050) % 0x3CDu;
  v68 = HIWORD(v27);
  v69 = v46 ^ (*(v23 + v47) << 8) | (*(v23 + v64) << 20);
  v70 = HIWORD(v27) & 0x4A;
  v71 = v69 ^ (*(v23 + v66) << 12) ^ (*(v23 + v67) << 16);
  v72 = ((v27 >> 12) & 0xF0 ^ 0x2339BFC9) & (HIBYTE(a8) & 0xF ^ 0x2339BFF5) | HIBYTE(a8) & 6;
  v73 = 85 * (((v72 ^ 0x7043CFF1) - 1514308824) ^ ((v72 ^ 0xADECD2E0) + 2014471735) ^ ((v72 ^ 0xFE96A2EC) + 728241723));
  v74 = 85 * (*(v23 + (v73 + 266975222) % 0x3CD) ^ (16 * *(v23 + v65 % 0x3CDu)));
  v75 = v74 + 28050 - 973 * ((4414150 * (v74 + 28050)) >> 32);
  v76 = *(v23 + (v73 + 267005312) % 0x3CD) ^ (*(v23 + (v74 + 58140 - 973 * ((4414150 * (v74 + 58140)) >> 32))) >> 4);
  v77 = *(v23 + (85 * v76 + 28050) % (((621 - 85 * v76) | (85 * v76 + 28050)) & 0x3CDu));
  v78 = (v68 & 0xD0 ^ 0x44F9ACCF) & ((a8 >> 28) ^ 0x44F9ACD4) | v68 & 0x20;
  v79 = *(v23 + (85 * (((v78 ^ 0xD59416CE) + 490146616) ^ ((v78 ^ 0xD4CB5E69) + 476595089) ^ ((v78 ^ 0x45A6E453) - 1928988245)) + 1709417452) % 0x3CD);
  v80 = ~v70 & 0xAB2160A7 | v70 & (v70 ^ 0x545A9E58);
  v81 = (16 * (v77 - ((2 * v77) & 0x1A6)) + 1665981744) ^ (v79 - ((2 * v79) & 0xB2) - 241639847);
  v82 = v71 ^ (*(v23 + v75) << 24) ^ (*(v23 + (85 * ((((v80 ^ 0x301492E) - 1814213019) ^ ((v80 ^ 0x3A6922BA) - 1430968847) ^ ((v80 ^ 0x92490A79) + 43322676)) + (((v81 ^ 0x5FBA75BA) + 122021330) ^ ((v81 ^ 0xBB89E2E9) - 478776701) ^ ((v81 ^ 0x76E7943A) + 773325906))) - 194700743) % 0x3CD) << 28);
  v83 = (v36 & 0xF) - 1861195703 - ((2 * v36) & 0x12);
  LOBYTE(v36) = (((v82 & 0x84 ^ 0x84) + (v82 & 0x84)) & 0xC) - ((2 * (((v82 & 0x84 ^ 0x84) + (v82 & 0x84)) & 0xC)) & 0x10) + 104;
  v84 = ((v83 ^ 0x91106849) << (v36 & 0x30 ^ 0x20u) << (v36 & 0xC ^ 8u)) ^ a5;
  v85 = *(v23 + (85 * (((v84 ^ 0x241114B3) + 581729863) ^ ((v84 ^ 0x35A0EC8D) + 857572985) ^ ((v84 ^ 0x11B1F83Eu) + 386699980)) - 1021603183) % 0x3CD);
  v86 = (v82 >> 8) ^ 0x60DF0369;
  v87 = v85 ^ (16 * *(v23 + (85 * (((((v46 & 0xF0 ^ 0x90CD3374) & (v34 ^ 0x90CD33F6) | STACK[0x540] & 0xB) ^ 0xD16C3615) + 1789613880) ^ ((((v46 & 0xF0 ^ 0x90CD3374) & (v34 ^ 0x90CD33F6) | STACK[0x540] & 0xB) ^ 0x1F56CD2) - 1171124751) ^ ((((v46 & 0xF0 ^ 0x90CD3374) & (v34 ^ 0x90CD33F6) | STACK[0x540] & 0xB) ^ 0x405469BB) - 74250086)) - 1248674636) % 0x3CD));
  LOWORD(v42) = ((16 * (v86 & 0xF)) ^ 0x5D6F) & (v42 + 24048);
  v88 = (((v86 << 19) & 0x3800000 ^ 0xF8FFFFFF) & ((a8 << 7) & 0x780000 ^ 0x8B980000) ^ ((((v86 >> 7) & 1) << 26) | 0x40100000)) >> 19;
  v89 = v87 ^ (*(v23 + (85 * (((v42 ^ 0x2B59) + 22674) ^ ((v42 ^ 0xF5B1) - 31110) ^ ((v42 ^ 0x831E) - 3881)) - 17580) % 0x3CDu) << 8);
  v90 = v89 ^ (*(v23 + (85 * (((v88 ^ 0x411AC23) - 1338389753) ^ ((v88 ^ 0x49B75BD4) - 39895822) ^ ((v88 ^ 0x4DA6EE88) - 108099154)) + 781066760) % 0x3CD) << 12);
  v91 = ((v71 >> 12) & 0xF0 ^ 0xE426BEA) & (HIWORD(a8) & 0xF ^ 0xE426BFF) | HIWORD(a8) & 5;
  v92 = v90 ^ (*(v23 + (85 * (((v91 ^ 0xBBE3299F) - 111967299) ^ ((v91 ^ 0xCFF8800A) - 1924650454) ^ ((v91 ^ 0x7A59C27F) + 954820701)) + 1936047661) % 0x3CD) << 16);
  v93 = (HIWORD(v71) & 0xF0 ^ 0xE78F72B4) & ((a8 >> 20) & 0xF ^ 0xEFBF7EF4) ^ ((a8 >> 20) & 0xB | 0x8300C40);
  v94 = ((v82 >> 20) & 0x70 | HIBYTE(a8) & 0xF) ^ 0x1F0EA87F;
  v95 = v92 ^ (*(v23 + (85 * (((v93 ^ 0xF07C64D4) + 1056292935) ^ ((v93 ^ 0xBB7F16D4) + 1979101767) ^ ((v93 ^ 0xA4BC0CF5) + 1781901416)) - 121007689) % 0x3CD) << 20);
  v96 = v95 ^ (*(v23 + (85 * ((v94 & 0x43) + (((v94 & 0x43 ^ 0x15460C46) - 621950511) ^ ((v94 & 0x43 ^ 0xF7E192BB) + 944396078) ^ ((v94 & 0x43 ^ 0xE2A79EBE) + 755784489)) + (((v94 ^ ((v82 >> 20) & 0x80 | 0x20B11008) ^ 0xF08D802E) - 49195672) ^ ((v94 ^ ((v82 >> 20) & 0x80 | 0x20B11008) ^ 0x83ABDC93) - 1908995621) ^ ((v94 ^ ((v82 >> 20) & 0x80 | 0x20B11008) ^ 0x4C99E4C6) + 1090859408))) + 1714687491) % 0x3CD) << 24);
  v97 = 85 * ((v96 ^ (*(v23 + (85 * ((((HIBYTE(v82) & 0xF0 | (a8 >> 28)) ^ 0xD3BFC9E) - 654789707) ^ (((HIBYTE(v82) & 0xF0 | (a8 >> 28)) ^ 0xE0F6E977) + 892708446) ^ (((HIBYTE(v82) & 0xF0 | (a8 >> 28)) ^ 0xEDCD15E9) + 940464836)) + 103206136) % 0x3CD) << 28)) >> 28) + 80750;
  v98 = ((((*(v23 + (85 * (HIBYTE(v96) & 0xF) + 80750 - 973 * ((4414150 * (85 * (HIBYTE(v96) & 0xF) + 80750)) >> 32))) << 8) ^ (*(v23 + (v97 - 973 * ((4414150 * v97) >> 32))) << 12) | *(v23 + (85 * (HIWORD(v92) & 0xF) + 80750 - 973 * ((4414150 * (85 * (HIWORD(v92) & 0xF) + 80750)) >> 32)))) << 16) ^ (*(v23 + (85 * ((v95 >> 20) & 0xF) + 80750 - 973 * ((4414150 * (85 * ((v95 >> 20) & 0xF) + 80750)) >> 32))) << 20) | (*(v23 + (85 * ((v89 >> 8) & 0xF) + 80750) % (((85 * ((v89 >> 8) & 0xF) + 80750) | (145 - 85 * ((v89 >> 8) & 0xF))) & 0x3CD)) << 8)) ^ (*(v23 + (85 * (v90 >> 12) + 80750 - 973 * ((4414150 * (85 * (v90 >> 12) + 80750)) >> 32))) << 12) | *(v23 + (85 * (v85 & 0xF) + 80750 - 973 * ((4414150 * (85 * (v85 & 0xFu) + 80750)) >> 32)));
  v99 = v19 ^ (16 * *(v23 + (85 * (v87 >> 4) + 80750 - 973 * ((4414150 * (85 * (v87 >> 4) + 80750)) >> 32)))) ^ v98;
  v100 = STACK[0x530];
  v101 = LODWORD(STACK[0x530]) + 2099538579;
  v102 = STACK[0x538];
  v103 = LODWORD(STACK[0x538]) + 2099538579;
  v104 = *(v23 + (85 * ((a6 + v101) >> 28) + 50150) % (((364 - LODWORD(STACK[0x530])) ^ v101) & 0x3CDu));
  v105 = *(v23 + (85 * (((a6 + v101) >> 24) & 0xF) - 15386) % 0x3CDu);
  LODWORD(STACK[0x540]) = v99;
  v106 = a6 + v101;
  v107 = ((v105 << 16) ^ (v104 << 20) | (*(v23 + (85 * (((a6 + v101) >> 16) & 0xF) - 15386) % 0x3CDu) << 8)) ^ (*(v23 + ((v99 & 0x23BD2A23) - 599599566 + (v99 & 0x23BD2A23 ^ 0x23BD2A23)) * ((((a6 + v101) >> 20) & 0xF) + 590) % 0x3CD) << 12);
  LODWORD(STACK[0x4E4]) = v107;
  v108 = *(v23 + (85 * ((a6 + v101) >> 12) - 15386) % 0x3CDu);
  v109 = v107 | *(v23 + (85 * (((a6 + v101) >> 8) & 0xF) - 15386) % 0x3CDu);
  LODWORD(STACK[0x4E8]) = v109;
  v110 = (v109 << 8) ^ (v108 << 12);
  LODWORD(STACK[0x520]) = v106;
  v111 = *(v23 + (85 * (v106 & 0xF) - 15386) % 0x3CDu);
  v112 = (v110 | v111) ^ (16 * *(v23 + (85 * (v106 >> 4) - 15386) % 0x3CDu));
  v113 = v111 & 0xF;
  v114 = LODWORD(STACK[0x448]) - v103;
  v115 = *(v23 + (85 * ((v114 >> 20) & 0xF) - 15386) % 0x3CDu);
  v116 = (*(v23 + (85 * (HIBYTE(v114) & 0xF) - 15386) % 0x3CDu) << 8) ^ (*(v23 + (85 * (v114 >> 28) - 15386) % 0x3CDu) << 12);
  LODWORD(STACK[0x4E0]) = v116;
  v117 = ((v116 | *(v23 + (85 * (BYTE2(v114) & 0xF) - 15386) % 0x3CDu)) << 8) ^ (v115 << 12);
  v118 = v117 | *(v23 + (85 * ((v114 >> 8) & 0xF) - 15386) % 0x3CDu);
  LODWORD(STACK[0x4A0]) = v117;
  v119 = (v118 << 8) ^ (*(v23 + (85 * (v114 >> 12) - 15386) % 0x3CDu) << 12);
  v120 = *(v23 + (85 * (v114 & 0xF) - 15386) % 0x3CDu);
  v121 = v113 & 0xFFFFFF0F | (16 * (v120 & 0xF));
  v122 = (v119 | v120) ^ (16 * *(v23 + (85 * (v114 >> 4) - 15386) % 0x3CDu));
  v123 = 85 * (LODWORD(STACK[0x52C]) ^ *(v23 + (85 * v121 + 28050) % 0x3CDu));
  v124 = 85 * (*(v23 + (85 * v121 + 58140 - 973 * ((4414150 * (85 * v121 + 58140)) >> 32))) ^ (*(v23 + (v123 + 58140 - 973 * ((4414150 * (v123 + 58140)) >> 32))) >> 4)) + 28050;
  v125 = 85 * (v122 & 0xF0 | (v112 >> 4));
  v126 = 85 * ((v119 >> 8) & 0xF0 | (v110 >> 12));
  v127 = 85 * (*(v23 + (v125 + 28050) % 0x3CDu) ^ (16 * *(v23 + v124 % 0x3CDu)));
  v128 = 85 * ((v122 >> 4) & 0xF0 | (v112 >> 8) & 0xF);
  v129 = 85 * (*(v23 + (v128 + 28050) % 0x3CDu) ^ (16 * *(v23 + (85 * (*(v23 + (v125 + 58140 - 973 * ((4414150 * (v125 + 58140)) >> 32))) ^ (*(v23 + (v127 + 58140 - 973 * ((4414150 * (v127 + 58140)) >> 32))) >> 4)) + 28050) % 0x3CDu)));
  v130 = 85 * (*(v23 + (v126 + 28050) % 0x3CDu) ^ (16 * *(v23 + (85 * (*(v23 + (v128 + 58140 - 973 * ((4414150 * (v128 + 58140)) >> 32))) ^ (*(v23 + (v129 + 58140 - 973 * ((4414150 * (v129 + 58140)) >> 32))) >> 4)) + 28050) % 0x3CDu)));
  v131 = 85 * (*(v23 + (v126 + 58140 - 973 * ((4414150 * (v126 + 58140)) >> 32))) ^ (*(v23 + (v130 + 57167 - 973 * ((4414150 * (v130 + 57167)) >> 32))) >> 4));
  v132 = 85 * ((v119 >> 12) & 0xF0 | HIWORD(v110) & 0xF);
  v133 = 85 * (*(v23 + (v132 + 28050) % 0x3CDu) ^ (16 * *(v23 + (v131 + 28050) % (((v131 + 28050) | (621 - v131)) & 0x3CDu))));
  LODWORD(STACK[0x4A4]) = v133;
  LOWORD(v133) = (85 * (*(v23 + (v132 + 58140 - 973 * ((4414150 * (v132 + 58140)) >> 32))) ^ (*(v23 + (v133 + 58140 - 973 * ((4414150 * (v133 + 58140)) >> 32))) >> 4)) + 28050) % 0x3CDu;
  v134 = HIWORD(v110) >> ((v133 & 0xA6) - (v133 & 0xA2) - (v133 | 0x59) + (v133 | 0x5D));
  v135 = 85 * (v134 & 0xF | (16 * (v117 >> 12)));
  LODWORD(STACK[0x49C]) = (v135 + 58140) % (((227 - v135) ^ (v135 + 58140)) & 0x3CDu);
  v136 = (*(v23 + (v129 + 28050 - 973 * ((4414150 * (v129 + 28050)) >> 32))) << 8) ^ (*(v23 + (v130 + 28050 - 973 * ((4414150 * (v130 + 28050)) >> 32))) << 12);
  LODWORD(STACK[0x4B8]) = v136;
  v137 = *(v23 + (v123 + 28050 - 973 * ((4414150 * (v123 + 28050)) >> 32)));
  LODWORD(STACK[0x4A8]) = v137;
  v138 = v137 ^ (16 * *(v23 + (v127 + 28050 - 973 * ((4414150 * (v127 + 28050)) >> 32))));
  LODWORD(STACK[0x4B4]) = v138;
  v139 = v136 ^ v138;
  LODWORD(STACK[0x490]) = v139;
  v140 = (v139 >> 4) & 0xC0 | (v112 >> 8) & 0xD;
  LODWORD(STACK[0x498]) = (85 * ((v139 >> 4) & 0xF0 | (v112 >> 8) & 0xF) + 5695) % ((v140 ^ 0x3CDu) + v140);
  v141 = ((2 * LODWORD(STACK[0x550])) & 0x4B1B3544) + (LODWORD(STACK[0x550]) ^ 0xA58D9AA2);
  LODWORD(STACK[0x4F8]) = v141;
  v142 = LODWORD(STACK[0x514]) - 1517446494;
  v143 = (v102 + 1060682378) ^ (((v102 + 1060682378) ^ 0x56AF7C60) - 2025652223) ^ (((v102 + 1060682378) ^ 0x5845BE64) - 1985363451) ^ v142 ^ (((v102 + 1060682378) ^ 0x1782FE65) - 965836282) ^ (((v102 + 1060682378) ^ 0x377BBFFE) - 426261601);
  v144 = ((v143 ^ v103 ^ 0x2C3B974F) + 1062982654) ^ ((v143 ^ v103 ^ 0xB9AA19D0) - 1429578397) ^ ((v143 ^ v103 ^ 0xBB820D00) - 1461565005);
  LODWORD(STACK[0x4F4]) = v144;
  v145 = v141 ^ (v100 + 287651563);
  LODWORD(STACK[0x504]) = v145;
  v146 = v145 ^ v101;
  LODWORD(STACK[0x4FC]) = v146;
  LODWORD(STACK[0x550]) = v146 + 2083078143;
  v147 = v19;
  v148 = v146 + 2083078143 + LODWORD(STACK[0x500]);
  v149 = ((((((v148 >> 8) & 0xF) + 590) & 0x55555555) + ((17 - ((v148 >> 8) & 0xF)) & 0x55555555)) | 0x41) * (((v148 >> 8) & 0xF) + 590);
  v150 = (((*(v23 + (85 * (HIBYTE(v148) & 0xF) - 15386) % 0x3CDu) << 8) ^ (*(v23 + (85 * (v148 >> 28) - 15386) % 0x3CDu) << 12) | *(v23 + (85 * (BYTE2(v148) & 0xF) - 15386) % 0x3CDu)) << 8) ^ (*(v23 + (85 * ((v148 >> 20) & 0xF) - 15386) % 0x3CDu) << 12) | *(v23 + (v149 - 973 * ((4414150 * v149) >> 32)));
  LODWORD(STACK[0x4C4]) = v150;
  LODWORD(STACK[0x500]) = v144 + 1052080337;
  v151 = LODWORD(STACK[0x454]) - (v144 + 1052080337);
  v152 = (*(v23 + (85 * (HIBYTE(v151) & 0xF) - 15386) % 0x3CDu) << 8) ^ (*(v23 + (85 * (v151 >> 28) - 15386) % 0x3CDu) << 12);
  LODWORD(STACK[0x4CC]) = v152;
  v153 = ((v152 | *(v23 + (85 * (BYTE2(v151) & 0xF) - 15386) % 0x3CDu)) << 8) ^ (*(v23 + (85 * ((v151 >> 20) & 0xF) - 15386) % 0x3CDu) << 12);
  LODWORD(STACK[0x494]) = v153;
  v154 = ((v153 | *(v23 + (85 * ((v151 >> 8) & 0xF) - 15386) % 0x3CDu)) << 8) ^ (*(v23 + (85 * (v151 >> 12) - 15386) % 0x3CDu) << 12);
  LODWORD(STACK[0x470]) = v154;
  v155 = v150 << 8;
  v156 = (v150 << 8) ^ (*(v23 + (85 * (v148 >> 12) - 15386) % 0x3CDu) << 12);
  v157 = 85 * ((v154 >> 8) & 0xF0 | (v156 >> 12));
  LODWORD(STACK[0x478]) = (v157 + 58140) % ((((v157 + 58140) & 0x24D) + ((227 - v157) & 0x24D)) | 0x381u);
  v158 = v147 ^ LODWORD(STACK[0x53C]);
  v159 = LODWORD(STACK[0x53C]) ^ v102;
  v160 = LODWORD(STACK[0x4D0]) - 1394504864;
  LODWORD(STACK[0x53C]) = (LODWORD(STACK[0x4D0]) - ((2 * v160) & 0x963F7FBC) + 2013350718) ^ LODWORD(STACK[0x4D8]);
  v161 = LODWORD(STACK[0x468]) + 1592294534;
  LODWORD(STACK[0x538]) = v161 ^ v160;
  LODWORD(STACK[0x530]) = v161 ^ v100;
  LODWORD(STACK[0x4D8]) = ((v159 ^ 0xE608A5) + 1133917476) ^ ((v159 ^ 0x5C8FF319) + 536858272) ^ ((v159 ^ 0x5C69FBBC) + 521782843);
  LODWORD(STACK[0x4D0]) = v158 + v142;
  v162 = 85 * (*(v23 + (v135 + 28050) % 0x3CDu) ^ (16 * *(v23 + v133)));
  v163 = LODWORD(STACK[0x490]) ^ (*(v23 + (LODWORD(STACK[0x4A4]) + 28050 - 973 * ((4414150 * (LODWORD(STACK[0x4A4]) + 28050)) >> 32))) << 16);
  v164 = 85 * ((LODWORD(STACK[0x4A0]) >> 12) & 0xF0 | (v134 >> 4));
  v165 = 85 * (*(v23 + (v164 + 28050) % 0x3CDu) ^ (16 * *(v23 + (85 * (*(v23 + LODWORD(STACK[0x49C])) ^ (*(v23 + (v162 + 58140 - 973 * ((4414150 * (v162 + 58140)) >> 32))) >> 4)) + 28050) % 0x3CDu)));
  v166 = 85 * (*(v23 + (85 * ((LODWORD(STACK[0x4E0]) >> 8) & 0xF0 | (v134 >> 8) & 0xF) + 28050) % 0x3CDu) ^ (16 * *(v23 + (85 * (*(v23 + (v164 + 58140 - 973 * ((4414150 * (v164 + 58140)) >> 32))) ^ (*(v23 + (v165 + 58140 - 973 * ((4414150 * (v165 + 58140)) >> 32))) >> 4)) + 28050) % 0x3CDu))) + 28050;
  v167 = v166 - 973 * ((4414150 * v166) >> 32);
  v168 = *(v23 + (85 * (v113 & 0xFF0F | (16 * (STACK[0x4A8] & 0xF))) + 5695) % 0x3CDu) ^ (16 * *(v23 + (85 * (STACK[0x4B4] & 0xF0 | (v112 >> 4)) + 5695) % 0x3CDu)) ^ (*(v23 + LODWORD(STACK[0x498])) << 8);
  v169 = v163 ^ (*(v23 + (v162 + 28050 - 973 * ((4414150 * (v162 + 28050)) >> 32))) << 20);
  v170 = v169 ^ (*(v23 + (v165 + 28050 - 973 * ((4414150 * (v165 + 28050)) >> 32))) << 24);
  v171 = (*(v23 + (85 * (((v170 ^ (*(v23 + v167) << 28)) >> 24) & 0xF0 | (LODWORD(STACK[0x4E8]) >> 20) & 0xF) + 5695) % 0x3CDu) << 28) ^ (*(v23 + (85 * ((v170 >> 20) & 0xF0 | HIWORD(LODWORD(STACK[0x4E4])) & 0xF) + 5695) % 0x3CDu) << 24);
  v172 = v168 ^ (*(v23 + (85 * ((LODWORD(STACK[0x4B8]) >> 8) & 0xF0 | (v110 >> 12)) + 5695) % 0x3CDu) << 12);
  v173 = v172 ^ (*(v23 + (85 * ((v163 >> 12) & 0xF0 | BYTE2(v110) & 0xF) + 5695) % 0x3CDu) << 16);
  v174 = v173 ^ (*(v23 + (85 * (BYTE2(v169) & 0xF0 | (LODWORD(STACK[0x4E4]) >> 12)) + 5695) % 0x3CDu) << 20);
  LODWORD(STACK[0x4E0]) = v173;
  v175 = v171 ^ v174;
  v176 = 85 * (HIWORD(v173) & 0xF) + 80750;
  LODWORD(STACK[0x4E8]) = (((*(v23 + (85 * (HIBYTE(v175) & 0xF) + 80750 - 973 * ((4414150 * (85 * (HIBYTE(v175) & 0xF) + 80750)) >> 32))) << 8) ^ (*(v23 + (85 * (v175 >> 28) + 80750 - 973 * ((4414150 * (85 * (v175 >> 28) + 80750)) >> 32))) << 12) | *(v23 + (973 * ((4414150 * v176) >> 32) + v176 - 1946 * ((4414150 * v176) >> 32)))) << 8) ^ (*(v23 + (85 * ((v174 >> 20) & 0xF) + 80750 - 973 * ((4414150 * (85 * ((v174 >> 20) & 0xF) + 80750)) >> 32))) << 12);
  v177 = 85 * (v172 >> 12) + 80750 - 973 * ((4414150 * (85 * (v172 >> 12) + 80750)) >> 32);
  LODWORD(STACK[0x4E4]) = ((v143 ^ 0x417B585) + 393736504) ^ ((v143 ^ 0x948F3C30) - 2014349181) ^ ((v143 ^ 0xBE8B0A2A) - 1377087847);
  LODWORD(STACK[0x4C8]) = v148;
  v178 = *(v23 + (85 * (v148 & 0xF) - 15386) % 0x3CDu);
  v179 = (v156 | v178) ^ (16 * *(v23 + (85 * (v148 >> 4) - 15386) % 0x3CDu));
  v180 = *(v23 + (85 * (v151 & 0xF) - 15386) % 0x3CDu);
  v181 = (LODWORD(STACK[0x470]) | v180) ^ (16 * *(v23 + (85 * (v151 >> 4) - 15386) % 0x3CDu));
  v182 = 85 * (v178 & 0xF | (16 * (v180 & 0xF)));
  v183 = LODWORD(STACK[0x52C]) ^ *(v23 + (v182 + 28050) % 0x3CDu);
  v184 = 85 * (v183 + (STACK[0x52C] & 0x140) + (STACK[0x52C] & 0x140 ^ 0x14A));
  LOWORD(v182) = (85 * (*(v23 + (v182 + 58140 - 973 * ((4414150 * (v182 + 58140)) >> 32))) ^ (*(v23 + (85 * v183 + 58140 - 973 * ((4414150 * (85 * v183 + 58140)) >> 32))) >> 4)) + 28050) % 0x3CDu;
  v185 = 85 * (v181 & 0xF0 | (v179 >> 4));
  v186 = 85 * (*(v23 + (v185 + 28050) % 0x3CDu) ^ (16 * *(v23 + v182)));
  LOWORD(v102) = *(v23 + (v185 + 58140 - 973 * ((4414150 * (v185 + 58140)) >> 32)));
  v187 = *(v23 + (v184 - 973 * ((4414150 * v184) >> 32))) ^ (16 * *(v23 + (v186 + 28050 - 973 * ((4414150 * (v186 + 28050)) >> 32))));
  v188 = 85 * ((v181 >> 4) & 0xF0 | (v179 >> 8) & 0xF);
  v189 = 85 * (*(v23 + (v188 + 28050) % 0x3CDu) ^ (16 * *(v23 + (85 * (v102 ^ (*(v23 + (v186 + 58140 - 973 * ((4414150 * (v186 + 58140)) >> 32))) >> 4)) + 28050) % 0x3CDu)));
  v190 = *(v23 + (v188 + 58140 - 973 * ((4414150 * (v188 + 58140)) >> 32))) ^ (*(v23 + (v189 + 58140 - 973 * ((4414150 * (v189 + 58140)) >> 32))) >> 4);
  v191 = v189 + 28050 - 973 * ((4414150 * (v189 + 28050)) >> 32);
  v192 = 85 * (*(v23 + (v157 + 28050) % 0x3CDu) ^ (16 * *(v23 + (85 * v190 + 28050) % 0x3CDu)));
  v193 = v192 + 28050 - 973 * ((4414150 * (v192 + 28050)) >> 32);
  v194 = 85 * ((LODWORD(STACK[0x470]) >> 12) & 0xF0 | HIWORD(v156) & 0xF);
  v195 = *(v23 + (v194 + 28050) % 0x3CDu) ^ (16 * *(v23 + (85 * (*(v23 + LODWORD(STACK[0x478])) ^ (*(v23 + (v192 + 58140 - 973 * ((4414150 * (v192 + 58140)) >> 32))) >> 4)) + 28050) % 0x3CDu));
  v196 = v194 + 58140 - 973 * ((4414150 * (v194 + 58140)) >> 32);
  v197 = ((v195 + 330) & 0x114F ^ (-331 - v195) & 0x4F16714F ^ (((v195 + 330) & 0x111A) + ((-331 - v195) & STACK[0x3B4]))) * (v195 + 330) % 0x3CD;
  v198 = (*(v23 + v193) << 12) ^ (*(v23 + v191) << 8);
  BYTE2(v169) = BYTE2(v156);
  v199 = *(v23 + (85 * ((((v198 >> 8) & 0xF0 ^ 0xF94E) & ((v156 >> 12) ^ 0xFDFF) & 0xFFFE | (v156 >> 12) & 1) ^ 0xF94E) + 5695) % 0x3CDu);
  v200 = (LODWORD(STACK[0x494]) >> 8) & 0xF0 | (v155 >> 20) & 0xF;
  v201 = 85 * v200 + 28050 - 973 * ((17243 * (85 * v200 + 28050)) >> 24);
  v202 = (85 * (v200 - (v201 & 0x188) + (v201 & 0x7588 | 0x4E898A77)) - 329913959) % 0x3CD;
  v203 = *(v23 + (85 * (((*(v23 + v196) - ((2 * *(v23 + v196)) & 0x22) + 17) ^ (*(v23 + (85 * v195 + 58140 - 973 * ((4414150 * (85 * v195 + 58140)) >> 32))) >> 4)) ^ 0x11) + 28050) % 0x3CDu);
  v204 = 85 * ((*(v23 + v201) - ((2 * *(v23 + v201)) & 0xC0) + 1260339040) ^ 0xD2E0BE60 ^ (16 * (v203 - ((2 * v203) & 0x20)) - 1711308544));
  v205 = *(v23 + (85 * (((*(v23 + v202) - ((2 * *(v23 + v202)) & 0x26) + 19) ^ (*(v23 + (v204 + 58140) % 0x3CD) >> 4)) ^ 0x13) + 28050) % 0x3CDu);
  v206 = 85 * ((LODWORD(STACK[0x494]) >> 12) & 0xF0 | HIBYTE(v155) & 0xF);
  v207 = *(v23 + (v206 + 28050) % 0x3CDu);
  v208 = 85 * ((v207 - ((2 * v207) & 0x164) - 200327758) ^ 0x44DD3F92 ^ (16 * (v205 - ((2 * v205) & 0x44444444)) - 1328414176));
  v209 = *(v23 + (v208 + 28050) % 0x3CDu);
  LOBYTE(v206) = *(v23 + (v206 + 58140 - 973 * ((4414150 * (v206 + 58140)) >> 32)));
  v210 = *(v23 + (85 * (((v206 - ((2 * v206) & 0x44) + 34) ^ (*(v23 + (v208 + 58140) % 0x3CDu) >> 4)) ^ 0x22) + 28050) % 0x3CDu);
  LOWORD(v208) = (LODWORD(STACK[0x4C4]) >> 20) & 0xF;
  v211 = *(v23 + (85 * (((LODWORD(STACK[0x4CC]) >> 8) & 0xF0 ^ 0x79D) & (v208 ^ 0xAFFD) ^ ((LODWORD(STACK[0x4C4]) >> 20) & 2 | 0xA820) ^ 0xAFBD) + 28050) % 0x3CDu);
  v212 = *(v23 + (85 * ((v211 - ((2 * v211) & 0x2E) - 1964356329) ^ 0xC2C390C7 ^ (16 * (v210 - ((2 * v210) & 0xBBBBBBBB)) + 1210703312)) + 28050) % 0x3CD);
  v213 = *(v23 + (v204 + 28050) % 0x3CD);
  v214 = v187 ^ 0x4AD542FD ^ v198;
  v215 = ((v209 - ((2 * v209) & 0xFFFFFFFB)) << 24) + 2097152000;
  v216 = ((*(v23 + v197) - 2 * (*(v23 + v197) & 0x1F)) << 16) - 1927348224;
  v217 = ((v213 - ((2 * v213) & 0xFFFFFF87)) << 20) - 600834048;
  v218 = v216 ^ v214;
  v219 = v216 ^ v214 ^ v217;
  v220 = (((v212 - 2 * (v212 & 1)) << 28) - 1879048192) ^ v215 ^ v219;
  v221 = *(v23 + (85 * (((v214 >> 4) & 0xF0 | (v179 >> 8) & 0xF) ^ 0x20) + 5695) % 0x3CDu);
  v222 = *(v23 + (85 * (v187 & 0xF0 | (v179 >> 4)) + 5695) % 0x3CDu);
  v223 = 85 * ((((16 * ((v187 ^ 0x42FD) & 0xF)) | 0xB309) & ~(v178 & 0xF) | v178 & 6) ^ 0xB3D9) + 5695;
  v224 = 16 * (v222 - ((2 * v222) & 0x1A8)) - 1056043712;
  v225 = *(v23 + v223 % 0x3CDu);
  LOBYTE(v222) = v225 - 8;
  v226 = (v225 + 1781780472 - ((2 * v225) & 0x1F0)) ^ v224 ^ (((v221 - ((2 * v221) & 0x1EA)) << 8) - 1110772480);
  v227 = (((v199 - ((2 * v199) & 0x14)) << 12) - 514809856) ^ v226 ^ 0xDE27AEB3;
  v228 = *(v23 + (85 * (((BYTE2(v219) & 0xF0 ^ 0x589A) & ((v155 >> 20) & 0xF ^ 0x78FF) | (v155 >> 20) & 5) ^ 0x586A) + 5695) % 0x3CDu);
  v229 = *(v23 + (85 * (((v220 >> 20) & 0xF0 ^ 0x7B5E) & (HIBYTE(v155) & 0xF ^ 0xFFFE) ^ (HIBYTE(v155) & 1 | 0x8480) ^ 0xFFBE) + 5695) % 0x3CDu);
  v230 = *(v23 + (85 * ((((v218 >> 12) & 0xF0 ^ 0x92A3) & (BYTE2(v169) & 0xF ^ 0xB6FB) | BYTE2(v169) & 0xC) ^ 0x9203) + 5695) % 0x3CDu);
  v231 = (((v230 - ((2 * v230) & 0x76)) << 16) - 851771392) ^ v227;
  v232 = (((((v229 - 2 * (v229 & 7)) << 24) + 587202560) ^ 0x2692F07) - 469762048) ^ (((v228 - ((2 * v228) & 0x1C)) << 20) + 819986432) ^ v231;
  v233 = *(v23 + (85 * (((16 * (v220 >> 28)) ^ 0x62D8) & (v208 ^ 0xEFF8) ^ ((v155 >> 28) & 7 | 0x8DC0) ^ 0xEFE8) + 5695) % 0x3CDu);
  v234 = v232 ^ 0x710E7CCD ^ (((v233 - 2 * (v233 & 3)) << 28) + 805306368);
  v235 = v234 & 0x28E10A00 ^ 0x8626FFE6 ^ (v234 & 0xACE18B60 ^ 0xAAC774C6) & (v234 & 0xACE18B60 ^ 0x7ECFF5A7);
  v236 = STACK[0x4F8];
  v237 = LODWORD(STACK[0x538]) + LODWORD(STACK[0x4F8]);
  v238 = ((LODWORD(STACK[0x4E8]) | *(v23 + (85 * ((v168 >> 8) & 0xF) + 80750 - 973 * ((4414150 * (85 * ((v168 >> 8) & 0xF) + 80750)) >> 32)))) << 8) ^ (*(v23 + v177) << 12) | *(v23 + (85 * (STACK[0x4E0] & 0xF) + 80750 - 973 * ((4414150 * (85 * (STACK[0x4E0] & 0xF) + 80750)) >> 32)));
  v239 = 85 * (LODWORD(STACK[0x4E0]) >> 4) + 80750;
  v240 = ((v143 ^ 0x44277258) + 1464284907) ^ ((v143 ^ 0xC3ADC08) + 526031035) ^ ((v143 ^ 0x660E2DCF) + 1970170238);
  LODWORD(STACK[0x520]) ^= v237;
  v241 = STACK[0x4FC];
  v242 = v237 - LODWORD(STACK[0x4FC]);
  v243 = STACK[0x4D0];
  LODWORD(STACK[0x538]) = LODWORD(STACK[0x4D0]) ^ (16 * *(v23 + (v239 - 973 * ((4414150 * v239) >> 32)))) ^ v238;
  v244 = 85 * ((v227 >> 12) ^ 3) + 80750;
  v245 = *(v23 + (v244 - 973 * ((4414150 * v244) >> 32)));
  v246 = 85 * ((v232 >> 20) & 0xF ^ 3) + 80750;
  v247 = *(v23 + (v246 - 973 * ((4414150 * v246) >> 32)));
  v248 = v247 + 134996 - ((2 * v247) & 0x8E);
  v249 = *(v23 + (85 * ((v234 >> 28) ^ 9) + 80750 - 973 * ((4414150 * (85 * ((v234 >> 28) ^ 9) + 80750)) >> 32)));
  v250 = v249 + 893045 - ((2 * v249) & 0xE4);
  v251 = 85 * (((v232 ^ 0x710E7CCD) >> 24) & 0xF) + 80750;
  v252 = *(v23 + (v251 - 973 * ((4414150 * v251) >> 32)));
  v253 = v252 - ((2 * v252) & 0x2C);
  v254 = 85 * (HIWORD(v231) & 0xF ^ 0xB) + 80750;
  v255 = *(v23 + (v254 - 973 * ((4414150 * v254) >> 32)));
  v256 = (((v250 << 12) + 16764928) ^ ((v253 << 8) - 1819732480) ^ 0x3BCFBB) & ((v255 - ((2 * v255) & 0xFFFFFFCF) + 1208887271) ^ 0xF1D858) ^ (v255 - ((2 * v255) & 0xFFFFFFCF) + 1208887271) & 0x80644;
  v257 = 85 * ((v226 >> 8) & 0xF ^ 7) + 80750;
  v258 = *(v23 + (v257 - 973 * ((4414150 * v257) >> 32)));
  v259 = v258 - ((2 * v258) & 0x13C);
  v260 = STACK[0x504];
  v261 = LODWORD(STACK[0x504]) - 253462115;
  v262 = STACK[0x4F4];
  v263 = v243 - LODWORD(STACK[0x4F4]);
  v264 = (((v248 << 12) + 16723968) ^ (v256 << 8) ^ 0xB1E882) & ((v259 - 61523042) ^ 0xAAC401) ^ (v259 - 61523042) & 0x44187D;
  v265 = *(v23 + (85 * (v222 & 0xF ^ 8) + 80750 - 973 * ((4414150 * (85 * (v222 & 0xF ^ 8u) + 80750)) >> 32)));
  v266 = v265 + 560405451 + (~(2 * v265) | 0xFFFFFE6B);
  v267 = 85 * ((v226 >> 4) ^ 0xB) + 80750;
  v268 = *(v23 + (v267 - 973 * ((4414150 * v267) >> 32)));
  LODWORD(STACK[0x4E8]) = v242;
  v269 = v260 - v236 + v241 + LODWORD(STACK[0x530]) + v242 - 2076583261 + v235 - 2 * (v242 - 2076583261 + v235) - 478875317;
  LODWORD(STACK[0x4FC]) = v269 - (v242 + 823879171);
  LODWORD(STACK[0x52C]) = (v263 - ((2 * v263 - 585213342) & 0xFB6C20F2) + 1816477098) ^ v266 & 0x230623 ^ (16 * (v268 - ((2 * v268) & 0x19A)) + 1992154320) ^ 0xB0E87777 ^ ((((v245 - ((2 * v245) & 0x1E4)) << 12) - 1865474048) ^ (v264 << 8) ^ 0x557007DC) & (v266 ^ 0xDE98E417);
  v270 = (v260 - v269 + 1032485973) ^ (v242 + 1665643682);
  LODWORD(STACK[0x4F8]) = v270;
  LODWORD(STACK[0x530]) = (v242 + 823879171) ^ LODWORD(STACK[0x4C8]);
  v271 = v270 + (LODWORD(STACK[0x550]) ^ v261);
  LODWORD(STACK[0x504]) = v271;
  v272 = LODWORD(STACK[0x500]) ^ (v240 - 1284459921);
  v273 = LODWORD(STACK[0x4D8]) - LODWORD(STACK[0x514]) + LODWORD(STACK[0x4E4]) + v262 - v263 + 474436844;
  LODWORD(STACK[0x514]) = v273;
  v274 = ((2 * ((v271 & STACK[0x458]) - ((2 * (v271 & STACK[0x458])) & 0x62D76094)) - 489201516) ^ 0xE2D76094) + (v271 ^ LODWORD(STACK[0x458]));
  v275 = (v240 - v273 + 190688382) ^ (v263 - 1598325808);
  LODWORD(STACK[0x550]) = v275;
  v276 = v275 + v272;
  LODWORD(STACK[0x500]) = v275 + v272;
  v277 = *(v23 + (85 * (v274 >> 28) - 15386) % 0x3CDu);
  v278 = v277 + 118437 - ((2 * v277) & 0x114);
  v279 = *(v23 + (85 * (HIBYTE(v274) & 0xF) - 15386) % 0x3CDu);
  v280 = *(v23 + (85 * ((v274 >> 20) & 0xF) - 15386) % 0x3CDu);
  v281 = *(v23 + (85 * (BYTE2(v274) & 0xF) - 15386) % 0x3CDu);
  v282 = (((v278 << 12) + 16666624) ^ (((v279 - ((2 * v279) & 0xB4)) << 8) + 923359744) ^ 0xEBB568) & ((v281 + 1715749685 - ((2 * v281) & 0x6A)) ^ 0xBBBC4A) ^ (v281 + 1715749685 - ((2 * v281) & 0x6A)) & 0x3097;
  v283 = *(v23 + (85 * (v274 >> 12) - 15386) % 0x3CDu);
  v284 = (((LODWORD(STACK[0x46C]) ^ 0xDEFE4746) + 553760954) ^ ((LODWORD(STACK[0x46C]) ^ 0xC0D370EF) + 1059884817) ^ ((LODWORD(STACK[0x46C]) ^ 0x231640D4) - 588660948)) - v276 - 1180332863;
  v285 = (v284 ^ 0x6385C23C) & (2 * (v284 & 0x8395EABC)) ^ v284 & 0x8395EABC;
  v286 = ((2 * (v284 ^ 0x618C863C)) ^ 0xC432D900) & (v284 ^ 0x618C863C) ^ (2 * (v284 ^ 0x618C863C)) & 0xE2196C80;
  v287 = v286 ^ 0x22092480;
  v288 = (v286 ^ 0x104800) & (4 * v285) ^ v285;
  v289 = ((4 * v287) ^ 0x8865B200) & v287 ^ (4 * v287) & 0xE2196C80;
  v290 = v288 ^ 0xE2196C80 ^ (v289 ^ 0x80012000) & (16 * v288);
  v291 = (16 * (v289 ^ 0x62184C80)) & 0xE2196C80 ^ 0xC2092480 ^ ((16 * (v289 ^ 0x62184C80)) ^ 0x2196C800) & (v289 ^ 0x62184C80);
  v292 = (v290 << 8) & 0xE2196C00 ^ v290 ^ ((v290 << 8) ^ 0x196C8000) & v291;
  v293 = v284 ^ (2 * ((v292 << 16) & 0x62190000 ^ v292 ^ ((v292 << 16) ^ 0x6C800000) & ((v291 << 8) & 0x62190000 ^ 0x62110000 ^ ((v291 << 8) ^ 0x196C0000) & v291)));
  v294 = *(v23 + (85 * ((v274 >> 8) & 0xF) + 50150) % (((25 - 85 * ((v274 >> 8) & 0xF)) | (85 * ((v274 >> 8) & 0xF) + 50150)) & 0x3CD));
  v295 = *(v23 + (85 * (v274 >> 4) - 15386) % 0x3CDu);
  v296 = ((((v280 + 1008551 - ((2 * v280) & 0x13A)) << 12) + 16736256) ^ (v282 << 8) ^ 0x68DE64) & ((v294 - ((2 * v294) & 0x156) + 408410795) ^ 0xA8254F) ^ (v294 - ((2 * v294) & 0x156) + 408410795) & STACK[0x3B0];
  v297 = v296 << 8;
  v298 = (v296 << 8) ^ (((v283 - ((2 * v283) & 0xFFFFFFBF)) << 12) - 1003622400);
  v299 = *(v23 + (85 * (v274 & 0xF) - 15386) % 0x3CDu);
  v300 = v299 - ((2 * v299) & 0x84) - 1685163454;
  v301 = *(v23 + (85 * ((((v293 >> 28) ^ 0x6AA3) + 4829) ^ (((v293 >> 28) ^ 0x3A53) + 16941) ^ (((v293 >> 28) ^ 0x50F8) + 10376)) - 15346) % 0x3CDu);
  v302 = (16 * (v295 - ((2 * v295) & 0x12)) + 1441693840) ^ v300 & 0x803B3 ^ 0xEC03ADE ^ (v298 ^ 0xC070A74C) & (v300 ^ 0x64718D3D);
  v303 = *(v23 + (85 * (((HIBYTE(v293) & 0xF ^ 0x52A8) - 30008) ^ ((HIBYTE(v293) & 0xF ^ 0x944D) + 19491) ^ ((HIBYTE(v293) & 0xF ^ 0xC6E2) + 7822)) - 5879) % 0x3CDu);
  v304 = *(v23 + (85 * ((((v293 >> 20) & 0xF ^ 0x5D69) - 8432) ^ (((v293 >> 20) & 0xF ^ 0x7D63) - 250) ^ (((v293 >> 20) & 0xF ^ 0x2001) - 23960)) + 30048) % 0x3CDu);
  v305 = (((v303 - ((2 * v303) & 0x10C)) << 8) - 716667392) ^ (((v301 + 472439 - ((2 * v301) & 0xBE)) << 12) + 3047424);
  v306 = *(v23 + (85 * (((BYTE2(v293) & 0xF ^ 0x8509) + 15302) ^ ((BYTE2(v293) & 0xF ^ 0x9D05) + 9162) ^ ((BYTE2(v293) & 0xF ^ 0x180B) - 22840)) + 27178) % 0x3CDu);
  v307 = *(v23 + (85 * ((((v293 >> 12) ^ 0x8223) - 28742) ^ (((v293 >> 12) ^ 0xA2C1) - 20644) ^ (((v293 >> 12) ^ 0x20E1) + 11644)) + 16324) % 0x3CDu);
  v308 = v305 ^ (v306 - 2 * (v306 & 0x3F) - 1522600641) ^ (16 * (v304 - ((2 * v304) & 0x10)) - 203128704);
  v309 = 16 * (v307 - ((2 * v307) & 0x174)) - 1350300768;
  v310 = *(v23 + (85 * ((((v293 >> 8) & 0xF ^ 0xC5F6) - 30435) ^ (((v293 >> 8) & 0xF ^ 0x44B2) + 2137) ^ (((v293 >> 8) & 0xF ^ 0x8147) - 12882)) + 14900) % 0x3CDu);
  LOBYTE(v307) = v310 + 70;
  v311 = ((v308 << 8) ^ 0x69EB93A7) & ((v310 + 1062277190 - ((2 * v310) & 0x8C)) ^ 0xC0AEEFB9) ^ (v310 + 1062277190 - ((2 * v310) & 0x8C)) & 0x1111358;
  v312 = v311 ^ v309;
  v313 = (v311 ^ v309) & 0x27A84802;
  v314 = (v311 & 0x150C122A ^ 0x48356BCB) & (v311 & 0x150C122A ^ 0x7D3BF9F7) ^ (v307 & 2 | 0x20028014);
  v315 = (v312 & 0x1800000 ^ 0x26AA84D7 ^ (v313 ^ 0x2647FA28) & (v313 ^ 0xD06FB67A)) & (v314 ^ 0x8AD00502) ^ v314 & 0x742A8002;
  LOBYTE(v315) = *(v23 + (85 * (((((v293 >> 4) ^ 0xFA675A94) - 1262733488) ^ (((v293 >> 4) ^ 0x5204D037) + 484425197) ^ (((v293 >> 4) ^ 0xA8638AA8) - 424089740)) + (((v315 ^ 0xCC669F19) - 1998458343) ^ ((v315 ^ 0x4F5A5E36) + 199045944) ^ ((v315 ^ 0x76533FD2) + 852775636))) - 1028506994) % 0x3CD);
  v316 = v293 & 2;
  v317 = *(v23 + (85 * (((v293 & 0xF ^ 0x21B3) - 1381) ^ ((v293 & 0xF ^ 0x7DFB) - 22829) ^ ((v293 & 0xF ^ 0x5C44) - 30866)) + 72) % 0x3CDu);
  v318 = v317 - ((2 * v317) & 0x194);
  v319 = STACK[0x508];
  v320 = 2 * LODWORD(STACK[0x508]);
  v321 = ((16 * v318 - 96) & 0xF0 | 0x2AE17004) & (v300 & 0xF ^ 0xBBF9F2F5) | v300 & 0xB;
  v322 = ((v321 ^ 0x230E8481) - 1660425096) ^ ((v321 ^ 0xA1FDF90) - 1273579673) ^ ((v321 ^ 0x3F02BB7) - 1107737790);
  LOBYTE(v321) = (v315 - ((2 * v315) & 0xAE) + 87) ^ ((((v312 << 8) ^ 0x3A6F9F20) & ((v318 + 964889546) ^ 0xC67CF470) ^ (v318 + 964889546) & 0x100327D0) >> 4);
  v323 = 85 * v322;
  v324 = *(v23 + (85 * v322 + 23213) % 0x3CDu);
  LOBYTE(v155) = *(v23 + (v323 - 1896820681) % 0x3CDu);
  v325 = (16 * (LODWORD(STACK[0x508]) - (v320 & 0x108)) + 624326720) ^ 0x7555543B ^ (v324 - ((2 * v324) & 0xF6) + 1348676731);
  v326 = *(v23 + (v325 + 330) * (((((v316 ^ 0xBDBB0ECE) - 1931692534) ^ 0x7BF07C10) - 1354457210 + (((v316 ^ 0xCBBB8127) - 722983275) ^ (v316 | 0x2053A844) ^ ((v316 ^ 0x5D29204F) + 1115326461))) ^ 0x57) % 0x3CD);
  v327 = *(v23 + (85 * (((v155 - ((2 * v155) & 0xCA) - 27) ^ (*(v23 + (85 * v325 + 58140) % 0x3CDu) >> 4)) ^ 0xE5) + 28050) % 0x3CDu);
  v328 = 85 * (((v302 >> 4) | (16 * (v321 & 0xF))) ^ 0x90);
  v329 = *(v23 + (v328 + 28050) % 0x3CDu);
  LOBYTE(v328) = *(v23 + (v328 + 58140 - 973 * ((4414150 * (v328 + 58140)) >> 32)));
  v330 = 85 * ((v329 - ((2 * v329) & 0x16E) + 907080887) ^ 0x41660967 ^ (16 * (v327 - ((2 * v327) & 0xBBBBBBBB)) + 2004286928));
  v331 = *(v23 + (v330 + 58140) % 0x3CD);
  v332 = (v321 & 0xF0 | (v302 >> 8) & 0xF) ^ 0xE0;
  v333 = -16 * *(v23 + (v330 + 28050) % 0x3CD);
  v334 = v326 - ((2 * v326) & 0x12E);
  v335 = *(v23 + (85 * (((v328 - ((2 * v328) & 0x36) - 101) ^ (v331 >> 4)) ^ 0x9B) + 28050) % 0x3CDu);
  v336 = *(v23 + (85 * v332 + 28050) % 0x3CDu);
  v337 = 85 * ((v336 - ((2 * v336) & 0x7A) - 1972481987) ^ 0x34BD4A1D ^ (16 * (v335 - ((2 * v335) & 0x144)) - 1093461472));
  v338 = *(v23 + (v337 + 28050) % 0x3CDu);
  v339 = (v312 & 0xF0 ^ 0xDD2D85BF) & (((v298 ^ 0x754A) >> 12) ^ 0xDD2D85F6);
  v340 = 85 * (((v339 ^ 0xD2AD9171) - 1646379358) ^ ((v339 ^ 0xB72158B2) - 128780445) ^ ((v339 ^ 0xB8A14C33) - 137174044));
  v341 = (v337 + 58140) % 0x3CDu;
  LOBYTE(v337) = *(v23 + (85 * v332 + 58140 - 973 * ((4414150 * (85 * v332 + 58140)) >> 32)));
  LOBYTE(v328) = v337 - 2 * (v337 & 3);
  v342 = v333 - 908484624;
  v343 = v312 >> 4;
  LOBYTE(v332) = *(v23 + (v340 + 1723655719) % 0x3CD);
  v344 = ((v338 - ((2 * v338) & 0x188)) << 8) + 2076623872;
  v345 = *(v23 + (85 * (((v328 - 125) ^ (*(v23 + v341) >> 4)) ^ 0x83) + 28050) % 0x3CDu);
  v346 = *(v23 + (v340 + 1723625629) % 0x3CD);
  v347 = (v346 - ((2 * v346) & 0x19C) + 327589070) ^ 0xD509511E ^ (16 * (v345 - ((2 * v345) & 0xBBBBBBBB)) - 963654192);
  v348 = *(v23 + (85 * (((v332 - ((2 * v332) & 0x32) - 103) ^ (*(v23 + (85 * v347 + 58140) % 0x3CD) >> 4)) ^ 0x99) + 28050) % 0x3CDu);
  v349 = *(v23 + (((v347 + 330) ^ (53 - v347)) & 0x41 | 0x14) * (v347 + 330) % 0x3CD);
  v350 = (v343 | 0x2C0D970F) & (((v298 ^ 0x8AE1754A) >> 16) & 0xF ^ 0x2C0D977C) | v343 & 0x80;
  v351 = (v343 & 0x55 | 0x524B1700) & (v343 & 0x55 ^ 0xFA6B772B) ^ v343 & 0x54;
  v352 = 85 * (((v350 ^ 0xB86EB7B4) - 1276520752) ^ ((v350 ^ 0x64647052) + 1877152042) ^ ((v350 ^ 0xF007509D) - 75484697));
  v353 = *(v23 + (v352 - 555958467) % 0x3CD);
  v354 = (16 * (v348 - ((2 * v348) & 0xD0)) - 453409152) ^ (v353 - ((2 * v353) & 0x96) - 196122037);
  v355 = ((v354 ^ 0xCC38634) + 930107995) ^ ((v354 ^ 0x28F7B2CC) + 323249827) ^ ((v354 ^ 0x3482D833) + 254872670);
  LOBYTE(v352) = *(v23 + (v352 - 555928377) % 0x3CD);
  v356 = ((v351 ^ 0xFD36491E) - 1064366183) ^ ((v351 ^ 0x8DD5BD6B) - 1335034898) ^ ((v351 ^ 0x22A8E320) + 521250215);
  v357 = *(v23 + ((v355 - 1957287718) * (v356 - 1878151636) + 1235525578 * v356 + 1244185272) % 0x3CD);
  LOBYTE(v352) = (v352 - ((2 * v352) & 0xB0) + 88) ^ (*(v23 + (85 * v355 - 1220209666) % 0x3CDu) >> 4) ^ 0x58;
  v358 = (v308 & 0xF0 ^ 0xC352286F) & ((v296 >> 12) ^ 0xCBF73AF8);
  v359 = ((v358 ^ 0x6FC2F8CF) - 793149260) ^ ((v358 ^ 0xD458E652) + 1797496367) ^ ((v358 ^ 0x78C83642) - 944550337);
  v360 = 85 * v352 + 28050 - 973 * ((17243 * (85 * v352 + 28050)) >> 24);
  v361 = (v334 + 599485591) ^ 0xD4D9F767;
  v362 = v361 ^ v342 ^ v344;
  v363 = v362 ^ (((v349 - ((2 * v349) & 0x58)) << 12) + 955432960);
  v364 = *(v23 + (85 * ((((v360 & 0x14A ^ 0x1E3DCC0) + 431266346) ^ ((v360 & 0x14A ^ 0xCE8CEF93) - 690247301) ^ ((v360 & 0x14A ^ 0xCF6F3353) - 684165701)) + v359 + (((v360 & 0x14A ^ 0xDF5062FC) - 169853771) ^ ((v360 & 0x14A ^ 0x211616DB) + 195446932) ^ ((v360 & 0x14A ^ 0xFE46756D) - 722064602))) - 2067914277) % 0x3CD) ^ (16 * *(v23 + v360));
  v365 = ((v308 >> 4) & 0x60 ^ 0xBEFCA14F) & (HIWORD(v296) & 0xF ^ 0xBEFCA164) | (v308 >> 4) & 0x90;
  v366 = 85 * (((v365 ^ 0xD607671F) + 534083549) ^ ((v365 ^ 0x921BD7AD) + 1539950447) ^ ((v365 ^ 0xFAE011C9) + 858915083));
  v367 = 85 * (*(v23 + (v366 + 1837067045) % 0x3CD) ^ (16 * *(v23 + (85 * (*(v23 + (85 * v359 - 968287064) % 0x3CD) ^ (*(v23 + (85 * v364 + 58140 - 973 * ((4414150 * (85 * v364 + 58140)) >> 32))) >> 4)) + 28050) % 0x3CDu)));
  v368 = (~BYTE1(v308) | 0xFFFFFF0F) & ((v297 >> 28) ^ 0x14E6F7B6) | (v308 >> 8) & 0x40;
  v369 = v363 ^ (((v357 - ((2 * v357) & 0xFFFFFF1F)) << 16) + 2106523648);
  v370 = 85 * (*(v23 + (85 * (((v368 ^ 0x67EE) + 20135) ^ ((v368 ^ 0xB98A) - 28477) ^ ((v368 ^ 0x29D7) + 160)) + 25574) % 0x3CDu) ^ (16 * *(v23 + (85 * (*(v23 + (v366 + 1837097135) % 0x3CD) ^ (*(v23 + (v367 + 58140 - 973 * ((4414150 * (v367 + 58140)) >> 32))) >> 4)) + 28050) % 0x3CDu))) + 28050;
  v371 = v370 - 973 * ((4414150 * v370) >> 32);
  v372 = *(v23 + (85 * ((v362 >> 4) & 0xF0 | (v302 >> 8) & 0xF) + 5695) % 0x3CDu);
  v373 = *(v23 + (85 * (v302 & 0xF | (16 * (v361 & 0xF))) + 5695) % 0x3CDu);
  v374 = v369 ^ (*(v23 + (85 * v364 + 28050 - 973 * ((4414150 * (85 * v364 + 28050)) >> 32))) << 20);
  v375 = (v372 << (((v372 & 0x43) + (v372 & 0x43 ^ 0x43) - 67) | 8)) ^ (v373 ^ (16 * *(v23 + (85 * (v363 & 0xF0 | (v302 >> 4)) + 5695) % 0x3CDu)) | (*(v23 + (85 * ((v363 >> 8) & 0xF0 | (v302 >> 12)) + 5695) % 0x3CDu) << 12));
  v376 = v302 >> 12 >> (v373 & 4) >> (v373 & 4 ^ 4);
  v377 = ((v372 & 0x55555555 ^ 0x55) + (v372 & 0x55555555)) * ((v376 & 0xF | (16 * (HIWORD(v369) & 0xF))) + 67);
  v378 = v374 ^ (*(v23 + (v367 + 28050 - 973 * ((4414150 * (v367 + 28050)) >> 32))) << 24);
  LOWORD(v298) = (85 * (BYTE2(v374) & 0xF0 | (v302 >> 20) & 0xF) + 5695) % 0x3CDu;
  v379 = v375 ^ (*(v23 + (v377 - 973 * ((4414150 * v377) >> 32))) << 16);
  v380 = (*(v23 + (85 * ((v378 >> 20) & 0xF0 | (v376 >> 8) & 0xF) + 5695) % 0x3CDu) << 24) ^ (*(v23 + v298) << 20) ^ v379;
  v381 = STACK[0x52C];
  v382 = 85 * ((v380 ^ (*(v23 + (85 * (((v378 ^ (*(v23 + v371) << 28)) >> 24) & 0xF0 | (v376 >> 12)) + 5695) % 0x3CDu) << 28)) >> 28) + 80750;
  v383 = (((*(v23 + (85 * (HIBYTE(v380) & 0xF) + 80750 - 973 * ((4414150 * (85 * (HIBYTE(v380) & 0xF) + 80750)) >> 32))) << 8) ^ (*(v23 + (v382 - 973 * ((4414150 * v382) >> 32))) << 12) | *(v23 + (85 * (HIWORD(v379) & 0xF) + 80750 - 973 * ((4414150 * (85 * (HIWORD(v379) & 0xF) + 80750)) >> 32)))) << 8) ^ (*(v23 + (85 * ((v380 >> 20) & 0xF) + 80750 - 973 * ((4414150 * (85 * ((v380 >> 20) & 0xF) + 80750)) >> 32))) << 12);
  v384 = LODWORD(STACK[0x4E8]) + 28882533;
  v385 = v274 ^ v384;
  v386 = (v263 + 1059880339) ^ (16 * *(v23 + (85 * (v375 >> 4) + 80750 - 973 * ((4414150 * (85 * (v375 >> 4) + 80750)) >> 32)))) ^ (*(v23 + (85 * (v373 & 0xF) + 80750 - 973 * ((4414150 * (85 * (v373 & 0xFu) + 80750)) >> 32))) | (*(v23 + (85 * (v375 >> 12) + 80750 - 973 * ((4414150 * (85 * (v375 >> 12) + 80750)) >> 32))) << 12)) ^ ((v383 | *(v23 + (85 * ((v375 >> 8) & 0xF) + 80750 - 973 * ((4414150 * (85 * ((v375 >> 8) & 0xF) + 80750)) >> 32)))) << 8);
  v387 = LODWORD(STACK[0x4FC]) + (((v384 ^ 0x6DEEED0E) + 700717886) ^ ((v384 ^ 0xF3B8ECC6) - 1215161610) ^ ((v384 ^ 0x195DD532) + 1568088834));
  v388 = ((v384 ^ 0xC435A01C) - 2119236060) ^ ((v384 ^ 0xC1E37ABF) - 2072388479) ^ ((v384 ^ 0x4EC13AF1) + 190553295);
  v389 = LODWORD(STACK[0x4F8]) ^ v384;
  v390 = LODWORD(STACK[0x550]) ^ (v263 + 1059880339);
  v391 = (((v263 + 1059880339) ^ 0x4EB0790D) - 541419098) ^ (((v263 + 1059880339) ^ 0xD59027CB) + 1150994276) ^ (((v263 + 1059880339) ^ 0xD037BE94) + 1094540861);
  LODWORD(STACK[0x4F8]) = v388 + 1313132037;
  v392 = v390 ^ LODWORD(STACK[0x500]);
  v393 = v386;
  v394 = v387 + 1658297627;
  LODWORD(STACK[0x550]) = v387 + 337624618;
  v395 = LODWORD(STACK[0x514]) - v263;
  v396 = v391 + 1838822986;
  LODWORD(STACK[0x4FC]) = (((v389 ^ 0xEBCEC1F0) + 1981231401) ^ ((v389 ^ 0x5C758B8C) - 1045660843) ^ ((v389 ^ 0x30B09E86) - 1385599393)) - v388 + 265278302;
  v397 = (((v390 ^ 0x1F6DB604) + 25679817) ^ ((v390 ^ 0x8588D1A5) - 1688031126) ^ ((v390 ^ 0x1DEEB35B) + 50647704)) - v391 - 1874638401;
  v398 = v395 - 1377736545 + ((((v263 + 1059880339) ^ 0x45F8780E) + 1018338890) ^ (((v263 + 1059880339) ^ 0x7216DCC) + 2120977292) ^ (((v263 + 1059880339) ^ 0xC5D2C138) - 1130879104));
  LODWORD(STACK[0x4F4]) = (((LODWORD(STACK[0x504]) ^ v394 ^ v389 ^ 0x7EAC6B45) - 1053557903) ^ ((LODWORD(STACK[0x504]) ^ v394 ^ v389 ^ 0x77F5CA29) - 932554211) ^ ((LODWORD(STACK[0x504]) ^ v394 ^ v389 ^ 0x8E527596) + 835577252)) + 822460022;
  v399 = -1838822986 - v391;
  v400 = STACK[0x47C];
  v401 = (LODWORD(STACK[0x47C]) + 896599099) & 0xCA8EEC7B;
  LODWORD(STACK[0x444]) = v401;
  LODWORD(STACK[0x478]) = v401 - 2107408966;
  v402 = STACK[0x538];
  STACK[0x470] = *(&off_1006B4E30 + (v400 & 0x42DE66BA)) - 8;
  LODWORD(STACK[0x46C]) = (16 * (v319 - (v320 & 0x30)) + 1044435328) ^ 0xED7F21C;
  LODWORD(STACK[0x468]) = (16 * (v319 - (v320 & 0xDA)) + 1556969168) ^ 0x9928B64A;
  v403 = STACK[0x3E8];
  v404 = STACK[0x3E4];
  LODWORD(STACK[0x504]) = v386;
  HIDWORD(v406) = v402;
  LODWORD(v406) = v402;
  v405 = v406 >> 6;
  HIDWORD(v406) = v402;
  LODWORD(v406) = v402;
  v407 = v406 >> 11;
  HIDWORD(v406) = v402;
  LODWORD(v406) = v402;
  v408 = v406 >> 25;
  v409 = v385;
  v410 = STACK[0x530];
  v411 = STACK[0x520];
  HIDWORD(v406) = STACK[0x520];
  LODWORD(v406) = STACK[0x520];
  v412 = v406 >> 6;
  HIDWORD(v406) = STACK[0x520];
  LODWORD(v406) = STACK[0x520];
  LODWORD(v372) = v406 >> 25;
  v413 = v405 - (STACK[0x478] & (2 * v405));
  HIDWORD(v406) = STACK[0x520];
  LODWORD(v406) = STACK[0x520];
  v414 = v372 - ((2 * v372) & 0x67744D8A);
  v415 = (v406 >> 11) - ((2 * (v406 >> 11)) & 0xF8161C24);
  LODWORD(STACK[0x52C]) = v381;
  v416 = (v407 - ((2 * v407) & 0xFAC7D4BE) + 2103700063) ^ (v408 - ((2 * v408) & 0x3AEB1FFE) - 1653239809) ^ (v413 - 1053702890);
  v417 = (v402 & v381) - ((2 * (v402 & v381)) & 0x11AFE6A2);
  v418 = v411 ^ ~v410;
  LODWORD(STACK[0x514]) = v410;
  if (!v411)
  {
    v418 = v410;
  }

  v419 = (v412 - ((2 * v412) & 0x94BE0714) - 899742838) ^ (v414 + 867837637) ^ (v415 + 2081099282);
  LODWORD(STACK[0x500]) = v409;
  v420 = (v418 & v411) - ((2 * (v418 & v411)) & 0xC2004B34);
  LODWORD(STACK[0x538]) = v402;
  v421 = (v402 & v393) - ((2 * (v402 & v393)) & 0x150056F8);
  v422 = STACK[0x550];
  v423 = LODWORD(STACK[0x550]) + 1320673009;
  v424 = STACK[0x4F8];
  v425 = v419 ^ v423 ^ (LODWORD(STACK[0x4F8]) - 1557271667);
  v426 = ((v396 ^ 0x7DB1B1AF) - 973506282) ^ v396 ^ ((v396 ^ 0xF879DEF8) + 1076958787) ^ ((v396 ^ 0x2D800FED) - 1782003880) ^ ((v396 ^ 0xEFFF57FF) + 1471651654) ^ v416;
  v427 = v399 + 1499701898 + (((v426 ^ 0xBBB10FD4) + 863112350) ^ ((v426 ^ 0x2F90D243) - 1487679221) ^ ((v426 ^ 0xF2B14A64) + 2054310190));
  LODWORD(STACK[0x530]) = v411;
  v428 = ((v381 & v411) - ((2 * (v381 & v411)) & 0xE345AB96) + 1906496971) ^ v393 & ~v411 ^ ((v402 & v410) - ((2 * (v402 & v410)) & 0xE6F2AD0A) - 210151803) ^ ((v409 & v402) - ((2 * (v409 & v402)) & 0x906AA540) - 936029536);
  LODWORD(STACK[0x520]) = STACK[0x540];
  LODWORD(STACK[0x4CC]) = STACK[0x53C];
  v429 = STACK[0x4F0];
  v430 = v404;
  v431 = STACK[0x4EC];
  v432 = (v409 & v411) - ((2 * (v409 & v411)) & 0xDFA2F7DC) - 271483922;
  v433 = ((v423 ^ 0xB3032A48) + 2101074280) ^ ((v423 ^ 0x1D2BC929) - 753714681) ^ ((v423 ^ 0x33891747) - 38673303);
  v434 = ((((v416 ^ v425 ^ 0xA100328D) - 770339417) ^ ((v416 ^ v425 ^ 0x921F6E25) - 519384817) ^ ((v416 ^ v425 ^ 0x97D6D743) - 456955799)) - (((v425 ^ 0xD1A9D1A) + 2114921010) ^ ((v425 ^ 0x8EEB450A) - 33621470) ^ ((v425 ^ 0x61FF34D) + 1963609191)) + 522149814) ^ ((v398 ^ 0x2127A0B6 ^ v416) - v398) ^ v427;
  v435 = (v417 - 1999113391) ^ (v421 + 176171900) ^ v409 ^ (v420 + 1627399578) ^ v432;
  v436 = LODWORD(STACK[0x4F4]) - v422;
  v437 = STACK[0x4FC];
  v438 = LODWORD(STACK[0x4FC]) - 552788512;
  v439 = v424 + v436 - 436348855;
  v440 = v439 ^ v423 ^ v435;
  v441 = v398 ^ 0x9DA1F426;
  v442 = v396 - 1330097331 + (((v392 ^ v398 ^ 0xBE08AD56) + 1446686984) ^ ((v392 ^ v398 ^ 0x2B5A9B03) - 1016559789) ^ ((v392 ^ v398 ^ 0x1259E2AF) - 93585665)) - 1545300960 - v398 - 275519595;
  v443 = (((v440 ^ v428 ^ 0xBB69EBD6) + 331445062) ^ ((v440 ^ v428 ^ 0x75E91736) - 582905946) ^ ((v440 ^ v428 ^ 0x15495F71) - 1109276701)) - (((v440 ^ 0x4F7B169A) - 112005918) ^ ((v440 ^ 0x9E2AEA9E) + 671289574) ^ ((v440 ^ 0x40768E7B) - 161516543)) - 1280488190;
  v444 = (((v423 ^ 0x70ECC018) - 1093389512) ^ ((v423 ^ 0x5461C8C9) - 1705427993) ^ ((v423 ^ 0xB92CFCF7) + 1997803481)) - LODWORD(STACK[0x4FC]) + v436 + 352843999;
  LODWORD(STACK[0x4EC]) = v444;
  v445 = v439 - v444;
  v446 = v445 ^ v438;
  v447 = (v398 ^ 0x9DA1F426) - v397 + (((v392 ^ v398 ^ 0xBE08AD56) + 1446686984) ^ ((v392 ^ v398 ^ 0x2B5A9B03) - 1016559789) ^ ((v392 ^ v398 ^ 0x1259E2AF) - 93585665)) - 1545300960 - v398 + 1103614524;
  LODWORD(STACK[0x4E8]) = v447;
  v448 = v433 + v445 + 2106302456 + (((((752978783 - v445) ^ (v445 + 1394504864)) & 0x48A84406 ^ 0x9715206C) + 1319617692) ^ ((((752978783 - v445) ^ (v445 + 1394504864)) & 0x48A84406 ^ 0x2A05106) - 619530766) ^ ((((752978783 - v445) ^ (v445 + 1394504864)) & 0x48A84406 ^ 0x83F549EA) + 1514646814));
  v449 = ((((v442 ^ 0x4AEED1EE ^ v428) - v442) ^ ((v398 ^ 0xD74F25C8 ^ v428) - (v398 ^ 0x9DA1F426)) ^ v443 ^ 0x9E4EB6AF) - 2007550119) ^ ((((v442 ^ 0x4AEED1EE ^ v428) - v442) ^ ((v398 ^ 0xD74F25C8 ^ v428) - (v398 ^ 0x9DA1F426)) ^ v443 ^ 0x1E8AB0E5) + 143864083) ^ ((((v442 ^ 0x4AEED1EE ^ v428) - v442) ^ ((v398 ^ 0xD74F25C8 ^ v428) - (v398 ^ 0x9DA1F426)) ^ v443 ^ 0x80C4064A) - 1763866690);
  v450 = ((2 * (v445 + 1394504864)) & 0x59C316C0) + ((v445 + 1394504864) ^ 0xACE18B60) - v448;
  v451 = STACK[0x570];
  v452 = STACK[0x470];
  HIDWORD(v453) = *(STACK[0x470] + 4 * ((167 * (LODWORD(STACK[0x570]) ^ 0x1D)) % 0xC0u));
  LODWORD(v453) = HIDWORD(v453);
  v454 = v450 ^ v445 ^ v438 ^ 0xC9577024 ^ (v448 - 917016540 - ((2 * v448) & 0x92AEE048));
  v455 = ((v453 >> 14) >> 1) & 0x383E7901 ^ (v453 >> 14);
  v456 = v442 - v447;
  v457 = v456 ^ (v397 - 1424371464);
  v458 = v456 + v441;
  v459 = v457 ^ -v441;
  v460 = *(STACK[0x488] + 4 * ((175 * LODWORD(STACK[0x570])) % 0x11Au));
  v461 = v437 - v397;
  LODWORD(STACK[0x550]) = (((v403 ^ 0x50003806) - 1342191622) ^ ((v403 ^ 0x81ED0D1A) + 2115171046) ^ ((v403 ^ 0xE76D00C6) + 412286778)) + v461 + *(STACK[0x488] + 4 * ((175 * LODWORD(STACK[0x570]) + 24150) % 0x11Au)) + (((v435 ^ 0x42A563DA) - 1021650415) ^ ((v435 ^ 0x35189E3F) - 1264113674) ^ ((v435 ^ 0x7B3B7BBC) - 91962761)) + (((v434 ^ 0x3948788A) + 1949794466) ^ ((v434 ^ 0x1C611CCC) + 1360979176) ^ ((v434 ^ 0x25296446) + 1750506606)) - 312566356 + (((v455 ^ 0xD8589384) - 1281975809) ^ ((v455 ^ 0x7769B314) + 480754031) ^ ((v455 ^ 0xE3DE508) + 1710485363));
  v462 = v459 ^ 0x5D4125F ^ (v458 + 97784415 - ((2 * v458) & 0xBA824BE));
  LODWORD(STACK[0x570]) = v451;
  v463 = *(v452 + 4 * ((167 * (v451 ^ 0x39) + 11189) % 0xC0u)) ^ v451;
  v464 = LODWORD(STACK[0x518]) + v461 + (((v419 ^ 0x936BA3BB) + 1821662277) ^ ((v419 ^ 0x676E2996) - 1735272854) ^ ((v419 ^ 0x71EBA170) - 1911267696)) + v460 + v449 + 595561906 + (((v463 ^ 0x78F06437) + 2011994805) ^ ((v463 ^ 0xDD9E91B1) - 763203789) ^ ((v463 ^ 0x52DBDD56) + 1573331926));
  LODWORD(STACK[0x4D8]) = v464;
  HIDWORD(v453) = v429;
  LODWORD(v453) = v429;
  v465 = (v453 >> 2) - ((2 * (v453 >> 2)) & 0x731E447C) + 965681726;
  HIDWORD(v453) = v429;
  LODWORD(v453) = v429;
  v466 = v465 ^ ((v453 >> 13) - ((2 * (v453 >> 13)) & 0x951CD526) + 1250847379);
  HIDWORD(v453) = v429;
  LODWORD(v453) = v429;
  LODWORD(v452) = STACK[0x568];
  v467 = (STACK[0x568] & v431) - ((2 * (STACK[0x568] & v431)) & 0x3DFA96F2);
  v468 = v466 ^ ((v453 >> 22) - ((2 * (v453 >> 22)) & 0x480216C) - 2109730634);
  v469 = STACK[0x560];
  v470 = (STACK[0x560] & v430) - ((2 * (STACK[0x560] & v430)) & 0xE3A5141E);
  v471 = (STACK[0x560] & LODWORD(STACK[0x568])) - ((2 * (STACK[0x560] & LODWORD(STACK[0x568]))) & 0xD7BA7BDA);
  v472 = (STACK[0x568] & v430) - ((2 * (STACK[0x568] & v430)) & 0xC3D68CD4);
  LODWORD(STACK[0x4FC]) = ((v450 ^ v445 ^ v438 ^ 0x40AB7C8A) + 1979970386) ^ ((v450 ^ v445 ^ v438 ^ 0x92C85749) - 1537156973) ^ ((v450 ^ v445 ^ v438 ^ 0xD2632BC3) - 456416231);
  LODWORD(STACK[0x4F8]) = ((v468 ^ LODWORD(STACK[0x464])) - 536753161) ^ ((v468 ^ 0xD337D9DC) + 751314468) ^ ((v468 ^ 0x3D88B5CE) - 1032369614);
  v473 = STACK[0x558];
  v474 = (STACK[0x558] & v430) - ((2 * (STACK[0x558] & v430)) & 0x17E7D250);
  LODWORD(STACK[0x53C]) = v430;
  v475 = (v474 + 200534312) ^ (v473 ^ v431) & v429 ^ (v472 + 1642808938) ^ (v471 + 1809661421) ^ ((v469 & v431) - ((2 * (v469 & v431)) & 0xF71AFB3C) - 74613346);
  LODWORD(STACK[0x540]) = v431;
  LODWORD(STACK[0x508]) = v429;
  v476 = __ROR4__(v452, 13) ^ 0xEFE4773A ^ __ROR4__(v452, 2) ^ __ROR4__(v452, 22);
  v477 = v452 & v473 ^ ((v429 & v430) - ((2 * (v429 & v430)) & 0x5AB25B2A) + 760819093) ^ ((v473 & v431) - ((2 * (v473 & v431)) & 0x5C5E03CC) - 1372651034) ^ (v467 - 1627567239) ^ v469 & v429 ^ (v470 + 1909623311);
  v478 = v450 ^ v468 ^ v454;
  v479 = (((v462 - 270239942 - ((2 * v462) & 0xDFC8EE74)) ^ v476) - v462) ^ (((-270239942 - v441 - ((-2 * v441) & 0xDFC8EE74)) ^ v476) + v441) ^ ((((v478 ^ v476 ^ 0x6247ED78) + 617050664) ^ ((v478 ^ v476 ^ 0xC241B5FB) - 2067715419) ^ ((v478 ^ v476 ^ 0xBEA377A2) - 131864322)) - (((v478 ^ 0xC169F2E1) - 2014745153) ^ ((v478 ^ 0x122B05D3) + 1420532365) ^ ((v478 ^ 0x2203AF29) + 1686319223)) + 1604064966);
  LODWORD(STACK[0x4F4]) = ((v479 ^ 0x16A206FE) - 1879386235) ^ ((v479 ^ 0x7E4504AB) - 417475118) ^ ((v479 ^ 0x68E70255) - 239086800);
  LODWORD(STACK[0x4F0]) = ((v459 ^ 0x3F9D1962) - 977865533) ^ ((v459 ^ 0x26CEB122) - 588948349) ^ ((v459 ^ 0x1953A840) - 478657055);
  v480 = (v450 ^ v445 ^ v438) - v454;
  v481 = LODWORD(STACK[0x4EC]) ^ 0xC7A255A0 ^ v446;
  v482 = v459 - v462;
  v483 = v462 + 1865575177;
  v484 = (v454 + 1865575177) ^ v446;
  v485 = (v462 + 1865575177) ^ v457;
  v486 = LODWORD(STACK[0x4E8]) ^ 0xC7A255A0 ^ v457;
  v487 = v454 - v481 + 2118076605;
  v488 = v487 ^ v477 ^ v484;
  v489 = v480 ^ (v481 - 252501428);
  v490 = v483 - (v486 - 252501428);
  v491 = v482 ^ (v486 - 252501428);
  v492 = ((((v485 ^ v475 ^ 0x31E3DA59 ^ 0x5E857EA) + 211530168) ^ ((v485 ^ v475 ^ 0x31E3DA59 ^ 0xEF6E9896) - 434274612) ^ ((v485 ^ v475 ^ 0x31E3DA59 ^ 0x212DFA14) + 677256266)) - (((v485 ^ 0x80E11215) - 1986857911) ^ ((v485 ^ 0x7D1E9F4A) + 1953331480) ^ ((v485 ^ 0xFDFF8D5F) - 192124157)) + 1184568104) ^ ((v475 ^ 0xFA48EF31 ^ v490) - v490) ^ ((((v488 ^ v475 ^ 0x31E3DA59 ^ 0x8AD28AC) + 2017944273) ^ ((v488 ^ v475 ^ 0x31E3DA59 ^ 0xA955BBCF) - 641732172) ^ ((v488 ^ v475 ^ 0x31E3DA59 ^ LODWORD(STACK[0x460])) + 1994391923)) - (((v488 ^ 0x1ECA4C28) + 1847592533) ^ ((v488 ^ 0xC86DBAFF) - 1199050620) ^ ((v488 ^ 0xBAFE1BD2) - 904638033)) + 1167791464);
  LODWORD(STACK[0x4EC]) = ((v489 ^ 0x2B279971) - 505753623) ^ ((v489 ^ 0x69AB8E1B) - 1554589565) ^ ((v489 ^ 0x428C176A) - 2005843468);
  LODWORD(STACK[0x4E8]) = ((v477 ^ 0xDF749E24) + 1047783506) ^ ((v477 ^ 0x9C683533) + 2104443719) ^ ((v477 ^ 0x2F454612) - 834523032);
  v493 = v489 ^ v487;
  LODWORD(STACK[0x4E4]) = ((v492 ^ 0x593194EB) + 1891395788) ^ ((v492 ^ 0xC377884A) - 352684949) ^ ((v492 ^ 0x9A461CA1) - 1278484350);
  LODWORD(STACK[0x4E0]) = ((v491 ^ 0xF557CE2C) + 489452810) ^ ((v491 ^ 0x2523B0BF) - 849867877) ^ ((v491 ^ 0xD0747E93) + 940557751);
  v494 = (((v484 ^ 0x9A844095) + 372816303) ^ ((v484 ^ 0xAB37185D) + 663478631) ^ ((v484 ^ 0x31B358C8) - 1123048972)) + 1257216623 + (((v493 ^ 0x60BBE4B6) + 1223198947) ^ ((v493 ^ 0x26C85388) + 245055453) ^ ((v493 ^ 0x4673B73E) + 1847647083));
  v495 = (((v485 ^ 0xC8FD91BE) - 1047627804) ^ ((v485 ^ 0x39F439AE) + 814211060) ^ ((v485 ^ 0xF109A810) - 126202290)) - 1974536008 + (((v491 ^ v490 ^ 0xEAF9BCC4) - 2033935314) ^ ((v491 ^ v490 ^ 0x2472BA93) + 1213176443) ^ ((v491 ^ v490 ^ 0xCE8B0657) - 1565120833));
  v496 = v490 ^ (v486 - 252501428);
  v497 = v495 ^ v491 ^ v490;
  v498 = (v487 ^ (v481 - 252501428)) - (v481 - 1729728800);
  v499 = v495 ^ (v486 - 1729728800);
  v500 = v494 ^ (v481 - 1729728800);
  v501 = v494 ^ v493;
  v502 = v496 - (v486 - 1729728800);
  v503 = LODWORD(STACK[0x504]) - (((((v499 & 0x8A9C9543 ^ 0x55B6A3B0) + 108635408) ^ ((v499 & 0x8A9C9543 ^ 0xA7F58A49) - 197489417) ^ ((v499 & 0x8A9C9543 ^ 0xF24329F9) - 1584648377)) + (((v499 & 0x8A9C9543 ^ 0x5A5251FD) + 259983798) ^ ((v499 & 0x8A9C9543 ^ 0xBD0F9B9D) - 400374826) ^ ((v499 & 0x8A9C9543 ^ 0x6DC15F23) + 954992492)) - 864080844) ^ 0x4AACE744) - 1070566905;
  v504 = v498 ^ 0x29BDD57A ^ v503 ^ (v500 + 700306810 - ((2 * v500) & 0x537BAAF4));
  LODWORD(v452) = ((((v499 ^ LODWORD(STACK[0x500]) ^ 0x5759466C) - 1834029351) ^ ((v499 ^ LODWORD(STACK[0x500]) ^ 0xA45E3912) + 1638502823) ^ ((v499 ^ LODWORD(STACK[0x500]) ^ 0xF3077F7E) + 921753547)) - (((v499 ^ 0x82D55521) + 962771873) ^ ((v499 ^ 0xA8DAAD12) + 325927828) ^ ((v499 ^ 0x2A0FF833) - 1850206541)) - 171948595) ^ ((v502 ^ LODWORD(STACK[0x500])) - v502) ^ ((v504 ^ LODWORD(STACK[0x500])) - v504);
  LODWORD(v452) = (((v452 ^ 0xDDF51BA3) + 1438407420) ^ ((v452 ^ 0x256C2BDF) - 1390056824) ^ ((v452 ^ 0xF899307C) + 1892708645)) - (((v497 ^ 0x316D7FCD) + 886711486) ^ ((v497 ^ 0x8E7BAB23) - 1949503404) ^ ((v497 ^ 0xBF16D4EE) - 1163817057)) + 1464390035;
  LODWORD(STACK[0x504]) = ((v452 ^ 0xC836C543) - 1379790017) ^ v452 ^ ((v452 ^ 0xBBA9622E) - 564284332) ^ ((v452 ^ 0x16E35110) + 1930921838) ^ ((v452 ^ 0xFF77DFFF) - 1702688381);
  LODWORD(v452) = v498 - v500;
  v505 = ((((v498 - v500) ^ v501 ^ 0x2EA8799C) + 820563549) ^ (((v498 - v500) ^ v501 ^ 0x3874814E) + 640956047) ^ (((v498 - v500) ^ v501 ^ 0x16DCF8D2) + 144461587)) + 340027553;
  v506 = v486 - (((v497 ^ 0x2A7BD8B4) + 801932229) ^ ((v497 ^ 0x754D5178) + 1895434761) ^ ((v497 ^ 0x5F3689CC) + 1518457533));
  v507 = v502 - v499;
  v508 = v502 - v499 + 425294680 + v506;
  LODWORD(STACK[0x4C4]) = v508;
  v509 = (((v502 - v499) ^ v497 ^ 0x35C24E88) - 1397346806) ^ (((v502 - v499) ^ v497 ^ 0xAABD9982) + 868874500) ^ (((v502 - v499) ^ v497 ^ 0x9F7FD70A) + 101431180);
  LODWORD(STACK[0x500]) = v509 - 1726955552;
  v510 = v508 ^ 0xD2A2A483 ^ (v509 - 1726955552);
  LODWORD(STACK[0x4D0]) = v510;
  v511 = STACK[0x4CC];
  v512 = v505 + LODWORD(STACK[0x4CC]);
  v513 = v464 - v510 + 1535949438 + v512;
  v514 = STACK[0x548];
  v515 = *(STACK[0x548] + (85 * ((v513 >> 20) & 0xF) - 15386) % 0x3CDu);
  v516 = *(STACK[0x548] + (85 * (v513 >> 28) - 15386) % 0x3CDu);
  v517 = *(STACK[0x548] + (85 * (HIBYTE(v513) & 0xF) - 16359) % 0x3CDu);
  v518 = *(STACK[0x548] + (85 * (BYTE2(v513) & 0xF) - 15386) % 0x3CDu);
  v519 = ((((v516 + 893045 - ((2 * v516) & 0x8E)) << 12) + 18685952) ^ (((v517 - ((2 * v517) & 0x178)) << 8) - 813057024) ^ 0x5E34B4) & ((v518 - ((2 * v518) & 0x33333333) - 1098086759) ^ 0x73792D) ^ (v518 - ((2 * v518) & 0x33333333) - 1098086759) & 0x74B;
  v520 = *(STACK[0x548] + (85 * ((v513 >> 8) & 0xF) - 15386) % 0x3CDu);
  v521 = (((v515 - ((2 * v515) & 0x10A)) << 12) + 1254641664) ^ (v519 << 8);
  v522 = v520 - 2 * (v520 & 3) - 786544893;
  v523 = (v521 ^ 0x138C52) & (v522 ^ 0xE1B8F9);
  LODWORD(STACK[0x4A8]) = v523;
  v524 = (((v499 ^ 0x4AFB86D6) - 246650792) ^ ((v499 ^ 0x886DDB27) + 869938599) ^ ((v499 ^ 0xC2965DF1) + 2032251761)) - v506;
  v525 = (v524 + 720279078) ^ v507;
  LODWORD(STACK[0x518]) = v503 + v501;
  v526 = v481 - (((v501 ^ 0x8AF38BFE) + 2057639113) ^ ((v501 ^ 0xE527F6A6) + 359754129) ^ ((v501 ^ 0x6FD47D58) - 1618812305)) + 66633502;
  v527 = v500 - v526;
  v528 = (v500 - v526) ^ v452;
  LODWORD(STACK[0x4B4]) = v528;
  v529 = v527 - 900842158;
  v530 = (v511 + 93448528 - ((2 * v511) & 0xB23D2A0)) ^ 0x591E950 ^ (v527 - 900842158) ^ v528;
  v531 = STACK[0x520];
  v532 = (v530 ^ LODWORD(STACK[0x520])) - v530;
  v533 = v524 - 180563080;
  v534 = (v524 - 180563080) ^ LODWORD(STACK[0x520]);
  LODWORD(STACK[0x4C8]) = v525;
  v535 = ((v525 ^ v531) - v525) ^ (v534 - v533) ^ v532;
  v536 = v526 + v452;
  LODWORD(STACK[0x4A4]) = v536;
  LODWORD(v452) = ((v536 ^ v505 ^ 0xAB66F4A2) - 2042908705) ^ ((v536 ^ v505 ^ 0x2566A4F8) + 138149765) ^ ((v536 ^ v505 ^ 0x5CA2F4D9) + 1912582054);
  LODWORD(STACK[0x4B8]) = v452;
  LODWORD(v452) = LODWORD(STACK[0x550]) - v509 + v452 + (((v535 ^ 0x7890DD60) - 2135267944) ^ ((v535 ^ 0x6508864E) - 1658700102) ^ ((v535 ^ 0x1D985B2E) - 441261094));
  LODWORD(STACK[0x520]) = v452;
  v537 = v452 + 54824457;
  v538 = *(v514 + (85 * (((v452 + 54824457) >> 20) & 0xF) - 15386) % 0x3CDu);
  LODWORD(v452) = v538 + 564144 - ((2 * v538) & 0x13A);
  v539 = *(v514 + (85 * (v537 >> 28) - 15386) % 0x3CDu);
  v540 = *(v514 + (85 * (HIBYTE(v537) & 0xF) - 15386) % 0x3CDu);
  v541 = *(v514 + (85 * (BYTE2(v537) & 0xF) - 15386) % 0x3CDu);
  LODWORD(STACK[0x4CC]) = 16683008;
  v542 = ((((v539 + 175482 - ((2 * v539) & 0x12A)) << 12) + 31567872) ^ (((v540 + 438734 - ((2 * v540) & 0x168)) << 8) + 16770560) ^ 0x2A1232) & ((v541 - ((2 * v541) & 0x8A) + 833873477) ^ 0x4C19FE) ^ (v541 - ((2 * v541) & 0x8A) + 833873477) & 0x1CD;
  v543 = (v537 >> 8) & 0xF;
  v544 = *(v514 + (85 * v543 - 15386) % 0x3CDu);
  LODWORD(v452) = ((v452 << 12) + 16699392) ^ (v542 << 8);
  v545 = v544 - ((2 * v544) & 0x1BC) - 1909334050;
  v546 = (v452 ^ 0xDB08D0) & (v545 ^ 0xCE202B);
  LODWORD(STACK[0x49C]) = v546;
  v547 = v546 ^ v545 & 0x502F;
  v548 = v523 ^ v522 & 0x21EAD;
  LODWORD(v452) = 85 * (((v547 >> 12) ^ 0x5C329FF6) & ((v548 >> 8) & 0xF0 ^ 0x5C329F9F) ^ 0x5C329FF9);
  LODWORD(STACK[0x498]) = (v452 + 58140) % 0x3CDu;
  LODWORD(v452) = *(v514 + (v452 + 28050) % 0x3CDu);
  LODWORD(STACK[0x490]) = v452 - ((2 * v452) & 0x1BC);
  LODWORD(v452) = *(v514 + (85 * (v537 >> 12) - 15386) % 0x3CDu);
  v549 = *(v514 + (85 * (v537 & 0xF) - 15386) % 0x3CDu);
  v550 = *(v514 + (85 * (v537 >> 4) - 15386) % 0x3CDu);
  v551 = ((v550 + 513786747 - ((2 * v550) & 0xF6)) ^ 0x1E9FC37B) << ((v512 & 4 ^ 4) + (v512 & 4));
  v552 = ((((v452 - ((2 * v452) & 0xFFFFFFDF)) << 12) + 1779363840) ^ (v547 << 8) ^ 0x666E1DC0) & ((v549 - ((2 * v549) & 0x146) + 1456793763) ^ 0xA92B1768) ^ (v549 - ((2 * v549) & 0x146) + 1456793763) & 0x42008C3F ^ (v551 - ((2 * v551) & 0x323E0388) - 1726021180);
  LODWORD(v452) = *(v514 + (85 * (v513 >> 4) - 15386) % 0x3CDu);
  v553 = *(v514 + (85 * (v513 >> 12) - 15386) % 0x3CDu);
  v554 = *(v514 + (85 * (v513 & 0xF) - 15386) % 0x3CDu);
  v555 = (((v553 - ((2 * v553) & 0xA4)) << 12) - 1041948672) ^ (v548 << 8);
  LODWORD(v452) = (v554 - ((2 * v554) & 0xFFFFFFEF) + 343135991) & 0x14600 ^ (16 * (v452 - ((2 * v452) & 0xFFFFFF0F)) - 2121938832) ^ (v555 ^ 0x9AECC2FF) & ((v554 - ((2 * v554) & 0xFFFFFFEF) + 343135991) ^ 0xEB8C2908);
  v556 = (v552 >> 8) & 0xF;
  LODWORD(STACK[0x4A0]) = v556;
  v557 = ((v556 ^ 0x46CD827D) & ((v452 >> 4) | 0x46CD820F) | (v452 >> 4) & 0x80) ^ 0x46CD82F7;
  v558 = 16 * (((v543 ^ 0xF) + v543) & (v452 ^ 0xF));
  v559 = 85 * (((v552 & 0xF ^ 0x2F73FACD) & ~v558 | v558 & 0xFFFFFF3F) ^ 0x2F73FACA);
  v560 = (v559 + 58140) % 0x3CD;
  v561 = *(v514 + (v559 + 28050) % 0x3CD);
  v562 = 85 * (LODWORD(STACK[0x46C]) ^ (v561 - ((2 * v561) & 0x138) + 815211420));
  v563 = *(v514 + (85 * (((*(v514 + v560) - 2 * (*(v514 + v560) & 0xF) - 113) ^ (*(v514 + (v562 + 58140) % 0x3CDu) >> 4)) ^ 0x8F) + 28050) % 0x3CDu);
  v564 = v552 >> 4;
  LODWORD(STACK[0x494]) = v564;
  LODWORD(v452) = (v564 ^ 0xDE9FF7FD) & (v452 & 0xF0 ^ 0x849EA762) | (v552 >> 4) & 0xD;
  v565 = *(v514 + (85 * (v452 ^ 0xA7E2) + 28050) % 0x3CDu);
  v566 = (v565 - ((2 * v565) & 0x50) + 1452031272) ^ 0xD999518 ^ (16 * (v563 - ((2 * v563) & 0xFFFFFF07)) + 1528145968);
  LOBYTE(v563) = *(v514 + 85 * (((2 * (v452 ^ 0x849EA7E2)) & 0x158) + (v452 ^ 0x849EA54E)) % 0x3CD);
  v567 = *(v514 + (85 * (((v563 - ((2 * v563) & 0x18) - 116) ^ (*(v514 + (((83 - v566) | (v566 + 684)) & 0x55) * (v566 + 684) % 0x3CD) >> 4)) ^ 0x8C) + 28050) % 0x3CDu);
  v568 = *(v514 + (85 * v557 + 28050) % 0x3CDu);
  v569 = 85 * ((v568 - ((2 * v568) & 0xA2) - 1599585199) ^ 0x94403B91 ^ (16 * (v567 - ((2 * v567) & 0x1F8)) + 887652288));
  v570 = (v569 + 58140) % 0x3CD;
  v571 = *(v514 + v570) - 75269778 - ((2 * *(v514 + v570)) & 0xDC);
  LOBYTE(v570) = ((v570 & 0x42 ^ 0x42) + (v570 & 0x42)) ^ 0xE;
  v572 = *(v514 + (85 * (((v571 ^ 0xFB83796E) >> (v570 & 4) >> (v570 & 0xC2 ^ 0x40)) ^ *(v514 + (85 * v557 + 58140) % 0x3CD)) + 28050) % 0x3CDu);
  v573 = 85 * ((((v552 >> 12) | 0x83C3C3F0) & (((v555 ^ 0xDCB9770C) >> 8) & 0xF0 ^ 0x83C3C3C2) | (v552 >> 12) & 0xD) ^ 0x83C3C3CB);
  v574 = *(v514 + (v573 + 28050) % 0x3CDu);
  v575 = v574 - ((2 * v574) & 0x13C) - 2030652514;
  LODWORD(v452) = 85 * (v575 ^ 0x84A47DEE ^ (16 * (v572 - ((2 * v572) & 0xFFFFFFCF)) + 38981232));
  v576 = *(v514 + (85 * (((*(v514 + (v573 + 58140) % 0x3CD) - 2 * (*(v514 + (v573 + 58140) % 0x3CD) & 3) - 125) ^ (*(v514 + (v452 + 58140) % 0x3CDu) >> 4)) ^ 0x83) + 28050) % 0x3CDu);
  v577 = ((v576 - 1619415927 - ((2 * v576) & 0x112)) ^ 0x9F79AC89) << ((v575 & 4 ^ 4) + (v575 & 4));
  v578 = 85 * ((((v555 ^ 0xDCB9770C) >> 12) & 0xF0 | HIWORD(v552) & 0xF) ^ 0xB0);
  v579 = *(v514 + (v578 + 28050) % 0x3CDu);
  v580 = 85 * ((v579 - ((2 * v579) & 0x19A) - 1204759859) ^ 0xA1182523 ^ (v577 - ((2 * v577) & 0x3251EFDC) + 422115310));
  LOBYTE(v578) = *(v514 + (v578 + 58140 - 973 * ((4414150 * (v578 + 58140)) >> 32)));
  v581 = *(v514 + (85 * (((v578 - ((2 * v578) & 0x7A) + 61) ^ (*(v514 + (v580 + 58140) % 0x3CD) >> 4)) ^ 0x3D) + 28050) % 0x3CDu);
  v582 = (LODWORD(STACK[0x490]) + 1614167262) ^ 0x6584352E ^ (16 * (v581 - ((2 * v581) & 0xFFFFFF3F)) + 95554032);
  LODWORD(v452) = *(v514 + (v452 + 28050) % 0x3CDu);
  v583 = v452 - ((2 * v452) & 0x16A);
  v584 = *(v514 + (85 * v566 + 28050) % 0x3CD);
  v585 = v584 - ((2 * v584) & 0x100);
  v586 = *(v514 + (v562 + 28050) % 0x3CDu);
  v587 = *(v514 + (v569 + 28050) % 0x3CD);
  LODWORD(v452) = v586 - ((2 * v586) & 0xDA);
  v588 = v587 + 10441387 - ((2 * v587) & 0x13C);
  v589 = *(v514 + (v580 + 28050) % 0x3CD);
  v590 = v533 ^ LODWORD(STACK[0x4C4]);
  v591 = v529 ^ LODWORD(STACK[0x4A4]);
  v592 = v591 + LODWORD(STACK[0x4B4]) + (v591 & 0x5EE87C86) + (v591 & 0x5EE87C86 ^ 0x5EE87C86);
  LODWORD(STACK[0x4C4]) = v592;
  LODWORD(STACK[0x4B4]) = (v592 + 1110378228 + (((752978783 - v591) | (v591 + 320763040)) & 0x2729C4E4 ^ 0x79C1B862)) ^ (v591 + v505);
  v593 = *(v514 + (85 * v582 + 28050) % 0x3CD);
  v594 = *(v514 + (85 * (((*(v514 + LODWORD(STACK[0x498])) - ((2 * *(v514 + LODWORD(STACK[0x498]))) & 0xF6) - 5) ^ (*(v514 + (85 * v582 + 58140) % 0x3CD) >> 4)) ^ 0xFB) + 28050) % 0x3CDu);
  v595 = 85 * (((v548 >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x49C])) & 0xF) ^ 0x74);
  v596 = *(v514 + (v595 + 28050) % 0x3CDu);
  v597 = 85 * ((v596 - ((2 * v596) & 0x98) - 1758709684) ^ 0xDA1E617C ^ (16 * (v594 - ((2 * v594) & 0x126)) + 1295145264));
  v598 = (v597 + 28050) % 0x3CD;
  LOBYTE(v595) = *(v514 + (v595 + 58140 - 973 * ((4414150 * (v595 + 58140)) >> 32)));
  v599 = *(v514 + (85 * (((v595 - ((2 * v595) & 0xD0) + 104) ^ (*(v514 + (v597 + 58140) % 0x3CD) >> 4)) ^ 0x68) + 28050) % 0x3CDu);
  v600 = *(v514 + (85 * ((HIWORD(LODWORD(STACK[0x4A8])) & 0xF0 | (v547 >> 20) & 0xF) ^ 0x29) + 28050) % 0x3CDu);
  v601 = (v600 - ((2 * v600) & 0xFFFFFF0F) + 1507180167) ^ 0xE7F73D47 ^ (16 * (v599 - ((2 * v599) & 0x78)) - 1105034304);
  v602 = *(v514 + v598);
  v603 = *(v514 + (85 * v601 + 28050) % 0x3CD);
  v604 = ((v603 + 876975635 - ((2 * v603) & 0x26)) ^ 0x34459613u) << (((v602 & 0xE0) + (v602 & 0xE0 ^ 0xE0) + 60) & 0xFC);
  v605 = ((v583 << 12) + 176902144) ^ (v452 + 1498100589) ^ (16 * v585 - 2049456128) ^ ((v588 << 8) + 520960) ^ (((v589 - ((2 * v589) & 0x1D8)) << 16) - 34865152) ^ (((v593 - ((2 * v593) & 0xE0)) << 20) + 654311424) ^ (-16777216 * v602 + 2130706432) ^ (v604 - ((2 * v604) & 0x9B3C65DE) + 1302213359);
  LODWORD(v452) = 85 * ((v552 & 0xF | (16 * (v605 & 0xF))) ^ 0x27) + 5695;
  v606 = v452 - 973 * ((17243 * v452) >> 24);
  v607 = (v605 ^ 0xA13F0782) >> ((v552 & 4 ^ 4) + (v552 & 4));
  v608 = v607 - ((2 * v607) & 0xF10B155E) - 125465937;
  LODWORD(v452) = (((v606 & 0x5B ^ 0x5B) + (v606 & 0x5B)) & 0x67) + (((16 * v608) | 0xFFFFFF0F) & (LODWORD(STACK[0x494]) ^ 0x9F7) ^ 0x9F5);
  LODWORD(v452) = *(v514 + (85 * v452 - 973 * (((1465655 * v452) >> 16) >> 8)));
  LODWORD(v604) = *(v514 + (85 * (((v608 & 0x30 ^ 0xF01F) & (LODWORD(STACK[0x4A0]) ^ 0xF03B) | v608 & 0xC0) ^ 0xF0B1) + 5695) % 0x3CDu);
  v609 = v604 + (~(2 * v604) | 0xFFFF3D);
  LODWORD(v604) = *(v514 + (85 * (((v608 >> 4) & 0xF0 ^ 0x4A69) & ((v552 >> 12) | 0xEAF0) ^ ((v552 >> 12) & 6 | 0xA010) ^ 0xEADB) + 5695) % 0x3CDu);
  v610 = v604 + 1032767 - ((2 * v604) & 0x14C);
  v611 = *(v514 + (85 * (((v608 >> 12) & 0x60 ^ 0xF03F) & ((v552 >> 20) & 0xF ^ 0x106D) ^ ((v608 >> 12) & 0x90 | 0x602) ^ 0x1677) + 5695) % 0x3CDu);
  v612 = *(v514 + (85 * (((v608 >> 8) & 0x40 | BYTE2(v552) & 0xF) ^ ((v608 >> 8) & 0xB0 | 0x4108) ^ 0x4188) + 5695) % 0x3CDu);
  LODWORD(v604) = *(v514 + (85 * ((BYTE2(v608) & 0xE0 ^ 0xFF7F) & (HIBYTE(v552) & 0xF ^ 0x51E2) ^ (BYTE2(v608) & 0x10 | 0x8002) ^ 0xD1E3) + 5695) % 0x3CDu);
  v613 = *(v514 + (85 * (((v608 >> 20) & 0xF0 ^ 0x1FAB) & ((v552 >> 28) ^ 0x9FFB) ^ ((v552 >> 28) & 4 | 0x8040) ^ 0x9F6F) + 5695) % 0x3CDu);
  v614 = ((((~(2 * v613) | 0xFFFFFFFD) + v613) << 28) - 1610612736) ^ (((v604 - ((2 * v604) & 0xB6)) << 24) - 620756992);
  v615 = 16 * (v452 - ((2 * v452) & 0x16C)) - 1977722016;
  LODWORD(v452) = *(v514 + v606) - ((2 * *(v514 + v606)) & 0x164) - 1338765134;
  v616 = v615 ^ v452;
  v617 = v616 ^ ((v609 << 8) - 760323584);
  LODWORD(v604) = v617 ^ ((v610 << 12) + 11956224);
  v618 = (((v611 - ((2 * v611) & 0x1B4)) << 20) + 1033895936) ^ (((v612 - ((2 * v612) & 0xD6)) << 16) - 529858560) ^ 0x344D66CA ^ v604;
  v619 = v614 ^ v618;
  v620 = 85 * ((v619 >> 28) ^ 0xB) + 80750 - 973 * ((4414150 * (85 * ((v619 >> 28) ^ 0xB) + 80750)) >> 32);
  v621 = 85 * (HIBYTE(v619) & 0xF ^ 6) + 80750;
  v622 = *(v514 + (v621 - 973 * ((4414150 * v621) >> 32)));
  v623 = 85 * ((v618 >> 20) & 0xF ^ 0xD) + 80750;
  v624 = 85 * (HIWORD(v618) & 0xF ^ 8) + 80750;
  v625 = *(v514 + (v624 - 973 * ((4414150 * v624) >> 32)));
  v626 = ((((v622 - ((2 * v622) & 0x84)) << 8) + 1814970880) ^ (*(v514 + v620) << 12) ^ 0x4AB0) & ((v625 - ((2 * v625) & 0xFC) - 1311923074) ^ 0x5BC6) ^ (v625 - ((2 * v625) & 0xFC) - 1311923074) & 0xA74F;
  v627 = *(v514 + (v623 - 973 * ((4414150 * v623) >> 32)));
  LODWORD(v604) = 85 * ((v604 >> 12) ^ 4) + 80750;
  v628 = 85 * ((v617 >> 8) & 0xF ^ 0xA) + 80750;
  LODWORD(v604) = *(v514 + (v604 - 973 * ((4414150 * v604) >> 32)));
  v629 = *(v514 + (v628 - 973 * ((4414150 * v628) >> 32)));
  LODWORD(STACK[0x520]) = v529 ^ v505 ^ 0x3BF1547C ^ (LODWORD(STACK[0x520]) - ((2 * v537) & 0xD2A7E1FE) - 325550328);
  LODWORD(v604) = (v629 - ((2 * v629) & 0x18C) + 5371846) ^ (16 * (v604 - ((2 * v604) & 0x16E)) - 133887120) ^ (((v627 - ((2 * v627) & 0x1B2)) << 12) - 951218176);
  v630 = LODWORD(STACK[0x4C4]) + 1060830517;
  v631 = LODWORD(STACK[0x4B4]) + 1405910554;
  LODWORD(STACK[0x4C4]) = v631;
  v632 = STACK[0x4B8];
  v633 = (((v529 ^ v505 ^ 0x188A5155) - 595264809) ^ ((v529 ^ v505 ^ 0x24D6281) - 968636157) ^ ((v529 ^ v505 ^ 0xC8659757) + 208354517)) - LODWORD(STACK[0x4B8]);
  LODWORD(STACK[0x4A0]) = v633;
  LODWORD(STACK[0x4A4]) = (((v630 + v633 - 1857116590 + v631) ^ 0x6EA6055C) - 627742705) ^ (((v630 + v633 - 1857116590 + v631) ^ 0xBA6250DF) + 240205198) ^ (((v630 + v633 - 1857116590 + v631) ^ 0x3F90F34C) - 1952211425);
  v634 = 85 * ((v616 >> 4) ^ 0xD) + 80750;
  LODWORD(v452) = *(v514 + (85 * (v452 & 0xF ^ 2) + 80750 - 973 * ((4414150 * (85 * (v452 & 0xF ^ 2) + 80750)) >> 32)));
  v635 = *(v514 + (v634 - 973 * ((4414150 * v634) >> 32)));
  LODWORD(v452) = v452 - ((2 * v452) & 0x1EC) + 663492342;
  v636 = ((v626 << 16) ^ (v604 << 8) ^ 0x4D03B7DC) & (v452 ^ 0xD873E90A);
  LODWORD(v604) = v590 + LODWORD(STACK[0x4C8]);
  v637 = STACK[0x4D0];
  v638 = LODWORD(STACK[0x4D0]) ^ v590;
  v639 = v604 ^ (v590 + LODWORD(STACK[0x500]));
  LODWORD(STACK[0x4B4]) = v639;
  LODWORD(v604) = v604 + 2031737245;
  v640 = v638 ^ v452 & 0x5001623;
  v641 = v638 - v637;
  LODWORD(STACK[0x4A8]) = v641;
  LODWORD(STACK[0x500]) = v640 ^ (16 * (v635 - 2 * (v635 & 0x3F)) + 824325104) ^ 0xCCB3240E ^ v636;
  LODWORD(STACK[0x4C8]) = v632 + v630 - v633 + 331161740;
  LODWORD(STACK[0x4B8]) = v639 + v604 + v641 + 550556555;
  LODWORD(STACK[0x4FC]) = v637 + v604 - v641 - 363584703;
  return (*(STACK[0x480] + 8 * ((1478 * (LODWORD(STACK[0x570]) == 63)) ^ LODWORD(STACK[0x47C]))))();
}

void sub_100207850(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  LODWORD(STACK[0x550]) = a3;
  LODWORD(STACK[0x4F0]) = a7;
  LODWORD(STACK[0x4F8]) = v8 - 1671596706;
  LODWORD(STACK[0x4F4]) = a6 - 561838101;
  LODWORD(STACK[0x4FC]) = v7 + 471118099;
  ++LODWORD(STACK[0x570]);
  LODWORD(STACK[0x4EC]) = STACK[0x558];
  LODWORD(STACK[0x558]) = STACK[0x568];
  LODWORD(STACK[0x568]) = v9;
  LODWORD(STACK[0x560]) = STACK[0x508];
  JUMPOUT(0x1002033C0);
}

uint64_t sub_1002078E4@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W6>, int a6@<W8>)
{
  LODWORD(STACK[0x438]) += LODWORD(STACK[0x518]);
  v12 = (LODWORD(STACK[0x444]) + 8078) | 0x84;
  v13 = (LODWORD(STACK[0x444]) - 1052413139) & 0x3EBA9BE9;
  LODWORD(STACK[0x4D8]) = v13;
  LODWORD(STACK[0x570]) = v12;
  v14 = ((v10 ^ 0x97E0B7FD) + 799571784) ^ v10 ^ ((v10 ^ 0x9D63C919) + 623575460) ^ ((v10 ^ 0x7FFFFDFD) - 944294584) ^ (((v13 + 852203731) ^ v10) + (v12 ^ 0x8A835063));
  v15 = (a2 + 1320673009) ^ (a3 - ((2 * (a3 + 1292555796)) & 0x56759214) - 129655010) ^ 0xAB3AC90A ^ v9;
  v16 = ((v15 ^ a5) - v15) ^ ((a5 ^ a4) - a4) ^ ((((v14 ^ a5 ^ 0x6E10EB) + 849948657) ^ ((v14 ^ a5 ^ 0x6B049BA) + 880244386) ^ ((v14 ^ a5 ^ 0x41696E14) + 1940803856)) - v11 - 788993028);
  v17 = (((v16 ^ 0xE480E721) - 27475868) ^ ((v16 ^ 0x74BB19D1) + 1852259988) ^ ((v16 ^ 0x903BFEF0) - 1964516941)) - a6 - 1735861248;
  LODWORD(STACK[0x550]) = v17;
  v18 = v17 & 0x9CA2FAB8 ^ 0x6CC828EF ^ (v17 ^ 0xD82AF237) & (2 * (v17 & 0x9CA2FAB8));
  v19 = ((2 * (v17 ^ 0xF06AD257)) ^ 0xD99051DE) & (v17 ^ 0xF06AD257) ^ (2 * (v17 ^ 0xF06AD257)) & 0x6CC828EE;
  v20 = v19 & 0x90A0D694 ^ v18 ^ ((4 * v18) ^ 0x23807528) & (v19 ^ 0x488000CD);
  v21 = ((4 * v19) ^ 0xB2A0D5AC) & (v19 ^ 0x488000CD) ^ v19 & 0x90A0D694;
  v22 = v21 & 0x90A0D694 ^ v20 ^ ((16 * v20) ^ 0x54225024) & (v21 ^ 0x80008F);
  v23 = ((16 * v21) ^ 0x98A0DED4) & (v21 ^ 0x80008F) ^ v21 & 0x90A0D694;
  v24 = v22 ^ v23 & 0x90A0D694 ^ ((v22 << 8) ^ 0x58883994) & (v23 ^ 0x8000EF);
  v25 = ((v23 << 8) ^ 0x10A05294) & (v23 ^ 0x8000EF) ^ v23 & 0x90A0D694;
  LODWORD(STACK[0x518]) = v24 ^ v25 & 0x10A0D694 ^ ((v24 << 16) ^ 0xB8CBD694) & (v25 ^ 0x6C480000) ^ ((v24 << 16) ^ 0xB8CBD694) & 0x6CC80084;
  v26 = v11 - a4 - 1679413662;
  v27 = v8 + v26;
  v28 = v8 + v26 - 320756940;
  v29 = a1 + v28;
  v30 = v28 ^ v26;
  v31 = a2 + 1818803252;
  v32 = a3 + 1292555796 - (a2 + 1818803252);
  v33 = v7 + 705298187 + v32;
  v34 = v33 ^ v32;
  v35 = (a2 + 1818803252) ^ LODWORD(STACK[0x568]) ^ v33 ^ v32;
  v36 = v29 ^ (a4 + 498130243);
  v37 = (a4 + 498130243) ^ 0xC0DEFAA9;
  v38 = (LODWORD(STACK[0x508]) ^ 0xC0DEFAA9 ^ (a4 + 498130243)) - v37;
  v39 = ((v30 ^ LODWORD(STACK[0x508])) - v30) ^ (v38 - 1037501940 - ((2 * v38) & 0x8451F418)) ^ 0xC228FA0C ^ ((((v35 ^ LODWORD(STACK[0x508]) ^ 0xD37EFCC) - 577461918) ^ ((v35 ^ LODWORD(STACK[0x508]) ^ 0x178554ED) - 953804223) ^ ((v35 ^ LODWORD(STACK[0x508]) ^ 0xDA6C4188) + 181341990)) - (((v35 ^ 0x8CA656A3) - 436682488) ^ ((v35 ^ 0x61CAD4C4) + 143934305) ^ ((v35 ^ 0x2DB278CE) + 1156378475)) - 1727874807);
  v40 = (((a2 + 1818803252) ^ 0x14E9D39D) - 2117936975) ^ (((a2 + 1818803252) ^ 0x9BFB03A) - 1667974376);
  v41 = (v6 + v33) ^ (a2 + 1818803252);
  v42 = ((v38 ^ 0x72B2F818) - (v38 & 0x8D4D07E7)) ^ v38 & 0x72B2F818;
  v43 = (((a2 + 1818803252) ^ (328680395 - a2)) & 0x1738DD35 ^ 0xF476671) + v33;
  v44 = (((v34 + 160) | (95 - v34)) & 0xDB) - 219;
  LODWORD(STACK[0x508]) = v41;
  v45 = (v40 ^ ((v31 ^ 0xDD88990E) + 1218679332)) - v41 - 202451823;
  v46 = (v40 ^ ((v31 ^ 0xDD88990E) + 1218679332)) - v41 + 1373384531 + (((v44 ^ 0x4F508C2E) - 386035190) ^ ((v44 ^ 0xF4CCD3B8) + 1398918560) ^ ((v44 ^ 0xE5742310) + 1121533240));
  v47 = ((v46 ^ v43 ^ 0x8BA4A895) - 1917472751) ^ ((v46 ^ v43 ^ 0x8AAE1F1) + 247200117) ^ ((v46 ^ v43 ^ 0x830E4964) - 2061544990);
  v48 = v45 - 477580326 + (((v46 ^ v43 ^ 0x9FB39120) - 1717401178) ^ ((v46 ^ v43 ^ 0x4C21DC1A) + 1244710048) ^ ((v46 ^ v43 ^ 0xD3924D3A) - 712813120));
  v49 = (v48 ^ 0x88DD4D20) & (2 * (v48 & 0xCC816D8A)) ^ v48 & 0xCC816D8A;
  v50 = ((2 * (v48 ^ 0x99DD5E30)) ^ 0xAAB86774) & (v48 ^ 0x99DD5E30) ^ (2 * (v48 ^ 0x99DD5E30)) & 0x555C33BA;
  v51 = (v50 ^ 0x82230) & (4 * v49) ^ v49;
  v52 = ((4 * (v50 ^ 0x5544108A)) ^ 0x5570CEE8) & (v50 ^ 0x5544108A) ^ (4 * (v50 ^ 0x5544108A)) & 0x555C33B8;
  v53 = (v52 ^ 0x555002A0) & (16 * v51) ^ v51;
  v54 = ((16 * (v52 ^ 0xC3112)) ^ 0x55C33BA0) & (v52 ^ 0xC3112) ^ (16 * (v52 ^ 0xC3112)) & 0x555C33B0;
  v55 = v53 ^ 0x555C33BA ^ (v54 ^ 0x55403300) & (v53 << 8);
  v56 = v48 ^ (2 * ((v55 << 16) & 0x555C0000 ^ v55 ^ ((v55 << 16) ^ 0x33BA0000) & (((v54 ^ 0x1C001A) << 8) & 0x555C0000 ^ 0x14C0000 ^ (((v54 ^ 0x1C001A) << 8) ^ 0x5C330000) & (v54 ^ 0x1C001A))));
  v57 = (((v46 ^ v43 ^ 0x176C6B8A) + 900608236) ^ ((v46 ^ v43 ^ 0x4523A98B) + 1742861035) ^ ((v46 ^ v43 ^ 0x3FAB1443) + 493440803)) + v41 - (((v42 ^ 0x8704A717) + 1549451631) ^ ((v42 ^ 0x75D7AA11) - 1366700951) ^ ((v42 ^ 0xF2D30D06) + 697133952));
  LODWORD(STACK[0x4FC]) = v57;
  v58 = v46 ^ v34;
  v59 = v46 ^ v34 ^ LODWORD(STACK[0x558]) ^ v56;
  v60 = (((v59 ^ LODWORD(STACK[0x560]) ^ 0x391FA60B) - 782240393) ^ ((v59 ^ LODWORD(STACK[0x560]) ^ 0x6462721B) - 1943920281) ^ ((v59 ^ LODWORD(STACK[0x560]) ^ 0x1974DEEE) - 248214124)) - (((v59 ^ 0xEC61F9E1) - 1109625962) ^ ((v59 ^ 0x229B8AA6) + 1931870419) ^ ((v59 ^ 0x8AF379B9) - 615582770));
  v61 = v43 ^ v34;
  v62 = v37 - v36;
  v63 = v62 ^ (v27 + 90267256);
  v64 = v62 ^ v30;
  v65 = v63 + v62;
  v66 = ((v64 ^ LODWORD(STACK[0x560])) - v64) ^ ((v65 ^ LODWORD(STACK[0x560])) - v65) ^ 0x58CB1E8E ^ (v60 - ((2 * v60 - 757707250) & 0xB1963D1C) - 1036630635);
  v67 = v45 + (((v58 ^ 0xE80C2252) - 488473173) ^ ((v58 ^ 0x2E80F2CE) + 611233079) ^ ((v58 ^ 0xC68CD09C) - 865955995)) + v47 + ((((v57 + 1163226478) & 0x5EE87C86 ^ 0x242D1727) - 2067518465) ^ (((v57 + 1163226478) & 0x5EE87C86 ^ LODWORD(STACK[0x3AC])) + 796668884) ^ (((v57 + 1163226478) & 0x5EE87C86 ^ 0xABB8182D) + 189867253)) + ((((984257169 - v57) & 0x5EE87C86 ^ 0x6E37E8F6) + 1045582118) ^ (((984257169 - v57) & 0x5EE87C86 ^ 0x17501094) + 1194699080) ^ (((984257169 - v57) & 0x5EE87C86 ^ 0x7967F862) + 688013746));
  v68 = (((v56 ^ v61 ^ 0x6DE4D642 ^ 0x6D462582) + 674199997) ^ ((v56 ^ v61 ^ 0x6DE4D642 ^ 0x79D4D3F9) + 1019056072) ^ ((v56 ^ v61 ^ 0x6DE4D642 ^ 0x509BFC85) + 368222396)) - 1293690612;
  v69 = (v68 ^ 0xE89B5BAC) & (2 * (v68 & 0xECD353AD)) ^ v68 & 0xECD353AD;
  v70 = ((2 * (v68 ^ 0xB0395EFC)) ^ 0xB9D41AA2) & (v68 ^ 0xB0395EFC) ^ (2 * (v68 ^ 0xB0395EFC)) & 0x5CEA0D50;
  v71 = (v70 ^ 0x10C00800) & (4 * v69) ^ v69;
  v72 = ((4 * (v70 ^ 0x442A0551)) ^ 0x73A83544) & (v70 ^ 0x442A0551) ^ (4 * (v70 ^ 0x442A0551)) & 0x5CEA0D50;
  v73 = (v72 ^ 0x50A80540) & (16 * v71) ^ v71;
  v74 = ((16 * (v72 ^ 0xC420811)) ^ 0xCEA0D510) & (v72 ^ 0xC420811) ^ (16 * (v72 ^ 0xC420811)) & 0x5CEA0D50;
  v75 = v73 ^ 0x5CEA0D51 ^ (v74 ^ 0x4CA00500) & (v73 << 8);
  v76 = v68 ^ (2 * ((v75 << 16) & 0x5CEA0000 ^ v75 ^ ((v75 << 16) ^ 0xD510000) & (((v74 ^ 0x104A0841) << 8) & 0x5CEA0000 ^ 0x14E20000 ^ (((v74 ^ 0x104A0841) << 8) ^ 0x6A0D0000) & (v74 ^ 0x104A0841))));
  v77 = ((v76 ^ 0xC0EB8595) + 1336427545) ^ ((v76 ^ 0x7DBD8736) - 218216772) ^ ((v76 ^ 0xF0D14BAC) + 2140310050);
  v78 = (((v76 ^ 0xAF0A0E43) + 541708239) ^ ((v76 ^ 0x4B77F588) - 1003211770) ^ ((v76 ^ 0xA9FAB2C4) + 649687882)) - 249425774;
  v79 = (v78 ^ 0x2B9CA64) & (2 * (v78 & 0xAB01E371)) ^ v78 & 0xAB01E371;
  v80 = ((2 * (v78 ^ 0x10B84A64)) ^ 0x7773522A) & (v78 ^ 0x10B84A64) ^ (2 * (v78 ^ 0x10B84A64)) & 0xBBB9A914;
  v81 = (v80 ^ 0x30010000) & (4 * v79) ^ v79;
  v82 = ((4 * (v80 ^ 0x8888A915)) ^ 0xEEE6A454) & (v80 ^ 0x8888A915) ^ (4 * (v80 ^ 0x8888A915)) & 0xBBB9A914;
  v83 = (v82 ^ 0xAAA0A010) & (16 * v81) ^ v81;
  v84 = ((16 * (v82 ^ 0x11190901)) ^ 0xBB9A9150) & (v82 ^ 0x11190901) ^ (16 * (v82 ^ 0x11190901)) & 0xBBB9A910;
  v85 = v83 ^ 0xBBB9A915 ^ (v84 ^ 0xBB988100) & (v83 << 8);
  v86 = v78 ^ v61 ^ 0x6DE4D642 ^ (2 * ((v85 << 16) & 0x3BB90000 ^ v85 ^ ((v85 << 16) ^ 0x29150000) & (((v84 ^ 0x212805) << 8) & 0x3BB90000 ^ 0x2100000 ^ (((v84 ^ 0x212805) << 8) ^ 0x39A90000) & (v84 ^ 0x212805))));
  v87 = ((v86 ^ 0xF88BC7FA) + 228023874) ^ ((v86 ^ 0x1FA5E18D) - 356943817) ^ ((v86 ^ 0x697E972C) - 1671295336);
  LODWORD(STACK[0x4F4]) = v67 + 2120910624;
  v88 = v57 - v77;
  LODWORD(STACK[0x4F8]) = v88 + 1984146933;
  v89 = v67 - 1414506841 + v88 + 1984146933;
  v90 = ((((v67 + 2120910624) ^ v61 ^ 0xA5EB18E8) + 406711863) ^ (((v67 + 2120910624) ^ v61 ^ 0x84F47541) + 958563232) ^ (((v67 + 2120910624) ^ v61 ^ 0x4CFBBBEB) - 248689354)) + (((v86 ^ 0x2B4BB4A3) - 564712167) ^ ((v86 ^ 0x29B34C28) - 592456300) ^ ((v86 ^ 0x8CA849D0) + 2041892972)) - v87 - 866769112;
  v91 = v89 + 1036876930 + v90;
  v92 = STACK[0x520];
  LODWORD(STACK[0x560]) = LODWORD(STACK[0x418]) + LODWORD(STACK[0x520]);
  v93 = v87 - v91 + 805703367;
  v94 = v89 - v93 - 2052588561;
  v95 = ((((2 * v94) & 0xA63CE940 ^ 0x65B071CB) + 791444007) ^ (((2 * v94) & 0xA63CE940 ^ 0xBA77E063) - 252974193) ^ (((2 * v94) & 0xA63CE940 ^ 0xDFC791A8) - 1789158842)) + (((v94 ^ 0x3EDB82A5) - 454277002) ^ ((v94 ^ 0x86BCB42) - 765722221) ^ ((v94 ^ 0x65AE3D47) - 1080428648));
  v96 = v90 - 1857994348 + v93;
  v97 = v88 + v93 + 1881187085;
  v98 = v88 + v93;
  LODWORD(STACK[0x520]) = v88 + v93;
  LODWORD(STACK[0x4E4]) = v95 + v97;
  LODWORD(STACK[0x4EC]) = v39 - v36;
  v99 = v63 ^ 0x6DE4D642;
  v100 = v36 - 1924331545 + (v63 ^ 0x6DE4D642) + 1;
  LODWORD(STACK[0x4E8]) = v66 - v100;
  v101 = v99 ^ v64;
  v102 = v100 - (v101 ^ v65);
  v103 = v91 ^ v92 ^ v93;
  v104 = v93 + 1817540236;
  v105 = (v93 + 1817540236) ^ 0xCDB9CFC1;
  LODWORD(STACK[0x4F0]) = (v98 - 1761287668) ^ 0x36E20BE5;
  v106 = ((v98 - 1761287668) ^ 0x36E20BE5) + v105;
  v107 = (v95 + v96) ^ v106;
  v108 = (v104 ^ 0xD23BD5D2) - v107;
  LODWORD(STACK[0x4E0]) = v106 - v107;
  v109 = v106 - v107 + v97 - v96;
  v110 = v108 ^ LODWORD(STACK[0x514]);
  v111 = v109 & 0x100000;
  if ((v109 & 0x100000 & v110) != 0)
  {
    v111 = -v111;
  }

  v112 = ((v111 + v110) ^ v109 & 0xFFEFFFFF ^ LODWORD(STACK[0x52C])) - ((v111 + v110) ^ v109 & 0xFFEFFFFF);
  v113 = v65;
  v114 = v64 + 696662249 + v65;
  v115 = v102 + 958239768;
  v116 = v102 + 958239768 + v114;
  v117 = (v114 ^ v101) + 1420675160 + v116;
  v118 = v65 - v117 - 1420675160;
  v119 = v102 + v118;
  v120 = v116 - v118;
  v121 = v102 + v118 - 1494156103;
  v122 = v121 + v120;
  v123 = v121 ^ 0x36E20BE5;
  v124 = v65 - v117 + 396865076;
  v125 = (v121 ^ 0x36E20BE5) + (v124 ^ 0xCDB9CFC1);
  v126 = v125 - (v125 ^ v117);
  v127 = (((v126 + v122 - v117) ^ LODWORD(STACK[0x52C])) - (v126 + v122 - v117)) ^ ((((v124 ^ 0xD23BD5D2) - (v125 ^ v117)) ^ LODWORD(STACK[0x52C])) - ((v124 ^ 0xD23BD5D2) - (v125 ^ v117))) ^ v112;
  v128 = ((v127 ^ 0x4F72CCC2) + 1469658451) ^ ((v127 ^ 0x19ED30E1) + 17222002) ^ ((v127 ^ 0x569FFC23) + 1316226484);
  v129 = STACK[0x538];
  v130 = (((v122 ^ LODWORD(STACK[0x530])) - v122) ^ ((LODWORD(STACK[0x530]) ^ 0xCDB9CFC1 ^ v124) - (v124 ^ 0xCDB9CFC1)) ^ ((v105 ^ v129 ^ LODWORD(STACK[0x4E4]) ^ LODWORD(STACK[0x530])) - (v105 ^ v129 ^ LODWORD(STACK[0x4E4])))) - v123;
  v131 = (((LODWORD(STACK[0x500]) ^ v118) - v118) ^ ((LODWORD(STACK[0x500]) ^ v117) - v117) ^ ((v103 ^ LODWORD(STACK[0x500])) - v103)) - v119;
  v132 = STACK[0x540];
  v133 = LODWORD(STACK[0x4F4]) ^ LODWORD(STACK[0x540]) ^ v86;
  v134 = (((v114 ^ LODWORD(STACK[0x53C])) - v114) ^ ((v113 ^ LODWORD(STACK[0x53C])) - v113) ^ ((((v133 ^ LODWORD(STACK[0x53C]) ^ 0x1AF7D8E4) + 588662369) ^ ((v133 ^ LODWORD(STACK[0x53C]) ^ 0x9951932C) - 1599074903) ^ ((v133 ^ LODWORD(STACK[0x53C]) ^ 0xDF6FA93) + 873948184)) - (((v133 ^ 0xAD9D7737) + 763441339) ^ ((v133 ^ 0x2CBE4A0B) - 1398665849) ^ ((v133 ^ 0xF738C67) - 1888498709)) + 1453049591)) - v115;
  LODWORD(STACK[0x420]) += v6 + v9;
  LODWORD(STACK[0x410]) += LODWORD(STACK[0x4E8]);
  LODWORD(STACK[0x41C]) += LODWORD(STACK[0x4EC]);
  LODWORD(STACK[0x448]) += v131 + 1104600032;
  LODWORD(STACK[0x42C]) += v134;
  LODWORD(STACK[0x428]) += LODWORD(STACK[0x568]) + LODWORD(STACK[0x508]);
  LODWORD(STACK[0x430]) = LODWORD(STACK[0x430]) + v132 - 1293038730 + LODWORD(STACK[0x4F8]);
  LODWORD(STACK[0x414]) = LODWORD(STACK[0x414]) + LODWORD(STACK[0x558]) - 1942496938 + LODWORD(STACK[0x4FC]);
  v135 = STACK[0x4E0];
  LODWORD(STACK[0x434]) += v129 + LODWORD(STACK[0x4F0]);
  LODWORD(STACK[0x418]) = LODWORD(STACK[0x520]) + LODWORD(STACK[0x560]) - 1371731597;
  LODWORD(STACK[0x454]) += v130;
  LODWORD(STACK[0x43C]) += LODWORD(STACK[0x550]) ^ (2 * LODWORD(STACK[0x518])) ^ 0x4532AB66;
  v136 = LODWORD(STACK[0x424]) + (((LODWORD(STACK[0x504]) ^ 0xC0CAB66D) - 1816242741) ^ ((LODWORD(STACK[0x504]) ^ 0x98621AE1) - 887686841) ^ ((LODWORD(STACK[0x504]) ^ 0xC2A3850E) - 1848154454));
  LODWORD(STACK[0x458]) += LODWORD(STACK[0x514]) + v135;
  LODWORD(STACK[0x424]) = v136 - 156194847;
  return (*(STACK[0x480] + 8 * (LODWORD(STACK[0x444]) ^ (14 * (STACK[0x3F8] & 1)))))(LODWORD(STACK[0x40C]) - v126 + v128);
}

uint64_t sub_100208EB4()
{
  v2 = STACK[0x3C8];
  v3 = LODWORD(STACK[0x3C8]) < LODWORD(STACK[0x3C4]);
  v4 = STACK[0x4D8];
  v5 = (LODWORD(STACK[0x4D8]) + 1143) | 0xC84;
  LODWORD(STACK[0x570]) = v5;
  if (v3 != v0 - 1403549648 < ((v4 + 4425) ^ 0xB7655BBD ^ v5))
  {
    v6 = v0 - 1403549648 < ((v4 + 4425) ^ 0xB7655BBD ^ v5);
  }

  else
  {
    v6 = v2 < v0 - 1403549648;
  }

  return (*(v1 + 8 * ((91 * v6) ^ v4)))();
}

void sub_100208F30(int a1)
{
  LODWORD(STACK[0x40C]) = a1 - 418118033;
  LODWORD(STACK[0x45C]) += 64;
  LODWORD(STACK[0x440]) = v1 + 64;
  JUMPOUT(0x1001F1A00);
}

uint64_t sub_100208F9C(int a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x52C]) = a1;
  v12 = v8 + v9 - 449063825;
  v13 = v11 - 449063825 + v9;
  LODWORD(STACK[0x520]) = v13;
  v14 = a3 + 721189032 + 2 * v12;
  v15 = v13 - v14;
  v16 = (((v14 ^ (v11 + 2059273907) ^ 0x464E2FD8) + 2006979686) ^ ((v14 ^ (v11 + 2059273907) ^ 0x575ED3A1) + 1722869789) ^ ((v14 ^ (v11 + 2059273907) ^ 0x1110FC79) + 553568197)) - ((((v13 - v14) ^ 0x274F177D) + 1967838592) ^ (((v13 - v14) ^ 0x9429976E) - 970173075) ^ (((v13 - v14) ^ 0x123B0888) + 1077856907));
  LODWORD(STACK[0x560]) = v16;
  v17 = LODWORD(STACK[0x410]) - v16 - 968664292;
  v18 = v10 - 449063825 + a4;
  LODWORD(STACK[0x514]) = v18;
  v19 = a4 - 449063825 + v7;
  LODWORD(STACK[0x568]) = v19;
  v20 = a5 + 721189032 + 2 * v19;
  LODWORD(STACK[0x550]) = v20;
  v21 = (v18 - v20) ^ 0xA15D889B;
  LODWORD(STACK[0x558]) = v21;
  LODWORD(STACK[0x4A4]) = v10 + 2059273907;
  v22 = (v20 ^ (v10 + 2059273907)) - v21;
  LODWORD(STACK[0x538]) = v22;
  v23 = v22 + LODWORD(STACK[0x414]);
  v24 = STACK[0x548];
  v25 = *(STACK[0x548] + (85 * (v23 >> 28) - 15386) % 0x3CDu);
  v26 = *(STACK[0x548] + (85 * (HIBYTE(v23) & 0xF) - 15386) % 0x3CDu);
  LODWORD(STACK[0x4E8]) = a4;
  v27 = *(v24 + (85 * (BYTE2(v23) & 0xF) - 15386) % 0x3CDu);
  v28 = ((((v25 - ((2 * v25) & 0x10A)) << 12) - 554086400) ^ (((v26 - ((2 * v26) & 0x124)) << 8) + 1652003328) ^ 0x6B04) & ((v27 - ((2 * v27) & 0x77777777) - 1100864581) ^ 0xDC2C) ^ (v27 - ((2 * v27) & 0x77777777) - 1100864581) & 0x16FB;
  v29 = *(v24 + (85 * ((v23 >> 20) & 0xF) - 15386) % 0x3CDu);
  v30 = *(v24 + (85 * (v23 >> 12) - 15386) % 0x3CDu);
  v31 = *(v24 + (85 * ((((v23 >> 12) ^ 0xF) + (v23 >> 12)) & (v23 >> 8)) - 15386) % 0x3CDu);
  LODWORD(STACK[0x4A0]) = 16658432;
  v32 = (v31 - ((2 * v31) & 0x98) + 13590604) ^ (((v29 + 908728 - ((2 * v29) & 0x24)) << 12) + 32874496) ^ (16 * (v30 - ((2 * v30) & 0x136)) - 364254800);
  LODWORD(STACK[0x508]) = v23;
  v33 = *(v24 + (85 * (v23 >> 4) - 15386) % 0x3CDu);
  v34 = *(v24 + (85 * (v23 & 0xF) - 15386) % 0x3CDu);
  v35 = ((v28 << 16) ^ (v32 << 8) ^ 0xBFE6CB78) & ((v34 - ((2 * v34) & 0x150) + 2077612968) ^ 0x842A2456) ^ (v34 - ((2 * v34) & 0x150) + 2077612968) & 0x8014887;
  v36 = *(v24 + (85 * (v17 >> 28) - 15386) % 0x3CDu);
  v37 = *(v24 + (85 * (HIBYTE(v17) & 0xF) - 15386) % 0x3CDu);
  v38 = (((v36 + 414934 - ((2 * v36) & 0xA0)) << 12) + 7839744) ^ (((v37 + 2399232 - ((2 * v37) & 0x136)) << 8) + 695040);
  v39 = *(v24 + (85 * (BYTE2(v17) & 0xF) - 15386) % 0x3CDu);
  v40 = *(v24 + (85 * ((v17 >> 20) & 0xF) - 15386) % 0x3CDu);
  LODWORD(STACK[0x4E4]) = v9;
  v41 = *(v24 + (85 * (v17 >> 12) - 15386) % 0x3CDu);
  v42 = *(v24 + (85 * ((v17 >> 8) & 0xF) + 50150) % ((((-50151 - 85 * ((v17 >> 8) & 0xF)) | (85 * ((v17 >> 8) & 0xF) + 50150)) & 0xDA9C18F2) + 627305179));
  v43 = ((16 * (v40 - ((2 * v40) & 0x162)) + 278747920) ^ (v39 - ((2 * v39) & 0x118) - 560753780) & 0x10800934 ^ 0x48778CDF ^ (v38 ^ 0x9094DCB) & ((v39 - ((2 * v39) & 0x118) - 560753780) ^ 0x216C6C47u)) << (((v39 & 0x29 ^ 0x29) + (v39 & 0x29)) & 0x5A);
  LOWORD(v39) = (85 * (v17 >> 4) - 15386) % 0x3CDu;
  LODWORD(v43) = (16 * (v41 - 2 * (v41 & 0xF)) - 648376080) ^ (v42 - ((2 * v42) & 0x15A) + 5325229) ^ (v43 - ((2 * v43) & 0x536FDA) + 11122669);
  v44 = *(v24 + (85 * (v17 & 0xF) - 15386) % 0x3CDu);
  v45 = v44 - ((2 * v44) & 0x74) + 624607802;
  v46 = ((v43 << 8) ^ 0x5084FFF) & (v45 ^ 0x2502F00) ^ (v43 << 8) & 0xD8951200;
  v47 = v35 ^ (16 * (v33 - ((2 * v33) & 0x118)) + 95729856);
  LODWORD(v43) = (*(v24 + v39) - ((2 * *(v24 + v39)) & 0x14) + 1932344842) ^ (v46 >> 4);
  v48 = (v47 >> 8) & 0xF;
  LODWORD(STACK[0x518]) = v48;
  v49 = 85 * ((v43 & 0xF0 ^ 0x80400372 | v48 ^ 7) ^ (((v47 >> 8) & 2) - 2143288416));
  v50 = (v49 + 58140) % 0x3CDu;
  LOBYTE(v43) = 16 * v43;
  v51 = v47 >> 4;
  LODWORD(STACK[0x504]) = v51;
  v52 = (v43 & 0xF0 ^ 0x875B6A7F) & (v51 ^ 0x875B6AFC) ^ 0x875B6AEF;
  v53 = (v52 + 684) * ((v43 & 0x50 ^ 0x10) + (v43 & 0x50 ^ 0x45)) % 0x3CD;
  LODWORD(STACK[0x500]) = v35 & 0xF;
  LODWORD(v43) = 85 * ((v35 & 0xF | (16 * (v45 & 0xF))) ^ 0xA8);
  v54 = *(v24 + (v43 + 28050) % 0x3CDu);
  v55 = LOBYTE(STACK[0x113F]);
  LODWORD(STACK[0x540]) = v55;
  LODWORD(STACK[0x53C]) = 2 * v55;
  v56 = 85 * ((v54 - ((2 * v54) & 0xFA) - 501587587) ^ (16 * (v55 - ((2 * v55) & 0xBBBBBBBB)) - 1338704432) ^ 0x522E9CAD);
  LODWORD(STACK[0x4E0]) = v56;
  LOBYTE(v43) = *(v24 + (v43 + 58140 - 973 * ((4414150 * (v43 + 58140)) >> 32)));
  LODWORD(v43) = *(v24 + (85 * (((v43 - ((2 * v43) & 0x54) - 86) ^ (*(v24 + (v56 + 58140) % 0x3CD) >> 4)) ^ 0xAA) + 28050) % 0x3CDu);
  v57 = *(v24 + (85 * v52 + 28050) % 0x3CDu);
  v58 = 85 * ((v57 - 2 * (v57 & 0x3F) + 586838335) ^ 0xDD6363CF ^ (16 * (v43 - ((2 * v43) & 0x5E)) - 6745360));
  LODWORD(v43) = *(v24 + (85 * (((*(v24 + v53) - ((2 * *(v24 + v53)) & 0x38) + 28) ^ (*(v24 + (v58 + 58140) % 0x3CDu) >> 4)) ^ 0x1C) + 28050) % 0x3CDu);
  v59 = *(v24 + (v49 + 28050) % 0x3CDu);
  v60 = 85 * ((v59 - ((2 * v59) & 0x1D4) + 1755521770) ^ 0xC8BEB0EA ^ (16 * (v43 - ((2 * v43) & 0x40)) - 1608674816));
  LODWORD(v43) = *(v24 + (85 * (((*(v24 + v50) - ((2 * *(v24 + v50)) & 0x52) + 41) ^ (*(v24 + (v60 + 58140) % 0x3CDu) >> 4)) ^ 0x29) + 28050) % 0x3CDu);
  v61 = v47 >> 12;
  LODWORD(STACK[0x4F4]) = v61;
  v62 = (((v46 >> 8) | 0xB69DA10F) & (v61 - 1231183472) | (v46 >> 8) & 0x60) ^ 0xB69DA1FC;
  v63 = *(v24 + (85 * v62 + 28050) % 0x3CDu);
  LODWORD(STACK[0x4F0]) = v47 >> 4;
  v64 = 85 * ((v63 - ((2 * v63) & 0xE4) + 1682350450) ^ 0xA79BD142 ^ (16 * (v43 - 2 * (v43 & 3)) - 1008898000));
  LOBYTE(v62) = *(v24 + (v62 + 684) * (230 - (((v47 >> 4) & 0x91 ^ 0x74D6E2AF) & ((v47 >> 4) & 0x91 ^ 0xF7DEF67F) ^ (((v47 >> 4) & 1) + 1960239806))) % 0x3CD);
  LOBYTE(v43) = (v62 - ((2 * v62) & 0xBF) + 95) ^ (*(v24 + (v64 + 58140) % 0x3CDu) >> 4);
  v65 = HIWORD(v47) & 0xF;
  LODWORD(STACK[0x4F8]) = v65;
  LODWORD(v43) = *(v24 + (85 * (v43 ^ 0x5F) + 28050) % 0x3CDu);
  v66 = v43 - ((2 * v43) & 0x17A);
  v67 = 85 * (((v46 >> 12) & 0xF0 ^ 0xE196EF1F) & (v65 ^ 0xE196EFF2) ^ 0xE196EFF7);
  LODWORD(v43) = *(v24 + (v67 + 28050) % 0x3CDu);
  v68 = 85 * ((16 * v66 - 350344240) ^ (v43 - ((2 * v43) & 0x162) + 1734122417) ^ 0x8C42B061);
  LODWORD(v43) = v12 - 888563974;
  v69 = ((v12 - 888563974) ^ 0xB40ACD07) & (2 * ((v12 - 888563974) & 0xA650ED80)) ^ (v12 - 888563974) & 0xA650ED80;
  v70 = ((2 * ((v12 - 888563974) ^ 0xB0AA1E07)) ^ 0x2DF5E70E) & ((v12 - 888563974) ^ 0xB0AA1E07) ^ (2 * ((v12 - 888563974) ^ 0xB0AA1E07)) & 0x16FAF386;
  v71 = (v70 ^ 0xC0E200) & (4 * v69) ^ v69;
  v72 = ((4 * (v70 ^ 0x120A1081)) ^ LODWORD(STACK[0x304])) & (v70 ^ 0x120A1081) ^ (4 * (v70 ^ 0x120A1081)) & 0x16FAF384;
  v73 = (v72 ^ 0x12EAC200) & (16 * v71) ^ v71;
  v74 = ((16 * (v72 ^ 0x4103183)) ^ 0x6FAF3870) & (v72 ^ 0x4103183) ^ (16 * (v72 ^ 0x4103183)) & 0x16FAF380;
  v75 = v73 ^ 0x16FAF387 ^ (v74 ^ 0x6AA3000) & (v73 << 8);
  v76 = v15 ^ 0xADFA3DFD ^ v43 ^ (2 * ((v75 << 16) & 0x16FA0000 ^ v75 ^ ((v75 << 16) ^ 0x73870000) & (((v74 ^ 0x1050C387) << 8) & 0x16FA0000 ^ 0x4080000 ^ (((v74 ^ 0x1050C387) << 8) ^ 0x7AF30000) & (v74 ^ 0x1050C387))));
  LODWORD(v43) = ((v15 ^ 0xA15D889B) + v14 - ((2 * ((v15 ^ 0xA15D889B) + v14)) & 0x194F6ACC) + 212317542) ^ v15 ^ 0xADFA3DFD;
  LODWORD(STACK[0x4EC]) = v15;
  v77 = ((v15 ^ 0x823FB24B) - 801476534) ^ ((v15 ^ 0x28A57C3A) + 2057354809) ^ ((v15 ^ 0xBC746EA) + 1505920233);
  v78 = (((v76 ^ 0x699537E8) - 1502405674) ^ ((v76 ^ 0x336A8C7B) - 57892793) ^ ((v76 ^ 0xF8F9047B) + 924788807)) + 1060134850;
  LODWORD(STACK[0x410]) = v78;
  v79 = LODWORD(STACK[0x560]) - v77 - v43;
  LODWORD(v43) = v78 + v43;
  v80 = v77 + 211284775 + v43;
  LODWORD(STACK[0x4FC]) = v80;
  LODWORD(STACK[0x530]) = v79 - 1261298763;
  v81 = v80 ^ (v79 - 1261298763);
  LODWORD(STACK[0x560]) = v43 - v81;
  v82 = (v43 - v81) ^ v81;
  v83 = LODWORD(STACK[0x448]) - v82;
  LODWORD(STACK[0x3F4]) = v82;
  LODWORD(STACK[0x49C]) = (85 * ((v83 >> 20) & 0xF) + 50150) % (((25 - 85 * ((v83 >> 20) & 0xF)) | (85 * ((v83 >> 20) & 0xF) + 50150)) & 0x3CD);
  v84 = *(v24 + (v60 + 28050) % 0x3CDu);
  v85 = *(v24 + (v58 + 28050) % 0x3CDu);
  v86 = *(v24 + (LODWORD(STACK[0x4E0]) + 28050) % 0x3CDu);
  v87 = *(v24 + (v64 + 28050) % 0x3CDu);
  v88 = (v86 - ((2 * v86) & 0xEEEEEEEE) - 2060036489) ^ 0x93EC313A ^ (16 * (v85 - ((2 * v85) & 0x180)) - 1945289728);
  LODWORD(STACK[0x4D0]) = v88;
  v89 = ((v87 + 414934 - ((2 * v87) & 0x152)) << 12) + 1912832;
  v90 = (((v84 - ((2 * v84) & 0x120)) << 8) + 1004965888) ^ v89 & 0x6528A000 ^ (v89 ^ 0x9A956FFF) & v88;
  v91 = 85 * ((HIWORD(v46) & 0xF0 | (v47 >> 20) & 0xF) ^ 0x64);
  LOBYTE(v43) = *(v24 + (v67 + 58140) % 0x3CD);
  v92 = v91 + 58140 - 973 * ((4414150 * (v91 + 58140)) >> 32);
  LODWORD(v43) = *(v24 + (85 * (((v43 - 2 * (v43 & 3) - 125) ^ (*(v24 + (v68 + 58140) % ((((v68 + 58140) & 0x181) + ((227 - v68) & 0x181)) | 0x2CCu)) >> 4)) ^ 0x83) + 28050) % 0x3CDu);
  v93 = *(v24 + (v91 + 28050) % 0x3CDu);
  LODWORD(v43) = (v93 - ((2 * v93) & 0xEA) + 77128309) ^ 0x17778665 ^ (16 * (v43 - ((2 * v43) & 0x82)) + 334455824);
  v94 = 85 * v43;
  v95 = *(v24 + (85 * v43 + 58140) % 0x3CDu);
  LOWORD(v43) = (85 * ((((v95 - 659539325 - ((2 * v95) & 0xFFFFFF07)) ^ 0xD8B03A83) >> (((v43 & 0x20 ^ 0x20) + (v43 & 0x20)) & 0xDF ^ 4)) ^ *(v24 + v92)) + 28050) % 0x3CDu;
  HIDWORD(v96) = (((v46 >> 21) & 0x60 ^ 0x12EA4347) & ((v47 >> 25) & 7 ^ 0x12EA4362) | (v46 >> 21) & 0x18) ^ 0x12EA437D;
  LODWORD(v96) = v47 << 7;
  v97 = 85 * (v96 >> 31);
  v98 = *(v24 + (v97 + 28050) % 0x3CDu);
  LODWORD(v43) = 85 * ((v98 - ((2 * v98) & 0x12E) + 1376945815) ^ 0x1D2ABD7 ^ (16 * (*(v24 + v43) - ((2 * *(v24 + v43)) & 0x1A8)) + 1405103424));
  v99 = (v43 + 28050) % 0x3CDu;
  LOBYTE(v97) = *(v24 + (v97 + 58140) % 0x3CDu);
  LODWORD(v43) = *(v24 + (85 * (((v97 - ((2 * v97) & 0xEE) - 9) ^ (*(v24 + (v43 + 58140) % 0x3CDu) >> 4)) ^ 0xF7) + 28050) % 0x3CDu);
  HIBYTE(v88) = HIBYTE(v47);
  LODWORD(STACK[0x4B4]) = v47;
  v100 = *(v24 + (85 * ((HIBYTE(v46) & 0xE0 ^ 0x574F) & ((v47 >> 28) ^ 0x57E5) ^ (HIBYTE(v46) & 0x10 | 0x2002) ^ 0x77E3) + 27077) % 0x3CDu);
  LODWORD(v43) = *(v24 + (85 * ((v100 + 1102639566 + (~(2 * v100) | 0xFFFFFE65)) ^ 0x202723CD ^ (16 * (v43 - ((2 * v43) & 0x40)) + 1637863936)) + 28050) % 0x3CD);
  v101 = *(v24 + v99) + (~(2 * *(v24 + v99)) | 0x2D);
  v102 = *(v24 + (v68 + 28050) % 0x3CDu);
  v103 = *(v24 + (v94 + 28050) % 0x3CDu);
  LODWORD(STACK[0x4C8]) = v90 ^ 0x1B9812AB;
  LODWORD(v43) = ((v101 << 24) - 369098752) ^ v90 ^ 0x1B9812AB ^ (((v102 - ((2 * v102) & 0x70)) << 16) - 1170735104) ^ (((v43 - ((2 * v43) & 0xC)) << 28) - 0x20000000);
  v104 = 85 * (((v43 >> 4) & 0xF0 ^ 0xFFFFFE1F) & (LODWORD(STACK[0x518]) ^ 0xAF8) ^ 0xA8F) + 5695;
  STACK[0x4B8] = v104 - 973 * ((17243 * v104) >> 24);
  LOBYTE(v104) = (v104 - -51 * ((17243 * v104) >> 24)) & 6;
  v105 = (((v43 ^ (((v103 - ((2 * v103) & 0x166)) << 20) - 886046720)) >> 8) ^ 0xA78959) >> (((v104 ^ 6) + v104) & 8 | 4);
  v106 = v105 - ((2 * v105) & 0xF519A) + 758622413;
  LODWORD(STACK[0x4A8]) = v106;
  LODWORD(STACK[0x4C4]) = v106 >> 8;
  v107 = *(v24 + (85 * ((((v106 >> 8) & 0x60 ^ 0xFFDF) & (HIBYTE(v88) & 0xF ^ 0xF464) | (v106 >> 8) & 0x90) ^ 0xF4EA) + 5695) % 0x3CDu);
  v108 = STACK[0x558];
  LODWORD(v43) = 1032767 - LODWORD(STACK[0x558]) + LODWORD(STACK[0x538]);
  v109 = ((v107 - ((2 * v107) & 0xFFFFFFCF)) << 24) - 419430400;
  LODWORD(STACK[0x4CC]) = v109;
  v110 = v109 & 0x10000000 ^ 0xFFEB7E96 ^ (v109 & 0x5E000000 ^ 0xA9030210) & (v109 & 0x5E000000 ^ 0xE717C359);
  v111 = v108 ^ (LODWORD(STACK[0x568]) + 1901757562);
  v112 = (v108 + LODWORD(STACK[0x550])) ^ v108;
  v113 = v43 - v112;
  v114 = v112 + v111;
  v115 = v114 + v108 + v110;
  LODWORD(STACK[0x4D8]) = v115;
  LODWORD(STACK[0x414]) = v115 + 1310242003;
  LODWORD(v43) = (v115 + 1310242003) ^ v113;
  v116 = v114 - 1391397992 - v43;
  LODWORD(STACK[0x40C]) = v116;
  v111 -= 1391397992;
  LODWORD(STACK[0x550]) = v111;
  v117 = LODWORD(STACK[0x418]) - 394048708;
  LODWORD(v96) = __ROR4__(__ROR4__(v116 ^ v43, 1) ^ 0xFF4E13F4, 31);
  LODWORD(STACK[0x3A4]) = v96 ^ 0xFE9C27E9;
  v118 = v117 + (v96 ^ 0xFE9C27E9);
  v119 = 85 * ((((v82 & 3 ^ 3) + (v82 & 3) + (v116 & 0x53) + (v116 & 0x53 ^ 0x53)) ^ ((v111 & 0xA3) + (v111 & 0xA3 ^ 0xA3) + 182)) & HIBYTE(v118)) + 50150;
  v120 = (*(v24 + (85 * (v118 >> 28) - 15386) % 0x3CDu) << 12) ^ (*(v24 + (v119 - 973 * ((4414150 * v119) >> 32))) << 8) | *(v24 + (85 * (BYTE2(v118) & 0xF) - 15386) % 0x3CDu);
  LODWORD(STACK[0x4E0]) = v118;
  LOWORD(v90) = (85 * (v118 >> 4) - 15386) % 0x3CDu;
  v121 = (v120 << 8) ^ (*(v24 + (85 * ((v118 >> 20) & 0xF) - 15386) % 0x3CDu) << 12);
  LODWORD(STACK[0x3E4]) = v121;
  LOWORD(v117) = (85 * (v118 & 0xF) - 15386) % 0x3CDu;
  v122 = *(v24 + (85 * (v118 >> 12) - 15386) % 0x3CDu);
  v123 = v121 | *(v24 + (85 * ((v118 >> 8) & 0xF) - 15386) % 0x3CDu);
  LODWORD(STACK[0x538]) = v123;
  v124 = (v123 << 8) ^ (v122 << 12);
  v125 = *(v24 + v117);
  v126 = v124;
  v127 = (v124 | v125) ^ (16 * *(v24 + v90));
  v128 = (*(v24 + (85 * (HIBYTE(v83) & 0xF) - 15386) % 0x3CDu) << 8) ^ (*(v24 + (85 * (v83 >> 28) - 15386) % 0x3CDu) << 12);
  LODWORD(STACK[0x418]) = v128;
  v129 = ((*(v24 + (85 * (BYTE2(v83) & 0xF) - 15386) % 0x3CDu) | v128) << 16) ^ (*(v24 + LODWORD(STACK[0x49C])) << 20);
  LODWORD(STACK[0x3A8]) = v129;
  v130 = (v129 | (*(v24 + (85 * ((v83 >> 8) & 0xF) - 15386) % 0x3CDu) << 8)) ^ (*(v24 + (85 * (v83 >> 12) - 15386) % 0x3CDu) << 12);
  LODWORD(v43) = *(v24 + (85 * (v83 & 0xF) - 15386) % 0x3CDu);
  v131 = v125 & 0xF;
  LODWORD(STACK[0x3E8]) = v131;
  v132 = 85 * (v131 & 0xFFFFFF0F | (16 * (v43 & 0xF)));
  LOWORD(v90) = (v132 + 28050) % 0x3CDu;
  v133 = v132 + 58140 - 973 * ((4414150 * (v132 + 58140)) >> 32);
  LOBYTE(v132) = *(v24 + (85 * (v83 >> 4) - 15386) % 0x3CDu) ^ ((v130 | v43) >> 4);
  LODWORD(v43) = *(v24 + v90);
  v134 = STACK[0x540];
  v135 = 16 * LODWORD(STACK[0x540]);
  LODWORD(STACK[0x568]) = v135;
  v136 = 85 * (v43 ^ v135);
  LODWORD(STACK[0x388]) = v136;
  LOWORD(v43) = (85 * (*(v24 + v133) ^ (*(v24 + (v136 + 58140 - 973 * ((4414150 * (v136 + 58140)) >> 32))) >> 4)) + 28050) % 0x3CDu;
  LODWORD(STACK[0x394]) = v127;
  v137 = 85 * ((v127 >> 4) | (16 * (v132 & 0xF)));
  v138 = 85 * (*(v24 + (v137 + 28050) % 0x3CDu) ^ (16 * *(v24 + v43)));
  LODWORD(STACK[0x380]) = v138;
  v139 = 85 * (v132 & 0xF0 | (v127 >> 8) & 0xF);
  LODWORD(v43) = 85 * (*(v24 + (v139 + 28050) % 0x3CDu) ^ (16 * *(v24 + (85 * (*(v24 + (v137 + 57167 - 973 * ((4414150 * (v137 + 57167)) >> 32))) ^ (*(v24 + (v138 + 58140 - 973 * ((4414150 * (v138 + 58140)) >> 32))) >> 4)) + 28050) % 0x3CDu)));
  LODWORD(STACK[0x374]) = v43;
  LOWORD(v139) = (85 * (*(v24 + (v139 + 58140 - 973 * ((4414150 * (v139 + 58140)) >> 32))) ^ (*(v24 + (v43 + 58140 - 973 * ((4414150 * (v43 + 58140)) >> 32))) >> 4)) + 28050) % 0x3CDu;
  LODWORD(STACK[0x378]) = v126;
  LODWORD(v43) = 85 * ((v130 >> 8) & 0xF0 | (v126 >> 12));
  LOWORD(v137) = (v43 + 28050) % 0x3CDu;
  LOWORD(v43) = *(v24 + (v43 + 58140 - 973 * ((4414150 * (v43 + 58140)) >> 32)));
  v140 = 85 * (*(v24 + v137) ^ (16 * *(v24 + v139)));
  LODWORD(STACK[0x370]) = v140;
  v141 = 85 * ((v130 >> 12) & 0xF0 | HIWORD(v126) & 0xF);
  v142 = *(v24 + v141 + 28050 - 973 * (((8828299 * (v141 + 28050)) >> 32) >> 1)) ^ (16 * *(v24 + (85 * (v43 ^ (*(v24 + (v140 + 58140 - 973 * ((4414150 * (v140 + 58140)) >> 32))) >> 4)) + 28050) % 0x3CDu));
  LODWORD(STACK[0x368]) = 85 * v142;
  v143 = 85 * (*(v24 + v141 + 58140 - 973 * (((8828299 * (v141 + 58140)) >> 32) >> 1)) ^ (*(v24 + (85 * v142 + 58140 - 973 * ((4414150 * (85 * v142 + 58140)) >> 32))) >> 4));
  LODWORD(STACK[0x36C]) = (v143 + 28050) % (((v143 + 28050) | (37485 - v143)) & 0xF08B ^ 0xF346u);
  v144 = LODWORD(STACK[0x41C]) - 1999194097;
  LODWORD(v43) = (v144 ^ 0xEB455E9B) & (2 * (v144 & 0xCB685F22)) ^ v144 & 0xCB685F22;
  v145 = LODWORD(STACK[0x570]) ^ 0x3FB5;
  LODWORD(STACK[0x518]) = v145;
  v146 = ((2 * ((v145 - 41592982) ^ v144)) ^ 0x6DDA6B72) & ((v145 - 41592982) ^ v144) ^ (2 * ((v145 - 41592982) ^ v144)) & 0x36ED35B8;
  LODWORD(v43) = (v146 ^ 0x24C02110) & (4 * v43) ^ v43;
  v147 = ((4 * (v146 ^ 0x12251489)) ^ 0xDBB4D6E4) & (v146 ^ 0x12251489) ^ (4 * (v146 ^ 0x12251489)) & 0x36ED35B8;
  LODWORD(v43) = (v147 ^ 0x12A414A0) & (16 * v43) ^ v43;
  v148 = ((16 * (v147 ^ 0x24492119)) ^ 0x6ED35B90) & (v147 ^ 0x24492119) ^ (16 * (v147 ^ 0x24492119)) & 0x36ED35B0;
  LODWORD(v43) = v43 ^ 0x36ED35B9 ^ (v148 ^ 0x26C11100) & (v43 << 8);
  v149 = v144 ^ (2 * ((v43 << 16) & 0x36ED0000 ^ v43 ^ ((v43 << 16) ^ 0x35B90000) & (((v148 ^ 0x102C2429) << 8) & 0x36ED0000 ^ 0x12C80000 ^ (((v148 ^ 0x102C2429) << 8) ^ 0x6D350000) & (v148 ^ 0x102C2429))));
  v150 = LODWORD(STACK[0x420]) - 1844683995 + v10;
  LODWORD(STACK[0x49C]) = v150;
  LODWORD(STACK[0x420]) = a7 - 826171990;
  LODWORD(v43) = (LODWORD(STACK[0x424]) ^ 0x368CC06E) & (2 * (STACK[0x424] & 0x38AEE86F)) ^ STACK[0x424] & 0x38AEE86F;
  v151 = ((2 * (LODWORD(STACK[0x424]) ^ 0x16D81068)) ^ 0x5CEDF00E) & (LODWORD(STACK[0x424]) ^ 0x16D81068) ^ (2 * (LODWORD(STACK[0x424]) ^ 0x16D81068)) & 0x2E76F806;
  LODWORD(v43) = (v151 ^ 0x464E004) & (4 * v43) ^ v43;
  v152 = (LODWORD(STACK[0x424]) ^ (826172336 - a7) ^ ((LODWORD(STACK[0x424]) ^ 0x19B) + 502) ^ ((LODWORD(STACK[0x424]) ^ 0x389) + 1000) ^ ((LODWORD(STACK[0x424]) ^ 0x27C) + 531)) & 0x3CD;
  LODWORD(v43) = (LODWORD(STACK[0x424]) ^ (2 * (((4 * v151) ^ 0xB9DBE01C) & v151 & (16 * (((4 * v151) ^ 0xB9DBE01C) & v151)) & (((v43 ^ 0x2E76F807 ^ ((4 * v151) ^ 0xB9DBE01C) & v151 & (16 * v43)) << 8) ^ 0x100) ^ v43 ^ 0x2E76F807 ^ ((4 * v151) ^ 0xB9DBE01C) & v151 & (16 * v43)))) & 0x3CD;
  v153 = (((v152 ^ 0x3E677684) + 821550262) ^ ((v152 ^ 0xC06CE70B) - 822325957) ^ ((v152 ^ 0xFE0B920E) - 258262976)) + 198762914 + (((v43 ^ 0xC241DD74) + 668445269) ^ ((v43 ^ 0x4E1B1A3) - 512244092) ^ ((v43 ^ 0xC6A06F5B) + 590747772));
  v154 = LODWORD(STACK[0x4A4]) + LODWORD(STACK[0x428]);
  v155 = *(v24 + (85 * (v154 >> 28) - 15386) % 0x3CDu);
  v156 = v155 - ((2 * v155) & 0x16E);
  v157 = (((v149 ^ 0x22B182F) - 5460189) ^ ((v149 ^ 0x1533DEFA) - 390829576) ^ ((v149 ^ 0xD8F8F285) + 629097865)) - v11 + 1696408170;
  v158 = ((v157 ^ 0x25483D77) - 923439372) ^ v157 ^ ((v157 ^ 0xBE19A6D9) + 1403319646) ^ ((v157 ^ 0x76CCC812) - 1687053417) ^ ((v157 ^ 0xFFDFFFC7) + 308456516);
  v159 = *(v24 + (85 * (HIBYTE(v154) & 0xF) - 15386) % 0x3CDu);
  v160 = *(v24 + (85 * ((v154 >> 20) & 0xF) - 15386) % 0x3CDu);
  v161 = *(v24 + (85 * (BYTE2(v154) & 0xF) - 15386) % 0x3CDu);
  v162 = ((LODWORD(STACK[0x4A0]) + (v156 << 12) + 2084388864) ^ (((v159 - ((2 * v159) & 0xFFFFFF3F)) << 8) - 484401408) ^ 0xD4EACF) & ((v161 - ((2 * v161) & 0x12E) + 1314668183) ^ 0xA3C178) ^ (v161 - ((2 * v161) & 0x12E) + 1314668183) & 0x3230;
  v163 = *(v24 + (85 * (v154 >> 12) - 15386) % 0x3CDu);
  LODWORD(STACK[0x4A4]) = v154;
  v164 = *(v24 + (85 * ((v154 >> 8) & 0xF) - 15386) % 0x3CDu);
  v165 = ((((v160 - ((2 * v160) & 0xE2)) << 12) + 1993805824) ^ (v162 << 8) ^ 0xD122FE) & ((v164 - ((2 * v164) & 0x2C) + 1805670166) ^ 0x5FA8E9) ^ (v164 - ((2 * v164) & 0x2C) + 1805670166) & 0x1201;
  v166 = *(v24 + (85 * (v154 & 0xF) - 15386) % 0x3CDu);
  v167 = v166 - ((2 * v166) & 0x38);
  v168 = *(v24 + (85 * (v154 >> 4) - 15386) % 0x3CDu);
  v169 = ((((v163 + 395236 - ((2 * v163) & 0xFFFFFFBF)) << 12) - 20480) ^ (v165 << 8) ^ 0x34770E0) & ((v167 - 946000100) ^ 0x3862D0FB) ^ (v167 - 946000100) & 0x18011F;
  LODWORD(STACK[0x494]) = v169;
  v170 = *(v24 + (85 * ((((v158 >> 28) ^ 0xBC71) - 2402) ^ (((v158 >> 28) ^ 0xC91B) - 31752) ^ (((v158 >> 28) ^ 0x756B) + 16264)) - 7456) % 0x3CDu);
  v171 = *(v24 + (85 * (((HIBYTE(v158) & 0xF ^ 0xA04C) - 30051) ^ ((HIBYTE(v158) & 0xF) + 21201) ^ ((HIBYTE(v158) & 0xF ^ 0x968E) - 17313)) - 29737) % 0x3CDu);
  LOWORD(v99) = (85 * (BYTE2(v158) & 0xF ^ 2) - 15386) % 0x3CDu;
  v172 = *(v24 + (85 * ((((v158 >> 20) & 0xF ^ 0xB897) - 32209) ^ (((v158 >> 20) & 0xF ^ 0x9A62) - 24356) ^ (((v158 >> 20) & 0xF ^ 0x22F1) + 6217)) + 17104) % 0x3CDu);
  v173 = ((v172 - 1455059238 - ((2 * v172) & 0x1B4)) ^ 0xA9458EDA) << ((v99 & 4 ^ 4) + (v99 & 4));
  v174 = (((v171 - ((2 * v171) & 0x124)) << 8) + 605852160) ^ ((v170 + 940091 + (~(2 * v170) | 0xFFF8B)) << 12) ^ (*(v24 + v99) - ((2 * *(v24 + v99)) & 0x1FC) + 12324094) ^ (v173 - ((2 * v173) & 0xB35806) + 14265347);
  LODWORD(STACK[0x490]) = v174;
  v175 = *(v24 + (85 * ((((v158 >> 12) ^ 0xCEB963EB) - 1213914853) ^ (((v158 >> 12) ^ 0x7F20DF6E) + 104635808) ^ (((v158 >> 12) ^ 0xB199BC8F) - 930742657)) - 912357830) % 0x3CD);
  LOWORD(v173) = (85 * ((((v158 >> 4) ^ 0xF2DF) + 8544) ^ ((v158 >> 4) - 11167) ^ (((v158 >> 4) ^ 0xE0A8) + 13097)) - 30786) % 0x3CDu;
  v176 = *(v24 + (85 * ((((v158 >> 8) & 0xF ^ 0x66F2) + 24140) ^ (((v158 >> 8) & 0xF) - 15174) ^ (((v158 >> 8) & 0xF ^ 0xA8DE) - 28568)) - 4232) % 0x3CDu);
  v177 = (16 * (v175 - ((2 * v175) & 0x58)) - 1300569408) ^ (v176 - ((2 * v176) & 0x20) - 329102320) & 0x44004242 ^ ((v174 << 8) ^ 0x726840BD) & ((v176 - ((2 * v176) & 0x20) - 329102320) ^ 0x139DB3ED);
  LODWORD(STACK[0x47C]) = v177;
  v178 = *(v24 + v173) - 2 * (*(v24 + v173) & 3);
  v179 = *(v24 + (85 * (((v158 & 0xF ^ 0xDB3C) + 9235) ^ ((v158 & 0xF ^ 0xB5A9) + 19080) ^ ((v158 & 0xF ^ 0x6E9E) - 28239)) + 3144) % 0x3CDu);
  v180 = v179 - ((2 * v179) & 0x17A);
  v181 = ((v177 << 8) ^ 0x513460F0) & ((v180 + 1350013885) ^ 0xAF886C40) ^ (v180 + 1350013885) & 0x40E200;
  v182 = v169 ^ (16 * (v168 - ((2 * v168) & 0x152)) + 746752656);
  LODWORD(STACK[0x498]) = v182;
  v182 ^= 0x7E5FF56Cu;
  v183 = 85 * (((16 * v180 - 48) & 0xF0 | v182 & 0xF) ^ 0xD0);
  LODWORD(STACK[0x478]) = (v178 - 1004617725) ^ (v181 >> 4);
  v184 = v182 >> 4;
  v185 = v182;
  LODWORD(STACK[0x440]) = v182;
  v186 = (((16 * (((v178 + 3) ^ (v181 >> 4)) & 0xF)) ^ 0x6CDF0A33) & (v184 ^ 0x6CDF0AFF) | (v182 >> 4) & 0xC) ^ 0x6CDF0AF3;
  v187 = *(v24 + (v183 + 28050) % 0x3CDu);
  v188 = STACK[0x53C];
  v189 = 85 * ((v187 - ((2 * v187) & 0x30) - 1214767592) ^ (16 * (v134 - (STACK[0x53C] & 0x12A)) + 1565800784) ^ 0xEACC2748);
  LOBYTE(v183) = *(v24 + (v183 + 58140 - 973 * ((4414150 * (v183 + 58140)) >> 32)));
  v190 = *(v24 + (85 * (((v183 - ((2 * v183) & 0xBC) - 34) ^ (*(v24 + (v189 + 58140) % 0x3CD) >> 4)) ^ 0xDE) + 28050) % 0x3CDu);
  LODWORD(STACK[0x46C]) = 85 * v186;
  v191 = *(v24 + (85 * v186 + 28050) % 0x3CDu);
  v192 = 85 * ((v191 - ((2 * v191) & 0x14E) - 505353817) ^ 0x9F3EF757 ^ (16 * (v190 - ((2 * v190) & 0xFFFFFFDF)) + 2128486128));
  LODWORD(STACK[0x444]) = v192;
  v193 = *(v24 + (v192 + 28050) % 0x3CD);
  LODWORD(STACK[0x384]) = (85 * ((((v150 >> 28) ^ 0x7371AC45) - 343517240) ^ (((v150 >> 28) ^ 0xA8224924) + 819311271) ^ (((v150 >> 28) ^ 0xDB53E561) + 1134829284)) + 900350311) % v153;
  LODWORD(v43) = v193 + 72769524 + (~(2 * v193) | 0xFFFFE19);
  v194 = *(v24 + (v189 + 28050) % 0x3CD);
  v195 = v194 - ((2 * v194) & 0xFFFFFFF7) + 2144320763;
  v196 = v195 ^ (16 * v43);
  LODWORD(STACK[0x468]) = v196;
  LODWORD(STACK[0x45C]) = 16 * v195;
  LODWORD(STACK[0x448]) = (85 * ((v196 & 0xF0 ^ 0x1FBC) & (v184 ^ 0x7FFC) ^ ((v185 >> 4) & 3 | 0x6080) ^ 0x7FFC) + 5695) % ((((16 * v195) & 0xE0 ^ 0x6024) & ((16 * v195) & 0xE0 ^ 0xE8AE) ^ (16 * v195) & 0x60 ^ 0x64C5) - 276);
  v197 = LODWORD(STACK[0x430]) - 278056783 + v113;
  v198 = *(v24 + (85 * (v197 >> 28) - 15386) % 0x3CDu);
  v199 = v198 + 968216 - ((2 * v198) & 0x16);
  v200 = *(v24 + (85 * ((v197 >> 20) & 0xF) - 15386) % 0x3CDu);
  LODWORD(v43) = v200 - ((2 * v200) & 0x40);
  v201 = *(v24 + (85 * (HIBYTE(v197) & 0xF) - 15386) % 0x3CDu);
  v202 = v201 + 625543 - ((2 * v201) & 0xFFFFFF83);
  v203 = LODWORD(STACK[0x42C]) - LODWORD(STACK[0x530]);
  v204 = *(v24 + (85 * (BYTE2(v197) & 0xF) - 15386) % 0x3CDu);
  v205 = v204 + 2052827042 - ((2 * v204) & 0xFFFFFFCF) + 2629;
  v206 = (((v199 << 12) + 16723968) ^ 0x1DF4C3 ^ ((v202 << 8) + 16857600)) & (v205 ^ 0xA44E34) ^ v205 & 0x3A3C;
  v207 = *(v24 + (85 * ((v197 >> 8) & 0xF) - 15386) % 0x3CDu);
  LODWORD(STACK[0x4A0]) = 16736256;
  LODWORD(v43) = (((v43 << 12) + 1005715456) ^ (v206 << 8) ^ 0x952065) & ((v207 - ((2 * v207) & 0x114) + 1955094922) ^ 0x779E77) ^ (v207 - ((2 * v207) & 0x114) + 1955094922) & 0x8389A;
  LODWORD(STACK[0x470]) = v197;
  v208 = *(v24 + (85 * (v197 >> 12) - 15386) % 0x3CDu);
  v209 = *(v24 + (85 * (v197 >> 4) - 15386) % 0x3CDu);
  v210 = *(v24 + (85 * (v197 & 0xF) - 15386) % 0x3CDu);
  v211 = (((v208 - ((2 * v208) & 0x55555555)) << 12) + 1330290688) ^ (v43 << 8);
  LODWORD(v43) = v210 - ((2 * v210) & 0x72) + 889370937;
  v212 = (v211 ^ 0x7AC4F728) & (v43 ^ 0xCAFD4607) ^ v43 & 0x100207D7;
  LODWORD(STACK[0x430]) = v212;
  v213 = *(v24 + (85 * (v203 >> 28) - 15386) % 0x3CDu);
  v214 = v213 - ((2 * v213) & 0xFFFFFF8F);
  v215 = *(v24 + (85 * (HIBYTE(v203) & 0xF) - 15386) % 0x3CDu);
  v216 = v215 - ((2 * v215) & 0xD4);
  v217 = *(v24 + (85 * ((v203 >> 20) & 0xF) - 15386) % 0x3CDu);
  v218 = *(v24 + (85 * (BYTE2(v203) & 0xF) - 15386) % 0x3CDu);
  v219 = (((v214 << 12) + 237793280) ^ 0x7F91AE ^ ((v216 << 8) - 369595904)) & ((v218 - ((2 * v218) & 0xE8) + 2069946484) ^ 0x9F1FDB) ^ (v218 - ((2 * v218) & 0xE8) + 2069946484) & 0x7451;
  LOWORD(v218) = (85 * ((v203 >> 8) & 0xF) - 15386) % 0x3CDu;
  v220 = *(v24 + v218) - ((2 * *(v24 + v218)) & 0x5555);
  v221 = *(v24 + (85 * (v203 >> 12) - 15386) % 0x3CDu);
  v222 = ((((v217 + 893045 - ((2 * v217) & 0xA6)) << 12) + 32366592) ^ (v219 << 8) ^ 0x47CAD2) & ((v220 + 1551776682) ^ 0x81C454) ^ (v220 + 1551776682) & 0x223B2D;
  v223 = 85 * (v203 >> ((v218 & 4 ^ 4) + (v218 & 4))) + 50150;
  v224 = *(v24 + (v223 - 973 * ((4414150 * v223) >> 32)));
  v225 = *(v24 + (85 * (v203 & 0xF) - 15386) % 0x3CDu);
  v226 = (((v221 - ((2 * v221) & 0x18C)) << 12) - 1155768320) ^ (v222 << 8);
  v227 = v225 - ((2 * v225) & 0x7C) + 1919920702;
  v228 = (v224 - ((2 * v224) & 0xCA) - 1805772443) ^ (((v226 ^ 0x54F822F0) & (v227 ^ LODWORD(STACK[0x300])) ^ v227 & 0x62240300u) >> 4);
  LODWORD(v43) = 85 * ((v43 & 0xF | (16 * (v227 & 0xF))) ^ 0xE9);
  v229 = *(v24 + (v43 + 28050) % 0x3CDu);
  LOBYTE(v224) = *(v24 + (v43 + 58140 - 973 * ((4414150 * (v43 + 58140)) >> 32)));
  LODWORD(v43) = 85 * ((16 * (v134 - (v188 & 0x7E)) + 166552560) ^ 0xD0411C8F ^ (v229 - 2 * (v229 & 0x7F) - 643006593));
  v230 = *(v24 + (85 * (((v224 - ((2 * v224) & 0xEC) - 10) ^ (*(v24 + (v43 + 58140) % 0x3CDu) >> 4)) ^ 0xF6) + 28050) % 0x3CDu);
  v231 = v212 ^ (16 * (v209 - ((2 * v209) & 0x1FC)) + 846270432);
  v232 = ((v231 >> 4) | (16 * (v228 & 0xF))) ^ 0xAD;
  v233 = *(v24 + (85 * v232 + 28050) % 0x3CDu);
  v234 = (((v232 + 684) | (83 - v232)) & 0x55) * (v232 + 684);
  v235 = 85 * ((16 * (v230 + (~(2 * v230) | 0xFFFFE2F)) - 2043715952) ^ (v233 + 72769524 - ((2 * v233) & 0x1D0) + 1012) ^ 0x82793D68);
  LOBYTE(v234) = *(v24 + (v234 - 973 * ((4414150 * v234) >> 32)));
  LOWORD(v234) = (85 * (((*(v24 + (v235 + 58140) % 0x3CD) >> 4) | 0x40) ^ (v234 + ((2 * v234) & 0x80) + 64)) + 28050) % 0x3CDu;
  v236 = (v231 >> 8) & 0xF;
  LODWORD(STACK[0x42C]) = v236;
  v237 = 85 * ((v228 & 0xF0 ^ 0x952B13F) & (v236 ^ 0x952B1F3) ^ 0x952B1F5);
  v238 = (16 * (*(v24 + v234) - ((2 * *(v24 + v234)) & 0x13A)) + 1828284880) ^ 0x6CF969D0;
  v239 = *(v24 + (v237 + 28050) % 0x3CDu);
  v240 = v238 + v239 - 2 * (v238 & v239);
  LOBYTE(v237) = *(v24 + (v237 + 58140) % 0x3CDu);
  LOWORD(v237) = (85 * (((v237 - ((2 * v237) & 0x2C) + 22) ^ (*(v24 + (((v240 + 684) | (83 - v240)) & 0x81 ^ 0xD4u) * (v240 + 684) % 0x3CD) >> 4)) ^ 0x16) + 28050) % 0x3CDu;
  v241 = v231 >> 12;
  LODWORD(STACK[0x428]) = v241;
  v242 = 85 * ((((v228 >> 4) & 0xF0 ^ 0x83F60619) & (v241 ^ 0x87F6A6F6) | (v231 >> 12) & 6) ^ 0x83F6063B);
  v243 = *(v24 + (v242 + 28050) % 0x3CDu);
  v244 = (v243 - ((2 * v243) & 0x1BC) - 1518087458) ^ 0x3CFA1E6E ^ (16 * (*(v24 + v237) - ((2 * *(v24 + v237)) & 0x196)) - 1720070992);
  v245 = HIWORD(v231) ^ 0xCD1A;
  v246 = 85 * ((((v228 >> 12) & 0xF0 ^ 0x3C0B5BDE) & (~(v245 >> 4) | 0xFFFFFFF0) | (v245 >> 4) & 1) ^ 0x3C0B5BCE);
  LODWORD(v43) = *(v24 + (v43 + 28050) % 0x3CDu);
  v247 = *(v24 + (v235 + 28050) % 0x3CD);
  v248 = *(v24 + (85 * v240 + 28050) % 0x3CDu);
  v249 = v248 - ((2 * v248) & 0x18A);
  v250 = *(v24 + 85 * ((((v244 & 0x14A ^ 0x14A) + (v244 & 0x14A)) | 0x14Au) + v244) % 0x3CD);
  LOBYTE(v220) = *(v24 + (v242 + 58140) % 0x3CD);
  v251 = *(v24 + (85 * (((v220 - ((2 * v220) & 0x64) + 50) ^ (*(v24 + (85 * v244 + 58140) % (((227 - 85 * v244) | (85 * v244 + 58140)) & 0x3CDu)) >> 4)) ^ 0x32) + 28050) % 0x3CDu);
  v252 = 85 * ((((v228 >> 8) | 0x6580AC0F) & ((BYTE2(v231) ^ 0x1A) & 0xF ^ 0x6580ACA4) | (v228 >> 8) & 0x50) ^ 0x6580ACE4);
  v253 = *(v24 + (v252 + 28050) % 0x3CDu);
  v254 = (v253 - 2 * (v253 & 1) + 1804534785) ^ 0x85147671 ^ (16 * (v251 - ((2 * v251) & 0x4E)) - 291802512);
  v255 = (v252 + 58140) % 0x3CDu;
  v254 *= 85;
  v256 = (v254 + 28050) % 0x3CD;
  v257 = *(v24 + (85 * (((*(v24 + v255) - ((2 * *(v24 + v255)) & 0x70) - 72) ^ (*(v24 + (v254 + 58140) % 0x3CD) >> 4)) ^ 0xB8) + 28050) % 0x3CDu);
  v258 = (16 * (v257 - ((2 * v257) & 0xDDDDDDDD)) - 1065992480) ^ 0xC0763EE0;
  v259 = *(v24 + (v246 + 28050) % (((v246 + 28050) | (621 - v246)) & 0x3CD));
  v260 = 85 * ((-v258 ^ 0xA3E13289 ^ (v259 - (v258 ^ v259)) ^ (v258 - 1545522551 - ((2 * v258) & 0x47C26500))) + v259);
  v261 = (v260 + 28050) % 0x3CD;
  LOBYTE(v255) = *(v24 + (v246 + 58140) % 0x3CD);
  v262 = *(v24 + (85 * (((*(v24 + (v260 + 58140) % 0x3CD) >> 4) | 0x50) ^ (v255 + (~(2 * v255) | 0x5F) + 81)) + 28050) % 0x3CDu);
  v263 = v245 >> 4 >> (((v262 & 0x13 ^ 0x13) + (v262 & 0x13)) & 0xE1 ^ 5) >> (~((v262 & 0x13 ^ 0x13) + (v262 & 0x13)) & 0x12);
  v264 = 85 * ((v263 & 0xF | (16 * ((v228 >> 20) & 0xF))) ^ 0x30);
  v265 = *(v24 + (v264 + 28050) % 0x3CDu);
  v266 = 85 * ((v265 - ((2 * v265) & 0xFFFFFFC7) + 1956727779) ^ (16 * (v262 + 183822444 - ((2 * v262) & 0x98)) - 512) ^ 0xDBEFCF23);
  v267 = *(v24 + (v266 + 28050) % 0x3CD);
  LOBYTE(v264) = *(v24 + (v264 + 58140 - 973 * ((4414150 * (v264 + 58140)) >> 32)));
  v268 = *(v24 + (85 * (((v264 - ((2 * v264) & 0x8A) - 59) ^ (*(v24 + (v266 + 58140) % 0x3CD) >> 4)) ^ 0xC5) + 28050) % 0x3CDu);
  v269 = (16 * (v247 - ((2 * v247) & 0xC4)) + 1039201824) ^ (v43 - ((2 * v43) & 0x172) + 191519673) ^ ((v249 << 8) + 1184154880) ^ (((v250 - ((2 * v250) & 0x12E)) << 12) - 1907789824) ^ (((*(v24 + v256) - ((2 * *(v24 + v256)) & 0x19A)) << 16) + 1976369152) ^ (((*(v24 + v261) - ((2 * *(v24 + v261)) & 0x22)) << 20) + 286261248);
  LODWORD(STACK[0x41C]) = v269;
  v270 = *(v24 + (85 * ((((v263 >> 4) ^ 0xA221) & ((v228 >> 20) & 0xF0 ^ 0xABDF) | (v228 >> 20) & 0xD0) ^ 0xA2B1) + 28050) % 0x3CDu);
  LODWORD(STACK[0x3CC]) = v270;
  v271 = v270 - ((2 * v270) & 0x15A) + 243985069;
  LODWORD(STACK[0x3C8]) = v271;
  v272 = *(v24 + (85 * (v271 ^ 0x74C8A60D ^ (16 * (v268 - ((2 * v268) & 0x194u)) + 2051165344)) + 28050) % 0x3CD);
  v273 = v269 ^ (((v267 - ((2 * v267) & 0xC)) << 24) + 100663296);
  LODWORD(STACK[0x3C4]) = v273;
  v274 = (((((v272 - ((2 * v272) & 4)) << 28) + 1610612736) ^ 0x3D1E8B64) + 0x40000000) ^ v273;
  LODWORD(STACK[0x424]) = v274;
  LODWORD(v43) = (v274 >> 20) ^ 0xF9A;
  LODWORD(STACK[0x38C]) = v231;
  v275 = (v274 >> 20) & 5 ^ 0x6F9D3CF ^ (v43 & 0xD ^ 0x6F9D00A) & ((v43 & 0xD) + 117035842);
  LODWORD(v43) = 85 * (((16 * (v43 & 0xF)) ^ 0xC46A52E5) & ((v231 >> 20) & 0xF ^ 0xE7EF53F4) ^ ((v231 >> 20) & 0xA | 0xC46A52C5)) - v275 + 5695;
  LODWORD(STACK[0x390]) = ((v43 ^ 0xB33F35DD) + 1287703075 + ((2 * v43) & 0x667E6BBA)) % v275;
  v276 = (LODWORD(STACK[0x550]) ^ 0x5ACAE6E) + 1522087249;
  LODWORD(STACK[0x33C]) = v276;
  v277 = STACK[0x3A4];
  v278 = LODWORD(STACK[0x3A4]) ^ v276;
  LODWORD(STACK[0x530]) = v278;
  LODWORD(STACK[0x340]) = v278 ^ 0x30543D75;
  v279 = (v278 ^ 0x30543D75) + LODWORD(STACK[0x454]);
  v280 = 85 * (HIWORD(LODWORD(STACK[0x3A8])) & 0xF0 | (LODWORD(STACK[0x3E4]) >> 12));
  v281 = 85 * (*(v24 + (v280 + 28050) % 0x3CDu) ^ (16 * *(v24 + LODWORD(STACK[0x36C]))));
  v282 = v281 + 28050 - 973 * ((4414150 * (v281 + 28050)) >> 32);
  LOWORD(v280) = (85 * (*(v24 + (v280 + 58140 - 973 * ((4414150 * (v280 + 58140)) >> 32))) ^ (*(v24 + (v281 + 58140) % 0x3CDu) >> 4)) + 28050) % 0x3CDu;
  v283 = 85 * ((LODWORD(STACK[0x3A8]) >> 20) & 0xF0 | HIWORD(LODWORD(STACK[0x3E4])) & 0xF);
  v284 = 85 * (*(v24 + (v283 + 28050) % 0x3CDu) ^ (16 * *(v24 + v280)));
  v285 = v284 + 28050 - 973 * ((4414150 * (v284 + 28050)) >> 32);
  v286 = *(v24 + (LODWORD(STACK[0x388]) + 28050 - 973 * ((4414150 * (LODWORD(STACK[0x388]) + 28050)) >> 32)));
  v287 = v286 ^ (16 * *(v24 + (LODWORD(STACK[0x380]) + 28050 - 973 * ((4414150 * (LODWORD(STACK[0x380]) + 28050)) >> 32))));
  v288 = v287 ^ (*(v24 + (LODWORD(STACK[0x374]) + 28050 - 973 * ((4414150 * (LODWORD(STACK[0x374]) + 28050)) >> 32))) << 8);
  v289 = v288 ^ (*(v24 + (LODWORD(STACK[0x370]) + 28050 - 973 * ((4414150 * (LODWORD(STACK[0x370]) + 28050)) >> 32))) << 12);
  v290 = v289 ^ (*(v24 + (LODWORD(STACK[0x368]) + 28050 - 973 * ((4414150 * (LODWORD(STACK[0x368]) + 28050)) >> 32))) << 16);
  v291 = 85 * (*(v24 + (85 * ((LODWORD(STACK[0x418]) >> 8) & 0xF0 | (LODWORD(STACK[0x538]) >> 20) & 0xF) + 28050) % 0x3CDu) ^ (16 * *(v24 + (85 * (*(v24 + (v283 + 58140 - 973 * ((4414150 * (v283 + 58140)) >> 32))) ^ (*(v24 + (v284 + 58140 - 973 * ((4414150 * (v284 + 58140)) >> 32))) >> 4)) + 28050) % 0x3CDu))) + 28050;
  LOWORD(v102) = (85 * ((v288 >> 4) & 0xF0 | (LODWORD(STACK[0x394]) >> 8) & 0xF) + 5695) % 0x3CDu;
  v292 = v290 ^ (*(v24 + v282) << 20) ^ (*(v24 + v285) << 24);
  v293 = v292 ^ (*(v24 + (v291 - 973 * ((4414150 * v291) >> 32))) << 28);
  v294 = 85 * ((((LODWORD(STACK[0x378]) >> 12) | 0x91666) - ((LODWORD(STACK[0x378]) >> 12) & 0x6E999) + ((v293 >> 12) & 0x84BAE) + ((v293 >> 12) & 0x84BAE ^ 0x84BAE) + 957947) & (LODWORD(STACK[0x378]) >> 12) ^ (v289 >> 8) & 0xF0) + 5695;
  LODWORD(v43) = (*(v24 + (85 * ((v292 >> 20) & 0xF0 | HIWORD(LODWORD(STACK[0x3E4])) & 0xF) + 5695) % 0x3CDu) << 24) ^ (*(v24 + (85 * (((v290 ^ (*(v24 + v282) << 20)) >> 16) & 0xF0 | (LODWORD(STACK[0x3E4]) >> 12)) + 5695) % 0x3CDu) << 20);
  LOWORD(v289) = (85 * (HIBYTE(v293) & 0xF0 | (LODWORD(STACK[0x538]) >> 20) & 0xF) + 5695) % 0x3CDu;
  v295 = *(v24 + (85 * ((v290 >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x378])) & 0xF) + 5695) % 0x3CDu);
  v296 = *(v24 + (85 * (v287 & 0xF0 | (LODWORD(STACK[0x394]) >> 4)) + 5695) % 0x3CDu);
  v297 = *(v24 + (85 * (STACK[0x3E8] & 0xFF0F | (16 * (v286 & 0xF))) + 5695) % 0x3CDu);
  LODWORD(STACK[0x388]) = v297;
  v298 = v297 ^ (16 * v296);
  LODWORD(STACK[0x380]) = v298;
  v299 = *(v24 + v294 - 973 * (((141252779 * v294) >> 32) >> 5));
  v300 = v298 ^ (*(v24 + v102) << 8);
  LODWORD(STACK[0x378]) = v300;
  v301 = v300 ^ (v299 << 12);
  LODWORD(STACK[0x374]) = v301;
  v302 = v301 ^ (v295 << 16);
  v303 = v43 ^ v302;
  v304 = 85 * ((v43 ^ v302 ^ (*(v24 + v289) << 28)) >> 28) + 80750;
  v305 = *(v24 + (v304 - 973 * ((4414150 * v304) >> 32)));
  LODWORD(v43) = *(v24 + (85 * (HIBYTE(v303) & 0xF) + 80750 - 973 * ((4414150 * (85 * (HIBYTE(v303) & 0xF) + 80750)) >> 32)));
  v306 = *(v24 + (85 * (HIWORD(v302) & 0xF) + 80750 - 973 * ((4414150 * (85 * (HIWORD(v302) & 0xF) + 80750)) >> 32)));
  v307 = *(v24 + (85 * ((v303 >> 20) & 0xF) + 80750 - 973 * ((4414150 * (85 * ((v303 >> 20) & 0xF) + 80750)) >> 32)));
  v308 = v306 - ((2 * v306) & 0x12);
  LODWORD(STACK[0x3E8]) = v308;
  v309 = ((((v43 - ((2 * v43) & 0xE2)) << 8) + 432959744) ^ 0xB96B0E32 ^ (((v305 + 438734 - ((2 * v305) & 0x1A4)) << 12) + 6307840)) & ((v308 + 2008229641) ^ 0x884CD836) ^ (v308 + 2008229641) & 0x1421A0CD;
  v310 = (((v307 + 414934 - ((2 * v307) & 0x42)) << 12) + 13938688) ^ (v309 << 8);
  LODWORD(STACK[0x3E4]) = v309;
  LODWORD(STACK[0x3A8]) = v310;
  v311 = STACK[0x3F4];
  v312 = STACK[0x410];
  LODWORD(v43) = (LODWORD(STACK[0x410]) ^ 0x5ACAE6E) + 1522087249;
  v313 = (LODWORD(STACK[0x3F4]) - ((2 * LODWORD(STACK[0x3F4])) & 0xA4FC7C76) - 763478469) ^ v43 ^ v310 & 0x10541400 ^ (v310 & 0x30543D00 ^ 0xB3DF4200) & (v310 & 0x30543D00 ^ 0xD7DFEBAB);
  v314 = ((v309 & 0x55 ^ 0x44) + ((v308 + 2008229641) & 0x55 ^ 1)) * (((v279 >> 8) & 0xF) + 590);
  LODWORD(STACK[0x37C]) = v279;
  v315 = *(v24 + (85 * (v279 >> 12) - 15386) % 0x3CDu);
  v316 = *(v24 + (85 * ((v279 >> 20) & 0xF) - 15386) % 0x3CDu);
  v317 = *(v24 + (85 * (v279 >> 28) - 15386) % 0x3CDu);
  v318 = *(v24 + (85 * (HIBYTE(v279) & 0xF) - 15386) % 0x3CDu);
  v319 = *(v24 + (85 * (BYTE2(v279) & 0xF) - 15386) % 0x3CDu);
  v320 = *(v24 + (v314 - 973 * ((4414150 * v314) >> 32)));
  v321 = ((((v316 + 185903 - ((2 * v316) & 0x20)) << 12) + 16650240) ^ ((((((v318 + (~(2 * v318) | 0xFFFF23)) << 8) - 1341231360) ^ (((v317 + (~(2 * v317) | 0xFFF0D)) << 12) + 1641521152) ^ 0x1C3318) & ((v319 - ((2 * v319) & 0x11A) + 998278541) ^ 0x7F7A92) ^ (v319 - ((2 * v319) & 0x11A) + 998278541) & 0x2E7) << 8) ^ 0xCE46D0) & ((v320 - ((2 * v320) & 0x1E4) - 1552652814) ^ 0x8B9A24) ^ (v320 - ((2 * v320) & 0x1E4) - 1552652814) & STACK[0x2FC];
  LODWORD(STACK[0x394]) = v321;
  v322 = *(v24 + (85 * (v279 >> 4) - 15386) % 0x3CDu);
  v323 = *(v24 + (85 * (v279 & 0xF) + 50150) % (((25 - 85 * (v279 & 0xF)) | (85 * (v279 & 0xF) + 50150)) & 0x3CD));
  LODWORD(STACK[0x350]) = -73728;
  v324 = (((v315 + 564144 - 2 * (v315 & 0x1F)) << 12) + 6746112) ^ (v321 << 8);
  v325 = v323 - ((2 * v323) & 0xFFFFFFCF) - 1479261465;
  LOWORD(v279) = (((v315 - 25680 - 2 * (v315 & 0x1F)) << 12) - 4096) ^ (v321 << 8);
  LODWORD(STACK[0x35C]) = v324;
  v326 = v324 & 0xA029E900 ^ (16 * (v322 - ((2 * v322) & 0x126)) - 2087491280) ^ (v324 ^ 0x30015FF) & (v325 ^ 0xF8025434);
  v327 = LODWORD(STACK[0x434]) + 412406245 - (v313 ^ 0x71F5414E);
  v328 = *(v24 + (85 * ((LOWORD(STACK[0x434]) - 11803 - (v313 ^ 0x414E)) >> 12) - 15386) % 0x3CDu);
  v329 = *(v24 + (85 * ((v327 >> 20) & 0xF) - 15386) % 0x3CDu);
  v330 = *(v24 + (85 * (v327 >> 28) - 15386) % 0x3CDu);
  v331 = *(v24 + (85 * (HIBYTE(v327) & 0xF) - 15386) % 0x3CDu);
  v332 = *(v24 + (85 * (BYTE2(v327) & 0xF) - 15386) % 0x3CDu);
  v333 = ((((v330 + 760908 - ((2 * v330) & 0xBC)) << 12) + 28385280) ^ (((v331 + 6315611 - ((2 * v331) & 0x7A)) << 8) + 16769536) ^ 0xB174D6) & ((v332 - ((2 * v332) & 0x1F8) + 1994935292) ^ 0x17B403) ^ (v332 - ((2 * v332) & 0x1F8) + 1994935292) & 0x629;
  v334 = *(v24 + (85 * ((v327 >> 8) & 0xF) - 15386) % 0x3CDu);
  v335 = ((((v329 + 395236 - ((2 * v329) & 0x152)) << 12) + 32264192) ^ (v333 << 8) ^ 0x979F14) & ((v334 - ((2 * v334) & 0x15C) + 38598574) ^ 0xB308D3) ^ (v334 - ((2 * v334) & 0x15C) + 38598574) & 0xEEB;
  v336 = *(v24 + (85 * ((LOWORD(STACK[0x434]) - 11803 - (v313 ^ 0x414E)) & 0xF) - 15386) % 0x3CDu);
  v337 = (((v328 + 1008551 - ((2 * v328) & 0x80)) << 12) + 12161024) ^ (v335 << 8);
  v338 = v336 - ((2 * v336) & 0xFFFFFF7F) - 1078286657;
  v339 = *(v24 + (85 * ((LOBYTE(STACK[0x434]) - 27 - (v313 ^ 0x4E)) >> 4) - 15386) % 0x3CDu);
  v340 = v325 & 0xF ^ 7;
  LODWORD(STACK[0x370]) = v340;
  v341 = 85 * ((v340 & 0xFFFFFF0F | (16 * (v338 & 0xF))) ^ 0xF0);
  v342 = 85 * (LODWORD(STACK[0x568]) ^ *(v24 + (v341 + 28050) % 0x3CDu));
  LODWORD(STACK[0x34C]) = v342;
  LOWORD(v341) = (85 * (*(v24 + (v341 + 58140 - 973 * ((4414150 * (v341 + 58140)) >> 32))) ^ (*(v24 + (v342 + 58140 - 973 * ((4414150 * (v342 + 58140)) >> 32))) >> 4)) + 28050) % 0x3CDu;
  v343 = (v326 >> 4) ^ 0xE;
  LODWORD(STACK[0x36C]) = v343;
  v344 = (v339 - ((2 * v339) & 0x84) + 1507291714) ^ (((v337 ^ 0xE198EB40) & (v338 ^ 0x404559C0) ^ v338 & 0x8620A2B0) >> 4) ^ 0x55ACCD3D;
  v345 = 85 * (v343 & 0xF | (16 * (v344 & 0xF)));
  v346 = *(v24 + (v345 + 28050) % 0x3CDu) ^ (16 * *(v24 + v341));
  LODWORD(STACK[0x348]) = 85 * v346;
  LOWORD(v346) = (85 * (*(v24 + (v345 + 58140 - 973 * ((4414150 * (v345 + 58140)) >> 32))) ^ (*(v24 + (85 * v346 + 58140 - 973 * ((4414150 * (85 * v346 + 58140)) >> 32))) >> 4)) + 28050) % 0x3CDu;
  LODWORD(STACK[0x368]) = ~(v326 >> 8);
  LODWORD(STACK[0x360]) = v344;
  v347 = 85 * (v344 & 0xF0 | ~(v326 >> 8) & 0xF);
  v348 = *(v24 + (v347 + 28050) % 0x3CDu) ^ (16 * *(v24 + v346));
  LODWORD(STACK[0x344]) = 85 * v348;
  LOWORD(v347) = (85 * (*(v24 + (v347 + 58140 - 973 * ((4414150 * (v347 + 58140)) >> 32))) ^ (*(v24 + (85 * v348 + 58140 - 973 * ((4414150 * (85 * v348 + 58140)) >> 32))) >> 4)) + 28050) % 0x3CDu;
  v349 = 85 * ((v344 >> 4) & 0xF0 | (v279 >> 12));
  LODWORD(STACK[0x358]) = v349;
  v350 = 85 * (*(v24 + (v349 + 28050) % 0x3CDu) ^ (16 * *(v24 + v347)));
  LODWORD(STACK[0x354]) = v350;
  LODWORD(STACK[0x364]) = (v350 + 28050) % (((621 - v350) ^ (v350 + 28050)) & 0x3CDu);
  v351 = LODWORD(STACK[0x550]) ^ 0xBC0BF944;
  v352 = (v351 ^ LODWORD(STACK[0x40C])) + LODWORD(STACK[0x33C]) - v277;
  v353 = LODWORD(STACK[0x33C]) - LODWORD(STACK[0x340]);
  v354 = v351 ^ (LODWORD(STACK[0x40C]) + LODWORD(STACK[0x414]));
  LODWORD(STACK[0x3A4]) = v354;
  v355 = (v354 + v351) ^ 0x9BCAAF9D;
  v356 = v352 ^ v355;
  LODWORD(STACK[0x40C]) = v355;
  LOWORD(v352) = (133 - (v352 ^ v355)) | ((v352 ^ v355) + 890);
  LODWORD(STACK[0x320]) = v356;
  v357 = v355 - 1310789982 - v356;
  LODWORD(STACK[0x434]) = v357;
  v358 = v357 + v353;
  LODWORD(STACK[0x454]) = v358;
  v359 = STACK[0x530];
  v360 = LODWORD(STACK[0x530]) ^ 0x868AD552;
  LODWORD(STACK[0x418]) = v360;
  v361 = v360 ^ v358;
  v362 = STACK[0x458];
  LODWORD(STACK[0x318]) = v361;
  v363 = v361 + v362;
  LODWORD(STACK[0x550]) = v363;
  LODWORD(STACK[0x414]) = (85 * (v363 & 0xF) - 15386) % (v352 & 0x3CDu);
  v364 = LODWORD(STACK[0x420]) - 1076104987;
  v365 = (v364 ^ 0x785DCADF) & (2 * (v364 & 0x715DD0DE)) ^ v364 & 0x715DD0DE;
  v366 = ((2 * (v364 ^ 0xBA7DEADB)) ^ 0x9640740A) & (v364 ^ 0xBA7DEADB) ^ (2 * (v364 ^ 0xBA7DEADB)) & 0xCB203A04;
  v367 = (v366 ^ 0x82000000) & (4 * v365) ^ v365;
  v368 = ((4 * (v366 ^ 0x49200A05)) ^ 0x2C80E814) & (v366 ^ 0x49200A05) ^ (4 * (v366 ^ 0x49200A05)) & 0xCB203A04;
  v369 = v367 ^ 0xCB203A05 ^ (v368 ^ 0x8002800) & (16 * v367);
  v370 = (16 * (v368 ^ 0xC3201201)) & 0xCB203A00 ^ 0x49201A05 ^ ((16 * (v368 ^ 0xC3201201)) ^ 0xB203A050) & (v368 ^ 0xC3201201);
  v371 = (v369 << 8) & 0xCB203A00 ^ v369 ^ ((v369 << 8) ^ 0x203A0500) & v370;
  v372 = v364 ^ (2 * ((v371 << 16) & 0x4B200000 ^ v371 ^ ((v371 << 16) ^ 0x3A050000) & ((v370 << 8) & 0x4B200000 ^ 0x4B000000 ^ ((v370 << 8) ^ 0x203A0000) & v370)));
  LODWORD(STACK[0x538]) = v313;
  v373 = (((v372 ^ 0xA74E7D5F) - 1764273910) ^ ((v372 ^ 0x9A1DFB0D) - 1417357476) ^ ((v372 ^ 0xCE0E2286) - 6877487)) - (((v313 ^ 0x8730C370) - 1172597925) ^ ((v313 ^ 0x4292469E) + 2142836405) ^ ((v313 ^ 0x65ACE290) + 1485288123)) + 385383614;
  v374 = (v373 ^ 0xE26EAA86) & (2 * (v373 & 0xC3683214)) ^ v373 & 0xC3683214;
  v375 = ((2 * (v373 ^ LODWORD(STACK[0x2F4]))) ^ 0x4B8D3174) & (v373 ^ LODWORD(STACK[0x2F4])) ^ (2 * (v373 ^ LODWORD(STACK[0x2F4]))) & 0x25C698BA;
  v376 = (v375 ^ 0x1801030) & (4 * v374) ^ v374;
  v377 = ((4 * (v375 ^ 0x2442888A)) ^ 0x971A62E8) & (v375 ^ 0x2442888A) ^ (4 * (v375 ^ 0x2442888A)) & 0x25C698B8;
  v378 = (v377 ^ 0x50200A0) & (16 * v376) ^ v376;
  v379 = ((16 * (v377 ^ 0x20C49812)) ^ 0x5C698BA0) & (v377 ^ 0x20C49812) ^ (16 * (v377 ^ 0x20C49812)) & 0x25C698B0;
  v380 = v378 ^ 0x25C698BA ^ (v379 ^ 0x4408800) & (v378 << 8);
  v381 = v373 ^ (2 * ((v380 << 16) & 0x25C60000 ^ v380 ^ ((v380 << 16) ^ 0x18BA0000) & (((v379 ^ 0x2186101A) << 8) & 0x25C60000 ^ 0x21460000 ^ (((v379 ^ 0x2186101A) << 8) ^ 0x46980000) & (v379 ^ 0x2186101A))));
  v382 = STACK[0x438];
  LODWORD(STACK[0x314]) = v359 ^ 0xE1AF1B45;
  v383 = (v359 ^ 0xE1AF1B45) + v382;
  v384 = ((v383 >> 20) & 0xF ^ 0x24E) + ((v383 >> 19) & 0x1C);
  v385 = (*(v24 + (85 * (HIBYTE(v383) & 0xF) - 15386) % 0x3CDu) << 8) ^ (*(v24 + (85 * (v383 >> 28) - 15386) % 0x3CDu) << 12);
  LODWORD(STACK[0x340]) = v383;
  v386 = ((v385 | *(v24 + (85 * (BYTE2(v383) & 0xF) - 15386) % 0x3CDu)) << 8) ^ (*(v24 + (85 * v384 - 973 * (((1465655 * v384) >> 16) >> 8))) << 12);
  LODWORD(STACK[0x420]) = v386;
  v387 = *(v24 + (85 * ((((v381 >> 28) ^ 0x8089) - 3089) ^ (((v381 >> 28) ^ 0x8325) - 4029) ^ (((v381 >> 28) ^ 0x3A4) + 28868)) + 28598) % 0x3CDu);
  v388 = v387 + 908728 - ((2 * v387) & 0x156);
  v389 = v381;
  v390 = *(v24 + (85 * (((HIBYTE(v381) & 0xF ^ 0xAB17) + 18080) ^ ((HIBYTE(v381) & 0xF ^ 0x2F34) - 15683) ^ ((HIBYTE(v381) & 0xF ^ 0x842A) + 27043)) - 6212) % 0x3CDu);
  v391 = *(v24 + (85 * ((((v381 >> 20) & 0xF ^ 0x5D93) - 19255) ^ (((v381 >> 20) & 0xF ^ 0x3B4F) - 11755) ^ (((v381 >> 20) & 0xF ^ 0x66D2) - 28790)) + 19032) % 0x3CDu);
  v392 = *(v24 + (85 * (((BYTE2(v381) & 0xF ^ 0xC62E) - 18541) ^ ((BYTE2(v381) & 0xF ^ 0x6601) + 6078) ^ ((BYTE2(v381) & 0xF ^ 0xA02E) - 11885)) - 48) % 0x3CDu);
  v393 = v392 - ((2 * v392) & 0xE4) - 681529998;
  LODWORD(STACK[0x33C]) = v393;
  v394 = (((v388 << 12) + 16723968) ^ (((v390 + 8453836 - ((2 * v390) & 0x15E)) << 8) + 16769792) ^ 0xE96AC9) & (v393 ^ 0x9F52AB) ^ v393 & 0x208A36;
  LODWORD(STACK[0x338]) = v381;
  v395 = *(v24 + (85 * ((((v389 >> 12) ^ 0xF3A9) + 17898) ^ (((v389 >> 12) ^ 0xA76E) + 4399) ^ (((v389 >> 12) ^ 0x54C7) - 7544)) + 16465) % 0x3CDu);
  v396 = *(v24 + (85 * ((((v389 >> 8) & 0xF ^ 0x7279) - 17115) ^ (((v389 >> 8) & 0xF ^ 0x4BC6) - 31588) ^ (((v389 >> 8) & 0xF ^ 0x39BC) - 2334)) - 5797) % 0x3CDu);
  v397 = (((v395 - ((2 * v395) & 0xFFFFFFEF)) << 12) + 146763776) ^ ((((((v391 + 1027977 - ((2 * v391) & 0xFFFFFFEF)) << 12) + 21422080) ^ 0x8BA565 ^ (v394 << 8)) & ((v396 - ((2 * v396) & 0xFFFFFF7F) - 122007873) ^ 0x45B15A) ^ (v396 - ((2 * v396) & 0xFFFFFF7F) - 122007873) & 0x22019A) << 8);
  LODWORD(STACK[0x328]) = v397;
  v398 = *(v24 + (85 * (v383 >> 12) - 15386) % 0x3CDu);
  v399 = v386 | *(v24 + (85 * ((v383 >> 8) & 0xF) - 15386) % 0x3CDu);
  LODWORD(STACK[0x458]) = v399;
  v399 <<= 8;
  LODWORD(STACK[0x438]) = v399;
  v400 = v399 ^ (v398 << 12);
  LODWORD(STACK[0x32C]) = v400;
  v401 = ((v397 >> 12) | 0xE35DF80F) & (HIWORD(v400) & 0xF ^ 0xE35DF814) | (v397 >> 12) & 0xE0;
  v402 = 85 * (((v401 ^ 0xCE7D7517) - 1059360867) ^ ((v401 ^ 0x42D8FAFA) + 1283383410) ^ ((v401 ^ 0x6FF877F9) + 1633578355));
  LODWORD(STACK[0x330]) = v402;
  LODWORD(STACK[0x334]) = (v402 - 77683716) % (((3 - v402) & 0x3CD ^ 0x3CD) + ((3 - v402) & 0x3CD));
  LODWORD(STACK[0x324]) = v312 ^ 0xBC0BF944;
  LODWORD(STACK[0x3F4]) = v43 - v311 + (LODWORD(STACK[0x560]) ^ v312 ^ 0xBC0BF944);
  LODWORD(STACK[0x410]) = v43 - (v313 ^ 0x71F5414E);
  v403 = *(v24 + LODWORD(STACK[0x384]));
  v404 = LODWORD(STACK[0x43C]) - v11;
  v405 = STACK[0x49C];
  v406 = *(v24 + (85 * (HIBYTE(LODWORD(STACK[0x49C])) & 0xF) - 15386) % 0x3CDu);
  LODWORD(v43) = v406 - 2 * (v406 & 1);
  LOWORD(v397) = (85 * ((LODWORD(STACK[0x49C]) >> 20) & 0xF) - 15386) % 0x3CDu;
  v407 = *(v24 + (85 * (HIWORD(LODWORD(STACK[0x49C])) & 0xF) - 15386) % 0x3CDu);
  LODWORD(STACK[0x43C]) = 16732160;
  v408 = *(v24 + (85 * ((v405 >> 8) & 0xF) - 15386) % 0x3CDu);
  v409 = ((((*(v24 + v397) + 543662 - ((2 * *(v24 + v397)) & 0x90)) << 12) + 20553728) ^ ((((((v403 + 552298 - ((2 * v403) & 0x112)) << 12) + 28438528) ^ ((v43 << 8) - 1822359296) ^ 0x2D65CD) & ((v407 - ((2 * v407) & 0x28) + 525988372) ^ 0xA60DF9) ^ (v407 - ((2 * v407) & 0x28) + 525988372) & 0x332) << 8) ^ 0x2B4C26) & ((v408 - ((2 * v408) & 0xB8) - 1767764132) ^ 0x5DF07A) ^ (v408 - ((2 * v408) & 0xB8) - 1767764132) & 0x82EED9;
  LODWORD(v43) = *(v24 + (85 * (v405 >> 12) - 15386) % 0x3CDu);
  v410 = (((v43 - ((2 * v43) & 0x11C)) << 12) + 250142720) ^ (v409 << 8);
  v411 = *(v24 + (85 * (v405 & 0xF) - 15386) % 0x3CDu);
  v412 = v411 - ((2 * v411) & 0x188) + 1648995780;
  v413 = (v410 ^ 0x658AB73A) & (v412 ^ 0x9DB652BB) ^ v412 & 0x220086C5;
  v414 = *(v24 + (85 * (v405 >> 4) - 15386) % 0x3CDu);
  LODWORD(v43) = v414 - ((2 * v414) & 0x118);
  v415 = *(v24 + (85 * (v404 >> 28) - 15386) % 0x3CDu);
  v416 = *(v24 + (85 * (HIBYTE(v404) & 0xF) - 15386) % 0x3CDu);
  v417 = *(v24 + (85 * (BYTE2(v404) & 0xF) - 15386) % 0x3CDu);
  v418 = *(v24 + (85 * ((v404 >> 20) & 0xF) - 15386) % 0x3CDu);
  v419 = ((((v415 + 1027977 - ((2 * v415) & 0xD8)) << 12) + 12288) ^ (((v416 - ((2 * v416) & 0x168)) << 8) + 283948032) ^ 0xA9BF) & ((v417 - ((2 * v417) & 0x4E) - 1341984217) ^ 0xD98) ^ (v417 - ((2 * v417) & 0x4E) - 1341984217) & 0x2240;
  v420 = *(v24 + (85 * (v404 >> 12) - 15386) % 0x3CDu);
  v421 = *(v24 + (85 * ((v404 >> 8) & 0xF) - 15386) % 0x3CDu);
  v422 = *(v24 + (85 * (v404 >> 4) - 15386) % 0x3CDu);
  v423 = (((v418 - ((2 * v418) & 0x1D6)) << 20) - 1632632832) ^ (v419 << 16);
  v424 = ((v421 - ((2 * v421) & 0xFFFFFF83)) << 8) - 1460813568;
  v425 = v424 & 0xAB2000 ^ (((v420 - ((2 * v420) & 0x2A)) << 12) + 1290883072) ^ (v423 ^ 0xCA5BDF06) & (v424 ^ 0x57123E26);
  v426 = *(v24 + (85 * (v404 & 0xF) - 15386) % 0x3CDu);
  v427 = v426 - ((2 * v426) & 0xF0) + 238646392;
  v428 = (v422 - ((2 * v422) & 0x68) + 982778420) ^ (((v425 ^ 0x6C1253C0) & (v427 ^ 0xF1C68B80) ^ v427 & 0x4012330) >> 4);
  v429 = 85 * ((v412 & 0xF | (16 * (v427 & 0xF))) ^ 0x84);
  v430 = 85 * ((16 * (LODWORD(STACK[0x540]) - (STACK[0x53C] & 0x104)) + 173258784) ^ 0xF530A523 ^ (*(v24 + (v429 + 28050) % 0x3CDu) - 2 * (*(v24 + (v429 + 28050) % 0x3CDu) & 3) - 10281725));
  v431 = (v430 + 58140) % 0x3CD;
  v432 = *(v24 + (v430 + 28050) % 0x3CD) - ((2 * *(v24 + (v430 + 28050) % 0x3CD)) & 0x70);
  LOBYTE(v429) = *(v24 + (v429 + 58140 - 973 * ((4414150 * (v429 + 58140)) >> 32)));
  v433 = *(v24 + (85 * (((v429 - ((2 * v429) & 0xF8) + 124) ^ (*(v24 + v431) >> 4)) ^ 0x7C) + 28050) % 0x3CDu);
  LODWORD(v43) = v413 ^ (16 * v43 - 494327616);
  v434 = 85 * (((v43 >> 4) | (16 * (v428 & 0xF))) ^ 0xB3);
  v435 = *(v24 + (v434 + 28050) % 0x3CDu);
  v436 = 85 * ((v435 - ((2 * v435) & 0x188) + 2002408900) ^ 0xF37AF0A4 ^ (16 * (v433 - ((2 * v433) & 0xAC)) - 2078235296));
  v437 = (v436 + 28050) % 0x3CD;
  LOBYTE(v434) = *(v24 + (v434 + 58140 - 973 * ((4414150 * (v434 + 58140)) >> 32)));
  LOBYTE(v436) = (v434 - ((2 * v434) & 0xD4) + 106) ^ (*(v24 + (v436 + 58140) % 0x3CD) >> 4);
  v438 = (v43 >> 8) & 0xF;
  v439 = ((v428 | 0xAD1F90F) & (v438 ^ 0xAD1F9DB) | v428 & 0x20) ^ 0xAD1F9FE;
  v440 = *(v24 + v437) - ((2 * *(v24 + v437)) & 0xBA);
  v439 *= 85;
  v441 = *(v24 + (85 * (v436 ^ 0x6A) + 28050) % 0x3CDu);
  v442 = (*(v24 + (v439 + 28050) % 0x3CDu) - ((2 * *(v24 + (v439 + 28050) % 0x3CDu)) & 0x1D4) + 1833795306) ^ 0x8A4EE47A ^ (16 * (v441 - ((2 * v441) & 0x152)) - 419194224);
  v443 = *(v24 + (((v442 + 330) ^ (53 - v442)) & 0x55) * (v442 + 330) % 0x3CD);
  LOBYTE(v439) = *(v24 + (v439 + 57167) % 0x3CDu);
  v444 = (16 * v440 - 1921665584) ^ (v432 + 1392380216) & 0x2DA0A62 ^ ((((v443 + (~(2 * v443) | 0xFFFE29)) << 8) + 1458039808) ^ 0xAAE3AE9D) & ((v432 + 1392380216) ^ 0xA901F6E7);
  v445 = ((v425 >> 8) & 0xF0 ^ 0x31356461) & ((v410 >> 12) ^ 0x35F576F4) | (v410 >> 12) & 0xE;
  v446 = *(v24 + (85 * (((v439 - ((2 * v439) & 0x9C) + 78) ^ (*(v24 + (85 * v442 + 58140) % 0x3CD) >> 4)) ^ 0x4E) + 28050) % 0x3CDu);
  v447 = 85 * (((v445 ^ 0x643D3E72) - 227607802) ^ ((v445 ^ 0xA8CBBD1A) + 1050179694) ^ ((v445 ^ 0xFDC3E781) + 1804608247));
  v448 = (*(v24 + (v447 + 1793901511) % 0x3CD) - ((2 * *(v24 + (v447 + 1793901511) % 0x3CD)) & 0xF4) + 635072378) ^ 0x12574A9A ^ (16 * (v446 - ((2 * v446) & 0xBC)) + 931997152);
  v449 = *(v24 + (v447 + 1793931601) % 0x3CD);
  v450 = v449 ^ (*(v24 + (85 * v448 + 58140) % 0x3CDu) >> 4);
  v451 = *(v24 + (85 * (((2 * v450) & 0x94) + (v450 ^ 0x14A))) % 0x3CDu);
  v452 = (v425 >> 12) & 0xF0 | HIWORD(v410) & 0xF;
  v453 = 85 * (((v452 ^ 0x8C515B1) + 1536337999) ^ ((v452 ^ 0x5703714C) + 72666292) ^ ((v452 ^ 0x5FC6643A) + 210885062));
  v454 = *(v24 + (v453 + 1407097253) % 0x3CDu);
  v455 = 85 * ((v454 - ((2 * v454) & 0x128) - 1293892204) ^ 0x29037284 ^ (16 * (v451 - ((2 * v451) & 0xE2)) - 1679575280));
  LOBYTE(v453) = *(v24 + (v453 + 1407127343) % 0x3CDu);
  v456 = *(v24 + (85 * (((v453 - ((2 * v453) & 0xA2) + 81) ^ (*(v24 + (v455 + 58140) % 0x3CDu) >> 4)) ^ 0x51) + 28050) % 0x3CDu);
  v457 = HIWORD(v425) & 0xF0 | (v410 >> 20) & 0xF;
  v458 = 85 * (((v457 ^ 0xD6ED91F8) - 1645899481) ^ ((v457 ^ 0x5488B551) + 528528784) ^ ((v457 ^ 0x826524A6) - 915594119));
  v459 = *(v24 + (85 * (((v457 ^ 0x91F8) - 28377) ^ ((v457 ^ 0xB551) - 19056) ^ ((v457 ^ 0x24A6) + 9337)) + 10200) % 0x3CDu);
  v460 = 85 * ((v459 - ((2 * v459) & 0x99999999) + 1911237836) ^ 0x2585E10C ^ (16 * (v456 - ((2 * v456) & 0x1B8)) + 1416547776));
  v461 = (v460 + 28050) % 0x3CD;
  v462 = *(v24 + (v448 + 330) * (v449 & 0x40 ^ 0xFFFFFFDD ^ (v449 & 0x55555555 ^ 0xFFFFFF9D) & (v449 | 0xFFFFFF88)) % 0x3CD);
  v463 = *(v24 + (v455 + 28050) % 0x3CDu);
  v464 = v444 ^ 0x83A8BC85 ^ (((v462 - ((2 * v462) & 0x1B8)) << 12) - 2015510528);
  v465 = *(v24 + (85 * (((2 * (*(v24 + (v458 + 374906210) % 0x3CD) ^ (*(v24 + (v460 + 58140) % 0x3CD) >> 4))) & 0x94) + ((*(v24 + (v458 + 374906210) % 0x3CD) ^ (*(v24 + (v460 + 58140) % 0x3CD) >> 4)) ^ 0x14A))) % 0x3CDu);
  v466 = ((v425 >> 20) & 0xF0 ^ 0x4B0DFE92) & (HIBYTE(v410) & 0xF ^ 0x4B0DFEF6) | HIBYTE(v410) & 0xD;
  v467 = 85 * (((v466 ^ 0x63A1C72B) + 1664055912) ^ ((v466 ^ 0xA026D330) - 1599574403) ^ ((v466 ^ 0x888AEAFC) - 2012981327));
  v468 = *(v24 + (v467 - 311757450) % 0x3CD);
  v469 = 85 * ((v468 - ((2 * v468) & 0x164) - 349744718) ^ 0x137C1CA2 ^ (16 * (v465 - ((2 * v465) & 0x1A2)) - 128234224));
  v470 = (v469 + 58140) % 0x3CDu;
  v471 = *(v24 + (v469 + 28050) % 0x3CDu);
  v472 = v471 - ((2 * v471) & 0xC);
  v473 = ((v425 >> 20) & 0x14A ^ 0xAF4FEA19) & ((v425 >> 20) & 0x14A ^ 0xBFDFFF1B) ^ ((v425 >> 20) & 0x48 | 0x10901400);
  v474 = *(v24 + (v467 - 311727360) % 0x3CD) ^ (*(v24 + v470) >> 4);
  v475 = *(v24 + (85 * ((((v473 ^ 0x85B4841B) - 423822256) ^ ((v473 ^ 0xC7F08757) - 1527185660) ^ ((v473 ^ 0xFD9BFC1F) - 1634499508)) + (((v474 ^ 0x756C8C19) - 1970048150) ^ ((v474 ^ 0x158CA7E1) - 361539438) ^ ((v474 ^ 0x60E02BF8) - 1625303927))) - 1401923117) % 0x3CD);
  LOWORD(v425) = HIBYTE(v425) & 0xF0 | (v410 >> 28);
  v476 = *(v24 + (85 * (((v425 ^ 0x23FF) - 11907) ^ (v425 - 2940) ^ ((v425 ^ 0x15) - 3433)) - 4000) % 0x3CDu);
  v477 = *(v24 + (85 * ((v476 - ((2 * v476) & 0xAC) + 816270166) ^ 0x922AA1B6 ^ (16 * (v475 - ((2 * v475) & 0x15C)) - 1567757600)) + 28050) % 0x3CD);
  v478 = v464 ^ (((v463 - ((2 * v463) & 0x11C)) << 16) + 1368260608) ^ (((*(v24 + v461) - ((2 * *(v24 + v461)) & 0xAE)) << 20) - 177209344);
  v479 = ((v472 << 24) - 2046820352) ^ v478 ^ (((v477 - ((2 * v477) & 0xC)) << 28) - 0x20000000);
  v480 = (v444 & 0xF0 ^ 0xEDA6A741) & ((v43 >> 4) ^ 0xEFF6BFFE) | (v43 >> 4) & 0xE;
  v481 = *(v24 + (85 * (((v480 ^ 0xCEB91628) - 745466677) ^ ((v480 ^ 0x10AF7801) + 226982628) ^ ((v480 ^ 0x33B0C90A) + 781765609)) + 547556565) % 0x3CD);
  LOWORD(v408) = ((v444 >> 4) & 0xF0 ^ 0xF7F3) & (v438 ^ 0xF7FE) | (v43 >> 8) & 0xC;
  v482 = *(v24 + (85 * ((((v413 & 0xF | (16 * (v464 & 0xF))) ^ 0xA807) - 20300) ^ (((v413 & 0xF | (16 * (v464 & 0xF))) ^ 0x598F) + 16700) ^ (((v413 & 0xF | (16 * (v464 & 0xF))) ^ 0xF106) - 5709)) + 2728) % 0x3CDu);
  v483 = v482 - ((2 * v482) & 0xDA);
  v484 = ((v479 >> 8) & 0xF0 ^ 0x5201016E) & ((v43 >> 12) ^ 0x520101F6) | (v43 >> 12) & 1;
  v485 = *(v24 + (85 * (((v408 ^ 0x2F7A) + 14356) ^ ((v408 ^ 0xDBC8) - 13150) ^ ((v408 ^ 0x3C5) + 5293)) - 21516) % 0x3CDu);
  v486 = *(v24 + (85 * (((v484 ^ 0x76042902) - 1344395475) ^ ((v484 ^ 0x3225AB99) - 335567432) ^ ((v484 ^ 0x16208375) - 805663396)) - 1874602147) % 0x3CD);
  v487 = v486 - ((2 * v486) & 0xFFFFFFFB);
  v488 = (HIWORD(v478) & 0xF0 ^ 0xE9734E19) & ((v43 >> 20) & 0xF ^ 0xFDF35EF4) | (v43 >> 20) & 6;
  v489 = (v479 >> 20) & 0xF0 | BYTE3(v43) & 0xF;
  v490 = *(v24 + (85 * (((v489 ^ 0x15EEE152) - 1904711723) ^ ((v489 ^ 0xBD7D6AAE) + 652995625) ^ ((v489 ^ 0xA8938BEC) + 855969131)) + 1459971612) % 0x3CD);
  v491 = v490 - ((2 * v490) & 0xBBBBBBBB);
  v492 = (((v479 >> 12) & 0xF0 ^ 0xAD3E317F) & (WORD1(v43) & 0xF ^ 0x85102067) | 0x4280CE00) ^ ((v479 >> 12) & 0xF0 ^ 0xAD3E317F) & 0x282E119C;
  v493 = *(v24 + (85 * (((v492 ^ 0xF6C76EBF) + 1498671535) ^ ((v492 ^ 0x40709F93) - 270264189) ^ ((v492 ^ 0x59090E53) - 157447869)) - 1310320284) % 0x3CD);
  v494 = *(v24 + (85 * (((v488 ^ 0x61D8585) + 1001791117) ^ ((v488 ^ 0x496059D6) + 1959510752) ^ ((v488 ^ 0xA60E926C) - 1683682970)) + 1409370876) % 0x3CD);
  v495 = v494 - ((2 * v494) & 0x124);
  v496 = 16 * (v481 - ((2 * v481) & 0x16C)) + 1123281760;
  LOBYTE(v481) = v483 + 109;
  v497 = v496 ^ (v483 + 746505325);
  v498 = v497 ^ (((v485 - ((2 * v485) & 0x14C)) << 8) - 2047891968);
  v499 = (((v493 - ((2 * v493) & 0x9E)) << 16) + 978255872) ^ v498 ^ ((v487 << 12) + 1156567040) ^ 0x121A051B;
  LODWORD(v43) = ((16 * (v479 >> 28)) ^ 0x5873F29) & ((v43 >> 28) ^ 0x5873FF9) | (v43 >> 28) & 6;
  LODWORD(v43) = *(v24 + (85 * (((v43 ^ 0x4F3F5E6A) + 536945956) ^ ((v43 ^ 0x7FEFBB4E) + 282181640) ^ ((v43 ^ 0x3557DABD) + 1516872181)) - 1870906150) % 0x3CD);
  v500 = v499 ^ ((v495 << 20) - 1189085184);
  LODWORD(v43) = (((v43 + (~(2 * v43) | 0x55555555)) << 28) + 1610612736) ^ ((v491 << 24) + 1560281088) ^ v500;
  LOWORD(v474) = *(v24 + (85 * ((v43 >> 28) ^ 3) + 80750 - 973 * ((4414150 * (85 * ((v43 >> 28) ^ 3) + 80750)) >> 32)));
  LODWORD(v43) = 85 * (BYTE3(v43) & 0xF ^ 3) + 80750;
  LODWORD(v43) = *(v24 + (v43 - 973 * ((4414150 * v43) >> 32)));
  v501 = 85 * (~(v500 >> 20) & 0xF) + 80750;
  v502 = *(v24 + (v501 - 973 * ((4414150 * v501) >> 32)));
  v503 = v502 + 599374 - ((2 * v502) & 0x86);
  LOWORD(v502) = 16 * (v474 + (~(2 * v474) | 0xFFAD)) + 8864;
  v504 = 85 * (HIWORD(v499) & 0xF ^ 8) + 80750;
  v505 = *(v24 + (v504 - 973 * ((4414150 * v504) >> 32)));
  LODWORD(v43) = (((((v43 - ((2 * v43) & 0xA2) + 1286015057) & 0x3A ^ 0x4801C2 ^ v502 & 0x230) & ((v43 - ((2 * v43) & 0xA2) + 1286015057) & 0xC5 ^ v502 & 0x5C0 ^ 0x5A073F) | ((v43 - ((2 * v43) & 0xA2) + 1286015057) & 0xC5 ^ v502 & 0x5C0) & 0xFFFFFC3F) << 8) ^ 0x19B5) & ((v505 - ((2 * v505) & 0x122) + 1577571217) ^ 0x2C64) ^ (v505 - ((2 * v505) & 0x122) + 1577571217) & 0x54A;
  v506 = 85 * (((v498 ^ ((v487 << 12) - 12288)) >> 12) ^ 5) + 80750;
  v507 = v506 - 973 * ((4414150 * v506) >> 32);
  v508 = LODWORD(STACK[0x43C]) + (v503 << 12);
  v509 = LODWORD(STACK[0x4E8]) + 768080910;
  v510 = (2 * (v509 & 0xD23803F2)) & (v509 ^ 0x4228C178) ^ v509 & 0xD23803F2 ^ ((2 * (v509 & 0xD23803F2)) & 0x80100280 | 0x8000);
  v511 = (2 * (v509 ^ 0x4228C178)) & 0x9010C28A ^ 0x9010428A ^ ((2 * (v509 ^ 0x4228C178)) ^ 0x20218514) & (v509 ^ 0x4228C178);
  v512 = (4 * v510) & 0x9010C288 ^ v510 ^ ((4 * v510) ^ 0x20000) & v511;
  v513 = (4 * v511) & 0x9010C288 ^ 0x9010C082 ^ ((4 * v511) ^ 0x40430A28) & v511;
  v514 = (16 * v512) & 0x9010C280 ^ v512 ^ ((16 * v512) ^ 0x80000) & v513;
  v515 = (16 * v513) & 0x9010C280 ^ 0x9010C20A ^ ((16 * v513) ^ 0x10C28A0) & v513;
  v516 = v514 ^ 0x9010428A ^ (v514 << 8) & 0x9010C200 ^ ((v514 << 8) ^ 0x800000) & v515;
  LODWORD(STACK[0x53C]) = (v516 << 16) & 0x10101010 ^ v516 ^ ((v516 << 16) ^ 0x428A0000) & ((v515 << 8) & 0x10100000 ^ ((v515 << 8) ^ 0x10C20000) & v515 ^ 0x100000);
  v517 = *(v24 + v507) - ((2 * *(v24 + v507)) & 0x78);
  LODWORD(STACK[0x4E8]) = v509 ^ v405;
  v518 = 85 * ((v498 >> 8) & 0xF ^ 9) + 80750;
  v519 = *(v24 + (v518 - 973 * ((4414150 * v518) >> 32)));
  v520 = (v519 - ((2 * v519) & 0xFFFFFFF3) + 15698169) ^ (16 * v517 + 1362457536) ^ v508;
  v521 = *(v24 + (85 * (v497 >> 4) + 80750 - 973 * ((4414150 * (85 * (v497 >> 4) + 80750)) >> 32)));
  v522 = *(v24 + (85 * (v481 & 0xF ^ 0xD) + 80750 - 973 * ((4414150 * (85 * (v481 & 0xF ^ 0xDu) + 80750)) >> 32)));
  LODWORD(STACK[0x540]) = (v522 - ((2 * v522) & 0x62) - 592115919) & 0x84229E ^ (LODWORD(STACK[0x4E4]) - ((2 * LODWORD(STACK[0x4E4])) & 0xC8A2A038) + 1683050524) ^ (16 * (v521 - ((2 * v521) & 0xFFFFFFE3)) - 556155120) ^ ((v520 << 8) ^ (v43 << 16) ^ 0xC04DE461) & ((v522 - ((2 * v522) & 0x62) - 592115919) ^ 0x234AF8CE);
  v523 = 85 * ((STACK[0x478] & 0xF0 | (LODWORD(STACK[0x440]) >> 8) & 0xF) ^ 0xF0);
  v524 = v523 + 58140 - 973 * ((4414150 * (v523 + 58140)) >> 32);
  LOBYTE(v521) = *(v24 + (LODWORD(STACK[0x46C]) + 58140) % 0x3CDu);
  v525 = *(v24 + (85 * (((v521 - ((2 * v521) & 4) + 2) ^ (*(v24 + (LODWORD(STACK[0x444]) + 58140) % 0x3CDu) >> 4)) ^ 2) + 28050) % 0x3CDu);
  v526 = *(v24 + (v523 + 28050) % 0x3CDu);
  v527 = 85 * ((v526 - ((2 * v526) & 0xFFFFFFC7) - 1481858589) ^ 0xE3613893 ^ (16 * (v525 - ((2 * v525) & 0x12E)) + 1154324848));
  v528 = *(v24 + (85 * (((*(v24 + v524) + (~(2 * *(v24 + v524)) | 0x65) + 78) ^ (*(v24 + (v527 + 58140) % 0x3CD) >> 4)) ^ 0x4D) + 28050) % 0x3CDu);
  v529 = 85 * ((STACK[0x47C] & 0xF0 | (LODWORD(STACK[0x440]) >> 12)) ^ 0x70);
  v530 = *(v24 + (v529 + 28050) % 0x3CDu);
  v531 = 85 * ((v530 - ((2 * v530) & 0x178) - 1680251972) ^ 0x923F52AC ^ (16 * (v528 - ((2 * v528) & 0x22222222)) + 166080784));
  LOBYTE(v529) = *(v24 + (v529 + 58140 - 973 * ((4414150 * (v529 + 58140)) >> 32)));
  v532 = *(v24 + (85 * (((v529 - ((2 * v529) & 0x2E) - 105) ^ (*(v24 + (v531 + 58140) % 0x3CD) >> 4)) ^ 0x97) + 28050) % 0x3CDu);
  v533 = 85 * (((LODWORD(STACK[0x47C]) >> 4) & 0xF0 | HIWORD(LODWORD(STACK[0x440])) & 0xF) ^ 0xF0);
  LODWORD(v43) = *(v24 + (v533 + 28050) % 0x3CDu);
  v534 = 85 * ((v43 - ((2 * v43) & 0x86) + 2022388803) ^ 0x8E870153 ^ (16 * (v532 - ((2 * v532) & 0xA2)) - 166972144));
  LOBYTE(v533) = *(v24 + (v533 + 58140 - 973 * ((4414150 * (v533 + 58140)) >> 32)));
  v535 = *(v24 + (85 * (((v533 - 2 * (v533 & 7) - 121) ^ (*(v24 + (v534 + 58140) % 0x3CDu) >> 4)) ^ 0x87) + 28050) % 0x3CDu);
  LODWORD(v43) = v535 - ((2 * v535) & 0x30);
  v536 = STACK[0x490];
  v537 = (LODWORD(STACK[0x440]) >> 20) & 0xF;
  v538 = 85 * (((STACK[0x490] & 0xF0 ^ 0x16504EC6) & (v537 ^ 0x16504EFF) | (LODWORD(STACK[0x440]) >> 20) & 9) ^ 0x16504E36);
  v539 = *(v24 + (v538 + 28050) % 0x3CDu);
  v540 = *(v24 + (v534 + 28050) % 0x3CDu);
  v541 = 85 * ((v539 - 2 * (v539 & 0x1F) + 805911327) ^ 0xD47BDA9F ^ (16 * v43 - 462233216));
  LODWORD(v43) = *(v24 + (v541 + 28050) % 0x3CDu);
  v542 = (((v43 - ((2 * v43) & 0x6C)) << 20) - 480247808) ^ (((v540 - ((2 * v540) & 0x18)) << 16) + 302776320);
  v543 = *(v24 + (v527 + 28050) % 0x3CD);
  v544 = *(v24 + (v531 + 28050) % 0x3CD);
  v545 = (((v544 + 625543 - ((2 * v544) & 0xD8)) << 12) - 110592) ^ (((v543 - ((2 * v543) & 0x26)) << 8) - 1639181568) ^ LODWORD(STACK[0x468]);
  LODWORD(v43) = *(v24 + LODWORD(STACK[0x448]));
  v546 = (HIWORD(v542) & 0xF0 ^ 0x459C) & (v537 ^ 0x45FF);
  v547 = v43 - ((2 * v43) & 0x150);
  LODWORD(v43) = *(v24 + (85 * ((STACK[0x45C] & 0xF0 ^ 0x8E3C) & (STACK[0x440] & 0xF ^ 0xEEFC) ^ (STACK[0x494] & 3 | 0x6070) ^ 0xEEFC) + 5695) % 0x3CDu);
  v548 = STACK[0x440];
  v549 = *(v24 + (85 * ((((v545 >> 4) & 0xF0 ^ 0x23D5) & ((LODWORD(STACK[0x440]) >> 8) & 0xF ^ 0x7BFD) | (LODWORD(STACK[0x440]) >> 8) & 0xA) ^ 0x23D5) + 5695) % 0x3CDu);
  v550 = v549 - ((2 * v549) & 0x100);
  v551 = v545 ^ v542;
  v552 = *(v24 + (85 * (((v545 >> 8) & 0xF0 ^ 0xDDDC) & ((LODWORD(STACK[0x440]) >> 12) ^ 0xFFFC) ^ ((LODWORD(STACK[0x440]) >> 12) & 3 | 0x2210) ^ 0xFF5C) + 5695) % 0x3CDu);
  LODWORD(v43) = v43 - ((2 * v43) & 0x1AE) - 1310744105;
  v553 = (16 * v547 + 1406564992) ^ v43;
  v554 = v553 ^ ((v550 << 8) + 1109819392);
  v555 = (((v552 - ((2 * v552) & 0xB8)) << 12) - 1089093632) ^ 0xA3D792E9 ^ v554;
  v556 = *(v24 + (85 * (v555 >> 12) + 80750 - 973 * ((4414150 * (85 * (v555 >> 12) + 80750)) >> 32)));
  LODWORD(STACK[0x4E4]) = v556 + 876544 - ((2 * v556) & 0xFFFFFF83);
  v557 = *(v24 + (85 * (((v551 >> 12) & 0xF0 | BYTE2(v548) & 0xF) ^ 0xC0) + 5695) % 0x3CDu);
  v558 = v557 - ((2 * v557) & 0xE0);
  v559 = *(v24 + (85 * ((v546 & 0xFFFC | (v548 >> 20) & 3) ^ 0x45FC) + 5695) % 0x3CDu);
  v560 = v559 - ((2 * v559) & 0x54);
  v561 = v555 ^ ((v558 << 16) + 275775488);
  LOBYTE(v538) = *(v24 + (v538 + 58140) % 0x3CDu);
  v562 = *(v24 + (85 * (((v538 - ((2 * v538) & 0x3A) - 99) ^ (*(v24 + (v541 + 58140) % 0x3CDu) >> 4)) ^ 0x9D) + 28050) % 0x3CDu);
  v563 = 85 * (((v536 >> 4) & 0xB0 ^ 0x5E3DF89F) & (HIBYTE(LODWORD(STACK[0x498])) & 0xF ^ 0x5E3DF8BB) ^ (((v536 >> 4) & 0x40) + 1581119669));
  v564 = *(v24 + (v563 + 28050) % 0x3CDu);
  v565 = (v564 - ((2 * v564) & 0x90) + 220480584) ^ 0x34E07008 ^ (16 * (v562 - ((2 * v562) & 0x88888888)) + 969159744);
  v566 = *(v24 + (85 * v565 + 28050) % 0x3CD) - ((2 * *(v24 + (85 * v565 + 28050) % 0x3CD)) & 0x72);
  LOBYTE(v563) = *(v24 + (v563 + 58140) % 0x3CDu);
  v567 = *(v24 + (85 * (((v563 - ((2 * v563) & 0xB0) + 88) ^ (*(v24 + 85 * ((((85 * v565 + 28050) % 0x3CD) & 0x2AC) + v565 + (((85 * v565 + 28050) % 0x3CD) & 0x2AC ^ 0x2AC)) % 0x3CD) >> 4)) ^ 0x58) + 28050) % 0x3CDu);
  v568 = LODWORD(STACK[0x498]) >> 28;
  v569 = *(v24 + (85 * ((((v536 >> 8) & 0xF0 ^ 0x5C8A) & (v568 ^ 0x5CFC) | v568 & 0x5555) ^ 0x5C1F) + 28050) % 0x3CDu);
  v570 = ((v566 << 24) - 1191182336) ^ v551;
  LOWORD(v567) = (85 * ((((16 * ((v570 ^ (-268435456 * *(v24 + (85 * ((v569 - ((2 * v569) & 0x194) - 1390545462) ^ 0xBDE518EA ^ (16 * (v567 - ((2 * v567) & 0x1A4)) + 284749088)) + 28050) % 0x3CD) - 0x10000000)) >> 28)) ^ 0x70EA) & (v568 ^ 0xF1FC) | v568 & 0x5555) ^ 0x706F) + 5695) % 0x3CDu;
  v571 = v561 ^ ((v560 << 20) - 1298137088);
  v572 = 85 * ((v571 >> 20) & 0xF ^ 3) + 80750;
  v573 = *(v24 + (v572 - 973 * ((4414150 * v572) >> 32)));
  v574 = v573 - ((2 * v573) & 0x10C);
  v575 = *(v24 + (85 * ((((v570 >> 20) & 0xF0 ^ 0x3012) & (HIBYTE(v548) & 0xF ^ 0xF7F7) | HIBYTE(v548) & 0xD) ^ 0x3052) + 5695) % 0x3CDu);
  v576 = (((*(v24 + v567) - 2 * (*(v24 + v567) & 1)) << 28) + 0x10000000) ^ v571 ^ (((v575 - ((2 * v575) & 0xC4)) << 24) + 1644167168);
  v577 = *(v24 + (85 * ((v576 >> 28) ^ 6) + 80750 - 973 * ((4414150 * (85 * ((v576 >> 28) ^ 6) + 80750)) >> 32)));
  v578 = v577 - ((2 * v577) & 0x1C8);
  v579 = 85 * (HIBYTE(v576) & 0xF ^ 0xC) + 80750;
  v580 = *(v24 + (v579 - 973 * ((4414150 * v579) >> 32)));
  v581 = v580 - ((2 * v580) & 0x34);
  v582 = 85 * (HIWORD(v561) & 0xF ^ 0xD) + 80750;
  v583 = *(v24 + (v582 - 973 * ((4414150 * v582) >> 32)));
  v584 = (16 * v574 - 521619360) ^ (v583 - ((2 * v583) & 0xFFFFFFEF) + 62711);
  v585 = 85 * ((v554 >> 8) & 0xF ^ 0xB) + 80750;
  v586 = v585 - 973 * ((4414150 * v585) >> 32);
  v587 = 85 * (v43 & 0xF ^ 7) + 80750 - 973 * ((4414150 * (85 * (v43 & 0xF ^ 7) + 80750)) >> 32);
  v588 = 85 * ((v553 >> 4) ^ 5) + 80750;
  LODWORD(STACK[0x49C]) = v588 - 973 * ((4414150 * v588) >> 32);
  v589 = *(v24 + STACK[0x4B8]);
  v590 = *(v24 + (85 * ((((16 * (STACK[0x4A8] & 0xF)) ^ 0x81CE) & (LOWORD(STACK[0x4F4]) ^ 0xE3F3) & 0xFFFE | (LODWORD(STACK[0x4B4]) >> 12) & 1) ^ 0x811E) + 5695) % 0x3CDu);
  v591 = (((v590 - ((2 * v590) & 0xFFFFFFE7)) << 12) - 201379840) ^ (((v589 - ((2 * v589) & 0x104)) << 8) - 181763584);
  v592 = *(v24 + (85 * (((STACK[0x4D0] & 0xF0 ^ 0xBF84) & (LODWORD(STACK[0x504]) ^ 0xFFFD) | STACK[0x4F0] & 0xB) ^ 0xBFC7) + 5695) % 0x3CDu);
  v593 = ((LODWORD(STACK[0x4A8]) >> 8) & 0xF ^ 8) << ((STACK[0x4C4] & 4 ^ 4) + (STACK[0x4C4] & 4));
  v594 = *(v24 + (85 * ((((16 * LOWORD(STACK[0x4C8])) & 0xC0 ^ 0xFFBF) & (LOWORD(STACK[0x500]) ^ 0xA8C8) & 0xFFCF | (16 * (STACK[0x4C8] & 3))) ^ 0xA8E0) + 5695) % 0x3CDu);
  v595 = *(v24 + (85 * ((v593 + 658735504 - ((2 * v593) & 0x10328) + 4) ^ ((LODWORD(STACK[0x4B4]) >> 20) & 0xF | 0x27438190)) + 5695) % 0x3CD);
  v596 = (16 * (v592 - ((2 * v592) & 0x98)) - 1497615168) ^ (v594 - ((2 * v594) & 0x1A0) - 1167210032);
  LODWORD(v43) = *(v24 + (85 * (((STACK[0x4A8] & 0xF0 ^ 0x5795) & (LODWORD(STACK[0x4F8]) ^ 0x77F8) | HIWORD(LODWORD(STACK[0x4B4])) & 0xA) ^ 0x5755) + 5695) % 0x3CDu);
  v597 = (((v595 - ((2 * v595) & 0xFFFFFF83)) << 20) - 66060288) ^ (((v43 - ((2 * v43) & 0xFFFFFFDF)) << 16) - 2115043328) ^ 0x75D4C5C3;
  LODWORD(v43) = -268435456 * *(v24 + (85 * ((((LODWORD(STACK[0x4A8]) >> 12) | 0xF00F) & ((LODWORD(STACK[0x4B4]) >> 28) | 0x9050) | (LODWORD(STACK[0x4A8]) >> 12) & 0xA0) ^ 0x9074) + 5695) % 0x3CDu) + 1879048192;
  BYTE1(v571) = BYTE1(v596) ^ BYTE1(v591);
  v598 = v596 ^ v591 ^ v43 ^ 0x7B77DF27 ^ v597 & (v43 ^ 0x8FFFCFCF);
  LODWORD(v43) = 85 * ((v598 ^ ~LODWORD(STACK[0x4CC])) >> 28) + 80750;
  v599 = v43 - 973 * ((4414150 * v43) >> 32);
  LODWORD(v43) = 85 * (((v598 ^ LODWORD(STACK[0x4CC])) >> 24) & 0xF ^ 0xE) + 80750;
  v600 = 85 * ((v598 >> 20) & 0xF ^ 5) + 80750;
  LODWORD(STACK[0x500]) = v600 - 973 * ((4414150 * v600) >> 32);
  v601 = 85 * (HIWORD(v598) & 0xF ^ 8) + 80750;
  v602 = v601 - 973 * ((4414150 * v601) >> 32);
  v603 = 85 * ((v591 >> 12) ^ 0xB) + 80750;
  LODWORD(STACK[0x4F8]) = v603 - 973 * ((4414150 * v603) >> 32);
  v604 = 85 * ((181 * (((v602 & 0x37 ^ 0x37) + (v602 & 0x37)) & 0x33333333)) & (BYTE1(v571) ^ 0x4F)) + 80750;
  LODWORD(STACK[0x504]) = v604 - 973 * ((4414150 * v604) >> 32);
  v605 = 85 * ((v596 >> 4) ^ 1) + 80750;
  v606 = v605 - 973 * ((4414150 * v605) >> 32);
  v607 = *(v24 + (85 * (((STACK[0x3C4] & 0xF ^ 9) << ((LODWORD(STACK[0x3C8]) ^ LODWORD(STACK[0x3CC])) & 4)) ^ STACK[0x430] & 0xF ^ 9) + 5695) % 0x3CDu);
  v608 = *(v24 + (85 * ((STACK[0x41C] & 0xF0 | (LODWORD(STACK[0x38C]) >> 4)) ^ 0x9D) + 5695) % 0x3CDu);
  v609 = *(v24 + (85 * (((LODWORD(STACK[0x41C]) >> 4) & 0xF0 ^ 0xAFC7) & (LODWORD(STACK[0x42C]) ^ 0xFFF1) ^ ((LODWORD(STACK[0x38C]) >> 8) & 8 | 0x5030) ^ 0xFF77) + 5695) % 0x3CDu);
  v610 = (16 * (v608 - ((2 * v608) & 0x8C)) - 225856416) ^ (((v609 - ((2 * v609) & 0x96)) << 8) - 1711387904) ^ (v607 + 512036155 + (~(2 * v607) | 0xFFFFFF8B));
  v611 = *(v24 + ((((((LODWORD(STACK[0x3C4]) >> 8) & 0x50 ^ 0xFC4F) & (LODWORD(STACK[0x428]) ^ 0xFC5C) | (LODWORD(STACK[0x3C4]) >> 8) & 0xA0) ^ 0xFC57) + 67) * (~(v609 & 0xCCCC ^ (v609 ^ 0x3333) & v609) & 0x55)) % 0x3CDu);
  v612 = *(v24 + (85 * (((LODWORD(STACK[0x41C]) >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x38C])) & 0xF) ^ 0xAA) + 5695) % 0x3CDu);
  v613 = v610 ^ (((v612 - ((2 * v612) & 0x146)) << 16) + 1738735616) ^ (LODWORD(STACK[0x350]) + ((v611 - ((2 * v611) & 0x6A)) << 12) - 1549504512);
  v614 = *(v24 + LODWORD(STACK[0x390]));
  LOWORD(v611) = (85 * (((LODWORD(STACK[0x3C4]) >> 20) & 0xF0 | HIBYTE(LODWORD(STACK[0x38C])) & 0xF) ^ 0xCD) + 5695) % 0x3CDu;
  v615 = -16777216 * *(v24 + v611);
  v616 = (HIBYTE(LODWORD(STACK[0x38C])) ^ 0xCDu) >> ((v611 & 4 ^ 4) + (v611 & 4));
  v617 = *(v24 + (85 * (((v616 - ((2 * v616) & 0xC) + 14) & 0xF | (16 * (LODWORD(STACK[0x424]) >> 28))) ^ 0xE) + 5695) % 0x3CDu);
  v618 = (((v614 - ((2 * v614) & 0x28)) << 20) - 1589641216) ^ v613;
  v619 = (v615 - 0x1000000) ^ 0xDFBB69F2 ^ v618;
  v620 = v619 ^ (((v617 - 2 * (v617 & 3)) << 28) - 1078232612) ^ 0x8FB2B274;
  v621 = 85 * (v620 & 0xF) + 80750 - 973 * ((4414150 * (85 * (v620 & 0xF) + 80750)) >> 32);
  v622 = ((v578 << 12) - 2118107136) ^ v584 ^ ((v581 << 8) - 259024384);
  v623 = 85 * (v620 >> 28) + 80750 - 973 * ((4414150 * (85 * (v620 >> 28) + 80750)) >> 32);
  v624 = *(v24 + v586) - ((2 * *(v24 + v586)) & 0xE6);
  v625 = 85 * (HIBYTE(v619) & 0xF) + 80750 - 973 * ((4414150 * (85 * (HIBYTE(v619) & 0xF) + 80750)) >> 32);
  v626 = 85 * ((v618 >> 20) & 0xF ^ 0xB) + 80750;
  v627 = v626 - 973 * ((4414150 * v626) >> 32);
  v628 = ((LODWORD(STACK[0x4E4]) << 12) + 4984832) ^ ((v624 << 8) - 569871616) & 0xC6922900 ^ 0xB1DE169B ^ ((v622 << 16) ^ 0x8FFAD672) & (((v624 << 8) - 569871616) ^ 0x21F78577);
  v629 = 85 * (HIWORD(v613) & 0xF ^ 2) + 80750;
  v630 = v629 - 973 * ((4414150 * v629) >> 32);
  v631 = *(v24 + v587) - 2 * (*(v24 + v587) & 3) - 1144953341;
  v632 = v628 & (v631 ^ 0x443E99FC);
  v633 = *(v24 + LODWORD(STACK[0x49C]));
  v634 = v633 - ((2 * v633) & 0x18);
  v635 = 85 * ((v620 >> 8) & 0xF) + 80750 - 973 * ((4414150 * (85 * ((v620 >> 8) & 0xF) + 80750)) >> 32);
  LODWORD(STACK[0x520]) ^= v631 & 0x3000616 ^ (16 * v634 + 2128105664) ^ v632;
  LODWORD(STACK[0x514]) ^= LODWORD(STACK[0x4A4]);
  v636 = 85 * (v620 >> 12) + 80750 - 1946 * ((2207075 * (85 * (v620 >> 12) + 80750)) >> 32);
  v637 = *(v24 + (v43 - 973 * ((4414150 * v43) >> 32)));
  LODWORD(v43) = v637 - ((2 * v637) & 0x1B4);
  v638 = 85 * (v620 >> 4) + 80750 - 973 * ((4414150 * (85 * (v620 >> 4) + 80750)) >> 32);
  v639 = (16 * (*(v24 + v599) - ((2 * *(v24 + v599)) & 0x18C)) - 30819232) ^ (v43 + 14810);
  LODWORD(v43) = 85 * (LODWORD(STACK[0x374]) >> 12) + 80750;
  v640 = v43 - 973 * ((4414150 * v43) >> 32);
  LODWORD(v43) = *(v24 + LODWORD(STACK[0x500]));
  v641 = v43 + 185903 - ((2 * v43) & 0xCA);
  LODWORD(v43) = 85 * ((LODWORD(STACK[0x378]) >> 8) & 0xF) + 80750;
  v642 = v43 - 973 * ((4414150 * v43) >> 32);
  LODWORD(v43) = *(v24 + LODWORD(STACK[0x4F8]));
  v643 = v43 - ((2 * v43) & 0xFFFFFF7F);
  LODWORD(v43) = 85 * (LODWORD(STACK[0x380]) >> 4) + 80750;
  v644 = v43 - 973 * ((4414150 * v43) >> 32);
  v645 = ((*(v24 + v602) - ((2 * *(v24 + v602)) & 0x5A)) << 8) - 566481664;
  v646 = (v645 ^ 0xC352E7) & ((v639 << 16) ^ 0xE753E7);
  v647 = *(v24 + v606) - ((2 * *(v24 + v606)) & 0x14C);
  v648 = 85 * (STACK[0x388] & 0xF) + 80750 - 973 * ((4414150 * (85 * (STACK[0x388] & 0xF) + 80750)) >> 32);
  v649 = ((v641 << 12) + 18046976) ^ v645 & 0x22AC00;
  v650 = LODWORD(STACK[0x34C]) + 28050 - 973 * ((4414150 * (LODWORD(STACK[0x34C]) + 28050)) >> 32);
  v651 = v649 ^ 0xD84CEE ^ v646;
  v652 = LODWORD(STACK[0x348]) + 28050 - 973 * ((4414150 * (LODWORD(STACK[0x348]) + 28050)) >> 32);
  v653 = *(v24 + LODWORD(STACK[0x504]));
  v654 = v651 & ~v653 ^ (v653 & 0xF6 | 0x249C00);
  v655 = LODWORD(STACK[0x344]) + 28050 - 973 * ((4414150 * (LODWORD(STACK[0x344]) + 28050)) >> 32);
  v656 = *(v24 + (85 * (v594 & 0xF) + 80750 - 973 * ((4414150 * (85 * (v594 & 0xFu) + 80750)) >> 32)));
  LODWORD(STACK[0x508]) ^= LODWORD(STACK[0x558]);
  LODWORD(STACK[0x558]) = (16 * v647 + 2037135968) ^ LODWORD(STACK[0x4EC]) ^ (v656 - ((2 * v656) & 0x1B2) + 16472281) & 0x920794 ^ (((v643 << 12) + 65794048) ^ (v654 << 8) ^ 0x703D216B) & ((v656 - ((2 * v656) & 0x1B2) + 16472281) ^ 0xFF04A7A2);
  v657 = LODWORD(STACK[0x4D8]) + (v621 & 0x12D);
  v658 = *(v24 + v635) - ((2 * *(v24 + v635)) & 0xC2) + 2136481121;
  v659 = ((((*(v24 + v627) + 522080 - ((2 * *(v24 + v627)) & 0xB6)) << 12) + 16756736) ^ (((((*(v24 + v625) - ((2 * *(v24 + v625)) & 0xFF03)) << 8) - 17792768) ^ (*(v24 + v630) - ((2 * *(v24 + v630)) & 0x148) + 3033252) ^ (((*(v24 + v623) - ((2 * *(v24 + v623)) & 0xFFF3)) << 12) - 1105227776)) << 8) ^ 0x536CCD) & (v658 ^ 0xA7E28C) ^ v658 & 0x732;
  if (v636 >= 0x3CD)
  {
    v636 -= 973;
  }

  v660 = (((*(v24 + v636) + 175482 - ((2 * *(v24 + v636)) & 0xEE)) << 12) - 12288) ^ (v659 << 8);
  v661 = *(v24 + v621) - ((2 * *(v24 + v621)) & 0x70) - 423539656;
  v662 = LODWORD(STACK[0x560]) + LODWORD(STACK[0x4FC]);
  LODWORD(STACK[0x500]) = v661 & 0x4EC9 ^ (LODWORD(STACK[0x4FC]) - ((2 * LODWORD(STACK[0x4FC])) & 0x696C90D0) - 1263122328) ^ (16 * *(v24 + v638)) ^ (v660 ^ 0x4D859C36) & (v661 ^ 0x193EB3C6);
  LODWORD(STACK[0x504]) = (v657 + (~v621 & 0xBA232D2D) - 1812625498) ^ LODWORD(STACK[0x470]);
  v663 = *(v24 + v642) - ((2 * *(v24 + v642)) & 0xFFDF) - 533578769;
  v664 = ((16 * (*(v24 + v640) - ((2 * *(v24 + v640)) & 0x15E)) - 405574928) ^ v663 & 0x51D ^ 0x4C4AB11F ^ (LODWORD(STACK[0x3A8]) ^ 0x34C4F1E2) & (v663 ^ 0x1FCDC41D)) << ((LODWORD(STACK[0x3E4]) | (-10 - LODWORD(STACK[0x3E8]))) & 8);
  LODWORD(STACK[0x560]) = LODWORD(STACK[0x4E0]) ^ LODWORD(STACK[0x3A4]);
  v665 = *(v24 + v644) - ((2 * *(v24 + v644)) & 0xFFC7);
  v666 = v662 ^ LODWORD(STACK[0x324]);
  v667 = v666 + LODWORD(STACK[0x324]);
  LODWORD(STACK[0x4F8]) = (*(v24 + v648) - ((2 * *(v24 + v648)) & 0xB6) + 1659284827) ^ (v666 - ((2 * v666) & 0x3FEA3E78) + 536158012) ^ (16 * v665 - 327733712) ^ v664;
  v668 = LODWORD(STACK[0x35C]) ^ 0xFCFE0200;
  v669 = 85 * ((LODWORD(STACK[0x360]) >> 8) & 0xF0 | HIWORD(v668) & 0xF);
  v670 = 85 * (*(v24 + (v669 + 28050) % 0x3CDu) ^ (16 * *(v24 + (85 * (*(v24 + (LODWORD(STACK[0x358]) + 58140 - 973 * ((4414150 * (LODWORD(STACK[0x358]) + 58140)) >> 32))) ^ (*(v24 + (LODWORD(STACK[0x354]) + 58140 - 973 * ((4414150 * (LODWORD(STACK[0x354]) + 58140)) >> 32))) >> 4)) + 28050) % 0x3CDu)));
  v671 = v670 + 28050 - 973 * ((4414150 * (v670 + 28050)) >> 32);
  v672 = 85 * (*(v24 + (v669 + 58140 - 973 * ((4414150 * (v669 + 58140)) >> 32))) ^ (*(v24 + (v670 + 58140 - 973 * ((4414150 * (v670 + 58140)) >> 32))) >> 4)) + 28050;
  v673 = 85 * (((LODWORD(STACK[0x360]) >> 12) & 0xF0 | (LODWORD(STACK[0x394]) >> 12)) ^ 0xD);
  v674 = 85 * (*(v24 + (v673 + 28050) % 0x3CDu) ^ (16 * *(v24 + v672 % 0x3CDu)));
  v675 = 85 * ((HIWORD(LODWORD(STACK[0x360])) & 0xF0 | HIWORD(LODWORD(STACK[0x394])) & 0xF) ^ 6);
  v676 = 85 * (*(v24 + (v675 + 28050) % 0x3CDu) ^ (16 * *(v24 + (85 * (*(v24 + (v673 + 58140 - 973 * ((4414150 * (v673 + 58140)) >> 32))) ^ (*(v24 + (v674 + 58140 - 973 * ((4414150 * (v674 + 58140)) >> 32))) >> 4)) + 28050) % 0x3CDu)));
  v677 = v676 + 28050 - 973 * ((4414150 * (v676 + 28050)) >> 32);
  v678 = 85 * (*(v24 + (85 * (((LODWORD(STACK[0x360]) >> 20) & 0xF0 | (LODWORD(STACK[0x394]) >> 20) & 0xF) ^ 7) + 28050) % 0x3CDu) ^ (16 * *(v24 + (85 * (*(v24 + (v675 + 58140 - 973 * ((4414150 * (v675 + 58140)) >> 32))) ^ (*(v24 + (v676 + 58140 - 973 * ((4414150 * (v676 + 58140)) >> 32))) >> 4)) + 28050) % 0x3CDu))) + 28050;
  v679 = v678 - 973 * ((4414150 * v678) >> 32);
  v680 = *(v24 + v650);
  v681 = 85 * (STACK[0x370] & 0xFFFFFF0F | (16 * (v680 & 0xF))) + 5695;
  LOBYTE(v676) = *(v24 + v652);
  v682 = 85 * ((v680 ^ (16 * v676)) & 0xF0 | STACK[0x36C] & 0xF) + 5695;
  v683 = *(v24 + v655);
  v684 = 85 * ((v676 ^ (16 * v683)) & 0xF0 | STACK[0x368] & 0xF) + 5695;
  v685 = (*(v24 + LODWORD(STACK[0x364])) << 12) ^ (v683 << 8);
  v686 = (85 * ((v685 >> 8) & 0xF0 | (LODWORD(STACK[0x35C]) >> 12)) + 5695) % 0x3CDu;
  v687 = (v685 ^ (*(v24 + v671) << 16) ^ (*(v24 + (v674 + 28050 - 973 * ((4414150 * (v674 + 28050)) >> 32))) << 20) ^ (*(v24 + v677) << 24) ^ (*(v24 + v679) << 28)) >> 12 >> ((v686 & 4 ^ 4) + (v686 & 4));
  LOWORD(v677) = (85 * ((v687 >> 4) & 0xF0 | HIBYTE(v668) & 0xF) + 5695) % 0x3CDu;
  LOWORD(v685) = (85 * (v687 & 0xF0 | (v668 >> 20) & 0xF) + 5695) % 0x3CDu;
  LOWORD(v668) = (85 * ((v687 >> 8) & 0xF0 | (v668 >> 28)) + 5695) % 0x3CDu;
  v688 = (*(v24 + v685) << 20) ^ (*(v24 + (85 * (((LODWORD(STACK[0x35C]) ^ 0xFCFE0200) >> 16) & 0xF | (16 * (v687 & 0xF))) + 5695) % 0x3CDu) << 16);
  v689 = *(v24 + v681 % 0x3CDu);
  v690 = v689 ^ (16 * *(v24 + v682 % 0x3CDu));
  v691 = v690 ^ (*(v24 + v684 % 0x3CDu) << 8);
  v692 = v691 ^ (*(v24 + v686) << 12);
  v693 = v688 ^ v692;
  v694 = v693 ^ (*(v24 + v677) << 24);
  v695 = 85 * ((v694 ^ (*(v24 + v668) << 28)) >> 28) + 80750;
  v696 = 85 * ((v693 >> 20) & 0xF) + 80750 - 973 * ((4414150 * (85 * ((v693 >> 20) & 0xF) + 80750)) >> 32);
  v697 = (*(v24 + (85 * (HIBYTE(v694) & 0xF) + 80750 - 973 * ((4414150 * (85 * (HIBYTE(v694) & 0xF) + 80750)) >> 32))) << 8) ^ (*(v24 + (v695 - 973 * ((4414150 * v695) >> 32))) << 12);
  v698 = *(v24 + (85 * (HIWORD(v693) & 0xF) + 80750 - 973 * ((4414150 * (85 * (HIWORD(v693) & 0xF) + 80750)) >> 32)));
  v699 = *(v24 + (85 * (v692 >> 12) + 80750 - 973 * ((4414150 * (85 * (v692 >> 12) + 80750)) >> 32)));
  v700 = v697 | v698;
  v701 = v699 - ((2 * v699) & 0xFFFFFF7F);
  v702 = *(v24 + (85 * ((v691 >> 8) & 0xF) + 80750 - 973 * ((4414150 * (85 * ((v691 >> 8) & 0xF) + 80750)) >> 32)));
  v703 = ((v702 - ((2 * v702) & 0x1AC) - 2018776874) ^ 0x541721) & ((*(v24 + v696) << 12) ^ (v700 << 8) ^ 0xF418B3) ^ (v702 - ((2 * v702) & 0x1AC) - 2018776874) & 0x3E74C;
  v704 = *(v24 + (85 * (v689 & 0xF) + 80750 - 973 * ((4414150 * (85 * (v689 & 0xFu) + 80750)) >> 32)));
  LODWORD(STACK[0x4FC]) = (((LODWORD(STACK[0x40C]) + 1225836607) ^ 0x1873937D) - 1365465922) ^ (LODWORD(STACK[0x40C]) + 1225836607) ^ (((LODWORD(STACK[0x40C]) + 1225836607) ^ 0x69B12230) - 547482127) ^ (((LODWORD(STACK[0x40C]) + 1225836607) ^ 0xEB2D8A8D) + 1573043534) ^ (((LODWORD(STACK[0x40C]) + 1225836607) ^ 0xD3FFF3FF) + 1695597632) ^ LODWORD(STACK[0x37C]);
  LODWORD(STACK[0x4F4]) = v667 ^ (16 * *(v24 + (85 * (v690 >> 4) + 80750 - 973 * ((4414150 * (85 * (v690 >> 4) + 80750)) >> 32)))) ^ (v704 - ((2 * v704) & 0x1F4) + 773708538) & 0xC0412C3 ^ (((v701 << 12) + 1663823872) ^ (v703 << 8) ^ 0x27282A3C) & ((v704 - ((2 * v704) & 0x1F4) + 773708538) ^ 0xD1E22544);
  LOWORD(v704) = (85 * ((LODWORD(STACK[0x550]) >> 20) & 0xF) - 15386) % 0x3CDu;
  LOWORD(v701) = (85 * (LODWORD(STACK[0x550]) >> 12) - 15386) % 0x3CDu;
  v705 = (*(v24 + (85 * (HIBYTE(LODWORD(STACK[0x550])) & 0xF) - 15386) % 0x3CDu) << 8) ^ (*(v24 + (85 * (LODWORD(STACK[0x550]) >> 28) - 15386) % 0x3CDu) << 12) | *(v24 + (85 * (HIWORD(LODWORD(STACK[0x550])) & 0xF) - 15386) % 0x3CDu);
  LOWORD(v679) = (85 * ((LODWORD(STACK[0x550]) >> 8) & 0xF) - 15386) % 0x3CDu;
  LOWORD(v690) = (85 * (LODWORD(STACK[0x550]) >> 4) - 15386) % 0x3CDu;
  v706 = LODWORD(STACK[0x52C]) + 322772662;
  v667 ^= 0x9BCAAF9D;
  v707 = v667 ^ LODWORD(STACK[0x3F4]);
  LODWORD(STACK[0x4E4]) = v707;
  v708 = v667 - 1310789982 - v707;
  LODWORD(STACK[0x4EC]) = v708;
  v709 = LODWORD(STACK[0x410]) + v708;
  LODWORD(STACK[0x52C]) = v709;
  v710 = LODWORD(STACK[0x538]) ^ 0xC72BA969 ^ v709;
  LODWORD(STACK[0x4E0]) = v710;
  v711 = v706 - v710 - 670771719;
  v712 = (85 * (HIBYTE(v711) & 0xF) - 15386) % 0x3CDu;
  v713 = (85 * (v711 >> 28) - 15386) % 0x3CDu;
  v714 = (85 * ((v711 >> 20) & 0xF) - 15386) % 0x3CDu;
  v715 = 85 * (HIWORD(v711) & 0xF) - 15386 - 973 * ((85 * (BYTE2(v711) & 0xF) - 15386) / 0x3CDu);
  v716 = (85 * (v711 >> 12) - 15386) % 0x3CDu;
  v717 = (85 * ((v711 >> 8) & 0xF) - 15386) % 0x3CDu;
  LOWORD(v706) = (85 * (v711 >> 4) - 15386) % 0x3CDu;
  v718 = *(v24 + (85 * (v711 & 0xF) - 15386) % 0x3CDu);
  v719 = *(v24 + LODWORD(STACK[0x414]));
  v720 = 85 * (v719 & 0xF | (16 * (v718 & 0xF)));
  v721 = v720 + 58140 - 973 * ((4414150 * (v720 + 58140)) >> 32);
  v722 = 85 * (*(v24 + (v720 + 28050) % 0x3CDu) ^ LODWORD(STACK[0x568]));
  LODWORD(STACK[0x4F0]) = v722 + 28050 - 973 * ((4414150 * (v722 + 28050)) >> 32);
  v723 = v722 + 58140 - 973 * ((4414150 * (v722 + 58140)) >> 32);
  v724 = (v705 << 8) ^ (*(v24 + v704) << 12);
  v725 = v724 | *(v24 + v679);
  v726 = (v725 << 8) ^ (*(v24 + v701) << 12);
  v727 = (*(v24 + v713) << 12) ^ (*(v24 + v712) << 8);
  v728 = (v726 | v719) ^ (16 * *(v24 + v690));
  v729 = ((v727 | *(v24 + v715)) << 8) ^ (*(v24 + v714) << 12);
  v730 = v729 | *(v24 + v717);
  v731 = (v730 << 8) ^ (*(v24 + v716) << 12);
  v732 = (v731 | v718) ^ (16 * *(v24 + v706));
  v733 = 85 * (v732 & 0xF0 | (v728 >> 4));
  v734 = 85 * (*(v24 + (v733 + 28050) % 0x3CDu) ^ (16 * *(v24 + (85 * (*(v24 + v721) ^ (*(v24 + v723) >> 4)) + 28050) % 0x3CDu)));
  v735 = v734 + 28050 - 973 * ((4414150 * (v734 + 28050)) >> 32);
  LOWORD(v733) = (85 * (*(v24 + (v733 + 58140 - 973 * ((4414150 * (v733 + 58140)) >> 32))) ^ (*(v24 + (v734 + 58140 - 973 * ((4414150 * (v734 + 58140)) >> 32))) >> 4)) + 28050) % 0x3CDu;
  v736 = (v732 >> 4) & 0xF0 | (v728 >> 8) & 0xF;
  v737 = 85 * v736 + 28050 - 973 * ((17243 * (85 * v736 + 28050)) >> 24);
  v738 = *(v24 + (85 * v736 + 28050) % 0x3CDu) ^ (16 * *(v24 + v733));
  v739 = 85 * v738 + 28050 - 973 * ((4414150 * (85 * v738 + 28050)) >> 32);
  v740 = 85 * ((v731 >> 8) & 0xF0 | (v726 >> 12));
  v741 = 85 * (((2 * v738) & 0x558) + (v738 ^ 0x2AC));
  v742 = *(v24 + (v740 + 28050) % 0x3CDu) ^ (16 * *(v24 + (85 * (*(v24 + (LODWORD(STACK[0x408]) + 85 * (v736 - (v737 & 0x154) + (v737 & 0xFD54 | 0x2AB))) % 0x3CD) ^ (*(v24 + (v741 - 973 * ((4414150 * v741) >> 32))) >> 4)) + 28050) % 0x3CDu));
  v743 = (((83 - v742) & 0x55) + ((v742 + 684) & 0x55)) * (v742 + 684);
  v744 = 85 * ((v731 >> 12) & 0xF0 | HIWORD(v726) & 0xF);
  v745 = *(v24 + LODWORD(STACK[0x4F0])) ^ (16 * *(v24 + v735)) ^ (*(v24 + v739) << 8);
  v746 = 85 * (*(v24 + (v744 + 28050) % 0x3CDu) ^ (16 * *(v24 + (85 * (*(v24 + (v740 + 58140 - 973 * ((4414150 * (v740 + 58140)) >> 32))) ^ (*(v24 + (v743 - 973 * ((4414150 * v743) >> 32))) >> 4)) + 28050) % 0x3CDu)));
  LOWORD(v743) = (85 * (*(v24 + (v744 + 58140 - 973 * ((4414150 * (v744 + 58140)) >> 32))) ^ (*(v24 + (v746 + 58140 - 973 * ((4414150 * (v746 + 58140)) >> 32))) >> 4)) + 28050) % 0x3CDu;
  v747 = BYTE1(v730);
  v748 = 85 * (BYTE1(v730) & 0xF0 | (v724 >> 12));
  v749 = 85 * (*(v24 + (v748 + 28050) % 0x3CDu) ^ (16 * *(v24 + v743)));
  v750 = 85 * (*(v24 + (v748 + 58140 - 973 * ((4414150 * (v748 + 58140)) >> 32))) ^ (*(v24 + (v749 + 58140 - 973 * ((4414150 * (v749 + 58140)) >> 32))) >> 4)) + 28050;
  v751 = v750 - 973 * ((17243 * v750) >> 24);
  v752 = 85 * ((v729 >> 12) & 0xF0 | HIWORD(v724) & 0xF);
  v753 = v752 + 28050 - 1946 * ((2207075 * (v752 + 28050)) >> 32);
  if (v753 >= 0x3CD)
  {
    v753 -= 973;
  }

  v754 = 85 * (*(v24 + v753) ^ (16 * *(v24 + v751)));
  v755 = v754 + 28050 - 973 * ((4414150 * (v754 + 28050)) >> 32);
  v756 = *(v24 + (v752 + 58140 - 973 * ((4414150 * (v752 + 58140)) >> 32))) ^ (*(v24 + (v754 + 58140 - 973 * ((4414150 * (v754 + 58140)) >> 32))) >> 4);
  LOWORD(v754) = (85 * v756 + 28050) % 0x3CDu;
  v757 = (v727 >> 8) & 0xF0 | (v725 >> 20) & 0xF;
  v758 = (((v756 & 0x2F) + (v756 & 0x2F ^ 0x2F) - 47) ^ ((53 - v757) | (v757 + 330)) & 0x55) * (v757 + 330);
  v759 = 85 * (*(v24 + (v758 - 973 * ((4414150 * v758) >> 32))) ^ (16 * *(v24 + v754))) + 28050;
  v760 = *(v24 + (v759 - 973 * ((4414150 * v759) >> 32)));
  v761 = (v745 | (*(v24 + v755) << 24)) ^ (*(v24 + (85 * v742 + 28050 - 973 * ((4414150 * (85 * v742 + 28050)) >> 32))) << 12) ^ (*(v24 + (v746 + 28050 - 973 * ((4414150 * (v746 + 28050)) >> 32))) << 16) ^ (*(v24 + (v749 + 28050 - 973 * ((4414150 * (v749 + 28050)) >> 32))) << 20) ^ (v760 << ((v747 & 0x10 ^ 0x1C) + (v747 & 0x10u)));
  v762 = v761 >> ((v760 & 4 ^ 4) + (v760 & 4));
  v763 = (*(v24 + (85 * (v762 & 0xF0 | (v728 >> 8) & 0xF) + 5695) % 0x3CDu) << 8) ^ (*(v24 + (85 * ((v762 >> 4) & 0xF0 | (v726 >> 12)) + 5695) % 0x3CDu) << 12);
  v764 = *(v24 + (85 * (v719 & 0xF | (16 * (v761 & 0xF))) + 5695) % 0x3CDu);
  LODWORD(v760) = ((16 * *(v24 + (85 * ((v728 >> 4) | (16 * (v762 & 0xF))) + 5695) % 0x3CDu)) | (*(v24 + (85 * ((v762 >> 8) & 0xF0 | BYTE2(v726) & 0xF) + 5695) % 0x3CDu) << 16)) ^ (v763 | v764);
  v765 = v760 ^ (*(v24 + (85 * ((v762 >> 12) & 0xF0 | (v724 >> 12)) + 5695) % 0x3CDu) << 20);
  v766 = (*(v24 + (85 * ((v762 >> 20) & 0xF0 | (v725 >> 20) & 0xF) + 5695) % 0x3CDu) << 28) ^ (*(v24 + (85 * (BYTE2(v762) & 0xF0 | BYTE2(v724) & 0xF) + 5695) % 0x3CDu) << 24) ^ v765;
  v767 = *(v24 + (85 * (WORD1(v760) & 0xF) + 80750 - 973 * ((4414150 * (85 * (WORD1(v760) & 0xF) + 80750)) >> 32)));
  v768 = (*(v24 + (85 * (v766 >> 28) + 80750 - 973 * ((4414150 * (85 * (v766 >> 28) + 80750)) >> 32))) << 12) ^ (*(v24 + (85 * (HIBYTE(v766) & 0xF) + 80750 - 973 * ((4414150 * (85 * (HIBYTE(v766) & 0xF) + 80750)) >> 32))) << 8) | v767;
  v769 = *(v24 + (85 * ((v765 >> 20) & 0xF) + 80750 - 973 * ((4414150 * (85 * ((v765 >> 20) & 0xF) + 80750)) >> 32)));
  v770 = *(v24 + (85 * (v763 >> 12) + 80750 - 973 * ((4414150 * (85 * (v763 >> 12) + 80750)) >> 32)));
  v771 = 85 * ((v760 >> 8) & 0xF) + 80750 - 973 * ((4414150 * (85 * ((v760 >> 8) & 0xF) + 80750)) >> 32);
  v772 = (LODWORD(STACK[0x4A0]) + ((v769 + 118437 - ((2 * v769) & 0x18)) << 12) + 11997184) ^ 0xA203D0 ^ ((v768 << 8) - ((v768 & STACK[0x2F8] ^ v767 & 8) << 9) + 647365632);
  v773 = *(v24 + v771) - ((2 * *(v24 + v771)) & 0x22) + 2080527121;
  v774 = v772 & (v773 ^ 0xFDACEE) ^ v773 & 0x2182F;
  v775 = *(v24 + (85 * (v760 >> 4) + 80750 - 973 * ((4414150 * (85 * (v760 >> 4) + 80750)) >> 32)));
  v776 = *(v24 + (85 * (v764 & 0xF) + 80750 - 973 * ((4414150 * (85 * (v764 & 0xFu) + 80750)) >> 32)));
  v777 = STACK[0x4EC];
  LODWORD(STACK[0x4F0]) = (16 * (v775 - ((2 * v775) & 0x8C)) + 694711392) ^ LODWORD(STACK[0x4EC]) ^ (v776 - ((2 * v776) & 0x1E8) - 1625246220) & 0x2510 ^ ((((v770 + 414934 - ((2 * v770) & 0x19A)) << 12) - 36864) ^ (v774 << 8) ^ 0x4E6ED3EF) & ((v776 - ((2 * v776) & 0x1E8) - 1625246220) ^ 0x60DF4A0B);
  LODWORD(STACK[0x4EC]) = v777 + (((LODWORD(STACK[0x538]) ^ 0x235E5989) - 1036826660) ^ ((LODWORD(STACK[0x538]) ^ 0xDDD71AEA) + 1018823865) ^ ((LODWORD(STACK[0x538]) ^ 0x39A2EA0A) - 657460135));
  LODWORD(STACK[0x550]) ^= LODWORD(STACK[0x434]);
  return (*(STACK[0x480] + 8 * (LODWORD(STACK[0x570]) ^ (76 * ((STACK[0x3F8] & 1) == 0)))))();
}

void sub_100212BEC(int a1@<W0>, int a2@<W1>, int a3@<W3>, int a4@<W4>, int a5@<W6>, int a6@<W7>, int a7@<W8>)
{
  v17 = v7;
  LODWORD(STACK[0x4EC]) = 0;
  v18 = (LODWORD(STACK[0x4E0]) + LODWORD(STACK[0x4E4])) ^ a4;
  v19 = STACK[0x320];
  LODWORD(STACK[0x52C]) = v9;
  v20 = (LODWORD(STACK[0x318]) + v19) ^ a2;
  v21 = LODWORD(STACK[0x518]) + 318;
  LODWORD(STACK[0x568]) = v21;
  LODWORD(STACK[0x53C]) = a5;
  LODWORD(STACK[0x4E8]) = a1 + a7;
  LODWORD(STACK[0x570]) = (v18 - v10) ^ a7 ^ (v10 - (((v16 ^ 0xEBDD2175) - 688492192) ^ ((v16 ^ 0x664F0C2B) + 1533303810) ^ ((v16 ^ 0x2D9C4A20) + v21 + 280429980)) - 1124593018);
  LODWORD(STACK[0x518]) = (v20 - v8) ^ (v8 + a6);
  v22 = STACK[0x514];
  LOBYTE(STACK[0xA74]) = HIBYTE(LODWORD(STACK[0x514])) ^ 0x71;
  LOBYTE(STACK[0xA70]) = HIBYTE(a3) ^ 0x83;
  v23 = STACK[0x508];
  LOBYTE(STACK[0xA78]) = HIBYTE(LODWORD(STACK[0x508])) ^ 0x71;
  v24 = STACK[0x504];
  LOBYTE(STACK[0xA7C]) = HIBYTE(LODWORD(STACK[0x504])) ^ 0x71;
  v25 = v12;
  v26 = STACK[0x560];
  LOBYTE(STACK[0xA80]) = HIBYTE(LODWORD(STACK[0x560])) ^ 0x71;
  v27 = STACK[0x550];
  LOBYTE(STACK[0xA88]) = HIBYTE(LODWORD(STACK[0x550])) ^ 0x71;
  v28 = STACK[0x4F4];
  LOBYTE(STACK[0xA84]) = (35 * (a3 & 0xE ^ 0x69 ^ (a3 & 0x6E ^ 7) & (a3 & 0x6E ^ 0x77))) ^ HIBYTE(LODWORD(STACK[0x4F4])) ^ 0x5F;
  LOBYTE(STACK[0xA8C]) = HIBYTE(v15) ^ 0x95;
  LOBYTE(STACK[0xA20]) = HIBYTE(v13) ^ 0xC9;
  v29 = STACK[0x520];
  LOBYTE(STACK[0xA24]) = HIBYTE(LODWORD(STACK[0x520])) ^ 0x23;
  v30 = STACK[0x558];
  LOBYTE(STACK[0xA28]) = HIBYTE(LODWORD(STACK[0x558])) ^ 0xBA;
  LOBYTE(STACK[0xA2C]) = HIBYTE(v14) ^ 0x4A;
  LOBYTE(STACK[0xA30]) = HIBYTE(v17) ^ 0x77;
  v31 = v11;
  v32 = STACK[0x4F0];
  LOBYTE(STACK[0xA38]) = HIBYTE(LODWORD(STACK[0x4F0])) ^ 0x72;
  LOBYTE(STACK[0xA3C]) = HIBYTE(v25) ^ 0xE6;
  v33 = STACK[0x4FC];
  LOBYTE(STACK[0xA34]) = HIBYTE(LODWORD(STACK[0x4FC])) ^ 0xAF;
  LOBYTE(STACK[0xA71]) = ((((HIBYTE(v15) & 0x2A ^ 0x49) + 18) ^ ((HIBYTE(v15) & 0x2A) + 97) ^ ((HIBYTE(v15) & 0x2A ^ 0x17) + 80)) + (((HIBYTE(v15) & 0x2A ^ 0x21) - 7) ^ ((HIBYTE(v15) & 0x2A ^ 0xBC) + 102) ^ ((HIBYTE(v15) & 0x2A ^ 0xBD) + 101)) - 77) ^ BYTE2(a3) ^ 0x42;
  LOBYTE(STACK[0xA7D]) = BYTE2(v24) ^ 0x71;
  LOBYTE(STACK[0xA81]) = BYTE2(v26) ^ 0x71;
  LOBYTE(STACK[0xA75]) = BYTE2(v22) ^ 0x71;
  LOBYTE(STACK[0xA89]) = BYTE2(v27) ^ 0x71;
  LOBYTE(STACK[0xA8D]) = BYTE2(v15) ^ 0xEA;
  LOBYTE(STACK[0xA79]) = BYTE2(v23) ^ 0x71;
  LOBYTE(STACK[0xA85]) = BYTE2(v28) ^ 0x44;
  LOBYTE(STACK[0xA21]) = BYTE2(v13) ^ 0xD9;
  LOBYTE(STACK[0xA25]) = BYTE2(v29) ^ 0xC1;
  LOBYTE(STACK[0xA31]) = BYTE2(v17) ^ 0x82;
  LOBYTE(STACK[0xA29]) = BYTE2(v30) ^ 0x6C;
  LOBYTE(STACK[0xA35]) = BYTE2(v33) ^ 0xF6;
  LOBYTE(STACK[0xA3D]) = BYTE2(v25) ^ 0xE6;
  LOBYTE(STACK[0xA2D]) = BYTE2(v14) ^ 0x7F;
  LOBYTE(STACK[0xA39]) = BYTE2(v32) ^ 0x7B;
  LOBYTE(STACK[0xA72]) = BYTE1(a3) ^ 0xF7;
  LOBYTE(STACK[0xA76]) = BYTE1(v22) ^ 0x71;
  *(STACK[0x308] + (((-99 - (BYTE1(v23) & 0xA)) ^ ((BYTE1(v23) & 0xA) + 109) ^ ((BYTE1(v23) & 0xA ^ 0xBA) - 39)) + (((BYTE1(v23) & 0xA ^ 0xEC) - 15) ^ ((BYTE1(v23) & 0xA) - 33) ^ ((BYTE1(v23) & 0xA ^ 0x93) - 112)) - 122)) = BYTE1(v23) ^ 0x71;
  LOBYTE(STACK[0xA82]) = BYTE1(v26) ^ 0x71;
  LOBYTE(STACK[0xA7E]) = BYTE1(v24) ^ 0x71;
  LOBYTE(STACK[0xA86]) = BYTE1(v28) ^ 0xE1;
  LOBYTE(STACK[0xA8A]) = BYTE1(v27) ^ 0x71;
  LOBYTE(STACK[0xA8E]) = BYTE1(v15) ^ 0xD;
  LOBYTE(STACK[0xA26]) = BYTE1(v29) ^ 0x41;
  LOBYTE(STACK[0xA3E]) = BYTE1(v25) ^ 0xE6;
  LOBYTE(STACK[0xA36]) = BYTE1(v33) ^ 0x2E;
  LOBYTE(STACK[0xA2E]) = BYTE1(v14) ^ 0xE3;
  LOBYTE(STACK[0xA2A]) = BYTE1(v30) ^ 0x8C;
  LOBYTE(STACK[0xA22]) = BYTE1(v13) ^ 0xD6;
  LOBYTE(STACK[0xA3A]) = BYTE1(v32) ^ 0x65;
  LOBYTE(STACK[0xA32]) = BYTE1(v17) ^ 0x7A;
  LOBYTE(STACK[0xA73]) = a3 ^ 0x97;
  LOBYTE(STACK[0xA7B]) = (v23 + (~(2 * v23) | 0x67) - 51) ^ 0xBD;
  LOBYTE(STACK[0xA77]) = (v22 - ((2 * v22) & 0x20) + 16) ^ 0x61;
  LOBYTE(STACK[0xA7F]) = (v24 - ((2 * v24) & 0x20) + 16) ^ 0x61;
  LOBYTE(STACK[0xA83]) = (v26 - 2 * (v26 & 0x3F) + 63) ^ 0x4E;
  LOBYTE(STACK[0xA87]) = v28 ^ 0x12;
  LOBYTE(STACK[0xA8F]) = v15 ^ 0xCB;
  LOBYTE(STACK[0xA8B]) = v27 ^ 0x71;
  LOBYTE(STACK[0xA23]) = LODWORD(STACK[0x52C]) - ((2 * LOBYTE(STACK[0x52C])) & 0xCC) - 26;
  LOBYTE(STACK[0xA27]) = v29 ^ 0xCD;
  LOBYTE(STACK[0xA33]) = v31 - ((2 * v31) & 0xCC) - 26;
  LOBYTE(STACK[0xA3B]) = v32 ^ 0x79;
  LOBYTE(STACK[0xA2B]) = v30 ^ 0xE6;
  v34 = STACK[0x53C];
  v35 = (2 * LODWORD(STACK[0x53C])) & 0xCCCCCCCC;
  LOBYTE(STACK[0xA3F]) = v25 ^ 0xE6;
  LOBYTE(STACK[0xA2F]) = v34 - v35 - 26;
  LOBYTE(STACK[0xA37]) = v33 ^ 0xD9;
  LODWORD(STACK[0x3F8]) = 1;
  JUMPOUT(0x1001F09A0);
}

uint64_t sub_1002131A4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7)
{
  v12 = LODWORD(STACK[0x518]) - 1036;
  v13 = LODWORD(STACK[0x518]) - 2952;
  v14 = LODWORD(STACK[0x558]) ^ LODWORD(STACK[0x508]);
  v15 = v7 ^ a4;
  v16 = STACK[0x2E0];
  *v16 = ((v7 ^ a4) >> 24) ^ 0xD9;
  v17 = LODWORD(STACK[0x520]) ^ LODWORD(STACK[0x514]);
  v16[4] = (v12 + 34) ^ HIBYTE(v17);
  v18 = STACK[0x504];
  v19 = a7 ^ LODWORD(STACK[0x504]);
  v16[8] = HIBYTE(v14) ^ 0x96;
  v16[12] = HIBYTE(v19) ^ 0x9B;
  v20 = STACK[0x560];
  v16[16] = ((v8 ^ LODWORD(STACK[0x560])) >> 24) ^ 0x2B;
  v21 = LODWORD(STACK[0x4FC]) ^ LODWORD(STACK[0x4F4]);
  v16[20] = ((v21 ^ 0xED502037) >> 24) ^ 2;
  v22 = LODWORD(STACK[0x550]) ^ LODWORD(STACK[0x4F0]);
  v16[24] = ((v22 ^ 0xC2568A88) >> 24) ^ 0x9C;
  v23 = v9 ^ v11 ^ 0x6E336527;
  v16[28] = HIBYTE(v23) ^ 0x11;
  v16[1] = BYTE2(v15) ^ 0x59;
  v16[5] = BYTE2(v17) ^ 0xE2;
  v16[9] = BYTE2(v14) ^ 0xDC;
  v16[13] = BYTE2(a7) + (BYTE2(v18) ^ 0x99) - 2 * (BYTE2(a7) & (BYTE2(v18) ^ 0x99));
  v16[17] = ((v8 ^ v20) >> 16) ^ 0x40;
  v16[21] = ((v21 ^ 0xED502037) >> 16) ^ 0xB0;
  v16[29] = BYTE2(v23) ^ 0x31;
  v16[25] = ((v22 ^ 0xC2568A88) >> 16) ^ 0x9D;
  v16[2] = BYTE1(v15) ^ 0x59;
  v16[6] = BYTE1(v17) ^ 0x20;
  v16[10] = BYTE1(v14) ^ 0x29;
  v16[14] = BYTE1(v19) ^ 0xF6;
  v16[22] = ~((v21 ^ 0x2037) >> 8);
  v16[18] = ((v8 ^ v20) >> 8) ^ 0xDF;
  v16[26] = ((v22 ^ 0x8A88) >> 8) ^ 0x4A;
  v16[30] = ((v9 ^ v11 ^ 0x6500) >> 8) ^ 0xEF;
  v16[3] = (v15 & 0x58 | a4 & 0xA7) ^ v10 & 0xA7 ^ 0x3C;
  v16[7] = v17 ^ 0x47;
  v16[11] = v14 ^ 0xB3;
  v16[15] = v19 ^ 0xBC;
  v16[19] = v8 ^ ~v20;
  v16[23] = v21 ^ 0x30;
  v16[27] = v22 ^ 0x2C;
  v16[31] = v9 ^ v11 ^ 6;
  return (*(STACK[0x480] + 8 * ((v13 - 259 + ((v13 + 9433) | 0x50) - 3455) ^ v13)))();
}

uint64_t sub_100213420()
{
  v3 = &STACK[0x590] + STACK[0x578];
  v4 = *(v2 + 8 * (v0 ^ 0x37A7));
  STACK[0x578] += (v0 + 259) ^ 0x399;
  v4(*(v1 + 8 * (v0 ^ 0x268)) - 12, STACK[0x2E8], 16);
  (*(v2 + 8 * (v0 ^ 0x37A7)))(*(v1 + 8 * (v0 ^ 0x748)), v3, 560);
  v5 = (*(v2 + 8 * (v0 + 10834)))(1028);
  v6 = (*(v2 + 8 * (v0 ^ 0x365E)))(1032);
  STACK[0x530] = v5;
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  return (*(v2 + 8 * ((v8 * (((v0 - 132441897) & 0x7E4EBFB) + 3979)) ^ v0)))();
}

uint64_t sub_100213504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  STACK[0x520] = v44;
  STACK[0x2D0] = v45;
  STACK[0x4D8] = &STACK[0x1E78CE7C04DA827B];
  v48 = v43 ^ 0x14E9u;
  v49 = -1802333311 * (v47 + 1408);
  v50 = *(v46 + 8 * (v43 - 1906)) - 4;
  v51 = *(v50 + ((-127 * (v47 + 0x80)) ^ 0x1FB2 ^ v48));
  v52 = *(v46 + 8 * (v43 & 0x5F1651A)) - 8;
  STACK[0x218] = v52;
  v53 = *(v52 + (BYTE1(v49) ^ 0xD3));
  LODWORD(v52) = HIWORD(v49);
  v54 = v51 ^ v49;
  HIDWORD(v55) = ((v53 >> 7) | (2 * v53)) ^ 0x3B;
  LODWORD(v55) = (HIDWORD(v55) ^ ((16 * v53) | 0x16)) << 24;
  STACK[0x228] = v50;
  v56 = *(v50 + (BYTE2(v49) ^ 0xD7));
  v57 = *(v46 + 8 * (v43 ^ 0x82Fu)) - 12;
  STACK[0x220] = v57;
  v58 = *(v57 + (HIBYTE(v49) ^ 4));
  LODWORD(STACK[0x570]) = (v56 ^ v52);
  v59 = (((v55 >> 25) << 8) ^ 0x85C72B3E) & (v54 ^ 0x85C7FF9F) | v54 & 0xC1;
  LOBYTE(v53) = ~LODWORD(STACK[0x9F0]);
  LODWORD(STACK[0x568]) = v59 ^ 0x12380040;
  LODWORD(STACK[0x560]) = v59 & 0x2E82F;
  v60 = ((v58 ^ 1) << 24) - 771751936;
  LODWORD(STACK[0x558]) = v60 ^ 0x2DFFFFFF;
  LODWORD(STACK[0x550]) = v60 & 0xC1FFFFFF;
  v61 = *(&STACK[0x9F0] + (*(&STACK[0x9F0] + ((*(&STACK[0x9F0] + (v53 & 1)) & 1) == 0)) & 1)) & 1;
  v62 = (((((v61 | 0x22FBBF3E) - 2 * v61 - 13) ^ 0x8475E0E9) + 885623581) ^ ((((v61 | 0x22FBBF3E) - 2 * v61 - 13) ^ 0xE95152EF) + 1508718875) ^ ((((v61 | 0x22FBBF3E) - 2 * v61 - 13) ^ 0x4FDF0D37) - 10262845)) + 2092497735;
  v63 = v62 < 0xF00D00C;
  v64 = STACK[0x9F0];
  STACK[0x580] = STACK[0x9F0] ^ (31 * (v43 ^ 0xA43u) + 0x6868686868684262);
  v65 = (((0x37E5A9E77B157D99 * v64 - 0x3FB264B681CFEDFDLL) ^ 0x228EC4491D628763) + 0x1D3CA0FF9CAD6AA0) ^ (0x37E5A9E77B157D99 * v64 - 0x3FB264B681CFEDFDLL) ^ (((0x37E5A9E77B157D99 * v64 - 0x3FB264B681CFEDFDLL) ^ 0xA2DF73FA6A6A7512) - 0x6292E8B3145A6711) ^ (((0x37E5A9E77B157D99 * v64 - 0x3FB264B681CFEDFDLL) ^ 0x1FD7D104E3279FC7) + 0x2065B5B262E8723CLL) ^ (((0x37E5A9E77B157D99 * v64 - 0x3FB264B681CFEDFDLL) ^ 0x5FCBFDFEEA1F7FB5) + 0x607999486BD0924ALL);
  v66 = ((2 * ((v65 ^ 0x8B09D493D1780AD4) & 0x8000000000000000 ^ 0x102363C859120)) ^ 0x2046C790B2240) + (v65 ^ 0x8F6FE24EDDDF3ECLL);
  v67 = v66 + HIDWORD(v66) - ((v66 + HIDWORD(v66)) >> 16);
  v68 = v67 + (v67 >> 8);
  v69 = (((v68 ^ v65 ^ 0xA51B51EE4270C596) + 0x4C412FC6A0CE4CALL) ^ ((v68 ^ v65 ^ 0x36DFD5137D01769DLL) - 0x68FF69FEAA82A83DLL) ^ ((v68 ^ v65 ^ 0x53891FB44141A108) - 0xDA9A35996C27FA8)) + 0x1AE7C2DFD0A39684;
  v70 = v69 - 0x7C7A9B3B26EFC9E1 + (((((v69 ^ 0x9DBEF8E222E1E802) + 0x1E3B9C26FBF1DE1DLL) ^ v69 ^ ((v69 ^ 0xDE3691DC5B72131CLL) + 0x5DB3F51882622503) ^ ((v69 ^ 0xC0CA0DFAA1C94540) + 0x434F693E78D9735FLL) ^ ((v69 ^ 0xFF38FFFFFEB577BELL) + 0x7CBD9B3B27A541A2)) >> 32) ^ 0x7C7A9B3B);
  v71 = 0xECC8000000000000 * v64 + 0x5D805733E8BD9F13;
  v72 = v70 - (v70 >> 16) + ((v70 - (v70 >> 16)) >> 8);
  v73 = ((v71 ^ 0x2807AF07F0847258) - 0x7587F8341839ED4BLL) ^ v71 ^ ((v71 ^ 0xA96EA25141772BDBLL) + 0xB110A9D56354B38) ^ ((v71 ^ 0xB914219EEA9339ADLL) + 0x1B6B8952FDD15942) ^ ((v71 ^ 0x65FD7BFBB3DDFF3DLL) - 0x387D2CC85B60602ELL);
  v74 = __ROR8__(v73 & 0x892221CA2AC4198 ^ ((v65 >> 13) ^ 0xF76BDF8F87184FE7) & (v73 ^ 0xA26FA8CC174260ECLL) ^ __ROR8__(v72, 13) ^ 0x566D95A24F9D0A3CLL, 51);
  v75 = (((v74 ^ 0x597BFD60854EA298) + 0x2AACEAF766C7BF1ALL) ^ ((v74 ^ 0x12D05688DE59C0C7) + 0x6107411F3DD0DD47) ^ ((v74 ^ 0x42E19DA40DBE176FLL) + 0x31368A33EE370AEFLL)) - 0x12B8B3DF4F1A57CDLL;
  v76 = ((((v75 ^ 0x7204432D34BC9B55) - 0x15E02ED152BA8BB0) ^ v75 ^ ((v75 ^ 0xE259571074D641ALL) - 0x69C1F88D614B74FFLL) ^ ((v75 ^ 0x439F64F68299150) - 0x63DD9BB30E2F81B4) ^ ((v75 ^ 0x1FFC4DEF3DDE7EFAuLL) - 0x781820135BD86E1ELL)) >> 32) ^ 0x67E46DFC;
  v77 = v75 - 0x67E46DFC660610E5 + v76 - ((v75 - 0x67E46DFC660610E5 + v76) >> 16);
  if (v62 >= 0xF00D00C)
  {
    v63 = v62 > 0xF00D00D;
  }

  v78 = v77 + (v77 >> 8);
  v79 = *(STACK[0x480] + 8 * ((50 * !v63) ^ v48));
  return v79(v79, (v78 + 1138233326), 1138233326, v48, 251711500, v72, v68, v62 > 0xF00D00D, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43);
}

uint64_t sub_100214198(int a1)
{
  v1 = LODWORD(STACK[0x568]) + 1600869822;
  v2 = v1 > 0x351CBAB0;
  if (v1 < 0x351CBAAF)
  {
    v2 = 1;
  }

  return (*(STACK[0x480] + 8 * (((8 * v2) | (16 * v2)) ^ (a1 - 3428))))();
}

uint64_t sub_1002143C0()
{
  (*(v1 + 8 * (v2 ^ 0x377C)))(STACK[0x530]);
  v3 = (*(v1 + 8 * (v2 + 10540)))(v0);
  STACK[0x578] += v2 ^ 0xFFFFFFFFFFFFFC79;
  return (*(v1 + 8 * v2))(v3);
}

uint64_t sub_1002143C8()
{
  v3 = (v2 - 1837070343) & 0x6D7F77F7;
  LODWORD(STACK[0x3E8]) = (LODWORD(STACK[0x560]) ^ ((LODWORD(STACK[0x570]) << ((v2 - 7) & 0xF7 ^ 0xE7)) ^ 0x97C217D0) & STACK[0x568] ^ 0xA960F36D) & STACK[0x558] ^ LODWORD(STACK[0x550]);
  STACK[0x570] = (v3 + 901736264) & 0xCA407BFF;
  v4 = 8 * (((v1 < STACK[0x570] + 1158111483) << 32) + v1 - 1158113850);
  *(&STACK[0x580] + v4) = *(&STACK[0x9F0] + v4) ^ 0x6868686868686868;
  return (*(STACK[0x480] + 8 * ((1009 * (v0 < 2)) ^ v3)))();
}

uint64_t sub_100214D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (v8 + a5) >> 16;
  v10 = (v8 + a5 - v9) >> 8;
  v11 = v8 + v6 + v10;
  v12 = v8 + v10 + ((v11 - v9) >> 24) - ((v11 + ((v11 - v9) >> 24) - ((v11 + ((v11 - v9) >> 24) - v9) >> 15) - v9) >> 7) - ((v11 + ((v11 - v9) >> 24) - v9) >> 15) - v9 + v6;
  v13 = (v12 ^ 0x9E8BACDC4F0131DELL) + ((v12 ^ 0x9E8BACDC4F0131DELL) >> 26) + (((v12 ^ 0x9E8BACDC4F0131DELL) + ((v12 ^ 0x9E8BACDC4F0131DELL) >> 26)) >> 9);
  v14 = v13 + (v13 >> 3);
  v15 = (v14 ^ 0xE2EC72282D20DADDLL) + ((v14 ^ 0xE2EC72282D20DADDLL) >> 25) + (((v14 ^ 0xE2EC72282D20DADDLL) + ((v14 ^ 0xE2EC72282D20DADDLL) >> 25)) >> 14);
  LODWORD(STACK[0x504]) = v14 ^ v12 ^ v5 ^ (v15 - (v15 >> 1));
  LODWORD(v15) = v7[72];
  LODWORD(v12) = v7[79];
  v16 = v7[102];
  LODWORD(v14) = v7[74];
  v17 = v7[35];
  v18 = v7[55];
  v19 = v7[84];
  v20 = v7[109];
  v21 = v7[82];
  v23 = v7[6];
  v22 = v7[7];
  v24 = v7[31];
  v25 = v7[96];
  v26 = v7[69];
  v28 = v7[48];
  v27 = v7[49];
  v29 = v7[15];
  LODWORD(STACK[0x4D0]) = v7[14];
  LODWORD(STACK[0x550]) = v7[59] + v19;
  LODWORD(STACK[0x548]) = v19 - v18;
  LODWORD(STACK[0x568]) = v18 + v29;
  v30 = v7[61];
  LODWORD(STACK[0x508]) = v7[60];
  v31 = v20 ^ v30;
  v32 = v7[33];
  LODWORD(STACK[0x560]) = v29 - v12;
  LODWORD(STACK[0x4A8]) = v17 ^ v12;
  LODWORD(v12) = v7[86];
  LODWORD(STACK[0x514]) = v17 + v14;
  LODWORD(STACK[0x53C]) = v12 ^ v14;
  LODWORD(STACK[0x4F0]) = v24 ^ v12;
  v33 = v20 - v25;
  LODWORD(v14) = *v7;
  v34 = v7[1];
  v35 = v30 ^ v23;
  LODWORD(STACK[0x4B4]) = v24 + v21;
  LODWORD(v12) = v7[17];
  LODWORD(STACK[0x470]) = v21 + v23;
  v36 = v7[106];
  LODWORD(STACK[0x4E8]) = v15 + v12 + 1295422449;
  LODWORD(STACK[0x4F8]) = v36 + v26;
  LODWORD(STACK[0x518]) = v12 ^ v26;
  LODWORD(STACK[0x45C]) = v36 ^ v25;
  LODWORD(STACK[0x500]) = (v32 ^ v27) + 2 * (v32 & v27);
  v37 = v34 + v16;
  LODWORD(STACK[0x558]) = ((v34 + v16 - ((2 * (v34 + v16)) & 0xA0957AEA) + 1347075445) ^ v31 ^ 0x504ABD75) + 2 * (v31 & (v34 + v16));
  LODWORD(v12) = v7[30];
  LODWORD(STACK[0x3F4]) = v12 + v15;
  LODWORD(v15) = v7[66];
  LODWORD(STACK[0x540]) = v15 ^ v12;
  LODWORD(v12) = v7[34];
  LODWORD(STACK[0x448]) = v15 + v12;
  LODWORD(v15) = v7[103];
  LODWORD(STACK[0x410]) = v15 ^ v12;
  v38 = v7[75];
  LODWORD(STACK[0x3CC]) = v15 - v38;
  LODWORD(v15) = v7[46];
  LODWORD(v12) = v7[47];
  LODWORD(STACK[0x468]) = v15 + v38;
  v39 = v7[92];
  LODWORD(STACK[0x428]) = v15 ^ v39;
  LODWORD(v15) = v7[108];
  LODWORD(STACK[0x4C4]) = v15 + v39;
  v40 = v7[24];
  LODWORD(STACK[0x440]) = v15 ^ v40;
  LODWORD(v15) = v7[80];
  LODWORD(STACK[0x4EC]) = v40 + v15;
  v41 = v7[70];
  LODWORD(STACK[0x43C]) = v15 + v41;
  LODWORD(v15) = v7[94];
  LODWORD(STACK[0x370]) = v15 + v41;
  v42 = v7[28];
  v43 = v7[29];
  LODWORD(STACK[0x3B4]) = v15 ^ v42;
  LODWORD(v15) = v7[104];
  LODWORD(STACK[0x3B0]) = v42 + v15;
  v44 = v7[27];
  LODWORD(STACK[0x4A0]) = v15 - v44;
  LODWORD(v15) = v7[99];
  LODWORD(STACK[0x398]) = v15 ^ v44;
  v45 = v7[76];
  LODWORD(STACK[0x4C8]) = v15 - v45;
  LODWORD(v15) = v7[52];
  LODWORD(STACK[0x478]) = v45 + v15;
  v46 = v7[107];
  LODWORD(STACK[0x4E4]) = v15 ^ v46;
  LODWORD(v15) = v7[78];
  v47 = v15 ^ v46;
  v48 = v7[98];
  LODWORD(STACK[0x394]) = v15 ^ v48;
  LODWORD(v15) = v7[38];
  v49 = v7[39];
  v50 = v15 + v48;
  v51 = v7[56];
  LODWORD(STACK[0x3A4]) = v51 ^ v15;
  LODWORD(v15) = v7[110];
  LODWORD(STACK[0x46C]) = v51 - v15;
  v52 = v7[22];
  LODWORD(STACK[0x378]) = v15 + v52;
  LODWORD(v15) = v7[93];
  v53 = v52 + v15;
  LODWORD(STACK[0x42C]) = v14 + v15;
  LODWORD(v15) = v7[9];
  LODWORD(STACK[0x49C]) = v14 - v15;
  v54 = v7[62];
  LODWORD(v14) = v7[63];
  LODWORD(STACK[0x444]) = v15 + v14;
  LODWORD(v15) = v7[87];
  LODWORD(STACK[0x464]) = v14 - v15;
  LODWORD(STACK[0x498]) = v43 + v15;
  LODWORD(STACK[0x420]) = v43 + v54;
  LODWORD(v15) = v7[12];
  LODWORD(STACK[0x360]) = v7[13];
  v55 = v54 - v15;
  v56 = v7[25];
  LODWORD(STACK[0x488]) = v15 - v56;
  LODWORD(v15) = v7[5];
  LODWORD(STACK[0x40C]) = v56 ^ v15;
  LODWORD(STACK[0x460]) = v15 - v32;
  LODWORD(v15) = v7[23];
  LODWORD(STACK[0x3A8]) = v27 + v15;
  v57 = v7[65];
  LODWORD(STACK[0x37C]) = v57 + v15;
  LODWORD(v15) = v7[2];
  v58 = v7[3];
  LODWORD(STACK[0x380]) = v15 ^ v57;
  v59 = v7[58];
  LODWORD(STACK[0x350]) = v15 - v59;
  LODWORD(v15) = v7[42];
  v60 = v7[43];
  LODWORD(STACK[0x490]) = v59 - v15;
  LODWORD(STACK[0x35C]) = v15 - v12;
  LODWORD(v15) = v7[51];
  LODWORD(STACK[0x390]) = v7[50];
  v61 = v12 - v15;
  v62 = v7[36];
  LODWORD(v12) = v7[37];
  LODWORD(STACK[0x388]) = v15 - v12;
  LODWORD(STACK[0x358]) = v60 + v12;
  LODWORD(v12) = v7[53];
  v63 = v12 ^ v60;
  LODWORD(v15) = v7[10];
  LODWORD(STACK[0x348]) = v12 - v15;
  LODWORD(v12) = v7[18];
  LODWORD(STACK[0x340]) = v12 ^ v16;
  v64 = v22 ^ v12;
  LODWORD(v12) = v7[105];
  v65 = v12 ^ v22;
  v66 = v7[44];
  LODWORD(STACK[0x3D0]) = v66 - v12;
  v67 = v15 + v62;
  LODWORD(STACK[0x434]) = v66 + v62;
  v68 = v7[11];
  LODWORD(v15) = v7[91];
  v69 = v68 + v15 + 545075888;
  v70 = v7[81];
  LODWORD(v14) = v34 - v70;
  v71 = v7[20];
  v72 = v15 + v71;
  LODWORD(v15) = v7[95];
  LODWORD(v12) = v15 + v71;
  v73 = v7[41];
  LODWORD(STACK[0x374]) = v15 + v73;
  LODWORD(v15) = v7[90];
  v74 = v73 - v15;
  v75 = v7[64];
  LODWORD(STACK[0x334]) = v75 + v15;
  LODWORD(v15) = v7[16];
  v76 = v75 - v15;
  v77 = v7[100];
  LODWORD(STACK[0x364]) = v15 - v77;
  LODWORD(STACK[0x4FC]) = v35 ^ v37;
  LODWORD(v15) = v7[4];
  v78 = v77 + v15;
  v79 = v7[57];
  LODWORD(v15) = v15 + v79;
  LODWORD(STACK[0x4F4]) = v35 - v50;
  LODWORD(STACK[0x538]) = v50 ^ v15;
  LODWORD(STACK[0x47C]) = v15 - v47;
  LODWORD(STACK[0x458]) = v47 - v55;
  LODWORD(STACK[0x4A4]) = v55 ^ v14;
  LODWORD(STACK[0x4CC]) = v12 + v14;
  LODWORD(STACK[0x4E0]) = v69 + v12 + 564900911;
  LODWORD(STACK[0x52C]) = v65 + 792582626 + v69;
  LODWORD(v15) = v65 - ((2 * v65) & 0xE15E0F54);
  v80 = v33;
  LODWORD(v12) = (2 * v33) & 0xE15E0F54;
  v81 = v7[77];
  v82 = v81 + v68;
  v83 = v7[89];
  LODWORD(STACK[0x324]) = v83;
  v84 = v83 ^ v81 ^ 0xF0AF07AA;
  LODWORD(STACK[0x4B8]) = v84 ^ (v15 - 256964694);
  LODWORD(STACK[0x494]) = v84 ^ (v80 - v12 - 256964694);
  LODWORD(STACK[0x424]) = v53 - v74 - 400382002;
  LODWORD(v12) = v7[54];
  v85 = v70 + v12;
  v86 = v7[83];
  v87 = v86 ^ v12;
  LODWORD(v12) = v7[19];
  LODWORD(STACK[0x338]) = v86 ^ v12;
  v88 = v7[88];
  v89 = v88 ^ v12;
  v90 = v7[32];
  LODWORD(STACK[0x33C]) = v88 ^ v90;
  v91 = LODWORD(STACK[0x4D0]) ^ v90;
  v92 = v7[45];
  v93 = LODWORD(STACK[0x4D0]) ^ v92;
  v94 = v49 ^ v92;
  v95 = v28 ^ v79;
  v96 = v7[68];
  LODWORD(STACK[0x32C]) = v28 ^ v96;
  v97 = v7[101];
  v98 = v97 + v96;
  v99 = v7[73];
  v100 = v99 + v97;
  v101 = v58 + v99;
  LODWORD(v12) = v7[26];
  v102 = v58 ^ v12;
  v103 = v7[8];
  LODWORD(v15) = v12 - v103;
  LODWORD(v12) = v7[40];
  v104 = v103 - v12;
  LODWORD(v14) = v7[67];
  LODWORD(v12) = v12 + v14;
  LODWORD(STACK[0x368]) = v80 ^ v64;
  v105 = STACK[0x464];
  LODWORD(STACK[0x330]) = v64 - LODWORD(STACK[0x464]);
  LODWORD(STACK[0x404]) = v63 ^ v105;
  LODWORD(STACK[0x4D0]) = v63 - v94;
  LODWORD(STACK[0x414]) = v94 + v95;
  v106 = STACK[0x4A0];
  LODWORD(STACK[0x41C]) = v95 - LODWORD(STACK[0x4A0]);
  v107 = STACK[0x4C4];
  LODWORD(STACK[0x438]) = LODWORD(STACK[0x4C4]) + v106;
  LODWORD(STACK[0x3D8]) = v107 ^ v61;
  LODWORD(STACK[0x4A0]) = v61 ^ v98;
  LODWORD(STACK[0x408]) = v12 ^ v98;
  v108 = STACK[0x460];
  LODWORD(STACK[0x4C4]) = LODWORD(STACK[0x460]) + v12;
  LODWORD(v12) = STACK[0x4B4];
  LODWORD(STACK[0x344]) = v108 ^ LODWORD(STACK[0x4B4]);
  LODWORD(STACK[0x4B4]) = v12 + v14;
  LODWORD(v12) = STACK[0x53C];
  LODWORD(STACK[0x36C]) = LODWORD(STACK[0x53C]) ^ v14;
  LODWORD(STACK[0x53C]) = v12 - v15;
  LODWORD(v14) = STACK[0x468];
  LODWORD(STACK[0x460]) = v15 - LODWORD(STACK[0x468]);
  LODWORD(STACK[0x468]) = v101 ^ v14;
  LODWORD(v14) = STACK[0x470];
  LODWORD(STACK[0x454]) = v101 ^ LODWORD(STACK[0x470]);
  LODWORD(v15) = STACK[0x43C];
  LODWORD(STACK[0x464]) = LODWORD(STACK[0x43C]) ^ v14;
  LODWORD(STACK[0x43C]) = v82 ^ v15;
  LODWORD(STACK[0x3C8]) = v82 - v53;
  LODWORD(v12) = STACK[0x548];
  LODWORD(STACK[0x3B8]) = v74 + LODWORD(STACK[0x548]);
  LODWORD(v14) = STACK[0x440];
  LODWORD(STACK[0x354]) = v12 - LODWORD(STACK[0x440]);
  LODWORD(STACK[0x3E4]) = v76 ^ v14;
  LODWORD(v14) = STACK[0x45C];
  LODWORD(STACK[0x430]) = LODWORD(STACK[0x45C]) ^ v76;
  LODWORD(v15) = STACK[0x42C];
  LODWORD(STACK[0x440]) = v14 + LODWORD(STACK[0x42C]);
  LODWORD(STACK[0x418]) = v15 ^ v67;
  LODWORD(STACK[0x38C]) = v91 + v67;
  LODWORD(v12) = STACK[0x4A8];
  LODWORD(STACK[0x384]) = v91 ^ LODWORD(STACK[0x4A8]);
  LODWORD(STACK[0x3AC]) = v12 - v85;
  v109 = v89 + v85;
  LODWORD(STACK[0x3C4]) = v100 + v89;
  LODWORD(STACK[0x3F8]) = v78 ^ v100;
  LODWORD(STACK[0x4A8]) = v78 ^ v72;
  LODWORD(v14) = STACK[0x3CC];
  LODWORD(STACK[0x42C]) = v72 ^ LODWORD(STACK[0x3CC]);
  LODWORD(v15) = STACK[0x388];
  LODWORD(STACK[0x3CC]) = v14 + LODWORD(STACK[0x388]);
  LODWORD(v12) = STACK[0x3A4];
  LODWORD(STACK[0x45C]) = v15 - LODWORD(STACK[0x3A4]);
  LODWORD(STACK[0x3A4]) = v12 + v102;
  LODWORD(v14) = STACK[0x350];
  LODWORD(STACK[0x388]) = v102 - LODWORD(STACK[0x350]);
  LODWORD(v15) = STACK[0x410];
  LODWORD(STACK[0x548]) = LODWORD(STACK[0x410]) + v14;
  v110 = LODWORD(STACK[0x398]) ^ 0x36943F7E;
  v111 = v49 + LODWORD(STACK[0x390]);
  v112 = STACK[0x360];
  v113 = LODWORD(STACK[0x360]) + LODWORD(STACK[0x390]);
  LODWORD(STACK[0x398]) = (v113 - ((2 * v113) & 0x6D287EFC) + 915685246) ^ v110;
  v114 = v110 ^ (v15 - ((2 * v15) & 0x6D287EFC) + 915685246);
  v115 = STACK[0x4E8];
  v116 = STACK[0x370];
  LODWORD(STACK[0x390]) = LODWORD(STACK[0x370]) - LODWORD(STACK[0x4E8]) + 1422203893;
  LODWORD(v14) = v7[97];
  v117 = v113 - LODWORD(STACK[0x358]);
  LODWORD(STACK[0x410]) = LODWORD(STACK[0x358]) - (v112 + v14);
  v118 = v112 + v14 + LODWORD(STACK[0x3B4]);
  LODWORD(v12) = STACK[0x3F4];
  LODWORD(STACK[0x350]) = LODWORD(STACK[0x3B4]) - LODWORD(STACK[0x3F4]);
  LODWORD(STACK[0x360]) = v111 + v12;
  LODWORD(v15) = STACK[0x35C];
  LODWORD(STACK[0x358]) = v111 ^ LODWORD(STACK[0x35C]);
  LODWORD(STACK[0x3B4]) = v15 + 2119421880 - v116;
  LODWORD(STACK[0x35C]) = v87 + 1147375813 + v115;
  LODWORD(v12) = STACK[0x3B0];
  LODWORD(STACK[0x34C]) = v87 + LODWORD(STACK[0x3B0]);
  v119 = LODWORD(STACK[0x378]) ^ v12;
  LODWORD(v15) = STACK[0x394];
  LODWORD(STACK[0x3B0]) = LODWORD(STACK[0x394]) + LODWORD(STACK[0x378]);
  v120 = STACK[0x340];
  LODWORD(STACK[0x394]) = v15 - LODWORD(STACK[0x340]);
  v121 = LODWORD(STACK[0x4F0]) ^ 0xC99EF4DF;
  v122 = STACK[0x348];
  LODWORD(STACK[0x378]) = v121 ^ (LODWORD(STACK[0x348]) - ((2 * LODWORD(STACK[0x348])) & 0x933DE9BE) - 912329505);
  v123 = v121 ^ (v120 - ((2 * v120) & 0x933DE9BE) - 912329505);
  LODWORD(v12) = STACK[0x448];
  LODWORD(STACK[0x308]) = v122 + LODWORD(STACK[0x448]);
  LODWORD(v15) = STACK[0x334];
  LODWORD(STACK[0x318]) = v12 + LODWORD(STACK[0x334]);
  LODWORD(STACK[0x340]) = v15 - v93;
  v124 = v93 - v104;
  LODWORD(v12) = STACK[0x428];
  LODWORD(STACK[0x348]) = v104 - LODWORD(STACK[0x428]);
  v125 = STACK[0x37C];
  LODWORD(STACK[0x334]) = LODWORD(STACK[0x37C]) ^ v12;
  v126 = LODWORD(STACK[0x380]) ^ 0x1580CB49;
  v127 = STACK[0x3A8];
  v128 = 2 * LODWORD(STACK[0x3A8]);
  LODWORD(v12) = LODWORD(STACK[0x3A8]) - (v128 & 0x2B019692) + 360762185;
  LODWORD(STACK[0x37C]) = (v125 - ((2 * v125) & 0x2B019692) + 360762185) ^ v126;
  LODWORD(STACK[0x328]) = v126 ^ v12;
  LODWORD(v15) = v127 - (v128 & 0x42D0A14E);
  v129 = v7[21];
  v130 = v7[71];
  v131 = v7[85];
  v132 = LODWORD(STACK[0x508]) + LODWORD(STACK[0x324]);
  v133 = v129 - LODWORD(STACK[0x508]);
  v134 = v131 - v129;
  v135 = v130 - v131;
  v136 = v14 - v131;
  v137 = LODWORD(STACK[0x40C]) ^ 0x216850A7;
  LODWORD(STACK[0x300]) = v137 ^ (v15 + 560484519);
  LODWORD(STACK[0x314]) = (v134 - ((2 * v134) & 0x42D0A14E) + 560484519) ^ v137;
  v138 = STACK[0x478];
  v139 = STACK[0x364];
  v140 = LODWORD(STACK[0x364]) - LODWORD(STACK[0x478]) + 1491130319;
  v141 = STACK[0x374];
  v142 = LODWORD(STACK[0x374]) + v130 - v14;
  LODWORD(v12) = STACK[0x4F8];
  LODWORD(STACK[0x2FC]) = v134 - LODWORD(STACK[0x4F8]);
  LODWORD(v15) = STACK[0x420];
  LODWORD(STACK[0x2F8]) = v12 ^ LODWORD(STACK[0x420]);
  v143 = LODWORD(STACK[0x46C]) ^ v15;
  LODWORD(v12) = STACK[0x514];
  LODWORD(STACK[0x370]) = LODWORD(STACK[0x46C]) - LODWORD(STACK[0x514]);
  v144 = LODWORD(STACK[0x444]) ^ v12;
  LODWORD(STACK[0x514]) = v141 ^ LODWORD(STACK[0x444]);
  LODWORD(v12) = STACK[0x3D0];
  LODWORD(STACK[0x324]) = v135 ^ LODWORD(STACK[0x3D0]);
  v145 = v132 + v12;
  LODWORD(STACK[0x374]) = v132 - v139;
  LODWORD(STACK[0x4F0]) = (v109 - ((2 * v109) & 0x7012F32A) + 940145045) ^ v143 ^ 0x38097995;
  LODWORD(v14) = STACK[0x560];
  v146 = STACK[0x4C8];
  v147 = LODWORD(STACK[0x560]) + LODWORD(STACK[0x4C8]) + 526801094;
  LODWORD(v15) = STACK[0x498];
  LODWORD(STACK[0x2F4]) = v138 - LODWORD(STACK[0x498]);
  v148 = v15 ^ LODWORD(STACK[0x568]);
  LODWORD(v15) = STACK[0x4E4];
  v149 = LODWORD(STACK[0x568]) - LODWORD(STACK[0x4E4]);
  LODWORD(v12) = STACK[0x488];
  LODWORD(STACK[0x2E0]) = LODWORD(STACK[0x488]) - v14;
  v150 = LODWORD(STACK[0x49C]) ^ v12;
  LODWORD(v12) = STACK[0x518];
  LODWORD(STACK[0x2D8]) = LODWORD(STACK[0x518]) + LODWORD(STACK[0x49C]);
  v151 = v12 + LODWORD(STACK[0x338]);
  v152 = v15 ^ LODWORD(STACK[0x338]);
  v153 = LODWORD(STACK[0x330]) - ((2 * LODWORD(STACK[0x330])) & 0xCDB2D362);
  LODWORD(v14) = LODWORD(STACK[0x4A8]) ^ 0x66D969B1;
  v154 = v146 - LODWORD(STACK[0x33C]);
  v155 = STACK[0x4EC];
  LODWORD(STACK[0x2C4]) = LODWORD(STACK[0x4EC]) + LODWORD(STACK[0x33C]);
  v156 = v155 + LODWORD(STACK[0x500]);
  v157 = STACK[0x490];
  LODWORD(STACK[0x338]) = LODWORD(STACK[0x500]) ^ LODWORD(STACK[0x490]);
  v158 = LODWORD(STACK[0x434]) + v157;
  LODWORD(v12) = v133 ^ LODWORD(STACK[0x434]);
  LODWORD(STACK[0x4A8]) = v14 ^ (v153 + 1725524401);
  LODWORD(STACK[0x518]) = (v12 - ((2 * v12) & 0xCDB2D362) + 1725524401) ^ v14;
  v159 = STACK[0x32C];
  LODWORD(v14) = LODWORD(STACK[0x32C]) + v133 + 41983610;
  LODWORD(STACK[0x420]) = v12 - v124;
  LODWORD(STACK[0x4EC]) = v118 ^ v124;
  LODWORD(STACK[0x4C8]) = v144 ^ 0xEE3FEF4D ^ (v118 - ((2 * v118) & 0xDC7FDE9A) - 297799859);
  LODWORD(STACK[0x490]) = v119 ^ v144;
  LODWORD(STACK[0x508]) = v119 ^ 0x9E8A50D1 ^ (v123 - ((2 * v123) & 0x3D14A1A2) - 1635102511);
  LODWORD(v15) = STACK[0x344];
  LODWORD(STACK[0x568]) = v123 + LODWORD(STACK[0x344]);
  LODWORD(STACK[0x49C]) = v136 + v15;
  LODWORD(STACK[0x4F8]) = v150 ^ 0x4E786D80 ^ (v136 - ((2 * v136) & 0x9CF0DB00) + 1316515200);
  LODWORD(STACK[0x444]) = v117 + v109;
  LODWORD(STACK[0x3A8]) = v114 + v117;
  v160 = STACK[0x368];
  LODWORD(STACK[0x470]) = LODWORD(STACK[0x368]) ^ 0x132D615C ^ (v114 - ((2 * v114) & 0x265AC2B8) + 321741148);
  LODWORD(STACK[0x448]) = v152 ^ v160;
  v161 = STACK[0x45C];
  LODWORD(STACK[0x488]) = v152 ^ 0x867AA93F ^ (LODWORD(STACK[0x45C]) - ((2 * LODWORD(STACK[0x45C])) & 0xCF5527E) - 2038781633);
  LODWORD(STACK[0x428]) = v161 ^ v151;
  LODWORD(STACK[0x320]) = v151 + 734599720 + v147;
  LODWORD(v15) = STACK[0x36C];
  LODWORD(STACK[0x560]) = LODWORD(STACK[0x36C]) + 1002854110 + v147;
  v162 = STACK[0x354];
  LODWORD(STACK[0x4E8]) = LODWORD(STACK[0x354]) + v15 + 363234899;
  LODWORD(STACK[0x3F4]) = v143 ^ v150;
  LODWORD(STACK[0x4E4]) = v145 + 577490847 + v140;
  LODWORD(STACK[0x45C]) = v140 - v14 - 1449146709;
  LODWORD(v12) = STACK[0x424];
  LODWORD(STACK[0x304]) = v14 - LODWORD(STACK[0x424]);
  LODWORD(STACK[0x330]) = v12 - v142 + 530768257;
  LODWORD(v14) = STACK[0x384];
  LODWORD(STACK[0x498]) = v162 - LODWORD(STACK[0x384]);
  LODWORD(v12) = STACK[0x47C];
  LODWORD(STACK[0x344]) = v14 + LODWORD(STACK[0x47C]);
  LODWORD(v14) = STACK[0x3D8];
  LODWORD(STACK[0x47C]) = LODWORD(STACK[0x3D8]) ^ v12;
  LODWORD(v15) = STACK[0x308];
  LODWORD(STACK[0x46C]) = v14 + LODWORD(STACK[0x308]);
  LODWORD(v14) = STACK[0x38C];
  LODWORD(STACK[0x434]) = LODWORD(STACK[0x38C]) + v15;
  LODWORD(STACK[0x478]) = v14 - v158;
  LODWORD(v12) = STACK[0x558];
  LODWORD(STACK[0x384]) = v158 ^ LODWORD(STACK[0x558]);
  LODWORD(v14) = STACK[0x458];
  LODWORD(STACK[0x40C]) = LODWORD(STACK[0x458]) ^ v12;
  LODWORD(STACK[0x3D8]) = v14 + v145 - 2 * v145 + 1524554317;
  LODWORD(v14) = STACK[0x3A4];
  LODWORD(STACK[0x424]) = v142 ^ LODWORD(STACK[0x3A4]);
  v163 = v14 + LODWORD(STACK[0x404]);
  LODWORD(v14) = STACK[0x388];
  LODWORD(STACK[0x36C]) = LODWORD(STACK[0x388]) ^ LODWORD(STACK[0x404]);
  LODWORD(v15) = STACK[0x318];
  LODWORD(STACK[0x3D0]) = v14 + LODWORD(STACK[0x318]);
  LODWORD(v14) = STACK[0x41C];
  LODWORD(STACK[0x458]) = LODWORD(STACK[0x41C]) + v15;
  v164 = v14 ^ LODWORD(STACK[0x3AC]);
  LODWORD(v14) = STACK[0x350];
  LODWORD(STACK[0x380]) = LODWORD(STACK[0x350]) + LODWORD(STACK[0x3AC]);
  LODWORD(STACK[0x500]) = v14 - v154 + 194605546;
  LODWORD(v15) = STACK[0x358];
  LODWORD(STACK[0x558]) = v154 + LODWORD(STACK[0x358]);
  LODWORD(v14) = STACK[0x360];
  LODWORD(STACK[0x38C]) = v15 - LODWORD(STACK[0x360]);
  v165 = LODWORD(STACK[0x3C8]) ^ v14;
  LODWORD(v14) = STACK[0x3C4];
  LODWORD(STACK[0x404]) = LODWORD(STACK[0x3C8]) - LODWORD(STACK[0x3C4]);
  LODWORD(v15) = STACK[0x34C];
  LODWORD(STACK[0x3A4]) = v14 ^ LODWORD(STACK[0x34C]);
  LODWORD(STACK[0x33C]) = v148 ^ v15;
  v166 = v148 - LODWORD(STACK[0x35C]);
  LODWORD(v15) = STACK[0x2FC];
  LODWORD(STACK[0x35C]) += LODWORD(STACK[0x2FC]) + 1852169034;
  LODWORD(v14) = STACK[0x398];
  LODWORD(STACK[0x308]) = v15 - LODWORD(STACK[0x398]);
  LODWORD(v12) = STACK[0x3F8];
  LODWORD(STACK[0x2DC]) = v14 + LODWORD(STACK[0x3F8]);
  LODWORD(v14) = STACK[0x438];
  LODWORD(STACK[0x3F8]) = LODWORD(STACK[0x438]) ^ v12;
  LODWORD(v12) = STACK[0x4A4];
  LODWORD(STACK[0x318]) = v14 + LODWORD(STACK[0x4A4]);
  LODWORD(v14) = STACK[0x328];
  LODWORD(STACK[0x3C8]) = v12 - LODWORD(STACK[0x328]);
  LODWORD(STACK[0x364]) = v14 - v149;
  LODWORD(v15) = STACK[0x390];
  LODWORD(STACK[0x438]) = v149 - LODWORD(STACK[0x390]) + 126781444;
  v167 = STACK[0x334];
  LODWORD(STACK[0x368]) = v15 - LODWORD(STACK[0x334]) - 126781444;
  LODWORD(v14) = LODWORD(STACK[0x340]) + 187609033;
  v168 = STACK[0x314];
  LODWORD(STACK[0x3AC]) = LODWORD(STACK[0x314]) - LODWORD(STACK[0x340]);
  LODWORD(v15) = STACK[0x3B8];
  LODWORD(STACK[0x3C4]) = LODWORD(STACK[0x3B8]) - 187609033 + v14;
  v169 = STACK[0x348];
  LODWORD(STACK[0x41C]) = v168 + LODWORD(STACK[0x348]);
  LODWORD(v12) = STACK[0x4CC];
  LODWORD(STACK[0x314]) = LODWORD(STACK[0x4CC]) ^ v167;
  LODWORD(v14) = STACK[0x300];
  LODWORD(STACK[0x4A4]) = v12 + LODWORD(STACK[0x300]);
  LODWORD(STACK[0x334]) = v14 ^ v156;
  LODWORD(v12) = STACK[0x494];
  LODWORD(STACK[0x398]) = LODWORD(STACK[0x494]) ^ v156;
  LODWORD(STACK[0x2FC]) = v12 + v169;
  LODWORD(v14) = STACK[0x2F4];
  LODWORD(STACK[0x340]) = LODWORD(STACK[0x2F4]) ^ v15;
  LODWORD(v15) = STACK[0x2C4];
  LODWORD(STACK[0x328]) = v14 + LODWORD(STACK[0x2C4]);
  LODWORD(v12) = STACK[0x408];
  v170 = v15 + LODWORD(STACK[0x408]);
  LODWORD(STACK[0x2A4]) = v170;
  LODWORD(v14) = STACK[0x2D8];
  LODWORD(STACK[0x300]) = LODWORD(STACK[0x2D8]) ^ v12;
  LODWORD(v12) = STACK[0x4B8];
  LODWORD(STACK[0x390]) = v14 - LODWORD(STACK[0x4B8]);
  LODWORD(v14) = STACK[0x2F8];
  LODWORD(STACK[0x350]) = LODWORD(STACK[0x2F8]) + v12;
  LODWORD(v12) = STACK[0x414];
  LODWORD(STACK[0x358]) = v14 + LODWORD(STACK[0x414]);
  v171 = LODWORD(STACK[0x378]) + v12;
  LODWORD(v12) = STACK[0x4F4];
  LODWORD(STACK[0x4B8]) = LODWORD(STACK[0x378]) - LODWORD(STACK[0x4F4]);
  LODWORD(v14) = STACK[0x3CC];
  LODWORD(STACK[0x4F4]) = v12 - LODWORD(STACK[0x3CC]);
  LODWORD(v12) = STACK[0x324];
  v172 = LODWORD(STACK[0x324]) ^ v14;
  LODWORD(STACK[0x2F4]) = v172;
  LODWORD(v14) = STACK[0x4E0];
  LODWORD(STACK[0x414]) = v12 - LODWORD(STACK[0x4E0]);
  v173 = STACK[0x4FC];
  v174 = LODWORD(STACK[0x4FC]) + 1222324187 + v14;
  LODWORD(v14) = LODWORD(STACK[0x3E4]) ^ 0xBEB094CF;
  LODWORD(v15) = LODWORD(STACK[0x550]) + v159;
  v175 = STACK[0x540];
  v176 = LODWORD(STACK[0x550]) - LODWORD(STACK[0x540]);
  v177 = STACK[0x2E0];
  v178 = v14 ^ (LODWORD(STACK[0x2E0]) - ((2 * LODWORD(STACK[0x2E0])) & 0x7D61299E) - 1095723825);
  LODWORD(STACK[0x3B8]) = v14 ^ (v176 - ((2 * v176) & 0x7D61299E) - 1095723825);
  LODWORD(v14) = STACK[0x418];
  LODWORD(STACK[0x4E0]) = v176 - LODWORD(STACK[0x418]);
  LODWORD(v12) = STACK[0x43C];
  LODWORD(STACK[0x378]) = v14 - LODWORD(STACK[0x43C]);
  v179 = LODWORD(STACK[0x3B4]) + v12 - 2119421880;
  v180 = STACK[0x394];
  LODWORD(STACK[0x388]) = LODWORD(STACK[0x3B4]) - LODWORD(STACK[0x394]) - 2119421880;
  v181 = LODWORD(STACK[0x3B0]) - 1432873389;
  LODWORD(v12) = STACK[0x430];
  LODWORD(STACK[0x2B8]) = v173 - LODWORD(STACK[0x430]);
  LODWORD(v14) = STACK[0x454];
  LODWORD(STACK[0x4FC]) = v12 + LODWORD(STACK[0x454]);
  v182 = v14 + v175;
  v183 = v175 ^ LODWORD(STACK[0x460]);
  v184 = LODWORD(STACK[0x460]) - LODWORD(STACK[0x440]);
  v185 = LODWORD(STACK[0x440]) + LODWORD(STACK[0x4A0]);
  v186 = v15 + LODWORD(STACK[0x4A0]);
  LODWORD(v14) = STACK[0x464];
  LODWORD(STACK[0x3B4]) = v15 + LODWORD(STACK[0x464]);
  LODWORD(v15) = STACK[0x42C];
  v187 = v14 - LODWORD(STACK[0x42C]);
  LODWORD(STACK[0x324]) = v187;
  LODWORD(v12) = STACK[0x468];
  LODWORD(STACK[0x2D8]) = v15 - LODWORD(STACK[0x468]);
  LODWORD(v14) = STACK[0x370];
  LODWORD(STACK[0x360]) = v12 - LODWORD(STACK[0x370]);
  v188 = v14 - v181;
  v189 = LODWORD(STACK[0x4B4]) + 1432873389 + v181;
  LODWORD(STACK[0x464]) = v177 + LODWORD(STACK[0x4B4]);
  LODWORD(v14) = STACK[0x4C4];
  LODWORD(STACK[0x550]) = v180 - LODWORD(STACK[0x4C4]);
  LODWORD(v12) = STACK[0x4D0];
  LODWORD(STACK[0x348]) = v14 ^ LODWORD(STACK[0x4D0]);
  LODWORD(v14) = STACK[0x37C];
  LODWORD(STACK[0x42C]) = v12 - LODWORD(STACK[0x37C]);
  v190 = LODWORD(STACK[0x374]) + v14;
  v191 = LODWORD(STACK[0x374]) ^ LODWORD(STACK[0x410]);
  LODWORD(v14) = STACK[0x338];
  v192 = LODWORD(STACK[0x410]) - LODWORD(STACK[0x338]);
  LODWORD(STACK[0x2C4]) = v192;
  v193 = v14 - LODWORD(STACK[0x52C]) + 1337658514;
  LODWORD(v14) = STACK[0x514];
  v194 = LODWORD(STACK[0x52C]) - LODWORD(STACK[0x514]) - 1337658514;
  LODWORD(STACK[0x2A8]) = v194;
  v195 = v14 - ((2 * v14) & 0x1A150CD4);
  LODWORD(v14) = LODWORD(STACK[0x538]) ^ 0x8D0A866A;
  v196 = (v195 - 1928690070) ^ v14;
  LODWORD(STACK[0x34C]) = (LODWORD(STACK[0x53C]) - ((2 * LODWORD(STACK[0x53C])) & 0x1A150CD4) - 1928690070) ^ v14;
  LODWORD(STACK[0x3E4]) = v188 - v163 - 1432873389;
  v197 = v163 - v164;
  LODWORD(STACK[0x298]) = v189 ^ v164;
  LODWORD(STACK[0x4C4]) = v171 ^ v189;
  LODWORD(STACK[0x3B0]) = v196 + v171;
  LODWORD(STACK[0x354]) = v174 + 1962666310 + v196;
  v198 = (v166 + v187 - 1852169034) ^ 0xF0E06ACE;
  v199 = (v184 + v165) ^ 0xFA01ADA9;
  v200 = STACK[0x320];
  LODWORD(STACK[0x514]) = v172 - LODWORD(STACK[0x320]) + 1261400814;
  v201 = STACK[0x304];
  LODWORD(STACK[0x394]) = LODWORD(STACK[0x304]) - v165 - 442365612;
  LODWORD(STACK[0x338]) = v184 - LODWORD(STACK[0x560]) + 1529655204;
  v202 = v183 - v166;
  LODWORD(STACK[0x374]) = v199;
  LODWORD(STACK[0x3CC]) = v198;
  LODWORD(v12) = v198 + v183 - v166 + v199;
  v203 = STACK[0x4B8];
  v204 = LODWORD(STACK[0x4B8]) ^ v193;
  v205 = STACK[0x330];
  LODWORD(v14) = v194 + LODWORD(STACK[0x330]);
  LODWORD(STACK[0x440]) = v14 + v204 - v12;
  LODWORD(STACK[0x370]) = v14 + 268499439;
  LODWORD(STACK[0x4A0]) = (v192 - v170) ^ 0xDC307F5E;
  v206 = STACK[0x414];
  LODWORD(STACK[0x37C]) = LODWORD(STACK[0x414]) - LODWORD(STACK[0x500]) + 1304582345;
  v207 = STACK[0x2DC];
  LODWORD(STACK[0x4B4]) = LODWORD(STACK[0x2DC]) - v178 - 1011565105;
  LODWORD(v15) = STACK[0x420];
  v208 = v182;
  LODWORD(STACK[0x4CC]) = v182 + LODWORD(STACK[0x420]) - 501508391;
  LODWORD(STACK[0x430]) = v205 + v174 - 1726543471;
  v209 = v191 - 1938547313;
  LODWORD(v12) = v191 + 1631717852;
  v210 = STACK[0x4F8];
  LODWORD(STACK[0x540]) = LODWORD(STACK[0x4F8]) + LODWORD(STACK[0x4E0]);
  LODWORD(v14) = STACK[0x508];
  LODWORD(STACK[0x2A0]) = v210 + LODWORD(STACK[0x508]);
  v211 = STACK[0x344];
  LODWORD(STACK[0x494]) = v14 - LODWORD(STACK[0x344]);
  v212 = STACK[0x308];
  LODWORD(STACK[0x32C]) = LODWORD(STACK[0x308]) + v211;
  v213 = STACK[0x4A4];
  LODWORD(STACK[0x4E0]) = v212 ^ LODWORD(STACK[0x4A4]);
  LODWORD(STACK[0x410]) = v213 + v12;
  LODWORD(v14) = STACK[0x2FC];
  LODWORD(STACK[0x508]) = LODWORD(STACK[0x2FC]) ^ v178;
  v214 = STACK[0x4F4];
  LODWORD(STACK[0x4D0]) = v14 - LODWORD(STACK[0x4F4]);
  LODWORD(STACK[0x344]) = v214 - 1224670010;
  v215 = STACK[0x318];
  LODWORD(STACK[0x4A4]) = v186 + LODWORD(STACK[0x318]) - 406903639;
  LODWORD(STACK[0x330]) = (-v185 ^ (v179 - (v185 ^ v179)) ^ (v185 - ((2 * v185) & 0x13A340C0) + 164733024) ^ 0x9D1A060) + v179;
  v216 = STACK[0x300];
  LODWORD(STACK[0x4F8]) = v179 - LODWORD(STACK[0x300]) - 692149267;
  v217 = STACK[0x314];
  LODWORD(STACK[0x454]) = LODWORD(STACK[0x314]) - 645360947 + v200;
  LODWORD(v14) = STACK[0x428];
  LODWORD(STACK[0x408]) = LODWORD(STACK[0x428]) - v193;
  v218 = STACK[0x33C];
  LODWORD(STACK[0x2F8]) = LODWORD(STACK[0x33C]) - v14;
  v219 = STACK[0x2B8];
  LODWORD(STACK[0x538]) = (LODWORD(STACK[0x2B8]) ^ v218) + 708345605;
  v220 = STACK[0x3A8];
  LODWORD(STACK[0x428]) = v203 - LODWORD(STACK[0x3A8]) - 2008979166;
  LODWORD(v14) = STACK[0x380];
  LODWORD(STACK[0x52C]) = v15 + LODWORD(STACK[0x380]);
  LODWORD(v15) = LODWORD(STACK[0x444]) ^ v14;
  LODWORD(STACK[0x380]) = LODWORD(STACK[0x444]) - v188;
  LODWORD(v12) = LODWORD(STACK[0x53C]) ^ LODWORD(STACK[0x548]);
  LODWORD(STACK[0x418]) = v12 ^ v186;
  v221 = STACK[0x384];
  LODWORD(STACK[0x420]) = LODWORD(STACK[0x384]) - v12 - 650764312;
  LODWORD(STACK[0x33C]) = v190 + v183;
  LODWORD(v12) = STACK[0x448];
  LODWORD(STACK[0x320]) = LODWORD(STACK[0x448]) - v190;
  LODWORD(v14) = STACK[0x35C];
  LODWORD(STACK[0x2E0]) = LODWORD(STACK[0x35C]) ^ v12;
  LODWORD(v12) = v14 - 543253416;
  LODWORD(v14) = LODWORD(STACK[0x36C]) + 1408550002;
  v222 = STACK[0x328];
  LODWORD(STACK[0x36C]) += LODWORD(STACK[0x328]);
  v223 = STACK[0x40C];
  LODWORD(STACK[0x2B0]) = v222 + LODWORD(STACK[0x40C]);
  v224 = STACK[0x2D8];
  LODWORD(STACK[0x444]) = (LODWORD(STACK[0x2D8]) ^ v223) + 360195673;
  v225 = STACK[0x470];
  LODWORD(STACK[0x4B8]) = v14 + LODWORD(STACK[0x470]);
  v226 = STACK[0x490];
  LODWORD(STACK[0x4F4]) = LODWORD(STACK[0x490]) - 426296030 + v225;
  v227 = STACK[0x334];
  LODWORD(STACK[0x448]) = (v217 ^ LODWORD(STACK[0x334])) - 171483410;
  LODWORD(STACK[0x468]) = v197 - 540237038;
  v228 = STACK[0x4EC];
  LODWORD(STACK[0x460]) = LODWORD(STACK[0x4EC]) + 1414628675 + v206;
  LODWORD(v14) = STACK[0x488];
  LODWORD(STACK[0x43C]) = LODWORD(STACK[0x488]) + v12;
  v229 = LODWORD(STACK[0x464]) - v14;
  LODWORD(v12) = STACK[0x364];
  LODWORD(STACK[0x328]) = LODWORD(STACK[0x364]) - LODWORD(STACK[0x464]);
  v230 = LODWORD(STACK[0x340]) - v12;
  v231 = STACK[0x3A4];
  LODWORD(STACK[0x470]) = LODWORD(STACK[0x3A4]) + LODWORD(STACK[0x340]) + 1456324123;
  LODWORD(STACK[0x40C]) = v202 - 1283905001;
  LODWORD(v12) = v216 - LODWORD(STACK[0x434]);
  LODWORD(v14) = LODWORD(STACK[0x434]) - LODWORD(STACK[0x368]);
  v232 = STACK[0x518];
  LODWORD(STACK[0x414]) = LODWORD(STACK[0x368]) - LODWORD(STACK[0x518]);
  v233 = STACK[0x49C];
  LODWORD(STACK[0x300]) = v232 ^ LODWORD(STACK[0x49C]);
  v234 = v233 - 692157862;
  v235 = LODWORD(STACK[0x350]) - v226;
  LODWORD(STACK[0x464]) = LODWORD(STACK[0x350]) + v234;
  v236 = STACK[0x45C];
  LODWORD(STACK[0x314]) = LODWORD(STACK[0x45C]) + v221;
  v237 = STACK[0x3F4];
  LODWORD(STACK[0x488]) = LODWORD(STACK[0x3F4]) + 872409036 + v236;
  v238 = STACK[0x4FC];
  LODWORD(STACK[0x434]) = LODWORD(STACK[0x4FC]) ^ v231;
  v239 = v238 + 467117954;
  v240 = STACK[0x42C];
  LODWORD(STACK[0x49C]) = LODWORD(STACK[0x42C]) + v209;
  LODWORD(STACK[0x518]) = v240 + v239;
  v241 = STACK[0x38C];
  v242 = STACK[0x358];
  LODWORD(STACK[0x4FC]) = (LODWORD(STACK[0x358]) ^ LODWORD(STACK[0x38C])) - 2022752054;
  LODWORD(STACK[0x290]) = v229 + 1267652029;
  LODWORD(STACK[0x45C]) = v228 + LODWORD(STACK[0x558]) + 467731899;
  v243 = v15 + 141408608;
  LODWORD(STACK[0x294]) = v15 + 141408608;
  LODWORD(STACK[0x490]) = v230 - 86981293;
  LODWORD(STACK[0x4EC]) = v215 + v219 - 151343721;
  LODWORD(STACK[0x364]) = LODWORD(STACK[0x298]) - 125992480;
  LODWORD(v15) = STACK[0x4E8];
  LODWORD(STACK[0x53C]) = LODWORD(STACK[0x4E8]) - v201;
  v244 = STACK[0x3D8];
  LODWORD(STACK[0x42C]) = LODWORD(STACK[0x3D8]) + v15;
  v245 = STACK[0x3D0];
  LODWORD(STACK[0x4E8]) = LODWORD(STACK[0x3D0]) - v244;
  v246 = v245 - 233867893 + v220;
  LODWORD(STACK[0x318]) = v246;
  LODWORD(STACK[0x304]) = v204 + 1490898114;
  v247 = STACK[0x3AC];
  LODWORD(STACK[0x35C]) = LODWORD(STACK[0x3AC]) - v237;
  LODWORD(v15) = STACK[0x424];
  LODWORD(STACK[0x340]) = LODWORD(STACK[0x424]) - v247;
  v248 = STACK[0x47C];
  v249 = LODWORD(STACK[0x47C]) - v15;
  LODWORD(STACK[0x308]) = v249;
  LODWORD(v15) = v248 - 443605942;
  v250 = v227 + LODWORD(STACK[0x4F0]);
  v251 = STACK[0x404];
  LODWORD(STACK[0x3A4]) = LODWORD(STACK[0x404]) + LODWORD(STACK[0x4F0]);
  v252 = STACK[0x398];
  LODWORD(STACK[0x3D0]) = LODWORD(STACK[0x398]) ^ v251;
  v253 = STACK[0x378];
  LODWORD(STACK[0x3D8]) = LODWORD(STACK[0x378]) + v252;
  v254 = STACK[0x348];
  LODWORD(STACK[0x2FC]) = LODWORD(STACK[0x348]) + v253;
  v255 = STACK[0x3C8];
  LODWORD(STACK[0x348]) = v254 - LODWORD(STACK[0x3C8]);
  v256 = v255 - LODWORD(STACK[0x390]);
  v257 = STACK[0x4A8];
  LODWORD(STACK[0x334]) = LODWORD(STACK[0x4A8]) + LODWORD(STACK[0x390]);
  v258 = v15 + v257;
  LODWORD(STACK[0x47C]) = v15 + v257;
  LODWORD(v15) = STACK[0x3F8];
  LODWORD(STACK[0x4A8]) = LODWORD(STACK[0x3F8]) ^ v207;
  v259 = v15 + v224 + 229664727;
  v260 = v242 + LODWORD(STACK[0x360]);
  v261 = v208 + LODWORD(STACK[0x360]) - 872196950;
  LODWORD(STACK[0x2B8]) = v261;
  v262 = STACK[0x478];
  LODWORD(STACK[0x424]) = LODWORD(STACK[0x324]) - LODWORD(STACK[0x478]);
  v263 = STACK[0x4C8];
  LODWORD(STACK[0x3C8]) = v262 + LODWORD(STACK[0x4C8]);
  v264 = STACK[0x3C4];
  LODWORD(STACK[0x3F8]) = v263 ^ LODWORD(STACK[0x3C4]);
  v265 = v264 + v241 - 1672091195;
  LODWORD(STACK[0x4F0]) = v265;
  v266 = v14 + 1637923232;
  LODWORD(STACK[0x478]) = v14 + 1637923232;
  v267 = v256 + 1155073358;
  LODWORD(STACK[0x360]) = v256 + 1155073358;
  LODWORD(v15) = STACK[0x34C];
  v268 = ((2 * (LODWORD(STACK[0x34C]) ^ LODWORD(STACK[0x2A4]))) & 0x9AF5EDE2) + (LODWORD(STACK[0x34C]) ^ LODWORD(STACK[0x2A4]) ^ 0xCD7AF6F1);
  v269 = LODWORD(STACK[0x2A8]) - LODWORD(STACK[0x388]);
  v270 = STACK[0x46C];
  v271 = (LODWORD(STACK[0x46C]) ^ LODWORD(STACK[0x388])) - 881910630;
  v272 = LODWORD(STACK[0x500]) - 1943393943;
  LODWORD(STACK[0x38C]) = v272;
  LODWORD(v14) = STACK[0x3B8];
  LODWORD(STACK[0x500]) = LODWORD(STACK[0x3B8]) - LODWORD(STACK[0x2F4]);
  v273 = STACK[0x458];
  v274 = (LODWORD(STACK[0x458]) - v14) ^ 0x17BC6817;
  LODWORD(STACK[0x390]) = v274;
  v275 = v260 ^ 0xB0326BA8;
  v276 = v12 ^ 0xB78D5A38;
  LODWORD(STACK[0x368]) = v12 ^ 0xB78D5A38;
  v277 = LODWORD(STACK[0x354]) ^ 0x3B912177;
  v278 = LODWORD(STACK[0x2A0]) ^ 0xBB33B0C5;
  LODWORD(v14) = STACK[0x41C];
  LODWORD(STACK[0x384]) = v15 - LODWORD(STACK[0x41C]);
  LODWORD(v12) = STACK[0x498];
  LODWORD(STACK[0x34C]) = v14 + LODWORD(STACK[0x498]);
  v279 = v185 ^ v12;
  LODWORD(STACK[0x3C4]) = v185 ^ v12;
  LODWORD(v14) = STACK[0x438];
  LODWORD(v15) = LODWORD(STACK[0x438]) - LODWORD(STACK[0x2C4]);
  LODWORD(STACK[0x398]) = v15;
  v280 = v14 ^ v270 ^ 0x4CD8C3B1;
  LODWORD(STACK[0x3B8]) = v280;
  LODWORD(STACK[0x354]) = v235 + 1821287145;
  LODWORD(v14) = 2 * (v235 + 1821287145);
  LODWORD(STACK[0x3A8]) = v14;
  LODWORD(STACK[0x3AC]) = v235;
  v281 = v235 - (v14 & 0x50F03182) - 1794720854;
  LODWORD(v14) = STACK[0x4E4];
  LODWORD(STACK[0x41C]) = LODWORD(STACK[0x344]) + LODWORD(STACK[0x4E4]);
  LODWORD(v12) = STACK[0x548];
  LODWORD(STACK[0x378]) = v14 - LODWORD(STACK[0x548]);
  v282 = STACK[0x3B4];
  v283 = v12 - LODWORD(STACK[0x3B4]);
  LODWORD(v14) = LODWORD(STACK[0x508]) + 947720504;
  v284 = v15 + 1971930125;
  LODWORD(STACK[0x260]) = v283;
  LODWORD(v15) = v283 ^ 0xE87F698;
  LODWORD(STACK[0x438]) = v283 ^ 0xE87F698;
  v285 = LODWORD(STACK[0x3E4]) ^ 0xB2CF412B;
  LODWORD(STACK[0x46C]) = v285;
  LODWORD(STACK[0x350]) = v284;
  LODWORD(v12) = v15 ^ v243 ^ v246 ^ v284 ^ v276 ^ v265;
  v286 = STACK[0x364];
  LODWORD(v12) = v12 ^ LODWORD(STACK[0x364]) ^ v266 ^ LODWORD(STACK[0x40C]) ^ v261 ^ v280;
  LODWORD(STACK[0x268]) = v271;
  v287 = LODWORD(STACK[0x4A8]) ^ v271;
  LODWORD(v12) = v12 ^ v287 ^ v274 ^ v285 ^ v14;
  v288 = STACK[0x334];
  LODWORD(v14) = LODWORD(STACK[0x334]) + 124889819;
  LODWORD(STACK[0x4E4]) = v259;
  LODWORD(v12) = v12 ^ v258 ^ v259 ^ v267 ^ v14;
  v289 = LODWORD(STACK[0x550]) ^ v273;
  v290 = STACK[0x290];
  LODWORD(v12) = v12 ^ LODWORD(STACK[0x4EC]) ^ LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x290]) ^ v279 ^ v275 ^ LODWORD(STACK[0x4FC]) ^ v289 ^ 0x3CDCDA76;
  LODWORD(STACK[0x25C]) = v250;
  v291 = v250 ^ 0xA4113574;
  v292 = v12 ^ v250 ^ 0xA4113574 ^ LODWORD(STACK[0x304]);
  LODWORD(v12) = LODWORD(STACK[0x568]) ^ v282;
  LODWORD(STACK[0x3B4]) = v12;
  v293 = v292 ^ (v12 - 1643303662) ^ v281;
  v249 += 1322892375;
  v294 = LODWORD(STACK[0x4E8]) - 97971957;
  v295 = STACK[0x2B0];
  v296 = v293 ^ v272 ^ LODWORD(STACK[0x2B0]) ^ v249;
  LODWORD(STACK[0x258]) = v269;
  v297 = v269 ^ 0xE0941982;
  v298 = STACK[0x490];
  v299 = STACK[0x488];
  v300 = v296 ^ v269 ^ 0xE0941982 ^ LODWORD(STACK[0x490]) ^ LODWORD(STACK[0x52C]) ^ LODWORD(STACK[0x488]) ^ v294;
  LODWORD(v15) = STACK[0x3B0];
  LODWORD(v12) = LODWORD(STACK[0x3B0]) + 1732859785;
  v301 = STACK[0x300];
  v302 = LODWORD(STACK[0x300]) + 1526014513;
  LODWORD(v14) = LODWORD(STACK[0x514]) ^ 0x19875305;
  LODWORD(STACK[0x2A4]) = v12;
  LODWORD(STACK[0x4C8]) = v268;
  LODWORD(STACK[0x2C4]) = v14;
  v303 = v300 ^ v12 ^ v268 ^ v277 ^ v14 ^ v302;
  LODWORD(v14) = LODWORD(STACK[0x540]) + 627339749;
  v304 = STACK[0x34C];
  v305 = LODWORD(STACK[0x34C]) + 263049784;
  v306 = LODWORD(STACK[0x3D0]) ^ 0xA817C53A;
  v307 = LODWORD(STACK[0x504]) ^ v303 ^ v305 ^ v14 ^ v278 ^ 0xC76C2602;
  LODWORD(STACK[0x404]) = v307;
  LODWORD(STACK[0x3F4]) = -v306 ^ (v306 - ((2 * v306) & 0x42BDBFEE) - 1587617801) ^ 0xA15EDFF7 ^ (v307 - (v306 ^ v307));
  v308 = LODWORD(STACK[0x320]) ^ 0xEEE5675D;
  v309 = LODWORD(STACK[0x37C]) ^ 0x9E484649;
  v310 = LODWORD(STACK[0x36C]) ^ 0x3AD5C2C3;
  LODWORD(STACK[0x498]) = LODWORD(STACK[0x328]) ^ 0xC8B84D4F;
  v311 = LODWORD(STACK[0x348]) ^ 0x758A7502;
  v312 = LODWORD(STACK[0x394]) ^ 0x47D036EB;
  LODWORD(STACK[0x4A8]) = LODWORD(STACK[0x314]) ^ 0x46D3D43B;
  v313 = LODWORD(STACK[0x32C]) ^ 0xBFB01188;
  LODWORD(STACK[0x314]) = v313;
  LODWORD(v12) = ((v288 - v15 - v313 + 562875362) ^ v286) + v277;
  LODWORD(STACK[0x264]) = v278;
  LODWORD(STACK[0x388]) = v14;
  LODWORD(v15) = LODWORD(STACK[0x340]) ^ 0xF792C16D;
  LODWORD(v12) = (v287 ^ (v278 - ((2 * v278) & 0xD1196D70) + 1754052280) ^ 0xA59278CF ^ (((v12 - ((2 * v12) & 0x64B8C1BC) - 1302568738) ^ v275) - v14)) + LODWORD(STACK[0x430]);
  LODWORD(STACK[0x334]) = v15;
  v314 = STACK[0x380];
  LODWORD(STACK[0x324]) = LODWORD(STACK[0x380]) - 126403718;
  LODWORD(v12) = LODWORD(STACK[0x3C4]) ^ LODWORD(STACK[0x538]) ^ 0x15D0DDE6 ^ ((((((v289 ^ 0x3CDCDA76) - ((2 * (v289 ^ 0x3CDCDA76)) & 0x3896DD88) - 1672778044) ^ 0x2BB5B3C5 ^ v15 ^ v295 ^ v12) - v314 + 126403718 + ((2 * ((v15 ^ v295 ^ v12 ^ 0x26273822) & (v289 ^ 0x3CDCDA76) ^ v289 & 0x11D9E523)) ^ 0x21B18044)) ^ LODWORD(STACK[0x448])) - LODWORD(STACK[0x294]));
  v315 = STACK[0x53C];
  LODWORD(v14) = LODWORD(STACK[0x53C]) - 1060100083;
  LODWORD(STACK[0x548]) = v14;
  LODWORD(STACK[0x2A0]) = 2 * v14;
  LODWORD(v14) = LODWORD(STACK[0x4F8]) ^ (v315 - ((2 * v14) & 0x478AD454) - 459959753) ^ 0x23C56A2A;
  LODWORD(v15) = LODWORD(STACK[0x3C8]) ^ 0x41393FED;
  LODWORD(STACK[0x3C4]) = v15;
  v316 = STACK[0x3B8];
  LODWORD(v12) = v14 ^ (((v12 + v15) ^ LODWORD(STACK[0x3B8])) + LODWORD(STACK[0x4A4]));
  LODWORD(v15) = STACK[0x4C4];
  LODWORD(STACK[0x458]) = LODWORD(STACK[0x4C4]) + 1457308911;
  LODWORD(v12) = (v299 - v15 - v301 + 1311643872 + v12) ^ LODWORD(STACK[0x354]);
  LODWORD(STACK[0x344]) = v291;
  LODWORD(v12) = ((v12 + v291) ^ LODWORD(STACK[0x2B8])) + LODWORD(STACK[0x360]) - 2 * (((v12 + v291) ^ LODWORD(STACK[0x2B8])) & LODWORD(STACK[0x360]));
  LODWORD(STACK[0x2DC]) = v309;
  LODWORD(v12) = ((v12 - ((2 * v12) & 0x267F4BC) - 2127300002) ^ v309) - LODWORD(STACK[0x45C]);
  LODWORD(v14) = LODWORD(STACK[0x49C]) + 2 * (v12 & v290);
  LODWORD(STACK[0x36C]) = v310;
  v317 = STACK[0x3F8];
  LODWORD(v15) = LODWORD(STACK[0x3F8]) + 427686278;
  LODWORD(STACK[0x320]) = v15;
  LODWORD(v12) = (LODWORD(STACK[0x518]) ^ (v304 - ((2 * v305) & 0xE8DEEDFE) - 2078455497) ^ 0x746F76FF ^ (LODWORD(STACK[0x440]) - 1251664742 + ((v317 - ((2 * v15) & 0x2E7CBCEE) + 817649661) ^ v298 ^ 0x173E5E77 ^ ((v12 ^ v290 ^ 0x2CFE54F5 ^ (v14 - ((2 * v14) & 0x59FCA9EA) + 754865397)) - v310 + 2 * (v14 & (v12 ^ v290)))))) - (LODWORD(STACK[0x318]) + LODWORD(STACK[0x3B4]));
  LODWORD(v12) = (v12 - ((2 * v12 + 1139123676) & 0x71713F80) + 447443630) ^ LODWORD(STACK[0x390]);
  LODWORD(v14) = LODWORD(STACK[0x398]) + LODWORD(STACK[0x508]);
  v318 = STACK[0x500];
  LODWORD(STACK[0x3F8]) = LODWORD(STACK[0x500]) - 1389065708;
  LODWORD(v12) = v14 - LODWORD(STACK[0x47C]) + v318 + LODWORD(STACK[0x4E8]) + 1432612964 + v12;
  LODWORD(v12) = (v12 - ((2 * v12) & 0x74884D90) - 1169938744) ^ LODWORD(STACK[0x438]);
  LODWORD(v15) = LODWORD(STACK[0x33C]) ^ 0xCBD4BF5E;
  LODWORD(v14) = LODWORD(STACK[0x3D8]) ^ 0x74A78818;
  LODWORD(STACK[0x440]) = v14;
  LODWORD(v14) = LODWORD(STACK[0x38C]) + v14;
  LODWORD(STACK[0x318]) = v15;
  LODWORD(v12) = v14 - v15 + v12;
  LODWORD(STACK[0x358]) = v249;
  LODWORD(v14) = LODWORD(STACK[0x308]) - ((2 * v249) & 0xE5725DD2) - 1047336128;
  v319 = STACK[0x494];
  LODWORD(STACK[0x398]) = LODWORD(STACK[0x494]) ^ 0x5EB7814A;
  LODWORD(v12) = v319 ^ v14 ^ 0x2C0EAFA3 ^ v12;
  LODWORD(v14) = LODWORD(STACK[0x460]) ^ LODWORD(STACK[0x514]) ^ 0x85E1A9E7;
  LODWORD(v15) = LODWORD(STACK[0x35C]) ^ 0x969DB24;
  LODWORD(STACK[0x328]) = v15;
  LODWORD(STACK[0x500]) = v308;
  LODWORD(STACK[0x38C]) = v312;
  LODWORD(STACK[0x390]) = v311;
  LODWORD(v12) = LODWORD(STACK[0x410]) + v311 + (v14 ^ (((v12 - v15) ^ v308) + v312));
  v320 = STACK[0x3A4];
  LODWORD(v15) = LODWORD(STACK[0x3A4]) + 1581338263;
  LODWORD(STACK[0x2F4]) = v15;
  LODWORD(v12) = (v320 - ((2 * v15) & 0x461BB00) + 1618095127) ^ LODWORD(STACK[0x420]) ^ 0x230DD80 ^ v12;
  LODWORD(v14) = LODWORD(STACK[0x418]) ^ 0xD0FE303F;
  LODWORD(STACK[0x4E8]) = v14;
  LODWORD(v14) = v14 - LODWORD(STACK[0x46C]);
  LODWORD(STACK[0x354]) = v297;
  LODWORD(v15) = LODWORD(STACK[0x330]) ^ 0x44E1A93;
  LODWORD(STACK[0x308]) = v15;
  v321 = STACK[0x2FC];
  v322 = STACK[0x338];
  LODWORD(v12) = LODWORD(STACK[0x2FC]) ^ LODWORD(STACK[0x52C]) ^ LODWORD(STACK[0x338]) ^ 0xFDD28B76 ^ (v14 + v297 - v15 + v12);
  LODWORD(v14) = LODWORD(STACK[0x4D0]) ^ 0x14AAFF5C;
  LODWORD(STACK[0x4C4]) = v14;
  v323 = STACK[0x478];
  LODWORD(v12) = (LODWORD(STACK[0x478]) - LODWORD(STACK[0x470]) + ((v14 - LODWORD(STACK[0x368]) + v12) ^ LODWORD(STACK[0x41C]))) ^ LODWORD(STACK[0x4FC]);
  v324 = STACK[0x378];
  LODWORD(STACK[0x380]) = LODWORD(STACK[0x378]) + 1390873704;
  LODWORD(v15) = STACK[0x434];
  LODWORD(STACK[0x438]) = LODWORD(STACK[0x434]) + 1438840523;
  LODWORD(v12) = LODWORD(STACK[0x498]) - v15 - v324 + 1465253069 + v12;
  v325 = STACK[0x384];
  LODWORD(STACK[0x494]) = LODWORD(STACK[0x384]) - 443856877;
  LODWORD(v15) = STACK[0x42C];
  LODWORD(STACK[0x348]) = LODWORD(STACK[0x42C]) - 1979807749;
  LODWORD(v14) = v15 - v325 - 1535950872;
  v326 = STACK[0x2E0];
  LODWORD(v15) = LODWORD(STACK[0x2E0]) ^ 0xEB5B9C4E;
  LODWORD(STACK[0x434]) = v15;
  LODWORD(STACK[0x34C]) = v306;
  LODWORD(v12) = ((v12 - ((2 * v12) & 0xE59B3116) - 221407093) ^ v15) + v306;
  LODWORD(v15) = LODWORD(STACK[0x408]) - 1898909873;
  LODWORD(STACK[0x2B0]) = v15;
  LODWORD(v12) = v14 + (v12 ^ v15);
  LODWORD(v14) = LODWORD(STACK[0x4A0]) + 672459887 - ((2 * LODWORD(STACK[0x4A0])) & 0x5029F7DE);
  v327 = STACK[0x4E0];
  v328 = LODWORD(STACK[0x4E0]) - 431205973;
  LODWORD(STACK[0x37C]) = v328;
  LODWORD(STACK[0x52C]) = v327 - ((2 * v328) & 0x704A48E0) + 510752283;
  LODWORD(STACK[0x2A8]) = v289 ^ 0x3CDCDA76;
  LODWORD(v15) = ((v323 ^ 0xA9E4CB4D) + (v289 ^ 0x3CDCDA76) - 1251426632) ^ 0x8DC0420B;
  v329 = STACK[0x424];
  v330 = LODWORD(STACK[0x424]) - 2068085631;
  LODWORD(STACK[0x300]) = v330;
  LODWORD(STACK[0x514]) = v329 - ((2 * v330) & 0x61D3CE76) + 900033468;
  LODWORD(STACK[0x42C]) = v321 ^ 0xDFB07C0D;
  v331 = (((((v321 ^ 0xDFB07C0D) + 2076388063) ^ v326 ^ 0xC3F9FDBE) + v323) >> 1) + 228978860;
  v332 = STACK[0x4F4];
  v333 = ((2 * ((v316 + LODWORD(STACK[0x540]) + 900739399) ^ LODWORD(STACK[0x4F4]))) ^ 0xE0C0FA24) + 1979186387;
  LODWORD(STACK[0x384]) = LODWORD(STACK[0x550]) ^ 0xDA01BA1B ^ LODWORD(STACK[0x568]);
  v334 = *(&STACK[0x580] + ((*(&STACK[0x580] + ((*(&STACK[0x580] + ((STACK[0x588] & 1) == 0)) & 1) == 0)) & 1) == 0)) & 1;
  v335 = (((v334 ^ 0xC0051A2F) + 1419504070) ^ (v334 + 723586027) ^ ((v334 ^ 0x8F524625) + 466400720)) - 144677108;
  v336 = LODWORD(STACK[0x2F8]) ^ 0x314A085E;
  LODWORD(STACK[0x304]) = v322 ^ 0xB3F1D30D;
  LODWORD(STACK[0x3B4]) = (v12 ^ LODWORD(STACK[0x43C])) + LODWORD(STACK[0x444]);
  LODWORD(STACK[0x540]) = v14 + 3968;
  LODWORD(STACK[0x550]) = LODWORD(STACK[0x428]) - LODWORD(STACK[0x4EC]) + LODWORD(STACK[0x464]);
  LODWORD(v14) = (v15 + LODWORD(STACK[0x4F0])) >> 1;
  LODWORD(STACK[0x568]) = v331;
  LODWORD(STACK[0x4FC]) = v14;
  LODWORD(STACK[0x4E0]) = v333;
  LODWORD(STACK[0x508]) = LODWORD(STACK[0x414]) ^ 0xDD3B18A3;
  LODWORD(STACK[0x3A4]) = v332 - LODWORD(STACK[0x454]);
  LODWORD(STACK[0x424]) = v336;
  LODWORD(STACK[0x3B0]) = LODWORD(STACK[0x4CC]) - v336;
  v337 = v335 < 0x8BFF5AF7 || v335 > 0x8BFF5AF8;
  return (*(STACK[0x480] + 8 * ((110 * !v337) ^ STACK[0x570])))(0x7598FB24C3CDCE3DLL, 0xAAE7BB598DB6A334);
}

uint64_t sub_100217A14()
{
  v2 = (v1 + 1859291211) & 0x912D77A2;
  LODWORD(STACK[0x394]) = LODWORD(STACK[0x3E8]) ^ 0xE87E8EEC;
  LODWORD(STACK[0x570]) = LODWORD(STACK[0x3F4]) + LODWORD(STACK[0x404]);
  LODWORD(STACK[0x378]) = LODWORD(STACK[0x4B8]) ^ LODWORD(STACK[0x514]) ^ 0xB0E9E73B ^ (((LODWORD(STACK[0x550]) + (LODWORD(STACK[0x4B4]) ^ LODWORD(STACK[0x4C8]) ^ LODWORD(STACK[0x52C]) ^ 0x38252470 ^ (LODWORD(STACK[0x3B0]) + (LODWORD(STACK[0x540]) ^ 0x2814EC6F ^ LODWORD(STACK[0x4E4]) ^ (LODWORD(STACK[0x3A4]) + (LODWORD(STACK[0x3B4]) ^ LODWORD(STACK[0x4F0]))) ^ v2)))) ^ LODWORD(STACK[0x468])) - LODWORD(STACK[0x508]));
  return (*(STACK[0x480] + 8 * ((2 * (v0 < 2)) | (16 * (v0 < 2)) | v2)))();
}

uint64_t sub_10021828C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x550]) = LODWORD(STACK[0x560]) - LODWORD(STACK[0x558]) - 1529655204;
  LODWORD(STACK[0x4C8]) = LODWORD(STACK[0x504]) ^ 0xA37835B5;
  v11 = (a3 + v8) >> 16;
  v12 = (a3 + v8 - v11) >> 8;
  v13 = a3 + (v9 ^ 0x1CCE752A8B810F7FLL);
  v14 = (v13 + v8 - v12 - v11) >> 30;
  v15 = (v13 + v8 - v14 - v12 - v11) >> 12;
  v16 = (v13 + v8 - v15 - v14 - v12 - v11) >> 8;
  v17 = v11 + v12 + v14;
  v18 = v13 + v16 - v15 - v17 + v8;
  v19 = v13 + v7 + v16;
  v20 = (v19 - v15 - v14 - v12 - v11) >> 24;
  v21 = (v19 - v20 - v15 - v14 - v12 - v11) >> 11;
  v22 = v13 + v16 + v21 - ((v19 + v21 - v20 - v15 - v14 - v12 - v11) >> 2) - v20 - v15 - v17 + v7;
  v23 = (v22 ^ 0xF201594163E67FE1) - ((v22 ^ 0xF201594163E67FE1) >> 29) + (((v22 ^ 0xF201594163E67FE1) - ((v22 ^ 0xF201594163E67FE1) >> 29)) >> 9);
  v24 = v23 - (v23 >> 5);
  v25 = v24 + 0x2EAF543267C5D627 - ((v24 + 0x2EAF543267C5D627) >> 28) - ((v24 + 0x2EAF543267C5D627 - ((v24 + 0x2EAF543267C5D627) >> 28)) >> 9);
  v26 = v25 + (v25 >> 2);
  v27 = v26 ^ v18;
  v28 = (v26 ^ 0xA9309392D683D49ALL) - ((v26 ^ 0xA9309392D683D49ALL) >> 29) + (((v26 ^ 0xA9309392D683D49ALL) - ((v26 ^ 0xA9309392D683D49ALL) >> 29)) >> 13);
  v29 = v28 - (v28 >> 6);
  LODWORD(v22) = v29 ^ v22;
  v30 = v29 + 0x1EA76BEF84ABE888 + ((v29 + 0x1EA76BEF84ABE888) >> 28) + ((v29 + 0x1EA76BEF84ABE888 + ((v29 + 0x1EA76BEF84ABE888) >> 28)) >> 15);
  v31 = v30 - (v30 >> 2);
  v32 = v31 + 0x5C8D226FD564897FLL - ((v31 + 0x5C8D226FD564897FLL) >> 25) - ((v31 + 0x5C8D226FD564897FLL - ((v31 + 0x5C8D226FD564897FLL) >> 25)) >> 11);
  v33 = v32 + (v32 >> 3);
  v34 = v27 ^ a5 ^ v33;
  v35 = v33 - 0x4DE5418C3542D184 + ((v33 - 0x4DE5418C3542D184) >> 28) - ((v33 - 0x4DE5418C3542D184 + ((v33 - 0x4DE5418C3542D184) >> 28)) >> 13);
  v36 = v35 - (v35 >> 2);
  v37 = v22 ^ v10 ^ v36;
  v38 = v36 + 0x7097E5F175BB2BD9 - ((v36 + 0x7097E5F175BB2BD9) >> 28) - ((v36 + 0x7097E5F175BB2BD9 - ((v36 + 0x7097E5F175BB2BD9) >> 28)) >> 11);
  LODWORD(v38) = v31 ^ v24 ^ (v38 - (v38 >> 2));
  LODWORD(v24) = (v38 - ((2 * v38) & 0xF2954FCA) - 112547867) ^ a7;
  LODWORD(STACK[0x3F4]) = v34 & 0x7F ^ 0x60;
  LODWORD(STACK[0x4E4]) = v24;
  v40 = v24 & 7;
  v39 = (v24 & 7) == 0;
  v41 = -v24 & 7;
  if (v39)
  {
    v42 = 0;
  }

  else
  {
    v42 = 255;
  }

  LODWORD(STACK[0x558]) = v41;
  v43 = v42 << v41;
  if (v39)
  {
    v44 = 1273332804;
  }

  else
  {
    v44 = v43 ^ 0xB41A7BBB;
  }

  LODWORD(STACK[0x2D8]) = 16843009 * v43;
  LODWORD(STACK[0x270]) = (-1795162112 * v43) & (v37 ^ 0xF5000000);
  LODWORD(STACK[0x540]) = v44;
  LODWORD(STACK[0x294]) = v44 & 0x93;
  LODWORD(STACK[0x3A4]) = v34 ^ 0xBB;
  LODWORD(STACK[0x52C]) = v37;
  v45 = 16843009 * ((v37 ^ BYTE1(v37) ^ BYTE2(v37)) ^ HIBYTE(v37) ^ 0xDD);
  v46 = 16843009 * ((v34 ^ BYTE1(v34) ^ BYTE2(v34)) ^ HIBYTE(v34) ^ 0x80);
  v47 = STACK[0x4D8] - 0x1E78CE7C04DA7CFBLL;
  STACK[0x298] = v47;
  LODWORD(v47) = 1523372261 - (*(&STACK[0x580] + (*(&STACK[0x580] + (*(&STACK[0x580] + ((*v47 & 1) == 0)) & 1)) & 1)) & 1);
  v48 = ((v47 ^ 0xD1A096) + 1556642821) ^ ((v47 ^ 0xAC33381) + 1457188628) ^ ((v47 ^ 0x50DE43F2) + 214409057);
  LODWORD(STACK[0x254]) = v46 ^ 0x9F2CA1C;
  v49 = v9 ^ 0x175C;
  LODWORD(STACK[0x514]) = v34;
  LODWORD(STACK[0x290]) = v34 & 0xFFFFFF80;
  STACK[0x560] = v40;
  LODWORD(STACK[0x3B0]) = -v40;
  LODWORD(STACK[0x404]) = v45;
  LODWORD(STACK[0x3B4]) = v46;
  LODWORD(STACK[0x4D8]) = v45 ^ v46;
  v50 = v48 < 0x6D50C78 || v48 - 859164771 > 0xD39F3C16;
  return (*(STACK[0x480] + 8 * ((53 * !v50) ^ v49)))();
}

uint64_t sub_100218C6C()
{
  v2 = (v0 - 3561) | 0x2809;
  LODWORD(STACK[0x368]) = (v2 - 669410469) ^ LODWORD(STACK[0x550]);
  LODWORD(STACK[0x550]) = 16843009 * LODWORD(STACK[0x3F4]);
  LODWORD(STACK[0x280]) = LODWORD(STACK[0x4E4]) ^ 0xE44310C8;
  LODWORD(STACK[0x26C]) = (LODWORD(STACK[0x540]) ^ 0x44444444) & STACK[0x3A4];
  LODWORD(STACK[0x3A4]) = LODWORD(STACK[0x4D8]) ^ 0xABABABAB;
  LODWORD(STACK[0x250]) = LODWORD(STACK[0x52C]) ^ 0x1ECA0422;
  return (*(STACK[0x480] + 8 * ((219 * ((v1 & 0xFFFFFFFE) == 1440622968)) ^ v2)))(v1 - 0x7788C296D99D2BFCLL);
}

uint64_t sub_10021934C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v13 = STACK[0x280];
  v14 = (LODWORD(STACK[0x280]) - 257) % 0x101u;
  LODWORD(STACK[0x348]) ^= LODWORD(STACK[0x4B8]) ^ LODWORD(STACK[0x320]) ^ LODWORD(STACK[0x4F4]) ^ LODWORD(STACK[0x498]) ^ LODWORD(STACK[0x3C4]) ^ LODWORD(STACK[0x4A0]) ^ LODWORD(STACK[0x324]) ^ LODWORD(STACK[0x424]) ^ LODWORD(STACK[0x468]) ^ LODWORD(STACK[0x4A4]) ^ LODWORD(STACK[0x4B4]) ^ LODWORD(STACK[0x440]) ^ LODWORD(STACK[0x4F8]) ^ LODWORD(STACK[0x2F4]) ^ LODWORD(STACK[0x4C4]) ^ LODWORD(STACK[0x2B0]) ^ LODWORD(STACK[0x300]) ^ LODWORD(STACK[0x444]) ^ LODWORD(STACK[0x3CC]) ^ LODWORD(STACK[0x438]) ^ LODWORD(STACK[0x538]) ^ LODWORD(STACK[0x374]) ^ LODWORD(STACK[0x42C]) ^ LODWORD(STACK[0x390]) ^ LODWORD(STACK[0x458]) ^ LODWORD(STACK[0x428]) ^ LODWORD(STACK[0x4E8]) ^ LODWORD(STACK[0x420]) ^ LODWORD(STACK[0x470]) ^ LODWORD(STACK[0x448]) ^ LODWORD(STACK[0x45C]) ^ LODWORD(STACK[0x430]) ^ LODWORD(STACK[0x454]) ^ LODWORD(STACK[0x398]) ^ LODWORD(STACK[0x410]) ^ LODWORD(STACK[0x304]) ^ LODWORD(STACK[0x36C]) ^ LODWORD(STACK[0x308]) ^ LODWORD(STACK[0x49C]) ^ LODWORD(STACK[0x370]) ^ LODWORD(STACK[0x4CC]) ^ LODWORD(STACK[0x464]) ^ LODWORD(STACK[0x500]) ^ LODWORD(STACK[0x460]) ^ LODWORD(STACK[0x43C]) ^ LODWORD(STACK[0x318]) ^ LODWORD(STACK[0x548]) ^ LODWORD(STACK[0x41C]) ^ LODWORD(STACK[0x38C]) ^ LODWORD(STACK[0x3F8]) ^ LODWORD(STACK[0x380]) ^ LODWORD(STACK[0x434]) ^ LODWORD(STACK[0x2DC]) ^ LODWORD(STACK[0x314]) ^ LODWORD(STACK[0x4A8]) ^ LODWORD(STACK[0x37C]) ^ LODWORD(STACK[0x508]) ^ LODWORD(STACK[0x494]) ^ LODWORD(STACK[0x334]) ^ LODWORD(STACK[0x328]) ^ LODWORD(STACK[0x570]) ^ 0x4C4ECD49;
  v15 = a8 + v10;
  v16 = (a8 + a1) >> 16;
  v17 = (a8 + a1 - v16) >> 8;
  v18 = (a8 + v10 - v17 - v16) >> 30;
  v19 = (v15 - v18 - v17 - v16) >> 12;
  v20 = a8 + ((v15 - v19 - v18 - v17 - v16) >> 8);
  STACK[0x570] = (a2 - 28);
  v21 = v20 - v19 - v18 - v17 - v16 + a2 - 1310476836 + v12;
  v22 = v20 + v9;
  v23 = (v22 - v19 - v18 - v17 - v16) >> 24;
  v24 = (v22 - v23 - v19 - v18 - v17 - v16) >> 11;
  v25 = v20 + v24 - ((v22 + v24 - v23 - v19 - v18 - v17 - v16) >> 2) - v23 - v19;
  if (v13 < 0x101)
  {
    v14 = v13;
  }

  LODWORD(STACK[0x240]) = v14;
  v26 = v13;
  v27 = v25 - v18 - v17 - v16 + (a2 - 28) - 0x15CAA3EC3F48AF96 + v12;
  v28 = (v27 ^ 0xF201594163E67FE1) - ((v27 ^ 0xF201594163E67FE1) >> 29) + (((v27 ^ 0xF201594163E67FE1) - ((v27 ^ 0xF201594163E67FE1) >> 29)) >> 9);
  v29 = v28 - (v28 >> 5);
  v30 = v29 + 0x2EAF543267C5D627 - ((v29 + 0x2EAF543267C5D627) >> 28) - ((v29 + 0x2EAF543267C5D627 - ((v29 + 0x2EAF543267C5D627) >> 28)) >> 9);
  v31 = v30 + (v30 >> 2);
  v32 = (v31 ^ 0xA9309392D683D49ALL) - ((v31 ^ 0xA9309392D683D49ALL) >> 29) + (((v31 ^ 0xA9309392D683D49ALL) - ((v31 ^ 0xA9309392D683D49ALL) >> 29)) >> 13);
  v33 = v32 - (v32 >> 6);
  LODWORD(v27) = v33 ^ v27;
  v34 = ((2 * v33) & 0x3D4ED7DF0957D110) + (v33 ^ 0x1EA76BEF84ABE888) + ((((2 * v33) & 0x3D4ED7DF0957D110) + (v33 ^ 0x1EA76BEF84ABE888)) >> 28);
  v35 = v34 + (v34 >> 15) - ((v34 + (v34 >> 15)) >> 2);
  v36 = v35 + 0x5C8D226FD564897FLL - ((v35 + 0x5C8D226FD564897FLL) >> 25) - ((v35 + 0x5C8D226FD564897FLL - ((v35 + 0x5C8D226FD564897FLL) >> 25)) >> 11);
  v37 = v36 + (v36 >> 3);
  v38 = v31 ^ v21 ^ v37 ^ a4;
  v39 = v37 - 0x4DE5418C3542D184 + ((v37 - 0x4DE5418C3542D184) >> 28) - ((v37 - 0x4DE5418C3542D184 + ((v37 - 0x4DE5418C3542D184) >> 28)) >> 13);
  v40 = v39 - (v39 >> 2);
  v41 = ((v27 ^ v40) - ((2 * (v27 ^ v40)) & 0x34C1786E) - 1704936393) ^ a6;
  v42 = v40 + 0x7097E5F175BB2BD9 - ((v40 + 0x7097E5F175BB2BD9) >> 28) - ((v40 + 0x7097E5F175BB2BD9 - ((v40 + 0x7097E5F175BB2BD9) >> 28)) >> 11);
  v43 = v35 ^ v29 ^ v8 ^ (v42 - (v42 >> 2));
  v44 = v43 & 7;
  v45 = v44 ^ 1;
  v46 = -(v44 ^ 1) & 7;
  if (v44 == 1)
  {
    v47 = 0;
  }

  else
  {
    v47 = 255;
  }

  v48 = v47 << v46;
  v49 = (v47 << v46) ^ 0xA5640EF8;
  if (v44 == 1)
  {
    v49 = 1520169223;
  }

  LODWORD(STACK[0x2B0]) = v49;
  v50 = v38 & 0x7F ^ 0x45;
  LODWORD(STACK[0x274]) = 1107970995 * (v50 - LODWORD(STACK[0x3F4]));
  LODWORD(STACK[0x238]) = LODWORD(STACK[0x3AC]) - (STACK[0x3A8] & 0xDDF22F28) - 611861891;
  v51 = 16843009 * ((v38 ^ BYTE1(v38) ^ BYTE2(v38)) ^ HIBYTE(v38) ^ 0xF2);
  v52 = 16843009 * ((v41 ^ BYTE1(v41) ^ BYTE2(v41)) ^ HIBYTE(v41) ^ 0x2F);
  LODWORD(STACK[0x3A8]) = v52;
  v53 = STACK[0x3A4];
  LODWORD(STACK[0x3AC]) = v51;
  v54 = v52 ^ v51 ^ 0xDADADADA;
  v55 = v52 ^ v51 ^ LODWORD(STACK[0x4D8]);
  v56 = *(*(&off_1006B4E30 + (a2 ^ 0x1E32)) + v53 % 0x101);
  LODWORD(STACK[0x278]) = v53 ^ LODWORD(STACK[0x2C4]) ^ v54 ^ (v55 >> 3);
  LODWORD(STACK[0x248]) = (v53 % 0x101) ^ 0xA7915D62 ^ v56;
  v57 = *(&off_1006B4E30 + (a2 ^ 0x1E4A));
  LODWORD(STACK[0x214]) = v54;
  LODWORD(STACK[0x24C]) = *(v57 - 12 + 4 * (v54 % 0x101)) ^ (v54 % 0x101) ^ 0x43E7A792;
  v58 = a2 - 6879;
  v59 = *(&off_1006B4E30 + a2 - 7106) - 12;
  v60 = *&v59[4 * v45] + 603774579;
  LODWORD(STACK[0x244]) = v60 ^ 0x5EFBFB69 ^ (v60 >> 3) & 0x63127C8;
  v61 = LODWORD(STACK[0x290]) ^ 0x7AB99780;
  v62 = LODWORD(STACK[0x514]) ^ 0x7AB997E0;
  v63 = LODWORD(STACK[0x550]);
  LODWORD(STACK[0x28C]) = 1317663937 * (v62 - (v63 ^ v61) - 2 * (v63 & v61));
  LODWORD(STACK[0x290]) = 16843009 * v48;
  LODWORD(STACK[0x53C]) = 16843009 * v50;
  v64 = (v50 + (v38 & 0xFFFFFF80 ^ 0x82DB180)) % 0x101;
  v65 = ((v43 & 0xFFFFFFF8 ^ 0x60027903) & (v44 ^ 0xFFFFFFFE) | v43 & 4) ^ 0xE70BE59B;
  v66 = (v38 ^ 0x82DB1C5) % 0x101;
  LODWORD(STACK[0x2A0]) = *(v57 - 12 + 4 * ((v43 ^ 0x87099C99) % 0x101)) ^ ((v43 ^ 0x87099C99) % 0x101) ^ 0xBC18586D;
  v67 = *&v59[4 * v64] + 603774579;
  v68 = *&v59[4 * v66] + 603774579;
  v69 = LODWORD(STACK[0x3B0]) + LODWORD(STACK[0x398]);
  v70 = *(&off_1006B4E30 + v58);
  LODWORD(STACK[0x540]) = v45;
  LODWORD(STACK[0x288]) = v65 ^ v43 ^ 0x87099C99 ^ (*(v70 - 12 + 4 * v66) - 1919851910) ^ (v69 + v45) ^ (*(v70 - 12 + 4 * v64) - 1919851910) ^ (8 * (v65 ^ v43 ^ 0x87099C99));
  LODWORD(STACK[0x2C4]) = v68 ^ v67 ^ LODWORD(STACK[0x500]) ^ ((v68 ^ v67) >> 3) & 0x63127C8;
  LODWORD(STACK[0x398]) = v62 ^ LODWORD(STACK[0x3F8]) ^ (v63 + v61);
  LODWORD(STACK[0x280]) = (1694498816 * v48) & v41;
  v71 = LODWORD(STACK[0x2A4]) + ((*(v70 - 12 + 4 * (v26 % 0x101)) - 1919851910) ^ 0xD55151EE) + ((*(v70 - 12 + 4 * LODWORD(STACK[0x240])) - 1919851910) ^ 0x2AAEAE11);
  LODWORD(STACK[0x240]) = 640107683 * ((LODWORD(STACK[0x52C]) ^ 0x7F9424DB) + v41) + 640107683;
  LODWORD(STACK[0x3F8]) = (-214173575 * LODWORD(STACK[0x4E4])) ^ LODWORD(STACK[0x388]) ^ (-214173575 * (v43 ^ 0x634A8C51));
  v72 = &STACK[0x580];
  LOBYTE(v65) = v72[(v72[v72[(STACK[0x588] & 1) == 0] & 1] & 1) == 0];
  v73 = (v65 & 1 | 0x9D539B9A) ^ (v65 & 1 | 0x936B9B9A) ^ ((v72[(v72[v72[(STACK[0x588] & 1) == 0] & 1] & 1) == 0] & 1 ^ 0x51E1301) + 1465141333);
  v74 = STACK[0x570];
  v75 = (STACK[0x570] - 1282068769) & 0x4C6ABF5F;
  LODWORD(STACK[0x500]) = LODWORD(STACK[0x270]) ^ LODWORD(STACK[0x2D8]);
  LODWORD(STACK[0x2A4]) = STACK[0x2B0] & 0x72;
  LODWORD(v72) = STACK[0x558];
  v76 = STACK[0x560];
  STACK[0x200] = v70 - 12;
  LODWORD(STACK[0x234]) = *(v70 - 12 + 4 * v76) - 1919851910;
  LODWORD(v76) = LODWORD(STACK[0x538]) - v72;
  LODWORD(STACK[0x548]) = v46;
  LODWORD(STACK[0x270]) = v76 + v46;
  LODWORD(STACK[0x23C]) = v71 + 1;
  LODWORD(v59) = LODWORD(STACK[0x4FC]) ^ 0xC41BAAC2;
  v77 = LODWORD(STACK[0x568]) ^ 0x96FE77AC;
  LODWORD(STACK[0x388]) = LODWORD(STACK[0x3A8]) ^ 0xB15DEA9F;
  STACK[0x208] = v57 - 12;
  v78 = v73 == 1380604756;
  v79 = (STACK[0x580] ^ 0x6868686868686868) * (v75 ^ 0xA9CD2DA529290ADDLL);
  v80 = (((v79 ^ v11 ^ 0x9E9F11498A339AE5) - 0x40E9D132DBB10F58) ^ ((v79 ^ v11 ^ 0xABA53AF72D1FE51CLL) - 0x75D3FA8C7C9D70A1) ^ ((v79 ^ v11 ^ 0x353A2BBEA72C7FF9) + 0x14B3143A095115BCLL)) - 0x12CDABB6201F450;
  v81 = v80 - 0x205C64C94C7B75F2 + (((((v80 ^ 0x53A4CD737C972A1FLL) - 0x73F8A9BA30EC5FECLL) ^ v80 ^ ((v80 ^ 0x117C5A1D47D478DALL) - 0x31203ED40BAF0D29) ^ ((v80 ^ 0x7D3F008A4CCFD98CLL) - 0x5D63644300B4AC7ELL) ^ ((v80 ^ 0x1FBBF32D3BF7FEB8) - 0x3FE797E4778C8B48)) >> 32) ^ 0xFFFFFFFFDFA39B36);
  v82 = v81 - (v81 >> 16) - ((v81 - (v81 >> 16)) >> 8);
  LODWORD(v57) = (((v82 << 12) & 0x3E89FC55000 ^ (v82 << 10)) >> 10) ^ v59;
  LODWORD(v80) = (4 * (v82 + 68982436)) & 0xFA27F154 ^ (v82 + 68982436) ^ v77;
  v83 = ((((v82 + 0x46F98B3008392D48) ^ v79 ^ 0xCD7B704C7BF6CFB9) + 0x7CDFF6EAD6680E9FLL) ^ (((v82 + 0x46F98B3008392D48) ^ v79 ^ 0x5CB02DCCB8B649D3) - 0x12EB5495EAD7770BLL) ^ (((v82 + 0x46F98B3008392D48) ^ v79 ^ 0x91CB5D80C340866ALL) + 0x206FDB266EDE474ELL)) - 0x5DC342DA2A200027;
  v84 = (v83 ^ 0x2FDC3E2B7A243CFELL) & (2 * (v83 & 0xAC1EBC337C813EFFLL)) ^ v83 & 0xAC1EBC337C813EFFLL;
  v85 = ((2 * (v83 ^ 0x7FED5E095B240914)) ^ 0xA7E7C4744F4A6FD6) & (v83 ^ 0x7FED5E095B240914) ^ (2 * (v83 ^ 0x7FED5E095B240914)) & 0xD3F3E23A27A537EALL;
  v86 = v85 ^ 0x5010220A20A51029;
  v87 = (v85 ^ 0x80E3C21006A027C0) & (4 * v84) ^ v84;
  v88 = ((4 * v86) ^ 0x4FCF88E89E94DFACLL) & v86 ^ (4 * v86) & 0xD3F3E23A27A537E8;
  v89 = (v88 ^ 0x43C38028068417A0) & (16 * v87) ^ v87;
  v90 = ((16 * (v88 ^ 0x9030621221212043)) ^ 0x3F3E23A27A537EB0) & (v88 ^ 0x9030621221212043) ^ (16 * (v88 ^ 0x9030621221212043)) & 0xD3F3E23A27A537E0;
  v91 = (v90 ^ 0x1332222222013600) & (v89 << 8) ^ v89;
  v92 = (((v90 ^ 0xC0C1C01805A4014BLL) << 8) ^ 0xF3E23A27A537EB00) & (v90 ^ 0xC0C1C01805A4014BLL) ^ ((v90 ^ 0xC0C1C01805A4014BLL) << 8) & 0xD3F3E23A27A53700;
  v93 = v91 ^ 0xD3F3E23A27A537EBLL ^ (v92 ^ 0xD3E2222225250000) & (v91 << 16);
  v94 = v83 - 0x53E143CC837EC101 + (((v83 ^ (2 * ((v93 << 32) & 0x53F3E23A00000000 ^ v93 ^ ((v93 << 32) ^ 0x27A537EB00000000) & (((v92 ^ 0x11C018028014EBLL) << 16) & 0x53F3E23A00000000 ^ 0x11C1C01A00000000 ^ (((v92 ^ 0x11C018028014EBLL) << 16) ^ 0x623A27A500000000) & (v92 ^ 0x11C018028014EBLL))))) >> 32) ^ 0xFFFFFFFFF344C3ECLL) + 1;
  v95 = v94 - (v94 >> 16) - ((v94 - (v94 >> 16)) >> 8);
  v96 = v57 ^ (4 * v95) & 0xFA27F154 ^ v95;
  v95 += 0x237CC598041C96A4;
  v97 = v80 ^ (4 * v95) & 0xFA27F154 ^ v95;
  v98 = ((((((2 * v95) & 0x46F98B3008392D48) + (v95 ^ 0x237CC598041C96A4)) ^ v79 ^ 0x5CBF4C655F095FC4) - 0x40B23CE6D367C281) ^ (((((2 * v95) & 0x46F98B3008392D48) + (v95 ^ 0x237CC598041C96A4)) ^ v79 ^ 0x4AF7B57C7FBB975FLL) - 0x56FAC5FFF3D50A1ALL) ^ (((((2 * v95) & 0x46F98B3008392D48) + (v95 ^ 0x237CC598041C96A4)) ^ v79 ^ 0x1648F91920B2C89BLL) - 0xA45899AACDC55DELL)) - 0x74DE746723F580B2;
  v99 = v98 - 0x6F141B154F9BE208 + (((((v98 ^ 0x94540CB7FB1BC69) - 0x66515BDE302A5E60) ^ v98 ^ ((v98 ^ 0xB29F469498A0DDA4) + 0x2274A27E28C4C053) ^ ((v98 ^ 0x6AB943B54575171ALL) - 0x5AD58A00AEEF512) ^ ((v98 ^ 0xBE775EFFEDFF94DELL) + 0x2E9CBA155D9B892ALL)) >> 32) ^ 0xFFFFFFFF90EBE4EALL);
  v100 = v99 - (v99 >> 16) - ((v99 - (v99 >> 16)) >> 8);
  if (v73 != 1380604756)
  {
    v78 = v73 - 2125475811 > 0xD39A2B73;
  }

  return (*(STACK[0x480] + 8 * (((4 * v78) | (32 * v78)) ^ v74)))(v96 ^ (4 * v100) & 0xFA27F154 ^ v100, 3550096243, 0x99AEA421CFD5A1A0, v97 ^ (4 * (v100 + 68982436)) & 0xFA27F154 ^ (v100 + 68982436), 0xFA52A75FF5110AEELL, 0x2E9CBA155D9B892ALL);
}

uint64_t sub_10021A568(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x570]) = a1;
  LODWORD(STACK[0x538]) = LODWORD(STACK[0x294]) ^ LODWORD(STACK[0x2D8]) ^ LODWORD(STACK[0x26C]);
  LODWORD(STACK[0x294]) = (LODWORD(STACK[0x2B0]) ^ 7) & a66;
  LODWORD(STACK[0x238]) ^= a67 ^ a68 ^ 0x6EF91794;
  LODWORD(STACK[0x234]) ^= 0xD55151EE;
  v76 = 1946965281 * LODWORD(STACK[0x214]);
  LODWORD(STACK[0x214]) = LODWORD(STACK[0x3AC]) ^ 0x3EBB4F1E;
  LODWORD(STACK[0x2D8]) = a71 ^ a65 ^ 0x22B7C831 ^ v76;
  LODWORD(STACK[0x2B0]) = a69 + LODWORD(STACK[0x2A8]) - a70;
  LODWORD(STACK[0x26C]) = LODWORD(STACK[0x514]) ^ LODWORD(STACK[0x40C]) ^ a72;
  LODWORD(STACK[0x40C]) = LODWORD(STACK[0x3F8]) ^ 0x20A5AC23;
  v77 = ((v75 < 0x63E33CF9) << 32) + ((41 * (v73 ^ 0xD23)) ^ 0x63E56957BF49B4EDLL);
  v78 = 0xA9CD2DA52929079BLL * (*(&STACK[0x580] + v75 + v77 - 0x3E56958232CE1B9) ^ 0x6868686868686868);
  v79 = v77 + (((v78 ^ v74 ^ 0xAC3F5341F7789D8BLL) - 0x378C8C90706ECBDELL) ^ ((v78 ^ v74 ^ 0x156CCEB1011C91F5) + 0x7120EE9F79F53860) ^ ((v78 ^ v74 ^ 0xB9539DF0F6640C7ELL) - 0x22E0422171725A2BLL));
  v80 = v75 - 0x572BAD2A42F423A8 + v79;
  v81 = (v80 ^ 0x4CF0B30304DD5301) & (2 * (v80 & 0x8EFA23A3A6DD9844)) ^ v80 & 0x8EFA23A3A6DD9844;
  v82 = ((2 * (v80 ^ 0x4DC4B5014DD56381)) ^ 0x867D2D45D611F78ALL) & (v80 ^ 0x4DC4B5014DD56381) ^ (2 * (v80 ^ 0x4DC4B5014DD56381)) & 0xC33E96A2EB08FBC4;
  v83 = (v82 ^ 0x23804008200E300) & (4 * v81) ^ v81;
  v84 = ((4 * (v82 ^ 0x410292A229080845)) ^ 0xCFA5A8BAC23EF14) & (v82 ^ 0x410292A229080845) ^ (4 * (v82 ^ 0x410292A229080845)) & 0xC33E96A2EB08FBC4;
  v85 = (v84 ^ 0x3A1282A800EB00) & (16 * v83) ^ v83;
  v86 = ((16 * (v84 ^ 0xC3048420430810C1)) ^ 0x33E96A2EB08FBC50) & (v84 ^ 0xC3048420430810C1) ^ (16 * (v84 ^ 0xC3048420430810C1)) & 0xC33E96A2EB08FBC0;
  v87 = (v86 ^ 0x3280222A008B800) & (v85 << 8) ^ v85;
  v88 = (((v86 ^ 0xC01694804B004385) << 8) ^ 0x3E96A2EB08FBC500) & (v86 ^ 0xC01694804B004385) ^ ((v86 ^ 0xC01694804B004385) << 8) & 0xC33E96A2EB08FB00;
  v89 = v87 ^ 0xC33E96A2EB08FBC5 ^ (v88 ^ 0x21682A208080000) & (v87 << 16);
  v90 = v79 + (((v80 ^ (2 * ((v89 << 32) & 0x433E96A200000000 ^ v89 ^ ((v89 << 32) ^ 0x6B08FBC500000000) & (((v88 ^ 0xC1281400E3003AC5) << 16) & 0x433E96A200000000 ^ 0x411C14A200000000 ^ (((v88 ^ 0xC1281400E3003AC5) << 16) ^ 0x16A2EB0800000000) & (v88 ^ 0xC1281400E3003AC5))))) >> 32) ^ 0xFFFFFFFF7169D419);
  v91 = (v90 + v75 + 0x37CE767963E9749DLL) >> 16;
  v92 = (v90 + v75 + 0x37CE767963E9749DLL - v91) >> 8;
  LODWORD(v80) = v72 & (4 * (v75 - v92 - v91 + v90 + 1676244125)) ^ (v75 - v92 - v91 + v90 + 1676244125) ^ LODWORD(STACK[0x570]);
  v93 = v77 + ((((v75 + 0x7EC801A96C22A1E5 - v92 - v91 + v90) ^ v78 ^ 0xA422E2D936DB5F82) + 0x4532CA2571894E0BLL) ^ (((v75 + 0x7EC801A96C22A1E5 - v92 - v91 + v90) ^ v78 ^ 0x723903010636E29ELL) - 0x6CD6D402BE9B0CE9) ^ (((v75 + 0x7EC801A96C22A1E5 - v92 - v91 + v90) ^ v78 ^ 0xD61BE1D830EDBD1CLL) + 0x370BC92477BFAC95));
  v94 = v93 + ((((((v75 - 0x3924D58F9AA9DD82 + v93) ^ 0x4BB479EB676803ADLL) - 0x4064C52FA8BD166DLL) ^ (v75 - 0x3924D58F9AA9DD82 + v93) ^ (((v75 - 0x3924D58F9AA9DD82 + v93) ^ 0x3539B932ABFE5766) - 0x3EE905F6642B42A6) ^ (((v75 - 0x3924D58F9AA9DD82 + v93) ^ 0xE3C7E3F8B9FE00) - 0xB337B27376CEB00) ^ (((v75 - 0x3924D58F9AA9DD82 + v93) ^ 0x75BEBBFEFBFABFCBLL) - 0x7E6E073A342FAA0BLL)) >> 32) ^ 0xFFFFFFFFF42F433BLL);
  v95 = (v94 + v75 - 0x44F592546A7EF341) >> 16;
  v96 = (v94 + v75 - 0x44F592546A7EF341 - v95) >> 8;
  LODWORD(v80) = v80 ^ v72 & (4 * (v75 - 1786704705 - v96 - v95 + v94)) ^ (v75 - 1786704705 - v96 - v95 + v94);
  v97 = v77 + ((((v75 + 0x203F8DB9DBA3A07 - v96 - v95 + v94) ^ v78 ^ 0xAE3DC3B8C965B0C3) + 0x7E5DBEDD16A1484BLL) ^ (((v75 + 0x203F8DB9DBA3A07 - v96 - v95 + v94) ^ v78 ^ 0x3CE62D61D9D02F6) - 0x2C51E04C3DA60580) ^ (((v75 + 0x203F8DB9DBA3A07 - v96 - v95 + v94) ^ v78 ^ 0xADF3A16ED4F8B235) + 0x7D93DC0B0B3C4ABDLL));
  v98 = v97 + ((((((v75 + 0x39BDABDEDE2237B3 + v97) ^ 0x46CA3924A9C09B18) - 0x28C9ABB848D48AEELL) ^ (v75 + 0x39BDABDEDE2237B3 + v97) ^ (((v75 + 0x39BDABDEDE2237B3 + v97) ^ 0x7CD25D3FF9407A4ALL) - 0x12D1CFA318546BBCLL) ^ (((v75 + 0x39BDABDEDE2237B3 + v97) ^ 0x2FA44AFA6BCB8369) - 0x41A7D8668ADF929FLL) ^ (((v75 + 0x39BDABDEDE2237B3 + v97) ^ 0x7BBFBC7DDA5F73CDLL) - 0x15BC2EE13B4B623BLL)) >> 32) ^ 0xFFFFFFFF91FC6D63);
  v99 = (v98 + v75 - 0x3445E6BE02F1DA42) >> 16;
  LODWORD(STACK[0x570]) = v80 ^ v72 & (4 * (v75 - 49404482 - ((v98 + v75 - 0x3445E6BE02F1DA42 - v99) >> 8) - v99 + v98)) ^ (v75 - 49404482 - ((v98 + v75 - 0x3445E6BE02F1DA42 - v99) >> 8) - v99 + v98);
  return (*(STACK[0x480] + 8 * (((8 * ((v75 & 0xFFFFFFFE) != 1675836664)) | (16 * ((v75 & 0xFFFFFFFE) != 1675836664))) ^ v73)))(v75 - 0x3445E6BE02F1DA42);
}

uint64_t sub_10021AF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = (v69 + a1) >> 16;
  v74 = (v69 + a1 - v73) >> 8;
  v75 = (v69 + v72 - v74 - v73) >> 30;
  v76 = (v69 + v72 - v75 - v74 - v73) >> 12;
  v77 = v69 + ((v69 + v72 - v76 - v75 - v74 - v73) >> 8) - v76 - v75 - v74 - v73 + v72;
  v78 = v77 ^ 0x3B10567FF12C658DLL;
  if (!v70)
  {
    v78 = 0x44EFA9800ED39A72;
  }

  v79 = (v77 ^ 0x44EFA9800ED39A72) + 2 * (v78 & v77) - (((v77 ^ 0x44EFA9800ED39A72) + 2 * (v78 & v77)) >> 24);
  v80 = v79 + (v79 >> 11) - ((v79 + (v79 >> 11)) >> 2);
  v81 = (v80 ^ 0xF201594163E67FE1) - ((v80 ^ 0xF201594163E67FE1) >> 29) + (((v80 ^ 0xF201594163E67FE1) - ((v80 ^ 0xF201594163E67FE1) >> 29)) >> 9);
  v82 = v81 - (v81 >> 5);
  v83 = v82 + 0x2EAF543267C5D627 - ((v82 + 0x2EAF543267C5D627) >> 28) - ((v82 + 0x2EAF543267C5D627 - ((v82 + 0x2EAF543267C5D627) >> 28)) >> 9);
  v84 = v83 + (v83 >> 2);
  LODWORD(a38) = (4 * v84) & 0xFA27F154;
  v124 = v84;
  v85 = (v84 ^ 0xA9309392D683D49ALL) - ((v84 ^ 0xA9309392D683D49ALL) >> 29) + (((v84 ^ 0xA9309392D683D49ALL) - ((v84 ^ 0xA9309392D683D49ALL) >> 29)) >> 13);
  v86 = v85 - (v85 >> 6) + 0x1EA76BEF84ABE888 + ((v85 - (v85 >> 6) + 0x1EA76BEF84ABE888) >> 28) + ((v85 - (v85 >> 6) + 0x1EA76BEF84ABE888 + ((v85 - (v85 >> 6) + 0x1EA76BEF84ABE888) >> 28)) >> 15);
  v87 = v86 - (v86 >> 2);
  v88 = v87 + 0x5C8D226FD564897FLL - ((v87 + 0x5C8D226FD564897FLL) >> 25) - ((v87 + 0x5C8D226FD564897FLL - ((v87 + 0x5C8D226FD564897FLL) >> 25)) >> 11);
  v89 = v88 + (v88 >> 3) - 0x4DE5418C3542D184 + ((v88 + (v88 >> 3) - 0x4DE5418C3542D184) >> 28) - ((v88 + (v88 >> 3) - 0x4DE5418C3542D184 + ((v88 + (v88 >> 3) - 0x4DE5418C3542D184) >> 28)) >> 13);
  v90 = &STACK[0x580] + (*(&STACK[0x580] + (*(&STACK[0x580] + (*STACK[0x298] & 1)) & 1)) & 1);
  LODWORD(v90) = (*v90 & 1 | 0xB9C3752) - 2 * (*v90 & 1);
  v91 = v89 - (v89 >> 2) + 0x7097E5F175BB2BD9 - ((v89 - (v89 >> 2) + 0x7097E5F175BB2BD9) >> 28) - ((v89 - (v89 >> 2) + 0x7097E5F175BB2BD9 - ((v89 - (v89 >> 2) + 0x7097E5F175BB2BD9) >> 28)) >> 11);
  v92 = v87 ^ v82 ^ (v91 - (v91 >> 2));
  v93 = STACK[0x4FC];
  LODWORD(a45) = LODWORD(STACK[0x514]) ^ 0x7177E566;
  LODWORD(a37) = (4 * (a45 ^ LODWORD(STACK[0x4FC]))) & 0xFA27F154;
  LODWORD(STACK[0x4F0]) = LODWORD(STACK[0x2A4]) ^ LODWORD(STACK[0x290]) ^ LODWORD(STACK[0x294]);
  HIDWORD(a27) = LODWORD(STACK[0x404]) ^ 0x42B0D59C;
  LODWORD(v87) = LODWORD(STACK[0x408]) - 1898909873;
  LODWORD(STACK[0x298]) = LODWORD(STACK[0x278]) ^ 0x770209A8;
  LODWORD(STACK[0x2A8]) = v87 + a66 + a68 + 1;
  LODWORD(STACK[0x294]) = a67 + LODWORD(STACK[0x2B8]);
  LODWORD(STACK[0x2A4]) = a65 + LODWORD(STACK[0x2A0]);
  LODWORD(STACK[0x2A0]) = LODWORD(STACK[0x398]) ^ 0xE24BDBBD;
  LODWORD(v87) = LODWORD(STACK[0x26C]) ^ 0x5323BCA0;
  LODWORD(a34) = v68 & (4 * v77) ^ v77;
  STACK[0x2B8] = v92 ^ v68 & (4 * v92);
  LODWORD(v89) = STACK[0x4E0];
  LODWORD(STACK[0x408]) = v87;
  LODWORD(v85) = (((v90 - 57) ^ 0x2D71A09D) + 598564697) ^ (((v90 - 57) ^ 0x24A16) + 249476564) ^ (((v90 - 57) ^ 0x26EFDD92) + 674439768);
  v94 = v89 ^ 0x6E250C36;
  v95 = (v85 + 266922341);
  v96 = (a8 - 1448);
  v97 = 0xA9CD2DA52929079BLL * (STACK[0x580] ^ 0x6868686868686868);
  v98 = (((v97 ^ v71 ^ 0x3393C384B4F322FALL) + (v96 ^ 0x134224548C06B99FLL)) ^ ((v97 ^ v71 ^ 0xF22BDB161938471ALL) - 0x2D05C339DE322906) ^ ((v97 ^ v71 ^ 0xC1B81892ADCB65E0) - 0x1E9600BD6AC10BFCLL)) + 0x303B3CA335DEB44FLL;
  v99 = (v98 ^ 0x8CF0DB6A0D8B3988) & (2 * (v98 & 0xAEF2DB8C912BB9CDLL)) ^ v98 & 0xAEF2DB8C912BB9CDLL;
  v100 = ((2 * (v98 ^ 0x9454E87B0FD9591ALL)) ^ 0x754C67EF3DE5C1AELL) & (v98 ^ 0x9454E87B0FD9591ALL) ^ (2 * (v98 ^ 0x9454E87B0FD9591ALL)) & 0x3AA633F79EF2E0D6;
  v101 = (v100 ^ 0x302422660EE0C004) & (4 * v99) ^ v99;
  v102 = ((4 * (v100 ^ 0xAA2101082122051)) ^ 0xEA98CFDE7BCB835CLL) & (v100 ^ 0xAA2101082122051) ^ (4 * (v100 ^ 0xAA2101082122051)) & 0x3AA633F79EF2E0D4;
  v103 = (v102 ^ 0x2A8003D61AC28050) & (16 * v101) ^ v101;
  v104 = ((16 * (v102 ^ 0x1026302184306083)) ^ 0xAA633F79EF2E0D70) & (v102 ^ 0x1026302184306083) ^ (16 * (v102 ^ 0x1026302184306083)) & 0x3AA633F79EF2E0D0;
  v105 = (v104 ^ 0x2A2233718E220000) & (v103 << 8) ^ v103;
  v106 = (((v104 ^ 0x1084008610D0E087) << 8) ^ 0xA633F79EF2E0D700) & (v104 ^ 0x1084008610D0E087) ^ ((v104 ^ 0x1084008610D0E087) << 8) & 0x3AA633F79EF2E000;
  v107 = v105 ^ 0x3AA633F79EF2E0D7 ^ (v106 ^ 0x2222339692E00000) & (v105 << 16);
  v108 = v98 - 0x510D24736ED44633 + (((v98 ^ (2 * ((v107 << 32) & 0x3AA633F700000000 ^ v107 ^ ((v107 << 32) ^ 0x1EF2E0D700000000) & (((v106 ^ 0x188400610C1220D7) << 16) & 0x3AA633F700000000 ^ 0x800210500000000 ^ (((v106 ^ 0x188400610C1220D7) << 16) ^ 0x33F79EF200000000) & (v106 ^ 0x188400610C1220D7))))) >> 32) ^ 0xFFFFFFFF11050232) + 1;
  v109 = v108 - (v108 >> 16) - ((v108 - (v108 >> 16)) >> 8);
  LODWORD(v98) = (2 * v109) & 0xE5999EAA ^ v109 ^ v93 ^ 0xB75F720E;
  v109 += 0x46F98B3008392D48;
  v110 = (2 * v109) & 0xE5999EAA ^ v109 ^ v94;
  v111 = (((v109 ^ v97 ^ 0x231FC31319AE4E96) - 0x30E2C1D871213AE2) ^ ((v109 ^ v97 ^ 0x4118C5DC79C1E0CALL) - 0x52E5C717114E94BELL) ^ ((v109 ^ v97 ^ 0x620706CF606FAE5CLL) - 0x71FA040408E0DA28)) + 0x4DF13643810FAF3DLL;
  v112 = v111 - 0x39F4337818803AC8 + (((((v111 ^ 0xC749676F66FC56FELL) + 0x142ABE8818393C9) ^ v111 ^ ((v111 ^ 0x8FC7805920301531) + 0x49CC4CDEC74FD008) ^ ((v111 ^ 0x6B029E1A1BAC66CLL) - 0x3F441A99B93AFCA4) ^ ((v111 ^ 0x77CAFDAFFFF6BF6ALL) - 0x4E3ECED7E77685A2)) >> 32) ^ 0xFFFFFFFFC60BCC87);
  v113 = v112 - (v112 >> 16) - ((v112 - (v112 >> 16)) >> 8);
  LODWORD(v98) = v98 ^ (2 * v113) & 0xE5999EAA ^ v113;
  v113 += 0x46F98B3008392D48;
  v114 = (2 * v113) & 0xE5999EAA ^ v113;
  v115 = (((v113 ^ v97 ^ 0xC92D6764EC42902) + 0x27311B6593509E5) ^ ((v113 ^ v97 ^ 0xEB1E5FEA5103F247) - 0x1A0067D5B90D2D5ELL) ^ ((v113 ^ v97 ^ 0xE78C899C1FC7DB45) - 0x1692B1A3F7C9045CLL)) + 0x5282B8A07429A0FFLL;
  v116 = ((((v115 ^ 0xB74EE789986D5F44) + 0x29D59816EB88615ELL) ^ v115 ^ ((v115 ^ 0x555AE6A686A1D581) - 0x343E66C60ABB1467) ^ ((v115 ^ 0x1C895EF067B4F240) - 0x7DEDDE90EBAE33A6) ^ ((v115 ^ 0x9FF9DFBFF562B963) + 0x162A0208687877BLL)) >> 32) ^ 0xFFFFFFFF9E9B7F9FLL;
  v117 = v115 - 0x616480608C1AC1E5 + v116 - ((v115 - 0x616480608C1AC1E5 + v116) >> 16);
  v118 = v117 - (v117 >> 8);
  v119 = v110 ^ v114;
  v120 = v98 ^ (2 * v118) & 0xE5999EAA ^ v118;
  v121 = v118 + 137964872;
  v122 = v85 < 0x540C8DD || v95 > 0x1529B243;
  return (*(STACK[0x480] + 8 * ((77 * !v122) ^ a8)))(v95, v120, 77, v96, 0xAEF2DB8C912BB9CDLL, v119, v119 ^ (2 * v121) & 0xE5999EAA ^ v121, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, v124, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_10021BA34(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x568]) = a7;
  LODWORD(STACK[0x4E4]) = LODWORD(STACK[0x280]) ^ LODWORD(STACK[0x290]);
  LODWORD(STACK[0x290]) = LODWORD(STACK[0x28C]) + LODWORD(STACK[0x518]);
  LODWORD(STACK[0x28C]) = LODWORD(STACK[0x288]) ^ 0xB0053D9D;
  LODWORD(STACK[0x280]) = LODWORD(STACK[0x52C]) ^ LODWORD(STACK[0x2DC]) ^ a65 ^ a67 ^ a69 ^ a68 ^ a66 & 0x97D98C92 ^ 0xE7724C68;
  v73 = v70 < 0x55517A53;
  v74 = v70 + (v73 << 32) + 0x46125956B969F4ABLL;
  v75 = (a4 + 737);
  v76 = 0xA9CD2DA52929079BLL * (*(&STACK[0x580] + v74 - 0x61259570EBB6EFELL) ^ 0x6868686868686868);
  STACK[0x518] = v75;
  v77 = v70 + (v73 << 32) + 0x39602AD88C99D7CCLL + ((v75 + 0x7AC36FCA5F70CAADLL + (v76 ^ v72 ^ 0x5B04992247FDC6DDLL)) ^ ((v76 ^ v72 ^ 0x8B465ABED294768CLL) - 0x557E53A935E697BCLL) ^ ((v76 ^ v72 ^ 0xD042C39C9569B051) - 0xE7ACA8B721B5161));
  v78 = (v77 ^ 0x8687DCBFC5C70E48) & (2 * (v77 & 0xA4D7DE3F05878F11)) ^ v77 & 0xA4D7DE3F05878F11;
  v79 = ((2 * (v77 ^ 0x8F2268DDCCC4164ALL)) ^ 0x57EB6DC5928732B6) & (v77 ^ 0x8F2268DDCCC4164ALL) ^ (2 * (v77 ^ 0x8F2268DDCCC4164ALL)) & 0x2BF5B6E2C943995ALL;
  v80 = v79 ^ 0x2814922249408949;
  v81 = (v79 ^ 0xBE122C241429100) & (4 * v78) ^ v78;
  v82 = ((4 * v80) ^ 0xAFD6DB8B250E656CLL) & v80 ^ (4 * v80) & 0x2BF5B6E2C9439958;
  v83 = (v82 ^ 0x2BD4928201020140) & (16 * v81) ^ v81;
  v84 = ((16 * (v82 ^ 0x212460C8419813)) ^ 0xBF5B6E2C943995B0) & (v82 ^ 0x212460C8419813) ^ (16 * (v82 ^ 0x212460C8419813)) & 0x2BF5B6E2C9439950;
  v85 = (v84 ^ 0x2B51262080019100) & (v83 << 8) ^ v83;
  v86 = (((v84 ^ 0xA490C24942084BLL) << 8) ^ 0xF5B6E2C943995B00) & (v84 ^ 0xA490C24942084BLL) ^ ((v84 ^ 0xA490C24942084BLL) << 8) & 0x2BF5B6E2C9439900;
  v87 = v85 ^ 0x2BF5B6E2C943995BLL ^ (v86 ^ 0x21B4A2C041010000) & (v85 << 16);
  v88 = v77 - 0x5B2821C0FA7870EFLL + (((v77 ^ (2 * ((v87 << 32) & 0x2BF5B6E200000000 ^ v87 ^ ((v87 << 32) ^ 0x4943995B00000000) & (((v86 ^ 0xA4114228842805BLL) << 16) & 0x2BF5B6E200000000 ^ 0x91536A000000000 ^ (((v86 ^ 0xA4114228842805BLL) << 16) ^ 0x36E2C94300000000) & (v86 ^ 0xA4114228842805BLL))))) >> 32) ^ 0xFFFFFFFF1E406C81) + 1;
  v89 = v88 - (v88 >> 16) - ((v88 - (v88 >> 16)) >> 8);
  v90 = v71 & (2 * v89) ^ v89 ^ a2;
  LODWORD(v86) = v71 & (2 * (v89 + 68982436)) ^ (v89 + 68982436);
  v91 = 2 * (v89 + 137964872);
  v92 = v91 & v71;
  v93 = v74 + 0x17417AE2C5241466 + ((((v89 + 0x46F98B3008392D48) ^ v76 ^ 0x64128D791E6DBF62) - 0x739D0B16AED507BELL) ^ (((v89 + 0x46F98B3008392D48) ^ v76 ^ 0xE81B845B0274CD9ELL) + 0x6BFDCB4D338ABELL) ^ (((v89 + 0x46F98B3008392D48) ^ v76 ^ 0x8C0909221C1972FCLL) + 0x647970B2535E35E0));
  v94 = (-137964872 - v89) ^ (v89 - (v91 & 0xBD28EAD4) + 1724752562) ^ (v92 - (v92 ^ (v89 + 137964872))) ^ 0x5E94756A;
  v95 = (v93 ^ 0x3A33BB35DED5217ALL) & (2 * (v93 & 0xBA3BB235DCD93578)) ^ v93 & 0xBA3BB235DCD93578;
  v96 = ((2 * (v93 ^ 0x7E03DB3F6F75236ALL)) ^ 0x8870D21567582C24) & (v93 ^ 0x7E03DB3F6F75236ALL) ^ (2 * (v93 ^ 0x7E03DB3F6F75236ALL)) & 0xC438690AB3AC1612;
  v97 = v96 ^ 0x4408290A90A41212;
  v98 = (v96 ^ 0x8430600023080410) & (4 * v95) ^ v95;
  v99 = ((4 * v97) ^ 0x10E1A42ACEB05848) & v97 ^ (4 * v97) & 0xC438690AB3AC1610;
  v100 = (v99 ^ 0x20200A82A01010) & (16 * v98) ^ v98;
  v101 = ((16 * (v99 ^ 0xC4184900310C0612)) ^ 0x438690AB3AC16120) & (v99 ^ 0xC4184900310C0612) ^ (16 * (v99 ^ 0xC4184900310C0612)) & 0xC438690AB3AC1610;
  v102 = (v101 ^ 0x4000000A32800000) & (v100 << 8) ^ v100;
  v103 = (((v101 ^ 0x84386900812C1612) << 8) ^ 0x38690AB3AC161200) & (v101 ^ 0x84386900812C1612) ^ ((v101 ^ 0x84386900812C1612) << 8) & 0xC438690AB3AC1600;
  v104 = v102 ^ 0xC438690AB3AC1612 ^ (v103 ^ 0x280802A0040000) & (v102 << 16);
  v105 = v93 - 0x45C44DCA2326CA88 + (((v93 ^ (2 * ((v104 << 32) & 0x4438690A00000000 ^ v104 ^ ((v104 << 32) ^ 0x33AC161200000000) & (((v103 ^ 0xC410610813A80412) << 16) & 0x4438690A00000000 ^ 0x430480200000000 ^ (((v103 ^ 0xC410610813A80412) << 16) ^ 0x690AB3AC00000000) & (v103 ^ 0xC410610813A80412))))) >> 32) ^ 0xFFFFFFFFCDE49FDBLL) + 1;
  v106 = v105 - (v105 >> 16) - ((v105 - (v105 >> 16)) >> 8);
  v107 = v106 ^ 0xD3330AA;
  if ((v86 ^ v69) == 0x8B7215C6)
  {
    v107 = 1926025045;
  }

  v108 = v74 + 0x193A26701ED628D2 + ((((v106 + 0x46F98B3008392D48) ^ v76 ^ 0x2F2B105D66471B18) - 0x3D7D2C917042989DLL) ^ (((v106 + 0x46F98B3008392D48) ^ v76 ^ 0x548126358FF114C8) - 0x46D71AF999F4974DLL) ^ (((v106 + 0x46F98B3008392D48) ^ v76 ^ 0x7BAA3668E9B60FD0) - 0x69FC0AA4FFB38C55));
  v109 = v108 - 0x4CF642FB178C144ALL + (((((v108 ^ 0xD30ED76E43D17B4) - 0x41C6AF8DF3B103FFLL) ^ v108 ^ ((v108 ^ 0x7ECB59EFC83486BALL) - 0x323D1B14DFB892F1) ^ ((v108 ^ 0xC9F2490DDC3E2EBALL) + 0x7AFBF409344DC50FLL) ^ ((v108 ^ 0xF6FFBF6FE7BBABFCLL) + 0x45F6026B0FC8404CLL)) >> 32) ^ 0xFFFFFFFFB309BD04);
  v110 = v109 - (v109 >> 16) - ((v109 - (v109 >> 16)) >> 8);
  LODWORD(STACK[0x568]) ^= (v94 + v92) ^ v71 & (2 * (v106 + 137964872)) ^ (v106 + 137964872) ^ v71 & (2 * (v110 + 137964872)) ^ (v110 + 137964872);
  return (*(STACK[0x480] + 8 * ((108 * ((v70 & 0xFFFFFFFE) != 1431403090)) ^ a4)))(0xA4D7DE3F05878F11, v90 ^ v106 ^ (2 * (v107 & v106)) ^ v71 & (2 * v110) ^ v110);
}

void sub_10021E0DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, int a13, int a14, int a15, int a16, int a17, int a18, int a19, int a20, int a21, int a22, int a23, int a24, int a25, int a26, int a27, int a28, int a29, int a30, int a31, int a32, int a33, int a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58, unsigned int a59, unsigned int a60, unsigned int a61, unsigned int a62, unsigned int a63)
{
  v127 = LODWORD(STACK[0x234]) + LODWORD(STACK[0x244]) + LODWORD(STACK[0x238]);
  v128 = LODWORD(STACK[0x264]) + LODWORD(STACK[0x3B0]) + LODWORD(STACK[0x248]) + LODWORD(STACK[0x240]);
  LODWORD(STACK[0x570]) ^= a78 ^ LODWORD(STACK[0x3CC]) ^ a64 ^ a58 ^ a99 ^ a66 ^ a54;
  v129 = LODWORD(STACK[0x4FC]) ^ LODWORD(STACK[0x2B8]) ^ a10 ^ LODWORD(STACK[0x23C]) ^ a56 ^ STACK[0x3E8] ^ a11 ^ STACK[0x3B8] ^ a12 ^ a50;
  v1157 = a49 - a53;
  v1156 = a47 - a48;
  v1155 = a39 - a46;
  v1154 = a37 - a38;
  v1159 = a35 - a36;
  v1158 = a33 - a34;
  v1160 = a14 + a13;
  v1161 = (a29 - a30) ^ (a31 - a32);
  v1162 = (a27 - a28) ^ (a25 - a26);
  v130 = a45 ^ LODWORD(STACK[0x254]);
  LODWORD(STACK[0x2B8]) = v130;
  v1153 = a15 ^ (a16 - a17);
  v131 = STACK[0x25C];
  v132 = LODWORD(STACK[0x404]) ^ LODWORD(STACK[0x3B4]) ^ 0xABABABAB;
  LODWORD(STACK[0x518]) = a3;
  v133 = STACK[0x540];
  v134 = v128 + LODWORD(STACK[0x540]) + LODWORD(STACK[0x24C]);
  v135 = ((v129 ^ (a3 - 951152363) & 0x38B16FED ^ 0x762908F7) + LODWORD(STACK[0x3A4])) ^ a19;
  v136 = STACK[0x40C];
  v137 = a18 ^ LODWORD(STACK[0x40C]) ^ a43 ^ LODWORD(STACK[0x568]) ^ a40;
  v138 = STACK[0x53C];
  v139 = LODWORD(STACK[0x3C8]) ^ (2 * (STACK[0x53C] & LODWORD(STACK[0x3C4])));
  v140 = STACK[0x4F0];
  v141 = STACK[0x4D8];
  v142 = STACK[0x500];
  v143 = STACK[0x548];
  LODWORD(STACK[0x4FC]) = ((v139 & 0x47EDE8F0 ^ 0x412928E0 ^ (LODWORD(STACK[0x4F0]) ^ 0x47EDE8F2) & (v139 ^ 0x41393FEDu)) >> LODWORD(STACK[0x548])) + ((((v139 ^ 0xFFB83FD8) & STACK[0x4D8] | STACK[0x500] & 0xBE810035) ^ 0xBE810035) << LODWORD(STACK[0x540]));
  v144 = LODWORD(STACK[0x274]) ^ (2 * (STACK[0x274] & v138));
  v145 = v141;
  v146 = (((v144 ^ 0x4C51FAB7) & v141 | v142 & 0x4C51FAB7) ^ 0x4C51FAB7) << v133;
  v147 = STACK[0x4E0];
  v148 = (v140 & 0xA23928BB ^ STACK[0x4E0] & (v144 ^ 0xA23928BB) ^ 2) >> v143;
  LODWORD(STACK[0x3B8]) = (v146 - ((2 * v146) & 0x38F0E418) - 1669828084) ^ (v148 - ((2 * v148) & 0x926C440C) - 919199226) ^ 0x554E500A;
  v1148 = ((STACK[0x410] & 0xC201D024 ^ 0x4111E4B0 ^ (v140 ^ 0xC311F4B6) & (STACK[0x410] & 0xCA63DB64 ^ 0x6531EDB2)) >> v143) + ((v142 & 0xF7F3EF4C ^ 0xF7F3EF4C ^ (STACK[0x410] & 0xCA63DB64 ^ 0x92C202FE) & (v142 ^ 0xDFFBFBFE)) << v133);
  v149 = STACK[0x550];
  v150 = 2 * (STACK[0x398] & LODWORD(STACK[0x550]));
  v151 = (v140 ^ 0x401CA36B) & (v150 ^ LODWORD(STACK[0x398]));
  v152 = v150 ^ LODWORD(STACK[0x2A0]);
  v153 = ((v152 & 0x401CA369 ^ v151 ^ 0x40088329u) >> v143) - ((2 * ((v152 & 0x401CA369 ^ v151 ^ 0x40088329u) >> v143)) & 0x31059F5E) - 1736257617;
  v154 = STACK[0x52C];
  v155 = STACK[0x4E4];
  v156 = ((STACK[0x4E4] & 0x3C7870F5 | STACK[0x52C] & (v152 ^ 0xDE33AB48)) ^ 0x3C7870F5) << v133;
  v157 = v153 & 0x57E08720 ^ 0xB89FFFFF ^ (v153 ^ 0x677D3050) & ((v156 - ((2 * v156) & 0x7E424E1A) - 1088346355) ^ 0x173E5FD2);
  LODWORD(STACK[0x264]) = v157;
  v1146 = v157 - ((2 * v157) & 0x3226573A) + 420686749;
  v158 = LODWORD(STACK[0x3D8]) ^ (2 * (v149 & STACK[0x440]));
  v159 = STACK[0x560];
  v160 = ((v155 & 0x987237B9 | v154 & (v158 ^ 0xECD5BFA1)) ^ 0x987237B9) << STACK[0x560];
  v161 = STACK[0x538];
  v1144 = (v160 - ((2 * v160) & 0xA7D7A8A0) - 739519408) ^ (((v161 & (v158 ^ 0x74A78818)) >> v143) - ((2 * ((v161 & (v158 ^ 0x74A78818)) >> v143)) & 0x851F1CBE) - 1030779297);
  v162 = LODWORD(STACK[0x2C4]) ^ (2 * (v138 & STACK[0x2C4]));
  v163 = (((v162 ^ 0x50181B92) & v141 | v142 & 0x50181B92) ^ 0x50181B92) << v133;
  v164 = STACK[0x558];
  LODWORD(STACK[0x3A4]) = (v163 - ((2 * v163) & 0x1EBA62CC) + 257765734) & 0x40156F8D ^ 0xBFFFB176 ^ ((v163 - ((2 * v163) & 0x1EBA62CC) + 257765734) ^ 0xF0A2CE99) & ((((v162 & STACK[0x538]) >> LODWORD(STACK[0x558])) - ((2 * ((v162 & STACK[0x538]) >> LODWORD(STACK[0x558]))) & 0x6F898330) + 935641496) ^ 0x882E51EA);
  v165 = LODWORD(STACK[0x488]) ^ (2 * (v138 & STACK[0x488]));
  v166 = ((v165 & v161) >> v164) - ((2 * ((v165 & v161) >> v164)) & 0xA4203C42) - 770695647;
  v167 = (((v165 ^ 0x2724E020) & v141 | v142 & 0x2724E020) ^ 0x2724E020) << v133;
  LODWORD(STACK[0x24C]) = (v167 - ((2 * v167) & 0xCCFBF222) - 427951855) ^ v166;
  LODWORD(STACK[0x3C8]) = (((((2 * (STACK[0x3F8] & v138)) ^ v136 ^ 0x5ABC0158) & v141 | v142 & 0x7A19AD7B) ^ 0x7A19AD7B) << v133) + ((((2 * (STACK[0x3F8] & v138)) ^ v136) & 0x2F7FAC85 ^ ((2 * (STACK[0x3F8] & v138)) ^ LODWORD(STACK[0x3F8])) & (v161 ^ 0x2F7FAC85) ^ 0x2025AC01) >> v143);
  v168 = v149;
  if (v131 == -1542376076)
  {
    v169 = STACK[0x47C];
  }

  else
  {
    v169 = ~(LODWORD(STACK[0x47C]) ^ v149);
  }

  v170 = ((v140 & 0x64FE4BB ^ v147 & (LODWORD(STACK[0x47C]) ^ (2 * (v169 & v149)) ^ 0x64FE4BB) ^ 2u) >> v143) + (((v155 & 0xB82F3F7A | v154 & (LODWORD(STACK[0x47C]) ^ (2 * (v169 & v149)) ^ 0xB82F3F7A)) ^ 0xB82F3F7A) << v133);
  v171 = STACK[0x3AC];
  LODWORD(STACK[0x398]) = LODWORD(STACK[0x3AC]) ^ LODWORD(STACK[0x388]) ^ 0x6B873045 ^ v170;
  v172 = LODWORD(STACK[0x2B0]) ^ (2 * (v138 & STACK[0x2B0]));
  LODWORD(STACK[0x244]) = LODWORD(STACK[0x3A8]) ^ v171 ^ (((v140 & 0x2D9BC673 ^ v147 & (v172 ^ 0x2D9BC673) ^ 2u) >> v143) + ((((v172 ^ 0x3B6880DF) & v141 | v142 & 0x3B6880DF) ^ 0x3B6880DF) << v159));
  v173 = LODWORD(STACK[0x350]) ^ (2 * (v138 & STACK[0x350]));
  LODWORD(STACK[0x568]) = v132 ^ (((((v173 ^ 0x326069D6) & v141 | v142 & 0x326069D6) ^ 0x326069D6) << v133) + ((v173 & v161) >> v164));
  v174 = LODWORD(STACK[0x2A4]) ^ (2 * (STACK[0x2A4] & v168));
  v175 = (((v174 ^ 0x5FCAB393) & v154 | v155 & 0x5FCAB393) ^ 0x5FCAB393) << v159;
  LODWORD(STACK[0x238]) = v130 ^ (((v174 & v161) >> v143) - ((2 * ((v174 & v161) >> v143)) & 0x837F8C36) + 1103087131) ^ 0x535C2438 ^ (v175 - ((2 * v175) & 0xE414AC10) - 234203640);
  v176 = LODWORD(STACK[0x268]) ^ (2 * ((LODWORD(STACK[0x268]) ^ 0x2B6CD4A0) & v138));
  v177 = (((v176 ^ 0x340F5B75) & v154 | v155 & 0x1F638FD5) ^ 0x1F638FD5) << v133;
  v178 = (v176 & 0xD911390B ^ 0x9001000 ^ (v176 ^ 0x2B6CD4A0) & (v140 ^ 0xD9113909)) >> v164;
  LODWORD(STACK[0x3C4]) = (v178 - ((2 * v178) & 0xF458985C) + 2049723438) ^ 0x14FB0A36 ^ (v177 - ((2 * v177) & 0xDDAE8C30) + 1859601944);
  v1150 = v135 ^ 0x1E10466F;
  v179 = v135 ^ 0x1E10466F ^ (2 * ((v135 ^ 0x54129160) & v168));
  v180 = (((v179 ^ 0xCCCED769) & v145 | v142 & 0x6CC0066) ^ 0x6CC0066) << v159;
  v181 = (v179 & 0xA04FA06 ^ 0xA00D206 ^ (v179 ^ 0xCA02D70F) & (v161 ^ 0xA04FA06)) >> v164;
  LODWORD(STACK[0x234]) = (v180 - ((2 * v180) & 0x556388) - 2144685628) & 0xD3370EDF ^ 0xACEAF1E4 ^ ((v180 - ((2 * v180) & 0x556388) - 2144685628) ^ 0x7FD54E3B) & ((v181 - ((2 * v181) & 0xAF920542) + 1472791201) ^ 0x7B01F381);
  v1151 = v137 ^ 0xCFFC5275;
  v182 = v137 ^ 0xCFFC5275 ^ (2 * ((v137 ^ 0x25233194) & v138));
  v183 = (((v182 ^ 0x6ADF63E1) & v161) >> v143) - ((2 * (((v182 ^ 0x6ADF63E1) & v161) >> v143)) & 0x3C60ECEC) - 1640991114;
  v184 = (((v182 ^ 0x66CC21CC) & v145 | v142 & 0xC13422D) ^ 0xC13422D) << v133;
  LODWORD(STACK[0x3B4]) = v183 & 0xB78836D ^ 0xFEB77EF6 ^ ((v184 - ((2 * v184) & 0x3A801F2) + 30671097) ^ 0xF5537C6B) & (v183 ^ 0x61CF8989);
  v185 = LODWORD(STACK[0x294]) ^ (2 * (STACK[0x294] & v168));
  v186 = ((v185 & v161) >> v164) - ((2 * ((v185 & v161) >> v164)) & 0xE992C634) + 1959355162;
  v187 = ((v155 & 0x73C543E2 | v154 & (v185 ^ 0x73C543E2)) ^ 0x73C543E2) << v159;
  LODWORD(STACK[0x3B0]) = v186 ^ 0x72C35D97 ^ (v187 - ((2 * v187) & 0xC147D1A) + 101334669);
  v188 = LODWORD(STACK[0x358]) ^ (2 * (v168 & STACK[0x358]));
  LODWORD(STACK[0x3F8]) = ((v147 & v188) >> v143) + (((v142 & 0xAD120CB7 | v145 & (v188 ^ 0xAD120CB7)) ^ 0xAD120CB7) << v159);
  v189 = LODWORD(STACK[0x3E4]) ^ (2 * (v168 & STACK[0x46C]));
  LODWORD(STACK[0x3D8]) = ((v140 & 0xAC70BD56 ^ v147 & (v189 ^ 0x1EBFFC7D) ^ 2) >> v164) + (((v155 & 0xB0F0BB51 | v154 & (v189 ^ 0x23FFA7A)) ^ 0xB0F0BB51) << v159);
  v190 = LODWORD(STACK[0x478]) ^ (2 * (v168 & STACK[0x478]));
  LODWORD(STACK[0x3CC]) = ((v147 & v190) >> v164) + (((v142 & 0xF50653BC | v145 & (v190 ^ 0xF50653BC)) ^ 0xF50653BC) << v133);
  v191 = LODWORD(STACK[0x4EC]) ^ (2 * (v168 & STACK[0x4EC]));
  LODWORD(STACK[0x3AC]) = ((v140 & 0x7787D0C6 ^ v147 & (v191 ^ 0x7787D0C6) ^ 2u) >> v143) + (((v155 & 0x7A5B156E | v154 & (v191 ^ 0x7A5B156E)) ^ 0x7A5B156E) << v133);
  v192 = LODWORD(STACK[0x490]) ^ (2 * (v138 & STACK[0x490]));
  v193 = ((v147 & v192) >> v143) - ((2 * ((v147 & v192) >> v143)) & 0xB3E7A94) + 94321994;
  v194 = ((v155 & 0xECE627F9 | v154 & (v192 ^ 0xECE627F9)) ^ 0xECE627F9) << v133;
  LODWORD(STACK[0x240]) = v193 & 0xF7AAFE7 ^ 0xF59F7D5A ^ (v193 ^ 0xFA60C2B5) & ((v194 - ((2 * v194) & 0x5E59B656) - 1356014805) ^ 0x5FA98B33);
  v195 = LODWORD(STACK[0x260]) ^ (2 * ((LODWORD(STACK[0x3F4]) ^ 0x46E78BF7) & v168));
  LODWORD(STACK[0x3A8]) = ((((v195 ^ 0x936D95D2) & v154 | v155 & 0x71650CA2) ^ 0x71650CA2) << v133) + ((v195 & 0xC2DAA7A7 ^ 0xC2088120 ^ (v195 ^ 0xE2089970) & (v161 ^ 0xC2DAA7A7)) >> v164);
  v196 = LODWORD(STACK[0x3D0]) ^ (2 * (v138 & STACK[0x34C]));
  v197 = (((v155 & 0x46B0C7D2 | v154 & (v196 ^ 0xEEA702E8)) ^ 0x46B0C7D2) << v133) + ((v196 & 0x76E32CE8 ^ 0x20030428 ^ (v196 ^ 0xA817C53A) & (v161 ^ 0x76E32CE8)) >> v164);
  LODWORD(STACK[0x254]) = v197;
  v198 = LODWORD(STACK[0x298]) ^ (2 * ((LODWORD(STACK[0x278]) ^ 0x1248D4CC) & v168));
  v199 = (v198 & 0x148CA91A ^ 0x4088900 ^ (v198 ^ 0xE54ADD64) & (v140 ^ 0x148CA918)) >> v143;
  v200 = (((v198 ^ 0x56CE803C) & v145 | v142 & 0xB3845D58) ^ 0xB3845D58) << v159;
  LODWORD(STACK[0x23C]) = (v200 - ((2 * v200) & 0x7702A9BC) + 998331614) ^ (v199 - ((2 * v199) & 0x9C37B5A0) - 837035312);
  v1139 = v127 + 1;
  v201 = (v127 + 1) ^ (2 * ((v127 + 1) & v138));
  v202 = (((v201 ^ 0xACCCEDBC) & v154 | v155 & 0xACCCEDBC) ^ 0xACCCEDBC) << v159;
  LODWORD(STACK[0x3D0]) = (((v201 & v161) >> v164) - ((2 * ((v201 & v161) >> v164)) & 0x6EE3DF74) + 930213818) ^ 0x398DA6DB ^ (v202 - ((2 * v202) & 0x1DF892C2) + 251414881);
  v1138 = v134 + 1;
  v203 = (v134 + 1) ^ (2 * ((v134 + 1) & v168));
  LODWORD(STACK[0x3E4]) = ((((v203 ^ 0xDEF9513F) & v154 | v155 & 0xDEF9513F) ^ 0xDEF9513F) << v159) + (((v203 ^ 0xBC717818) & v147 ^ v140 & 0xBC717818) >> v164);
  v204 = LODWORD(STACK[0x290]) ^ (2 * (v138 & STACK[0x290]));
  v205 = v147;
  v206 = (v140 & 0x70816BDE ^ v147 & (v204 ^ 0x70816BDE) ^ 2u) >> v164;
  v207 = ((v155 & 0x8754626B | v154 & (v204 ^ 0x8754626B)) ^ 0x8754626B) << v159;
  LODWORD(STACK[0x3F4]) = (v207 - ((2 * v207) & 0x382ECE44) - 1676187870) ^ (v206 - ((2 * v206) & 0x756F78B6) - 1162363813) ^ 0x26A0DB79;
  v208 = LODWORD(STACK[0x258]) ^ (2 * (v168 & STACK[0x354]));
  v209 = ((v155 & 0xD492AD42 | v154 & (v208 ^ 0x3406B4C0)) ^ 0xD492AD42) << v133;
  LODWORD(STACK[0x3E8]) = (v209 - ((2 * v209) & 0xADF3E88C) + 1459221574) & 0x1C2E1C82 ^ 0xF7F9F77F ^ ((v209 - ((2 * v209) & 0xADF3E88C) + 1459221574) ^ 0xA9060BB9) & ((((v161 & (v208 ^ 0xE0941982)) >> v164) - ((2 * ((v161 & (v208 ^ 0xE0941982)) >> v164)) & 0xC5CCFE7A) + 1659273021) ^ 0x81379C40);
  v210 = LODWORD(STACK[0x408]) ^ (2 * (v138 & (LODWORD(STACK[0x26C]) ^ 0x72942625)));
  LODWORD(STACK[0x404]) = ((v210 & 0x22779C67 ^ 0x20379805 ^ (v140 ^ 0x22779C65) & (v210 ^ 0x21B79A85u)) >> v164) + (((v155 & 0x4BFBBD59 | v154 & (v210 ^ 0x6A4C27DC)) ^ 0x4BFBBD59) << v159);
  v211 = 2 * (v138 & STACK[0x344]);
  v212 = v131 & 0x40000000;
  if ((v211 & v131 & 0x40000000) != 0)
  {
    v212 = -v212;
  }

  v213 = (v212 + v211) ^ STACK[0x344] & 0xBFFFFFFF;
  v214 = ((v213 & v161) >> v143) - ((2 * ((v213 & v161) >> v143)) & 0x5E1681C) - 2098154482;
  v215 = ((v155 & 0x7948A163 | v154 & (v213 ^ 0x7948A163)) ^ 0x7948A163) << v133;
  v216 = v214 & 0xFFE222C9 ^ 0x82FDFD3E ^ ((v215 - ((2 * v215) & 0xE6C860FA) - 211537795) ^ 0xF379ED4B) & (v214 ^ 0x7D0F4BF1);
  LODWORD(STACK[0x26C]) = v216;
  v217 = LODWORD(STACK[0x414]) ^ (2 * (v138 & STACK[0x508]));
  v218 = (((v217 ^ 0xDD3B18A3) & v161) >> v164) - ((2 * (((v217 ^ 0xDD3B18A3) & v161) >> v164)) & 0x69850968) - 1262320460;
  v219 = ((v155 & 0xABA3201E | v154 & (v217 ^ 0x769838BD)) ^ 0xABA3201E) << v159;
  v220 = v218 ^ 0xE5218AEF ^ (v219 - ((2 * v219) & 0xA3C61CB6) + 1373834843);
  LODWORD(STACK[0x278]) = v220;
  v221 = LODWORD(STACK[0x434]) ^ (2 * (v168 & (LODWORD(STACK[0x2E0]) ^ 0x199604C5)));
  v222 = ((v155 & 0x27C64559 | v154 & (v221 ^ 0xD50BDDD2)) ^ 0x27C64559) << v159;
  v223 = (v140 & 0x243B20D3 ^ v147 & (v221 ^ 0xD6F6B858) ^ 2) >> v164;
  v224 = (v222 - ((2 * v222) & 0x8206D786) - 1056740413) & 0x49453B84 ^ 0xF7BBEFFB ^ ((v223 - ((2 * v223) & 0xD90AEC86) - 326797757) ^ 0x5A3FB238) & ((v222 - ((2 * v222) & 0x8206D786) - 1056740413) ^ 0x3EFC943C);
  LODWORD(STACK[0x248]) = v224;
  v225 = 2 * (STACK[0x288] & v168);
  v226 = v225 ^ LODWORD(STACK[0x28C]);
  v227 = (((v226 ^ 0x9A604611) & v145 | v142 & 0x2A657B8C) ^ 0x2A657B8C) << v159;
  v228 = (v226 & 0xE79C6419 ^ (v225 ^ LODWORD(STACK[0x288])) & (v140 ^ 0xE79C641B) ^ 0xA0042419) >> v164;
  v229 = (v227 - ((2 * v227) & 0xBCE8DCAA) + 1584688725) & 0xCFE00B9B ^ 0x7E7FFE75 ^ ((v227 - ((2 * v227) & 0xBCE8DCAA) + 1584688725) ^ 0xA18B91AA) & ((v228 - ((2 * v228) & 0x53EF8126) - 1443381101) ^ 0x99E834F7);
  LODWORD(STACK[0x25C]) = v229;
  v230 = LODWORD(STACK[0x2F8]) ^ (2 * (v168 & STACK[0x424]));
  v231 = (v140 & 0x42863993 ^ v205 & (v230 ^ 0x73CC31CD) ^ 2u) >> v164;
  v232 = ((v142 & 0x217402F0 | v145 & (v230 ^ 0x103E0AAE)) ^ 0x217402F0) << v133;
  v233 = (v231 - ((2 * v231) & 0x87848722) + 1136804753) & 0xEDE46B4A ^ 0x53DBD7B5 ^ ((v231 - ((2 * v231) & 0x87848722) + 1136804753) ^ 0xBC3DBC6E) & ((v232 - ((2 * v232) & 0xF9369856) - 56931285) ^ 0xEE80D89E);
  LODWORD(STACK[0x288]) = v233;
  v234 = LODWORD(STACK[0x270]) ^ (2 * (STACK[0x270] & v168));
  v235 = ((((v234 ^ 0x4A4340F5) & v154 | v155 & 0x4A4340F5) ^ 0x4A4340F5) << v159) + ((v234 & v161) >> v143);
  LODWORD(STACK[0x414]) = v235;
  v236 = LODWORD(STACK[0x2A8]) ^ (2 * (STACK[0x2A8] & v168));
  v237 = v205;
  v238 = ((((v236 ^ 0xE685A2F) & v145 | v142 & 0xE685A2F) ^ 0xE685A2F) << v133) + ((v205 & v236) >> v164);
  LODWORD(STACK[0x2E0]) = v238;
  v239 = (STACK[0x438] & 0x7B28B7FF ^ (2 * (v138 & STACK[0x438])) & 0x7B28B7FE ^ 0x63554CA2) & (~((2 * (v138 & STACK[0x438])) ^ LODWORD(STACK[0x438])) | 0xFFAAB7FF) | ((2 * (v138 & STACK[0x438])) ^ LODWORD(STACK[0x438])) & 0x84820000;
  v240 = ((((STACK[0x438] & 0x7B28B7FF ^ (2 * (v138 & STACK[0x438])) & 0x7B28B7FE ^ 0x63554CA2) & (~((2 * (v138 & STACK[0x438])) ^ LODWORD(STACK[0x438])) | 0xFFAAB7FF) & 0x820FDF7D | ((2 * (v138 & STACK[0x438])) ^ LODWORD(STACK[0x438])) & 0x80020000) ^ 0x2054C20 ^ (v140 ^ 0x820FDF7F) & (v239 ^ 0x63554CA2)) >> v164) + ((((v239 ^ 0xB8AAFA38) & v145 | v142 & 0xDBFFB69A) ^ 0xDBFFB69A) << v159);
  LODWORD(STACK[0x2F8]) = v240;
  v241 = LODWORD(STACK[0x418]) ^ (2 * (v168 & STACK[0x4E8]));
  v242 = (v241 & 0x54B267F6 ^ 0x50B22036 ^ (v140 ^ 0x54B267F4) & (v241 ^ 0xD0FE303F)) >> v143;
  v243 = v145;
  v244 = ((v142 & 0x2EB9DA98 | v145 & (v241 ^ 0xFE47EAA7)) ^ 0x2EB9DA98) << v159;
  v245 = (v244 - ((2 * v244) & 0x6003BF76) + 805429179) ^ (v242 - ((2 * v242) & 0x2024F01C) + 269645838) ^ 0x2013A7B5;
  LODWORD(STACK[0x258]) = v245;
  v246 = LODWORD(STACK[0x2FC]) ^ (2 * (v168 & STACK[0x42C]));
  v247 = (v246 & 0x49629DDB ^ 0x49201C09 ^ (v161 ^ 0x49629DDB) & (v246 ^ 0xDFB07C0D)) >> v143;
  v248 = ((v142 & 0xF896E17A | v145 & (v246 ^ 0x27269D77)) ^ 0xF896E17A) << v159;
  v249 = (v248 - ((2 * v248) & 0xA2C083DC) + 1365262830) ^ (v247 - ((2 * v247) & 0x18703CD4) + 205004394) ^ 0x5D585F84;
  LODWORD(STACK[0x418]) = v249;
  v250 = LODWORD(STACK[0x458]) ^ (2 * (v138 & STACK[0x458]));
  v251 = ((v237 & v250) >> v143) + ((((v250 ^ 0x12F2924E) & v243 | v142 & 0x12F2924E) ^ 0x12F2924E) << v159);
  LODWORD(STACK[0x250]) = v251;
  v1143 = LODWORD(STACK[0x24C]) ^ 0x346DE730;
  v1141 = LODWORD(STACK[0x244]) ^ 0xDADADADA;
  v252 = LODWORD(STACK[0x504]) ^ LODWORD(STACK[0x568]) ^ v249 ^ v1143 ^ LODWORD(STACK[0x3A4]) ^ LODWORD(STACK[0x3C8]) ^ v197 ^ LODWORD(STACK[0x3F8]) ^ LODWORD(STACK[0x3CC]) ^ v251 ^ v1148 ^ LODWORD(STACK[0x3D8]) ^ LODWORD(STACK[0x3AC]) ^ LODWORD(STACK[0x404]) ^ v240 ^ v1144 ^ LODWORD(STACK[0x3B0]) ^ v220 ^ LODWORD(STACK[0x3E4]) ^ v238 ^ v235 ^ LODWORD(STACK[0x398]) ^ LODWORD(STACK[0x3F4]) ^ LODWORD(STACK[0x3E8]) ^ v216 ^ v245 ^ LODWORD(STACK[0x3D0]) ^ v1141 ^ LODWORD(STACK[0x240]) ^ v224 ^ v233;
  v1142 = LODWORD(STACK[0x23C]) ^ 0xF59A8E0E;
  v253 = STACK[0x238];
  v254 = STACK[0x234];
  v255 = v252 ^ v1142 ^ v1146 ^ LODWORD(STACK[0x238]) ^ v229 ^ LODWORD(STACK[0x3C4]) ^ LODWORD(STACK[0x3A8]) ^ LODWORD(STACK[0x3B4]) ^ 0xAB0F4427 ^ LODWORD(STACK[0x234]);
  v256 = (2 * ((v168 & STACK[0x494]) - ((2 * (v168 & STACK[0x494])) & 0x45E86D8C)) - 974623348) ^ LODWORD(STACK[0x494]);
  v257 = ((v155 & 0x827E9F5C | v154 & (v256 ^ 0x4796F2D0)) ^ 0x827E9F5C) << v159;
  v258 = ((v161 & (v256 ^ 0xC5E86D8C)) >> v164) - ((2 * ((v161 & (v256 ^ 0xC5E86D8C)) >> v164)) & 0xDA1F8E96) + 1829750603;
  v259 = (2 * ((v138 & STACK[0x4F4]) - ((2 * (v138 & STACK[0x4F4])) & 0x25B726D8)) + 632760024) ^ LODWORD(STACK[0x4F4]);
  v260 = (((v259 ^ 0x94943946) & v243 | v142 & 0xB1231F9E) ^ 0xB1231F9E) << v159;
  v261 = (v259 & 0xB0B2D7C0 ^ 0x20B206C0 ^ (v140 ^ 0xB0B2D7C2) & (v259 ^ 0x25B726D8)) >> v143;
  v262 = v261 - ((2 * v261) & 0x3B39D70) - 2116432200;
  v263 = (2 * ((STACK[0x2D8] & v168) - ((2 * (STACK[0x2D8] & v168)) & 0x5DD542EA)) + 1574257386) ^ LODWORD(STACK[0x2D8]);
  v264 = (v263 & 0x4F223183 ^ 0x4D000082 ^ (v263 ^ 0x5DD542EA) & (v161 ^ 0x4F223183)) >> v164;
  v265 = (((v263 ^ 0xBABF9007) & v154 | v155 & 0xE76AD2ED) ^ 0xE76AD2ED) << v133;
  v266 = v265 - ((2 * v265) & 0xE18621FE) - 255651585;
  v267 = LODWORD(STACK[0x280]) ^ (2 * ((a44 ^ 0x61548B20) & v168));
  v268 = ((((v267 ^ 0x7E2A79DB) & v243 | v142 & 0xF80CBE93) ^ 0xF80CBE93) << v159) + (((v267 ^ 0x8626C748) & v161) >> v164);
  v1134 = LODWORD(STACK[0x570]) ^ 0xFB32D152;
  v269 = (2 * ((v168 & STACK[0x4F8]) - ((2 * (v168 & STACK[0x4F8])) & 0x5EEF8AA6)) + 1592756902) ^ LODWORD(STACK[0x4F8]);
  v270 = (v269 & 0x503287FB ^ 0x502282A2 ^ (v161 ^ 0x503287FB) & (v269 ^ 0x5EEF8AA6)) >> v164;
  v271 = ((v155 & 0xCCB448BB | v154 & (v269 ^ 0x925BC21D)) ^ 0xCCB448BB) << v159;
  v272 = v258 ^ (v270 - ((2 * v270) & 0x3B4FA4C4) - 1649946014) & 0xDE7486B3 ^ (v260 - ((2 * v260) & 0x223002BE) + 286785887) ^ (v257 - ((2 * v257) & 0x693ED56) - 2092304725) ^ ((v271 - ((2 * v271) & 0xDAD986F8) - 311639172) ^ 0xCCE7BA30) & ((v270 - ((2 * v270) & 0x3B4FA4C4) - 1649946014) ^ 0x62582D9D);
  v273 = ((((v1134 ^ (2 * ((LODWORD(STACK[0x570]) ^ 0x47930C0F) & v138)) ^ 0xBAC02EEA) & v154 | v155 & 0x661F3B7) ^ 0x661F3B7) << v133) + (((v1134 ^ (2 * ((LODWORD(STACK[0x570]) ^ 0x47930C0F) & v138))) & 0x40893254 ^ 0x811054 ^ (v1134 ^ (2 * ((LODWORD(STACK[0x570]) ^ 0x47930C0F) & v138)) ^ 0xBCA1DD5D) & (v161 ^ 0x40893254)) >> v164);
  v1136 = v273;
  v1137 = v268;
  LODWORD(STACK[0x2FC]) = v272 ^ v262 ^ (v264 - ((2 * v264) & 0x3D7C17C) + 32235710) ^ v266 ^ v273 ^ v268 ^ 0x73E862B3 ^ (LODWORD(STACK[0x3B8]) + v255 + ((2 * ((v255 & STACK[0x3B8]) - ((2 * (v255 & STACK[0x3B8])) & 0x3BC95334)) - 1144433868) ^ 0x4436ACCB) + 1);
  v274 = v1144 ^ 0x11645A0F;
  v1135 = v1144 ^ 0x11645A0F;
  v275 = LODWORD(STACK[0x2F4]) ^ (2 * (v168 & STACK[0x2F4]));
  v276 = ((v161 & v275) >> v164) - ((2 * ((v161 & v275) >> v164)) & 0x4F818B44) + 666944930;
  v277 = ((v142 & 0xEC251689 | v243 & (v275 ^ 0xEC251689)) ^ 0xEC251689) << v159;
  v1152 = v276 ^ (v277 - ((2 * v277) & 0x6BE50C36) - 1242397157);
  v278 = LODWORD(STACK[0x4D0]) ^ (2 * (v138 & STACK[0x4C4]));
  v279 = ((v155 & 0x10EEFB55 | v154 & (v278 ^ 0x4440409)) ^ 0x10EEFB55) << v133;
  v280 = (v278 & 0xD3F3405E ^ 0x10A2405C ^ (v140 ^ 0xD3F3405C) & (v278 ^ 0x14AAFF5C)) >> v143;
  LODWORD(STACK[0x2F4]) = (v279 - ((2 * v279) & 0x538A342E) + 700783127) & 0x70E35269 ^ 0xEA09A4B ^ ((v280 - ((2 * v280) & 0xD0BBC05E) - 396500945) ^ 0x67414DB9) & ((v279 - ((2 * v279) & 0x538A342E) + 700783127) ^ 0xD63AE5E8);
  v281 = LODWORD(STACK[0x41C]) ^ (2 * (v168 & STACK[0x41C]));
  v282 = ((v142 & 0xAFD1611 | v243 & (v281 ^ 0xAFD1611)) ^ 0xAFD1611) << v159;
  v1147 = v282 - ((2 * v282) & 0xFF96E1A6) + 2144039123;
  v283 = STACK[0x4E0];
  v1145 = ((v283 & v281) >> v143) - ((2 * ((v283 & v281) >> v143)) & 0xF60FD446) + 2064116259;
  v284 = LODWORD(STACK[0x420]) ^ (2 * (v168 & STACK[0x420]));
  v1140 = ((v161 & v284) >> v143) + (((v142 & 0xA633ABF3 | v243 & (v284 ^ 0xA633ABF3)) ^ 0xA633ABF3) << v159);
  v285 = LODWORD(STACK[0x300]) ^ (2 * (v138 & STACK[0x300]));
  v286 = ((v285 & v161) >> v164) - ((2 * ((v285 & v161) >> v164)) & 0xD1841CF8) + 1757548156;
  v287 = (((v285 ^ 0x7C0F1F8D) & v243 | v142 & 0x7C0F1F8D) ^ 0x7C0F1F8D) << v133;
  v1149 = v286 & 0xA06AA735 ^ 0x1D871E02 ^ ((v287 - ((2 * v287) & 0x86177A18) + 1124842764) ^ 0x1C9EE5C6) & (v286 ^ 0x973DF183);
  v288 = LODWORD(STACK[0x428]) ^ (2 * (v168 & STACK[0x428]));
  LODWORD(STACK[0x300]) = ((v140 & 0x968CBCB7 ^ STACK[0x4E0] & (v288 ^ 0x968CBCB7) ^ 2) >> v164) + (((v142 & 0xAB517308 | v243 & (v288 ^ 0xAB517308)) ^ 0xAB517308) << v133);
  v289 = LODWORD(STACK[0x430]) ^ (2 * (v138 & STACK[0x430]));
  v290 = ((v289 & v161) >> v143) - 1047811287 - ((2 * ((v289 & v161) >> v143)) & 0x83175652);
  v291 = ((v155 & 0xC003EF3F | v154 & (v289 ^ 0xC003EF3F)) ^ 0xC003EF3F) << v159;
  LODWORD(STACK[0x570]) = (v291 - ((2 * v291) & 0xA33C141C) - 778171890) ^ v290;
  v292 = 2 * (v138 & STACK[0x314]);
  v293 = STACK[0x32C] & 0x2000;
  if ((v292 & v293) != 0)
  {
    v293 = -v293;
  }

  LODWORD(STACK[0x32C]) = ((v140 & 0x3EB9366F ^ v283 & ((v293 + v292) ^ STACK[0x314] & 0xFFFFDFFF ^ 0x3EB9366F) ^ 2) >> v164) + (((((v293 + v292) ^ STACK[0x314] & 0xFFFFDFFF ^ 0xC15337FE) & v243 | v142 & 0xC15337FE) ^ 0xC15337FE) << v159);
  v294 = LODWORD(STACK[0x330]) ^ (2 * (v168 & STACK[0x308]));
  LODWORD(STACK[0x314]) = (((v155 & 0x23A23745 | v154 & (v294 ^ 0x27EC2DD6)) ^ 0x23A23745) << v133) + ((v294 & 0xD256FC2E ^ 0x461802 ^ (v161 ^ 0xD256FC2E) & (v294 ^ 0x44E1A93)) >> v143);
  v295 = LODWORD(STACK[0x254]) ^ LODWORD(STACK[0x3CC]) ^ LODWORD(STACK[0x3D8]) ^ LODWORD(STACK[0x3AC]) ^ LODWORD(STACK[0x2F8]) ^ LODWORD(STACK[0x278]) ^ LODWORD(STACK[0x414]) ^ LODWORD(STACK[0x244]) ^ v253 ^ LODWORD(STACK[0x3A8]) ^ (LODWORD(STACK[0x3B4]) - ((2 * LODWORD(STACK[0x3B4])) & 0x6FD5CAB2) - 1209342631) ^ 0x6D303F83 ^ ((-LODWORD(STACK[0x3B0]) ^ (LODWORD(STACK[0x3B0]) - ((2 * LODWORD(STACK[0x3B0])) & 0xE749714A) + 1940175013) ^ 0x73A4B8A5 ^ (v254 - (v254 ^ LODWORD(STACK[0x3B0])))) + v254);
  v296 = LODWORD(STACK[0x3A4]) ^ LODWORD(STACK[0x568]) ^ LODWORD(STACK[0x404]) ^ LODWORD(STACK[0x2E0]) ^ LODWORD(STACK[0x258]) ^ LODWORD(STACK[0x398]) ^ LODWORD(STACK[0x3B8]) ^ LODWORD(STACK[0x248]) ^ LODWORD(STACK[0x23C]) ^ LODWORD(STACK[0x25C]) ^ (LODWORD(STACK[0x3C8]) + v295 + ((2 * ((v295 & STACK[0x3C8]) - ((2 * (v295 & STACK[0x3C8])) & 0x7CFDF7F8)) + 2097018872) ^ 0x83020807) + 1);
  v297 = STACK[0x240];
  LODWORD(STACK[0x330]) = LODWORD(STACK[0x24C]) ^ LODWORD(STACK[0x418]) ^ LODWORD(STACK[0x250]) ^ LODWORD(STACK[0x3F8]) ^ LODWORD(STACK[0x3E4]) ^ v274 ^ LODWORD(STACK[0x3E8]) ^ LODWORD(STACK[0x3F4]) ^ LODWORD(STACK[0x3D0]) ^ LODWORD(STACK[0x26C]) ^ LODWORD(STACK[0x240]) ^ LODWORD(STACK[0x264]) ^ LODWORD(STACK[0x288]) ^ v273 ^ v268 ^ LODWORD(STACK[0x3C4]) ^ 0x238DF746 ^ ((v296 & 0xAC2AF587 ^ 0x4D271AE9) & (v296 & 0x53D50A78 ^ 0xAC3FF5E7) | v296 & 0x12D00010);
  v298 = LODWORD(STACK[0x304]) ^ (2 * (v168 & (LODWORD(STACK[0x338]) ^ 0x2C888918)));
  v299 = ((v142 & 0x79C70F11 | v243 & (v298 ^ 0x66BE5504)) ^ 0x79C70F11) << v159;
  v300 = (v298 & 0x46543683 ^ 0x6501201 ^ (v140 ^ 0x46543681) & (v298 ^ 0x1F795A15u)) >> v143;
  LODWORD(STACK[0x430]) = (v299 - ((2 * v299) & 0xD2168BF4) + 1762346490) & 0x8261D226 ^ 0x7D9F6DFB ^ ((v300 - ((2 * v300) & 0x4025BFD6) - 1609375765) ^ 0xDD8CF232) & ((v299 - ((2 * v299) & 0xD2168BF4) + 1762346490) ^ 0x96F4BA05);
  v301 = LODWORD(STACK[0x43C]) ^ (2 * (v138 & STACK[0x43C]));
  v302 = ((v155 & 0x58766E2F | v154 & (v301 ^ 0x58766E2F)) ^ 0x58766E2F) << v133;
  v303 = (v283 & (v301 ^ 0xF8BE21D0) ^ v140 & 0xF8BE21D0) >> v143;
  LODWORD(STACK[0x43C]) = (v302 - ((2 * v302) & 0x85293350) - 1030448728) ^ (v303 - ((2 * v303) & 0x4CD8B1C4) - 1502848798) ^ 0x64F8C14A;
  v304 = LODWORD(STACK[0x444]) ^ (2 * (v168 & STACK[0x444]));
  v305 = ((v155 & 0x661D5AE9 | v154 & (v304 ^ 0x661D5AE9)) ^ 0x661D5AE9) << v159;
  v306 = v305 + 1508155292 + (~(2 * v305) | 0x4C36C0C9);
  LODWORD(STACK[0x444]) = v306 & 0x7DAC1175 ^ 0xDBF7FF9B ^ (v306 ^ 0xA61B6064) & ((((v161 & v304) >> v164) - ((2 * ((v161 & v304) >> v164)) & 0xDE40AAE8) + 1864390004) ^ 0xED73BBFE);
  v307 = LODWORD(STACK[0x454]) ^ (2 * (v138 & STACK[0x454]));
  v308 = (((v307 ^ 0x1E2A431B) & v243 | v142 & 0x1E2A431B) ^ 0x1E2A431B) << v159;
  LODWORD(STACK[0x454]) = (((v307 & v161) >> v164) - ((2 * ((v307 & v161) >> v164)) & 0xD2A04B8C) - 380623418) ^ 0x617E0547 ^ (v308 - ((2 * v308) & 0x105C4102) - 2010242943);
  v309 = LODWORD(STACK[0x448]) ^ (2 * (v168 & STACK[0x448]));
  v310 = ((v155 & 0x944A5988 | v154 & (v309 ^ 0x944A5988)) ^ 0x944A5988) << v133;
  LODWORD(STACK[0x41C]) = (((v161 & v309) >> v164) - ((2 * ((v161 & v309) >> v164)) & 0xEDE91986) + 1995738307) ^ 0x489639DB ^ (v310 - ((2 * v310) & 0x7CC56A30) + 1046656280);
  v311 = LODWORD(STACK[0x33C]) ^ (2 * (v138 & STACK[0x318]));
  LODWORD(STACK[0x448]) = ((v283 & (v311 ^ 0xE9523326) ^ v140 & 0x22868C78) >> v164) + (((v155 & 0x4B6E3661 | v154 & (v311 ^ 0x80BA893F)) ^ 0x4B6E3661) << v133);
  v312 = LODWORD(STACK[0x320]) ^ (2 * (v138 & STACK[0x320]));
  v313 = v164;
  v314 = ((v312 & v161) >> v164) - ((2 * ((v312 & v161) >> v164)) & 0x18AE57CC) + 207039462;
  v315 = v155;
  v316 = ((v155 & 0x5AD38C14 | v154 & (v312 ^ 0x5AD38C14)) ^ 0x5AD38C14) << v133;
  LODWORD(STACK[0x428]) = v314 ^ 0x623CFF10 ^ (v316 - ((2 * v316) & 0xDCD7A9EC) + 1852560630);
  v317 = LODWORD(STACK[0x324]) ^ (2 * (v168 & STACK[0x324]));
  v318 = ((v161 & v317) >> v143) - ((2 * ((v161 & v317) >> v143)) & 0x579E70C8) - 1412482972;
  v319 = v154;
  v320 = v315;
  v321 = ((v315 & 0xE0ED514F | v154 & (v317 ^ 0xE0ED514F)) ^ 0xE0ED514F) << v133;
  LODWORD(STACK[0x420]) = v318 ^ 0x415E2705 ^ (v321 - ((2 * v321) & 0xD5223EC2) - 359587999);
  v322 = LODWORD(STACK[0x45C]) ^ (2 * (v138 & STACK[0x45C]));
  v323 = ((v283 & v322) >> v313) - ((2 * ((v283 & v322) >> v313)) & 0xE3EA5428) - 235591148;
  v324 = (((v322 ^ 0x13670C66) & v243 | v142 & 0x13670C66) ^ 0x13670C66) << v133;
  LODWORD(STACK[0x45C]) = v323 & 0x330AEE21 ^ 0xFDF53BDE ^ (v323 ^ 0xE0AD5EB) & ((v324 - ((2 * v324) & 0xEB930C90) - 171342264) ^ 0x393C9796);
  v325 = LODWORD(STACK[0x460]) ^ (2 * (v138 & STACK[0x460]));
  v326 = ((v315 & 0x6CF256B4 | v154 & (v325 ^ 0x6CF256B4)) ^ 0x6CF256B4) << v159;
  LODWORD(STACK[0x460]) = (((v325 & v161) >> v143) - ((2 * ((v325 & v161) >> v143)) & 0x506844EA) - 1472978315) ^ 0x7AD71E1B ^ (v326 - ((2 * v326) & 0xA5C678DC) - 756859794);
  v327 = LODWORD(STACK[0x464]) ^ (2 * (v138 & STACK[0x464]));
  v328 = ((v315 & 0x9DED91E7 | v154 & (v327 ^ 0x9DED91E7)) ^ 0x9DED91E7) << v159;
  LODWORD(STACK[0x464]) = (((v327 & v161) >> v143) - ((2 * ((v327 & v161) >> v143)) & 0x937B226C) + 1237160246) ^ 0x2675E41B ^ (v328 - ((2 * v328) & 0xDF90EA5A) + 1875408173);
  v329 = LODWORD(STACK[0x334]) ^ (2 * (v138 & (LODWORD(STACK[0x340]) ^ 0x5CF84F93)));
  LODWORD(STACK[0x340]) = ((v140 & 0x73EF993B ^ v283 & (v329 ^ 0x588517C5) ^ 2) >> v313) + ((((v329 ^ 0x902F29B5) & v243 | v142 & 0xBB45A74B) ^ 0xBB45A74B) << v133);
  v330 = LODWORD(STACK[0x468]) ^ (2 * (v168 & STACK[0x468]));
  v331 = ((v315 & 0x7042A932 | v154 & (v330 ^ 0x7042A932)) ^ 0x7042A932) << v159;
  LODWORD(STACK[0x468]) = (v331 - ((2 * v331) & 0xDBEF017A) - 302546755) ^ (((v283 & v330) >> v143) - ((2 * ((v283 & v330) >> v143)) & 0x27F7A9EA) - 1812212491) ^ 0x7E0C5448;
  v332 = LODWORD(STACK[0x470]) ^ (2 * (v138 & STACK[0x470]));
  v333 = ((v332 & v161) >> v143) - ((2 * ((v332 & v161) >> v143)) & 0xF10D4586) + 2022089411;
  v334 = ((v315 & 0xD7EAC23F | v154 & (v332 ^ 0xD7EAC23F)) ^ 0xD7EAC23F) << v133;
  LODWORD(STACK[0x470]) = v333 & 0xC01B62A3 ^ 0x7FE6BFDF ^ ((v334 - ((2 * v334) & 0x8405EDE4) - 1039993102) ^ 0xFDE66BAE) & (v333 ^ 0x87795D3C);
  v335 = LODWORD(STACK[0x35C]) ^ (2 * (v138 & STACK[0x328]));
  v336 = ((v335 & 0x8E18A750 ^ 0x8088300 ^ (v335 ^ 0x969DB24) & (v161 ^ 0x8E18A750)) >> v143) + ((((v335 ^ 0xDD65226E) & v243 | v142 & 0xD40CF94A) ^ 0xD40CF94A) << v133);
  v337 = LODWORD(STACK[0x364]) ^ (2 * (v168 & STACK[0x364]));
  v338 = ((v142 & 0x25DE1A8C | v243 & (v337 ^ 0x25DE1A8C)) ^ 0x25DE1A8C) << v133;
  v339 = (v283 & (v337 ^ 0x2C6D2075) ^ v140 & 0x2C6D2075) >> v143;
  v340 = (v338 - ((2 * v338) & 0x3F918CD8) - 1614231956) ^ (v339 - ((2 * v339) & 0x18DC8328) - 1938931308) ^ 0x13A687F8;
  v341 = LODWORD(STACK[0x360]) ^ (2 * (v168 & STACK[0x360]));
  v342 = ((v283 & (v341 ^ 0xA65F6AE5) ^ v140 & 0xA65F6AE5) >> v143) + (((v142 & 0xA1B5A37C | v243 & (v341 ^ 0xA1B5A37C)) ^ 0xA1B5A37C) << v159);
  v343 = LODWORD(STACK[0x424]) ^ LODWORD(STACK[0x350]) ^ LODWORD(STACK[0x4EC]) ^ LODWORD(STACK[0x344]) ^ LODWORD(STACK[0x42C]) ^ LODWORD(STACK[0x488]) ^ LODWORD(STACK[0x2B0]) ^ LODWORD(STACK[0x294]) ^ LODWORD(STACK[0x40C]) ^ LODWORD(STACK[0x270]) ^ LODWORD(STACK[0x298]) ^ LODWORD(STACK[0x28C]) ^ LODWORD(STACK[0x280]) ^ LODWORD(STACK[0x260]) ^ v1150;
  v344 = v343 ^ (2 * ((v343 ^ 0x228A2F5C) & v138));
  v345 = (((v344 ^ 0xA8DBF1DA) & v319 | v315 & 0xA51DE86) ^ 0xA51DE86) << v159;
  v346 = (v344 & 0xB1C7FF8F ^ 0xA0822F0C ^ (v344 ^ 0xA28A2F5C) & (v140 ^ 0xB1C7FF8D)) >> v313;
  LODWORD(STACK[0x364]) = (v345 - ((2 * v345) & 0xBFB1D9D2) + 1608051945) ^ (v346 - ((2 * v346) & 0xB18A9E0A) + 1489325829);
  v347 = LODWORD(STACK[0x46C]) ^ LODWORD(STACK[0x478]) ^ LODWORD(STACK[0x47C]) ^ LODWORD(STACK[0x34C]) ^ LODWORD(STACK[0x440]) ^ LODWORD(STACK[0x438]) ^ LODWORD(STACK[0x458]) ^ LODWORD(STACK[0x4E8]) ^ LODWORD(STACK[0x358]) ^ LODWORD(STACK[0x354]) ^ LODWORD(STACK[0x490]) ^ LODWORD(STACK[0x434]) ^ LODWORD(STACK[0x508]) ^ LODWORD(STACK[0x2A0]) ^ LODWORD(STACK[0x290]) ^ LODWORD(STACK[0x2C4]) ^ LODWORD(STACK[0x408]) ^ LODWORD(STACK[0x274]) ^ v1139 ^ v1138 ^ LODWORD(STACK[0x2A8]) ^ LODWORD(STACK[0x2A4]) ^ LODWORD(STACK[0x268]) ^ v1134 ^ v1151;
  v348 = v347 ^ (2 * ((v347 ^ 0x356F591E) & v168));
  v349 = (((v348 ^ 0x474661E) & v243 | v142 & 0xB11B3F00) ^ 0xB11B3F00) << v133;
  v350 = (v348 & 0xDA1E0E94 ^ 0x900E0814 ^ (v348 ^ 0xB56F591E) & (v161 ^ 0xDA1E0E94)) >> v143;
  LODWORD(STACK[0x35C]) = (v349 - ((2 * v349) & 0x6BF1FE6) - 2090889229) & 0xE49FB21F ^ 0xDB3B28D1 ^ ((v349 - ((2 * v349) & 0x6BF1FE6) - 2090889229) ^ 0x7CA0700C) & ((v350 - ((2 * v350) & 0xFBC37BA2) - 35537455) ^ 0xE681F031);
  v351 = *(STACK[0x228] + (LOBYTE(STACK[0x583]) ^ 0x31)) ^ LOBYTE(STACK[0x583]);
  v352 = *(&off_1006B4E30 + LODWORD(STACK[0x518]) - 1090);
  v353 = ((v351 ^ 0x60B3FF48) & (((*(STACK[0x228] + (LOBYTE(STACK[0x582]) ^ 0xE2)) ^ LOBYTE(STACK[0x582])) << 8) ^ 0x60B33569) | v351 & 0x96) ^ 0x60B33A6D | (((*(STACK[0x220] + (LOBYTE(STACK[0x581]) ^ 0x6ALL)) - 46) ^ 0xDD) << 16);
  v354 = *(STACK[0x218] + (LOBYTE(STACK[0x58D]) ^ 0xDALL));
  v355 = *(STACK[0x218] + (LOBYTE(STACK[0x58C]) ^ 0x87));
  v356 = (((*(STACK[0x220] + (LOBYTE(STACK[0x58E]) ^ 0x84)) - 46) ^ 0x61) << 8) | ((v354 ^ 0xC6 ^ (((8 * v354) & 0x70 ^ 0x4F) - 6)) << 16) | ((v355 ^ 0x12 ^ ((8 * v355) | 0x88888888)) << 24);
  v357 = (*(v352 + (LOBYTE(STACK[0x58B]) ^ 0x3DLL)) + 85) ^ 0xC0 | ((*(STACK[0x228] + (LOBYTE(STACK[0x588]) ^ 0xDFLL)) ^ (LOBYTE(STACK[0x588]) - ((2 * LOBYTE(STACK[0x588])) & 0x40) + 32) ^ 0x57) << 24) | (((*(STACK[0x220] + (LOBYTE(STACK[0x589]) ^ 0x8ELL)) - 46) ^ 0x2C) << 16) | (((*(STACK[0x220] + (LOBYTE(STACK[0x58A]) ^ 0xFBLL)) - 46) ^ 0x6C) << 8);
  v358 = (*(STACK[0x220] + (LOBYTE(STACK[0x587]) ^ 0x52)) - 46) ^ 0xFC | ((*(STACK[0x228] + (LOBYTE(STACK[0x585]) ^ 0x47)) ^ (LOBYTE(STACK[0x585]) - ((2 * LOBYTE(STACK[0x585])) & 0x40) + 32) ^ 0x59) << 16) | (((*(STACK[0x220] + (LOBYTE(STACK[0x586]) ^ 0x1CLL)) - 46) ^ 0xF7) << 8) | ((*(STACK[0x228] + (LOBYTE(STACK[0x584]) ^ 0xE5)) ^ (LOBYTE(STACK[0x584]) + (~(2 * LOBYTE(STACK[0x584])) | 0xFFFFFFBF) + 33) ^ 0x13) << 24);
  v359 = v356 & 0xFFFFFF00 | (*(v352 + (LOBYTE(STACK[0x58F]) ^ 0xF5)) + 85) ^ 0x35;
  LODWORD(v352) = v353 + ((*(STACK[0x228] + (LOBYTE(STACK[0x580]) ^ 0xB0)) ^ (LOBYTE(STACK[0x580]) - ((2 * LOBYTE(STACK[0x580])) & 0x40) + 32) ^ 0x41) << 24);
  v360 = (((v352 ^ (2 * (v352 & v168))) & v243) << v133) + (((v352 ^ (2 * (v352 & v168))) & v161) >> v143);
  LODWORD(v352) = (((v358 ^ (2 * (v358 & v138))) & v283) >> v313) + (((v358 ^ (2 * (v358 & v138))) & v319) << v159);
  v361 = (((v359 ^ (2 * (v359 & v138))) & v161) >> v313) + (((v359 ^ (2 * (v359 & v138))) & v319) << v133);
  v362 = ((STACK[0x410] & 0x462760C0 ^ 0x707A2C4 ^ (v320 ^ 0x38181D3B) & (STACK[0x410] & 0x7E2F75FA ^ 0x3F17BAFD)) << v133) ^ ((STACK[0x410] & 0x40040508 ^ 0x140009 ^ (STACK[0x410] & 0x7E2F75FA ^ 0x3F17BAFD) & (v161 ^ 0x40140509)) >> v143) ^ v360;
  v363 = ((STACK[0x410] & 0x1418AB42 ^ 0xA0929A8 ^ (v320 ^ 0xE0E65411) & (STACK[0x410] & 0x54DAFB52 ^ 0xAA6D7DA9)) << v159) + ((STACK[0x410] & 0x109ADA00 ^ 0x20085C01 ^ (STACK[0x410] & 0x54DAFB52 ^ 0xAA6D7DA9) & (v161 ^ 0x309ADE01)) >> v143);
  v364 = v352 ^ (((STACK[0x2DC] & 0x9078622 ^ 0x89838203 ^ (v140 ^ 0x89878621) & (STACK[0x2DC] & 0x5F079626 ^ 0xAF83CB13)) >> v313) | ((STACK[0x2DC] & 0x58020420 ^ 0x8820800 ^ (v142 ^ 0xA705D317) & (STACK[0x2DC] & 0x5F079626 ^ 0xAF83CB13)) << v159));
  v365 = (((v357 ^ (2 * (v357 & v168))) & v243) << v159) ^ v363 ^ (((v357 ^ (2 * (v357 & v168))) & v283) >> v143);
  v366 = STACK[0x254];
  v367 = STACK[0x250];
  v368 = v361 ^ (((STACK[0x2DC] & 0xE1052100 ^ 0xE4210A80 ^ (v140 ^ 0xE5252B80) & (STACK[0x2DC] & 0xF947B500 ^ 0xFCA3DA80)) >> v313) | ((STACK[0x2DC] & 0x11428500 ^ 0x1022C800 ^ (v142 ^ 0xEC853280) & (STACK[0x2DC] & 0xF947B500 ^ 0xFCA3DA80)) << v133));
  v369 = -2110096063 * (LODWORD(STACK[0x250]) - LODWORD(STACK[0x254]) + v368);
  v370 = v369 ^ HIWORD(v369);
  v371 = ((v297 ^ -v297 ^ (v370 - (v370 ^ v297))) + v370) ^ v370;
  v372 = 2024860145 * (v370 - v364 - (v370 >> 8)) + ((2024860145 * (v370 - v364 - (v370 >> 8))) >> 16);
  v373 = -317211269 * (807045483 * (v372 ^ v362 ^ (v372 >> 8)) - ((807045483 * (v372 ^ v362 ^ (v372 >> 8))) >> 16) - v365 + ((807045483 * (v372 ^ v362 ^ (v372 >> 8)) - ((807045483 * (v372 ^ v362 ^ (v372 >> 8))) >> 16)) >> 8));
  v374 = STACK[0x3CC] & 8;
  if ((v373 & v374) != 0)
  {
    v374 = -v374;
  }

  v375 = v373 ^ STACK[0x3CC] & 0xFFFFFFF7 ^ (v374 + v373);
  v376 = LODWORD(STACK[0x41C]) - v342;
  v377 = v368 + v376;
  v378 = v368;
  LODWORD(STACK[0x324]) = v368;
  LODWORD(STACK[0x320]) = v364;
  v379 = 2024860145 * (((-2110096063 * v377) ^ ((-2110096063 * v377) >> 16)) - v364 - (((-2110096063 * v377) ^ ((-2110096063 * v377) >> 16)) >> 8));
  LODWORD(STACK[0x318]) = v362;
  v380 = 807045483 * ((v379 + HIWORD(v379)) ^ v362 ^ ((v379 + HIWORD(v379)) >> 8));
  v381 = ((v371 ^ -v371 ^ (v380 - (v380 ^ v371))) + v380) ^ v380;
  v382 = v365;
  LODWORD(STACK[0x360]) = v365;
  v383 = v380 - HIWORD(v380) - v365 + ((v380 - HIWORD(v380)) >> 8);
  v384 = (v376 ^ v342) + 2 * (v376 & v342);
  v385 = v377 & 1;
  if ((v385 & STACK[0x568]) != 0)
  {
    v386 = -v385;
  }

  else
  {
    v386 = v377 & 1;
  }

  v387 = (v386 + LODWORD(STACK[0x568])) ^ v385;
  v388 = (-2110096063 * (v384 - v342 + v378)) ^ ((-2110096063 * (v384 - v342 + v378)) >> 16);
  v389 = v388 - (v388 >> 8);
  v390 = v389 ^ LODWORD(STACK[0x3B4]) ^ ((v389 | 0x626D155) - ((v389 | 0x626D155) ^ v389));
  v391 = 807045483 * ((2024860145 * (v389 - v364) + ((2024860145 * (v389 - v364)) >> 16)) ^ v362 ^ ((2024860145 * (v389 - v364) + ((2024860145 * (v389 - v364)) >> 16)) >> 8));
  v392 = -317211269 * (v391 - HIWORD(v391) - v382 + ((v391 - HIWORD(v391)) >> 8));
  v393 = (-317211269 * v383) ^ ((-317211269 * v383) >> 16);
  v394 = STACK[0x530];
  v395 = STACK[0x530] + (v393 >> 8);
  v396 = v393 - v395;
  LODWORD(STACK[0x568]) = v393 + LODWORD(STACK[0x4A0]) - v395;
  LODWORD(STACK[0x3CC]) = LODWORD(STACK[0x370]) - v394 + (v392 ^ HIWORD(v392)) - ((v392 ^ HIWORD(v392)) >> 8);
  v397 = STACK[0x398];
  v398 = STACK[0x238];
  if (v396)
  {
    v399 = STACK[0x398];
  }

  else
  {
    v399 = STACK[0x238];
  }

  if (v396)
  {
    v397 = v1141;
  }

  LODWORD(STACK[0x4EC]) = v397;
  if (v396)
  {
    v400 = v387;
  }

  else
  {
    v400 = v1141;
  }

  if (v396)
  {
    v401 = v398;
  }

  else
  {
    v401 = v387;
  }

  v402 = STACK[0x3B0];
  if (v396)
  {
    v403 = STACK[0x3B0];
  }

  else
  {
    v403 = v390;
  }

  LODWORD(STACK[0x4A0]) = v403;
  v404 = STACK[0x234];
  if (v396)
  {
    v405 = v390;
  }

  else
  {
    v405 = STACK[0x234];
  }

  LODWORD(STACK[0x4E8]) = v405;
  if (v396)
  {
    v406 = STACK[0x3C4];
  }

  else
  {
    v404 = STACK[0x3C4];
    v406 = v402;
  }

  if (v396)
  {
    v407 = STACK[0x3D8];
  }

  else
  {
    v407 = STACK[0x3F8];
  }

  v408 = STACK[0x3C8];
  if (v396)
  {
    v409 = STACK[0x3F8];
  }

  else
  {
    v409 = STACK[0x3C8];
  }

  if (v396)
  {
    v410 = v375;
  }

  else
  {
    v408 = v375;
    v410 = STACK[0x3D8];
  }

  v411 = STACK[0x3AC];
  if (v396)
  {
    v412 = STACK[0x3AC];
  }

  else
  {
    v412 = v1143;
  }

  LODWORD(STACK[0x488]) = v412;
  if (v396)
  {
    v413 = v381;
  }

  else
  {
    v413 = v411;
  }

  if (v396)
  {
    v414 = v1143;
  }

  else
  {
    v414 = STACK[0x3A8];
  }

  if (v396)
  {
    v381 = STACK[0x3A8];
    v415 = STACK[0x3E4];
  }

  else
  {
    v415 = STACK[0x3D0];
  }

  if (v396)
  {
    v416 = STACK[0x3D0];
  }

  else
  {
    v416 = v1142;
  }

  if (v396)
  {
    v417 = v1142;
  }

  else
  {
    v417 = v366;
  }

  if ((v396 & 1) == 0)
  {
    v366 = STACK[0x3E4];
  }

  v418 = STACK[0x3F4];
  v419 = STACK[0x3E8];
  if (v396)
  {
    v420 = STACK[0x3E8];
  }

  else
  {
    v420 = STACK[0x3F4];
  }

  LODWORD(STACK[0x41C]) = v420;
  v421 = STACK[0x26C];
  if ((v396 & 1) == 0)
  {
    v418 = STACK[0x26C];
  }

  LODWORD(STACK[0x47C]) = v418;
  v422 = STACK[0x404];
  if (v396)
  {
    v419 = STACK[0x404];
  }

  LODWORD(STACK[0x42C]) = v419;
  if ((v396 & 1) == 0)
  {
    v421 = v422;
  }

  v423 = STACK[0x248];
  v424 = STACK[0x25C];
  if (v396)
  {
    v425 = STACK[0x25C];
  }

  else
  {
    v425 = STACK[0x248];
  }

  LODWORD(STACK[0x404]) = v425;
  v426 = STACK[0x3A4];
  if (v396)
  {
    v427 = STACK[0x3A4];
  }

  else
  {
    v427 = v424;
  }

  if (v396)
  {
    v426 = STACK[0x278];
  }

  else
  {
    v423 = STACK[0x278];
  }

  LODWORD(STACK[0x354]) = v426;
  if (v396)
  {
    v428 = v336;
  }

  else
  {
    v428 = v340;
  }

  LODWORD(STACK[0x3A4]) = v428;
  v429 = STACK[0x470];
  if (v396)
  {
    v430 = STACK[0x470];
  }

  else
  {
    v430 = v336;
  }

  LODWORD(STACK[0x3B4]) = v430;
  v431 = STACK[0x468];
  if (v396)
  {
    v432 = STACK[0x468];
  }

  else
  {
    v432 = v429;
  }

  if (v396)
  {
    v431 = v340;
  }

  LODWORD(STACK[0x358]) = v431;
  v433 = STACK[0x288];
  v434 = STACK[0x2E0];
  if (v396)
  {
    v435 = STACK[0x2E0];
  }

  else
  {
    v435 = STACK[0x288];
  }

  LODWORD(STACK[0x370]) = v435;
  if ((v396 & 1) == 0)
  {
    v433 = v1135;
  }

  LODWORD(STACK[0x3B0]) = v433;
  v436 = STACK[0x414];
  if (v396)
  {
    v434 = STACK[0x414];
  }

  LODWORD(STACK[0x3AC]) = v434;
  if (v396)
  {
    v437 = v1135;
  }

  else
  {
    v437 = v436;
  }

  v438 = STACK[0x45C];
  v439 = STACK[0x460];
  if (v396)
  {
    v440 = STACK[0x45C];
  }

  else
  {
    v440 = STACK[0x460];
  }

  LODWORD(STACK[0x398]) = v440;
  v441 = STACK[0x464];
  if ((v396 & 1) == 0)
  {
    v439 = STACK[0x464];
  }

  LODWORD(STACK[0x438]) = v439;
  v442 = STACK[0x340];
  if ((v396 & 1) == 0)
  {
    v441 = STACK[0x340];
  }

  LODWORD(STACK[0x34C]) = v441;
  if (v396)
  {
    v438 = v442;
  }

  LODWORD(STACK[0x3A8]) = v438;
  v443 = STACK[0x2F8];
  v444 = STACK[0x258];
  if (v396)
  {
    v445 = STACK[0x258];
  }

  else
  {
    v445 = STACK[0x2F8];
  }

  LODWORD(STACK[0x3E8]) = v445;
  v446 = STACK[0x418];
  if (v396)
  {
    v444 = STACK[0x418];
  }

  LODWORD(STACK[0x414]) = v444;
  if ((v396 & 1) == 0)
  {
    v443 = v367;
  }

  LODWORD(STACK[0x40C]) = v443;
  if (v396)
  {
    v447 = v367;
  }

  else
  {
    v447 = v446;
  }

  LODWORD(STACK[0x304]) = v447;
  v448 = STACK[0x420];
  if (v396)
  {
    v449 = STACK[0x420];
  }

  else
  {
    v449 = v384;
  }

  LODWORD(STACK[0x434]) = v449;
  v450 = STACK[0x428];
  if (v396)
  {
    v448 = STACK[0x428];
  }

  LODWORD(STACK[0x2C4]) = v448;
  v451 = STACK[0x448];
  if (v396)
  {
    v450 = STACK[0x448];
  }

  LODWORD(STACK[0x428]) = v450;
  if ((v396 & 1) == 0)
  {
    v384 = v451;
  }

  v452 = STACK[0x264];
  v453 = STACK[0x3B8];
  if (v396)
  {
    v454 = STACK[0x3B8];
  }

  else
  {
    v454 = STACK[0x264];
  }

  LODWORD(STACK[0x420]) = v454;
  if ((v396 & 1) == 0)
  {
    v452 = v1136;
  }

  LODWORD(STACK[0x424]) = v452;
  if (v396)
  {
    v453 = v1137;
  }

  LODWORD(STACK[0x3C8]) = v453;
  if (v396)
  {
    v455 = v1136;
  }

  else
  {
    v455 = v1137;
  }

  v456 = STACK[0x430];
  v457 = STACK[0x454];
  if (v396)
  {
    v458 = STACK[0x454];
  }

  else
  {
    v458 = STACK[0x430];
  }

  LODWORD(STACK[0x3C4]) = v458;
  v459 = STACK[0x43C];
  if ((v396 & 1) == 0)
  {
    v456 = STACK[0x43C];
  }

  LODWORD(STACK[0x408]) = v456;
  v460 = STACK[0x444];
  if ((v396 & 1) == 0)
  {
    v459 = STACK[0x444];
  }

  LODWORD(STACK[0x2B0]) = v459;
  if ((v396 & 1) == 0)
  {
    v460 = v457;
  }

  LODWORD(STACK[0x328]) = v460;
  v461 = STACK[0x4F4];
  v462 = STACK[0x2D8];
  if (v396)
  {
    v463 = STACK[0x2D8];
  }

  else
  {
    v463 = STACK[0x4F4];
  }

  LODWORD(STACK[0x3D0]) = v463;
  v464 = STACK[0x4F8];
  if (v396)
  {
    v462 = STACK[0x4F8];
  }

  LODWORD(STACK[0x2F8]) = v462;
  v465 = STACK[0x494];
  if (v396)
  {
    v464 = STACK[0x494];
  }

  LODWORD(STACK[0x3B8]) = v464;
  if (v396)
  {
    v466 = v461;
  }

  else
  {
    v466 = v465;
  }

  v467 = STACK[0x374];
  v468 = STACK[0x36C];
  if (v396)
  {
    v469 = STACK[0x374];
  }

  else
  {
    v469 = STACK[0x36C];
  }

  LODWORD(STACK[0x334]) = v469;
  v470 = STACK[0x498];
  if ((v396 & 1) == 0)
  {
    v468 = STACK[0x498];
  }

  LODWORD(STACK[0x2E0]) = v468;
  v471 = STACK[0x4A4];
  if (v396)
  {
    v467 = STACK[0x4A4];
    v471 = v470;
  }

  LODWORD(STACK[0x308]) = v471;
  LODWORD(STACK[0x508]) = v396 + LODWORD(STACK[0x49C]);
  if ((v396 & 2) != 0)
  {
    v472 = v399;
  }

  else
  {
    v472 = v400;
  }

  LODWORD(STACK[0x4F8]) = v472;
  if ((v396 & 2) != 0)
  {
    v473 = v400;
  }

  else
  {
    v473 = v399;
  }

  LODWORD(STACK[0x4A4]) = v473;
  v474 = STACK[0x4EC];
  if ((v396 & 2) != 0)
  {
    v475 = v401;
  }

  else
  {
    v475 = STACK[0x4EC];
  }

  LODWORD(STACK[0x3E4]) = v475;
  if ((v396 & 2) != 0)
  {
    v476 = v474;
  }

  else
  {
    v476 = v401;
  }

  LODWORD(STACK[0x3D8]) = v476;
  v477 = STACK[0x4A0];
  if ((v396 & 2) != 0)
  {
    v478 = v404;
  }

  else
  {
    v478 = STACK[0x4A0];
  }

  LODWORD(STACK[0x4F4]) = v478;
  if ((v396 & 2) != 0)
  {
    v479 = v477;
  }

  else
  {
    v479 = v404;
  }

  LODWORD(STACK[0x49C]) = v479;
  v480 = STACK[0x4E8];
  if ((v396 & 2) != 0)
  {
    v481 = STACK[0x4E8];
  }

  else
  {
    v481 = v406;
  }

  LODWORD(STACK[0x4EC]) = v481;
  if ((v396 & 2) != 0)
  {
    v482 = v406;
  }

  else
  {
    v482 = v480;
  }

  LODWORD(STACK[0x4A0]) = v482;
  if ((v396 & 2) != 0)
  {
    v483 = v408;
  }

  else
  {
    v483 = v407;
  }

  LODWORD(STACK[0x4E8]) = v483;
  if ((v396 & 2) != 0)
  {
    v484 = v407;
  }

  else
  {
    v484 = v408;
  }

  LODWORD(STACK[0x3F8]) = v484;
  if ((v396 & 2) != 0)
  {
    v485 = v410;
  }

  else
  {
    v485 = v409;
  }

  LODWORD(STACK[0x470]) = v485;
  if ((v396 & 2) != 0)
  {
    v486 = v409;
  }

  else
  {
    v486 = v410;
  }

  LODWORD(STACK[0x3F4]) = v486;
  if ((v396 & 2) != 0)
  {
    v487 = v413;
  }

  else
  {
    v487 = v414;
  }

  LODWORD(STACK[0x490]) = v487;
  if ((v396 & 2) != 0)
  {
    v488 = v414;
  }

  else
  {
    v488 = v413;
  }

  LODWORD(STACK[0x458]) = v488;
  v489 = STACK[0x488];
  if ((v396 & 2) != 0)
  {
    v490 = v381;
  }

  else
  {
    v490 = STACK[0x488];
  }

  LODWORD(STACK[0x46C]) = v490;
  if ((v396 & 2) != 0)
  {
    v491 = v489;
  }

  else
  {
    v491 = v381;
  }

  LODWORD(STACK[0x478]) = v491;
  if ((v396 & 2) != 0)
  {
    v492 = v417;
  }

  else
  {
    v492 = v415;
  }

  LODWORD(STACK[0x468]) = v492;
  if ((v396 & 2) != 0)
  {
    v493 = v415;
  }

  else
  {
    v493 = v417;
  }

  LODWORD(STACK[0x448]) = v493;
  if ((v396 & 2) != 0)
  {
    v494 = v366;
  }

  else
  {
    v494 = v416;
  }

  LODWORD(STACK[0x440]) = v494;
  if ((v396 & 2) != 0)
  {
    v495 = v416;
  }

  else
  {
    v495 = v366;
  }

  LODWORD(STACK[0x498]) = v495;
  v496 = STACK[0x41C];
  if ((v396 & 2) != 0)
  {
    v497 = STACK[0x41C];
  }

  else
  {
    v497 = v421;
  }

  LODWORD(STACK[0x430]) = v497;
  if ((v396 & 2) != 0)
  {
    v498 = v421;
  }

  else
  {
    v498 = v496;
  }

  LODWORD(STACK[0x444]) = v498;
  v499 = STACK[0x47C];
  v500 = STACK[0x42C];
  if ((v396 & 2) != 0)
  {
    v501 = STACK[0x42C];
  }

  else
  {
    v501 = STACK[0x47C];
  }

  LODWORD(STACK[0x494]) = v501;
  if ((v396 & 2) != 0)
  {
    v502 = v499;
  }

  else
  {
    v502 = v500;
  }

  LODWORD(STACK[0x42C]) = v502;
  if ((v396 & 2) != 0)
  {
    v503 = v427;
  }

  else
  {
    v503 = v423;
  }

  LODWORD(STACK[0x488]) = v503;
  if ((v396 & 2) != 0)
  {
    v504 = v423;
  }

  else
  {
    v504 = v427;
  }

  LODWORD(STACK[0x41C]) = v504;
  v505 = STACK[0x404];
  v506 = STACK[0x354];
  if ((v396 & 2) != 0)
  {
    v507 = STACK[0x404];
  }

  else
  {
    v507 = STACK[0x354];
  }

  LODWORD(STACK[0x47C]) = v507;
  if ((v396 & 2) != 0)
  {
    v508 = v506;
  }

  else
  {
    v508 = v505;
  }

  LODWORD(STACK[0x418]) = v508;
  v509 = STACK[0x3A4];
  if ((v396 & 2) != 0)
  {
    v510 = v432;
  }

  else
  {
    v510 = STACK[0x3A4];
  }

  LODWORD(STACK[0x33C]) = v510;
  if ((v396 & 2) != 0)
  {
    v511 = v509;
  }

  else
  {
    v511 = v432;
  }

  LODWORD(STACK[0x340]) = v511;
  v512 = STACK[0x3B4];
  v513 = STACK[0x358];
  if ((v396 & 2) != 0)
  {
    v514 = STACK[0x358];
  }

  else
  {
    v514 = STACK[0x3B4];
  }

  LODWORD(STACK[0x338]) = v514;
  if ((v396 & 2) != 0)
  {
    v515 = v512;
  }

  else
  {
    v515 = v513;
  }

  LODWORD(STACK[0x344]) = v515;
  v516 = STACK[0x370];
  if ((v396 & 2) != 0)
  {
    v517 = v437;
  }

  else
  {
    v517 = STACK[0x370];
  }

  LODWORD(STACK[0x460]) = v517;
  if ((v396 & 2) != 0)
  {
    v518 = v516;
  }

  else
  {
    v518 = v437;
  }

  LODWORD(STACK[0x464]) = v518;
  v519 = STACK[0x3B0];
  v520 = STACK[0x3AC];
  if ((v396 & 2) != 0)
  {
    v521 = STACK[0x3B0];
  }

  else
  {
    v521 = STACK[0x3AC];
  }

  LODWORD(STACK[0x45C]) = v521;
  if ((v396 & 2) != 0)
  {
    v522 = v520;
  }

  else
  {
    v522 = v519;
  }

  LODWORD(STACK[0x454]) = v522;
  v523 = STACK[0x398];
  v524 = STACK[0x34C];
  if ((v396 & 2) != 0)
  {
    v525 = STACK[0x34C];
  }

  else
  {
    v525 = STACK[0x398];
  }

  LODWORD(STACK[0x350]) = v525;
  if ((v396 & 2) != 0)
  {
    v526 = v523;
  }

  else
  {
    v526 = v524;
  }

  LODWORD(STACK[0x354]) = v526;
  v527 = STACK[0x438];
  v528 = STACK[0x3A8];
  if ((v396 & 2) != 0)
  {
    v529 = STACK[0x3A8];
  }

  else
  {
    v529 = STACK[0x438];
  }

  LODWORD(STACK[0x34C]) = v529;
  if ((v396 & 2) != 0)
  {
    v530 = v527;
  }

  else
  {
    v530 = v528;
  }

  LODWORD(STACK[0x358]) = v530;
  v531 = STACK[0x3E8];
  v532 = STACK[0x304];
  if ((v396 & 2) != 0)
  {
    v533 = STACK[0x304];
  }

  else
  {
    v533 = STACK[0x3E8];
  }

  LODWORD(STACK[0x438]) = v533;
  if ((v396 & 2) != 0)
  {
    v534 = v531;
  }

  else
  {
    v534 = v532;
  }

  LODWORD(STACK[0x43C]) = v534;
  v535 = STACK[0x2C4];
  if ((v396 & 2) != 0)
  {
    v536 = STACK[0x2C4];
  }

  else
  {
    v536 = v384;
  }

  LODWORD(STACK[0x36C]) = v536;
  if ((v396 & 2) != 0)
  {
    v537 = v384;
  }

  else
  {
    v537 = v535;
  }

  LODWORD(STACK[0x370]) = v537;
  v538 = STACK[0x434];
  v539 = STACK[0x428];
  if ((v396 & 2) != 0)
  {
    v540 = STACK[0x434];
  }

  else
  {
    v540 = STACK[0x428];
  }

  LODWORD(STACK[0x398]) = v540;
  if ((v396 & 2) != 0)
  {
    v541 = v539;
  }

  else
  {
    v541 = v538;
  }

  LODWORD(STACK[0x374]) = v541;
  v542 = STACK[0x420];
  if ((v396 & 2) != 0)
  {
    v543 = STACK[0x420];
  }

  else
  {
    v543 = v455;
  }

  LODWORD(STACK[0x434]) = v543;
  if ((v396 & 2) != 0)
  {
    v544 = v455;
  }

  else
  {
    v544 = v542;
  }

  LODWORD(STACK[0x420]) = v544;
  v545 = STACK[0x424];
  v546 = STACK[0x3C8];
  if ((v396 & 2) != 0)
  {
    v547 = STACK[0x3C8];
  }

  else
  {
    v547 = STACK[0x424];
  }

  LODWORD(STACK[0x428]) = v547;
  if ((v396 & 2) != 0)
  {
    v548 = v545;
  }

  else
  {
    v548 = v546;
  }

  LODWORD(STACK[0x424]) = v548;
  v549 = STACK[0x3C4];
  v550 = STACK[0x2B0];
  if ((v396 & 2) != 0)
  {
    v551 = STACK[0x2B0];
  }

  else
  {
    v551 = STACK[0x3C4];
  }

  LODWORD(STACK[0x3B0]) = v551;
  if ((v396 & 2) != 0)
  {
    v552 = v549;
  }

  else
  {
    v552 = v550;
  }

  LODWORD(STACK[0x3A4]) = v552;
  v553 = STACK[0x408];
  v554 = STACK[0x328];
  if ((v396 & 2) != 0)
  {
    v555 = STACK[0x408];
  }

  else
  {
    v555 = STACK[0x328];
  }

  LODWORD(STACK[0x3AC]) = v555;
  if ((v396 & 2) != 0)
  {
    v556 = v554;
  }

  else
  {
    v556 = v553;
  }

  LODWORD(STACK[0x3A8]) = v556;
  v557 = STACK[0x2F8];
  if ((v396 & 2) != 0)
  {
    v558 = v466;
  }

  else
  {
    v558 = STACK[0x2F8];
  }

  LODWORD(STACK[0x3E8]) = v558;
  if ((v396 & 2) != 0)
  {
    v559 = v557;
  }

  else
  {
    v559 = v466;
  }

  LODWORD(STACK[0x404]) = v559;
  v560 = STACK[0x3D0];
  v561 = STACK[0x3B8];
  if ((v396 & 2) != 0)
  {
    v562 = STACK[0x3D0];
  }

  else
  {
    v562 = STACK[0x3B8];
  }

  LODWORD(STACK[0x3B4]) = v562;
  if ((v396 & 2) != 0)
  {
    v563 = v561;
  }

  else
  {
    v563 = v560;
  }

  LODWORD(STACK[0x408]) = v563;
  v564 = STACK[0x2E0];
  if ((v396 & 2) != 0)
  {
    v565 = STACK[0x2E0];
  }

  else
  {
    v565 = v467;
  }

  LODWORD(STACK[0x3C8]) = v565;
  if ((v396 & 2) != 0)
  {
    v566 = v467;
  }

  else
  {
    v566 = v564;
  }

  LODWORD(STACK[0x3B8]) = v566;
  v567 = STACK[0x334];
  v568 = STACK[0x308];
  if ((v396 & 2) != 0)
  {
    v569 = STACK[0x334];
  }

  else
  {
    v569 = STACK[0x308];
  }

  LODWORD(STACK[0x3C4]) = v569;
  if ((v396 & 2) != 0)
  {
    v570 = v568;
  }

  else
  {
    v570 = v567;
  }

  LODWORD(STACK[0x3D0]) = v570;
  v571 = STACK[0x414];
  v572 = STACK[0x40C];
  if ((v396 & 2) != 0)
  {
    v573 = STACK[0x414];
  }

  else
  {
    v573 = STACK[0x40C];
  }

  LODWORD(STACK[0x328]) = v573;
  if ((v396 & 2) != 0)
  {
    v571 = v572;
  }

  LODWORD(STACK[0x334]) = v571;
  v574 = STACK[0x568];
  v575 = STACK[0x320];
  if (STACK[0x568])
  {
    v576 = STACK[0x360];
  }

  else
  {
    v576 = STACK[0x320];
  }

  v577 = STACK[0x318];
  if ((v574 & 1) == 0)
  {
    v575 = STACK[0x318];
  }

  v578 = STACK[0x324];
  if ((v574 & 1) == 0)
  {
    v577 = STACK[0x324];
    v578 = STACK[0x360];
  }

  if ((v574 & 2) != 0)
  {
    v579 = v578;
  }

  else
  {
    v579 = v575;
  }

  if ((v574 & 2) != 0)
  {
    v580 = v575;
  }

  else
  {
    v580 = v578;
  }

  if ((v574 & 2) != 0)
  {
    v581 = v577;
  }

  else
  {
    v581 = v576;
  }

  if ((v574 & 2) == 0)
  {
    v576 = v577;
  }

  LODWORD(STACK[0x324]) = v576;
  v582 = STACK[0x410];
  v583 = STACK[0x410] & 0xD49092C2 ^ 0xEA484961;
  v584 = STACK[0x4F0];
  v585 = STACK[0x548];
  v586 = STACK[0x2DC];
  v587 = STACK[0x2DC] & 0xD49092C2 ^ 0xEA484961;
  v588 = STACK[0x540];
  v589 = ((v586 & 0x80809280 ^ 0xAA084101 ^ (LODWORD(STACK[0x4E4]) ^ 0x54500862) & v587) << v588) | ((v586 & 0xD0808080 ^ 0xC0400020 ^ (LODWORD(STACK[0x538]) ^ 0xD0C080A0) & v587) >> LODWORD(STACK[0x558]));
  v590 = (((LODWORD(STACK[0x4F0]) ^ 0xE185BA2) & v583 ^ (v582 & 0x4101280 | 0xA084920)) >> v585) ^ ((v582 & 0x549080C0 ^ 0x62480840 ^ v583 & (LODWORD(STACK[0x500]) ^ 0x88005323)) << STACK[0x560]) ^ v579;
  v591 = (v590 - ((2 * v590) & 0x42FA4BB8) - 1585633828) ^ LODWORD(STACK[0x2F4]);
  v592 = LODWORD(STACK[0x570]) ^ LODWORD(STACK[0x314]);
  v593 = v592 ^ v475 ^ (v591 - ((2 * v591) & 0x202B424E) + 269852967);
  v594 = v592 ^ ((v580 ^ v589) - ((2 * (v580 ^ v589)) & 0x202B424E) + 269852967);
  v595 = v476 ^ LODWORD(STACK[0x2F4]) ^ (v594 - ((2 * v594) & 0x42FA4BB8) - 1585633828);
  v596 = LODWORD(STACK[0x314]) ^ ((v586 & 0x44100202 ^ 0x62080100 ^ (LODWORD(STACK[0x500]) ^ 0x98C0D8E1) & v587) << STACK[0x560]) ^ ((v586 & 0x94800000 ^ 0xA0400820 ^ (LODWORD(STACK[0x4F0]) ^ 0xB4C00822) & v587) >> LODWORD(STACK[0x558])) ^ v581 ^ LODWORD(STACK[0x4F8]);
  v597 = (v596 - ((2 * v596) & 0x202B424E) + 269852967) ^ LODWORD(STACK[0x570]);
  v598 = STACK[0x4E4];
  v599 = LODWORD(STACK[0x314]) ^ (((STACK[0x410] & 0x1040 ^ 0x20084941 ^ (LODWORD(STACK[0x4E4]) ^ 0xDED082A2) & v583) << v588) | ((STACK[0x410] & 0x50809042 ^ 0x48480060 ^ v583 & (LODWORD(STACK[0x538]) ^ 0x58C89062)) >> v585)) ^ LODWORD(STACK[0x324]) ^ LODWORD(STACK[0x4A4]);
  v600 = (v597 - ((2 * v597) & 0x42FA4BB8) - 1585633828) ^ LODWORD(STACK[0x2F4]);
  v601 = (v599 - ((2 * v599) & 0x202B424E) + 269852967) ^ LODWORD(STACK[0x570]);
  HIDWORD(v602) = *(v394 + 4 * HIBYTE(v600));
  LODWORD(v602) = HIDWORD(v602);
  v603 = (v601 - ((2 * v601) & 0x42FA4BB8) - 1585633828) ^ LODWORD(STACK[0x2F4]);
  v604 = STACK[0x2DC] & 0x893774C8 ^ 0x449BBA64;
  v605 = (((v602 >> 24) ^ __ROR4__(*(v394 + 4 * v593), 16) ^ *(v394 + 4 * BYTE2(v595)) ^ __ROR4__(*(v394 + 4 * (((v601 - ((2 * v601) & 0x4BB8) + 9692) ^ LOWORD(STACK[0x2F4])) >> 8)), 8)) - LODWORD(STACK[0x568]) + LODWORD(STACK[0x508])) ^ (((v586 & 0x81210048 ^ 0x44018A60 ^ (LODWORD(STACK[0x4E4]) ^ 0x89E7484) & v604) << STACK[0x560]) + ((v586 & 0x810550C8 ^ 0x44019060 ^ (LODWORD(STACK[0x538]) ^ 0xC505D0E8) & v604) >> LODWORD(STACK[0x548]))) ^ LODWORD(STACK[0x4A0]);
  v606 = v1145 ^ v1140 ^ v1147;
  v607 = v606 ^ LODWORD(STACK[0x568]) ^ LODWORD(STACK[0x3CC]) ^ (v605 - ((2 * v605) & 0x99935E0) + 80517872);
  v608 = STACK[0x410] & 0x893774C8 ^ 0x449BBA64;
  v609 = (((v582 & 0x88061488 ^ 0x44821824 ^ (LODWORD(STACK[0x4F0]) ^ 0xCC861CAC) & v608) >> LODWORD(STACK[0x558])) + ((v582 & 0x80264088 ^ 0x448A8804 ^ v608 & (LODWORD(STACK[0x500]) ^ 0x9113660)) << v588)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v595)), 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v593)), 8) ^ *(v394 + 4 * BYTE2(v603));
  LODWORD(v602) = __ROR4__(*(v394 + 4 * v600), 16);
  v610 = (v609 ^ v602 ^ LODWORD(STACK[0x4F4])) - ((2 * (v609 ^ v602 ^ LODWORD(STACK[0x4F4]))) & 0x99935E0);
  v611 = (((v582 & 0x9336048 ^ 0x40932040 ^ (LODWORD(STACK[0x4E4]) ^ 0x840C9EA4) & v608) << STACK[0x560]) + ((v582 & 0x81012440 ^ 0x81A840 ^ v608 & (LODWORD(STACK[0x538]) ^ 0x8181AC40)) >> LODWORD(STACK[0x548]))) ^ __ROR4__(*(v394 + 4 * BYTE1(v600)), 8) ^ __ROR4__(*(v394 + 4 * v595), 16) ^ __ROR4__(*(v394 + 4 * HIBYTE(v603)), 24) ^ *(v394 + 4 * BYTE2(v593)) ^ LODWORD(STACK[0x4EC]);
  v612 = (((v586 & 0x1054C8 ^ 0x40981864 ^ (LODWORD(STACK[0x4F0]) ^ 0x40985CEC) & v604) >> LODWORD(STACK[0x558])) + ((v586 & 0x146400 ^ 0x44182824 ^ (LODWORD(STACK[0x500]) ^ 0x89A392C8) & v604) << v588)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v593)), 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v595)), 8) ^ *(v394 + 4 * BYTE2(v600));
  LODWORD(v602) = __ROR4__(*(v394 + 4 * v603), 16);
  v613 = v606 ^ (v610 + 80517872);
  v614 = v606 ^ (v611 - ((2 * v611) & 0x99935E0) + 80517872);
  v615 = v606 ^ LODWORD(STACK[0x49C]) ^ ((v612 ^ v602) - ((2 * (v612 ^ v602)) & 0x99935E0) + 80517872);
  v616 = *(v394 + 4 * BYTE2(v614)) ^ __ROR4__(*(v394 + 4 * (v606 ^ LOBYTE(STACK[0x568]) ^ LOBYTE(STACK[0x3CC]) ^ (v605 - ((2 * v605) & 0xE0) - 16))), 16) ^ __ROR4__(*(v394 + 4 * HIBYTE(v613)), 24);
  LODWORD(v602) = __ROR4__(*(v394 + 4 * ((v606 ^ LOWORD(STACK[0x49C]) ^ ((v612 ^ v602) - ((2 * (v612 ^ v602)) & 0x35E0) - 25872)) >> 8)), 8);
  v617 = ((v616 ^ v602) + 1649426684 + (~(2 * (v616 ^ v602)) | 0x3B5F7E07) + 1) ^ v1149;
  v618 = STACK[0x2DC] & 0x9C859722 ^ 0xCE42CB91;
  v619 = v1152 ^ ((v586 & 0xC858720 ^ 0x4E40C391 ^ (LODWORD(STACK[0x500]) ^ 0x90021802) & v618) << STACK[0x560]) ^ ((v586 & 0x10818322 ^ 0x40428310 ^ (LODWORD(STACK[0x4F0]) ^ 0x50C38330) & v618) >> LODWORD(STACK[0x558])) ^ LODWORD(STACK[0x3F8]) ^ (v617 - ((2 * v617) & 0x24648772) - 1842199623);
  v620 = STACK[0x410] & 0x9C859722 ^ 0xCE42CB91;
  LOBYTE(v605) = STACK[0x548];
  v621 = (STACK[0x410] & 0x80059222 ^ 0xC0428A11 ^ v620 & (LODWORD(STACK[0x538]) ^ 0xC0479A33)) >> v605;
  v622 = (STACK[0x410] & 0x98009402 ^ 0xCA42C080 ^ (LODWORD(STACK[0x4E4]) ^ 0x4850B31) & v620) << v588;
  v623 = *(v394 + 4 * BYTE2(v615)) ^ ((v622 ^ v621) + 2 * (v622 & v621)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v614)), 24) ^ __ROR4__(*(v394 + 4 * (v606 ^ (v610 - 16))), 16);
  LODWORD(v602) = __ROR4__(*(v394 + 4 * BYTE1(v607)), 8);
  v624 = ((v623 ^ v602 ^ LODWORD(STACK[0x470])) - ((2 * (v623 ^ v602 ^ LODWORD(STACK[0x470]))) & 0x24648772) - 1842199623) ^ v1152;
  v625 = v624 - ((2 * v624) & 0xC4A081F8);
  v626 = (((v586 & 0x80001100 ^ 0xC2020190 ^ (LODWORD(STACK[0x4E4]) ^ 0x1CC5CE23) & v618) << v588) + ((v586 & 0x80819320 ^ 0xC0408B10 ^ (LODWORD(STACK[0x538]) ^ 0xC0C19B30) & v618) >> v605)) ^ __ROR4__(*(v394 + 4 * v614), 16) ^ *(v394 + 4 * BYTE2(v607)) ^ __ROR4__(*(v394 + 4 * ((v606 ^ (v610 - 25872)) >> 8)), 8);
  LODWORD(v602) = __ROR4__(*(v394 + 4 * HIBYTE(v615)), 24);
  v627 = ((v626 ^ v602) - ((2 * (v626 ^ v602)) & 0x24648772) - 1842199623) ^ v1152 ^ LODWORD(STACK[0x4E8]);
  v628 = STACK[0x500];
  v629 = STACK[0x560];
  v630 = (((STACK[0x410] & 0x90840302 ^ 0x82420300 ^ (LODWORD(STACK[0x4F0]) ^ 0x92C60300) & v620) >> LODWORD(STACK[0x558])) + ((STACK[0x410] & 0x98840602 ^ 0x88420201 ^ v620 & (LODWORD(STACK[0x500]) ^ 0x4601D9B0)) << STACK[0x560])) ^ __ROR4__(*(v394 + 4 * BYTE1(v614)), 8) ^ *(v394 + 4 * BYTE2(v613)) ^ __ROR4__(*(v394 + 4 * v615), 16);
  LODWORD(v602) = __ROR4__(*(v394 + 4 * HIBYTE(v607)), 24);
  v631 = ((v630 ^ v602) - ((2 * (v630 ^ v602)) & 0x24648772) - 1842199623) ^ v1152;
  v632 = (v625 + 1649426684) ^ v1149;
  v633 = (v627 - ((2 * v627) & 0xC4A081F8) + 1649426684) ^ v1149;
  v634 = LODWORD(STACK[0x3F4]) ^ v1149 ^ (v631 - ((2 * v631) & 0xC4A081F8) + 1649426684);
  v635 = ((*(v394 + 4 * BYTE1(v634)) << (STACK[0x568] & 0x18) << (STACK[0x568] & 0x18 ^ 0x18)) + (*(v394 + 4 * BYTE1(v634)) >> 8)) ^ __ROR4__(*(v394 + 4 * v619), 16) ^ __ROR4__(*(v394 + 4 * HIBYTE(v632)), 24);
  HIDWORD(v602) = *(v394 + 4 * ((v625 - 4) ^ v1149));
  LODWORD(v602) = HIDWORD(v602);
  v636 = *(v394 + 4 * BYTE2(v632)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v619)), 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v633)), 8) ^ __ROR4__(*(v394 + 4 * v634), 16);
  v637 = (v602 >> 16) ^ __ROR4__(*(v394 + 4 * BYTE1(v619)), 8) ^ *(v394 + 4 * BYTE2(v634));
  v638 = *(v394 + 4 * BYTE2(v633));
  v639 = (v638 & 0x400 & v635) == 0;
  v640 = v638 & 0x400 ^ v635;
  v641 = v635 - (v638 & 0x400);
  if (v639)
  {
    v641 = v640;
  }

  v642 = __ROR4__(*(v394 + 4 * HIBYTE(v633)), 24);
  v643 = ((v637 ^ v642) - ((2 * (v637 ^ v642)) & 0x8089CE44) + 1078257442) ^ LODWORD(STACK[0x35C]);
  v644 = ((602244235 * (LODWORD(STACK[0x504]) ^ LODWORD(STACK[0x348]) ^ 0x2C1588D)) ^ LODWORD(STACK[0x384]) ^ LODWORD(STACK[0x378]) ^ (602244235 * LODWORD(STACK[0x368])) ^ v638 & 0xFFFFFBFF ^ v641) + 256465605 * LODWORD(STACK[0x4A8]);
  v645 = (v643 - ((2 * v643) & 0xE3B47D8) + 119383020) ^ LODWORD(STACK[0x364]);
  v646 = v582 & 0x75C5676E ^ 0x3AE2B3B7;
  v647 = STACK[0x548];
  v648 = STACK[0x2F4];
  v649 = ((v586 & 0x70C10262 ^ 0x3AC212A3 ^ (v584 ^ 0x7AC312E1) & (v586 & 0x75C5676E ^ 0x3AE2B3B7u)) >> LODWORD(STACK[0x548])) ^ ((v586 & 0x4004306 ^ 0x2029316 ^ (v598 ^ 0x79E524E9) & (v586 & 0x75C5676E ^ 0x3AE2B3B7)) << v629) ^ LODWORD(STACK[0x300]) ^ LODWORD(STACK[0x2F4]) ^ LODWORD(STACK[0x478]) ^ (v636 - ((2 * v636) & 0x42FA4BB8) - 1585633828);
  v650 = LODWORD(STACK[0x46C]) ^ LODWORD(STACK[0x300]) ^ LODWORD(STACK[0x330]) ^ (v645 - ((2 * v645) & 0xDCBB1D32) - 295858535);
  v651 = LODWORD(STACK[0x300]) ^ (((v582 & 0x41050366 ^ 0x2001327 ^ v646 & (v628 ^ 0x3CE2E498)) << LODWORD(STACK[0x540])) | ((v582 & 0x51C4616C ^ 0x10C2B1A5 ^ v646 & (LODWORD(STACK[0x538]) ^ 0x51C6F1EDu)) >> LODWORD(STACK[0x558]))) ^ __ROR4__(*(v394 + 4 * BYTE1(v632)), 8) ^ __ROR4__(*(v394 + 4 * v633), 16) ^ __ROR4__(*(v394 + 4 * HIBYTE(v634)), 24) ^ *(v394 + 4 * BYTE2(v619));
  v652 = LODWORD(STACK[0x458]) ^ LODWORD(STACK[0x2F4]) ^ (v651 - ((2 * v651) & 0x42FA4BB8) - 1585633828);
  HIDWORD(v654) = (((v586 & 0x75C5676Eu) >> 4) | (LODWORD(STACK[0x514]) << 29)) ^ 0x774820CF;
  LODWORD(v654) = HIDWORD(v654);
  v653 = v654 >> 28;
  v655 = (v653 & 0x24404454 ^ 0xC409441 ^ (v628 ^ 0x53AF2BAA) & (v653 ^ 0x4E60BF40)) << v629;
  v656 = STACK[0x560];
  v657 = STACK[0x558];
  v658 = ((v653 & 0x6040277A ^ 0x40603740 ^ (LODWORD(STACK[0x538]) ^ 0x6078377A) & (v653 ^ 0x4E60BF40u)) >> LODWORD(STACK[0x558])) ^ v655 ^ LODWORD(STACK[0x2F4]) ^ (v650 - ((2 * v650) & 0x42FA4BB8) - 1585633828);
  v659 = v644 ^ (((v582 & 0x61446668 ^ 0x20622230 ^ (v584 ^ 0x6166667A) & v646) >> LODWORD(STACK[0x548])) + ((v582 & 0x5002468 ^ 0x20020A0 ^ (v598 ^ 0x78E7D317) & v646) << LODWORD(STACK[0x540])));
  v660 = LODWORD(STACK[0x4FC]) ^ LODWORD(STACK[0x4C8]) ^ LODWORD(STACK[0x300]) ^ LODWORD(STACK[0x2FC]) ^ (v659 - ((2 * v659) & 0x83D12F36) + 1105762203);
  v661 = LODWORD(STACK[0x490]) ^ LODWORD(STACK[0x2F4]) ^ (v660 - ((2 * v660) & 0x42FA4BB8) - 1585633828);
  v662 = *(v394 + 4 * BYTE2(v658)) ^ __ROR4__(*(v394 + 4 * BYTE1(v652)), 8) ^ __ROR4__(*(v394 + 4 * HIBYTE(v661)), 24) ^ __ROR4__(*(v394 + 4 * v649), 16);
  v663 = v586 & 0x28C7FC18 ^ 0x9463FE0C;
  v664 = LODWORD(STACK[0x32C]) ^ (((v586 & 0x28441008 ^ 0x14401208 ^ (v598 ^ 0x80A3EC14) & v663) << LODWORD(STACK[0x540])) + ((v586 & 0x881B018 ^ 0x8401B008 ^ (LODWORD(STACK[0x538]) ^ 0x8C81B018) & v663) >> LODWORD(STACK[0x558]))) ^ LODWORD(STACK[0x440]) ^ __ROR4__(*(v394 + 4 * BYTE1(v661)), 8) ^ *(v394 + 4 * BYTE2(v649)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v652)), 24) ^ __ROR4__(*(v394 + 4 * v658), 16);
  v665 = v664 - ((2 * v664) & 0x42FA4BB8);
  v666 = STACK[0x32C] & 0x100;
  v667 = STACK[0x32C];
  if ((v662 & v666) != 0)
  {
    v666 = -v666;
  }

  v668 = v666 + v662;
  v669 = v582 & 0x28C7FC18 ^ 0x9463FE0C;
  v670 = STACK[0x560];
  v671 = LODWORD(STACK[0x32C]) ^ (((v582 & 0x5F010 ^ 0x1401F200 ^ (v584 ^ 0x1405F210) & v669) >> v647) | ((v582 & 0x8C3B410 ^ 0x1443B600 ^ v669 & (v628 ^ 0xA024480C)) << v656)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v649)), 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v658)), 8) ^ *(v394 + 4 * BYTE2(v661));
  BYTE2(v656) = BYTE2(v652);
  v672 = __ROR4__(*(v394 + 4 * v652), 16);
  v673 = LODWORD(STACK[0x468]) ^ v648 ^ ((v671 ^ v672) - ((2 * (v671 ^ v672)) & 0x42FA4BB8) - 1585633828);
  v674 = STACK[0x4E4];
  v675 = STACK[0x540];
  v676 = STACK[0x548];
  v677 = v667 & 0xFFFFFEFF ^ (((v582 & 0x20870008 ^ 0x423000C ^ (LODWORD(STACK[0x4E4]) ^ 0x9840FE10) & v669) << LODWORD(STACK[0x540])) | ((v582 & 0x2045B800 ^ 0x1061BA00 ^ v669 & (LODWORD(STACK[0x538]) ^ 0x3065BA00)) >> v647)) ^ v668;
  v678 = LODWORD(STACK[0x498]) ^ v648 ^ (v677 - ((2 * v677) & 0x42FA4BB8) - 1585633828);
  v679 = STACK[0x500];
  v680 = STACK[0x4F0];
  v681 = ((v586 & 0x826410 ^ 0x4026604 ^ (LODWORD(STACK[0x4F0]) ^ 0x4826614) & v663) >> v657) ^ ((v586 & 0x20028408 ^ 0x22860C ^ (LODWORD(STACK[0x500]) ^ 0x9CC57810) & v663) << v656) ^ v667 ^ __ROR4__(*(v394 + 4 * BYTE1(v649)), 8) ^ __ROR4__(*(v394 + 4 * HIBYTE(v658)), 24) ^ *(v394 + 4 * BYTE2(v656));
  v682 = __ROR4__(*(v394 + 4 * v661), 16);
  v683 = (v665 - 1585633828) ^ v648;
  v684 = LODWORD(STACK[0x448]) ^ v648 ^ ((v681 ^ v682) - ((2 * (v681 ^ v682)) & 0x42FA4BB8) - 1585633828);
  v685 = (*(v394 + 4 * BYTE2(v673)) ^ __ROR4__(*(v394 + 4 * v684), 16) ^ __ROR4__(*(v394 + 4 * ((LOWORD(STACK[0x498]) ^ v648 ^ (v677 - ((2 * v677) & 0x4BB8) + 9692)) >> 8)), 8) ^ __ROR4__(*(v394 + 4 * HIBYTE(v683)), 24)) + 2108834091 * LODWORD(STACK[0x4A8]);
  v686 = STACK[0x53C];
  v687 = LODWORD(STACK[0x380]) ^ (2 * (STACK[0x53C] & LODWORD(STACK[0x380])));
  v688 = STACK[0x52C];
  v689 = ((STACK[0x4E4] & 0xCE2F1C3D | STACK[0x52C] & (v687 ^ 0xCE2F1C3D)) ^ 0xCE2F1C3D) << LODWORD(STACK[0x540]);
  v690 = STACK[0x4E0];
  v691 = STACK[0x558];
  v692 = (STACK[0x4E0] & (v687 ^ 0x3A23061C) ^ STACK[0x4F0] & 0x3A23061C) >> v657;
  LODWORD(STACK[0x324]) = ((v692 - ((2 * v692) & 0x572EA1E2) + 731336945) ^ 0xBA48E911) & ((v689 - ((2 * v689) & 0x63C0D064) + 836790322) ^ 0xCE1F97CD) ^ (v689 - ((2 * v689) & 0x63C0D064) + 836790322) & 0x6E20461F;
  v693 = LODWORD(STACK[0x37C]) ^ (2 * (STACK[0x550] & LODWORD(STACK[0x37C])));
  v694 = ((v679 & 0x45363405 | STACK[0x4D8] & (v693 ^ 0x45363405)) ^ 0x45363405) << v675;
  v695 = v675;
  v696 = STACK[0x538];
  v697 = v691;
  LODWORD(STACK[0x4A8]) = (((STACK[0x538] & v693) >> v691) - ((2 * ((STACK[0x538] & v693) >> v691)) & 0x4E008374) - 1493155398) ^ 0x737EB595 ^ (v694 - ((2 * v694) & 0xA8FDE85E) - 729877457);
  v698 = LODWORD(STACK[0x4B4]) ^ (2 * (v686 & STACK[0x4B4]));
  v699 = v676;
  v700 = *(v394 + 4 * BYTE2(v683));
  v701 = *(v394 + 4 * HIBYTE(v684));
  LODWORD(STACK[0x32C]) = ((v690 & v698) >> v676) + (((v674 & 0xAA58863B | v688 & (v698 ^ 0xAA58863B)) ^ 0xAA58863B) << v670);
  v702 = v700 ^ __ROR4__(v701, 24) ^ __ROR4__(*(v394 + 4 * v678), 16) ^ __ROR4__(*(v394 + 4 * BYTE1(v673)), 8);
  v703 = LODWORD(STACK[0x348]) ^ 0xAA1A164F ^ (LODWORD(STACK[0x368]) - ((2 * LODWORD(STACK[0x368])) & 0x1746F6EE) + 195263351);
  v704 = *(*(&off_1006B4E30 + (LODWORD(STACK[0x518]) ^ 0x2FD)) + LODWORD(STACK[0x4C8]) % 0x101 - 3);
  v705 = v685 + ((v703 % 0x101 - ((2 * (v703 % 0x101)) & 0x19E) + 809297103) ^ 0x6717635B ^ *(*(&off_1006B4E30 + (LODWORD(STACK[0x518]) ^ 0x247)) + v703 % 0x101 - 2)) + ((*(STACK[0x200] + 4 * (LODWORD(STACK[0x378]) % 0x101)) - 1919851910) ^ 0x2AAEAE11) + ((LODWORD(STACK[0x384]) % 0x101 - 486531310 - ((2 * (LODWORD(STACK[0x384]) % 0x101)) & 0x224)) ^ 0x5F18477F ^ *(STACK[0x208] + 4 * (LODWORD(STACK[0x384]) % 0x101))) + ((((16 * v704) ^ 0xF8797AD0) + 500616496) ^ 0x1E9A4858 ^ ((((v704 ^ 0xC9579683) + 917006717) ^ ((v704 ^ 0x65D018B9) - 1708136633) ^ ((v704 ^ 0x33001997) - 855644567)) + 150734771));
  v706 = v702 + ((*(*(&off_1006B4E30 + LODWORD(STACK[0x518]) - 501) + (LODWORD(STACK[0x2FC]) ^ (LODWORD(STACK[0x4C8]) - ((2 * LODWORD(STACK[0x4C8])) & 0x83D12F36) + 1105762203)) % 0x101) - 1886059553) ^ 0x1FFE3297) + ((LODWORD(STACK[0x4FC]) % 0x101 - ((2 * (LODWORD(STACK[0x4FC]) % 0x101)) & 0x1DE) - 75925777) ^ 0xBD35594F ^ *(*(&off_1006B4E30 + LODWORD(STACK[0x518]) - 795) + LODWORD(STACK[0x4FC]) % 0x101 - 2));
  v707 = v586 & 0xFBF03902 ^ 0xFDF81C81;
  v708 = v586 & 0x40100900 ^ 0x44180C01 ^ (v679 ^ 0xBBE03082) & v707;
  v709 = LODWORD(STACK[0x444]) ^ (((v586 & 0x50301800 ^ 0x54381C01 ^ (v680 ^ 0x54381C03) & v707) >> v676) + (v708 << v670)) ^ (v706 + 1);
  v710 = v709 - ((2 * v709) & 0x202B424E);
  v711 = v582 & 0xFBF03902 ^ 0xFDF81C81;
  v712 = v582 & 0xB3C00102 ^ 0xB1C80000 ^ (v674 ^ 0x4C303C81) & v711;
  v713 = LODWORD(STACK[0x300]) ^ ((v712 << v675) | ((v582 & 0x32603100 ^ 0x34601481 ^ v711 & (v696 ^ 0x36603581)) >> v691)) ^ LODWORD(STACK[0x494]) ^ __ROR4__(*(v394 + 4 * BYTE1(v683)), 8) ^ __ROR4__(*(v394 + 4 * v673), 16) ^ *(v394 + 4 * BYTE2(v684));
  v714 = __ROR4__(*(v394 + 4 * HIBYTE(v678)), 24);
  v715 = (v713 ^ v714) - ((2 * (v713 ^ v714)) & 0x202B424E);
  v716 = ((v582 & 0x91701102 ^ 0x91701401 ^ (v680 ^ 0x91701501) & v711) >> v676) + (v712 << v670);
  v717 = (((v705 + 2) ^ v716) - ((2 * ((v705 + 2) ^ v716)) & 0xDCBB1D32) - 295858535) ^ LODWORD(STACK[0x330]);
  v718 = (v717 - ((2 * v717) & 0x8089CE44) + 1078257442) ^ LODWORD(STACK[0x35C]);
  v719 = LODWORD(STACK[0x42C]) ^ LODWORD(STACK[0x364]) ^ (v718 - ((2 * v718) & 0xE3B47D8) + 119383020);
  v720 = LODWORD(STACK[0x430]) ^ ((v708 << v675) + ((v586 & 0x32F03900 ^ 0x30F01C00 ^ (v696 ^ 0x32F03D00) & v707) >> v691)) ^ *(v394 + 4 * BYTE2(v678)) ^ __ROR4__(*(v394 + 4 * BYTE1(v684)), 8) ^ __ROR4__(*(v394 + 4 * v683), 16);
  v721 = __ROR4__(*(v394 + 4 * HIBYTE(v673)), 24);
  v722 = LODWORD(STACK[0x570]) ^ LODWORD(STACK[0x300]);
  v723 = v722 ^ (v710 + 269852967);
  v724 = v722 ^ ((v720 ^ v721) - ((2 * (v720 ^ v721)) & 0x202B424E) + 269852967);
  v725 = v722 ^ (v719 - ((2 * v719) & 0x202B424E) + 269852967);
  HIDWORD(v726) = *(v394 + 4 * BYTE1(v725));
  LODWORD(v726) = HIDWORD(v726);
  v727 = (v726 >> 8) ^ __ROR4__(*(v394 + 4 * v724), 16);
  HIDWORD(v726) = *(v394 + 4 * BYTE1(v723));
  LODWORD(v726) = HIDWORD(v726);
  v728 = (v726 >> 8) ^ __ROR4__(*(v394 + 4 * HIBYTE(v724)), 24);
  v729 = (v715 + 269852967) ^ LODWORD(STACK[0x570]);
  HIDWORD(v726) = *(v394 + 4 * ((v715 + 39) ^ LOBYTE(STACK[0x570])));
  LODWORD(v726) = HIDWORD(v726);
  v730 = (v726 >> 16) ^ __ROR4__(*(v394 + 4 * BYTE1(v724)), 8);
  v731 = *(v394 + 4 * BYTE2(v724)) ^ __ROR4__(*(v394 + 4 * v723), 16);
  v732 = v728 ^ *(v394 + 4 * BYTE2(v729)) ^ __ROR4__(*(v394 + 4 * v725), 16);
  LODWORD(STACK[0x4B4]) = v732;
  LODWORD(v726) = __ROR4__(*(v394 + 4 * HIBYTE(v723)), 24);
  v733 = v727 ^ __ROR4__(*(v394 + 4 * HIBYTE(v729)), 24) ^ *(v394 + 4 * BYTE2(v723));
  LODWORD(STACK[0x514]) = v733;
  v734 = v730 ^ v726 ^ *(v394 + 4 * BYTE2(v725));
  v735 = STACK[0x568];
  v736 = (v731 ^ __ROR4__(*(v394 + 4 * HIBYTE(v725)), 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v729)), 8)) + LODWORD(STACK[0x568]) - LODWORD(STACK[0x3CC]);
  LODWORD(STACK[0x3CC]) = v736;
  v737 = v734 + v735 - LODWORD(STACK[0x508]);
  LODWORD(STACK[0x568]) = v737;
  v738 = v582 & 0xC4BDB038 ^ 0xE25ED81C;
  v739 = ((v582 & 0xA92010 ^ 0x484814 ^ v738 & (v679 ^ 0xE6169028)) << v670) ^ ((v582 & 0xC0358010 ^ 0xE2148014 ^ v738 & (v696 ^ 0xE2358014)) >> v699);
  v740 = v586 & 0xC4BDB038 ^ 0xE25ED81C;
  v741 = v680;
  v742 = v586 & 0x80281020 ^ 0xA0085804 ^ (v680 ^ 0xA0285824) & v740;
  v743 = v674;
  LODWORD(STACK[0x37C]) = v740;
  v744 = v586 & 0x44140020 ^ 0x40164800 ^ (v674 ^ 0xA2E9B01C) & v740;
  v745 = v679;
  LODWORD(STACK[0x384]) = v738;
  v746 = v582 & 0x443C9000 ^ 0x621CD000 ^ v738 & (v679 ^ 0x80C3283C);
  v747 = v582 & 0x44B91020 ^ 0x40581004 ^ (v741 ^ 0x44F91024) & v738;
  v748 = v737 ^ LODWORD(STACK[0x488]);
  v749 = STACK[0x4A8];
  v750 = STACK[0x4A8] & 0x100;
  if ((v748 & v750) != 0)
  {
    v750 = -v750;
  }

  v751 = v750 + v748;
  v752 = v586 & 0x80802018 ^ 0x80404018 ^ (v696 ^ 0x80C06018) & (v586 & 0xC4BDB038 ^ 0xE25ED81C);
  v753 = v744 << v695;
  LODWORD(STACK[0x380]) = v752 >> v699;
  v754 = ((v744 << v695) | (v752 >> v699)) ^ LODWORD(STACK[0x32C]) ^ v749 & 0xFFFFFEFF ^ v751;
  v755 = LODWORD(STACK[0x32C]) ^ v749;
  v756 = STACK[0x32C];
  v757 = v749;
  LODWORD(STACK[0x368]) = v755;
  v758 = v755 ^ v739 ^ LODWORD(STACK[0x47C]) ^ v733;
  v759 = LODWORD(STACK[0x460]) ^ __ROR4__(*(v394 + 4 * v754), 16);
  v760 = __ROR4__(*(v394 + 4 * BYTE1(v758)), 8);
  v761 = v742 >> v697;
  LODWORD(STACK[0x378]) = v761;
  v762 = v755 ^ (v761 + v753) ^ LODWORD(STACK[0x41C]) ^ v732;
  LODWORD(STACK[0x35C]) = v747 >> v697;
  v763 = v697;
  v764 = v736 ^ v757 ^ v756;
  LODWORD(STACK[0x32C]) = v764;
  v765 = v764 ^ ((v747 >> v697) + (v746 << v670)) ^ LODWORD(STACK[0x418]);
  v766 = v759 ^ v760 ^ *(v394 + 4 * BYTE2(v762)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v765)), 24);
  v767 = STACK[0x324];
  v639 = (v766 ^ LODWORD(STACK[0x324])) == -1308624398;
  v768 = STACK[0x53C];
  v769 = LODWORD(STACK[0x38C]) ^ (2 * (STACK[0x53C] & LODWORD(STACK[0x38C])));
  v770 = v743;
  LODWORD(STACK[0x348]) = (((v743 & 0xA0112AE2 | STACK[0x52C] & (v769 ^ 0xA0112AE2)) ^ 0xA0112AE2) << v695) + ((v769 & v696) >> v763);
  v771 = v767 ^ 0x7C564AE7;
  v772 = STACK[0x550];
  v773 = LODWORD(STACK[0x4B8]) ^ (2 * (STACK[0x550] & LODWORD(STACK[0x4B8])));
  v774 = ((v696 & v773) >> v763) + (((v745 & 0xA3E0A449 | STACK[0x4D8] & (v773 ^ 0xA3E0A449)) ^ 0xA3E0A449) << v670);
  LODWORD(STACK[0x38C]) = v768 & 0x4F82867E;
  v775 = 2 * (v768 & 0x4F82867E);
  LODWORD(STACK[0x330]) = v775;
  v776 = v770;
  LODWORD(STACK[0x324]) = v775 ^ 0x4F82867E;
  v777 = (v775 & 0x90008D4 ^ 0x9020254 ^ (v741 ^ 0x9020AD6) & (v775 ^ 0x4F82867Eu)) >> v763;
  v778 = (v775 & 0x9F010078 ^ 0x4F800278 ^ (v770 ^ 0x68C86) & (v775 ^ 0x4F82867E)) << v695;
  LODWORD(STACK[0x300]) = v777;
  v779 = (v766 ^ (v777 | v778)) - ((2 * (v766 ^ (v777 | v778))) & 0x9B53662A);
  v780 = v772 ^ 0x307D7981;
  if (v639)
  {
    v780 = 1333954174;
  }

  v781 = (((2 * (v780 & v772)) & 0xA8887056 ^ 0x8800056 ^ ((2 * (v780 & v772)) ^ 0x4F82867E) & (v745 ^ 0x57778FA8)) << v670) + (((2 * (v780 & v772)) & 0xA144E11A ^ 0x100801A ^ ((2 * (v780 & v772)) ^ 0x4F82867E) & (v696 ^ 0xA144E11A)) >> v699);
  v782 = v586 & 0x9F050CFC ^ 0x4F82867E;
  LODWORD(STACK[0x318]) = v782;
  v783 = v696;
  v784 = *(v394 + 4 * HIBYTE(v758));
  v785 = (v586 & 0x1A000C5C ^ 0xA80065E ^ (v696 ^ 0x1A800E5E) & v782) >> v699;
  LODWORD(STACK[0x320]) = v785;
  v786 = v757 ^ (v785 + ((v586 & 0x9704009C ^ 0x4700001E ^ (v745 ^ 0x8838E60) & v782) << v670)) ^ __ROR4__(v784, 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v765)), 8) ^ __ROR4__(*(v394 + 4 * v762), 16) ^ *(v394 + 4 * BYTE2(v754));
  v787 = LODWORD(STACK[0x464]) ^ v771 ^ (v786 - ((2 * v786) & 0x9B53662A) - 844516587);
  v788 = LODWORD(STACK[0x45C]) ^ v757 ^ __ROR4__(*(v394 + 4 * BYTE1(v754)), 8) ^ __ROR4__(*(v394 + 4 * HIBYTE(v762)), 24) ^ __ROR4__(*(v394 + 4 * v765), 16) ^ *(v394 + 4 * BYTE2(v758));
  v789 = v757;
  v790 = LODWORD(STACK[0x454]) ^ v757 ^ *(v394 + 4 * BYTE2(v765)) ^ __ROR4__(*(v394 + 4 * v758), 16) ^ __ROR4__(*(v394 + 4 * BYTE1(v762)), 8);
  v791 = __ROR4__(*(v394 + 4 * HIBYTE(v754)), 24);
  v792 = (v790 ^ v791 ^ v781) - ((2 * (v790 ^ v791 ^ v781)) & 0x9B53662A);
  v793 = v777 ^ v778 ^ v771 ^ (v788 - ((2 * v788) & 0x9B53662A) - 844516587);
  v794 = v776;
  v795 = v582 & 0xEA616044 ^ 0x7530B022;
  LODWORD(STACK[0x364]) = v795;
  v796 = v582 & 0x88206004 ^ 0x1520A020 ^ (v776 ^ 0x62511042) & v795;
  v797 = LODWORD(STACK[0x348]) ^ v774;
  v798 = *(v394 + 4 * HIBYTE(v793));
  v799 = v699;
  LODWORD(STACK[0x348]) = v796 << v670;
  v800 = v797 ^ (v796 << v670) ^ ((v582 & 0x606040 ^ 0x1430A020 ^ (v741 ^ 0x1470E062) & v795) >> v699) ^ LODWORD(STACK[0x43C]) ^ __ROR4__(v798, 24) ^ *(v394 + 4 * BYTE2(v787));
  LODWORD(STACK[0x304]) = v771 ^ v789;
  v801 = v771 ^ v789 ^ (v779 - 844516587);
  v802 = (v792 - 844516587) ^ v771;
  v803 = v800 ^ __ROR4__(*(v394 + 4 * BYTE1(v802)), 8) ^ __ROR4__(*(v394 + 4 * v801), 16);
  v804 = v586;
  v805 = v586 & 0xEA616044 ^ 0x7530B022;
  v806 = v586 & 0x20606004 ^ 0x24202020 ^ (v783 ^ 0x24606024) & v805;
  LODWORD(STACK[0x308]) = v805;
  v807 = v586 & 0x22610000 ^ 0x25301020 ^ (v745 ^ 0xD800E046) & v805;
  v808 = STACK[0x540];
  LODWORD(STACK[0x314]) = v807 << LODWORD(STACK[0x540]);
  v809 = v797;
  v810 = v797 ^ ((v807 << v808) | (v806 >> v763)) ^ LODWORD(STACK[0x328]) ^ __ROR4__(*(v394 + 4 * v793), 16) ^ __ROR4__(*(v394 + 4 * HIBYTE(v787)), 24) ^ *(v394 + 4 * BYTE2(v802)) ^ __ROR4__(*(v394 + 4 * BYTE1(v801)), 8);
  v811 = (v586 & 0x2A206004 ^ 0x24202000 ^ (v794 ^ 0xD1519062) & (v586 & 0xEA616044 ^ 0x7530B022)) << v808;
  LODWORD(STACK[0x328]) = v811;
  v812 = v808;
  v813 = v806 >> v699;
  v639 = v813 == 0;
  LODWORD(STACK[0x2B0]) = v809;
  v814 = __ROR4__(__ROR4__(v809 ^ (v811 + v813) ^ LODWORD(STACK[0x334]) ^ __ROR4__(*(v394 + 4 * v802), 16) ^ *(v394 + 4 * BYTE2(v793)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v801)), 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v787)), 8), 10) ^ 0x978A89C2, 22) ^ 0x2A270A5E;
  v816 = LODWORD(STACK[0x53C]) ^ 0xACF4FDD;
  if (v639)
  {
    v816 = 1966125090;
  }

  v817 = v763;
  v815 = STACK[0x53C];
  v818 = v809 ^ ((((2 * (v816 & v815)) & 0xF68A1892 ^ 0x74001002 ^ (v741 ^ 0xF68A1890) & ((2 * (v816 & v815)) ^ 0x7530B022)) >> v763) + (((2 * (v816 & v815)) & 0x7193520E ^ 0x71101002 ^ ((2 * (v816 & v815)) ^ 0x7530B022) & (v745 ^ 0x8E6CADF0)) << v670)) ^ LODWORD(STACK[0x438]) ^ *(v394 + 4 * BYTE2(v801)) ^ __ROR4__(*(v394 + 4 * v787), 16) ^ __ROR4__(*(v394 + 4 * HIBYTE(v802)), 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v793)), 8);
  v819 = (*(v394 + 4 * BYTE1(v803)) << (STACK[0x360] & 0x18) << (STACK[0x360] & 0x18 ^ 0x18)) + (*(v394 + 4 * BYTE1(v803)) >> 8);
  v820 = v794;
  v821 = v582 & 0x13B79DC2 ^ 0x89DBCEE1;
  v822 = LODWORD(STACK[0x424]) ^ (((v582 & 0x10178000 ^ 0x801B8220 ^ (v794 ^ 0xBE05DC3) & v821) << v812) + ((v582 & 0x11910C40 ^ 0x81990E60 ^ v821 & (v783 ^ 0x91990E60)) >> v799)) ^ __ROR4__(*(v394 + 4 * BYTE1(v810)), 8) ^ __ROR4__(*(v394 + 4 * HIBYTE(v814)), 24) ^ __ROR4__(*(v394 + 4 * v818), 16) ^ *(v394 + 4 * BYTE2(v803));
  v823 = STACK[0x570];
  v824 = (v822 - ((2 * v822) & 0x202B424E) + 269852967) ^ LODWORD(STACK[0x570]);
  v825 = v804 & 0x13B79DC2 ^ 0x89DBCEE1;
  LODWORD(STACK[0x360]) = v825;
  v826 = (v804 & 0xB78000 ^ 0x93C220 ^ (v741 ^ 0xB7C222) & v825) >> v817;
  v827 = v826 ^ ((v804 & 0x1048880 ^ 0x9488A81 ^ (v745 ^ 0x92B35562) & v825) << v670) ^ __ROR4__(*(v394 + 4 * v803), 16) ^ __ROR4__(*(v394 + 4 * HIBYTE(v810)), 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v814)), 8) ^ *(v394 + 4 * BYTE2(v818));
  v828 = LODWORD(STACK[0x428]) ^ v823 ^ (v827 - ((2 * v827) & 0x202B424E) + 269852967);
  v829 = *(v394 + 4 * v810);
  v830 = *(v394 + 4 * HIBYTE(v818));
  v831 = (v804 & 0x13838542 ^ 0x98B8641 ^ (v820 ^ 0x807458A0) & v825) << v670;
  LODWORD(STACK[0x334]) = v831;
  v832 = (v826 | v831) ^ __ROR4__(v829, 16) ^ __ROR4__(v830, 24);
  LODWORD(STACK[0x2D8]) = v821;
  LOBYTE(v820) = v812;
  v833 = LODWORD(STACK[0x434]) ^ (((v582 & 0x10841DC2 ^ 0x80C04EE0 ^ v821 & (v783 ^ 0x90C45FE2)) >> v799) | ((v582 & 0x3B68802 ^ 0x899AC800 ^ v821 & (v745 ^ 0x104117E1)) << v812)) ^ __ROR4__(*(v394 + 4 * v814), 16) ^ __ROR4__(*(v394 + 4 * HIBYTE(v803)), 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v818)), 8) ^ *(v394 + 4 * BYTE2(v810));
  v834 = (v828 - ((2 * v828) & 0x9B53662A) - 844516587) ^ v771;
  v835 = STACK[0x520];
  v836 = *(STACK[0x520] + 4 * HIBYTE(v834));
  HIDWORD(v838) = v836 ^ 0x69E1;
  LODWORD(v838) = v836 ^ 0x4C1D0000;
  v837 = v838 >> 16;
  v839 = (v833 - ((2 * v833) & 0x9B53662A) - 844516587) ^ v771;
  v840 = (v839 - ((2 * v839) & 0x202B424E) + 269852967) ^ v823;
  v841 = *(STACK[0x520] + 4 * BYTE2(v840));
  HIDWORD(v838) = v841 ^ 0x1D69E1;
  LODWORD(v838) = v841 ^ 0x4C000000;
  v842 = v838 >> 24;
  v843 = (v824 - 844516587 + (~(2 * v824) | 0x64AC99D5) + 1) ^ v771;
  v844 = *(STACK[0x520] + 4 * HIBYTE(v843));
  HIDWORD(v838) = v844 ^ 0x69E1;
  LODWORD(v838) = v844 ^ 0x4C1D0000;
  v845 = v838 >> 16;
  v846 = *(STACK[0x520] + 4 * v840);
  v847 = v832 ^ v819;
  HIDWORD(v838) = v846 ^ 0xFFFFFFE1;
  LODWORD(v838) = v846 ^ 0x4C1D6900;
  v848 = v838 >> 8;
  v849 = *(STACK[0x520] + 4 * BYTE2(v834));
  v850 = v847 ^ *(v394 + 4 * BYTE2(v814));
  HIDWORD(v838) = v849 ^ 0x1D69E1;
  LODWORD(v838) = v849 ^ 0x4C000000;
  v851 = v838 >> 24;
  LODWORD(STACK[0x2FC]) = v843;
  v852 = *(v835 + 4 * BYTE2(v843));
  v853 = LODWORD(STACK[0x420]) ^ v771 ^ (v850 - ((2 * v850) & 0x9B53662A) - 844516587);
  HIDWORD(v838) = v852 ^ 0x1D69E1;
  LODWORD(v838) = v852 ^ 0x4C000000;
  v854 = v838 >> 24;
  v855 = (v853 - ((2 * v853) & 0x202B424E) + 269852967) ^ v823;
  v856 = *(v835 + 4 * HIBYTE(v855));
  HIDWORD(v838) = v856 ^ 0x69E1;
  LODWORD(v838) = v856 ^ 0x4C1D0000;
  v857 = v838 >> 16;
  v858 = *(v835 + 4 * v843);
  HIDWORD(v838) = v858 ^ 0xFFFFFFE1;
  LODWORD(v838) = v858 ^ 0x4C1D6900;
  v859 = v838 >> 8;
  LODWORD(STACK[0x2F8]) = (v848 ^ v837) + 1276996065 - ((2 * (v848 ^ v837)) & 0x983AD3C2);
  v860 = *(v835 + 4 * v855);
  v861 = v851 + 1276996065 - ((2 * v851) & 0x983AD3C2);
  HIDWORD(v838) = v860 ^ 0xFFFFFFE1;
  LODWORD(v838) = v860 ^ 0x4C1D6900;
  v862 = v845 ^ (v838 >> 8) ^ v842;
  v863 = *(v835 + 4 * BYTE2(v855));
  HIDWORD(v838) = v863 ^ 0x1D69E1;
  LODWORD(v838) = v863 ^ 0x4C000000;
  LODWORD(STACK[0x2F4]) = v838 >> 24;
  v864 = *(v835 + 4 * v834);
  HIDWORD(v838) = v864 ^ 0xFFFFFFE1;
  LODWORD(v838) = v864 ^ 0x4C1D6900;
  v865 = (v857 ^ (v838 >> 8) ^ v854) + 1276996065 - ((2 * (v857 ^ (v838 >> 8) ^ v854)) & 0x983AD3C2);
  v866 = *(v835 + 4 * HIBYTE(v840));
  HIDWORD(v838) = v866 ^ 0x69E1;
  LODWORD(v838) = v866 ^ 0x4C1D0000;
  v867 = LODWORD(STACK[0x4CC]) ^ LODWORD(STACK[0x390]);
  v868 = v867 ^ *(v835 + 4 * BYTE1(v855)) ^ v859 ^ v861 ^ (v838 >> 16);
  LODWORD(STACK[0x390]) = v868 + LODWORD(STACK[0x3E8]) - 2 * (v868 & STACK[0x3E8]);
  v869 = v867 ^ LODWORD(STACK[0x4C4]);
  LODWORD(STACK[0x4CC]) = v869;
  v870 = *(v835 + 4 * BYTE1(v840));
  LODWORD(STACK[0x2C4]) = v869 ^ 0xAF695C31;
  LODWORD(STACK[0x4C4]) = v869 ^ 0xAF695C31 ^ LODWORD(STACK[0x404]) ^ v870 ^ v865;
  LODWORD(STACK[0x2E0]) = v869 ^ 0xAF695C31 ^ LODWORD(STACK[0x408]) ^ *(v835 + 4 * BYTE1(v834)) ^ (v862 + 1276995840 + (~(2 * v862) | 0x67C52C3D) + 226);
  v871 = (v804 & 0x80250018 ^ 0x8046481C ^ (v745 ^ 0x6698B020) & STACK[0x37C]) << STACK[0x560];
  v872 = LODWORD(STACK[0x32C]) ^ (LODWORD(STACK[0x380]) | v871) ^ LODWORD(STACK[0x338]);
  v873 = v820;
  v874 = (v582 & 0xC0891028 ^ 0xE00A100C ^ (LODWORD(STACK[0x4E4]) ^ 0x674E810) & STACK[0x384]) << v820;
  v875 = LODWORD(STACK[0x368]) ^ (LODWORD(STACK[0x35C]) | v874) ^ LODWORD(STACK[0x33C]);
  v876 = STACK[0x538];
  v877 = LODWORD(STACK[0x368]) ^ (v874 | ((v582 & 0xC0902030 ^ 0xC2504014 ^ STACK[0x384] & (LODWORD(STACK[0x538]) ^ 0xC2D06034)) >> LODWORD(STACK[0x548])));
  v878 = *(v394 + 4 * HIBYTE(v872));
  HIDWORD(v838) = v878;
  LODWORD(v838) = (v878 ^ -v878 ^ (103520 - (v878 ^ 0x19460))) + 103520;
  v879 = v877 ^ LODWORD(STACK[0x344]);
  v880 = v875 ^ LODWORD(STACK[0x568]);
  v881 = LODWORD(STACK[0x368]) ^ (LODWORD(STACK[0x378]) + v871) ^ LODWORD(STACK[0x340]) ^ LODWORD(STACK[0x4B4]);
  v882 = v879 ^ LODWORD(STACK[0x514]);
  v883 = LODWORD(STACK[0x34C]) ^ LODWORD(STACK[0x4A8]) ^ __ROR4__(*(v394 + 4 * (v875 ^ LOBYTE(STACK[0x568]))), 16) ^ *(v394 + 4 * BYTE2(v881)) ^ (v838 >> 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v882)), 8);
  v884 = (LODWORD(STACK[0x300]) | ((STACK[0x330] & 0x13050CFC ^ 0x4300867C ^ STACK[0x324] & (v745 ^ 0x8C820002)) << STACK[0x560])) ^ LODWORD(STACK[0x4A8]) ^ LODWORD(STACK[0x350]) ^ *(v394 + 4 * BYTE2(v882)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v881)), 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v880)), 8);
  LODWORD(v838) = __ROR4__(*(v394 + 4 * v872), 16);
  v885 = (v884 ^ v838) - ((2 * (v884 ^ v838)) & 0x9B53662A);
  v886 = (v804 & 0x9F000450 ^ 0x4F820452 ^ (LODWORD(STACK[0x4E4]) ^ 0x58AAC) & STACK[0x318]) << v873;
  LODWORD(v838) = __ROR4__(STACK[0x38C], 16) ^ 0xDF5DEAD8;
  HIDWORD(v838) = v838;
  v887 = v838 >> 15;
  v888 = v886 ^ LODWORD(STACK[0x320]) ^ v771 ^ (v883 - ((2 * v883) & 0x9B53662A) - 844516587);
  v889 = (((v887 & 0x20504D6 ^ 0x420300C4 ^ (v887 ^ 0x9A3338C5) & (LODWORD(STACK[0x538]) ^ 0x420704D6)) >> LODWORD(STACK[0x548])) + ((v887 & 0x4705085C ^ 0x2018846 ^ (v887 ^ 0x9A3338C5) & (v745 ^ 0x988206A0)) << STACK[0x560])) ^ HIWORD(*(v394 + 4 * v882)) ^ (*(v394 + 4 * v882) << 16) ^ __ROR4__(*(v394 + 4 * HIBYTE(v880)), 24) ^ *(v394 + 4 * BYTE2(v872));
  LODWORD(v838) = __ROR4__(*(v394 + 4 * BYTE1(v881)), 8);
  v890 = LODWORD(STACK[0x304]) ^ LODWORD(STACK[0x354]) ^ ((v889 ^ v838) - ((2 * (v889 ^ v838)) & 0x9B53662A) - 844516587);
  v891 = STACK[0x558];
  v892 = LODWORD(STACK[0x358]) ^ (((v804 & 0x950100C4 ^ 0x5028244 ^ (LODWORD(STACK[0x4F0]) ^ 0x950382C6) & STACK[0x318]) >> LODWORD(STACK[0x558])) | v886) ^ __ROR4__(*(v394 + 4 * BYTE1(v872)), 8) ^ *(v394 + 4 * BYTE2(v880)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v882)), 24);
  LODWORD(v838) = __ROR4__(*(v394 + 4 * v881), 16);
  v893 = LODWORD(STACK[0x304]) ^ ((v892 ^ v838) - ((2 * (v892 ^ v838)) & 0x9B53662A) - 844516587);
  HIDWORD(v838) = *(v394 + 4 * HIBYTE(v888));
  LODWORD(v838) = HIDWORD(v838);
  v894 = (v885 - 844516587) ^ v771;
  v895 = (v838 >> 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v893)), 8) ^ *(v394 + 4 * BYTE2(v894));
  HIDWORD(v838) = *(v394 + 4 * v890);
  LODWORD(v838) = HIDWORD(v838);
  v896 = ((LODWORD(STACK[0x4F0]) ^ 0x83010002) & STACK[0x308] ^ (v804 & 0x82010000 | 0x1000000)) >> LODWORD(STACK[0x548]);
  v897 = LODWORD(STACK[0x2B0]) ^ (v896 | LODWORD(STACK[0x314])) ^ LODWORD(STACK[0x36C]) ^ __ROR4__(*(v394 + 4 * HIBYTE(v894)), 24) ^ __ROR4__(*(v394 + 4 * v888), 16) ^ *(v394 + 4 * BYTE2(v893)) ^ __ROR4__(*(v394 + 4 * BYTE1(v890)), 8);
  v898 = (v582 & 0xE8606000 ^ 0x60203002 ^ STACK[0x364] & (LODWORD(STACK[0x538]) ^ 0xE8607002)) >> LODWORD(STACK[0x558]);
  v899 = LODWORD(STACK[0x2B0]) ^ (LODWORD(STACK[0x348]) | v898) ^ LODWORD(STACK[0x370]) ^ __ROR4__(*(v394 + 4 * BYTE1(v894)), 8) ^ *(v394 + 4 * BYTE2(v888)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v890)), 24) ^ __ROR4__(*(v394 + 4 * v893), 16);
  v900 = LODWORD(STACK[0x2B0]) ^ (v896 + LODWORD(STACK[0x328])) ^ LODWORD(STACK[0x374]) ^ __ROR4__(*(v394 + 4 * HIBYTE(v893)), 24) ^ *(v394 + 4 * BYTE2(v890)) ^ __ROR4__(*(v394 + 4 * v894), 16) ^ __ROR4__(*(v394 + 4 * BYTE1(v888)), 8);
  v901 = LODWORD(STACK[0x2B0]) ^ (v898 | ((v582 & 0xE0200040 ^ 0x71200020 ^ STACK[0x364] & (v745 ^ 0xE51F006)) << STACK[0x560])) ^ LODWORD(STACK[0x398]) ^ v895 & 0x7FFFFFFF ^ ((v838 >> 16) + (v895 & 0x80000000));
  if (v900 >= 0x905AB459)
  {
    v902 = v900 + 1873103783;
  }

  else
  {
    v902 = v900;
  }

  if (v900 >= 0x905AB459)
  {
    v903 = 89;
  }

  else
  {
    v903 = 0;
  }

  v904 = v582 & 0x3261C82 ^ 0x90A0C80 ^ (LODWORD(STACK[0x4F0]) ^ 0xB2E1C80) & STACK[0x2D8];
  v905 = (v582 & 0x11821502 ^ 0x9824421 ^ STACK[0x2D8] & (v745 ^ 0x827D8AC0)) << v873;
  v906 = STACK[0x548];
  v907 = LODWORD(STACK[0x3A4]) ^ ((v904 >> LODWORD(STACK[0x548])) | v905) ^ __ROR4__(*(v394 + 4 * HIBYTE(v901)), 24) ^ *(v394 + 4 * BYTE2(v897)) ^ __ROR4__(*(v394 + 4 * v899), 16);
  v908 = __ROR4__(*(v394 + 4 * BYTE1(v900)), 8);
  v909 = ((v907 ^ v908) - ((2 * (v907 ^ v908)) & 0x9B53662A) - 844516587) ^ v771;
  v910 = v909 - ((2 * v909) & 0x202B424E);
  v911 = STACK[0x570];
  v912 = LODWORD(STACK[0x570]) ^ (LODWORD(STACK[0x334]) | ((v804 & 0x13128D42 ^ 0x95A8C41 ^ (v876 ^ 0x1B5A8D43) & STACK[0x360]) >> v891)) ^ (LODWORD(STACK[0x3A8]) + 269852967 + (~(2 * LODWORD(STACK[0x3A8])) | 0xDFD4BDB1) + 1) ^ __ROR4__(*(v394 + 4 * BYTE1(v899)), 8) ^ *(v394 + 4 * BYTE2(v900)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v897)), 24);
  v913 = __ROR4__(*(v394 + 4 * v901), 16);
  v914 = (v912 ^ v913) - ((2 * (v912 ^ v913)) & 0x9B53662A);
  if (v902)
  {
    v903 = v900;
  }

  v915 = (LODWORD(STACK[0x334]) | ((v804 & 0x11310C00 ^ 0x9114E01 ^ (v876 ^ 0x19314E01) & STACK[0x360]) >> LODWORD(STACK[0x548]))) ^ __ROR4__(*(v394 + 4 * v903), 16) ^ *(v394 + 4 * BYTE2(v901)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v899)), 24);
  v916 = __ROR4__(*(v394 + 4 * BYTE1(v897)), 8);
  v917 = LODWORD(STACK[0x3AC]) ^ v911 ^ ((v915 ^ v916) - ((2 * (v915 ^ v916)) & 0x202B424E) + 269852967);
  v918 = LODWORD(STACK[0x3B0]) ^ (v904 >> v891) ^ __ROR4__(*(v394 + 4 * v897), 16) ^ *(v394 + 4 * BYTE2(v899)) ^ __ROR4__(*(v394 + 4 * BYTE1(v901)), 8);
  v919 = __ROR4__(*(v394 + 4 * HIBYTE(v900)), 24);
  v920 = (v910 + 269852967) ^ v911;
  v921 = ((v918 ^ v919) - ((2 * (v918 ^ v919)) & 0x202B424E) + 269852967) ^ v911;
  v922 = (v914 - 844516587) ^ v771;
  v923 = (v917 - ((2 * v917) & 0x9B53662A) - 844516587) ^ v771;
  v924 = v771 ^ v905 ^ (v921 - ((2 * v921) & 0x9B53662A) - 844516587);
  v925 = *(v835 + 4 * HIBYTE(v920));
  HIDWORD(v927) = v925 ^ 0x69E1;
  LODWORD(v927) = v925 ^ 0x4C1D0000;
  v926 = v927 >> 16;
  v928 = *(v835 + 4 * v923);
  HIDWORD(v927) = v928 ^ 0xFFFFFFE1;
  LODWORD(v927) = v928 ^ 0x4C1D6900;
  v929 = v927 >> 8;
  v930 = *(v835 + 4 * HIBYTE(v924));
  HIDWORD(v927) = v930 ^ 0x69E1;
  LODWORD(v927) = v930 ^ 0x4C1D0000;
  LODWORD(STACK[0x4B8]) = 1276996065;
  v931 = (v927 >> 16) + 1276996065 - ((2 * (v927 >> 16)) & 0x983AD3C2);
  v932 = *(v835 + 4 * v920);
  HIDWORD(v927) = v932 ^ 0xFFFFFFE1;
  LODWORD(v927) = v932 ^ 0x4C1D6900;
  v933 = v927 >> 8;
  v934 = *(v835 + 4 * v924);
  HIDWORD(v927) = v934 ^ 0xFFFFFFE1;
  LODWORD(v927) = v934 ^ 0x4C1D6900;
  v935 = v927 >> 8;
  v936 = *(v835 + 4 * HIBYTE(v923));
  HIDWORD(v927) = v936 ^ 0x69E1;
  LODWORD(v927) = v936 ^ 0x4C1D0000;
  v937 = v933 + 1276996065 - ((2 * v933) & 0x983AD3C2);
  v938 = ((v927 >> 16) ^ v935) + 1276996065 - ((2 * ((v927 >> 16) ^ v935)) & 0x983AD3C2);
  v939 = *(v835 + 4 * BYTE2(v922));
  HIDWORD(v927) = v939 ^ 0x1D69E1;
  LODWORD(v927) = v939 ^ 0x4C000000;
  v940 = (v929 ^ v926 ^ (v927 >> 24)) + 1276996065 - ((2 * (v929 ^ v926 ^ (v927 >> 24))) & 0x983AD3C2);
  v941 = LODWORD(STACK[0x2C4]) ^ LODWORD(STACK[0x3B4]) ^ *(v835 + 4 * BYTE1(LODWORD(STACK[0x2FC]))) ^ LODWORD(STACK[0x2F4]) ^ LODWORD(STACK[0x2F8]);
  v942 = STACK[0x508];
  v943 = STACK[0x4C4];
  v944 = STACK[0x2E0];
  if (STACK[0x508])
  {
    v945 = STACK[0x4C4];
  }

  else
  {
    v945 = STACK[0x2E0];
  }

  if (v942)
  {
    v943 = LODWORD(STACK[0x2C4]) ^ LODWORD(STACK[0x3B4]) ^ *(v835 + 4 * BYTE1(LODWORD(STACK[0x2FC]))) ^ LODWORD(STACK[0x2F4]) ^ LODWORD(STACK[0x2F8]);
    v941 = LODWORD(STACK[0x4D0]) ^ 0xBBC3A36D ^ LODWORD(STACK[0x390]);
  }

  else
  {
    v944 = LODWORD(STACK[0x4D0]) ^ 0xBBC3A36D ^ LODWORD(STACK[0x390]);
  }

  v946 = *(v835 + 4 * v922);
  HIDWORD(v948) = v946 ^ 0xFFFFFFE1;
  LODWORD(v948) = v946 ^ 0x4C1D6900;
  v947 = v948 >> 8;
  v949 = *(v835 + 4 * HIBYTE(v922));
  HIDWORD(v948) = v949 ^ 0x69E1;
  LODWORD(v948) = v949 ^ 0x4C1D0000;
  v950 = v948 >> 16;
  v951 = LODWORD(STACK[0x4B4]) + (LODWORD(STACK[0x3CC]) ^ ((LODWORD(STACK[0x568]) ^ 0xAF0C9DA) + 1847950559)) + LODWORD(STACK[0x514]) + 1617857591;
  v952 = *(v835 + 4 * BYTE2(v924));
  HIDWORD(v948) = v952 ^ 0x1D69E1;
  LODWORD(v948) = v952 ^ 0x4C000000;
  v953 = v948 >> 24;
  v954 = *(v835 + 4 * BYTE2(v920));
  HIDWORD(v948) = v954 ^ 0x1D69E1;
  LODWORD(v948) = v954 ^ 0x4C000000;
  v955 = v948 >> 24;
  v956 = *(v835 + 4 * BYTE2(v923));
  HIDWORD(v948) = v956 ^ 0x1D69E1;
  LODWORD(v948) = v956 ^ 0x4C000000;
  v957 = LODWORD(STACK[0x4CC]) ^ 0xA70AC893;
  v958 = v951 ^ 0xDC427767;
  v959 = v957 ^ LODWORD(STACK[0x3B8]) ^ v951 ^ 0xDC427767 ^ *(v835 + 4 * BYTE1(v922)) ^ v955 ^ v938;
  v960 = v957 ^ LODWORD(STACK[0x3C4]) ^ v951 ^ 0xDC427767 ^ *(v835 + 4 * BYTE1(v920)) ^ v947 ^ v931 ^ (v948 >> 24);
  v961 = v957 ^ LODWORD(STACK[0x3C8]) ^ v951 ^ 0xDC427767 ^ *(v835 + 4 * BYTE1(v923)) ^ v950 ^ v953 ^ v937;
  v962 = v957 ^ LODWORD(STACK[0x3D0]) ^ v951 ^ 0xDC427767 ^ *(v835 + 4 * BYTE1(v924)) ^ v940;
  if (v942)
  {
    v963 = v960;
  }

  else
  {
    v963 = v959;
  }

  if (v942)
  {
    v964 = v961;
  }

  else
  {
    v964 = v960;
  }

  if (v942)
  {
    v965 = v962;
  }

  else
  {
    v965 = v961;
  }

  if (v942)
  {
    v966 = v959;
  }

  else
  {
    v966 = v962;
  }

  if ((v942 & 2) != 0)
  {
    v967 = v945;
  }

  else
  {
    v967 = v941;
  }

  if ((v942 & 2) != 0)
  {
    v968 = v966;
  }

  else
  {
    v968 = v964;
  }

  if ((v942 & 2) != 0)
  {
    v969 = v944;
  }

  else
  {
    v969 = v943;
  }

  v970 = v969 + 333796165 * ((v968 ^ 0x86394A2) - (v967 ^ v958));
  v971 = STACK[0x53C];
  if ((v942 & 2) != 0)
  {
    v945 = v941;
  }

  else
  {
    v943 = v944;
  }

  if ((v942 & 2) != 0)
  {
    v976 = v963;
  }

  else
  {
    v976 = v965;
  }

  if ((v942 & 2) != 0)
  {
    v977 = v965;
  }

  else
  {
    v977 = v963;
  }

  if ((v942 & 2) != 0)
  {
    v978 = v964;
  }

  else
  {
    v978 = v966;
  }

  v979 = v951 ^ 0xD421E3C5;
  v980 = v979 ^ v977 ^ v945 ^ v970;
  v981 = v967 ^ v943 ^ v978 ^ v976 ^ v980;
  v982 = v943 ^ v958;
  v983 = v979 ^ v968 ^ v970 ^ v981;
  v984 = v983 ^ v977;
  v985 = v984 ^ v958 ^ (v980 + 657378641 * ((v943 ^ v958) + (v976 ^ 0xF79C6B5D)) + 657378641);
  v986 = v984 ^ v982 ^ 0x86394A2;
  v987 = v978 ^ v958 ^ v981;
  v988 = v968 ^ v976 ^ v983;
  v989 = STACK[0x540];
  v990 = STACK[0x52C];
  v991 = STACK[0x560];
  v992 = STACK[0x4E0];
  v993 = v906;
  v994 = STACK[0x4D8];
  v973 = LODWORD(STACK[0x408]) ^ (2 * (STACK[0x408] & LODWORD(STACK[0x550])));
  v995 = ((v973 & STACK[0x4E0]) >> v906) + ((v973 & STACK[0x4D8]) << LODWORD(STACK[0x540]));
  v975 = LODWORD(STACK[0x3B4]) ^ (2 * (STACK[0x3B4] & LODWORD(STACK[0x550])));
  v972 = LODWORD(STACK[0x404]) ^ (2 * (STACK[0x404] & LODWORD(STACK[0x53C])));
  v974 = LODWORD(STACK[0x3E8]) ^ (2 * (STACK[0x3E8] & LODWORD(STACK[0x53C])));
  v996 = (((v804 & 0xC8620220 ^ 0x60300432 ^ (LODWORD(STACK[0x500]) ^ 0x701F9C4) & (v804 & 0xCA63DB64 ^ 0x6531EDB2)) << v989) | ((v804 & 0x4223C000 ^ 0x6431E000 ^ (v876 ^ 0x6633E000) & (v804 & 0xCA63DB64 ^ 0x6531EDB2)) >> v891)) ^ LODWORD(STACK[0x4C8]) ^ LODWORD(STACK[0x40C]) ^ LODWORD(STACK[0x414]) ^ LODWORD(STACK[0x41C]) ^ LODWORD(STACK[0x418]) ^ LODWORD(STACK[0x3F8]) ^ LODWORD(STACK[0x458]) ^ LODWORD(STACK[0x430]) ^ LODWORD(STACK[0x440]) ^ LODWORD(STACK[0x42C]) ^ LODWORD(STACK[0x448]) ^ LODWORD(STACK[0x46C]) ^ LODWORD(STACK[0x478]) ^ LODWORD(STACK[0x468]) ^ LODWORD(STACK[0x444]) ^ LODWORD(STACK[0x490]) ^ LODWORD(STACK[0x3E4]) ^ LODWORD(STACK[0x49C]) ^ LODWORD(STACK[0x4A4]) ^ LODWORD(STACK[0x4F8]) ^ LODWORD(STACK[0x3D8]) ^ LODWORD(STACK[0x4A0]) ^ LODWORD(STACK[0x4EC]) ^ LODWORD(STACK[0x4F4]) ^ LODWORD(STACK[0x4E8]) ^ LODWORD(STACK[0x3F4]) ^ LODWORD(STACK[0x470]) ^ LODWORD(STACK[0x498]) ^ LODWORD(STACK[0x488]) ^ LODWORD(STACK[0x494]) ^ LODWORD(STACK[0x47C]) ^ LODWORD(STACK[0x460]) ^ LODWORD(STACK[0x454]) ^ LODWORD(STACK[0x45C]) ^ LODWORD(STACK[0x464]) ^ LODWORD(STACK[0x438]) ^ LODWORD(STACK[0x420]) ^ LODWORD(STACK[0x43C]) ^ LODWORD(STACK[0x424]) ^ LODWORD(STACK[0x434]) ^ LODWORD(STACK[0x428]) ^ (((v972 & v992) >> v906) + ((v972 & STACK[0x52C]) << STACK[0x560])) ^ v995 ^ (((v974 & STACK[0x52C]) << STACK[0x560]) + ((v974 & v876) >> v891)) ^ (((v975 & v992) >> v891) | ((v975 & STACK[0x4D8]) << v989));
  v997 = STACK[0x4FC];
  v998 = STACK[0x4FC] & 0x8000000;
  if ((v996 & v998) != 0)
  {
    v998 = -v998;
  }

  v999 = v987 ^ v985;
  v1000 = ((v988 ^ v986 ^ v999) + 341792155 * (((v998 + v996) ^ v997 & 0xF7FFFFFF) - LODWORD(STACK[0x4C8]))) ^ 0x917724CF;
  v1001 = v1000 ^ (2 * (v1000 & v971));
  v1002 = v997 ^ LODWORD(STACK[0x504]) ^ v996;
  v1003 = v1002 ^ 0xB2057D81 ^ v985 ^ (2 * ((v1002 ^ 0xB2057D81 ^ v985) & v971));
  v1004 = v1002 ^ 0xDA1BFE4 ^ v986 ^ (2 * ((v1002 ^ 0xDA1BFE4 ^ v986) & STACK[0x550]));
  v1005 = v1002 ^ 0x2C1FEDEB ^ v999 ^ (2 * ((v1002 ^ 0x2C1FEDEB ^ v999) & v971));
  v1006 = LODWORD(STACK[0x388]) ^ LODWORD(STACK[0x214]);
  LODWORD(STACK[0x570]) = v1006;
  v1007 = ((v1004 & v992) >> v891) ^ ((v1004 & v994) << v991);
  v1008 = ((v1005 & v990) << v991) ^ ((v1005 & v992) >> v891);
  v1009 = ((v1003 & v990) << v989) ^ v1007 ^ ((v1003 & v876) >> v906);
  v1010 = v1009 ^ a57 ^ ((v1001 & v992) >> v906) ^ ((v1001 & v994) << v991);
  v1011 = (v1008 - ((2 * v1008) & 0xFBD594D8) + 2112539244) ^ a57;
  v1012 = (v1010 - ((2 * v1010) & 0xFBD594D8) + 2112539244) ^ v1153;
  v1013 = v1011 ^ v1153 ^ v1009;
  v1014 = LODWORD(STACK[0x2B8]) ^ v1154 ^ v1155 ^ (v1013 - ((2 * v1013) & 0x196C9248) + 213272868);
  v1015 = LODWORD(STACK[0x2B8]) ^ v1156 ^ v1157 ^ (v1012 - ((2 * v1012) & 0x5C0C4D6A) + 772155061);
  v1016 = v1006 ^ a104 & 0x18DD146C ^ a107 ^ (a57 - ((2 * a57) & 0x5BFFBC62) + 771743281) ^ 0x97654EB5 ^ v1007;
  v1017 = v1011 ^ (v1016 - ((2 * v1016) & 0xFBD594D8) + 2112539244) ^ v1012;
  v1018 = *(v394 + 4 * BYTE2(v1014)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v1015)), 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v1017)), 8);
  v1019 = LODWORD(STACK[0x2B8]) ^ v1158 ^ v1159 ^ v1013 ^ ((v1011 ^ v1153) - ((2 * (v1011 ^ v1153)) & 0x80B818F6) + 1079774331) ^ v1012;
  HIDWORD(v1020) = *(v394 + 4 * v1019);
  LODWORD(v1020) = HIDWORD(v1020);
  v1021 = v1018 + (v1020 >> 16) - 2 * ((v1020 >> 16) & v1018);
  HIDWORD(v1020) = *(v394 + 4 * HIBYTE(v1019));
  LODWORD(v1020) = HIDWORD(v1020);
  v1022 = *(v394 + 4 * BYTE2(v1019)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v1017)), 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v1015)), 8) ^ __ROR4__(*(v394 + 4 * (LOBYTE(STACK[0x2B8]) ^ v1154 ^ v1155 ^ (v1013 - ((2 * v1013) & 0x48) + 36))), 16);
  v1023 = (*(v394 + 4 * BYTE2(v1015)) + (v1020 >> 24) - 2 * ((v1020 >> 24) & *(v394 + 4 * BYTE2(v1015)))) ^ __ROR4__(*(v394 + 4 * BYTE1(v1014)), 8) ^ __ROR4__(*(v394 + 4 * v1017), 16);
  v1024 = ((a108 << v991) + ((v876 & a110) >> v993)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v1014)), 24) ^ *(v394 + 4 * BYTE2(v1017)) ^ __ROR4__(*(v394 + 4 * BYTE1(v1019)), 8) ^ __ROR4__(*(v394 + 4 * v1015), 16);
  LODWORD(STACK[0x4F4]) = a100 & 0x15C0A8EC;
  LODWORD(STACK[0x4F8]) = a68 + (a63 >> v993);
  LODWORD(STACK[0x4FC]) = a70 + ((a91 & v876) >> v891);
  LODWORD(STACK[0x500]) = (a61 >> v993) + a71;
  LODWORD(STACK[0x504]) = a90 & 0x990E54C0;
  LODWORD(STACK[0x508]) = a89 & 0x6FC781DE;
  LODWORD(STACK[0x514]) = a88 & 0x5FAC7821;
  LODWORD(STACK[0x52C]) = a74 + (a86 << v989);
  LODWORD(STACK[0x538]) = (a84 << v991) + a73;
  LODWORD(STACK[0x540]) = (a83 >> v993) + a72;
  LODWORD(STACK[0x53C]) = a85 & 0x7CDEDDF;
  LODWORD(STACK[0x558]) = a76 + (a81 << v991);
  LODWORD(STACK[0x548]) = (a80 << v989) + a75;
  LODWORD(STACK[0x550]) = a82 & 0xC63B8547;
  LODWORD(STACK[0x560]) = a79 & 0x56965EAD;
  LODWORD(STACK[0x568]) = (a60 >> v993) + a77;
  v1025 = a126 ^ ((v1160 + 1653762854) ^ 0x42AEC5E4) & a116 ^ 0xCD409AC9 ^ (v1021 - ((2 * v1021) & 0xEA7EEA74) + 1967093050);
  v1026 = v1161 ^ (v1023 - ((2 * v1023) & 0xF9F78010) - 50610168);
  v1027 = *(v394 + 4 * BYTE2(v1025)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v1026)), 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v1024)), 8);
  v1028 = a109 & 0x66C80CEF ^ a127 ^ 0xF47731F7 ^ (v1022 - ((2 * v1022) & 0xDF918CCA) + 1875428965);
  LODWORD(v1020) = __ROR4__(*(v394 + 4 * (a109 & 0xEF ^ a127 ^ 0xF7u ^ (v1022 - ((2 * v1022) & 0xCA) + 101))), 16);
  v1029 = a102 & 0x2F8F9605 ^ a106 ^ 0x92CEA70F ^ ((v1027 ^ v1020) - ((2 * (v1027 ^ v1020)) & 0x8B73B9E0) + 1169808624);
  v1030 = *(v394 + 4 * HIBYTE(v1028));
  v1031 = *(v394 + 4 * BYTE2(v1026)) ^ HIBYTE(v1030) ^ (v1030 << 8) ^ __ROR4__(*(v394 + 4 * BYTE1(v1025)), 8);
  LODWORD(v1020) = __ROR4__(*(v394 + 4 * v1024), 16);
  v1032 = a103 & 0x45D802F9 ^ a113 ^ 0xF1B0BE44 ^ ((v1031 ^ v1020) - ((2 * (v1031 ^ v1020)) & 0x149E87D4) + 172966890);
  v1033 = *(v394 + 4 * BYTE2(v1024)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v1025)), 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v1028)), 8);
  LODWORD(v1020) = __ROR4__(*(v394 + 4 * v1026), 16);
  v1034 = v1162 ^ ((v1033 ^ v1020) - ((2 * (v1033 ^ v1020)) & 0xD41FAD2C) - 368060778);
  v1035 = *(v394 + 4 * BYTE2(v1028)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v1024)), 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v1026)), 8);
  LODWORD(v1020) = __ROR4__(*(v394 + 4 * ((a126 ^ ((v1160 + 38) ^ 0xE4) & a116) ^ 0xC9u ^ (v1021 - ((2 * v1021) & 0x74) + 58))), 16);
  v1036 = *(v394 + 4 * HIBYTE(v1032));
  v1037 = a105 & 0xF81BAE30 ^ a125 ^ 0x869E2625 ^ ((v1035 ^ v1020) - ((2 * (v1035 ^ v1020)) & 0x2F4FFD4) + 24805354);
  v1038 = *(v394 + 4 * BYTE2(v1032)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v1037)), 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v1029)), 8);
  LODWORD(v1020) = __ROR4__(*(v394 + 4 * v1034), 16);
  v1039 = LODWORD(STACK[0x4F4]) ^ a118 ^ 0xE7726BBE ^ ((v1038 ^ v1020) - ((2 * (v1038 ^ v1020)) & 0x139B6842) + 164475937);
  v1040 = *(v394 + 4 * HIBYTE(v1029));
  v1041 = *(v394 + 4 * BYTE2(v1034)) ^ LODWORD(STACK[0x4F8]) ^ HIBYTE(v1040) ^ (v1040 << 8) ^ __ROR4__(*(v394 + 4 * BYTE1(v1037)), 8) ^ __ROR4__(*(v394 + 4 * v1032), 16);
  v1042 = (a98 + (a24 ^ a23 ^ 0x20D35E7C)) ^ (v1036 << 8) ^ *(v394 + 4 * BYTE2(v1029)) ^ HIBYTE(v1036) ^ __ROR4__(*(v394 + 4 * BYTE1(v1034)), 8) ^ __ROR4__(*(v394 + 4 * v1037), 16);
  v1043 = *(v394 + 4 * HIBYTE(v1034));
  v1044 = *(v394 + 4 * BYTE2(v1037)) ^ (a65 + (a101 << v989)) ^ HIBYTE(v1043) ^ (v1043 << 8) ^ __ROR4__(*(v394 + 4 * BYTE1(v1032)), 8) ^ __ROR4__(*(v394 + 4 * v1029), 16);
  v1045 = *(v394 + 4 * BYTE2(v1039)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v1044)), 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v1042)), 8);
  LODWORD(v1020) = __ROR4__(*(v394 + 4 * v1041), 16);
  v1046 = a97 & 0x2C831A91 ^ a119 ^ 0x66CCA2B8 ^ ((v1045 ^ v1020) - ((2 * (v1045 ^ v1020)) & 0x6B629B8C) - 1246671418);
  v1047 = *(v394 + 4 * HIBYTE(v1042));
  v1048 = *(v394 + 4 * BYTE2(v1041)) ^ ((a95 << v989) + a67) ^ HIBYTE(v1047) ^ (v1047 << 8) ^ __ROR4__(*(v394 + 4 * BYTE1(v1044)), 8) ^ __ROR4__(*(v394 + 4 * v1039), 16);
  v1049 = *(v394 + 4 * BYTE2(v1042)) ^ ((a62 >> v993) + (a96 << v991)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v1039)), 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v1041)), 8) ^ __ROR4__(*(v394 + 4 * v1044), 16);
  v1050 = (a69 + (a93 << v989)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v1041)), 24) ^ *(v394 + 4 * BYTE2(v1044)) ^ __ROR4__(*(v394 + 4 * BYTE1(v1039)), 8);
  v1051 = *(v394 + 4 * BYTE2(v1049)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v1046)), 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v1048)), 8);
  v1052 = *(v394 + 4 * v1042);
  v1053 = v1050 ^ (v1052 << 16);
  v1054 = v1053 ^ HIWORD(v1052);
  LODWORD(v1020) = __ROR4__(*(v394 + 4 * v1054), 16);
  v1055 = a94 & 0x5D37BF16 ^ a120 ^ 0x6E986FF7 ^ ((v1051 ^ v1020) - ((2 * (v1051 ^ v1020)) & 0xA8CF7E3C) - 731398370);
  v1056 = *(v394 + 4 * BYTE2(v1053)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v1048)), 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v1046)), 8);
  LODWORD(v1020) = __ROR4__(*(v394 + 4 * v1049), 16);
  v1057 = a92 & 0x8AF51769 ^ a117 ^ 0x8BD51BC2 ^ ((v1056 ^ v1020) - ((2 * (v1056 ^ v1020)) & 0xE817E06A) - 200544203);
  v1058 = *(v394 + 4 * BYTE2(v1048)) ^ LODWORD(STACK[0x4FC]) ^ __ROR4__(*(v394 + 4 * HIBYTE(v1049)), 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v1054)), 8) ^ __ROR4__(*(v394 + 4 * v1046), 16);
  v1059 = LODWORD(STACK[0x500]) ^ __ROR4__(*(v394 + 4 * HIBYTE(v1053)), 24) ^ *(v394 + 4 * BYTE2(v1046)) ^ __ROR4__(*(v394 + 4 * BYTE1(v1049)), 8) ^ __ROR4__(*(v394 + 4 * v1048), 16);
  v1060 = *(v394 + 4 * BYTE2(v1058)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v1055)), 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v1057)), 8);
  LODWORD(v1020) = __ROR4__(*(v394 + 4 * v1059), 16);
  v1061 = LODWORD(STACK[0x504]) ^ a123 ^ 0xF2B206DF ^ ((v1060 ^ v1020) - ((2 * (v1060 ^ v1020)) & 0xA9F5BC0) + 89107936);
  v1062 = *(v394 + 4 * BYTE2(v1057)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v1058)), 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v1059)), 8);
  LODWORD(v1020) = __ROR4__(*(v394 + 4 * v1055), 16);
  v1063 = (v1062 ^ v1020) - ((2 * (v1062 ^ v1020)) & 0xF29C8BB2) - 112310823;
  HIDWORD(v1020) = *(v394 + 4 * v1057);
  LODWORD(v1020) = HIDWORD(v1020);
  v1064 = ((a87 << v989) + (a59 >> v891)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v1057)), 24) ^ *(v394 + 4 * BYTE2(v1059)) ^ __ROR4__(*(v394 + 4 * BYTE1(v1055)), 8) ^ __ROR4__(*(v394 + 4 * v1058), 16);
  v1065 = *(v394 + 4 * HIBYTE(v1059));
  v1066 = LODWORD(STACK[0x514]) ^ a115 ^ *(v394 + 4 * BYTE2(v1055)) ^ HIBYTE(v1065) ^ (v1065 << 8) ^ __ROR4__(*(v394 + 4 * BYTE1(v1058)), 8) ^ ((v1020 >> 16) - ((2 * (v1020 >> 16)) & 0xF8E3032E) - 59670121) ^ 0x17824E69;
  v1067 = LODWORD(STACK[0x508]) ^ a121 ^ 0x5713B28 ^ v1063;
  v1068 = *(v394 + 4 * BYTE2(v1067)) ^ a122 ^ __ROR4__(*(v394 + 4 * HIBYTE(v1061)), 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v1064)), 8) ^ __ROR4__(*(v394 + 4 * v1066), 16);
  v1069 = *(v394 + 4 * BYTE2(v1061)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v1066)), 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v1067)), 8) ^ __ROR4__(*(v394 + 4 * v1064), 16);
  v1070 = LODWORD(STACK[0x52C]) ^ __ROR4__(*(v394 + 4 * HIBYTE(v1067)), 24) ^ *(v394 + 4 * BYTE2(v1064)) ^ __ROR4__(*(v394 + 4 * BYTE1(v1066)), 8) ^ __ROR4__(*(v394 + 4 * v1061), 16);
  v1071 = LODWORD(STACK[0x538]) ^ __ROR4__(*(v394 + 4 * HIBYTE(v1064)), 24) ^ *(v394 + 4 * BYTE2(v1066)) ^ __ROR4__(*(v394 + 4 * BYTE1(v1061)), 8);
  LODWORD(v1020) = __ROR4__(*(v394 + 4 * v1067), 16);
  v1072 = v1071 ^ v1020;
  v1073 = LODWORD(STACK[0x53C]) ^ a112 ^ 0x5991AA66 ^ (v1069 - ((2 * v1069) & 0x4A5E3A06) - 1523639037);
  v1074 = *(v394 + 4 * HIBYTE(v1068));
  v1075 = *(v394 + 4 * BYTE2(v1070)) ^ LODWORD(STACK[0x540]) ^ HIBYTE(v1074) ^ (v1074 << 8) ^ __ROR4__(*(v394 + 4 * ((v1071 ^ v1020) >> 8)), 8) ^ __ROR4__(*(v394 + 4 * ((LOBYTE(STACK[0x53C]) ^ a112) ^ 0x66u ^ (v1069 - ((2 * v1069) & 6) + 3))), 16);
  v1076 = *(v394 + 4 * BYTE2(v1068)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v1073)), 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v1070)), 8);
  v1077 = *(v394 + 4 * BYTE2(v1073)) ^ LODWORD(STACK[0x548]) ^ __ROR4__(*(v394 + 4 * HIBYTE(v1072)), 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v1068)), 8) ^ __ROR4__(*(v394 + 4 * v1070), 16);
  v1078 = LODWORD(STACK[0x550]) ^ a114 ^ 0x969FCD0D ^ ((v1076 ^ (*(v394 + 4 * v1072) << 16) ^ HIWORD(*(v394 + 4 * v1072))) - ((2 * (v1076 ^ (*(v394 + 4 * v1072) << 16) ^ HIWORD(*(v394 + 4 * v1072)))) & 0x568165EA) + 725660405);
  v1079 = LODWORD(STACK[0x558]) ^ __ROR4__(*(v394 + 4 * HIBYTE(v1070)), 24) ^ *(v394 + 4 * BYTE2(v1072)) ^ __ROR4__(*(v394 + 4 * BYTE1(v1073)), 8) ^ __ROR4__(*(v394 + 4 * v1068), 16);
  v1080 = HIBYTE(v1078);
  v1081 = *(v394 + 4 * BYTE2(v1079)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v1075)), 24);
  HIDWORD(v1020) = *(v394 + 4 * BYTE1(v1077));
  LODWORD(v1020) = HIDWORD(v1020);
  v1082 = (((v1020 >> 8) ^ -(v1020 >> 8) ^ (v1081 - ((v1020 >> 8) ^ v1081))) + v1081) ^ __ROR4__(*(v394 + 4 * v1078), 16);
  v1083 = *(v394 + 4 * BYTE2(v1077)) ^ __ROR4__(*(v394 + 4 * HIBYTE(v1079)), 24) ^ __ROR4__(*(v394 + 4 * BYTE1(v1078)), 8) ^ __ROR4__(*(v394 + 4 * v1075), 16);
  v1084 = *(v394 + 4 * BYTE1(v1075));
  v1085 = *(v394 + 4 * BYTE2(v1075));
  v1086 = BYTE1(v1079);
  v1087 = *(v394 + 4 * BYTE2(v1078)) ^ a111 ^ __ROR4__(*(v394 + 4 * HIBYTE(v1077)), 24) ^ __ROR4__(v1084, 8) ^ __ROR4__(*(v394 + 4 * v1079), 16);
  v1088 = *(v394 + 4 * v1086);
  v1089 = LODWORD(STACK[0x560]) ^ a124 ^ 0xF9A9AB8A ^ (v1082 - ((2 * v1082) & 0xA984A8F0) + 1422021752);
  v1090 = a20 ^ (a21 - a22) ^ (v1083 - ((2 * v1083) & 0x35C91734) - 1696298086);
  v1091 = LODWORD(STACK[0x568]) ^ __ROR4__(*(v394 + 4 * v1080), 24) ^ v1085 ^ __ROR4__(v1088, 8) ^ __ROR4__(*(v394 + 4 * v1077), 16);
  v1092 = HIBYTE(v1091);
  v1093 = *(v835 + 4 * HIBYTE(v1089));
  v1094 = *(v835 + 4 * BYTE2(v1090));
  HIDWORD(v1020) = v1093 ^ 0x69E1;
  LODWORD(v1020) = v1093 ^ 0x4C1D0000;
  v1095 = v1020 >> 16;
  HIDWORD(v1020) = v1094 ^ 0x1D69E1;
  LODWORD(v1020) = v1094 ^ 0x4C000000;
  v1096 = ((v1020 >> 24) ^ v1095) + LODWORD(STACK[0x4B8]) - ((2 * ((v1020 >> 24) ^ v1095)) & 0x983AD3C2);
  v1097 = *(v835 + 4 * v1091);
  v1098 = *(v835 + 4 * HIBYTE(v1090));
  HIDWORD(v1020) = v1097 ^ 0xFFFFFFE1;
  LODWORD(v1020) = v1097 ^ 0x4C1D6900;
  v1099 = (v1020 >> 8) ^ *(v835 + 4 * BYTE1(v1087)) ^ v1096;
  v1100 = *(v835 + 4 * BYTE2(v1087));
  HIDWORD(v1020) = v1098 ^ 0x69E1;
  LODWORD(v1020) = v1098 ^ 0x4C1D0000;
  v1101 = v1020 >> 16;
  HIDWORD(v1020) = v1100 ^ 0x1D69E1;
  LODWORD(v1020) = v1100 ^ 0x4C000000;
  v1102 = (v1020 >> 24) ^ v1101;
  v1103 = *(v835 + 4 * BYTE1(v1091));
  v1104 = *(v835 + 4 * v1089);
  v1105 = *(v835 + 4 * HIBYTE(v1087));
  HIDWORD(v1020) = v1104 ^ 0xFFFFFFE1;
  LODWORD(v1020) = v1104 ^ 0x4C1D6900;
  v1106 = *(v835 + 4 * BYTE2(v1091));
  v1107 = (v1020 >> 8) ^ v1103 ^ (v1102 + LODWORD(STACK[0x4B8]) - ((2 * v1102) & 0x983AD3C2));
  HIDWORD(v1020) = v1105 ^ 0x69E1;
  LODWORD(v1020) = v1105 ^ 0x4C1D0000;
  v1108 = v1020 >> 16;
  HIDWORD(v1020) = v1106 ^ 0x1D69E1;
  LODWORD(v1020) = v1106 ^ 0x4C000000;
  v1109 = *(v835 + 4 * BYTE1(v1089));
  v1110 = (v1020 >> 24) ^ v1108;
  v1111 = *(v835 + 4 * v1090);
  HIDWORD(v1020) = v1111 ^ 0xFFFFFFE1;
  LODWORD(v1020) = v1111 ^ 0x4C1D6900;
  v1112 = v1020 >> 8;
  v1113 = *(v835 + 4 * v1092);
  HIDWORD(v1020) = v1113 ^ 0x69E1;
  LODWORD(v1020) = v1113 ^ 0x4C1D0000;
  v1114 = v1020 >> 16;
  v1115 = *(v835 + 4 * BYTE2(v1089));
  v1116 = v1112 ^ v1109 ^ (v1110 + LODWORD(STACK[0x4B8]) - ((2 * v1110) & 0x983AD3C2));
  HIDWORD(v1020) = v1115 ^ 0x1D69E1;
  LODWORD(v1020) = v1115 ^ 0x4C000000;
  v1117 = ((v1020 >> 24) ^ v1114) + LODWORD(STACK[0x4B8]) - ((2 * ((v1020 >> 24) ^ v1114)) & 0x983AD3C2);
  v1118 = *(v835 + 4 * v1087);
  v1119 = LODWORD(STACK[0x2B8]) ^ 0x9AB79628 ^ (v1116 - ((2 * v1116) & 0xC1D36856) - 521554901);
  HIDWORD(v1020) = v1118 ^ 0xFFFFFFE1;
  LODWORD(v1020) = v1118 ^ 0x4C1D6900;
  v1120 = (v1020 >> 8) ^ *(v835 + 4 * BYTE1(v1090)) ^ v1117;
  v1121 = LODWORD(STACK[0x570]) ^ 0xC1241D5C ^ (v1099 - ((2 * v1099) & 0xAA78FEB6) + 1430028123);
  v1122 = LODWORD(STACK[0x570]) ^ v1119 ^ (v1107 - ((2 * v1107) & 0xAA78FEB6) + 1430028123) ^ 0x22134ECA;
  v1123 = v1122 ^ v1121;
  v1124 = LODWORD(STACK[0x2B8]) ^ 0xCD596BC6 ^ (v1120 - ((2 * v1120) & 0xC1D36856) - 521554901);
  v1125 = v1124 ^ v1122;
  v1126 = ((v1122 ^ v1121) + 384903861 - ((2 * (v1122 ^ v1121)) & 0x2DE2556A)) ^ LODWORD(STACK[0x394]);
  v1127 = (v1121 + 384903861 - ((2 * v1121) & 0x2DE2556A)) ^ LODWORD(STACK[0x394]);
  v1128 = (v1125 + 384903861 - ((2 * v1125) & 0x2DE2556A)) ^ LODWORD(STACK[0x394]);
  v1129 = HIBYTE(v1127);
  v1130 = v1123 ^ LODWORD(STACK[0x394]) ^ ((v1124 ^ v1119) + 384903861 - ((2 * (v1124 ^ v1119)) & 0x2DE2556A));
  HIDWORD(v1020) = v1130 ^ 0xC3DE0000;
  LODWORD(v1020) = v1130 ^ 0xC3DE0000;
  HIDWORD(v1020) = (v1020 >> 18) & 0xC000003F ^ 0x61B1D0A1;
  LODWORD(v1020) = HIDWORD(v1020);
  v1131 = STACK[0x518];
  LOBYTE(STACK[0x582]) = (21 * *(*(&off_1006B4E30 + LODWORD(STACK[0x518]) - 1464) + ((v1020 >> 30) ^ 0x86C742EALL) - 4) - 52) ^ 0x2B;
  LOBYTE(STACK[0x58A]) = ((v1128 ^ 0x76DEA0) >> 16) ^ (((v1128 ^ 0x76DEA0) >> 16) - 90) ^ 0xB8 ^ (*(*(&off_1006B4E30 + v1131 - 860) + (((v1128 ^ 0x76DEA0) >> 16) ^ 0xB1) - 12) - 102);
  LOBYTE(STACK[0x58E]) = *(*(&off_1006B4E30 + v1131 - 1427) + (v1128 ^ 0xELL)) ^ ((v1128 ^ 0xA0) - ((2 * v1128) & 0x87) + 67) ^ 0x3F;
  LOBYTE(STACK[0x58F]) = *(*(&off_1006B4E30 + v1131 - 1393) + (BYTE2(v1127) ^ 0x65) - 8) ^ 0x38;
  LOBYTE(STACK[0x586]) = *(*(&off_1006B4E30 + (v1131 ^ 0x529)) + (BYTE1(v1126) ^ 8) - 8) ^ 0x6C;
  LOBYTE(STACK[0x584]) = *(*(&off_1006B4E30 + v1131 - 1015) + ((v1130 ^ 0xC3DE0000) >> 24) - 12) ^ 0xE;
  LOBYTE(STACK[0x58D]) = (v1127 - ((2 * v1127) & 8) + 4) ^ *(*(&off_1006B4E30 + (v1131 ^ 0x716)) + (v1127 ^ 0xADLL) - 4) ^ 0x9F;
  LOBYTE(v1127) = *(*(&off_1006B4E30 + (v1131 ^ 0x602)) + (BYTE1(v1127) ^ 0xE1) - 4);
  v1132 = *(&off_1006B4E30 + (v1131 ^ 0x51F));
  LOBYTE(STACK[0x587]) = ((((v1127 ^ 0xD9) + 39) ^ ((v1127 ^ 0xCB) + 53) ^ ((v1127 ^ 0x87) + 121)) + 80) ^ (((16 * v1127) ^ 0x49) + 32);
  LOBYTE(v1129) = *(v1132 + (v1129 ^ 0x38) - 4) + 124;
  LOBYTE(STACK[0x581]) = v1129 ^ (16 * v1129) ^ 0x15;
  LOBYTE(STACK[0x585]) = *(*(&off_1006B4E30 + (v1131 ^ 0x2B6)) + (HIBYTE(v1126) ^ 0x74) - 12) ^ 0x79;
  LOBYTE(STACK[0x58C]) = (v1130 - ((2 * v1130) & 0x3C) - 98) ^ 0x50 ^ *(*(&off_1006B4E30 + (v1131 ^ 0x52E)) + (v1130 ^ 6) - 12);
  LOBYTE(STACK[0x588]) = ((v1126 ^ 0x2F) - ((2 * (v1126 ^ 0x2F) + 54) & 0x3E) + 122) ^ 0xB7 ^ *(*(&off_1006B4E30 + (v1131 ^ 0x674)) + (v1126 ^ 0xC6));
  v1133 = ((v1130 >> 8) ^ 0x95) + ((v1130 >> 8) ^ 0x25);
  LOBYTE(STACK[0x583]) = (v1133 - ((2 * v1133) & 0x14) - 118) ^ 0x48 ^ *(*(&off_1006B4E30 + (v1131 ^ 0x49D)) + (BYTE1(v1130) ^ 0x62) - 4);
  LOBYTE(STACK[0x580]) = ((BYTE2(v1126) ^ 0xA2) + *(*(&off_1006B4E30 + v1131 - 605) + (BYTE2(v1126) ^ 0x30) - 8) - 109) ^ 0xA6;
  LOBYTE(STACK[0x589]) = (HIBYTE(v1128) - ((v1128 >> 23) & 0x16) - 117) ^ 0x9C ^ *(*(&off_1006B4E30 + v1131 - 485) + (HIBYTE(v1128) ^ 9) - 12);
  LOBYTE(v1124) = *(*(&off_1006B4E30 + (v1131 ^ 0x2C1)) + ((v1128 ^ 0xDEA0) >> 8) - 8);
  LOBYTE(STACK[0x58B]) = (-29 * v1124 + 35) ^ (12 * v1124 + 12) ^ 0xF2;
  JUMPOUT(0x10022695CLL);
}

uint64_t sub_100226A04()
{
  v3 = v1[4];
  v4 = v1[5];
  STACK[0x568] = *v1;
  return (*(v2 + 8 * ((2557 * (v4 == v3)) ^ v0)))();
}

uint64_t sub_100226A4C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = v2 + 827;
  v7 = STACK[0x2E8];
  *STACK[0x2E8] = *v5;
  LOBYTE(STACK[0xA21]) = v5[1];
  LOBYTE(STACK[0xA22]) = v5[2];
  LOBYTE(STACK[0xA23]) = v5[3];
  LOBYTE(STACK[0xA24]) = v5[4];
  LOBYTE(STACK[0xA25]) = v5[5];
  LOBYTE(STACK[0xA26]) = v5[6];
  LOBYTE(STACK[0xA27]) = v5[7];
  LOBYTE(STACK[0xA28]) = v5[8];
  LOBYTE(STACK[0xA29]) = v5[9];
  LOBYTE(STACK[0xA2A]) = v5[10];
  LOBYTE(STACK[0xA2B]) = v5[11];
  LOBYTE(STACK[0xA2C]) = v5[12];
  LOBYTE(STACK[0xA2D]) = v5[13];
  LOBYTE(STACK[0xA2E]) = v5[14];
  LOBYTE(STACK[0xA2F]) = v5[15];
  v8 = (v2 - 9113) | 0x700;
  if (v3)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  v11 = v9 || STACK[0x568] == 0;
  return (*(v4 + 8 * ((v11 * (v6 - 11988 + v8)) | v6)))(a1, a2 + STACK[0x2C8]);
}

uint64_t sub_100226B34@<X0>(int a1@<W1>, int a2@<W8>)
{
  v4 = ((2 * ((a1 - 426188622) ^ 0x6071AE57)) ^ 0x8B867E1C) & ((a1 - 426188622) ^ 0x6071AE57) ^ (2 * ((a1 - 426188622) ^ 0x6071AE57)) & 0xC5C33F0E;
  v5 = ((4 * (v4 ^ 0x44410102)) ^ 0x170CFC38) & (v4 ^ 0x44410102) ^ (4 * (v4 ^ 0x44410102)) & 0xC5C33F0C;
  v6 = ((a1 - 426188622) ^ (v2 + 556819712)) & (2 * ((a1 - 426188622) & 0xA5B29159)) ^ (a1 - 426188622) & 0xA5B29159;
  v7 = (v4 ^ 0x81820E0C) & (4 * v6) ^ v6;
  v8 = v5 ^ 0x5003C00;
  v9 = ((16 * (v5 ^ 0xC0C30306)) ^ 0x5C33F0E0) & (v5 ^ 0xC0C30306) ^ (16 * (v5 ^ 0xC0C30306)) & 0xC5C33F00;
  v10 = v8 & (16 * v7) ^ v7 ^ 0xC5C33F0E ^ (v9 ^ 0x44033000) & ((v8 & (16 * v7) ^ v7) << 8);
  v11 = (a1 - 426188622) ^ (2 * ((v10 << 16) & 0x45C30000 ^ v10 ^ ((v10 << 16) ^ 0x3F0E0000) & (((v9 ^ 0x81C00F0E) << 8) & 0x45C30000 ^ 0x4C00000 ^ (((v9 ^ 0x81C00F0E) << 8) ^ 0x433F0000) & (v9 ^ 0x81C00F0E))));
  v13 = v11 == 607186757 || (((a2 + 2054073139) & 0x85915FF7 ^ 0x1CEC) & v11) != ((a2 - 753443327) & 0x2CE897C7) - 1916;
  return (*(v3 + 8 * ((112 * v13) ^ a2)))();
}

uint64_t sub_100226CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  STACK[0x2D0] = v44;
  v46 = (v43 - 597287161) & 0x2399D5DD;
  v47 = (*(v45 + 8 * (v43 + 5141)))(1028, a2, a3, a4, a5, a6, a7, a8);
  v48 = (*(v45 + 8 * (v43 + 5141)))(1028);
  STACK[0x4D8] = v47;
  STACK[0x4D0] = v48;
  if (v47)
  {
    v56 = v48 == 0;
  }

  else
  {
    v56 = 1;
  }

  v57 = !v56;
  LODWORD(STACK[0x2C4]) = v46;
  v58 = *(v45 + 8 * ((v57 * ((v46 ^ 0x3A6D) + v43 - 2745)) ^ v43));
  LODWORD(STACK[0x2C8]) = -42885;
  return v58(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43);
}

uint64_t sub_100226D80()
{
  STACK[0x3F8] = v4;
  v5 = (v2 - 1542176573) & 0x5BEBBF37;
  LODWORD(STACK[0x40C]) = v5;
  v6 = -1802333311 * ((v5 ^ 0xEDDA) & &STACK[0x580]);
  v7 = *(v3 + 8 * (v2 ^ 0x1190)) - 4;
  v8 = *(v7 + ((-127 * ((v5 ^ 0xDA) & &STACK[0x580])) ^ 0xBBLL));
  v9 = *(v3 + 8 * (v2 - 4042)) - 4;
  STACK[0x2A8] = v9;
  v10 = *(v9 + (BYTE1(v6) ^ 0x53));
  v11 = (v10 >> 5) | (8 * v10);
  v12 = *(v7 + (BYTE2(v6) ^ 0x91));
  STACK[0x2B0] = v7;
  v13 = *(v7 + (HIBYTE(v6) ^ 0xC8));
  v14 = ((v11 << 8) ^ 0x657265CF) & (v8 ^ 0x7D7AFFA1);
  v15 = ((((v14 | v8 & 0x30) ^ 0x88D1030) & ((v12 << 16) ^ 0x9955975) | v14 & 0x400A68A) ^ 0x1BF8BAFD) & (((v13 ^ 0x27) << 24) ^ 0x65FFFFFF) ^ ((v13 ^ 0x27) << 24) & 0xE9000000;
  v16 = (*(*(v3 + 8 * (v2 - 3846)) + (LOBYTE(STACK[0x588]) ^ 0x3DLL)) - 88);
  v17 = (*(*(v3 + 8 * (v2 - 3846)) + (LOBYTE(STACK[0x588]) ^ 0x3DLL)) - 88) ^ (v16 >> 3) ^ (v16 >> 2);
  v18 = (*(*(v3 + 8 * (v2 ^ 0x1688)) + (LOBYTE(STACK[0x580]) ^ 0x13)) - 77) << 16;
  v19 = (((((*(*(v3 + 8 * (v2 ^ 0x1023)) + (LOBYTE(STACK[0x586]) ^ 0x43) - 4) ^ LOBYTE(STACK[0x586])) << 8) ^ 0x751F3445) & (v17 ^ 0x751FFF77) | v17 & 0xBA) ^ 0xC474F34) & (v18 ^ 0x7DB5FFFF);
  v20 = v18 & 0xA70000;
  LODWORD(v7) = (*(*(v3 + 8 * (v2 ^ 0x100E)) + (LOBYTE(STACK[0x58F]) ^ 0x97) - 12) - 90) << 16;
  v21 = *(*(v3 + 8 * (v2 - 3573)) + (LOBYTE(STACK[0x587]) ^ 0x80));
  v22 = (((v21 >> 4) | (16 * v21)) ^ (((v21 >> 4) | (16 * v21)) >> 5) ^ (((v21 >> 4) | (16 * v21)) >> 1)) << 8;
  v23 = *(*(v3 + 8 * (v2 - 3585)) + (LOBYTE(STACK[0x582]) ^ 0x1ALL) - 4);
  v24 = (v22 ^ 0xFFFFB1FF) & ((v7 & 0x280000 | (v7 ^ 0xFF93BBFF) & ((((((*(*(v3 + 8 * (v2 ^ 0x12A5)) + (LOBYTE(STACK[0x581]) ^ 0xB9) - 12) - 80) ^ 0x66666666) << 24) ^ 0x4EB42B93) & ((*(*(v3 + 8 * (v2 ^ 0x12CE)) + (LOBYTE(STACK[0x58D]) ^ 0x26)) - 76) ^ 0xFFFC2BBF) | (*(*(v3 + 8 * (v2 ^ 0x12CE)) + (LOBYTE(STACK[0x58D]) ^ 0x26)) - 76) & 0x6C) ^ 0xFA6390DB)) ^ 0x898EFB36);
  v25 = v23 ^ (v23 >> 3) ^ ((v23 >> 7) | 0xA2);
  v26 = *(*(v3 + 8 * (v2 - 4047)) + (LOBYTE(STACK[0x58B]) ^ 9) - 8);
  v27 = v26 >> 5;
  v28 = (LOBYTE(STACK[0x585]) ^ 0x91 ^ *(*(v3 + 8 * (v2 ^ 0x13B8)) + (LOBYTE(STACK[0x585]) ^ 0xA3) - 4)) << 24;
  v29 = *(*(v3 + 8 * (v2 ^ 0x1363)) + (LOBYTE(STACK[0x589]) ^ 0xF7) - 8);
  v30 = (v28 ^ 0x70FFFFFF) & (v20 ^ 0x1E529F1B ^ v19);
  v31 = ((((v29 & 0xFFFFFFFD ^ (4 * v29) ^ 0x26) & (v29 | 0xFFFFFFFD)) << 24) ^ 0x6C9F9FE0) & ((v26 << 8) ^ 0xFFFF9DF0);
  v32 = *(*(v3 + 8 * (v2 ^ 0x1065)) + (LOBYTE(STACK[0x584]) ^ 0x69) - 12);
  v33 = *(*(v3 + 8 * (v2 ^ 0x101A)) + (LOBYTE(STACK[0x58C]) ^ 0x1CLL) - 4);
  v34 = (((((v32 >> 2) | (v32 << 6)) ^ 0x30) << 24) ^ 0x5CF91CF1) & ((v25 << 16) ^ 0xFFA47EF9) & 0xFFF9FFFF | (((v25 >> 1) & 3) << 17);
  v35 = (*(*(v3 + 8 * (v2 ^ 0x132D)) + (LOBYTE(STACK[0x58A]) ^ 0xCLL) - 4) + 99) << 16;
  v36 = (v35 ^ 0xFF0FFFFF) & ((v31 & 0xFFFF9FFF | ((v27 & 3) << 13)) ^ 0x86ACCB54) ^ v35 & 0xCCCCCCCC;
  v37 = v36 ^ 0xE730FC4C;
  v38 = (v34 ^ 0x730602C0) & (v33 ^ 0xFFFF7E43) | v33 & 0xCE;
  v39 = *(*(v3 + 8 * (v2 - 4545)) + (LOBYTE(STACK[0x58E]) ^ 0xF4) - 4) + 106;
  v40 = ((*(*(v3 + 8 * (v2 - 3816)) + (LOBYTE(STACK[0x583]) ^ 0xD1) - 12) << 8) ^ 0xF13632E0) & (v38 ^ 0x7006E100);
  v41 = (v39 ^ (32 * v39) ^ (16 * v39) ^ 0x9F) & 0x54 ^ 0x87D88FD1 ^ ((v39 ^ (32 * v39) ^ (16 * v39) ^ 0x9F) & 0xBF ^ 0xFFFFFF20) & (v36 ^ 0x60E8731F);
  if (v12 == 228)
  {
    v41 = v37;
  }

  LODWORD(STACK[0x558]) = v15;
  v42 = v28 & 0x98000000 ^ v30 ^ v15 ^ 0x82F0781B;
  LODWORD(STACK[0x550]) = v15 ^ 0x60685BA;
  v43 = v22 & 0xFFFFBFFF ^ v24 ^ 0x1FB0C3BD;
  v44 = v42 ^ v15 ^ 0x9EA34F4E;
  v45 = v44 ^ v43 ^ v15 ^ 0x82F0781B ^ (v39 ^ (32 * v39) ^ (16 * v39)) & 0x71 ^ (v41 ^ 0xE120C076) & ((v39 ^ (32 * v39) ^ (16 * v39)) ^ 0xFFFFFF69);
  v46 = v44 ^ v38 & 0xEC9101F ^ v40 ^ v45;
  v47 = v46 ^ 0x7C1D29D9;
  v48 = v44 ^ v43 ^ v42 ^ 0x71D35C3E;
  v49 = v46 ^ 0xAB29F935;
  v50 = *(v3 + 8 * (v2 ^ 0x10F6)) - 8;
  v51 = *(v3 + 8 * (v2 ^ 0x10AF)) - 12;
  v52 = *(v3 + 8 * (v2 ^ 0x1043));
  v53 = (*(v51 + 4 * ((v45 ^ 0x2AE21368) >> 16)) - 825113923) ^ __ROR4__(((HIBYTE(v48) ^ 0x98307339) - 486303810 + *(v50 + 4 * (HIBYTE(v48) ^ 0x43))) ^ 0x538FCC86, 24) ^ __ROR4__(*(v52 + 4 * (BYTE1(v49) ^ 0xBEu)) ^ BYTE1(v49) ^ 0x28DD7FD, 8);
  v54 = v47 ^ v44 ^ v43;
  LODWORD(STACK[0x3B8]) = v1;
  v55 = v53 ^ __ROR4__((*(v50 + 4 * ((v47 ^ v44 ^ v43) ^ 0x60u)) + ((v47 ^ v44 ^ v43) ^ 0x9830731A) - 486303810) ^ 0xDFA31401, 16);
  v56 = *(v3 + 8 * (v2 - 3693));
  v57 = *(v52 + 4 * (((v54 ^ 0xF41F52F7) >> 24) ^ 0xAB)) ^ *(v56 + 4 * BYTE2(v48)) ^ ((v54 ^ 0xF41F52F7) >> 24) ^ 0xBF537204;
  v58 = __ROR4__(*(v56 + 4 * ((v45 ^ 0x1368) >> 8)), 24) ^ 0x572F7951;
  LODWORD(STACK[0x560]) = v2;
  HIDWORD(v59) = *(v52 + 4 * (v47 ^ 0x52u)) ^ v49 ^ 0x9E6A2304;
  LODWORD(v59) = HIDWORD(v59);
  v60 = (v59 >> 16) ^ __ROR4__(v58, 8) ^ __ROR4__(v57, 24);
  v61 = (*(v51 + 4 * (BYTE2(v54) ^ 0xEAu)) - 825113923) ^ __ROR4__(__ROR4__(*(v56 + 4 * HIBYTE(v49)), 24) ^ 0x6F2CFCC, 24) ^ __ROR4__(((BYTE1(v48) ^ 0x98307339) - 486303810 + *(v50 + 4 * (BYTE1(v48) ^ 0x43u))) ^ 0x677310C7, 8) ^ __ROR4__(*(v52 + 4 * (v45 ^ 0xD6u)) ^ v45 ^ 0x91E61260, 16);
  v62 = (*(v51 + 4 * BYTE2(v49)) - 825113923) ^ __ROR4__((*(v51 + 4 * ((v45 ^ 0x2AE21368) >> 24)) - 825113923) ^ 0x6263DC23, 24) ^ __ROR4__((*(v51 + 4 * (BYTE1(v54) ^ 0x80u)) - 825113923) ^ 0x86143DB3, 8) ^ __ROR4__((*(v51 + 4 * v48) - 825113923) ^ 0xAFFB23BE, 16) ^ 0xD552F0CD;
  v63 = *(v52 + 4 * (HIBYTE(v55) ^ 0xEA)) ^ HIBYTE(v55) ^ 0x6EDD45BD;
  v64 = BYTE2(v62) ^ 0xDD;
  v65 = __ROR4__(*(v56 + 4 * (BYTE1(v61) ^ 0x47u)), 24) ^ 0x5319C383;
  STACK[0x570] = v0;
  v66 = *(v52 + 4 * (v60 ^ 0x72u)) ^ v60 ^ 0x92769D2B;
  v67 = (*(v51 + 4 * (BYTE2(v55) ^ 0xD8u)) - 825113923) ^ __ROR4__(__ROR4__(*(v56 + 4 * ((v60 ^ 0x8D8286CC) >> 24)), 24) ^ 0x66AC7B0E, 24) ^ __ROR4__(__ROR4__(*(v56 + 4 * BYTE1(v62)), 24) ^ 0x420E75BA, 8) ^ __ROR4__(v61 ^ 0xE0052FD8 ^ *(v52 + 4 * (v61 ^ 0xCAu)), 16);
  LODWORD(v59) = __ROR4__(*(v56 + 4 * (BYTE1(v55) ^ 0x43u)), 24) ^ 0x5F55E81A;
  HIDWORD(v59) = v59;
  v68 = HIBYTE(v62) ^ 0xC8282058 ^ *(v52 + 4 * (HIBYTE(v62) ^ 0xBE));
  v69 = (v59 >> 8) ^ __ROR4__(*(v56 + 4 * (((v60 ^ 0x8D8286CC) >> 16) - (((v60 ^ 0x8D8286CC) >> 15) & 0x17E) + 191)) ^ (*(v51 + 4 * (HIBYTE(v61) ^ 0xEB)) - 825113923) ^ 0x4AA89197, 24) ^ __ROR4__(__ROR4__(*(v56 + 4 * v62), 24) ^ 0xF470E8A5, 16);
  v70 = BYTE2(v61);
  v71 = *(v52 + 4 * (BYTE2(v61) ^ 0x5Au)) ^ __ROR4__(v68, 24) ^ __ROR4__(__ROR4__(*(v56 + 4 * (BYTE1(v60) ^ 0x39u)), 24) ^ 0x75BAA93D, 8);
  v72 = v55 ^ 0xBEBF948C ^ *(v52 + 4 * (v55 ^ 0x47u));
  v73 = (*(v51 + 4 * v64) - 825113923) ^ __ROR4__(v65, 8) ^ __ROR4__(v66, 16) ^ __ROR4__(v63, 24) ^ 0x726F6071;
  v74 = v71 ^ __ROR4__(v72, 16);
  v75 = v70 ^ 0x5F3DE8A9 ^ v74;
  v76 = *(v52 + 4 * (BYTE2(v75) ^ 0xBEu)) ^ __ROR4__((*(v51 + 4 * HIBYTE(v73)) - 825113923) ^ 0xB13C0248, 24) ^ __ROR4__(__ROR4__(*(v56 + 4 * ((v69 ^ 0x9BB) >> 8)), 24) ^ 0x10ED3C23, 8) ^ __ROR4__(__ROR4__(*(v56 + 4 * (v67 ^ 0xA2u)), 24) ^ 0xE85D9D95, 16);
  v77 = (*(v51 + 4 * BYTE2(v73)) - 825113923) ^ __ROR4__(__ROR4__(*(v56 + 4 * (HIBYTE(v67) ^ 0x7A)), 24) ^ 0xFDF24504, 24) ^ __ROR4__((*(v50 + 4 * (BYTE1(v75) ^ 0x43u)) + (BYTE1(v75) ^ 0x98307339) - 486303810) ^ 0x6891C7DD, 8) ^ __ROR4__((*(v51 + 4 * (v69 ^ 0xBBu)) - 825113923) ^ 0xFA1B6A86, 16);
  v78 = __ROR4__(*(v56 + 4 * (HIBYTE(v74) ^ 0xE0)), 24) ^ 0x7B6FA4C4;
  v79 = (*(v51 + 4 * (BYTE2(v67) ^ 0x4Eu)) - 825113923) ^ __ROR4__(HIBYTE(v69) ^ 0x8117C8B9 ^ *(v52 + 4 * (HIBYTE(v69) ^ 0xBE)), 24) ^ __ROR4__((*(v51 + 4 * BYTE1(v73)) - 825113923) ^ 0x54566A61, 8) ^ __ROR4__((*(v51 + 4 * (v70 ^ 0xA9u ^ v74)) - 825113923) ^ 0xBEF9E330, 16) ^ 0xD0B3FFD3;
  v80 = (*(v51 + 4 * ((v69 ^ 0xC109BB) >> 16)) - 825113923) ^ __ROR4__(v78, 24) ^ __ROR4__(__ROR4__(*(v56 + 4 * (BYTE1(v67) ^ 0xBCu)), 24) ^ 0xD76E05EB, 8) ^ __ROR4__(__ROR4__(*(v56 + 4 * v73), 24) ^ 0x8B92EFA5, 16) ^ 0x9027407C;
  v81 = (*(v51 + 4 * BYTE2(v80)) - 825113923) ^ __ROR4__(__ROR4__(*(v56 + 4 * (HIBYTE(v76) ^ 0xA9)), 24) ^ 0xB6ED2795, 24) ^ __ROR4__((*(v50 + 4 * (BYTE1(v79) ^ 0x43u)) + (BYTE1(v79) ^ 0x98307339) - 486303810) ^ 0x33ED666D, 8);
  v82 = __ROR4__(*(v56 + 4 * (v77 ^ 0xA3u)), 24) ^ 0x4CB569DA;
  v83 = (v77 ^ 0xD6E97FA3) >> 24;
  v84 = v83 - 1;
  if ((v77 & 0x1000000) == 0)
  {
    v84 = v83 + 1;
  }

  v85 = v81 ^ __ROR4__(v82, 16);
  LODWORD(v86) = __ROR4__(*(v56 + 4 * BYTE1(v80)), 24) ^ 0x68EF95F3;
  HIDWORD(v86) = v86;
  v87 = (v86 >> 8) ^ __ROR4__(*(v56 + 4 * (BYTE2(v76) ^ 0xADu)) ^ 0x5A7F7C20 ^ ((v83 ^ 0x98307339) - 486303810 + *(v50 + 4 * (v84 ^ 0x42))), 24) ^ __ROR4__(__ROR4__(*(v56 + 4 * v79), 24) ^ 0xA0153CF7, 16);
  v88 = v76 ^ BYTE2(v75);
  v89 = (*(v51 + 4 * (BYTE2(v77) ^ 0xE9u)) - 825113923) ^ __ROR4__(HIBYTE(v79) ^ 0x5A78FB1B ^ *(v52 + 4 * (HIBYTE(v79) ^ 0xBE)), 24) ^ __ROR4__((*(v51 + 4 * (BYTE1(v76) ^ 0x82u)) - 825113923) ^ 0xFD79DACA, 8) ^ __ROR4__(__ROR4__(*(v56 + 4 * v80), 24) ^ 0x5AE48AA9, 16);
  v90 = ((BYTE2(v79) ^ 0x98307339) - 486303810 + *(v50 + 4 * (BYTE2(v79) ^ 0x43u))) ^ __ROR4__(HIBYTE(v80) ^ 0xB0C07FAE ^ *(v52 + 4 * (HIBYTE(v80) ^ 0xBE)), 24) ^ __ROR4__(__ROR4__(*(v56 + 4 * (BYTE1(v77) ^ 0xC0u)), 24) ^ 0x877D7AF4, 8) ^ __ROR4__(((v88 ^ 0x983073FC) - 486303810 + *(v50 + 4 * (v88 ^ 0x86u))) ^ 0x820EEC38, 16);
  v91 = v87 ^ 0x7248039;
  HIDWORD(v86) = (*(v51 + 4 * (BYTE1(v89) ^ 0x49u)) - 825113923) ^ 0xA690C557;
  LODWORD(v86) = HIDWORD(v86);
  v92 = (v86 >> 8) ^ __ROR4__(HIBYTE(v85) ^ 0xD1AA96F6 ^ *(v52 + 4 * (HIBYTE(v85) ^ 0xA9)), 24) ^ __ROR4__(((v87 ^ 0x98307300) - 486303810 + *(v50 + 4 * (v87 ^ 0x7Au))) ^ 0xEFDE03E1, 16) ^ (*(v50 + 4 * (((v90 ^ 0xBD0C5625) >> 16) ^ 0x43u)) + (((v90 ^ 0xBD0C5625) >> 16) ^ 0x98307339) - 486303810);
  LODWORD(v86) = __ROR4__(*(v56 + 4 * ((v90 ^ 0x5625) >> 8)), 24) ^ 0x65C1BC39;
  HIDWORD(v86) = v86;
  v93 = (v86 >> 8) ^ __ROR4__(*(v56 + 4 * (BYTE2(v85) ^ 0xD3u)) ^ 0xC80F54A0 ^ (*(v51 + 4 * ((v87 ^ 0x7248039u) >> 24)) - 825113923), 24) ^ __ROR4__(((v89 ^ 0x983073BF) - 486303810 + *(v50 + 4 * (v89 ^ 0xC5u))) ^ 0x3DB434B9, 16);
  v94 = ((BYTE2(v91) ^ 0x98307339) - 486303810 + *(v50 + 4 * (BYTE2(v91) ^ 0x43u))) ^ __ROR4__(HIBYTE(v89) ^ 0xD01DF055 ^ *(v52 + 4 * (HIBYTE(v89) ^ 0xB1)), 24) ^ __ROR4__((*(v51 + 4 * (BYTE1(v85) ^ 0xD0u)) - 825113923) ^ 0xAA516EC4, 8) ^ __ROR4__(v90 ^ 0xDC7BF605 ^ *(v52 + 4 * (v90 ^ 0x9Bu)), 16);
  v95 = (*(v51 + 4 * (BYTE2(v89) ^ 0x92u)) - 825113923) ^ __ROR4__((*(v51 + 4 * ((v90 ^ 0xBD0C5625) >> 24)) - 825113923) ^ 0xEBBDD326, 24) ^ __ROR4__(BYTE1(v91) ^ 0x84A3315E ^ *(v52 + 4 * (BYTE1(v91) ^ 0xBEu)), 8) ^ __ROR4__(v85 ^ 0x67623546 ^ *(v52 + 4 * (v85 ^ 0xABu)), 16);
  v96 = v94 ^ 0xDE220D00;
  v97 = v93 ^ 0xD0FA491E;
  HIDWORD(v86) = v93 ^ 0xBD7658D0 ^ *(v52 + 4 * (v93 ^ 0xA0u));
  LODWORD(v86) = HIDWORD(v86);
  v98 = (v86 >> 16) ^ __ROR4__(((((v92 ^ 0x876746Cu) >> 24) ^ 0x98307339) - 486303810 + *(v50 + 4 * (((v92 ^ 0x876746Cu) >> 24) ^ 0x43))) ^ 0xC72E896D, 24) ^ (*(v50 + 4 * (BYTE2(v95) ^ 0xAFu)) + (BYTE2(v95) ^ 0x983073D5) - 486303810) ^ __ROR4__((*(v50 + 4 * (BYTE1(v96) ^ 0x43u)) + (BYTE1(v96) ^ 0x98307339) - 486303810) ^ 0x18D9CDD0, 8);
  LODWORD(v86) = __ROR4__(*(v56 + 4 * (BYTE1(v95) ^ 0xE7u)), 24) ^ 0x4B7B022E;
  HIDWORD(v86) = v86;
  v99 = (v86 >> 8) ^ __ROR4__(*(v56 + 4 * ((v92 ^ 0x876746Cu) >> 16)) ^ __ROR4__(*(v56 + 4 * ((v93 ^ 0xD0FA491E) >> 24)), 24) ^ 0x1BB1A7D3, 24) ^ __ROR4__((*(v51 + 4 * v94) - 825113923) ^ 0x405D8290, 16);
  v100 = *(v52 + 4 * (BYTE2(v97) ^ 0xBEu)) ^ BYTE2(v97) ^ __ROR4__(((HIBYTE(v96) ^ 0x98307339) - 486303810 + *(v50 + 4 * (HIBYTE(v96) ^ 0x43))) ^ 0xBE61AD76, 24) ^ __ROR4__((*(v51 + 4 * (BYTE1(v92) ^ 0xA9u)) - 825113923) ^ 0xAA211870, 8) ^ __ROR4__(((v95 ^ 0x98307370) - 486303810 + *(v50 + 4 * (v95 ^ 0xAu))) ^ 0xE8E4DD49, 16);
  v101 = *(v52 + 4 * (((v94 ^ 0xDE220D00) >> 16) ^ 0xBEu)) ^ __ROR4__(((HIBYTE(v95) ^ 0x9830735C) - 486303810 + *(v50 + 4 * (HIBYTE(v95) ^ 0x26))) ^ 0xA3164B6A, 24) ^ __ROR4__(__ROR4__(*(v56 + 4 * BYTE1(v97)), 24) ^ 0x3E1AE9F, 8) ^ __ROR4__(__ROR4__(*(v56 + 4 * (v92 ^ 0x6Cu)), 24) ^ 0x95C52A62, 16);
  v102 = v98 ^ 0xB48752BA;
  HIDWORD(v86) = *(v56 + 4 * ((v98 ^ 0xB48752BA) >> 24));
  LODWORD(v86) = HIDWORD(v86);
  v103 = v86 >> 24;
  HIDWORD(v86) = v103 ^ 0xF5C8D7;
  LODWORD(v86) = v103 ^ 0x4D000000;
  v104 = v86 >> 24;
  v105 = *(v56 + 4 * (BYTE2(v101) ^ 0xA1u));
  HIDWORD(v86) = v105 ^ 0x869754;
  LODWORD(v86) = v105 ^ 0xD7000000;
  v106 = v86 >> 24;
  v107 = v104 & 0x800000;
  if ((v104 & 0x800000 & v106) != 0)
  {
    v107 = -v107;
  }

  v108 = ((HIBYTE(v99) ^ 0x983073ED) - 486303810 + *(v50 + 4 * (HIBYTE(v99) ^ 0x97))) ^ 0x6F2C3D9D;
  v109 = v104 & 0xFF7FFFFF ^ __ROR4__(((v99 ^ 0x983073E8) - 486303810 + *(v50 + 4 * (v99 ^ 0x92u))) ^ 0x1EFCE318, 16) ^ __ROR4__((*(v50 + 4 * (((v100 ^ 0x4C7E) >> 8) ^ 0x43u)) + (((v100 ^ 0x4C7E) >> 8) ^ 0x98307339) - 486303810) ^ 0xB20C8E6E, 8) ^ (v107 + v106);
  v110 = (((v101 ^ BYTE2(v96)) ^ 0x9830733C) - 486303810 + *(v50 + 4 * ((v101 ^ BYTE2(v96)) ^ 0x46u))) ^ 0xCB08B718;
  HIDWORD(v111) = HIBYTE(v101) ^ *(v52 + 4 * (HIBYTE(v101) ^ 0xB3)) ^ 0x2570210A ^ *(v56 + 4 * (BYTE2(v100) ^ 0x55u));
  LODWORD(v111) = HIDWORD(v111);
  v112 = (v111 >> 24) ^ __ROR4__((((v99 >> 7) | 0xFFFFFFCD) + (BYTE1(v99) ^ 0x3D) - 2000618982) ^ 0x794A9321 ^ *(v52 + 4 * (BYTE1(v99) ^ 0x83u)), 8) ^ __ROR4__(((v98 ^ 0x98307383) - 486303810 + *(v50 + 4 * (v98 ^ 0xF9u))) ^ 0xCEC5DD08, 16);
  v113 = (*(v51 + 4 * (BYTE2(v99) ^ 0xE6u)) - 825113923) ^ __ROR4__(__ROR4__(*(v56 + 4 * ((v100 ^ 0xDF554C7E) >> 24)), 24) ^ 0xF739C24, 24) ^ __ROR4__(__ROR4__(*(v56 + 4 * BYTE1(v102)), 24) ^ 0xB47597AD, 8) ^ __ROR4__(v110, 16) ^ 0x1743E6AA;
  v114 = (*(v51 + 4 * BYTE2(v102)) - 825113923) ^ __ROR4__(v108, 24) ^ __ROR4__((*(v50 + 4 * (BYTE1(v101) ^ 0xDCu)) + (BYTE1(v101) ^ 0x983073A6) - 486303810) ^ 0x2DE7F5BD, 8) ^ __ROR4__(((v100 ^ 0x98307347) - 486303810 + *(v50 + 4 * (v100 ^ 0x3Du))) ^ 0x1DBEBF9F, 16) ^ 0x9F685BB6;
  v115 = *(v52 + 4 * ((BYTE2(v112) ^ 0x5F) - ((2 * (HIWORD(v112) ^ 0x225F)) & 0x17C) + 190)) ^ __ROR4__(HIBYTE(v109) ^ 0x14ED4937 ^ *(v52 + 4 * (HIBYTE(v109) ^ 0x52)), 24) ^ __ROR4__((*(v50 + 4 * (BYTE1(v113) ^ 0x43u)) + (BYTE1(v113) ^ 0x98307339) - 486303810) ^ 0x72BA9987, 8) ^ ((((BYTE2(v112) ^ 0x5F) - (BYTE2(v112) ^ 0x88C0FA46)) ^ 0xFFFFFFFE) + (BYTE2(v112) ^ 0x5F)) ^ 0x50C8A198;
  v116 = v115 ^ __ROR4__((*(v51 + 4 * v114) - 825113923) ^ 0x2DB709DE, 16);
  if ((BYTE2(v109) ^ 1) != ((BYTE2(v109) ^ 1) + 4))
  {
    v115 = BYTE2(v109) ^ 1;
  }

  v117 = *(v52 + 4 * (v115 ^ 0xBE)) ^ __ROR4__(((HIBYTE(v114) ^ 0x98307339) - 486303810 + *(v50 + 4 * (HIBYTE(v114) ^ 0x43))) ^ 0x59E4F01, 24) ^ __ROR4__(BYTE1(v112) ^ 0x48E595CC ^ *(v52 + 4 * (BYTE1(v112) ^ 0xB8u)), 8) ^ __ROR4__(__ROR4__(*(v56 + 4 * v113), 24) ^ 0x862E1663, 16) ^ v115;
  HIDWORD(v118) = ((BYTE1(v109) ^ 0x98307349) - 486303810 + *(v50 + 4 * (BYTE1(v109) ^ 0x33u))) ^ 0xE9C64E54;
  LODWORD(v118) = HIDWORD(v118);
  v119 = (v118 >> 8) ^ __ROR4__(*(v56 + 4 * BYTE2(v114)) ^ 0x5FDC0FC ^ (*(v51 + 4 * HIBYTE(v113)) - 825113923), 24) ^ __ROR4__(((v112 ^ 0x9830738C) - 486303810 + *(v50 + 4 * (v112 ^ 0xF6u))) ^ 0x34C7D1C6, 16);
  v120 = ((BYTE2(v113) ^ 0x98307339) - 486303810 + *(v50 + 4 * (BYTE2(v113) ^ 0x43u))) ^ __ROR4__(HIBYTE(v112) ^ 0x97608709 ^ *(v52 + 4 * (HIBYTE(v112) ^ 0x9C)), 24) ^ __ROR4__(BYTE1(v114) ^ 0xE6AEA80E ^ *(v52 + 4 * (BYTE1(v114) ^ 0xBEu)), 8) ^ __ROR4__(((v109 ^ 0x983073AC) - 486303810 + *(v50 + 4 * (v109 ^ 0xD6u))) ^ 0x62101613, 16);
  v121 = v119 ^ 0x47EE09FF;
  LODWORD(v118) = __ROR4__(*(v56 + 4 * (BYTE1(v119) ^ 0xB6u)), 24);
  v122 = v118 ^ 0x772E6366;
  v124 = __PAIR64__(v118 ^ 0x772E6366, __ROR4__(*(v56 + 4 * (v117 ^ 0xD9u)), 24));
  v123 = v124 ^ 0x1005952;
  LODWORD(v124) = v122;
  v125 = (v124 >> 8) ^ __ROR4__(*(v56 + 4 * (BYTE2(v120) ^ 0xC9u)) ^ 0x9715E286 ^ ((((v116 ^ 0x1408A321u) >> 24) ^ 0x98307339) - 486303810 + *(v50 + 4 * (((v116 ^ 0x1408A321u) >> 24) ^ 0x43))), 24) ^ __ROR4__(v123, 16);
  v126 = __ROR4__(*(v56 + 4 * (HIBYTE(v117) ^ 0xF)), 24) ^ 0x417F8268;
  v127 = (*(v51 + 4 * (BYTE1(v120) ^ 0x19u)) - 825113923) ^ 0x1EF5FB32;
  v128 = (*(v51 + 4 * v121) - 825113923) ^ 0x3ABAA583;
  v129 = HIBYTE(v121) ^ 0xCFE7AD2F ^ *(v52 + 4 * (HIBYTE(v121) ^ 0xBE));
  v130 = *(v52 + 4 * (BYTE2(v117) ^ 0x12u));
  v131 = __ROR4__(*(v56 + 4 * (BYTE1(v116) ^ 0x1Cu)), 24) ^ 0xA0EA142F;
  v132 = (*(v51 + 4 * (v120 ^ 0xEDu)) - 825113923) ^ 0xC49158BC;
  v133 = ((v116 ^ 0x1408A321u) >> 16);
  v134 = *(v52 + 4 * (v133 ^ 0xBEu));
  v135 = ((BYTE2(v121) ^ 0x98307339) - 486303810 + *(v50 + 4 * (BYTE2(v121) ^ 0x43u))) ^ __ROR4__(HIBYTE(v120) ^ 0x108914E ^ *(v52 + 4 * (HIBYTE(v120) ^ 0x44)), 24) ^ __ROR4__(BYTE1(v117) ^ 0x6BF3D2F ^ *(v52 + 4 * (BYTE1(v117) ^ 0x1Cu)), 8);
  STACK[0x548] = v56;
  v136 = v133 ^ v134 ^ __ROR4__(v126, 24) ^ __ROR4__(v127, 8) ^ __ROR4__(v128, 16) ^ 0x73E47492;
  v138 = __PAIR64__(v129, __ROR4__(__ROR4__(*(v56 + 4 * (v116 ^ 0x21u)), 24) ^ 0xFF50B3F8, 16));
  v137 = v135 ^ v138;
  LODWORD(v138) = v129;
  v139 = (v138 >> 24) ^ __ROR4__(v131, 8) ^ __ROR4__(v132, 16) ^ 0xEC570707 ^ ((v130 ^ ((BYTE2(v117) ^ 0x88C0FAB5) - (BYTE2(v117) ^ 0x62CE0FF8 ^ v130)) ^ 0xEA0EF54D ^ (368118451 - (((v130 ^ 0x8BFE0E60) + 1946284448) ^ ((v130 ^ 0x36202655) - 908076629) ^ ((v130 ^ 0x57D0DD78) - 1473305976)))) + (BYTE2(v117) ^ 0x88C0FAB5));
  v140 = *(&off_1006B4E30 + LODWORD(STACK[0x560]) - 4390) - 8;
  v141 = *&v140[2 * ((v125 ^ 0x6BC1C9E1u) >> 24)];
  v142 = STACK[0x560];
  v143 = *(&off_1006B4E30 + LODWORD(STACK[0x560]) - 4020) - 4;
  v144 = *&v140[2 * (v136 - ((2 * v136) & 0x120)) + 288];
  v145 = v144 ^ (16 * (v144 ^ 0xFFFFE2E7) * (v144 ^ 0xFFFFE2E7));
  v146 = *(&off_1006B4E30 + LODWORD(STACK[0x560]) - 4350);
  v147 = ((BYTE1(v139) + 41539) ^ BYTE1(v139) ^ (*(v146 + 2 * (BYTE1(v139) ^ 0x7Bu)) - 28929) | ((v141 ^ (16 * (v141 ^ 0xFFFFE2E7) * (v141 ^ 0xFFFFE2E7)) ^ 0x86CF) << 16)) ^ (((*&v143[2 * (BYTE2(v137) ^ 0x36)] >> 3) & 0x1D78 ^ *&v143[2 * (BYTE2(v137) ^ 0x36)]) << 8) ^ (BYTE1(v145) & 0x2A | 0xC3146000) ^ (((v145 ^ 4) << 24) ^ 0xFFE98ED5) & (BYTE1(v145) ^ 0xFFFDEEC1);
  LOWORD(v141) = *&v140[2 * ((v125 ^ 0x6BC1C9E1u) >> 16)];
  v148 = v141 ^ (16 * (v141 ^ 0xE2E7) * (v141 ^ 0xE2E7));
  v149 = *&v143[2 * HIBYTE(v136)];
  v150 = v149 ^ 0x86CF ^ (v149 >> 3) & 0x1D78;
  LOWORD(v149) = *&v140[2 * (BYTE1(v137) ^ 8)];
  LOWORD(v121) = v149 ^ (16 * (v149 ^ 0xE2E7) * (v149 ^ 0xE2E7));
  v151 = *(&off_1006B4E30 + (LODWORD(STACK[0x560]) ^ 0x11DB)) - 4;
  v152 = *&v151[2 * v139];
  HIDWORD(v138) = ~v152;
  LODWORD(v138) = (v152 ^ 0xE160) << 16;
  v153 = (-21756 * (v138 >> 21)) ^ (v138 >> 21);
  v154 = (((v153 ^ 0xBC) << 24) ^ 0xE0FD4184) & (BYTE1(v153) ^ 0xFFFFF35C) | BYTE1(v153) & 0x7B;
  v155 = (HIBYTE(v139) + 41539) ^ HIBYTE(v139) ^ (*(v146 + 2 * (HIBYTE(v139) ^ 0x7B)) - 28929);
  v156 = *&v151[2 * BYTE2(v136)];
  HIDWORD(v138) = ~v156;
  LODWORD(v138) = (v156 ^ 0xE160) << 16;
  v157 = v138 >> 21;
  LODWORD(v151) = *&v151[2 * ((v125 ^ 0xC9E1) >> 8)];
  HIDWORD(v138) = ~v151;
  LODWORD(v138) = (v151 ^ 0xE160) << 16;
  LODWORD(v151) = v137 ^ ((v137 ^ 0x2D) + 41539) ^ 0x451E79A4 ^ (*(v146 + 2 * (v137 ^ 0x56u)) - 28929);
  v158 = *&v143[2 * (HIBYTE(v137) ^ 0x92)];
  v159 = *&v143[2 * BYTE2(v139)];
  LODWORD(v140) = *&v140[2 * (v125 ^ 0x71)];
  STACK[0x540] = v146;
  LODWORD(v140) = v140 ^ (16 * (v140 ^ 0xFFFFE2E7) * (v140 ^ 0xFFFFE2E7));
  v160 = ((BYTE1(v136) + 41539) ^ BYTE1(v136) ^ (*(v146 + 2 * (BYTE1(v136) ^ 0x7Bu)) - 28929) | ((v158 ^ 0xB895 ^ (v158 >> 3) & 0x1D78) << 16)) ^ (((v159 >> 3) & 0x1D78 ^ v159) << 8) ^ ((((v140 ^ 0xAC) << 24) ^ 0x105DBEB6) & (BYTE1(v140) ^ 0xFF5FBEC8) | BYTE1(v140) & 0x49);
  LODWORD(v146) = v160 ^ LODWORD(STACK[0x550]);
  v161 = (v150 << 16) ^ (v148 << 8) ^ v121 ^ v154 ^ v160 ^ 0xC9506BD9 ^ v147 ^ 0xF3FB0466;
  LODWORD(v151) = (v155 << 16) ^ (((-21756 * v157) ^ v157) << 8) ^ ((-21756 * (v138 >> 21)) ^ (v138 >> 21)) ^ __ROR4__(v151, 8) ^ 0xBC3F3220 ^ v161;
  LODWORD(v140) = v147 ^ 0xA6D7FFC8 ^ v151;
  v162 = v146 ^ v151;
  LODWORD(v146) = LODWORD(STACK[0x558]) ^ 0x5761722E;
  LODWORD(v151) = v140 ^ v147 ^ 0xF3FB0466;
  v163 = v161 ^ v146;
  v164 = v140 ^ v146;
  LODWORD(STACK[0x550]) = v140 ^ v146;
  v165 = *(&off_1006B4E30 + (v142 ^ 0x1655)) - 12;
  v166 = ((v161 ^ v146) >> 8);
  LODWORD(STACK[0x4E8]) = v166;
  LODWORD(v146) = (*&v165[4 * (v166 ^ 0x7D)] + (v166 ^ 0xD0) - 526772654) ^ 0x1DF39494;
  v167 = HIBYTE(v163);
  v168 = v163;
  v169 = *(&off_1006B4E30 + v142 - 3839);
  v170 = (*(v169 + 4 * (HIBYTE(v163) ^ 0xE8)) + 275154858) ^ 0xCF845AEE;
  v171 = *(&off_1006B4E30 + v142 - 4564) - 4;
  v172 = *&v171[4 * (BYTE2(v168) ^ 0xC1)];
  v173 = v172 ^ (4 * v172);
  LODWORD(STACK[0x4E0]) = v173;
  v174 = v168;
  LODWORD(STACK[0x490]) = v168;
  LODWORD(STACK[0x4E4]) = v168;
  v175 = (*(v169 + 4 * (v168 ^ 0x33u)) + 275154858) ^ __ROR4__(v173 ^ 0xE76B4417, 16) ^ __ROR4__(v170, 8);
  LODWORD(STACK[0x47C]) = v162;
  LODWORD(STACK[0x494]) = v162 ^ 0x4C7B703E;
  v176 = v151 ^ v162 ^ 0x4C7B703E;
  LODWORD(STACK[0x488]) = v176;
  LODWORD(STACK[0x53C]) = v162 ^ 0xB7249ECA;
  LODWORD(STACK[0x52C]) = v176 ^ 0x670ED92;
  LODWORD(v146) = v175 ^ __ROR4__(v146, 24) ^ v176 ^ 0x670ED92;
  LODWORD(STACK[0x4EC]) = v146;
  LODWORD(v151) = v146 ^ 0x734F3FE0;
  LODWORD(v146) = v146 ^ 0x734F3FE0 ^ v162 ^ 0xB7249ECA;
  LODWORD(v140) = v146 ^ v164;
  v177 = v146;
  LODWORD(STACK[0x4FC]) = v146;
  LODWORD(v146) = v146 ^ v164 ^ v174 ^ 0x4171630F;
  v178 = v140;
  LODWORD(STACK[0x530]) = v140;
  v179 = v174 ^ 0x4171630F;
  LODWORD(STACK[0x520]) = v174 ^ 0x4171630F;
  LODWORD(STACK[0x46C]) = BYTE1(v146);
  v180 = (*(v169 + 4 * (BYTE1(v146) ^ 0xDCu)) + 275154858) ^ 0x4E9D7867;
  LODWORD(STACK[0x468]) = BYTE3(v146);
  v181 = *(&off_1006B4E30 + v142 - 4274);
  LODWORD(v140) = *(v181 + 4 * (BYTE3(v146) ^ 0xF8)) ^ BYTE3(v146) ^ 0xEF ^ ((BYTE3(v146) ^ 0xEF) + 2084883252) ^ 0x46943789;
  LODWORD(STACK[0x464]) = BYTE2(v146);
  v182 = (*(v169 + 4 * (BYTE2(v146) ^ 0x37u)) + 275154858) ^ 0x83F35C36;
  LODWORD(STACK[0x498]) = v146;
  v183 = (*(v169 + 4 * (v146 ^ 0x57u)) + 275154858) ^ __ROR4__(v180, 24) ^ __ROR4__(v182, 16) ^ v151 ^ __ROR4__(v140, 8);
  LODWORD(v140) = v183 ^ 0x45105623 ^ v177;
  LODWORD(STACK[0x538]) = v140;
  v184 = v140 ^ 0x7C6404B3;
  v185 = v140 ^ 0x7C6404B3 ^ v179;
  LODWORD(STACK[0x478]) = HIBYTE(v185);
  v186 = v183 ^ 0x45105623 ^ __ROR4__((*&v165[4 * (HIBYTE(v185) ^ 0x28)] + (HIBYTE(v185) ^ 0x85) - 526772654) ^ 0xA9D5903, 8);
  LODWORD(STACK[0x3AC]) = BYTE2(v185);
  LODWORD(v140) = ((BYTE2(v185) ^ 0x7E) + 2084883252) ^ *(v181 + 4 * (BYTE2(v185) ^ 0x69u));
  HIDWORD(v138) = BYTE2(v185) ^ 0x9C68 ^ v140;
  LODWORD(v138) = v140 ^ 0xA49D0000;
  v187 = v138 >> 16;
  v188 = v186 & 1;
  if (BYTE2(v138) & v186)
  {
    v188 = -v188;
  }

  v189 = v188 + v187;
  v190 = v185;
  v191 = *&v165[4 * (v185 ^ 0x81)] + (v185 ^ 0x2C) - 526772654;
  v192 = v185 ^ 0xED06F4BF;
  LODWORD(STACK[0x3A8]) = BYTE1(v185);
  v193 = v191 ^ __ROR4__((*&v165[4 * (BYTE1(v185) ^ 0x34)] + (BYTE1(v185) ^ 0x99) - 526772654) ^ 0x4EF8E11A, 24) ^ v186 & 0xFFFFFFFE ^ v189;
  LODWORD(STACK[0x470]) = v184 ^ v178;
  v194 = v184 ^ v178 ^ 0xFC924928;
  LODWORD(STACK[0x4F8]) = v193;
  v195 = v193 ^ 0x553D9F86 ^ v184;
  LODWORD(STACK[0x4F4]) = v195;
  v196 = v195 ^ 0x8BBD18F4;
  v197 = v195 ^ 0x8BBD18F4 ^ v194;
  LODWORD(STACK[0x418]) = v197;
  v198 = v197 ^ v192;
  v199 = (v197 ^ v192) >> 24;
  LODWORD(STACK[0x41C]) = v199;
  v200 = (*&v165[4 * (v199 ^ 0x17)] + (v199 ^ 0xBA) - 526772654) ^ 0xD3230C70;
  v201 = ((v197 ^ v192) >> 16);
  LODWORD(STACK[0x420]) = v201;
  v202 = *(v169 + 4 * (v201 ^ 0x8Cu));
  v203 = (v202 ^ 0xF00B5789) & (2 * (v202 & 0xF54B972C)) ^ v202 & 0xF54B972C;
  v204 = ((2 * (v202 ^ 0xF21F7F91)) ^ 0xEA9D17A) & (v202 ^ 0xF21F7F91) ^ (2 * (v202 ^ 0xF21F7F91)) & 0x754E8BC;
  v205 = (v204 ^ 0x600C035) & (4 * v203) ^ v203;
  v206 = ((4 * (v204 ^ 0x1542885)) ^ 0x1D53A2F4) & (v204 ^ 0x1542885) ^ (4 * (v204 ^ 0x1542885)) & 0x754E8BC;
  v207 = (v206 ^ 0x550A0A0) & (16 * v205) ^ v205;
  v208 = ((16 * (v206 ^ 0x2044809)) ^ 0x754E8BD0) & (v206 ^ 0x2044809) ^ (16 * (v206 ^ 0x2044809)) & 0x754E8B0;
  v209 = v207 ^ 0x754E8BD ^ (v208 ^ 0x5448800) & (v207 << 8);
  v210 = ((v202 ^ (2 * ((v209 << 16) & 0x7540000 ^ v209 ^ ((v209 << 16) ^ 0x68BD0000) & (((v208 ^ 0x210602D) << 8) & 0x7540000 ^ 0x3140000 ^ (((v208 ^ 0x210602D) << 8) ^ 0x54E80000) & (v208 ^ 0x210602D)))) ^ 0xE0D0B628) + ((2 * (((v202 ^ 0xC24015AC) + 923501192) ^ v202 ^ ((v202 ^ 0x645AE9F) + 1930312117) ^ ((v202 ^ 0x110EA818) + 71647028) ^ ((v202 ^ 0x1FBF7BFF) + 183823573))) & 0x3635E0FC ^ 0x1420C0A8)) ^ 0xD4B8F2C4;
  LODWORD(STACK[0x3C4]) = v198;
  v211 = (v198 ^ 0xFA) - ((2 * (v198 ^ 0xFA)) & 0x1F8);
  LODWORD(STACK[0x3B4]) = HIBYTE(v198);
  v212 = *&v171[4 * (HIBYTE(v198) ^ 0x7D)];
  v213 = (*(v169 + 4 * (v211 + 252)) + 275154858) ^ __ROR4__(v212 ^ (4 * v212) ^ 0xEA319F87, 24) ^ __ROR4__(v210, 16) ^ v193 ^ 0x553D9F86;
  v214 = __ROR4__(v200, 8);
  LODWORD(STACK[0x504]) = v213 ^ v214;
  v215 = v213 ^ v214 ^ 0x49DBE67;
  v216 = v215 ^ v196 ^ v192;
  v217 = v215 ^ v196;
  LODWORD(STACK[0x42C]) = v215 ^ v196;
  LODWORD(STACK[0x434]) = HIBYTE(v216);
  v218 = *&v171[4 * (HIBYTE(v216) ^ 0x90)];
  LODWORD(STACK[0x518]) = v183 ^ 0x1FD5E34A;
  v219 = v218 ^ (4 * v218) ^ 0x6268E601;
  LODWORD(STACK[0x424]) = BYTE1(v216);
  v220 = *&v171[4 * (BYTE1(v216) ^ 0xFC)];
  LODWORD(STACK[0x430]) = BYTE2(v216);
  v221 = (*(v169 + 4 * (BYTE2(v216) ^ 0xEAu)) + 275154858) ^ 0x91C0126F;
  LODWORD(STACK[0x428]) = v216;
  v222 = *(v181 + 4 * (v216 ^ 0x11u)) ^ __ROR4__(v219, 8) ^ __ROR4__(v220 ^ (4 * v220) ^ 0x8AE57C79, 24);
  v223 = v215 ^ v194;
  LODWORD(STACK[0x500]) = v215 ^ v194;
  v224 = v216 ^ 6;
  v225 = v222 ^ __ROR4__(v221, 16) ^ v215 ^ (v224 + 2084883252);
  LODWORD(STACK[0x508]) = v225;
  v226 = v225 ^ v224;
  LODWORD(STACK[0x3D8]) = v226;
  v227 = v226 ^ 0x4CB83AD8;
  v228 = v226 ^ 0x4CB83AD8 ^ v217;
  LODWORD(STACK[0x514]) = v228;
  v229 = v228 ^ 0x49525736;
  v230 = v228 ^ 0x49525736 ^ v223;
  LODWORD(STACK[0x3D0]) = v230;
  v231 = v230 ^ 0xF9888A16;
  v232 = v230 ^ 0xF9888A16 ^ v216;
  LODWORD(STACK[0x3E4]) = BYTE2(v232);
  v233 = *&v165[4 * (BYTE2(v232) ^ 0xD)] + (BYTE2(v232) ^ 0xA0) - 526772654;
  LODWORD(STACK[0x404]) = HIBYTE(v232);
  v234 = (*(v169 + 4 * (HIBYTE(v232) ^ 0xFF)) + 275154858) ^ 0x1FF5B4CE;
  LODWORD(STACK[0x3C8]) = BYTE1(v232);
  v235 = *&v171[4 * (BYTE1(v232) ^ 0xFF)];
  LODWORD(STACK[0x3E8]) = v232;
  v236 = *&v171[4 * (v232 ^ 0xEC)];
  v237 = v236 ^ (4 * v236) ^ __ROR4__(v234, 8) ^ __ROR4__(v235 ^ (4 * v235) ^ 0xC3AB84AD, 24) ^ v227;
  v238 = __ROR4__(v233 ^ 0xA169AA53, 16);
  LODWORD(STACK[0x4F0]) = v237 ^ v238;
  v239 = v237 ^ v238 ^ 0x41E885D7;
  LODWORD(STACK[0x444]) = v239 ^ v229;
  v240 = v239 ^ v229 ^ 0xEBD80C66;
  LODWORD(STACK[0x438]) = v240 ^ v231;
  v241 = v240 ^ v231 ^ 0x8E3813D1;
  v242 = v241 ^ v232;
  LODWORD(STACK[0x448]) = BYTE2(v242);
  v243 = (*(v169 + 4 * (BYTE2(v242) ^ 0x1Du)) + 275154858) ^ 0x1FE51235;
  LODWORD(STACK[0x440]) = HIBYTE(v242);
  v244 = *(v181 + 4 * (HIBYTE(v242) ^ 0xD0)) ^ HIBYTE(v242) ^ 0xC7 ^ ((HIBYTE(v242) ^ 0xC7) + 2084883252) ^ 0xDD88EA4E;
  LODWORD(STACK[0x390]) = v242;
  v245 = *&v165[4 * (v242 ^ 0x43)];
  LODWORD(STACK[0x43C]) = BYTE1(v242);
  v246 = v241 - ((2 * v241) & 0x9D8C60D6) - 825872277;
  HIDWORD(v247) = (*(v169 + 4 * (BYTE1(v242) ^ 0x40u)) + 275154858) ^ 0xF9D480B5;
  LODWORD(v247) = HIDWORD(v247);
  v248 = (v247 >> 24) ^ __ROR4__(v243, 16) ^ v239 ^ (v245 + (v242 ^ 0xEE) - 526772654) ^ __ROR4__(v244, 8);
  v249 = v248 ^ 0xA06AAB05;
  v250 = BYTE2(v248);
  LODWORD(STACK[0x398]) = v248;
  v251 = v248 ^ 0xA06AAB05 ^ v240;
  LODWORD(STACK[0x454]) = v251 ^ v246;
  v252 = v251;
  v253 = v251 ^ v246 ^ v242;
  LODWORD(STACK[0x460]) = v253;
  v254 = v253 ^ 0xE1A537FA;
  v255 = (v253 ^ 0xE1A537FA) >> 24;
  LODWORD(STACK[0x45C]) = v255;
  v256 = (*(v169 + 4 * (v255 ^ 0x1E)) + 275154858) ^ 0xA3A78652;
  v257 = ((v253 ^ 0x37FA) >> 8);
  LODWORD(STACK[0x458]) = v257;
  v258 = *(v169 + 4 * (v257 ^ 0x93u)) + 275154858;
  LODWORD(STACK[0x394]) = BYTE2(v254);
  v259 = *(v169 + 4 * (BYTE2(v254) ^ 0x62u));
  STACK[0x558] = v169;
  v260 = v254;
  LODWORD(STACK[0x4C4]) = v254;
  v254 = v254;
  v261 = *(v181 + 4 * (v254 ^ 0xD9)) ^ __ROR4__(v256, 8) ^ __ROR4__(v258 ^ 0x23691CAE, 24) ^ __ROR4__((v259 + 275154858) ^ 0x57BB7D64, 16) ^ v249 ^ ((v254 ^ 0xCE) + 2084883252);
  v262 = v261 ^ v254 ^ 0xCE;
  v263 = BYTE2(v261);
  LODWORD(STACK[0x3A4]) = v261;
  v264 = v262;
  LODWORD(STACK[0x3CC]) = v262;
  LODWORD(STACK[0x408]) = v262 ^ v246;
  v265 = v262 ^ v246 ^ 0xB59956EB;
  LODWORD(STACK[0x3B0]) = v265;
  v266 = v265 ^ v260;
  LODWORD(STACK[0x414]) = BYTE1(v266);
  v267 = (*&v165[4 * (BYTE1(v266) ^ 0xF9)] + (BYTE1(v266) ^ 0x54) - 526772654) ^ 0xCC9C0D81;
  v268 = *&v171[4 * (BYTE2(v266) ^ 0x51)];
  LODWORD(STACK[0x3F4]) = HIBYTE(v266);
  v269 = (*(v169 + 4 * (HIBYTE(v266) ^ 0x12)) + 275154858) ^ 0x4B1E28A6;
  LODWORD(STACK[0x410]) = v266;
  v270 = *(v181 + 4 * (v266 ^ 0x7Eu)) ^ __ROR4__(v268 ^ (4 * v268) ^ 0x263DA792, 16) ^ __ROR4__(v269, 8) ^ v264 ^ 0xCD86D3D0 ^ ((v266 ^ 0x69) + 2084883252) ^ __ROR4__(v267, 24);
  LODWORD(STACK[0x378]) = v270;
  LODWORD(STACK[0x374]) = BYTE1(v193) ^ 0xE9;
  LODWORD(STACK[0x370]) = v263 ^ 0x73;
  LODWORD(STACK[0x368]) = BYTE2(v266) ^ 0xBB;
  LODWORD(STACK[0x36C]) = v250 ^ 0xCD;
  LODWORD(STACK[0x360]) = v190 ^ 0x2F;
  v271 = ((v167 ^ 0x55) - 526772654 + *&v165[4 * (v167 ^ 0xF8)]) ^ 0x26663D20;
  v272 = LODWORD(STACK[0x4E0]) ^ 0xA147942D;
  LODWORD(STACK[0x49C]) = v252;
  v273 = v264 ^ 0xCD86D3D0 ^ v252;
  LODWORD(STACK[0x4A4]) = v273;
  v274 = v270 ^ v266 ^ 0x69;
  LODWORD(STACK[0x38C]) = v274;
  LODWORD(STACK[0x35C]) = v274 ^ 0x70B281DB;
  v275 = STACK[0x4EC];
  LODWORD(STACK[0x2F8]) = LODWORD(STACK[0x4EC]) ^ 0xD2;
  v276 = v274 ^ 0x70B281DB ^ v273;
  LODWORD(STACK[0x364]) = v276;
  LODWORD(STACK[0x2FC]) = BYTE2(v276) ^ 0xD2;
  v277 = v171;
  v278 = *&v171[4 * (LODWORD(STACK[0x4E8]) ^ 0xD2)];
  v279 = *&v171[4 * (LODWORD(STACK[0x4E4]) ^ 0x8C)];
  v280 = v279 ^ LODWORD(STACK[0x52C]) ^ (4 * v279) ^ __ROR4__(v271, 8) ^ __ROR4__(v272, 16) ^ __ROR4__(v278 ^ (4 * v278) ^ 0xC26058F8, 24);
  LODWORD(STACK[0x4B8]) = v280;
  v281 = v280 ^ 0xA2CB9C17;
  v282 = v280 ^ 0xA2CB9C17 ^ LODWORD(STACK[0x53C]);
  v283 = v282 ^ LODWORD(STACK[0x550]);
  v284 = v282;
  LODWORD(STACK[0x4E4]) = v282;
  LODWORD(STACK[0x384]) = v283;
  v285 = v283 ^ 0x5E626358;
  v286 = ((v283 ^ 0x5E626358) + 195931295 + ~(2 * ((v283 ^ 0x5E626358) & 0xBADAC9F ^ v283 & 1))) ^ LODWORD(STACK[0x520]);
  v287 = v286 ^ 0x458F55A8;
  v288 = ((((v283 ^ 0x6358) - 21345 + ~(2 * ((v283 ^ 0x6358) & 0xAC9F ^ v283 & 1))) ^ LOWORD(STACK[0x520]) ^ 0x55A8) >> 8);
  LODWORD(STACK[0x388]) = v288;
  v289 = *(v277 + 4 * (v288 ^ 0x1Du));
  LODWORD(STACK[0x304]) = v286;
  v290 = (*&v165[4 * (v286 ^ 0x1A)] + (v286 ^ 0xB7) - 526772654) ^ __ROR4__(v289 ^ 0x87DE5981 ^ (((4 * v289) ^ 0xD2B306D4) - 2 * (((4 * v289) ^ 0xD2B306D4) & 0x74ACC1BC ^ (4 * v289) & 8) - 190004811), 24);
  v291 = ((v286 ^ 0x458F55A8u) >> 16);
  LODWORD(STACK[0x380]) = v291;
  v292 = *(v181 + 4 * ((((v291 ^ 0x9A) - (v291 ^ 0x8D)) ^ 0xFFFFFFFE) + (v291 ^ 0x9A))) ^ v291 ^ 0x9A ^ (((2 * (v291 ^ 0x9A)) & 0x68) + (v291 ^ 0x7C44CBAE) + 1978077601 + ((2 * ((((2 * (v291 ^ 0x9A)) & 0x68) + (v291 ^ 0x7C44CBAE)) & 0x1A2 ^ (v291 ^ 0x7C44CBAE | 0x7FFFFFFD))) ^ 0xE8880005)) ^ 0xD17A8DB6;
  v293 = (v286 ^ 0x458F55A8u) >> 24;
  LODWORD(STACK[0x300]) = v293;
  v294 = v290 ^ __ROR4__((*&v165[4 * (v293 ^ 0xB2)] + (v293 ^ 0x1F) - 526772654) ^ 0x34C6306B, 8);
  LODWORD(v247) = __ROR4__(v292, 16);
  v295 = ((v294 ^ v247) - ((2 * (v294 ^ v247)) & 0x57204438) - 1416617444) ^ v281;
  LODWORD(STACK[0x34C]) = v295;
  v296 = ((v295 ^ 0x64652FC9) - 2 * ((v295 ^ 0x64652FC9) & 0x546B34DF ^ v295 & 0x14) + 1416312011) ^ v284;
  LODWORD(STACK[0x4B4]) = v296;
  v297 = v296 ^ 0xEC5CEA2F ^ v285;
  LODWORD(STACK[0x33C]) = v297 ^ v287;
  v298 = v297;
  v299 = ((v297 ^ v287) >> 16);
  LODWORD(STACK[0x350]) = v299;
  v300 = *&v165[4 * (v299 ^ 0xFB)] + (v299 ^ 0x56) - 526772654;
  v301 = (v297 ^ v287);
  LODWORD(STACK[0x344]) = v301;
  v302 = *&v165[4 * (v301 ^ 0x71)] + (v301 ^ 0xDC) - 526772654;
  v303 = v297 ^ v287 ^ 0x574965C3;
  LODWORD(STACK[0x334]) = BYTE1(v303);
  v304 = v302 ^ v295 ^ 0x64652FC9 ^ __ROR4__(v300 ^ 0x34C6306B, 16) ^ __ROR4__(*(v181 + 4 * (HIBYTE(v303) ^ 0x8D)) ^ HIBYTE(v303) ^ 0x9A ^ ((HIBYTE(v303) ^ 0x9A) - 232006443 + ((2 * (HIBYTE(v303) ^ 0x9A) + 616) & 0x340 ^ 0x1777FFFF)) ^ 0xD17A8DB6, 8) ^ __ROR4__(*(v181 + 4 * (BYTE1(v303) ^ 0x8Du)) ^ BYTE1(v303) ^ 0x9A ^ ((BYTE1(v303) ^ 0x9A) - ((2 * (BYTE1(v303) ^ 0x9A) + 616) & 0x340) + 161733844) ^ 0xD17A8DB6, 24);
  v305 = v304 ^ v296 ^ 0xEC5CEA2F;
  v306 = v304;
  LODWORD(STACK[0x4C8]) = v304;
  v307 = v305 ^ 0xE8C6306B;
  v308 = v305;
  LODWORD(STACK[0x4CC]) = v305;
  v309 = v305 ^ 0xE8C6306B ^ v287;
  v310 = v307;
  LODWORD(STACK[0x348]) = v307;
  LODWORD(STACK[0x37C]) = HIBYTE(v309);
  v311 = *&v165[4 * (HIBYTE(v309) ^ 0xB2)] + (HIBYTE(v309) ^ 0x1F) - 526772654;
  LODWORD(STACK[0x354]) = BYTE2(v309);
  v312 = *(v277 + 4 * (BYTE2(v309) ^ 0x1Du));
  LODWORD(STACK[0x4E8]) = v310 ^ v298;
  LODWORD(STACK[0x358]) = BYTE1(v309);
  v313 = *(v277 + 4 * ((v310 ^ v298 ^ v303) ^ 0xDEu));
  v314 = (4 * v313) ^ __ROR4__(v312 ^ 0x87DE5981 ^ (((4 * v312) ^ 0xD2B306D4) - ((2 * ((4 * v312) ^ 0xD2B306D4)) & 0xE9598368) - 190004811), 16) ^ v306 ^ __ROR4__(v311 ^ 0x34C6306B, 8);
  LODWORD(v247) = __ROR4__((*&v165[4 * (BYTE1(v309) ^ 0xB2)] + (BYTE1(v309) ^ 0x1F) - 526772654) ^ 0x34C6306B, 24);
  v315 = ((v314 ^ v247 ^ 0xD2B306D4) - ((2 * (v314 ^ v247 ^ 0xD2B306D4)) & 0xE959836A) - 190004811) ^ v313;
  LODWORD(STACK[0x324]) = v315;
  v316 = v298;
  LODWORD(STACK[0x2F4]) = v298;
  v317 = v309 ^ 0x9E973C42 ^ v315 ^ v298;
  v318 = v315 ^ v298;
  LODWORD(STACK[0x338]) = HIBYTE(v317);
  v319 = *&v165[4 * (HIBYTE(v317) ^ 0xB2)] + (HIBYTE(v317) ^ 0x1F) - 526772654;
  v320 = v309 ^ 0x42 ^ (v315 ^ v298);
  LODWORD(STACK[0x340]) = v320 ^ 0xB2;
  v321 = *&v165[4 * (v320 ^ 0xB2)] + (v320 ^ 0x1F) - 526772654;
  LODWORD(STACK[0x330]) = BYTE2(v317);
  v322 = (*&v165[4 * (BYTE2(v317) ^ 0xB2)] + (BYTE2(v317) ^ 0x1F) - 526772654) ^ 0x34C6306B;
  LODWORD(STACK[0x32C]) = BYTE1(v317);
  v323 = STACK[0x558];
  v324 = v321 ^ __ROR4__((*(STACK[0x558] + 4 * (BYTE1(v317) ^ 0xA2u)) + 275154858) ^ 0xFBEEB20F, 24) ^ __ROR4__(v319 ^ 0x34C6306B, 8) ^ __ROR4__(v322, 16);
  LODWORD(STACK[0x320]) = v324 ^ v308;
  v325 = v324 ^ v308 ^ v309;
  LODWORD(STACK[0x328]) = v309;
  v326 = v325 ^ 0xF2973C42;
  v327 = *(v277 + 4 * (v325 ^ 0x1Du));
  v328 = *(v181 + 4 * (BYTE2(v325) ^ 0x8Du)) ^ BYTE2(v325) ^ 0x9A ^ ((BYTE2(v325) ^ 0x9A) - ((2 * (BYTE2(v325) ^ 0x9A) + 616) & 0x340) + 161733844) ^ 0xD17A8DB6;
  HIDWORD(v247) = (*(v323 + 4 * (BYTE1(v325) ^ 0xA2u)) + 275154858) ^ 0xFBEEB20F;
  LODWORD(v247) = HIDWORD(v247);
  v329 = (v247 >> 24) ^ (4 * v327) ^ __ROR4__((*(v323 + 4 * (HIBYTE(v325) ^ 0x7A)) + 275154858) ^ 0xFBEEB20F, 8);
  LODWORD(v247) = __ROR4__(v328, 16);
  LODWORD(STACK[0x4E0]) = v324 ^ v315;
  LODWORD(STACK[0x2E0]) = v276 ^ 0x8ACAC0C3;
  LODWORD(v323) = v276 ^ 0x8ACAC0C3 ^ LODWORD(STACK[0x4C4]);
  LOBYTE(v276) = v276 ^ 0xC3 ^ LOBYTE(STACK[0x4C4]);
  LODWORD(STACK[0x4A0]) = v323;
  LODWORD(STACK[0x4C4]) = BYTE2(v323);
  LODWORD(STACK[0x2DC]) = *&v165[4 * (BYTE2(v323) ^ 0x74)];
  v330 = v327 ^ v324 ^ v315 ^ 0xD26F8EC1 ^ ((v329 ^ v247 ^ 0xD2B306D4) - 2 * ((v329 ^ v247 ^ 0xD2B306D4) & 0x74ACC1BF ^ (v329 ^ v247) & 0xA) - 190004811);
  v331 = v315 ^ v298 ^ 0x2A973C42 ^ v330;
  LOBYTE(v270) = v331 ^ v326;
  v332 = v331 ^ v326 ^ 0xE53E82E8;
  v333 = *(v181 + 4 * (BYTE1(v332) ^ 0x8Du)) ^ BYTE1(v332) ^ 0x9A ^ ((BYTE1(v332) ^ 0x9A) - ((2 * (BYTE1(v332) ^ 0x9A) + 616) & 0x340) + 161733844) ^ 0xD17A8DB6;
  v334 = *(v181 + 4 * (HIBYTE(v332) ^ 0x8D)) ^ HIBYTE(v332) ^ 0x9A ^ ((HIBYTE(v332) ^ 0x9A) - ((2 * (HIBYTE(v332) ^ 0x9A) + 616) & 0x340) + 161733844) ^ 0xD17A8DB6;
  v335 = *(v277 + 4 * (BYTE2(v332) ^ 0x1Du));
  v336 = (*&v165[4 * (v270 ^ 0x5A)] + (v270 ^ 0xF7) - 526772654) ^ __ROR4__(v335 ^ 0x87DE5981 ^ (((4 * v335) ^ 0xD2B306D4) - 2 * (((4 * v335) ^ 0xD2B306D4) & 0x74ACC1BC ^ (4 * v335) & 8) - 190004811), 16) ^ __ROR4__(v334, 8) ^ __ROR4__(v333, 24);
  LODWORD(STACK[0x314]) = v336;
  v337 = v336 ^ v309 ^ 0x46C6306B;
  STACK[0x318] = v181;
  v338 = *(v181 + 4 * (BYTE1(v337) ^ 0x8Du)) ^ BYTE1(v337) ^ 0x9A ^ ((BYTE1(v337) ^ 0x9A) - 232006443 + ~((2 * (BYTE1(v337) ^ 0x9A) - 125200792) & 0xE8880340)) ^ 0xD17A8DB6;
  v339 = HIBYTE(v337) ^ 0x9A;
  v340 = v339 - ((2 * v339 + 616) & 0x340);
  v341 = *(v181 + 4 * (HIBYTE(v337) ^ 0x8D)) ^ v339;
  v342 = (v340 + 161733844) ^ 0xD17A8DB6;
  STACK[0x4A8] = v277;
  v343 = *(v277 + 4 * (BYTE2(v337) ^ 0x1Du));
  LODWORD(v323) = *(v277 + 4 * (((v336 ^ v309) ^ 0x9D) - ((2 * ((v336 ^ v309) ^ 0x9D)) & 0x1D6u) + 235));
  HIDWORD(v247) = v343 ^ 0x87DE5981 ^ (((4 * v343) ^ 0xD2B306D4) - ((2 * ((4 * v343) ^ 0xD2B306D4)) & 0xE9598368) - 190004811);
  LODWORD(v247) = HIDWORD(v247);
  v344 = (v247 >> 16) ^ (4 * v323) ^ __ROR4__(v341 ^ v342, 8);
  LODWORD(v247) = __ROR4__(v338, 24);
  v345 = (v344 ^ v247 ^ 0xD2B306D4) - 2 * ((v344 ^ v247 ^ 0xD2B306D4) & 0x74ACC1BF ^ (v344 ^ v247) & 0xA);
  v346 = *(&off_1006B4E30 + LODWORD(STACK[0x560]) - 3719) - 8;
  v347 = *&v346[4 * (BYTE2(LODWORD(STACK[0x4F4])) ^ 0x57)];
  v348 = *&v346[4 * (LODWORD(STACK[0x4F4]) ^ 0x52)];
  v349 = *&v346[4 * LODWORD(STACK[0x374])];
  v350 = *&v346[4 * (BYTE2(LODWORD(STACK[0x4F8])) ^ 0x60)];
  v351 = *&v346[4 * (BYTE2(LODWORD(STACK[0x514])) ^ 0xB9)];
  LODWORD(STACK[0x374]) = *&v346[4 * (BYTE1(LODWORD(STACK[0x508])) ^ 0xE5)];
  LODWORD(STACK[0x2E8]) = *&v346[4 * (BYTE2(LODWORD(STACK[0x504])) ^ 0x77)];
  LODWORD(STACK[0x2D8]) = *&v346[4 * (HIBYTE(LODWORD(STACK[0x500])) ^ 0x2A)];
  LODWORD(STACK[0x370]) = *&v346[4 * LODWORD(STACK[0x370])];
  v352 = STACK[0x4A4];
  LODWORD(STACK[0x2C8]) = *&v346[4 * (BYTE2(LODWORD(STACK[0x4A4])) ^ 0x64)];
  LODWORD(STACK[0x2B8]) = *&v346[4 * (BYTE1(v352) ^ 0xA2)];
  LODWORD(STACK[0x368]) = *&v346[4 * LODWORD(STACK[0x368])];
  v353 = STACK[0x4F0];
  v354 = *&v346[4 * (LODWORD(STACK[0x4F0]) ^ 0x8B)];
  v355 = v323 ^ v330 ^ v336 ^ 0xA9D3BF87 ^ (v345 - 190004811);
  LODWORD(STACK[0x2C4]) = v355;
  LODWORD(STACK[0x390]) = *&v346[4 * (LODWORD(STACK[0x390]) ^ 0x54)];
  LODWORD(STACK[0x2A4]) = *&v346[4 * (HIBYTE(v353) ^ 0x5C)];
  LODWORD(STACK[0x298]) = *&v346[4 * (BYTE2(v275) ^ 0x7F)];
  LODWORD(STACK[0x294]) = *&v346[4 * (HIBYTE(LODWORD(STACK[0x530])) ^ 0x24)];
  LODWORD(STACK[0x308]) = v318;
  v356 = STACK[0x4FC];
  LODWORD(STACK[0x290]) = *&v346[4 * (BYTE1(LODWORD(STACK[0x4FC])) ^ 0x30)];
  LODWORD(STACK[0x498]) = *&v346[4 * (LODWORD(STACK[0x498]) ^ 0x2C)];
  LODWORD(STACK[0x2F8]) = *&v346[4 * LODWORD(STACK[0x2F8])];
  LODWORD(STACK[0x28C]) = *&v346[4 * (v356 ^ 0x65)];
  LODWORD(STACK[0x288]) = *&v346[4 * (HIBYTE(v356) ^ 0x51)];
  LODWORD(STACK[0x36C]) = *&v346[4 * LODWORD(STACK[0x36C])];
  LODWORD(STACK[0x394]) = *&v346[4 * (LODWORD(STACK[0x394]) ^ 0x3D)];
  LODWORD(STACK[0x280]) = *&v346[4 * (HIBYTE(LODWORD(STACK[0x49C])) ^ 0x9B)];
  LODWORD(STACK[0x2FC]) = *&v346[4 * LODWORD(STACK[0x2FC])];
  v357 = v276;
  LODWORD(STACK[0x278]) = *&v346[4 * (v276 ^ 0xEA)];
  LODWORD(STACK[0x3A8]) = *&v346[4 * (LODWORD(STACK[0x3A8]) ^ 0xD4)];
  LODWORD(STACK[0x3AC]) = *&v346[4 * (LODWORD(STACK[0x3AC]) ^ 0x10)];
  LODWORD(STACK[0x360]) = *&v346[4 * LODWORD(STACK[0x360])];
  LODWORD(STACK[0x274]) = *&v346[4 * HIBYTE(LODWORD(STACK[0x518]))];
  v358 = v355 ^ v331;
  LODWORD(STACK[0x2A0]) = v358;
  v359 = STACK[0x4B4];
  LODWORD(STACK[0x26C]) = *&v346[4 * (HIBYTE(LODWORD(STACK[0x4B4])) ^ 0x42)];
  LODWORD(STACK[0x260]) = *&v346[4 * (v359 ^ 0x78)];
  LODWORD(STACK[0x258]) = *&v346[4 * (HIBYTE(v316) ^ 0x61)];
  v360 = *&v346[4 * (BYTE1(v318) ^ 0x33)];
  v361 = *&v346[4 * (v318 ^ 0xC3)];
  v362 = *&v346[4 * (LODWORD(STACK[0x4C8]) ^ 0x50)];
  v363 = *&v346[4 * (BYTE1(LODWORD(STACK[0x4E8])) ^ 0x8C)];
  LODWORD(v277) = *&v346[4 * (BYTE1(LODWORD(STACK[0x4CC])) ^ 0xF2)];
  v364 = v358 ^ v337 ^ 0x8ACBD66D;
  LODWORD(STACK[0x25C]) = v364;
  v365 = *&v346[4 * (LODWORD(STACK[0x300]) ^ 0xCE)];
  v366 = *&v346[4 * (LODWORD(STACK[0x4B8]) ^ 0x7D)];
  v367 = *&v346[4 * (HIBYTE(LODWORD(STACK[0x4E4])) ^ 0x77)];
  v368 = *&v346[4 * (HIBYTE(LODWORD(STACK[0x4B8])) ^ 0x39)];
  v369 = *&v346[4 * (LODWORD(STACK[0x304]) ^ 0x3A)];
  v370 = (v358 ^ v337);
  LODWORD(STACK[0x268]) = v370;
  v371 = *&v346[4 * (HIBYTE(LODWORD(STACK[0x4E0])) ^ 0x90)];
  v372 = *&v346[4 * (v370 ^ 0x2B)];
  LODWORD(STACK[0x254]) = BYTE1(v364);
  v373 = *&v346[4 * (BYTE1(v364) ^ 0x24)];
  v374 = 604099483 * v347 + 71125684;
  v375 = 604099483 * v349 + 71125684;
  v376 = 604099483 * v350 + 71125684;
  v377 = 604099483 * LODWORD(STACK[0x374]) + 71125684;
  v378 = 604099483 * LODWORD(STACK[0x2E8]) + 71125684;
  v379 = 604099483 * LODWORD(STACK[0x2D8]) + 71125684;
  LODWORD(STACK[0x264]) = 604099483 * LODWORD(STACK[0x370]) + 71125684;
  LODWORD(STACK[0x270]) = 604099483 * LODWORD(STACK[0x2C8]) + 71125684;
  v380 = 604099483 * LODWORD(STACK[0x2B8]) + 71125684;
  v381 = 604099483 * LODWORD(STACK[0x368]) + 71125684;
  LODWORD(STACK[0x240]) = 604099483 * LODWORD(STACK[0x390]) + 71125684;
  LODWORD(STACK[0x214]) = 604099483 * LODWORD(STACK[0x2A4]) + 71125684;
  LODWORD(STACK[0x374]) = 604099483 * LODWORD(STACK[0x298]) + 71125684;
  LODWORD(STACK[0x24C]) = 604099483 * LODWORD(STACK[0x294]) + 71125684;
  LODWORD(STACK[0x250]) = 604099483 * LODWORD(STACK[0x290]) + 71125684;
  v382 = 604099483 * LODWORD(STACK[0x498]) + 71125684;
  v846 = 604099483 * LODWORD(STACK[0x2F8]) + 71125684;
  LODWORD(STACK[0x200]) = 604099483 * LODWORD(STACK[0x28C]) + 71125684;
  v849 = 604099483 * LODWORD(STACK[0x288]) + 71125684;
  v831 = 604099483 * LODWORD(STACK[0x36C]) + 71125684;
  v838 = 604099483 * LODWORD(STACK[0x394]) + 71125684;
  v835 = 604099483 * LODWORD(STACK[0x280]) + 71125684;
  LODWORD(STACK[0x2D8]) = 604099483 * LODWORD(STACK[0x2FC]) + 71125684;
  LODWORD(STACK[0x248]) = 604099483 * LODWORD(STACK[0x278]) + 71125684;
  LODWORD(STACK[0x390]) = 604099483 * LODWORD(STACK[0x3A8]) + 71125684;
  LODWORD(STACK[0x3AC]) = 604099483 * LODWORD(STACK[0x3AC]) + 71125684;
  LODWORD(STACK[0x394]) = 604099483 * LODWORD(STACK[0x360]) + 71125684;
  LODWORD(STACK[0x3A8]) = 604099483 * LODWORD(STACK[0x274]) + 71125684;
  LODWORD(STACK[0x26C]) = 604099483 * LODWORD(STACK[0x26C]) + 71125684;
  LODWORD(STACK[0x274]) = 604099483 * LODWORD(STACK[0x260]) + 71125684;
  LODWORD(STACK[0x278]) = 604099483 * LODWORD(STACK[0x258]) + 71125684;
  LODWORD(STACK[0x280]) = 604099483 * v360 + 71125684;
  LODWORD(STACK[0x288]) = 604099483 * v361 + 71125684;
  LODWORD(STACK[0x28C]) = 604099483 * v362 + 71125684;
  LODWORD(STACK[0x290]) = 604099483 * v363 + 71125684;
  LODWORD(STACK[0x294]) = 604099483 * v277 + 71125684;
  LODWORD(STACK[0x298]) = 604099483 * v365 + 71125684;
  LODWORD(STACK[0x2B8]) = 604099483 * v366 + 71125684;
  LODWORD(STACK[0x2C8]) = 604099483 * v367 + 71125684;
  LODWORD(STACK[0x2E8]) = 604099483 * v368 + 71125684;
  LODWORD(STACK[0x2F8]) = 604099483 * v369 + 71125684;
  LODWORD(STACK[0x2FC]) = 604099483 * v371 + 71125684;
  LODWORD(STACK[0x300]) = 604099483 * v372 + 71125684;
  LODWORD(STACK[0x304]) = 604099483 * v373 + 71125684;
  v383 = (LODWORD(STACK[0x2DC]) + (LODWORD(STACK[0x4C4]) ^ 0xD9) - 526772654) ^ 0x1E0A4F8;
  v384 = STACK[0x4A0];
  v385 = BYTE1(LODWORD(STACK[0x4A0]));
  LODWORD(STACK[0x238]) = v385;
  LODWORD(v323) = *(STACK[0x4A8] + 4 * (v385 ^ 0xB8u));
  v386 = HIBYTE(v384);
  v387 = (*(STACK[0x558] + 4 * (HIBYTE(v384) ^ 0xC9)) + 275154858) ^ 0x9356BCB1;
  v388 = *(STACK[0x4A8] + 4 * (v357 ^ 0xEDu));
  LODWORD(v323) = v388 ^ (4 * v388) ^ __ROR4__(v323 ^ (4 * v323) ^ 0xD4140184, 24) ^ __ROR4__(v387, 8) ^ LODWORD(STACK[0x35C]) ^ __ROR4__(v383, 16);
  LODWORD(STACK[0x36C]) = v323;
  v389 = v323 ^ 0xB7F3B03D;
  LODWORD(v323) = STACK[0x3B0];
  v390 = LODWORD(STACK[0x2E0]) ^ LODWORD(STACK[0x3B0]);
  LODWORD(STACK[0x498]) = v389 ^ LODWORD(STACK[0x2E0]);
  LODWORD(STACK[0x370]) = v389 ^ v323;
  v391 = STACK[0x418];
  v392 = STACK[0x560];
  v393 = *(&off_1006B4E30 + LODWORD(STACK[0x560]) - 4279) - 12;
  v394 = *&v393[4 * (BYTE1(LODWORD(STACK[0x418])) ^ 0x42)] + 1813297668;
  LODWORD(STACK[0x3B0]) = v394 ^ 0x3CC398FB ^ (4 * v394) & 0x7C670130;
  v395 = *&v393[4 * (LODWORD(STACK[0x3C4]) ^ 0xCB)] + 1813297668;
  LODWORD(v277) = v392;
  v396 = *(&off_1006B4E30 + (v392 ^ 0x113D));
  LODWORD(v323) = *(v396 + 4 * (LODWORD(STACK[0x3B4]) ^ 0x80u));
  v397 = LODWORD(STACK[0x41C]) ^ 0x48;
  v398 = v391;
  v399 = *(v396 + 4 * (HIBYTE(v391) ^ 0x54));
  LODWORD(STACK[0x368]) = v399 ^ (v399 >> 4) ^ (v399 >> 3) ^ 0xBC7D17E5;
  v400 = *(&off_1006B4E30 + (v277 ^ 0x16E6));
  v401 = STACK[0x4F4];
  v402 = *(v396 + 4 * v397) ^ (*(v396 + 4 * v397) >> 4) ^ (*(v396 + 4 * v397) >> 3) ^ 0x20897A59;
  v403 = *(v400 + 4 * (HIBYTE(LODWORD(STACK[0x4F4])) ^ 0x9Bu)) ^ 0x62FDF4BC;
  HIDWORD(v247) = v323 ^ (v323 >> 4) ^ (v323 >> 3) ^ 0x80B70B1B;
  LODWORD(v247) = HIDWORD(v247);
  LODWORD(STACK[0x2E0]) = BYTE2(v398) ^ 0xD0;
  LODWORD(v323) = *(v396 + 4 * (LODWORD(STACK[0x420]) ^ 0xEu));
  LODWORD(STACK[0x3C4]) = (v247 >> 8) ^ __ROR4__(v395 ^ 0x9B5E9FA1 ^ (4 * v395) & 0x7C670130, 16) ^ v323 ^ (v323 >> 3) ^ (v323 >> 4) ^ __ROR4__(v402, 24);
  v404 = *(v396 + 4 * (LODWORD(STACK[0x4F8]) ^ 0x44u));
  LODWORD(v346) = *&v393[4 * (HIBYTE(LODWORD(STACK[0x4F8])) ^ 0x61)] + 1813297668;
  v405 = *(v396 + 4 * (BYTE1(v401) ^ 0x12u));
  LODWORD(STACK[0x4F8]) = v374 ^ __ROR4__(v403, 24) ^ (((v374 & 0x40000000 | (v374 >> 3)) ^ v374 & 0xBFFFFFF8) >> 3) ^ __ROR4__((604099483 * v348 + 71125684) ^ ((604099483 * v348 + 71125684) >> 6) ^ ((604099483 * v348 + 71125684) >> 3) ^ 0xF274BF30, 16) ^ __ROR4__(v405 ^ (v405 >> 4) ^ (v405 >> 3) ^ 0x7B026C8E, 8);
  HIDWORD(v247) = v346 ^ 0x142F0E6 ^ (4 * v346) & 0x7C670130;
  LODWORD(v247) = HIDWORD(v247);
  LODWORD(STACK[0x228]) = (v247 >> 24) ^ __ROR4__(v404 ^ (v404 >> 4) ^ (v404 >> 3) ^ 0x24808BCE, 16) ^ v376 ^ (v376 >> 3) ^ (v376 >> 6) ^ __ROR4__(v375 ^ (v375 >> 6) ^ (v375 >> 3) ^ 0xCF1B504C, 8);
  LODWORD(STACK[0x244]) = *(v400 + 4 * (v398 ^ 0x47u)) ^ 0x783C98CD;
  v406 = *&v393[4 * (LODWORD(STACK[0x3C8]) ^ 0x4B)] + 1813297668;
  LODWORD(STACK[0x2DC]) = v406 ^ 0xF9ACA91C ^ (4 * v406) & 0x7C670130;
  v407 = *(v400 + 4 * (LODWORD(STACK[0x3D8]) ^ 2u)) ^ 0xB4EEA5D1;
  v408 = STACK[0x3D0];
  LODWORD(v323) = *&v393[4 * (LODWORD(STACK[0x3D0]) ^ 0x50)] + 1813297668;
  LODWORD(STACK[0x4F4]) = v323 ^ 0x6EEB275B ^ (4 * v323) & 0x7C670130;
  LODWORD(STACK[0x23C]) = LODWORD(STACK[0x3E4]) ^ 0xC1;
  v409 = STACK[0x508];
  v410 = *(v396 + 4 * (HIBYTE(LODWORD(STACK[0x508])) ^ 0x32u));
  v411 = *&v393[4 * (HIBYTE(v408) ^ 0x12)] + 1813297668;
  LODWORD(STACK[0x41C]) = v411 ^ 0x9F6963E0 ^ (4 * v411) & 0x7C670130;
  v412 = *&v393[4 * (HIBYTE(LODWORD(STACK[0x514])) ^ 0xB5)] + 1813297668;
  LODWORD(STACK[0x514]) = (604099483 * v351 + 71125684) ^ ((604099483 * v351 + 71125684) >> 6) ^ ((604099483 * v351 + 71125684) >> 3) ^ __ROR4__(*(v400 + 4 * (BYTE1(LODWORD(STACK[0x514])) ^ 0xF2u)) ^ 0xF7EB7CBF, 8) ^ __ROR4__(*(v400 + 4 * (LODWORD(STACK[0x514]) ^ 0x36u)) ^ 0x7FFE7769, 16) ^ __ROR4__(v412 ^ 0x69B89A53 ^ (4 * v412) & 0x7C670130, 24);
  LODWORD(STACK[0x234]) = *(v400 + 4 * (LODWORD(STACK[0x404]) ^ 0x7Fu)) ^ 0xC083DB78;
  HIDWORD(v247) = v410 ^ (v410 >> 4) ^ (v410 >> 3) ^ 0xC6206D50;
  LODWORD(v247) = HIDWORD(v247);
  LODWORD(v323) = *&v393[4 * (BYTE2(v409) ^ 0xDB)] + 1813297668;
  v413 = *(v396 + 4 * (LODWORD(STACK[0x3E8]) ^ 0x87u));
  LODWORD(STACK[0x420]) = (v247 >> 24) ^ __ROR4__(v407, 16) ^ __ROR4__(v377 ^ (v377 >> 6) ^ (v377 >> 3) ^ 0x4571B8AB, 8) ^ v323 ^ (4 * v323) & 0x7C670130;
  LODWORD(STACK[0x218]) = v413 ^ (v413 >> 4) ^ (v413 >> 3) ^ 0x695A5CFD;
  LODWORD(STACK[0x508]) = *(v400 + 4 * (BYTE1(v408) ^ 0x90u)) ^ 0xA94375C5;
  v414 = STACK[0x500];
  v415 = BYTE2(LODWORD(STACK[0x500])) ^ 0xA1;
  v416 = *&v393[4 * (LODWORD(STACK[0x424]) ^ 0xEA)] + 1813297668;
  LODWORD(STACK[0x404]) = v416 ^ 0x44E6537D ^ (4 * v416) & 0x7C670130;
  LODWORD(STACK[0x418]) = BYTE2(v408) ^ 0xF6;
  v417 = *(v396 + 4 * (LODWORD(STACK[0x434]) ^ 0xF6u));
  LODWORD(STACK[0x434]) = v417 ^ (v417 >> 4) ^ (v417 >> 3) ^ 0xFF4F755C;
  v418 = STACK[0x504];
  v419 = *(v396 + 4 * (BYTE1(LODWORD(STACK[0x504])) ^ 0xC2u));
  v420 = v419 ^ (v419 >> 4) ^ (v419 >> 3) ^ 0x9CDD5A3F;
  LODWORD(STACK[0x3E8]) = LODWORD(STACK[0x430]) ^ 0xE5;
  v421 = v418;
  v422 = *&v393[4 * (v418 ^ 0xFD)] + 1813297668;
  v423 = v422 ^ 0x33493172 ^ (4 * v422) & 0x7C670130;
  v424 = *&v393[4 * (LODWORD(STACK[0x428]) ^ 0x7D)] + 1813297668;
  LODWORD(STACK[0x3E4]) = v424 ^ 0xC3F060D4 ^ (4 * v424) & 0x7C670130;
  v425 = STACK[0x42C];
  LODWORD(v346) = *(v396 + 4 * (HIBYTE(v421) ^ 0x3D));
  LODWORD(STACK[0x3D8]) = *(v400 + 4 * (HIBYTE(LODWORD(STACK[0x42C])) ^ 0x5Bu)) ^ 0x77ADA819;
  v426 = v378 ^ __ROR4__(v420, 8) ^ __ROR4__(v423, 16) ^ (v378 >> 3) ^ (v378 >> 6) ^ __ROR4__(v346 ^ (v346 >> 4) ^ (v346 >> 3) ^ 0xD2FA5AEF, 24);
  LODWORD(STACK[0x3B4]) = *(v400 + 4 * (BYTE1(v425) ^ 0x65u)) ^ 0x6E019257;
  v427 = *&v393[4 * (v414 ^ 0x77)] + 1813297668;
  LODWORD(STACK[0x360]) = BYTE2(v425) ^ 0x9B;
  v428 = *(v400 + 4 * v415) ^ __ROR4__(v427 ^ 0x75BA3EB9 ^ (4 * v427) & 0x7C670130, 16);
  LODWORD(STACK[0x35C]) = *(v400 + 4 * (v425 ^ 0xB0u)) ^ 0x586A4230;
  v429 = *(v396 + 4 * (BYTE1(v414) ^ 0x54u));
  v430 = *&v393[4 * (LODWORD(STACK[0x3CC]) ^ 0xD9)];
  LODWORD(STACK[0x430]) = v428 ^ __ROR4__(v429 ^ (v429 >> 4) ^ (v429 >> 3) ^ 0xF026F531, 8) ^ __ROR4__(v379 ^ (v379 >> 6) ^ (v379 >> 3) ^ 0x7B89FD7A, 24);
  LODWORD(STACK[0x500]) = (v430 + 1813297668) ^ 0x13E498C6 ^ (4 * (v430 + 1813297668)) & 0x7C670130;
  v431 = STACK[0x408];
  v432 = *&v393[4 * (BYTE1(LODWORD(STACK[0x408])) ^ 0x38)] + 1813297668;
  LODWORD(STACK[0x258]) = v432 ^ 0x9D57B9E9 ^ (4 * v432) & 0x7C670130;
  v433 = STACK[0x4A4];
  v434 = STACK[0x3A4];
  v435 = *(v400 + 4 * (BYTE1(LODWORD(STACK[0x3A4])) ^ 0xADu));
  LODWORD(STACK[0x3D0]) = *(v400 + 4 * (LODWORD(STACK[0x4A4]) ^ 0xFDu)) ^ 0x8F933656;
  LODWORD(STACK[0x3C8]) = v435 ^ 0x58FDC658;
  LODWORD(STACK[0x260]) = HIBYTE(v434) ^ 0x65;
  LODWORD(STACK[0x3CC]) = v380 ^ (v380 >> 6) ^ (v380 >> 3) ^ 0x1DAF0836;
  v436 = *(v396 + 4 * (LODWORD(STACK[0x3F4]) ^ 0x3Au));
  v437 = *(v400 + 4 * (LODWORD(STACK[0x414]) ^ 0xD9u)) ^ 0x394AD95F;
  LODWORD(STACK[0x414]) = *(v400 + 4 * (HIBYTE(v431) ^ 0x8C)) ^ 0xA97A1227;
  v438 = *(v396 + 4 * (LODWORD(STACK[0x410]) ^ 0x1Fu));
  LODWORD(STACK[0x410]) = BYTE2(v431) ^ 0x81;
  v841 = v381 ^ (v381 >> 6) ^ (v381 >> 3) ^ __ROR4__(v437, 8) ^ __ROR4__(v436 ^ (v436 >> 4) ^ (v436 >> 3) ^ 0x1382594D, 24) ^ __ROR4__(v438 ^ (v438 >> 4) ^ (v438 >> 3) ^ 0xC4F44E21, 16) ^ 0x558D33EE;
  v439 = *&v393[4 * (HIBYTE(v433) ^ 0xEE)] + 1813297668;
  LODWORD(STACK[0x4A4]) = v439 ^ 0x9C7408DB ^ (4 * v439) & 0x7C670130;
  LODWORD(STACK[0x408]) = *(v400 + 4 * (v431 ^ 0x84u)) ^ 0x992B0CA6;
  v440 = STACK[0x438];
  v441 = *&v393[4 * (BYTE1(LODWORD(STACK[0x438])) ^ 0x8C)] + 1813297668;
  LODWORD(STACK[0x428]) = v441 ^ 0x214DCCB2 ^ (4 * v441) & 0x7C670130;
  v442 = STACK[0x4F0];
  v443 = *&v393[4 * (BYTE1(LODWORD(STACK[0x4F0])) ^ 0xDF)] + 1813297668;
  LODWORD(STACK[0x3F4]) = *(v400 + 4 * (HIBYTE(v440) ^ 0xD4)) ^ 0x2781BBC;
  LODWORD(STACK[0x424]) = LODWORD(STACK[0x240]) ^ (LODWORD(STACK[0x240]) >> 6) ^ (LODWORD(STACK[0x240]) >> 3) ^ 0x54196B7;
  v444 = STACK[0x444];
  v445 = *&v393[4 * (LODWORD(STACK[0x444]) ^ 0x83)] + 1813297668;
  LODWORD(v346) = *(v396 + 4 * (LODWORD(STACK[0x440]) ^ 0x7Au));
  LODWORD(STACK[0x440]) = v346 ^ (v346 >> 4) ^ (v346 >> 3) ^ 0xD8F6344;
  HIDWORD(v247) = v445 ^ 0xA9116C1D ^ (4 * v445) & 0x7C670130;
  LODWORD(v247) = HIDWORD(v247);
  LODWORD(v323) = (v247 >> 16) ^ __ROR4__(*(v400 + 4 * (HIBYTE(v444) ^ 0xC2)) ^ 0x98D5CD66, 24);
  LODWORD(STACK[0x43C]) = *(v400 + 4 * (LODWORD(STACK[0x43C]) ^ 7u)) ^ 0x1580EC52;
  LODWORD(STACK[0x240]) = BYTE2(v440) ^ 0xEA;
  v446 = *(v396 + 4 * (v440 ^ 0x53u));
  LODWORD(STACK[0x220]) = v446 ^ (v446 >> 4) ^ (v446 >> 3) ^ 0x6B448B85;
  LODWORD(STACK[0x2A4]) = LODWORD(STACK[0x448]) ^ 0xC6;
  v447 = *&v393[4 * (BYTE1(v444) ^ 0x90)] + 1813297668;
  LODWORD(STACK[0x504]) = v323 ^ *(v400 + 4 * (BYTE2(v444) ^ 0x6Du)) ^ __ROR4__(v447 ^ 0x96D8984 ^ (4 * v447) & 0x7C670130, 8);
  HIDWORD(v247) = (604099483 * v354 + 71125684) ^ ((604099483 * v354 + 71125684) >> 6) ^ ((604099483 * v354 + 71125684) >> 3) ^ 0x33872C4F;
  LODWORD(v247) = HIDWORD(v247);
  v448 = *(v396 + 4 * (BYTE2(v442) ^ 0x29u));
  v449 = (v247 >> 16) ^ __ROR4__(v443 ^ 0x3D76AFC4 ^ (4 * v443) & 0x7C670130, 8) ^ v448 ^ (v448 >> 3) ^ (v448 >> 4) ^ __ROR4__(LODWORD(STACK[0x214]) ^ (LODWORD(STACK[0x214]) >> 6) ^ (LODWORD(STACK[0x214]) >> 3) ^ 0x47F349D6, 24);
  LODWORD(STACK[0x4FC]) = BYTE2(LODWORD(STACK[0x4FC])) ^ 0x7B;
  v450 = STACK[0x530];
  LODWORD(v323) = *&v393[4 * (LODWORD(STACK[0x530]) ^ 0xF7)] + 1813297668;
  LODWORD(STACK[0x448]) = v323 ^ 0xFF00DF82 ^ (4 * v323) & 0x7C670130;
  LODWORD(STACK[0x444]) = BYTE2(v450) ^ 0x21;
  LODWORD(v323) = *(v396 + 4 * (BYTE1(v450) ^ 0xACu));
  LODWORD(STACK[0x438]) = v323 ^ (v323 >> 4) ^ (v323 >> 3) ^ 0x7B45C405;
  v451 = STACK[0x4EC];
  LODWORD(v323) = *(v396 + 4 * (HIBYTE(LODWORD(STACK[0x4EC])) ^ 0x49u));
  LODWORD(STACK[0x208]) = v323 ^ (v323 >> 4) ^ (v323 >> 3) ^ 0x3D796CDC;
  LODWORD(STACK[0x24C]) ^= (LODWORD(STACK[0x24C]) >> 6) ^ (LODWORD(STACK[0x24C]) >> 3) ^ 0xE3CB59B;
  LODWORD(STACK[0x250]) ^= (LODWORD(STACK[0x250]) >> 6) ^ (LODWORD(STACK[0x250]) >> 3) ^ 0x355BA8B2;
  LODWORD(STACK[0x214]) = ((v382 >> 6) ^ (v382 >> 3)) + (v382 ^ 0xDAD64F6D) - 2 * (((v382 >> 6) ^ (v382 >> 3)) & (v382 ^ 0xDAD64F6D));
  v852 = LODWORD(STACK[0x464]) ^ 0x71;
  LODWORD(STACK[0x464]) = v846 ^ (v846 >> 6) ^ (v846 >> 3) ^ 0xB6096727;
  v847 = *(v400 + 4 * (LODWORD(STACK[0x46C]) ^ 0x31u)) ^ 0x4AAE0FCF;
  LODWORD(STACK[0x200]) ^= (LODWORD(STACK[0x200]) >> 6) ^ (LODWORD(STACK[0x200]) >> 3) ^ 0xB7CAB421;
  v844 = *(v400 + 4 * (BYTE1(v451) ^ 0x31u)) ^ 0xF501AA14;
  v850 = v849 ^ (v849 >> 6) ^ (v849 >> 3) ^ 0x15CD1B24;
  LODWORD(STACK[0x468]) = *(v400 + 4 * (LODWORD(STACK[0x468]) ^ 0x8Fu)) ^ 0x73F4517A;
  v452 = STACK[0x49C];
  LODWORD(STACK[0x530]) = *(v400 + 4 * (LODWORD(STACK[0x49C]) ^ 0x69u)) ^ 0xF66939DC;
  v453 = *(v400 + 4 * (BYTE1(LODWORD(STACK[0x398])) ^ 0x70u)) ^ 0xADDAE65D;
  v454 = STACK[0x398];
  v455 = *(v400 + 4 * (LODWORD(STACK[0x398]) ^ 0x70u)) ^ 0xD1FB12B8;
  BYTE1(v440) = BYTE1(v452);
  LODWORD(STACK[0x4F0]) = BYTE2(v452) ^ 0x5B;
  v456 = STACK[0x454];
  v457 = BYTE2(LODWORD(STACK[0x454])) ^ 0xDF;
  v458 = *&v393[4 * (HIBYTE(LODWORD(STACK[0x454])) ^ 0xF4)] + 1813297668;
  LODWORD(v323) = v458 ^ 0x3DEB2E28 ^ (4 * v458) & 0x7C670130;
  v459 = *(v396 + 4 * ((LODWORD(STACK[0x454]) >> 8) & 0xFE ^ ((LODWORD(STACK[0x454]) >> 8) & 1 | 0x4900292E) ^ 0x4900295E));
  v460 = v459 ^ (v459 >> 4) ^ (v459 >> 3) ^ 0xC563D6F9;
  HIDWORD(v247) = v455;
  LODWORD(v247) = v455;
  v461 = *&v393[4 * (HIBYTE(v454) ^ 0xB3)] + 1813297668;
  v812 = (v247 >> 16) ^ __ROR4__(v453, 8) ^ v831 ^ (v831 >> 3) ^ (v831 >> 6) ^ __ROR4__(v461 ^ 0xD481A70F ^ (4 * v461) & 0x7C670130, 24);
  LODWORD(STACK[0x46C]) = v835 ^ (v835 >> 6) ^ (v835 >> 3) ^ 0x85AE7007;
  v462 = *(v396 + 4 * (LODWORD(STACK[0x458]) ^ 0x41u));
  v463 = *(v400 + 4 * (LODWORD(STACK[0x45C]) ^ 0xB9u)) ^ 0xAEAD2490;
  LODWORD(STACK[0x49C]) = *(v400 + 4 * (BYTE1(v440) ^ 0x69u)) ^ 0x1FC4C851;
  v464 = *(v396 + 4 * (LODWORD(STACK[0x460]) ^ 0xEu));
  LODWORD(STACK[0x42C]) = v838 ^ (v838 >> 6) ^ (v838 >> 3) ^ __ROR4__(v463, 24) ^ __ROR4__(v462 ^ (v462 >> 4) ^ (v462 >> 3) ^ 0x6BC29F96, 8) ^ __ROR4__(v464 ^ (v464 >> 4) ^ (v464 >> 3) ^ 0xE3929EB5, 16);
  v465 = *(v400 + 4 * (v456 ^ 0xA2u)) ^ 0xDC94F6A1;
  v466 = *(v400 + 4 * (v386 ^ 0xB6)) ^ 0x84D21AC0;
  v467 = STACK[0x364];
  v468 = LODWORD(STACK[0x364]) ^ 0x5DCC5421;
  v469 = *(v396 + 4 * (v390 ^ 0x34u));
  LODWORD(STACK[0x460]) = v469 ^ (v469 >> 4) ^ (v469 >> 3) ^ 0xD896570B;
  v470 = *(v396 + 4 * (((-HIBYTE(v468) ^ (100 - (HIBYTE(v468) ^ 0x64)) ^ (HIBYTE(v468) - ((v468 >> 23) & 0x118) - 2106469492) ^ 0x8271D38C) + 100) ^ 0x4C));
  LODWORD(STACK[0x454]) = *(v400 + 4 * (BYTE1(v390) ^ 0x6Au)) ^ 0x9CF694CD;
  LODWORD(v346) = *(v396 + 4 * (BYTE1(LODWORD(STACK[0x378])) ^ 0x29u));
  v832 = v346 ^ (v346 >> 4) ^ (v346 >> 3) ^ 0x528B649D;
  LODWORD(v346) = *&v393[4 * (LODWORD(STACK[0x38C]) ^ 0x5D)] + 1813297668;
  v830 = v346 ^ 0xDA50CD ^ (4 * v346) & 0x7C670130;
  LODWORD(v346) = *&v393[4 * (HIBYTE(v390) ^ 0x7C)] + 1813297668;
  v839 = v346 ^ 0x64D1A804 ^ (4 * v346) & 0x7C670130;
  LODWORD(v346) = *&v393[4 * (BYTE1(v467) ^ 0xBA)] + 1813297668;
  v471 = v346 ^ 0x319A568D ^ (4 * v346) & 0x7C670130;
  LODWORD(v346) = LODWORD(STACK[0x248]) ^ (LODWORD(STACK[0x248]) >> 6) ^ (LODWORD(STACK[0x248]) >> 3) ^ 0x903E6908;
  BYTE2(v425) = BYTE2(LODWORD(STACK[0x378]));
  v472 = *&v393[4 * (HIBYTE(LODWORD(STACK[0x378])) ^ 0x3A)] + 1813297668;
  LODWORD(STACK[0x364]) = v472 ^ 0x500468AD ^ (4 * v472) & 0x7C670130;
  v473 = *(v396 + 4 * (LODWORD(STACK[0x238]) ^ 0x63u));
  v828 = BYTE2(v425) ^ 0x57;
  v814 = *(v396 + 4 * (LODWORD(STACK[0x4C4]) ^ 0x57u)) ^ __ROR4__(v466, 24) ^ (*(v396 + 4 * (LODWORD(STACK[0x4C4]) ^ 0x57u)) >> 3) ^ (*(v396 + 4 * (LODWORD(STACK[0x4C4]) ^ 0x57u)) >> 4) ^ __ROR4__(v346, 16) ^ __ROR4__(v473 ^ (v473 >> 4) ^ (v473 >> 3) ^ 0xA37FDA88, 8);
  LODWORD(STACK[0x378]) = BYTE2(v390) ^ 0x44;
  v474 = STACK[0x518];
  v475 = *&v393[4 * (LODWORD(STACK[0x518]) ^ 0x8B)];
  v820 = LODWORD(STACK[0x2D8]) ^ (LODWORD(STACK[0x2D8]) >> 6) ^ (LODWORD(STACK[0x2D8]) >> 3) ^ __ROR4__(v470 ^ (v470 >> 4) ^ (v470 >> 3) ^ 0x17D14710, 24) ^ __ROR4__(v471, 8) ^ __ROR4__(*(v396 + 4 * v468) ^ (*(v396 + 4 * v468) >> 4) ^ (*(v396 + 4 * v468) >> 3) ^ 0xDFA7611, 16);
  LODWORD(STACK[0x4C4]) = (v475 + 1813297668) ^ 0xCEC3BE91 ^ (4 * (v475 + 1813297668)) & 0x7C670130;
  LODWORD(v346) = STACK[0x470];
  v476 = *&v393[4 * (HIBYTE(LODWORD(STACK[0x470])) ^ 0xED)] + 1813297668;
  BYTE2(v425) = BYTE2(v474);
  v477 = v476 ^ 0xECEB6E34 ^ (4 * v476) & 0x7C670130;
  v478 = *&v393[4 * (BYTE1(v474) ^ 0x58)] + 1813297668;
  LODWORD(STACK[0x45C]) = v478 ^ 0xE02179FE ^ (4 * v478) & 0x7C670130;
  v479 = *(v400 + 4 * (BYTE1(v346) ^ 0x58u)) ^ 0x35F5BC41;
  v480 = STACK[0x538];
  v481 = *(v396 + 4 * (HIBYTE(LODWORD(STACK[0x538])) ^ 0x3Eu));
  LODWORD(STACK[0x458]) = v481 ^ (v481 >> 4) ^ (v481 >> 3) ^ 0xFF2E4D44;
  v482 = LODWORD(STACK[0x390]) ^ (LODWORD(STACK[0x390]) >> 6) ^ (LODWORD(STACK[0x390]) >> 3) ^ 0x51ABA6C6;
  v483 = *(v400 + 4 * (v346 ^ 0x2Eu)) ^ 0x8E5C9CD;
  LODWORD(STACK[0x248]) = BYTE2(v425) ^ 0xF1;
  v484 = *&v393[4 * (BYTE2(v346) ^ 0xAB)] + 1813297668;
  v485 = ((4 * v484) | 0x8398FECC) ^ v484 ^ __ROR4__(v479, 8) ^ __ROR4__(v477, 24) ^ __ROR4__(v483, 16);
  v486 = LODWORD(STACK[0x394]) ^ (LODWORD(STACK[0x394]) >> 6) ^ (LODWORD(STACK[0x394]) >> 3) ^ 0x29E0B8B5;
  v487 = *&v393[4 * (LODWORD(STACK[0x478]) ^ 0xAA)] + 1813297668;
  v488 = *(v396 + 4 * (v480 ^ 0xFu));
  LODWORD(STACK[0x478]) = v488 ^ (v488 >> 4) ^ (v488 >> 3) ^ 0x452E12C1;
  v489 = *&v393[4 * (BYTE1(v480) ^ 0xEB)] + 1813297668;
  v836 = v489 ^ 0x4031F10E ^ (4 * v489) & 0x7C670130;
  v829 = STACK[0x3A8] & 0x1000000 ^ STACK[0x3A8] & 0xFEFFFFFF ^ 0x14478A6F ^ (LODWORD(STACK[0x3A8]) >> 6) ^ (LODWORD(STACK[0x3A8]) >> 3);
  v817 = v449;
  v490 = v449 ^ 0xA7FF224;
  v491 = (v449 ^ 0xA7FF224) - 2 * ((v449 ^ 0xA7FF224) & 0xAB9DA2B ^ v449 & 2) + 179952169;
  v492 = LODWORD(STACK[0x3AC]) ^ (LODWORD(STACK[0x3AC]) >> 6) ^ (LODWORD(STACK[0x3AC]) >> 3) ^ __ROR4__(v482, 8) ^ __ROR4__(v487 ^ 0xD665D8B4 ^ (4 * v487) & 0x7C670130, 24) ^ __ROR4__(v486, 16) ^ 0x13BC1BB9;
  HIDWORD(v247) = STACK[0x368];
  LODWORD(v247) = STACK[0x368];
  v493 = *(v396 + 4 * LODWORD(STACK[0x2E0]));
  v494 = (v247 >> 24) ^ __ROR4__(STACK[0x3B0], 8) ^ v493 ^ (v493 >> 3) ^ (v493 >> 4) ^ __ROR4__(STACK[0x244], 16);
  v495 = (v494 ^ 0x4C681409) - (v814 ^ 0x4432A687);
  v496 = (v485 ^ 0x1C669AB4) + (v812 ^ 0x6C644D71);
  LODWORD(v277) = (v820 ^ 0x7F2A5FBF) - (v485 ^ 0x1C669AB4);
  v497 = LODWORD(STACK[0x47C]) ^ 0x7D7C456B;
  v498 = STACK[0x228];
  v499 = *(v400 + 4 * LODWORD(STACK[0x23C])) ^ __ROR4__(STACK[0x2DC], 8) ^ __ROR4__(STACK[0x234], 24) ^ __ROR4__(STACK[0x218], 16);
  v500 = v490 - (LODWORD(STACK[0x228]) ^ 0xE25FCBAB) - 1562761451;
  LODWORD(STACK[0x3B0]) = v500;
  v501 = STACK[0x3C4];
  v502 = (v426 ^ 0xCB60A7A5) + (LODWORD(STACK[0x3C4]) ^ 0xD20DA71E);
  v503 = (v426 ^ 0xCB60A7A5) + (v499 ^ 0xFB4C7338);
  v504 = *&v393[4 * v457] + 1813297668;
  v505 = v504 ^ ((4 * v504) | 0x8398FECC) ^ __ROR4__(v323, 24) ^ __ROR4__(v460, 8) ^ __ROR4__(v465, 16) ^ 0x7FD92FDC;
  LODWORD(v346) = LODWORD(STACK[0x504]) ^ 0xB251F718;
  LODWORD(STACK[0x244]) = v346;
  v506 = v497 - (LODWORD(STACK[0x498]) ^ 0xF53C8E30);
  v507 = v346 ^ v497;
  LODWORD(v323) = (v346 ^ v497) - 1865377361;
  LODWORD(STACK[0x2DC]) = v323;
  LODWORD(STACK[0x504]) = 2 * v323;
  LODWORD(STACK[0x3A4]) = v346 ^ v497;
  LODWORD(v346) = STACK[0x488];
  LODWORD(STACK[0x368]) = LODWORD(STACK[0x488]) ^ 0x8C0C52C8;
  v508 = v346 ^ (v502 - ((2 * (v502 + 622957360)) & 0x7DD2B7C2) + 1678438161) ^ v323 ^ 0x446AA851;
  v509 = LODWORD(STACK[0x494]) ^ (v502 + 622957360) ^ (v507 - ((2 * v323) & 0xE88E0324) - 2062050495) ^ 0x33CF95BF;
  LODWORD(STACK[0x2D8]) = v502 + 622957360;
  LODWORD(STACK[0x238]) = v502;
  LODWORD(STACK[0x23C]) = v502 & 1;
  LODWORD(v346) = v496 ^ 0xF68FA178 ^ LODWORD(STACK[0x550]);
  LODWORD(STACK[0x518]) = v346;
  v510 = v346 ^ (v507 - ((2 * v323) & 0x3F523874) - 1334200855) ^ 0xB5705CF2;
  LODWORD(STACK[0x47C]) = ((-622957360 - v502) ^ (v502 - 2 * ((v502 + 622957360) & 0x131A01F ^ v502 & 1) + 642986830) ^ 0x131A01E ^ (v510 - (v510 ^ (v502 + 622957360)))) + v510;
  v819 = v508 ^ v496;
  v816 = v509 ^ v496;
  v825 = v503 ^ v485 ^ 0x17F37F8A ^ v496;
  LODWORD(STACK[0x2E0]) = v496 ^ 0xF68FA178;
  LODWORD(STACK[0x234]) = v496 & 4;
  v511 = STACK[0x36C];
  v512 = (LODWORD(STACK[0x36C]) ^ 0x95C9AAA9) - v492;
  v824 = v503 ^ v492 ^ 0x60B3F26D ^ ((v496 ^ 0xF68FA178) - 2 * ((v496 ^ 0xF68FA178) & 0x1DA9B62F ^ v496 & 4) - 1649822165);
  LODWORD(STACK[0x550]) = v501 ^ 0x996A8597;
  LODWORD(STACK[0x390]) = v495 - 824108890;
  LODWORD(STACK[0x494]) = v426 ^ v500 ^ 0x4D2A9CD3 ^ (v495 - 2 * ((v495 - 824108890) & 0x64A3B77 ^ v495 & 1) + 1428902940);
  LODWORD(v323) = STACK[0x42C];
  v513 = LODWORD(STACK[0x42C]) ^ 0x30F22304;
  v514 = (v513 ^ v491) + 1738471305;
  LODWORD(v346) = v513 ^ LODWORD(STACK[0x4F8]);
  v827 = v498 ^ v346 ^ v514 ^ 0xAD0D3BC;
  v515 = v494 ^ v346;
  v516 = v346;
  LODWORD(STACK[0x394]) = v346;
  LODWORD(STACK[0x488]) = v515 ^ 0x9CD80B05 ^ ((v513 ^ v491) - ((2 * v514) & 0x707E0E36) - 1612841308);
  v822 = LODWORD(STACK[0x430]) ^ 0x8E31F823;
  v517 = STACK[0x514];
  v518 = LODWORD(STACK[0x430]) ^ LODWORD(STACK[0x514]);
  LODWORD(STACK[0x3A8]) = v518;
  v823 = v277 - 647103620 + (v517 ^ 0xB021DC7E) - 2 * ((v277 - 647103620) & (v517 ^ 0xB021DC7E));
  v519 = STACK[0x420];
  LODWORD(STACK[0x514]) = LODWORD(STACK[0x420]) ^ v512 ^ 0x351116C5;
  v826 = v499 ^ v512 ^ 0xF2C74CCB ^ (v277 - 2 * ((v277 - 647103620) & 0x1CE8199 ^ v277 & 1) + 1530690836);
  v520 = v519 ^ 0xE97A61F ^ v841;
  v521 = -507067367 - v520;
  v522 = STACK[0x2DC];
  v818 = (1850113086 - v520 - ((2 * (-507067367 - v520)) & 0x18FF704A)) ^ LODWORD(STACK[0x2DC]) ^ v817 ^ 0x86004A01;
  v523 = STACK[0x368];
  v524 = LODWORD(STACK[0x368]) - (v519 ^ 0xBD54A8AE);
  LODWORD(STACK[0x398]) = v524 - 1381171263;
  v525 = v503 ^ (v524 - 1381171263);
  LODWORD(STACK[0x470]) = v525 ^ 0x917E0937 ^ v812;
  v526 = v503;
  LODWORD(STACK[0x3AC]) = v503;
  v527 = STACK[0x370];
  v528 = v505 - (LODWORD(STACK[0x370]) ^ 0x2EB66033);
  LODWORD(STACK[0x430]) = (v524 - ((2 * (v524 - 1381171263)) & 0x49890CA8) - 764312043) ^ v503 ^ 0xD9DEC212 ^ v505;
  v529 = 2 * (v506 + 1125634397);
  LODWORD(v346) = v528 - 850917296;
  v821 = (v506 - (v529 & 0x9CA92862) - 1855167090) ^ (v528 - 850917296) ^ v820 ^ 0x317ECB8E;
  LODWORD(STACK[0x42C]) = v525 ^ 0xC751BD6B ^ v323;
  v815 = (v506 - 1118525266 - (v529 & 0xF479B1E6) + 418) ^ (v528 - 850917296) ^ v814 ^ 0x3E0E7E74;
  v530 = (v822 ^ v523) + 312600504;
  LODWORD(STACK[0x4EC]) = v514;
  LODWORD(STACK[0x228]) = v514 ^ v530;
  v813 = v514 ^ v530 ^ v511 ^ 0xF77AC566 ^ (v277 - ((2 * (v277 - 647103620)) & 0xC566DF9E) + 1008823115);
  v531 = *&v393[4 * v828] + 1813297668;
  LODWORD(v323) = (v528 - ((2 * (v528 - 850917296)) & 0xFA23CE5A) - 900075651) ^ (v506 + 1125634397) ^ __ROR4__(v832, 8) ^ __ROR4__(v830, 16) ^ v531 ^ __ROR4__(STACK[0x364], 24) ^ (4 * v531) & 0x7C670130;
  LODWORD(STACK[0x3C4]) = v516 ^ 0xA3E83A9E;
  LODWORD(STACK[0x364]) = v518 ^ 0xC7308576;
  v532 = v516 ^ 0xA3E83A9E ^ v518 ^ 0xC7308576;
  v533 = v532 ^ 0xE8527CF9 ^ v841;
  v833 = v514 ^ v530 ^ v527;
  v842 = v833 ^ 0x500B2614 ^ (v277 - ((2 * (v277 - 647103620)) & 0xFD7A8C4E) + 1479229859);
  LODWORD(STACK[0x368]) = v530;
  v534 = v514 ^ ((v822 ^ v523) - 2 * (v530 & 0x327AB44F ^ (v822 ^ v523) & 6) - 987980799) ^ LODWORD(STACK[0x498]) ^ 0x47463A79;
  LODWORD(STACK[0x36C]) = v506 + 1125634397;
  v535 = *&v393[4 * LODWORD(STACK[0x378])] + 1813297668;
  LODWORD(STACK[0x498]) = (v506 + 1125634397) ^ __ROR4__(STACK[0x460], 16) ^ __ROR4__(STACK[0x454], 8) ^ v346 ^ __ROR4__(v839, 24) ^ v535 ^ ((4 * v535) | 0x8398FECC) ^ 0x6E7C10A1;
  v536 = v522 ^ v521;
  v537 = *(v396 + 4 * LODWORD(STACK[0x240]));
  v538 = v522 ^ v521 ^ __ROR4__(STACK[0x3F4], 24) ^ __ROR4__(STACK[0x428], 8) ^ v537 ^ (v537 >> 3) ^ (v537 >> 4) ^ __ROR4__(STACK[0x220], 16) ^ 0x2B929090;
  v539 = STACK[0x560];
  v540 = *(&off_1006B4E30 + LODWORD(STACK[0x560]) - 3862) - 4;
  LODWORD(STACK[0x428]) = v540;
  LODWORD(STACK[0x3F4]) = (((v323 ^ 0x8EC248CE) - (v323 ^ 0xA572DC25)) ^ 0xFFFFFFFE) + (v323 ^ 0x8EC248CE);
  v541 = v522 ^ v521 ^ __ROR4__(STACK[0x43C], 8) ^ __ROR4__(STACK[0x440], 24) ^ __ROR4__(STACK[0x424], 16) ^ *(v400 + 4 * LODWORD(STACK[0x2A4])) ^ 0x1CE138C0;
  v542 = *(&off_1006B4E30 + v539 - 3891) - 4;
  LODWORD(STACK[0x560]) = v542;
  v543 = v277 - 647103620;
  v544 = (v277 - 647103620) ^ v534;
  v545 = LODWORD(STACK[0x514]) ^ (v277 - 647103620);
  v546 = v542 + v533 - 1517922541 + v544 - 2 * (v542 & 0x3528C1C4) + v545 + ((v540 - 2 * (v540 & 0x123F7F90) + 306151314) ^ 0x123F7F92);
  LODWORD(STACK[0x378]) = v521;
  LODWORD(STACK[0x370]) = v346;
  v547 = v346 ^ v521;
  v548 = v547 ^ LODWORD(STACK[0x374]) ^ (LODWORD(STACK[0x374]) >> 6) ^ (LODWORD(STACK[0x374]) >> 3) ^ __ROR4__(STACK[0x208], 24) ^ __ROR4__(v844, 8) ^ __ROR4__(STACK[0x464], 16) ^ 0x7F9E1BCC;
  v549 = LODWORD(STACK[0x490]) ^ 0xF746C701;
  v550 = LODWORD(STACK[0x47C]) - ((2 * LODWORD(STACK[0x47C])) & 0x69334098) - 1265000372;
  if (v546)
  {
    v551 = LODWORD(STACK[0x47C]) - ((2 * LODWORD(STACK[0x47C])) & 0x69334098) - 1265000372;
  }

  else
  {
    v551 = v816;
  }

  LODWORD(STACK[0x47C]) = v551;
  if (v546)
  {
    v552 = v816;
  }

  else
  {
    v552 = v819;
  }

  LODWORD(STACK[0x424]) = v552;
  v553 = STACK[0x2E0];
  v554 = LODWORD(STACK[0x2E0]) ^ LODWORD(STACK[0x2D8]);
  LODWORD(STACK[0x2A4]) = v554;
  v555 = v554 ^ v522;
  LODWORD(STACK[0x208]) = v555;
  v556 = v555 ^ v549;
  if (v546)
  {
    v557 = v819;
  }

  else
  {
    v557 = v555 ^ v549;
  }

  LODWORD(STACK[0x464]) = v557;
  if (v546)
  {
    v558 = v556;
  }

  else
  {
    v558 = v550;
  }

  LODWORD(STACK[0x420]) = v558;
  v559 = *(v400 + 4 * v852);
  LODWORD(STACK[0x218]) = v547;
  v560 = v547 ^ v559 ^ __ROR4__(v847, 8) ^ __ROR4__(STACK[0x214], 16) ^ __ROR4__(STACK[0x468], 24) ^ 0x17F3FD39;
  v561 = v547 ^ *(v400 + 4 * LODWORD(STACK[0x444])) ^ __ROR4__(STACK[0x448], 16) ^ __ROR4__(STACK[0x438], 8) ^ __ROR4__(STACK[0x24C], 24) ^ 0x350823F0;
  v562 = v547 ^ *(v400 + 4 * LODWORD(STACK[0x4FC])) ^ __ROR4__(STACK[0x250], 8) ^ __ROR4__(STACK[0x200], 16) ^ __ROR4__(v850, 24) ^ 0xB64B3FB2;
  v563 = v526 ^ 0xEC11C515;
  v564 = v553 ^ v526 ^ 0xEC11C515 ^ __ROR4__(STACK[0x4C4], 16);
  LODWORD(STACK[0x220]) = v553 ^ v526 ^ 0xEC11C515;
  v565 = *(v396 + 4 * LODWORD(STACK[0x248]));
  v566 = v564 ^ __ROR4__(STACK[0x45C], 8) ^ v565 ^ (v565 >> 3) ^ (v565 >> 4) ^ __ROR4__(v829, 24) ^ 0x28CCFB6;
  v567 = *(v396 + 4 * (BYTE2(LODWORD(STACK[0x538])) ^ 0x61u));
  v568 = v553 ^ v526 ^ 0xEC11C515 ^ __ROR4__(STACK[0x458], 24) ^ v567 ^ (v567 >> 3) ^ (v567 >> 4) ^ __ROR4__(STACK[0x478], 16) ^ __ROR4__(v836, 8) ^ 0xACA15054;
  if (v546)
  {
    v569 = v566;
  }

  else
  {
    v569 = v824;
  }

  LODWORD(STACK[0x514]) = v569;
  v570 = v825;
  if (v546)
  {
    v571 = v824;
  }

  else
  {
    v571 = v825;
  }

  if (v546)
  {
    v572 = v568;
  }

  else
  {
    v572 = v566;
  }

  if ((v546 & 1) == 0)
  {
    v570 = v568;
  }

  LODWORD(STACK[0x4C4]) = v570;
  v573 = LODWORD(STACK[0x4F8]) ^ 0x193C3921;
  v574 = LODWORD(STACK[0x390]) ^ LODWORD(STACK[0x3B0]);
  v575 = v574 ^ __ROR4__(STACK[0x3D8], 24) ^ __ROR4__(STACK[0x3B4], 8) ^ *(v400 + 4 * LODWORD(STACK[0x360])) ^ __ROR4__(STACK[0x35C], 16) ^ 0x76E59B69;
  v576 = *(v396 + 4 * LODWORD(STACK[0x3E8]));
  LODWORD(STACK[0x214]) = v574;
  v577 = v574 ^ v576 ^ (v576 >> 4) ^ (v576 >> 3) ^ __ROR4__(STACK[0x404], 8) ^ __ROR4__(STACK[0x434], 24) ^ __ROR4__(STACK[0x3E4], 16) ^ 0xEE119FE8;
  v578 = v823 ^ v512 ^ 0x5B353241;
  v579 = *(v400 + 4 * LODWORD(STACK[0x418]));
  LODWORD(STACK[0x374]) = v512;
  v580 = v512 ^ 0xEB55BBA2;
  LODWORD(STACK[0x35C]) = v512 ^ 0xEB55BBA2;
  v581 = v543;
  LODWORD(STACK[0x38C]) = v543;
  v582 = v580 ^ v543;
  LODWORD(STACK[0x200]) = v582;
  v583 = v582 ^ __ROR4__(STACK[0x4F4], 16) ^ v579 ^ __ROR4__(STACK[0x41C], 24) ^ __ROR4__(STACK[0x508], 8) ^ 0xD6401183;
  v584 = LODWORD(STACK[0x244]) ^ v536;
  if (v546)
  {
    v585 = v818;
  }

  else
  {
    v585 = v541;
  }

  if ((v546 & 1) == 0)
  {
    v541 = v538;
  }

  LODWORD(STACK[0x460]) = v541;
  if (v546)
  {
    v586 = v538;
  }

  else
  {
    v586 = v584;
  }

  if (v546)
  {
    v587 = v584;
  }

  else
  {
    v587 = v818;
  }

  LODWORD(STACK[0x45C]) = v587;
  LODWORD(STACK[0x360]) = v563;
  v588 = *&v393[4 * LODWORD(STACK[0x4F0])] + 1813297668;
  v589 = LODWORD(STACK[0x398]) ^ v563 ^ __ROR4__(STACK[0x530], 16) ^ v588 ^ ((4 * v588) | 0x8398FECC) ^ __ROR4__(STACK[0x49C], 8) ^ __ROR4__(STACK[0x46C], 24) ^ 0xF3FE8E64;
  v590 = *&v393[4 * LODWORD(STACK[0x410])] + 1813297668;
  v591 = v532 ^ __ROR4__(STACK[0x258], 8) ^ __ROR4__(STACK[0x414], 24) ^ v590 ^ ((4 * v590) | 0x8398FECC) ^ __ROR4__(STACK[0x408], 16) ^ 0xA694F9DF;
  v592 = v532 ^ LODWORD(STACK[0x264]) ^ (LODWORD(STACK[0x264]) >> 6) ^ (LODWORD(STACK[0x264]) >> 3) ^ __ROR4__(STACK[0x500], 16) ^ __ROR4__(STACK[0x3C8], 8) ^ __ROR4__(*(v400 + 4 * LODWORD(STACK[0x260])), 24) ^ 0xC06B37B5;
  v593 = v532 ^ __ROR4__(STACK[0x3D0], 16) ^ LODWORD(STACK[0x270]) ^ (LODWORD(STACK[0x270]) >> 3) ^ (LODWORD(STACK[0x270]) >> 6) ^ __ROR4__(STACK[0x3CC], 8) ^ __ROR4__(STACK[0x4A4], 24) ^ 0xB8D4D734;
  if (v546)
  {
    v594 = v533;
  }

  else
  {
    v594 = v591;
  }

  LODWORD(STACK[0x458]) = v594;
  if (v546)
  {
    v595 = v592;
  }

  else
  {
    v595 = v533;
  }

  LODWORD(STACK[0x41C]) = v595;
  if (v546)
  {
    v596 = v593;
  }

  else
  {
    v596 = v592;
  }

  LODWORD(STACK[0x454]) = v596;
  if ((v546 & 1) == 0)
  {
    v591 = v593;
  }

  LODWORD(STACK[0x414]) = v591;
  v597 = STACK[0x3F4];
  if (v546)
  {
    v598 = STACK[0x3F4];
  }

  else
  {
    v598 = v815;
  }

  LODWORD(STACK[0x418]) = v598;
  if (v546)
  {
    v599 = v821;
  }

  else
  {
    v599 = v597;
  }

  LODWORD(STACK[0x4A4]) = v599;
  v600 = STACK[0x498];
  if (v546)
  {
    v601 = v815;
  }

  else
  {
    v601 = STACK[0x498];
  }

  LODWORD(STACK[0x46C]) = v601;
  if (v546)
  {
    v602 = v600;
  }

  else
  {
    v602 = v821;
  }

  LODWORD(STACK[0x410]) = v602;
  v603 = v833 ^ LODWORD(STACK[0x4A0]) ^ 0x4570C5C3 ^ v581;
  if (v546)
  {
    v604 = v544;
  }

  else
  {
    v604 = v813;
  }

  LODWORD(STACK[0x448]) = v604;
  v605 = v842;
  if (v546)
  {
    v544 = v842;
    v605 = v603;
  }

  LODWORD(STACK[0x444]) = v605;
  if (v546)
  {
    v603 = v813;
  }

  v606 = LODWORD(STACK[0x3C4]) ^ LODWORD(STACK[0x4EC]);
  LODWORD(STACK[0x538]) = v606;
  v607 = LODWORD(STACK[0x550]) ^ v606;
  LODWORD(STACK[0x3D0]) = v560;
  if (v546)
  {
    v608 = v548;
  }

  else
  {
    v608 = v560;
  }

  LODWORD(STACK[0x440]) = v608;
  if (v546)
  {
    v609 = v562;
  }

  else
  {
    v609 = v548;
  }

  LODWORD(STACK[0x530]) = v609;
  LODWORD(STACK[0x270]) = v561;
  if (v546)
  {
    v610 = v561;
  }

  else
  {
    v610 = v562;
  }

  LODWORD(STACK[0x43C]) = v610;
  v611 = v573 ^ v606;
  LODWORD(STACK[0x244]) = v607;
  if (v546)
  {
    v612 = v827;
  }

  else
  {
    v612 = v607;
  }

  LODWORD(STACK[0x438]) = v612;
  if (v546)
  {
    v613 = v573 ^ v606;
  }

  else
  {
    v613 = v827;
  }

  LODWORD(STACK[0x248]) = v613;
  if (v546)
  {
    v611 = STACK[0x488];
  }

  LODWORD(STACK[0x434]) = v611;
  v614 = v822 ^ v574;
  if (v546)
  {
    v615 = v545;
  }

  else
  {
    v615 = v826;
  }

  LODWORD(STACK[0x468]) = v615;
  LODWORD(STACK[0x250]) = v583;
  if (v546)
  {
    v616 = v826;
  }

  else
  {
    v616 = v583;
  }

  LODWORD(STACK[0x258]) = v578;
  if (v546)
  {
    v617 = v578;
  }

  else
  {
    v617 = v545;
  }

  LODWORD(STACK[0x260]) = v577;
  if (v546)
  {
    v618 = STACK[0x494];
  }

  else
  {
    v618 = v577;
  }

  LODWORD(STACK[0x264]) = v575;
  LODWORD(STACK[0x240]) = v614;
  if (v546)
  {
    v619 = v614;
  }

  else
  {
    v619 = v575;
  }

  v620 = STACK[0x42C];
  if ((v546 & 1) == 0)
  {
    v620 = STACK[0x430];
  }

  LODWORD(STACK[0x24C]) = v589;
  if (v546)
  {
    v621 = v589;
  }

  else
  {
    v621 = STACK[0x470];
  }

  LODWORD(STACK[0x550]) = v546;
  v622 = (v546 & 2) == 0;
  if ((v546 & 2) != 0)
  {
    v623 = v571;
  }

  else
  {
    v623 = v572;
  }

  LODWORD(STACK[0x404]) = v623;
  if ((v546 & 2) != 0)
  {
    v624 = v572;
  }

  else
  {
    v624 = v571;
  }

  LODWORD(STACK[0x500]) = v624;
  if ((v546 & 2) != 0)
  {
    v625 = v616;
  }

  else
  {
    v625 = v617;
  }

  LODWORD(STACK[0x4FC]) = v625;
  if ((v546 & 2) == 0)
  {
    v617 = v616;
  }

  LODWORD(STACK[0x4F0]) = v617;
  if ((v546 & 2) != 0)
  {
    v626 = v586;
  }

  else
  {
    v626 = v585;
  }

  LODWORD(STACK[0x478]) = v626;
  if ((v546 & 2) != 0)
  {
    v627 = v585;
  }

  else
  {
    v627 = v586;
  }

  LODWORD(STACK[0x3E8]) = v627;
  if ((v546 & 2) != 0)
  {
    v628 = v621;
  }

  else
  {
    v628 = v620;
  }

  LODWORD(STACK[0x3F4]) = v628;
  if ((v546 & 2) != 0)
  {
    v629 = v620;
  }

  else
  {
    v629 = v621;
  }

  LODWORD(STACK[0x4F8]) = v629;
  if ((v546 & 2) != 0)
  {
    v630 = v544;
  }

  else
  {
    v630 = v603;
  }

  LODWORD(STACK[0x4F4]) = v630;
  if ((v546 & 2) != 0)
  {
    v631 = v603;
  }

  else
  {
    v631 = v544;
  }

  LODWORD(STACK[0x49C]) = v631;
  v632 = STACK[0x25C];
  v853 = HIBYTE(LODWORD(STACK[0x25C]));
  v633 = *(STACK[0x4A8] + 4 * (v853 ^ 0x1Du));
  v634 = *(STACK[0x4A8] + 4 * (LODWORD(STACK[0x254]) ^ 0x1Du));
  v635 = *(STACK[0x4A8] + 4 * (LODWORD(STACK[0x268]) ^ 0x70u));
  LODWORD(STACK[0x254]) = BYTE2(LODWORD(STACK[0x25C]));
  v636 = STACK[0x558];
  v637 = STACK[0x2C4];
  v638 = v635 ^ __ROR4__((*(STACK[0x558] + 4 * (BYTE2(v632) ^ 0xA2u)) + 275154858) ^ 0xFBEEB20F, 16) ^ __ROR4__(v633 ^ 0x87DE5981 ^ (((4 * v633) ^ 0xD2B306D4) - ((2 * ((4 * v633) ^ 0xD2B306D4)) & 0xE9598368) - 190004811), 8) ^ (((4 * v635) ^ 0xD2B306D4) - 190004810 + (~(2 * ((4 * v635) ^ 0xD2B306D4)) | 0x16A67C97)) ^ __ROR4__(v634 ^ 0x87DE5981 ^ (((4 * v634) ^ 0xD2B306D4) - 190004810 + (~(2 * ((4 * v634) ^ 0xD2B306D4)) | 0x16A67C97)), 24) ^ LODWORD(STACK[0x2C4]) ^ 0x4FBC3146;
  LODWORD(STACK[0x508]) = v638;
  v639 = LODWORD(STACK[0x2A0]) ^ v632;
  v640 = LODWORD(STACK[0x320]) ^ LODWORD(STACK[0x314]) ^ v637 ^ 0xEB6268C7 ^ v638;
  LODWORD(STACK[0x320]) = v640;
  v641 = v640 ^ v639;
  LODWORD(STACK[0x558]) = (*(v636 + 4 * (HIBYTE(v641) ^ 0x18)) + 275154858) ^ 0xFBEEB20F;
  BYTE2(v639) = BYTE2(v641) ^ 0xD;
  v642 = STACK[0x318];
  LODWORD(STACK[0x314]) = *(STACK[0x318] + 4 * (((v641 ^ 0xE606) >> 8) ^ 0x8Du)) ^ ((v641 ^ 0xE606) >> 8) ^ 0x9A ^ ((((v641 ^ 0xE606) >> 8) ^ 0x9A) - ((2 * (((v641 ^ 0xE606) >> 8) ^ 0x9A) + 616) & 0x340) + 161733844) ^ 0xD17A8DB6;
  LODWORD(STACK[0x2A0]) = v641 ^ 0x9C;
  LODWORD(STACK[0x2C4]) = (v641 ^ 0x9C) - ((2 * (v641 ^ 0x9C) + 616) & 0x340) + 161733844;
  LODWORD(STACK[0x268]) = *(v642 + 4 * (v641 ^ 0x8Bu));
  LODWORD(STACK[0x318]) = *(v642 + 4 * (BYTE2(v639) ^ 0x8Du)) ^ BYTE2(v639) ^ 0x9A ^ ((BYTE2(v639) ^ 0x9A) - 232006443 + ((2 * (((BYTE2(v639) ^ 0x9A) + 308) & 0x1A3 ^ (BYTE2(v639) ^ 0x9A | 0x7FFFFFFC))) ^ 0xE8880007)) ^ 0xD17A8DB6;
  v643 = LODWORD(STACK[0x26C]) ^ (LODWORD(STACK[0x26C]) >> 6) ^ (LODWORD(STACK[0x26C]) >> 3) ^ 0x50DA63A2;
  v644 = STACK[0x2F4];
  LODWORD(STACK[0x25C]) = *(v400 + 4 * (LODWORD(STACK[0x2F4]) ^ 0x26u)) ^ 0xF7B31773;
  LODWORD(STACK[0x334]) = *(v400 + 4 * (LODWORD(STACK[0x334]) ^ 0xF9u)) ^ 0xE7833169;
  v645 = *(v396 + 4 * (HIBYTE(LODWORD(STACK[0x33C])) ^ 0xD8u));
  LODWORD(STACK[0x26C]) = v645 ^ ((v645 ^ 0xC40B7A81) >> 4) ^ ((v645 ^ 0xC40B7A81) >> 3) ^ 0xD8671343;
  v646 = STACK[0x34C];
  v647 = *(v396 + 4 * (HIBYTE(LODWORD(STACK[0x34C])) ^ 0x3Fu));
  v648 = ((v647 ^ 0xC40B7A81) >> 4) ^ ((v647 ^ 0xC40B7A81) >> 3);
  v649 = v647 ^ 0x7FC0A51A ^ (v648 - ((2 * v648) & 0x11E8573C) + 1760832414);
  LODWORD(STACK[0x344]) = *(v400 + 4 * (LODWORD(STACK[0x344]) ^ 0x64u)) ^ 0x7AA92091;
  v650 = *(v396 + 4 * (BYTE1(v646) ^ 0xE0u));
  v845 = LODWORD(STACK[0x350]) ^ 0x19;
  HIDWORD(v651) = v650 ^ ((v650 ^ 0xC40B7A81) >> 4) ^ ((v650 ^ 0xC40B7A81) >> 3) ^ 0x3062AA67;
  LODWORD(v651) = HIDWORD(v651);
  v652 = (v651 >> 8) ^ __ROR4__(v649, 24);
  v848 = BYTE2(v644) ^ 0x33;
  LODWORD(v636) = *(v396 + 4 * (BYTE2(LODWORD(STACK[0x4B4])) ^ 0x8Du)) ^ 0xC40B7A81;
  v653 = *(v400 + 4 * (v646 ^ 0x86u));
  LODWORD(STACK[0x274]) = v636 ^ (v636 >> 4) ^ (v636 >> 3) ^ __ROR4__(v643, 24) ^ __ROR4__(*(v400 + 4 * (BYTE1(LODWORD(STACK[0x4B4])) ^ 0xC4u)) ^ 0x4FC20751, 8) ^ __ROR4__(LODWORD(STACK[0x274]) ^ (LODWORD(STACK[0x274]) >> 6) ^ (LODWORD(STACK[0x274]) >> 3) ^ 0x97609BA7, 16);
  v851 = *(v400 + 4 * (BYTE2(v646) ^ 0x52u)) ^ __ROR4__(v653 ^ 0xA19E03DD, 16) ^ (v652 - ((2 * v652) & 0x83BF904A) + 1105184805);
  v654 = *&v393[4 * (BYTE1(v644) ^ 0xA5)] + 1813297668;
  LODWORD(STACK[0x2F4]) = v654 ^ 0xC7966E43 ^ ((4 * v654) | 0x8398FECC);
  LODWORD(STACK[0x278]) ^= (LODWORD(STACK[0x278]) >> 6) ^ (LODWORD(STACK[0x278]) >> 3) ^ 0xF9D4F31F;
  v655 = LODWORD(STACK[0x280]) ^ (LODWORD(STACK[0x280]) >> 6) ^ (LODWORD(STACK[0x280]) >> 3) ^ 0xB052CDA;
  v656 = *(v400 + 4 * (LODWORD(STACK[0x32C]) ^ 3u)) ^ 0xA68818F0;
  v657 = STACK[0x324];
  LODWORD(STACK[0x350]) = *(v400 + 4 * (LODWORD(STACK[0x324]) ^ 0xABu)) ^ 0x4AD93945;
  v658 = v657 ^ LODWORD(STACK[0x348]);
  v843 = BYTE2(v658) ^ 0x4A;
  v840 = LODWORD(STACK[0x330]) ^ 0x45;
  HIDWORD(v651) = v656;
  LODWORD(v651) = v656;
  LODWORD(STACK[0x280]) = (v651 >> 8) - ((2 * (v651 >> 8)) & 0x83BF904A);
  v834 = BYTE2(v657) ^ 0x2C;
  v659 = *(v396 + 4 * ((((LODWORD(STACK[0x338]) ^ 0xF4) - (LODWORD(STACK[0x338]) ^ 0xB8)) ^ 0xFFFFFFF8) + (LODWORD(STACK[0x338]) ^ 0xF4)));
  LODWORD(STACK[0x34C]) = v659 ^ ((v659 ^ 0xC40B7A81) >> 4) ^ ((v659 ^ 0xC40B7A81) >> 3) ^ 0xC1F1F61E;
  v660 = *&v393[4 * LODWORD(STACK[0x340])] + 1813297668;
  LODWORD(v636) = *(v396 + 4 * (BYTE1(v658) ^ 0xC0u));
  LODWORD(STACK[0x348]) = v660 ^ 0xCA643595 ^ ((4 * v660) | 0x8398FECC);
  v661 = ((v636 ^ 0xC40B7A81) >> 4) ^ ((v636 ^ 0xC40B7A81) >> 3);
  HIDWORD(v651) = v636 ^ 0xCE17767F ^ (v661 - ((2 * v661) & 0x11E8573C) + 1760832414);
  LODWORD(v651) = HIDWORD(v651);
  v837 = (v651 >> 8) - ((2 * (v651 >> 8)) & 0x83BF904A);
  LODWORD(STACK[0x340]) = *(v400 + 4 * (HIBYTE(v658) ^ 0x70)) ^ 0x8F6EE479;
  v662 = STACK[0x308];
  HIDWORD(v651) = *(v400 + 4 * (HIBYTE(LODWORD(STACK[0x308])) ^ 0x6Eu)) ^ 0x95BA8298;
  LODWORD(v651) = HIDWORD(v651);
  v663 = (v651 >> 24) ^ __ROR4__(v655, 8);
  LODWORD(v651) = __ROR4__(LODWORD(STACK[0x288]) ^ (LODWORD(STACK[0x288]) >> 6) ^ (LODWORD(STACK[0x288]) >> 3) ^ 0x27F8EE47, 16);
  LODWORD(STACK[0x338]) = *(v400 + 4 * (v658 ^ 0xCEu)) ^ 0xC0D5158A;
  LODWORD(STACK[0x33C]) = *(v400 + 4 * (BYTE1(v657) ^ 0xE1u)) ^ 0x7614DDC2;
  LODWORD(STACK[0x288]) = (v663 ^ v651) - ((2 * (v663 ^ v651)) & 0x83BF904A);
  v664 = *&v393[4 * (HIBYTE(v657) ^ 0x9F)] + 1813297668;
  LODWORD(STACK[0x32C]) = v664 ^ 0x7EA8D8E4 ^ ((4 * v664) | 0x8398FECC);
  v665 = BYTE2(LODWORD(STACK[0x4CC])) ^ 0x1A;
  v666 = *(v396 + 4 * (LODWORD(STACK[0x328]) ^ 0x61u));
  LODWORD(v636) = LODWORD(STACK[0x28C]) ^ (LODWORD(STACK[0x28C]) >> 6) ^ (LODWORD(STACK[0x28C]) >> 3) ^ 0x6F550499;
  v667 = v666 ^ ((v666 ^ 0xC40B7A81) >> 4) ^ ((v666 ^ 0xC40B7A81) >> 3) ^ 0x21F968A;
  v668 = STACK[0x4C8];
  v669 = *(v396 + 4 * (HIBYTE(LODWORD(STACK[0x4C8])) ^ 0x38u));
  LODWORD(v642) = v669 ^ ((v669 ^ 0xC40B7A81) >> 4) ^ ((v669 ^ 0xC40B7A81) >> 3) ^ 0x47402782;
  HIDWORD(v651) = v667;
  LODWORD(v651) = v667;
  v670 = ((v651 >> 16) - ((2 * (v651 >> 16)) & 0x83BF904A) + 1105184805) ^ *(v400 + 4 * (LODWORD(STACK[0x354]) ^ 0xFAu));
  v671 = STACK[0x4CC];
  v672 = *(v396 + 4 * (HIBYTE(LODWORD(STACK[0x4CC])) ^ 0xFCu));
  v673 = *(v396 + 4 * (HIBYTE(LODWORD(STACK[0x4E8])) ^ 0x67u));
  HIDWORD(v651) = v673 ^ ((v673 ^ 0xC40B7A81) >> 4) ^ ((v673 ^ 0xC40B7A81) >> 3) ^ 0x8D088451;
  LODWORD(v651) = HIDWORD(v651);
  v674 = (v651 >> 24) ^ __ROR4__(*(v400 + 4 * (LODWORD(STACK[0x4E8]) ^ 0xEFu)) ^ 0x2ADD8997, 16);
  v675 = ((BYTE2(LODWORD(STACK[0x4E8])) ^ 0x49) - ((2 * (HIWORD(LODWORD(STACK[0x4E8])) ^ 0x5749)) & 0x1DE) + 239) ^ 0x83;
  v676 = LODWORD(STACK[0x37C]) ^ 0xF4;
  LODWORD(STACK[0x28C]) = v674 - ((2 * v674) & 0x83BF904A);
  v677 = *&v393[4 * v676] + 1813297668;
  v678 = *(v396 + 4 * (LODWORD(STACK[0x358]) ^ 0x8Du));
  LODWORD(STACK[0x358]) = v670 ^ __ROR4__(v677 ^ 0xC28D5057 ^ ((4 * v677) | 0x8398FECC), 24) ^ __ROR4__(v678 ^ ((v678 ^ 0xC40B7A81) >> 4) ^ ((v678 ^ 0xC40B7A81) >> 3) ^ 0x3D90F1B1, 8);
  LODWORD(STACK[0x37C]) = LODWORD(STACK[0x290]) ^ (LODWORD(STACK[0x290]) >> 6) ^ (LODWORD(STACK[0x290]) >> 3) ^ 0x5A3E2359;
  v679 = *(v396 + 4 * (v671 ^ 0x5Au));
  v680 = ((v679 ^ 0xC40B7A81) >> 4) ^ ((v679 ^ 0xC40B7A81) >> 3);
  v681 = v679 ^ 0x1C869674 ^ (v680 - ((2 * v680) & 0x11E8573C) + 1760832414);
  v682 = *(v396 + 4 * (BYTE2(v668) ^ 0x3Fu)) ^ 0xC40B7A81;
  v683 = v682 ^ (v682 >> 4) ^ (v682 >> 3) ^ __ROR4__(v636, 16) ^ __ROR4__(v642, 24) ^ __ROR4__(*(v400 + 4 * (BYTE1(v668) ^ 0xF0u)) ^ 0x95BA8298, 8);
  v684 = LODWORD(STACK[0x294]) ^ (LODWORD(STACK[0x294]) >> 6) ^ (LODWORD(STACK[0x294]) >> 3) ^ 0x5398E01E;
  v685 = STACK[0x47C];
  if (!v622)
  {
    v685 = STACK[0x464];
  }

  LODWORD(STACK[0x4A8]) = v685;
  v686 = STACK[0x424];
  if (v622)
  {
    v686 = STACK[0x420];
  }

  LODWORD(STACK[0x4B4]) = v686;
  v687 = STACK[0x438];
  if (v622)
  {
    v687 = STACK[0x434];
  }

  LODWORD(STACK[0x3C8]) = v687;
  v688 = STACK[0x514];
  if (!v622)
  {
    v688 = STACK[0x4C4];
  }

  LODWORD(STACK[0x3B4]) = v688;
  LODWORD(STACK[0x408]) = v618;
  LODWORD(STACK[0x330]) = v619;
  if (v622)
  {
    v689 = v618;
  }

  else
  {
    v689 = v619;
  }

  LODWORD(STACK[0x490]) = v689;
  v690 = STACK[0x460];
  if (!v622)
  {
    v690 = STACK[0x45C];
  }

  LODWORD(STACK[0x4A0]) = v690;
  v691 = STACK[0x41C];
  if (!v622)
  {
    v691 = STACK[0x414];
  }

  LODWORD(STACK[0x498]) = v691;
  v692 = STACK[0x458];
  if (!v622)
  {
    v692 = STACK[0x454];
  }

  LODWORD(STACK[0x3D8]) = v692;
  v693 = STACK[0x418];
  if (v622)
  {
    v693 = STACK[0x410];
  }

  LODWORD(STACK[0x4E8]) = v693;
  v694 = STACK[0x4A4];
  if (v622)
  {
    v694 = STACK[0x46C];
  }

  LODWORD(STACK[0x3E4]) = v694;
  v695 = STACK[0x448];
  if (!v622)
  {
    v695 = STACK[0x444];
  }

  LODWORD(STACK[0x3CC]) = v695;
  v696 = STACK[0x4E4];
  if ((STACK[0x4E4] & 2) != 0)
  {
    v697 = -2;
  }

  else
  {
    v697 = 2;
  }

  v698 = *(v396 + 4 * v665) ^ 0xC40B7A81;
  v699 = v698 ^ (v698 >> 4) ^ (v698 >> 3) ^ __ROR4__(v672 ^ ((v672 ^ 0xC40B7A81) >> 4) ^ ((v672 ^ 0xC40B7A81) >> 3) ^ 0x96934435, 24) ^ __ROR4__(v681, 16) ^ __ROR4__(v684, 8);
  v700 = (LODWORD(STACK[0x298]) >> 6) ^ (LODWORD(STACK[0x298]) >> 3);
  v701 = ((LODWORD(STACK[0x298]) ^ 0x5D283874 ^ v700) << (v700 & 8) << (v700 & 8 ^ 8)) ^ ((LODWORD(STACK[0x298]) ^ 0x5D283874 ^ v700) >> 24);
  v702 = LODWORD(STACK[0x384]) ^ 0xFEB27403;
  v703 = *&v393[4 * (HIBYTE(LODWORD(STACK[0x384])) ^ 0x7A)] + 1813297668;
  HIDWORD(v705) = v703 ^ 0x673E3DB9 ^ ((4 * v703) | 0x8398FECC);
  LODWORD(v705) = HIDWORD(v705);
  v704 = v705 >> 24;
  LODWORD(v705) = __ROR4__(*(v400 + 4 * (BYTE1(v702) ^ 0x3Bu)) ^ 0x2039C96C, 8);
  v706 = *&v393[4 * ((v697 + (v696 ^ 0xE4)) ^ 0x7A)] + 1813297668;
  LODWORD(STACK[0x354]) = LODWORD(STACK[0x2B8]) ^ (LODWORD(STACK[0x2B8]) >> 6) ^ (LODWORD(STACK[0x2B8]) >> 3) ^ 0x4C57B8EB;
  v707 = BYTE2(v702) ^ 0xB5;
  v708 = (v704 ^ v705) - ((2 * (v704 ^ v705)) & 0x83BF904A);
  v709 = *&v393[4 * (v702 ^ 0x92)] + 1813297668;
  LODWORD(STACK[0x384]) = v709 ^ 0x673E3DB9 ^ ((4 * v709) | 0x8398FECC);
  HIDWORD(v705) = LODWORD(STACK[0x2C8]) ^ (LODWORD(STACK[0x2C8]) >> 6) ^ (LODWORD(STACK[0x2C8]) >> 3) ^ 0xA45201CF;
  LODWORD(v705) = HIDWORD(v705);
  v710 = (v705 >> 24) ^ __ROR4__(v706 ^ 0xB877038 ^ ((4 * v706) | 0x8398FECC), 16);
  v711 = LODWORD(STACK[0x388]) ^ 0xC9;
  LODWORD(STACK[0x324]) = LODWORD(STACK[0x2E8]) ^ (LODWORD(STACK[0x2E8]) >> 6) ^ (LODWORD(STACK[0x2E8]) >> 3) ^ 0xEAA656B9;
  v712 = *(v396 + 4 * v711);
  v713 = ((v712 ^ 0xC40B7A81) >> 4) ^ ((v712 ^ 0xC40B7A81) >> 3);
  LODWORD(v705) = __ROR4__(v712 ^ 0xB87A5D1F ^ (v713 - ((2 * v713) & 0x11E8573C) + 1760832414), 8);
  v714 = LODWORD(STACK[0x380]) ^ 0xAE;
  v715 = (v701 ^ v705) - ((2 * (v701 ^ v705)) & 0x83BF904A);
  v716 = *(v396 + 4 * (BYTE1(LODWORD(STACK[0x4B8])) ^ 0xE4u));
  v717 = *(v396 + 4 * v845) ^ 0xC40B7A81;
  v718 = *(v396 + 4 * v834) ^ 0xC40B7A81;
  v719 = *(v396 + 4 * (BYTE2(LODWORD(STACK[0x4B8])) ^ 0xE2u)) ^ 0xC40B7A81;
  v720 = v716 ^ ((v716 ^ 0xC40B7A81) >> 4) ^ ((v716 ^ 0xC40B7A81) >> 3) ^ 0x996C3ADA;
  v721 = v710 - ((2 * v710) & 0x83BF904A);
  LODWORD(STACK[0x2F8]) ^= (LODWORD(STACK[0x2F8]) >> 6) ^ (LODWORD(STACK[0x2F8]) >> 3) ^ 0x25F5CB7E;
  LODWORD(STACK[0x2E8]) = *(v400 + 4 * (BYTE1(v696) ^ 0x36u)) ^ 0x79F6A2;
  v722 = STACK[0x4E0];
  v723 = *&v393[4 * (BYTE1(LODWORD(STACK[0x4E0])) ^ 0x53)] + 1813297668;
  v724 = v723 ^ 0x869D47DA ^ ((4 * v723) | 0x8398FECC);
  v725 = LODWORD(STACK[0x2FC]) ^ (LODWORD(STACK[0x2FC]) >> 6) ^ (LODWORD(STACK[0x2FC]) >> 3) ^ 0x9D84DB5C;
  v726 = BYTE2(LODWORD(STACK[0x4E0])) ^ 0x3B;
  LODWORD(STACK[0x328]) = *(v400 + 4 * v843);
  LODWORD(STACK[0x388]) = *(v400 + 4 * v840);
  LODWORD(STACK[0x4B8]) = *(v400 + 4 * (BYTE2(v662) ^ 0xFu));
  v727 = *(v400 + 4 * v675);
  LODWORD(STACK[0x2FC]) = *(v400 + 4 * v707);
  LODWORD(STACK[0x2B8]) = *(v400 + 4 * v714);
  LODWORD(STACK[0x2C8]) = *(v400 + 4 * (BYTE2(v696) ^ 0x7Eu));
  v728 = *(v400 + 4 * v726);
  HIDWORD(v705) = v725;
  LODWORD(v705) = v725;
  v729 = v705 >> 24;
  LODWORD(v705) = __ROR4__(v724, 8);
  LODWORD(STACK[0x380]) = LODWORD(STACK[0x280]) + 1105184805;
  LODWORD(STACK[0x308]) = v837 + 1105184805;
  LODWORD(STACK[0x4E4]) = LODWORD(STACK[0x288]) + 1105184805;
  v730 = v715 + 1105184805;
  v731 = v721 + 1105184805;
  v732 = *&v393[4 * (v722 ^ 0x17)] + 1813297668;
  v733 = v728 ^ __ROR4__(v732 ^ 0xB0B4E3A6 ^ ((4 * v732) | 0x8398FECC), 16) ^ ((v729 ^ v705) - ((2 * (v729 ^ v705)) & 0x83BF904A) + 1105184805);
  v734 = LODWORD(STACK[0x300]) ^ (LODWORD(STACK[0x300]) >> 6) ^ (LODWORD(STACK[0x300]) >> 3);
  v735 = *&v393[4 * v848] + 1813297668;
  v736 = *&v393[4 * (LODWORD(STACK[0x254]) ^ 0xB3)] + 1813297668;
  v737 = *&v393[4 * (v853 ^ 4)] + 1813297668;
  v738 = ((4 * v736) | 0x8398FECC) ^ v736 ^ __ROR4__(v737 ^ 0xED321176 ^ ((4 * v737) | 0x8398FECC), 24) ^ __ROR4__(v734 - ((2 * v734) & 0x23A29476) + 298928699, 16) ^ __ROR4__(LODWORD(STACK[0x304]) ^ (LODWORD(STACK[0x304]) >> 6) ^ (LODWORD(STACK[0x304]) >> 3) ^ 0x2A3EF9D, 8);
  v739 = LODWORD(STACK[0x238]) - 805645319 + ~(2 * (STACK[0x2D8] & 0x2AD940C9 ^ LODWORD(STACK[0x23C])));
  v740 = LODWORD(STACK[0x3A4]) - (STACK[0x504] & 0x175B593C) - 1669446067;
  v741 = LODWORD(STACK[0x2E0]) ^ __ROR4__(STACK[0x25C], 16) ^ v735 ^ ((4 * v735) | 0x8398FECC) ^ __ROR4__(STACK[0x2F4], 8);
  LODWORD(v705) = __ROR4__(STACK[0x278], 24);
  v742 = LODWORD(STACK[0x274]) - ((2 * LODWORD(STACK[0x274])) & 0x221702A6);
  v743 = (LODWORD(STACK[0x208]) - ((2 * LODWORD(STACK[0x208])) & 0xFFF62DAE) - 321833) ^ LODWORD(STACK[0x53C]);
  v744 = (v741 ^ v705) - ((2 * (v741 ^ v705)) & 0x221702A6);
  v745 = LODWORD(STACK[0x2E0]) ^ __ROR4__(STACK[0x334], 8) ^ __ROR4__(STACK[0x344], 16) ^ __ROR4__(STACK[0x26C], 24) ^ v717 ^ (v717 >> 3) ^ (v717 >> 4);
  v746 = v745 + 285966675 + (~(2 * v745) | 0xDDE8FD59);
  v747 = v683 - ((2 * v683) & 0x96CE4512);
  v748 = v699 - ((2 * v699) & 0x96CE4512);
  v749 = LODWORD(STACK[0x358]) - ((2 * LODWORD(STACK[0x358])) & 0x96CE4512);
  LODWORD(v705) = __ROR4__(STACK[0x37C], 8);
  v750 = (v727 ^ (LODWORD(STACK[0x28C]) + 1105184805) ^ LODWORD(STACK[0x4EC]) ^ v705) - ((2 * (v727 ^ (LODWORD(STACK[0x28C]) + 1105184805) ^ LODWORD(STACK[0x4EC]) ^ v705)) & 0x96CE4512);
  v751 = (v738 - ((2 * v738) & 0x96CE4512) + 1265050249) ^ LODWORD(STACK[0x3C4]);
  v752 = LODWORD(STACK[0x3A8]) ^ 0x68585EB1 ^ (v751 - ((2 * v751) & 0x21ECA182) + 284577985);
  v753 = LODWORD(STACK[0x200]) ^ (v733 + 1661994441 - ((2 * v733) & 0xC6200B92)) ^ 0x71F3E01A;
  v754 = LODWORD(STACK[0x228]) ^ LODWORD(STACK[0x268]) ^ LODWORD(STACK[0x38C]) ^ __ROR4__(STACK[0x558], 8) ^ LODWORD(STACK[0x508]) ^ LODWORD(STACK[0x320]) ^ LODWORD(STACK[0x2A0]) ^ LODWORD(STACK[0x2C4]) ^ __ROR4__(STACK[0x314], 24) ^ __ROR4__(STACK[0x318], 16) ^ 0x3552F6D;
  v755 = STACK[0x2DC];
  LODWORD(STACK[0x558]) = LODWORD(STACK[0x2DC]) ^ LODWORD(STACK[0x2D8]) ^ LODWORD(STACK[0x52C]) ^ 0xEA90A998 ^ (LODWORD(STACK[0x2E0]) - 2 * (STACK[0x2E0] & 0x60EC16C6 ^ LODWORD(STACK[0x234])) + 1626085058);
  LODWORD(STACK[0x4CC]) = (v743 & 0x8000000 | 0x35A3CD76) ^ v743 & 0xF7FFFFFF;
  LODWORD(STACK[0x4C8]) = LODWORD(STACK[0x518]) ^ v755 ^ v739 ^ 0xB499A04C;
  v756 = LODWORD(STACK[0x520]) ^ v740;
  v757 = LODWORD(STACK[0x218]) ^ __ROR4__(STACK[0x354], 16) ^ v719 ^ (v719 >> 3) ^ (v719 >> 4) ^ __ROR4__(STACK[0x324], 24) ^ __ROR4__(v720, 8) ^ 0x2E3AC7FD;
  v758 = LODWORD(STACK[0x218]) ^ LODWORD(STACK[0x2B8]) ^ v730 ^ __ROR4__(STACK[0x2F8], 16) ^ 0x11F90553;
  v759 = LODWORD(STACK[0x218]) ^ LODWORD(STACK[0x2C8]) ^ __ROR4__(STACK[0x2E8], 8) ^ v731 ^ 0xB9B8336B;
  v760 = LODWORD(STACK[0x218]) ^ LODWORD(STACK[0x2FC]) ^ (v708 + 1105184805) ^ __ROR4__(STACK[0x384], 16) ^ 0xFCE78263;
  v761 = v752 + v753;
  v762 = LODWORD(STACK[0x560]) + LODWORD(STACK[0x428]) + 1885181259;
  LODWORD(STACK[0x37C]) = v754;
  v763 = v754 + v762;
  LODWORD(STACK[0x344]) = v761;
  v764 = v761 + v754 + v762;
  if (v764)
  {
    v765 = v757;
  }

  else
  {
    v765 = v758;
  }

  LODWORD(STACK[0x53C]) = v765;
  if (v764)
  {
    v766 = v759;
  }

  else
  {
    v766 = v757;
  }

  if (v764)
  {
    v767 = v760;
  }

  else
  {
    v767 = v759;
  }

  if (v764)
  {
    v768 = v758;
  }

  else
  {
    v768 = v760;
  }

  v769 = LODWORD(STACK[0x3AC]) ^ 0x6A2D438B ^ (v744 + 285966675);
  v770 = LODWORD(STACK[0x220]) ^ (v742 + 285966675) ^ 0x2659F1A9;
  v771 = LODWORD(STACK[0x220]) ^ (v851 - ((2 * v851) & 0x221702A6) + 285966675) ^ 0x45536752;
  v772 = LODWORD(STACK[0x3AC]) ^ 0x3BDB68C5 ^ (v746 + 1);
  v773 = (v747 + 1265050249) ^ 0xE28A81F0;
  v774 = LODWORD(STACK[0x394]) ^ 0x19B3D23F ^ (v750 + 1265050249);
  v775 = LODWORD(STACK[0x214]) ^ LODWORD(STACK[0x328]) ^ __ROR4__(STACK[0x340], 24) ^ __ROR4__(STACK[0x338], 16) ^ LODWORD(STACK[0x308]) ^ 0xE40A0CE6;
  v776 = LODWORD(STACK[0x214]) ^ __ROR4__(STACK[0x350], 16) ^ v718 ^ (v718 >> 3) ^ (v718 >> 4) ^ __ROR4__(STACK[0x33C], 8) ^ __ROR4__(STACK[0x32C], 24) ^ 0x40BA6218;
  v777 = LODWORD(STACK[0x538]) ^ (v748 + 1265050249) ^ 0xCF38E5E8;
  v778 = LODWORD(STACK[0x538]) ^ v773;
  v779 = LODWORD(STACK[0x538]) ^ (v749 + 1265050249) ^ 0x3655E06;
  v780 = LODWORD(STACK[0x214]) ^ LODWORD(STACK[0x388]) ^ LODWORD(STACK[0x380]) ^ __ROR4__(STACK[0x34C], 24) ^ __ROR4__(STACK[0x348], 16) ^ 0xACA7E638;
  if (v764)
  {
    v781 = v775;
  }

  else
  {
    v781 = v776;
  }

  if (v764)
  {
    v782 = v776;
  }

  else
  {
    v782 = v780;
  }

  if (v764)
  {
    v783 = v780;
  }

  else
  {
    v783 = LODWORD(STACK[0x214]) ^ LODWORD(STACK[0x4B8]) ^ LODWORD(STACK[0x4E4]) ^ 0xEABAD48C;
  }

  if (v764)
  {
    v784 = LODWORD(STACK[0x214]) ^ LODWORD(STACK[0x4B8]) ^ LODWORD(STACK[0x4E4]) ^ 0xEABAD48C;
  }

  else
  {
    v784 = v775;
  }

  v785 = LODWORD(STACK[0x4A8]) - 615914653 + (LODWORD(STACK[0x4F4]) ^ 0x2DE20957);
  v786 = LODWORD(STACK[0x3B8]) >> 3;
  LODWORD(STACK[0x52C]) = v786;
  v787 = v786 ^ 0x4861DE8u;
  v788 = LODWORD(STACK[0x500]) ^ 0x40E7B24E ^ (LODWORD(STACK[0x4F8]) + LODWORD(STACK[0x4B4]) + 1174114034);
  v789 = (((v785 ^ LODWORD(STACK[0x49C])) >> 1) ^ 0x7FF5E2EF) - 103316493;
  v790 = 2 * ((((LODWORD(STACK[0x4F8]) ^ 0x13F39A08) + 627656957) ^ LODWORD(STACK[0x478])) - LODWORD(STACK[0x498])) - 2022640726;
  v791 = *(STACK[0x568] + 8 * ((*(STACK[0x568] + 8 * ((*(STACK[0x568] + 8 * ((*(STACK[0x568] + 8 * (0x538BFC1C % v787)) + 3429539454) % v787)) + 477008579) % v787)) + 3450057031) % v787)) + 2071593460;
  STACK[0x508] = v787;
  LODWORD(v791) = v791 % v787 - ((2 * (v791 % v787)) & 0x20D8A4C0) + 1349276256;
  v792 = v788 >> 1;
  v793 = (((v791 ^ 0x1A813EFB) + 1571104612) ^ ((v791 ^ 0x2E8BED29) + 1773139122) ^ ((v791 ^ 0x646681B2) + 591566891)) + 415455091;
  v794 = STACK[0x40C];
  v795 = (LODWORD(STACK[0x40C]) - 4119) | 0xC20u;
  LODWORD(STACK[0x380]) = v752;
  LODWORD(STACK[0x388]) = v752 + v763;
  v796 = v794;
  v797 = LODWORD(STACK[0x2A4]) ^ v756 ^ 0xBD9A0890;
  LODWORD(STACK[0x328]) = v770;
  if (v764)
  {
    v798 = v769;
  }

  else
  {
    v798 = v770;
  }

  if (v764)
  {
    v799 = v772;
  }

  else
  {
    v799 = v769;
  }

  LODWORD(STACK[0x4E4]) = v799;
  LODWORD(STACK[0x324]) = v771;
  if (v764)
  {
    v800 = v771;
  }

  else
  {
    v800 = v772;
  }

  if (v764)
  {
    v801 = STACK[0x4CC];
  }

  else
  {
    v801 = STACK[0x558];
  }

  LODWORD(STACK[0x278]) = v797;
  if (v764)
  {
    v802 = v797;
  }

  else
  {
    v802 = STACK[0x4C8];
  }

  LODWORD(STACK[0x340]) = v774;
  LODWORD(STACK[0x2E8]) = v777;
  if (v764)
  {
    v777 = v774;
  }

  LODWORD(STACK[0x2B8]) = v778;
  LODWORD(STACK[0x2A0]) = v779;
  if (v764)
  {
    v779 = v778;
  }

  LODWORD(STACK[0x4E0]) = v764;
  LODWORD(STACK[0x520]) = v790;
  LODWORD(STACK[0x504]) = v792;
  LODWORD(STACK[0x518]) = v792 ^ 0xBEB7F114;
  LODWORD(STACK[0x538]) = v789;
  LODWORD(STACK[0x308]) = v801;
  LODWORD(STACK[0x304]) = v802;
  if ((v764 & 2) != 0)
  {
    v803 = v802;
  }

  else
  {
    v803 = v801;
  }

  LODWORD(STACK[0x358]) = v803;
  LODWORD(STACK[0x32C]) = v766;
  LODWORD(STACK[0x2F8]) = v768;
  if ((v764 & 2) != 0)
  {
    v804 = v768;
  }

  else
  {
    v804 = v766;
  }

  LODWORD(STACK[0x334]) = v804;
  LODWORD(STACK[0x384]) = v767;
  v805 = STACK[0x53C];
  if ((v764 & 2) == 0)
  {
    v805 = v767;
  }

  LODWORD(STACK[0x338]) = v805;
  LODWORD(STACK[0x290]) = v798;
  LODWORD(STACK[0x28C]) = v800;
  if ((v764 & 2) != 0)
  {
    v806 = v798;
  }

  else
  {
    v806 = v800;
  }

  LODWORD(STACK[0x33C]) = v806;
  LODWORD(STACK[0x288]) = v777;
  LODWORD(STACK[0x280]) = v779;
  if ((v764 & 2) != 0)
  {
    v807 = v777;
  }

  else
  {
    v807 = v779;
  }

  LODWORD(STACK[0x34C]) = v807;
  LODWORD(STACK[0x320]) = v782;
  LODWORD(STACK[0x314]) = v784;
  if ((v764 & 2) != 0)
  {
    v808 = v782;
  }

  else
  {
    v808 = v784;
  }

  LODWORD(STACK[0x350]) = v808;
  LODWORD(STACK[0x298]) = v781;
  LODWORD(STACK[0x294]) = v783;
  if ((v764 & 2) != 0)
  {
    v809 = v781;
  }

  else
  {
    v809 = v783;
  }

  LODWORD(STACK[0x354]) = v809;
  *(STACK[0x570] + 8 * ((v795 ^ 0x61BB7A6F73B117) + 0x3F9E4485908C40C7)) = *(STACK[0x568] + 8 * ((v795 ^ 0x61BB7A6F73B117) + 0x3F9E4485908C40C7)) ^ 0x4343434343434343;
  v810 = v793 > 0x300BA36D;
  if (v793 < 0x300BA36C)
  {
    v810 = 1;
  }

  return (*(STACK[0x480] + 8 * ((15 * v810) ^ v796)))(0xA8F62D55B49C4E53);
}