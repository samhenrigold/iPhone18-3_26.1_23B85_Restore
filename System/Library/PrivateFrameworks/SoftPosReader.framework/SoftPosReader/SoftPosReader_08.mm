uint64_t sub_26AA424F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = v8 ^ 0x4FA;
  v14 = STACK[0x22C8];
  v15 = v8 ^ 0x4FA ^ STACK[0x22C8] ^ 0x926B8261;
  LODWORD(STACK[0x2038]) = 496367269 * v15 + 1060547322;
  v16 = STACK[0x2270];
  v17 = STACK[0x2270] ^ 0x11C8565C;
  v18 = STACK[0x2278] ^ 0x11C8565C;
  v19 = STACK[0x22E0];
  v20 = STACK[0x22E0] ^ 0x9D269A64;
  LODWORD(STACK[0x2250]) = -1701116603 * v20;
  LODWORD(STACK[0x2248]) = (v18 - v20) * (v9 ^ 0x9A9B055A);
  LODWORD(STACK[0x2168]) = v18 ^ v19;
  v21 = (v13 + 763091659) & 0xD2842F8F;
  LODWORD(STACK[0x2178]) = 496367269 * v17;
  LODWORD(STACK[0x2268]) = v16 ^ v14;
  LODWORD(STACK[0x22B8]) = 148122563 * v18;
  LODWORD(STACK[0x22C0]) = 148122563 * v20 - 2213305 - (((v21 + 296241411) * v20) & 0xFFBC748E);
  LODWORD(STACK[0x2218]) = v18 ^ v20;
  LODWORD(STACK[0x22B0]) = v17 - v15;
  LODWORD(STACK[0x2210]) = 1330690963 * (v17 - v15);
  LODWORD(STACK[0x2180]) = 1823313683 * v18;
  LODWORD(STACK[0x2258]) = v20 - v18;
  LODWORD(STACK[0x2208]) = 1823313683 * (v20 - v18);
  LODWORD(STACK[0x21E0]) = v16 & a3 ^ 0x48 | v16 & a3 ^ 2;
  LODWORD(STACK[0x2160]) = (v19 & 0x1F ^ 0x1B) + (v19 & 0x1F ^ 4);
  LODWORD(STACK[0x2220]) = v15;
  LODWORD(STACK[0x2170]) = v17 ^ v15;
  v22 = STACK[0x22F0];
  v23 = *(a6 + STACK[0x22F0]);
  v24 = v23 + 496367269 * v17 - 496367269 * v15;
  LODWORD(STACK[0x21D0]) = v24 ^ v23;
  *(a8 + (31 * v22 + ((v21 - 3684) ^ 0x401) - ((((31 * v22 + ((v21 - 3684) ^ 0x401)) * v10) >> 16) >> 3) * a3)) = (v24 ^ v23) - ((((v21 - 41) | 4) ^ 0xE) & (2 * (v24 ^ v23))) - 88;
  STACK[0x22F0] = v22 + 1;
  *(a8 + (31 * v22 - ((((31 * v22) * v10) >> 16) >> 3) * a3)) = v24 - (v11 & (2 * v24)) - 88;
  return (*(v12 + 8 * ((292 * (v22 < 0x1F)) | v21)))();
}

uint64_t sub_26AA42744(int a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v14 = STACK[0x22F0];
  v15 = *(a6 + STACK[0x22F0]);
  v16 = (v15 ^ a7) + LODWORD(STACK[0x2258]);
  v17 = v16 ^ v15;
  LODWORD(STACK[0x1E30]) = v17 ^ 0xF8826E8C;
  *(a8 + (((v9 + 30367) & 0x8E7F ^ 0x840) + v8 - ((((((v9 + 30367) & 0x8E7F ^ 0x840) + v8) * v11) >> 16) >> 3) * a3)) = v17 ^ v10;
  *(a8 + (31 * v14 - ((((31 * v14) * v11) >> 16) >> 3) * a3)) = v16 - (v12 & (2 * v16)) - 88;
  v18 = *(v13 + 8 * (v9 ^ (209 * (a1 != 30))));
  STACK[0x22F0] = 32;
  return v18();
}

uint64_t sub_26AA42814(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  LODWORD(STACK[0x21A0]) = 0;
  v15 = *(a6 + v10 + 2);
  *(a8 + (v8 + v9 - 3166 + 1085 - 74 * ((((v8 + v9 - 3166 + 1085) * v12) >> 16) >> 3))) = (v11 ^ a7 ^ 0x15) - (v13 & (2 * (v11 ^ a7))) - 88;
  *(a8 + (31 * (v10 + 2) - 74 * ((((31 * (v10 + 2)) * v12) >> 16) >> 3))) = (v15 ^ v11 ^ a7 ^ 0x15) - (v13 & (2 * (v15 ^ v11 ^ a7 ^ 0x15))) - 88;
  v16 = *(v14 + 8 * (v9 ^ (7442 * (a1 < 0x1D))));
  STACK[0x22F0] = v10 + 3;
  return v16();
}

uint64_t sub_26AA428D4@<X0>(int a1@<W0>, __int16 a2@<W2>, uint64_t a3@<X5>, int a4@<W6>, uint64_t a5@<X7>, int a6@<W8>)
{
  v13 = *(a3 + v8);
  v14 = (v13 ^ a4) - a6 + v10;
  v15 = v14 ^ v13;
  LODWORD(STACK[0x1E70]) = ((v7 - 3187) | 0x15) ^ 0x9768FD5D ^ v15;
  *(a5 + (v6 + 1147 - ((((v6 + 1147) * v11) >> 16) >> 3) * a2)) = v15 ^ v9;
  *(a5 + (31 * v8 - ((((31 * v8) * v11) >> 16) >> 3) * a2)) = v14 + (~(2 * v14) | 0xAF) - 87;
  v16 = *(v12 + 8 * ((241 * (a1 != ((23 * (v7 ^ 0xC2F)) ^ 0x742))) ^ v7));
  STACK[0x22F0] = 32;
  LODWORD(STACK[0x21A0]) = 1;
  return v16();
}

uint64_t sub_26AA429BC(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  LODWORD(STACK[0x1F40]) = 0;
  v14 = a7 ^ v10 ^ 0xC8735B76;
  v15 = *(a6 + v9 + 4) + 99 - ((2 * *(a6 + v9 + 4)) & 0xC6);
  LODWORD(STACK[0x1E28]) = v14;
  v16 = 31 * (v9 + 4);
  *(a8 + (v16 + 1054) % (((v8 + 30557) & 0x8FC7) - 3641)) = a7 ^ v10 ^ 0xBD;
  *(a8 + (v16 - 74 * (((v16 * v11) >> 16) >> 3))) = (v15 ^ v14) - (v12 & (2 * (v15 ^ v14))) - 88;
  v17 = *(v13 + 8 * (v8 ^ (5725 * (a1 < 0x1B))));
  STACK[0x22F0] = 32;
  LODWORD(STACK[0x21A0]) = 1;
  return v17();
}

uint64_t sub_26AA42AB0(int a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v13 = *(a6 + v9 + 5);
  v14 = (v13 ^ a7) + LODWORD(STACK[0x2248]);
  STACK[0x2240] = v14 ^ v13;
  *(a8 + (31 * (v9 + 5) + 1054 - ((((31 * (v9 + 5) + 1054) * v10) >> 16) >> 3) * a3)) = (v14 ^ v13) - (((v8 ^ 0x9C) + 49) & (2 * (v14 ^ v13))) - 88;
  *(a8 + (31 * (v9 + 5) - ((((31 * (v9 + 5)) * v10) >> 16) >> 3) * a3)) = v14 - (v11 & (2 * v14)) - 88;
  v15 = *(v12 + 8 * (v8 ^ (7 * (a1 != 26))));
  STACK[0x22F0] = 32;
  LODWORD(STACK[0x1F40]) = 1;
  LODWORD(STACK[0x21A0]) = 1;
  LODWORD(STACK[0x1F28]) = STACK[0x2250];
  return v15();
}

uint64_t sub_26AA42B6C(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v14 = *(a6 + v9 + 6);
  v15 = a7 ^ v8 ^ LODWORD(STACK[0x2220]);
  *(a8 + (31 * (v9 + 6) + 1054) % (((v10 + 741) | 0x8CA) - 2948)) = ((2 * v15) & 0xFC) + (v15 ^ 0xFE) - ((2 * (((2 * v15) & 0xFC) + (v15 ^ 0xFE)) + 4) & v12) - 86;
  *(a8 + (31 * (v9 + 6) - 74 * ((((31 * (v9 + 6)) * v11) >> 16) >> 3))) = (v15 ^ v14) - (v12 & (2 * (v15 ^ v14))) - 88;
  return (*(v13 + 8 * ((v10 + 2503) ^ ((4 * (a1 > 0x18)) | (16 * (a1 > 0x18))))))();
}

uint64_t sub_26AA42C30(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v15 = ((a7 ^ LODWORD(STACK[0x22B8])) - 2213305 - ((2 * (a7 ^ LODWORD(STACK[0x22B8]))) & 0xFFBC748E)) ^ LODWORD(STACK[0x22C0]);
  v16 = (v10 + 81 + (*(STACK[0x1F10] + (((*(a6 + v11 + 7) >> 7) | (2 * *(a6 + v11 + 7))) ^ 0xBLL)) ^ 0xB5) - 86) ^ ((a7 ^ LOBYTE(STACK[0x22B8])) + 71 - ((2 * (a7 ^ LOBYTE(STACK[0x22B8]))) & 0x8E)) ^ LOBYTE(STACK[0x22C0]);
  *(a8 + ((v10 ^ 0xFF3) + v8 - (((((v10 ^ 0xFF3) + v8) * v12) >> 16) >> 3) * v9)) = v15 - (v13 & (2 * v15)) - 88;
  *(a8 + (31 * (v11 + 7) - ((((31 * (v11 + 7)) * v12) >> 16) >> 3) * v9)) = v16 - (v13 & (2 * v16)) - 88;
  return (*(v14 + 8 * (v10 ^ (27 * (a1 == 24)))))();
}

uint64_t sub_26AA42D1C(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v15 = v10 ^ 0xF6D;
  v16 = *(a6 + v11 + 8);
  v17 = (v16 ^ a7) + LODWORD(STACK[0x22B0]);
  *(a8 + (((v15 + 24060) & 0x9D7F ^ 0x443) + v8 - ((((((v15 + 24060) & 0x9D7F ^ 0x443) + v8) * v12) >> 16) >> 3) * v9)) = ((v15 ^ 0xB4) - 111) ^ v16 ^ v17;
  *(a8 + (31 * (v11 + 8) - ((((31 * (v11 + 8)) * v12) >> 16) >> 3) * v9)) = v17 - (v13 & (2 * v17)) - 88;
  return (*(v14 + 8 * (v15 ^ (31 * (a1 > 0x16)))))();
}

uint64_t sub_26AA42DD4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v18 = (*(v14 + (((v10 ^ 0x58) - 81) ^ ((*(a6 + v11 + 9) >> 4) | (16 * *(a6 + v11 + 9))))) ^ 0xFFFFFFA8) - 37;
  v19 = LODWORD(STACK[0x2218]) ^ a7;
  v20 = v18 ^ 0xFFFFFFEC ^ (v18 << ((((v10 - 5) | v13) ^ 0x12) & 0xF6));
  v21 = (v20 - ((2 * v20 + 82) & v16) - 47) ^ v12 ^ v19;
  *(a8 + (v8 + 1147 - ((((v8 + 1147) * v15) >> 16) >> 3) * v9)) = v19 - (v16 & (2 * v19)) - 88;
  *(a8 + (31 * (v11 + 9) - ((((31 * (v11 + 9)) * v15) >> 16) >> 3) * v9)) = v21 - (v16 & (2 * v21)) - 88;
  v22 = *(v17 + 8 * (v10 ^ ((a1 != 22) | (8 * (a1 != 22)))));
  LODWORD(STACK[0x21D8]) = v19;
  return v22();
}

uint64_t sub_26AA42ECC(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v14 = *(a6 + v10 + 10);
  v15 = (v14 ^ a7) + LODWORD(STACK[0x2210]);
  LODWORD(STACK[0x21B8]) = v15 ^ v14;
  *(a8 + (31 * (v10 + 10) + 1054 - ((((31 * (v10 + 10) + 1054) * v11) >> 16) >> 3) * v8)) = (v15 ^ v14) + ((33 * ((v9 - 48) ^ 0x7A)) ^ 0xAD) - (v12 & (2 * (v15 ^ v14)));
  *(a8 + (31 * (v10 + 10) - ((((31 * (v10 + 10)) * v11) >> 16) >> 3) * v8)) = v15 - (v12 & (2 * v15)) - 88;
  return (*(v13 + 8 * (v9 ^ (217 * (a1 < 0x15)))))();
}

uint64_t sub_26AA42F74(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v13 = *(a6 + v10 + 11);
  v14 = (v13 ^ a7) + LODWORD(STACK[0x2208]);
  *(a8 + (v8 + ((v9 - 2470) ^ 0x4E3) - 895) % ((v9 - 2470) & 0xFCBF ^ 0x55u)) = (v14 ^ v13) - (v11 & (2 * (v14 ^ v13))) - 88;
  if (a1 == 20)
  {
    v15 = -135463958;
  }

  else
  {
    v15 = -135463956;
  }

  v16 = ((a1 != 20) ^ 0x483F7EFF) + v15;
  *(a8 + (31 * (v10 + 11)) % LODWORD(STACK[0x21E0])) = v14 - (v11 & (2 * v14)) - 88;
  v17 = *(v12 + 8 * (v9 ^ (29 * (v16 != 1076656873))));
  LODWORD(STACK[0x21A8]) = v16;
  LODWORD(STACK[0x1F08]) = v14 ^ v13;
  return v17();
}

uint64_t sub_26AA4305C(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v12 = LODWORD(STACK[0x2170]) ^ a7;
  v13 = *(a6 + v10) ^ v12;
  LODWORD(STACK[0x2190]) = v12;
  *(a8 + (v8 + 1116) % 0x4Au) = v12 - ((2 * v12) & 0x50) - 88;
  *(a8 + (31 * v10) % (((v9 ^ 0x7A3) + 2203) ^ 0x8F0u)) = v13 - ((2 * v13) & 0x50) - 88;
  return (*(v11 + 8 * (v9 | (a1 < 0x13))))();
}

uint64_t sub_26AA43100(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v15 = LODWORD(STACK[0x2168]) ^ a7;
  v16 = ((((v9 - 2216) | v11) ^ 0xDA224EB9) + *(a6 + v10) - ((*(a6 + v10) << (((v9 - 58) | 0x42) ^ 0xC3)) & 0x14C)) ^ v15 ^ 0x4704D4C2;
  v17 = STACK[0x2160];
  *(a8 + (v8 + 1147 - ((((v8 + 1147) * v14) >> 16) >> 3) * v12)) = v15 ^ 0xCC;
  *(a8 + v10 * v17 - v10 * v17 / 0x4Au * v12) = v16 + (~(2 * v16) | 0xAF) - 87;
  v18 = *(v13 + 8 * (v9 ^ (394 * (a1 != 18))));
  LODWORD(STACK[0x2288]) = v15 ^ 0x4704D4C2;
  return v18();
}

uint64_t sub_26AA431D8(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v16 = ((v9 + 93) ^ 0xB7 ^ *(v13 + (((v9 ^ 0xE6) - 38) ^ ((*(a6 + v10 + 14) >> 4) | (16 * *(a6 + v10 + 14)))))) - 37;
  v17 = (((v16 ^ (16 * v16) ^ 0xEC) - ((2 * (v16 ^ (16 * v16) ^ 0xEC) + 82) & 0x50) - 47) ^ v11);
  v18 = (v17 ^ a7) + LODWORD(STACK[0x22B0]);
  *(a8 + (v8 + 1178 - ((((v8 + 1178) * v15) >> 16) >> 3) * v12)) = v18 + v17 - 2 * (v18 & v17) - ((2 * (v18 + v17 - 2 * (v18 & v17))) & 0x50) - 88;
  *(a8 + (31 * (v10 + 14) - ((((31 * (v10 + 14)) * v15) >> 16) >> 3) * v12)) = v18 - ((2 * v18) & 0x50) - 88;
  return (*(v14 + 8 * (v9 ^ (60 * (a1 < 0x11)))))();
}

uint64_t sub_26AA432CC@<X0>(int a1@<W0>, char a2@<W3>, uint64_t a3@<X5>, char a4@<W6>, uint64_t a5@<X7>, char a6@<W8>)
{
  v12 = v7 + 15;
  v13 = *(a3 + v7 + 15);
  v14 = (v13 ^ a4) - v9 + a6;
  v12 *= 31;
  *(a5 + (v12 + 1054 - ((((v12 + 1054) * v11) >> 16) >> 3) * v8)) = (v14 ^ v13) - (((v14 ^ v13) << (-25 * (v6 ^ 0x21) + 126)) & (v6 ^ 0x74)) - 88;
  *(a5 + (v12 - (((v12 * v11) >> 16) >> 3) * v8)) = v14 - (a2 & (2 * v14)) - 88;
  v15 = *(v10 + 8 * (v6 ^ ((4 * (a1 != 16)) | (8 * (a1 != 16)))));
  LODWORD(STACK[0x1F18]) = -1183458025;
  return v15();
}

void sub_26AA43390()
{
  LODWORD(STACK[0x1F28]) = 1;
  LODWORD(STACK[0x2260]) = STACK[0x2180];
  LODWORD(STACK[0x21A0]) = 1;
  LODWORD(STACK[0x1F40]) = 1;
  LODWORD(STACK[0x21B0]) = STACK[0x22B8];
  LODWORD(STACK[0x1FC8]) = 1;
  JUMPOUT(0x26AA4267CLL);
}

uint64_t sub_26AA433F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8)
{
  LODWORD(STACK[0x2260]) = 0;
  LODWORD(STACK[0x2038]) = a3 + 2134355708;
  STACK[0x22F0] = 32;
  LODWORD(STACK[0x1F40]) = 1;
  LODWORD(STACK[0x21A0]) = 1;
  LODWORD(STACK[0x1F28]) = STACK[0x2250];
  STACK[0x2180] = 1;
  LODWORD(STACK[0x21E0]) = 1;
  LODWORD(STACK[0x1F20]) = 1036106621;
  LODWORD(STACK[0x21C8]) = v9;
  LODWORD(STACK[0x2220]) = a5;
  STACK[0x1F38] = STACK[0x22A8] - 4;
  STACK[0x1F68] = v10;
  v15 = 31 * ((v8 - 18983) ^ 0xBFA0);
  v16 = *(a8 + (v15 + 1054 - 74 * ((((v15 + 1054) * v11) >> 16) >> 3)));
  v17 = *(a8 + (v15 - 74 * (((v15 * v11) >> 16) >> 3)));
  HIDWORD(v18) = v16 ^ 8;
  LODWORD(v18) = (v16 ^ 0xAAAAAAAA) << 24;
  v19 = STACK[0x1F38];
  STACK[0x2210] = STACK[0x1F38] + 266;
  v20 = *(v19 + 266 + ((v8 - 39) & 0x57 ^ 0x23u ^ (v18 >> 28))) ^ 0x81;
  STACK[0x22C0] = v17 ^ 0xA8;
  v21 = 1521390735 * a7 + 31 - 1521390735 * (v17 ^ 0xA8);
  LOBYTE(v17) = (v20 - ((2 * v20 + 82) & v12) - 47) ^ v17;
  *(a8 + (31 * v21 + 1054) % 0x4Au) = v17 - (v12 & (2 * v17)) - 88;
  v22 = *(a8 + 60);
  v23 = *(a8 + 42);
  HIDWORD(v18) = v23 ^ 0x28;
  LODWORD(v18) = ~v23 << 24;
  v24 = v17 ^ a7;
  LODWORD(v17) = *(STACK[0x1F10] + ((v18 >> 31) ^ 0xBLL)) ^ 0xFFFFFFB5;
  LODWORD(v17) = v17 - ((2 * v17 - 110) & 0xFFFFFFAA);
  LODWORD(STACK[0x22B8]) = v23;
  STACK[0x22B0] = (v17 + 30) ^ 0x55u;
  v25 = (v22 ^ (v17 + 30) ^ 0xFD) - ((v17 + 30) ^ 0x55) + v24;
  *(a8 + (31 * ((v23 ^ (v17 + 30)) ^ 0xE3) + 1054 - 74 * ((((31 * ((v23 ^ (v17 + 30)) ^ 0xE3u) + 1054) * v11) >> 16) >> 3))) = v25 - (v12 & (2 * v25)) - 88;
  v26 = *(v13 + 8 * ((v8 - 1294) ^ 0x999));
  STACK[0x1E48] = *(v14 + 8 * (v8 - 2364)) - 8;
  STACK[0x1B00] = *(v14 + 8 * ((v8 - 1294) ^ 0x497)) - 12;
  STACK[0x1AF8] = *(v14 + 8 * (v8 - 2501)) - 12;
  v27 = *(v14 + 8 * ((v8 - 1294) ^ 0x40A));
  STACK[0x1EA0] = *(v14 + 8 * (v8 - 2381));
  v28 = *(v14 + 8 * ((v8 - 1294) ^ 0x4F8));
  STACK[0x1E60] = v27 - 4;
  STACK[0x1E58] = v28 - 8;
  STACK[0x1E98] = *(v14 + 8 * (v8 - 2427)) - 4;
  STACK[0x1E90] = *(v14 + 8 * ((v8 - 1294) ^ 0x487));
  STACK[0x1AF0] = *(v14 + 8 * ((v8 - 1294) ^ 0x4A8)) - 8;
  STACK[0x1E40] = *(v14 + 8 * ((v8 - 1294) ^ 0x416)) - 8;
  STACK[0x1E68] = v19 + 1075;
  STACK[0x1F60] = v19 + 535;
  STACK[0x2218] = v19 + 4;
  STACK[0x1E38] = *(v14 + 8 * ((v8 - 1294) ^ 0x49D)) - 8;
  STACK[0x1E50] = *(v14 + 8 * ((v8 - 1294) ^ 0x485)) - 12;
  STACK[0x1F58] = v19 + 1869;
  return v26();
}

uint64_t sub_26AA43AB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = 31 * (29 - v12);
  v15 = *(a8 + (v14 - ((27466 * (29 - v12)) >> 16) * a3));
  v16 = 31 * ((((((((31 * (v8 ^ 0x125E)) ^ 0x999C3E64) * (v10 ^ v9)) ^ (29 - v12)) & 0x999C36B3 ^ 0x999C36B3) + (((((31 * (v8 ^ 0x125E)) ^ 0x999C3E64) * (v10 ^ v9)) ^ (29 - v12)) & 0x999C36B3)) * (v15 ^ v11)) ^ (((31 * (v8 ^ 0x125E)) ^ 0x999C3E64) * (v10 ^ v9)) ^ (29 - v12)) + 1054;
  *(a8 + v16 - v16 / 0x4A * a3) = *(a8 + (v14 + 1054 - (((3543 * (v14 + 1054)) >> 16) >> 2) * a3)) ^ v15 ^ v11;
  return (*(v13 + 8 * ((52 * ((((v15 ^ v11) + ((2 * v15) & 0xD2 ^ 0xAF) + 106) ^ v15) == 168)) ^ v8)))();
}

uint64_t sub_26AA43BDC(uint64_t a1, unsigned __int16 a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = v8 ^ 0x16CF;
  LODWORD(STACK[0x2200]) = *(a8 + (a2 - (((a2 * v13) >> 16) >> 3) * a3));
  v17 = v14 ^ v11 ^ v9;
  LODWORD(STACK[0x2238]) = v17;
  *(a8 + a1) = v17 - ((v17 << (((((v16 + 39) & 0x7D) - 94) ^ 0x1C) & 0xFD)) & v10) - 88;
  v18 = *(v15 + 8 * (v16 ^ (3835 * (v12 < 0x1C))));
  LODWORD(STACK[0x2220]) = 1639930558;
  return v18();
}

uint64_t sub_26AA43C78@<X0>(int a1@<W2>, uint64_t a2@<X7>, int a3@<W8>)
{
  LODWORD(STACK[0x22A0]) = a3;
  v10 = 31 * (27 - v6);
  v11 = *(a2 + (v10 + 1054 - (((3543 * (v10 + 1054)) >> 16) >> 2) * a1));
  v12 = *(a2 + (v10 - ((27466 * (27 - v6)) >> 16) * a1));
  v13 = v12 ^ v5;
  STACK[0x1F50] = v12;
  LOBYTE(v12) = v12 ^ v11;
  STACK[0x22A8] = v13;
  v14 = 31 * (27 - v6 + 1533066893 * v4 - 1533066893 * v13) + 1054;
  *(a2 + v14 - v14 / 0x4A * a1) = v12 ^ v5;
  v15 = 31 * (26 - v6);
  v16 = *(a2 + (v15 + 1054 - (((3543 * (v15 + 1054)) >> 16) >> 2) * a1));
  v17 = *(a2 + (v15 - ((27466 * (26 - v6)) >> 16) * a1));
  HIDWORD(v18) = v17 ^ 8;
  LODWORD(v18) = (v17 ^ 0xAAAAAAAA) << 24;
  LOBYTE(v15) = (*(v7 + ((v18 >> 28) ^ 0xFELL)) ^ 0xA8) - 37;
  v19 = (v15 ^ (16 * v15) ^ 0xEC) - ((2 * (v15 ^ (16 * v15) ^ 0xEC) + 82) & 0x42) - 54;
  *(a2 + (31 * (26 - v6 - (v17 ^ v5) + (v19 ^ 0xA1)) + 1054) % 0x4A) = v19 ^ 9 ^ v12 ^ v8 ^ ((v19 ^ v16 ^ 9) - 2 * ((v19 ^ v16 ^ 9) & 0x2C ^ (v19 ^ v16) & 4) - 88);
  return (*(v9 + 8 * (v3 ^ (241 * (v6 < 0x1A)))))(168);
}

uint64_t sub_26AA43E30(char a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x2298] = a3;
  v14 = 106 * (v8 ^ 0x859);
  v15 = 31 * (25 - v12);
  v16 = *(a8 + (v15 - 74 * (((25 - v12) * v10) >> 16)));
  HIDWORD(v17) = *(STACK[0x2218] + (v16 ^ (106 * (v8 ^ 0x59) - 122) ^ *(a8 + (v15 + 1054 - 74 * ((((v15 + 1054) * a5) >> 16) >> 2)))));
  LODWORD(v17) = (HIDWORD(v17) ^ ((((v14 ^ 0x7E2) + 54) ^ (8 * HIDWORD(v17))) - ((16 * HIDWORD(v17)) & 0x55555555) - 88) ^ 0x30) << 24;
  LOBYTE(v15) = (v17 >> 25) ^ 0xE8;
  *(a8 + (31 * ((v16 ^ v9) ^ (25 - v12)) + 1054) % 0x4Au) = v15;
  v18 = 31 * (28 - v12);
  v19 = *(a8 + (v18 + 930 - 74 * ((886 * (v18 + 930)) >> 16)));
  v20 = *(a8 + (v18 - 124) % 0x4Au);
  STACK[0x1F48] = v20;
  v21 = (v20 ^ v19) - (v15 ^ v9);
  LODWORD(STACK[0x2260]) = v21;
  *(a8 + (v18 + 930) % (((v18 + 930) & v11 ^ 0x4A) + ((v18 + 930) & v11))) = (v21 + (v20 ^ a1) - 86 - ((2 * (v21 + (v20 ^ a1))) & 0x54)) ^ 2;
  return (*(v13 + 8 * (v14 ^ (414 * (v12 < 0x18)))))();
}

uint64_t sub_26AA43FD4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  STACK[0x2268] = v19;
  STACK[0x22F0] = v16;
  STACK[0x2208] = v13;
  v20 = (v11 - ((2 * v11) & 0x55555555) + ((v10 + 1319) ^ (v14 - 527))) ^ v9;
  v21 = *(a8 + (31 * (23 - v15) - (((23 - v15) * v12) >> 16) * v8));
  v22 = v21 ^ *(a8 + (31 * (23 - v15) + 1054) % ((v10 - 1074) ^ 0x492u));
  v23 = 31 * (v20 + 23 - v15 - (v21 ^ a1)) + 1054;
  v24 = (~(2 * v22) | 0xFFFFFE83) + v22 + 1639930559;
  *(a8 + v23 - v23 / 0x4A * v8) = (v24 ^ 0xBE) - ((2 * (v24 ^ 0xBE)) & 0x50) - 88;
  LODWORD(STACK[0x2220]) = v24;
  v25 = v24 ^ (v20 + 1639930559 + ~(a7 & (2 * v20)));
  v26 = 31 * (22 - v15);
  v27 = 31 * (22 - v15 - (v25 & 0xFFFFFFDE) + (v25 | 0x21)) + 31;
  LOBYTE(v25) = v25 ^ *(a8 + (v26 + 1054 - ((((v26 + 1054) * v17) >> 16) >> 2) * v8)) ^ a1;
  STACK[0x21F0] = *(a8 + (v26 - ((27466 * (22 - v15)) >> 16) * v8));
  *(a8 + v27 - v27 / 0x4A * v8) = v25 - ((2 * v25) & 0x50) - 88;
  return (*(v18 + 8 * (v10 ^ ((2 * (v15 < 0x16)) | (16 * (v15 < 0x16))))))();
}

uint64_t sub_26AA44178@<X0>(int a1@<W3>, uint64_t a2@<X7>, int a3@<W8>)
{
  LODWORD(STACK[0x1F70]) = a3;
  v12 = 31 * (21 - v7);
  v13 = *(a2 + (v12 + 1054 - ((((v12 + 1054) * v9) >> 16) >> 2) * v3));
  v14 = *(a2 + v12 % ((((a1 - 3489) | 0x448) ^ 0x92) & 0xFBFFu));
  STACK[0x2010] = v14;
  v15 = v14 ^ v13;
  LODWORD(STACK[0x2280]) = v15;
  v16 = 31 * ((-1335020529 * v4) ^ (21 - v7) ^ ((v14 ^ v11) * (((-1335020529 * v4) & 0xB06D340F ^ 0xB06D340F) + ((-1335020529 * v4) & 0xB06D340F)))) + 1054;
  *(a2 + v16 - ((((v16 >> 1) * v5) >> 32) >> 5) * v3) = v15 - (v6 & (2 * v15)) - 88;
  v17 = (v8 + 961 - ((886 * (v8 + 961)) >> 16) * v3);
  v18 = v15 ^ v4 ^ *(a2 + v17) ^ v11;
  *(a2 + v17) = v18 - (v6 & (2 * v18)) - 88;
  return (*(v10 + 8 * (a1 ^ (78 * (v7 < 0x14)))))(168);
}

uint64_t sub_26AA442C4(int a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  LODWORD(STACK[0x2290]) = a7;
  LODWORD(STACK[0x21E8]) = v9;
  v14 = 31 * (19 - v11);
  v15 = *(a8 + (v14 + 1054 - ((((v14 + 1054) * v12) >> 16) >> 2) * v8));
  v16 = *(a8 + v14 % (a4 - 3559));
  v17 = ((a4 - 89) ^ v16) ^ 0x70;
  v18 = *(STACK[0x2210] + ((((v16 ^ v15) >> 4) | (16 * (v16 ^ v15))) ^ 0x34)) ^ 0x81;
  v19 = (v18 + 41);
  v20 = v13;
  STACK[0x2240] = v19;
  LODWORD(STACK[0x1E70]) = v19 - v17 - 1754727102 - ((2 * (v19 - v17)) & 0x2ED1FA84);
  v21 = 1556704671 * a2;
  v22 = (v18 + 41) ^ a2;
  v23 = 31 * ((1556704671 * v17) ^ v21 ^ (19 - v11)) + 1054;
  *(a8 + v23 - ((((v23 >> 1) * v10) >> 32) >> 5) * v8) = v18 + (~(2 * (v18 + 41)) | 0xAF) - 46;
  v24 = 31 * (18 - v11);
  v25 = v24 + 1054 - ((58040099 * (v24 + 1054)) >> 32) * v8;
  v26 = v22;
  v27 = *(a8 + (v24 - ((58040099 * v24) >> 32) * v8));
  v28 = (v27 ^ a1) + (v27 ^ *(a8 + v25));
  LODWORD(STACK[0x2228]) = v28 - ((2 * v28) & 0x2CE) + 21863;
  v29 = (v28 - v26);
  *(a8 + v25) = v28 - v26 + (~(2 * (v28 - v26)) | 0xAF) - 87;
  v30 = *(v20 + 8 * ((a4 - 3326) ^ (123 * (v11 > 0x11))));
  STACK[0x2230] = v29;
  return v30();
}

uint64_t sub_26AA44464(uint64_t a1, uint64_t a2, unsigned __int8 a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = v13 & 0x2A ^ v19 & 2;
  v23 = (v20 ^ 0xCF) + v14;
  v24 = v15 ^ v21;
  v25 = 48 - (a4 - 1209 + v17);
  v26 = *(a8 + (31 * v25 - ((886 * (31 * v25)) >> 16) * v9));
  v27 = *(a8 + (31 * (82 - (a4 - 1209 + v17)) - (((3543 * (31 * (82 - (a4 - 1209 + v17)))) >> 16) >> 2) * v9)) ^ a1;
  v28 = ((*(STACK[0x1F38] + (((v27 >> 4) & 0xFFFFFF0F | (16 * (v27 & 0xF))) ^ v18) + 266) ^ 0x81) + 41) ^ v26;
  v29 = v26 ^ a1;
  v30 = 31 * (v24 - (v26 ^ a1) + v25) + 1054;
  *(a8 + v30 - ((((v30 >> 1) * v10) >> 32) >> 5) * v9) = v28;
  v31 = v23 ^ (2 * v22);
  LODWORD(v26) = 31 * (16 - v17);
  v32 = *(a8 + (v26 - ((27466 * (16 - v17)) >> 16) * v9));
  LODWORD(v26) = *(a8 + (v26 + 1054 - (((3543 * (v26 + 1054)) >> 16) >> 2) * v9)) ^ v32;
  v33 = STACK[0x22A0];
  v34 = ((v28 ^ a1) ^ v24) + v26 + LODWORD(STACK[0x22A0]) - ((2 * (((v28 ^ a1) ^ v24) + v26)) & 0xC37EB57C);
  LODWORD(STACK[0x2220]) = v34;
  v35 = v32 ^ a1;
  v36 = (v34 ^ v33) - (v32 ^ a1);
  v37 = 31 * ((((v32 ^ a1) + 16 - v17 + 298341980 - ((2 * ((v32 ^ a1) + 16 - v17)) & 0xB8)) ^ 0x11C8565C) - (v32 ^ a1)) + 1054;
  *(a8 + v37 - ((((v37 >> 1) * v10) >> 32) >> 5) * v9) = v36 + (v16 | ~(2 * v36)) - 87;
  v38 = STACK[0x22C0] - 0x50A4334AEE37A9A4 - ((2 * STACK[0x22C0]) & 0xB8);
  v39 = v8 + 0x1EDD71FE9D269A64 - ((2 * v8) & 0xC8);
  v40 = STACK[0x21F0];
  v41 = v13 + v31;
  v42 = LODWORD(STACK[0x2200]) ^ 0xA8u;
  v43 = STACK[0x2268];
  v44 = STACK[0x22A8];
  STACK[0x22C8] ^= 0xB60925D5926B8649 ^ STACK[0x22C0] ^ ((STACK[0x22B0] << 8) - 0x49F6DA2A6D9479B7 - ((STACK[0x22B0] << 9) & 0x10C00)) ^ (v42 << 24) ^ (((a3 ^ 0xA8u) << 48) | (STACK[0x2298] << 40) | (v13 << 16) & 0xFFFFFF00FFFFFFFFLL | (STACK[0x2268] << 56) | (STACK[0x22A8] << 32));
  v45 = v11 - ((2 * v11) & 0x50);
  v46 = STACK[0x2278] ^ 0xAF5BCCB511C8565CLL ^ v8 ^ (((v40 ^ 0xA8) << 8) - 0x50A4334AEE37A9A4 - ((v40 << 9) & 0xAC00)) ^ (v11 << 40);
  v47 = v12;
  v48 = STACK[0x22E0] ^ 0x1EDD71FE9D269A64 ^ v39;
  v49 = STACK[0x2290];
  STACK[0x2278] = v46 ^ ((a5 << 16) & 0xFF0000FFFFFFLL | (v47 << 32) & 0xFFFFFFFFFFFFLL | ((LODWORD(STACK[0x2290]) ^ 0xA8) << 24) | (v35 << 56) | (v29 << 48));
  STACK[0x22E0] = v48 ^ (a5 << 16) ^ (v47 << 32) ^ (((v49 ^ 0xA8u) << 24) | (((v45 - 88) ^ 0xA8u) << 40) | ((v40 ^ 0xA8) << 8) | (v29 << 48)) ^ (v35 << 56);
  LODWORD(STACK[0x1F30]) = v26 ^ 0x31;
  v50 = ((a3 ^ 0xA8u) << 48) | (v43 << 56) | (((v41 - 87) ^ 0xA8u) << 16) & 0xFFFFFFFF00FFFFFFLL | ((LODWORD(STACK[0x22B8]) ^ 0xA8u) << 8) & 0xFFFFFFFF00FFFFFFLL | (v42 << 24) | (STACK[0x22F0] << 40);
  v51 = *(a7 + 8 * (a4 ^ (3109 * (v17 == 0))));
  STACK[0x2270] ^= 0xAF5BCCB511C8565CLL ^ v38 ^ (v44 << 32) ^ v50;
  LODWORD(STACK[0x2298]) = 1;
  STACK[0x22F0] = 1;
  LODWORD(STACK[0x2290]) = 1;
  LODWORD(STACK[0x21F8]) = 1;
  LODWORD(STACK[0x22A0]) = 1;
  return v51();
}

void sub_26AA44828()
{
  LODWORD(STACK[0x2038]) = 1060547323;
  LODWORD(STACK[0x22A0]) = 1;
  LODWORD(STACK[0x21F8]) = 1;
  LODWORD(STACK[0x2290]) = 1;
  STACK[0x22F0] = 1;
  LODWORD(STACK[0x2298]) = 1;
  JUMPOUT(0x26AA43794);
}

uint64_t sub_26AA44870()
{
  LODWORD(STACK[0x22A0]) = 0;
  v5 = v3 - 1209;
  LODWORD(STACK[0x2220]) = ~((v5 - 1015106211) & (2 * (v0 - STACK[0x22A8]))) + v0 - STACK[0x22A8] + 1639930559;
  LODWORD(STACK[0x2298]) = v2;
  LODWORD(STACK[0x21E8]) = v1;
  v6 = (((STACK[0x22C8] << 23) ^ 0xEAC935C324800000) - 0x49F6DA2A6D9479B7 - ((((STACK[0x22C8] << 23) ^ 0xEAC935C324800000) << (((v5 - 31) ^ 0x36u) - 53)) & 0x6C124BAB24000000)) ^ STACK[0x22C8];
  v7 = STACK[0x22E0];
  v8 = ((v5 + 1505) | 0x41u) ^ (STACK[0x22E0] >> 26) ^ (v6 >> 17) ^ 0x7B75C79E6;
  v9 = v6 ^ STACK[0x22E0] ^ (v8 + 0x1EDD71FE9D269A64 - ((2 * v8) & 0xE3FD3A4D34C8));
  v10 = (((v7 << 23) ^ 0xFF4E934D32000000) + 0x1EDD71FE9D269A64 - ((2 * ((v7 << 23) ^ 0xFF4E934D32000000)) & 0x3DBAE3FD3A000000)) ^ v7;
  v11 = v10 ^ (v10 >> 17) ^ v9 ^ (v9 >> 26);
  v12 = v11 ^ (v11 >> 26) ^ (((v9 ^ (v9 << 23)) >> 17) & 0x7923A6714B21 ^ (v9 ^ (v9 << 23)) & 0x73EE7923A6714B21 | ((v9 ^ (v9 << 23)) >> 17) & 0x6DC598EB4DELL ^ (v9 ^ (v9 << 23)) & 0x8C1186DC598EB4DELL);
  if ((v12 + 0x5CBE354623E329D4) | v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v7 == 0x1EDD71FE9D269A64;
  }

  v14 = !v13;
  return (*(v4 + 8 * ((v14 | (2 * v14)) ^ (v5 + 4594))))();
}

void sub_26AA44B94(unint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x1F70]) = a3 - ((v3 + 12) & (2 * a3)) - 95;
  LODWORD(STACK[0x2038]) = 1060547338;
  LODWORD(STACK[0x1E30]) = -125669747;
  STACK[0x22E0] = a1;
  STACK[0x2198] = 1;
  LODWORD(STACK[0x2188]) = 1;
  LODWORD(STACK[0x21C0]) = 1;
  LODWORD(STACK[0x21D8]) = 1;
  STACK[0x2128] = 1;
  JUMPOUT(0x26AA424A8);
}

uint64_t sub_26AA44C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0x20E8]) = a5;
  LODWORD(STACK[0x1E18]) = v5;
  STACK[0x2208] = v7;
  STACK[0x1DD0] = 0;
  LODWORD(STACK[0x1EB8]) = 1105473985;
  LODWORD(STACK[0x2248]) = v6 ^ 0x679;
  STACK[0x2100] = (v6 ^ 0x679u) + v8 - 3755;
  LODWORD(STACK[0x2148]) = -1885891619;
  LODWORD(STACK[0x1E88]) = -2112445640;
  LODWORD(STACK[0x2250]) = -258828535;
  LODWORD(STACK[0x2108]) = -601547751;
  LODWORD(STACK[0x2270]) = -188120151;
  LODWORD(STACK[0x1DE0]) = -764667650;
  LODWORD(STACK[0x1FD0]) = -501868823;
  LODWORD(STACK[0x2028]) = 574944896;
  LODWORD(STACK[0x1ED8]) = -119231373;
  LODWORD(STACK[0x2110]) = 1772544815;
  LODWORD(STACK[0x1FA8]) = 483109943;
  LODWORD(STACK[0x20F0]) = -460519344;
  LODWORD(STACK[0x2040]) = -441562655;
  STACK[0x1FD8] = 1214477628;
  STACK[0x20D0] = 1878091468;
  LODWORD(STACK[0x1EF8]) = -551185617;
  LODWORD(STACK[0x2048]) = -1022144929;
  LODWORD(STACK[0x1DF8]) = -1514060163;
  LODWORD(STACK[0x1E00]) = 158048366;
  LODWORD(STACK[0x2080]) = -291770319;
  LODWORD(STACK[0x1EE0]) = 1084004109;
  LODWORD(STACK[0x1FB8]) = -1313921777;
  LODWORD(STACK[0x1E10]) = 962904774;
  LODWORD(STACK[0x2098]) = 1420639829;
  LODWORD(STACK[0x1EB0]) = 1965893888;
  LODWORD(STACK[0x1FF8]) = 683342802;
  LODWORD(STACK[0x1E08]) = -595498262;
  LODWORD(STACK[0x2258]) = -576436389;
  STACK[0x20B8] = 472640244;
  LODWORD(STACK[0x1F00]) = -363164617;
  LODWORD(STACK[0x2140]) = 899971899;
  LODWORD(STACK[0x2130]) = 601716512;
  LODWORD(STACK[0x2278]) = -1965131267;
  LODWORD(STACK[0x2020]) = -1772541560;
  LODWORD(STACK[0x1EC0]) = 1117840867;
  LODWORD(STACK[0x1F98]) = 2087521429;
  LODWORD(STACK[0x2150]) = 133206793;
  LODWORD(STACK[0x1EC8]) = 1188863815;
  LODWORD(STACK[0x1DC0]) = 1571229698;
  LODWORD(STACK[0x2068]) = 1667213636;
  STACK[0x2070] = 1704195554;
  LODWORD(STACK[0x20C8]) = -675633626;
  LODWORD(STACK[0x2158]) = 1758270708;
  LODWORD(STACK[0x2118]) = -1365991516;
  LODWORD(STACK[0x1ED0]) = 1673512504;
  LODWORD(STACK[0x2138]) = 1870958225;
  LODWORD(STACK[0x1FB0]) = -1467760742;
  LODWORD(STACK[0x22C0]) = 506420415;
  LODWORD(STACK[0x1E80]) = 7948587;
  LODWORD(STACK[0x2008]) = 1021393168;
  LODWORD(STACK[0x1E20]) = -186325433;
  LODWORD(STACK[0x2170]) = 193860519;
  LODWORD(STACK[0x1EE8]) = -168948682;
  STACK[0x2050] = 4036743314;
  LODWORD(STACK[0x20C0]) = 556303603;
  LODWORD(STACK[0x1EA8]) = -100999633;
  LODWORD(STACK[0x2060]) = 1220515688;
  LODWORD(STACK[0x1FA0]) = -1310806601;
  LODWORD(STACK[0x2168]) = -1337937669;
  LODWORD(STACK[0x2160]) = 107430493;
  LODWORD(STACK[0x1DC8]) = 438123237;
  LODWORD(STACK[0x1E78]) = 229287319;
  LODWORD(STACK[0x1EF0]) = -826606697;
  LODWORD(STACK[0x1DE8]) = 839174291;
  LODWORD(STACK[0x2078]) = 705951035;
  LODWORD(STACK[0x20B0]) = -2058077572;
  STACK[0x2018] = 1;
  LODWORD(STACK[0x2090]) = -859403516;
  LODWORD(STACK[0x2030]) = 839591361;
  LODWORD(STACK[0x1DF0]) = 801280756;
  LODWORD(STACK[0x2088]) = -1023646471;
  STACK[0x2058] = 143881778;
  LODWORD(STACK[0x22B0]) = 1;
  LODWORD(STACK[0x20D8]) = 1;
  LODWORD(STACK[0x22B8]) = 1;
  STACK[0x20A0] = 3927201240;
  LODWORD(STACK[0x2010]) = 1717056035;
  LODWORD(STACK[0x22A8]) = 69986630;
  v10 = *(v9 + 8 * SLODWORD(STACK[0x2248]));
  LODWORD(STACK[0x20F8]) = 446093184;
  LODWORD(STACK[0x2128]) = -71437683;
  LODWORD(STACK[0x2268]) = 394111707;
  STACK[0x2120] = 121333495;
  LODWORD(STACK[0x20E0]) = 1705141549;
  LODWORD(STACK[0x22E0]) = -1378693834;
  LODWORD(STACK[0x2000]) = -751125707;
  LODWORD(STACK[0x20A8]) = -2050124580;
  return v10();
}

uint64_t sub_26AA45048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W6>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, _BYTE *a46)
{
  v49 = STACK[0x2278];
  v50 = (((STACK[0x2270] << 23) ^ 0x5A88E42B2E000000) - 0x50A4334AEE37A9A4 + (~(2 * ((STACK[0x2270] << 23) ^ 0x5A88E42B2E000000)) | 0xA1486695DCFFFFFFLL) + 1) ^ STACK[0x2270];
  v51 = (((v49 << 23) ^ 0x5A88E42B2E000000) - 0x50A4334AEE37A9A4 - ((2 * ((v49 << 23) ^ 0x5A88E42B2E000000)) & 0x5EB7996A23000000)) ^ v49;
  v52 = v50 ^ (STACK[0x2278] >> 26) ^ (v50 >> 17) ^ 0x2BD6F32D44;
  v53 = (v52 - 0x50A4334AEE37A9A4 - ((2 * v52) & 0x5EB7996A2390ACB8)) ^ STACK[0x2278];
  v54 = v51 ^ (v51 >> 17) ^ v53 ^ (v53 >> 26);
  v55 = v54 ^ v53 ^ (v53 << 23) ^ (((v54 >> 26) ^ ((v53 ^ (v53 << 23)) >> 17)) - 0x49F6DA2A6D9479B7 - ((2 * ((v54 >> 26) ^ ((v53 ^ (v53 << 23)) >> 17))) & 0x4BAB24D70C92));
  v56 = v55 ^ 0x926B8649;
  v57 = a2 ^ (a2 << 23) ^ ((a2 ^ (a2 << 23)) >> 17) ^ ((v55 ^ 0xB60925D5926B8649) >> 26);
  v58 = ((v55 ^ 0xB60925D5926B8649) << 24) & 0x3DBAE3FD3A000000;
  v59 = a1 + ((v55 ^ 0xB60925D5926B8649) << 23);
  v55 ^= 0xA8D4542B0F4D1C2DLL;
  v60 = (v57 + a1 - ((2 * v57) & 0x3DBAE3FD3A4D34C8)) ^ v55;
  v61 = (v59 - v58) ^ v55 ^ (((v59 - v58) ^ v55) >> 17) ^ v60 ^ (v60 >> 26);
  v62 = (v61 ^ 0x11C8565C ^ v60 ^ (v60 << 23) ^ ((v60 ^ (v60 << 23)) >> 17) ^ ((v61 >> 26) + 298341980 - ((v61 >> 25) & 0x2390ACB8))) + v61;
  v63 = v62 + 158183487 * (v56 - a3);
  v64 = -v63 & 7;
  if ((v63 & 7) != 0)
  {
    v65 = -1;
  }

  else
  {
    v65 = 0;
  }

  v66 = (v65 << (-v63 & 7)) - ((2 * (v65 << (-v63 & 7))) & 0x50) - 88;
  LODWORD(STACK[0x22C0]) = v66;
  v67 = v63 & 7;
  v68 = a2 + v46 + v46 + (v48 ^ 0x64) + (~(2 * (a2 + v46 + v46 + (v48 ^ 0x64))) | 0xAF);
  if ((v63 & 7) != 0)
  {
    v69 = v66 ^ 0x57;
  }

  else
  {
    v69 = 0;
  }

  LODWORD(STACK[0x22C8]) = v69;
  v70 = (((v56 + v54) & 0x80) != 0) | (2 * ((v56 + v54) & 0x7F)) & 0x8D;
  STACK[0x2208] = v47;
  v71 = (v49 ^ 0x5C) + 2 * v53 + v54 + (((((v56 + v54) & 0x80) != 0) | (2 * ((v56 + v54) & 0x7F))) ^ ((v70 ^ 0x8D) + v70) ^ 0xD0 ^ *(v47 + ((((v56 + v54) >> 7) & 1 | (2 * ((v56 + v54) & 0x7F))) ^ 0xE7))) - 55;
  v72 = v61 + v60;
  v73 = v54 - a2 + (v61 + v60);
  LODWORD(STACK[0x22B8]) = v73;
  v74 = (v60 + v56);
  v75 = v71;
  v76 = (((v68 - 87) ^ 0xA8) + a3 + a2 - ((2 * (((v68 - 87) ^ 0xA8) + a3 + a2)) & 0x50) - 88) ^ 0xA8;
  v77 = v76 ^ v74 ^ v71;
  v78 = v73 | (v77 + 926693100);
  v79 = 16843009 * (v77 & 0xFE) + 1829268185 - ((33686018 * (v77 & 0xFE)) & 0xDA10D5B0);
  v80 = *(STACK[0x1F60] + (((v73 | (v77 - 20)) + 124) ^ 0x26));
  LODWORD(STACK[0x22E0]) = v78;
  v81 = ((a2 & 0x77 ^ 0x77) + (a2 & 0x77)) ^ HIBYTE(v78) ^ BYTE2(v78) ^ BYTE1(v78) ^ (2 * ((v80 >> 2) ^ 0x2A)) & 0x56 ^ ((v80 >> 2) ^ 0x2A | (v80 << 6));
  v82 = v74 - v76;
  LOBYTE(v74) = *(STACK[0x2210] + (((v72 >> 4) | (16 * (v72 & 0xFu))) ^ 0x34)) ^ 0x81;
  v83 = v82 + v75 - ((2 * (v82 + v75)) & 0xC1C8859E) - 521911601;
  v84 = v83 & 0xFE ^ 0xCE;
  LODWORD(STACK[0x22B0]) = v83 & 0xFFFFFF01 ^ 0xE0E44201;
  v85 = v54 ^ a2 ^ (4 * (v54 ^ a2)) ^ (v74 + 41);
  v86 = v62 + 1459987785 * (a3 - v56);
  v87 = -v86 & 7;
  v88 = v85 | ((v83 ^ 0xE0E442CF) + 926693100);
  v89 = HIBYTE(v88) ^ 0x76 ^ ((v85 | ((v83 ^ 0xCF) - 20)) ^ ((v85 | ((v83 ^ 0x42CF) + 14060)) >> 8) ^ BYTE2(v88));
  LODWORD(STACK[0x1DA8]) = 16843009 * v81;
  STACK[0x2238] = v64;
  v90 = 1223699411 * (v64 - v87) - 1482020038;
  LODWORD(STACK[0x1CA8]) = (16843009 * v81) ^ 0x40404040;
  v92 = v86 & 7;
  LODWORD(STACK[0x21B0]) = v87 + 1612523831 * (v63 - v86);
  v93 = (v79 >> 1) ^ 0x3684356C;
  LODWORD(STACK[0x22F0]) = v79 >> 1;
  LODWORD(STACK[0x1CB0]) = v93;
  v94 = 16843009 * v84;
  v95 = v79 ^ (-1658937873 * v84) ^ (16843009 * v84) ^ (2122362607 * (v79 ^ 0x6D086AD9)) ^ ((16843009 * v84) >> 1) ^ (v93 + 1829268185 - 2 * (v93 & 0x6D086ADB ^ (v79 >> 1) & 2)) ^ 0x50698828;
  v96 = (v92 - v67 - ((2 * (v92 - v67) + 628) & 0x2D0) + 1685073058) ^ (v67 | 0xC3DA0168) ^ (v92 >> (((HIBYTE(v88) ^ 7) - (HIBYTE(v88) & 0xF8)) | HIBYTE(v88) & 7u));
  STACK[0x2190] = v67;
  LODWORD(STACK[0x1EC8]) = v67 | 0xC3DA0168;
  LODWORD(STACK[0x1CAC]) = 16843009 * v89;
  LODWORD(STACK[0x1E20]) = (16843009 * v89) ^ 0x7D58A613;
  v91 = 1179645553 * (((16843009 * v81) ^ 0xBFBFBFBF) + ((16843009 * v89) ^ 0x76767676)) + 1583818185 * (((16843009 * v81) ^ 0x40404040) + ((16843009 * v89) ^ 0x89898989));
  v97 = (67372036 * v81) ^ (67372036 * v89) ^ (16843009 * v89) ^ 0x7D58A613 ^ 0xD8D8D8D8 ^ (v91 + 5207239 - ((2 * (v91 - 182410142)) & 0x165DA0CA));
  v98 = STACK[0x22B8];
  LODWORD(STACK[0x20C8]) = v79;
  LODWORD(STACK[0x1CA4]) = v79 ^ 0x6D086AD9;
  LODWORD(STACK[0x1EB8]) = v85 ^ v98 ^ (v92 | ((v85 ^ v98) << 6));
  LODWORD(STACK[0x1DF0]) = v83 ^ v77 ^ ((v94 ^ ((v83 ^ v77) >> 6) ^ 0x383910B) - ((2 * (v94 ^ ((v83 ^ v77) >> 6) ^ 0x383910B)) & 0x81025E56) + 1082208043);
  v99 = (v67 | 0xC3DA0168) ^ v92 ^ ((v92 ^ v67) >> 2) ^ v90 ^ ((v96 ^ v92) - ((2 * v96) & 0x87B402D0) - 1009122968);
  v100 = *STACK[0x22D0];
  v101 = *STACK[0x22E8];
  STACK[0x22C8] = v100;
  v102 = *(v101 + (v100 & 0x5167F4C8));
  LODWORD(STACK[0x21C0]) = v99 ^ v88 ^ (32 * v99) ^ 0x23C69B7E;
  v103 = -812407749 * ((-812407749 * ((v102 ^ a46) & 0x7FFFFFFF)) ^ ((-812407749 * ((v102 ^ a46) & 0x7FFFFFFF)) >> 16));
  *a46 = *(STACK[0x1E48] + (v103 >> 24)) ^ *(STACK[0x1E38] + (v103 >> 24) + 1) ^ *(STACK[0x1E40] + (v103 >> 24) + 1) ^ (59 * ((59 * (v102 ^ a46)) ^ ((-812407749 * ((v102 ^ a46) & 0x7FFFFFFF)) >> 16))) ^ (69 * ((-812407749 * ((-812407749 * ((v102 ^ a46) & 0x7FFFFFFF)) ^ ((-812407749 * ((v102 ^ a46) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ 0xEC;
  LODWORD(v103) = LODWORD(STACK[0x1DA8]) ^ 0x3CC525A1;
  LODWORD(STACK[0x1DF8]) = v103;
  LODWORD(STACK[0x22B8]) = (v97 + 2089117153 - ((2 * v97) & 0xF90ACBC2)) ^ v103 ^ (v95 - (v79 ^ 0x6D086AD9) + v94);
  v104 = -812407749 * (((&STACK[0x2350] + 4777) ^ *(v101 + (v100 & 0x5167F4C8))) & 0x7FFFFFFF);
  v105 = -812407749 * (v104 ^ HIWORD(v104));
  LOBYTE(STACK[0x35F9]) = *((v105 >> 24) + STACK[0x1E90] + 3) ^ *(STACK[0x1E98] + (v105 >> 24)) ^ *(STACK[0x1EA0] + (v105 >> 24)) ^ ((*(STACK[0x1F38] + 2131) ^ 0xA8) + 119 * (43 * a4 - 10) + 54) ^ v105 ^ (-23 * BYTE3(v105));
  return (*(STACK[0x22F8] + 8 * a4))();
}

uint64_t sub_26AA459AC(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, _DWORD *a49)
{
  LODWORD(STACK[0x1FF8]) = 0;
  LODWORD(STACK[0x22C0]) = a3 - a2;
  LODWORD(STACK[0x1F18]) = v49 - a4;
  LODWORD(STACK[0x2278]) = a8 - a7;
  LODWORD(STACK[0x2288]) = a5 - v53;
  LODWORD(STACK[0x2100]) = v52 ^ v50 ^ LODWORD(STACK[0x22E0]) ^ (LODWORD(STACK[0x22B8]) >> 3);
  v55 = *(v51 + (STACK[0x22C8] & 0xD8A680B0));
  v56 = (-812407749 * ((v55 ^ STACK[0x1888]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v55 ^ STACK[0x1888]) & 0x7FFFFFFF)) >> 16);
  v57 = STACK[0x2140];
  v58 = STACK[0x2138];
  v59 = STACK[0x2130];
  LODWORD(STACK[0x22A0]) = *(STACK[0x2140] + 4 * ((-812407749 * v56) >> 24)) ^ *STACK[0x1888] ^ *(STACK[0x2138] + 4 * ((-812407749 * v56) >> 24)) ^ *(STACK[0x2130] + 4 * (((-812407749 * v56) >> 24) + 1)) ^ (-1539637248 * v56) ^ (-812407749 * v56) ^ (-2097892159 * ((-812407749 * v56) >> 24));
  v60 = (-812407749 * ((v55 ^ STACK[0x1720]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v55 ^ STACK[0x1720]) & 0x7FFFFFFF)) >> 16);
  v61 = -812407749 * v60;
  v62 = (-812407749 * v60) >> 24;
  v63 = -1539637248 * v60;
  v64 = *(&off_279CA5FD0 + v54 - 2725) - 12;
  v65 = *(&off_279CA5FD0 + v54 - 2651) - 8;
  v66 = *(&off_279CA5FD0 + v54 - 2592) - 8;
  v67 = v63 ^ *STACK[0x1720] ^ v61 ^ (438785035 * v62) ^ *&v64[4 * v62] ^ *&v65[4 * v62] ^ *&v66[4 * v62];
  v68 = (-812407749 * ((v55 ^ STACK[0x18C8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v55 ^ STACK[0x18C8]) & 0x7FFFFFFF)) >> 16);
  v69 = STACK[0x16B8];
  v70 = *STACK[0x16B8];
  LODWORD(STACK[0x2298]) = (-812407749 * v68) ^ (-1539637248 * v68) ^ *STACK[0x18C8] ^ (438785035 * ((-812407749 * v68) >> 24)) ^ *&v64[4 * ((-812407749 * v68) >> 24)] ^ *&v65[4 * ((-812407749 * v68) >> 24)] ^ *&v66[4 * ((-812407749 * v68) >> 24)];
  v71 = (-812407749 * ((v55 ^ v69) & 0x7FFFFFFF)) ^ ((-812407749 * ((v55 ^ v69) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x22A8]) = (-812407749 * v71) ^ (-1539637248 * v71) ^ v70 ^ (438785035 * ((-812407749 * v71) >> 24)) ^ *&v64[4 * ((-812407749 * v71) >> 24)] ^ *&v65[4 * ((-812407749 * v71) >> 24)] ^ *&v66[4 * ((-812407749 * v71) >> 24)];
  v72 = *(*STACK[0x22E8] + (*STACK[0x22D0] & 0xD8A680B0));
  v73 = (-812407749 * ((v72 ^ STACK[0x16F0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x16F0]) & 0x7FFFFFFF)) >> 16);
  v74 = *(&off_279CA5FD0 + (v54 ^ 0xAE9));
  v75 = *(&off_279CA5FD0 + (v54 & 0xE6AE55CA)) - 4;
  v76 = *STACK[0x16F0];
  v77 = (-812407749 * v73) >> 24;
  v78 = *&v75[4 * v77];
  STACK[0x22B8] = v75;
  v79 = v78 ^ v76;
  v80 = *(v74 + 4 * (v77 + 2));
  v81 = v74;
  STACK[0x22B0] = v74;
  v82 = *(&off_279CA5FD0 + (v54 ^ 0xAC6)) - 4;
  v83 = v79 ^ v80 ^ *(v82 + 4 * v77) ^ (-1539637248 * v73) ^ (-812407749 * v73) ^ (-1633439771 * v77);
  v84 = (-812407749 * ((v72 ^ STACK[0x1658]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1658]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2270]) = (-812407749 * v84) ^ (-1539637248 * v84) ^ *STACK[0x1658] ^ (438785035 * ((-812407749 * v84) >> 24)) ^ *&v64[4 * ((-812407749 * v84) >> 24)] ^ *&v65[4 * ((-812407749 * v84) >> 24)] ^ *&v66[4 * ((-812407749 * v84) >> 24)];
  LODWORD(STACK[0x22E0]) = -737505385 * v83 - ((672472878 * v83 + 589724510) & 0x3861DED2) - 305910504;
  v85 = (-812407749 * ((v72 ^ STACK[0x1808]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1808]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2290]) = (-812407749 * v85) ^ (-1539637248 * v85) ^ *STACK[0x1808] ^ (438785035 * ((-812407749 * v85) >> 24)) ^ *&v64[4 * ((-812407749 * v85) >> 24)] ^ *&v65[4 * ((-812407749 * v85) >> 24)] ^ *&v66[4 * ((-812407749 * v85) >> 24)];
  v86 = (-812407749 * ((v72 ^ STACK[0x17F0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x17F0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2280]) = (-812407749 * v86) ^ (-1539637248 * v86) ^ *STACK[0x17F0] ^ (438785035 * ((-812407749 * v86) >> 24)) ^ *&v64[4 * ((-812407749 * v86) >> 24)] ^ *&v65[4 * ((-812407749 * v86) >> 24)] ^ *&v66[4 * ((-812407749 * v86) >> 24)];
  LODWORD(STACK[0x22C8]) = -737505385 * v67 - ((672472878 * v67 + 589724510) & 0x67B3E9A8) - 2056441213;
  v87 = (-812407749 * ((v72 ^ STACK[0x17D8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x17D8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2250]) = *&v64[4 * ((-812407749 * v87) >> 24)] ^ *STACK[0x17D8] ^ *&v65[4 * ((-812407749 * v87) >> 24)] ^ *&v66[4 * ((-812407749 * v87) >> 24)] ^ (-1539637248 * v87) ^ (-812407749 * v87) ^ (438785035 * ((-812407749 * v87) >> 24));
  v88 = (-812407749 * ((v72 ^ v69) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ v69) & 0x7FFFFFFF)) >> 16);
  v89 = -812407749 * v88;
  v90 = (-812407749 * v88) >> 24;
  v91 = *&v64[4 * v90] ^ v70 ^ *&v65[4 * v90] ^ (-1539637248 * v88);
  v92 = STACK[0x1210] + 687;
  v93 = *v92;
  LODWORD(v92) = (-812407749 * ((v72 ^ v92) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ v92) & 0x7FFFFFFF)) >> 16);
  v94 = (-1539637248 * v92) ^ v93;
  LODWORD(v92) = -812407749 * v92;
  LODWORD(STACK[0x2260]) = v94 ^ v92 ^ (438785035 * BYTE3(v92)) ^ *&v64[4 * BYTE3(v92)] ^ *&v65[4 * BYTE3(v92)] ^ *&v66[4 * BYTE3(v92)];
  LODWORD(v92) = (-812407749 * ((v72 ^ STACK[0x1678]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1678]) & 0x7FFFFFFF)) >> 16);
  v95 = (-1539637248 * v92) ^ *STACK[0x1678];
  LODWORD(v92) = -812407749 * v92;
  LODWORD(v92) = v95 ^ v92 ^ (438785035 * BYTE3(v92)) ^ *&v64[4 * BYTE3(v92)] ^ *&v65[4 * BYTE3(v92)] ^ *&v66[4 * BYTE3(v92)];
  v96 = (-812407749 * ((v72 ^ STACK[0x1898]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1898]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2268]) = *&v64[4 * ((-812407749 * v96) >> 24)] ^ *STACK[0x1898] ^ *&v65[4 * ((-812407749 * v96) >> 24)] ^ *&v66[4 * ((-812407749 * v96) >> 24)] ^ (-1539637248 * v96) ^ (-812407749 * v96) ^ (438785035 * ((-812407749 * v96) >> 24));
  v97 = (-812407749 * ((v72 ^ STACK[0x1738]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1738]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2258]) = *&v64[4 * ((-812407749 * v97) >> 24)] ^ *STACK[0x1738] ^ *&v65[4 * ((-812407749 * v97) >> 24)] ^ *&v66[4 * ((-812407749 * v97) >> 24)] ^ (-1539637248 * v97) ^ (-812407749 * v97) ^ (438785035 * ((-812407749 * v97) >> 24));
  LODWORD(STACK[0x21F0]) = -737505385 * v92 - ((-1557759138 - 1475010770 * v92) & 0x811301DC);
  LODWORD(v92) = (-812407749 * ((v72 ^ STACK[0x1810]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1810]) & 0x7FFFFFFF)) >> 16);
  v98 = (-1539637248 * v92) ^ *STACK[0x1810];
  LODWORD(v92) = -812407749 * v92;
  LODWORD(v92) = v98 ^ v92 ^ *&v64[4 * BYTE3(v92)] ^ *&v65[4 * BYTE3(v92)] ^ (438785035 * BYTE3(v92)) ^ *&v66[4 * BYTE3(v92)];
  v99 = (-812407749 * ((v72 ^ STACK[0x1908]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1908]) & 0x7FFFFFFF)) >> 16);
  v100 = (-1539637248 * v99) ^ *STACK[0x1908];
  v99 *= -812407749;
  v101 = *&v66[4 * v90];
  LODWORD(STACK[0x2228]) = v100 ^ v99 ^ (438785035 * HIBYTE(v99)) ^ *&v64[4 * HIBYTE(v99)] ^ *&v65[4 * HIBYTE(v99)] ^ *&v66[4 * HIBYTE(v99)];
  v102 = v91 ^ v101 ^ v89 ^ (438785035 * v90);
  v103 = (-812407749 * ((v72 ^ STACK[0x16E0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x16E0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2220]) = *&v64[4 * ((-812407749 * v103) >> 24)] ^ *STACK[0x16E0] ^ *&v65[4 * ((-812407749 * v103) >> 24)] ^ (-1539637248 * v103) ^ (-812407749 * v103) ^ *&v66[4 * ((-812407749 * v103) >> 24)] ^ (438785035 * ((-812407749 * v103) >> 24));
  LODWORD(STACK[0x2200]) = ((v102 | ~v102) & 0xD1933DAF) - 737505385 * v92;
  LODWORD(v64) = (-812407749 * ((v72 ^ STACK[0x16A8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x16A8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v66) = (-812407749 * v64) >> 24;
  v104 = *(&off_279CA5FD0 + (v54 ^ 0xA8C)) - 8;
  v105 = *(&off_279CA5FD0 + (v54 & 0x268D57E)) - 8;
  v106 = *(&off_279CA5FD0 + v54 - 2643) - 8;
  LODWORD(v64) = (-812407749 * v64) ^ (-1539637248 * v64) ^ *STACK[0x16A8] ^ (-455034029 * v66) ^ *&v104[4 * v66] ^ *&v105[4 * (v66 + 3)] ^ *&v106[4 * (v66 + 2)];
  LODWORD(STACK[0x21D8]) = -737505385 * v64 - ((-1557759138 - 1475010770 * v64) & 0xF104DD18);
  LODWORD(v64) = (-812407749 * ((v72 ^ STACK[0x1630]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1630]) & 0x7FFFFFFF)) >> 16);
  v107 = *(&off_279CA5FD0 + v54 - 2756) - 12;
  v108 = *(&off_279CA5FD0 + (v54 ^ 0xAE5)) - 4;
  v109 = *(&off_279CA5FD0 + (v54 ^ 0xA7A)) - 8;
  LODWORD(STACK[0x21F8]) = (-812407749 * v64) ^ (-1539637248 * v64) ^ *STACK[0x1630] ^ (773370213 * ((-812407749 * v64) >> 24)) ^ *&v107[4 * ((-812407749 * v64) >> 24)] ^ *&v108[4 * ((-812407749 * v64) >> 24)] ^ *&v109[4 * ((-812407749 * v64) >> 24) + 12];
  LODWORD(v64) = (-812407749 * ((v72 ^ STACK[0x1700]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1700]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x21A8]) = *&v104[4 * ((-812407749 * v64) >> 24)] ^ *STACK[0x1700] ^ *&v105[4 * ((-812407749 * v64) >> 24) + 12] ^ *&v106[4 * ((-812407749 * v64) >> 24) + 8] ^ (-1539637248 * v64) ^ (-812407749 * v64) ^ (-455034029 * ((-812407749 * v64) >> 24));
  LODWORD(v64) = (-812407749 * ((v72 ^ STACK[0x1800]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1800]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2248]) = *&v104[4 * ((-812407749 * v64) >> 24)] ^ *STACK[0x1800] ^ *&v105[4 * ((-812407749 * v64) >> 24) + 12] ^ *&v106[4 * ((-812407749 * v64) >> 24) + 8] ^ (-1539637248 * v64) ^ (-812407749 * v64) ^ (-455034029 * ((-812407749 * v64) >> 24));
  LODWORD(v64) = (-812407749 * ((v72 ^ STACK[0x1890]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1890]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x21D0]) = (-812407749 * v64) ^ (-1539637248 * v64) ^ *STACK[0x1890] ^ (-455034029 * ((-812407749 * v64) >> 24)) ^ *&v104[4 * ((-812407749 * v64) >> 24)] ^ *&v105[4 * ((-812407749 * v64) >> 24) + 12] ^ *&v106[4 * ((-812407749 * v64) >> 24) + 8];
  LODWORD(v64) = (-812407749 * ((v72 ^ STACK[0x16B0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x16B0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2230]) = (-812407749 * v64) ^ (-1539637248 * v64) ^ *STACK[0x16B0] ^ (-455034029 * ((-812407749 * v64) >> 24)) ^ *&v104[4 * ((-812407749 * v64) >> 24)] ^ *&v105[4 * ((-812407749 * v64) >> 24) + 12] ^ *&v106[4 * ((-812407749 * v64) >> 24) + 8];
  LODWORD(v64) = (-812407749 * ((v72 ^ STACK[0x16C0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x16C0]) & 0x7FFFFFFF)) >> 16);
  v110 = (-812407749 * v64) >> 24;
  LODWORD(STACK[0x21E8]) = *(STACK[0x1AF8] + 4 * v110) ^ *STACK[0x16C0] ^ *(STACK[0x1AF0] + 4 * (v110 + 3)) ^ *(STACK[0x1B00] + 4 * v110) ^ (-1539637248 * v64) ^ (-812407749 * v64) ^ (-227167517 * v110);
  LODWORD(v64) = (-812407749 * ((v72 ^ STACK[0x1798]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1798]) & 0x7FFFFFFF)) >> 16);
  v111 = (-812407749 * v64) >> 24;
  v112 = *&v75[4 * v111] ^ *STACK[0x1798] ^ *(v81 + 4 * (v111 + 2));
  v113 = *(v82 + 4 * v111);
  STACK[0x2090] = v82;
  LODWORD(STACK[0x2240]) = v112 ^ (-1539637248 * v64) ^ (-812407749 * v64) ^ v113 ^ (-1633439771 * v111);
  LODWORD(v64) = -812407749 * ((v72 ^ STACK[0x1688]) & 0x7FFFFFFF);
  LODWORD(v64) = v64 ^ (v64 >> 16);
  v114 = STACK[0x1210];
  v115 = (-812407749 * v64) ^ (-1539637248 * v64) ^ *(STACK[0x1210] + 251) ^ (773370213 * ((-812407749 * v64) >> 24)) ^ *&v107[4 * ((-812407749 * v64) >> 24)] ^ *&v108[4 * ((-812407749 * v64) >> 24)] ^ *&v109[4 * ((-812407749 * v64) >> 24) + 12];
  LODWORD(v64) = (-812407749 * ((v72 ^ STACK[0x1660]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1660]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x21E0]) = (-812407749 * v64) ^ (-1539637248 * v64) ^ *STACK[0x1660] ^ (773370213 * ((-812407749 * v64) >> 24)) ^ *&v107[4 * ((-812407749 * v64) >> 24)] ^ *&v108[4 * ((-812407749 * v64) >> 24)] ^ *&v109[4 * ((-812407749 * v64) >> 24) + 12];
  LODWORD(v64) = (-812407749 * ((v72 ^ STACK[0x1870]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1870]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2180]) = *&v107[4 * ((-812407749 * v64) >> 24)] ^ *STACK[0x1870] ^ *&v108[4 * ((-812407749 * v64) >> 24)] ^ *&v109[4 * ((-812407749 * v64) >> 24) + 12] ^ (-1539637248 * v64) ^ (-812407749 * v64) ^ (773370213 * ((-812407749 * v64) >> 24));
  LODWORD(v64) = (-812407749 * ((v72 ^ STACK[0x1788]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1788]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2150]) = *&v107[4 * ((-812407749 * v64) >> 24)] ^ *STACK[0x1788] ^ *&v108[4 * ((-812407749 * v64) >> 24)] ^ *&v109[4 * ((-812407749 * v64) >> 24) + 12] ^ (-1539637248 * v64) ^ (-812407749 * v64) ^ (773370213 * ((-812407749 * v64) >> 24));
  LODWORD(v64) = (-812407749 * ((v72 ^ STACK[0x15A8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x15A8]) & 0x7FFFFFFF)) >> 16);
  v116 = (-1539637248 * v64) ^ *STACK[0x15A8];
  LODWORD(v64) = -812407749 * v64;
  LODWORD(v64) = v116 ^ v64 ^ (773370213 * (v64 >> 24)) ^ *&v107[4 * (v64 >> 24)] ^ *&v108[4 * (v64 >> 24)] ^ *&v109[4 * (v64 >> 24) + 12];
  LODWORD(STACK[0x21C8]) = -737505385 * v64 - ((-1557759138 - 1475010770 * v64) & 0xB5612F22) + 742643008;
  LODWORD(v64) = (-812407749 * ((v72 ^ STACK[0x17B0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x17B0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2170]) = (-812407749 * v64) ^ (-1539637248 * v64) ^ *STACK[0x17B0] ^ (773370213 * ((-812407749 * v64) >> 24)) ^ *&v107[4 * ((-812407749 * v64) >> 24)] ^ *&v108[4 * ((-812407749 * v64) >> 24)] ^ *&v109[4 * ((-812407749 * v64) >> 24) + 12];
  LODWORD(v64) = (-812407749 * ((v72 ^ STACK[0x1790]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1790]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2198]) = *&v107[4 * ((-812407749 * v64) >> 24)] ^ *STACK[0x1790] ^ *&v108[4 * ((-812407749 * v64) >> 24)] ^ *&v109[4 * ((-812407749 * v64) >> 24) + 12] ^ (-1539637248 * v64) ^ (-812407749 * v64) ^ (773370213 * ((-812407749 * v64) >> 24));
  LODWORD(v64) = (-812407749 * ((v72 ^ STACK[0x17D0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x17D0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x21B8]) = *&v107[4 * ((-812407749 * v64) >> 24)] ^ *STACK[0x17D0] ^ *&v108[4 * ((-812407749 * v64) >> 24)] ^ *&v109[4 * ((-812407749 * v64) >> 24) + 12] ^ (-1539637248 * v64) ^ (-812407749 * v64) ^ (773370213 * ((-812407749 * v64) >> 24));
  LODWORD(v64) = (-812407749 * ((v72 ^ STACK[0x1730]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1730]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2160]) = (-812407749 * v64) ^ (-1539637248 * v64) ^ *STACK[0x1730] ^ (773370213 * ((-812407749 * v64) >> 24)) ^ *&v107[4 * ((-812407749 * v64) >> 24)] ^ *&v108[4 * ((-812407749 * v64) >> 24)] ^ *&v109[4 * ((-812407749 * v64) >> 24) + 12];
  LODWORD(v64) = (-812407749 * ((v72 ^ STACK[0x1778]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1778]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x21A0]) = (-812407749 * v64) ^ (-1539637248 * v64) ^ *STACK[0x1778] ^ (773370213 * ((-812407749 * v64) >> 24)) ^ *&v107[4 * ((-812407749 * v64) >> 24)] ^ *&v108[4 * ((-812407749 * v64) >> 24)] ^ *&v109[4 * ((-812407749 * v64) >> 24) + 12];
  LODWORD(STACK[0x2178]) = -737505385 * v115 - ((135601966 * v115 + 52853598) & 0x13089F1C);
  v117 = (-812407749 * ((v72 ^ STACK[0x17E8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x17E8]) & 0x7FFFFFFF)) >> 16);
  v118 = *&v107[4 * ((-812407749 * v117) >> 24)] ^ *STACK[0x17E8] ^ *&v108[4 * ((-812407749 * v117) >> 24)] ^ *&v109[4 * ((-812407749 * v117) >> 24) + 12] ^ (-1539637248 * v117) ^ (-812407749 * v117) ^ (773370213 * ((-812407749 * v117) >> 24));
  v119 = -812407749 * ((v72 ^ STACK[0x18A8]) & 0x7FFFFFFF);
  v120 = v119 ^ HIWORD(v119);
  LODWORD(STACK[0x2148]) = *&v107[4 * ((-812407749 * v120) >> 24)] ^ *(v114 + 223) ^ *&v108[4 * ((-812407749 * v120) >> 24)] ^ (-1539637248 * v120) ^ (-812407749 * v120) ^ *&v109[4 * ((-812407749 * v120) >> 24) + 12] ^ (773370213 * ((-812407749 * v120) >> 24));
  v121 = (-812407749 * ((v72 ^ STACK[0x16F8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x16F8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2168]) = (-812407749 * v121) ^ (-1539637248 * v121) ^ *STACK[0x16F8] ^ (773370213 * ((-812407749 * v121) >> 24)) ^ *&v107[4 * ((-812407749 * v121) >> 24)] ^ *&v108[4 * ((-812407749 * v121) >> 24)] ^ *&v109[4 * ((-812407749 * v121) >> 24) + 12];
  LODWORD(v66) = (-812407749 * ((v72 ^ STACK[0x16D0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x16D0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v109) = (-812407749 * v66) >> 24;
  v122 = *(&off_279CA5FD0 + v54 - 2782) - 8;
  v123 = *(&off_279CA5FD0 + v54 - 2607) - 8;
  v124 = *(&off_279CA5FD0 + (v54 ^ 0xAB5)) - 4;
  LODWORD(STACK[0x2158]) = (-812407749 * v66) ^ (-1539637248 * v66) ^ *STACK[0x16D0] ^ (2057016111 * v109) ^ *&v122[4 * v109] ^ *&v123[4 * (v109 + 1)] ^ *&v124[4 * v109];
  LODWORD(v109) = (-812407749 * ((v72 ^ STACK[0x1710]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1710]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2188]) = *&v122[4 * ((-812407749 * v109) >> 24)] ^ *STACK[0x1710] ^ *&v123[4 * ((-812407749 * v109) >> 24) + 4] ^ *&v124[4 * ((-812407749 * v109) >> 24)] ^ (-1539637248 * v109) ^ (-812407749 * v109) ^ (2057016111 * ((-812407749 * v109) >> 24));
  LODWORD(v109) = (-812407749 * ((v72 ^ STACK[0x18D0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x18D0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v109) = *&v122[4 * ((-812407749 * v109) >> 24)] ^ *STACK[0x18D0] ^ *&v123[4 * ((-812407749 * v109) >> 24) + 4] ^ *&v124[4 * ((-812407749 * v109) >> 24)] ^ (-1539637248 * v109) ^ (-812407749 * v109) ^ (2057016111 * ((-812407749 * v109) >> 24));
  v125 = (-812407749 * ((v72 ^ STACK[0x1740]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1740]) & 0x7FFFFFFF)) >> 16);
  v126 = (-1539637248 * v125) ^ *STACK[0x1740];
  v125 *= -812407749;
  LODWORD(STACK[0x20F8]) = v126 ^ v125 ^ (2057016111 * HIBYTE(v125)) ^ *&v122[4 * HIBYTE(v125)] ^ *&v123[4 * HIBYTE(v125) + 4] ^ *&v124[4 * HIBYTE(v125)];
  LODWORD(STACK[0x2128]) = -737505385 * v109 - ((-1475010770 * v109 - 1557759138) & 0xE60A5BAA);
  LODWORD(v109) = (-812407749 * ((v72 ^ STACK[0x1858]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1858]) & 0x7FFFFFFF)) >> 16);
  v127 = (-1539637248 * v109) ^ *STACK[0x1858];
  LODWORD(v109) = -812407749 * v109;
  LODWORD(STACK[0x20D8]) = v127 ^ v109 ^ (2057016111 * (v109 >> 24)) ^ *&v122[4 * (v109 >> 24)] ^ *&v123[4 * (v109 >> 24) + 4] ^ *&v124[4 * (v109 >> 24)];
  LODWORD(STACK[0x20F0]) = -737505385 * v118 - ((672472878 * v118 + 589724510) & 0x61E70776) + 42385770;
  LODWORD(v109) = (-812407749 * ((v72 ^ STACK[0x1748]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1748]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2110]) = *&v122[4 * ((-812407749 * v109) >> 24)] ^ *STACK[0x1748] ^ *&v123[4 * ((-812407749 * v109) >> 24) + 4] ^ *&v124[4 * ((-812407749 * v109) >> 24)] ^ (-1539637248 * v109) ^ (-812407749 * v109) ^ (2057016111 * ((-812407749 * v109) >> 24));
  LODWORD(v109) = (-812407749 * ((v72 ^ STACK[0x16C8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x16C8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x20A8]) = *&v122[4 * ((-812407749 * v109) >> 24)] ^ *STACK[0x16C8] ^ *&v123[4 * ((-812407749 * v109) >> 24) + 4] ^ *&v124[4 * ((-812407749 * v109) >> 24)] ^ (-1539637248 * v109) ^ (-812407749 * v109) ^ (2057016111 * ((-812407749 * v109) >> 24));
  LODWORD(v109) = (-812407749 * ((v72 ^ STACK[0x1708]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1708]) & 0x7FFFFFFF)) >> 16);
  v128 = (-1539637248 * v109) ^ *STACK[0x1708];
  LODWORD(v109) = -812407749 * v109;
  LODWORD(STACK[0x2120]) = v128 ^ v109 ^ *&v122[4 * (v109 >> 24)] ^ *&v123[4 * (v109 >> 24) + 4] ^ (2057016111 * (v109 >> 24)) ^ *&v124[4 * (v109 >> 24)];
  LODWORD(v109) = (-812407749 * ((v72 ^ STACK[0x1880]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1880]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x20B0]) = (-812407749 * v109) ^ (-1539637248 * v109) ^ *STACK[0x1880] ^ (2057016111 * ((-812407749 * v109) >> 24)) ^ *&v122[4 * ((-812407749 * v109) >> 24)] ^ *&v123[4 * ((-812407749 * v109) >> 24) + 4] ^ *&v124[4 * ((-812407749 * v109) >> 24)];
  LODWORD(v109) = (-812407749 * ((v72 ^ STACK[0x1838]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1838]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x20B8]) = *&v122[4 * ((-812407749 * v109) >> 24)] ^ *STACK[0x1838] ^ *&v123[4 * ((-812407749 * v109) >> 24) + 4] ^ *&v124[4 * ((-812407749 * v109) >> 24)] ^ (-1539637248 * v109) ^ (-812407749 * v109) ^ (2057016111 * ((-812407749 * v109) >> 24));
  LODWORD(v109) = (-812407749 * ((v72 ^ STACK[0x1728]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1728]) & 0x7FFFFFFF)) >> 16);
  v129 = (-1539637248 * v109) ^ *STACK[0x1728];
  LODWORD(v109) = -812407749 * v109;
  LODWORD(STACK[0x2108]) = v129 ^ v109 ^ *&v122[4 * (v109 >> 24)] ^ *&v123[4 * (v109 >> 24) + 4] ^ (2057016111 * (v109 >> 24)) ^ *&v124[4 * (v109 >> 24)];
  LODWORD(v109) = (-812407749 * ((v72 ^ STACK[0x17A8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x17A8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x20E8]) = (-812407749 * v109) ^ (-1539637248 * v109) ^ *STACK[0x17A8] ^ (2057016111 * ((-812407749 * v109) >> 24)) ^ *&v122[4 * ((-812407749 * v109) >> 24)] ^ *&v123[4 * ((-812407749 * v109) >> 24) + 4] ^ *&v124[4 * ((-812407749 * v109) >> 24)];
  LODWORD(v109) = (-812407749 * ((v72 ^ STACK[0x1668]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1668]) & 0x7FFFFFFF)) >> 16);
  v130 = (-1539637248 * v109) ^ *STACK[0x1668];
  LODWORD(v109) = -812407749 * v109;
  LODWORD(STACK[0x20D0]) = v130 ^ v109 ^ (2057016111 * (v109 >> 24)) ^ *&v122[4 * (v109 >> 24)] ^ *&v123[4 * (v109 >> 24) + 4] ^ *&v124[4 * (v109 >> 24)];
  LODWORD(v109) = (-812407749 * ((v72 ^ STACK[0x1650]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1650]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2088]) = *&v122[4 * ((-812407749 * v109) >> 24)] ^ *STACK[0x1650] ^ *&v123[4 * ((-812407749 * v109) >> 24) + 4] ^ *&v124[4 * ((-812407749 * v109) >> 24)] ^ (-1539637248 * v109) ^ (-812407749 * v109) ^ (2057016111 * ((-812407749 * v109) >> 24));
  LODWORD(v109) = (-812407749 * ((v72 ^ STACK[0x15D0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x15D0]) & 0x7FFFFFFF)) >> 16);
  v131 = (-812407749 * v109) >> 24;
  v132 = *&v122[4 * v131] ^ *STACK[0x15D0] ^ *&v123[4 * v131 + 4];
  v133 = STACK[0x18E8];
  v134 = (-812407749 * ((v72 ^ v133) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ v133) & 0x7FFFFFFF)) >> 16);
  v135 = (-812407749 * v134) >> 24;
  LODWORD(v123) = *&v123[4 * v135 + 4];
  LODWORD(v109) = v132 ^ *&v124[4 * v131] ^ (-1539637248 * v109) ^ (-812407749 * v109);
  LODWORD(v122) = *&v122[4 * v135];
  LODWORD(v124) = *&v124[4 * v135];
  LODWORD(STACK[0x20E0]) = v109 ^ (2057016111 * v131);
  LODWORD(STACK[0x2060]) = (-1539637248 * v134) ^ *v133 ^ (-812407749 * v134) ^ v122 ^ v123 ^ (2057016111 * v135) ^ v124;
  LODWORD(v66) = (-812407749 * ((v72 ^ STACK[0x1850]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1850]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v122) = (-812407749 * v66) >> 24;
  LODWORD(v66) = (-812407749 * v66) ^ (-1539637248 * v66) ^ *STACK[0x1850] ^ (-1633439771 * v122) ^ *(STACK[0x22B8] + 4 * v122) ^ *(STACK[0x22B0] + 4 * (v122 + 2)) ^ *(v82 + 4 * v122);
  LODWORD(v122) = (-812407749 * ((v72 ^ STACK[0x17A0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x17A0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x20C0]) = *(v57 + 4 * ((-812407749 * v122) >> 24)) ^ *STACK[0x17A0] ^ *(v58 + 4 * ((-812407749 * v122) >> 24)) ^ *(v59 + 4 * (((-812407749 * v122) >> 24) + 1)) ^ (-1539637248 * v122) ^ (-812407749 * v122) ^ (-2097892159 * ((-812407749 * v122) >> 24));
  LODWORD(v122) = (-812407749 * ((v72 ^ STACK[0x1818]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1818]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2070]) = *(v57 + 4 * ((-812407749 * v122) >> 24)) ^ *STACK[0x1818] ^ *(v58 + 4 * ((-812407749 * v122) >> 24)) ^ (-1539637248 * v122) ^ (-812407749 * v122) ^ *(v59 + 4 * (((-812407749 * v122) >> 24) + 1)) ^ (-2097892159 * ((-812407749 * v122) >> 24));
  LODWORD(v122) = (-812407749 * ((v72 ^ STACK[0x1640]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1640]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x20A0]) = (-812407749 * v122) ^ (-1539637248 * v122) ^ *STACK[0x1640] ^ (-2097892159 * ((-812407749 * v122) >> 24)) ^ *(v57 + 4 * ((-812407749 * v122) >> 24)) ^ *(v58 + 4 * ((-812407749 * v122) >> 24)) ^ *(v59 + 4 * (((-812407749 * v122) >> 24) + 1));
  LODWORD(v122) = (-812407749 * ((v72 ^ STACK[0x16E8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x16E8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2048]) = (-812407749 * v122) ^ (-1539637248 * v122) ^ *STACK[0x16E8] ^ (-2097892159 * ((-812407749 * v122) >> 24)) ^ *(v57 + 4 * ((-812407749 * v122) >> 24)) ^ *(v58 + 4 * ((-812407749 * v122) >> 24)) ^ *(v59 + 4 * (((-812407749 * v122) >> 24) + 1));
  LODWORD(v122) = (-812407749 * ((v72 ^ STACK[0x1780]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1780]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2080]) = *(v57 + 4 * ((-812407749 * v122) >> 24)) ^ *STACK[0x1780] ^ *(v58 + 4 * ((-812407749 * v122) >> 24)) ^ *(v59 + 4 * (((-812407749 * v122) >> 24) + 1)) ^ (-1539637248 * v122) ^ (-812407749 * v122) ^ (-2097892159 * ((-812407749 * v122) >> 24));
  LODWORD(v122) = (-812407749 * ((v72 ^ STACK[0x1860]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1860]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2068]) = *(v57 + 4 * ((-812407749 * v122) >> 24)) ^ *STACK[0x1860] ^ *(v58 + 4 * ((-812407749 * v122) >> 24)) ^ (-1539637248 * v122) ^ (-812407749 * v122) ^ *(v59 + 4 * (((-812407749 * v122) >> 24) + 1)) ^ (-2097892159 * ((-812407749 * v122) >> 24));
  LODWORD(v122) = (-812407749 * ((v72 ^ STACK[0x17C0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x17C0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2098]) = (-812407749 * v122) ^ (-1539637248 * v122) ^ *STACK[0x17C0] ^ (-2097892159 * ((-812407749 * v122) >> 24)) ^ *(v57 + 4 * ((-812407749 * v122) >> 24)) ^ *(v58 + 4 * ((-812407749 * v122) >> 24)) ^ *(v59 + 4 * (((-812407749 * v122) >> 24) + 1));
  LODWORD(v122) = (-812407749 * ((v72 ^ STACK[0x1698]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1698]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v122) = (-812407749 * v122) ^ (-1539637248 * v122) ^ *STACK[0x1698] ^ (-2097892159 * ((-812407749 * v122) >> 24)) ^ *(v57 + 4 * ((-812407749 * v122) >> 24)) ^ *(v58 + 4 * ((-812407749 * v122) >> 24)) ^ *(v59 + 4 * (((-812407749 * v122) >> 24) + 1));
  LODWORD(STACK[0x2078]) = -737505385 * v122 - ((672472878 * v122 + 589724510) & 0x5FD2377A);
  LODWORD(v122) = (-812407749 * ((v72 ^ STACK[0x18C0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x18C0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v122) = *(v57 + 4 * ((-812407749 * v122) >> 24)) ^ *STACK[0x18C0] ^ *(v58 + 4 * ((-812407749 * v122) >> 24)) ^ *(v59 + 4 * (((-812407749 * v122) >> 24) + 1)) ^ (-1539637248 * v122) ^ (-812407749 * v122) ^ (-2097892159 * ((-812407749 * v122) >> 24));
  LODWORD(STACK[0x2058]) = -737505385 * v122 - ((135601966 * v122 + 52853598) & 0x13089F1C);
  LODWORD(v64) = (-812407749 * ((v72 ^ STACK[0x1680]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1680]) & 0x7FFFFFFF)) >> 16);
  v136 = *(v57 + 4 * ((-812407749 * v64) >> 24)) ^ *STACK[0x1680] ^ *(v58 + 4 * ((-812407749 * v64) >> 24)) ^ (-1539637248 * v64) ^ (-812407749 * v64) ^ *(v59 + 4 * (((-812407749 * v64) >> 24) + 1)) ^ (-2097892159 * ((-812407749 * v64) >> 24));
  LODWORD(v64) = -812407749 * ((v72 ^ STACK[0x1830]) & 0x7FFFFFFF);
  LODWORD(v64) = v64 ^ (v64 >> 16);
  LODWORD(STACK[0x2040]) = (-812407749 * v64) ^ (-1539637248 * v64) ^ *(v114 + 231) ^ (-2097892159 * ((-812407749 * v64) >> 24)) ^ *(v57 + 4 * ((-812407749 * v64) >> 24)) ^ *(v58 + 4 * ((-812407749 * v64) >> 24)) ^ *(v59 + 4 * (((-812407749 * v64) >> 24) + 1));
  LODWORD(v64) = (-812407749 * ((v72 ^ STACK[0x17C8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x17C8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2038]) = (-812407749 * v64) ^ (-1539637248 * v64) ^ *STACK[0x17C8] ^ (-2097892159 * ((-812407749 * v64) >> 24)) ^ *(v57 + 4 * ((-812407749 * v64) >> 24)) ^ *(v58 + 4 * ((-812407749 * v64) >> 24)) ^ *(v59 + 4 * (((-812407749 * v64) >> 24) + 1));
  LODWORD(v64) = (-812407749 * ((v72 ^ STACK[0x15A0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x15A0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v122) = -812407749 * v64;
  LODWORD(v123) = (-812407749 * v64) >> 24;
  LODWORD(v64) = *(v57 + 4 * v123) ^ *STACK[0x15A0] ^ *(v58 + 4 * v123) ^ *(v59 + 4 * (v123 + 1)) ^ (-1539637248 * v64);
  LODWORD(v122) = v122 ^ (-2097892159 * v123);
  LODWORD(v123) = -812407749 * ((v72 ^ STACK[0x17F8]) & 0x7FFFFFFF);
  LODWORD(v123) = v123 ^ (v123 >> 16);
  LODWORD(v109) = (-812407749 * v123) >> 24;
  v137 = *(v59 + 4 * (v109 + 1));
  v138 = *(v57 + 4 * v109);
  LODWORD(STACK[0x2000]) = v64 ^ v122;
  v139 = v114;
  LODWORD(STACK[0x2140]) = v138 ^ *(v114 + 255) ^ *(v58 + 4 * v109) ^ (-1539637248 * v123) ^ (-812407749 * v123) ^ v137 ^ (-2097892159 * v109);
  LODWORD(STACK[0x2138]) = v54 ^ 0xFF9;
  LODWORD(v122) = (-812407749 * ((v72 ^ STACK[0x1878]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1878]) & 0x7FFFFFFF)) >> 16);
  v140 = *(&off_279CA5FD0 + (v54 ^ 0xA99));
  v141 = *(&off_279CA5FD0 + (v54 ^ 0xA3E)) - 12;
  v142 = *(&off_279CA5FD0 + (v54 ^ 0xA52)) - 12;
  LODWORD(STACK[0x2010]) = (-812407749 * v122) ^ (-1539637248 * v122) ^ *STACK[0x1878] ^ (-924036639 * ((-812407749 * v122) >> 24)) ^ *(v140 + 4 * ((-812407749 * v122) >> 24)) ^ *&v141[4 * ((-812407749 * v122) >> 24) + 4] ^ *&v142[4 * ((-812407749 * v122) >> 24)];
  LODWORD(STACK[0x1FC8]) = -737505385 * v66 - ((672472878 * v66 + 589724510) & 0x2ED1FA84);
  LODWORD(v66) = -812407749 * ((v72 ^ STACK[0x1840]) & 0x7FFFFFFF);
  LODWORD(v66) = v66 ^ (v66 >> 16);
  LODWORD(STACK[0x1FD8]) = (-812407749 * v66) ^ (-1539637248 * v66) ^ *(v114 + 227) ^ (-924036639 * ((-812407749 * v66) >> 24)) ^ *(v140 + 4 * ((-812407749 * v66) >> 24)) ^ *&v141[4 * ((-812407749 * v66) >> 24) + 4] ^ *&v142[4 * ((-812407749 * v66) >> 24)];
  LODWORD(v66) = (-812407749 * ((v72 ^ STACK[0x1760]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1760]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2130]) = *(v140 + 4 * ((-812407749 * v66) >> 24)) ^ *STACK[0x1760] ^ *&v141[4 * ((-812407749 * v66) >> 24) + 4] ^ *&v142[4 * ((-812407749 * v66) >> 24)] ^ (-1539637248 * v66) ^ (-812407749 * v66) ^ (-924036639 * ((-812407749 * v66) >> 24));
  LODWORD(v66) = (-812407749 * ((v72 ^ STACK[0x18F0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x18F0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v109) = (-1539637248 * v66) ^ *STACK[0x18F0];
  LODWORD(v66) = -812407749 * v66;
  LODWORD(v69) = v109 ^ v66 ^ *(v140 + 4 * (v66 >> 24)) ^ *&v141[4 * (v66 >> 24) + 4] ^ (-924036639 * (v66 >> 24)) ^ *&v142[4 * (v66 >> 24)];
  LODWORD(v66) = (-812407749 * ((v72 ^ STACK[0x18E0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x18E0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v109) = (-1539637248 * v66) ^ *STACK[0x18E0];
  LODWORD(v66) = -812407749 * v66;
  LODWORD(STACK[0x1FD0]) = v109 ^ v66 ^ (-924036639 * (v66 >> 24)) ^ *(v140 + 4 * (v66 >> 24)) ^ *&v141[4 * (v66 >> 24) + 4] ^ *&v142[4 * (v66 >> 24)];
  LODWORD(v66) = (-812407749 * ((v72 ^ STACK[0x17B8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x17B8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v109) = (-812407749 * v66) ^ (-1539637248 * v66) ^ *STACK[0x17B8] ^ (-924036639 * ((-812407749 * v66) >> 24)) ^ *(v140 + 4 * ((-812407749 * v66) >> 24)) ^ *&v141[4 * ((-812407749 * v66) >> 24) + 4] ^ *&v142[4 * ((-812407749 * v66) >> 24)];
  LODWORD(v66) = (-812407749 * ((v72 ^ STACK[0x18A0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x18A0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v66) = *(v140 + 4 * ((-812407749 * v66) >> 24)) ^ *STACK[0x18A0] ^ *&v141[4 * ((-812407749 * v66) >> 24) + 4] ^ *&v142[4 * ((-812407749 * v66) >> 24)] ^ (-1539637248 * v66) ^ (-812407749 * v66) ^ (-924036639 * ((-812407749 * v66) >> 24));
  v143 = -737505385 * v109 - ((-1475010770 * v109 - 1557759138) & 0x9BD2BF0C) - 1619223243;
  LODWORD(v109) = (-812407749 * ((v72 ^ a49) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ a49) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x1F98]) = *(v140 + 4 * ((-812407749 * v109) >> 24)) ^ *a49 ^ *&v141[4 * ((-812407749 * v109) >> 24) + 4] ^ (-1539637248 * v109) ^ (-812407749 * v109) ^ *&v142[4 * ((-812407749 * v109) >> 24)] ^ (-924036639 * ((-812407749 * v109) >> 24));
  LODWORD(v109) = (-812407749 * ((v72 ^ STACK[0x1638]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1638]) & 0x7FFFFFFF)) >> 16);
  v144 = (-1539637248 * v109) ^ *STACK[0x1638];
  LODWORD(v109) = -812407749 * v109;
  LODWORD(STACK[0x1F80]) = v144 ^ v109 ^ (-924036639 * (v109 >> 24)) ^ *(v140 + 4 * (v109 >> 24)) ^ *&v141[4 * (v109 >> 24) + 4] ^ *&v142[4 * (v109 >> 24)];
  LODWORD(v109) = (-812407749 * ((v72 ^ STACK[0x18D8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x18D8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x1F88]) = (-812407749 * v109) ^ (-1539637248 * v109) ^ *STACK[0x18D8] ^ (-924036639 * ((-812407749 * v109) >> 24)) ^ *(v140 + 4 * ((-812407749 * v109) >> 24)) ^ *&v141[4 * ((-812407749 * v109) >> 24) + 4] ^ *&v142[4 * ((-812407749 * v109) >> 24)];
  LODWORD(v109) = (-812407749 * ((v72 ^ STACK[0x1828]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1828]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x1FA0]) = *(v140 + 4 * ((-812407749 * v109) >> 24)) ^ *STACK[0x1828] ^ *&v141[4 * ((-812407749 * v109) >> 24) + 4] ^ *&v142[4 * ((-812407749 * v109) >> 24)] ^ (-1539637248 * v109) ^ (-812407749 * v109) ^ (-924036639 * ((-812407749 * v109) >> 24));
  LODWORD(v109) = (-812407749 * ((v72 ^ STACK[0x18B8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x18B8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v109) = *(v140 + 4 * ((-812407749 * v109) >> 24)) ^ *STACK[0x18B8] ^ *&v141[4 * ((-812407749 * v109) >> 24) + 4] ^ *&v142[4 * ((-812407749 * v109) >> 24)] ^ (-1539637248 * v109) ^ (-812407749 * v109) ^ (-924036639 * ((-812407749 * v109) >> 24));
  LODWORD(STACK[0x1F90]) = -737505385 * v66 - ((-1475010770 * v66 - 1557759138) & 0x97A116C6);
  LODWORD(v66) = (-812407749 * ((v72 ^ STACK[0x16A0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x16A0]) & 0x7FFFFFFF)) >> 16);
  v145 = (-812407749 * v66) >> 24;
  LODWORD(v66) = (-812407749 * v66) ^ (-1539637248 * v66) ^ *STACK[0x16A0] ^ (-924036639 * v145) ^ *(v140 + 4 * v145) ^ *&v141[4 * v145 + 4];
  v146 = STACK[0x1848];
  v147 = (-812407749 * ((v72 ^ v146) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ v146) & 0x7FFFFFFF)) >> 16);
  LODWORD(v57) = (-812407749 * v147) >> 24;
  LODWORD(v141) = *&v141[4 * (v57 + 1)];
  v148 = *&v142[4 * v145];
  LODWORD(v140) = *(v140 + 4 * v57);
  LODWORD(v142) = *&v142[4 * v57];
  LODWORD(STACK[0x1F40]) = v66 ^ v148;
  LODWORD(v142) = (-1539637248 * v147) ^ *v146 ^ (-812407749 * v147) ^ (-924036639 * v57) ^ v140 ^ v141 ^ v142;
  LODWORD(v140) = (-812407749 * ((v72 ^ STACK[0x16D8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x16D8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v114) = *&v104[4 * ((-812407749 * v140) >> 24)] ^ *STACK[0x16D8] ^ *&v105[4 * ((-812407749 * v140) >> 24) + 12] ^ *&v106[4 * ((-812407749 * v140) >> 24) + 8] ^ (-1539637248 * v140) ^ (-812407749 * v140) ^ (-455034029 * ((-812407749 * v140) >> 24));
  LODWORD(STACK[0x1F70]) = -737505385 * v109 - ((672472878 * v109 + 589724510) & 0x220C9354) - 493254823;
  LODWORD(v140) = (-812407749 * ((v72 ^ STACK[0x1750]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1750]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v122) = *STACK[0x1750] ^ (-1539637248 * v140);
  LODWORD(v140) = -812407749 * v140;
  LODWORD(STACK[0x1F78]) = *&v104[4 * BYTE3(v140)] ^ v122 ^ v140 ^ *&v105[4 * BYTE3(v140) + 12] ^ *&v106[4 * BYTE3(v140) + 8] ^ (-455034029 * BYTE3(v140));
  LODWORD(v140) = (-812407749 * ((v72 ^ (v139 + 459)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ (v139 + 459)) & 0x7FFFFFFFu)) >> 16);
  LODWORD(v122) = (-1539637248 * v140) ^ *(v139 + 459);
  LODWORD(v140) = -812407749 * v140;
  v149 = v122 ^ v140 ^ (-455034029 * BYTE3(v140)) ^ *&v104[4 * BYTE3(v140)] ^ *&v105[4 * BYTE3(v140) + 12] ^ *&v106[4 * BYTE3(v140) + 8];
  LODWORD(v140) = (-812407749 * ((v72 ^ STACK[0x1690]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1690]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x1F50]) = *&v104[4 * ((-812407749 * v140) >> 24)] ^ *STACK[0x1690] ^ *&v105[4 * ((-812407749 * v140) >> 24) + 12] ^ *&v106[4 * ((-812407749 * v140) >> 24) + 8] ^ (-1539637248 * v140) ^ (-812407749 * v140) ^ (-455034029 * ((-812407749 * v140) >> 24));
  LODWORD(v140) = (-812407749 * ((v72 ^ STACK[0x1820]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1820]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v109) = (-812407749 * v140) >> 24;
  LODWORD(STACK[0x1F30]) = *(STACK[0x1AF8] + 4 * v109) ^ *STACK[0x1820] ^ *(STACK[0x1AF0] + 4 * (v109 + 3)) ^ (-1539637248 * v140) ^ (-812407749 * v140) ^ *(STACK[0x1B00] + 4 * v109) ^ (-227167517 * v109);
  LODWORD(v140) = (-812407749 * ((v72 ^ STACK[0x1758]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1758]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x1F08]) = (-812407749 * v140) ^ (-1539637248 * v140) ^ *STACK[0x1758] ^ (-455034029 * ((-812407749 * v140) >> 24)) ^ *&v104[4 * ((-812407749 * v140) >> 24)] ^ *&v105[4 * ((-812407749 * v140) >> 24) + 12] ^ *&v106[4 * ((-812407749 * v140) >> 24) + 8];
  LODWORD(v122) = (-812407749 * ((v72 ^ STACK[0x1648]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1648]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x1F28]) = (-812407749 * v122) ^ (-1539637248 * v122) ^ *STACK[0x1648] ^ (-455034029 * ((-812407749 * v122) >> 24)) ^ *&v104[4 * ((-812407749 * v122) >> 24)] ^ *&v105[4 * ((-812407749 * v122) >> 24) + 12] ^ *&v106[4 * ((-812407749 * v122) >> 24) + 8];
  LODWORD(v122) = (-812407749 * ((v72 ^ STACK[0x17E0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x17E0]) & 0x7FFFFFFF)) >> 16);
  v150 = *&v104[4 * ((-812407749 * v122) >> 24)] ^ *STACK[0x17E0] ^ *&v105[4 * ((-812407749 * v122) >> 24) + 12] ^ *&v106[4 * ((-812407749 * v122) >> 24) + 8] ^ (-1539637248 * v122) ^ (-812407749 * v122) ^ (-455034029 * ((-812407749 * v122) >> 24));
  LODWORD(v122) = (-812407749 * ((v72 ^ STACK[0x1718]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1718]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v122) = *&v104[4 * ((-812407749 * v122) >> 24)] ^ *STACK[0x1718] ^ *&v105[4 * ((-812407749 * v122) >> 24) + 12] ^ *&v106[4 * ((-812407749 * v122) >> 24) + 8] ^ (-1539637248 * v122) ^ (-812407749 * v122) ^ (-455034029 * ((-812407749 * v122) >> 24));
  LODWORD(v141) = (-812407749 * ((v72 ^ STACK[0x1670]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1670]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v109) = (-1539637248 * v141) ^ *STACK[0x1670];
  LODWORD(v141) = -812407749 * v141;
  LODWORD(STACK[0x1EC0]) = v109 ^ v141 ^ (-455034029 * (v141 >> 24)) ^ *&v104[4 * (v141 >> 24)] ^ *&v105[4 * (v141 >> 24) + 12] ^ *&v106[4 * (v141 >> 24) + 8];
  LODWORD(v57) = LODWORD(STACK[0x21F0]) + 303873693;
  LODWORD(v66) = STACK[0x21A8];
  LODWORD(v140) = STACK[0x2150];
  LODWORD(STACK[0x1F48]) = -737505385 * LODWORD(STACK[0x21A8]) - 1557759138 - 737505385 * LODWORD(STACK[0x2150]);
  LODWORD(STACK[0x2150]) = LODWORD(STACK[0x20A8]) - v140;
  LODWORD(v141) = (-812407749 * ((v72 ^ STACK[0x1868]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1868]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v141) = *&v104[4 * ((-812407749 * v141) >> 24)] ^ *STACK[0x1868] ^ *&v105[4 * ((-812407749 * v141) >> 24) + 12] ^ *&v106[4 * ((-812407749 * v141) >> 24) + 8] ^ (-1539637248 * v141) ^ (-812407749 * v141) ^ (-455034029 * ((-812407749 * v141) >> 24));
  v151 = -737505385 * v136 - 778879569;
  LODWORD(v69) = -737505385 * v69 - 778879569;
  LODWORD(STACK[0x21A8]) = v69 + v151 - 693686471 - ((2 * (v69 + v151)) & 0xAD4E5E72);
  v152 = (-812407749 * ((v72 ^ STACK[0x18B0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x18B0]) & 0x7FFFFFFF)) >> 16);
  v153 = *&v104[4 * ((-812407749 * v152) >> 24)] ^ *STACK[0x18B0] ^ *&v105[4 * ((-812407749 * v152) >> 24) + 12] ^ *&v106[4 * ((-812407749 * v152) >> 24) + 8] ^ (-1539637248 * v152) ^ (-812407749 * v152) ^ (-455034029 * ((-812407749 * v152) >> 24));
  LODWORD(v58) = -737505385 * LODWORD(STACK[0x2180]) - 778879569;
  LODWORD(STACK[0x1EE8]) = (-737505385 * v66 - ((-1475010770 * v66 - 1557759138) & 0x811301DC) + 303873693) ^ v57;
  LODWORD(STACK[0x2180]) = v58 + (v57 ^ 0x408980EE);
  LODWORD(STACK[0x20A8]) = v69 + v58;
  LODWORD(v69) = LODWORD(STACK[0x21D8]) - 904549317;
  LODWORD(v57) = -737505385 * LODWORD(STACK[0x2060]);
  LODWORD(v146) = (-812407749 * ((v72 ^ STACK[0x1770]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1770]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v105) = (-812407749 * v146) ^ (-1539637248 * v146) ^ *STACK[0x1770] ^ (-455034029 * ((-812407749 * v146) >> 24)) ^ *&v104[4 * ((-812407749 * v146) >> 24)] ^ *&v105[4 * ((-812407749 * v146) >> 24) + 12] ^ *&v106[4 * ((-812407749 * v146) >> 24) + 8];
  LODWORD(v104) = (v57 - 778879569) & (v69 ^ 0x78826E8C);
  LODWORD(v106) = -737505385 * LODWORD(STACK[0x2250]) - 778879569;
  LODWORD(v59) = -737505385 * LODWORD(STACK[0x2170]) - 778879569;
  LODWORD(v58) = -737505385 * LODWORD(STACK[0x20D8]) - 778879569;
  LODWORD(v142) = -737505385 * v142 - 778879569;
  LODWORD(v109) = (v57 - ((2 * (v57 - 778879569)) & 0xF104DD18) - 904549317) ^ v69;
  LODWORD(STACK[0x1EF8]) = v151 + v106;
  LODWORD(STACK[0x2060]) = v58 ^ v106;
  LODWORD(STACK[0x2250]) = v142 + v58;
  LODWORD(STACK[0x20D8]) = v142 ^ v59;
  LODWORD(STACK[0x21F0]) = v59 - (v69 ^ 0xF8826E8C);
  LODWORD(v142) = -737505385 * LODWORD(STACK[0x20B0]);
  LODWORD(v69) = -737505385 * LODWORD(STACK[0x2088]);
  LODWORD(STACK[0x20B0]) = v57 - v69;
  LODWORD(STACK[0x1F20]) = (v69 - 778879569) ^ (v142 - 778879569);
  v143 ^= 0xCDE95F86;
  LODWORD(v106) = STACK[0x2200];
  LODWORD(STACK[0x1ED0]) = v143 + LODWORD(STACK[0x2200]) - 125669748 - ((2 * (v143 + LODWORD(STACK[0x2200]))) & 0xF104DD18);
  LODWORD(v69) = -737505385 * LODWORD(STACK[0x2038]);
  LODWORD(STACK[0x21D8]) = v69 - 778879569 + v143;
  LODWORD(STACK[0x1E88]) = v109 + 2 * v104;
  LODWORD(v104) = -737505385 * LODWORD(STACK[0x2220]) - 778879569;
  LODWORD(v109) = -737505385 * LODWORD(STACK[0x2228]) - 778879569;
  v154 = -737505385 * LODWORD(STACK[0x2000]);
  LODWORD(STACK[0x2038]) = v142 - v154;
  v155 = LODWORD(STACK[0x1FC8]) + 1761360625;
  LODWORD(v141) = -737505385 * v141 - 778879569;
  LODWORD(STACK[0x2088]) = v141 ^ (v154 - 778879569);
  LODWORD(STACK[0x1EB0]) = v141 + v104;
  LODWORD(STACK[0x2170]) = v104 ^ v109;
  LODWORD(STACK[0x2000]) = (v155 ^ 0x9768FD42) + v109;
  LODWORD(v141) = -737505385 * v149;
  v156 = (LODWORD(STACK[0x22E0]) ^ 0x1C30EF69) + -778879569 - 737505385 * v149;
  LODWORD(v142) = -737505385 * LODWORD(STACK[0x2160]);
  LODWORD(STACK[0x1EA8]) = v142 - v69;
  LODWORD(v104) = -737505385 * LODWORD(STACK[0x1F40]);
  LODWORD(STACK[0x2228]) = v142 - 778879569 + v104 - 778879569;
  LODWORD(STACK[0x2160]) = (v104 - ((2 * (v104 - 778879569)) & 0x2ED1FA84) + 1761360625) ^ v155;
  v157 = -737505385 * LODWORD(STACK[0x2048]);
  LODWORD(v104) = -737505385 * LODWORD(STACK[0x1F80]) - 778879569;
  LODWORD(STACK[0x1F80]) = v157 - 778879569 + v104 - 1987817586 - ((2 * (v157 - 778879569 + v104)) & 0x13089F1C);
  v158 = -737505385 * LODWORD(STACK[0x21D0]);
  LODWORD(v109) = -737505385 * LODWORD(STACK[0x2070]);
  LODWORD(v66) = -737505385 * v114 - 778879569;
  LODWORD(STACK[0x2220]) = v66 ^ (v158 - 778879569);
  LODWORD(STACK[0x1FC8]) = v66 ^ (v109 - 778879569);
  LODWORD(v66) = -737505385 * LODWORD(STACK[0x2148]) - 778879569;
  LODWORD(v142) = -737505385 * LODWORD(STACK[0x20B8]) - 778879569;
  LODWORD(v69) = -737505385 * LODWORD(STACK[0x2040]) - 778879569;
  v150 *= -737505385;
  LODWORD(STACK[0x21D0]) = v66 ^ v106;
  LODWORD(STACK[0x2048]) = v142 ^ v66;
  LODWORD(STACK[0x2070]) = v69 ^ v142;
  LODWORD(STACK[0x2040]) = (v150 - 778879569) ^ v69;
  LODWORD(v66) = (-812407749 * ((v72 ^ STACK[0x1768]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v72 ^ STACK[0x1768]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v69) = (-812407749 * v66) >> 24;
  LODWORD(v142) = *(STACK[0x22B8] + 4 * v69) ^ *STACK[0x1768] ^ *(STACK[0x22B0] + 4 * (v69 + 2)) ^ *(STACK[0x2090] + 4 * v69) ^ (-1539637248 * v66) ^ (-812407749 * v66) ^ (-1633439771 * v69);
  LODWORD(v69) = -737505385 * LODWORD(STACK[0x2260]) - 778879569;
  v159 = -737505385 * LODWORD(STACK[0x21F8]);
  LODWORD(v106) = LODWORD(STACK[0x2178]) + 1528270141;
  v160 = -737505385 * LODWORD(STACK[0x2140]) - 778879569;
  LODWORD(v59) = -737505385 * LODWORD(STACK[0x2010]);
  LODWORD(v114) = -737505385 * LODWORD(STACK[0x1FD8]);
  LODWORD(STACK[0x22B8]) = v159 - v158;
  LODWORD(STACK[0x2200]) = v114 - v159;
  v161 = LODWORD(STACK[0x20F0]) ^ 0x30F383BB;
  LODWORD(v106) = v106 ^ 0x89844F8E;
  LODWORD(STACK[0x2148]) = v150 - v59;
  LODWORD(STACK[0x22B0]) = v161 + v59 - 778879569;
  LODWORD(STACK[0x2178]) = v161 + v106;
  LODWORD(STACK[0x20F0]) = v106 + v69;
  LODWORD(STACK[0x1E80]) = v160 + v69;
  LODWORD(STACK[0x20B8]) = (v114 - 778879569) ^ v160;
  LODWORD(STACK[0x1FD8]) = v157 - v141;
  LODWORD(v141) = -737505385 * LODWORD(STACK[0x22A0]);
  LODWORD(STACK[0x1F40]) = v109 - v141;
  LODWORD(v109) = -737505385 * LODWORD(STACK[0x2198]) - 778879569;
  v162 = -737505385 * LODWORD(STACK[0x1F88]) - 778879569;
  LODWORD(STACK[0x2140]) = v141 - 778879569 + v162;
  LODWORD(v141) = LODWORD(STACK[0x1F70]) ^ 0x110649AA;
  LODWORD(STACK[0x1E78]) = v141 - v104;
  v163 = v141 + v109;
  LODWORD(STACK[0x1E28]) = v162 ^ v109;
  LODWORD(v104) = -737505385 * LODWORD(STACK[0x20F8]);
  LODWORD(v141) = -737505385 * LODWORD(STACK[0x2068]);
  LODWORD(STACK[0x2068]) = (v141 - 778879569) ^ (v104 - 778879569);
  LODWORD(v109) = -737505385 * LODWORD(STACK[0x2258]);
  v164 = -737505385 * LODWORD(STACK[0x2168]);
  LODWORD(STACK[0x1F70]) = (v164 - 778879569) ^ (v109 - 778879569);
  v165 = -737505385 * LODWORD(STACK[0x2268]) - 778879569;
  LODWORD(v140) = -737505385 * LODWORD(STACK[0x1F08]) - 778879569;
  LODWORD(STACK[0x2090]) = v165 + (LODWORD(STACK[0x22C8]) ^ 0xB3D9F4D4);
  LODWORD(STACK[0x20F8]) = v140 + v165 + 821265339 - ((2 * (v140 + v165)) & 0x61E70776);
  LODWORD(STACK[0x1E70]) = v109 - v104;
  LODWORD(v104) = -737505385 * LODWORD(STACK[0x2298]) - 778879569;
  LODWORD(v109) = -737505385 * LODWORD(STACK[0x21E8]) - 778879569;
  v166 = -737505385 * LODWORD(STACK[0x2158]) - 778879569;
  LODWORD(v69) = -737505385 * LODWORD(STACK[0x20D0]) - 778879569;
  LODWORD(v106) = -737505385 * LODWORD(STACK[0x2080]) - 778879569;
  v167 = -737505385 * LODWORD(STACK[0x2130]) - 778879569;
  LODWORD(v59) = -737505385 * LODWORD(STACK[0x1FD0]) - 778879569;
  LODWORD(v58) = -737505385 * LODWORD(STACK[0x1F98]);
  LODWORD(v57) = -737505385 * LODWORD(STACK[0x1F78]) - 778879569;
  v168 = -737505385 * LODWORD(STACK[0x1F30]) - 778879569;
  LODWORD(v122) = -737505385 * v122 - 778879569;
  LODWORD(v105) = -737505385 * v105 - 778879569;
  LODWORD(v114) = v140 ^ v109;
  LODWORD(STACK[0x2260]) = v57 ^ v109;
  LODWORD(STACK[0x1FD0]) = v57 ^ v167;
  LODWORD(v140) = -737505385 * v142 - 778879569;
  LODWORD(STACK[0x2168]) = v167 + v104;
  LODWORD(STACK[0x1F78]) = v59 ^ v104;
  LODWORD(STACK[0x22A0]) = v140 + v59;
  LODWORD(STACK[0x20D0]) = v140 ^ v69;
  LODWORD(STACK[0x2158]) = v69 + v166;
  LODWORD(STACK[0x1E18]) = v105 + v166;
  LODWORD(STACK[0x2268]) = v105 ^ v106;
  LODWORD(v57) = v122 + v106;
  LODWORD(STACK[0x2298]) = v122 ^ v168;
  LODWORD(STACK[0x1E30]) = v168 ^ (v58 - 778879569);
  LODWORD(STACK[0x1F88]) = v58 - v164 - 1754727102 - ((2 * (v58 - v164)) & 0x2ED1FA84);
  LODWORD(v140) = -737505385 * LODWORD(STACK[0x1F50]);
  LODWORD(v122) = LODWORD(STACK[0x2058]) + 1528270141;
  LODWORD(v66) = -737505385 * LODWORD(STACK[0x2270]) - 778879569;
  LODWORD(v142) = -737505385 * LODWORD(STACK[0x21A0]);
  v169 = v141 - v142;
  LODWORD(v141) = v142 - 778879569;
  LODWORD(v142) = -737505385 * LODWORD(STACK[0x20A0]) - 778879569;
  LODWORD(v104) = -737505385 * LODWORD(STACK[0x1F28]) - 778879569;
  v170 = LODWORD(STACK[0x21C8]) ^ 0x5AB09791;
  LODWORD(v59) = v142 ^ v141;
  LODWORD(STACK[0x1F30]) = v142 - v170;
  v171 = v170 + v66;
  LODWORD(v58) = v104 + v66;
  v172 = (v140 - ((2 * (v140 - 778879569)) & 0x13089F1C) + 1528270141) ^ v122;
  LODWORD(STACK[0x1E08]) = v104 - (v122 ^ 0x89844F8E);
  LODWORD(v122) = LODWORD(STACK[0x2128]) - 996643964;
  LODWORD(v66) = -737505385 * LODWORD(STACK[0x2110]);
  LODWORD(v141) = -1475010770 * LODWORD(STACK[0x2110]) - 1557759138;
  v173 = -737505385 * LODWORD(STACK[0x21E0]);
  LODWORD(v104) = LODWORD(STACK[0x1F90]) + 493078802;
  LODWORD(STACK[0x1E00]) = v173 - 778879569 + (v104 ^ 0x4BD08B63) - ((2 * (v173 - 778879569 + (v104 ^ 0x4BD08B63))) & 0xB5612F22);
  LODWORD(v69) = -737505385 * LODWORD(STACK[0x1EC0]);
  v174 = (v69 - ((-1475010770 * LODWORD(STACK[0x1EC0]) - 1557759138) & 0x97A116C6) + 493078802) ^ v104;
  LODWORD(v104) = LODWORD(STACK[0x2078]) - 2122557076;
  LODWORD(v142) = -737505385 * LODWORD(STACK[0x21B8]) - 778879569;
  LODWORD(v106) = -737505385 * v153 - 778879569;
  LODWORD(v109) = (v66 - (v141 & 0xE60A5BAA) - 996643964) ^ v122;
  v175 = v142 - (v122 ^ 0xF3052DD5);
  LODWORD(STACK[0x1F28]) = v106 ^ v142;
  LODWORD(v142) = v106 ^ (v140 - 778879569);
  LODWORD(v140) = -737505385 * LODWORD(STACK[0x2280]) - 778879569;
  LODWORD(v122) = -737505385 * LODWORD(STACK[0x2248]) - 778879569;
  v176 = -737505385 * LODWORD(STACK[0x2230]);
  LODWORD(v66) = v104 ^ (v66 - (v141 & 0x5FD2377A) - 2122557076);
  LODWORD(v104) = (v104 ^ 0xAFE91BBD) + v140;
  LODWORD(v106) = v122 + v140;
  LODWORD(v141) = (v176 - 778879569) ^ v122;
  LODWORD(v140) = -737505385 * LODWORD(STACK[0x22A8]);
  LODWORD(STACK[0x1F90]) = v176 - v140;
  LODWORD(STACK[0x1EC0]) = v140 - v69;
  LODWORD(v140) = -737505385 * LODWORD(STACK[0x2120]);
  v177 = v173 - v140;
  LODWORD(v69) = v140 - 778879569;
  LODWORD(v122) = -737505385 * LODWORD(STACK[0x20E8]) - 778879569;
  v178 = -737505385 * LODWORD(STACK[0x20C0]) - 778879569;
  LODWORD(v140) = -737505385 * LODWORD(STACK[0x1FA0]);
  LODWORD(v69) = v178 ^ v69;
  LODWORD(STACK[0x2280]) = (v140 - 778879569) ^ v122;
  v179 = v178 + v122;
  LODWORD(v122) = -737505385 * LODWORD(STACK[0x2290]);
  LODWORD(v105) = v140 - v122;
  v180 = -737505385 * LODWORD(STACK[0x2188]) - 778879569;
  LODWORD(v140) = -737505385 * LODWORD(STACK[0x2098]);
  LODWORD(v122) = v180 ^ (v122 - 778879569);
  LODWORD(v82) = (v140 - 778879569) ^ v180;
  v181 = ((v156 - ((2 * v156 + 114941144) & 0x9BD2BF0C) + 1364610546) ^ 0xCDE95F86) + 2090013076;
  LODWORD(v139) = -737505385 * LODWORD(STACK[0x2240]);
  LODWORD(v140) = v140 - v139;
  v182 = STACK[0x1EE8];
  LODWORD(STACK[0x2230]) = LODWORD(STACK[0x2260]) + LODWORD(STACK[0x1EE8]);
  LODWORD(STACK[0x21E8]) = v109 ^ v182;
  LODWORD(STACK[0x2270]) = v109 - v66;
  LODWORD(v109) = LODWORD(STACK[0x1F80]) ^ 0x89844F8E;
  v183 = v66 - v109;
  LODWORD(STACK[0x20E8]) = v109 - v114;
  LODWORD(STACK[0x1E10]) = v114 ^ v169;
  LODWORD(STACK[0x22A8]) = v169 ^ v122;
  LODWORD(v109) = STACK[0x1E88];
  LODWORD(STACK[0x2240]) = v122 - LODWORD(STACK[0x1E88]);
  LODWORD(STACK[0x2258]) = v109 - v163;
  LODWORD(STACK[0x2290]) = v172 + v140;
  LODWORD(STACK[0x2248]) = v57 + v140;
  LODWORD(STACK[0x21C8]) = v82 - v57;
  LODWORD(v66) = STACK[0x2160];
  LODWORD(STACK[0x2128]) = LODWORD(STACK[0x2160]) - v82;
  LODWORD(STACK[0x2260]) = v105 - v66;
  LODWORD(STACK[0x2198]) = v105 ^ v141;
  LODWORD(STACK[0x21F8]) = (((v172 + v140) ^ v163) - (v172 + v140) + 2 * ((v172 + v140) & v163)) ^ v141;
  LODWORD(v105) = -737505385 * LODWORD(STACK[0x2108]) - 778879569;
  LODWORD(v109) = -737505385 * LODWORD(STACK[0x20E0]) - 778879569;
  v184 = -737505385 * LODWORD(STACK[0x2150]);
  LODWORD(v141) = v105 ^ (v139 - 778879569);
  LODWORD(v114) = v109 + v105;
  LODWORD(v105) = STACK[0x1EB0];
  LODWORD(STACK[0x2160]) = LODWORD(STACK[0x1EB0]) + v172;
  LODWORD(v82) = v105 + LODWORD(STACK[0x21D0]);
  v185 = LODWORD(STACK[0x21D8]) ^ LODWORD(STACK[0x21D0]);
  LODWORD(v105) = STACK[0x1EA8];
  LODWORD(STACK[0x21E0]) = LODWORD(STACK[0x21D8]) ^ LODWORD(STACK[0x1EA8]);
  LODWORD(STACK[0x20E0]) = v142 ^ v105;
  LODWORD(v140) = v142 - LODWORD(STACK[0x2090]);
  LODWORD(v57) = LODWORD(STACK[0x2178]) + LODWORD(STACK[0x2090]);
  LODWORD(v66) = STACK[0x20A8];
  LODWORD(STACK[0x2188]) = LODWORD(STACK[0x20A8]) + LODWORD(STACK[0x2178]);
  LODWORD(v105) = STACK[0x1F48];
  LODWORD(STACK[0x2178]) = v66 + LODWORD(STACK[0x1F48]);
  LODWORD(STACK[0x2130]) = v105 - v171;
  LODWORD(STACK[0x2098]) = v59 ^ v171;
  LODWORD(STACK[0x21D8]) = v104 ^ v59;
  LODWORD(v105) = v104 + LODWORD(STACK[0x2158]);
  LODWORD(v142) = STACK[0x2148];
  LODWORD(STACK[0x21D0]) = LODWORD(STACK[0x2148]) + LODWORD(STACK[0x2158]);
  LODWORD(v122) = LODWORD(STACK[0x1ED0]) ^ 0xF8826E8C;
  LODWORD(STACK[0x2010]) = v142 - v122;
  LODWORD(v142) = STACK[0x1E28];
  LODWORD(STACK[0x2090]) = LODWORD(STACK[0x1E28]) + v122;
  LODWORD(v146) = v142 ^ LODWORD(STACK[0x1EF8]);
  LODWORD(v142) = STACK[0x20B8];
  LODWORD(STACK[0x1FA0]) = LODWORD(STACK[0x20B8]) + LODWORD(STACK[0x1EF8]);
  LODWORD(v122) = STACK[0x22B0];
  LODWORD(STACK[0x2148]) = v142 + LODWORD(STACK[0x22B0]);
  LODWORD(STACK[0x22B0]) = v122 ^ v177;
  LODWORD(v122) = STACK[0x2000];
  LODWORD(STACK[0x20B8]) = LODWORD(STACK[0x2000]) + v177;
  LODWORD(STACK[0x2150]) = v122 - v58;
  LODWORD(STACK[0x2158]) = v58 + v181;
  LODWORD(v122) = STACK[0x1E80];
  LODWORD(STACK[0x1F80]) = v181 + LODWORD(STACK[0x1E80]);
  LODWORD(STACK[0x2078]) = v122 + v179;
  LODWORD(v122) = STACK[0x1E78];
  LODWORD(STACK[0x2058]) = v179 - LODWORD(STACK[0x1E78]);
  LODWORD(v142) = STACK[0x2068];
  LODWORD(STACK[0x21A0]) = v122 ^ LODWORD(STACK[0x2068]);
  LODWORD(v122) = STACK[0x1F20];
  LODWORD(STACK[0x21B8]) = v142 - LODWORD(STACK[0x1F20]);
  LODWORD(v142) = STACK[0x1FD8];
  LODWORD(STACK[0x1F50]) = LODWORD(STACK[0x1FD8]) ^ v122;
  LODWORD(v66) = STACK[0x2180];
  LODWORD(STACK[0x2068]) = v142 ^ LODWORD(STACK[0x2180]);
  LODWORD(v122) = STACK[0x2040];
  LODWORD(STACK[0x20A8]) = LODWORD(STACK[0x2040]) + v66;
  LODWORD(v66) = STACK[0x2060];
  LODWORD(STACK[0x1F08]) = v122 ^ LODWORD(STACK[0x2060]);
  v186 = v66 - v106;
  LODWORD(v122) = LODWORD(STACK[0x20F0]) - ((2 * LODWORD(STACK[0x20F0])) & 0xB5612F22);
  LODWORD(STACK[0x2040]) = v109 + LODWORD(STACK[0x20F0]);
  LODWORD(v66) = STACK[0x20D8];
  LODWORD(STACK[0x2120]) = LODWORD(STACK[0x20D8]) - v109;
  LODWORD(v142) = STACK[0x1F40];
  LODWORD(STACK[0x1FD8]) = LODWORD(STACK[0x1F40]) - v66;
  LODWORD(STACK[0x20A0]) = v184 - v142;
  LODWORD(v109) = v106 - LODWORD(STACK[0x1E70]);
  LODWORD(v142) = STACK[0x1FC8];
  LODWORD(STACK[0x1ED0]) = LODWORD(STACK[0x1FC8]) + LODWORD(STACK[0x1E70]);
  LODWORD(v66) = STACK[0x20B0];
  LODWORD(STACK[0x20F0]) = v142 + LODWORD(STACK[0x20B0]);
  LODWORD(v142) = STACK[0x1F70];
  LODWORD(STACK[0x2108]) = v66 - LODWORD(STACK[0x1F70]);
  LODWORD(STACK[0x1EF8]) = v69 ^ v142;
  v187 = LODWORD(STACK[0x20D0]) ^ v69;
  LODWORD(STACK[0x20D0]) ^= v174;
  v188 = v174 ^ LODWORD(STACK[0x2038]);
  LODWORD(v104) = STACK[0x1E18];
  LODWORD(STACK[0x2080]) = LODWORD(STACK[0x1E18]) ^ LODWORD(STACK[0x2038]);
  LODWORD(v66) = STACK[0x2048];
  LODWORD(STACK[0x1F98]) = LODWORD(STACK[0x2048]) ^ v184;
  v189 = STACK[0x1E08];
  LODWORD(STACK[0x2110]) = LODWORD(STACK[0x1E08]) + v66;
  LODWORD(v142) = STACK[0x2070];
  LODWORD(STACK[0x2060]) = v189 ^ LODWORD(STACK[0x2070]);
  LODWORD(v66) = STACK[0x2088];
  LODWORD(STACK[0x2048]) = v104 + LODWORD(STACK[0x2088]);
  LODWORD(STACK[0x2038]) = v66 + v142;
  LODWORD(v104) = LODWORD(STACK[0x1E00]) + 1521522577;
  LODWORD(STACK[0x20C0]) = v104 ^ (v122 + 1521522577);
  LODWORD(v69) = STACK[0x1E30];
  LODWORD(STACK[0x20B0]) = (LODWORD(STACK[0x1E30]) - ((2 * LODWORD(STACK[0x1E30])) & 0xB5612F22) + 1521522577) ^ v104;
  LODWORD(v139) = LODWORD(STACK[0x22C8]) ^ 0xAFE91BBD ^ LODWORD(STACK[0x22E0]);
  LODWORD(v66) = STACK[0x2170];
  LODWORD(STACK[0x2088]) = LODWORD(STACK[0x2170]) - v175;
  LODWORD(STACK[0x2170]) = v69 + v66;
  v190 = STACK[0x1EC0];
  LODWORD(v104) = STACK[0x21A8];
  LODWORD(STACK[0x1F48]) = LODWORD(STACK[0x21A8]) ^ (v175 - 693686471 - ((2 * v175) & 0xAD4E5E72));
  LODWORD(STACK[0x2000]) = (v104 ^ 0xD6A72F39) + v141;
  LODWORD(v106) = LODWORD(STACK[0x1FD0]) ^ v141;
  LODWORD(v69) = LODWORD(STACK[0x1FD0]) ^ LODWORD(STACK[0x1F78]);
  LODWORD(v59) = LODWORD(STACK[0x2140]) + LODWORD(STACK[0x1F78]);
  v191 = STACK[0x2250];
  LODWORD(v104) = STACK[0x1F88];
  LODWORD(STACK[0x1F78]) = (LODWORD(STACK[0x2140]) - 1754727102 - ((2 * LODWORD(STACK[0x2140])) & 0x2ED1FA84)) ^ LODWORD(STACK[0x1F88]);
  LODWORD(STACK[0x1F70]) = (v191 - 1754727102 - ((2 * v191) & 0x2ED1FA84)) ^ v104;
  v192 = v191 + v114;
  LODWORD(v104) = STACK[0x1F28];
  LODWORD(STACK[0x21A8]) = LODWORD(STACK[0x1F28]) ^ v114;
  LODWORD(v141) = STACK[0x20F8];
  LODWORD(STACK[0x2070]) = (v190 + 821265339 - ((2 * v190) & 0x61E70776)) ^ LODWORD(STACK[0x20F8]);
  v193 = v104 - LODWORD(STACK[0x2228]);
  LODWORD(v141) = LODWORD(STACK[0x2220]) - (v141 ^ 0x30F383BB);
  LODWORD(v122) = STACK[0x2200];
  v194 = LODWORD(STACK[0x2220]) ^ LODWORD(STACK[0x2200]);
  LODWORD(v104) = STACK[0x1F30];
  LODWORD(STACK[0x1F28]) = LODWORD(STACK[0x2228]) + LODWORD(STACK[0x1F30]);
  LODWORD(v114) = v104 - v122;
  LODWORD(STACK[0x1DC8]) = (v187 ^ v140) - 2 * (((v187 ^ v140) + 1895102368) & 0x4025309E ^ (v187 ^ v140) & 2) + 823797820;
  LODWORD(v104) = v190 - LODWORD(STACK[0x1F90]);
  LODWORD(STACK[0x1EE8]) = LODWORD(STACK[0x1F90]) - v139;
  LODWORD(v58) = LODWORD(STACK[0x2268]) + v139;
  v195 = STACK[0x2168];
  LODWORD(v140) = LODWORD(STACK[0x2268]) ^ LODWORD(STACK[0x2168]);
  LODWORD(STACK[0x1EA8]) = v140;
  v196 = STACK[0x1E10];
  LODWORD(STACK[0x1E28]) = v140 - LODWORD(STACK[0x1E10]) - ((2 * (v140 - LODWORD(STACK[0x1E10])) - 1351537206) & 0x97A116C6) - 1551293880;
  v197 = v183;
  LODWORD(STACK[0x20F8]) = (v183 ^ v57) - ((2 * (v183 ^ v57) - 76574476) & 0x9BD2BF0C) - 878630912;
  LODWORD(STACK[0x2140]) = v82 + v57;
  LODWORD(v142) = STACK[0x20E8];
  LODWORD(STACK[0x1EB0]) = v82 - LODWORD(STACK[0x20E8]) - ((2 * (v82 - LODWORD(STACK[0x20E8])) - 53430680) & 0x9E938A92) - 843964291;
  LODWORD(STACK[0x2268]) = v58 ^ v142;
  LODWORD(STACK[0x1E30]) = v58 + v146 - ((2 * (v58 + v146) - 520473122) & 0xF104DD18) - 385906309;
  LODWORD(STACK[0x1F88]) = v187 ^ v105;
  LODWORD(STACK[0x1F20]) = v59 ^ v105;
  LODWORD(STACK[0x20E8]) = (v141 ^ v59) - 967480622;
  LODWORD(STACK[0x1E80]) = v104 + v146;
  LODWORD(STACK[0x1FD0]) = v104 - v193;
  LODWORD(STACK[0x1FC8]) = v193 - v106;
  LODWORD(v105) = STACK[0x2230];
  LODWORD(STACK[0x2220]) = LODWORD(STACK[0x2230]) + v106;
  LODWORD(v66) = STACK[0x2128];
  LODWORD(STACK[0x1F90]) = v105 ^ LODWORD(STACK[0x2128]);
  LODWORD(STACK[0x20D8]) = LODWORD(STACK[0x22B0]) + 1932734440 + v66;
  LODWORD(v142) = STACK[0x1F08];
  LODWORD(STACK[0x2250]) = v141 + LODWORD(STACK[0x1F08]) - 2007523960;
  LODWORD(v122) = LODWORD(STACK[0x2298]) + v195;
  LODWORD(v104) = STACK[0x22B8];
  LODWORD(v140) = LODWORD(STACK[0x2298]) - LODWORD(STACK[0x22B8]);
  v198 = STACK[0x1F50];
  LODWORD(STACK[0x22C8]) = LODWORD(STACK[0x1F50]) + 1469258046 + v188;
  LODWORD(STACK[0x1D30]) = v188 + v140;
  LODWORD(v105) = STACK[0x2130];
  LODWORD(STACK[0x2180]) = v140 ^ LODWORD(STACK[0x2130]);
  LODWORD(v140) = STACK[0x1FA0];
  LODWORD(STACK[0x1D38]) = LODWORD(STACK[0x1FA0]) + v105;
  LODWORD(STACK[0x1F40]) = v140 + v186;
  LODWORD(v140) = STACK[0x2248];
  LODWORD(STACK[0x1DE8]) = LODWORD(STACK[0x2248]) + v186;
  LODWORD(v105) = STACK[0x1F80];
  LODWORD(STACK[0x2298]) = v140 + LODWORD(STACK[0x1F80]);
  LODWORD(v140) = v185 - v105;
  LODWORD(STACK[0x2248]) = v109 - v185;
  LODWORD(v66) = STACK[0x1EF8];
  LODWORD(STACK[0x2168]) = v109 + 2093241588 + LODWORD(STACK[0x1EF8]);
  v199 = STACK[0x2010];
  LODWORD(v146) = (v199 ^ v66) - ((2 * (v199 ^ v66) + 1544189032) & 0x61E70776) + 519618031;
  LODWORD(STACK[0x2128]) = v146;
  LODWORD(v105) = v104 - LODWORD(STACK[0x21F0]);
  LODWORD(v141) = STACK[0x22A0];
  LODWORD(v109) = LODWORD(STACK[0x22A0]) ^ LODWORD(STACK[0x21F0]);
  LODWORD(v104) = STACK[0x2280];
  v200 = v194;
  v201 = v114 + v194 + 1606483086;
  LODWORD(STACK[0x2130]) = v201;
  LODWORD(STACK[0x1FA0]) = (v141 - v104) ^ v114;
  LODWORD(v66) = STACK[0x2058];
  LODWORD(STACK[0x1EC0]) = (v141 - v104) ^ LODWORD(STACK[0x2058]);
  LODWORD(STACK[0x2230]) = v66 - v69;
  LODWORD(v66) = STACK[0x2160];
  LODWORD(v139) = v69 - LODWORD(STACK[0x2160]);
  LODWORD(STACK[0x1E88]) = v139;
  LODWORD(v141) = STACK[0x20E0];
  LODWORD(STACK[0x1D80]) = LODWORD(STACK[0x20E0]) + v66;
  LODWORD(v66) = STACK[0x1ED0];
  LODWORD(STACK[0x2058]) = v141 ^ LODWORD(STACK[0x1ED0]);
  LODWORD(v141) = STACK[0x2098];
  LODWORD(STACK[0x1D70]) = v66 + LODWORD(STACK[0x2098]);
  LODWORD(v66) = STACK[0x2258];
  LODWORD(STACK[0x1E78]) = LODWORD(STACK[0x2258]) ^ v141;
  LODWORD(v141) = STACK[0x1FD8];
  LODWORD(STACK[0x1CF8]) = LODWORD(STACK[0x1FD8]) + v66;
  LODWORD(v66) = STACK[0x2090];
  LODWORD(STACK[0x22E0]) = v141 + LODWORD(STACK[0x2090]);
  LODWORD(v141) = STACK[0x2068];
  LODWORD(STACK[0x2098]) = v66 - LODWORD(STACK[0x2068]);
  LODWORD(STACK[0x1D98]) = v122 ^ v141;
  v202 = STACK[0x1F98];
  LODWORD(v141) = STACK[0x2040];
  LODWORD(STACK[0x1F30]) = LODWORD(STACK[0x1F98]) - 1537716304 + LODWORD(STACK[0x2040]);
  LODWORD(v66) = STACK[0x2270];
  LODWORD(v106) = LODWORD(STACK[0x2270]) + v141;
  LODWORD(STACK[0x2068]) = v106;
  LODWORD(v141) = STACK[0x2038];
  LODWORD(STACK[0x1D10]) = LODWORD(STACK[0x2038]) - v66;
  LODWORD(STACK[0x2160]) = v141 + v104;
  LODWORD(STACK[0x2200]) = v104 - 1850706004 + v122;
  LODWORD(STACK[0x20E0]) = v198 + v192;
  LODWORD(v122) = STACK[0x2078];
  LODWORD(STACK[0x2258]) = v192 + LODWORD(STACK[0x2078]);
  LODWORD(STACK[0x2270]) = v122 + 1019125118 + v109;
  LODWORD(v66) = STACK[0x21E8];
  LODWORD(STACK[0x1CF0]) = v109 ^ LODWORD(STACK[0x21E8]);
  LODWORD(v122) = STACK[0x20B8];
  LODWORD(STACK[0x1D20]) = LODWORD(STACK[0x20B8]) + v66;
  LODWORD(STACK[0x20B8]) = v122 ^ v105;
  LODWORD(v66) = STACK[0x21C8];
  LODWORD(STACK[0x1D90]) = v105 - LODWORD(STACK[0x21C8]);
  LODWORD(v105) = STACK[0x2048];
  LODWORD(STACK[0x1D78]) = v66 - LODWORD(STACK[0x2048]);
  LODWORD(v66) = STACK[0x1F48];
  LODWORD(STACK[0x1F50]) = v105 + LODWORD(STACK[0x1F48]);
  LODWORD(v122) = STACK[0x2060];
  LODWORD(v69) = v66 + LODWORD(STACK[0x2060]) - 1703157173;
  LODWORD(STACK[0x22A0]) = v69;
  v203 = v140 - ((2 * v140 + 1942462878) & 0xBC317DBA) - 1745055828;
  LODWORD(STACK[0x2228]) = v203;
  LODWORD(v140) = STACK[0x2088];
  LODWORD(STACK[0x1F48]) = v200 ^ LODWORD(STACK[0x2088]);
  v204 = LODWORD(STACK[0x20A8]) + v140;
  LODWORD(v140) = STACK[0x2178];
  LODWORD(STACK[0x1D60]) = LODWORD(STACK[0x20A8]) ^ LODWORD(STACK[0x2178]);
  v205 = LODWORD(STACK[0x1F78]) - v140;
  LODWORD(v66) = STACK[0x1F70];
  LODWORD(STACK[0x1D08]) = LODWORD(STACK[0x1F70]) - LODWORD(STACK[0x1F78]);
  LODWORD(v140) = STACK[0x2148];
  LODWORD(v104) = LODWORD(STACK[0x2148]) - v66;
  LODWORD(STACK[0x2038]) = v104;
  LODWORD(v66) = STACK[0x1F28];
  LODWORD(STACK[0x1CE4]) = LODWORD(STACK[0x1F28]) - v140;
  LODWORD(v105) = STACK[0x2080];
  LODWORD(STACK[0x1D88]) = LODWORD(STACK[0x2080]) - v66;
  LODWORD(v140) = STACK[0x2188];
  LODWORD(STACK[0x2280]) = v105 ^ LODWORD(STACK[0x2188]);
  v206 = LODWORD(STACK[0x2000]) - v140;
  LODWORD(v140) = STACK[0x2150];
  v207 = LODWORD(STACK[0x2150]) ^ LODWORD(STACK[0x2000]);
  LODWORD(STACK[0x2148]) = v207;
  LODWORD(v105) = STACK[0x20A0];
  LODWORD(STACK[0x1CE8]) = LODWORD(STACK[0x20A0]) - v140;
  LODWORD(v57) = LODWORD(STACK[0x2158]) - v105;
  v208 = LODWORD(STACK[0x2158]) + v122 + 2133241869;
  LODWORD(STACK[0x2188]) = v208;
  LODWORD(v66) = STACK[0x20F0];
  v209 = LODWORD(STACK[0x20F0]) ^ v197;
  LODWORD(v140) = STACK[0x20D0];
  LODWORD(STACK[0x1D40]) = LODWORD(STACK[0x20D0]) + v196;
  LODWORD(v105) = STACK[0x2108];
  LODWORD(STACK[0x1D68]) = v140 ^ LODWORD(STACK[0x2108]);
  LODWORD(v140) = STACK[0x2240];
  LODWORD(v59) = v105 - LODWORD(STACK[0x2240]);
  LODWORD(STACK[0x1D18]) = v59;
  LODWORD(v141) = v140 + v66 - 115108809;
  LODWORD(STACK[0x1DB8]) = v141;
  LODWORD(v140) = STACK[0x20B0];
  LODWORD(STACK[0x2240]) = v142 ^ LODWORD(STACK[0x20B0]);
  LODWORD(v105) = STACK[0x2070];
  LODWORD(STACK[0x1D58]) = LODWORD(STACK[0x2070]) + v140;
  LODWORD(v140) = STACK[0x21D0];
  LODWORD(STACK[0x1D48]) = v105 ^ LODWORD(STACK[0x21D0]);
  LODWORD(v105) = STACK[0x2120];
  LODWORD(STACK[0x21E8]) = v140 ^ LODWORD(STACK[0x2120]);
  LODWORD(v66) = STACK[0x21A8];
  LODWORD(STACK[0x2150]) = v105 - LODWORD(STACK[0x21A8]);
  LODWORD(v140) = STACK[0x21E0];
  LODWORD(STACK[0x1F28]) = v66 - LODWORD(STACK[0x21E0]);
  LODWORD(v66) = v140 ^ 0xCB143F09 ^ v199;
  LODWORD(STACK[0x21C8]) = v66;
  LODWORD(v140) = STACK[0x2110];
  LODWORD(STACK[0x21F0]) = LODWORD(STACK[0x1EA8]) ^ LODWORD(STACK[0x2110]);
  LODWORD(v105) = STACK[0x20C0];
  LODWORD(v82) = v140 + LODWORD(STACK[0x20C0]);
  LODWORD(STACK[0x1D50]) = v82;
  LODWORD(v140) = STACK[0x2260];
  LODWORD(v114) = LODWORD(STACK[0x2260]) - v105;
  LODWORD(v105) = STACK[0x21A0];
  v210 = LODWORD(STACK[0x21A0]) ^ v202;
  LODWORD(STACK[0x1D28]) = v210;
  LODWORD(v122) = STACK[0x1EE8];
  v211 = v105 ^ LODWORD(STACK[0x1EE8]);
  LODWORD(STACK[0x21E0]) = v211;
  LODWORD(v105) = STACK[0x22A8];
  v212 = v122 - LODWORD(STACK[0x22A8]);
  LODWORD(STACK[0x1D00]) = v212;
  LODWORD(v122) = v105 - LODWORD(STACK[0x21F8]);
  LODWORD(v142) = LODWORD(STACK[0x21F8]) ^ LODWORD(STACK[0x21D8]);
  LODWORD(v105) = LODWORD(STACK[0x21D8]) - LODWORD(STACK[0x2290]);
  v213 = STACK[0x2170];
  LODWORD(STACK[0x22A8]) = LODWORD(STACK[0x2290]) - LODWORD(STACK[0x2170]);
  LODWORD(v58) = v213 + LODWORD(STACK[0x21B8]);
  LODWORD(v109) = LODWORD(STACK[0x21B8]) - 397259857 + v140;
  LODWORD(STACK[0x1DA0]) = v109;
  LODWORD(STACK[0x2158]) = v204 ^ 0x2FE19DD5;
  LODWORD(STACK[0x1E70]) = LODWORD(STACK[0x1E80]) ^ 0xD545681E;
  LODWORD(STACK[0x1C78]) = v122;
  LODWORD(v122) = v122 + 1474924459;
  LODWORD(STACK[0x1CE0]) = v122;
  LODWORD(STACK[0x1C98]) = v105;
  LODWORD(STACK[0x20C0]) = v105 + 134340968;
  v214 = ((v105 + 134340968) ^ v201 ^ v122) + 821265339 - ((2 * ((v105 + 134340968) ^ v201 ^ v122)) & 0x61E70776);
  v215 = (LODWORD(STACK[0x2248]) - 1469370646);
  STACK[0x1FD8] = v215;
  LODWORD(STACK[0x22B8]) = v104 + 824240919;
  v216 = (v106 + 1257114655) ^ v215 ^ v109 ^ (v104 + 824240919) ^ v141 ^ LODWORD(STACK[0x2220]);
  LODWORD(STACK[0x21D0]) = v142 + 1867428727;
  LODWORD(v140) = LODWORD(STACK[0x20E0]) ^ 0x909749B8;
  LODWORD(STACK[0x20B0]) = v140;
  LODWORD(STACK[0x2290]) = v207 - 142202080;
  LODWORD(v142) = v216 ^ v140 ^ v69 ^ (v207 - 142202080) ^ (v142 + 1867428727) ^ v66 ^ v146;
  LODWORD(v140) = LODWORD(STACK[0x1FC8]) + 775234327;
  LODWORD(STACK[0x2108]) = v140;
  LODWORD(STACK[0x21B8]) = -606564050;
  LODWORD(v142) = v208 ^ v203 ^ ((v142 ^ v140 ^ v214 ^ 0xDBD8912E) - 568803619 - ((2 * (v142 ^ v140 ^ v214 ^ 0xDBD8912E)) & 0xBC317DBA));
  v217 = LODWORD(STACK[0x2268]) - 1957079364;
  LODWORD(STACK[0x2170]) = v210 ^ 0xAFE91BBD;
  LODWORD(v140) = LODWORD(STACK[0x2298]) ^ 0xEF6ED429;
  LODWORD(STACK[0x20E0]) = v140;
  v218 = v140 ^ v210 ^ 0xAFE91BBD ^ v139 ^ v217;
  LODWORD(v140) = LODWORD(STACK[0x1F88]) + 2096229667;
  LODWORD(STACK[0x2298]) = v140;
  LODWORD(v142) = v218 ^ v140 ^ (v142 - 1343677507 - ((2 * v142) & 0x5FD2377A));
  v219 = v142 - ((2 * v142) & 0xB5612F22);
  LODWORD(STACK[0x2260]) = v57 ^ 0x7C902DE8;
  LODWORD(STACK[0x21F8]) = (v57 ^ 0x7C902DE8) - 125669748 - 2 * ((v57 ^ 0x7C902DE8) & 0x78826E8D ^ v57 & 1);
  LODWORD(v215) = LODWORD(STACK[0x20B8]) + 1892310925;
  LODWORD(STACK[0x1EE8]) = v215;
  v220 = (LODWORD(STACK[0x1D20]) - 2047599152);
  LODWORD(v142) = LODWORD(STACK[0x1F30]) ^ v215 ^ v220 ^ v59;
  LODWORD(v215) = LODWORD(STACK[0x1D38]) + 1290652205;
  LODWORD(STACK[0x2088]) = v215;
  v221 = LODWORD(STACK[0x2168]) ^ v212 ^ v215;
  LODWORD(v140) = LODWORD(STACK[0x1F40]) - 790619550;
  LODWORD(STACK[0x1CA0]) = v140;
  LODWORD(v215) = LODWORD(STACK[0x1F20]) - 483114046;
  LODWORD(STACK[0x2010]) = v215;
  LODWORD(STACK[0x1C80]) = v206;
  LODWORD(STACK[0x1E18]) = v206 + 776636435;
  LODWORD(STACK[0x1C70]) = v205;
  LODWORD(STACK[0x2080]) = v205 - 1515002789;
  v222 = STACK[0x2198];
  LODWORD(STACK[0x1F08]) = LODWORD(STACK[0x2198]) - 1447289169;
  LODWORD(v142) = v142 ^ v221 ^ v140 ^ (v206 + 776636435) ^ v215 ^ (v205 - 1515002789) ^ (v222 - 1447289169);
  v223 = STACK[0x1E78];
  LODWORD(v140) = LODWORD(STACK[0x1CE4]) + 1969936285;
  LODWORD(STACK[0x1F80]) = v140;
  LODWORD(v142) = v142 ^ v223 ^ (v211 - 1274778126) ^ v140 ^ LODWORD(STACK[0x20D8]);
  LODWORD(STACK[0x1C90]) = v114;
  v224 = v114 - 1018900343;
  LODWORD(v142) = v142 ^ LODWORD(STACK[0x2258]) ^ LODWORD(STACK[0x22E0]) ^ (v114 - 1018900343);
  v225 = LODWORD(STACK[0x1CF8]) + 2038160456;
  v226 = (LODWORD(STACK[0x1D08]) + 1497626615);
  STACK[0x20D0] = v226;
  v227 = v225 ^ v226 ^ LODWORD(STACK[0x1F90]) ^ LODWORD(STACK[0x2230]);
  LODWORD(STACK[0x1C50]) = v209;
  LODWORD(STACK[0x2178]) = v209 - 1721212952;
  LODWORD(v142) = v142 ^ v227 ^ (v209 - 1721212952);
  v228 = LODWORD(STACK[0x22A8]) - 1971322087;
  LODWORD(v226) = LODWORD(STACK[0x1F48]) - 1566268119;
  LODWORD(v57) = STACK[0x1D70];
  LODWORD(STACK[0x1C88]) = v58;
  v229 = v58 + 1898879354;
  LODWORD(STACK[0x1EF8]) = v57 - 1437647700;
  LODWORD(STACK[0x21A0]) = v226;
  LODWORD(v66) = (v57 - 1437647700) ^ v226 ^ (v58 + 1898879354) ^ v228 ^ LODWORD(STACK[0x20E8]) ^ v82;
  LODWORD(v226) = LODWORD(STACK[0x1CE8]) + 96865005;
  LODWORD(STACK[0x1CD8]) = v226;
  LODWORD(v66) = v142 ^ v66 ^ v226 ^ LODWORD(STACK[0x21E8]);
  LODWORD(v69) = STACK[0x2240];
  LODWORD(v142) = LODWORD(STACK[0x2250]) ^ LODWORD(STACK[0x2240]) ^ LODWORD(STACK[0x2200]) ^ LODWORD(STACK[0x2180]);
  LODWORD(v226) = LODWORD(STACK[0x1D60]) - 1743889709;
  LODWORD(STACK[0x1DB0]) = v226;
  LODWORD(v142) = v142 ^ v226;
  LODWORD(v226) = LODWORD(STACK[0x1D90]) + 807633568;
  LODWORD(STACK[0x1DD0]) = v226;
  LODWORD(v66) = v66 ^ v142 ^ v226;
  LODWORD(v215) = STACK[0x1FD0];
  LODWORD(STACK[0x1EA8]) = LODWORD(STACK[0x1FD0]) ^ 0x91937F9D;
  LODWORD(v114) = LODWORD(STACK[0x1D98]) + 1352297364;
  LODWORD(v82) = LODWORD(STACK[0x1DE8]) + 191030275;
  v230 = LODWORD(STACK[0x1D48]) - 848549171;
  LODWORD(v142) = v82 ^ v114 ^ LODWORD(STACK[0x22C8]) ^ v230;
  LODWORD(v59) = STACK[0x1D58];
  LODWORD(STACK[0x1CB8]) = LODWORD(STACK[0x1D58]) + 485219456;
  LODWORD(v226) = LODWORD(STACK[0x1D30]) + 1587058496;
  LODWORD(STACK[0x1E80]) = v226;
  LODWORD(v66) = v66 ^ v142 ^ (v59 + 485219456) ^ v226 ^ LODWORD(STACK[0x2140]) ^ LODWORD(STACK[0x2160]) ^ v215;
  LODWORD(v109) = LODWORD(STACK[0x2058]) - 1957450817;
  v231 = (LODWORD(STACK[0x1D10]) - 520372085);
  STACK[0x2120] = v231;
  LODWORD(v106) = LODWORD(STACK[0x1D80]) + 1181858190;
  LODWORD(v141) = LODWORD(STACK[0x1F28]) - 2008393531;
  LODWORD(STACK[0x2090]) = v141;
  v232 = STACK[0x2150];
  LODWORD(STACK[0x20F0]) = LODWORD(STACK[0x2150]) + 1540087193;
  LODWORD(v58) = LODWORD(STACK[0x1D78]) + 1663189474;
  LODWORD(v142) = v231 ^ v141 ^ v106 ^ (v232 + 1540087193) ^ v109 ^ LODWORD(STACK[0x21F0]) ^ v58;
  LODWORD(v226) = LODWORD(STACK[0x1F50]) + 323118334;
  LODWORD(STACK[0x1CC8]) = v226;
  LODWORD(v231) = STACK[0x1D88];
  v233 = (LODWORD(STACK[0x1D88]) - 989129669);
  STACK[0x2070] = v233;
  LODWORD(v142) = v142 ^ v226 ^ v233;
  LODWORD(v233) = LODWORD(STACK[0x2280]) - 2035667247;
  LODWORD(STACK[0x1DC0]) = v233;
  LODWORD(v66) = v66 ^ v142 ^ v233 ^ LODWORD(STACK[0x2270]);
  LODWORD(v122) = LODWORD(STACK[0x1FA0]) - 1108705055;
  LODWORD(STACK[0x2000]) = v122;
  v234 = LODWORD(STACK[0x1D68]) - 953586120;
  LODWORD(v139) = LODWORD(STACK[0x1D40]) ^ 0xB138DFAB;
  v235 = STACK[0x1EC0];
  LODWORD(STACK[0x1ED0]) = LODWORD(STACK[0x1EC0]) + 21026845;
  LODWORD(v142) = v139 ^ v234 ^ v122 ^ (v235 + 21026845);
  LODWORD(v122) = STACK[0x1CF0];
  v236 = (LODWORD(STACK[0x1CF0]) - 1613028915);
  STACK[0x20B8] = v236;
  LODWORD(v66) = v66 ^ v142 ^ v236 ^ 0x5AB09791 ^ (v219 + 1521522577);
  v237 = LODWORD(STACK[0x2098]) + 1191827488;
  LODWORD(v142) = LODWORD(STACK[0x1EB0]) ^ v237 ^ (v66 - ((2 * v66) & 0x9E938A92) - 817248951);
  v238 = (v222 ^ LODWORD(STACK[0x22B0])) + 941621561;
  LODWORD(v66) = LODWORD(STACK[0x21F8]) ^ v238 ^ LODWORD(STACK[0x2158]) ^ LODWORD(STACK[0x1E30]) ^ v142;
  LODWORD(v233) = STACK[0x20F8];
  LODWORD(v66) = (v66 - 840343674 - ((2 * v66) & 0x9BD2BF0C)) ^ LODWORD(STACK[0x20F8]);
  LODWORD(v69) = v69 ^ 0xB35137F1;
  v239 = (v57 - 229887233 - v231 + v122);
  LODWORD(STACK[0x1FA0]) = v69;
  LODWORD(STACK[0x22A8]) = v238;
  STACK[0x2058] = v239;
  LODWORD(STACK[0x21F8]) = v229;
  v240 = (v238 - v69 + v239) ^ v229;
  LODWORD(v239) = LODWORD(STACK[0x1D28]) ^ 0x125B9DE0;
  LODWORD(STACK[0x2060]) = v239;
  LODWORD(v236) = (v223 ^ 0xB1D37777) + v239 + v240 + 1;
  STACK[0x2240] = v220;
  v241 = LODWORD(STACK[0x1DA0]) ^ v220;
  LODWORD(STACK[0x2040]) = v225;
  LODWORD(v239) = STACK[0x2068];
  LODWORD(STACK[0x21A8]) = LODWORD(STACK[0x2068]) - 1961195768;
  v242 = STACK[0x1FF8];
  LODWORD(STACK[0x1FD0]) = v109;
  LODWORD(v236) = v239 - v59 - v232 + v109 + LODWORD(STACK[0x2298]) - 768191994 + (v241 ^ v225 ^ v236);
  v243 = v142 ^ 0x230A0070;
  v244 = LODWORD(STACK[0x1E88]) ^ 0xB71CE4D1;
  LODWORD(v122) = LODWORD(STACK[0x2230]) ^ 0x68693AE3;
  LODWORD(v231) = LODWORD(STACK[0x1F48]) - LODWORD(STACK[0x21E0]);
  LODWORD(v239) = LODWORD(STACK[0x22E0]) ^ 0x3CDFB4A7;
  LODWORD(STACK[0x2098]) = v239;
  LODWORD(STACK[0x1F98]) = v244;
  LODWORD(STACK[0x2068]) = v122;
  LODWORD(STACK[0x2110]) = v224;
  LODWORD(v231) = ((v231 - v239 + v122 + v244 - v235 - 312516838 + (v236 ^ v224)) ^ LODWORD(STACK[0x2080])) - LODWORD(STACK[0x2250]);
  LODWORD(STACK[0x1CD0]) = v114;
  LODWORD(STACK[0x20A8]) = v231 ^ v114;
  LODWORD(v231) = v231 ^ v114 ^ LODWORD(STACK[0x2200]);
  LODWORD(STACK[0x1C60]) = v228;
  LODWORD(STACK[0x1C9C]) = v106;
  LODWORD(v231) = LODWORD(STACK[0x20E8]) - (LODWORD(STACK[0x2140]) ^ 0x146EF265) + ((((v228 + (v233 ^ 0xCDE95F86) + v231) ^ v106) + LODWORD(STACK[0x1CE0])) ^ LODWORD(STACK[0x22A0]));
  LODWORD(v109) = STACK[0x2258];
  v245 = STACK[0x1D50];
  LODWORD(v122) = LODWORD(STACK[0x2010]) + (LODWORD(STACK[0x2258]) ^ 0x60ABCD70) + LODWORD(STACK[0x20C0]) + (LODWORD(STACK[0x1D50]) ^ 0xA63AE092) + (LODWORD(STACK[0x2128]) ^ 0x30F383BB);
  LODWORD(STACK[0x21D8]) = v230;
  v246 = v231 ^ v230;
  LODWORD(v239) = LODWORD(STACK[0x2180]) ^ 0x239E33CD;
  LODWORD(STACK[0x1E78]) = v239;
  LODWORD(v231) = v239 ^ LODWORD(STACK[0x1EA8]) ^ LODWORD(STACK[0x1DB8]);
  STACK[0x20A0] = v246;
  LODWORD(v231) = (v122 + (v231 ^ v246) + 2) ^ LODWORD(STACK[0x2260]);
  LODWORD(STACK[0x1CC0]) = v58;
  LODWORD(v239) = v231 - v58 + 285624746 - ((2 * (v231 - v58)) & 0x220C9354);
  LODWORD(v122) = LODWORD(STACK[0x21E8]) ^ 0x5CA486F;
  LODWORD(STACK[0x21E8]) = v239;
  LODWORD(STACK[0x1E88]) = v122;
  LODWORD(v239) = (v239 ^ 0x110649AA) + v122;
  LODWORD(STACK[0x21E0]) = v239;
  LODWORD(v231) = v239 + LODWORD(STACK[0x2188]);
  LODWORD(STACK[0x1F78]) = v237;
  LODWORD(STACK[0x2048]) = v231 ^ v237;
  LODWORD(STACK[0x1C68]) = v82;
  LODWORD(v231) = (((v231 ^ v237) + v82) ^ LODWORD(STACK[0x2000])) + LODWORD(STACK[0x1E18]);
  LODWORD(v246) = STACK[0x1D00];
  LODWORD(v231) = (LODWORD(STACK[0x1D00]) ^ 0xF88A66C7) - LODWORD(STACK[0x20E0]) - LODWORD(STACK[0x2158]) + ((v231 - 125669748 - ((2 * v231) & 0xF104DD18)) ^ LODWORD(STACK[0x1E30]));
  LODWORD(v122) = LODWORD(STACK[0x2220]) ^ 0xE629DBF6;
  LODWORD(STACK[0x2000]) = v234;
  LODWORD(v231) = v122 + 2035667247 + LODWORD(STACK[0x1DB0]) + STACK[0x2120] - LODWORD(STACK[0x2280]) + (v231 ^ v234);
  LODWORD(v122) = LODWORD(STACK[0x21F0]) ^ 0x452A8C8A;
  LODWORD(v239) = v231 ^ LODWORD(STACK[0x1F80]);
  LODWORD(v231) = LODWORD(STACK[0x20B0]) + 2008393531 + LODWORD(STACK[0x1DD0]) - LODWORD(STACK[0x1F28]);
  LODWORD(STACK[0x1F70]) = v239;
  LODWORD(STACK[0x1C58]) = v122;
  v247 = __ROR4__(__ROR4__((LODWORD(STACK[0x2168]) + LODWORD(STACK[0x1E80]) + LODWORD(STACK[0x2178]) + (LODWORD(STACK[0x1EB0]) ^ 0x30B63AB6) + ((v231 + (v239 ^ v122)) ^ LODWORD(STACK[0x21D0])) + 1) ^ LODWORD(STACK[0x22C8]), 25) ^ 0x47C56444, 7);
  LODWORD(v231) = LODWORD(STACK[0x2088]) - 775234327 - LODWORD(STACK[0x20D8]);
  LODWORD(v122) = LODWORD(STACK[0x1F90]) ^ 0x6908C157;
  LODWORD(STACK[0x22B0]) = v122;
  LODWORD(v239) = ((v231 + v122 - LODWORD(STACK[0x1FC8]) + (v247 ^ 0x888F8AC8)) ^ STACK[0x20D0]) + LODWORD(STACK[0x1CD8]);
  LODWORD(v239) = -1547268382 - LODWORD(STACK[0x1F40]) - LODWORD(STACK[0x2268]) + ((v239 - 568803619 - ((2 * v239) & 0xBC317DBA)) ^ LODWORD(STACK[0x2228]));
  LODWORD(v122) = LODWORD(STACK[0x1D18]) ^ 0x950B5B63;
  LODWORD(STACK[0x2150]) = v122;
  LODWORD(v239) = 1948411754 - v122 - LODWORD(STACK[0x2198]) + LODWORD(STACK[0x2038]) - LODWORD(STACK[0x1F50]) + (v239 ^ LODWORD(STACK[0x21C8]));
  LODWORD(STACK[0x2188]) = v239;
  LODWORD(STACK[0x2078]) = v139;
  LODWORD(v231) = (v239 ^ v139) - LODWORD(STACK[0x2130]) + LODWORD(STACK[0x1EE8]);
  LODWORD(v239) = LODWORD(STACK[0x2248]) + LODWORD(STACK[0x1F30]) + LODWORD(STACK[0x2148]);
  LODWORD(STACK[0x2148]) = v231;
  LODWORD(v231) = v231 ^ LODWORD(STACK[0x2270]);
  LODWORD(v122) = LODWORD(STACK[0x2160]) ^ 0xED34384B;
  LODWORD(STACK[0x21D0]) = v122;
  LODWORD(STACK[0x1DE0]) = v231 - (v239 + v122) + 1611572726;
  LODWORD(STACK[0x1E08]) = LODWORD(STACK[0x1DC8]) ^ 0x900AF617 ^ (v66 + 1076179100 - ((2 * v66) & 0x804A6138));
  LODWORD(v231) = STACK[0x2100];
  LODWORD(STACK[0x2250]) = LODWORD(STACK[0x2100]) ^ 0xB1418A7A;
  LODWORD(STACK[0x1E10]) = (v231 ^ 0x4454B48D) - ((2 * (v231 ^ 0x4454B48D) + 369225020) & 0x829D9326) - 867188687;
  LODWORD(v233) = 3 * LODWORD(STACK[0x2138]);
  LODWORD(STACK[0x1EC0]) = STACK[0x2238] ^ 0xC2FF22D2;
  LODWORD(v66) = STACK[0x21B0];
  LODWORD(STACK[0x2038]) = LODWORD(STACK[0x21B0]) + 1060543428 + v233;
  LODWORD(v236) = STACK[0x1EB8];
  LODWORD(STACK[0x1F20]) = LODWORD(STACK[0x1EB8]) ^ 0x3DC1BB7C;
  LODWORD(STACK[0x2268]) = LODWORD(STACK[0x1DF0]) ^ 0x23B9588A;
  LODWORD(STACK[0x2270]) = v109 ^ 0x49F31DB6;
  LODWORD(STACK[0x1E00]) = v246 ^ 0x168F928D;
  LODWORD(STACK[0x1EE8]) = v245 ^ 0xD04150E3;
  LODWORD(STACK[0x2100]) = LODWORD(STACK[0x20C8]) ^ 0x6D086AD8;
  LODWORD(v246) = LODWORD(STACK[0x1F18]) ^ 0x16;
  STACK[0x2138] = v66;
  STACK[0x21F0] = v236;
  LODWORD(STACK[0x1EB8]) = 1105473985;
  LODWORD(STACK[0x2220]) = 157761015;
  v248 = LODWORD(STACK[0x22C0]) ^ 0x1E20A285u;
  STACK[0x21B0] = LODWORD(STACK[0x2288]) ^ 0xDA224EA6;
  v249 = STACK[0x638];
  STACK[0x2200] = v248;
  LODWORD(STACK[0x2248]) = v233 - 1631;
  v250 = v242 ^ ((v242 & STACK[0x2100]) >> 1);
  LODWORD(v250) = ((v250 & v246) >> STACK[0x2138]) + (v250 << STACK[0x21F0]);
  LODWORD(v250) = (v250 + 187617381 - ((2 * v250) & 0xCA)) ^ LODWORD(STACK[0x1E20]);
  LODWORD(v122) = *(*(&off_279CA5FD0 + v233 - 3853) + (v242 ^ 0x76) - 2) ^ v242 ^ (((v233 - 1631) ^ 0x202) - 1310733103);
  LODWORD(v66) = ((((v122 ^ ((v122 & STACK[0x2100]) >> 1)) & v248) << STACK[0x2190]) + (((v122 ^ ((v122 & STACK[0x2100]) >> 1)) & STACK[0x21B0]) >> STACK[0x2238])) ^ LODWORD(STACK[0x21C0]);
  LODWORD(STACK[0x22C8]) = v66;
  *(v249 + 4 * ((v250 + 71 - ((2 * v250) & 0x8E)) ^ 0x47u)) = v66;
  LODWORD(STACK[0x2230]) = *(*(&off_279CA5FD0 + v233 - 3778) + (v242 ^ 0x6B) - 2) ^ 0xA324 ^ LODWORD(STACK[0x2250]);
  return (*(STACK[0x22F8] + 8 * (v233 ^ 0xA)))(v243);
}

uint64_t sub_26AA49FF0(int a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, unint64_t a50)
{
  LODWORD(STACK[0x2030]) = v50;
  STACK[0x2050] = a4;
  LODWORD(STACK[0x2028]) = v54;
  LODWORD(STACK[0x2118]) = v52;
  LODWORD(STACK[0x1DE8]) = a3;
  LODWORD(STACK[0x1FF8]) = v53;
  LODWORD(STACK[0x1EE0]) = 920046360;
  LODWORD(STACK[0x2258]) = 0;
  LODWORD(STACK[0x2280]) = -1962871138;
  STACK[0x1DD0] = a50;
  LODWORD(STACK[0x1DF0]) = 321195147;
  STACK[0x2100] = LODWORD(STACK[0x22C8]);
  v56 = STACK[0x21F8];
  v57 = STACK[0x2168];
  v58 = STACK[0x2110];
  v59 = STACK[0x2150];
  v60 = STACK[0x21D0];
  v61 = STACK[0x2148];
  v62 = STACK[0x2160];
  v63 = STACK[0x20E8];
  v64 = STACK[0x2108];
  v65 = STACK[0x20D0];
  v66 = STACK[0x2098];
  v67 = STACK[0x20B8];
  v68 = STACK[0x2090];
  v69 = STACK[0x2188];
  v70 = STACK[0x2000];
  v71 = STACK[0x1FD8];
  v72 = v51;
  v73 = STACK[0x2228];
  LODWORD(STACK[0x2228]) = STACK[0x2228];
  LODWORD(STACK[0x2260]) = v55 + a1;
  if (v73)
  {
    v76 = v57;
  }

  else
  {
    v76 = v64;
  }

  LODWORD(STACK[0x21F0]) = v76;
  if (v73)
  {
    v57 = v63;
  }

  LODWORD(STACK[0x2238]) = v57;
  if (v73)
  {
    v77 = v71;
  }

  else
  {
    v77 = v63;
  }

  LODWORD(STACK[0x21D0]) = v77;
  if (v73)
  {
    v78 = v64;
  }

  else
  {
    v78 = v71;
  }

  if (v73)
  {
    v79 = v70;
  }

  else
  {
    v79 = v60;
  }

  if (v73)
  {
    v80 = v67;
  }

  else
  {
    v80 = v70;
  }

  if (v73)
  {
    LODWORD(v81) = v66;
  }

  else
  {
    LODWORD(v81) = v67;
  }

  if (v73)
  {
    v66 = v60;
    v82 = v58;
  }

  else
  {
    v82 = v62;
  }

  if (v73)
  {
    v83 = v62;
  }

  else
  {
    v83 = v69;
  }

  LODWORD(STACK[0x21B0]) = v83;
  if (v73)
  {
    v84 = v69;
  }

  else
  {
    v84 = v59;
  }

  if (v73)
  {
    v85 = v59;
  }

  else
  {
    v85 = v58;
  }

  LODWORD(STACK[0x2198]) = v85;
  if (v73)
  {
    v86 = STACK[0x21E0];
  }

  else
  {
    v86 = STACK[0x2280];
  }

  if (v73)
  {
    v87 = STACK[0x22A0];
  }

  else
  {
    v87 = STACK[0x21E0];
  }

  if (v73)
  {
    v88 = v61;
  }

  else
  {
    v88 = STACK[0x22A0];
  }

  if (v73)
  {
    v89 = STACK[0x2280];
  }

  else
  {
    v89 = v61;
  }

  if (v73)
  {
    v90 = v65;
  }

  else
  {
    v90 = v72;
  }

  if (v73)
  {
    v91 = STACK[0x2070];
  }

  else
  {
    v72 = v68;
    v91 = v65;
  }

  if (v73)
  {
    v92 = v68;
  }

  else
  {
    v92 = STACK[0x2070];
  }

  v93 = STACK[0x2270];
  v94 = LODWORD(STACK[0x2270]) ^ 0x39;
  v95 = STACK[0x2120];
  v96 = STACK[0x22C8];
  LODWORD(STACK[0x22C8]) = STACK[0x22C8];
  v97 = LODWORD(STACK[0x2170]) ^ 0xBD;
  v98 = STACK[0x2040];
  v99 = (v98 << v94) ^ (v98 >> v95);
  v100 = STACK[0x2088];
  v101 = v93;
  if (v93 == -693686471)
  {
    v102 = v96;
  }

  else
  {
    v102 = (v96 << v94) ^ (v96 >> v95);
  }

  LODWORD(STACK[0x1FD8]) = v102;
  if (v93 == -693686471)
  {
    v99 = v98;
  }

  else
  {
    v100 = (v100 << v94) + (v100 >> v95);
  }

  LODWORD(STACK[0x2180]) = v100;
  LODWORD(STACK[0x21F8]) = v56;
  if (v95)
  {
    v103 = (v56 << v97) ^ (v56 >> v95);
  }

  else
  {
    v103 = v56;
  }

  LODWORD(STACK[0x2070]) = v103;
  v104 = STACK[0x2228];
  if ((STACK[0x2228] & 2) != 0)
  {
    v105 = v81;
  }

  else
  {
    v105 = v79;
  }

  if ((v104 & 2) != 0)
  {
    v81 = v79;
  }

  else
  {
    v81 = v81;
  }

  if ((v104 & 2) != 0)
  {
    v106 = v80;
  }

  else
  {
    v106 = v66;
  }

  if ((v104 & 2) != 0)
  {
    v107 = v66;
  }

  else
  {
    v107 = v80;
  }

  v108 = STACK[0x2238];
  if ((v104 & 2) != 0)
  {
    v109 = v78;
  }

  else
  {
    v109 = STACK[0x2238];
  }

  LODWORD(STACK[0x2168]) = v109;
  if ((v104 & 2) != 0)
  {
    v110 = v108;
  }

  else
  {
    v110 = v78;
  }

  LODWORD(STACK[0x1EF0]) = v110;
  if ((v104 & 2) != 0)
  {
    v111 = v84;
  }

  else
  {
    v111 = v82;
  }

  LODWORD(STACK[0x2008]) = v111;
  if ((v104 & 2) != 0)
  {
    v112 = v82;
  }

  else
  {
    v112 = v84;
  }

  LODWORD(STACK[0x2098]) = v112;
  if ((v104 & 2) != 0)
  {
    v113 = v86;
  }

  else
  {
    v113 = v88;
  }

  LODWORD(STACK[0x2238]) = v113;
  if ((v104 & 2) != 0)
  {
    v114 = v88;
  }

  else
  {
    v114 = v86;
  }

  LODWORD(STACK[0x2138]) = v114;
  v115 = STACK[0x21F0];
  v116 = STACK[0x21D0];
  if ((v104 & 2) != 0)
  {
    v117 = STACK[0x21D0];
  }

  else
  {
    v117 = STACK[0x21F0];
  }

  LODWORD(STACK[0x2120]) = v117;
  if ((v104 & 2) != 0)
  {
    v118 = v115;
  }

  else
  {
    v118 = v116;
  }

  LODWORD(STACK[0x2140]) = v118;
  v119 = STACK[0x21B0];
  v120 = STACK[0x2198];
  if ((v104 & 2) != 0)
  {
    v121 = STACK[0x21B0];
  }

  else
  {
    v121 = STACK[0x2198];
  }

  LODWORD(STACK[0x1FC8]) = v121;
  if ((v104 & 2) != 0)
  {
    v122 = v120;
  }

  else
  {
    v122 = v119;
  }

  LODWORD(STACK[0x2000]) = v122;
  if ((v104 & 2) != 0)
  {
    v123 = v87;
  }

  else
  {
    v123 = v89;
  }

  LODWORD(STACK[0x2190]) = v123;
  if ((v104 & 2) != 0)
  {
    v124 = v89;
  }

  else
  {
    v124 = v87;
  }

  LODWORD(STACK[0x2158]) = v124;
  if ((v104 & 2) != 0)
  {
    v125 = v92;
  }

  else
  {
    v125 = v90;
  }

  LODWORD(STACK[0x20E8]) = v125;
  if ((v104 & 2) != 0)
  {
    v126 = v90;
  }

  else
  {
    v126 = v92;
  }

  LODWORD(STACK[0x2090]) = v126;
  if ((v104 & 2) != 0)
  {
    v127 = v91;
  }

  else
  {
    v127 = v72;
  }

  LODWORD(STACK[0x2280]) = v127;
  if ((v104 & 2) != 0)
  {
    v128 = v72;
  }

  else
  {
    v128 = v91;
  }

  LODWORD(STACK[0x21B0]) = v128;
  v129 = (v105 >> v95) | (v105 << v97);
  v130 = STACK[0x2258];
  v131 = (v130 << v94) | (v130 >> v95);
  v132 = (v106 << v94) ^ (v106 >> v95);
  v133 = (LODWORD(STACK[0x2250]) + LODWORD(STACK[0x2230]));
  v134 = v97;
  v135 = (v133 << v97) + (v133 >> v95);
  v136 = (v107 << v94) | (v107 >> v95);
  LODWORD(STACK[0x1F00]) = LODWORD(STACK[0x2260]) - 526630718 - ((2 * LODWORD(STACK[0x2260])) & 0xC1388184);
  v137 = LODWORD(STACK[0x2248]) + 1495;
  LODWORD(STACK[0x2248]) = v137;
  v138 = (v104 ^ (v137 - 568807377)) - LODWORD(STACK[0x22A8]);
  v139 = v95;
  v140 = v95 == 0;
  STACK[0x2018] = v105;
  if (v95)
  {
    LODWORD(v105) = v129;
  }

  LODWORD(STACK[0x21F0]) = v105;
  STACK[0x1FC0] = v81 >> v95;
  v141 = (v81 << v134) ^ (v81 >> v95);
  STACK[0x2230] = v81;
  if (v140)
  {
    v142 = v81;
  }

  else
  {
    v142 = v141;
  }

  LODWORD(STACK[0x21E0]) = v142;
  LODWORD(STACK[0x2270]) = v93;
  if (v93 == -693686471)
  {
    v131 = v130;
  }

  LODWORD(STACK[0x22A8]) = v131;
  STACK[0x2198] = v106;
  if (v93 == -693686471)
  {
    v143 = v106;
  }

  else
  {
    v143 = v132;
  }

  LODWORD(STACK[0x2188]) = v143;
  v144 = v139;
  STACK[0x20D0] = v133;
  if (v139)
  {
    v145 = v135;
  }

  else
  {
    v145 = v133;
  }

  LODWORD(STACK[0x2228]) = v145;
  STACK[0x20B8] = v107;
  if (v101 == -693686471)
  {
    v146 = v107;
  }

  else
  {
    v146 = v136;
  }

  LODWORD(STACK[0x2250]) = v146;
  v147 = STACK[0x2118];
  if (v138)
  {
    v148 = STACK[0x2118];
  }

  else
  {
    v148 = STACK[0x2050];
  }

  if (v138)
  {
    v147 = STACK[0x2298];
    v149 = STACK[0x2068];
  }

  else
  {
    v149 = STACK[0x2298];
  }

  if (v138)
  {
    v150 = STACK[0x2050];
  }

  else
  {
    v150 = STACK[0x2068];
  }

  if (v138)
  {
    v151 = STACK[0x2030];
  }

  else
  {
    v151 = STACK[0x21B8];
  }

  if (v138)
  {
    v152 = STACK[0x21B8];
  }

  else
  {
    v152 = STACK[0x20C0];
  }

  if (v138)
  {
    v153 = STACK[0x2058];
  }

  else
  {
    v153 = STACK[0x2030];
  }

  if (v138)
  {
    v154 = STACK[0x20C0];
  }

  else
  {
    v154 = STACK[0x2058];
  }

  if (v138)
  {
    v155 = STACK[0x20E0];
  }

  else
  {
    v155 = STACK[0x21C8];
  }

  if (v138)
  {
    v156 = STACK[0x21C8];
  }

  else
  {
    v156 = STACK[0x22E0];
  }

  if (v138)
  {
    v157 = STACK[0x20A8];
  }

  else
  {
    v157 = STACK[0x20E0];
  }

  if (v138)
  {
    v158 = STACK[0x22E0];
  }

  else
  {
    v158 = STACK[0x20A8];
  }

  if ((v138 & 2) != 0)
  {
    v159 = v147;
  }

  else
  {
    v159 = v150;
  }

  LODWORD(STACK[0x2110]) = v159;
  if ((v138 & 2) != 0)
  {
    v160 = v150;
  }

  else
  {
    v160 = v147;
  }

  LODWORD(STACK[0x1F28]) = v160;
  if ((v138 & 2) != 0)
  {
    v161 = v148;
  }

  else
  {
    v161 = v149;
  }

  LODWORD(STACK[0x21C8]) = v161;
  if ((v138 & 2) != 0)
  {
    v148 = v149;
  }

  LODWORD(STACK[0x2108]) = v148;
  if ((v138 & 2) != 0)
  {
    v162 = v153;
  }

  else
  {
    v162 = v152;
  }

  LODWORD(STACK[0x21D0]) = v162;
  if ((v138 & 2) != 0)
  {
    v163 = v152;
  }

  else
  {
    v163 = v153;
  }

  LODWORD(STACK[0x21B8]) = v163;
  if ((v138 & 2) != 0)
  {
    v164 = v156;
  }

  else
  {
    v164 = v157;
  }

  LODWORD(STACK[0x2150]) = v164;
  if ((v138 & 2) != 0)
  {
    v165 = v157;
  }

  else
  {
    v165 = v156;
  }

  LODWORD(STACK[0x2160]) = v165;
  if ((v138 & 2) != 0)
  {
    v166 = v154;
  }

  else
  {
    v166 = v151;
  }

  LODWORD(STACK[0x2020]) = v166;
  if ((v138 & 2) != 0)
  {
    v167 = v151;
  }

  else
  {
    v167 = v154;
  }

  LODWORD(STACK[0x1EB0]) = v167;
  if ((v138 & 2) != 0)
  {
    v168 = v158;
  }

  else
  {
    v168 = v155;
  }

  LODWORD(STACK[0x2148]) = v168;
  if ((v138 & 2) != 0)
  {
    v169 = v155;
  }

  else
  {
    v169 = v158;
  }

  LODWORD(STACK[0x2260]) = v169;
  v170 = STACK[0x22B0];
  v171 = STACK[0x22B0];
  LODWORD(STACK[0x22B0]) = STACK[0x22B0];
  STACK[0x22A0] = v144;
  v172 = (v170 >> v144) + (v170 << v134);
  v173 = STACK[0x1F70];
  if (STACK[0x1F70])
  {
    v174 = STACK[0x2048];
  }

  else
  {
    v174 = STACK[0x2060];
  }

  if (v173)
  {
    v175 = STACK[0x2060];
  }

  else
  {
    v175 = STACK[0x2010];
  }

  if (v173)
  {
    v176 = STACK[0x20D8];
  }

  else
  {
    v176 = STACK[0x2048];
  }

  if (v173)
  {
    v177 = STACK[0x2010];
  }

  else
  {
    v177 = STACK[0x20D8];
  }

  v178 = (LODWORD(STACK[0x2080]) >> v144) ^ (LODWORD(STACK[0x2080]) << v134);
  v179 = STACK[0x1EE8];
  v180 = LODWORD(STACK[0x1EE8]) ^ 0x8E;
  v181 = STACK[0x20A0];
  v182 = STACK[0x2170];
  if (LODWORD(STACK[0x2170]) == -1343677507)
  {
    v183 = v171;
  }

  else
  {
    v183 = v172;
  }

  if (v182 == -1343677507)
  {
    v184 = STACK[0x2080];
  }

  else
  {
    v184 = v178;
  }

  LODWORD(STACK[0x2118]) = v184;
  if ((v173 & 2) != 0)
  {
    v185 = v176;
  }

  else
  {
    v185 = v175;
  }

  if ((v173 & 2) != 0)
  {
    v186 = v175;
  }

  else
  {
    v186 = v176;
  }

  if ((v173 & 2) != 0)
  {
    v187 = v174;
  }

  else
  {
    v187 = v177;
  }

  if ((v173 & 2) != 0)
  {
    v188 = v177;
  }

  else
  {
    v188 = v174;
  }

  v189 = STACK[0x2240];
  if (v179 == -1987817586)
  {
    v190 = v185;
  }

  else
  {
    v190 = (v185 << v181) + (v185 >> v180);
  }

  if (v181)
  {
    v191 = (v187 >> STACK[0x2240]) + (v187 << v181);
  }

  else
  {
    v191 = v187;
  }

  v192 = LODWORD(STACK[0x2268]) >> 1;
  LODWORD(STACK[0x2298]) = v192;
  v193 = v192 & 0x63636363 ^ 0x87A4C4E5;
  v194 = LODWORD(STACK[0x1EC0]) ^ 0xD2u;
  v195 = STACK[0x2288];
  v196 = LODWORD(STACK[0x2288]) ^ 0xC22246A6;
  LODWORD(STACK[0x2288]) = STACK[0x2288];
  v197 = STACK[0x2278];
  v198 = LODWORD(STACK[0x2278]) ^ 0x22345E0;
  LODWORD(STACK[0x2278]) = STACK[0x2278];
  v199 = LODWORD(STACK[0x1F20]) ^ 0x7C;
  v200 = (v196 & v193) >> v194;
  STACK[0x20D8] = v194;
  v201 = v183 ^ (((v198 & v193) << v199) | v200) ^ v191;
  v202 = (v186 << v181) ^ (v186 >> v180);
  if (v181)
  {
    LODWORD(v186) = v202;
  }

  v203 = v201 + 821265339 - ((2 * v201) & 0x61E70776);
  v204 = STACK[0x1F18];
  v205 = LODWORD(STACK[0x1EC8]) ^ 0x68;
  v206 = ((LODWORD(STACK[0x22C0]) ^ 0x620A285) & v193) << v205;
  v207 = (((LODWORD(STACK[0x1F18]) ^ 0xA165C506) & v193) >> v194) ^ v206 ^ v190 ^ LODWORD(STACK[0x1FD8]);
  v208 = v207 + 821265339 - ((2 * v207) & 0x61E70776);
  v209 = STACK[0x22F0];
  LODWORD(STACK[0x22F0]) = STACK[0x22F0];
  v210 = LODWORD(STACK[0x2038]) + 6;
  v211 = v186 ^ (((v198 & (v209 & 0x63636363 ^ 0xE4C6E7A6)) << v199) + ((v196 & (v209 & 0x63636363 ^ 0xE4C6E7A6)) >> v210));
  v212 = v200 | v206;
  v213 = v189;
  STACK[0x2240] = v189;
  if (v189)
  {
    LODWORD(v188) = (v188 >> v189) | (v188 << v181);
  }

  v214 = LODWORD(STACK[0x2070]) ^ v212 ^ v188;
  v215 = STACK[0x2128];
  v216 = v203 ^ LODWORD(STACK[0x2128]);
  LODWORD(STACK[0x1FA8]) = v99;
  v217 = (v214 + 821265339 - ((2 * v214) & 0x61E70776)) ^ v215;
  v218 = STACK[0x638];
  v219 = ((v211 ^ v99) + 821265339 - ((2 * (v211 ^ v99)) & 0x61E70776)) ^ v215;
  v220 = v208 ^ v215;
  v221 = (v173 - 1343677507 - ((2 * v173) & 0x5FD2377A)) ^ v182;
  v222 = (v221 - 1343677507 - ((2 * v221) & 0x5FD2377A)) ^ v182;
  v223 = v222 - STACK[0x2100] + (*(STACK[0x638] + 4 * BYTE2(v219)) ^ __ROR4__(*(STACK[0x638] + ((v217 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(STACK[0x638] + 4 * BYTE1(v216)), 8) ^ __ROR4__(*(STACK[0x638] + 4 * (v208 ^ v215)), 16));
  v224 = STACK[0x21A0];
  v225 = LODWORD(STACK[0x21A0]) + (LODWORD(STACK[0x1EE0]) ^ 0xC92934E7) + (*(STACK[0x638] + 4 * BYTE2(v217)) ^ __ROR4__(*(STACK[0x638] + 4 * v216), 16) ^ __ROR4__(*(STACK[0x638] + 4 * BYTE1(v219)), 8) ^ __ROR4__(*(STACK[0x638] + ((v220 >> 22) & 0x3FC)), 24)) + 1;
  STACK[0x20E0] = v181;
  v226 = v209 & 0x48484848 ^ 0x909090D8;
  v227 = ((v225 ^ v181) - 693686471 - ((2 * (v225 ^ v181)) & 0xAD4E5E72)) ^ LODWORD(STACK[0x2270]);
  v228 = v227 - 1987817586 - ((2 * v227) & 0x13089F1C);
  v229 = LODWORD(STACK[0x21A8]) - 1076656873;
  LODWORD(STACK[0x1F40]) = v222;
  v230 = v229 ^ v222 ^ LODWORD(STACK[0x2118]) ^ __ROR4__(*(v218 + ((v216 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v218 + 4 * BYTE1(v217)), 8) ^ *(v218 + 4 * BYTE2(v220));
  v231 = __ROR4__(*(v218 + 4 * v219), 16);
  v232 = v181 ^ v182 ^ STACK[0x22A0] ^ v213 ^ ((v230 ^ v231) - 1343677507 - ((2 * (v230 ^ v231)) & 0x5FD2377A));
  v233 = (v197 ^ 0x40C8) & v226;
  v234 = v204;
  v235 = ((v204 ^ 0x9850D810) & v226) >> v210;
  v236 = v215 ^ (v233 << v199) ^ v235 ^ (v232 + 821265339 - ((2 * v232) & 0x61E70776));
  v237 = STACK[0x2298];
  LODWORD(v235) = v224 ^ LODWORD(STACK[0x1EA8]) ^ (v235 | (v233 << v199)) ^ LODWORD(STACK[0x2180]) ^ __ROR4__(*(v218 + ((v219 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v218 + 4 * v217), 16) ^ __ROR4__(*(v218 + 4 * BYTE1(v220)), 8) ^ *(v218 + 4 * BYTE2(v216));
  v238 = STACK[0x22C0];
  v239 = STACK[0x20D8];
  v240 = ((((v195 ^ 0xD8004880) & (v237 & 0x48484848 ^ 0xD0D89890)) >> STACK[0x20D8]) + (((LODWORD(STACK[0x22C0]) ^ 0x18008080) & (v237 & 0x48484848 ^ 0xD0D89890)) << v205)) ^ v179 ^ STACK[0x22A0] ^ LODWORD(STACK[0x2228]) ^ v228;
  LODWORD(STACK[0x2068]) = v226;
  LODWORD(v233) = LODWORD(STACK[0x22A8]) ^ ((((v195 ^ 0xD8004880) & v226) >> v210) + (v233 << v205)) ^ v223;
  LODWORD(v216) = v233 + 821265339 - ((2 * v233) & 0x61E70776);
  v241 = (v235 + 821265339 - ((2 * v235) & 0x61E70776)) ^ v215;
  HIDWORD(v242) = *(STACK[0x1F60] + ((((v235 - 69 - ((2 * v235) & 0x76)) ^ v215) + 124) ^ 0x26));
  LODWORD(v242) = (HIDWORD(v242) ^ 0xAAAAAAAA) << 24;
  LODWORD(v235) = v242 >> 26;
  HIDWORD(v242) = *(STACK[0x2218] + (BYTE2(v236) ^ 0x6ELL));
  LODWORD(v242) = ((((8 * HIDWORD(v242)) ^ 0x40) - ((16 * HIDWORD(v242)) & 0x55555555) - 88) ^ HIDWORD(v242)) << 24;
  LOBYTE(v223) = (v242 >> 25) ^ 0x58;
  LODWORD(v217) = (v240 + 821265339 - ((2 * v240) & 0x61E70776)) ^ v215;
  LODWORD(v220) = *(STACK[0x1F58] + (BYTE2(v217) ^ 0xB1)) ^ BYTE2(v217) ^ 0x67 ^ ((BYTE2(v217) ^ 0x67) - 87) ^ 0xA8 ^ 0x73;
  v243 = v235 ^ 0x37 ^ (2 * v235) & 0x56;
  LOBYTE(v233) = *(STACK[0x2208] + (((v236 >> 7) & 1 | (2 * (v236 & 0x7F))) ^ 0xE7)) ^ ((((v236 & 0x80) != 0) | (2 * (v236 & 0x7F))) - ((4 * v236) & 0x50) - 88) ^ 0xF5;
  v244 = *(v218 + 4 * BYTE1(v241));
  v245 = v216 ^ v215;
  v246 = *(v218 + 4 * BYTE2(v245)) ^ __ROR4__(*(v218 + 4 * (v233 - 55)), 16) ^ ((v244 << (((22 - v233) & 0x18) + ((v233 - 55) & 0x18))) + (v244 >> 8));
  LODWORD(v233) = *(v218 + 4 * v217);
  LODWORD(STACK[0x2228]) = WORD1(v233) - ((v233 >> 15) & 0x1AACE) + 21863;
  LODWORD(v235) = (v220 >> 1) & 0xFFFFFF7F | ((v220 & 1) << 7);
  v247 = (v241 >> 20) & 0xF0 | (v241 >> 28);
  LODWORD(v220) = *(v218 + ((v245 >> 22) & 0x3FC));
  v248 = *(v218 + 4 * BYTE2(v241)) ^ __ROR4__(v220, 24) ^ __ROR4__(*(v218 + 4 * BYTE1(v236)), 8) ^ __ROR4__(v233, 16);
  LODWORD(v236) = LODWORD(STACK[0x2188]) ^ __ROR4__(*(v218 + 4 * v243), 16) ^ __ROR4__(*(v218 + 4 * BYTE1(v245)), 8) ^ __ROR4__(*(v218 + ((v236 >> 22) & 0x3FC)), 24) ^ *(v218 + 4 * v235);
  LODWORD(v233) = v237 & 0x7CFCFCFC ^ 0xB915E14D;
  v249 = (v234 ^ 0xB975DD14) & v233;
  STACK[0x2070] = v249;
  LODWORD(v249) = (v249 >> v239) | (((v238 ^ 0x1C20A085) & v233) << v199);
  LODWORD(v233) = *(v218 + 4 * BYTE3(v217));
  LODWORD(STACK[0x1FB0]) = v246;
  LODWORD(v242) = __ROR4__(v233, 24);
  LODWORD(v235) = (v246 ^ v242 | 0x4D19F281) + (LODWORD(STACK[0x2268]) ^ 0x83DC356E) - ((v246 ^ v242) & 0xB2E60D7E);
  LODWORD(v236) = (v236 + 821265339 - ((2 * v236) & 0x61E70776)) ^ v215;
  LODWORD(STACK[0x2188]) = v249;
  v250 = v236 + v249 - 2 * (v236 & v249);
  v251 = STACK[0x2210];
  v252 = (v246 ^ v242 ^ LODWORD(STACK[0x21E0])) + 821265339 - ((2 * (v246 ^ v242 ^ LODWORD(STACK[0x21E0]))) & 0x61E70776);
  LODWORD(v233) = *(v218 + 4 * ((*(STACK[0x2210] + (v247 ^ 0x34)) ^ 0x81) + 41));
  LODWORD(v247) = *(v218 + 4 * v245);
  HIDWORD(v242) = *(v218 + 4 * BYTE1(v217));
  LODWORD(v242) = HIDWORD(v242);
  LODWORD(v249) = v242 >> 8;
  LODWORD(STACK[0x2048]) = v249;
  v253 = v249 ^ LODWORD(STACK[0x21F0]) ^ __ROR4__(v233, 24) ^ WORD1(v247) ^ (v247 << 16) ^ *(v218 + 4 * v223);
  v254 = v235 + 1 - ((2 * (v235 + 1) + 97262332) & 0x7B86ADC) + 918700780;
  LODWORD(v233) = STACK[0x22F0] & 0x7CFCFCFC;
  LODWORD(STACK[0x1FB8]) = v233 ^ 0x3484346C;
  LODWORD(v233) = v233 ^ 0xCD7DCD95;
  LODWORD(STACK[0x2298]) = v254 & 0xF9F9F9F9 ^ 0x81D83168;
  LODWORD(v245) = (((((v254 & 0xF9F9F9F9) >> 1) ^ 0xB915E14D) & (v234 ^ 0xB975DD14)) >> v239) ^ (((((v254 & 0xF9F9F9F9) >> 1) ^ 0xB915E14D) & (LODWORD(STACK[0x2278]) ^ 0x2145E8)) << v199);
  LODWORD(STACK[0x21E0]) = v248;
  LODWORD(v249) = v248 ^ LODWORD(STACK[0x2250]);
  v255 = v233 & STACK[0x2200];
  v256 = (LODWORD(STACK[0x2288]) ^ 0xD8204CA4) & v233;
  STACK[0x2058] = v256;
  STACK[0x1FD8] = v255 << v205;
  LODWORD(v256) = (v256 >> v210) + (v255 << v205);
  LODWORD(STACK[0x2030]) = v256;
  LODWORD(v249) = (v249 + 821265339 - ((2 * v249) & 0x61E70776)) ^ v215;
  LODWORD(STACK[0x20D8]) = v249;
  LODWORD(STACK[0x1ED8]) = v245;
  v257 = v245 ^ v249;
  LODWORD(v245) = ((v245 ^ v249) >> 24) - ((2 * ((v245 ^ v249) >> 24)) & 0x42);
  v258 = v215 ^ v256 ^ v252;
  v259 = v215;
  v260 = (v253 + 821265339 - ((2 * v253) & 0x61E70776)) ^ v215;
  STACK[0x2050] = v255;
  STACK[0x2180] = v255 << v199;
  v261 = (((v234 ^ 0xB975DD14) & v233) >> v210) ^ (v255 << v199) ^ v260;
  LODWORD(v249) = *(v251 + (((v261 >> 4) & 0xF0 | (v261 >> 12)) ^ 0x34));
  LODWORD(v233) = v220 << 8;
  LODWORD(STACK[0x1F70]) = v245 - 95;
  LODWORD(STACK[0x1F30]) = v257 - ((2 * v257) & 0x62) + 49;
  STACK[0x21F0] = (v258 >> 8) - ((2 * (v258 >> 8)) & 0x50) - 88;
  STACK[0x1F50] = v250 + (~(2 * v250) | 0xFFFFFFAF) - 87;
  LODWORD(STACK[0x2200]) = v258 - ((2 * v258) & 0x50) - 88;
  STACK[0x1F48] = (v249 ^ 0xFFFFFF81) - ((2 * (v249 ^ 0xFFFFFF81) + 82) & 0x50) - 47;
  v262 = LODWORD(STACK[0x22B8]);
  v263 = STACK[0x22B0];
  LODWORD(STACK[0x22B0]) = STACK[0x22E0];
  LODWORD(STACK[0x2060]) = STACK[0x1FC0];
  LODWORD(STACK[0x20C0]) = STACK[0x22A8];
  LODWORD(v251) = STACK[0x1FC8];
  LODWORD(STACK[0x2118]) = STACK[0x22C8];
  v264 = STACK[0x20E0];
  STACK[0x22F0] = LODWORD(STACK[0x1F78]);
  v265 = LODWORD(STACK[0x21C0]);
  LODWORD(STACK[0x21C0]) = STACK[0x1F80];
  v266 = STACK[0x22A0];
  v267 = STACK[0x2120];
  STACK[0x2240] = STACK[0x2240];
  LODWORD(STACK[0x22A0]) = STACK[0x1F88];
  v268 = STACK[0x22F8];
  v269 = LODWORD(STACK[0x20F8]);
  LODWORD(STACK[0x22B8]) = STACK[0x1F90];
  STACK[0x20A0] = v264;
  LODWORD(STACK[0x2010]) = v233;
  LODWORD(STACK[0x22A8]) = HIDWORD(v242) >> 8;
  v74 = *(v268 + 8 * ((LODWORD(STACK[0x2248]) + 250515405) & 0xF11169DF ^ (LODWORD(STACK[0x2248]) - 1645) ^ LODWORD(STACK[0x2248])));
  LODWORD(STACK[0x20F8]) = v269;
  LODWORD(STACK[0x2128]) = v259;
  LODWORD(STACK[0x2268]) = v235 + 1 - ((2 * (v235 + 1) + 97262332) & 0x7B86ADC) + 918700780;
  STACK[0x2120] = v266;
  LODWORD(STACK[0x20E0]) = v251;
  LODWORD(STACK[0x22E0]) = v265;
  LODWORD(STACK[0x2000]) = v263;
  LODWORD(STACK[0x20A8]) = v267;
  return v74(v269, v262, v260, ((v257 >> 16) - ((2 * (v257 >> 16)) & 0x50) - 88) ^ 0xFFFFFFA8, v265, v218, v266, v258, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

void sub_26AA4A098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, unsigned __int8 *a50)
{
  LODWORD(STACK[0x22A0]) = LODWORD(STACK[0x1EB0]) ^ 0xCF49C549;
  v52 = (v50 + 9744209) & 0xFF6B4EFF;
  v53 = *(*STACK[0x22E8] + (*STACK[0x22D0] & 0x5167F4C8));
  v54 = -812407749 * ((-812407749 * ((v53 ^ STACK[0x1ED8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v53 ^ STACK[0x1ED8]) & 0x7FFFFFFF)) >> 16));
  v55 = v54 >> ((v50 + 81) ^ 0xE7u);
  v56 = STACK[0x1E58];
  v57 = STACK[0x1E60];
  v58 = STACK[0x1E50];
  LODWORD(v54) = *STACK[0x1ED8] ^ *(STACK[0x1E58] + v55) ^ *(STACK[0x1E60] + v55 + 1) ^ *(STACK[0x1E50] + v55 + 1) ^ v54;
  v59 = STACK[0x1F38];
  v60 = STACK[0x1F38] + 805;
  LODWORD(v55) = (*(v60 + (((v54 ^ (-123 * v55)) - 112) ^ 0x1BLL)) ^ 0xA8) - (((((v54 ^ (-123 * v55)) - 112) ^ 0xFFFFFFAA) - 71) ^ ((v54 ^ (-123 * v55)) - 112) ^ 0xFFFFFFAA);
  v61 = -812407749 * ((-812407749 * ((v53 ^ STACK[0x1EE0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v53 ^ STACK[0x1EE0]) & 0x7FFFFFFF)) >> 16));
  LODWORD(v61) = *STACK[0x1EE0] ^ *(STACK[0x1E58] + (v61 >> 24)) ^ *(STACK[0x1E60] + (v61 >> 24) + 1) ^ *(STACK[0x1E50] + (v61 >> 24) + 1) ^ v61 ^ (-123 * (v61 >> 24));
  LOBYTE(v61) = (v61 - ((2 * v61 + 30) & 0x16) + 58) ^ 0x33;
  v62 = STACK[0x2210];
  v63 = (*(STACK[0x2210] + (((v61 >> 4) | (16 * v61)) ^ 0x34)) ^ 0x81) + 41;
  v64 = (*(v60 + (v63 ^ 0x54)) ^ 0xA8) - (((v63 ^ 0xE5) - 71) ^ v63 ^ 0xE5);
  v65 = STACK[0x1FB0];
  v66 = -812407749 * ((-812407749 * ((v53 ^ v65) & 0x7FFFFFFF)) ^ ((-812407749 * ((v53 ^ v65) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v66) = (((-23 * ((-812407749 * ((-812407749 * ((v53 ^ v65) & 0x7FFFFFFF)) ^ ((-812407749 * ((v53 ^ v65) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ v66 ^ *(STACK[0x1E98] + (v66 >> 24)) ^ *STACK[0x1FB0] ^ *((v66 >> 24) + STACK[0x1E90] + 3) ^ *(STACK[0x1EA0] + (v66 >> 24))) - 50) ^ 0xD7;
  LOBYTE(v66) = (*(STACK[0x1F68] + (((v66 >> 4) | (16 * v66)) ^ 0xFELL)) ^ 0xA8) - 37;
  v67 = STACK[0x1FB8];
  v68 = -812407749 * ((-812407749 * ((v53 ^ v67) & 0x7FFFFFFF)) ^ ((-812407749 * ((v53 ^ v67) & 0x7FFFFFFF)) >> 16));
  v69 = STACK[0x1F38] + 1599;
  v70 = ((*(v59 + 1599 + ((((-123 * ((-812407749 * ((-812407749 * ((v53 ^ v67) & 0x7FFFFFFF)) ^ ((-812407749 * ((v53 ^ v67) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ (59 * ((59 * (v53 ^ v67)) ^ ((-812407749 * ((v53 ^ v67) & 0x7FFFFFFF)) >> 16))) ^ *v67 ^ *(STACK[0x1E60] + (v68 >> 24) + 1) ^ *(STACK[0x1E58] + (v68 >> 24)) ^ *(STACK[0x1E50] + (v68 >> 24) + 1)) - 19) ^ 0x6ALL)) | ((*(v59 + 1599 + (((v66 ^ (16 * v66) ^ 0xEC) + 41) ^ 0x39)) ^ 0xF2) << 8)) & 0xFF00FFFF | (((*(STACK[0x2208] + (((v64 < 0) | (2 * v64)) ^ 0x99)) ^ (((v64 < 0) | (2 * v64)) - ((4 * v64) & 0x50) - 88) ^ 0x8B) - 55) << 16) | ((v55 ^ 0xD9) << 24)) ^ 0x9B;
  LODWORD(STACK[0x1EB0]) = v70;
  LODWORD(v55) = LODWORD(STACK[0x1DF0]) ^ 0xA0656DE4;
  LODWORD(STACK[0x22F0]) = v55;
  v71 = LODWORD(STACK[0x2278]) ^ 0x22345E8u;
  STACK[0x2248] = v71;
  v72 = (((v70 ^ ((v70 & v55) >> 1)) & v71) << STACK[0x2190]) ^ (((v70 ^ ((v70 & v55) >> 1)) & STACK[0x21B0]) >> STACK[0x2238]);
  LODWORD(STACK[0x1ED8]) = v72;
  v73 = STACK[0x1DF8];
  LODWORD(v55) = (LODWORD(STACK[0x1F28]) - ((2 * LODWORD(STACK[0x2090])) & 0xF90ACBC2) + 80723622) ^ LODWORD(STACK[0x1DF8]);
  LODWORD(v66) = (LODWORD(STACK[0x1C50]) - 2 * (STACK[0x2178] & 0x7C8565E5 ^ STACK[0x1C50] & 4) + 367904201) ^ LODWORD(STACK[0x1DF8]);
  LODWORD(STACK[0x22E0]) = ((v55 + 321195147 - ((2 * v55) & 0x264A1916)) ^ 0x13250C8B) + ((v66 + 321195148 + ~((2 * v66) & 0x264A1916)) ^ 0x13250C8B);
  v74 = -812407749 * ((-812407749 * ((v53 ^ STACK[0x2020]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v53 ^ STACK[0x2020]) & 0x7FFFFFFF)) >> 16));
  v75 = v74 >> 24;
  LODWORD(v74) = *(v57 + (v74 >> 24) + 1) ^ *(v56 + (v74 >> 24)) ^ *(v58 + (v74 >> 24) + 1) ^ v74 ^ *STACK[0x2020];
  HIDWORD(v76) = v74 ^ (5 * v75);
  LODWORD(v76) = (v74 ^ (-123 * v75)) << 24;
  v77 = STACK[0x1F10];
  v78 = ((*(STACK[0x1F10] + ((v76 >> 31) ^ 0xBLL)) ^ 0xB5) + 27) ^ 0x98;
  v79 = -812407749 * ((-812407749 * ((v53 ^ a50) & 0x7FFFFFFF)) ^ ((-812407749 * ((v53 ^ a50) & 0x7FFFFFFF)) >> 16));
  LODWORD(v79) = (*a50 ^ *(v56 + (v79 >> 24)) ^ *(v57 + (v79 >> 24) + 1) ^ *(v58 + (v79 >> 24) + 1) ^ v79 ^ (-123 * (v79 >> 24))) + 20;
  STACK[0x2048] = v59 + 805;
  LODWORD(v79) = (*(v59 + 805 + (v79 ^ 0xFLL)) ^ 0xA8) - (((v79 ^ 0xFFFFFFBE) - 71) ^ v79 ^ 0xFFFFFFBE);
  v80 = STACK[0x2050];
  LODWORD(STACK[0x1EA8]) = v53;
  v81 = -812407749 * ((-812407749 * ((v53 ^ v80) & 0x7FFFFFFF)) ^ ((-812407749 * ((v53 ^ v80) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v81) = (*v80 ^ (59 * ((59 * (v53 ^ v80)) ^ ((-812407749 * ((v53 ^ v80) & 0x7FFFFFFF)) >> 16))) ^ *(v56 + (v81 >> 24)) ^ *(v57 + (v81 >> 24) + 1) ^ *(v58 + (v81 >> 24) + 1) ^ (-123 * BYTE3(v81))) + 113;
  LODWORD(v79) = ((*(v60 + (v81 ^ 0xELL)) ^ 0xA8) - (((v81 ^ 0xBF) - 71) ^ v81 ^ 0xBF)) ^ 0x4B | ((v79 ^ 4) << 24);
  STACK[0x1C48] = v69;
  LODWORD(v78) = v79 | ((*(v69 + v78) ^ 0x18) << 8);
  v82 = -812407749 * ((-812407749 * ((v53 ^ STACK[0x2118]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v53 ^ STACK[0x2118]) & 0x7FFFFFFF)) >> 16));
  v83 = v82 >> 24;
  LODWORD(v82) = *(v56 + (v82 >> 24)) ^ v82 ^ *(v57 + (v82 >> 24) + 1) ^ *(v58 + (v82 >> 24) + 1) ^ *STACK[0x2118];
  HIDWORD(v76) = v82 ^ (5 * v83);
  LODWORD(v76) = (v82 ^ (-123 * v83)) << 24;
  LOBYTE(v61) = (*(v62 + ((v76 >> 28) ^ 0x34)) ^ 0x81) + 92;
  LODWORD(v61) = *(v69 + (((*(v77 + ((((v61 & 0x80) != 0) | (2 * v61)) ^ 0x67)) ^ 0xB5) - 55) ^ 0x39)) ^ 0x80;
  v84 = ((v78 + 920046360 - ((2 * v78) & 0x6C019630)) ^ ((v61 << 16) + 920046360 - ((v61 << 17) & 0x1AC0000))) + 2 * (((v78 + 920046360 - ((2 * v78) & 0x6C019630)) ^ 0xD60000) & (v61 << 16));
  LODWORD(STACK[0x1C50]) = v84;
  LODWORD(v61) = v84 ^ ((v84 & STACK[0x2100]) >> 1);
  v85 = (v61 & v71) << STACK[0x21F0];
  v86 = LODWORD(STACK[0x1F18]) ^ 0xB975DD16;
  STACK[0x21C0] = v86;
  LODWORD(v86) = v85 | ((v61 & v86) >> STACK[0x2138]);
  LODWORD(STACK[0x2160]) = v86;
  LODWORD(v61) = ((v86 - ((2 * v86 + 735534276) & 0x78A135E6) - 1841542827) ^ 0x3C509AF3) - 1441508962;
  LODWORD(STACK[0x2010]) = v61;
  LODWORD(STACK[0x2188]) = (-1615873011 * (LODWORD(STACK[0x22E0]) + v61) + ((-1615873011 * (LODWORD(STACK[0x22E0]) + v61)) >> 16)) ^ v72 ^ ((-1615873011 * (LODWORD(STACK[0x22E0]) + v61) + ((-1615873011 * (LODWORD(STACK[0x22E0]) + v61)) >> 16)) >> 8);
  LODWORD(v69) = STACK[0x1E20];
  LODWORD(v61) = (LODWORD(STACK[0x1C70]) - ((2 * LODWORD(STACK[0x2080])) & 0x165DA0CA) - 1327385408) ^ LODWORD(STACK[0x1E20]);
  LODWORD(STACK[0x21B8]) = v61 - 2213305 - ((2 * v61) & 0xFFBC748E);
  v87 = STACK[0x1CAC];
  LODWORD(STACK[0x21A8]) = LODWORD(STACK[0x1CAC]) ^ 0xA1EA93E9 ^ ((LODWORD(STACK[0x1C60]) ^ 0xDCB235FA) + 187617381 - ((2 * (LODWORD(STACK[0x1C60]) ^ 0xDCB235FA)) & 0x165DA0CA));
  LODWORD(v61) = ((LODWORD(STACK[0x1F30]) ^ 0x238E0B37) + 187617381 - ((2 * (LODWORD(STACK[0x1F30]) ^ 0x238E0B37)) & 0x165DA0CA)) ^ v69;
  STACK[0x2058] = (v61 - 2213305 - ((2 * v61) & 0xFFBC748E)) ^ 0xDC503170;
  LODWORD(v61) = (v51 + 187617381 - 2 * (v51 & 0xB2ED07F ^ STACK[0x2140] & 0x1A)) ^ v69;
  LODWORD(STACK[0x2170]) = v61 - 2213305 - ((2 * v61) & 0xFFBC748E);
  LODWORD(v61) = (LODWORD(STACK[0x1CF8]) - ((2 * LODWORD(STACK[0x2040])) & 0x165DA0CA) - 2069189459) ^ v69;
  LODWORD(STACK[0x20A0]) = v61 - 2213305 - ((2 * v61) & 0xFFBC748E);
  LODWORD(v61) = (LODWORD(STACK[0x1CF0]) - ((2 * STACK[0x20B8]) & 0x165DA0CA) - 1425411534) ^ v69;
  LODWORD(STACK[0x2080]) = v61 - 2213305 - ((2 * v61) & 0xFFBC748E);
  LODWORD(v61) = (LODWORD(STACK[0x1CE4]) - ((2 * LODWORD(STACK[0x1F80])) & 0xF90ACBC2) - 235913858) ^ v73;
  LODWORD(STACK[0x2040]) = v61 + 321195148 + ~((2 * v61) & 0x264A1916);
  LODWORD(v61) = (LODWORD(STACK[0x1CE8]) - ((2 * LODWORD(STACK[0x1CD8])) & 0x165DA0CA) + 284482386) ^ v69;
  LODWORD(STACK[0x1F80]) = v61 - 2213305 - ((2 * v61) & 0xFFBC748E);
  LODWORD(v61) = (LODWORD(STACK[0x2198]) - ((2 * LODWORD(STACK[0x1F08])) & 0x165DA0CA) - 1259671788) ^ v69;
  LODWORD(STACK[0x1F70]) = v61 - 2213305 - ((2 * v61) & 0xFFBC748E);
  LODWORD(v61) = (LODWORD(STACK[0x1DE8]) - ((2 * LODWORD(STACK[0x1C68])) & 0xF90ACBC2) - 2014819868) ^ v73;
  LODWORD(STACK[0x1F30]) = v61 + 321195147 - ((2 * v61) & 0x264A1916);
  LODWORD(v61) = (LODWORD(STACK[0x1C78]) - ((2 * LODWORD(STACK[0x1CE0])) & 0x165DA0CA) + 1662541840) ^ v69;
  LODWORD(STACK[0x1F28]) = v61 - 2213305 - ((2 * v61) & 0xFFBC748E);
  LODWORD(v61) = (LODWORD(STACK[0x1E88]) + 2089117153 - ((2 * LODWORD(STACK[0x1E88])) & 0xF90ACBC2)) ^ v73;
  LODWORD(STACK[0x1F08]) = v61 + 321195147 - ((2 * v61) & 0x264A1916);
  LODWORD(v61) = (LODWORD(STACK[0x2098]) + 2089117153 - ((2 * LODWORD(STACK[0x2098])) & 0xF90ACBC2)) ^ v73;
  LODWORD(STACK[0x1EE0]) = v61 + 321195147 - ((2 * v61) & 0x264A1916);
  LODWORD(v57) = STACK[0x2108];
  LODWORD(v58) = STACK[0x22B8];
  LODWORD(v67) = STACK[0x20B0];
  LODWORD(v86) = STACK[0x2228];
  LODWORD(v83) = STACK[0x21D8];
  LODWORD(v61) = LODWORD(STACK[0x2228]) ^ LODWORD(STACK[0x20B0]) ^ LODWORD(STACK[0x1DB0]) ^ LODWORD(STACK[0x21D8]) ^ LODWORD(STACK[0x1CB8]) ^ ((LODWORD(STACK[0x2108]) ^ LODWORD(STACK[0x22B8])) - 568803619 - ((2 * (LODWORD(STACK[0x2108]) ^ LODWORD(STACK[0x22B8]))) & 0xBC317DBA));
  v88 = STACK[0x2240];
  LODWORD(STACK[0x1DE8]) = LODWORD(STACK[0x21A0]) ^ STACK[0x2240] ^ LODWORD(STACK[0x22B0]) ^ LODWORD(STACK[0x1EE8]) ^ LODWORD(STACK[0x1DD0]) ^ LODWORD(STACK[0x1CD0]) ^ LODWORD(STACK[0x1CC0]) ^ LODWORD(STACK[0x1CC8]) ^ (v61 - 1987817586 - ((2 * v61) & 0x13089F1C));
  LODWORD(v61) = (LODWORD(STACK[0x1D10]) - ((2 * STACK[0x2120]) & 0xF90ACBC2) + 1568745068) ^ v73;
  LODWORD(STACK[0x2120]) = v61 + 321195147 - ((2 * v61) & 0x264A1916);
  LODWORD(v61) = (LODWORD(STACK[0x1C58]) + 2089117153 - ((2 * LODWORD(STACK[0x1C58])) & 0xF90ACBC2)) ^ v73;
  LODWORD(STACK[0x1EE8]) = v61 + 321195147 - ((2 * v61) & 0x264A1916);
  LODWORD(v61) = (LODWORD(STACK[0x1D30]) - ((2 * LODWORD(STACK[0x1E80])) & 0x165DA0CA) + 1774675877) ^ v69;
  LODWORD(STACK[0x1EB8]) = v61 - 2213305 - ((2 * v61) & 0xFFBC748E);
  LODWORD(v61) = (LODWORD(STACK[0x1D08]) - ((2 * STACK[0x20D0]) & 0x165DA0CA) + 1685243996) ^ v69;
  LODWORD(STACK[0x22E0]) = v61 - 2213305 - ((2 * v61) & 0xFFBC748E);
  LODWORD(v61) = v87 ^ LODWORD(STACK[0x1D00]) ^ 0x8EFC10B1;
  LODWORD(v55) = (LODWORD(STACK[0x1D20]) - 2 * (v88 & 0x7C8565E7 ^ STACK[0x1D20] & 6) + 41518001) ^ v73;
  LODWORD(v85) = (LODWORD(STACK[0x1C80]) - ((2 * LODWORD(STACK[0x1E18])) & 0xF90ACBC2) - 1429213708) ^ v73;
  v89 = STACK[0x2068];
  LODWORD(v88) = (v89 + 2089117153 - ((2 * v89) & 0xF90ACBC2)) ^ v73;
  LODWORD(v88) = v88 + 321195147 - ((2 * v88) & 0x264A1916);
  LODWORD(STACK[0x20A8]) = v88;
  LODWORD(v61) = (v61 - 2213305 - ((2 * v61) & 0xFFBC748E)) ^ 0xFFDE3A47;
  LODWORD(v55) = (v55 + 321195147 - ((2 * v55) & 0x264A1916)) ^ 0x13250C8B;
  v90 = (v85 + 321195147 - ((2 * v85) & 0x264A1916)) ^ 0x13250C8B;
  LODWORD(STACK[0x1E80]) = v61;
  LODWORD(STACK[0x2020]) = v55;
  LODWORD(v55) = v61 ^ v55;
  LODWORD(STACK[0x1E88]) = v55;
  LODWORD(STACK[0x2140]) = v88 ^ 0x13250C8B;
  LODWORD(STACK[0x2240]) = (v55 ^ v90 ^ v88 ^ 0x13250C8B) + 472969065 - ((2 * (v55 ^ v90 ^ v88 ^ 0x13250C8B)) & 0x3861DED2);
  LODWORD(v61) = (LODWORD(STACK[0x2150]) + 187617381 - 2 * (STACK[0x2150] & 0xB2ED07D ^ STACK[0x1D18] & 0x18)) ^ v69;
  STACK[0x2198] = (v61 ^ 0xFFED7AF9) + 1213703 + ((2 * v61) & 0xFFDAF5F2);
  LODWORD(v85) = STACK[0x2088];
  LODWORD(v61) = (LODWORD(STACK[0x1D38]) - ((2 * LODWORD(STACK[0x2088])) & 0xF90ACBC2) - 915197938) ^ v73;
  LODWORD(STACK[0x2250]) = v61 + 321195147 - ((2 * v61) & 0x264A1916);
  LODWORD(v55) = STACK[0x1D28] & 0x1A;
  LODWORD(v61) = STACK[0x2060];
  LODWORD(STACK[0x21E8]) = v85 ^ LODWORD(STACK[0x2060]);
  LODWORD(v55) = (v61 + 187617381 - 2 * (v61 & 0xB2ED07F ^ v55)) ^ v69;
  LODWORD(v82) = v55 - 2213305 - ((2 * v55) & 0xFFBC748E);
  LODWORD(STACK[0x2060]) = v82;
  LODWORD(v55) = (v67 + 2089117153 - ((2 * v67) & 0xF90ACBC2)) ^ v73;
  LODWORD(v67) = STACK[0x1DA8];
  LODWORD(v85) = (v67 ^ v86 ^ 0x9E58FE9D) + 321195147 - ((2 * (v67 ^ v86 ^ 0x9E58FE9D)) & 0x264A1916);
  LODWORD(v88) = (LODWORD(STACK[0x2078]) + 187617381 - 2 * (STACK[0x2078] & 0xB2ED075 ^ STACK[0x1D40] & 0x10)) ^ v69;
  LODWORD(v86) = (v55 + 321195147 - ((2 * v55) & 0x264A1916)) ^ 0x13250C8B;
  LODWORD(STACK[0x22C8]) = v86;
  v91 = v85 ^ 0x13250C8B;
  STACK[0x2230] = v91;
  v92 = (v88 - 2213305 - ((2 * v88) & 0xFFBC748E)) ^ 0xFFDE3A47;
  STACK[0x20B8] = v92;
  v93 = v58 ^ LODWORD(STACK[0x1DB8]);
  LODWORD(STACK[0x1FF8]) = v93;
  LODWORD(STACK[0x2228]) = v82 ^ 0xFFDE3A47;
  v94 = v82 ^ 0xFFDE3A47 ^ v93 ^ v86 ^ v91 ^ LODWORD(STACK[0x2290]) ^ v57 ^ v92;
  LODWORD(v91) = v87 ^ LODWORD(STACK[0x2258]) ^ 0xE92244F9;
  LODWORD(v92) = (LODWORD(STACK[0x1C88]) - ((2 * LODWORD(STACK[0x21F8])) & 0xF90ACBC2) - 306970789) ^ v73;
  v95 = v87 ^ LODWORD(STACK[0x2128]) ^ 0x4685F5CD;
  LODWORD(v82) = (LODWORD(STACK[0x1D48]) - ((2 * v83) & 0xF90ACBC2) + 1240567982) ^ v73;
  LODWORD(v83) = v82 + 321195147 - ((2 * v82) & 0x264A1916);
  LODWORD(v82) = (LODWORD(STACK[0x1F98]) + 187617381 - ((2 * LODWORD(STACK[0x1F98])) & 0x165DA0CA)) ^ v69;
  LODWORD(v80) = v82 - 2213305 - ((2 * v82) & 0xFFBC748E);
  v96 = LODWORD(STACK[0x1F88]) - ((2 * LODWORD(STACK[0x2298])) & 0x165DA0CA) - 2011120248;
  LODWORD(STACK[0x21E0]) = LODWORD(STACK[0x21F8]) ^ LODWORD(STACK[0x1F98]) ^ LODWORD(STACK[0x2298]);
  v97 = STACK[0x1EF8];
  LODWORD(STACK[0x2148]) = STACK[0x20D0] ^ LODWORD(STACK[0x1EF8]) ^ v89;
  LODWORD(v61) = LODWORD(STACK[0x2250]) ^ 0x13250C8B;
  LODWORD(STACK[0x21D8]) = v61;
  LODWORD(v86) = (v91 - 2213305 - ((2 * v91) & 0xFFBC748E)) ^ 0xFFDE3A47;
  LODWORD(STACK[0x2088]) = v86;
  LODWORD(v91) = (v92 + 321195147 - ((2 * v92) & 0x264A1916)) ^ 0x13250C8B;
  LODWORD(v92) = (v95 - 2213305 - ((2 * v95) & 0xFFBC748E)) ^ 0xFFDE3A47;
  LODWORD(STACK[0x21F8]) = v92;
  LODWORD(STACK[0x2098]) = v91;
  LODWORD(STACK[0x2258]) = v80 ^ 0xFFDE3A47;
  LODWORD(STACK[0x2118]) = v83 ^ 0x13250C8B;
  LODWORD(v91) = v86 ^ v61 ^ v91 ^ v92 ^ v83 ^ 0x13250C8B;
  LODWORD(STACK[0x1D48]) = v91;
  LODWORD(STACK[0x1FB0]) = v96 ^ v69;
  LODWORD(v61) = v96 ^ v69 ^ 0xB3D9F4D4;
  LODWORD(STACK[0x1F88]) = v61;
  LODWORD(v61) = v91 ^ v80 ^ 0xFFDE3A47 ^ v61 ^ (v94 - 1277561644 - ((2 * v94) & 0x67B3E9A8));
  v98 = (LODWORD(STACK[0x1C90]) - ((2 * LODWORD(STACK[0x2110])) & 0x165DA0CA) - 831282962) ^ v69;
  STACK[0x2050] = v98;
  LODWORD(STACK[0x1D40]) = v98 ^ 0x89844F8E;
  LODWORD(v61) = (v61 - 1987817586 - ((2 * v61) & 0x13089F1C)) ^ v98 ^ 0x89844F8E;
  LODWORD(v98) = v61 - ((2 * v61) & 0x614B2E22);
  LODWORD(v91) = (LODWORD(STACK[0x1D70]) - 2 * (v97 & 0x7C8565E3 ^ STACK[0x1D70] & 2) + 651469453) ^ v73;
  v99 = v91 + 321195147 - ((2 * v91) & 0x264A1916);
  LODWORD(STACK[0x2298]) = v99;
  LODWORD(v67) = (v67 ^ LODWORD(STACK[0x1D50]) ^ 0x19855F2D) + 321195147 - ((2 * (v67 ^ LODWORD(STACK[0x1D50]) ^ 0x19855F2D)) & 0x264A1916);
  LODWORD(STACK[0x2250]) = v67;
  v100 = STACK[0x1CA0];
  LODWORD(v91) = (LODWORD(STACK[0x1F40]) - ((2 * LODWORD(STACK[0x1CA0])) & 0x165DA0CA) - 603002169) ^ v69;
  v101 = v91 - 2213305 - ((2 * v91) & 0xFFBC748E);
  LODWORD(STACK[0x1F40]) = v101;
  LODWORD(v83) = STACK[0x20C0];
  LODWORD(v91) = (LODWORD(STACK[0x1C98]) - ((2 * LODWORD(STACK[0x20C0])) & 0xF90ACBC2) - 2071509175) ^ v73;
  LODWORD(v92) = (LODWORD(STACK[0x1D60]) - ((2 * LODWORD(STACK[0x1DB0])) & 0x165DA0CA) - 1556272328) ^ v69;
  LODWORD(v57) = v92 - 2213305 - ((2 * v92) & 0xFFBC748E);
  LODWORD(STACK[0x1DB0]) = v57;
  v102 = STACK[0x1E78];
  LODWORD(v61) = STACK[0x1E78] & 0x7C8565E3 ^ STACK[0x2180] & 2;
  LODWORD(STACK[0x20D0]) = v83 ^ LODWORD(STACK[0x1E78]);
  LODWORD(v55) = (LODWORD(STACK[0x1D58]) - 2 * (STACK[0x1CB8] & 0xB2ED075 ^ STACK[0x1D58] & 0x10) + 672836837) ^ v69;
  LODWORD(v83) = STACK[0x2000];
  LODWORD(v92) = LODWORD(STACK[0x1D68]) - ((2 * LODWORD(STACK[0x2000])) & 0x165DA0CA) - 765968739;
  v103 = (v91 + 321195147 - ((2 * v91) & 0x264A1916)) ^ 0x13250C8Bu;
  STACK[0x1FD8] = v103;
  LODWORD(v61) = (((v102 + 2089117153 - 2 * v61) ^ v73) + 321195147 - ((2 * ((v102 + 2089117153 - 2 * v61) ^ v73)) & 0x264A1916)) ^ 0x13250C8B;
  v104 = (v55 - 2213305 - ((2 * v55) & 0xFFBC748E)) ^ 0xFFDE3A47;
  STACK[0x2180] = v104;
  LODWORD(STACK[0x1F98]) = v101 ^ 0xFFDE3A47;
  v105 = v61;
  LODWORD(v86) = v61 ^ STACK[0x2198];
  LODWORD(STACK[0x1EF8]) = v86;
  LODWORD(v61) = v86 ^ v101 ^ 0xFFDE3A47 ^ v99;
  LODWORD(STACK[0x1FA0]) = v57 ^ 0xFFDE3A47;
  LODWORD(STACK[0x2178]) = v92 ^ v69;
  LODWORD(v86) = v92 ^ v69 ^ 0x30A59711;
  LODWORD(STACK[0x1E78]) = v86;
  LODWORD(v61) = v61 ^ v103 ^ v67 ^ v57 ^ 0xFFDE3A47 ^ v104 ^ v86 ^ (v98 + 816158481);
  LODWORD(v103) = STACK[0x1C9C];
  LODWORD(v98) = LODWORD(STACK[0x1D78]) - ((2 * LODWORD(STACK[0x1CC0])) & 0xF90ACBC2) - 542660669;
  LODWORD(v91) = (LODWORD(STACK[0x1D80]) - ((2 * LODWORD(STACK[0x1C9C])) & 0x165DA0CA) + 1369475571) ^ v69;
  LODWORD(STACK[0x20B0]) = v91;
  LODWORD(STACK[0x20C0]) = v98 ^ v73;
  LODWORD(STACK[0x1DA8]) = v91 ^ 0x1C30EF69;
  LODWORD(v55) = v98 ^ v73 ^ 0xF3052DD5;
  LODWORD(STACK[0x1D80]) = v55;
  LODWORD(v61) = v91 ^ 0x1C30EF69 ^ v55 ^ LODWORD(STACK[0x2240]) ^ (v61 - 217764395 - ((2 * v61) & 0xE60A5BAA));
  LODWORD(v98) = v61 - 1343677507 - ((2 * v61) & 0x5FD2377A);
  LODWORD(v61) = (LODWORD(STACK[0x1F48]) - ((2 * LODWORD(STACK[0x21A0])) & 0x165DA0CA) - 1378650738) ^ v69;
  v106 = v61 - 2213305 - ((2 * v61) & 0xFFBC748E);
  LODWORD(STACK[0x1F48]) = v106;
  LODWORD(v61) = (LODWORD(STACK[0x22B0]) + 187617381 - 2 * (STACK[0x22B0] & 0xB2ED06D ^ STACK[0x1F90] & 8)) ^ v69;
  v107 = v73;
  LODWORD(v55) = (LODWORD(STACK[0x1D98]) - ((2 * LODWORD(STACK[0x1CD0])) & 0xF90ACBC2) - 853552779) ^ v73;
  LODWORD(v92) = v55 + 321195147 - ((2 * v55) & 0x264A1916);
  LODWORD(v55) = (LODWORD(STACK[0x1D90]) - 2 * (STACK[0x1DD0] & 0x7C8565EF ^ STACK[0x1D90] & 0xE) - 1398216575) ^ v73;
  v108 = v55 + 321195147 - ((2 * v55) & 0x264A1916);
  LODWORD(STACK[0x1DD0]) = v108;
  LODWORD(v55) = (LODWORD(STACK[0x1F50]) - ((2 * LODWORD(STACK[0x1CC8])) & 0xF90ACBC2) - 1882731809) ^ v107;
  LODWORD(v104) = v55 + 321195147 - ((2 * v55) & 0x264A1916);
  LODWORD(v62) = STACK[0x2070] ^ v83;
  v109 = (LODWORD(STACK[0x1D88]) - ((2 * STACK[0x2070]) & 0xF90ACBC2) + 1099987484) ^ v107;
  LODWORD(v55) = STACK[0x1ED0];
  LODWORD(v67) = v87 ^ 0xB64EC85F ^ ((LODWORD(STACK[0x1ED0]) ^ (((LODWORD(STACK[0x1CA8]) + 836080772) & 0x64FF75F1 ^ 0x64FF75F1) + ((LODWORD(STACK[0x1CA8]) + 836080772) & 0x64FF75F1))) + 187617381 - 2 * ((LODWORD(STACK[0x1ED0]) ^ (((LODWORD(STACK[0x1CA8]) + 836080772) & 0x64FF75F1 ^ 0x64FF75F1) + ((LODWORD(STACK[0x1CA8]) + 836080772) & 0x64FF75F1))) & 0xB2ED06D ^ STACK[0x1ED0] & 8));
  LODWORD(STACK[0x2240]) = v67;
  LODWORD(v83) = (v61 - 2213305 - ((2 * v61) & 0xFFBC748E)) ^ 0xFFDE3A47;
  LODWORD(STACK[0x21A0]) = v83;
  LODWORD(v92) = v92 ^ 0x13250C8B;
  LODWORD(STACK[0x22B0]) = v92;
  LODWORD(v91) = v104 ^ 0x13250C8B;
  LODWORD(v104) = (v109 + 321195147 - ((2 * v109) & 0x264A1916)) ^ 0x13250C8B;
  LODWORD(STACK[0x2130]) = v104;
  LODWORD(v61) = LODWORD(STACK[0x22E0]) ^ v106 ^ v92;
  LODWORD(STACK[0x21C8]) = v91;
  LODWORD(v91) = v91 ^ v83;
  LODWORD(STACK[0x1F50]) = v91;
  LODWORD(STACK[0x2068]) = v108 ^ 0x13250C8B;
  LODWORD(v61) = v91 ^ v61 ^ v108 ^ 0x13250C8B ^ v104 ^ v67 ^ v98;
  LODWORD(STACK[0x2000]) = v61 + 1082753262 - ((2 * v61) & 0x811301DC);
  v110 = STACK[0x1DC0];
  LODWORD(STACK[0x1F90]) = LODWORD(STACK[0x2280]) - ((2 * LODWORD(STACK[0x1DC0])) & 0xF90ACBC2) + 53449906;
  v111 = STACK[0x2138];
  v112 = STACK[0x21C0];
  v113 = STACK[0x2248];
  v114 = STACK[0x21F0];
  v115 = STACK[0x2248] << STACK[0x21F0];
  LODWORD(v91) = ((STACK[0x20F0] & (STACK[0x21C0] >> v111)) << v111) + ((STACK[0x20F0] & (STACK[0x2248] << v114)) >> v114);
  LODWORD(v67) = STACK[0x1CA4];
  LODWORD(v58) = STACK[0x2100];
  LODWORD(v91) = v91 ^ ((v58 & (((v91 ^ ((v91 & v67) >> 1)) & v58) >> 1) ^ v91 & v67) >> 1);
  v116 = LODWORD(STACK[0x20C8]) ^ 0x6D086AD0;
  LODWORD(v82) = STACK[0x20C8];
  v117 = STACK[0x1CB0];
  v118 = v117 & ((v117 & (LODWORD(STACK[0x20C8]) ^ 0x2D086AD8u)) >> 2);
  LODWORD(STACK[0x1FB8]) = v118 & ((v91 & v116) >> 4) ^ v91;
  v119 = STACK[0x2200];
  LODWORD(v91) = ((STACK[0x20D8] & (STACK[0x2200] << v114)) >> v114) + ((STACK[0x20D8] & (v112 >> v111)) << v111);
  LODWORD(v91) = v117 & (((v91 ^ ((v91 & v58) >> 1)) & v58) >> 2) ^ v91 ^ ((v91 & v58) >> 1);
  v120 = v82;
  LODWORD(v92) = v117 & (v82 ^ 0x2D086AD9) & ((v91 & v58) >> 2);
  LODWORD(STACK[0x2090]) = ((v67 & (v92 >> 1)) >> (!(v92 & 1) + (v92 & 1))) ^ v91;
  LODWORD(v91) = LODWORD(STACK[0x2290]) ^ LODWORD(STACK[0x1DB8]) ^ LODWORD(STACK[0x21E8]) ^ LODWORD(STACK[0x21E0]) ^ LODWORD(STACK[0x2078]);
  LODWORD(v91) = (v91 - 693686471 - ((2 * v91) & 0xAD4E5E72)) ^ LODWORD(STACK[0x2270]);
  LODWORD(v55) = v100 ^ LODWORD(STACK[0x2150]) ^ LODWORD(STACK[0x1E18]) ^ LODWORD(STACK[0x2110]) ^ LODWORD(STACK[0x2148]) ^ LODWORD(STACK[0x20D0]) ^ LODWORD(STACK[0x2128]) ^ v103 ^ v62 ^ v55 ^ (v91 + 821265339 - ((2 * v91) & 0x61E70776));
  LODWORD(v55) = v110 ^ LODWORD(STACK[0x1E00]) ^ (v55 - 301599670 - ((2 * v55) & 0xDC0BE894));
  LODWORD(STACK[0x21E8]) = v55 + 285624746 - ((2 * v55) & 0x220C9354);
  v121 = v119 << STACK[0x2190];
  v122 = STACK[0x2190];
  LODWORD(v61) = ((STACK[0x1FD0] & (v112 >> v111)) << v111) ^ ((STACK[0x1FD0] & v121) >> STACK[0x2190]);
  LODWORD(v61) = v117 & (((v61 ^ ((v61 & v58) >> 1)) & v58) >> 2) ^ v61 ^ ((v61 & v58) >> 1);
  STACK[0x2070] = v118 & ((v61 & v116) >> 4) ^ v61;
  LODWORD(v61) = ((((LODWORD(STACK[0x1E30]) ^ 0xF8826E8C) & v58) >> 1) - 125669748 - ((LODWORD(STACK[0x1E30]) ^ 0xF8826E8C) & v58 & 0xF104DD18)) ^ LODWORD(STACK[0x1E30]);
  v123 = STACK[0x21B0];
  v124 = (v61 & STACK[0x21B0]) >> v111;
  v125 = v61 & v113;
  v126 = v113;
  LOBYTE(v113) = v114;
  LODWORD(STACK[0x2128]) = v124 + (v125 << v114) + 821265339 - ((2 * (v124 + (v125 << v114))) & 0x61E70776);
  v127 = v111;
  LODWORD(v125) = ((STACK[0x22A0] & v121) >> v122) ^ ((STACK[0x22A0] & (v123 >> v111)) << v111);
  v128 = STACK[0x22F0];
  v129 = STACK[0x1DF0];
  v130 = (((v125 ^ ((v125 & v128) >> 1)) & v128) >> 2) & ((LODWORD(STACK[0x1DF0]) ^ 0x20656DE4u) >> 1) ^ v125 ^ ((v125 & v128) >> 1);
  v131 = LODWORD(STACK[0x1DF0]) >> 1;
  v132 = STACK[0x2238];
  v133 = v112;
  v134 = v115;
  LODWORD(v124) = ((STACK[0x1F78] & (v112 >> v132)) << v132) | ((STACK[0x1F78] & v115) >> v113);
  v135 = v58;
  v136 = v124 ^ ((v124 & v58) >> 1);
  v137 = LODWORD(STACK[0x1DF0]) ^ 0xA0656DE0;
  v138 = v131 ^ 0x5032B6F2;
  v139 = (v131 ^ 0x5032B6F2) & (((v131 ^ 0x1032B6F0) & (LODWORD(STACK[0x1DF0]) ^ 0x20656DE4u)) >> 2);
  v140 = v139 & ((v130 & v137) >> 4);
  v141 = (((2 * v136) & 0xDA10D5B2) - v136 - 1829268186) ^ v120;
  if (v140 == v130)
  {
    v141 = v136;
  }

  v142 = v135;
  STACK[0x20D0] = v118 & (((v117 & ((v141 & v135) >> 2) ^ v136) & v116) >> 4) ^ v117 & ((v141 & v135) >> 2) ^ v136;
  v143 = v140 ^ v130;
  LODWORD(STACK[0x21E0]) = v143;
  v144 = STACK[0x2200];
  v145 = (((v143 ^ ((v143 & v128) >> 1)) & v123) >> v132) + (((v143 ^ ((v143 & v128) >> 1)) & STACK[0x2200]) << v122);
  v146 = v126;
  v147 = STACK[0x20E8];
  v148 = STACK[0x20E8] & (v126 << v122);
  v149 = STACK[0x21D0];
  v150 = STACK[0x21D0] & v134;
  v151 = v132;
  v152 = ((STACK[0x2168] & v121) >> v122) ^ ((STACK[0x2168] & (v123 >> v132)) << v132);
  v153 = v138 & (((v152 ^ ((v152 & v128) >> 1)) & v128) >> 2) ^ v152 ^ ((v152 & v128) >> 1);
  v154 = v139 & ((v153 & v137) >> 4) ^ v153;
  LODWORD(STACK[0x2280]) = v154;
  v155 = ((v147 & (v123 >> v132)) << v132) ^ (v148 >> v122);
  v156 = v138 & (((v155 ^ ((v155 & v128) >> 1)) & v128) >> 2) ^ v155 ^ ((v155 & v128) >> 1);
  v157 = ((v156 & v137) >> 4) & ((((v129 >> 2) ^ 0x8195B78) & (v129 ^ 0x656DE4) & (v131 ^ 0x1032B6F2)) >> 1) ^ v156;
  LODWORD(STACK[0x2148]) = v157;
  v158 = (((v154 ^ ((v154 & v128) >> 1)) & v144) << v122) ^ (((v154 ^ ((v154 & v128) >> 1)) & v133) >> v132) ^ (((v157 ^ ((v157 & v142) >> 1)) & v146) << v122) ^ (((v157 ^ ((v157 & v142) >> 1)) & v123) >> v127);
  v159 = (v149 & (v123 >> v132)) << v132;
  v160 = STACK[0x2108];
  v161 = STACK[0x21F0];
  LODWORD(v150) = ((v150 >> v161) + v159) ^ ((((v150 >> v161) + v159) & v128) >> 1);
  LODWORD(v150) = v139 & (((v138 & ((v150 & v128) >> 2) ^ v150) & v137) >> 4) ^ v138 & ((v150 & v128) >> 2) ^ v150;
  LODWORD(STACK[0x22A0]) = v150;
  v162 = v158 ^ (((v150 ^ ((v150 & v128) >> 1)) & v144) << v161) ^ (((v150 ^ ((v150 & v128) >> 1)) & v133) >> v132);
  v163 = LODWORD(STACK[0x1F50]) ^ v90 ^ LODWORD(STACK[0x20A8]) ^ STACK[0x1FD8] ^ LODWORD(STACK[0x1DD0]);
  v164 = LODWORD(STACK[0x2250]) ^ LODWORD(STACK[0x1D80]) ^ LODWORD(STACK[0x2298]) ^ (v163 - 217764395 - ((2 * v163) & 0xE60A5BAA));
  v165 = LODWORD(STACK[0x2060]) ^ LODWORD(STACK[0x1FF8]) ^ STACK[0x2230] ^ LODWORD(STACK[0x2290]) ^ (LODWORD(STACK[0x1FC8]) - ((2 * v160) & 0xC37EB57C) - 1879802411) ^ 0xF6B907B0;
  LODWORD(v150) = LODWORD(STACK[0x1D48]) ^ LODWORD(STACK[0x22C8]) ^ LODWORD(STACK[0x2258]) ^ (v165 - 1277561644 - ((2 * v165) & 0x67B3E9A8)) ^ (STACK[0x2180] - ((2 * STACK[0x2180]) & 0x614B2E22) + 816158481) ^ LODWORD(STACK[0x1F88]) ^ LODWORD(STACK[0x1E78]) ^ STACK[0x20B8];
  v166 = LODWORD(STACK[0x1EF8]) ^ LODWORD(STACK[0x1F40]) ^ LODWORD(STACK[0x1D40]) ^ LODWORD(STACK[0x1DB0]) ^ LODWORD(STACK[0x1DA8]) ^ (v164 + 472969065 - ((2 * v164) & 0x3861DED2)) ^ (v150 - 1987817586 - ((2 * v150) & 0x13089F1C));
  v167 = LODWORD(STACK[0x22E0]) ^ 0xFFDE3A47;
  LODWORD(v150) = LODWORD(STACK[0x1F48]) ^ 0xFFDE3A47;
  LODWORD(STACK[0x1FF8]) = v150;
  LODWORD(STACK[0x20A8]) = v167;
  v168 = LODWORD(STACK[0x1E88]) ^ v167 ^ v150 ^ LODWORD(STACK[0x22B0]) ^ LODWORD(STACK[0x2130]) ^ LODWORD(STACK[0x2240]) ^ v145 ^ (v166 - 1343677507 - ((2 * v166) & 0x5FD2377A)) ^ v162;
  v169 = LODWORD(STACK[0x1F90]) ^ LODWORD(STACK[0x1DF8]);
  LODWORD(STACK[0x2270]) = LODWORD(STACK[0x2000]) ^ v169 ^ 0x408980EE;
  LODWORD(STACK[0x1E18]) = (v168 + 1082753262 - ((2 * v168) & 0x811301DC)) ^ v169 ^ 0x408980EE;
  LOBYTE(v150) = ((LODWORD(STACK[0x1C50]) + 70) ^ 0x9F) - LODWORD(STACK[0x1EB0]);
  v170 = STACK[0x1EA8];
  v171 = -812407749 * ((-812407749 * ((v170 ^ STACK[0x1EF0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v170 ^ STACK[0x1EF0]) & 0x7FFFFFFF)) >> 16));
  v172 = STACK[0x1E58];
  v173 = STACK[0x1E60];
  v174 = STACK[0x1E50];
  v175 = STACK[0x1C48];
  LOBYTE(v171) = *(STACK[0x1C48] + (((*STACK[0x1EF0] ^ *(STACK[0x1E58] + (v171 >> 24)) ^ *(STACK[0x1E60] + (v171 >> 24) + 1) ^ *(STACK[0x1E50] + (v171 >> 24) + 1) ^ v171 ^ (-123 * BYTE3(v171))) + 105) ^ 0x7BLL)) ^ 0x23;
  v176 = STACK[0x1F00];
  v177 = -812407749 * ((-812407749 * ((v170 ^ v176) & 0x7FFFFFFF)) ^ ((-812407749 * ((v170 ^ v176) & 0x7FFFFFFF)) >> 16));
  v178 = STACK[0x1E90];
  v179 = STACK[0x1E98];
  v180 = STACK[0x1EA0];
  HIDWORD(v181) = *(STACK[0x2218] + (*(STACK[0x1E98] + (v177 >> 24)) ^ *((v177 >> 24) + STACK[0x1E90] + 3) ^ *(STACK[0x1EA0] + (v177 >> 24)) ^ *v176 ^ ((59 * ((59 * (v170 ^ v176)) ^ ((-812407749 * ((v170 ^ v176) & 0x7FFFFFFF)) >> 16))) ^ (-23 * ((-812407749 * ((-812407749 * ((v170 ^ v176) & 0x7FFFFFFF)) ^ ((-812407749 * ((v170 ^ v176) & 0x7FFFFFFF)) >> 16))) >> 24))) ^ 0x6Eu));
  LODWORD(v181) = ((((8 * HIDWORD(v181)) ^ 0x40) - ((16 * HIDWORD(v181)) & 0x55555555) - 88) ^ HIDWORD(v181)) << 24;
  LODWORD(v177) = *(STACK[0x1C48] + ((((v181 >> 25) ^ 0x58) - 27) ^ 0x45)) ^ 0x58;
  LODWORD(STACK[0x22E0]) = v177;
  LOBYTE(v153) = v150 ^ 0xC;
  v182 = STACK[0x1E68];
  LODWORD(v150) = *(STACK[0x1E68] + ((v171 + 124) ^ 0xD9)) ^ 0x6A;
  LODWORD(STACK[0x1E00]) = 16843009 * (v153 - v150 + v177 + 66) - 301599670 - ((33686018 * (v153 - v150 + v177 + 66)) & 0xDC0BE894);
  LODWORD(STACK[0x21B0]) = __ROR4__(__ROR4__(v169, 11) ^ 0xDEE4D8F8, 21) ^ 0x26C7C6F7;
  v183 = STACK[0x1FA8];
  v184 = v170;
  v185 = -812407749 * ((-812407749 * ((v170 ^ v183) & 0x7FFFFFFF)) ^ ((-812407749 * ((v170 ^ v183) & 0x7FFFFFFF)) >> 16));
  LODWORD(v185) = *(v175 + (((*v183 ^ *(v179 + (v185 >> 24)) ^ *((v185 >> 24) + v178 + 3) ^ *(v180 + (v185 >> 24)) ^ (59 * ((59 * (v170 ^ v183)) ^ ((-812407749 * ((v170 ^ v183) & 0x7FFFFFFF)) >> 16))) ^ (-23 * ((-812407749 * ((-812407749 * ((v170 ^ v183) & 0x7FFFFFFF)) ^ ((-812407749 * ((v170 ^ v183) & 0x7FFFFFFF)) >> 16))) >> 24))) + 74) ^ 0x70)) ^ 0xC7;
  v186 = -812407749 * ((-812407749 * ((v170 ^ STACK[0x1FC0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v170 ^ STACK[0x1FC0]) & 0x7FFFFFFF)) >> 16));
  LODWORD(v186) = *(v179 + (v186 >> 24)) ^ *((v186 >> 24) + v178 + 3) ^ v186 ^ *(v180 + (v186 >> 24)) ^ (-23 * (v186 >> 24)) ^ *STACK[0x1FC0];
  v187 = ((~(-44 - v186) & 0xD6) + ((-44 - v186) & 0xD6)) ^ (-44 - v186);
  v188 = STACK[0x2198];
  LOBYTE(v186) = (-44 - v186) ^ (37 - v186 - ((122 - 2 * v186) & 0x50)) ^ 0x73;
  LOBYTE(v186) = ((*(STACK[0x1F58] + v187) ^ v186) >> 1) | ((*(STACK[0x1F58] + v187) ^ v186) << 7);
  LODWORD(v185) = (v185 << 8) & 0xFF00FFFF | ((((*(STACK[0x2048] + (v186 ^ 0x54)) ^ 0xA8) - (((v186 ^ 0xE5) - 71) ^ v186 ^ 0xE5)) ^ 0x32) << 16);
  v189 = STACK[0x2008];
  v190 = -812407749 * ((-812407749 * ((v184 ^ v189) & 0x7FFFFFFF)) ^ ((-812407749 * ((v184 ^ v189) & 0x7FFFFFFF)) >> 16));
  v191 = v174;
  LODWORD(v190) = (-123 * ((-812407749 * ((-812407749 * ((v184 ^ v189) & 0x7FFFFFFF)) ^ ((-812407749 * ((v184 ^ v189) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ v190 ^ *(v172 + (v190 >> 24)) ^ *v189 ^ *(v173 + (v190 >> 24) + 1) ^ *(v174 + (v190 >> 24) + 1);
  LODWORD(v190) = v190 - ((2 * v190 + 24) & 0x50) - 76;
  LODWORD(v185) = v150 | ((((*(STACK[0x2048] + (v190 ^ 0xE1)) ^ 0xA8) - (((v190 ^ 0x50) - 71) ^ v190 ^ 0x50)) ^ 0x14) << 24) | v185;
  v192 = STACK[0x2140];
  LODWORD(v174) = (((v185 ^ ((v185 & STACK[0x2100]) >> 1)) & STACK[0x21C0]) >> STACK[0x2138]) ^ (((v185 ^ ((v185 & STACK[0x2100]) >> 1)) & STACK[0x2200]) << STACK[0x21F0]);
  v193 = STACK[0x2018];
  v194 = -812407749 * ((-812407749 * ((v184 ^ v193) & 0x7FFFFFFF)) ^ ((-812407749 * ((v184 ^ v193) & 0x7FFFFFFF)) >> 16));
  LODWORD(v194) = (-23 * ((-812407749 * ((-812407749 * ((v184 ^ v193) & 0x7FFFFFFF)) ^ ((-812407749 * ((v184 ^ v193) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ v194 ^ *((v194 >> 24) + v178 + 3) ^ *v193 ^ *(v179 + (v194 >> 24)) ^ *(v180 + (v194 >> 24));
  LODWORD(v161) = *(v175 + ((v194 - 2 * ((v194 + 8) & 0x2B ^ v194 & 3) + 48) ^ 0x11)) ^ 0x5A;
  v195 = STACK[0x2028];
  v196 = -812407749 * ((-812407749 * ((v184 ^ v195) & 0x7FFFFFFF)) ^ ((-812407749 * ((v184 ^ v195) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v196) = ((-23 * ((-812407749 * ((-812407749 * ((v184 ^ v195) & 0x7FFFFFFF)) ^ ((-812407749 * ((v184 ^ v195) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ (59 * ((59 * (v184 ^ v195)) ^ ((-812407749 * ((v184 ^ v195) & 0x7FFFFFFF)) >> 16))) ^ *((v196 >> 24) + v178 + 3) ^ *v195 ^ *(v179 + (v196 >> 24)) ^ *(v180 + (v196 >> 24))) - 58;
  v197 = STACK[0x2030];
  v198 = -812407749 * ((-812407749 * ((v184 ^ v197) & 0x7FFFFFFF)) ^ ((-812407749 * ((v184 ^ v197) & 0x7FFFFFFF)) >> 16));
  LODWORD(v196) = ((*(v182 + (((*(v175 + ((((-123 * ((-812407749 * ((-812407749 * ((v184 ^ v197) & 0x7FFFFFFF)) ^ ((-812407749 * ((v184 ^ v197) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ (59 * ((59 * (v184 ^ v197)) ^ ((-812407749 * ((v184 ^ v197) & 0x7FFFFFFF)) >> 16))) ^ *(v172 + (v198 >> 24)) ^ *v197 ^ *(v173 + (v198 >> 24) + 1) ^ *(v191 + (v198 >> 24) + 1)) - 89) ^ 0xEDLL)) ^ 0xF4) + 124) ^ 0xD9)) ^ 0x6A) << 16) | ((((*(STACK[0x2048] + (v196 ^ 0x8CLL)) ^ 0xA8) - (((v196 ^ 0x3D) - 71) ^ v196 ^ 0x3D)) ^ 0x41) << 8) | (v161 << 24) | LODWORD(STACK[0x22E0]);
  v199 = (((v196 ^ ((v196 & STACK[0x22F0]) >> 1)) & STACK[0x21C0]) >> v151) + (((v196 ^ ((v196 & STACK[0x22F0]) >> 1)) & STACK[0x2248]) << STACK[0x2190]);
  LODWORD(v196) = (LODWORD(STACK[0x20E0]) + 2089117153 - ((2 * LODWORD(STACK[0x20E0])) & 0xF90ACBC2)) ^ LODWORD(STACK[0x1DF8]);
  LODWORD(v196) = ((v196 + 321195147 - ((2 * v196) & 0x264A1916)) ^ 0x13250C8B) - LODWORD(STACK[0x1DA0]);
  LODWORD(v161) = 1763806811 * (v174 ^ (-887550497 * (LODWORD(STACK[0x2160]) ^ v196) - ((-887550497 * (LODWORD(STACK[0x2160]) ^ v196)) >> 16) + ((-887550497 * (LODWORD(STACK[0x2160]) ^ v196) - ((-887550497 * (LODWORD(STACK[0x2160]) ^ v196)) >> 16)) >> 8)));
  LODWORD(v161) = 1341381651 * (v199 + ((v161 + WORD1(v161)) ^ ((v161 + WORD1(v161)) >> 8)));
  LODWORD(v173) = STACK[0x1ED8];
  LODWORD(v161) = (v161 + WORD1(v161) - ((v161 + WORD1(v161)) >> 8)) ^ LODWORD(STACK[0x1ED8]);
  LODWORD(STACK[0x2168]) = LODWORD(STACK[0x20B0]) ^ 0x36D6CB18 ^ v161 ^ (v161 + 920046360 - ((2 * v161) & 0x6DAD9630));
  LODWORD(v196) = -887550497 * (LODWORD(STACK[0x2010]) ^ v196) - ((-887550497 * (LODWORD(STACK[0x2010]) ^ v196)) >> 16);
  LODWORD(v196) = 1763806811 * (v174 ^ (v196 + (v196 >> 8))) + ((1763806811 * (v174 ^ (v196 + (v196 >> 8)))) >> 16);
  LODWORD(v196) = 1341381651 * (v199 + (v196 ^ (v196 >> 8))) + ((1341381651 * (v199 + (v196 ^ (v196 >> 8)))) >> 16);
  LODWORD(v195) = 266288557 * ((v196 - (v196 >> 8)) ^ v173);
  LODWORD(v196) = -1615873011 * (STACK[0x2050] + v188 + LODWORD(STACK[0x2010]));
  LODWORD(v196) = 34373417 * ((v196 + WORD1(v196)) ^ v173 ^ ((v196 + WORD1(v196)) >> 8));
  LODWORD(v196) = -563012061 * (v196 ^ WORD1(v196) ^ ((v196 ^ WORD1(v196)) >> 8) ^ v174);
  LODWORD(v196) = -2016312757 * ((v196 ^ WORD1(v196)) + ((v196 ^ WORD1(v196)) >> 8) - v199);
  LODWORD(v196) = v196 + WORD1(v196);
  LODWORD(STACK[0x22E0]) = (v196 + LODWORD(STACK[0x2068]) - 2 * (v196 & LODWORD(STACK[0x2068]))) ^ v196;
  LODWORD(STACK[0x1FA8]) = v196 ^ LODWORD(STACK[0x2240]) ^ (v196 - 1343677507 - ((2 * v196) & 0x5FD2377A));
  LODWORD(v196) = 34373417 * LODWORD(STACK[0x2188]);
  LODWORD(STACK[0x2048]) = v174;
  LODWORD(v196) = -563012061 * (v196 ^ WORD1(v196) ^ ((v196 ^ WORD1(v196)) >> 8) ^ v174);
  LODWORD(v196) = v196 ^ WORD1(v196);
  LODWORD(STACK[0x20D8]) = v199;
  v200 = -2016312757 * ((v196 >> 8) + v196 - v199);
  v201 = -2016312757 * (v196 - v199 + (v196 >> 8));
  LODWORD(STACK[0x2160]) = LODWORD(STACK[0x21B8]) ^ 0xFFDE3A47;
  v202 = LODWORD(STACK[0x2170]) ^ 0xFFDE3A47;
  LODWORD(v177) = LODWORD(STACK[0x20A0]) ^ 0xFFDE3A47;
  v203 = LODWORD(STACK[0x2080]) ^ 0xFFDE3A47;
  LODWORD(STACK[0x2030]) = LODWORD(STACK[0x2040]) ^ 0x13250C8B;
  STACK[0x2018] = LODWORD(STACK[0x1F80]) ^ 0xFFDE3A47;
  LODWORD(STACK[0x2028]) = LODWORD(STACK[0x1F70]) ^ 0xFFDE3A47;
  LODWORD(STACK[0x21B8]) = LODWORD(STACK[0x1F30]) ^ 0x13250C8B;
  LODWORD(v197) = LODWORD(STACK[0x1F08]) ^ 0x13250C8B;
  LODWORD(STACK[0x2188]) = LODWORD(STACK[0x1EE0]) ^ 0x13250C8B;
  LODWORD(v196) = LODWORD(STACK[0x2120]) ^ 0x13250C8B;
  v204 = LODWORD(STACK[0x1EE8]) ^ 0x13250C8B;
  LODWORD(STACK[0x21C0]) = LODWORD(STACK[0x1EB8]) ^ 0xFFDE3A47;
  LODWORD(STACK[0x1FD0]) = LODWORD(STACK[0x2250]) ^ 0x13250C8B;
  LODWORD(STACK[0x1E78]) = LODWORD(STACK[0x2298]) ^ 0x13250C8B;
  v205 = STACK[0x638];
  v206 = (((266288557 * v161) ^ ((266288557 * v161) >> 16)) - (((266288557 * v161) ^ ((266288557 * v161) >> 16)) >> 8)) ^ STACK[0x638];
  LODWORD(STACK[0x1EE0]) = v206 ^ 0x36D6CB18;
  LODWORD(v198) = ((v195 ^ WORD1(v195)) - ((v195 ^ WORD1(v195)) >> 8)) ^ v205;
  LODWORD(STACK[0x1EA8]) = v198;
  LODWORD(v198) = 8 * v198;
  LODWORD(STACK[0x2170]) = v198 & 0x18 ^ 0xAFE91BBD;
  STACK[0x2240] = -v198 & 0x18;
  v207 = (8 * v206) & 0x18;
  v208 = (-8 * v206) & 0x18;
  LODWORD(v191) = v205;
  LODWORD(v198) = (v200 + HIWORD(v200) + ((v200 + HIWORD(v200)) >> 8)) ^ v205;
  v209 = LODWORD(STACK[0x22B0]) - v201;
  LODWORD(STACK[0x20E8]) = STACK[0x20C0];
  LODWORD(STACK[0x20B0]) = STACK[0x2228];
  LODWORD(STACK[0x2078]) = v196;
  LODWORD(STACK[0x2298]) = STACK[0x2088];
  LODWORD(STACK[0x2000]) = STACK[0x22C8];
  LODWORD(STACK[0x2060]) = v173;
  LODWORD(STACK[0x20C0]) = STACK[0x21A8];
  LODWORD(STACK[0x20E0]) = STACK[0x21A0];
  LODWORD(STACK[0x21D0]) = STACK[0x21D8];
  LODWORD(STACK[0x2068]) = STACK[0x21F8];
  LODWORD(STACK[0x1DC0]) = STACK[0x2270];
  v210 = STACK[0x2178];
  LODWORD(STACK[0x2150]) = v197;
  v211 = STACK[0x1FA0];
  v212 = v202;
  LODWORD(STACK[0x21D8]) = v177;
  LODWORD(v177) = HIWORD(v201) - ((v201 >> 15) & 0x1AACE) + 21863;
  v213 = STACK[0x1F98];
  STACK[0x20A0] = v207;
  LODWORD(STACK[0x2270]) = v207 ^ 0xD6A72F39;
  STACK[0x2120] = v208;
  v214 = STACK[0x2290];
  v215 = STACK[0x1DB8];
  LODWORD(STACK[0x1EE8]) = v208 ^ 0x89844F8E;
  STACK[0x1DD0] = a50;
  LODWORD(STACK[0x1DF0]) = 321195147;
  LODWORD(STACK[0x21A0]) = v206;
  STACK[0x22F0] = v206;
  LODWORD(STACK[0x2250]) = v198;
  LODWORD(v196) = STACK[0x2260];
  v216 = STACK[0x22C0];
  LODWORD(STACK[0x22C0]) = STACK[0x22C0];
  v217 = v201 + v209;
  LODWORD(STACK[0x1F70]) = v196 + v198;
  v218 = v52 - 1064;
  LODWORD(STACK[0x2248]) = v52 - 1064;
  v219 = STACK[0x2250];
  v220 = (STACK[0x2250] & ((v52 - 1064) ^ 0x8D6)) == 0;
  STACK[0x2100] = ((v201 + (v177 ^ 0x5567) + ((v201 + (v177 ^ 0x5567)) >> 8)) ^ v191) + LODWORD(STACK[0x22A8]);
  if ((v219 & ((v52 - 1064) ^ 0x8D6)) != 0)
  {
    v221 = v160;
  }

  else
  {
    v221 = v214;
  }

  if ((v219 & (v218 ^ 0x8D6)) != 0)
  {
    v222 = v214;
  }

  else
  {
    v222 = v215;
  }

  v223 = STACK[0x22B8];
  if ((v219 & (v218 ^ 0x8D6)) != 0)
  {
    v224 = v215;
  }

  else
  {
    v224 = STACK[0x22B8];
  }

  if (v220)
  {
    v223 = v160;
    v225 = v188;
  }

  else
  {
    v225 = v210;
  }

  if (v220)
  {
    v226 = v211;
  }

  else
  {
    v226 = v188;
  }

  if (v220)
  {
    v211 = STACK[0x2180];
    v227 = v210;
  }

  else
  {
    v227 = STACK[0x2180];
  }

  if (v220)
  {
    v228 = v192;
  }

  else
  {
    v228 = STACK[0x1FF8];
  }

  if (v220)
  {
    v229 = v90;
  }

  else
  {
    v229 = v192;
  }

  if (v220)
  {
    v230 = STACK[0x2130];
  }

  else
  {
    v230 = v90;
  }

  if (v220)
  {
    v231 = STACK[0x1FF8];
  }

  else
  {
    v231 = STACK[0x2130];
  }

  if (v220)
  {
    v232 = v202;
  }

  else
  {
    v232 = STACK[0x2028];
  }

  if (v220)
  {
    v212 = STACK[0x2078];
  }

  v233 = STACK[0x2018];
  if (v220)
  {
    v234 = STACK[0x2018];
  }

  else
  {
    v234 = STACK[0x2078];
  }

  if (v220)
  {
    LODWORD(v233) = STACK[0x2028];
  }

  if ((v219 & 2) != 0)
  {
    v221 = v224;
  }

  LODWORD(STACK[0x22B0]) = v221;
  if ((v219 & 2) != 0)
  {
    v235 = v223;
  }

  else
  {
    v235 = v222;
  }

  LODWORD(STACK[0x2040]) = v235;
  if ((v219 & 2) != 0)
  {
    v236 = v222;
  }

  else
  {
    v236 = v223;
  }

  LODWORD(STACK[0x22C8]) = v236;
  if ((v219 & 2) != 0)
  {
    v237 = v225;
  }

  else
  {
    v237 = v211;
  }

  LODWORD(STACK[0x2028]) = v237;
  if ((v219 & 2) != 0)
  {
    v238 = v211;
  }

  else
  {
    v238 = v225;
  }

  LODWORD(STACK[0x1EB8]) = v238;
  if ((v219 & 2) != 0)
  {
    v239 = v226;
  }

  else
  {
    v239 = v227;
  }

  LODWORD(STACK[0x1F08]) = v239;
  if ((v219 & 2) != 0)
  {
    v240 = v227;
  }

  else
  {
    v240 = v226;
  }

  LODWORD(STACK[0x1ED0]) = v240;
  if ((v219 & 2) != 0)
  {
    v241 = v230;
  }

  else
  {
    v241 = v228;
  }

  LODWORD(STACK[0x1EF8]) = v241;
  if ((v219 & 2) != 0)
  {
    v242 = v228;
  }

  else
  {
    v242 = v230;
  }

  LODWORD(STACK[0x2130]) = v242;
  if ((v219 & 2) != 0)
  {
    v243 = v229;
  }

  else
  {
    v243 = v231;
  }

  LODWORD(STACK[0x1F80]) = v243;
  if ((v219 & 2) != 0)
  {
    v244 = v234;
  }

  else
  {
    v244 = v232;
  }

  LODWORD(STACK[0x1FF8]) = v244;
  if ((v219 & 2) != 0)
  {
    v245 = v232;
  }

  else
  {
    v245 = v234;
  }

  LODWORD(STACK[0x1E88]) = v245;
  if ((v219 & 2) != 0)
  {
    v246 = v212;
  }

  else
  {
    v246 = v233;
  }

  LODWORD(STACK[0x22B8]) = v246;
  if ((v219 & 2) != 0)
  {
    v247 = v233;
  }

  else
  {
    v247 = v212;
  }

  LODWORD(STACK[0x1FA0]) = v247;
  LODWORD(STACK[0x21A8]) = LODWORD(STACK[0x2158]) + 1076656873 + v219;
  v248 = STACK[0x22F0];
  v249 = v219 - STACK[0x22F0];
  v250 = STACK[0x2230];
  v251 = STACK[0x20B0];
  if (v249)
  {
    v252 = STACK[0x20B0];
  }

  else
  {
    v252 = STACK[0x2230];
  }

  v253 = STACK[0x1FB0];
  if (v249)
  {
    v251 = STACK[0x1FB0];
    v253 = STACK[0x2258];
  }

  else
  {
    LODWORD(v250) = STACK[0x2258];
  }

  if (v249)
  {
    v254 = v204;
  }

  else
  {
    v254 = v203;
  }

  v255 = STACK[0x21C0];
  if (v249)
  {
    v256 = v203;
  }

  else
  {
    v256 = STACK[0x21C0];
  }

  if (v249)
  {
    v257 = STACK[0x21D8];
  }

  else
  {
    v257 = v204;
  }

  if (v249)
  {
    v258 = v213;
  }

  else
  {
    v255 = STACK[0x21D8];
    v258 = v105;
  }

  v259 = STACK[0x1FD0];
  if (v249)
  {
    v260 = v105;
  }

  else
  {
    v260 = STACK[0x1FD0];
  }

  v261 = STACK[0x1E78];
  if ((v249 & 1) == 0)
  {
    v259 = STACK[0x1E78];
    v261 = v213;
  }

  v262 = STACK[0x1E80];
  if (v249)
  {
    v263 = v217;
  }

  else
  {
    v263 = STACK[0x1E80];
  }

  v264 = STACK[0x21B0];
  if (v249)
  {
    v217 = STACK[0x21B0];
    v264 = STACK[0x2020];
  }

  else
  {
    v262 = STACK[0x2020];
  }

  if ((v249 & 2) != 0)
  {
    v265 = v253;
  }

  else
  {
    v265 = v252;
  }

  if ((v249 & 2) == 0)
  {
    v252 = v253;
  }

  LODWORD(STACK[0x2088]) = v252;
  if ((v249 & 2) != 0)
  {
    v266 = v259;
  }

  else
  {
    v266 = v258;
  }

  LODWORD(STACK[0x1F90]) = v266;
  if ((v249 & 2) != 0)
  {
    v267 = v258;
  }

  else
  {
    v267 = v259;
  }

  LODWORD(STACK[0x20B0]) = v267;
  if ((v249 & 2) != 0)
  {
    v268 = v250;
  }

  else
  {
    v268 = v251;
  }

  LODWORD(STACK[0x2258]) = v268;
  if ((v249 & 2) != 0)
  {
    v269 = v251;
  }

  else
  {
    v269 = v250;
  }

  LODWORD(STACK[0x2080]) = v269;
  if ((v249 & 2) != 0)
  {
    v270 = v260;
  }

  else
  {
    v270 = v261;
  }

  LODWORD(STACK[0x2078]) = v270;
  if ((v249 & 2) != 0)
  {
    v271 = v261;
  }

  else
  {
    v271 = v260;
  }

  LODWORD(STACK[0x21C0]) = v271;
  if ((v249 & 2) != 0)
  {
    v272 = v264;
  }

  else
  {
    v272 = v263;
  }

  LODWORD(STACK[0x20F0]) = v272;
  if ((v249 & 2) != 0)
  {
    v273 = v263;
  }

  else
  {
    v273 = v264;
  }

  LODWORD(STACK[0x1F78]) = v273;
  if ((v249 & 2) != 0)
  {
    v274 = v217;
  }

  else
  {
    v274 = v262;
  }

  LODWORD(STACK[0x2178]) = v274;
  if ((v249 & 2) != 0)
  {
    v275 = v262;
  }

  else
  {
    v275 = v217;
  }

  LODWORD(STACK[0x2290]) = v275;
  if ((v249 & 2) != 0)
  {
    v276 = v256;
  }

  else
  {
    v276 = v257;
  }

  LODWORD(STACK[0x1F98]) = v276;
  if ((v249 & 2) != 0)
  {
    v277 = v257;
  }

  else
  {
    v277 = v256;
  }

  LODWORD(STACK[0x1F88]) = v277;
  if ((v249 & 2) != 0)
  {
    v278 = v255;
  }

  else
  {
    v278 = v254;
  }

  LODWORD(STACK[0x21D8]) = v278;
  if ((v249 & 2) != 0)
  {
    v279 = v254;
  }

  else
  {
    v279 = v255;
  }

  LODWORD(STACK[0x1FD0]) = v279;
  LODWORD(STACK[0x2230]) = v265 - v249;
  LODWORD(STACK[0x22A8]) = v248;
  LODWORD(STACK[0x20C8]) = v120;
  LODWORD(STACK[0x22F0]) = v120 >> 1;
  STACK[0x2200] = v216 ^ 0x1E20A285u;
  LODWORD(STACK[0x2250]) = v249;
  JUMPOUT(0x26AA4D9C8);
}

uint64_t sub_26AA4C6AC@<X0>(int a1@<W0>, unint64_t a2@<X1>, int a3@<W2>, unsigned __int8 a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, int a55)
{
  LODWORD(STACK[0x22C8]) = LODWORD(STACK[0x1DE8]) ^ LODWORD(STACK[0x1DC0]);
  v64 = LODWORD(STACK[0x2170]) ^ 0xBDu;
  v65 = LODWORD(STACK[0x2270]);
  v66 = v65 ^ 0x39u;
  LODWORD(STACK[0x22B0]) = (LODWORD(STACK[0x1F08]) << (v65 ^ 0x39u)) | (LODWORD(STACK[0x1F08]) >> a7);
  LODWORD(STACK[0x22A8]) = (LODWORD(STACK[0x1ED0]) >> a7) + (LODWORD(STACK[0x1ED0]) << v64);
  LODWORD(STACK[0x2298]) = (v56 | (v55 << 8)) ^ a3 ^ *(a6 + 4 * a4) ^ __ROR4__(*(a6 + 4 * (STACK[0x1F50] ^ a5)), 16);
  v67 = STACK[0x20B0];
  LODWORD(STACK[0x20B0]) = STACK[0x20B0];
  LODWORD(STACK[0x2228]) = (v67 << (v65 ^ 0x39u)) + (v67 >> a7);
  v68 = STACK[0x2078];
  LODWORD(STACK[0x2078]) = STACK[0x2078];
  STACK[0x2250] = a2;
  LODWORD(STACK[0x2200]) = (v68 >> a7) + (v68 << v64);
  v69 = (LODWORD(STACK[0x22B8]) << (v65 ^ 0x39u)) | (LODWORD(STACK[0x22B8]) >> a7);
  v70 = (v62 << v64) ^ (v62 >> a7);
  v71 = STACK[0x21C8];
  LODWORD(STACK[0x2290]) = v60;
  v72 = (v71 << (v65 ^ 0x39u)) | (v71 >> a7);
  v73 = STACK[0x1EB8];
  v74 = (v73 >> a7) ^ (v73 << v64);
  v75 = STACK[0x2028];
  v76 = v57;
  v77 = (v75 << (v65 ^ 0x39u)) | (v75 >> a7);
  v78 = STACK[0x1EF0];
  LODWORD(STACK[0x1EF0]) = STACK[0x1EF0];
  LODWORD(STACK[0x2188]) = a8;
  v79 = (v78 << (v65 ^ 0x39u)) ^ (v78 >> a7);
  v80 = v62;
  v81 = 67 * (a9 ^ 0x2D0);
  v82 = STACK[0x1F28];
  LODWORD(STACK[0x1F28]) = STACK[0x1F28];
  STACK[0x2010] = v58;
  v83 = (v82 >> a7) + (v82 << v64);
  v84 = STACK[0x2110];
  v85 = (v84 << v64) ^ (v84 >> a7);
  v86 = STACK[0x22E0];
  STACK[0x21F0] = v64;
  v87 = (v86 >> a7) ^ (v86 << v64);
  v88 = STACK[0x1F08];
  if (a7)
  {
    v88 = STACK[0x22B0];
  }

  LODWORD(STACK[0x2050]) = v88;
  v89 = STACK[0x1ED0];
  if (a7)
  {
    v89 = STACK[0x22A8];
  }

  LODWORD(STACK[0x2248]) = v89;
  v90 = STACK[0x2228];
  if (!a7)
  {
    v90 = v67;
  }

  LODWORD(STACK[0x2070]) = v90;
  v91 = STACK[0x2200];
  if (!a7)
  {
    v91 = v68;
  }

  LODWORD(STACK[0x2200]) = v91;
  v92 = STACK[0x22B8];
  if (a7)
  {
    v92 = v69;
  }

  LODWORD(STACK[0x21E0]) = v92;
  if (a7)
  {
    v93 = v70;
  }

  else
  {
    v93 = v80;
  }

  LODWORD(STACK[0x20C0]) = v93;
  v94 = STACK[0x2170];
  if (LODWORD(STACK[0x2170]) == -1343677507)
  {
    v95 = v73;
  }

  else
  {
    v95 = v74;
  }

  LODWORD(STACK[0x2068]) = v95;
  v96 = STACK[0x2270];
  v97 = LODWORD(STACK[0x2270]) == -693686471;
  LODWORD(STACK[0x21C8]) = v71;
  if (v96 == -693686471)
  {
    v98 = v71;
  }

  else
  {
    v98 = v72;
  }

  if (v97)
  {
    v99 = v75;
  }

  else
  {
    v99 = v77;
  }

  LODWORD(STACK[0x2048]) = v99;
  if (v97)
  {
    v100 = v78;
  }

  else
  {
    v100 = v79;
  }

  LODWORD(STACK[0x22B0]) = v100;
  LODWORD(STACK[0x2110]) = v84;
  if (v94 == -1343677507)
  {
    v101 = v84;
  }

  else
  {
    v101 = v85;
  }

  if (v94 == -1343677507)
  {
    v102 = v86;
  }

  else
  {
    v102 = v87;
  }

  LODWORD(STACK[0x22A8]) = v102;
  LODWORD(STACK[0x20D8]) = v81;
  v103 = a7 == v81 - 2077;
  if (a7 == v81 - 2077)
  {
    v104 = v82;
  }

  else
  {
    v104 = v83;
  }

  v105 = LODWORD(STACK[0x2298]) ^ (v104 - ((2 * v104) & 0x6BC7D5CC) + 904129254);
  v106 = (v105 ^ 0x35E3EAE6) - 840343674 - 2 * ((v105 ^ 0x35E3EAE6) & 0x4DE95F87 ^ v105 & 1);
  v107 = STACK[0x2108];
  STACK[0x1FD8] = v66;
  v108 = (v107 << v66) ^ (v107 >> a7);
  v109 = ~((2 * (LODWORD(STACK[0x1E18]) ^ a1 ^ v106)) & 0xC37EB57C) + (LODWORD(STACK[0x1E18]) ^ a1 ^ v106) + 1639930559;
  v110 = v59 >> 1;
  LODWORD(STACK[0x2228]) = v59 >> 1;
  v111 = (v59 >> 1) & 0x3BBBBBBB ^ 0x76DD6DC4;
  v112 = LODWORD(STACK[0x1EC0]) ^ 0xD2u;
  v113 = STACK[0x2288];
  v114 = LODWORD(STACK[0x2288]) ^ 0x5A224EA6;
  v115 = LODWORD(STACK[0x2278]) ^ 0x22345E8u;
  v116 = v115 & v111;
  v117 = LODWORD(STACK[0x1EC8]) ^ 0x68u;
  v118 = v101 ^ ((v114 & v111) >> (LODWORD(STACK[0x1EC0]) ^ 0xD2u)) ^ (v116 << (LODWORD(STACK[0x1EC8]) ^ 0x68u));
  v119 = STACK[0x2250];
  v120 = *(STACK[0x638] + 4 * BYTE2(STACK[0x2250])) ^ __ROR4__(STACK[0x2180], 8) ^ __ROR4__(*(STACK[0x638] + ((v76 >> 22) & 0x3FC)), 24);
  v121 = __ROR4__(*(STACK[0x638] + 4 * (LODWORD(STACK[0x1F30]) ^ 0x31u)), 16);
  v122 = LODWORD(STACK[0x1E28]) ^ 0xB42F749C;
  v123 = LODWORD(STACK[0x1DC8]) ^ 0x4025309C;
  LODWORD(STACK[0x2180]) = v123;
  v124 = v118 ^ (v123 + LODWORD(STACK[0x1DE0]) + v122 + (v120 ^ v121) + 1);
  v125 = STACK[0x2220];
  LODWORD(STACK[0x2220]) = STACK[0x2220];
  v126 = (v109 ^ v125) + 821265339 - ((2 * (v109 ^ v125)) & 0x61E70776);
  v127 = v124 + 821265339 - ((2 * v124) & 0x61E70776);
  v128 = LODWORD(STACK[0x22C8]) ^ 0xB3CF6882;
  LODWORD(STACK[0x2060]) = v128;
  v129 = LODWORD(STACK[0x21E8]) ^ 0xA2C92128;
  LODWORD(STACK[0x2058]) = v129;
  v130 = LODWORD(STACK[0x1E70]) ^ v125;
  LODWORD(STACK[0x21E8]) = v130;
  v131 = LODWORD(STACK[0x20C8]) >> 1;
  v132 = v131 & 0x3BBBBBBB ^ 0x45F7465F;
  v133 = STACK[0x1F18];
  v134 = LODWORD(STACK[0x1F20]);
  v135 = v134 ^ 0x7Cu;
  v136 = v98 ^ ((((LODWORD(STACK[0x1F18]) ^ 0x3975DD16) & v111) >> v112) | (v116 << (v134 ^ 0x7Cu))) ^ (LODWORD(STACK[0x2188]) + 1209335711 * (LODWORD(STACK[0x1E08]) + (v130 ^ 0x9285803)) + 1209335711);
  v137 = v136 + 821265339 - ((2 * v136) & 0x61E70776);
  LODWORD(STACK[0x2108]) = v107;
  if (v103)
  {
    v138 = v107;
  }

  else
  {
    v138 = v108;
  }

  v139 = (245866359 * v128) ^ (245866359 * v129) ^ v138 ^ *(STACK[0x638] + 4 * (STACK[0x2010] ^ 0xA8u)) ^ __ROR4__(*(STACK[0x638] + 4 * HIBYTE(v61)), 8) ^ __ROR4__(*(STACK[0x638] + ((v119 >> 22) & 0x3FC)), 24);
  v140 = __ROR4__(*(STACK[0x638] + 4 * (v63 ^ 0xA8u)), 16);
  v141 = (v114 & v132) >> (LODWORD(STACK[0x2038]) + 6);
  v142 = LODWORD(STACK[0x2038]) + 6;
  v143 = STACK[0x22C0];
  v144 = LODWORD(STACK[0x22C0]) ^ 0x1E20A285u;
  STACK[0x22C8] = v144;
  STACK[0x2298] = v117;
  STACK[0x2250] = v115;
  v145 = STACK[0x2128];
  v146 = LODWORD(STACK[0x2128]) ^ (((v115 & v132) << v135) + v141) ^ ((v139 ^ v140) + 821265339 - ((2 * (v139 ^ v140)) & 0x61E70776));
  v147 = (v141 | ((v132 & v144) << v117)) ^ LODWORD(STACK[0x2128]) ^ 0x5088D2FD ^ v126;
  v148 = v146 ^ 0x6700u;
  v149 = v127 ^ LODWORD(STACK[0x2128]);
  v150 = *(STACK[0x1F60] + ((HIBYTE(v149) + 124) ^ 0x26));
  v151 = STACK[0x1F58];
  v152 = ((v150 >> 2) ^ 0x2A | (v150 << 6)) ^ (2 * ((v150 >> 2) ^ 0x2A)) & 0x56;
  LOBYTE(v150) = (*(STACK[0x1F68] + (((v147 >> 4) & 0xF0 | (v147 >> 12)) ^ 0xFELL)) ^ 0xA8) - 37;
  v153 = v137 ^ v145;
  v154 = ((((v137 ^ v145) >> 7) & 0xFE | (((v137 ^ v145) & 0x8000) != 0)) - (((v137 ^ v145) >> 6) & 0x50) - 88) ^ 0xF5 ^ *(STACK[0x2208] + ((((v137 ^ v145) >> 7) & 0xFE | ((v137 ^ v145) >> 15) & 1) ^ 0xE7));
  v155 = *(STACK[0x1F58] + (BYTE1(v148) ^ 0xD6)) ^ (BYTE1(v148) ^ (BYTE1(v148) - 87)) ^ 0xA8 ^ 0x73u;
  v156 = (v155 >> 1) & 0xFFFFFFFFFFFFFF7FLL | ((v155 & 1) << 7);
  LODWORD(v155) = v110 & 0x71F1F1F1 ^ 0xA203F352;
  v157 = ((v143 ^ 0x1220A281) & v155) << v117;
  v158 = LODWORD(STACK[0x2048]) ^ ((((v133 ^ 0xB171D112) & v155) >> v112) + v157) ^ __ROR4__(*(STACK[0x638] + 4 * HIBYTE(v153)), 24) ^ __ROR4__(*(STACK[0x638] + 4 * v156), 8) ^ __ROR4__(*(STACK[0x638] + 4 * v147), 16) ^ *(STACK[0x638] + 4 * BYTE2(v149));
  LODWORD(v156) = v113;
  v159 = v113 ^ 0xD22242A2;
  LODWORD(v155) = LODWORD(STACK[0x2248]) ^ ((((v113 ^ 0xD22242A2) & v155) >> v142) | v157) ^ __ROR4__(*(STACK[0x638] + 4 * ((v150 ^ (16 * v150) ^ 0xEC) + 41)), 8) ^ __ROR4__(*(STACK[0x638] + 4 * (v152 ^ 0x37u)), 24) ^ __ROR4__(*(STACK[0x638] + 4 * v153), 16) ^ *(STACK[0x638] + 4 * BYTE2(v148));
  LODWORD(STACK[0x2248]) = v131;
  v160 = v131 & 0x71F1F1F1 ^ 0xD363D283;
  v161 = STACK[0x2278];
  v162 = (LODWORD(STACK[0x2278]) ^ 0x22341E0) & v160;
  v163 = (v133 ^ 0xB171D112) & v160;
  v164 = v159 & v160;
  v165 = v162 << v135;
  v166 = LODWORD(STACK[0x2050]) ^ ((v163 >> v112) | v165) ^ __ROR4__(*(STACK[0x638] + ((v147 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(STACK[0x638] + 4 * BYTE1(v149)), 8) ^ __ROR4__(*(STACK[0x638] + 4 * v146), 16) ^ *(STACK[0x638] + 4 * BYTE2(v153));
  v167 = v166 + 821265339 - ((2 * v166) & 0x61E70776);
  LOBYTE(v166) = (v164 & 0xE0) + (v164 & 0xE0 ^ 0xE8);
  v168 = STACK[0x638];
  LODWORD(v147) = LODWORD(STACK[0x2068]) ^ (v165 + (v164 >> v142)) ^ __ROR4__(*(STACK[0x638] + ((v148 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(STACK[0x638] + 4 * v149), 16) ^ *(STACK[0x638] + 4 * BYTE2(v147));
  v169 = __ROR4__(*(STACK[0x638] + 4 * (v154 - 55)), 8);
  LODWORD(v164) = (v147 ^ v169) + 821265339 - ((2 * (v147 ^ v169)) & 0x61E70776);
  LODWORD(v165) = (v155 + 821265339 - ((2 * v155) & 0x61E70776)) ^ v145;
  v170 = v165 ^ 0x6700;
  v171 = STACK[0x2170];
  v172 = *(v151 + ((v170 >> ((v166 + 32) & 0xF8)) ^ 0xD6)) ^ ((v170 >> ((v166 + 32) & 0xF8)) ^ ((v170 >> ((v166 + 32) & 0xF8)) - 87)) ^ 0xA8 ^ 0x73;
  LODWORD(v155) = (v172 >> 1) & 0xFFFFFF7F | ((v172 & 1) << 7);
  v173 = v164 ^ v145;
  v174 = (v158 + 821265339 - ((2 * v158) & 0x61E70776)) ^ v145;
  HIDWORD(v175) = *(STACK[0x638] + 4 * v155);
  LODWORD(v175) = HIDWORD(v175);
  v176 = ((v175 >> 8) ^ __ROR4__(*(STACK[0x638] + 4 * (v164 ^ v145)), 16) ^ *(STACK[0x638] + 4 * BYTE2(v174)) ^ __ROR4__(*(STACK[0x638] + 4 * ((v167 ^ v145) >> 24)), 24)) + 523695169 * (LODWORD(STACK[0x2060]) - LODWORD(STACK[0x2058]));
  LOBYTE(v149) = *(STACK[0x2210] + (((16 * ((v167 ^ v145) & 0xF)) | ((v167 ^ v145) >> 4)) ^ 0x34)) ^ 0x81;
  LODWORD(v155) = *(STACK[0x638] + 4 * ((v167 ^ v145) >> 16)) ^ __ROR4__(*(STACK[0x638] + 4 * BYTE1(v174)), 8) ^ __ROR4__(*(STACK[0x638] + ((v173 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(STACK[0x638] + 4 * v165), 16);
  LODWORD(v163) = (LODWORD(STACK[0x2220]) ^ LODWORD(STACK[0x20F8]) ^ 0x53A9FAC7) + (LODWORD(STACK[0x1E18]) ^ 0x5088D2FD);
  LODWORD(v164) = (-1873416749 * (LODWORD(STACK[0x21E8]) ^ 0xF6D7A7FC)) ^ (-1873416749 * LODWORD(STACK[0x1E08])) ^ __ROR4__(*(STACK[0x638] + ((v170 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(STACK[0x638] + 4 * ((v167 ^ v145) >> 8)), 8) ^ *(STACK[0x638] + 4 * BYTE2(v173)) ^ __ROR4__(*(STACK[0x638] + 4 * v174), 16);
  LODWORD(v173) = LODWORD(STACK[0x1DE0]) ^ LODWORD(STACK[0x2200]) ^ __ROR4__(*(STACK[0x638] + 4 * HIBYTE(v174)), 24) ^ __ROR4__(*(STACK[0x638] + 4 * BYTE1(v173)), 8) ^ *(STACK[0x638] + 4 * BYTE2(v170));
  LODWORD(v175) = __ROR4__(*(STACK[0x638] + 4 * ((v149 - ((2 * v149 + 82) & 0x50) - 47) ^ 0xA8u)), 16);
  LODWORD(v165) = STACK[0x2228] & 0x76767676 ^ 0xAC8AFEDA;
  LODWORD(v170) = v164 - LODWORD(STACK[0x2180]);
  LODWORD(STACK[0x22C0]) = v143;
  v177 = (v143 ^ 0x1E20A284) & v165;
  LODWORD(STACK[0x1F18]) = v133;
  v178 = STACK[0x2298];
  STACK[0x2200] = v112;
  v179 = ((v133 ^ 0xB874DC16) & v165) >> v112;
  LODWORD(v173) = (v179 + (v177 << v178)) ^ LODWORD(STACK[0x1E28]) ^ ((v173 ^ v175) + 1271958371 - ((2 * (v173 ^ v175)) & 0x97A116C6));
  v180 = STACK[0x20C8] & 0xECECECEC;
  v181 = STACK[0x2070];
  v182 = ((v180 ^ 0x6C0868C8) >> (v181 & 1) >> !(v181 & 1)) ^ 0xECECECEC;
  LODWORD(v155) = (v179 | (((v161 ^ 0x22244E8) & v165) << v135)) ^ LODWORD(STACK[0x22A8]) ^ (v155 + 352403899 * v163 + 352403899);
  LODWORD(v177) = v155 + 821265339 - ((2 * v155) & 0x61E70776);
  v183 = STACK[0x22C8];
  LODWORD(STACK[0x2288]) = v156;
  LODWORD(STACK[0x22A8]) = v156 ^ 0xDA224EA6;
  v184 = (((v182 & (v156 ^ 0xDA224EA6)) >> v142) | ((v182 & v183) << v178)) ^ LODWORD(STACK[0x21E0]) ^ v176;
  LODWORD(v183) = (v180 >> 1) ^ 0xDAE8D888;
  v185 = ((v133 ^ 0xB874DC16) & v183) >> v142;
  STACK[0x21E8] = v135;
  v186 = ((v161 ^ 0x22244E8) & v183) << v135;
  v187 = STACK[0x1F28];
  v188 = STACK[0x1EF0];
  LODWORD(v186) = (v181 ^ (v185 | v186) ^ v170) + 821265339 - ((2 * (v181 ^ (v185 | v186) ^ v170)) & 0x61E70776);
  v189 = (v184 + 821265339 - ((2 * v184) & 0x61E70776)) ^ v145;
  v190 = v189 >> ((v185 & 8 ^ 8) + (v185 & 8));
  v191 = (v190 >> 7) & 1 | (2 * (v190 & 0x7F));
  LODWORD(v190) = (v190 >> 7) & 1 | (2 * (v190 & 0x7F)) & 0x99;
  v192 = v186 ^ v145;
  v193 = STACK[0x20B0];
  v194 = *(STACK[0x2208] + (v191 ^ 0xE7)) ^ v191 ^ ((((v190 ^ 0x81) + (v190 ^ 0x18)) | 0x12) - ((2 * ((v190 ^ 0x81) + (v190 ^ 0x18))) & 0x50) - 88) ^ 0x6E;
  HIDWORD(v175) = *(STACK[0x1F60] + ((v189 + 124) ^ 0x26));
  LODWORD(v175) = (HIDWORD(v175) ^ 0xAAAAAAAA) << 24;
  v195 = (v173 + 821265339 - ((2 * v173) & 0x61E70776)) ^ v145;
  LODWORD(v191) = *(STACK[0x1F60] + ((BYTE2(v192) + 124) ^ 0x26));
  v196 = v177 ^ v145;
  v197 = *(v168 + 4 * (((v191 >> 2) ^ 0x2A | (v191 << 6)) ^ (2 * ((v191 >> 2) ^ 0x2A)) & 0x56 ^ 0x37u)) ^ __ROR4__(*(v168 + 4 * ((v175 >> 26) ^ 0x37 ^ (2 * (v175 >> 26)) & 0x56u)), 16);
  HIDWORD(v175) = *(STACK[0x1F60] + ((BYTE1(v192) + 124) ^ 0x26));
  LODWORD(v175) = (HIDWORD(v175) ^ 0xAAAAAAAA) << 24;
  v198 = v192 >> ((v195 & 0x18 ^ 0x18) + (v195 & 0x18));
  v199 = *(v168 + 4 * v192);
  v200 = *(v168 + 4 * ((v175 >> 26) ^ 0x37 ^ (2 * (v175 >> 26)) & 0x56u));
  HIDWORD(v175) = *(v168 + ((v195 >> 22) & 0x3FC));
  LODWORD(v175) = HIDWORD(v175);
  v201 = v175 >> 24;
  v202 = *(STACK[0x1E68] + ((v196 + 124) ^ 0xD9)) ^ 0x6ALL;
  v203 = (v175 >> 24) & 0x200;
  if ((v203 & v197) != 0)
  {
    LODWORD(v203) = -v203;
  }

  HIDWORD(v204) = v199;
  LODWORD(v204) = v199;
  v205 = v203 + v197;
  v206 = STACK[0x2078];
  v207 = STACK[0x2290];
  v208 = *(v168 + 4 * BYTE2(v195)) ^ __ROR4__(v200, 8);
  v209 = (v204 >> 16) ^ __ROR4__(*(v168 + 4 * BYTE1(v195)), 8) ^ *(v168 + 4 * BYTE2(v189)) ^ __ROR4__(*(v168 + ((v196 >> 22) & 0x3FC)), 24);
  v210 = STACK[0x2120];
  v211 = STACK[0x2120];
  STACK[0x21E0] = v142;
  v212 = v208 ^ __ROR4__(*(v168 + 4 * v202), 16) ^ __ROR4__(*(v168 + ((v189 >> 22) & 0x3FC)), 24);
  v213 = STACK[0x2270];
  v214 = LODWORD(STACK[0x21A0]) ^ __ROR4__(*(v168 + 4 * v198), 24) ^ *(v168 + 4 * BYTE2(v196)) ^ __ROR4__(*(v168 + 4 * (v194 - 55)), 8);
  LODWORD(v204) = __ROR4__(*(v168 + 4 * v195), 16);
  v215 = ((v214 ^ v204) - ((2 * (v214 ^ v204)) & 0x6DAD9630) + 920046360) ^ LODWORD(STACK[0x1EE0]);
  v216 = STACK[0x20A0];
  v217 = STACK[0x1F08];
  v218 = v171;
  v219 = v210;
  v220 = ((LODWORD(STACK[0x21A8]) - 1076656873) ^ (v216 - 693686471 - ((2 * v216) & 0xAD4E5E72)) ^ LODWORD(STACK[0x2270]) ^ LODWORD(STACK[0x1F40]) ^ v201 & 0xFFFFFDFF ^ __ROR4__(*(v168 + 4 * BYTE1(v196)), 8) ^ v205) - (LODWORD(STACK[0x1EE8]) ^ 0x89844F8E) + v210;
  v221 = STACK[0x2240];
  v222 = STACK[0x2240] ^ v219 ^ ((v171 ^ 0x5016E442) + STACK[0x20A0] + LODWORD(STACK[0x1F40]) - STACK[0x2100] + v212 + 1);
  v223 = STACK[0x1ED0];
  v224 = v215 + LODWORD(STACK[0x1EA8]) - LODWORD(STACK[0x21A0]);
  v225 = STACK[0x2168];
  v226 = v219;
  STACK[0x1FB8] = LODWORD(STACK[0x2168]);
  STACK[0x2100] = v225 >> v219;
  LODWORD(STACK[0x1DE8]) = STACK[0x22B0];
  v227 = v224;
  LODWORD(STACK[0x22B0]) = v220;
  LODWORD(STACK[0x1ED8]) = v222;
  v228 = STACK[0x20C0];
  LODWORD(STACK[0x2180]) = v209;
  v229 = STACK[0x21D0];
  v230 = STACK[0x21B0];
  v231 = STACK[0x2020];
  v232 = STACK[0x2258];
  v233 = STACK[0x2080];
  v234 = STACK[0x2018];
  LODWORD(STACK[0x2270]) = v213;
  LODWORD(STACK[0x2168]) = v225;
  LODWORD(STACK[0x1E18]) = v209;
  LODWORD(STACK[0x2058]) = v220;
  LODWORD(STACK[0x2188]) = v222;
  LODWORD(STACK[0x1E08]) = v224;
  LODWORD(STACK[0x2020]) = v224 ^ v228;
  v235 = LODWORD(STACK[0x2088]) ^ LODWORD(STACK[0x1EB8]) ^ v193 ^ v206 ^ v234;
  v236 = v188 ^ LODWORD(STACK[0x2000]);
  STACK[0x2258] = 0;
  LODWORD(STACK[0x20C0]) = v235 ^ v236;
  LODWORD(STACK[0x21A0]) = STACK[0x2198] ^ v223 ^ LODWORD(STACK[0x2118]);
  LODWORD(STACK[0x21B0]) = STACK[0x20B8] ^ v217 ^ v232 ^ v187 ^ LODWORD(STACK[0x22E0]) ^ v233;
  LODWORD(STACK[0x21D0]) = LODWORD(STACK[0x20A8]) ^ STACK[0x20D0] ^ LODWORD(STACK[0x2040]);
  LODWORD(STACK[0x2240]) = LODWORD(STACK[0x2028]) ^ LODWORD(STACK[0x2108]);
  v237 = STACK[0x2148];
  v238 = STACK[0x2148];
  LODWORD(STACK[0x2148]) = STACK[0x2148];
  v239 = STACK[0x21F0];
  v240 = (v237 >> v211) ^ (v237 << STACK[0x21F0]);
  v241 = v230 + 1011915507 - ((2 * v230) & 0x78A135E6);
  v242 = LODWORD(STACK[0x20E8]) + 1011915507 - ((2 * LODWORD(STACK[0x20E8])) & 0x78A135E6);
  v243 = v213 ^ 0xD6A72F39;
  STACK[0x22E0] = v243;
  v244 = v243 - 693686471 - 2 * (v243 & 0x56A72F3D ^ v213 & 4);
  v245 = (LODWORD(STACK[0x21D8]) >> v221) ^ (LODWORD(STACK[0x21D8]) << v216);
  if (!v221)
  {
    v245 = STACK[0x21D8];
  }

  LODWORD(STACK[0x20B8]) = v245;
  v246 = STACK[0x2260];
  v247 = STACK[0x2260];
  LODWORD(STACK[0x2260]) = STACK[0x2260];
  v248 = STACK[0x1E88];
  v249 = v209 ^ (v227 + 1931894850 + (((v222 ^ 0x1043C5C8) + v220 + 364422343) ^ 0xD74CDCB1));
  v250 = v249 ^ 0x3104DDC3 ^ v242;
  LODWORD(STACK[0x21D8]) = v249 ^ 0x3104DDC3;
  if (v218 != -1343677507)
  {
    LODWORD(v250) = (v250 << v239) ^ (v250 >> v211);
  }

  LODWORD(STACK[0x2198]) = v250;
  v251 = LODWORD(STACK[0x2090]) ^ 0xD544730 ^ v249;
  LODWORD(STACK[0x2118]) = v249;
  if (v218 != -1343677507)
  {
    LODWORD(v251) = (v251 << v239) ^ (v251 >> v211);
  }

  LODWORD(STACK[0x20E8]) = v251;
  if (v218 == -1343677507)
  {
    v240 = v238;
  }

  LODWORD(STACK[0x1F70]) = v240;
  if (v218 == -1343677507)
  {
    v252 = v247;
  }

  else
  {
    v252 = (v246 >> v211) + (v246 << v239);
  }

  LODWORD(STACK[0x1F88]) = v252;
  v253 = v226 == 0;
  v254 = v226;
  if (v226)
  {
    v255 = (v248 >> v211) | (v248 << v239);
  }

  else
  {
    v255 = v248;
  }

  LODWORD(STACK[0x20A8]) = v255;
  if (v253)
  {
    v256 = STACK[0x1FF8];
  }

  else
  {
    v256 = (LODWORD(STACK[0x1FF8]) >> v211) | (LODWORD(STACK[0x1FF8]) << (v244 ^ 0x39u));
  }

  LODWORD(STACK[0x20B0]) = v256;
  v257 = v249 ^ 0x3104DDC3 ^ v241;
  if (v253)
  {
    v258 = v257;
  }

  else
  {
    v258 = (v257 << (v244 ^ 0x39u)) ^ (v257 >> v211);
  }

  LODWORD(STACK[0x2108]) = v258;
  if (v244 == -693686471)
  {
    v259 = v229;
  }

  else
  {
    v259 = (v229 >> v211) + (v229 << (v244 ^ 0x39u));
  }

  LODWORD(STACK[0x2080]) = v259;
  v260 = STACK[0x1F00];
  LODWORD(STACK[0x1F00]) = STACK[0x1F00];
  v262 = STACK[0x2098];
  v263 = STACK[0x2238];
  v264 = LODWORD(STACK[0x2238]);
  v265 = STACK[0x2238];
  LODWORD(STACK[0x2238]) = STACK[0x2238];
  v266 = (v263 >> v211) + (v264 << v239);
  v267 = v254 == 0;
  v268 = v254;
  if (v254)
  {
    v269 = (v262 >> v211) ^ (v262 << v239);
  }

  else
  {
    v269 = v262;
  }

  LODWORD(STACK[0x2050]) = v269;
  if (v267)
  {
    v270 = v207;
  }

  else
  {
    v270 = (v207 >> v211) ^ (v207 << v239);
  }

  LODWORD(STACK[0x2048]) = v270;
  if (v267)
  {
    v271 = v231;
  }

  else
  {
    v271 = (v231 >> v211) + (v231 << v239);
  }

  LODWORD(STACK[0x2070]) = v271;
  v272 = v239;
  if (v267)
  {
    v273 = STACK[0x21B8];
  }

  else
  {
    v273 = (LODWORD(STACK[0x21B8]) >> v211) | (LODWORD(STACK[0x21B8]) << v239);
  }

  LODWORD(STACK[0x2060]) = v273;
  v261 = ((v260 ^ 0xE09C40C2) >> v211) + ((v260 ^ 0xE09C40C2) << v239);
  v274 = v261 - 526630718 - ((2 * v261) & 0xC1388184);
  v275 = STACK[0x21C0];
  v276 = STACK[0x21C0];
  LODWORD(STACK[0x21C0]) = STACK[0x21C0];
  v277 = STACK[0x1FD8];
  v278 = (v275 >> v211) ^ (v275 << STACK[0x1FD8]);
  v279 = STACK[0x2140];
  LODWORD(STACK[0x2140]) = STACK[0x2140];
  v280 = (v279 >> v211) ^ (v279 << v272);
  v281 = STACK[0x1EF8];
  v282 = STACK[0x1EF8];
  LODWORD(STACK[0x1EF8]) = STACK[0x1EF8];
  v283 = (v281 >> v211) | (v281 << v277);
  v284 = STACK[0x2130];
  LODWORD(STACK[0x2130]) = STACK[0x2130];
  v285 = v272;
  STACK[0x21F0] = v272;
  v286 = (v284 >> v211) ^ (v284 << v272);
  v287 = STACK[0x1FC8];
  LODWORD(STACK[0x2170]) = v218;
  v288 = (v287 >> v211) + (v287 << v285);
  if (v267)
  {
    v266 = v265;
  }

  LODWORD(STACK[0x21B8]) = v266;
  if (v268)
  {
    v289 = v278;
  }

  else
  {
    v289 = v276;
  }

  LODWORD(STACK[0x1F30]) = v289;
  if (v268)
  {
    v290 = v280;
  }

  else
  {
    v290 = v279;
  }

  if (v268)
  {
    v291 = v283;
  }

  else
  {
    v291 = v282;
  }

  LODWORD(STACK[0x2010]) = v291;
  if (v268)
  {
    v260 = v274;
  }

  LODWORD(STACK[0x2018]) = v260;
  if (v218 == -1343677507)
  {
    v292 = v287;
  }

  else
  {
    v292 = v288;
  }

  LODWORD(STACK[0x2098]) = v292;
  if (v218 != -1343677507)
  {
    v284 = v286;
  }

  LODWORD(STACK[0x1F40]) = v284;
  v293 = v244 == -693686471;
  v294 = STACK[0x2158];
  LODWORD(STACK[0x2158]) = STACK[0x2158];
  v295 = STACK[0x22E0];
  v296 = (v294 >> v211) + (v294 << STACK[0x22E0]);
  v297 = STACK[0x1EB0];
  STACK[0x20D0] = ((v213 ^ 0x39) + 57 - 2 * ((v213 ^ 0x39) & 0x3D ^ v213 & 4)) ^ 0x39u;
  v298 = (v297 >> v211) + (v297 << (v244 ^ 0x39u));
  if (!v293)
  {
    v297 = v298;
  }

  LODWORD(STACK[0x2068]) = v297;
  if (v293)
  {
    v299 = STACK[0x1FA0];
  }

  else
  {
    v299 = (LODWORD(STACK[0x1FA0]) >> v211) ^ (LODWORD(STACK[0x1FA0]) << (((v213 ^ 0x39) + 57 - 2 * ((v213 ^ 0x39) & 0x3D ^ v213 & 4)) ^ 0x39u));
  }

  LODWORD(STACK[0x2078]) = v299;
  if (v293)
  {
    v300 = LODWORD(STACK[0x2280]) ^ 0xD544730 ^ v249;
  }

  else
  {
    v300 = ((LODWORD(STACK[0x2280]) ^ 0xD544730 ^ v249) << (((v213 ^ 0x39) + 57 - 2 * ((v213 ^ 0x39) & 0x3D ^ v213 & 4)) ^ 0x39u)) | ((LODWORD(STACK[0x2280]) ^ 0xD544730 ^ v249) >> v211);
  }

  LODWORD(STACK[0x2280]) = v300;
  v301 = STACK[0x1FC0];
  v302 = STACK[0x1EE8];
  v303 = LODWORD(STACK[0x1EE8]) ^ 0x8E;
  v304 = STACK[0x2008];
  v305 = STACK[0x2270];
  if (LODWORD(STACK[0x2270]) != -693686471)
  {
    v294 = v296;
  }

  LODWORD(STACK[0x2038]) = v294;
  if (v221)
  {
    v306 = (v301 >> v221) + (v301 << v216);
  }

  else
  {
    v306 = v301;
  }

  LODWORD(STACK[0x2030]) = v306;
  if (v305 == -693686471)
  {
    v307 = v304;
  }

  else
  {
    v307 = (v304 >> v211) | (v304 << v295);
  }

  LODWORD(STACK[0x2040]) = v307;
  v308 = STACK[0x20F0];
  LODWORD(STACK[0x20F0]) = STACK[0x20F0];
  v309 = STACK[0x2178];
  LODWORD(STACK[0x2178]) = STACK[0x2178];
  v310 = STACK[0x22A0];
  if (v302 != -1987817586)
  {
    v309 = (v309 << v216) | (v309 >> v303);
  }

  LODWORD(STACK[0x2028]) = v309;
  if (v216)
  {
    v311 = (v310 << v216) ^ (v310 >> v303);
  }

  else
  {
    v311 = v310;
  }

  LODWORD(STACK[0x2090]) = v311;
  if (v216)
  {
    v308 = (v308 >> v221) + (v308 << v216);
  }

  LODWORD(STACK[0x1F48]) = v308;
  if (v221)
  {
    v312 = (LODWORD(STACK[0x1F98]) >> v221) | (LODWORD(STACK[0x1F98]) << v216);
  }

  else
  {
    v312 = STACK[0x1F98];
  }

  LODWORD(STACK[0x2088]) = v312;
  v313 = v302 == -1987817586;
  v314 = STACK[0x22F0];
  v315 = (v314 >> v303) ^ (v314 << v216);
  v316 = (LODWORD(STACK[0x1FD0]) >> v303) ^ (LODWORD(STACK[0x1FD0]) << v216);
  if (v302 == -1987817586)
  {
    v317 = STACK[0x1FD0];
  }

  else
  {
    v317 = v316;
  }

  LODWORD(STACK[0x22A0]) = v317;
  v318 = STACK[0x2160];
  LODWORD(STACK[0x2160]) = STACK[0x2160];
  v319 = STACK[0x2100] + (STACK[0x1FB8] << v277);
  v320 = STACK[0x2150];
  v321 = STACK[0x2150];
  LODWORD(STACK[0x2150]) = STACK[0x2150];
  STACK[0x2290] = v211;
  v322 = (v320 >> v211) ^ (v320 << v277);
  v323 = STACK[0x20E0];
  v324 = (v323 >> v211) | (v323 << v295);
  if (v313)
  {
    v325 = v314;
  }

  else
  {
    v325 = v315;
  }

  LODWORD(STACK[0x20A0]) = v325;
  if (v305 == -693686471)
  {
    v324 = v323;
  }

  LODWORD(STACK[0x2100]) = v324;
  if (v305 == -693686471)
  {
    v326 = v318;
  }

  else
  {
    v326 = (v318 >> v211) ^ (v318 << v277);
  }

  if (v305 == -693686471)
  {
    v327 = STACK[0x2168];
  }

  else
  {
    v327 = v319;
  }

  if (v305 == -693686471)
  {
    v328 = v321;
  }

  else
  {
    v328 = v322;
  }

  LODWORD(STACK[0x20E0]) = v328;
  v97 = v305 == -693686471;
  v329 = STACK[0x2248];
  LODWORD(STACK[0x2248]) = STACK[0x2248];
  v330 = v329 & 0x13939393 ^ 0x35A73627;
  v331 = STACK[0x2228] & 0x69E9E9E9 ^ 0x923BDB72;
  v332 = LODWORD(STACK[0x22B0]) ^ v327;
  v333 = STACK[0x2288];
  LODWORD(STACK[0x2288]) = STACK[0x2288];
  v334 = STACK[0x2200];
  v335 = (v331 & (v333 ^ 0xDA224AA2)) >> STACK[0x2200];
  v336 = STACK[0x22C0];
  v337 = STACK[0x2298];
  v338 = (v335 | ((v331 & (LODWORD(STACK[0x22C0]) ^ 0x1A20A281)) << STACK[0x2298])) ^ v332;
  LODWORD(STACK[0x1FF8]) = 821265340;
  v339 = v329 & 0x69E9E9E9 ^ 0xF353F2BB;
  LODWORD(STACK[0x1F98]) = v339;
  v340 = v339 & (v333 ^ 0xDA224AA2);
  STACK[0x1F90] = v340;
  v341 = STACK[0x22C8];
  v342 = v339 & STACK[0x22C8];
  STACK[0x1FB0] = v342;
  v343 = v341;
  STACK[0x22C8] = v341;
  v344 = STACK[0x21E8];
  STACK[0x1FB8] = v342 << STACK[0x21E8];
  STACK[0x1FA8] = v340 >> v334;
  v345 = LODWORD(STACK[0x2180]) ^ LODWORD(STACK[0x1DE8]) ^ ((v342 << v344) | (v340 >> v334));
  v346 = STACK[0x1F18];
  LODWORD(STACK[0x1FA0]) = LODWORD(STACK[0x1F18]) ^ 0xB971D912;
  v347 = STACK[0x21E0];
  v348 = (v331 & (v346 ^ 0xB971D912)) >> STACK[0x21E0];
  LODWORD(v342) = STACK[0x2278];
  LODWORD(STACK[0x1F80]) = LODWORD(STACK[0x2278]) ^ 0x22341E8;
  LODWORD(STACK[0x2278]) = v342;
  v349 = (v331 & (v342 ^ 0x22341E8)) << v337;
  v350 = STACK[0x2128];
  v351 = ((v348 ^ v349 ^ v290 ^ LODWORD(STACK[0x1ED8])) + 821265339 - ((2 * (v348 ^ v349 ^ v290 ^ LODWORD(STACK[0x1ED8]))) & 0x61E70776)) ^ LODWORD(STACK[0x2128]);
  v352 = ((LODWORD(STACK[0x2020]) ^ (v335 + v349)) + 821265339 - ((2 * (LODWORD(STACK[0x2020]) ^ (v335 + v349))) & 0x61E70776u)) ^ LODWORD(STACK[0x2128]);
  v353 = *(v168 + 4 * BYTE2(v351)) ^ __ROR4__(*(v168 + 4 * v352), 16);
  v354 = v353 + 1076179100 - ((2 * v353) & 0x804A6138);
  LODWORD(STACK[0x2000]) = v346 ^ 0x31359516;
  LODWORD(STACK[0x22B0]) = v336 ^ 0x1620A285;
  LODWORD(STACK[0x1F78]) = v330;
  v355 = v344;
  v356 = (v330 & (v336 ^ 0x1620A285u)) << v344;
  v357 = (v338 + 821265340 + ~((2 * v338) & 0x61E70776)) ^ v350;
  v358 = v326 ^ ((v330 & (v346 ^ 0x31359516u)) >> v347) ^ v356 ^ 0x4025309C ^ __ROR4__(*(v168 + 4 * (((v338 - 31812 + ~((2 * v338) & 0x776)) ^ v350) >> 8)), 8);
  v359 = (v345 + 821265339 - ((2 * v345) & 0x61E70776)) ^ v350;
  v360 = __ROR4__(*(v168 + ((v359 >> 22) & 0x3FC)), 24);
  v361 = (v358 ^ v360 ^ v354) + 821265339 - ((2 * (v358 ^ v360 ^ v354)) & 0x61E70776);
  v362 = *(v168 + 4 * ((v338 - 68 + ~((2 * v338) & 0x76)) ^ v350));
  v363 = STACK[0x2268] & 0x27272727;
  v364 = ((v363 ^ 0x3042526) >> ((!(v362 & 0x10000) + (BYTE2(v362) & 1)) & (LODWORD(STACK[0x2268]) ^ 2) | ((STACK[0x2268] & 1) == 0))) ^ 0x27272727;
  v365 = v364 & STACK[0x22A8];
  LODWORD(v344) = LODWORD(STACK[0x1F70]) ^ __ROR4__(*(v168 + ((v351 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v168 + 4 * v359), 16) ^ *(v168 + 4 * BYTE2(v357)) ^ __ROR4__(*(v168 + 4 * ((BYTE1(v352) - ((v352 >> 7) & 0x50) - 88) ^ 0xA8)), 8) ^ ((v365 >> v334) + ((v364 & v343) << v344));
  v366 = v344 + 821265339 - ((2 * v344) & 0x61E70776);
  LODWORD(STACK[0x1F70]) = v342 ^ 0x22305A0;
  v367 = v337;
  STACK[0x2298] = v337;
  LODWORD(v344) = ((((v342 ^ 0x22305A0) & ((v363 >> 1) ^ 0x26A535B4)) << v337) + (((v346 ^ 0x31359516) & ((v363 >> 1) ^ 0x26A535B4)) >> v347)) ^ LODWORD(STACK[0x1F88]) ^ *(v168 + 4 * BYTE2(v359)) ^ __ROR4__(v362, 16) ^ __ROR4__(*(v168 + 4 * BYTE1(v351)), 8) ^ (((*(STACK[0x2210] + (((*(v168 + ((v352 >> 22) & 0x3FC)) >> 20) & 0xF0u | (*(v168 + ((v352 >> 22) & 0x3FC)) >> 28)) ^ 0x34)) ^ 0x81) + 41) | (*(v168 + ((v352 >> 22) & 0x3FC)) << 8));
  LODWORD(v342) = v344 + 821265339 - ((2 * v344) & 0x61E70776);
  LODWORD(STACK[0x1F50]) = v333 ^ 0x122206A6;
  v368 = v330 & (v333 ^ 0x122206A6u);
  STACK[0x1F88] = v368;
  v369 = v334;
  LODWORD(v368) = (v356 + (v368 >> v334)) ^ LODWORD(STACK[0x20E0]) ^ __ROR4__(*(v168 + ((v357 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v168 + 4 * BYTE1(v359)), 8) ^ __ROR4__(*(v168 + 4 * v351), 16) ^ *(v168 + 4 * BYTE2(v352));
  LODWORD(v351) = v368 + 821265339 - ((2 * v368) & 0x61E70776);
  v370 = STACK[0x2248];
  LODWORD(v337) = STACK[0x2248] & 0x27A7A7A7 ^ 0x69CB6A6B;
  LODWORD(STACK[0x2180]) = v337;
  v371 = v361 ^ v350;
  v372 = *(v168 + 4 * BYTE2(v371));
  v373 = v366 ^ v350;
  LODWORD(v356) = *(v168 + 4 * BYTE1(v373));
  LODWORD(STACK[0x1F18]) = v346;
  v374 = (v337 & STACK[0x2250]) << v367;
  v375 = v337 & (v346 ^ 0x2965CD06);
  LODWORD(STACK[0x2270]) = v346 ^ 0x2965CD06;
  STACK[0x20E0] = v375 >> v334;
  LODWORD(v337) = (v375 >> v334) | v374;
  LODWORD(STACK[0x1FC8]) = v337;
  v376 = v342 ^ v350;
  v377 = v337 ^ LODWORD(STACK[0x1F30]) ^ v372 ^ __ROR4__(v356, 8) ^ __ROR4__(*(v168 + 4 * ((v342 ^ v350) >> 24)), 24);
  v378 = v351 ^ v350;
  v379 = __ROR4__(*(v168 + 4 * (v351 ^ v350)), 16);
  LODWORD(v351) = (v377 ^ v379) + 821265339 - ((2 * (v377 ^ v379)) & 0x61E70776);
  LODWORD(v337) = STACK[0x2228];
  v380 = LODWORD(STACK[0x2228]) ^ 0x41EE1AB7;
  LODWORD(v356) = v380 & 0x27A7A7A7 ^ 0x4F4F4F4F;
  LODWORD(STACK[0x2008]) = v336 ^ 0xE20A285;
  v381 = (v356 & (v336 ^ 0xE20A285)) << v355;
  LOBYTE(v362) = (v365 & 0x73 ^ 0x73) + (v365 & 0x73);
  LODWORD(v365) = v376 ^ 0x67;
  LOBYTE(v376) = *(STACK[0x1F58] + (v376 ^ 0xB1)) ^ v362 ^ (((v365 - 87) ^ v365) - ((2 * ((v365 - 87) ^ v365)) & 0x50) - 88);
  v382 = ((v356 & (v346 ^ 0x2965CD06)) >> v334) ^ v381 ^ LODWORD(STACK[0x1F40]) ^ __ROR4__(*(v168 + 4 * ((v376 >> 1) | (v376 << 7))), 16) ^ __ROR4__(*(v168 + ((v371 >> 22) & 0x3FC)), 24);
  LOBYTE(v376) = (*(STACK[0x1F68] + (((v373 >> 12) & 0xF0 | (v373 >> 20) & 0xF) ^ 0xFELL)) ^ 0xA8) - 37;
  v383 = v382 ^ __ROR4__(*(v168 + 4 * BYTE1(v378)), 8) ^ *(v168 + 4 * ((v376 ^ (16 * v376) ^ 0xEC) + 41));
  v384 = STACK[0x1E68];
  v385 = ((v375 >> v347) | v374) ^ LODWORD(STACK[0x2010]) ^ __ROR4__(*(v168 + 4 * (*(STACK[0x1E68] + ((BYTE1(v371) + 124) ^ 0xD9)) ^ 0x6ALL)), 8) ^ __ROR4__(*(v168 + 4 * v373), 16) ^ *(v168 + 4 * BYTE2(v365));
  v386 = __ROR4__(*(v168 + ((v378 >> 22) & 0x3FC)), 24);
  v387 = (v385 ^ v386) + 821265339 - ((2 * (v385 ^ v386)) & 0x61E70776);
  v388 = v381 ^ LODWORD(STACK[0x2018]);
  LODWORD(v374) = STACK[0x2288];
  LODWORD(STACK[0x1F58]) = LODWORD(STACK[0x2288]) ^ 0x4A224EA6;
  v389 = v347;
  LODWORD(v371) = *(v168 + 4 * BYTE2(v378)) ^ __ROR4__(*(v168 + 4 * v371), 16) ^ __ROR4__(*(v168 + ((v373 >> 22) & 0x3FC)), 24);
  v390 = __ROR4__(*(v168 + 4 * BYTE1(v365)), 8);
  LODWORD(v371) = v388 ^ ((v356 & (v374 ^ 0x4A224EA6)) >> v347) ^ ((v371 ^ v390) - 526630718 - ((2 * (v371 ^ v390)) & 0xC1388184));
  LODWORD(v373) = v371 + 821265339 - ((2 * v371) & 0x61E70776);
  v391 = v336 ^ 0x1C008085;
  LODWORD(v371) = v337 & 0xC8C8C8C;
  LODWORD(v337) = v337 & 0xC8C8C8C ^ 0x1995119D;
  LODWORD(STACK[0x2018]) = v337;
  v392 = (v337 & (v346 ^ 0x19159D14)) >> v334;
  STACK[0x2020] = v392;
  v393 = v355;
  v394 = v351 ^ v350;
  v395 = v387 ^ v350;
  LODWORD(v378) = (v392 | ((v337 & (v336 ^ 0x1C008085)) << v355)) ^ LODWORD(STACK[0x1F48]) ^ *(v168 + 4 * BYTE2(v394)) ^ __ROR4__(*(v168 + ((v395 >> 22) & 0x3FC)), 24);
  LODWORD(v337) = (v383 + 821265339 - ((2 * v383) & 0x61E70776)) ^ v350;
  v396 = v373 ^ v350;
  v397 = v350;
  LODWORD(v373) = v378 ^ __ROR4__(*(v168 + 4 * (v373 ^ v350)), 16);
  v398 = __ROR4__(*(v168 + 4 * (((v383 - 31813 - ((2 * v383) & 0x776)) ^ v350) >> 8)), 8);
  v399 = (v373 ^ v398) + 821265339 - ((2 * (v373 ^ v398)) & 0x61E70776);
  LODWORD(STACK[0x2010]) = v370 & 0xC8C8C8C;
  LODWORD(v355) = v370 & 0xC8C8C8C ^ 0x1D9D1D15;
  v400 = (v355 & (v374 ^ 0x18000C84)) >> v347;
  STACK[0x1FD0] = v400;
  LODWORD(v373) = LODWORD(STACK[0x2278]) ^ 0x10588;
  LODWORD(STACK[0x1FD8]) = v373;
  v401 = STACK[0x2298];
  v402 = v400 + ((v355 & v373) << STACK[0x2298]);
  LODWORD(v400) = (v402 & 0x19191919 ^ 0x19191919) + (v402 & 0x19191919);
  v403 = *(v168 + 4 * v394);
  v404 = v399 ^ v350;
  LOBYTE(v374) = v399 ^ v350;
  STACK[0x1F40] = v404;
  LODWORD(STACK[0x1F48]) = 80 * BYTE3(v404) % (((v400 & 0x2131939 ^ 0x6971D39) + (v400 & 0x2131939)) & 0x8280141);
  v405 = __ROR4__(v403, 16);
  v406 = *(v384 + ((BYTE3(v337) + 124) ^ ((v380 & 0x81 ^ 0xD9) + (v380 & 0x81u))));
  LODWORD(v375) = *(v168 + 4 * (v406 ^ 0x6Au));
  LODWORD(v373) = LODWORD(STACK[0x20A0]) ^ v405 ^ ((v375 >> (v406 & 0x18 ^ 8 | v406 & 0x18 ^ 0x10)) | (v375 << 8)) ^ __ROR4__(*(v168 + 4 * BYTE1(v395)), 8) ^ *(v168 + 4 * BYTE2(v396));
  v407 = v402 ^ v350 ^ (v373 + 821265339 - ((2 * v373) & 0x61E70776));
  STACK[0x1F28] = v407;
  LOWORD(v373) = 80 * v374 - ((((2611280 * v374) >> 16) >> 7) | (((2611280 * v374) >> 16) >> 7 << 8));
  LODWORD(STACK[0x1F08]) = v355;
  v408 = (((v355 & (v346 ^ 0x19159D14)) >> v389) + ((v355 & v391) << v401)) ^ LODWORD(STACK[0x2028]) ^ __ROR4__(*(v168 + 4 * BYTE1(v394)), 8) ^ *(v168 + 4 * BYTE2(v395)) ^ __ROR4__(*(v168 + 4 * v337), 16);
  v409 = __ROR4__(*(v168 + ((v396 >> 22) & 0x3FC)), 24);
  v410 = (v408 ^ v409) + 821265339 - ((2 * (v408 ^ v409)) & 0x61E70776);
  LODWORD(v371) = v371 ^ v400 ^ 0x8C0884;
  v411 = STACK[0x2250];
  v412 = v393;
  LODWORD(v400) = ((v371 & STACK[0x2250]) << v393) ^ LODWORD(STACK[0x2030]);
  LODWORD(v374) = STACK[0x22A8];
  v413 = v369;
  v414 = STACK[0x1F60];
  v415 = *(STACK[0x1F60] + ((BYTE1(v396) + 124) ^ 0x26));
  LODWORD(v400) = v400 ^ ((v371 & STACK[0x22A8]) >> v369) ^ *(v168 + 4 * BYTE2(v337)) ^ __ROR4__(*(v168 + 4 * (((v415 >> 2) ^ 0x2A | (v415 << 6)) ^ ((BYTE2(v394) & 0x37 ^ 0x37) + (BYTE2(v394) & 0x37)) ^ (2 * ((v415 >> 2) ^ 0x2A)) & 0x56u)), 8) ^ __ROR4__(*(v168 + 4 * v395), 16);
  v416 = __ROR4__(*(v168 + ((v394 >> 22) & 0x3FC)), 24);
  v417 = ((v400 ^ v416) + 821265339 - ((2 * (v400 ^ v416)) & 0x61E70776)) ^ v397;
  STACK[0x2028] = v417;
  v418 = v410 ^ v397;
  STACK[0x1F30] = v418;
  v419 = (BYTE2(v407) - ((2 * BYTE2(v407)) & 0x50) - 88) ^ 0xA8;
  LODWORD(v418) = (BYTE1(v418) - ((2 * BYTE1(v418)) & 0x50) - 88) ^ 0xA8;
  LODWORD(v418) = LODWORD(STACK[0x1E30]) ^ LODWORD(STACK[0x1E20]) ^ __ROR4__(*(a18 + 4 * v373), 8) ^ __ROR4__(*(a18 + 4 * (80 * v419 - ((((2611280 * v419) >> 16) >> 7) | (((2611280 * v419) >> 16) >> 7 << 8)))), 24) ^ *(a18 + 4 * (80 * v418 - ((((2611280 * v418) >> 16) >> 7) | (((2611280 * v418) >> 16) >> 7 << 8))));
  v420 = __ROR4__(*(a18 + 4 * (80 * ((BYTE3(v417) - ((2 * BYTE3(v417)) & 0x50) - 88) ^ 0xA8) - ((((2611280 * ((BYTE3(v417) - ((2 * BYTE3(v417)) & 0x50) - 88) ^ 0xA8u)) >> 16) >> 7) | (((2611280 * ((BYTE3(v417) - ((2 * BYTE3(v417)) & 0x50) - 88) ^ 0xA8u)) >> 16) >> 7 << 8)))), 16);
  LODWORD(v418) = LODWORD(STACK[0x2038]) ^ LODWORD(STACK[0x1E00]) ^ ((v418 ^ v420 ^ 0xF3ACBEE9) - 301599670 - ((2 * (v418 ^ v420 ^ 0xF3ACBEE9)) & 0xDC0BE894));
  LODWORD(v373) = v418 - 2213305 - ((2 * v418) & 0xFFBC748E);
  LODWORD(v418) = (((STACK[0x22C8] << v401) & (LODWORD(STACK[0x1DF0]) ^ LODWORD(STACK[0x1DF8]) ^ 0x6FA0696A)) >> v401) | (((v374 >> v369) & (LODWORD(STACK[0x1DF0]) ^ LODWORD(STACK[0x1DF8]) ^ 0x6FA0696A)) << v369);
  v421 = STACK[0x2268];
  LODWORD(v392) = LODWORD(STACK[0x2268]) ^ 0x83DC356E;
  LODWORD(STACK[0x20A0]) = v392;
  LODWORD(v418) = v380 & (((v418 ^ ((v418 & v392) >> 1)) & (v421 ^ 0x83DC356C)) >> 2) ^ v418 ^ ((v418 & v392) >> 1);
  v422 = STACK[0x2228];
  LODWORD(v417) = v380 & (((LODWORD(STACK[0x2228]) ^ 0x1EE1AB4) & (v421 ^ 0x3DC356Cu)) >> 2) & ((v418 & (v421 ^ 0x83DC3560)) >> 4) ^ v418;
  LODWORD(STACK[0x1F20]) = v417;
  LODWORD(v417) = a55 ^ v417 ^ 0x3C3C3C3C;
  LODWORD(STACK[0x2030]) = v417;
  v423 = v417 ^ v373;
  if (v97)
  {
    v424 = v423;
  }

  else
  {
    v424 = (v423 >> STACK[0x22E0]) ^ (v423 << STACK[0x2290]);
  }

  LODWORD(STACK[0x2038]) = v424;
  v425 = STACK[0x2278];
  v426 = STACK[0x1F98];
  v427 = v389;
  v428 = LODWORD(STACK[0x2188]) ^ LODWORD(STACK[0x2040]) ^ ((STACK[0x1F90] >> v389) | ((STACK[0x1F98] & LODWORD(STACK[0x1F80])) << v401));
  v429 = ((v421 & 0xD3D3D3D3 ^ 0x83D01142) >> (119 * ((v425 & 0x47 ^ 0x40) + (v425 & 0x47 ^ 7u)))) ^ 0xD3D3D3D3;
  v430 = v412;
  v431 = ((v411 & v429) << v412) ^ LODWORD(STACK[0x2100]) ^ LODWORD(STACK[0x1E18]);
  v432 = LODWORD(STACK[0x1F18]) ^ 0xB975DD16;
  STACK[0x22C0] = v432;
  v433 = v431 ^ ((v432 & v429) >> v389);
  v434 = v401;
  v435 = LODWORD(STACK[0x1E08]) ^ STACK[0x1FA8] ^ (STACK[0x1FB0] << v401) ^ LODWORD(STACK[0x2050]);
  v436 = ((v426 & STACK[0x1FA0]) >> v369) ^ STACK[0x1FB8] ^ LODWORD(STACK[0x2048]) ^ LODWORD(STACK[0x2058]);
  v437 = (v436 + 821265339 - ((2 * v436) & 0x61E70776)) ^ v397;
  v438 = v414;
  v439 = *(v414 + ((BYTE2(v437) + 124) ^ 0x26));
  v440 = v435 + LODWORD(STACK[0x1FF8]) + ~((2 * v435) & 0x61E70776);
  v441 = ((v439 >> 2) | (v439 << 6)) ^ 0x2A;
  v442 = (v428 + 821265339 - ((2 * v428) & 0x61E70776)) ^ v397;
  v443 = (v433 + 821265339 - ((2 * v433) & 0x61E70776)) ^ v397;
  v444 = *(v168 + 4 * BYTE2(v442)) ^ __ROR4__(*(v168 + 4 * HIBYTE(v443)), 24) ^ __ROR4__(*(v168 + 4 * BYTE1(v437)), 8);
  v445 = v422 & 0x13939393 ^ 0x26A535B4;
  v446 = v440 ^ v397;
  v447 = LODWORD(STACK[0x2060]) ^ __ROR4__(*(v168 + ((v446 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v168 + 4 * v437), 16) ^ __ROR4__(*(v168 + 4 * (((v428 - 31813 - ((2 * v428) & 0x776)) ^ v397) >> 8)), 8) ^ *(v168 + 4 * BYTE2(v443));
  v448 = (HIBYTE(v442) ^ 0xFFFFFFE3) + ((v442 >> 23) & 0xC6);
  v449 = v441 ^ 0x37 ^ (2 * v441) & 0x56;
  v450 = *(v438 + ((BYTE1(v446) + 124) ^ 0x26));
  v451 = ((v450 >> 2) | (v450 << 6)) ^ (v450 >> 1) & 0x56 ^ 0x49;
  v452 = (((v445 & STACK[0x1F50]) >> v427) | ((v445 & STACK[0x1F70]) << v434)) ^ LODWORD(STACK[0x2070]) ^ __ROR4__(*(v168 + 4 * ((v428 - 69 - ((2 * v428) & 0x76)) ^ v397)), 16) ^ *(v168 + 4 * BYTE2(v446)) ^ __ROR4__(*(v168 + ((v437 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v168 + 4 * BYTE1(v443)), 8);
  v453 = (v397 ^ 0x30F383BB) + 821265339 - ((2 * (v397 ^ 0x30F383BB)) & 0x61E70776);
  v454 = v447 + 821265339 - ((2 * v447) & 0x61E70776);
  v455 = v452 + 821265339 - ((2 * v452) & 0x61E70776);
  HIDWORD(v457) = *(v168 + 4 * v446);
  LODWORD(v457) = HIDWORD(v457);
  v456 = v457 >> 16;
  if (v444 == v456)
  {
    v458 = STACK[0x1F78];
  }

  else
  {
    v458 = (((2 * LODWORD(STACK[0x1F78])) & 0x4460B40) - LODWORD(STACK[0x1F78]) - 35866089) ^ v425;
  }

  v459 = ((v458 & v411) << v430) ^ (STACK[0x1F88] >> v427) ^ v453 ^ v454;
  v460 = LODWORD(STACK[0x2080]) ^ *(v168 + 4 * v449) ^ __ROR4__(*(v168 + 4 * (v448 + 29)), 24) ^ __ROR4__(*(v168 + 4 * v443), 16);
  v461 = __ROR4__(*(v168 + 4 * v451), 8);
  v462 = v445 & STACK[0x2000];
  v463 = v445 & STACK[0x22B0];
  STACK[0x2200] = v413;
  LODWORD(v462) = (v462 >> v413) ^ (v463 << v434) ^ LODWORD(STACK[0x2068]) ^ v456 ^ v444;
  v464 = (v460 ^ v461 ^ 0x90269004) + 821265339 - ((2 * (v460 ^ v461 ^ 0x90269004)) & 0x61E70776);
  v465 = v430;
  v466 = v453 ^ (((v422 & 0x3800000 ^ 0x26A40000 ^ v445 & (LODWORD(STACK[0x2288]) ^ 0x358606A6u)) >> v427) + (v463 << v430)) ^ 0x90269004;
  v467 = (v462 + 821265339 - ((2 * v462) & 0x61E70776)) ^ v453;
  HIDWORD(v468) = *(v438 + (((((v462 - 31813 - ((2 * v462) & 0x776)) ^ ((v397 ^ 0x83BB) - 31813 - ((2 * (v397 ^ 0x83BB)) & 0x776))) >> 8) + 124) ^ 0x26));
  LODWORD(v468) = (HIDWORD(v468) ^ 0xAAAAAAAA) << 24;
  LODWORD(v463) = *(v168 + 4 * HIBYTE(v467));
  v469 = v466 ^ v464;
  v470 = ((*(STACK[0x2208] + (((v463 >> 23) & 0xFE | (v463 >> 31)) ^ 0xE7)) ^ (((v463 >> 23) & 0xFE | (v463 < 0)) - ((v463 >> 22) & 0x50) - 88) ^ 0xF5) - 55) | (v463 << 8);
  v471 = v455 ^ v453;
  LODWORD(v462) = LODWORD(STACK[0x1FC8]) ^ LODWORD(STACK[0x20A8]) ^ *(v168 + 4 * BYTE2(v459)) ^ __ROR4__(*(v168 + 4 * ((v468 >> 26) ^ 0x37 ^ (2 * (v468 >> 26)) & 0x56u)), 8) ^ __ROR4__(*(v168 + 4 * v469), 16);
  LODWORD(v468) = __ROR4__(*(v168 + 4 * (v471 >> (((HIBYTE(v459) + 124) | (3 - HIBYTE(v459))) & 0x18))), 24);
  v472 = (v462 ^ v468) + 821265339 - ((2 * (v462 ^ v468)) & 0x61E70776);
  LODWORD(v462) = v422 & 0x27A7A7A7 ^ 0x4EE94DE8;
  v473 = v411;
  STACK[0x2250] = v411;
  v474 = (v462 & v411) << v434;
  v475 = v434;
  v476 = ((v462 & STACK[0x1F58]) >> v427) ^ v474 ^ LODWORD(STACK[0x20B0]) ^ *(v168 + 4 * BYTE2(v469)) ^ __ROR4__(*(v168 + 4 * BYTE1(v471)), 8);
  LODWORD(v468) = __ROR4__(*(v168 + 4 * v459), 16);
  v477 = (v476 ^ v468 ^ v470) + 821265339 - ((2 * (v476 ^ v468 ^ v470)) & 0x61E70776);
  LODWORD(v463) = STACK[0x20E0] ^ ((STACK[0x2180] & LODWORD(STACK[0x2008])) << v465) ^ LODWORD(STACK[0x2078]) ^ __ROR4__(*(v168 + 4 * BYTE1(v469)), 8) ^ (*(v168 + 4 * v471) << 16) ^ HIWORD(*(v168 + 4 * v471)) ^ *(v168 + 4 * BYTE2(v467)) ^ __ROR4__(*(v168 + 4 * (*(STACK[0x1E68] + ((HIBYTE(v459) + 124) ^ 0xD9)) ^ 0x6ALL)), 24);
  v478 = ((v462 & STACK[0x2270]) >> v413) ^ v474 ^ LODWORD(STACK[0x2098]) ^ __ROR4__(*(v168 + ((v469 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v168 + 4 * BYTE1(v459)), 8) ^ *(v168 + 4 * BYTE2(v471));
  LODWORD(v468) = __ROR4__(*(v168 + 4 * v467), 16);
  LODWORD(v462) = v472 ^ v453;
  LOBYTE(v471) = *(STACK[0x1F10] + ((((v472 ^ v453) >> 7) & 0xFE | ((v472 ^ v453) >> 15) & 1) ^ 0xBLL)) ^ 0xB5;
  v479 = v477 ^ v453;
  v480 = (v463 + 821265339 - ((2 * v463) & 0x61E70776)) ^ v453;
  v481 = ((v478 ^ v468) + 821265339 - ((2 * (v478 ^ v468)) & 0x61E70776)) ^ v453;
  LOBYTE(v477) = *(STACK[0x2210] + ((((v472 ^ v453) >> 20) & 0xF0 | ((v472 ^ v453) >> 28)) ^ 0x34));
  v482 = *(v168 + 4 * v481);
  v483 = *(v168 + ((v481 >> 22) & 0x3FC));
  v484 = *(v168 + 4 * BYTE1(v480));
  v485 = *(v168 + ((v479 >> 22) & 0x3FC));
  v486 = *(v168 + 4 * v479);
  v487 = *(v168 + 4 * BYTE1(v479));
  v488 = *(v168 + 4 * v480);
  v489 = *(v168 + 4 * BYTE2(v480));
  v490 = *(v168 + 4 * ((v477 ^ 0x81) + 41));
  v491 = *(v168 + 4 * BYTE2(v479));
  LOBYTE(v476) = v471 - 55;
  v492 = *(v168 + ((v480 >> 22) & 0x3FC));
  LODWORD(v480) = *(v168 + 4 * v476);
  v493 = *(v168 + 4 * BYTE2(v462));
  v494 = *(v168 + 4 * BYTE1(v481));
  v495 = *(v168 + 4 * v462);
  v496 = *(v168 + 4 * BYTE2(v481)) ^ LODWORD(STACK[0x2090]) ^ __ROR4__(v485, 24) ^ __ROR4__(v488, 16) ^ __ROR4__(v480, 8);
  v497 = STACK[0x20C8];
  v498 = LODWORD(STACK[0x20C8]) ^ 0x8BEE8C3E;
  v499 = STACK[0x2088];
  LODWORD(STACK[0x15C8]) = 421075224;
  if (v499)
  {
    v500 = v498;
  }

  else
  {
    v500 = 421075224;
  }

  v501 = v465;
  v502 = (((STACK[0x22C8] & (((v500 & (v497 ^ 0x6D086AD8u)) >> 1) ^ 0x19191919)) << v465) | ((STACK[0x22A8] & (((v500 & (v497 ^ 0x6D086AD8u)) >> 1) ^ 0x19191919)) >> v427)) ^ v499 ^ __ROR4__(v482, 16) ^ __ROR4__(v487, 8) ^ v489;
  v503 = __ROR4__(v490, 24);
  v504 = (v502 ^ v503) + 821265339 - ((2 * (v502 ^ v503)) & 0x61E70776);
  v505 = (STACK[0x1FD0] + ((STACK[0x1F08] & STACK[0x22C8]) << v475)) ^ v453 ^ (v496 + 821265339 - ((2 * v496) & 0x61E70776));
  v506 = STACK[0x2020] ^ ((STACK[0x2018] & LODWORD(STACK[0x1FD8])) << v465) ^ LODWORD(STACK[0x20B8]) ^ __ROR4__(v483, 24) ^ __ROR4__(v484, 8);
  v507 = __ROR4__(v486, 16);
  v508 = ((v506 ^ v507 ^ v493) + 821265339 - ((2 * (v506 ^ v507 ^ v493)) & 0x61E70776)) ^ v453;
  v509 = LODWORD(STACK[0x2010]) ^ 0x484040C ^ ((v508 & 0x197FB93F ^ 0x197FB93F) + (v508 & 0x197FB93F)) & 0x3B195B19;
  v510 = ((v509 & STACK[0x22C8]) << v465) | ((v509 & (LODWORD(STACK[0x1F18]) ^ 0x3915DD14u)) >> v427);
  v511 = v491 ^ LODWORD(STACK[0x22A0]) ^ __ROR4__(v492, 24) ^ __ROR4__(v494, 8);
  v512 = __ROR4__(v495, 16);
  v513 = v504 ^ v453;
  v514 = ((v511 ^ v512 ^ v510) + 821265339 - ((2 * (v511 ^ v512 ^ v510)) & 0x61E70776)) ^ v453;
  v515 = v505;
  HIDWORD(v516) = *(v438 + (((v505 >> (((v508 & 0x1A ^ 0xAA) + (v508 & 0x1A)) & 8)) + 124) ^ 0x26));
  LODWORD(v516) = (HIDWORD(v516) ^ 0xAAAAAAAA) << 24;
  v517 = *(a18 + 4 * (80 * BYTE2(v508) - ((((2611280 * BYTE2(v508)) >> 16) >> 7) | (((2611280 * BYTE2(v508)) >> 16) >> 7 << 8))));
  LODWORD(STACK[0x22A0]) = v517;
  v518 = *(a18 + 4 * (80 * BYTE2(v514) - ((((2611280 * BYTE2(v514)) >> 16) >> 7) | (((2611280 * BYTE2(v514)) >> 16) >> 7 << 8))));
  v519 = (v516 >> 26) ^ 0x37 ^ (2 * (v516 >> 26)) & 0x56;
  v520 = ((v518 << ((v517 & 8 ^ 8) + (v517 & 8))) + HIBYTE(v518)) ^ __ROR4__(*(a18 + 4 * (80 * HIBYTE(v513) - ((((2611280 * HIBYTE(v513)) >> 16) >> 7) | (((2611280 * HIBYTE(v513)) >> 16) >> 7 << 8)))), 16) ^ *(a18 + 4 * (80 * v519 - ((((2611280 * v519) >> 16) >> 7) | (((2611280 * v519) >> 16) >> 7 << 8)))) ^ __ROR4__(*(a18 + 4 * (80 * v508 - ((((2611280 * v508) >> 16) >> 7) | (((2611280 * v508) >> 16) >> 7 << 8)))), 8);
  v521 = STACK[0x1E20];
  STACK[0x21E0] = v427;
  v522 = STACK[0x22C0] >> v427;
  STACK[0x21E8] = v501;
  v523 = (((v473 << v501) & (v521 ^ a55 ^ 0xF4F0EA22)) >> v501) | ((v522 & (v521 ^ a55 ^ 0xF4F0EA22)) << v427);
  LODWORD(STACK[0x22B0]) = v497 ^ 0x6D086AD8;
  LODWORD(v522) = LODWORD(STACK[0x2248]) ^ 0x3684356C;
  v524 = v522 & (((v523 ^ ((v523 & (v497 ^ 0x6D086AD8u)) >> 1)) & (v497 ^ 0x6D086AD8)) >> 2) ^ v523 ^ ((v523 & (v497 ^ 0x6D086AD8u)) >> 1);
  v525 = v522 & ((v522 & (v497 ^ 0x2D086AD8)) >> 2) & ((v524 & (v497 ^ 0x6D086AD0u)) >> 4) ^ v524;
  v526 = STACK[0x1E00];
  v527 = LODWORD(STACK[0x20E8]) ^ LODWORD(STACK[0x1E00]) ^ ((v520 ^ 0xA20DAFF8) - 301599670 - 2 * ((v520 ^ 0xA20DAFF8) & 0x6E05F44E ^ v520 & 4));
  v528 = STACK[0x1E30];
  v529 = ((v527 ^ 0xA20DAFF8) - 125669748 - 2 * ((v527 ^ 0xA20DAFF8) & 0x78826E8E ^ v527 & 2)) ^ LODWORD(STACK[0x1E30]);
  v530 = (v529 + 187617381 - ((2 * v529) & 0x165DA0CA)) ^ v521;
  LODWORD(STACK[0x1E20]) = v521;
  v531 = v525 ^ a55 ^ (v530 - 2213305 - ((2 * v530) & 0xFFBC748E));
  v532 = STACK[0x2290];
  v533 = STACK[0x21F0];
  v534 = ((v531 ^ 0xAAAAAAAA) << STACK[0x2290]) + ((v531 ^ 0xAAAAAAAA) >> STACK[0x21F0]);
  v535 = STACK[0x2120];
  v536 = v531 ^ 0xBD622B5;
  v537 = v534 - ((2 * v534) & 0x42F9103E) - 1585674209;
  if (STACK[0x2120])
  {
    v536 = v537;
  }

  LODWORD(STACK[0x2288]) = v536;
  LODWORD(STACK[0x2188]) = v505;
  v538 = *(a18 + 4 * (80 * BYTE2(v505) - ((((2611280 * BYTE2(v505)) >> 16) >> 7) | (((2611280 * BYTE2(v505)) >> 16) >> 7 << 8))));
  v539 = (*(STACK[0x1F68] + (((v538 >> 20) & 0xF0 | (v538 >> 28)) ^ 0xFELL)) ^ 0xA8) - 37;
  LODWORD(STACK[0x2228]) = v514;
  LODWORD(STACK[0x2268]) = v513;
  v540 = LODWORD(STACK[0x2108]) ^ a55 ^ (v525 - 2213305 - ((2 * v525) & 0xFFBC748E)) ^ __ROR4__(*(a18 + 4 * (80 * HIBYTE(v514) - ((((2611280 * HIBYTE(v514)) >> 16) >> 7) | (((2611280 * HIBYTE(v514)) >> 16) >> 7 << 8)))), 16) ^ __ROR4__(*(a18 + 4 * (80 * v513 - ((((2611280 * v513) >> 16) >> 7) | (((2611280 * v513) >> 16) >> 7 << 8)))), 8) ^ *(a18 + 4 * (80 * BYTE1(v508) - ((((2611280 * BYTE1(v508)) >> 16) >> 7) | (((2611280 * BYTE1(v508)) >> 16) >> 7 << 8)))) ^ (((v539 ^ (16 * v539) ^ 0xEC) + 41) | (v538 << 8));
  v541 = (v540 - 301599670 - ((2 * v540) & 0xDC0BE894)) ^ v526;
  v542 = (v541 - 125669748 - ((2 * v541) & 0xF104DD18)) ^ v528;
  v543 = (v542 + 187617381 - ((2 * v542) & 0x165DA0CA)) ^ v521;
  v544 = STACK[0x20D0];
  v545 = ((v543 ^ 0xAAAAAAAA) << v532) | ((v543 ^ 0xAAAAAAAA) >> STACK[0x20D0]);
  v546 = ((*(STACK[0x2210] + (((v508 >> 20) & 0xF0 | (v508 >> 28)) ^ 0x34)) ^ 0x81) + 41);
  v547 = v543 ^ 0xBD622B5;
  v548 = *(a18 + 4 * (80 * v546 - ((((2611280 * v546) >> 16) >> 7) | (((2611280 * v546) >> 16) >> 7 << 8))));
  v549 = v545 - ((2 * v545) & 0x42F9103E) - 1585674209;
  HIDWORD(v551) = *(a18 + 4 * (80 * BYTE2(v513) - ((((2611280 * BYTE2(v513)) >> 16) >> 7) | (((2611280 * BYTE2(v513)) >> 16) >> 7 << 8))));
  LODWORD(v551) = HIDWORD(v551);
  v550 = v551 >> 24;
  if (v535)
  {
    v547 = v549;
  }

  LODWORD(STACK[0x2278]) = v547;
  v552 = v550 ^ __ROR4__(v548, 16) ^ *(a18 + 4 * (80 * BYTE1(v514) - ((((2611280 * BYTE1(v514)) >> 16) >> 7) | (((2611280 * BYTE1(v514)) >> 16) >> 7 << 8))));
  v553 = __ROR4__(*(a18 + 4 * (80 * v515 - ((((2611280 * v515) >> 16) >> 7) | (((2611280 * v515) >> 16) >> 7 << 8)))), 8);
  v554 = LODWORD(STACK[0x2280]) ^ v526 ^ ((v552 ^ v553) - 301599670 - ((2 * (v552 ^ v553)) & 0xDC0BE894));
  v555 = (v554 - 125669748 - ((2 * v554) & 0xF104DD18)) ^ v528;
  v556 = STACK[0x1DF8];
  v557 = (v555 + 2089117153 - ((2 * v555) & 0xF90ACBC2)) ^ LODWORD(STACK[0x1DF8]);
  v558 = STACK[0x1DF0];
  LODWORD(STACK[0x2270]) = v525 ^ LODWORD(STACK[0x1DF0]);
  v559 = v525 ^ v558 ^ (v557 + 321195147 - ((2 * v557) & 0x264A1916));
  v560 = (((v559 ^ 0xAAAAAAAA) >> v544) ^ ((v559 ^ 0xAAAAAAAA) << v532)) - ((2 * (((v559 ^ 0xAAAAAAAA) >> v544) ^ ((v559 ^ 0xAAAAAAAA) << v532))) & 0x42F9103E);
  v561 = STACK[0x2138];
  LODWORD(STACK[0x2138]) = STACK[0x2138];
  v562 = (v561 >> v532) ^ (v561 << v533);
  v563 = v559 ^ 0xBD622B5;
  v564 = v560 - 1585674209;
  if (v535)
  {
    v565 = v564;
  }

  else
  {
    v565 = v563;
  }

  LODWORD(STACK[0x2280]) = v565;
  v566 = STACK[0x1F40];
  v567 = STACK[0x1F30];
  v568 = (BYTE3(STACK[0x1F28]) - ((2 * BYTE3(STACK[0x1F28])) & 0x50) - 88) ^ 0xA8;
  v569 = 80 * v568 - (((2611280 * v568) >> 23) | ((2611280 * v568) >> 23 << 8));
  v570 = (BYTE2(v567) - ((2 * BYTE2(v567)) & 0x50) - 88) ^ 0xA8;
  v571 = 80 * v570 - (((2611280 * v570) >> 23) | ((2611280 * v570) >> 23 << 8));
  v572 = (BYTE1(v566) - ((2 * BYTE1(v566)) & 0x16) - 117) ^ 0x8B;
  v573 = 80 * v572 - (((2611280 * v572) >> 23) | ((2611280 * v572) >> 23 << 8));
  if (!v535)
  {
    v562 = v561;
  }

  v574 = v562 ^ __ROR4__(*(a18 + 4 * (80 * STACK[0x2028] - ((((2611280 * STACK[0x2028]) >> 16) >> 7) | (((2611280 * STACK[0x2028]) >> 16) >> 7 << 8)))), 8) ^ __ROR4__(*(a18 + 4 * v569), 16) ^ __ROR4__(*(a18 + 4 * v571), 24) ^ *(a18 + 4 * v573);
  v575 = (v574 - 301599670 - ((2 * v574) & 0xDC0BE894)) ^ v526;
  v576 = (v575 - 125669748 - ((2 * v575) & 0xF104DD18)) ^ v528;
  v577 = (v576 + 2089117153 - ((2 * v576) & 0xF90ACBC2)) ^ v556;
  v578 = STACK[0x2190];
  v579 = (v578 >> v532) + (v578 << STACK[0x22E0]);
  v580 = v558 ^ LODWORD(STACK[0x1F20]) ^ 0x3C3C3C3C;
  v581 = v580 ^ (v577 + 321195147 - ((2 * v577) & 0x264A1916));
  if (v535)
  {
    v582 = (v581 >> v533) | (v581 << v532);
  }

  else
  {
    v582 = v581;
  }

  v583 = (BYTE2(v566) - ((2 * BYTE2(v566)) & 0x50) - 88) ^ 0xA8;
  v584 = 80 * v583 - (((2611280 * v583) >> 23) | ((2611280 * v583) >> 23 << 8));
  v585 = (BYTE1(STACK[0x2028]) - ((2 * BYTE1(STACK[0x2028])) & 0x50) - 88) ^ 0xA8;
  v586 = 80 * v585 - (((2611280 * v585) >> 23) | ((2611280 * v585) >> 23 << 8));
  if (!v535)
  {
    v579 = STACK[0x2190];
  }

  v587 = v579 ^ __ROR4__(*(a18 + 4 * (80 * STACK[0x1F28] - ((((2611280 * STACK[0x1F28]) >> 16) >> 7) | (((2611280 * STACK[0x1F28]) >> 16) >> 7 << 8)))), 8) ^ __ROR4__(*(a18 + 4 * (80 * ((BYTE3(v567) - ((2 * BYTE3(v567)) & 0x50) - 88) ^ 0xA8) - ((((2611280 * ((BYTE3(v567) - ((2 * BYTE3(v567)) & 0x50) - 88) ^ 0xA8u)) >> 16) >> 7) | (((2611280 * ((BYTE3(v567) - ((2 * BYTE3(v567)) & 0x50) - 88) ^ 0xA8u)) >> 16) >> 7 << 8)))), 16) ^ __ROR4__(*(a18 + 4 * v584), 24) ^ *(a18 + 4 * v586);
  v588 = (v587 - 301599670 - ((2 * v587) & 0xDC0BE894)) ^ v526;
  v589 = (v588 + 2089117153 - ((2 * v588) & 0xF90ACBC2)) ^ v556;
  v590 = (v589 - 125669748 - ((2 * v589) & 0xF104DD18)) ^ v528;
  v592 = v580 ^ (v590 + 321195147 - ((2 * v590) & 0x264A1916));
  if (v535)
  {
    v593 = (v592 >> STACK[0x22E0]) + (v592 << v532);
  }

  else
  {
    v593 = v592;
  }

  v594 = (WORD1(STACK[0x2028]) - ((2 * WORD1(STACK[0x2028])) & 0x50) - 88) ^ 0xA8;
  v595 = (STACK[0x1F30] - ((2 * STACK[0x1F30]) & 0x50) - 88) ^ 0xA8;
  v591 = (STACK[0x1F28] >> 8) + (~(2 * (STACK[0x1F28] >> 8)) | 0xAF);
  v596 = LODWORD(STACK[0x21B8]) ^ __ROR4__(*(a18 + 4 * LODWORD(STACK[0x1F48])), 16) ^ __ROR4__(*(a18 + 4 * (80 * v594 - ((((2611280 * v594) >> 16) >> 7) | (((2611280 * v594) >> 16) >> 7 << 8)))), 24) ^ __ROR4__(*(a18 + 4 * (80 * v595 - ((((2611280 * v595) >> 16) >> 7) | (((2611280 * v595) >> 16) >> 7 << 8)))), 8) ^ *(a18 + 4 * (80 * ((v591 - 87) ^ 0xA8) - ((((2611280 * ((v591 - 87) ^ 0xA8u)) >> 16) >> 7) | (((2611280 * ((v591 - 87) ^ 0xA8u)) >> 16) >> 7 << 8))));
  v597 = (v596 - 301599670 - ((2 * v596) & 0xDC0BE894)) ^ v526;
  v598 = (v597 + 187617381 - ((2 * v597) & 0x165DA0CA)) ^ LODWORD(STACK[0x1E20]);
  v599 = (v598 - 125669748 - ((2 * v598) & 0xF104DD18)) ^ v528;
  v600 = LODWORD(STACK[0x2030]) ^ (v599 - 2213305 - ((2 * v599) & 0xFFBC748E));
  v601 = (v600 >> v533) ^ (v600 << v532);
  if (!v535)
  {
    v601 = v600;
  }

  v602 = *(a18 + 4 * (80 * BYTE1(LODWORD(STACK[0x2268])) - ((((2611280 * BYTE1(LODWORD(STACK[0x2268]))) >> 16) >> 7) | (((2611280 * BYTE1(LODWORD(STACK[0x2268]))) >> 16) >> 7 << 8))));
  v603 = LODWORD(STACK[0x2198]) ^ __ROR4__(STACK[0x22A0], 24) ^ __ROR4__(*(a18 + 4 * (80 * HIBYTE(LODWORD(STACK[0x2188])) - ((((2611280 * HIBYTE(LODWORD(STACK[0x2188]))) >> 16) >> 7) | (((2611280 * HIBYTE(LODWORD(STACK[0x2188]))) >> 16) >> 7 << 8)))), 16);
  v604 = __ROR4__(*(a18 + 4 * (80 * LODWORD(STACK[0x2228]) - ((((2611280 * LODWORD(STACK[0x2228])) >> 16) >> 7) | (((2611280 * LODWORD(STACK[0x2228])) >> 16) >> 7 << 8)))), 8);
  v605 = ((v603 ^ v604 ^ v602) - 301599670 - ((2 * (v603 ^ v604 ^ v602)) & 0xDC0BE894)) ^ v526;
  v606 = (v605 - 125669748 - ((2 * v605) & 0xF104DD18)) ^ v528;
  v607 = (v606 + 2089117153 - ((2 * v606) & 0xF90ACBC2)) ^ v556;
  v608 = LODWORD(STACK[0x2270]) ^ (v607 + 321195147 - ((2 * v607) & 0x264A1916));
  v609 = ((v608 ^ 0xAAAAAAAA) << v532) | ((v608 ^ 0xAAAAAAAA) >> v533);
  v610 = v608 ^ 0xBD622B5;
  if (LODWORD(STACK[0x2170]) != -1343677507)
  {
    v610 = v609 - ((2 * v609) & 0x42F9103E) - 1585674209;
  }

  v611 = ~(2 * LODWORD(STACK[0x1EE0])) + LODWORD(STACK[0x21A8]);
  if (STACK[0x21A8])
  {
    v612 = STACK[0x2038];
  }

  else
  {
    v612 = v601;
  }

  if (STACK[0x21A8])
  {
    v613 = v601;
  }

  else
  {
    v613 = v593;
  }

  if (STACK[0x21A8])
  {
    v614 = v593;
  }

  else
  {
    v614 = v582;
  }

  if (STACK[0x21A8])
  {
    v615 = v582;
  }

  else
  {
    v615 = STACK[0x2038];
  }

  if (STACK[0x21A8])
  {
    v616 = STACK[0x2278];
  }

  else
  {
    v616 = STACK[0x2288];
  }

  if (STACK[0x21A8])
  {
    v617 = STACK[0x2288];
  }

  else
  {
    v617 = STACK[0x2280];
  }

  if (STACK[0x21A8])
  {
    v618 = STACK[0x2280];
  }

  else
  {
    v618 = v610;
  }

  if (STACK[0x21A8])
  {
    v619 = v610;
  }

  else
  {
    v619 = STACK[0x2278];
  }

  v620 = (v611 & 2) == 0;
  if ((v611 & 2) != 0)
  {
    v621 = v614;
  }

  else
  {
    v621 = v612;
  }

  if ((v611 & 2) != 0)
  {
    v622 = v612;
  }

  else
  {
    v622 = v614;
  }

  if ((v611 & 2) != 0)
  {
    v623 = v616;
  }

  else
  {
    v623 = v618;
  }

  if (v620)
  {
    v624 = v615;
  }

  else
  {
    v616 = v618;
    v624 = v613;
  }

  v625 = v623 ^ ((v622 ^ v624) - ((2 * (v622 ^ v624)) & 0x42F9103E) - 1585674209);
  v626 = v625 + 1011915507 - ((2 * v625) & 0x78A135E6);
  if (v620)
  {
    v627 = v619;
  }

  else
  {
    v627 = v617;
  }

  v628 = STACK[0x2118];
  v629 = LODWORD(STACK[0x2118]) ^ 0x3C509AF3;
  v630 = v626 ^ v629;
  v631 = (124696803 * (v627 ^ LODWORD(STACK[0x2118]) ^ 0xAC28CF2F)) ^ v621 ^ ((((v630 ^ 0xD544730) & 0x76EB8E3) + (v630 & 0x76EB8E3 ^ 0x22AB8C3)) * (v630 ^ 0xD544730));
  v632 = (v630 ^ 0x9BC2D1A6) + 383987431 * ((LODWORD(STACK[0x2118]) ^ 0xAC28CF2F ^ v616) + (v631 ^ 0x69696969)) + 383987431;
  if (v620)
  {
    v633 = v617;
  }

  else
  {
    v613 = v615;
    v633 = v619;
  }

  v634 = v616 ^ (v613 - ((2 * v613) & 0x42F9103E) - 1585674209) ^ v631;
  v635 = (v634 + 1011915507 - ((2 * v634) & 0x78A135E6)) ^ v629;
  if ((v635 & 0x10000000 & v633) != 0)
  {
    v636 = -(v635 & 0x10000000);
  }

  else
  {
    v636 = v635 & 0x10000000;
  }

  v637 = v633 ^ 0xA17C881F;
  v638 = v622 + 534718783 * ((v627 ^ LODWORD(STACK[0x2118]) ^ 0x53D730D0) + (v632 ^ 0x96969696)) + 786178021 * ((v628 ^ 0x643D2E59) + (v635 & 0xEFFFFFFF ^ 0x9BC2D1A6 ^ (v636 + (v633 ^ 0xA17C881F)))) + 1320896804;
  v639 = (v631 + 1011915507 - ((2 * v631) & 0x78A135E6)) ^ v629;
  v640 = (v635 ^ v633 ^ (v639 - ((2 * v639) & 0x42F9103E) - 1585674209)) + 341462419 * ((v623 ^ 0xC815E176) + (LODWORD(STACK[0x21D8]) ^ (v638 + 1011915507 - ((2 * v638) & 0x78A135E6)))) + 341462419;
  v641 = v638 + 1396543827 * ((v616 ^ 0xC815E176) + (LODWORD(STACK[0x21D8]) ^ (v640 + 1011915507 - ((2 * v640) & 0x78A135E6)))) + 1396543827;
  v642 = v632 ^ v627 ^ (v641 - ((2 * v641) & 0x42F9103E) - 1585674209);
  v643 = (v642 + 1011915507 - ((2 * v642) & 0x78A135E6)) ^ v629;
  v644 = v623 ^ 0x9BC2D1A6 ^ (v643 - ((2 * v643) & 0x42F9103E) - 1585674209);
  v645 = v637 ^ v628 ^ v635 ^ v640;
  v646 = 1115418769 * v644;
  v647 = LODWORD(STACK[0x20C0]) ^ LODWORD(STACK[0x2160]) ^ LODWORD(STACK[0x2168]) ^ LODWORD(STACK[0x21C8]) ^ LODWORD(STACK[0x21A0]) ^ LODWORD(STACK[0x2150]) ^ LODWORD(STACK[0x2140]) ^ LODWORD(STACK[0x21B0]) ^ LODWORD(STACK[0x21D0]) ^ LODWORD(STACK[0x2260]) ^ LODWORD(STACK[0x21F8]) ^ STACK[0x2230] ^ LODWORD(STACK[0x2110]) ^ LODWORD(STACK[0x2240]) ^ LODWORD(STACK[0x2148]) ^ LODWORD(STACK[0x22B8]);
  v648 = LODWORD(STACK[0x2178]) ^ LODWORD(STACK[0x1FC0]) ^ LODWORD(STACK[0x2130]) ^ STACK[0x22F0] ^ LODWORD(STACK[0x21C0]) ^ LODWORD(STACK[0x1EF8]) ^ LODWORD(STACK[0x20F0]) ^ LODWORD(STACK[0x1F00]) ^ (v647 - 526630718 - ((2 * v647) & 0xC1388184)) ^ (((STACK[0x22A8] & (v578 ^ ((v578 & STACK[0x20A0]) >> 1))) >> STACK[0x2200]) | ((STACK[0x2250] & (v578 ^ ((v578 & STACK[0x20A0]) >> 1))) << STACK[0x2298]));
  v649 = LODWORD(STACK[0x2238]) ^ ((STACK[0x2238] & LODWORD(STACK[0x22B0])) >> 1);
  v650 = v635 + 1639930558 - ((2 * v635) & 0xC37EB57C);
  v651 = LODWORD(STACK[0x2158]) ^ ((STACK[0x2158] & LODWORD(STACK[0x20A0])) >> 1);
  v652 = ((STACK[0x22C8] & v649) << STACK[0x21E8]) | ((STACK[0x22C0] & v649) >> STACK[0x21E0]);
  v653 = LODWORD(STACK[0x2138]) ^ ((STACK[0x2138] & LODWORD(STACK[0x20A0])) >> 1);
  v654 = (((STACK[0x22A8] & v651) >> STACK[0x2200]) | ((STACK[0x2250] & v651) << STACK[0x2298])) ^ (((STACK[0x22C8] & v653) << STACK[0x2298]) + ((STACK[0x22A8] & v653) >> STACK[0x2200])) ^ __ROR4__(((v652 >> 9) | (v652 << 23)) ^ __ROR4__((v648 + 1639930558 - ((2 * v648) & 0xC37EB57C)) ^ LODWORD(STACK[0x2220]), 9) ^ 0xE792F72, 23) ^ 0xF25EE41C;
  LODWORD(v652) = (v650 ^ LODWORD(STACK[0x2220])) - 840343674 - ((2 * (v650 ^ LODWORD(STACK[0x2220]))) & 0x9BD2BF0C);
  v655 = ((v643 ^ v654) + 1639930558 - ((2 * (v643 ^ v654)) & 0xC37EB57C)) ^ LODWORD(STACK[0x2220]);
  v656 = LODWORD(STACK[0x20F8]) ^ 0xCB4A035B ^ v654 ^ v652;
  v657 = LODWORD(STACK[0x20F8]) ^ 0xCB4A035B ^ (v655 - 840343674 - ((2 * v655) & 0x9BD2BF0C));
  v658 = ((v654 ^ (1115418769 * (v628 ^ 0x9BC2D1A6)) ^ v632 ^ v646) + 1639930558 - ((2 * (v654 ^ (1115418769 * (v628 ^ 0x9BC2D1A6)) ^ v632 ^ v646)) & 0xC37EB57C)) ^ LODWORD(STACK[0x2220]);
  v659 = v654 ^ LODWORD(STACK[0x20F8]) ^ (v645 - 840343674 - ((2 * v645) & 0x9BD2BF0C));
  v660 = LODWORD(STACK[0x20F8]) ^ 0x5088D2FD ^ (v658 - 840343674 - ((2 * v658) & 0x9BD2BF0C));
  v661 = LODWORD(STACK[0x2220]) ^ 0x5088D2FD ^ (v659 + 1639930558 - ((2 * v659) & 0xC37EB57C));
  LODWORD(STACK[0x22F0]) = v661 + 1883038075;
  v662 = v661;
  LODWORD(STACK[0x22C8]) = v661;
  v663 = (v661 + 1883038075) ^ v656;
  LODWORD(STACK[0x22A8]) = v656;
  v664 = v663 ^ 0x4EA8A659;
  v665 = STACK[0x1F60];
  HIDWORD(v666) = *(STACK[0x1F60] + ((((v663 ^ 0x4EA8A659u) >> 24) + 124) ^ 0x26));
  LODWORD(v666) = (HIDWORD(v666) ^ 0xAAAAAAAA) << 24;
  LODWORD(STACK[0x22E0]) = v657 + 1162603949;
  v667 = v657;
  LODWORD(STACK[0x22B0]) = v657;
  LODWORD(STACK[0x22C0]) = v660;
  v668 = v660 ^ (v657 + 1162603949);
  v669 = v668 ^ 0x283A24B5;
  v670 = STACK[0x1F38];
  LOBYTE(v661) = *(STACK[0x1F38] + ((((v663 ^ 0x4EA8A659) & 0x62200A5D ^ 0xDDDDDDDD) + ((v663 ^ 0x4EA8A659) & 0x62200A5D)) & 0x6BLL ^ 0xBDD) + (((v668 ^ 0x283A24B5u) >> 24) ^ 0x12));
  LODWORD(STACK[0x22B8]) = v660 - 699883791;
  v671 = (v660 - 699883791) ^ v662;
  v672 = STACK[0x22D0];
  v673 = *STACK[0x22D0] & 0x5167F4C8;
  v674 = STACK[0x1DD0];
  v675 = *STACK[0x22E8];
  v676 = STACK[0x22E8];
  LODWORD(v652) = -812407749 * ((*(v675 + v673) ^ (STACK[0x1DD0] + 12)) & 0x7FFFFFFF);
  v677 = -812407749 * (v652 ^ WORD1(v652));
  v678 = STACK[0x1E98];
  v679 = STACK[0x1E90];
  v680 = STACK[0x1EA0];
  *(v674 + 12) = v661 ^ *(STACK[0x1E98] + (v677 >> 24)) ^ *((v677 >> 24) + STACK[0x1E90] + 3) ^ *(STACK[0x1EA0] + (v677 >> 24)) ^ v677 ^ (-23 * BYTE3(v677)) ^ (((v668 ^ 0x283A24B5u) >> 24) - (((v668 ^ 0x283A24B5u) >> 23) & 0x50) - 88) ^ 0x1A;
  v681 = -812407749 * ((*(v675 + v673) ^ (v674 + 8)) & 0x7FFFFFFF);
  v682 = -812407749 * (v681 ^ HIWORD(v681));
  v683 = (*(v670 + 2693 + (HIBYTE(v671) ^ 0xD4)) ^ 0xA8) + 13;
  *(v674 + 8) = *(v678 + (v682 >> 24)) ^ *((v682 >> 24) + v679 + 3) ^ v683 ^ *(v680 + (v682 >> 24)) ^ ((16 * v683) | 0x60) ^ v682 ^ (-23 * BYTE3(v682)) ^ 0x87;
  LODWORD(v682) = -812407749 * ((*(v675 + v673) ^ (v674 + 4)) & 0x7FFFFFFF);
  v684 = -812407749 * (v682 ^ WORD1(v682));
  v685 = (*(v670 + 2693 + (((v666 >> 26) ^ (2 * (v666 >> 26)) & 0x56) ^ 1u)) ^ 0xA8) + 13;
  *(v674 + 4) = *(v678 + (v684 >> 24)) ^ *((v684 >> 24) + v679 + 3) ^ v685 ^ *(v680 + (v684 >> 24)) ^ ((16 * v685) | 0x60) ^ v684 ^ (-23 * BYTE3(v684)) ^ 0xB7;
  LODWORD(v684) = *(*v676 + (*v672 & 0x5167F4C8));
  LODWORD(STACK[0x22A0]) = v656 + 1862293145;
  v686 = v667 ^ (v656 + 1862293145);
  v687 = -812407749 * ((-812407749 * ((v684 ^ (v674 + 3)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v684 ^ (v674 + 3)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v673) = v686 ^ 0x5E49F391;
  *(v674 + 3) = *(v670 + 2964 + ((v667 ^ (v656 - 103)) ^ 0x83)) ^ *(v678 + (v687 >> 24)) ^ *((v687 >> 24) + v679 + 3) ^ *(v680 + (v687 >> 24)) ^ v687 ^ (-23 * BYTE3(v687)) ^ ((v667 ^ (v656 - 103) ^ 0x91) + (~(2 * (v667 ^ (v656 - 103) ^ 0x91)) | 0xAF) - 87) ^ 0xF7;
  v688 = *v672 & 0x5167F4C8;
  LOBYTE(v663) = (*(v670 + 2693 + (v663 ^ 0x26)) ^ 0xA8) + 13;
  LODWORD(v687) = -812407749 * ((*(*v676 + v688) ^ (v674 + 7)) & 0x7FFFFFFF);
  v689 = -812407749 * (v687 ^ WORD1(v687));
  *(v674 + 7) = v663 ^ *(v678 + (v689 >> 24)) ^ *((v689 >> 24) + v679 + 3) ^ ((16 * v663) | 0x60) ^ *(v680 + (v689 >> 24)) ^ v689 ^ (-23 * BYTE3(v689)) ^ 0x5B;
  v690 = *v676;
  v691 = -812407749 * ((*(*v676 + v688) ^ (v674 + 14)) & 0x7FFFFFFF);
  v692 = -812407749 * (v691 ^ HIWORD(v691));
  *(v674 + 14) = *(v670 + 2964 + (((v668 ^ 0x24B5) >> 8) ^ 0x12)) ^ *(v678 + (v692 >> 24)) ^ *((v692 >> 24) + v679 + 3) ^ *(v680 + (v692 >> 24)) ^ v692 ^ (-23 * BYTE3(v692)) ^ (((v668 ^ 0x24B5) >> 8) - (((v668 ^ 0x283A24B5u) >> 7) & 0x50) - 88) ^ 7;
  LODWORD(v692) = -812407749 * ((*(v690 + v688) ^ (v674 + 5)) & 0x7FFFFFFF);
  v693 = -812407749 * (v692 ^ WORD1(v692));
  *(v674 + 5) = *(v670 + 2964 + (BYTE2(v664) ^ 0x12)) ^ *(v678 + (v693 >> 24)) ^ *((v693 >> 24) + v679 + 3) ^ *(v680 + (v693 >> 24)) ^ v693 ^ (-23 * BYTE3(v693)) ^ (BYTE2(v664) - ((v664 >> 15) & 0x50) - 88) ^ 0x4A;
  v694 = v668 ^ 0xA7;
  v695 = *v672 & 0x5167F4C8;
  v696 = *v676;
  LODWORD(v693) = -812407749 * ((*(*v676 + v695) ^ (v674 + 15)) & 0x7FFFFFFF);
  v697 = -812407749 * (v693 ^ WORD1(v693));
  *(v674 + 15) = *(v670 + 2964 + v694) ^ *(v678 + (v697 >> 24)) ^ *((v697 >> 24) + v679 + 3) ^ *(v680 + (v697 >> 24)) ^ v697 ^ (-23 * BYTE3(v697)) ^ (v669 - ((2 * v669) & 0x50) - 88) ^ 0x2F;
  LODWORD(v695) = -812407749 * ((*(v696 + v695) ^ (v674 + 1)) & 0x7FFFFFFF);
  v698 = -812407749 * (v695 ^ WORD1(v695));
  LOBYTE(v694) = (*(v670 + 2693 + (BYTE2(v686) ^ 0x36)) ^ 0xA8) + 13;
  *(v674 + 1) = *(v678 + (v698 >> 24)) ^ *((v698 >> 24) + v679 + 3) ^ v694 ^ *(v680 + (v698 >> 24)) ^ ((16 * v694) | 0x60) ^ v698 ^ (-23 * BYTE3(v698)) ^ 0xD2;
  HIDWORD(v666) = *(v665 + (((v671 ^ 0xB4) + 124) ^ 0x26));
  LODWORD(v666) = (HIDWORD(v666) ^ 0xAAAAAAAA) << 24;
  LODWORD(v694) = v666 >> 26;
  LOBYTE(v698) = 2 * v694;
  LOBYTE(v694) = (2 * v694) & 0x56 ^ v694;
  v699 = v694 ^ 0x86;
  LOBYTE(v694) = v694 - (v698 & 0x50);
  v700 = *v672 & 0x5167F4C8;
  v701 = *v676;
  LODWORD(v698) = -812407749 * ((*(*v676 + v700) ^ (v674 + 11)) & 0x7FFFFFFF);
  v702 = -812407749 * (v698 ^ WORD1(v698));
  *(v674 + 11) = *(v670 + 2964 + v699) ^ *(v678 + (v702 >> 24)) ^ (v694 - 88) ^ *((v702 >> 24) + v679 + 3) ^ *(v680 + (v702 >> 24)) ^ v702 ^ (-23 * BYTE3(v702)) ^ 0x22;
  v703 = HIBYTE(v686) ^ 0x21;
  LODWORD(v677) = -812407749 * ((*(v701 + v700) ^ (v674 + 13)) & 0x7FFFFFFF);
  v704 = -812407749 * (v677 ^ WORD1(v677));
  v705 = STACK[0x1E58];
  v706 = STACK[0x1E60];
  v707 = STACK[0x1E50];
  *(v674 + 13) = *(v670 + 2964 + (BYTE2(v669) ^ 0x12)) ^ *(STACK[0x1E58] + (v704 >> 24)) ^ *(STACK[0x1E60] + (v704 >> 24) + 1) ^ *(STACK[0x1E50] + (v704 >> 24) + 1) ^ v704 ^ (-123 * BYTE3(v704)) ^ (BYTE2(v669) - ((v669 >> 15) & 0x50) - 88) ^ 0x7D;
  LODWORD(v694) = (((v671 ^ 0xAB5BC6B4) >> 16) - (((v671 ^ 0xAB5BC6B4) >> 15) & 0x50) - 88) ^ *(v670 + 2964 + (((v671 ^ 0xAB5BC6B4) >> 16) ^ 0x12));
  LOBYTE(v686) = v694 ^ 0x91;
  LOWORD(v694) = (((v694 ^ 0xFF91) & 0x9D) + ((v694 ^ 0xC) & 0x9D)) | 0xA8;
  HIDWORD(v666) = *(STACK[0x2218] + (v694 & 0x8F ^ v686 & 0xCF | v694 & 0x130 ^ v686 & 0x30));
  LODWORD(v666) = ((((8 * HIDWORD(v666)) ^ 0x40) - ((16 * HIDWORD(v666)) & 0x55555555) - 88) ^ HIDWORD(v666)) << 24;
  v708 = *v672 & 0x5167F4C8;
  v709 = *v676;
  LODWORD(v699) = -812407749 * ((*(*v676 + v708) ^ (v674 + 9)) & 0x7FFFFFFF);
  v710 = -812407749 * (v699 ^ WORD1(v699));
  *(v674 + 9) = *(v705 + (v710 >> 24)) ^ *(v706 + (v710 >> 24) + 1) ^ *(v707 + (v710 >> 24) + 1) ^ v710 ^ (-123 * BYTE3(v710)) ^ 0xEC ^ (v666 >> 25);
  LODWORD(v694) = -812407749 * ((*(v709 + v708) ^ (v674 + 6)) & 0x7FFFFFFF);
  v711 = -812407749 * (v694 ^ WORD1(v694));
  LOBYTE(v664) = (*(v670 + 2693 + (BYTE1(v664) ^ 0x7FLL)) ^ 0xA8) + 13;
  *(v674 + 6) = *(v705 + (v711 >> 24)) ^ *(v706 + (v711 >> 24) + 1) ^ v664 ^ *(v707 + (v711 >> 24) + 1) ^ ((16 * v664) | 0x60) ^ v711 ^ (-123 * BYTE3(v711)) ^ 0xF4;
  LOBYTE(v711) = (BYTE1(v673) - ((v673 >> 7) & 0x50) - 88) ^ *(v670 + 2964 + (BYTE1(v673) ^ 0x12));
  LODWORD(v673) = -812407749 * ((*(*v676 + v708) ^ (v674 + 2)) & 0x7FFFFFFF);
  v712 = -812407749 * (v673 ^ WORD1(v673));
  *(v674 + 2) = v711 ^ 0xFC ^ *(v705 + (v712 >> 24)) ^ *(v706 + (v712 >> 24) + 1) ^ *(v707 + (v712 >> 24) + 1) ^ v712 ^ (-123 * BYTE3(v712));
  LODWORD(v711) = (*(v670 + 2693 + ((((v711 ^ 0xFC) & 0x7F) + (v711 & 0x7F ^ 3)) ^ ((v671 ^ 0xC6B4) >> 8))) ^ 0xFFFFFFA8) + 13;
  LODWORD(v711) = ((16 * v711) | 0x60) ^ v711;
  v713 = (v711 >> 7) & 1 | (2 * v711);
  LOBYTE(v712) = *(STACK[0x2208] + (v713 ^ 0xDE) - 2 * ((v713 ^ 0xFFFFFFDE) & 0x9F) + 159);
  LOBYTE(v711) = (v713 - ((4 * v711) & 0x50) - 88) ^ 0x53;
  v714 = *v672 & 0x5167F4C8;
  v715 = *v676;
  LODWORD(v708) = -812407749 * ((*(*v676 + v714) ^ (v674 + 10)) & 0x7FFFFFFF);
  v716 = -812407749 * (v708 ^ WORD1(v708));
  *(v674 + 10) = *(v705 + (v716 >> 24)) ^ *(v706 + (v716 >> 24) + 1) ^ *(v707 + (v716 >> 24) + 1) ^ v716 ^ (-123 * BYTE3(v716)) ^ 0xD7 ^ ((v712 ^ v711) - 55);
  LODWORD(v711) = -812407749 * ((*(v715 + v714) ^ v674) & 0x7FFFFFFF);
  v717 = -812407749 * (v711 ^ WORD1(v711));
  *v674 = *(v705 + (v717 >> 24)) ^ *(v706 + (v717 >> 24) + 1) ^ ((*(v670 + 2693 + v703) ^ 0xA8) + 13) ^ *(v707 + (v717 >> 24) + 1) ^ ((16 * ((*(v670 + 2693 + v703) ^ 0xA8) + 13)) | 0x60) ^ v717 ^ (-123 * BYTE3(v717)) ^ 5;
  v718 = LODWORD(STACK[0x22C0]) - ((2 * LODWORD(STACK[0x22B8])) & 0xDC0BE894) - 1001483461;
  v719 = LODWORD(STACK[0x22C8]) - ((2 * LODWORD(STACK[0x22F0])) & 0xDC0BE894) + 1581438405;
  v720 = STACK[0x1E10];
  HIDWORD(v666) = LODWORD(STACK[0x1E10]) ^ 0x4EC993;
  LODWORD(v666) = LODWORD(STACK[0x1E10]) ^ 0x41000000;
  v721 = LODWORD(STACK[0x22B0]) - ((2 * LODWORD(STACK[0x22E0])) & 0xDC0BE894) + 861004279;
  v722 = HIWORD(LODWORD(STACK[0x1E10])) ^ 0x414E;
  v723 = (v666 >> 24) ^ (v720 >> 8) ^ (v722 | (v720 << 16));
  v724 = v720 ^ (v720 << 24) ^ LODWORD(STACK[0x1E00]) ^ 0x93000000 ^ ((v723 ^ 0xC9D24EC9) + 1095678557 - 2 * ((v723 ^ 0xC9D24EC9) & 0x414EC997 ^ v723 & 4) + 3894);
  v725 = v724 ^ (LODWORD(STACK[0x22A8]) - ((2 * LODWORD(STACK[0x22A0])) & 0xDC0BE894) + 1560693475);
  LODWORD(STACK[0x22E0]) = v725;
  LODWORD(v675) = v724 ^ v718;
  LODWORD(v706) = v724 ^ v721;
  v726 = v724 ^ 0xCA99A169 ^ v719;
  LOBYTE(v718) = v706 ^ 0x2E;
  LOBYTE(v717) = *(v670 + 2693 + (HIBYTE(v725) ^ 0x8DLL));
  LODWORD(STACK[0x22F0]) = v722 & 0x40B;
  v727 = *v672 & 0x5167F4C8;
  v728 = v676;
  v729 = *v676;
  v730 = *(*v676 + v727);
  v731 = STACK[0x1DD8];
  v732 = -812407749 * ((-812407749 * ((v730 ^ v731) & 0x7FFFFFFF)) ^ ((-812407749 * ((v730 ^ v731) & 0x7FFFFFFF)) >> 16));
  v733 = STACK[0x1E48];
  v734 = STACK[0x1E38];
  v735 = STACK[0x1E40];
  *v731 = ((v717 ^ 0xA8) + 13) ^ *(STACK[0x1E48] + (v732 >> 24)) ^ *(STACK[0x1E38] + (v732 >> 24) + 1) ^ ((16 * ((v717 ^ 0xA8) + 13)) | 0x60) ^ *(STACK[0x1E40] + (v732 >> 24) + 1) ^ v732 ^ (69 * BYTE3(v732)) ^ 0xAD;
  v736 = STACK[0x630];
  LODWORD(v717) = -812407749 * ((*(v729 + v727) ^ (STACK[0x630] + 678)) & 0x7FFFFFFF);
  v737 = -812407749 * (v717 ^ WORD1(v717));
  LOBYTE(v701) = (*(v670 + 2693 + (BYTE2(v726) ^ 0x7FLL)) ^ 0xA8) + 13;
  v736[678] = *(v733 + (v737 >> 24)) ^ *(v734 + (v737 >> 24) + 1) ^ v701 ^ *(v735 + (v737 >> 24) + 1) ^ ((16 * v701) | 0x60) ^ v737 ^ (69 * BYTE3(v737)) ^ 0xA8;
  LODWORD(v737) = -812407749 * ((*(v729 + v727) ^ (v736 + 682)) & 0x7FFFFFFF);
  v738 = -812407749 * (v737 ^ WORD1(v737));
  LODWORD(v727) = v675 ^ 0x917D9DF2;
  LOBYTE(v675) = (*(v670 + 2693 + (BYTE2(v675) ^ 2)) ^ 0xA8) + 13;
  v736[682] = *(v733 + (v738 >> 24)) ^ *(v734 + (v738 >> 24) + 1) ^ v675 ^ *(v735 + (v738 >> 24) + 1) ^ ((16 * v675) | 0x60) ^ v738 ^ (69 * BYTE3(v738)) ^ 0xF0;
  v739 = *v672 & 0x5167F4C8;
  v740 = *v728;
  LODWORD(v738) = -812407749 * ((*(*v728 + v739) ^ (v736 + 688)) & 0x7FFFFFFF);
  v741 = -812407749 * (v738 ^ WORD1(v738));
  v736[688] = ((*(v670 + 2693 + (v706 ^ 0x51)) ^ 0xA8) + 13) ^ *(v733 + (v741 >> 24)) ^ *(v734 + (v741 >> 24) + 1) ^ ((16 * ((*(v670 + 2693 + (v706 ^ 0x51)) ^ 0xA8) + 13)) | 0x60) ^ *(v735 + (v741 >> 24) + 1) ^ v741 ^ (69 * BYTE3(v741)) ^ 0x66;
  LODWORD(v741) = -812407749 * ((*(v740 + v739) ^ (v736 + 685)) & 0x7FFFFFFF);
  v742 = -812407749 * (v741 ^ WORD1(v741));
  v736[685] = (((v706 ^ 0x200A6B2E) >> 24) - (((v706 ^ 0x200A6B2E) >> 23) & 0x50) - 88) ^ *(v733 + (v742 >> 24)) ^ *(v734 + (v742 >> 24) + 1) ^ *(v735 + (v742 >> 24) + 1) ^ v742 ^ (69 * BYTE3(v742)) ^ *(v670 + 2964 + (((v706 ^ 0x200A6B2E) >> 24) ^ 0x12)) ^ 0x64;
  LODWORD(v742) = -812407749 * ((*(v740 + v739) ^ (v736 + 687)) & 0x7FFFFFFF);
  v743 = -812407749 * (v742 ^ WORD1(v742));
  v744 = (v743 >> 24) + 1;
  LOBYTE(v739) = *(v733 + (v743 >> 24)) ^ *(v734 + v744);
  STACK[0x2298] = v670 + 2693;
  v736[687] = v739 ^ ((*(v670 + 2693 + (BYTE1(v706) ^ 0x14)) ^ 0xA8) + 13) ^ *(v735 + v744) ^ ((16 * ((*(v670 + 2693 + (BYTE1(v706) ^ 0x14)) ^ 0xA8) + 13)) | 0x60) ^ v743 ^ (69 * BYTE3(v743)) ^ 0x85;
  v745 = *v672 & 0x5167F4C8;
  v746 = *v728;
  LODWORD(v712) = -812407749 * ((*(*v728 + v745) ^ (v736 + 676)) & 0x7FFFFFFF);
  v747 = -812407749 * (v712 ^ WORD1(v712));
  v736[676] = ((*(v670 + 2693 + (v725 ^ 0xB3)) ^ 0xA8) + 13) ^ *(v733 + (v747 >> 24)) ^ *(v734 + (v747 >> 24) + 1) ^ ((16 * ((*(v670 + 2693 + (v725 ^ 0xB3)) ^ 0xA8) + 13)) | 0x60) ^ *(v735 + (v747 >> 24) + 1) ^ v747 ^ (69 * BYTE3(v747)) ^ 0xCF;
  LODWORD(v745) = -812407749 * ((*(v746 + v745) ^ (v736 + 686)) & 0x7FFFFFFF);
  v748 = -812407749 * (v745 ^ WORD1(v745));
  v736[686] = (((v706 ^ 0x200A6B2E) >> 16) - (((v706 ^ 0x200A6B2E) >> 15) & 0x50) - 88) ^ *(v733 + (v748 >> 24)) ^ *(v734 + (v748 >> 24) + 1) ^ *(v735 + (v748 >> 24) + 1) ^ v748 ^ (69 * BYTE3(v748)) ^ *(v670 + 2964 + (((v706 ^ 0x200A6B2E) >> 16) ^ 0x12)) ^ 0xBD;
  v749 = STACK[0x1E68];
  v750 = *(STACK[0x1E68] + ((BYTE3(v727) + 124) ^ 0xD9));
  LODWORD(v706) = *(v670 + 2964 + (v750 ^ 0xDB));
  HIDWORD(v666) = ((v750 ^ 0x58) - 2 * ((v750 ^ 0x58) & 0xD ^ v750 & 5) + 8) ^ v706;
  LODWORD(v666) = (((v750 ^ 0x58) - 2 * ((v750 ^ 0x58) & 0x2E ^ v750 & 6) - 88) ^ v706) << 24;
  v751 = *v672 & 0x5167F4C8;
  v752 = *v728;
  v753 = v728;
  LODWORD(v747) = -812407749 * ((*(*v728 + v751) ^ (v736 + 681)) & 0x7FFFFFFF);
  v754 = -812407749 * (v747 ^ WORD1(v747));
  v736[681] = *(v733 + (v754 >> 24)) ^ *(v734 + (v754 >> 24) + 1) ^ *(v735 + (v754 >> 24) + 1) ^ v754 ^ (69 * BYTE3(v754)) ^ ((((v666 >> 29) ^ 0xEC) >> 3) | (32 * ((v666 >> 29) ^ 0xEC))) ^ 0x3E;
  v755 = &v731[((LODWORD(STACK[0x22F0]) ^ 0xFB) + LODWORD(STACK[0x22F0])) & 0xF];
  LODWORD(v754) = -812407749 * ((*(v752 + v751) ^ v755) & 0x7FFFFFFF);
  v756 = -812407749 * (v754 ^ WORD1(v754));
  v757 = STACK[0x1E60];
  *v755 = (v727 - ((2 * v727) & 0x50) - 88) ^ *(v733 + (v756 >> 24)) ^ *(v734 + (v756 >> 24) + 1) ^ *(v735 + (v756 >> 24) + 1) ^ v756 ^ (69 * BYTE3(v756)) ^ *(v670 + 2964 + (v727 ^ 0x12)) ^ 0x1C;
  v758 = LODWORD(STACK[0x22E0]) ^ 0xF23AD5CC;
  LODWORD(v751) = -812407749 * ((*(v752 + v751) ^ (v736 + 677)) & 0x7FFFFFFF);
  v759 = -812407749 * (v751 ^ WORD1(v751));
  v736[677] = *(v749 + ((((HIBYTE(v726) + (~(v726 >> 23) | 0xAF) - 87) ^ *(v670 + 2964 + (HIBYTE(v726) ^ 0x12)) ^ 0x66) + 124) ^ 0xD9)) ^ *(v733 + (v759 >> 24)) ^ *(v734 + (v759 >> 24) + 1) ^ *(v735 + (v759 >> 24) + 1) ^ v759 ^ (69 * BYTE3(v759)) ^ 0x6A;
  v760 = *v728;
  v761 = *v672 & 0x5167F4C8;
  LODWORD(v728) = -812407749 * ((*(*v728 + v761) ^ (v736 + 679)) & 0x7FFFFFFF);
  v762 = -812407749 * (v728 ^ (v728 >> 16));
  v736[679] = (v726 >> ((v718 & 8 ^ 8) + (v718 & 8))) ^ *(v705 + (v762 >> 24)) ^ *(v757 + (v762 >> 24) + 1) ^ *(v707 + (v762 >> 24) + 1) ^ v762 ^ (-123 * BYTE3(v762)) ^ 0x7D ^ *(v670 + 2964 + ((v726 >> ((v718 & 8 ^ 8) + (v718 & 8))) ^ 0x12));
  LOBYTE(v755) = *(v670 + 2964 + (BYTE1(v727) ^ 0x12));
  LOBYTE(v680) = BYTE1(v727) - ((v727 >> 7) & 0x50) - 88;
  LODWORD(v727) = -812407749 * ((*(v760 + v761) ^ (v736 + 683)) & 0x7FFFFFFF);
  v763 = -812407749 * (v727 ^ WORD1(v727));
  v736[683] = v680 ^ *(v705 + (v763 >> 24)) ^ *(v757 + (v763 >> 24) + 1) ^ *(v707 + (v763 >> 24) + 1) ^ v763 ^ (-123 * BYTE3(v763)) ^ v755 ^ 0xBF;
  v764 = STACK[0x2258];
  LODWORD(v734) = -812407749 * ((*(v760 + v761) ^ (v736 + 680)) & 0x7FFFFFFF);
  v765 = -812407749 * (v734 ^ WORD1(v734));
  v736[680] = (v726 - ((2 * v726) & 0x50) - 88) ^ *(v705 + (v765 >> 24)) ^ *(v757 + (v765 >> 24) + 1) ^ *(v707 + (v765 >> 24) + 1) ^ v765 ^ (-123 * BYTE3(v765)) ^ *(v670 + 2964 + (v726 ^ 0x12)) ^ 0x18;
  HIDWORD(v666) = *(STACK[0x2218] + (BYTE1(v758) ^ 0xC6));
  LODWORD(v666) = ((((8 * HIDWORD(v666)) ^ 0x40) - ((16 * HIDWORD(v666)) & 0x55555555) - 88) ^ HIDWORD(v666)) << 24;
  v766 = STACK[0x2298];
  v767 = BYTE2(v758) ^ 0x7FLL;
  LOBYTE(v680) = (*(STACK[0x2298] + ((v666 >> 25) ^ 0x79)) ^ 0xA8) + 13;
  LODWORD(v765) = *v672;
  v768 = *v753;
  v769 = -812407749 * ((*(*v753 + (*v672 & 0x5167F4C8)) ^ (v736 + 675)) & 0x7FFFFFFF);
  v770 = -812407749 * (v769 ^ HIWORD(v769));
  v736[675] = v680 ^ *(v705 + (v770 >> 24)) ^ *(v757 + (v770 >> 24) + 1) ^ ((16 * v680) | 0x60) ^ *(v707 + (v770 >> 24) + 1) ^ v770 ^ (-123 * BYTE3(v770)) ^ 0x4B;
  LODWORD(v680) = -812407749 * ((*(v768 + (v765 & 0x5167F4C8)) ^ (v736 + 674)) & 0x7FFFFFFF);
  v771 = -812407749 * (v680 ^ WORD1(v680));
  v736[674] = *(v705 + (v771 >> 24)) ^ *(v757 + (v771 >> 24) + 1) ^ ((*(v766 + v767) ^ 0xA8) + 13) ^ *(v707 + (v771 >> 24) + 1) ^ ((16 * ((*(v766 + v767) ^ 0xA8) + 13)) | 0x60) ^ v771 ^ (-123 * BYTE3(v771)) ^ 0x92;
  LODWORD(v756) = STACK[0x20D8];
  v772 = STACK[0x22F8];
  v773 = -812407749 * (((&STACK[0x2000] + 5414) ^ *(v768 + (v765 & 0x38F3A374))) & 0x7FFFFFFF);
  v774 = -812407749 * ((v773 >> (((LODWORD(STACK[0x20D8]) - 30) & 0xEB) + 37)) ^ v773);
  *(STACK[0x7F0] + v764) = *(*(&off_279CA5FD0 + (LODWORD(STACK[0x20D8]) ^ 0x81C)) + (v774 >> 24) - 12) ^ *(*(&off_279CA5FD0 + LODWORD(STACK[0x20D8]) - 1885) + (v774 >> 24) - 12) ^ *(*(&off_279CA5FD0 + LODWORD(STACK[0x20D8]) - 1903) + (v774 >> 24) + 2) ^ v774 ^ (-109 * BYTE3(v774));
  return (*(v772 + 8 * ((59 * (v764 == 15)) ^ v756)))();
}

uint64_t sub_26AA4E88C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x1FC8]) = a2;
  LODWORD(STACK[0x1FC0]) = v8;
  v10 = *(a6 + 4 * v7);
  LODWORD(STACK[0x2180]) = *(a6 + 4 * (STACK[0x21F0] ^ 0xA8u));
  v11 = *(STACK[0x1F10] + (((v10 >> 23) & 0xFE | (v10 >> 31)) ^ 0xBLL)) ^ 0xB5;
  return (*(v9 + 8 * ((55 * (((v11 - 55) | (v11 - 2)) != 0)) ^ v6)))(a1);
}

void sub_26AA4E978(int a1@<W8>)
{
  v2 = a1 + 1358;
  LODWORD(STACK[0x2248]) = LODWORD(STACK[0x20C8]) >> 1;
  STACK[0x2200] = LODWORD(STACK[0x1EC0]) ^ 0xD2u;
  v3 = LODWORD(STACK[0x22C0]) ^ 0x1E20AA98;
  LODWORD(STACK[0x20D8]) = v2;
  STACK[0x22C8] = v3 ^ v2;
  STACK[0x21E8] = LODWORD(STACK[0x1F20]) ^ 0x7Cu;
  LODWORD(STACK[0x2228]) = v1 >> 1;
  STACK[0x2298] = LODWORD(STACK[0x1EC8]) ^ 0x68u;
  STACK[0x21E0] = (LODWORD(STACK[0x2038]) + 6);
  STACK[0x21F0] = LODWORD(STACK[0x2170]) ^ 0xBDu;
  STACK[0x1FD8] = LODWORD(STACK[0x2270]) ^ 0x39u;
  LODWORD(STACK[0x22A8]) = LODWORD(STACK[0x2288]) ^ 0xDA224EA6;
  STACK[0x2250] = LODWORD(STACK[0x2278]) ^ 0x22345E8u;
  STACK[0x1FB8] = LODWORD(STACK[0x2168]);
  JUMPOUT(0x26AA4EAC0);
}

uint64_t sub_26AA52CCC@<X0>(unint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _BYTE *a22)
{
  STACK[0x22F0] = a1;
  v30 = v24 - 35;
  v31 = *(v22 + a2) ^ (&STACK[0x2000] + 5414);
  v32 = (((v31 & (v30 ^ 0x7FFFF137)) * v25) ^ (((v31 & (v30 ^ 0x7FFFF137)) * v25) >> 16)) * v25;
  v33 = ((*(v22 + ((v30 - 1972596196) & v23)) ^ ((&STACK[0x2000] + 12224) | 9)) & 0x7FFFFFFF) * v25;
  v34 = (v33 ^ HIWORD(v33)) * v25;
  v35 = -109 * (((((v31 & (v30 ^ 0x7FFFF137)) * v25) ^ (((v31 & (v30 ^ 0x7FFFF137)) * v25) >> 16)) * v25) >> 24);
  v36 = (((v31 & 0x7FFFFFFF) * v25) ^ (((v31 & 0x7FFFFFFF) * v25) >> 16)) * v25;
  *v27 ^= *a22 ^ *(v28 + (v32 >> 24)) ^ *(v26 + (v32 >> 24)) ^ *((v32 >> 24) + STACK[0x22F0] + 2) ^ *(STACK[0x1FF0] + (v34 >> 24)) ^ *((v34 >> 24) + STACK[0x1FE8] + 1) ^ v32 ^ *(STACK[0x1FE0] + (v34 >> 24)) ^ v35 ^ *(v28 + (v36 >> 24)) ^ *(v26 + (v36 >> 24)) ^ v34 ^ *((v36 >> 24) + STACK[0x22F0] + 2) ^ (121 * BYTE3(v34)) ^ v36 ^ (-109 * BYTE3(v36));
  return (*(v29 + 8 * (v30 ^ 0x23)))(121);
}

uint64_t sub_26AA52E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, _BYTE *a50)
{
  *v55 = 0;
  v56 = v50 ^ 0x76;
  v57 = STACK[0xA50];
  *v57 = 0;
  *(v57 + 8) = 0;
  *(v57 + 16) = 0;
  *(v57 + 24) = 0;
  *(v57 + 28) = 0;
  *(v57 + 30) = 0;
  v58 = ((*(*STACK[0x22E8] + (*v53 & 0x5167F4C8)) ^ a50) & 0x7FFFFFFF) * v52;
  v59 = (v58 ^ HIWORD(v58)) * v52;
  *v51 = *a50 ^ *(STACK[0x1E58] + (v59 >> 24)) ^ *(STACK[0x1E60] + (v59 >> 24) + 1) ^ *(STACK[0x1E50] + (v59 >> 24) + 1) ^ v59 ^ (-123 * BYTE3(v59)) ^ 0xAC;
  return (*(v54 + 8 * (v56 ^ 0x76)))();
}

uint64_t sub_26AA52F18@<X0>(uint64_t a1@<X2>, void *a2@<X3>, unsigned int a3@<W4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, int a7@<W8>)
{
  v12 = ((*(*a2 + (*v10 & a3)) ^ (a1 + v7)) & (1649 * (a7 ^ 0x73D) + 2147480349)) * v9;
  v13 = (v12 ^ HIWORD(v12)) * v9;
  *(v8 + v7) = *(a1 + v7) ^ *(a5 + (v13 >> 24)) ^ *(a4 + (v13 >> 24) + 1) ^ *(a6 + (v13 >> 24) + 1) ^ v13 ^ (-123 * BYTE3(v13)) ^ 0xAC;
  return (*(v11 + 8 * ((2224 * (v7 == 31)) ^ a7)))();
}

uint64_t sub_26AA52FC4()
{
  STACK[0x22E0] = v1;
  v6.n128_u64[0] = 0x5858585858585858;
  v6.n128_u64[1] = 0x5858585858585858;
  v7.n128_u64[0] = 0xACACACACACACACACLL;
  v7.n128_u64[1] = 0xACACACACACACACACLL;
  STACK[0x22C8] = v4;
  v8 = (v2 ^ *(*STACK[0x22E8] + (*v3 & 0x38F3A374))) & 0x7FFFFFFF;
  v9 = -812407749 * (((-812407749 * v8) >> (((((v0 + 106) | 0xA1) + 55) | 0xB) - 31)) ^ (-812407749 * v8));
  return (*(v5 + 8 * ((489 * ((((*(v4 + (v9 >> 24)) ^ *v2 ^ *(STACK[0x22E0] + (v9 >> 24)) ^ *((v9 >> 24) + STACK[0x22F0] + 2) ^ v9 ^ (-109 * BYTE3(v9))) >> 7) & 1) == 0)) ^ ((v0 - 3222) | 0x10A1))))(45, 7824, 3294, 619, 236, 4294967265, 250, 3194292464, v6, v7);
}

uint64_t sub_26AA530F0(char a1)
{
  v5 = ((*(v1 - 1) << (((v4 - 31) | v2) + 46)) + (*v1 >> 1)) ^ v3;
  *v1 = v5 - 2 * (v5 & a1 ^ ((*v1 & 2) != 0)) - 84;
  return (*(STACK[0x22F8] + 8 * (v4 + 3873)))();
}

uint64_t sub_26AA531A4@<X0>(char a1@<W2>, char a2@<W3>, char a3@<W4>, char a4@<W5>, char a5@<W6>, int a6@<W8>)
{
  if ((v6 & 1) == 0)
  {
    a4 = 0;
  }

  *STACK[0x640] = a4 ^ a5 ^ (*STACK[0x640] >> (((v7 ^ a1) * a2) ^ a3));
  return (*(v8 + 8 * (((v7 - 3230) * (a6 != 127)) ^ v7)))();
}

uint64_t sub_26AA53208()
{
  v2 = (v0 - 1159) | 0x780;
  v3.n128_u64[0] = 0x5858585858585858;
  v3.n128_u64[1] = 0x5858585858585858;
  v4.n128_u64[0] = 0xACACACACACACACACLL;
  v4.n128_u64[1] = 0xACACACACACACACACLL;
  v5 = (STACK[0x7F0] ^ *(*STACK[0x22E8] + (*STACK[0x22D0] & 0x38F3A374))) & ((((v2 - 4045) | 0x1A) + 1523) ^ 0x7FFFF9ED);
  v6 = -812407749 * ((-812407749 * v5) ^ ((-812407749 * v5) >> 16));
  return (*(v1 + 8 * ((51 * ((((*(STACK[0x22C8] + (v6 >> 24)) ^ *STACK[0x7F0] ^ *(STACK[0x22E0] + (v6 >> 24)) ^ *((v6 >> 24) + STACK[0x22F0] + 2) ^ v6 ^ (-109 * BYTE3(v6))) >> 7) & 1) == 0)) ^ v2)))(21, 2940, 3281, 81, 4294967265, 250, v3, v4);
}

uint64_t sub_26AA53388(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  HIDWORD(v11) = *(v7 - 1);
  LODWORD(v11) = *v7 << 24;
  *v7 = ((v11 >> 25) ^ v8) - (v9 & (2 * ((v11 >> 25) ^ v8))) - 84;
  return (*(v10 + 8 * (((a7 == 17) * a1) ^ (a7 + 2822))))();
}

uint64_t sub_26AA53418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = -812407749 * ((v7 ^ *(*STACK[0x22E8] + (*STACK[0x22D0] & 0x38F3A374))) & 0x7FFFFFFF);
  v11 = -812407749 * (v10 ^ HIWORD(v10));
  *v7 = *(STACK[0x22C8] + (v11 >> 24)) ^ *v9 ^ *(STACK[0x22E0] + (v11 >> 24)) ^ *((v11 >> 24) + STACK[0x22F0] + 2) ^ v11 ^ (BYTE3(v11) * (((a7 + 28) & 0x75) + 98));
  return (*(v8 + 8 * a7))();
}

uint64_t sub_26AA534E8()
{
  v11 = ((*(v0 + v1) ^ (v6 + v3)) & 0x7FFFFFFF) * v4;
  v12 = ((v11 >> (((v2 - 52) & 0xBF) + 83)) ^ v11) * v4;
  v13 = (v11 ^ HIWORD(v11)) * v4;
  *(v6 + v3) ^= *(*(v8 + 8 * (v2 ^ 0x89E)) + v3) ^ *(v5 + (v12 >> 24)) ^ *(v7 + (v12 >> 24)) ^ *((v12 >> 24) + v9 + 2) ^ *(v5 + (v13 >> 24)) ^ *(v7 + (v13 >> 24)) ^ v12 ^ *((v13 >> 24) + v9 + 2) ^ (-109 * BYTE3(v12)) ^ v13 ^ (-109 * BYTE3(v13));
  return (*(v10 + 8 * ((763 * (v3 == 15)) ^ v2)))();
}

uint64_t sub_26AA535C8@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, _BYTE *a43)
{
  *STACK[0x690] = 0;
  v48 = STACK[0x1210];
  *v48 = 0;
  *(v48 + 8) = 0;
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  *(v48 + 28) = 0;
  *(v48 + 30) = 0;
  v49 = -812407749 * ((*(*v45 + (*v44 & ((a1 ^ 0x79) + 1365765636))) ^ a43) & 0x7FFFFFFF);
  v50 = -812407749 * (v49 ^ HIWORD(v49));
  *v43 = *a43 ^ *(*(v46 + 8 * (a1 - 1716)) + (v50 >> 24)) ^ *(*(v46 + 8 * (a1 ^ 0x6CA)) - 12 + (v50 >> 24)) ^ *((v50 >> 24) + *(v46 + 8 * (a1 - 1628)) - 12 + 4) ^ v50 ^ (-29 * BYTE3(v50)) ^ 6;
  return (*(v47 + 8 * a1))();
}

uint64_t sub_26AA536D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v19 = ((*(*v17 + (*v16 & a6)) ^ (a8 + v11)) & (v12 ^ 0x64E ^ v15)) * v14;
  v20 = (v19 ^ HIWORD(v19)) * v14;
  *(v13 + v11) = *(a8 + v11) ^ *(v8 + (v20 >> 24)) ^ *(v9 + (v20 >> 24)) ^ *((v20 >> 24) + v10 + 4) ^ v20 ^ (-29 * BYTE3(v20)) ^ 6;
  return (*(v18 + 8 * ((2296 * (v11 == 31)) ^ v12)))();
}

uint64_t sub_26AA53764()
{
  v5.n128_u64[0] = 0xC0C0C0C0C0C0C0CLL;
  v5.n128_u64[1] = 0xC0C0C0C0C0C0C0CLL;
  v6.n128_u64[0] = 0x606060606060606;
  v6.n128_u64[1] = 0x606060606060606;
  v7 = v1;
  v8 = -812407749 * ((v1 ^ *(*v3 + (*v2 & 0x38F3A374))) & 0x7FFFFFFF);
  v9 = -812407749 * ((v8 >> (((v0 + 85) & 0x2F) + 1)) ^ v8);
  return (*(v4 + 8 * ((62 * (((*(STACK[0x22C8] + (v9 >> 24)) ^ *v7 ^ *(STACK[0x22E0] + (v9 >> 24)) ^ *((v9 >> 24) + STACK[0x22F0] + 2) ^ v9 ^ (-109 * BYTE3(v9))) >> 7) & 1)) ^ (v0 + 302402901) & 0xEDF9B62F)))(568323024, 3726644378, 140, 1966, 239266549, 4055702947, 1030, 4294967265, v5, v6);
}

uint64_t sub_26AA5387C(char a1, char a2, char a3, int8x16_t a4, int8x16_t a5)
{
  v8 = (v7 + 1421534000) & v6;
  *STACK[0x690] = veorq_s8(vaddq_s8(vsubq_s8(*STACK[0x690], vandq_s8(vaddq_s8(*STACK[0x690], *STACK[0x690]), a4)), a5), *STACK[0x648]);
  HIDWORD(v9) = *(v5 - 1);
  LODWORD(v9) = *v5 << 24;
  *v5 = ((v9 >> 25) ^ 3) + ((v8 + a1) & a2 ^ a3) - ((2 * ((v9 >> 25) ^ 3)) & 0xC);
  return (*(STACK[0x22F8] + 8 * (v8 + 2239)))();
}

uint64_t sub_26AA53934@<X0>(int a1@<W4>, int a2@<W5>, int a3@<W6>, char a4@<W7>, int a5@<W8>)
{
  if ((v8 & 1) == 0)
  {
    a4 = 0;
  }

  *STACK[0x648] = a4 ^ (*STACK[0x648] >> 1) ^ v5;
  return (*(v9 + 8 * (((a5 + 1 == (((v7 - 129) | a3) ^ v6)) * (((v7 + a1) & a2) + 1002)) ^ v7)))();
}

uint64_t sub_26AA53998()
{
  v2.n128_u64[0] = 0xC0C0C0C0C0C0C0CLL;
  v2.n128_u64[1] = 0xC0C0C0C0C0C0C0CLL;
  v3.n128_u64[0] = 0x606060606060606;
  v3.n128_u64[1] = 0x606060606060606;
  v4 = -812407749 * ((-812407749 * ((STACK[0x7F0] ^ *(*STACK[0x22E8] + (*STACK[0x22D0] & 0x38F3A374))) & 0x7FFFFFFF)) ^ ((-812407749 * ((STACK[0x7F0] ^ *(*STACK[0x22E8] + (*STACK[0x22D0] & 0x38F3A374))) & 0x7FFFFFFF)) >> 16));
  return (*(v1 + 8 * ((103 * (((*(STACK[0x22C8] + (v4 >> 24)) ^ *STACK[0x7F0] ^ *(STACK[0x22E0] + (v4 >> 24)) ^ *((v4 >> 24) + STACK[0x22F0] + 2) ^ v4 ^ (BYTE3(v4) * ((v0 - 4) ^ 0x8C))) >> 7) & 1)) ^ (v0 - 1689))))(2364, 74, 3833291464, 461676278, 4294967265, 5, 2787, 522, v2, v3);
}

uint64_t sub_26AA53AF0(char a1, int a2, int8x16_t a3, int8x16_t a4)
{
  *STACK[0x690] = veorq_s8(vaddq_s8(vsubq_s8(*STACK[0x690], vandq_s8(vaddq_s8(*STACK[0x690], *STACK[0x690]), a3)), a4), *&STACK[0xAD10]);
  HIDWORD(v7) = *(v4 - 1);
  LODWORD(v7) = *v4 << 24;
  *v4 = ((v7 >> 25) ^ 3) - ((((v7 >> 25) ^ 3) << ((v6 ^ v5 ^ a1) - 34)) & 0xC) + 6;
  return (*(STACK[0x22F8] + 8 * (a2 ^ ((v6 ^ v5) + 267))))();
}

uint64_t sub_26AA53B98()
{
  v2 = *STACK[0x22E8];
  v3 = *STACK[0x22D0] & 0x38F3A374;
  LODWORD(STACK[0x22C0]) = -812407772;
  v4 = -812407749 * (((&STACK[0x2000] + 5414) ^ *(v2 + v3)) & 0x7FFFFFFF);
  v5 = (v4 ^ HIWORD(v4)) * ((v0 - 2755) ^ 0xCF93A424);
  *STACK[0x7F0] = *(STACK[0x22C8] + (v5 >> 24)) ^ *STACK[0x690] ^ *(STACK[0x22E0] + (v5 >> 24)) ^ *((v5 >> 24) + STACK[0x22F0] + 2) ^ v5 ^ (-109 * BYTE3(v5));
  return (*(v1 + 8 * v0))();
}

uint64_t sub_26AA53C70@<X0>(int a1@<W8>)
{
  v8 = (((&STACK[0x2000] + 5430) ^ *(v1 + v2)) & 0x7FFFFFFF) * a1;
  v9 = ((v8 >> ((v3 - 64) & 0xED ^ 0xDD)) ^ v8) * a1;
  *(STACK[0x630] + 463) = *(v4 + (v9 >> 24)) ^ *(v5 + (v9 >> 24)) ^ *((v9 >> 24) + v6 + 2) ^ v9 ^ (-109 * BYTE3(v9));
  return (*(v7 + 8 * ((v3 + 2887) | 0x11)))();
}

uint64_t sub_26AA53D24(uint64_t a1, int a2)
{
  STACK[0x1598] = v5;
  v8 = -812407749 * (((&STACK[0x2350] + 4582) ^ *(v2 + v4)) & 0x7FFFFFFF);
  v9 = -812407749 * (v8 ^ HIWORD(v8));
  v10 = -812407749 * ((*(v2 + (((a2 - 89) ^ 0x8A6CA490) & v3)) ^ ((&STACK[0x2350] + 11392) | 9)) & 0x7FFFFFFF);
  v11 = -812407749 * (v10 ^ HIWORD(v10));
  LOBYTE(STACK[0x3536]) ^= LOBYTE(STACK[0x4FD9]) ^ *(v6 + (v9 >> 24)) ^ *(STACK[0x22E0] + (v9 >> 24)) ^ *((v9 >> 24) + v7 + ((a2 - 618) ^ 0x261u)) ^ *(STACK[0x1FF0] + (v11 >> 24)) ^ *((v11 >> 24) + STACK[0x1FE8] + 1) ^ *(STACK[0x1FE0] + (v11 >> 24)) ^ v9 ^ *(v6 + (v9 >> 24)) ^ (-109 * BYTE3(v9)) ^ *(STACK[0x22E0] + (v9 >> 24)) ^ v11 ^ *((v9 >> 24) + v7 + 2) ^ (121 * BYTE3(v11)) ^ v9 ^ (-109 * BYTE3(v9));
  return (*(STACK[0x22F8] + 8 * ((a2 - 89) ^ 0xB9)))();
}

uint64_t sub_26AA53E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, _BYTE *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, _BYTE *a62)
{
  *STACK[0x6A0] = 0;
  *(a30 + 3557) = 0u;
  *(a30 + 3573) = 0;
  *(a30 + 3581) = 0;
  *(a30 + 3585) = 0;
  *(a30 + 3587) = 0;
  v69 = -812407749 * ((a50 ^ *(v65 + (v66 & 0x5167F4C8))) & 0x7FFFFFFF);
  v70 = -812407749 * ((v69 >> ((v67 ^ 9) - 90)) ^ v69);
  *a62 = *a50 ^ *(v62 + (v70 >> 24)) ^ *(v63 + (v70 >> 24)) ^ *((v70 >> 24) + v64 + 4) ^ v70 ^ (-29 * BYTE3(v70)) ^ 0x79;
  return (*(v68 + 8 * v67))();
}

uint64_t sub_26AA53F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = (((a8 + v14) ^ *(v11 + v12)) & 0x7FFFFFFF) * v15;
  v19 = (v18 ^ HIWORD(v18)) * ((11 * (v13 ^ 0x357)) ^ (v15 + 1385));
  *(v16 + v14) = *(a8 + v14) ^ *(v8 + (v19 >> 24)) ^ *(v9 + (v19 >> 24)) ^ *((v19 >> 24) + v10 + 4) ^ v19 ^ (-29 * BYTE3(v19)) ^ 0x79;
  return (*(v17 + 8 * ((4739 * (v14 == 31)) ^ v13)))();
}

uint64_t sub_26AA54018()
{
  v5.n128_u64[0] = 0xF2F2F2F2F2F2F2F2;
  v5.n128_u64[1] = 0xF2F2F2F2F2F2F2F2;
  v6.n128_u64[0] = 0x7979797979797979;
  v6.n128_u64[1] = 0x7979797979797979;
  v7 = (((v3 + 16) ^ *(*STACK[0x22E8] + (*STACK[0x22D0] & 0x38F3A374))) & 0x7FFFFFFF) * v1;
  v8 = (v7 ^ HIWORD(v7)) * v1;
  v9 = v8 >> ((17 * (((v0 + 125) | 3) ^ 0x86)) ^ 0x31u);
  return (*(v4 + 8 * ((v0 - 1844) | (16 * (((*(STACK[0x22C8] + v9) ^ *(v3 + 16) ^ *(v2 + v9) ^ *(v9 + STACK[0x22F0] + 2) ^ v8 ^ (-109 * v9)) >> 7) & 1)))))(4294967205, 20, 317, 4294967265, 69, v5, v6);
}

uint64_t sub_26AA5416C(int8x16_t a1, int8x16_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *v8 = veorq_s8(vaddq_s8(vsubq_s8(*v8, vandq_s8(vaddq_s8(*v8, *v8), a1)), a2), *v9);
  HIDWORD(v12) = ~*(v11 - 1);
  LODWORD(v12) = *v11 << 24;
  *v11 = ((v12 >> 25) ^ 0x3C) - ((2 * ((v12 >> 25) ^ 0x3C)) & 0xF3) + 121;
  return (*(v10 + 8 * (a8 + 1587)))(a3);
}

uint64_t sub_26AA54254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, int a8)
{
  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = a4;
  }

  *v10 = v12 ^ (*v10 >> 1) ^ a5;
  return (*(v11 + 8 * (((v8 + a8 - 1844 == 1770) * (a8 - 2690)) ^ a8)))(a1, a2, a3, a4);
}

uint64_t sub_26AA542AC@<X0>(int a1@<W7>, int a2@<W8>)
{
  v4 = (a1 - 1353) | 0x80;
  v5.n128_u64[0] = 0xF2F2F2F2F2F2F2F2;
  v5.n128_u64[1] = 0xF2F2F2F2F2F2F2F2;
  v6.n128_u64[0] = 0x7979797979797979;
  v6.n128_u64[1] = 0x7979797979797979;
  v7 = (v2 + ((v4 + 988617503) & 0xC512DF7F) - 869);
  v8 = ((v7 ^ *(*STACK[0x22E8] + (*STACK[0x22D0] & 0x38F3A374))) & 0x7FFFFFFF) * a2;
  v9 = (v8 ^ HIWORD(v8)) * ((v4 - 2231) ^ LODWORD(STACK[0x22C0]));
  LODWORD(v7) = (*(STACK[0x22C8] + (v9 >> 24)) ^ *v7 ^ *(STACK[0x22E0] + (v9 >> 24)) ^ *((v9 >> 24) + STACK[0x22F0] + 2) ^ v9 ^ (-109 * BYTE3(v9)));
  return (*(v3 + 8 * ((((v7 >> 7) & 1) == 0) | (32 * (((v7 >> 7) & 1) == 0)) | v4)))(2261, 4294967265, 145, 1, 44, 33, 1880, 1069, v5, v6);
}

uint64_t sub_26AA54474(int8x16_t a1, int8x16_t a2)
{
  v6 = v3 ^ 0x7F8;
  *v4 = veorq_s8(vaddq_s8(vsubq_s8(*v4, vandq_s8(vaddq_s8(*v4, *v4), a1)), a2), *(v5 + 1));
  v7 = *(v5 + 16) >> 1;
  v8 = ((v6 ^ 0x1C) - 1) & v7;
  LOBYTE(v7) = (v7 & 0x7F | (~*(v2 - 1) << 7)) ^ 0x3C;
  *v2 = v7 - 2 * (v7 & 0xFB ^ v8) + 121;
  return (*(STACK[0x22F8] + 8 * (v6 + 707)))();
}

uint64_t sub_26AA54510(int a1, char a2, char a3, int a4, int a5)
{
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  *(STACK[0x630] + 1) = v9 ^ (*(STACK[0x630] + 1) >> 1) ^ (v7 - 47) ^ a3;
  return (*(v8 + 8 * (((a4 & ~(v7 ^ a1 ^ (v5 == 127))) * a5) ^ v7)))();
}

uint64_t sub_26AA54568()
{
  v2 = STACK[0x7F0] + ((v0 + 33) ^ 0x9E5);
  v3 = -812407749 * ((v2 ^ *(*STACK[0x22E8] + (*STACK[0x22D0] & 0x38F3A374))) & 0x7FFFFFFF);
  v4 = -812407749 * (v3 ^ HIWORD(v3));
  *v2 = *(STACK[0x22C8] + (v4 >> 24)) ^ *STACK[0x6A0] ^ *(STACK[0x22E0] + (v4 >> 24)) ^ *((v4 >> 24) + STACK[0x22F0] + 2) ^ v4 ^ (-109 * BYTE3(v4));
  return (*(v1 + 8 * v0))();
}

uint64_t sub_26AA54644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (v8 + 661) + v7 + v10 - 3194;
  v15 = ((v14 ^ *(v5 + v6)) & 0x7FFFFFFF) * v9;
  v16 = ((v15 ^ HIWORD(v15)) * v9) >> 24;
  *v14 ^= *(a5 + v16) ^ *(v11 + v16) ^ *(v16 + v12 + 2) ^ *(a5 + v16) ^ *(v11 + v16) ^ *(v16 + v12 + 2);
  return (*(v13 + 8 * ((6454 * (v7 == 15)) ^ v8)))();
}

uint64_t sub_26AA546C4@<X0>(unsigned int a1@<W5>, _BYTE *a2@<X6>, _BYTE *a3@<X7>, int a4@<W8>)
{
  *v4 = 0;
  v10 = STACK[0x1210];
  *(v10 + 3264) = 0u;
  *(v10 + 3280) = 0;
  *(v10 + 3288) = 0;
  *(v10 + 3292) = 0;
  *(v10 + 3294) = 0;
  v11 = ((*(*v7 + (*v5 & a1)) ^ a2) & 0x7FFFFFFF) * v6;
  v12 = (v11 ^ HIWORD(v11)) * v6;
  *a3 = *a2 ^ *(*(v9 + 8 * (a4 - 3016)) + (v12 >> 24)) ^ *(*(v9 + 8 * (a4 ^ 0xC8C)) - 8 + (v12 >> 24)) ^ *((v12 >> 24) + *(v9 + 8 * (a4 ^ 0xCA6)) - 4 + 2) ^ v12 ^ (BYTE3(v12) * (a4 ^ 0x49)) ^ 0x5A;
  return (*(v8 + 8 * a4))();
}

uint64_t sub_26AA547B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v17 = ((*(*v14 + (*v11 & a6)) ^ (a7 + v8)) & 0x7FFFFFFF) * v12;
  v18 = (v17 ^ HIWORD(v17)) * v12;
  *(a8 + v8) = *(a7 + v8) ^ *(v10 + (v18 >> 24)) ^ *(v13 + (v18 >> 24)) ^ *((v18 >> 24) + v15 + 2) ^ v18 ^ (BYTE3(v18) * ((2 * v9) ^ 0x2F)) ^ 0x5A;
  return (*(v16 + 8 * ((11 * (v8 != 31)) ^ v9)))(a1, a2, a3, a4, a5);
}

uint64_t sub_26AA54848()
{
  STACK[0x15B0] = v5;
  STACK[0x15B8] = v3;
  STACK[0x15C0] = v1;
  v6.n128_u64[0] = 0xB4B4B4B4B4B4B4B4;
  v6.n128_u64[1] = 0xB4B4B4B4B4B4B4B4;
  v7.n128_u64[0] = 0x5B5B5B5B5B5B5B5BLL;
  v7.n128_u64[1] = 0x5B5B5B5B5B5B5B5BLL;
  v8 = ((v2 + 16) ^ *(*v4 + (*STACK[0x22D0] & 0x38F3A374))) & 0x7FFFFFFF;
  v9 = -812407749 * (((-812407749 * v8) >> (((((((v0 ^ 0xFE) - 27) & 0xFE) + 15) | 0x1A) + 91) ^ 0x6A)) ^ (-812407749 * v8));
  return (*(STACK[0x22F8] + 8 * ((452 * ((((*(STACK[0x22C8] + (v9 >> 24)) ^ *(v2 + 16) ^ *(STACK[0x22E0] + (v9 >> 24)) ^ *((v9 >> 24) + STACK[0x22F0] + 2) ^ v9 ^ (-109 * BYTE3(v9))) >> 7) & 1) == 0)) ^ ((v0 ^ 0x1EFE) + 86811621) & 0xFAD356FE)))(45, 180, 2062, 2058, 379, 4294967265, 2349, 1136, v6, v7);
}

uint64_t sub_26AA54A18@<X0>(char a1@<W0>, char a2@<W1>, int a3@<W8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>)
{
  *v8 = veorq_s8(vaddq_s8(vaddq_s8(*v8, a5), vmvnq_s8(vandq_s8(vaddq_s8(*v8, *v8), a4))), *v7);
  HIDWORD(v9) = *(STACK[0x798] - 1);
  LODWORD(v9) = *STACK[0x798] << 24;
  *STACK[0x798] = ((v9 >> 25) ^ a1) - (a2 & (2 * ((v9 >> 25) ^ a1))) + 90;
  return (*(STACK[0x22F8] + 8 * ((28 * ((((v6 - 94) | 8) ^ a3) * v5 != 2074)) ^ (((v6 - 94) | 8) + 354))))();
}

uint64_t sub_26AA54ABC(uint64_t a1, uint64_t a2, int a3, char a4, int a5, char a6)
{
  if ((v8 & 1) == 0)
  {
    a6 = 0;
  }

  *STACK[0x7A8] = a6 ^ (*STACK[0x7A8] >> (20 * (v7 ^ a4) - 119)) ^ 0x77;
  return (*(v9 + 8 * ((30 * (v6 + (v7 ^ a3) * a5 != 885)) ^ v7)))(a1, a2);
}

uint64_t sub_26AA54B2C()
{
  v2.n128_u64[0] = 0xB4B4B4B4B4B4B4B4;
  v2.n128_u64[1] = 0xB4B4B4B4B4B4B4B4;
  v3.n128_u64[0] = 0x5A5A5A5A5A5A5A5ALL;
  v3.n128_u64[1] = 0x5A5A5A5A5A5A5A5ALL;
  v4 = ((STACK[0x7F0] + 16) ^ *(*STACK[0x22E8] + (*STACK[0x22D0] & 0x38F3A374))) & 0x7FFFFFFF;
  v5 = -812407749 * ((-812407749 * v4) ^ ((-812407749 * v4) >> 16));
  return (*(v1 + 8 * ((19 * (((*(STACK[0x22C8] + (v5 >> 24)) ^ *(STACK[0x7F0] + 16) ^ *(STACK[0x22E0] + (v5 >> 24)) ^ *((v5 >> 24) + STACK[0x22F0] + 2) ^ v5 ^ (-109 * BYTE3(v5))) >> 7) & 1)) | (2 * (v0 ^ 0x67C)))))(180, 11, 85, 89, 1600, 4294967265, (2 * (v0 ^ 0x67C) + 1169) ^ 0x1086u, v2, v3);
}

uint64_t sub_26AA54D2C(char a1, int a2, int a3, int8x16_t a4, int8x16_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v12 = a9 - 2876;
  *v10 = veorq_s8(vaddq_s8(vsubq_s8(*v10, vandq_s8(vaddq_s8(*v10, *v10), a4)), a5), *(STACK[0x798] + 1));
  HIDWORD(v13) = *(v9 - 1);
  LODWORD(v13) = *(STACK[0x798] + 16) << 24;
  v14 = (6 * (v12 ^ a2)) ^ (v13 >> 25) ^ a3;
  *v9 = v14 - (a1 & (2 * v14)) + 90;
  return (*(v11 + 8 * (v12 + 2187)))();
}

uint64_t sub_26AA54DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = -812407749 * (((&STACK[0x2350] + 4582) ^ *(*STACK[0x22E8] + (*STACK[0x22D0] & 0x38F3A374))) & 0x7FFFFFFF);
  v10 = -812407749 * (v9 ^ HIWORD(v9));
  LOBYTE(STACK[0x3536]) = *(STACK[0x22C8] + (v10 >> 24)) ^ *v7 ^ *(STACK[0x22E0] + (v10 >> 24)) ^ *((v10 >> 24) + STACK[0x22F0] + 2) ^ v10 ^ (BYTE3(v10) * ((a7 + 127) & 0x3F ^ 0x8C));
  return (*(v8 + 8 * a7))();
}

uint64_t sub_26AA54EB0@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x1D10]) = 1560404280;
  STACK[0x2340] = STACK[0x2300];
  v6 = *(*STACK[0x22E8] + (*STACK[0x22D0] & 0x38F3A374));
  v7 = ((((v6 ^ v3) & 0x7FFFFFFF) * v1) ^ ((((v6 ^ v3) & 0x7FFFFFFF) * v1) >> 16)) * v1;
  v8 = ((((v6 ^ (v3 + 16)) & 0x7FFFFFFF) * v1) ^ ((((v6 ^ (v3 + 16)) & 0x7FFFFFFFu) * v1) >> 16)) * v1;
  *v4 = *v3 ^ v3[16] ^ *(STACK[0x22C8] + (v7 >> 24)) ^ *(v2 + (v7 >> 24)) ^ *(STACK[0x22F0] + (a1 - 29) + (v7 >> 24)) ^ *(STACK[0x22C8] + (v8 >> 24)) ^ *(v2 + (v8 >> 24)) ^ *((v8 >> 24) + STACK[0x22F0] + 2) ^ v7 ^ v8 ^ (-109 * BYTE3(v7)) ^ (-109 * BYTE3(v8)) ^ 5;
  return (*(v5 + 8 * ((a1 + 1146) ^ 0x7D)))(5);
}

uint64_t sub_26AA55000(int a1, char a2, __int16 a3, uint64_t a4, __int16 a5, int a6, char a7)
{
  v19 = *(v13 + v8 + 2) + 111;
  v20 = (v19 ^ 0x74) + ((-16 - a5) & 0x89) + ((a5 + 15) & 0x89);
  v21 = *(v12 + ((((v9 + 55) | 0x51) + 11) ^ v19)) ^ v19 ^ 0x74 ^ (v20 - (a7 & (2 * v20)) + 5) ^ 0x37;
  v22 = ((v21 >> 2) | (v21 << 6)) ^ v11 ^ 3;
  *(v18 + (a5 + 1295 - ((((a5 + 1295) * a1) >> 16) >> 6) * a3)) = (v11 ^ 3) - (a7 & (2 * (v11 ^ 3))) + 5;
  *(v18 + ((v8 + 2) * v10 - (((((v8 + 2) * v10) * a1) >> 16) >> 6) * a3)) = v22 ^ a2;
  v23 = *(v13 + v8 + 3);
  v24 = (v23 + v16 - 2 * (v23 & 3)) ^ v16 ^ v22;
  *(v18 + (a5 + 1332 - ((((a5 + 1332) * a1) >> 16) >> 6) * a3)) = (v24 + v16 - (v14 & (2 * v24))) ^ 6 ^ v23;
  *(v18 + ((v8 + 3) * v10 - (((((v8 + 3) * v10) * a1) >> 16) >> 6) * a3)) = (v24 + v16 - (v14 & (2 * v24))) ^ 6;
  return (*(v17 + 8 * ((v9 - 307) ^ ((v7 == v15 + 28) * a6))))();
}

uint64_t sub_26AA55168()
{
  v6 = v2 + 4;
  v7 = STACK[0x1B80];
  v8 = *(STACK[0x1B80] + v6);
  v9 = (v8 + 3 - 2 * (v8 & 3)) ^ v0;
  LOWORD(v6) = (((v3 + 16160) & 0xC4DF) - 1200) * v6;
  v10 = v9 + 3 - ((2 * v9) & 6);
  *(v5 + (v6 + ((v3 + 16842) & 0xBD7F ^ 0x4F5)) % 0x46u) = v10 ^ 6 ^ v8;
  *(v5 + v6 % 0x46u) = v10 ^ 6;
  v11 = (v1 + 5) & 0x1F;
  v12 = *(v7 + v11);
  v13 = v10 ^ (v12 + 3 + (~(2 * v12) | 0xF9) + 1);
  v14 = v13 + 3 - ((2 * v13) & 6);
  *(v5 + (37 * v11 + 1258 - 70 * (((3745 * (37 * v11 + 1258)) >> 16) >> 2))) = (v12 - ((2 * v12) & 0xA) + 5) ^ v14 ^ 3;
  *(v5 + (37 * v11 - 70 * (((69301 * v11) >> 16) >> 1))) = v14 ^ 6;
  return (*(v4 + 8 * (v3 ^ (45 * (v11 == 31)))))();
}

uint64_t sub_26AA552D4(__int16 a1, uint64_t a2, int a3, __int16 a4, __int16 a5)
{
  v10 = v6 + 1;
  v11 = *(STACK[0x1B80] + v10);
  v12 = ((v11 + 1133471491 - 2 * (v11 & 3)) ^ v5) + 1133471491 - ((((v11 + 1133471491 - 2 * (v11 & 3)) ^ v5) << ((v7 - 52) ^ 0xA0)) & 0x871ECE06);
  *(v9 + (a5 + (v7 ^ 0x4CA) + 1264 - ((((a5 + (v7 ^ 0x4CA) + 1264) * a3) >> 16) >> 6) * a1)) = v12 ^ v11 ^ 6;
  *(v9 + (v10 * a4 - (((138565 * v10) >> 16) >> 2) * a1)) = v12 ^ 6;
  return (*(v8 + 8 * (v7 ^ (662 * (v6 < 0x1E)))))();
}

uint64_t sub_26AA553A0(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v10 = *(STACK[0x1B80] + v7 + 2);
  v11 = (v10 + ((a2 + 87) ^ 0xFB) - 2 * (v10 & 3)) ^ v4;
  v12 = (v7 + 2) * a4;
  *(v9 + (37 * (v7 + 2) - 70 * ((v12 + 4711210) >> 18) + 1258)) = (v11 + 3 - (v5 & (2 * v11))) ^ v10 ^ 6;
  *(v9 + (37 * (v7 + 2) - 70 * (v12 >> 18))) = (v11 + 3 - (v5 & (2 * v11))) ^ 6;
  return (*(v8 + 8 * (a2 ^ (13 * (v6 == 29)))))();
}

uint64_t sub_26AA55464(__int16 a1, uint64_t a2, int a3, uint64_t a4, char a5, __int16 a6, char a7)
{
  v11 = *(STACK[0x1B80] + v8 + 3) ^ a5;
  v12 = (v8 + 3) * a1;
  *(v10 + (((((a3 + 19919) & 0xBD79) - 3106) ^ 0x4F5) + v12 - (((((a3 + 19919) & 0xBD79) - 3106) ^ 0x4F5) + v12) / 0x46u * a6)) = (a5 ^ 3) + ~(2 * ((a5 ^ 3) & a7 ^ a5 & 8)) + 6;
  *(v10 + (v12 - (((138565 * (v8 + 3)) >> 16) >> 2) * a6)) = v11 ^ 6;
  return (*(v9 + 8 * (a3 ^ (472 * (v7 < 0x1C)))))();
}

uint64_t sub_26AA5551C(int a1, int a2, uint64_t a3, int a4)
{
  v10 = *(STACK[0x1B80] + ((a2 - 1968541346) & 0x7555827F ^ 0x1Bu) + v7);
  v11 = (v10 + 3 - 2 * (v10 & 3)) ^ v4;
  v12 = v11 + 3 - (v5 & (2 * v11));
  *(v9 + (a1 + 1295 - 70 * (((3745 * (a1 + 1295)) >> 16) >> 2))) = v12 ^ 6 ^ v10;
  v13 = 37 * (((a2 + 29022) & 0x827F ^ 0x1B) + v7);
  *(v9 + (v13 - 70 * (((v13 * a4) >> 16) >> 6))) = v12 ^ 6;
  return (*(v8 + 8 * (a2 ^ (28 * (v6 == 27)))))();
}

uint64_t sub_26AA555DC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, unsigned int a7, int a8)
{
  v13 = *(STACK[0x1B80] + v10 + 5);
  *(v12 + (((v13 & a7 ^ a7) + (v13 & a7)) * (v9 + 39) - (((((v13 & a7 ^ a7) + (v13 & a7)) * (v9 + 39) * a8) >> 16) >> 2) * a5)) = (v8 ^ 3) - ((((a2 - 64) | 0x3E) ^ ((a2 - 37) | 3) ^ 0x2A) & (2 * (v8 ^ 3))) + 5;
  *(v12 + ((v10 + 5) * a7 - (((138565 * (v10 + 5)) >> 16) >> 2) * a5)) = v13 ^ v8 ^ 6;
  return (*(v11 + 8 * ((a2 - 168) ^ (7 * (v9 > 0x19)))))(a1);
}

uint64_t sub_26AA5569C(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v11 = *(STACK[0x1B80] + v8 + 6);
  v12 = (v11 + 1133471491 + (a3 ^ 0x1120) - ((v11 << ((a3 ^ 0xEA) + 44)) & 6) - 31) ^ a6;
  LOBYTE(v12) = v12 + 3 - ((2 * v12) & 6);
  *(v10 + (37 * a2 + 1295 - 70 * (((3745 * (37 * a2 + 1295)) >> 16) >> 2))) = v12 ^ 6 ^ v11;
  *(v10 + (37 * (v8 + 6) - 70 * ((((v8 + 6) * a7) >> 16) >> 2))) = v12 ^ 6;
  return (*(v9 + 8 * (a3 ^ (95 * (v7 == 25)))))(a1);
}

uint64_t sub_26AA55768(int a1, uint64_t a2, uint64_t a3, int a4, __int16 a5, __int16 a6, uint64_t a7, char a8)
{
  v12 = *(STACK[0x1B80] + v9 + 7) ^ a8;
  *(v11 + (a1 + 1406) % ((a4 - 1206) ^ 0x59u)) = (a8 ^ 3) - ((2 * (a8 ^ 3)) & 0xA) + 5;
  *(v11 + ((v9 + 7) * a5 - (((138565 * (v9 + 7)) >> 16) >> 2) * a6)) = v12 ^ 6;
  return (*(v10 + 8 * (a4 ^ (477 * (v8 != 24)))))();
}

uint64_t sub_26AA557F0(int a1, int a2)
{
  v8 = *(STACK[0x1B80] + v5 + 8);
  v9 = v2 ^ 0x3C;
  *(v7 + (a2 + 1369 - 70 * (((3745 * (a2 + 1369)) >> 16) >> 2))) = (((v3 ^ 0x64) - 60) ^ v9) - (((((v3 ^ 0x64) - 122) | 0x4A) ^ 0x41) & (2 * (((v3 ^ 0x64) - 60) ^ v9))) + 5;
  *(v7 + (37 * (v5 + 8) - 70 * ((((v5 + 8) * a1) >> 16) >> 2))) = v8 ^ v9 ^ 0x3A;
  return (*(v6 + 8 * (v3 ^ 0x164 ^ (1452 * (v4 < 0x17)))))();
}

uint64_t sub_26AA558A4(uint64_t a1, __int16 a2, int a3, char a4, int a5, int a6, char a7)
{
  v12 = v9 + 9;
  v13 = ((v12 | (49 - v7)) & a6) * (v8 + 43);
  v14 = v13 - (((v13 * a5) >> 16) >> 2) * a2;
  LOBYTE(v13) = *(STACK[0x1B80] + v12) ^ a4;
  *(v11 + v14) = (a7 ^ 0x3F) - ((a3 ^ 0x3A ^ ((a3 - 74) | 0x7A)) & (2 * (a7 ^ 0x3F))) + 5;
  *(v11 + (v12 * a6 - (((138565 * v12) >> 16) >> 2) * a2)) = v13 ^ 6;
  return (*(v10 + 8 * (a3 ^ ((4 * (v8 == 22)) | (16 * (v8 == 22))))))();
}

uint64_t sub_26AA55954(int a1)
{
  v7 = a1 + 3026 + v3 + ((a1 - 348) ^ 0xFFFFF2A2);
  v8 = *(STACK[0x1B80] + v7);
  v9 = (v8 + 3 - 2 * (v8 & 3)) ^ v1;
  v10 = v9 + 3 - ((2 * v9) & 6);
  v11 = v3 + 1775809920 - 2 * ((v4 ^ v2) & 7) + 11;
  *(v6 + (37 * v7 + 1258) % 0x46u) = v10 ^ 6 ^ v8;
  *(v6 + (37 * v7) % 0x46u) = v10 ^ 6;
  v12 = (v11 & 0xBF ^ 0x941CB5C0) + (v11 & 0xBF ^ 0xFFFFFF7F);
  if ((v11 ^ 0x69D8B580u) < 0x20)
  {
    ++v12;
  }

  return (*(v5 + 8 * (a1 ^ (226 * (v12 != -1810057921)))))();
}

uint64_t sub_26AA55A60()
{
  v5 = v1 ^ 0x69D8B580u;
  v6 = STACK[0x1B80];
  v7 = (((v2 - 3378) | 4) + *(STACK[0x1B80] + v5) - 70) ^ 5;
  v8 = *(&off_279CA5FD0 + v2 - 3184);
  STACK[0x21B8] = v8 + 2645;
  LOBYTE(v7) = *(v8 + 2645 + ((v7 + 1927427915 - ((2 * v7) & 0x96)) ^ 0x72E23750u));
  v9 = ((v7 ^ 0x43) + 3 - 2 * ((v7 ^ 0x43) & 3)) ^ v0;
  v10 = v9 + 3 - ((2 * v9) & 6);
  *(v4 + (37 * (v1 ^ 0xB580) + 1258) % 0x46u) = v7 ^ 0x45 ^ v10;
  *(v4 + (37 * (v1 ^ 0xB580)) % 0x46u) = v10 ^ 6;
  v11 = ((*(v6 + v5 + 1) >> 2) | (*(v6 + v5 + 1) << 6)) ^ 0x4DLL;
  STACK[0x2180] = v8 + 533;
  v12 = (*(v8 + 533 + v11) ^ (2 * (*(v8 + 533 + v11) ^ 0xA7) * (*(v8 + 533 + v11) ^ 0xA7)) ^ 0xA2) + 13;
  *(v4 + (37 * ((v1 ^ 0xB580) + 1) + 1258) % 0x46u) = (v10 ^ 3) - ((2 * (v10 ^ 3)) & 0xA) + 5;
  *(v4 + (37 * ((v1 ^ 0xB580) + 1)) % 0x46u) = v10 ^ v12 ^ 6;
  v13 = *(v3 + 8 * ((51 * (v1 == 1775809950)) ^ v2));
  STACK[0x2030] = v8;
  STACK[0x2298] = v8 + 805;
  return v13();
}

uint64_t sub_26AA55C30@<X0>(int a1@<W3>, int a2@<W8>)
{
  LODWORD(STACK[0x1D10]) = a1;
  LODWORD(STACK[0x2098]) = v4;
  LODWORD(STACK[0x2028]) = v5;
  LODWORD(STACK[0x20B0]) = v3;
  STACK[0x1CB8] = 0;
  v7 = (v2 + 386) | 0x10;
  LODWORD(STACK[0x20D8]) = (v7 + 43) ^ a2;
  v8 = STACK[0x2030];
  STACK[0x20B8] = STACK[0x2030] + 6338;
  STACK[0x2260] = v8 + 6071;
  STACK[0x2290] = v8 + 5808;
  STACK[0x1B30] = v8 + 7133;
  STACK[0x1B28] = v8 + 5021;
  STACK[0x1B20] = v8 + 6608;
  STACK[0x1B18] = v8 + 4225;
  STACK[0x1B10] = v8 + 5283;
  STACK[0x1918] = 0xE777716A132CEA75;
  STACK[0x1928] = 0x41D5A2A3FEA7E4CELL;
  STACK[0x1FA0] = 0x45E2C97E1569AFB5;
  LODWORD(STACK[0x2088]) = -1802460139;
  LODWORD(STACK[0x1D50]) = -1327582422;
  LODWORD(STACK[0x20A8]) = 1627481521;
  LODWORD(STACK[0x1D58]) = 1359354155;
  LODWORD(STACK[0x1D08]) = -1091451016;
  STACK[0x1910] = 0xFAE5819C8BCB2534;
  LODWORD(STACK[0x1D30]) = -776178602;
  LODWORD(STACK[0x2248]) = -1919882977;
  LODWORD(STACK[0x2070]) = 654382457;
  LODWORD(STACK[0x2008]) = -377628368;
  LODWORD(STACK[0x2018]) = -166083282;
  LODWORD(STACK[0x1FF8]) = 1895055706;
  LODWORD(STACK[0x20A0]) = 215594630;
  LODWORD(STACK[0x2050]) = 55308112;
  LODWORD(STACK[0x2080]) = 1651757624;
  LODWORD(STACK[0x2010]) = -1912122710;
  LODWORD(STACK[0x1DC0]) = -1449816779;
  LODWORD(STACK[0x2040]) = 251340788;
  LODWORD(STACK[0x2230]) = -118823653;
  LODWORD(STACK[0x1FE0]) = -1432574626;
  LODWORD(STACK[0x2090]) = 1062999451;
  LODWORD(STACK[0x2000]) = -979344949;
  LODWORD(STACK[0x2020]) = -33325075;
  LODWORD(STACK[0x1D40]) = -53742381;
  LODWORD(STACK[0x2210]) = 340586346;
  LODWORD(STACK[0x2048]) = 2116122598;
  LODWORD(STACK[0x19D4]) = -1547310221;
  LODWORD(STACK[0x2078]) = -27681234;
  LODWORD(STACK[0x2168]) = 347264911;
  LODWORD(STACK[0x20F0]) = -183474123;
  LODWORD(STACK[0x1B08]) = -831373717;
  LODWORD(STACK[0x20C0]) = 1520217655;
  LODWORD(STACK[0x2158]) = 1095931289;
  LODWORD(STACK[0x1D48]) = 1853568700;
  LODWORD(STACK[0x2268]) = -1694532837;
  LODWORD(STACK[0x1D28]) = 404722741;
  STACK[0x1608] = 51;
  LODWORD(STACK[0x1920]) = 964085263;
  STACK[0x18F8] = 53;
  STACK[0x1618] = 170;
  STACK[0x2138] = 26;
  LODWORD(STACK[0x1590]) = 296268108;
  LODWORD(STACK[0x1D38]) = 296268108;
  LODWORD(STACK[0x20E0]) = 232;
  STACK[0x1900] = 251;
  LODWORD(STACK[0x20D0]) = 34;
  STACK[0x1600] = 100;
  STACK[0x1EE0] = 250;
  STACK[0x1620] = 247;
  STACK[0x1FF0] = 8;
  LODWORD(STACK[0x2190]) = 70;
  LODWORD(STACK[0x22C0]) = 5;
  LODWORD(STACK[0x22A8]) = 5;
  STACK[0x1628] = 12;
  STACK[0x20C8] = 242;
  STACK[0x15F8] = 25;
  STACK[0x1610] = 39;
  STACK[0x1EC0] = 255;
  v9 = *(v6 + 8 * (((v7 ^ 0x9D8) + 2038) ^ v7));
  STACK[0x1B58] = v8 + 805;
  LODWORD(STACK[0x15D8]) = 1258;
  return v9();
}

uint64_t sub_26AA55FD8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v53 = ~v49 + a3;
  v54 = *(a48 + 37 * v53 % 0x46u);
  *(a48 + (LODWORD(STACK[0x15D8]) + 37 * (((v54 ^ v53 ^ 5) + v51 - ((2 * (v54 ^ v53 ^ 5)) & 0x871ECE06)) ^ v48)) % 0x46) = *(a48 + (37 * v53 + 1258) % ((v50 + 1720) ^ 0x82Fu)) ^ v54 ^ 5;
  return (*(v52 + 8 * (v50 ^ (3950 * (v49 + 1 < a3)))))();
}

uint64_t sub_26AA5609C@<X0>(unsigned int a1@<W2>, unsigned int a2@<W4>, int a3@<W5>, unsigned __int8 a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v54 = (a4 + v50 - ((a4 << (v51 ^ 0x68)) & 6)) ^ v44;
  v55 = ~v47 + a1;
  v56 = ((((32766 - v46) ^ v47) & 0x7220) - (v55 & (v47 - (v45 ^ 0x5F11))) - ((v55 ^ (v47 - (v45 ^ 0x5F11))) & 0x71FB)) * (v55 + 34);
  LOBYTE(v56) = *(a44 + v56 - ((((v56 >> 1) * a2) >> 32) >> 5) * a3);
  v57 = *(a44 + 37 * v55 - (((((37 * v55) >> 1) * a2) >> 32) >> 5) * a3);
  v58 = *(STACK[0x20B8] + (((v57 ^ 5) - 39) ^ 0xADLL));
  STACK[0x1EC0] = v57;
  v59 = LODWORD(STACK[0x15D8]) + 37 * (v55 - (v57 ^ 5) + ((((v58 ^ 5) - 44) ^ (((v58 ^ 5) - 44) >> 2) ^ (((v58 ^ 5) - 44) >> 1)) ^ 0xC9));
  *(a44 + v59 - ((((v59 >> 1) * a2) >> 32) >> 5) * a3) = v54 - (v57 ^ 5) + (v57 ^ v56) - (v52 & (2 * (v54 - (v57 ^ 5) + (v57 ^ v56)))) + 5;
  v61 = v46 + 2 <= a1 && ((v46 + 2) ^ v45) != v49;
  return (*(v53 + 8 * (v48 ^ (975 * v61))))();
}

uint64_t sub_26AA561EC@<X0>(int a1@<W0>, unsigned int a2@<W2>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  v49 = v43 ^ a3;
  v50 = ~a1 + a2;
  v51 = *(a43 + (37 * v50 + 1258) % (((37 * v50 + 1258) ^ (21 - 37 * v50)) & 0x46u));
  v52 = *(a43 + ((v45 - 1614164676) & 0x6036397B ^ 0x84Cu) * v50 % 0x46);
  STACK[0x2138] = v51;
  LOBYTE(v51) = *(v48 + (((v52 ^ v51) - 39) ^ 0x1ELL)) ^ 0x46;
  LODWORD(STACK[0x22B0]) = v52;
  *(a43 + (LODWORD(STACK[0x15D8]) + 37 * ((308228211 * v49) ^ v50 ^ (308228211 * (v52 ^ v46)))) % 0x46) = v51;
  return (*(v47 + 8 * (v45 ^ (1675 * (a2 > v44 + 3)))))();
}

uint64_t sub_26AA562E8@<X0>(unsigned int a1@<W2>, char a2@<W3>, char a3@<W5>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v47 = ~a4 + a1 - 1294800344 - ((2 * (~a4 + a1)) & 0x65A5D450);
  v48 = STACK[0x22B0] & 6;
  v49 = 37 * (v47 ^ 0xB2D2EA28);
  v50 = *(a44 + (v49 + 1258) % 0x46);
  v51 = *(a44 + v49 % 0x46);
  LODWORD(STACK[0x2190]) = v51;
  v52 = *(STACK[0x2180] + ((((v51 ^ 5) << ((((v45 - 52) & 0xEB) - 101) ^ v48 | v48 ^ 2)) ^ (v51 >> 2)) ^ 0x4Cu)) ^ 0xA7;
  v53 = v52 ^ (2 * v52 * v52 - ((4 * v52 * v52) & 8) + 5);
  STACK[0x2138] = v50;
  LOBYTE(v49) = a3 ^ a2;
  v54 = ((v50 ^ 5 ^ (v53 + 13)) - ((2 * (v50 ^ 5 ^ (v53 + 13))) & 0xA) + 5) ^ 5;
  *(a44 + (LODWORD(STACK[0x15D8]) + 37 * ((133051485 * (v51 ^ 5) - 1294800344 - ((266102970 * (v51 ^ 5)) & 0x65A5D450)) ^ v47 ^ (133051485 * (v53 + 13)))) % 0x46) = (v49 ^ 0x43) - (v53 + 13) + v54 - ((2 * ((v49 ^ 0x43) - (v53 + 13) + v54)) & 0xA) + 5;
  v55 = *(v46 + 8 * (v45 ^ (1113 * (a1 > v44 + 4))));
  LODWORD(STACK[0x20F0]) = 477323025;
  return v55();
}

uint64_t sub_26AA564BC(int a1, uint64_t a2, unsigned int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v54 = ~a4 + a3;
  v55 = ((v49 - 1968870850) & 0x755A9C79 ^ 0x84C) * v54;
  v56 = *(a48 + (v55 + 1258) % 0x46);
  v57 = (a5 + 1133471491 - ((2 * a5) & 0x871ECE06)) ^ a1;
  HIDWORD(v58) = v56 ^ 1;
  LODWORD(v58) = (v56 ^ 4) << 24;
  v59 = *(a48 + v55 % 0x46);
  v60 = ((*(STACK[0x20B8] + (((v59 ^ 5) - 39) ^ 0xADLL)) ^ 5) - 44);
  v61 = ((*(STACK[0x20B8] + (((v59 ^ 5) - 39) ^ 0xADLL)) ^ 5) - 44) ^ (v60 >> 2) ^ (v60 >> 1);
  v62 = *(v53 + (((*(STACK[0x2030] + ((v58 >> 26) ^ 0xA7) + 10) ^ 0x4B) + ((v58 >> 26) & 0xD9 ^ 0x59) + ((v58 >> 26) & 0xD9) - 115) ^ 0x1ELL));
  v63 = STACK[0x15D8];
  STACK[0x1EE0] = v59;
  *(a48 + (v63 + (v54 - 868230991 * (v57 ^ 0x438F6740) + 868230991 * (v61 ^ 0xC9)) * v52) % 0x46) = v62 ^ v59 ^ 0x43;
  v64 = *(v51 + 8 * (v49 ^ (1355 * (a3 > v48 + 5))));
  LODWORD(STACK[0x20F0]) = v50 - 1;
  return v64();
}

uint64_t sub_26AA5665C@<X0>(int a1@<W0>, int a2@<W2>, unsigned __int8 a3@<W4>, int a4@<W5>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  LODWORD(STACK[0x22A0]) = v47 ^ 0xFFFFFFCC;
  LODWORD(STACK[0x2288]) = a5 + 44;
  v52 = (v48 + 625) ^ 0x593;
  LODWORD(STACK[0x2208]) = a4 ^ a3 ^ v52 ^ 0x1B4;
  LODWORD(STACK[0x1B38]) = a1 ^ 0xFFFFFFBA;
  v53 = v51;
  v54 = ~v45 + a2 - 1294800344 - ((2 * (~v45 + a2)) & 0x65A5D450);
  STACK[0x1DE8] = LODWORD(STACK[0x22B0]);
  STACK[0x1FD8] = v46;
  v55 = STACK[0x2260];
  v56 = STACK[0x2290];
  v57 = *(a45 + ((v54 ^ 0xB2D2EA28) + 34) * v49 % 0x46);
  v58 = *(a45 + (v54 ^ 0xB2D2EA28) * v49 % 0x46);
  LODWORD(STACK[0x20D0]) = v58;
  v59 = *(v56 + (((v58 ^ (v52 + 84)) + 111) ^ 0xF8)) ^ 5;
  v60 = (-111 * v59) ^ (68 * v59 * -111 * v59) ^ 0x3B;
  v61 = ((v60 >> 2) | (v60 << 6)) + (~(v60 >> 1) | 0xFFFFFFC1) - 96;
  v62 = v61 ^ 0x9F;
  LODWORD(STACK[0x20D8]) = v61;
  v63 = *(v55 + ((-55 * (v57 ^ 0x9A ^ v61)) ^ 0xF2));
  HIDWORD(v65) = v63 ^ 1;
  LODWORD(v65) = (v63 ^ 4) << 24;
  v64 = v65 >> 26;
  v66 = (v64 ^ ((v64 & 0xFC) >> 2)) >> ((v54 & 3 ^ 3) + (v54 & 3u));
  v67 = (v63 & 0x13 ^ 1 | v63 & 0x13 ^ 0x12) ^ v64;
  v68 = STACK[0x2208];
  STACK[0x2138] = (v67 ^ v66) - ((2 * (v67 ^ v66) + 12) & 0xA) - 53;
  LOBYTE(v66) = ((v67 ^ v66) - ((2 * (v67 ^ v66) + 12) & 0xA) - 53) ^ 5;
  *(a45 + (LODWORD(STACK[0x15D8]) + ((v54 ^ 0xB2D2EA28) - 1255821383 * (v58 ^ (v52 + 84)) + 1255821383 * v62) * v49) % 0x46) = v62 - (v68 ^ 3) + v66 - ((2 * (v62 - (v68 ^ 3) + v66)) & 0xA) + 5;
  LODWORD(STACK[0x22B8]) = v50;
  return (*(v53 + 8 * ((2442 * ((v50 ^ 0x1C735F11u) > v45 + 1)) ^ v52)))();
}

uint64_t sub_26AA568EC@<X0>(int a1@<W0>, int a2@<W6>, int a3@<W7>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v49 = ~a4 + v45;
  v50 = *(a44 + (37 * v49 + 1258) % 0x46);
  HIDWORD(v51) = v50 ^ 1;
  LODWORD(v51) = (v50 ^ 4) << 24;
  v52 = *(STACK[0x2180] + ((v51 >> 26) ^ 0x4DLL));
  v53 = *(a44 + 37 * v49 % 0x46);
  v54 = v52 ^ (2 * (v52 ^ 0xFFFFFFA7) * (v52 ^ 0xFFFFFFA7));
  LOBYTE(v52) = *(STACK[0x2290] + (((v53 ^ 5) + 111) ^ 0xF8)) ^ 5;
  LOBYTE(v52) = (-111 * v52) ^ (68 * v52 * -111 * v52) ^ 0x3B;
  v55 = v49 + 1874741495 * ((a1 + v46 - ((v47 - 2028026467) & (2 * a1))) ^ a3) - 1874741495 * ((v52 >> 2) | (v52 << 6));
  v56 = STACK[0x22B8] & 0x25;
  STACK[0x20C8] = v53;
  v57 = ((v54 ^ 0xFFFFFFA2) + 13) ^ v53;
  STACK[0x2138] = v57;
  *(a44 + (v55 + 34) * (v56 ^ 0x24 | v56 ^ 1u) % 0x46) = v57;
  return (*(v48 + 8 * (a2 ^ (4291 * (v45 > v44 + 2)))))();
}

uint64_t sub_26AA56A60(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v53 = (v49 - v48) * a4;
  v54 = *(a48 + (v53 - 111) % (a7 - 363));
  v55 = STACK[0x2138] ^ 5 ^ v50;
  v56 = v53 + 1147 - 70 * (((((v53 + 1147) >> 1) * v51) >> 32) >> 5);
  v57 = ((*(a48 + v56) ^ 5) + 111) ^ 0x74;
  v58 = *(STACK[0x2298] + (((*(a48 + v56) ^ 5) + 111) ^ 0xE0)) ^ v57 ^ (v57 - ((2 * v57 + 2) & 0xA) - 114) ^ 0x37;
  v59 = ((v58 >> 2) | (v58 << 6)) ^ v54;
  STACK[0x1900] = v59;
  *(a48 + v56) = (v54 ^ 5) - v55 + (v59 ^ 5) - ((2 * ((v54 ^ 5) - v55 + (v59 ^ 5))) & 0xA) + 5;
  return (*(v52 + 8 * (a7 ^ (3296 * (v49 > v48 + 3)))))();
}

uint64_t sub_26AA56B50(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v53 = v48 ^ a1;
  v54 = ~a5 + v50;
  v55 = *(v52 + ((((a7 - 54) & 0xED ^ 0xB0) + (*(a48 + (37 * v54 + 1258) % 0x46) ^ 5)) ^ 0x1ELL));
  v56 = *(a48 + ((v54 & 0x25 ^ 0x25) + (v54 & 0x25)) * v54 % 0x46);
  v57 = *(a48 + 37 * v54 % 0x46);
  STACK[0x2278] = v56;
  v58 = *(v52 + (((v57 ^ 5) - 39) ^ 0x1ELL));
  STACK[0x1900] = v58 ^ 0x46;
  v58 ^= 0x43uLL;
  STACK[0x2280] = v58;
  *(a48 + (LODWORD(STACK[0x15D8]) + 37 * ((-717816607 * v53) ^ v54 ^ (-717816607 * v58))) % 0x46) = ((v55 ^ 0x40) - ((2 * v55) & 0xA) + 5) ^ v56 ^ 6;
  return (*(v51 + 8 * (a7 ^ (2587 * (v50 > v49 + 4)))))();
}

uint64_t sub_26AA56CA8@<X0>(char a1@<W0>, int a2@<W6>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  v50 = a3 * v45;
  v51 = v50 + 1147 - (v50 + 1147) / 0x46u * v43;
  v52 = *(a43 + v50 - 111 - (v50 - 111) / 0x46u * v43);
  v53 = ((*(STACK[0x20B8] + (((v52 ^ *(a43 + v51)) - 39) ^ (a2 - 4))) ^ v46) - 44);
  v54 = ((*(STACK[0x20B8] + (((v52 ^ *(a43 + v51)) - 39) ^ (a2 - 4))) ^ v46) - 44) ^ v52 ^ (v53 >> 2) ^ (v53 >> 1);
  *(a43 + v51) = (v48 ^ a1 ^ v54 ^ 0xCF) + (~(2 * (v48 ^ a1 ^ v54 ^ 0xCF)) | 0xF5) + 6;
  v55 = *(v49 + 8 * (a2 ^ (2076 * (v44 + 5 < v47))));
  LODWORD(STACK[0x20E0]) = v52;
  STACK[0x18F8] = v52;
  return v55();
}

uint64_t sub_26AA56D6C@<X0>(char a1@<W4>, int a2@<W6>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  v46 = a1 ^ 0xCC;
  v47 = ~a3 + v44;
  v48 = *(a43 + (37 * v47 + 1258) % 0x46);
  v49 = *(a43 + 37 * v47 % 0x46);
  v50 = (*(a43 + ((v47 ^ (a3 - v44)) & 0x25) * v47 % 0x46) ^ 5) + 111;
  v51 = *(STACK[0x1B58] + (v50 ^ 0xE0)) ^ 0x37 ^ ((((v50 ^ 0x74) - 119) ^ v50 ^ 0x74) + ((2 * (((v50 ^ 0x74) - 119) ^ v50 ^ 0x74)) & 8 ^ 0xFFFFFFFD) + 6);
  v52 = ((v51 >> 2) | (v51 << 6)) - ((2 * ((v51 >> 2) | (v51 << 6))) & 0xFFFFFF8C) - 58;
  STACK[0x2258] = v52 ^ 0xFFFFFFC6;
  v53 = (((v51 >> 2) | (v51 << 6)) - ((2 * ((v51 >> 2) | (v51 << 6))) & 0x8C) - 58) ^ 0xC6;
  STACK[0x1FF0] = v52;
  STACK[0x2138] = v49;
  v54 = v53 - (v49 ^ 5) + (v48 ^ (((v51 >> 2) | (v51 << 6)) - ((2 * ((v51 >> 2) | (v51 << 6))) & 0x8C) - 58) ^ 0xC3);
  *(a43 + (LODWORD(STACK[0x15D8]) + 37 * (v46 + v47 - v53)) % 0x46) = v54 - ((2 * v54) & 0xA) + 5;
  v55 = *(v45 + 8 * (a2 ^ (2258 * (v44 > v43 + 6))));
  LODWORD(STACK[0x2270]) = (a2 - 401) | 0x849;
  STACK[0x18F8] = LODWORD(STACK[0x20E0]);
  return v55();
}

uint64_t sub_26AA56EE8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v53 = ~a5 + v50;
  v54 = *(a48 + (((a7 + 1720) ^ 0xC83) + 37 * v53) % 0x46);
  v55 = *(a48 + 37 * v53 % 0x46);
  STACK[0x1628] = v55;
  v56 = v55 ^ v48;
  v57 = *(STACK[0x21B8] + ((v56 - 39) ^ 0x1ELL));
  v58 = (v57 ^ 0x43) - (v51 ^ a1) + (v54 ^ 0x46 ^ v57);
  STACK[0x2250] = v56;
  STACK[0x2240] = v57 ^ 0x43;
  *(a48 + (LODWORD(STACK[0x15D8]) + 37 * (v53 - v56 + (v57 ^ 0x43))) % 0x46) = v58 - ((2 * v58) & 0xA) + 5;
  v59 = *(v52 + 8 * (a7 ^ (2651 * (v50 > v49 + 7))));
  STACK[0x18F8] = LODWORD(STACK[0x20E0]);
  return v59();
}

uint64_t sub_26AA56FE8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v55 = ~a5 + v49;
  v56 = *(a48 + (v55 * v50 + 1258) % ((v54 | 0x849) ^ 0x82Fu));
  v57 = *(a48 + v55 * v50 - 70 * (((((v55 * v50) >> 1) * v51) >> 32) >> 5));
  STACK[0x2238] = v57 ^ 5;
  v58 = LODWORD(STACK[0x15D8]) + (((v52 ^ a1) * ((v55 ^ (a5 - v49)) & 0x547CF09D)) ^ v55 ^ (1417474205 * (v57 ^ 5))) * v50;
  *(a48 + v58 - 70 * ((((v58 >> 1) * v51) >> 32) >> 5)) = v57 ^ v56 ^ 5;
  v59 = *(v53 + 8 * (a7 ^ (2536 * (v49 > v48 + 8))));
  LODWORD(STACK[0x1D08]) = 296268109;
  STACK[0x1620] = v57;
  STACK[0x1618] = v57;
  STACK[0x18F8] = LODWORD(STACK[0x20E0]);
  return v59();
}

uint64_t sub_26AA570CC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v52 = (37 * v50 + 1147) % 0x46u;
  v53 = *(a48 + (37 * v50 - 111) % 0x46u);
  v54 = (v53 ^ 5) - (a5 ^ a1) + (*(a48 + v52) ^ v53);
  *(a48 + v52) = v54 - ((2 * v54) & 0xA) + 5;
  v55 = *(v51 + 8 * ((2941 * (((a7 + 1513978684) & 0xA5C28B7B ^ 0x860) + v48 < v49)) ^ a7));
  LODWORD(STACK[0x1D08]) = STACK[0x1590];
  STACK[0x1618] = STACK[0x1620];
  STACK[0x18F8] = LODWORD(STACK[0x20E0]);
  return v55();
}

uint64_t sub_26AA571A4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v52 = a5 ^ a1;
  v53 = ~v50 + v49;
  v54 = (a7 - 396) * v53;
  v55 = *(a48 + (v54 + 1258) % 0x46);
  v56 = *(a48 + v54 % ((((a7 - 239) | 0x1D) ^ 0x248039) & ((a5 & 0x12665F ^ 0x12665F) + (a5 & 0x12665Fu))));
  v57 = *(a48 + v54 % 0x46);
  v58 = v57 ^ 5;
  LODWORD(v57) = v57 ^ v55;
  STACK[0x1610] = v57 ^ 5;
  STACK[0x1608] = v56;
  v56 ^= 5uLL;
  STACK[0x2220] = v56;
  STACK[0x2228] = v58;
  *(a48 + (LODWORD(STACK[0x15D8]) + 37 * (v53 - v58 + v52)) % 0x46) = v58 - v56 + v57 + (~(2 * (v58 - v56 + v57)) | 0xF5) + 6;
  v59 = *(v51 + 8 * (a7 ^ (118 * (v48 + 10 < v49))));
  LODWORD(STACK[0x1D08]) = STACK[0x1590];
  STACK[0x1618] = STACK[0x1620];
  STACK[0x18F8] = LODWORD(STACK[0x20E0]);
  return v59();
}

void sub_26AA572D4(char a1@<W0>, unsigned __int8 a2@<W2>, uint64_t a3@<X3>, int a4@<W4>, unsigned __int8 a5@<W5>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v54 = v52 ^ a1;
  v55 = ~a4 + v49;
  v56 = v53 + 210;
  v57 = *(a47 + 37 * v55 % 0x46u);
  v58 = v57 ^ 5;
  v59 = ((v57 ^ 5) + 111) ^ 0xE0;
  v60 = *(STACK[0x2298] + v59) ^ v56 ^ 0xFFFFFFC5 ^ ((v57 ^ 5) + 111) ^ ((v56 ^ 0xFFFFFFC5 ^ ((v57 ^ 5) + 111)) - ((2 * (v56 ^ 0xFFFFFFC5 ^ ((v57 ^ 5) + 111)) + 2) & 0xA) - 114) ^ 0x37;
  LODWORD(STACK[0x2218]) = ((v60 << 6) | (v60 >> 2)) - ((v60 >> 1) & 0xA);
  v61 = v57;
  v62 = *(STACK[0x2290] + (((((v60 << 6) & 0x80 ^ 0xB4) + ((v60 << 6) & 0x80)) ^ ((*(a47 + 37 * v55 + 1258 - (37 * v55 + 1258) / 0x46u * v51) ^ v57) + 111)) ^ ((v59 & 0x4C ^ 0x4C) + (v59 & 0x4C)))) ^ 5;
  v63 = (-111 * v62) ^ 0x3B;
  v64 = (v63 ^ (68 * v62 * -111 * v62)) >> ((((v60 >> 2) & 6) + ((v60 >> 2) & 6 ^ 6) - 4) & 0xFE);
  STACK[0x1600] = v64 + (v63 << 6) - ((2 * v64) & 0xAu) + 5;
  LOBYTE(v63) = v54 - (v57 ^ 5) + ((v64 + (v63 << 6) - ((2 * v64) & 0xA) + 5) ^ 5);
  v65 = (LODWORD(STACK[0x2218]) + 5);
  LODWORD(v64) = v55 - 125471807 * v58;
  STACK[0x1610] = v65;
  v66 = v65 ^ 5;
  *(a47 + LODWORD(STACK[0x15D8]) + 37 * (v64 + 125471807 * (v65 ^ 5)) - (LODWORD(STACK[0x15D8]) + 37 * (v64 + 125471807 * (v65 ^ 5))) / 0x46 * v51) = v63 - ((2 * v63) & 0xA) + 5;
  LOBYTE(v64) = (LODWORD(STACK[0x2270]) ^ 0x88) + LODWORD(STACK[0x2288]);
  v67 = LODWORD(STACK[0x20E0]);
  v68 = STACK[0x2278] ^ 5;
  v69 = (STACK[0x2240] << 24) | (v48 << 40) | ((v67 ^ 5) << 8) | (a7 << 16) | v68;
  v70 = ((STACK[0x2220] << 48) | (v58 << 56) | v69) - 0x1FF524812BF531B6 - 2 * (((STACK[0x2220] << 48) | (v58 << 56) | v69) & 0x600ADB00D40ACE7BLL ^ v68 & 0x31);
  v71 = STACK[0x2238] << 32;
  STACK[0x1918] ^= 0xE00ADB7ED40ACE4ALL ^ v71 ^ v70;
  v72 = a2;
  v73 = v48;
  v74 = v50 << 48;
  v75 = STACK[0x2258];
  v76 = STACK[0x1FD8] ^ 5;
  v77 = (v74 + (a5 << 40)) ^ ((((LODWORD(STACK[0x22A0]) ^ 5u) << 8) | ((STACK[0x1DE8] ^ 5u) << 16) & 0xFFFFFFFF00FFFFFFLL | ((LODWORD(STACK[0x2190]) ^ 5u) << 24)) + ((LODWORD(STACK[0x1B38]) ^ 0x73u) << 32) + v76);
  STACK[0x1FA0] ^= (v72 << 40) ^ (a6 << 48) ^ (a3 << 56) ^ ((v64 << 24) + (v47 ^ 5u | ((STACK[0x1EC0] ^ 5u) << 8) | ((LODWORD(STACK[0x22B0]) ^ 5u) << 16) | ((STACK[0x1EE0] ^ 5u) << 32)));
  v78 = (v75 << 16) | (STACK[0x2250] << 24) | (v73 << 40) | STACK[0x2280] & 0xFFFFFFFFFFFF00FFLL | ((v67 ^ 5u) << 8) | (STACK[0x2228] << 48);
  STACK[0x1910] ^= 0xFD982B884CED010BLL ^ v71 ^ (v78 - 0x267D477B312FEF5 - ((2 * v78) & 0x7B30571099DA0216)) ^ (v66 << 56);
  STACK[0x1928] ^= 0x293F37071C5A0040 ^ (a3 << 56) ^ (v77 + 0x293F37071C5A0040 - 2 * (v77 & 0x293F37071C5A006ELL ^ v76 & 0x2E));
  LODWORD(STACK[0x1D08]) = STACK[0x1590];
  STACK[0x1618] = STACK[0x1620];
  STACK[0x18F8] = v67;
  STACK[0x15F8] = v61;
  JUMPOUT(0x26AA55F94);
}

uint64_t sub_26AA576F0(uint64_t a1, int a2)
{
  LODWORD(STACK[0x22A0]) = v2;
  v3 = (v2 + 1386);
  STACK[0x2068] = v3;
  v4 = (((v3 + 0x6D7BCA259D7FF22DLL) ^ (STACK[0x1FA0] << 23)) + 0x2D085CDAF7944B3BLL - ((2 * ((v3 + 0x6D7BCA259D7FF22DLL) ^ (STACK[0x1FA0] << 23))) & 0x5A10B9B5EF000000)) ^ STACK[0x1FA0];
  STACK[0x2238] = (v2 - 120986770) & 0x7361DFA;
  v5 = STACK[0x1918];
  v6 = v4 ^ (STACK[0x1918] >> 26) ^ (v4 >> ((v2 + 110) & 0xFA ^ 0xC3u)) ^ 0x3802B6DFB5;
  v7 = (v6 - 0x1FF524812BF531B6 - ((2 * v6) & 0xC015B6FDA8159C94)) ^ STACK[0x1918];
  v8 = (((v5 << 23) ^ 0xBF6A056725000000) - 0x1FF524812BF531B6 - ((2 * ((v5 << 23) ^ 0xBF6A056725000000)) & 0xC015B6FDA8000000)) ^ v5;
  v9 = v8 ^ (v8 >> 17) ^ v7 ^ (v7 >> 26);
  v10 = (((STACK[0x1928] << 23) ^ 0x838E2D0020000000) + 0x293F37071C5A0040 - ((2 * ((STACK[0x1928] << 23) ^ 0x838E2D0020000000)) & 0x527E6E0E38000000)) ^ STACK[0x1928];
  v11 = STACK[0x1910];
  v12 = v10 ^ (STACK[0x1910] >> 26) ^ (v10 >> 17) ^ 0x3F660AE213;
  v13 = (((v11 << 23) ^ 0xC426768085800000) - 0x267D477B312FEF5 - ((2 * ((v11 << 23) ^ 0xC426768085800000)) & 0xFB30571099000000)) ^ v11;
  v14 = (v12 - 0x267D477B312FEF5 - ((2 * v12) & 0xFB30571099DA0216)) ^ STACK[0x1910];
  v15 = v13 ^ (v13 >> 17) ^ v14 ^ (v14 >> 26);
  STACK[0x1928] = v15 ^ 0x293F37071C5A0040;
  v16 = v15 ^ 0x293F37071C5A0040 ^ v14 ^ (v14 << 23) ^ (((v15 >> 26) ^ ((v14 ^ (v14 << 23)) >> 17)) + 0x293F37071C5A0040 - ((2 * ((v15 >> 26) ^ ((v14 ^ (v14 << 23)) >> 17))) & 0x6E0E38B40080));
  v17 = ((v9 << 23) + 0x6EBDA069B2D2EA28 - ((v9 << 24) & 0xDD7B40D365000000)) ^ v9 ^ 0x6EBDA069B2D2EA28;
  v18 = (v16 >> 26) ^ (v17 >> 17);
  v19 = v16 ^ 0xE00ADB7ED40ACE4ALL;
  v20 = ((v16 << 23) - 0x1FF524812BF531B6 - ((v16 << 24) & 0xC015B6FDA8000000)) ^ v16 ^ 0xE00ADB7ED40ACE4ALL;
  v21 = v20 ^ (v20 >> 17);
  v22 = ((v18 ^ v17) - 0x1FF524812BF531B6 - ((2 * (v18 ^ v17)) & 0xC015B6FDA8159C94)) ^ v16 ^ 0xE00ADB7ED40ACE4ALL;
  v23 = v21 ^ v22 ^ (v22 >> 26);
  STACK[0x15E0] = v9 ^ 0x6EBDA069B2D2EA28;
  v24 = v9 ^ 0x6EBDA069B2D2EA28 ^ v7 ^ (v7 << 23) ^ (((v9 >> 26) ^ ((v7 ^ (v7 << 23)) >> 17)) + 0x6EBDA069B2D2EA28 - ((2 * ((v9 >> 26) ^ ((v7 ^ (v7 << 23)) >> 17))) & 0x40D365A5D450));
  STACK[0x1FD0] = v23 ^ 0xFD982B884CED010BLL;
  v25 = ((v22 ^ ((v22 ^ (v22 << 23)) >> 17) ^ v23 ^ 0xB ^ ((v23 >> 26) - ((v23 >> 25) & 0x16) + 11)) + v23);
  LODWORD(STACK[0x1F60]) = v25;
  v26 = v24 ^ (v24 << 8) ^ v16 ^ v25;
  v27 = -v26 & 7;
  LODWORD(STACK[0x2288]) = v27;
  if ((v26 & 7) != 0)
  {
    v28 = 255;
  }

  else
  {
    v28 = 0;
  }

  STACK[0x1FE8] = v19;
  v29 = v19 ^ v17 ^ (v18 - 0x1FF524812BF531B6 - ((2 * v18) & 0xB6FDA8159C94));
  v30 = v21 ^ (v29 >> 26);
  v31 = v30 ^ v29;
  v32 = v16 - v24 + ((v30 ^ ((v29 ^ (v29 << 23)) >> 17) ^ ((v30 ^ v29) >> 26)) + (v30 ^ v29));
  v33 = (2 * v32) & 0x8E9DC6A0;
  v34 = v26 & 7;
  v35 = ((((v28 << v27) + 111) ^ 0x74) + ((12 - 2 * (((v28 << v27) + 111) ^ 0x74)) | 0xF5) - 113) ^ ((v28 << v27) + 111) ^ 0x74 ^ *(STACK[0x2298] + (((v28 << v27) + 111) ^ 0xE0)) ^ 0x37;
  v36 = (v35 >> 2) & 0xFFFFFF3F | ((v35 & 3) << 6);
  if ((v26 & 7) != 0)
  {
    v37 = ~v36;
  }

  else
  {
    v37 = 0;
  }

  LODWORD(STACK[0x22B8]) = v37;
  LODWORD(STACK[0x2280]) = v32 - 951131312 - v33;
  v38 = (((v32 + 80 - v33) & 0x23 ^ 0x23) + ((v32 + 80 - v33) & 0x23)) & 0x40;
  v39 = v32 & 7;
  if ((v32 & 7) != 0)
  {
    v38 = 255;
  }

  LODWORD(STACK[0x2228]) = 8 - v39;
  v40 = (8 - v39) & 7;
  v41 = STACK[0x2030] + 2901;
  STACK[0x2258] = v41;
  v42 = (201 * (v38 << v40)) ^ a2 ^ (((201 * (v38 << v40)) ^ a2) + ((8 - 2 * ((201 * (v38 << v40)) ^ a2)) | 0xFFFFFFF5) - 95) ^ *(v41 + ((-55 * (v38 << v40)) ^ 0x3ELL)) ^ 0x1C;
  STACK[0x21D8] = 62 - v42 - ((2 - 2 * v42) & 0xA);
  v43 = (v5 ^ 0x4A) + 2 * v7 + (LODWORD(STACK[0x22A8]) ^ 5) + v9;
  v44 = v14 + (v11 ^ 0xB) + (LODWORD(STACK[0x22C0]) ^ 5) + v15 + v14;
  v45 = ((*(STACK[0x20B8] + (((v15 ^ 0x40 ^ v14 ^ (((v15 >> 26) ^ ((v14 ^ (v14 << 23)) >> 17)) + 64 - ((2 * ((v15 >> 26) ^ ((v14 ^ (v14 << 23)) >> 17))) & 0x80))) + v29 - 39) ^ 0xADLL)) ^ 5) - 44);
  v46 = ((*(STACK[0x20B8] + (((v15 ^ 0x40 ^ v14 ^ (((v15 >> 26) ^ ((v14 ^ (v14 << 23)) >> 17)) + 64 - ((2 * ((v15 >> 26) ^ ((v14 ^ (v14 << 23)) >> 17))) & 0x80))) + v29 - 39) ^ 0xADLL)) ^ 5) - 44) ^ (v45 >> 2) ^ (v45 >> 1);
  STACK[0x2060] = v24;
  LOBYTE(v43) = v24 + v9 + ((v43 - ((2 * v43) & 0xA) + 5) ^ 5);
  v47 = v9 - v15 + (v31 + v29);
  v48 = v43 - ((2 * v43) & 0xE7) + 115;
  STACK[0x1EE8] = v44;
  LOBYTE(v49) = v44 + (v15 ^ 0x40 ^ v14 ^ (((v15 >> 26) ^ ((v14 ^ (v14 << 23)) >> 17)) + 64 - ((2 * ((v15 >> 26) ^ ((v14 ^ (v14 << 23)) >> 17))) & 0x80))) + v15;
  LODWORD(v44) = ((v46 - ((2 * v46) & 0xE7) + 115) ^ v48);
  v49 = v49;
  v50 = v48 ^ 0x73;
  LODWORD(STACK[0x2058]) = v44;
  v51 = ((v44 ^ (v50 << 7)) + v49 - (((v44 ^ (v50 << 7)) & v49) << (v43 & 1) << !(v43 & 1))) ^ (v49 << 7);
  v52 = 16843009 * (v51 & 0xFE ^ 0xC8) + 1083968301 - ((33686018 * (v51 & 0xFE ^ 0xC8)) & 0x81381658);
  LODWORD(v41) = (v23 + v22) ^ v15 ^ v9;
  v53 = v50 - v49 + (v22 + (v15 ^ 0x40 ^ v14 ^ (((v15 >> 26) ^ ((v14 ^ (v14 << 23)) >> 17)) + 64 - ((2 * ((v15 >> 26) ^ ((v14 ^ (v14 << 23)) >> 17))) & 0x80))));
  LODWORD(STACK[0x22A8]) = v26 ^ (v16 << 8);
  v54 = (v53 + 926693100) | v41;
  LODWORD(STACK[0x21F0]) = v41;
  LODWORD(STACK[0x1FC8]) = HIBYTE(v54);
  v55 = HIBYTE(v54) ^ 0xFA ^ (((v53 - 20) | v41) ^ (((v53 + 14060) | v41) >> 8) ^ BYTE2(v54));
  v56 = 16843009 * (v53 & 0xFE);
  v57 = v52 ^ 0x409C0B2D;
  LODWORD(STACK[0x2188]) = 1997498092 - (v52 ^ 0x409C0B2D);
  LODWORD(STACK[0x2250]) = 1997498092 - (v52 ^ 0x409C0B2D) + v56 + 1083968301 - ((2 * (1997498092 - (v52 ^ 0x409C0B2D) + v56)) & 0x8138165A);
  v59 = v32 & 7;
  v58 = (v32 & 7) == 0;
  v60 = v34;
  v61 = 1499685823 - v59 + v34 - 444723235 * (v59 - v34);
  v62 = v51 ^ 0xC9;
  v63 = v47;
  LODWORD(STACK[0x2100]) = v47;
  v64 = ((v51 ^ 0xC9) + 926693100) | v47;
  LODWORD(v44) = ((((v51 ^ 0xC9) - 20) | v47) ^ ((((v51 ^ 0xC9) + 14060) | v47) >> 8) ^ BYTE2(v64)) ^ HIBYTE(v64) ^ 0x9C;
  v65 = (538976288 * v44) ^ 0x93939380;
  LODWORD(STACK[0x21C0]) = v44;
  v66 = 16843009 * v44;
  v67 = 16843009 * v55;
  v68 = (16843009 * v55) ^ 0xFAFAFAFA;
  LODWORD(STACK[0x21A8]) = -1050886881 * v68;
  v69 = 1997498092 - -1050886881 * v68;
  v70 = v66 ^ 0x9C9C9C9C;
  LODWORD(STACK[0x21A0]) = v69;
  LODWORD(STACK[0x2038]) = v66;
  LODWORD(STACK[0x2160]) = v66 ^ 0x6A499A80;
  v71 = ((v65 ^ (v69 - 1050886881 * v70)) - 153811428 - 2 * ((v65 ^ (v69 - 1050886881 * v70)) & 0x76D5061E ^ (v69 - 1050886881 * v70) & 2)) ^ v66 ^ 0x6A499A80;
  LODWORD(STACK[0x21F8]) = v71;
  LODWORD(STACK[0x2240]) = ((538976288 * v55) ^ 0x5F5F5F40 ^ v71) - 1642741227 - 2 * (((538976288 * v55) ^ 0x5F5F5F40 ^ v71) & 0x1E15C21F ^ v71 & 0xA);
  LODWORD(STACK[0x22B0]) = v40;
  v72 = STACK[0x2288];
  v73 = v40 + 1499685823 - v72 - 1976331777 * v72;
  LODWORD(STACK[0x2200]) = v73;
  v74 = (v73 + 1976331777 * v40) ^ (-915377183 * v40);
  v75 = v60 ^ v59 ^ 0x2520EA12 ^ ((v61 ^ (8 * (v60 ^ v59))) + 622914066 - ((2 * (v61 ^ (8 * (v60 ^ v59)))) & 0x4A41D424));
  v76 = -1291845632 * v36;
  v77 = 16843009 * v36;
  v78 = (v53 & STACK[0x22B8]) ^ v77;
  v79 = v77 ^ ~(v76 & v41);
  v80 = v51 & 0xFFFFFF01 ^ 1;
  v81 = (v42 - 58);
  v82 = 16843009 * v81;
  v83 = (1358954496 * v81) & v63;
  v84 = ((v51 & 0xFE ^ 0xC8) + 45 - ((2 * (v51 & 0xFE ^ 0xC8)) & 0x58)) ^ 0x2D;
  LODWORD(STACK[0x2270]) = v83;
  v85 = (v84 ^ v80) - (v83 ^ (16843009 * v81));
  LODWORD(STACK[0x21B0]) = v78;
  LODWORD(STACK[0x21E0]) = v78 - 837247835 - ((2 * v78) & 0x9C31394A);
  v86 = STACK[0x21D8] ^ 5;
  if (v58)
  {
    v86 = 0;
  }

  v87 = STACK[0x2280];
  v88 = STACK[0x2280] & 0xFFFFFFF8 ^ 0xC74EE350;
  STACK[0x22C0] = v59;
  LODWORD(STACK[0x2120]) = v88;
  v89 = v88 | v59;
  LODWORD(STACK[0x2118]) = v53 & 0xFFFFFF01;
  v90 = 344860875 * (v87 ^ 0xC74EE350);
  LODWORD(STACK[0x2170]) = v90;
  LODWORD(STACK[0x2108]) = 344860875 * (v88 | v59);
  v91 = (344860875 * v89) ^ v90 ^ ((v62 & v86 ^ v82) + 2117378885 * ((v87 ^ 0x38B11CAF) + v89) + 2117378885);
  v92 = v84 + v80;
  LODWORD(STACK[0x2148]) = v91;
  v93 = (v91 ^ ((v87 ^ 0xC74EE350) >> 2)) - 951131312 - ((2 * (v91 ^ ((v87 ^ 0xC74EE350) >> 2))) & 0x8E9DC6A0);
  LODWORD(STACK[0x1FD8]) = v51;
  v94 = v85 + (v51 ^ 0xFFFFFF36);
  LODWORD(STACK[0x21D0]) = v94;
  v95 = v94 - v62 + v92;
  LODWORD(STACK[0x2208]) = v92;
  LODWORD(STACK[0x2220]) = v95;
  LODWORD(STACK[0x2128]) = v95 + 420976973 * (v62 - v92) + 885051174 - ((2 * (v95 + 420976973 * (v62 - v92))) & 0x69819E4C);
  LODWORD(STACK[0x1F30]) = v53;
  v96 = v54;
  v97 = v79;
  LODWORD(STACK[0x1F40]) = v53;
  LODWORD(STACK[0x21E8]) = v56 + 102503791 * (v53 + (v51 ^ 0xFFFFFF36)) + 2036303417 - ((2 * (v56 + 102503791 * (v53 + (v51 ^ 0xFFFFFF36)) + 102503791)) & 0xE686E194);
  v98 = STACK[0x22A8];
  v99 = LODWORD(STACK[0x22A8]) ^ v72;
  LODWORD(STACK[0x2218]) = LODWORD(STACK[0x22A8]) >> 4;
  LODWORD(STACK[0x21C8]) = v99;
  LODWORD(STACK[0x2140]) = v99 ^ (v98 >> 4);
  LODWORD(STACK[0x2278]) = v52;
  v100 = LODWORD(STACK[0x2250]) ^ v52;
  LODWORD(STACK[0x2110]) = v100;
  LODWORD(STACK[0x1D20]) = v57;
  v101 = (v56 ^ (v56 >> 1) ^ (v52 >> 1) ^ 0x204E0596 ^ v100) - v56 + v57;
  LODWORD(STACK[0x1ED8]) = v67;
  v102 = LODWORD(STACK[0x2240]) ^ v67 ^ 0x64EF38EF;
  LODWORD(STACK[0x1D18]) = v70;
  LODWORD(STACK[0x1CB0]) = v68;
  LODWORD(STACK[0x2178]) = v102;
  v103 = 536902897 * v70 - 536902897 * v68 + v102;
  LODWORD(STACK[0x20F8]) = v103;
  LODWORD(STACK[0x2198]) = v101;
  v104 = (v64 ^ 0x7BE2AC35) - -342118147 * v103 - 342118147 * v101;
  LODWORD(STACK[0x22B8]) = v104 + 1961751864 - ((2 * v104) & 0xE9DBEA70);
  v105 = (243 * ((((v53 & 0xFE) - 16) & 0xFE | v53 & 0xFE) != 0)) ^ LODWORD(STACK[0x22A0]);
  v106 = v74 ^ (-915377183 * v72);
  STACK[0x2240] = v89 ^ (v89 >> 2) ^ v93 ^ v87;
  LODWORD(STACK[0x21F0]) = 2 * v106;
  LODWORD(STACK[0x2100]) = v96 ^ 0xAAED8DCA ^ v106;
  v107 = *(STACK[0x22F8] + 8 * v105);
  LODWORD(STACK[0x2150]) = v67 ^ 0x64EF38EF;
  LODWORD(STACK[0x2130]) = v52 >> 1;
  STACK[0x20E8] = v97;
  return v107(v96 ^ 0xAAED8DCA ^ v106 ^ (2 * v106) ^ v75);
}

uint64_t sub_26AA58284@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned __int8 *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned __int8 *a25)
{
  LODWORD(STACK[0x1F50]) = v28;
  LODWORD(STACK[0x1F68]) = v30;
  LODWORD(STACK[0x2288]) = a1;
  LODWORD(STACK[0x22A0]) = a2;
  LODWORD(STACK[0x1F78]) = v27;
  LODWORD(STACK[0x1F70]) = v29;
  LODWORD(STACK[0x1F90]) = v25;
  LODWORD(STACK[0x1F98]) = v26;
  LODWORD(STACK[0x2250]) = a3;
  v31 = *(STACK[0x2260] + ((-55 * (a25[2151] ^ 5)) ^ 0xF2));
  v32 = STACK[0x2340];
  HIDWORD(v33) = v31 ^ 1;
  LODWORD(v33) = (v31 ^ 4) << 24;
  v34 = a25[2145];
  v35 = a25[2148];
  v36 = a25[2149];
  v37 = v36 ^ 5;
  STACK[0x1628] = v36;
  v38 = a25[2150];
  v39 = *a18;
  LODWORD(v36) = v39 ^ 5;
  STACK[0x1620] = v39;
  v40 = a25[2152];
  v41 = a25[2146];
  v42 = a25[2147];
  STACK[0x2138] = v42;
  v43 = a25[2156];
  v44 = a25[2159];
  v45 = a25[2155];
  v46 = a25[2157];
  v47 = a25[2154];
  STACK[0x1608] = v47;
  STACK[0x1EE0] = v43;
  STACK[0x1618] = v40;
  STACK[0x1610] = v34;
  v48 = v37 + 642072823 * (v34 ^ 5 ^ (439459117 * (-1430294965 * ((v43 ^ 5) - -25427295 * (v42 ^ 5)) - (v40 ^ 5)) + 1830560831));
  v49 = a25[2153];
  v50 = a25[2158];
  STACK[0x1600] = v49;
  STACK[0x1ED0] = v50;
  STACK[0x1EC0] = v46;
  STACK[0x15F8] = v38;
  STACK[0x18F8] = v45;
  STACK[0x21D8] = v41;
  STACK[0x1900] = v35;
  STACK[0x1EE8] = ((v33 >> 26) ^ ((v33 >> 26) >> 5) ^ ((v33 >> 26) >> 3) ^ 0x13) - 58;
  STACK[0x20C8] = v44;
  v51 = STACK[0x2068];
  v52 = STACK[0x22F8];
  v53 = *a9 + 111;
  v54 = *(STACK[0x2298] + ((*a9 + 111) ^ 0xE0)) ^ v53 ^ (((2 * v53) & 0x12) + (v53 ^ 0xFFFFFFFD) - ((STACK[0x2068] ^ 0x2D9) & (2 * (((2 * v53) & 0x12) + (v53 ^ 0xFFFFFFFD)))) + 5) ^ 0x43;
  v55 = ((-1189988113 * ((665696999 * ((v44 ^ 5) + 1287025131 * ((((v33 >> 26) ^ ((v33 >> 26) >> 5) ^ ((v33 >> 26) >> 3) ^ 0x13) - 58) - 39366897 * ((474075721 * (-(v41 ^ 5) - 1936429447 * (-1993010529 * (1110711087 * (-v36 - 18324213 * ((2054808921 * ((((v48 & 0x2CA372C8 ^ 0x2CA372C8) + (v48 & 0x2CA372C8)) ^ 0x6088254F) * ((v49 ^ 5) - -730628869 * v48) - (v50 ^ 5))) ^ v46 ^ 5)) - (v38 ^ 5)) - (v45 ^ 5)))) ^ v35 ^ 5)))) ^ v47 ^ 5)) ^ ((v54 >> 2) | (v54 << 6)) ^ 0xFFFFFFCF) + 111;
  LOBYTE(v55) = *(STACK[0x2298] + (v55 ^ 0xE0)) ^ v55 ^ 0x74 ^ ((v55 ^ 0x74) - ((2 * (v55 ^ 0x74) + 2) & 0xA) - 114) ^ 0x37;
  *v32 = (v55 >> 2) | (v55 << 6);
  return (*(v52 + 8 * v51))();
}

uint64_t sub_26AA58650@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, unsigned int a5@<W5>, int a6@<W6>, int a7@<W7>, int a8@<W8>)
{
  LODWORD(STACK[0x1F50]) = v17;
  LODWORD(STACK[0x1F68]) = v22;
  LODWORD(STACK[0x1F90]) = v9;
  LODWORD(STACK[0x1F98]) = v11;
  LODWORD(STACK[0x2250]) = a8;
  STACK[0x1FA0] = STACK[0x2060] ^ 0x2D085CDAF7944B3BLL;
  LODWORD(STACK[0x2060]) = v10;
  v23 = LODWORD(STACK[0x1FD8]) ^ 0x683D3C01;
  LODWORD(STACK[0x1FD8]) = STACK[0x22A8] & 0xFFFFFFF8;
  LODWORD(STACK[0x1FA8]) = LODWORD(STACK[0x2270]) ^ ~v19;
  LODWORD(STACK[0x2058]) -= 998501249;
  LODWORD(STACK[0x2068]) = -444723235 * v20;
  STACK[0x1ED0] = LODWORD(STACK[0x1FC8]) + (~(a5 >> 23) | 0xFFFFFFF5) + 6;
  v24 = STACK[0x1F30];
  LODWORD(STACK[0x1FB0]) = 423269765 * LODWORD(STACK[0x1F30]);
  LODWORD(STACK[0x1EC8]) = 874264495 * v24 + 47793804;
  LODWORD(STACK[0x1FB8]) = 16;
  STACK[0x1918] = STACK[0x1FE8];
  STACK[0x1910] = STACK[0x1FD0];
  LODWORD(STACK[0x1F70]) = v21;
  LODWORD(STACK[0x1FD0]) = v21;
  LODWORD(STACK[0x1D88]) = STACK[0x20A0];
  LODWORD(STACK[0x1FC0]) = 1997498092;
  v25 = v16;
  LODWORD(STACK[0x1F78]) = v12;
  LODWORD(STACK[0x20A0]) = v12;
  LODWORD(STACK[0x2288]) = a1;
  LODWORD(STACK[0x1F58]) = a1;
  LODWORD(STACK[0x22A0]) = a3;
  LODWORD(STACK[0x1F88]) = a3;
  LODWORD(STACK[0x1F48]) = a4;
  LODWORD(STACK[0x1F38]) = v24;
  LODWORD(STACK[0x1F80]) = STACK[0x21E0];
  v26 = STACK[0x1D10];
  LODWORD(STACK[0x1FC8]) = v14;
  v27 = STACK[0x20A8];
  v28 = STACK[0x1D08];
  v29 = STACK[0x2230];
  v30 = STACK[0x2210];
  v31 = STACK[0x1FE0];
  v32 = STACK[0x2098];
  v33 = STACK[0x20F0];
  LODWORD(STACK[0x1FE8]) = v15;
  v34 = STACK[0x1F40];
  v35 = (STACK[0x2238] - 2023829503) & 0x78A12FEF;
  v36 = (v18 + a2 - ((2 * v18) & 0x38E6BE22)) ^ v27;
  v37 = v31 ^ 0x4172BE28 ^ v26;
  v38 = v35 ^ 0x4172B7EB ^ v32 ^ v26;
  v39 = LODWORD(STACK[0x1F60]) - (v31 ^ a2);
  LODWORD(STACK[0x20A8]) = v18 ^ LODWORD(STACK[0x1F60]);
  v40 = v23 ^ v25 ^ 0x9EE83AD4;
  v41 = v28 ^ 0x11A8B14D;
  v42 = (v32 ^ a2) + (v28 ^ 0x11A8B14D);
  v43 = a7 + v41;
  v44 = v34 ^ a7;
  v45 = v33 ^ a2;
  LODWORD(STACK[0x1F20]) = v45 - (v25 ^ 0xF6D5061C);
  LODWORD(STACK[0x1F18]) = v34 - v45;
  v46 = (v23 ^ 0x683D3CC8) + a6;
  v47 = a6 - (LODWORD(STACK[0x2268]) ^ 0xF9405613);
  v48 = LODWORD(STACK[0x2268]) ^ (v24 - 113224173 - ((2 * v24) & 0xF280AC26));
  v49 = STACK[0x1FD0];
  LODWORD(STACK[0x1FE0]) = (LODWORD(STACK[0x2248]) ^ 0x438F6703) + LODWORD(STACK[0x1FD0]);
  v50 = STACK[0x2080];
  v51 = STACK[0x21A8];
  LODWORD(STACK[0x1EB8]) = LODWORD(STACK[0x21A8]) - (LODWORD(STACK[0x2080]) ^ 0x1C735F11);
  LODWORD(STACK[0x1E30]) = v38 - v51;
  LODWORD(STACK[0x1F60]) = v37 - v38;
  LODWORD(STACK[0x1E78]) = v37 ^ v49;
  v52 = (v29 ^ 0xF9405613) + v24;
  LODWORD(STACK[0x1F30]) = v29 ^ 0x902E73FD ^ v30;
  v53 = (v30 ^ 0x696E25EE) - v13;
  v54 = STACK[0x2270];
  v55 = v13 ^ LODWORD(STACK[0x2270]);
  v56 = STACK[0x2070];
  LODWORD(STACK[0x21A8]) = v50 ^ LODWORD(STACK[0x2070]);
  LODWORD(STACK[0x1F40]) = (v55 + 477323025 - ((2 * v55) & 0x38E6BE22)) ^ v56;
  v57 = STACK[0x21C8];
  v58 = STACK[0x2280];
  LODWORD(STACK[0x2070]) = (LODWORD(STACK[0x21C8]) - 951131312 - ((2 * LODWORD(STACK[0x21C8])) & 0x8E9DC6A0)) ^ LODWORD(STACK[0x2280]);
  LODWORD(STACK[0x2230]) = (v42 - 951131312 - ((2 * v42) & 0x8E9DC6A0)) ^ v58;
  v59 = v47 - 60001450 - ((2 * v47) & 0xF8D8E6AC);
  v60 = STACK[0x1920];
  v61 = STACK[0x22A8];
  LODWORD(STACK[0x1F28]) = LODWORD(STACK[0x22A8]) - (LODWORD(STACK[0x1920]) ^ 0xFD26ED80);
  v62 = STACK[0x2178];
  LODWORD(STACK[0x1FD0]) = LODWORD(STACK[0x2178]) ^ v61;
  LODWORD(STACK[0x1E60]) = v62 + v52 - 2 * v62;
  v63 = STACK[0x2110];
  LODWORD(STACK[0x2238]) = v60 ^ (LODWORD(STACK[0x2110]) - 47780480 - ((2 * LODWORD(STACK[0x2110])) & 0xFA4DDB00));
  v64 = STACK[0x2200];
  v65 = LODWORD(STACK[0x2078]) ^ 0x69D8B580;
  LODWORD(STACK[0x1E80]) = (LODWORD(STACK[0x2078]) ^ (LODWORD(STACK[0x2200]) + 1775809920 - ((2 * LODWORD(STACK[0x2200])) & 0xD3B16B00))) + 2 * (v65 & STACK[0x2200]);
  v66 = LODWORD(STACK[0x2028]) ^ 0x79936D97;
  v67 = LODWORD(STACK[0x1FF8]) ^ 0x46DB4974;
  LODWORD(STACK[0x1E40]) = v47 + v67;
  v68 = STACK[0x1FC0];
  LODWORD(STACK[0x1FF8]) = v67 - LODWORD(STACK[0x1FC0]);
  LODWORD(STACK[0x2078]) = v68 + v66;
  v69 = STACK[0x2188];
  LODWORD(STACK[0x2210]) = LODWORD(STACK[0x2188]) + v66;
  LODWORD(STACK[0x2028]) = v52 + v69;
  LODWORD(STACK[0x2188]) = v42 + v64;
  v70 = LODWORD(STACK[0x1D28]) ^ 0x34ABFED0;
  v71 = STACK[0x2008];
  LODWORD(STACK[0x2280]) = v70 + (LODWORD(STACK[0x2008]) ^ 0x48E7BC82);
  LODWORD(STACK[0x1FC0]) = v65 - v70;
  v72 = STACK[0x1B08];
  LODWORD(STACK[0x22A8]) = LODWORD(STACK[0x1B08]) ^ v59;
  v73 = STACK[0x2108];
  LODWORD(STACK[0x1E88]) = LODWORD(STACK[0x2108]) + (v72 ^ 0xFC6C7356);
  v74 = STACK[0x1D38];
  LODWORD(STACK[0x2178]) = v71 ^ 0x594F0DCF ^ LODWORD(STACK[0x1D38]);
  LODWORD(STACK[0x2008]) = v73 + (v74 ^ 0x11A8B14D);
  v75 = v54;
  v76 = STACK[0x1F58];
  v77 = STACK[0x21C0];
  LODWORD(STACK[0x1E70]) = v55 - LODWORD(STACK[0x21C0]);
  v78 = STACK[0x21B0];
  LODWORD(STACK[0x2080]) = v77 - LODWORD(STACK[0x21B0]);
  LODWORD(STACK[0x21B0]) = v78 ^ v44;
  LODWORD(STACK[0x2268]) = v53 ^ v44;
  v79 = STACK[0x1F48];
  v80 = LODWORD(STACK[0x20F8]) + (LODWORD(STACK[0x1F48]) ^ 0x9E15C215);
  v81 = STACK[0x1F38];
  LODWORD(STACK[0x20F8]) += LODWORD(STACK[0x1F38]);
  LODWORD(STACK[0x1E58]) = v81 - v76;
  v82 = STACK[0x1FA8];
  LODWORD(STACK[0x1E50]) = v53 - LODWORD(STACK[0x1FA8]);
  LODWORD(STACK[0x2200]) = v82 - v75;
  v83 = STACK[0x2198];
  LODWORD(STACK[0x1FA8]) = v75 - LODWORD(STACK[0x2198]);
  LODWORD(STACK[0x20F0]) = v83 - v76;
  v84 = LODWORD(STACK[0x1DC0]) ^ 0x66CA23D9;
  v85 = LODWORD(STACK[0x2040]) ^ 0xE6F53D4E;
  v86 = STACK[0x1FE8];
  LODWORD(STACK[0x2040]) = LODWORD(STACK[0x1FE8]) - v57;
  v87 = STACK[0x2218];
  LODWORD(STACK[0x1E68]) = LODWORD(STACK[0x2218]) + v86;
  LODWORD(STACK[0x1E38]) = v87 + v85;
  v88 = v84 + v85;
  v89 = v36 - v84;
  v90 = STACK[0x1FB0];
  LODWORD(STACK[0x1E20]) = v36 ^ LODWORD(STACK[0x1FB0]);
  v91 = v90 - 1842992728 - ((2 * v90) & 0x244C5350);
  v92 = STACK[0x2010];
  LODWORD(STACK[0x2098]) = LODWORD(STACK[0x2010]) ^ v79 ^ 0xC33EBBD;
  LODWORD(STACK[0x2108]) = v91 ^ v92;
  v93 = STACK[0x2050];
  LODWORD(STACK[0x2010]) = (LODWORD(STACK[0x2050]) ^ 0xE6F53D4E) - v43;
  v94 = STACK[0x21F8];
  LODWORD(STACK[0x1F48]) = v43 - LODWORD(STACK[0x21F8]);
  v95 = STACK[0x2090];
  v96 = STACK[0x1F88];
  LODWORD(STACK[0x2218]) = LODWORD(STACK[0x1F88]) - (LODWORD(STACK[0x2090]) ^ 0x1C735F11);
  v97 = STACK[0x2140];
  LODWORD(STACK[0x1FB0]) = v96 + LODWORD(STACK[0x2140]);
  v98 = v97 + v94;
  v99 = STACK[0x21A0];
  v100 = v99 + 477323025 - ((2 * v99) & 0x38E6BE22);
  LODWORD(STACK[0x1F88]) = (v48 + 477323025 - ((2 * v48) & 0x38E6BE22)) ^ v95;
  v101 = STACK[0x1D50];
  LODWORD(STACK[0x2090]) = (v40 + 1249099480 - ((2 * v40) & 0x94E77DB0)) ^ LODWORD(STACK[0x1D50]);
  v102 = STACK[0x2020];
  LODWORD(STACK[0x1E98]) = v101 ^ LODWORD(STACK[0x2020]) ^ 0x5600E1C9;
  v103 = STACK[0x2220];
  v104 = v63 ^ LODWORD(STACK[0x2220]);
  v105 = STACK[0x2158];
  LODWORD(STACK[0x2198]) = v93 ^ 0x9F6650D9 ^ LODWORD(STACK[0x2158]);
  LODWORD(STACK[0x1E28]) = (v105 ^ 0x79936D97) + v103;
  v106 = LODWORD(STACK[0x21D0]) ^ v48;
  LODWORD(STACK[0x21C8]) = LODWORD(STACK[0x21D0]) ^ v40;
  v107 = STACK[0x2118];
  LODWORD(STACK[0x1FE8]) = v99 + LODWORD(STACK[0x2118]);
  v108 = STACK[0x2100];
  LODWORD(STACK[0x21F8]) = LODWORD(STACK[0x2100]) ^ v107;
  v109 = LODWORD(STACK[0x2048]) ^ 0x89E0BC2B;
  LODWORD(STACK[0x21D0]) = v108 + v109;
  LODWORD(STACK[0x2110]) = v109 + (v102 ^ 0x1C735F11);
  v110 = v8 + 1724523481 - ((2 * v8) & 0xCD9447B2);
  v111 = STACK[0x21F0];
  v112 = v111 - 837247835 - ((2 * v111) & 0x9C31394A);
  v113 = v111 + 1467975188 - ((2 * v111) & 0xAEFF0C28);
  v114 = LODWORD(STACK[0x20C0]) ^ 0xE27DBE45;
  v115 = v76 ^ LODWORD(STACK[0x2120]);
  v116 = v114 + LODWORD(STACK[0x2120]);
  LODWORD(STACK[0x21A0]) = v8 ^ v115;
  v117 = STACK[0x2068];
  LODWORD(STACK[0x1E18]) = v115 + LODWORD(STACK[0x2068]);
  v118 = STACK[0x20A0];
  LODWORD(STACK[0x2118]) = v100 ^ LODWORD(STACK[0x20A0]);
  v119 = STACK[0x2148];
  LODWORD(STACK[0x2158]) = (v118 ^ 0x1C735F11) - LODWORD(STACK[0x2148]);
  v120 = LODWORD(STACK[0x2000]) ^ 0x46DB4974;
  v121 = v119 - v120;
  LODWORD(STACK[0x2000]) = v120 - v114;
  v122 = STACK[0x2170];
  LODWORD(STACK[0x2148]) = v114 + LODWORD(STACK[0x2170]);
  LODWORD(STACK[0x2140]) = v46 ^ v122;
  v123 = STACK[0x2060];
  LODWORD(STACK[0x21C0]) = v46 ^ LODWORD(STACK[0x2060]);
  LODWORD(STACK[0x2068]) = v39 ^ v117;
  v124 = STACK[0x1FB8];
  LODWORD(STACK[0x2100]) = LODWORD(STACK[0x1FB8]) + v123;
  v125 = v124 - v39;
  v126 = STACK[0x2058];
  v127 = v126 + 296268109 - ((2 * v126) & 0x2351629A);
  v128 = v110 ^ LODWORD(STACK[0x1D40]);
  v129 = LODWORD(STACK[0x1F80]) ^ v112;
  v130 = (LODWORD(STACK[0x1F80]) ^ 0xCE189CA5) + (LODWORD(STACK[0x1D40]) ^ 0x66CA23D9);
  v131 = STACK[0x2168];
  v132 = STACK[0x1D30];
  LODWORD(STACK[0x2220]) = LODWORD(STACK[0x1D30]) ^ LODWORD(STACK[0x2168]) ^ 0x4172BE28;
  LODWORD(STACK[0x2020]) = v132 ^ 0x5D01E139;
  v133 = v113 ^ LODWORD(STACK[0x2018]);
  LODWORD(STACK[0x21F0]) = v116 + (LODWORD(STACK[0x2018]) ^ 0x577F8614);
  v134 = v116 ^ LODWORD(STACK[0x20A8]);
  v135 = LODWORD(STACK[0x1D58]) ^ 0xB8FC76A6;
  v136 = v126 + v135;
  v137 = LODWORD(STACK[0x19D4]) ^ 0x3EC16BC9;
  v138 = LODWORD(STACK[0x2088]) ^ 0x1C735F11;
  LODWORD(STACK[0x2170]) = LODWORD(STACK[0x20A8]) - v137;
  v139 = v137 + v138;
  v140 = STACK[0x1FD8];
  LODWORD(STACK[0x2058]) = v138 - LODWORD(STACK[0x1FD8]);
  v141 = STACK[0x2208];
  LODWORD(STACK[0x1FB8]) = LODWORD(STACK[0x2208]) ^ v140;
  v142 = STACK[0x1FC8];
  v143 = v141 - LODWORD(STACK[0x1FC8]);
  LODWORD(STACK[0x2050]) = v143;
  v144 = v142 ^ LODWORD(STACK[0x1F20]);
  v145 = STACK[0x1F18];
  LODWORD(STACK[0x20C0]) = LODWORD(STACK[0x1F20]) - LODWORD(STACK[0x1F18]);
  LODWORD(STACK[0x20A0]) = v145 - v135;
  v146 = STACK[0x1D48];
  LODWORD(STACK[0x20A8]) = v127 ^ LODWORD(STACK[0x1D48]);
  v147 = LODWORD(STACK[0x20B0]) ^ 0xE27DBE45;
  v148 = v147 + (v146 ^ 0x11A8B14D);
  v149 = LODWORD(STACK[0x2228]) - (v131 ^ 0x1C735F11);
  LODWORD(STACK[0x2060]) = v147 - LODWORD(STACK[0x2228]);
  LODWORD(STACK[0x1EF8]) = v106 ^ v89;
  LODWORD(STACK[0x1F10]) = ((v106 ^ v89) + 821360544) & 0x3B2F3F8F ^ (v106 ^ v89) & 1;
  v150 = STACK[0x1E30];
  LODWORD(STACK[0x1F20]) = (LODWORD(STACK[0x1E30]) ^ v88) - ((2 * (LODWORD(STACK[0x1E30]) ^ v88) + 2070909172) & 0x71F8ED4C);
  LODWORD(STACK[0x2248]) = v80 + v88;
  v151 = STACK[0x1EB8];
  LODWORD(STACK[0x1F18]) = v80 - LODWORD(STACK[0x1EB8]) - ((2 * (v80 - LODWORD(STACK[0x1EB8])) + 1020311144) & 0x38E6BE22);
  v152 = STACK[0x2188];
  LODWORD(STACK[0x2048]) = LODWORD(STACK[0x2188]) ^ v106;
  LODWORD(STACK[0x2168]) = v130 ^ v152;
  LODWORD(STACK[0x1F00]) = (v130 ^ v143) - ((2 * (v130 ^ v143) + 212522404) & 0x262DAA5E);
  LODWORD(STACK[0x1EF0]) = LODWORD(STACK[0x22A8]) + LODWORD(STACK[0x2200]) - ((2 * (LODWORD(STACK[0x22A8]) + LODWORD(STACK[0x2200])) + 107372496) & 0xC0DB88A);
  v153 = STACK[0x2280];
  LODWORD(STACK[0x1F08]) = LODWORD(STACK[0x2280]) - v104 - 2 * ((LODWORD(STACK[0x2280]) - v104 + 1191827488) & 0x58FE8C3D ^ (LODWORD(STACK[0x2280]) - v104) & 4);
  LODWORD(STACK[0x2270]) = v153 + v121;
  v154 = STACK[0x2080];
  LODWORD(STACK[0x2188]) = LODWORD(STACK[0x2080]) + v121;
  v155 = STACK[0x2070];
  LODWORD(STACK[0x2080]) = LODWORD(STACK[0x2070]) ^ v154;
  v156 = v155 + v98;
  v157 = STACK[0x1E20];
  LODWORD(STACK[0x1EB0]) = (LODWORD(STACK[0x1E20]) ^ v98) - ((2 * (LODWORD(STACK[0x1E20]) ^ v98) + 380065662) & 0x763CB600);
  LODWORD(STACK[0x2280]) = v136 ^ v151;
  LODWORD(STACK[0x1EB8]) = v136 + LODWORD(STACK[0x2178]) - ((2 * (v136 + LODWORD(STACK[0x2178])) + 1627010526) & 0x6423E64A);
  v158 = STACK[0x1E98];
  LODWORD(STACK[0x1F38]) = LODWORD(STACK[0x1E98]) - v139 - ((2 * (LODWORD(STACK[0x1E98]) - v139) + 169224310) & 0x6AB4C23E);
  v159 = STACK[0x2000];
  LODWORD(STACK[0x1EA8]) = LODWORD(STACK[0x2000]) - v134 - ((2 * (LODWORD(STACK[0x2000]) - v134) + 395819826) & 0x1844F3BA);
  v160 = STACK[0x1E78];
  v161 = STACK[0x1E40];
  LODWORD(STACK[0x1EA0]) = LODWORD(STACK[0x1E40]) + LODWORD(STACK[0x1E78]) - ((2 * (LODWORD(STACK[0x1E40]) + LODWORD(STACK[0x1E78])) + 199768992) & 0x321F366C);
  v162 = STACK[0x1E38];
  LODWORD(STACK[0x1E48]) = (v158 ^ LODWORD(STACK[0x1E38])) - ((2 * (v158 ^ LODWORD(STACK[0x1E38])) + 223632802) & 0x50E994F4);
  v163 = v148 ^ v104;
  v164 = v148;
  LODWORD(STACK[0x1E98]) = v163 - ((2 * v163 + 20240168) & 0x1F2AA01E);
  v165 = STACK[0x2108];
  LODWORD(STACK[0x2228]) = v134 - LODWORD(STACK[0x2108]);
  v166 = STACK[0x1FC0];
  v167 = LODWORD(STACK[0x1FC0]) ^ v165;
  LODWORD(STACK[0x2070]) = v167;
  v168 = LODWORD(STACK[0x1F88]) ^ v166;
  v169 = STACK[0x1F48];
  LODWORD(STACK[0x1E90]) = LODWORD(STACK[0x1F88]) + LODWORD(STACK[0x1F48]) - ((2 * (LODWORD(STACK[0x1F88]) + LODWORD(STACK[0x1F48])) + 965257704) & 0x38E6BE22);
  v170 = STACK[0x1E18];
  LODWORD(STACK[0x1FC0]) = LODWORD(STACK[0x1E18]) - v162 - ((2 * (LODWORD(STACK[0x1E18]) - v162) + 479531046) & 0x2CE0789A);
  v171 = STACK[0x1E88];
  LODWORD(STACK[0x2120]) = v139 - LODWORD(STACK[0x1E88]);
  v172 = v171 - v133;
  v173 = v133 - v129;
  v174 = STACK[0x1E68];
  LODWORD(STACK[0x2108]) = v129 - LODWORD(STACK[0x1E68]);
  v175 = LODWORD(STACK[0x1E28]) ^ v174;
  LODWORD(STACK[0x1E88]) = LODWORD(STACK[0x1E28]) + v125;
  v176 = STACK[0x1FB8];
  LODWORD(STACK[0x1E38]) = (LODWORD(STACK[0x1FB8]) ^ v125) - ((2 * (LODWORD(STACK[0x1FB8]) ^ v125) + 88689234) & 0x38516CD4);
  v177 = STACK[0x1F30];
  v178 = LODWORD(STACK[0x2020]) - LODWORD(STACK[0x1F30]);
  v179 = LODWORD(STACK[0x20F8]) + v157;
  LODWORD(STACK[0x1FD8]) = v128 - LODWORD(STACK[0x20F8]);
  v180 = STACK[0x1E60];
  LODWORD(STACK[0x1E68]) = LODWORD(STACK[0x1E60]) - v128;
  LODWORD(STACK[0x1FC8]) = (v180 ^ v178) - ((2 * (v180 ^ v178) + 42053690) & 0xA7A8FF4A);
  LODWORD(STACK[0x20F8]) = v161 ^ v149;
  v181 = STACK[0x1FA8];
  LODWORD(STACK[0x1E60]) = v149 - LODWORD(STACK[0x1FA8]) - ((2 * (v149 - LODWORD(STACK[0x1FA8])) + 4654400) & 0x445509A);
  v182 = STACK[0x2110];
  LODWORD(STACK[0x1E40]) = v181 - LODWORD(STACK[0x2110]) - ((2 * (v181 - LODWORD(STACK[0x2110])) + 105153476) & 0x37CF75A4);
  v183 = STACK[0x1E50];
  LODWORD(STACK[0x1F58]) = LODWORD(STACK[0x1E50]) - LODWORD(STACK[0x2140]) - ((2 * (LODWORD(STACK[0x1E50]) - LODWORD(STACK[0x2140])) + 109682962) & 0x5C78352C);
  v184 = STACK[0x1F28];
  LODWORD(STACK[0x2018]) = LODWORD(STACK[0x1F28]) + v183;
  v185 = v184 + LODWORD(STACK[0x2100]);
  v186 = STACK[0x1E58];
  LODWORD(STACK[0x2100]) = LODWORD(STACK[0x1E58]) - LODWORD(STACK[0x2100]);
  v187 = LODWORD(STACK[0x2230]) - v186;
  v188 = STACK[0x21B0];
  LODWORD(STACK[0x20B0]) = LODWORD(STACK[0x2230]) ^ LODWORD(STACK[0x21B0]);
  v189 = STACK[0x1F40];
  v190 = v189 - v188 - ((2 * (v189 - v188) + 131276630) & 0x6F291AC);
  v191 = STACK[0x1E80];
  LODWORD(STACK[0x2020]) = v159 ^ LODWORD(STACK[0x1E80]);
  v192 = v144 ^ v191;
  LODWORD(STACK[0x1E08]) = v144 + LODWORD(STACK[0x21C0]) - 2 * ((v144 + LODWORD(STACK[0x21C0]) + 485219456) & 0x48E67967 ^ (v144 + LODWORD(STACK[0x21C0])) & 0x20);
  v193 = STACK[0x1FB0];
  LODWORD(STACK[0x1E20]) = v150 ^ LODWORD(STACK[0x1FB0]);
  v194 = LODWORD(STACK[0x1E70]) + v193;
  v195 = STACK[0x2218];
  LODWORD(STACK[0x1F88]) = LODWORD(STACK[0x2218]) - LODWORD(STACK[0x1E70]);
  LODWORD(STACK[0x1FB0]) = (LODWORD(STACK[0x21C8]) ^ v195) - ((2 * (LODWORD(STACK[0x21C8]) ^ v195) + 240311408) & 0x295170B2);
  LODWORD(STACK[0x2230]) = v156 - 615502095 + ((727811750 - 2 * v156) | 0x9DFE1B77);
  LODWORD(STACK[0x1E30]) = v187 - ((2 * v187 + 268681936) & 0xC7DFA5A2);
  LODWORD(STACK[0x1F28]) = v179 - 2 * ((v179 + 7453070) & 0x14B3FE3 ^ v179 & 1);
  v196 = STACK[0x2058];
  LODWORD(STACK[0x2088]) = v178 ^ LODWORD(STACK[0x2058]);
  LODWORD(STACK[0x2218]) = v196 + v176 + 1606483086;
  v197 = STACK[0x1FF8];
  LODWORD(STACK[0x1E80]) = (v170 ^ LODWORD(STACK[0x1FF8])) - 2 * (((v170 ^ LODWORD(STACK[0x1FF8])) + 2005281568) & 0x6E8BC07D ^ (v170 ^ LODWORD(STACK[0x1FF8])) & 1);
  v198 = v177;
  LODWORD(STACK[0x21B0]) = v177 - 1850706004 + v164;
  LODWORD(STACK[0x1E58]) = v173 - ((2 * v173 - 1299714066) & 0x9232341A);
  v199 = v169 - LODWORD(STACK[0x2098]);
  v200 = LODWORD(STACK[0x2098]) - LODWORD(STACK[0x2210]);
  v201 = STACK[0x20F0];
  LODWORD(STACK[0x1FA8]) = LODWORD(STACK[0x20F0]) + LODWORD(STACK[0x2210]);
  v202 = STACK[0x2010];
  LODWORD(STACK[0x20F0]) = v201 + LODWORD(STACK[0x2010]);
  v203 = STACK[0x2008];
  LODWORD(STACK[0x1E00]) = LODWORD(STACK[0x2008]) + v202 - ((2 * (LODWORD(STACK[0x2008]) + v202) - 1581239100) & 0xBEB1238E);
  LODWORD(STACK[0x2010]) = v168 - ((2 * v168 - 603294616) & 0xF836809A);
  LODWORD(STACK[0x2210]) = v190 - 614279039;
  v204 = STACK[0x2220];
  LODWORD(STACK[0x1F80]) = LODWORD(STACK[0x2220]) ^ v160;
  v205 = STACK[0x2028];
  v206 = LODWORD(STACK[0x2028]) + 1019125118 + v204;
  LODWORD(STACK[0x2098]) = v206;
  v207 = STACK[0x2068];
  v208 = v182 + LODWORD(STACK[0x2068]) + ((v190 - 614279039) & 0x134264FE ^ 0x10022428 | (v190 - 614279039) & 0x134264FE ^ 0x34040D6);
  LODWORD(STACK[0x2208]) = v208 - 688967775 - ((2 * v208) & 0xADDE5F42);
  v209 = STACK[0x21F0];
  v210 = LODWORD(STACK[0x21F0]) + v205;
  LODWORD(STACK[0x1E28]) = v210;
  v211 = STACK[0x2238];
  v212 = LODWORD(STACK[0x2238]) + v209;
  LODWORD(STACK[0x2110]) = v212;
  v213 = STACK[0x2060];
  v214 = STACK[0x2090];
  LODWORD(STACK[0x2220]) = LODWORD(STACK[0x2090]) + LODWORD(STACK[0x2060]) + 1587058496;
  v215 = v214 + v211 + 1469258046;
  LODWORD(STACK[0x1FB8]) = v215;
  v216 = STACK[0x21D0];
  LODWORD(STACK[0x2238]) = LODWORD(STACK[0x21D0]) + v198;
  v217 = STACK[0x1F60];
  LODWORD(STACK[0x1F30]) = v216 - LODWORD(STACK[0x1F60]);
  v218 = STACK[0x20A0];
  LODWORD(STACK[0x21F0]) = LODWORD(STACK[0x20A0]) - v189;
  v219 = STACK[0x1FD0];
  v220 = LODWORD(STACK[0x1FD0]) ^ v218;
  LODWORD(STACK[0x1DD8]) = v220;
  v221 = STACK[0x2118];
  v222 = LODWORD(STACK[0x2118]) ^ v219;
  LODWORD(STACK[0x2000]) = v222;
  v223 = v221 - 1537716304;
  v224 = STACK[0x2148];
  LODWORD(STACK[0x21D0]) = v223 + LODWORD(STACK[0x2148]);
  v225 = v224 + v217 + 1257114655;
  LODWORD(STACK[0x2028]) = v225;
  v226 = LODWORD(STACK[0x2048]) - ((2 * LODWORD(STACK[0x2048]) + 2044975686) & 0x601C9ED0);
  LODWORD(STACK[0x2148]) = v192 - ((2 * v192 - 1697098342) & 0xFE6B746E);
  v227 = v172 - ((2 * v172 + 1648481838) & 0xDD1780F8);
  v228 = STACK[0x2158];
  LODWORD(STACK[0x20A0]) = LODWORD(STACK[0x2158]) - v197;
  v229 = STACK[0x2078];
  LODWORD(STACK[0x1E50]) = LODWORD(STACK[0x2078]) - v228;
  v230 = STACK[0x21F8];
  v231 = v229 + 2133241869 + LODWORD(STACK[0x21F8]);
  LODWORD(STACK[0x1FF8]) = v231;
  v232 = v175 - ((2 * v175 + 807187878) & 0xD45D0296);
  v233 = v230 + v207 + (v175 & 0x9A7BE24B) + (v175 & 0x9A7BE24B ^ 0x9A7BE24B);
  LODWORD(STACK[0x2090]) = v233;
  v234 = STACK[0x2040];
  v235 = LODWORD(STACK[0x2040]) ^ v213;
  LODWORD(STACK[0x2118]) = v235;
  v236 = v203 + v234 + 1290652205;
  LODWORD(STACK[0x1E18]) = v236;
  v237 = v199 - ((2 * v199 + 1356226004) & 0x94E77DB0);
  v238 = STACK[0x1FE0];
  v239 = LODWORD(STACK[0x2200]) ^ LODWORD(STACK[0x1FE0]);
  LODWORD(STACK[0x1E10]) = v239;
  v240 = STACK[0x21A0];
  v241 = LODWORD(STACK[0x21A0]) + v238;
  LODWORD(STACK[0x1E78]) = v241;
  v242 = STACK[0x2170];
  v243 = v242 - v240 - ((2 * (v242 - v240) + 1550468654) & 0xDD1780F8) - 1665080429;
  LODWORD(STACK[0x2068]) = v243;
  v244 = LODWORD(STACK[0x1D88]) ^ v167 ^ 0x8CF67E39 ^ v243;
  v245 = v200 - ((2 * v200 + 1942462878) & 0xDCF5286A);
  v227 -= 1616073837;
  LODWORD(STACK[0x2060]) = v227;
  v246 = v227 ^ (v244 + 1854652540 - ((2 * v244) & 0xDD1780F8));
  LODWORD(STACK[0x1D00]) = v241 ^ 0xAC5A652E;
  v247 = (v246 + 1249099480 - ((2 * v246) & 0x94E77DB0)) ^ v241 ^ 0xAC5A652E;
  v248 = STACK[0x2018];
  v249 = v194 - ((2 * v194 - 230217618) & 0xDD1780F8) + 1739543731;
  LODWORD(STACK[0x2058]) = v249;
  v250 = (v247 + 1854652540 - ((2 * v247) & 0xDD1780F8)) ^ v249;
  v237 -= 220271166;
  LODWORD(STACK[0x1CF8]) = v237;
  v251 = (v250 + 1249099480 - ((2 * v250) & 0x94E77DB0)) ^ v237;
  v252 = LODWORD(STACK[0x1E80]) + 1712450460;
  LODWORD(STACK[0x2078]) = v252;
  v253 = (v251 + 1854652540 - ((2 * v251) & 0xDD1780F8)) ^ v252;
  v254 = v248 - ((2 * v248 - 794519714) & 0x94E77DB0) + 851839623;
  LODWORD(STACK[0x1D50]) = v254;
  v255 = (v253 + 1249099480 - ((2 * v253) & 0x94E77DB0)) ^ v254;
  v256 = v245 + 677274884;
  LODWORD(STACK[0x21F8]) = v245 + 677274884;
  v257 = LODWORD(STACK[0x2280]) - 1957079364;
  LODWORD(STACK[0x1E70]) = v257;
  v258 = v231 ^ v222 ^ v257 ^ v256 ^ (v255 + 1853527093 - ((2 * v255) & 0xDCF5286A));
  v259 = STACK[0x2198];
  v260 = LODWORD(STACK[0x2050]) - 2007523960 + LODWORD(STACK[0x2198]);
  LODWORD(STACK[0x2050]) = v260;
  v261 = v259 ^ LODWORD(STACK[0x21C0]) ^ 0xB35137F1;
  LODWORD(STACK[0x1F60]) = v261;
  LODWORD(STACK[0x2200]) = v226 + 754990219;
  v262 = LODWORD(STACK[0x1FA8]) ^ 0xEF6ED429;
  LODWORD(STACK[0x1FA8]) = v262;
  v263 = v261 ^ v262 ^ LODWORD(STACK[0x1FD8]) ^ v233 ^ (v226 + 754990219) ^ (v258 - 1341239448 - ((2 * v258) & 0x601C9ED0));
  v264 = LODWORD(STACK[0x2010]) - 366970239;
  LODWORD(STACK[0x21C0]) = v264;
  v265 = (v263 - 65322931 - ((2 * v263) & 0xF836809A)) ^ v264;
  v266 = LODWORD(STACK[0x21C8]) + LODWORD(STACK[0x21A8]);
  LODWORD(STACK[0x1E80]) = v266;
  v267 = LODWORD(STACK[0x20C0]) - v242;
  LODWORD(STACK[0x2008]) = v267;
  v268 = v185 - ((2 * v185 - 497208588) & 0xAF8FBAD0) - 923371806;
  LODWORD(STACK[0x2170]) = v268;
  v269 = LODWORD(STACK[0x20F8]) + 1892310925;
  LODWORD(STACK[0x2048]) = v269;
  v270 = v267 ^ v266 ^ v269 ^ v225 ^ v212;
  v271 = LODWORD(STACK[0x20B0]) + 1867428727;
  LODWORD(STACK[0x2018]) = v271;
  v272 = v270 ^ v271 ^ v236 ^ v268 ^ (v265 + 1472716136 - ((2 * v265) & 0xAF8FBAD0));
  v273 = LODWORD(STACK[0x2148]) + 1285678340;
  LODWORD(STACK[0x2148]) = v273;
  v274 = LODWORD(STACK[0x2168]) - 483114046;
  LODWORD(STACK[0x2040]) = v274;
  v275 = v210 ^ v273 ^ v215 ^ v274 ^ (v272 + 2134227511 - ((2 * v272) & 0xFE6B746E));
  v276 = LODWORD(STACK[0x1F58]) + 1904274207;
  LODWORD(STACK[0x1F58]) = v276;
  v277 = LODWORD(STACK[0x2228]) - 2008393531;
  LODWORD(STACK[0x1DF0]) = v277;
  v278 = v277 ^ v276 ^ (v275 - 1371792746 - ((2 * v275) & 0x5C78352C));
  v279 = LODWORD(STACK[0x1FB0]) - 606984559;
  LODWORD(STACK[0x21A0]) = v279;
  v280 = LODWORD(STACK[0x2088]) - 1108705055;
  LODWORD(STACK[0x1FB0]) = v280;
  v281 = v279 ^ v280 ^ (v278 + 346601561 - ((2 * v278) & 0x295170B2));
  v282 = LODWORD(STACK[0x1E08]) - 439200313;
  LODWORD(STACK[0x1F48]) = v282;
  v283 = LODWORD(STACK[0x21B0]) ^ v282 ^ (v281 - 924419769 - ((2 * v281) & 0x91CCF28E));
  v284 = LODWORD(STACK[0x1E20]) - 1721212952;
  LODWORD(STACK[0x2010]) = v284;
  LODWORD(STACK[0x2198]) = v232 - 2109940706;
  LODWORD(STACK[0x1DF8]) = v220 - 1274778126;
  v285 = v206 ^ (v220 - 1274778126) ^ LODWORD(STACK[0x1F88]) ^ v284 ^ v235 ^ (v232 - 2109940706) ^ 0x8070CBDC ^ (v283 - 366050997 - ((2 * v283) & 0xD45D0296));
  v286 = ((v285 & 0x5CA486F ^ 0x5CA486F) + (v285 & 0x5CA486F)) ^ LODWORD(STACK[0x2220]);
  v287 = LODWORD(STACK[0x1E48]) - 1356924597;
  LODWORD(STACK[0x21C8]) = v287;
  v288 = LODWORD(STACK[0x1F80]) - 1613028915;
  LODWORD(STACK[0x1E08]) = v288;
  v289 = v288 ^ v287 ^ (v286 - ((2 * v286) & 0x50E994F4) + 678742650);
  v290 = LODWORD(STACK[0x21F0]) ^ 0xE4F939D6 ^ (v289 + 477323025 - ((2 * v289) & 0x38E6BE22));
  v291 = LODWORD(STACK[0x1F30]) - 520372085;
  LODWORD(STACK[0x1FE0]) = v291;
  v292 = LODWORD(STACK[0x1E38]) + 1053645715;
  v293 = v291 ^ v292 ^ v285 ^ (v290 - 1675053462 - ((2 * v290) & 0x38516CD4));
  v294 = LODWORD(STACK[0x1E00]) + 809020457;
  LODWORD(STACK[0x2158]) = v294;
  v295 = LODWORD(STACK[0x2080]) ^ v294 ^ (v293 + 1599640007 - ((2 * v293) & 0xBEB1238E));
  v296 = STACK[0x1FE8];
  v297 = LODWORD(STACK[0x1FE8]) + LODWORD(STACK[0x2140]);
  LODWORD(STACK[0x1E20]) = v297;
  v298 = STACK[0x2230];
  v299 = LODWORD(STACK[0x2218]) ^ v297 ^ v260 ^ LODWORD(STACK[0x2230]) ^ (v295 + 822145604 - ((2 * v295) & 0x6201E488));
  v300 = LODWORD(STACK[0x1E30]) + 1811002425;
  LODWORD(STACK[0x1F30]) = v300;
  v301 = (v299 + 1676661457 - ((2 * v299) & 0xC7DFA5A2)) ^ v300;
  v302 = (v301 - 2089203498 - ((2 * v301) & 0x6F291AC)) ^ LODWORD(STACK[0x2210]);
  v303 = LODWORD(STACK[0x1E40]) - 16122700;
  LODWORD(STACK[0x2140]) = v303;
  v304 = LODWORD(STACK[0x2108]) - 1515002789;
  v305 = v304 ^ v303 ^ (v302 - 1679312174 - ((2 * v302) & 0x37CF75A4));
  v306 = LODWORD(STACK[0x1F28]) - 943916688;
  v307 = v306 ^ LODWORD(STACK[0x2270]) ^ (v305 - 2125774878 - ((2 * v305) & 0x2967FC4));
  v308 = LODWORD(STACK[0x1FC8]) + 1427462082;
  v309 = LODWORD(STACK[0x2020]) ^ v308 ^ (v307 + 1406435237 - ((2 * v307) & 0xA7A8FF4A));
  v310 = LODWORD(STACK[0x20F0]) + 191030275;
  LODWORD(STACK[0x1FD0]) = v310;
  v311 = LODWORD(STACK[0x2100]) - 1971322087;
  v312 = v310 ^ v239 ^ v311 ^ LODWORD(STACK[0x2208]) ^ (v309 - 688967775 - ((2 * v309) & 0xADDE5F42));
  v313 = LODWORD(STACK[0x1E58]) + 576524804;
  LODWORD(STACK[0x1F28]) = v313;
  v314 = LODWORD(STACK[0x2120]) + 1969936285;
  LODWORD(STACK[0x1FC8]) = v314;
  v315 = v313 ^ v314 ^ (v312 - 921101811 - ((2 * v312) & 0x9232341A));
  v316 = LODWORD(STACK[0x1E60]) - 1304024339;
  LODWORD(STACK[0x1F40]) = v316;
  v317 = LODWORD(STACK[0x21D0]) ^ v316 ^ (v315 - 2111657907 - ((2 * v315) & 0x445509A));
  v318 = LODWORD(STACK[0x1FC0]) + 1153090656;
  v319 = STACK[0x2268];
  v320 = LODWORD(STACK[0x20A0]) + 96865005;
  LODWORD(STACK[0x1FC0]) = v320;
  v321 = STACK[0x1E68];
  LODWORD(STACK[0x1DE8]) = v319 - 1447289169;
  v322 = v318 ^ v320 ^ v321 ^ (v319 - 1447289169) ^ (v317 + 376454221 - ((2 * v317) & 0x2CE0789A));
  v323 = LODWORD(STACK[0x1F38]) + 2053469530;
  v324 = LODWORD(STACK[0x2248]) ^ v323 ^ (v322 - 1252368097 - ((2 * v322) & 0x6AB4C23E));
  v325 = LODWORD(STACK[0x20A8]) ^ v296;
  LODWORD(STACK[0x1F38]) = v325;
  v326 = LODWORD(STACK[0x1EA0]) + 520337670;
  v327 = v325 ^ v326 ^ (v324 - 1727030474 - ((2 * v324) & 0x321F366C));
  v328 = LODWORD(STACK[0x1E98]) + 1613740963;
  v329 = LODWORD(STACK[0x2188]) + 2038160456;
  v330 = v329 ^ v328 ^ (v327 + 261443599 - ((2 * v327) & 0x1F2AA01E));
  v331 = LODWORD(STACK[0x1E90]) - 1724402683;
  LODWORD(STACK[0x1EA0]) = v331;
  v332 = STACK[0x1E88];
  v333 = v331 ^ LODWORD(STACK[0x1E88]) ^ 0xD3B7553E ^ (v330 + 477323025 - ((2 * v330) & 0x38E6BE22));
  v334 = LODWORD(STACK[0x1E50]) ^ 0x60E372F9;
  v335 = (v333 + 477323025 - ((2 * v333) & 0x38E6BE22)) ^ v334;
  v336 = LODWORD(STACK[0x1EA8]) - 403810442;
  v337 = (v335 - 1943897635 - ((2 * v335) & 0x1844F3BA)) ^ v336;
  v338 = LODWORD(STACK[0x1F00]) + 1500266497;
  v339 = (v337 - 1827220177 - ((2 * v337) & 0x262DAA5E)) ^ v338;
  v340 = LODWORD(STACK[0x1EF0]) - 113636307;
  v341 = v340 ^ LODWORD(STACK[0x2238]) ^ (v339 - 2046370747 - ((2 * v339) & 0xC0DB88A));
  v342 = LODWORD(STACK[0x1EB0]) - 965605697;
  v343 = (v341 + 991845120 - ((2 * v341) & 0x763CB600)) ^ v342;
  v344 = LODWORD(STACK[0x1F18]) + 450607685;
  v345 = (v343 + 477323025 - ((2 * v343) & 0x38E6BE22)) ^ v344;
  v346 = LODWORD(STACK[0x1F08]) + 537420889;
  v347 = (v345 - 654406599 - ((2 * v345) & 0xB1FD1872)) ^ v346;
  v348 = LODWORD(STACK[0x22A8]) ^ v319;
  v349 = LODWORD(STACK[0x1EB8]) + 579800596;
  v350 = v349 ^ (v348 + 941621561) ^ (v347 + 840037157 - ((2 * v347) & 0x6423E64A));
  LODWORD(STACK[0x1E40]) = v323;
  v351 = LODWORD(STACK[0x1F80]) + (v323 ^ 0x4AA59EE0) - LODWORD(STACK[0x1F60]);
  LODWORD(STACK[0x1EB8]) = v348;
  v352 = LODWORD(STACK[0x2080]) ^ 0x4E2C8888;
  v353 = (v351 + v348 + (v298 ^ 0x3100F244) + 1160252360 + 1472716136 - ((2 * (v351 + v348 + (v298 ^ 0x3100F244) + 1160252360)) & 0xAF8FBAD0)) ^ LODWORD(STACK[0x2170]);
  LODWORD(STACK[0x1DC0]) = v352;
  v354 = v353 - v352;
  v355 = LODWORD(STACK[0x2000]) ^ 0x125B9DE0;
  LODWORD(STACK[0x1E30]) = v355;
  v356 = LODWORD(STACK[0x1F20]) - 1229701344;
  v357 = (v350 - 1191414106 - ((2 * v350) & 0x71F8ED4C)) ^ v356;
  LODWORD(STACK[0x1E98]) = v357 + 992952206 - ((2 * v357) & 0x765E7F1C);
  v358 = (v354 + v355 + 1249099480 - ((2 * (v354 + v355)) & 0x94E77DB0)) ^ LODWORD(STACK[0x1D50]);
  LODWORD(STACK[0x1E38]) = v326;
  LODWORD(STACK[0x1DE0]) = v329;
  v359 = (v342 ^ 0x3B1E5B00) + (LODWORD(STACK[0x1F48]) ^ 0x371986B8) + LODWORD(STACK[0x2028]) + (LODWORD(STACK[0x2200]) ^ 0xB00E4F68) + (v329 ^ v326 ^ (v358 - 1727030474 - ((2 * v358) & 0x321F366C)));
  LODWORD(STACK[0x1EF0]) = v336;
  v360 = LODWORD(STACK[0x2270]) ^ 0x3CDFB4A7;
  LODWORD(STACK[0x1EB0]) = v360;
  v361 = 1274778126 - v360 - LODWORD(STACK[0x1DD8]);
  LODWORD(STACK[0x1E68]) = v321 ^ 0x68693AE3;
  LODWORD(STACK[0x1E60]) = v292;
  LODWORD(STACK[0x1E50]) = v308;
  v362 = LODWORD(STACK[0x1FD8]) ^ 0xB71CE4D1;
  v363 = (v359 + (v336 ^ 0x73DD8622) - 1371792744 - ((2 * (v359 + (v336 ^ 0x73DD8622) + 2)) & 0x5C78352C)) ^ LODWORD(STACK[0x1F58]);
  LODWORD(STACK[0x1F20]) = v362;
  LODWORD(STACK[0x1DD8]) = v304;
  v364 = ((v361 + (v321 ^ 0x68693AE3) + (v292 ^ 0x9C28B66A) + (v308 ^ 0xAC2B805A) + v362 + v363 + 1) ^ v304) - LODWORD(STACK[0x2050]);
  LODWORD(STACK[0x2080]) = v328;
  v365 = v328 ^ LODWORD(STACK[0x21B0]) ^ (v364 + 261443599 - ((2 * v364) & 0x1F2AA01E));
  LODWORD(STACK[0x1D58]) = v356;
  LODWORD(STACK[0x1F80]) = v311;
  LODWORD(STACK[0x1E48]) = v306;
  v366 = (((v311 + (v356 ^ 0xB8FC76A6) + v365 - 2125774878 - ((2 * (v311 + (v356 ^ 0xB8FC76A6) + v365)) & 0x2967FC4)) ^ v306) + (LODWORD(STACK[0x2210]) ^ 0x837948D6)) ^ LODWORD(STACK[0x2090]);
  v367 = v338 ^ 0x9316D52F;
  v368 = LODWORD(STACK[0x2248]) ^ 0x146EF265;
  LODWORD(STACK[0x1D98]) = v368;
  LODWORD(STACK[0x1DC8]) = v367;
  v369 = LODWORD(STACK[0x2118]) ^ LODWORD(STACK[0x2148]) ^ (v366 + v367 - v368 + 2134227511 - ((2 * (v366 + v367 - v368)) & 0xFE6B746E));
  v370 = LODWORD(STACK[0x2008]) ^ 0xB20D4C50 ^ LODWORD(STACK[0x2058]) ^ (v369 + 1854652540 - ((2 * v369) & 0xDD1780F8));
  v371 = LODWORD(STACK[0x1E28]) ^ 0x9F54328F;
  v372 = LODWORD(STACK[0x1E20]) ^ 0x59C51F6D;
  v373 = LODWORD(STACK[0x21C0]) ^ 0xFC1B404D;
  LODWORD(STACK[0x1E20]) = v372;
  LODWORD(STACK[0x1E28]) = v371;
  v374 = v373 - v372 - v371 + LODWORD(STACK[0x2040]) + (LODWORD(STACK[0x1F30]) ^ 0x63EFD2D1) + v370;
  v375 = ((2 * v332) & 0xFF6AFCFE ^ 0x5F4238AA) + (v332 ^ 0x5054E3AA);
  LODWORD(STACK[0x1D80]) = v334;
  v376 = (LODWORD(STACK[0x2140]) ^ 0x6418452D) + LODWORD(STACK[0x1FF8]);
  v377 = LODWORD(STACK[0x2020]) ^ 0x5CA486F;
  LODWORD(STACK[0x1D90]) = v377;
  v378 = v376 + v377 + ((v374 + 477323025 - ((2 * v374) & 0x38E6BE22)) ^ v334) + 1;
  LODWORD(STACK[0x1E58]) = v346;
  v379 = (((v378 - 654406599 - ((2 * v378) & 0xB1FD1872)) ^ v346) + LODWORD(STACK[0x1FD0])) ^ LODWORD(STACK[0x1FB0]);
  LODWORD(STACK[0x1FD8]) = v318;
  LODWORD(STACK[0x1FE8]) = v349;
  v380 = (LODWORD(STACK[0x21F0]) ^ 0xF88A66C7) - LODWORD(STACK[0x1FA8]);
  LODWORD(STACK[0x1EA8]) = v375;
  v381 = v380 - v375 + 2142600831 + ((v379 + (v318 ^ 0x16703C4D) + 840037157 - ((2 * (v379 + (v318 ^ 0x16703C4D))) & 0x6423E64A)) ^ v349);
  v382 = (LODWORD(STACK[0x21C8]) ^ 0xD78B3585) + LODWORD(STACK[0x1FE0]) + (LODWORD(STACK[0x2198]) ^ 0xEA2E814B) + ((v381 + 346601561 - ((2 * v381) & 0x295170B2)) ^ LODWORD(STACK[0x21A0])) + 1;
  v383 = (LODWORD(STACK[0x1E18]) ^ 0xB3EFE82D) + 1276123091 + ((2 * LODWORD(STACK[0x1E18])) & 0x67DFD05A);
  v384 = LODWORD(STACK[0x1F38]) ^ 0x452A8C8A ^ LODWORD(STACK[0x1FC8]) ^ (((v382 + 1249099480 - ((2 * v382) & 0x94E77DB0)) ^ LODWORD(STACK[0x1D00])) + 2 * (v382 & (LODWORD(STACK[0x1E78]) ^ 0x6629DBF6)));
  v385 = (LODWORD(STACK[0x1F40]) ^ 0x8222A84D) + 2008393531 - LODWORD(STACK[0x2228]);
  v386 = LODWORD(STACK[0x2110]) ^ 0x909749B8;
  LODWORD(STACK[0x1F18]) = v386;
  v387 = v385 + v386 + v384;
  v388 = LODWORD(STACK[0x2220]) + LODWORD(STACK[0x2010]) + (v344 ^ 0xE38CA0EE);
  v389 = v387 ^ LODWORD(STACK[0x2018]);
  v390 = LODWORD(STACK[0x1EA0]) ^ 0x1C735F11;
  LODWORD(STACK[0x1DB8]) = v390;
  v391 = v390 + v388 + v389;
  v392 = LODWORD(STACK[0x1E10]) ^ 0x6908C157;
  LODWORD(STACK[0x1E88]) = v340;
  LODWORD(STACK[0x1E18]) = v392;
  v393 = v392 + (v340 ^ 0x79F923BA) + (LODWORD(STACK[0x2068]) ^ 0x91743F83);
  v394 = (v391 + 1) ^ LODWORD(STACK[0x1FB8]);
  LODWORD(STACK[0x1F08]) = v383;
  v395 = ((v393 + v383 + v394 - 921101809 - ((2 * (v393 + v383 + v394 + 2)) & 0x9232341A)) ^ LODWORD(STACK[0x1F28])) + LODWORD(STACK[0x1FC0]);
  v396 = 1957079364 - LODWORD(STACK[0x2280]) + (LODWORD(STACK[0x2158]) ^ 0xA0A76E38) + ((v395 + 1853527093 - ((2 * v395) & 0xDCF5286A)) ^ LODWORD(STACK[0x21F8])) + 1;
  v397 = STACK[0x2070] & 0x8000;
  if ((v396 & v397) != 0)
  {
    v397 = -v397;
  }

  v398 = STACK[0x2070] & 0xFFFF7FFF ^ 0xCB143F09 ^ (v397 + v396);
  v399 = LODWORD(STACK[0x1F88]) ^ 0x950B5B63;
  v400 = 1447289169 - LODWORD(STACK[0x2268]);
  LODWORD(STACK[0x1E00]) = v399;
  v401 = LODWORD(STACK[0x1E80]) ^ 0xB138DFAB;
  v402 = v400 - v399 + (LODWORD(STACK[0x2060]) ^ 0x6E8BC07C) + (LODWORD(STACK[0x2208]) ^ 0x2910D05E) + v398 + 1;
  LODWORD(STACK[0x1F00]) = v401;
  v403 = (LODWORD(STACK[0x2078]) ^ 0x91743F83) - (LODWORD(STACK[0x2238]) ^ 0xED34384B) + (LODWORD(STACK[0x1CF8]) ^ 0xB58C4127) - LODWORD(STACK[0x21D0]) + ((LODWORD(STACK[0x2048]) - LODWORD(STACK[0x2218]) + (v402 ^ v401)) ^ LODWORD(STACK[0x2098])) + 2;
  LODWORD(STACK[0x1EA0]) = ((2 * v403) & 0x3DFB6D1E) + (v403 ^ 0x1EFDB68F);
  v404 = STACK[0x1F68];
  LODWORD(STACK[0x19D4]) = LODWORD(STACK[0x1D88]) ^ 0x7F829AFB;
  v405 = LODWORD(STACK[0x21E0]) ^ 0xCE189CA5;
  LODWORD(STACK[0x2280]) = LODWORD(STACK[0x21E8]) ^ 0x734370CA;
  STACK[0x2238] = LODWORD(STACK[0x2128]) ^ 0x34C0CF26u;
  STACK[0x22A8] = v405;
  v406 = *(STACK[0x2298] + ((v35 - 84) ^ 0xE0)) ^ (v35 - 84) ^ 0x74 ^ (((v35 - 84) ^ 0x74) - ((2 * ((v35 - 84) ^ 0x74) + 2) & 0xA) - 114) ^ 0x37;
  v407 = *(*(&off_279CA5FD0 + (v35 ^ 0x91A)) + 167) ^ 0x443282C2;
  v408 = ((v406 >> 2) | (v406 << 6)) >> LODWORD(STACK[0x22B0]);
  v409 = ((v407 & 0x6FF7849E ^ 0x6FF7849E) + (v407 & 0x6FF7849E)) ^ v407;
  v410 = v409 ^ ((v409 & STACK[0x2280]) >> 1);
  v411 = v410 & STACK[0x2240];
  v412 = (v410 & STACK[0x2238]) << STACK[0x22C0];
  v413 = (v408 - 153811428 - ((2 * v408) & 0xEDAA0C38)) ^ LODWORD(STACK[0x2160]);
  *(STACK[0x8A0] + 4 * v413) = LODWORD(STACK[0x22A0]) ^ 0x3B1FF7C3 ^ LODWORD(STACK[0x2288]) ^ ((v411 >> v404) + v412 + 991950787 - ((2 * ((v411 >> v404) + v412)) & 0x763FEF86));
  v414 = *(*(&off_279CA5FD0 + v35 - 2476) + 150);
  LOBYTE(v413) = *(STACK[0x2180] + (((v413 >> 2) | ((v413 & 3) << 6)) ^ 0x4DLL)) ^ 0xA7;
  v415 = ((v413 ^ (2 * v413 * v413) ^ 5) + 13);
  *(STACK[0x7C0] + 4 * (57 * v415 - 262 * (((912513 * v415) >> 16) >> 6))) = LODWORD(STACK[0x22B8]) ^ (v414 + 1961751864 - ((2 * v414) & 0x1EA70)) ^ 0x1566A474;
  return (*(STACK[0x22F8] + 8 * (v35 ^ 0x11)))();
}

uint64_t sub_26AA5DF1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  STACK[0x1EF8] = 0;
  LODWORD(STACK[0x1E90]) = LODWORD(STACK[0x20A8]) - LODWORD(STACK[0x21A8]);
  LODWORD(STACK[0x1AE4]) = v10 - 2 * LODWORD(STACK[0x1F10]);
  LODWORD(STACK[0x1E80]) = LODWORD(STACK[0x20C0]) + LODWORD(STACK[0x2178]);
  LODWORD(STACK[0x22B8]) = v9;
  v14 = STACK[0x20E8] << v12;
  v15 = STACK[0x20E8];
  v16 = STACK[0x22A8] >> v13;
  v17 = STACK[0x22A8];
  v18 = (((v9 ^ 0x1C735F11) & v16) << v13) + (((v9 ^ 0x1C735F11) & v14) >> v12);
  v19 = 668 * (v8 ^ 0x595);
  LODWORD(STACK[0x2288]) = v19;
  v20 = STACK[0x2278];
  v21 = (v19 + 1083965628) ^ LODWORD(STACK[0x2278]);
  LODWORD(STACK[0x1DD0]) = v18 ^ (((v18 ^ (((v18 ^ ((v21 & v18) >> 1)) & v21) >> 1)) & v21) >> 1);
  v22 = ((a8 & v16) << v13) ^ ((a8 & v14) >> v12);
  v23 = v22 ^ ((v21 & v22) >> 1);
  v24 = ((((v23 & v21) >> 1) + 1775809920 - (v23 & v21 & 0xD3B16B00)) ^ 0x69D8B580) & v21;
  v25 = ((v24 >> 1) + 477323025 - (v24 & 0x38E6BE22)) ^ v23;
  v26 = STACK[0x2130];
  v27 = v20 ^ 0x409C0B20;
  v28 = ((LODWORD(STACK[0x2130]) ^ 0x204E0594) & (v20 ^ 0x9C0B2Cu)) >> 2;
  v29 = STACK[0x1F70];
  v30 = v28 & STACK[0x1F70] & (((v25 ^ LODWORD(STACK[0x1F78])) & (v20 ^ 0x409C0B20u)) >> 4);
  LODWORD(STACK[0x1CE8]) = v28 & STACK[0x1F70];
  LODWORD(STACK[0x2020]) = v30 ^ v25;
  v31 = STACK[0x2240];
  v32 = STACK[0x22B0];
  v33 = STACK[0x2240];
  v34 = STACK[0x2240] >> v32;
  LODWORD(STACK[0x1DA0]) = v34;
  v35 = (a4 & (v31 >> v32)) << v32;
  v36 = v32;
  v37 = STACK[0x2238];
  v38 = STACK[0x2238];
  STACK[0x22A0] = STACK[0x2238] << v11;
  v39 = ((a4 & (v37 << v11)) >> v11) + v35;
  v40 = STACK[0x2280];
  v41 = STACK[0x21E8];
  v42 = LODWORD(STACK[0x21E8]) ^ 0x734370C8;
  LODWORD(STACK[0x1E78]) = LODWORD(STACK[0x21E8]) >> 1;
  v43 = (v41 >> 1) ^ 0x39A1B865;
  v44 = v43 & (((v39 ^ ((v39 & v40) >> 1)) & (v41 ^ 0x734370C8)) >> 2) ^ v39 ^ ((v39 & v40) >> 1);
  v45 = ((((v41 >> 1) ^ 0x39A1B864) & (v41 ^ 0x334370C8)) >> 2) & v43;
  LODWORD(STACK[0x1CD8]) = v41 ^ 0x734370C0;
  LODWORD(STACK[0x1CD0]) = v45;
  LODWORD(STACK[0x1E10]) = v45 & ((v44 & (v41 ^ 0x734370C0)) >> 4) ^ v44;
  v46 = (((LODWORD(STACK[0x1E88]) ^ 0x8606DC45) & v34) << v36) + (((LODWORD(STACK[0x1E88]) ^ 0x8606DC45) & (v38 << v12)) >> v12);
  v47 = v43 & (((v46 ^ ((v46 & v40) >> 1)) & v42) >> 2) ^ v46 ^ ((v46 & v40) >> 1);
  LODWORD(v37) = (LODWORD(STACK[0x2088]) - ((2 * LODWORD(STACK[0x1FB0])) & 0x3C2B842A) + 1543521014) ^ LODWORD(STACK[0x2150]);
  LODWORD(STACK[0x1E88]) = v37;
  v48 = v40;
  LODWORD(STACK[0x1CE4]) = v42;
  LODWORD(STACK[0x1CE0]) = v43;
  LODWORD(STACK[0x1F88]) = v47 ^ 0x1C735F11 ^ v43 & ((((v40 & ((v47 & v40) >> 1)) >> (!(v37 & 1) + (v37 & 1))) & v42) >> 2);
  LODWORD(v16) = ((STACK[0x1DC8] & v16) << v13) ^ ((STACK[0x1DC8] & (v15 << v11)) >> v11);
  LODWORD(v16) = v29 & (((v16 ^ ((v21 & v16) >> 1)) & v21) >> 2) ^ v16 ^ ((v21 & v16) >> 1);
  LODWORD(STACK[0x1CF0]) = v27;
  LODWORD(STACK[0x1DC8]) = v28 & (v26 ^ 0x4E0596) & ((v16 & v27) >> 4) ^ v16;
  v49 = (((LODWORD(STACK[0x1EF0]) ^ 0x8C2279DD) & (v38 << v12)) >> v12) + (((LODWORD(STACK[0x1EF0]) ^ 0x8C2279DD) & (((v17 >> v36) - 60001450 - ((2 * (v17 >> v36)) & 0xF8D8E6AC)) ^ 0xFC6C7356)) << v36);
  v50 = v43 & (((v49 ^ ((v49 & v48) >> 1)) & v42) >> 2) ^ v49 ^ ((v49 & v48) >> 1);
  LODWORD(STACK[0x1F78]) = v50 ^ 0x1C735F11 ^ v45 & ((v50 & (v41 ^ 0x734370C0)) >> 4);
  v51 = ((STACK[0x1DB8] & (v33 >> v13)) << v13) ^ ((STACK[0x1DB8] & (v15 << v11)) >> v11);
  v52 = v29 & (((v51 ^ ((v21 & v51) >> 1)) & v21) >> 2) ^ v51 ^ ((v21 & v51) >> 1);
  LODWORD(STACK[0x1EF0]) = v28 & v29 & ((v52 & v27) >> 4) ^ v52;
  v53 = LODWORD(STACK[0x20B0]) - ((2 * LODWORD(STACK[0x2018])) & 0x3C2B842A);
  LODWORD(v33) = STACK[0x2038];
  LODWORD(STACK[0x1CAC]) = LODWORD(STACK[0x2038]) ^ 0x8D342DD1 ^ LODWORD(STACK[0x1FB8]);
  LODWORD(STACK[0x1D48]) = v33 ^ 0x8D342DD1 ^ LODWORD(STACK[0x2090]);
  v54 = LODWORD(STACK[0x2168]) - ((2 * LODWORD(STACK[0x2040])) & 0x3C2B842A);
  LODWORD(STACK[0x1C9C]) = v33 ^ 0xA837624C ^ LODWORD(STACK[0x2098]);
  LODWORD(STACK[0x1CA4]) = v33 ^ 0xA837624C ^ LODWORD(STACK[0x2010]);
  LODWORD(STACK[0x1CA0]) = v33 ^ 0xA837624C ^ LODWORD(STACK[0x21B0]);
  v55 = LODWORD(STACK[0x20F8]) - ((2 * LODWORD(STACK[0x2048])) & 0x3C2B842A);
  v56 = STACK[0x1ED8];
  LODWORD(STACK[0x1DB8]) = LODWORD(STACK[0x1ED8]) ^ 0x2C08846D ^ (v53 + 224687500);
  LODWORD(STACK[0x1DB0]) = v56 ^ 0x2C08846D ^ (v55 + 249569698);
  LODWORD(STACK[0x1DD8]) = LODWORD(STACK[0x2108]) - ((2 * LODWORD(STACK[0x1DD8])) & 0x13C09EC2);
  v57 = LODWORD(STACK[0x2228]) - ((2 * LODWORD(STACK[0x1DF0])) & 0x3C2B842A);
  LODWORD(STACK[0x1D08]) = v56 ^ 0x754789A2 ^ (v54 - 2125855273);
  LODWORD(STACK[0x1D38]) = v56 ^ 0x754789A2 ^ (v57 + 643832538);
  v58 = (STACK[0x21E0] & 0x4DFE4CEA ^ 0x4C180CA0) + (STACK[0x21E0] & 0x4DFE4CEA ^ 0x1E6404A) + LODWORD(STACK[0x1DC0]) - 1308511466;
  v59 = LODWORD(STACK[0x2100]) - ((2 * LODWORD(STACK[0x1F80])) & 0x3C2B842A);
  LODWORD(STACK[0x1D40]) = v33 ^ 0xFA56BF45 ^ LODWORD(STACK[0x2050]);
  LODWORD(STACK[0x1DA8]) = v33 ^ 0xFA56BF45 ^ v58;
  LODWORD(STACK[0x1CA8]) = v33 ^ 0xFA56BF45 ^ LODWORD(STACK[0x2218]);
  LODWORD(STACK[0x1DC0]) = v33 ^ 0xFA56BF45 ^ LODWORD(STACK[0x1DF8]);
  v60 = LODWORD(STACK[0x2120]) - ((2 * LODWORD(STACK[0x1FC8])) & 0x3C2B842A);
  v61 = LODWORD(STACK[0x20A0]) - ((2 * LODWORD(STACK[0x1FC0])) & 0x3C2B842A);
  v62 = LODWORD(STACK[0x20F0]) - ((2 * LODWORD(STACK[0x1FD0])) & 0x3C2B842A);
  LODWORD(STACK[0x1F80]) = v56 ^ 0x3390BEFB ^ (v59 + 680903982);
  LODWORD(STACK[0x2018]) = v56 ^ 0x3390BEFB ^ (v60 + 327195058);
  LODWORD(STACK[0x20F8]) = v56 ^ 0x3390BEFB ^ (v62 - 1451710952);
  LODWORD(STACK[0x1DF8]) = LODWORD(STACK[0x1D90]) - 1642741227 - ((2 * LODWORD(STACK[0x1D90])) & 0x3C2B842A);
  v63 = LODWORD(STACK[0x2268]) - ((2 * LODWORD(STACK[0x1DE8])) & 0x3C2B842A);
  v64 = LODWORD(STACK[0x2188]) - 2 * (STACK[0x1DE0] & 0x1E15C217 ^ STACK[0x2188] & 2);
  v65 = STACK[0x2248] & 2;
  LODWORD(v37) = STACK[0x1D98];
  LODWORD(STACK[0x2010]) = v56 ^ 0xF6C91147 ^ (v61 - 1545876222);
  LODWORD(STACK[0x1F70]) = v56 ^ 0xF6C91147 ^ (v63 + 1204936900);
  LODWORD(STACK[0x1F68]) = v56 ^ 0xF6C91147 ^ (v37 - 1642741227 - 2 * (v37 & 0x1E15C217 ^ v65));
  LODWORD(STACK[0x21B0]) = v33 ^ 0x80EFC38D ^ LODWORD(STACK[0x1E08]);
  LODWORD(STACK[0x20F0]) = v33 ^ 0x80EFC38D ^ LODWORD(STACK[0x2220]);
  v66 = (LODWORD(STACK[0x1F20]) - 1341239448 - ((2 * LODWORD(STACK[0x1F20])) & 0x601C9ED0)) ^ LODWORD(STACK[0x2200]);
  v67 = STACK[0x1E30];
  v68 = LODWORD(STACK[0x21F8]) ^ LODWORD(STACK[0x1E30]) ^ (v66 + 1853527093 - ((2 * v66) & 0xDCF5286A));
  v69 = (v68 + 1854652540 - ((2 * v68) & 0xDD1780F8)) ^ LODWORD(STACK[0x2068]);
  v70 = (v69 + 1854652540 - ((2 * v69) & 0xDD1780F8)) ^ LODWORD(STACK[0x2060]);
  v71 = (v70 + 1854652540 - ((2 * v70) & 0xDD1780F8)) ^ LODWORD(STACK[0x2058]);
  v72 = (v71 + 1854652540 - ((2 * v71) & 0xDD1780F8)) ^ LODWORD(STACK[0x2078]);
  LODWORD(v37) = v56 ^ LODWORD(STACK[0x2170]) ^ 0x4BC81ADC;
  LODWORD(STACK[0x1FB8]) = v37;
  v73 = (v72 - 420135602 - ((2 * v72) & 0xCDEA7A9C)) ^ v37;
  LODWORD(v37) = v33 ^ 0x7A69A1D2 ^ LODWORD(STACK[0x1F00]);
  LODWORD(STACK[0x2040]) = v37;
  v74 = (v73 - 420135602 - ((2 * v73) & 0xCDEA7A9C)) ^ v37;
  LODWORD(v37) = v56 ^ (LODWORD(STACK[0x1F18]) - 1642741227 - 2 * (STACK[0x1F18] & 0x1E15C217 ^ STACK[0x2110] & 2)) ^ 0x821A05A1;
  LODWORD(STACK[0x2050]) = v37;
  v75 = (v74 - 420135602 - ((2 * v74) & 0xCDEA7A9C)) ^ v37;
  LODWORD(v37) = v33 ^ 0x7A69A1D2 ^ LODWORD(STACK[0x1F08]);
  LODWORD(STACK[0x1FC8]) = v37;
  v76 = (v75 - 420135602 - ((2 * v75) & 0xCDEA7A9C)) ^ v37;
  STACK[0x2270] = v11;
  v77 = STACK[0x2160];
  LODWORD(v16) = LODWORD(STACK[0x2148]) ^ LODWORD(STACK[0x2160]);
  LODWORD(STACK[0x2048]) = v16;
  v78 = (v76 - 1981760469 - ((2 * v76) & 0x13C17856)) ^ v16;
  v79 = STACK[0x1E28];
  LODWORD(v16) = v56 ^ (v79 - 1642741227 - ((2 * v79) & 0x3C2B842A)) ^ 0xED0F84C4;
  LODWORD(STACK[0x1FB0]) = v16;
  v80 = (v78 - 1981760469 - ((2 * v78) & 0x13C17856)) ^ v16;
  LODWORD(v16) = v56 ^ LODWORD(STACK[0x21C0]) ^ 0x8F01069C;
  LODWORD(STACK[0x1FD0]) = v16;
  v81 = (v80 - 1981760469 - ((2 * v80) & 0x13C17856)) ^ v16;
  LODWORD(v16) = LODWORD(STACK[0x21A0]) ^ v77;
  LODWORD(STACK[0x20B0]) = v16;
  v82 = (v81 - 495075771 - ((2 * v81) & 0xC4FB7C8A)) ^ v16;
  v83 = STACK[0x1F58];
  LODWORD(v37) = v33 ^ LODWORD(STACK[0x1F58]) ^ 0xBB403A21;
  LODWORD(STACK[0x1FC0]) = v37;
  v84 = (v82 - 1981760469 - ((2 * v82) & 0x13C17856)) ^ v37;
  v85 = STACK[0x1F48];
  LODWORD(v37) = v56 ^ LODWORD(STACK[0x1F48]) ^ 0xD0613DF8;
  LODWORD(STACK[0x2088]) = v37;
  v86 = (v84 - 495075770 + ~((2 * v84) & 0xC4FB7C8A)) ^ v37;
  LODWORD(v37) = v56 ^ LODWORD(STACK[0x2198]) ^ 0xF2A9C5F4;
  LODWORD(STACK[0x20A0]) = v37;
  v87 = (v86 - 495075770 + ~((2 * v86) & 0xC4FB7C8A)) ^ v37;
  v88 = LODWORD(STACK[0x2118]) ^ 0x239E33CD;
  LODWORD(v37) = v56 ^ 0x789C67FE ^ (v88 - 1642741227 - 2 * (v88 & 0x1E15C217 ^ STACK[0x2118] & 2));
  LODWORD(STACK[0x2168]) = v37;
  v89 = (v87 + 477323025 - ((2 * v87) & 0x38E6BE22)) ^ v37;
  v90 = STACK[0x1E00];
  LODWORD(v37) = v56 ^ (v90 - 1642741227 - ((2 * v90) & 0x3C2B842A)) ^ 0x869286AA;
  LODWORD(STACK[0x20C0]) = v37;
  v91 = (v89 - 495075771 - ((2 * v89) & 0xC4FB7C8A)) ^ v37;
  v92 = v56 ^ LODWORD(STACK[0x2158]) ^ 0xB9D1342C;
  LODWORD(STACK[0x20A8]) = v92;
  v93 = (v91 + 477323025 - ((2 * v91) & 0x38E6BE22)) ^ v92;
  v94 = v56 ^ LODWORD(STACK[0x2230]) ^ 0xD78957AF;
  LODWORD(STACK[0x2120]) = v94;
  v95 = (v93 + 477323025 - ((2 * v93) & 0x38E6BE22)) ^ v94;
  v96 = STACK[0x1E20];
  LODWORD(STACK[0x1F50]) = v56 ^ 0x789C67FE ^ (v64 + 395419229);
  LODWORD(v37) = v56 ^ 0x789C67FE ^ (v96 - 1642741227 - ((2 * v96) & 0x3C2B842A));
  LODWORD(STACK[0x2118]) = v37;
  v97 = (v95 + 477323025 - ((2 * v95) & 0x38E6BE22)) ^ v37;
  LODWORD(v16) = v33 ^ LODWORD(STACK[0x2140]) ^ 0xA27A5FF7;
  LODWORD(STACK[0x2188]) = v16;
  v98 = (v97 - 1526629959 - ((2 * v97) & 0x4A02F372)) ^ v16;
  v99 = STACK[0x1F30];
  LODWORD(v16) = v33 ^ LODWORD(STACK[0x1F30]) ^ 0x5A7237F4;
  LODWORD(STACK[0x2098]) = v16;
  v100 = (v98 - 1526629959 - ((2 * v98) & 0x4A02F372)) ^ v16;
  v101 = STACK[0x1E48];
  LODWORD(v16) = v56 ^ LODWORD(STACK[0x1E48]) ^ 0xDEB0BCA1;
  LODWORD(STACK[0x2178]) = v16;
  v102 = (v100 - 1526629959 - ((2 * v100) & 0x4A02F372)) ^ v16;
  v103 = STACK[0x1E50];
  LODWORD(STACK[0x2090]) = LODWORD(STACK[0x1E50]) ^ v77;
  v104 = (v102 - 1526629959 - ((2 * v102) & 0x4A02F372)) ^ v103 ^ v77;
  LODWORD(v15) = STACK[0x2208];
  LODWORD(STACK[0x2110]) = LODWORD(STACK[0x2208]) ^ v77;
  v105 = v104 + (v15 ^ v77 ^ 0x203A29BD) - 2 * (v104 & (v15 ^ v77 ^ 0x203A29BD));
  v106 = STACK[0x1F28];
  v107 = v33 ^ LODWORD(STACK[0x1F28]) ^ 0x75BFAF2C;
  LODWORD(STACK[0x2108]) = v107;
  v108 = (v105 + 540682685 - ((2 * v105) & 0x4074537A)) ^ v107;
  v109 = STACK[0x1F40];
  LODWORD(STACK[0x1E08]) = LODWORD(STACK[0x1F40]) ^ v56;
  LODWORD(v16) = v109 ^ v56 ^ 0x58E27B0A;
  LODWORD(STACK[0x21A8]) = v16;
  v110 = (v108 + 540682685 - ((2 * v108) & 0x4074537A)) ^ v16;
  v111 = STACK[0x1E18];
  LODWORD(v37) = v33 ^ LODWORD(STACK[0x1E18]) ^ 0xBCA6B521;
  LODWORD(STACK[0x2100]) = v37;
  v112 = (v110 + 540682685 - ((2 * v110) & 0x4074537A)) ^ v37;
  LODWORD(v16) = STACK[0x1E68];
  v113 = LODWORD(STACK[0x1E68]) ^ LODWORD(STACK[0x1FD8]) ^ (v112 + 376454221 - ((2 * v112) & 0x2CE0789A));
  v114 = STACK[0x1E60];
  v115 = v56 ^ LODWORD(STACK[0x1E60]) ^ 0x255D2B93;
  LODWORD(STACK[0x2220]) = v115;
  v116 = (v113 + 1133471491 - ((2 * v113) & 0x871ECE06)) ^ v115;
  v117 = STACK[0x1E40];
  LODWORD(STACK[0x2248]) = LODWORD(STACK[0x1E40]) ^ v77;
  v118 = (v116 + 1133471491 - ((2 * v116) & 0x871ECE06)) ^ v117 ^ v77;
  LODWORD(v37) = v33 ^ LODWORD(STACK[0x21F0]) ^ 0x9D56AC48;
  LODWORD(STACK[0x2268]) = v37;
  v119 = (v118 - 113224173 - ((2 * v118) & 0xF280AC26)) ^ v37;
  LODWORD(v37) = STACK[0x1E38];
  v120 = v56 ^ LODWORD(STACK[0x1E38]) ^ 0x9AB537DF;
  LODWORD(STACK[0x2228]) = v120;
  v121 = (v119 - 113224173 - ((2 * v119) & 0xF280AC26)) ^ v120;
  v122 = LODWORD(STACK[0x2080]) ^ v77;
  LODWORD(STACK[0x2218]) = v122;
  v123 = LODWORD(STACK[0x21C8]) ^ v56;
  LODWORD(STACK[0x1DF0]) = v123;
  LODWORD(STACK[0x1AEC]) = v123 ^ v122 ^ 0x92E88A4C ^ (v121 - 113224173 - ((2 * v121) & 0xF280AC26));
  v124 = STACK[0x1FA8];
  LODWORD(STACK[0x1D10]) = v56 ^ 0x39EED9D6 ^ (LODWORD(STACK[0x1F60]) - 1642741227 - ((2 * LODWORD(STACK[0x1F60])) & 0x3C2B842A));
  LODWORD(STACK[0x1C98]) = v56 ^ 0x39EED9D6 ^ (v124 - 1642741227 - ((2 * v124) & 0x3C2B842A));
  v125 = v67;
  v126 = v67 ^ LODWORD(STACK[0x2078]);
  v127 = STACK[0x2068];
  v128 = STACK[0x1F20];
  v129 = ((v126 ^ v127) + 1472716136 - ((2 * (v126 ^ v127)) & 0xAF8FBAD0)) ^ LODWORD(STACK[0x1F00]) ^ LODWORD(STACK[0x1F20]) ^ LODWORD(STACK[0x2170]) ^ LODWORD(STACK[0x1F08]);
  v130 = (v129 + 2134227511 - ((2 * v129) & 0xFE6B746E)) ^ LODWORD(STACK[0x2148]);
  v131 = (v130 - 1371792746 - ((2 * v130) & 0x5C78352C)) ^ v83;
  LODWORD(v31) = v85 ^ v96 ^ (v131 - 924419769 - ((2 * v131) & 0x91CCF28E));
  LODWORD(v31) = (v31 - 2125774878 - ((2 * v31) & 0x2967FC4)) ^ v101;
  LODWORD(v31) = (v31 + 1676661457 - ((2 * v31) & 0xC7DFA5A2)) ^ v99;
  LODWORD(v31) = (v31 + 1406435237 - ((2 * v31) & 0xA7A8FF4A)) ^ v103;
  v132 = v16;
  LODWORD(v31) = v106 ^ v16 ^ (v31 - 921101811 - ((2 * v31) & 0x9232341A));
  LODWORD(v31) = (v31 - 1675053462 - ((2 * v31) & 0x38516CD4)) ^ v114;
  LODWORD(v31) = (v31 - 1252368097 - ((2 * v31) & 0x6AB4C23E)) ^ v117;
  LODWORD(v31) = (v31 - 1727030474 - ((2 * v31) & 0x321F366C)) ^ v37;
  LODWORD(STACK[0x1FA8]) = v31 + 261443599 - ((2 * v31) & 0x1F2AA01E);
  v133 = STACK[0x2060];
  LODWORD(v16) = STACK[0x2058];
  v134 = STACK[0x21F8];
  LODWORD(v31) = ((v16 ^ v133) + 1853527093 - ((2 * (v16 ^ v133)) & 0xDCF5286A)) ^ LODWORD(STACK[0x21F8]);
  v135 = STACK[0x2200];
  LODWORD(v31) = LODWORD(STACK[0x1F18]) ^ v79 ^ LODWORD(STACK[0x2200]) ^ (v31 - 1341239448 - ((2 * v31) & 0x601C9ED0));
  LODWORD(v31) = (v31 - 65322931 - ((2 * v31) & 0xF836809A)) ^ LODWORD(STACK[0x21C0]);
  LODWORD(v31) = (v31 - 366050997 - ((2 * v31) & 0xD45D0296)) ^ LODWORD(STACK[0x2198]);
  LODWORD(v31) = v90 ^ LODWORD(STACK[0x21A0]) ^ v88 ^ (v31 + 346601561 - ((2 * v31) & 0x295170B2));
  LODWORD(v31) = (v31 + 1599640007 - ((2 * v31) & 0xBEB1238E)) ^ LODWORD(STACK[0x2158]);
  LODWORD(v31) = (v31 + 822145604 - ((2 * v31) & 0x6201E488)) ^ LODWORD(STACK[0x2230]);
  LODWORD(v31) = (v31 - 1679312174 - ((2 * v31) & 0x37CF75A4)) ^ LODWORD(STACK[0x2140]);
  HIDWORD(v136) = (v31 - ((2 * v31) & 0x1E5F42) + 995233) ^ v15;
  LODWORD(v136) = (v31 - 688967775 - ((2 * v31) & 0xADDE5F42)) ^ v15;
  LODWORD(v136) = __ROR4__((v136 >> 21) ^ 0xEE9D3401, 11);
  LODWORD(v31) = (v111 ^ v136) + 376454221 - ((2 * (v111 ^ v136)) & 0x2CE0789A);
  v137 = STACK[0x1FD8];
  LODWORD(v31) = ((v31 ^ v137) - 2111657907 - ((2 * (v31 ^ v137)) & 0x445509A)) ^ v109;
  v138 = v31 + 477323025 - ((2 * v31) & 0x38E6BE22);
  v139 = v125 - 1642741227 - 2 * (v125 & 0x1E15C21F ^ STACK[0x2000] & 0xA);
  LODWORD(STACK[0x2170]) = v56 ^ (LODWORD(STACK[0x1DD8]) - 1349307460);
  LODWORD(STACK[0x21A0]) = v56 ^ LODWORD(STACK[0x2210]);
  LODWORD(STACK[0x2198]) = v56 ^ LODWORD(STACK[0x1DF8]);
  LODWORD(STACK[0x21C0]) = v56 ^ LODWORD(STACK[0x1F38]);
  v140 = v56 ^ v134;
  LODWORD(STACK[0x1D30]) = v33 ^ 0xC19D7DA5 ^ LODWORD(STACK[0x1FF8]);
  LODWORD(STACK[0x1C90]) = v33 ^ 0xC19D7DA5 ^ LODWORD(STACK[0x1E70]);
  v141 = STACK[0x1CE8] & ((STACK[0x1DD0] & LODWORD(STACK[0x1CF0])) >> 4) ^ LODWORD(STACK[0x1DD0]);
  LOBYTE(v90) = STACK[0x22B0];
  v142 = STACK[0x2270];
  LODWORD(v37) = (((LODWORD(STACK[0x1E58]) ^ 0xD8FE8C39) & STACK[0x22A0]) >> STACK[0x2270]) + (((LODWORD(STACK[0x1E58]) ^ 0xD8FE8C39) & STACK[0x1DA0]) << v90);
  v143 = STACK[0x2280];
  LODWORD(v37) = STACK[0x1CE0] & (((v37 ^ ((v37 & v143) >> 1)) & STACK[0x1CE4]) >> 2) ^ v37 ^ ((v37 & v143) >> 1);
  LODWORD(STACK[0x1F58]) = v37 ^ 0x1C735F11 ^ STACK[0x1CD0] & ((v37 & STACK[0x1CD8]) >> 4);
  LODWORD(v37) = ((v16 ^ v127) + 1854652540 - ((2 * (v16 ^ v127)) & 0xDD1780F8)) ^ v133;
  LODWORD(v37) = (v37 + 1052863433 - ((2 * v37) & 0x7D82D792)) ^ LODWORD(STACK[0x19D4]);
  LODWORD(v37) = (v37 + 1854652540 - ((2 * v37) & 0xDD1780F8)) ^ LODWORD(STACK[0x2078]);
  LODWORD(STACK[0x1F60]) = v140 ^ 0xD25B27BB;
  LODWORD(v37) = (v37 + 1188776308 - ((2 * v37) & 0x8DB692E8)) ^ v140 ^ 0xD25B27BB;
  v144 = v56 ^ v139 ^ 0x2234719B;
  LODWORD(STACK[0x2000]) = v144;
  LODWORD(v37) = (v37 + 1188776308 - ((2 * v37) & 0x8DB692E8)) ^ v144;
  LODWORD(STACK[0x1F08]) = v135 ^ v77;
  LODWORD(v37) = (v37 + 1188776308 - ((2 * v37) & 0x8DB692E8)) ^ v135 ^ v77;
  LODWORD(v31) = v33 ^ v128 ^ 0xDA47D5E8;
  LODWORD(STACK[0x1FF8]) = v31;
  LODWORD(v37) = (v37 + 1188776308 - ((2 * v37) & 0x8DB692E8)) ^ v31;
  v145 = v143;
  v146 = ((((LODWORD(STACK[0x1FE8]) ^ 0x3211F324) & v143) >> 1) + 840037157 - ((LODWORD(STACK[0x1FE8]) ^ 0x3211F324) & v143 & 0x6423E64A)) ^ LODWORD(STACK[0x1FE8]);
  v147 = STACK[0x20E8];
  v148 = STACK[0x2240];
  v149 = ((v146 & STACK[0x2240]) >> v13) | ((v146 & STACK[0x20E8]) << v142);
  LODWORD(STACK[0x1F18]) = v149 - 790354457 - ((2 * v149) & 0xA1C84BCE);
  LODWORD(v37) = (v37 - 420135602 - ((2 * v37) & 0xCDEA7A9C)) ^ LODWORD(STACK[0x2040]);
  LODWORD(v37) = (v37 - 420135602 - ((2 * v37) & 0xCDEA7A9C)) ^ LODWORD(STACK[0x1FB8]);
  v150 = v37 - 420135602 - ((2 * v37) & 0xCDEA7A9C);
  LODWORD(v37) = ((STACK[0x1DC8] & v21) >> 1) + 1768826350 - (STACK[0x1DC8] & v21 & 0xD2DC4BDC);
  LODWORD(v16) = LODWORD(STACK[0x1DC8]) ^ 0x696E25EE;
  LODWORD(STACK[0x2210]) = v16;
  v151 = v148;
  LODWORD(v37) = (((v37 ^ v16) & v147) << v142) + (((v37 ^ v16) & v148) >> v13);
  v152 = STACK[0x1EF0];
  LODWORD(v148) = ((v152 & v21) >> 1) + 477323025 - (v152 & v21 & 0x38E6BE22);
  LODWORD(STACK[0x1D98]) = v148;
  LODWORD(v16) = v152 ^ 0x1C735F11 ^ v148;
  v153 = STACK[0x2238];
  v154 = STACK[0x22A8];
  LODWORD(v37) = ((v16 & STACK[0x2238]) << STACK[0x22C0]) ^ ((v16 & STACK[0x22A8]) >> v90) ^ v37;
  v155 = ((v150 ^ LODWORD(STACK[0x2050])) - 1526629959 - ((2 * (v150 ^ LODWORD(STACK[0x2050]))) & 0x4A02F372)) ^ LODWORD(STACK[0x2188]);
  v156 = (v155 - 1526629959 - ((2 * v155) & 0x4A02F372)) ^ LODWORD(STACK[0x2098]);
  v157 = (v156 + 477323025 - ((2 * v156) & 0x38E6BE22)) ^ LODWORD(STACK[0x2118]);
  v158 = (v157 - 1981760469 - ((2 * v157) & 0x13C17856)) ^ LODWORD(STACK[0x1FD0]);
  v159 = (v158 - 1981760469 - ((2 * v158) & 0x13C17856)) ^ LODWORD(STACK[0x1FB0]);
  v160 = (v159 - 420135602 - ((2 * v159) & 0xCDEA7A9C)) ^ LODWORD(STACK[0x1FC8]);
  v161 = (v160 - 1981760469 - ((2 * v160) & 0x13C17856)) ^ LODWORD(STACK[0x2048]);
  v162 = (v161 - 1981760469 - ((2 * v161) & 0x13C17856)) ^ LODWORD(STACK[0x1FC0]);
  v163 = (v162 - 495075771 - ((2 * v162) & 0xC4FB7C8A)) ^ LODWORD(STACK[0x20B0]);
  v164 = (v163 - 495075771 - ((2 * v163) & 0xC4FB7C8A)) ^ LODWORD(STACK[0x2088]);
  v165 = (v164 - 495075771 - ((2 * v164) & 0xC4FB7C8A)) ^ LODWORD(STACK[0x20A0]);
  v166 = (v165 + 477323025 - ((2 * v165) & 0x38E6BE22)) ^ LODWORD(STACK[0x2168]);
  v167 = (v166 - 495075771 - ((2 * v166) & 0xC4FB7C8A)) ^ LODWORD(STACK[0x20C0]);
  v168 = (v167 + 477323025 - ((2 * v167) & 0x38E6BE22)) ^ LODWORD(STACK[0x20A8]);
  v169 = (v168 + 477323025 - ((2 * v168) & 0x38E6BE22)) ^ LODWORD(STACK[0x2120]);
  v170 = (v169 - 1526629959 - ((2 * v169) & 0x4A02F372)) ^ LODWORD(STACK[0x2178]);
  v171 = (v170 - 1526629959 - ((2 * v170) & 0x4A02F372)) ^ LODWORD(STACK[0x2090]);
  v172 = (v171 + 540682685 - ((2 * v171) & 0x4074537A)) ^ LODWORD(STACK[0x2110]);
  v173 = (v172 + 540682685 - ((2 * v172) & 0x4074537A)) ^ LODWORD(STACK[0x2100]);
  LODWORD(v37) = LODWORD(STACK[0x1E08]) ^ LODWORD(STACK[0x2108]) ^ (v37 + 1775809920 - ((2 * v37) & 0xD3B16B00)) ^ 0x1100E737 ^ (v173 + 540682685 - ((2 * v173) & 0x4074537A));
  v174 = v33 ^ v137 ^ 0xC963C7D2;
  LODWORD(STACK[0x2208]) = v174;
  LODWORD(v37) = (v37 + 1133471491 - ((2 * v37) & 0x871ECE06)) ^ v174;
  v175 = v33 ^ v132 ^ 0xDF13FB9F;
  LODWORD(STACK[0x21F8]) = v175;
  LODWORD(v37) = (v37 + 1133471491 - ((2 * v37) & 0x871ECE06)) ^ v175;
  LODWORD(v37) = (v37 + 1133471491 - ((2 * v37) & 0x871ECE06)) ^ LODWORD(STACK[0x2220]);
  LODWORD(v37) = (v37 - 113224173 - ((2 * v37) & 0xF280AC26)) ^ LODWORD(STACK[0x2228]);
  LODWORD(v37) = (v37 + 1133471491 - ((2 * v37) & 0x871ECE06)) ^ LODWORD(STACK[0x2248]);
  LODWORD(v37) = (v37 - 113224173 - ((2 * v37) & 0xF280AC26)) ^ LODWORD(STACK[0x2268]);
  LODWORD(v37) = (v37 - 113224173 - ((2 * v37) & 0xF280AC26)) ^ LODWORD(STACK[0x2218]);
  v176 = LODWORD(STACK[0x1DF0]) ^ 0x2BCE6693;
  LODWORD(STACK[0x2230]) = v176;
  LODWORD(v37) = (v37 - 113224173 - ((2 * v37) & 0xF280AC26)) ^ v176;
  v177 = STACK[0x1E10];
  v178 = v145;
  v179 = (STACK[0x1E10] & v145) >> (((v37 & 0x65 ^ 0x65) + (v37 & 0x65)) ^ 0x64);
  LODWORD(STACK[0x1F10]) = v21;
  LODWORD(STACK[0x2148]) = v141;
  LODWORD(STACK[0x2200]) = v177 ^ 0x696E25EE;
  LODWORD(v179) = (v179 + 1768826350 - ((2 * v179) & 0xD2DC4BDC)) ^ v177 ^ 0x696E25EE;
  v180 = v37 ^ ((((v141 ^ ((v141 & v21) >> 1)) & v153) << v142) + (((v141 ^ ((v141 & v21) >> 1)) & v151) >> v90)) ^ ((v179 & v154) >> v90) ^ ((v179 & v153) << STACK[0x22C0]);
  LODWORD(STACK[0x1F30]) = v180;
  v181 = STACK[0x2030];
  v182 = *(STACK[0x2030] + (STACK[0x20C8] ^ 0xD1) + 2375) ^ STACK[0x20C8];
  LODWORD(STACK[0x22B0]) = v182;
  v183 = v181 + (STACK[0x1ED0] ^ 0x30);
  LODWORD(v183) = -59 * (*(v183 + 1062) ^ 5) - ((10 * (*(v183 + 1062) ^ 5)) & 0xA) + 5;
  v184 = v183 ^ 0xFFFFFF86 ^ (((v183 >> 3) ^ (v183 >> 7)) + ~(2 * (((v183 >> 3) ^ (v183 >> 7)) & 7 ^ (v183 >> 3) & 2)) + 6);
  if (v182 == 211)
  {
    v185 = 1;
  }

  else
  {
    LOBYTE(v184) = STACK[0x1ED0];
    v185 = 0;
  }

  if (v184 == 5)
  {
    v186 = 231;
  }

  else
  {
    v186 = 167;
  }

  v187 = v181 + 10;
  v188 = *(v181 + 10 + v186);
  STACK[0x20C8] = v185;
  if (v188 == 184)
  {
    v189 = 0;
  }

  else
  {
    v189 = v185;
  }

  v190 = STACK[0x2290];
  v191 = *(STACK[0x2290] + (((v189 ^ 0x6Fu) + 2 * v189) ^ 0xF8)) ^ 5;
  v192 = *(v181 + (STACK[0x1EC0] ^ 0x6FLL) + 276);
  HIDWORD(v193) = v192 ^ 5;
  LODWORD(v193) = v192 << 24;
  v194 = ((-111 * v191) ^ (68 * v191 * -111 * v191));
  v195 = (v193 >> 29) ^ 0x17;
  if (v194 == 59)
  {
    v196 = STACK[0x1EC0];
  }

  else
  {
    v196 = v195;
  }

  STACK[0x1FD8] = v196;
  v197 = v196 != 5 || v194 == 59;
  v198 = v181 + (STACK[0x1EE0] ^ 0x67);
  v199 = *(v198 + 4760) ^ (*(v198 + 4760) >> 4) ^ 0x4E;
  if (v197)
  {
    v200 = STACK[0x1EE0];
  }

  else
  {
    v200 = v199;
  }

  LODWORD(STACK[0x2140]) = v200;
  LODWORD(STACK[0x1AE8]) = LODWORD(STACK[0x21C8]) ^ LODWORD(STACK[0x2080]) ^ 0xE263C280 ^ LODWORD(STACK[0x1FA8]);
  v201 = STACK[0x20B8];
  v202 = (*(STACK[0x20B8] + (((v184 ^ 5) - 39) ^ 0xADLL)) ^ 5) - 44;
  LODWORD(STACK[0x21C8]) = v202 ^ (v202 >> 2) ^ (v202 >> 1);
  LODWORD(STACK[0x1B08]) = LODWORD(STACK[0x21F0]) ^ 0xE5163C84 ^ v138;
  v203 = v181 + 3430;
  v204 = *(v181 + 3430 + (STACK[0x1600] ^ 0x40));
  v205 = ((STACK[0x2138] ^ 0x14) >> 2) | (STACK[0x2138] << 6);
  v206 = *(STACK[0x21B8] + (((*(v181 + 3430 + (STACK[0x1608] ^ 0x43)) ^ 1 ^ (4 * (*(v181 + 3430 + (STACK[0x1608] ^ 0x43)) ^ 1) * (*(v181 + 3430 + (STACK[0x1608] ^ 0x43)) ^ 1)) ^ 0xBC) - 39) ^ 0x1ELL));
  HIDWORD(v207) = v206 ^ 1;
  LODWORD(v207) = (v206 ^ 4) << 24;
  v208 = (((*(v187 + ((v207 >> 26) ^ 0x8DLL)) ^ 0x4B) + 13) << 8) | ((v204 ^ 0x50 ^ (4 * (v204 ^ 1) * (v204 ^ 1) - 8 * (((v204 ^ 1) * (v204 ^ 1)) & 1) + 5)) << 16);
  v209 = v181 + 2117;
  v210 = (*(v201 + (((((*(v181 + 2117 + (((*(v187 + (v205 ^ 0xA7)) ^ 0x4B) + 13) ^ 0xA1)) ^ 5) + (((*(v187 + (v205 ^ 0xA7)) ^ 0x4B) + 13) ^ 0xBF)) ^ 0x10) - 39) ^ 0xADLL)) ^ 5) - 44;
  v211 = ((*(v201 + (((((*(v181 + 2117 + (((*(v187 + (v205 ^ 0xA7)) ^ 0x4B) + 13) ^ 0xA1)) ^ 5) + (((*(v187 + (v205 ^ 0xA7)) ^ 0x4B) + 13) ^ 0xBF)) ^ 0x10) - 39) ^ 0xADLL)) ^ 5) - 44);
  v212 = v210 ^ (v211 >> 2) ^ (v211 >> 1);
  v213 = -55 * (((*(v181 + 2117 + (STACK[0x15F8] ^ 0xF6)) ^ 5) + (STACK[0x15F8] ^ 0xFFFFFFE8)) ^ 0xFFFFFFDD);
  v214 = *(STACK[0x2258] + (v213 ^ 0x3ELL)) ^ v213 ^ 0xD2 ^ ((v213 ^ 0xD2) - ((2 * (v213 ^ 0xD2) + 6) & 0xA) - 96);
  HIDWORD(v207) = STACK[0x1610] ^ 1;
  LODWORD(v207) = (STACK[0x1610] ^ 4) << 24;
  LOBYTE(v213) = v207 >> 26;
  v215 = *(v181 + 3430 + (STACK[0x21D8] ^ 0x31));
  HIDWORD(v207) = v215 ^ 1;
  LODWORD(v207) = (((v215 ^ 1) * (v215 ^ 1)) << 26) ^ (v215 << 24);
  v216 = STACK[0x2180];
  LOBYTE(v213) = *(STACK[0x2180] + (v213 ^ 0x74)) ^ 0xA7;
  LOBYTE(v213) = (v213 ^ (2 * v213 * v213) ^ 5) + 13;
  LOBYTE(v213) = ((v213 ^ 0xBF) + (*(v181 + 2117 + (v213 ^ 0xA1)) ^ 5)) ^ 7;
  LODWORD(STACK[0x2138]) = v212;
  v217 = v212 ^ 0x71 | (v213 << 16);
  v218 = *(v181 + 3430 + (STACK[0x1900] ^ 0x52));
  v219 = STACK[0x1620];
  v220 = *(v209 + (STACK[0x1620] ^ 0xB0));
  LODWORD(STACK[0x21D8]) = v218 ^ (4 * (v218 ^ 1) * (v218 ^ 1));
  v221 = (((*(v187 + ((v207 >> 26) ^ 0x88)) ^ 0x4B) + 13) ^ 0x2E) << 8;
  STACK[0x1F00] = v187;
  v222 = *(v187 + ((((((v220 ^ 5) + (v219 ^ 0xAE)) ^ 0xCD) >> 2) | ((((v220 ^ 5) + (v219 ^ 0xAE)) ^ 0xCD) << 6)) ^ 0xA7));
  v223 = v221 | ((v222 ^ 0x4B) << 24) | v217;
  v224 = v208 & 0xFFFFFF00 | *(v203 + (STACK[0x18F8] ^ 0xF3)) ^ 1 ^ (4 * (*(v203 + (STACK[0x18F8] ^ 0xF3)) ^ 1) * (*(v203 + (STACK[0x18F8] ^ 0xF3)) ^ 1));
  LODWORD(STACK[0x1C80]) = v212 & 0x3B ^ 0xA | v212 & 0x3B ^ 0x31;
  LODWORD(STACK[0x1C78]) = (v222 & 0x27 ^ 5) + (v222 & 0x27 ^ 0x22);
  v225 = v224 | ((*(v203 + (STACK[0x1618] ^ 0x2CLL)) ^ (4 * (*(v203 + (STACK[0x1618] ^ 0x2CLL)) ^ 1) * (*(v203 + (STACK[0x1618] ^ 0x2CLL)) ^ 1)) ^ 0xFFFFFFE3) << 24);
  v226 = (v225 ^ 0xEB) + 477323025 - ((2 * (v225 ^ 0xEB)) & 0x38E6BE22);
  LOBYTE(v217) = *(v216 + ((((STACK[0x1EE8] ^ 0xBA) >> 2) | ((STACK[0x1EE8] ^ 0xBA) << 6)) ^ 0x4DLL)) ^ 0xA7;
  LOBYTE(v203) = *(v203 + (((v217 ^ (2 * v217 * v217 - ((4 * v217 * v217) & 8) + 5)) + 13) ^ 0xCFLL));
  LOBYTE(v217) = v203 ^ (4 * (v203 ^ 1) * (v203 ^ 1));
  v227 = STACK[0x1628];
  v228 = STACK[0x1628] ^ 0xFBLL;
  STACK[0x1C88] = v209;
  LOBYTE(v228) = (((*(v209 + v228) ^ 5) + (v227 ^ 0xE5)) ^ 0x5A) - 39;
  LODWORD(v228) = (*(v201 + (((v228 ^ 0x11) - (v228 ^ 0xAD)) ^ 0xFFFFFFF8) + (v228 ^ 0x11)) ^ 5) - 44;
  v229 = v228 ^ (v228 >> 2) ^ (v228 >> 1);
  LODWORD(STACK[0x1CC8]) = (v223 + 218103808) ^ (((v223 + 218103808) & v178) >> 1);
  v230 = (((v226 ^ 0x1C735F11) & STACK[0x1D20]) + 477323025 - ((2 * ((v226 ^ 0x1C735F11) & STACK[0x1D20])) & 0x38E6BE22u)) >> 1;
  LODWORD(v228) = ((v230 ^ 0xE39AF88) + 477323025 - 2 * ((v230 ^ 0xE39AF88) & 0x1C735F15 ^ v230 & 4)) ^ v226;
  v231 = STACK[0x1E78];
  v232 = STACK[0x1E78] & 0x7CFCFCFC ^ 0xC159419D;
  v233 = STACK[0x21E0];
  LODWORD(STACK[0x1AE0]) = v232;
  LODWORD(STACK[0x1F38]) = v232 & (v233 ^ 0x88E52CE1) ^ v231 & 0x44FCB044;
  v234 = LODWORD(STACK[0x1E98]) ^ LODWORD(STACK[0x1AE4]);
  v235 = STACK[0x1D88];
  LODWORD(STACK[0x1D88]) = STACK[0x1D88];
  v236 = STACK[0x1E80];
  LODWORD(v216) = (LODWORD(STACK[0x1E80]) ^ 0xBDD26AA3) + (v235 ^ 0xFFD2D6B7 ^ v234);
  LODWORD(STACK[0x1EE8]) = (v235 ^ 0xBEBC0ECD) + (LODWORD(STACK[0x1D58]) ^ 0xE874A45B ^ v180);
  v237 = (STACK[0x21E8] & 0xE0E0E0E ^ 0xFDFDFFF5) + 1330597711;
  LODWORD(STACK[0x1EE0]) = v231 & 0x27A7A7A7;
  LODWORD(STACK[0x1ED8]) = v237 + (v231 & 0x27A7A7A7 ^ 0x21A1A025);
  LODWORD(STACK[0x1EC0]) = STACK[0x2278] & LODWORD(STACK[0x15C8]) ^ 0x180908 | STACK[0x2278] & LODWORD(STACK[0x15C8]) ^ 0x19011010;
  v238 = STACK[0x2128];
  LODWORD(STACK[0x1C70]) = (STACK[0x2128] & 8 ^ 8) + (STACK[0x2128] & 8);
  v239 = STACK[0x2130];
  v240 = STACK[0x2130] & 0xC8C8C8C ^ 0x19151D9D;
  LODWORD(STACK[0x1CC0]) = v240;
  v241 = v238 ^ 0x14808D04;
  v242 = (v238 ^ 0x14808D04) & v240;
  LODWORD(STACK[0x1C68]) = (v242 << STACK[0x22C0]) + 477323025 - ((2 * (v242 << STACK[0x22C0])) & 0x38E6BE22);
  v243 = STACK[0x2270];
  LODWORD(STACK[0x1ED0]) = (v242 << STACK[0x2270]) + 1775809920 - ((2 * (v242 << STACK[0x2270])) & 0xD3B16B00);
  LODWORD(STACK[0x1C60]) = v217 ^ 0xAF | (((v214 ^ 0x1C) - 58) << 8);
  LODWORD(STACK[0x1D78]) = LODWORD(STACK[0x1EB8]) + 2139200569;
  LODWORD(STACK[0x2080]) = LODWORD(STACK[0x1EA8]) - 9439247;
  LODWORD(STACK[0x1B60]) = LODWORD(STACK[0x2070]) ^ 0x816781D1;
  LODWORD(STACK[0x19C0]) = v236 ^ v234;
  LODWORD(STACK[0x1920]) = v234 ^ 0x43B7CA05;
  v244 = v190;
  LODWORD(STACK[0x21E8]) = LODWORD(STACK[0x1EF0]) ^ 0x696E25EE;
  v245 = STACK[0x2038];
  LODWORD(STACK[0x1DA0]) = LODWORD(STACK[0x2038]) ^ LODWORD(STACK[0x2028]) ^ 0xD47B201E;
  LODWORD(STACK[0x1D28]) = LODWORD(STACK[0x1E88]) ^ 0x34ABFED0;
  LODWORD(STACK[0x2028]) = LODWORD(STACK[0x2170]) ^ 0x8A89D80C;
  LODWORD(STACK[0x1F48]) = v245 ^ LODWORD(STACK[0x1EB0]) ^ 0xE50FF10B;
  LODWORD(STACK[0x2158]) = LODWORD(STACK[0x21A0]) ^ 0x10DFBB;
  LODWORD(STACK[0x1F40]) = LODWORD(STACK[0x2198]) ^ 0x1D7C5578;
  LODWORD(STACK[0x20E8]) = v245 ^ LODWORD(STACK[0x21D0]) ^ 0xCBE31A88;
  LODWORD(STACK[0x1F20]) = LODWORD(STACK[0x21C0]) ^ 0xA3A32961;
  LODWORD(STACK[0x1F28]) = v245 ^ LODWORD(STACK[0x1FE0]) ^ 0xEBAB534;
  LODWORD(STACK[0x2008]) ^= v245 ^ 0x45E85F83;
  LODWORD(STACK[0x21F0]) = LODWORD(STACK[0x2148]) ^ 0x696E25EE;
  v246 = LODWORD(STACK[0x22B0]) ^ 0xFFFFFFD6;
  v247 = *(STACK[0x21B8] + (((LODWORD(STACK[0x2140]) ^ 5) - 39) ^ 0x1ELL));
  STACK[0x1FA8] = LODWORD(STACK[0x21C8]) ^ 0xFFFFFFE4;
  v248 = v247 ^ 0x7Bu;
  STACK[0x1C58] = LODWORD(STACK[0x21D8]) ^ 0xEBu;
  LODWORD(STACK[0x1C50]) = (v229 ^ 0xC9) << 16;
  v249 = STACK[0x2240];
  STACK[0x1C48] = v228 & STACK[0x2240];
  v250 = STACK[0x2238];
  STACK[0x1C40] = (v228 & STACK[0x2238]) << v243;
  LODWORD(STACK[0x1AC0]) = v229 ^ 0xFFFFFFCC;
  LODWORD(STACK[0x1ABC]) = LODWORD(STACK[0x2138]) ^ 0x74;
  LODWORD(v227) = v231 & 0x63636363 ^ 0xE7E7E6A7;
  LODWORD(STACK[0x1ADC]) = v227;
  v251 = v239 & 0x63636363 ^ 0xE684C7C4;
  v252 = v233;
  STACK[0x1AB0] = v251 & (v233 ^ 0xC60084A5);
  STACK[0x1AA8] = ((v238 ^ 0x24C0C726) & v251) << STACK[0x22C0];
  STACK[0x22B0] = ((v238 ^ 0x24C0C726) & v227) << STACK[0x22C0];
  LODWORD(v219) = v231;
  LODWORD(STACK[0x1AD8]) = v231 & 0x48484848 ^ 0x989098D0;
  v253 = v239 & 0x48484848 ^ 0x90D89090;
  LODWORD(STACK[0x1AD4]) = v253;
  STACK[0x1AA0] = ((v238 ^ 0x10C0C800) & v253) << STACK[0x22C0];
  STACK[0x1A98] = ((v238 ^ 0x34C0CD24) & v232) << STACK[0x22C0];
  LODWORD(v201) = v239 & 0x7CFCFCFC ^ 0xD9B5FD6D;
  STACK[0x1A90] = ((v238 ^ 0x34C0CD24) & v201) << v243;
  STACK[0x1A88] = v249 & v201;
  LODWORD(STACK[0x1A80]) = 1751437251 * v216 + 1751437251;
  v254 = STACK[0x2280];
  LODWORD(v201) = STACK[0x1E90];
  LODWORD(STACK[0x1A78]) = LODWORD(STACK[0x1E90]) + 1471715045;
  LODWORD(v228) = LODWORD(STACK[0x1EA0]) - v201;
  LODWORD(STACK[0x1A74]) = 1296649579 * LODWORD(STACK[0x1EA0]) - 1438339269;
  v255 = v239 & 0x3BBBBBBB ^ 0x577D76E5;
  STACK[0x1A68] = (v250 & v255) << STACK[0x22C0];
  LODWORD(STACK[0x1A60]) = 1799704387 * LODWORD(STACK[0x1EE8]) + 1799704387;
  LODWORD(STACK[0x1AC8]) = v231 & 0x3BBBBBBB ^ 0x4ED6CF56;
  LODWORD(v201) = v231 & 0x71F1F1F1 ^ 0xD2425382;
  v256 = (v238 ^ 0x30C0C322) & v201;
  LODWORD(STACK[0x19C8]) = v239 & 0x71F1F1F1 ^ 0xC3A3E273;
  STACK[0x19B8] = v256 << v243;
  STACK[0x19B0] = v256 << STACK[0x22C0];
  STACK[0x19A8] = v249 & v201;
  v257 = STACK[0x22A8];
  STACK[0x19A0] = v201 & STACK[0x22A8];
  LODWORD(STACK[0x1998]) = 1890889577 * v228 + 2058874732;
  v258 = v219 & 0x76767676 ^ 0xDCCCDC88;
  STACK[0x1988] = v258 & (v233 ^ 0xCE189CA4);
  STACK[0x1980] = ((v238 ^ 0x34C0CE26) & v258) << STACK[0x22C0];
  LODWORD(v201) = v239 & 0x76767676 ^ 0xCCAAE8FA;
  STACK[0x1978] = v201 & v257;
  STACK[0x1970] = ((v238 ^ 0x34C0CE26) & v201) << STACK[0x22C0];
  v259 = v239 & 0x69E9E9E9 ^ 0xF39BD253;
  STACK[0x1D68] = ((v238 ^ 0x30C0CB22) & v259) << STACK[0x22C0];
  v260 = v219 & 0x69E9E9E9 ^ 0xFA727BB2;
  LODWORD(STACK[0x1968]) = ((v238 ^ 0x30C0CB22) & v260) << STACK[0x22C0];
  LODWORD(v201) = STACK[0x1F38];
  STACK[0x1A58] = LODWORD(STACK[0x1F38]) ^ 0x40590004u;
  LODWORD(STACK[0x1960]) = v201 ^ 0x2981B584;
  LODWORD(v228) = v238 ^ 0x24C0CF26;
  LODWORD(v242) = v219 & 0x13939393;
  v261 = (v238 ^ 0x34808726) & (v219 & 0x13939393 ^ 0x36A6B726);
  LODWORD(v216) = STACK[0x2278] & 0x27272727;
  LODWORD(v227) = (v216 ^ 0x40325) >> 1;
  LODWORD(v216) = v227 ^ ((v216 ^ 0x27232402) + (v216 ^ 0x40325));
  STACK[0x1A48] = v261 << STACK[0x22C0];
  LOBYTE(v253) = v243;
  STACK[0x1D90] = v261 << v243;
  STACK[0x1A40] = (v250 & v216) << STACK[0x22C0];
  v233 ^= 0x4E189CA5u;
  STACK[0x1A38] = v216 & v233;
  LODWORD(v261) = LODWORD(STACK[0x1ED8]) + 1;
  LODWORD(STACK[0x1C28]) = (v250 & v261) << STACK[0x22C0];
  STACK[0x1C20] = v249 & v261;
  LODWORD(v243) = v239 & 0x27A7A7A7 ^ 0x6F494AC9;
  v262 = LODWORD(STACK[0x1EE0]) ^ 0x6EEEEF6A;
  LODWORD(v261) = ((v254 & STACK[0x1EC0]) >> 1) ^ 0x19191919;
  LODWORD(STACK[0x1C30]) = v233;
  STACK[0x1C08] = v261 & v233;
  STACK[0x1C00] = (v250 & v261) << v253;
  v263 = v219 & 0xC8C8C8C ^ 0x1199911D;
  v264 = STACK[0x1FD8];
  v265 = v241 & v263;
  v266 = STACK[0x22C0];
  v267 = STACK[0x20B8];
  STACK[0x1BF0] = v265 << STACK[0x22C0];
  STACK[0x1BE8] = (STACK[0x22A0] & STACK[0x1D18]) >> v253;
  STACK[0x1958] = v259 & (v252 ^ 0xCA1898A1);
  STACK[0x1BE0] = v260 & (v252 ^ 0xCA1898A1);
  STACK[0x1A30] = (v242 ^ 0x36A6B726) & v257;
  STACK[0x1BD8] = v249 & (v242 ^ 0x36A6B726);
  LODWORD(v256) = v239 & 0x13939393 ^ 0x272526B5;
  v268 = v228 & v262;
  STACK[0x1BC8] = (v228 & v243) << v266;
  STACK[0x1BC0] = v268 << v266;
  STACK[0x1BB8] = v268 << v253;
  LODWORD(v228) = v252 ^ 0xC189C85;
  STACK[0x1BB0] = v262 & (v252 ^ 0x4E088CA5u);
  v269 = STACK[0x1CC0];
  STACK[0x1F38] = STACK[0x1CC0] & v228;
  STACK[0x1BA8] = v263 & v228;
  LODWORD(STACK[0x1B48]) = LODWORD(STACK[0x1EC8]) - 163262532;
  LODWORD(STACK[0x1BA4]) = v242 ^ 0x11819001;
  LODWORD(STACK[0x1BA0]) = LODWORD(STACK[0x1ED0]) ^ 0x69D8B580;
  LODWORD(STACK[0x1A2C]) = STACK[0x22B0] ^ 0x72F89F6D;
  LODWORD(STACK[0x1954]) = LODWORD(STACK[0x1D58]) ^ LODWORD(STACK[0x1F30]);
  STACK[0x1B98] = STACK[0x1CC8] & v257;
  LODWORD(v228) = STACK[0x1ADC];
  STACK[0x1A20] = v249 & STACK[0x1ADC];
  STACK[0x1A18] = v228 & v257;
  STACK[0x1A10] = v249 & STACK[0x1AD8];
  LODWORD(v228) = STACK[0x1AD4];
  STACK[0x1A08] = STACK[0x1AD4] & v257;
  STACK[0x1A00] = v249 & v228;
  STACK[0x19F8] = v249 & STACK[0x1AE0];
  STACK[0x19F0] = v249 & v255;
  STACK[0x19E8] = STACK[0x1AC8] & v257;
  LODWORD(STACK[0x1A70]) = v255;
  STACK[0x19E0] = v255 & v257;
  STACK[0x1948] = v249 & STACK[0x19C8];
  LODWORD(STACK[0x1944]) = LODWORD(STACK[0x1AE4]) ^ 0x3B2F3F8E;
  LODWORD(STACK[0x1994]) = v258;
  STACK[0x1938] = v249 & v258;
  STACK[0x1D60] = v249 & v259;
  LODWORD(STACK[0x1C38]) = v260;
  STACK[0x1930] = v249 & v260;
  LODWORD(STACK[0x1A50]) = v227 ^ 0x27272727;
  STACK[0x19D8] = v249 & (v227 ^ 0x27272727);
  LODWORD(STACK[0x1C18]) = v243;
  STACK[0x1B90] = v243 & v257;
  LODWORD(STACK[0x1C10]) = v262;
  STACK[0x1B88] = v249 & v262;
  LODWORD(STACK[0x1BF8]) = v263;
  STACK[0x1B78] = v249 & v263;
  STACK[0x1F30] = v249 & v269;
  v270 = STACK[0x1FA8];
  LODWORD(STACK[0x1D70]) = v259;
  STACK[0x1B70] = v259 & v257;
  LODWORD(STACK[0x1BD0]) = v256;
  STACK[0x1B68] = v249 & v256;
  LODWORD(v228) = LODWORD(STACK[0x1D88]) ^ 0x4143F132;
  LODWORD(STACK[0x1B40]) = v228;
  LODWORD(STACK[0x1B3C]) = -690719775 * v228;
  LODWORD(STACK[0x1DC8]) = 477323025;
  v271 = STACK[0x22F8];
  LODWORD(STACK[0x2128]) = -1073741798;
  v272 = STACK[0x2288];
  v273 = STACK[0x1C88];
  LOBYTE(v253) = ((*(v267 + (((((*(v273 + (v270 ^ ((v272 ^ 0x6C) + ((v272 - 104) | 0xF0) + 89))) ^ 5) + (v270 ^ 0x73)) ^ 0x10) - 39) ^ 0xADLL)) ^ 5) - 44) ^ (((*(v267 + (((((*(v273 + (v270 ^ ((v272 ^ 0x6C) + ((v272 - 104) | 0xF0) + 89))) ^ 5) + (v270 ^ 0x73)) ^ 0x10) - 39) ^ 0xADLL)) ^ 5) - 44) >> 2) ^ (((*(v267 + (((((*(v273 + (v270 ^ ((v272 ^ 0x6C) + ((v272 - 104) | 0xF0) + 89))) ^ 5) + (v270 ^ 0x73)) ^ 0x10) - 39) ^ 0xADLL)) ^ 5) - 44) >> 1) ^ 0xBB;
  STACK[0x1FA8] = v270;
  v274 = STACK[0x1C58] << ((v270 & 0x18 ^ 8) + (v270 & 0x18 ^ 0x10));
  STACK[0x1DE0] = v248;
  v275 = *(v244 + (((((*(v273 + (v248 ^ 0xBDLL)) ^ 5) + (v248 ^ 0xA3)) ^ 0x10) + 111) ^ 0xF8)) ^ 5;
  v276 = ((((-111 * v275) ^ LOBYTE(STACK[0x1C80]) ^ (68 * v275 * -111 * v275)) >> 2) | (((-111 * v275) ^ LODWORD(STACK[0x1C80])) << 6)) ^ LODWORD(STACK[0x1C78]);
  STACK[0x1DE8] = v246;
  v277 = ((*(v273 + (v246 ^ 0xB0)) ^ 5) + (v246 ^ 0xAE)) ^ 0xCD | (v253 << 8) | (v276 << 24) | ((((*(v273 + (v264 ^ 0xB2)) ^ 5) + (v264 ^ 0xAC)) ^ 0x84) << 16);
  LODWORD(v273) = LODWORD(STACK[0x2250]) ^ 0xE91E89A3;
  LODWORD(v256) = LODWORD(STACK[0x1F90]);
  v278 = v256 ^ 0x93;
  v279 = (STACK[0x1B98] >> (v256 ^ 0x93u)) | ((v273 & STACK[0x1CC8]) << v266);
  LODWORD(v249) = v279 + 477323025 - ((2 * v279) & 0x38E6BE22);
  LODWORD(v274) = ((((LODWORD(STACK[0x1C60]) | v274) ^ LODWORD(STACK[0x1C50]) ^ ((((LODWORD(STACK[0x1C60]) | v274) ^ LODWORD(STACK[0x1C50])) & v254) >> 1)) & v273) << v266) | ((((LODWORD(STACK[0x1C60]) | v274) ^ LODWORD(STACK[0x1C50]) ^ ((((LODWORD(STACK[0x1C60]) | v274) ^ LODWORD(STACK[0x1C50])) & v254) >> 1)) & v257) >> (v256 ^ 0x93u));
  v280 = v274 + 477323025 - ((2 * v274) & 0x38E6BE22);
  v281 = LODWORD(STACK[0x1F98]) ^ 0xCEu;
  v282 = STACK[0x1C48];
  STACK[0x22B0] = v281;
  LODWORD(v282) = (v282 >> v281) ^ STACK[0x1C40];
  LODWORD(v256) = v282 + 477323025 - ((2 * v282) & 0x38E6BE22);
  v283 = v277 ^ ((v277 & v254) >> 1);
  LODWORD(STACK[0x21C0]) = v273;
  v284 = (v283 & v273) << STACK[0x2270];
  STACK[0x22A0] = v278;
  v285 = v284 | ((v283 & v257) >> v278);
  LODWORD(v266) = v285 + 477323025 - ((2 * v285) & 0x38E6BE22);
  v286 = 42587553 * ((v280 ^ 0x1C735F11) + (LODWORD(STACK[0x21A8]) ^ LODWORD(STACK[0x2178]) ^ 0x853B5004));
  v287 = (((v286 + HIWORD(v286) + 477323025 - ((2 * (v286 + HIWORD(v286))) & 0x38E6BE22)) >> 8) ^ 0x1C735F) + ((v286 + HIWORD(v286) + 477323025 - ((2 * (v286 + HIWORD(v286))) & 0x38E6BE22)) ^ 0x1C735F11);
  LODWORD(STACK[0x21D0]) = v249;
  v288 = -1323480215 * ((v287 + 477323025 - ((2 * v287) & 0x38E6BE22)) ^ v249);
  LODWORD(v278) = v288 + HIWORD(v288);
  LOBYTE(v288) = ((v288 + BYTE2(v288) - 2 * ((v288 + BYTE2(v288)) & 1) + 9) ^ LODWORD(STACK[0x2188])) & 8;
  LODWORD(v284) = v278 - (v278 >> ((v288 ^ 8) + v288)) + 477323025 - ((2 * (v278 - (v278 >> ((v288 ^ 8) + v288)))) & 0x38E6BE22);
  v289 = -1873513085 * ((v284 ^ 0x1C735F11) - (v256 ^ 0x1C735F11)) - ((-1873513085 * ((v284 ^ 0x1C735F11) - (v256 ^ 0x1C735F11))) >> 16);
  v290 = v289 + (v289 >> 8) - 48991124 - ((2 * (v289 + (v289 >> 8))) & 0xFA28E8D8);
  LODWORD(STACK[0x2138]) = v266;
  LODWORD(STACK[0x21E0]) = v290;
  v291 = (v290 ^ 0xFD14746C) + (v266 ^ 0x1C735F11) + 1775809920 - ((2 * ((v290 ^ 0xFD14746C) + (v266 ^ 0x1C735F11))) & 0xD3B16B00);
  LODWORD(STACK[0x21A0]) = v291;
  v292 = *(v271 + 8 * ((209 * ((((2015594755 * (v291 ^ 0x69D8B580u)) >> 16) & 0xF85) - 3973 + (((2015594755 * (v291 ^ 0x69D8B580u)) >> 16) & 0xF85 ^ 0xF85) != 0)) ^ v272));
  STACK[0x1FD8] = v264;
  return v292();
}

uint64_t sub_26AA60C4C(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x2278]) = v15;
  v17 = STACK[0x21E0];
  v18 = STACK[0x21E0] & 0xF3F1A2DF ^ 0xED637F5D;
  LODWORD(STACK[0x21D8]) = v8 - 1728;
  v19 = ((v8 - 1728) ^ 0x9930A81F) & v10 ^ v14;
  v20 = a1 - a2 + v14 - (v11 & (2 * (a1 - a2)));
  v21 = v14 + (v20 & 0x7C79860E ^ 0x9FF77FF1) + ((2 * ((v20 & 0x7C79860E ^ 0x9FF77FF1) & 0x1C710602 ^ (v20 | 0x7FFFFFFD))) ^ 0x4B227) + 1;
  LODWORD(STACK[0x1ED8]) = v20 & 0x43CE7575 ^ 0x425511;
  LODWORD(STACK[0x2070]) = v20;
  v22 = ((a8 ^ (v20 >> 8)) + v14 - ((2 * (a8 ^ (v20 >> 8))) & 0xE6BE22)) ^ v20;
  LODWORD(STACK[0x1EC0]) = v22;
  v23 = v22 & 0xDAD7D039 ^ v14;
  LODWORD(STACK[0x1E98]) = LODWORD(STACK[0x2250]) ^ 0x211681A3;
  LODWORD(STACK[0x1DC8]) = v9;
  LODWORD(STACK[0x1FE0]) = a6;
  LODWORD(STACK[0x1EC8]) = STACK[0x21D0];
  LODWORD(STACK[0x1EE0]) = v17;
  LODWORD(STACK[0x1ED0]) = STACK[0x1ABC];
  LODWORD(STACK[0x1EB0]) = v13;
  LODWORD(STACK[0x1EB8]) = STACK[0x1AC0];
  v24 = STACK[0x8A0];
  STACK[0x1FF0] = v16;
  v25 = STACK[0x2158];
  v26 = v12;
  LODWORD(STACK[0x2140]) = v19;
  LODWORD(STACK[0x2198]) = v21;
  v27 = v23 ^ 0x11u;
  v28 = STACK[0x22B8];
  v29 = LODWORD(STACK[0x22B8]);
  v30 = v29 ^ 0x11u;
  v31 = STACK[0x20F8];
  v32 = v23;
  v33 = ((v31 ^ 0x577F8614) >> (v23 ^ 0x11)) + ((v31 ^ 0x577F8614) << (v29 ^ 0x11u));
  v34 = STACK[0x2018];
  v35 = ((v34 ^ 0x577F8614) >> (v23 ^ 0x11)) ^ ((v34 ^ 0x577F8614) << v30);
  v36 = v35 + 1467975188 - ((2 * v35) & 0xAEFF0C28);
  v37 = STACK[0x1F28];
  v38 = ((v37 ^ 0x922629A8) >> v27) + ((v37 ^ 0x922629A8) << v30);
  v39 = v38 - 1842992728 - ((2 * v38) & 0x244C5350);
  v40 = v33 + 1467975188 - ((2 * v33) & 0xAEFF0C28);
  LODWORD(STACK[0x2170]) = v18;
  v41 = (((v19 ^ v14) + 1415747524 + (v18 ^ v14) + v14 - (v11 & (2 * ((v19 ^ v14) + 1415747524 + (v18 ^ v14))))) ^ 0x8EFA7AF9 ^ v21) - v26;
  v42 = v41 - ((2 * v41 + 18415876) & v11) + 2097143699;
  v43 = v42 ^ LODWORD(STACK[0x1F58]);
  v44 = LODWORD(STACK[0x2278]);
  v45 = STACK[0x2278];
  LODWORD(STACK[0x2278]) = STACK[0x2278];
  v46 = v44 ^ 0x11u;
  v47 = v42 ^ LODWORD(STACK[0x1F88]);
  LODWORD(STACK[0x2148]) = v42;
  v49 = (((v43 >> v27) + 1775809920 - ((2 * (v43 >> v27)) & 0xD3B16B00)) ^ 0x69D8B580) + (((v43 << v46) + v14 - (v11 & (2 * (v43 << v46)))) ^ v14);
  v50 = v49 + v14 - (v11 & (2 * v49));
  LODWORD(STACK[0x22B8]) = v28;
  if (v28 == v14)
  {
    v36 = v34;
  }

  LODWORD(STACK[0x1E28]) = v36;
  if (v28 == v14)
  {
    v51 = v37;
  }

  else
  {
    v51 = v39;
  }

  LODWORD(STACK[0x1E80]) = v51;
  if (v28 == v14)
  {
    v40 = v31;
  }

  LODWORD(STACK[0x1E40]) = v40;
  v52 = v43 ^ v14;
  if (v45 != v14)
  {
    v52 = v50;
  }

  LODWORD(STACK[0x1EE8]) = v52;
  v53 = v42 ^ LODWORD(STACK[0x1F78]);
  LODWORD(STACK[0x2288]) = v32;
  v55 = v47 ^ v14;
  if (v32 != v14)
  {
    v48 = (v47 >> v27) + (v47 << v46);
    v55 = v48 + v14 - (v11 & (2 * v48));
  }

  LODWORD(STACK[0x1EF0]) = v55;
  v54 = (v53 >> v27) | (v53 << v30);
  v56 = v54 + v14 - (v11 & (2 * v54));
  v58 = v53 ^ v14;
  if (v32 != v14)
  {
    v58 = v56;
  }

  LODWORD(STACK[0x1E78]) = v58;
  v57 = ((v25 ^ 0x79936D97u) >> v27) + ((v25 ^ 0x79936D97u) << v30);
  LODWORD(STACK[0x1EA0]) = v57 + 2039704983 - ((2 * v57) & 0xF326DB2E);
  v59 = STACK[0x2010];
  v60 = ((v59 ^ 0x922629A8) >> v27) + ((v59 ^ 0x922629A8) << v30);
  LODWORD(STACK[0x1E90]) = v60 - 1842992728 - ((2 * v60) & 0x244C5350);
  v61 = STACK[0x1F70];
  v62 = ((v61 ^ 0x922629A8) >> v27) ^ ((v61 ^ 0x922629A8) << v46);
  LODWORD(STACK[0x1E88]) = v62 - 1842992728 - ((2 * v62) & 0x244C5350);
  v63 = STACK[0x1F68];
  v64 = v46;
  v65 = v27;
  v66 = ((v63 ^ 0x922629A8) >> v27) ^ ((v63 ^ 0x922629A8) << v46);
  LODWORD(STACK[0x1E70]) = v66 - 1842992728 - ((2 * v66) & 0x244C5350);
  v67 = STACK[0x1F80];
  v68 = ((v67 ^ 0x577F8614u) >> v27) + ((v67 ^ 0x577F8614u) << v46);
  LODWORD(STACK[0x1E68]) = v68 + 1467975188 - ((2 * v68) & 0xAEFF0C28);
  v69 = STACK[0x2028];
  v70 = ((v69 ^ 0x79936D97u) >> v27) | ((v69 ^ 0x79936D97u) << v46);
  LODWORD(STACK[0x1E60]) = v70 + 2039704983 - ((2 * v70) & 0xF326DB2E);
  v71 = STACK[0x1F40];
  v72 = ((v71 ^ 0x79936D97) >> v27) + ((v71 ^ 0x79936D97) << v30);
  v73 = v72 + 2039704983 - ((2 * v72) & 0xF326DB2E);
  v74 = STACK[0x2248];
  STACK[0x21C8] = v30;
  v75 = ((v74 ^ 0x438F6703) >> v27) ^ ((v74 ^ 0x438F6703) << v30);
  v76 = v75 + 1133471491 - ((2 * v75) & 0x871ECE06);
  v77 = STACK[0x2208];
  v78 = ((v77 ^ 0x438F6703) >> v27) ^ ((v77 ^ 0x438F6703) << v46);
  v79 = v78 + 1133471491 - ((2 * v78) & 0x871ECE06);
  v80 = STACK[0x20E8];
  v81 = ((v80 ^ 0x577F8614) >> v65) | ((v80 ^ 0x577F8614) << v64);
  v82 = v81 + 1467975188 - ((2 * v81) & 0xAEFF0C28);
  v83 = STACK[0x1F48];
  v84 = ((v83 ^ 0x79936D97) >> v65) + ((v83 ^ 0x79936D97) << v64);
  v85 = v84 + 2039704983 - ((2 * v84) & 0xF326DB2E);
  v86 = STACK[0x21F0];
  v87 = LODWORD(STACK[0x21F0]) ^ 0x696E25EEu;
  v88 = v65;
  STACK[0x1DD8] = v87;
  STACK[0x1EA8] = v64;
  v89 = (v87 >> v65) + (v87 << v64);
  v90 = v89 + 1768826350 - ((2 * v89) & 0xD2DC4BDC);
  v91 = STACK[0x21F8];
  STACK[0x2130] = v88;
  v92 = ((v91 ^ 0x438F6703) << v64) | ((v91 ^ 0x438F6703) >> v88);
  v93 = v92 + 1133471491 - ((2 * v92) & 0x871ECE06);
  v94 = (LODWORD(STACK[0x2148]) ^ LODWORD(STACK[0x2020]));
  v95 = (v94 >> v88) | (v94 << v30);
  v96 = v95 + 477323025 - ((2 * v95) & 0x38E6BE22);
  v97 = STACK[0x22B8];
  LODWORD(STACK[0x2158]) = v25;
  v98 = STACK[0x1EA0];
  if (v97 == 477323025)
  {
    v98 = v25;
  }

  v99 = STACK[0x2288];
  if (LODWORD(STACK[0x2288]) != 477323025)
  {
    v59 = STACK[0x1E90];
  }

  LODWORD(STACK[0x1E30]) = v59;
  if (v99 != 477323025)
  {
    v61 = STACK[0x1E88];
  }

  LODWORD(STACK[0x1E18]) = v61;
  if (v99 != 477323025)
  {
    v63 = STACK[0x1E70];
  }

  LODWORD(STACK[0x1E08]) = v63;
  if (v99 == 477323025)
  {
    v100 = v67;
  }

  else
  {
    v100 = STACK[0x1E68];
  }

  v101 = STACK[0x1E60];
  if (v99 == 477323025)
  {
    v101 = v69;
    v102 = v71;
  }

  else
  {
    v102 = v73;
  }

  LODWORD(STACK[0x2248]) = v74;
  if (v99 == 477323025)
  {
    v103 = v74;
  }

  else
  {
    v103 = v76;
  }

  LODWORD(STACK[0x1E70]) = v103;
  LODWORD(STACK[0x2208]) = v77;
  if (v99 == 477323025)
  {
    v104 = v77;
  }

  else
  {
    v104 = v79;
  }

  LODWORD(STACK[0x1E58]) = v104;
  v105 = STACK[0x2278];
  if (LODWORD(STACK[0x2278]) == 477323025)
  {
    v106 = v80;
  }

  else
  {
    v106 = v82;
  }

  if (v105 == 477323025)
  {
    v107 = v83;
  }

  else
  {
    v107 = v85;
  }

  LODWORD(STACK[0x21F0]) = v86;
  if (v105 == 477323025)
  {
    v108 = v86;
  }

  else
  {
    v108 = v90;
  }

  LODWORD(STACK[0x1EA0]) = v108;
  LODWORD(STACK[0x21F8]) = v91;
  if (v105 == 477323025)
  {
    v109 = v91;
  }

  else
  {
    v109 = v93;
  }

  LODWORD(STACK[0x1E60]) = v109;
  if (v97 == 477323025)
  {
    v110 = v94 ^ 0x1C735F11;
  }

  else
  {
    v110 = v96;
  }

  LODWORD(STACK[0x1E68]) = v110;
  v111 = (1205334925 - (LODWORD(STACK[0x21B0]) ^ 0x5BA4AC9C)) ^ ((LODWORD(STACK[0x21B0]) ^ 0xE38CA0EE) + 1);
  v112 = STACK[0x2070];
  v113 = ((v111 + 477323025 - ((2 * v111) & 0x38E6BE22)) ^ LODWORD(STACK[0x21B0])) + 1205334925;
  v114 = LODWORD(STACK[0x21A0]) ^ 0x80u;
  v115 = ((v113 ^ 0x47D7F38Du) >> (LODWORD(STACK[0x21A0]) ^ 0x80u)) | ((v113 ^ 0x47D7F38Du) << (LODWORD(STACK[0x2070]) ^ 0x11u));
  v116 = LODWORD(STACK[0x21E0]) ^ 0x6Cu;
  v117 = STACK[0x1F20];
  v118 = LODWORD(STACK[0x2070]) ^ 0x11u;
  v119 = ((v117 ^ 0x1C735F11u) << (LODWORD(STACK[0x2070]) ^ 0x11u)) + ((v117 ^ 0x1C735F11u) >> (LODWORD(STACK[0x21E0]) ^ 0x6Cu));
  v120 = v119 + 477323025 - ((2 * v119) & 0x38E6BE22);
  v121 = v115 + 477323025 - ((2 * v115) & 0x38E6BE22);
  v122 = STACK[0x20F0];
  v123 = LODWORD(STACK[0x21E0]) ^ 0x6C;
  STACK[0x1E88] = v116;
  v124 = ((v122 ^ 0x1C735F11u) >> v116) | ((v122 ^ 0x1C735F11u) << v118);
  v125 = v124 + 477323025 - ((2 * v124) & 0x38E6BE22);
  v126 = STACK[0x2268];
  STACK[0x1DF0] = v114;
  LODWORD(STACK[0x1E10]) = (((LODWORD(STACK[0x2230]) ^ 0xF9405613) >> v123) ^ ((LODWORD(STACK[0x2230]) ^ 0xF9405613) << v118)) - 113224173 - ((2 * (((LODWORD(STACK[0x2230]) ^ 0xF9405613) >> v123) ^ ((LODWORD(STACK[0x2230]) ^ 0xF9405613) << v118))) & 0xF280AC26);
  if (v112 != 477323025)
  {
    v117 = v120;
  }

  LODWORD(STACK[0x1E50]) = v117;
  LODWORD(STACK[0x21B0]) = v113 ^ 0x5BA4AC9C;
  if (v112 == 477323025)
  {
    v128 = v113 ^ 0x5BA4AC9C;
  }

  else
  {
    v128 = v121;
  }

  LODWORD(STACK[0x1E48]) = v128;
  if (v112 == 477323025)
  {
    v129 = v122;
  }

  else
  {
    v129 = v125;
  }

  LODWORD(STACK[0x1E20]) = v129;
  LODWORD(STACK[0x2268]) = v126;
  if (v112 == 477323025)
  {
    v130 = v126;
  }

  else
  {
    v127 = ((v126 ^ 0xF9405613) >> v114) ^ ((v126 ^ 0xF9405613) << v118);
    v130 = v127 - 113224173 - ((2 * v127) & 0xF280AC26);
  }

  LODWORD(STACK[0x1E90]) = v130;
  v188 = v112 == 477323025;
  v131 = STACK[0x2228];
  STACK[0x1E38] = v118;
  v132 = ((v131 ^ 0xF9405613) >> v114) | ((v131 ^ 0xF9405613) << v118);
  LODWORD(STACK[0x2070]) = v132 - 113224173 - ((2 * v132) & 0xF280AC26);
  v133 = STACK[0x22B0];
  v134 = (STACK[0x1D60] >> STACK[0x22B0]) ^ STACK[0x1D68];
  v135 = v98 ^ (v134 + 2039704983 - ((2 * v134) & 0xF326DB2E));
  v136 = (v135 + 477323025 - ((2 * v135) & 0x38E6BE22)) ^ LODWORD(STACK[0x2170]);
  v137 = STACK[0x1B70] >> STACK[0x22B0];
  v138 = STACK[0x2250];
  v139 = (LODWORD(STACK[0x2250]) ^ 0xE91A89A3) & STACK[0x1D70];
  v140 = STACK[0x2270];
  v141 = v101 ^ (((v139 << v140) | v137) + 2039704983 - ((2 * ((v139 << v140) | v137)) & 0xF326DB2E));
  v142 = (v141 + 477323025 - ((2 * v141) & 0x38E6BE22)) ^ LODWORD(STACK[0x2140]);
  v143 = STACK[0x22A0];
  v144 = (((LODWORD(STACK[0x2250]) ^ 0xE91A89A3) & STACK[0x1C38]) << STACK[0x2270]) + (STACK[0x1BE0] >> STACK[0x22A0]);
  v145 = v107 ^ (v144 + 2039704983 - ((2 * v144) & 0xF326DB2E));
  v146 = (v145 + 477323025 - ((2 * v145) & 0x38E6BE22)) ^ LODWORD(STACK[0x2198]);
  v147 = STACK[0x1F18];
  v148 = (v146 - 790354457 - ((2 * v146) & 0xA1C84BCE)) ^ LODWORD(STACK[0x1F18]);
  v149 = ((v148 >> 8) + 111) ^ 0x74 ^ ((((v148 >> 8) + 111) ^ 0x74) - ((2 * (((v148 >> 8) + 111) ^ 0x74) + 2) & 0xA) - 114) ^ 0x37 ^ *(STACK[0x1B58] + ((BYTE1(v148) + 111) ^ 0xE0));
  v150 = STACK[0x22C0];
  LODWORD(v137) = v102 ^ ((v139 << v150) + v137 + 2039704983 - ((2 * ((v139 << v150) + v137)) & 0xF326DB2E));
  LODWORD(v137) = (v137 + 477323025 - ((2 * v137) & 0x38E6BE22)) ^ LODWORD(STACK[0x2138]);
  v151 = (v136 - 790354457 - ((2 * v136) & 0xA1C84BCE)) ^ LODWORD(STACK[0x1F18]);
  v152 = (v142 - 790354457 - ((2 * v142) & 0xA1C84BCE)) ^ LODWORD(STACK[0x1F18]);
  LODWORD(v139) = (v137 - 790354457 - ((2 * v137) & 0xA1C84BCE)) ^ LODWORD(STACK[0x1F18]);
  HIDWORD(v153) = *(v24 + ((v151 >> 22) & 0x3FC));
  LODWORD(v153) = HIDWORD(v153);
  v154 = ((v152 >> 23) & 0x1BE) + (HIBYTE(v152) ^ 0xFFFFFFDF);
  v155 = (v153 >> 24) ^ __ROR4__(*(v24 + 4 * ((v137 - 25 - ((2 * v137) & 0xCE)) ^ LODWORD(STACK[0x1F18]))), 16) ^ __ROR4__(*(v24 + 4 * ((v149 >> 2) | (v149 << 6))), 8) ^ *(v24 + 4 * BYTE2(v152));
  v156 = v100 ^ ((STACK[0x1BD8] >> STACK[0x22A0]) | STACK[0x1D90]) ^ (v155 + 1467975188 - ((2 * v155) & 0xAEFF0C28));
  LOBYTE(v137) = *(STACK[0x2290] + ((BYTE3(v139) + 111) ^ 0xF8)) ^ 5;
  LOBYTE(v137) = (-111 * v137) ^ (68 * v137 * -111 * v137) ^ 0x3B;
  HIDWORD(v153) = *(v24 + 4 * BYTE1(v152));
  LODWORD(v153) = HIDWORD(v153);
  LODWORD(v137) = (v153 >> 8) ^ __ROR4__(*(v24 + 4 * ((v137 >> 2) | (v137 << 6))), 24) ^ __ROR4__(*(v24 + 4 * v148), 16) ^ *(v24 + 4 * BYTE2(v151));
  v157 = (STACK[0x1E98] & LODWORD(STACK[0x1BD0]));
  LODWORD(v137) = v106 ^ (STACK[0x1B68] >> STACK[0x22A0]) ^ (v157 << STACK[0x2270]) ^ (v137 + 1467975188 - ((2 * v137) & 0xAEFF0C28));
  v158 = v137 - 790354457 - ((2 * v137) & 0xA1C84BCE);
  HIDWORD(v153) = *(v24 + 4 * BYTE1(v151));
  LODWORD(v153) = HIDWORD(v153);
  v159 = (v153 >> 8) ^ __ROR4__(*(v24 + 4 * v152), 16) ^ __ROR4__(*(v24 + ((v148 >> 22) & 0x3FC)), 24) ^ *(v24 + 4 * BYTE2(v139));
  v160 = (v159 + 1467975188 - ((2 * v159) & 0xAEFF0C28)) ^ LODWORD(STACK[0x1E28]);
  v161 = (v160 - 790354457 - ((2 * v160) & 0xA1C84BCE)) ^ LODWORD(STACK[0x1F18]);
  LODWORD(v137) = LODWORD(STACK[0x1BA4]) ^ ((v161 & 0x27272727 ^ 0x27272727) + (v161 & 0x27272727));
  v162 = STACK[0x2238];
  v163 = (((v137 & STACK[0x22A8]) >> STACK[0x22B0]) + ((v137 & STACK[0x2238]) << STACK[0x22C0])) ^ v161;
  LODWORD(v137) = *(v24 + 4 * BYTE2(v148)) ^ ((STACK[0x1B68] >> STACK[0x22B0]) + (v157 << STACK[0x22C0]));
  LODWORD(STACK[0x1B54]) = v154;
  LODWORD(v137) = v137 ^ __ROR4__(*(v24 + 4 * (v154 + 33)), 24) ^ __ROR4__(*(v24 + 4 * v151), 16);
  LODWORD(v153) = __ROR4__(*(v24 + 4 * BYTE1(v139)), 8);
  LODWORD(v137) = ((v137 ^ v153) + 1467975188 - ((2 * (v137 ^ v153)) & 0xAEFF0C28)) ^ LODWORD(STACK[0x1E40]);
  LOWORD(v149) = v158 ^ v147;
  v164 = ((v158 ^ v147) >> 24) - (((v158 ^ v147) >> 23) & 0x3E);
  LODWORD(v139) = *(STACK[0x2260] + ((-55 * ((v158 ^ v147) >> 16)) ^ 0xF2));
  v165 = (-55 * (v158 ^ v147)) ^ 0xD2 ^ (((-55 * (v158 ^ v147)) ^ 0xD2) - ((2 * ((-55 * (v158 ^ v147)) ^ 0xD2) + 6) & 0xA) - 96);
  HIDWORD(v153) = v139 ^ 1;
  LODWORD(v153) = (v139 ^ 4) << 24;
  v166 = (v156 - 790354457 - ((2 * v156) & 0xA1C84BCE)) ^ v147;
  v167 = STACK[0x2258];
  v168 = (v137 - 790354457 - ((2 * v137) & 0xA1C84BCE)) ^ v147;
  LOBYTE(v148) = *(STACK[0x2258] + ((-55 * v149) ^ 0x3ELL)) ^ v165;
  LOBYTE(v157) = (v153 >> 26) ^ ((v153 >> 26) >> 5) ^ ((v153 >> 26) >> 3);
  HIDWORD(v153) = *(v24 + 4 * BYTE1(v149));
  LODWORD(v153) = HIDWORD(v153);
  v169 = (v153 >> 8) ^ __ROR4__(*(v24 + 4 * v166), 16);
  LODWORD(v137) = *(v24 + 4 * BYTE2(v166)) ^ __ROR4__(*(v24 + 4 * (((v137 + 9703 - ((2 * v137) & 0x4BCE)) ^ v147) >> 8)), 8) ^ __ROR4__(*(v24 + 4 * v163), 16);
  HIDWORD(v153) = *(v24 + 4 * BYTE1(v163));
  LODWORD(v153) = HIDWORD(v153);
  v170 = (v153 >> 8) ^ __ROR4__(*(v24 + ((v166 >> 22) & 0x3FC)), 24);
  LODWORD(v153) = __ROR4__(*(v24 + 4 * ((v164 - 97) ^ 0x9FLL)), 24);
  LODWORD(v151) = *(v24 + ((v163 >> 22) & 0x3FC));
  v171 = STACK[0x2280];
  v172 = ((((v151 & 0x4F4F4F4F ^ 0x4F4F4F4F) + (v151 & 0x4F4F4F4F)) & LODWORD(STACK[0x2280])) >> 1) ^ 0x4F4F4F4F;
  LODWORD(v137) = ((v137 ^ v153) - 1842992728 - ((2 * (v137 ^ v153)) & 0x244C5350)) ^ LODWORD(STACK[0x1E08]) ^ (((v172 & v162) << v140) | ((v172 & STACK[0x1C30]) >> v143));
  v173 = v170 ^ *(v24 + 4 * BYTE2(v168)) ^ __ROR4__(*(v24 + 4 * ((v148 ^ 0x1C) - 58)), 16);
  v174 = v137 - 790354457 - ((2 * v137) & 0xA1C84BCE);
  LODWORD(v137) = v173 - 1842992728 - ((2 * v173) & 0x244C5350);
  v175 = *(v24 + 4 * HIBYTE(v168));
  LODWORD(v163) = v169 ^ *(v24 + 4 * BYTE2(v163)) ^ (v175 << 8) ^ HIBYTE(v175);
  LODWORD(STACK[0x1E00]) = v138 ^ 0x690E89A3;
  v176 = ((v138 ^ 0x690E89A3u) & STACK[0x1C10]) << v140;
  STACK[0x1E28] = v176;
  v177 = STACK[0x1B88] >> v143;
  STACK[0x1E08] = v177;
  STACK[0x22A0] = v143;
  v178 = (LODWORD(STACK[0x1E18]) ^ (v176 + v177) ^ v137) - 790354457 - ((2 * (LODWORD(STACK[0x1E18]) ^ (v176 + v177) ^ v137)) & 0xA1C84BCE);
  v179 = STACK[0x1B90] >> v133;
  STACK[0x1DF8] = v179;
  LODWORD(v163) = LODWORD(STACK[0x1E30]) ^ (v179 | STACK[0x1BC8]) ^ (v163 - 1842992728 - ((2 * v163) & 0x244C5350));
  LODWORD(v137) = v163 - 790354457 - ((2 * v163) & 0xA1C84BCE);
  LODWORD(v163) = __ROR4__(*(v24 + 4 * BYTE1(v166)), 8) ^ 0x7ABF8EF3 ^ __ROR4__(v151, 24) ^ *(v24 + 4 * ((v157 ^ 0x13) - 58));
  LODWORD(v153) = __ROR4__(*(v24 + 4 * v168), 16);
  v180 = LODWORD(STACK[0x1E80]) ^ ((STACK[0x1BB0] >> v133) + STACK[0x1BB8]) ^ ((v163 ^ v153) - 1842992728 - ((2 * (v163 ^ v153)) & 0x244C5350));
  v181 = v147 ^ 0x7ABF8EF3 ^ (v180 - 790354457 - ((2 * v180) & 0xA1C84BCE));
  v182 = *(v167 + ((-55 * BYTE1(v181)) ^ 0x3ELL)) ^ (201 * (v181 >> 8)) ^ 0xFFFFFFD2 ^ (((201 * (v181 >> 8)) ^ 0xFFFFFFD2) - ((2 * ((201 * (v181 >> 8)) ^ 0xFFFFFFD2) + 6) & 0xA) - 96);
  v183 = v137 ^ v147;
  v184 = (((v137 ^ v147) >> 10) & 0x40 ^ 0x4E) + (((v137 ^ v147) >> 10) & 0x40);
  v185 = STACK[0x1F50];
  v186 = (((v185 ^ 0x1C735F11u) >> STACK[0x1DF0]) ^ ((v185 ^ 0x1C735F11u) << v118)) + 477323025 - ((2 * (((v185 ^ 0x1C735F11u) >> STACK[0x1DF0]) ^ ((v185 ^ 0x1C735F11u) << v118))) & 0x38E6BE22);
  v187 = STACK[0x2230];
  if (!v188)
  {
    v187 = STACK[0x1E10];
  }

  LODWORD(STACK[0x1E40]) = v187;
  v188 = LODWORD(STACK[0x21A0]) == 1775809920;
  v189 = (BYTE1(v183) + 111) ^ 0x74 ^ (((BYTE1(v183) + 111) ^ 0x74) - ((2 * ((BYTE1(v183) + 111) ^ 0x74) + 2) & 0xA) - 114);
  v190 = *(STACK[0x2298] + ((BYTE1(v183) + 111) ^ 0xE0));
  v191 = ((v190 ^ v189 ^ 0x37) >> 2) | ((v190 ^ v189 ^ 0x37) << 6);
  v192 = v174 ^ v147;
  v193 = (v184 - 3) ^ *(STACK[0x1F00] + (((v183 >> 10) & 0xC0 | (v183 >> 18) & 0x3F) ^ 0xA7));
  v194 = v178 ^ v147;
  v195 = *(v24 + 4 * BYTE2(v192)) ^ __ROR4__(*(v24 + 4 * v183), 16) ^ __ROR4__(*(v24 + 4 * BYTE1(v194)), 8);
  HIDWORD(v196) = *(v24 + 4 * v181);
  LODWORD(v196) = HIDWORD(v196);
  v197 = (v196 >> 16) ^ __ROR4__(*(v24 + 4 * v191), 8);
  LODWORD(v196) = __ROR4__(*(v24 + ((v181 >> 22) & 0x3FC)), 24);
  v198 = v197 ^ *(v24 + 4 * BYTE2(v194)) ^ (*(v24 + ((v192 >> 22) & 0x3FC)) << LODWORD(STACK[0x1C70])) ^ HIBYTE(*(v24 + ((v192 >> 22) & 0x3FC)));
  v199 = (v195 ^ v196) + 477323025 - ((2 * (v195 ^ v196)) & 0x38E6BE22);
  if (LODWORD(STACK[0x21A0]) == 1775809920)
  {
    v200 = v185;
  }

  else
  {
    v200 = v186;
  }

  v201 = (v138 ^ 0x91C8981u) & STACK[0x1CC0];
  STACK[0x1E10] = v201;
  v202 = v201 << v150;
  STACK[0x1E30] = v202;
  v203 = STACK[0x1F30] >> v143;
  v204 = v200 ^ v202 ^ v203 ^ v147 ^ v199;
  LODWORD(STACK[0x2198]) = v204;
  v205 = v203 ^ LODWORD(STACK[0x1C68]) ^ LODWORD(STACK[0x1E48]);
  LODWORD(STACK[0x1E98]) = 477323026;
  LODWORD(v202) = v147 ^ (v205 + 477323026 + ~((2 * v205) & 0x38E6BE22)) ^ __ROR4__(*(v24 + ((v194 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v24 + 4 * ((v182 ^ 0x1C) - 58)), 8) ^ __ROR4__(*(v24 + 4 * v192), 16) ^ *(v24 + 4 * (v193 + 13));
  v206 = LODWORD(STACK[0x1BA0]) ^ ((STACK[0x1F38] >> v133) + 477323025 - ((2 * (STACK[0x1F38] >> v133)) & 0x38E6BE22)) ^ v147 ^ LODWORD(STACK[0x1E20]) ^ (v198 - 790354457 - ((2 * v198) & 0xA1C84BCE));
  v207 = *(v24 + 4 * BYTE2(v181)) ^ __ROR4__(*(v24 + 4 * BYTE1(v192)), 8) ^ __ROR4__(*(v24 + 4 * v194), 16) ^ (((*(v24 + ((v183 >> 22) & 0x3FC)) << 8) + 477323025 - ((*(v24 + ((v183 >> 22) & 0x3FC)) << 9) & 0x38E6BE00)) ^ 0x1C735F11 | HIBYTE(*(v24 + ((v183 >> 22) & 0x3FC))));
  v208 = LODWORD(STACK[0x1E50]) ^ (((v138 ^ 0x91C8981u) & STACK[0x1BF8]) << v140) ^ (STACK[0x1BA8] >> v133) ^ v147 ^ (v207 + 477323025 - ((2 * v207) & 0x38E6BE22));
  v209 = BYTE1(v204) ^ 0x25;
  LODWORD(STACK[0x2138]) = v204 ^ 0xD0E425E7;
  v210 = v202 ^ 0xCC977AF6;
  STACK[0x2140] = v210;
  LODWORD(STACK[0x1E48]) = v202;
  v211 = STACK[0x7C0];
  v212 = *(STACK[0x7C0] + 4 * (57 * ((v204 ^ 0xD0E425E7) >> 24) - 262 * (((912513 * ((v204 ^ 0xD0E425E7) >> 24)) >> 16) >> 6)));
  LOWORD(v207) = 57 * BYTE1(v210) - 262 * (((912513 * BYTE1(v210)) >> 16) >> 6);
  HIDWORD(v213) = v212 ^ 0xD105;
  LODWORD(v213) = v212 ^ 0x15660000;
  LODWORD(v210) = (v213 >> 16) + 359059717 - ((2 * (v213 >> 16)) & 0x2ACDA20A);
  v214 = v206;
  STACK[0x2170] = v206;
  v215 = *(v211 + 4 * (57 * BYTE2(v206) - 262 * (((912513 * BYTE2(v206)) >> 16) >> 6)));
  HIDWORD(v213) = v215 ^ 0x66D105;
  LODWORD(v213) = v215 ^ 0x15000000;
  v216 = v213 >> 24;
  LODWORD(STACK[0x1E20]) = v208;
  v217 = *(v211 + 4 * (57 * (v208 ^ 0xE7) - 262 * (((912513 * (v208 ^ 0xE7u)) >> 16) >> 6)));
  LODWORD(STACK[0x21A0]) = 359059712;
  HIDWORD(v213) = v217 ^ 5;
  LODWORD(v213) = v217 ^ 0x1566D100;
  v218 = STACK[0x1CB0];
  v219 = ((LODWORD(STACK[0x21C0]) << v150) & STACK[0x1CB0]) >> v150;
  v220 = STACK[0x2240] >> v133;
  v221 = v133;
  STACK[0x22B0] = v133;
  v222 = ((v220 & v218) << v133) + v219;
  v223 = STACK[0x1CE0] & (((v222 ^ ((v222 & v171) >> 1)) & STACK[0x1CE4]) >> 2) ^ v222 ^ ((v222 & v171) >> 1);
  LODWORD(v206) = v223 ^ 0x1C735F11 ^ STACK[0x1CD0] & ((v223 & STACK[0x1CD8]) >> 4);
  v224 = LODWORD(STACK[0x1FE8]) ^ LODWORD(STACK[0x2038]);
  v225 = STACK[0x1FE8];
  LODWORD(STACK[0x1E80]) = v224;
  v226 = v224 ^ LODWORD(STACK[0x1E68]) ^ v216 ^ v210 ^ (v213 >> 8) ^ 0xB2FE30A8 ^ *(v211 + 4 * v207);
  v227 = (v226 + 477323025 - ((2 * v226) & 0x38E6BE22)) ^ v206;
  v228 = v206;
  LODWORD(STACK[0x1E18]) = v206;
  v229 = STACK[0x21C8];
  v230 = STACK[0x2130];
  LODWORD(v210) = ((v227 ^ 0x12121212u) >> STACK[0x21C8]) | ((v227 ^ 0x12121212u) << STACK[0x2130]);
  v231 = v210 + 477323025 - ((2 * v210) & 0x38E6BE22);
  v232 = *(STACK[0x2290] + (((BYTE3(v202) ^ 0xCC) + 111) ^ 0xF8)) ^ 5;
  HIDWORD(v213) = ~(-111 * v232);
  LODWORD(v213) = ((-111 * v232) ^ (68 * v232 * -111 * v232) ^ 0x38) << 24;
  v233 = v213 >> 26;
  v234 = *(v211 + 4 * (57 * v214 - 262 * (((912513 * v214) >> 16) >> 6)));
  HIDWORD(v213) = v234 ^ 5;
  LODWORD(v213) = v234 ^ 0x1566D100;
  v235 = v213 >> 8;
  v236 = v233 - ((2 * v233) & 0xFFFFFFE7) + 115;
  LODWORD(STACK[0x1B38]) = v236;
  v237 = *(v211 + 4 * (57 * (v236 ^ 0x73) - 262 * (((912513 * (v236 ^ 0x73u)) >> 16) >> 6)));
  HIDWORD(v213) = v237 ^ 0xD105;
  LODWORD(v213) = v237 ^ 0x15660000;
  v238 = v213 >> 16;
  v239 = STACK[0x2228];
  if (!v188)
  {
    v239 = STACK[0x2070];
  }

  LODWORD(STACK[0x1DF0]) = v239;
  v240 = STACK[0x22B8];
  v241 = v227 ^ 0xE614D03;
  if (LODWORD(STACK[0x22B8]) != 477323025)
  {
    v241 = v231;
  }

  LODWORD(STACK[0x1E68]) = v241;
  v242 = v208 ^ 0xD0E425E7;
  STACK[0x2070] = v242;
  LODWORD(v242) = *(v211 + 4 * (57 * BYTE2(v242) - 262 * (((912513 * BYTE2(v242)) >> 16) >> 6)));
  HIDWORD(v243) = v242 ^ 0x66D105;
  LODWORD(v243) = v242 ^ 0x15000000;
  LODWORD(v242) = LODWORD(STACK[0x1E78]) ^ 0x1C735F11 ^ *(v211 + 4 * (57 * v209 - 262 * (((912513 * v209) >> 16) >> 6))) ^ (v235 + 359059717 - ((2 * v235) & 0x2ACDA20A)) ^ (v243 >> 24) ^ v238;
  LODWORD(v242) = (v242 + 840037157 - ((2 * v242) & 0x6423E64A)) ^ v225;
  LODWORD(v242) = (v242 - 1642741227 - ((2 * v242) & 0x3C2B842A)) ^ LODWORD(STACK[0x2150]);
  LODWORD(STACK[0x1E78]) = 477323033;
  LODWORD(v242) = (((v242 + 165695329 - ((2 * v242) & 0x13C09EC2)) ^ 0x9E04F61) + 477323025 - 2 * (((v242 + 165695329 - ((2 * v242) & 0x13C09EC2)) ^ 0x9E04F61) & 0x1C735F19 ^ (v242 + 165695329 - ((2 * v242) & 0x13C09EC2)) & 8)) ^ v228;
  v244 = ((v242 ^ 0x12121212) << v230) + ((v242 ^ 0x12121212) >> v229);
  v245 = STACK[0x21E8];
  v246 = LODWORD(STACK[0x21E8]) ^ 0x696E25EEu;
  STACK[0x1DD0] = v246;
  v248 = v242 ^ 0xE614D03;
  if (v240 != 477323025)
  {
    v248 = v244 + 477323025 - ((2 * v244) & 0x38E6BE22);
  }

  LODWORD(STACK[0x1E50]) = v248;
  v247 = (v246 >> v230) + (v246 << v229);
  v249 = v247 + 1768826350 - ((2 * v247) & 0xD2DC4BDC);
  v250 = STACK[0x2220];
  v251 = ((v250 ^ 0x438F6703) >> v230) ^ ((v250 ^ 0x438F6703) << v229);
  v252 = v251 + 1133471491 - ((2 * v251) & 0x871ECE06);
  HIDWORD(v253) = LODWORD(STACK[0x21D0]) ^ 0x11111111;
  LODWORD(v253) = LODWORD(STACK[0x21D0]) ^ 0x1C735F00;
  v254 = (v253 >> 8) ^ LODWORD(STACK[0x1EC0]);
  LODWORD(v253) = __ROR4__(*(v24 + 4 * (STACK[0x1FF0] ^ 0xC6u)), 16);
  v255 = LODWORD(STACK[0x1EB0]) ^ 0x27;
  v256 = STACK[0x21D8];
  LODWORD(STACK[0x1EB0]) = LODWORD(STACK[0x21D8]) ^ 0x77E;
  v257 = v254 ^ v253 ^ *(v24 + 4 * (v256 ^ 0x7Eu ^ v255));
  LODWORD(STACK[0x21D0]) = v256 ^ 0x6DD;
  v258 = v147 ^ ((STACK[0x1C20] >> v221) + LODWORD(STACK[0x1C28])) ^ (v257 + (v256 ^ 0x438F645F) - ((2 * v257) & 0x871ECE06)) ^ LODWORD(STACK[0x1E58]);
  LODWORD(STACK[0x1FF0]) = ((v258 ^ 0xD0E425E7) >> 24) - (((v258 ^ 0xD0E425E7) >> 23) & 0xA);
  v259 = (LODWORD(STACK[0x1ED8]) + 477323025 - ((2 * LODWORD(STACK[0x1ED8])) & 0x38E6BE22)) ^ LODWORD(STACK[0x1EC8]);
  v260 = STACK[0x2270];
  v261 = (v259 + 1133471491 - ((2 * v259) & 0x871ECE06)) ^ ((STACK[0x1E00] & LODWORD(STACK[0x1C18])) << STACK[0x2270]) ^ STACK[0x1DF8] ^ LODWORD(STACK[0x1E60]);
  v262 = *(v24 + 4 * (LODWORD(STACK[0x20D8]) ^ 0x56u)) ^ __ROR4__(*(v24 + 4 * (LODWORD(STACK[0x1EB8]) ^ 5u)), 8) ^ __ROR4__(*(v24 + 4 * (LODWORD(STACK[0x20D0]) ^ 5u)), 16);
  LODWORD(v253) = __ROR4__(*(v24 + 4 * (LODWORD(STACK[0x2190]) ^ 5u)), 24);
  v263 = STACK[0x1E08];
  v264 = LODWORD(STACK[0x1E70]) ^ STACK[0x1E08] ^ STACK[0x1BC0] ^ ((v262 ^ v253) + 1133471491 - ((2 * (v262 ^ v253)) & 0x871ECE06));
  v265 = v264 - 790354457 - ((2 * v264) & 0xA1C84BCE);
  v266 = (v261 - 790354457 - ((2 * v261) & 0xA1C84BCE)) ^ v147;
  v267 = WORD1(v266) - ((v266 >> 15) & 0xA);
  HIDWORD(v253) = *(v24 + 4 * (LODWORD(STACK[0x1ED0]) ^ 0xCCu));
  LODWORD(v253) = HIDWORD(v253);
  v268 = *(v24 + 4 * (LODWORD(STACK[0x20E0]) ^ 5u));
  LOBYTE(v256) = *(STACK[0x2298] + ((HIBYTE(v268) + 111) ^ 0xE0)) ^ (HIBYTE(v268) + 111) ^ 0x74 ^ (((HIBYTE(v268) + 111) ^ 0x74) - ((2 * ((HIBYTE(v268) + 111) ^ 0x74) + 2) & 0xA) - 114) ^ 0x37;
  v269 = ((v253 >> 16) - 48991124 - ((2 * (v253 >> 16)) & 0xFA28E8D8)) ^ LODWORD(STACK[0x1EE0]) ^ __ROR4__(*(v24 + 4 * STACK[0x20C8]), 8) ^ (((v256 >> 2) | (v256 << 6)) | (v268 << 8));
  v270 = v269 + 1133471491 - ((2 * v269) & 0x871ECE06);
  LODWORD(STACK[0x21E8]) = v245;
  if (v240 != 477323025)
  {
    v245 = v249;
  }

  LODWORD(STACK[0x20E0]) = v245;
  LODWORD(STACK[0x2220]) = v250;
  if (v240 == 477323025)
  {
    v271 = v250;
  }

  else
  {
    v271 = v252;
  }

  v272 = v147 ^ STACK[0x1E28] ^ v263 ^ ((v270 ^ v271) - 790354457 - ((2 * (v270 ^ v271)) & 0xA1C84BCE));
  v273 = *(v24 + 4 * BYTE1(v266));
  HIDWORD(v275) = *(v24 + ((v266 >> 22) & 0x3FC));
  LODWORD(v275) = HIDWORD(v275);
  v274 = v275 >> 24;
  v276 = HIBYTE(HIDWORD(v275)) & 0xC;
  LODWORD(STACK[0x1EB8]) = 477323037;
  v277 = v265 ^ v147;
  HIDWORD(v275) = *(v24 + 4 * v266);
  LODWORD(v275) = HIDWORD(v275);
  v278 = (v275 >> 16) + 477323025 - ((2 * (v275 >> 16)) & 0x38E6BE22);
  HIDWORD(v275) = *(v24 + 4 * (((v265 ^ v147) - ((2 * (v265 ^ v147)) & 0xA) + 5) ^ 5u));
  LODWORD(v275) = HIDWORD(v275);
  v279 = (((v273 << 24) + 477323025 - ((v273 << 25) & 0x38000000)) ^ 0x1C735F11 | (v273 >> 8)) ^ __ROR4__(*(v24 + ((v277 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v24 + 4 * v272), 16) ^ *(v24 + 4 * ((((v258 ^ 0xD0E425E7) >> 16) - (((v258 ^ 0xD0E425E7) >> 15) & 0xA) + 5) ^ 5));
  v280 = (v275 >> 16) ^ __ROR4__(*(v24 + 4 * BYTE1(v272)), 8);
  v281 = (v274 + 477323025 - 2 * (v274 & 0x1C735F1D ^ v276)) ^ __ROR4__(*(v24 + 4 * (v258 ^ 0xE7u)), 16) ^ __ROR4__(*(v24 + 4 * BYTE1(v277)), 8) ^ *(v24 + 4 * (((BYTE2(v272) - ((v272 >> 15) & 0xA) + 13) ^ 5) - 8));
  HIDWORD(v275) = *(v24 + ((v272 >> 22) & 0x3FC));
  LODWORD(v275) = HIDWORD(v275);
  v282 = v280 ^ *(v24 + 4 * ((v267 + 5) ^ 5)) ^ __ROR4__(*(v24 + 4 * ((LODWORD(STACK[0x1FF0]) + 5) ^ 5)), 24);
  v283 = *(v24 + 4 * BYTE2(v277)) ^ v278 ^ ((v275 >> 24) + 477323025 - ((2 * (v275 >> 24)) & 0x38E6BE22)) ^ __ROR4__(*(v24 + 4 * ((((v258 ^ 0x25E7) >> 8) - (((v258 ^ 0xD0E425E7) >> 7) & 0x8C) - 58) ^ 0xC6)), 8);
  v284 = STACK[0x2218];
  v285 = ((v284 ^ 0xF9405613) >> STACK[0x1E88]) | ((v284 ^ 0xF9405613) << STACK[0x1E38]);
  v286 = v285 - 113224173 - ((2 * v285) & 0xF280AC26);
  v188 = LODWORD(STACK[0x21E0]) == -48991124;
  v287 = STACK[0x22A0];
  v288 = LODWORD(STACK[0x1E40]) ^ (STACK[0x1E10] << v260) ^ (STACK[0x1F38] >> STACK[0x22A0]) ^ (v279 - 113224173 - ((2 * v279) & 0xF280AC26));
  v289 = v288 - 790354457 - ((2 * v288) & 0xA1C84BCE);
  v290 = LODWORD(STACK[0x1DF0]) ^ ((STACK[0x1C08] >> STACK[0x22A0]) + STACK[0x1C00]) ^ (v282 - 113224173 - ((2 * v282) & 0xF280AC26));
  LODWORD(v272) = (STACK[0x1B78] >> STACK[0x22A0]) ^ STACK[0x1BF0];
  v291 = LODWORD(STACK[0x1E90]) ^ v272 ^ ((v281 ^ 0x1C735F11) - 113224173 - 2 * ((v281 ^ 0x1C735F11) & 0x7940561B ^ v281 & 8));
  v292 = v291 + 9703 - ((2 * v291) & 0x4BCE);
  v293 = (v290 - 790354457 - ((2 * v290) & 0xA1C84BCE)) ^ v147;
  v294 = (((v290 + 9703 - ((2 * v290) & 0x4BCE)) ^ v147) >> 8);
  v295 = BYTE2(v293);
  LODWORD(STACK[0x1EE0]) = v293;
  v296 = 57 * v294 - 262 * ((912513 * v294) >> 22);
  LODWORD(STACK[0x20D0]) = v289 ^ v147;
  v297 = *(v211 + 4 * (57 * ((v289 ^ v147) >> 24) - 262 * (((912513 * ((v289 ^ v147) >> 24)) >> 16) >> 6)));
  v298 = (v297 ^ 0x1566D105) << ((v272 & 0x10 ^ 0x10) + (v272 & 0x10));
  v299 = v283 - 113224173 - ((2 * v283) & 0xF280AC26);
  v300 = STACK[0x1E30] ^ (STACK[0x1F30] >> STACK[0x22B0]);
  LODWORD(STACK[0x2218]) = v284;
  if (v188)
  {
    v286 = v284;
  }

  v301 = ((v286 ^ v300 ^ v299) - 790354457 - ((2 * (v286 ^ v300 ^ v299)) & 0xA1C84BCE)) ^ v147;
  v302 = ((v286 ^ v300 ^ v299) - 25 - ((2 * (v286 ^ v300 ^ v299)) & 0xCE)) ^ v147;
  LODWORD(STACK[0x20C8]) = v301;
  v303 = *(STACK[0x2260] + ((-55 * HIBYTE(v301)) ^ 0xF2));
  HIDWORD(v304) = v303 ^ 1;
  LODWORD(v304) = (v303 ^ 4) << 24;
  v305 = v298 | HIWORD(v297) ^ 0x1566;
  v306 = 57 * v295 - 262 * ((912513 * v295) >> 22);
  v307 = (((v304 >> 26) ^ ((v304 >> 26) >> 5) ^ ((v304 >> 26) >> 3) ^ 0x13) - 58);
  v308 = *(v211 + 4 * (57 * v302 - 262 * (((912513 * v302) >> 16) >> 6)));
  v309 = STACK[0x21A0];
  HIDWORD(v304) = v308 ^ 5;
  LODWORD(v304) = v308 ^ LODWORD(STACK[0x21A0]);
  v310 = v305 ^ (v304 >> 8) ^ 0x66D10515;
  v311 = *(v211 + 4 * (57 * (v292 ^ v147) - 262 * (((912513 * (v292 ^ v147)) >> 16) >> 6)));
  HIDWORD(v304) = v311 ^ 5;
  LODWORD(v304) = v311 ^ LODWORD(STACK[0x21A0]);
  v312 = (v304 >> 8) + 359059717 - ((2 * (v304 >> 8)) & 0x2ACDA20A);
  v313 = *(v211 + 4 * (57 * v307 - 262 * (((912513 * v307) >> 16) >> 6)));
  HIDWORD(v304) = v313 ^ 0xD105;
  LODWORD(v304) = v313 ^ 0x15660000;
  v314 = *(v211 + 4 * v296);
  LODWORD(STACK[0x1ED0]) = v314;
  v315 = (v304 >> 16) ^ v314 ^ v312;
  LODWORD(STACK[0x21E0]) = v315;
  v316 = *(v211 + 4 * v306);
  LODWORD(STACK[0x1ED8]) = v316;
  LODWORD(v304) = __ROR4__(v316, 24);
  v317 = ((v310 ^ v304) + 359059717 - ((2 * (v310 ^ v304)) & 0x2ACDA20A)) ^ *(v211 + 4 * (57 * ((v292 ^ v147) >> 8) - 262 * (((912513 * ((v292 ^ v147) >> 8)) >> 16) >> 6)));
  v318 = (((STACK[0x22A8] >> v287) & STACK[0x1D18]) << v287) + STACK[0x1BE8];
  v319 = v318 ^ ((((((v318 ^ ((v318 & STACK[0x1F10]) >> 1)) & STACK[0x1D20]) >> (v315 & 1) >> !(v315 & 1)) ^ v318) & STACK[0x1F10]) >> 1);
  v320 = (v317 + 1768826350 - ((2 * v317) & 0xD2DC4BDC)) ^ LODWORD(STACK[0x1EA0]);
  v321 = STACK[0x1FE8];
  v322 = (v320 + 840037157 - ((2 * v320) & 0x6423E64A)) ^ LODWORD(STACK[0x1FE8]);
  v323 = STACK[0x2150];
  v324 = (v322 - 1642741227 - ((2 * v322) & 0x3C2B842A)) ^ LODWORD(STACK[0x2150]);
  v325 = (v324 + 165695329 - ((2 * v324) & 0x13C09EC2)) ^ STACK[0x1CE8] & ((v319 & STACK[0x1CF0]) >> 4) ^ v319;
  v326 = STACK[0x2130];
  v327 = STACK[0x1EA8];
  v328 = ((v325 ^ 0x35DC735D) >> STACK[0x1EA8]) + ((v325 ^ 0x35DC735D) << STACK[0x2130]);
  v329 = v328 + 1775809920 - ((2 * v328) & 0xD3B16B00);
  v330 = STACK[0x2200];
  v331 = LODWORD(STACK[0x2200]) ^ 0x696E25EEu;
  v332 = v331 >> STACK[0x2130];
  v333 = STACK[0x21C8];
  STACK[0x1EC8] = v331;
  v334 = v332 + (v331 << v333);
  v335 = STACK[0x2288];
  v336 = v325 ^ 0x5C04C6DD;
  if (LODWORD(STACK[0x2288]) != 477323025)
  {
    v336 = v329;
  }

  LODWORD(STACK[0x20D8]) = v336;
  v337 = v334 + 1768826350 - ((2 * v334) & 0xD2DC4BDC);
  v338 = STACK[0x2170];
  STACK[0x1EA0] = STACK[0x2170] >> 24;
  v339 = *(v211 + 4 * (57 * (v338 >> 24) - 262 * (((912513 * (v338 >> 24)) >> 16) >> 6)));
  HIDWORD(v341) = v339 ^ 0xD105;
  LODWORD(v341) = v339 ^ 0x15660000;
  v340 = v341 >> 16;
  v342 = BYTE2(STACK[0x2140]);
  v343 = 57 * v342 - 262 * ((912513 * v342) >> 22);
  v344 = *(v211 + 4 * (57 * (LODWORD(STACK[0x2198]) ^ 0xE7) - 262 * (((912513 * (LODWORD(STACK[0x2198]) ^ 0xE7u)) >> 16) >> 6)));
  HIDWORD(v341) = v344 ^ 5;
  LODWORD(v341) = v344 ^ v309;
  v345 = LODWORD(STACK[0x1EE8]) ^ *(v211 + 4 * (57 * (((STACK[0x1E20] & 0xFF00) >> 8) ^ 0x25) - 262 * (((912513 * (((STACK[0x1E20] & 0xFF00) >> 8) ^ 0x25)) >> 16) >> 6))) ^ v340 ^ ((v341 >> 8) + 359059717 - ((2 * (v341 >> 8)) & 0x2ACDA20A));
  STACK[0x1E90] = v343;
  v346 = *(v211 + 4 * v343);
  v347 = HIBYTE(v346) ^ 0x15;
  LODWORD(STACK[0x1E88]) = v347;
  v348 = ((v345 ^ 0x7AA25A11 ^ (v347 | (v346 << 8))) + 840037157 - ((2 * (v345 ^ 0x7AA25A11 ^ (v347 | (v346 << 8)))) & 0x6423E64A)) ^ v321;
  v349 = (v348 - 1642741227 - ((2 * v348) & 0x3C2B842A)) ^ v323;
  v350 = (((v349 + 165695329 - ((2 * v349) & 0x13C09EC2)) ^ 0x9E04F61) + 477323025 - 2 * (((v349 + 165695329 - ((2 * v349) & 0x13C09EC2)) ^ 0x9E04F61) & 0x1C735F13 ^ (v349 + 165695329 - ((2 * v349) & 0x13C09EC2)) & 2)) ^ LODWORD(STACK[0x1E18]);
  v351 = ((((v350 ^ 0x12121212u) >> v327) + 477323025 - ((2 * ((v350 ^ 0x12121212u) >> v327)) & 0x38E6BE22)) ^ 0x1C735F11) + ((v350 ^ 0x12121212u) << v326);
  v352 = v351 + 477323025 - ((2 * v351) & 0x38E6BE22);
  LODWORD(STACK[0x2200]) = v330;
  if (v335 == 477323025)
  {
    v337 = v330;
  }

  LODWORD(STACK[0x1EE8]) = v337;
  v353 = v350 ^ 0xE614D03;
  if (LODWORD(STACK[0x2278]) != 477323025)
  {
    v353 = v352;
  }

  LODWORD(STACK[0x1FF0]) = v353;
  v354 = LODWORD(STACK[0x1E48]) ^ 0xFFFFFFF6;
  v355 = -((v338 >> 7) & 0xA) - 55 * (v338 >> 8) + 5;
  v356 = *(STACK[0x2258] + ((-((v338 >> 7) & 0xA) - 55 * BYTE1(v338) + 5) ^ 0x3BLL)) ^ v355 ^ 0xFFFFFFD7 ^ ((v355 ^ 0xFFFFFFD7) - ((2 * (v355 ^ 0xFFFFFFD7) + 6) & 0xA) - 96);
  STACK[0x1E70] = STACK[0x2070] >> 24;
  STACK[0x1EC0] = *(STACK[0x21B8] + ((v354 + ((12 - 2 * v354) | 0xF5) - 33) ^ 0x1BLL));
  LODWORD(STACK[0x2190]) = (v356 ^ 0x1C) - ((2 * (v356 ^ 0x1C) + 12) & 0xA) - 53;
  v357 = STACK[0x2210];
  STACK[0x1EF0] = LODWORD(STACK[0x2210]) ^ 0x696E25EEu;
  LODWORD(STACK[0x2210]) = v357;
  v358 = ((LODWORD(STACK[0x20C0]) ^ LODWORD(STACK[0x2188]) ^ 0x477CC7FC) - 1526629959 - 2 * ((LODWORD(STACK[0x20C0]) ^ LODWORD(STACK[0x2188]) ^ 0x477CC7FC) & 0x250179BB ^ (LODWORD(STACK[0x20C0]) ^ LODWORD(STACK[0x2188])) & 2)) ^ LODWORD(STACK[0x2098]);
  v359 = (v358 + 477323025 - ((2 * v358) & 0x38E6BE22)) ^ LODWORD(STACK[0x2120]);
  v360 = (v359 - 1526629959 - ((2 * v359) & 0x4A02F372)) ^ LODWORD(STACK[0x2090]);
  return (*(STACK[0x22F8] + 8 * (((16 * (((v360 + 782592548) | v360) == 0)) | (32 * (((v360 + 782592548) | v360) == 0))) ^ LODWORD(STACK[0x21D8]))))();
}

uint64_t sub_26AA67070(uint64_t a1, int a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v19 = LODWORD(STACK[0x21D0]) - 1606911619;
  v20 = v19 ^ 0xA0387C4F;
  v21 = v19 & 0x5FC78B71;
  v22 = v15 ^ LODWORD(STACK[0x2000]);
  LODWORD(STACK[0x2288]) = v21;
  v23 = LODWORD(STACK[0x2050]) ^ LODWORD(STACK[0x2040]);
  LODWORD(STACK[0x1EE8]) = v20;
  v24 = (v23 - 420135602 - ((v20 ^ 0xCDEA782D) & (2 * v23))) ^ LODWORD(STACK[0x1FB8]);
  v25 = LODWORD(STACK[0x1FF8]) ^ 0x5AA81665 ^ LODWORD(STACK[0x1F08]) ^ (v24 + 477323025 - ((2 * v24) & 0x38E6BE22)) ^ (v22 + 1188776308 - ((v22 << (v21 ^ 0x71)) & 0x8DB692E8));
  v26 = (v25 - 420135602 - ((2 * v25) & 0xCDEA7A9C)) ^ LODWORD(STACK[0x1FC8]);
  v27 = (v26 - 1981760469 - ((2 * v26) & 0x13C17856)) ^ LODWORD(STACK[0x2048]);
  v28 = (v27 - 1981760469 - ((2 * v27) & 0x13C17856)) ^ LODWORD(STACK[0x1FB0]);
  v29 = (v28 - 1981760469 - ((2 * v28) & 0x13C17856)) ^ LODWORD(STACK[0x1FD0]);
  v30 = (v29 - 495075771 - ((2 * v29) & 0xC4FB7C8A)) ^ LODWORD(STACK[0x20B0]);
  v31 = (v30 - 1981760469 - ((2 * v30) & 0x13C17856)) ^ LODWORD(STACK[0x1FC0]);
  v32 = v31 - 495075771 - ((2 * v31) & 0xC4FB7C8A);
  v33 = ((a5 ^ v18) + 477323025 - ((2 * (a5 ^ v18)) & 0x38E6BE22)) ^ v14;
  v34 = a7 ^ v17 ^ (v33 + 477323025 - ((2 * v33) & 0x38E6BE22));
  v35 = (v12 * v9 + 1775809920 - ((577348782 * v12) & 0xD3B16B00)) ^ v16 ^ v34;
  v36 = a8 ^ v14 ^ (v35 + 477323025 - ((2 * v35) & 0x38E6BE22));
  v37 = v10 ^ v17 ^ (v36 + 477323025 - ((2 * v36) & 0x38E6BE22));
  v38 = (((STACK[0x1DD0] & STACK[0x2280]) >> 1) + 1768826350 - (STACK[0x1DD0] & LODWORD(STACK[0x2280]) & 0xD2DC4BDC)) ^ LODWORD(STACK[0x21E8]);
  v39 = STACK[0x21C0];
  v40 = (((STACK[0x1EF0] & STACK[0x2280]) >> 1) + 1768826350 - (STACK[0x1EF0] & LODWORD(STACK[0x2280]) & 0xD2DC4BDC)) ^ LODWORD(STACK[0x2210]);
  v41 = (((STACK[0x1EC8] & STACK[0x1F10]) >> 1) + 1768826350 - (STACK[0x1EC8] & LODWORD(STACK[0x1F10]) & 0xD2DC4BDC)) ^ LODWORD(STACK[0x2200]);
  v42 = (((STACK[0x1DD8] & STACK[0x2280]) >> 1) + 1768826350 - (STACK[0x1DD8] & LODWORD(STACK[0x2280]) & 0xD2DC4BDC)) ^ LODWORD(STACK[0x21F0]);
  v43 = LODWORD(STACK[0x2088]) ^ (((v38 & STACK[0x2240]) >> STACK[0x22A0]) + ((v38 & STACK[0x21C0]) << STACK[0x22C0])) ^ (((v40 & STACK[0x2238]) << STACK[0x2270]) + ((v40 & STACK[0x2240]) >> STACK[0x22A0])) ^ (((v41 & STACK[0x22A8]) >> STACK[0x22B0]) | ((v41 & v39) << STACK[0x22C0])) ^ (((v42 & v39) << STACK[0x22C0]) | ((v42 & STACK[0x2240]) >> STACK[0x22A0])) ^ v32;
  v44 = v13 ^ LODWORD(STACK[0x20A0]) ^ (v43 - 495075771 - ((2 * v43) & 0xC4FB7C8A));
  v45 = (v44 + 477323025 - ((2 * v44) & 0x38E6BE22)) ^ LODWORD(STACK[0x2168]);
  v46 = (v45 + 477323025 - ((2 * v45) & 0x38E6BE22)) ^ LODWORD(STACK[0x2118]);
  v47 = (v46 + a2 - (a3 & (2 * v46))) ^ LODWORD(STACK[0x2178]);
  v48 = (v47 + 477323025 - ((2 * v47) & 0x38E6BE22)) ^ LODWORD(STACK[0x20A8]);
  v49 = (v48 + 540682685 - ((2 * v48) & 0x4074537A)) ^ LODWORD(STACK[0x2110]);
  v50 = (v49 + 540682685 - ((2 * v49) & 0x4074537A)) ^ LODWORD(STACK[0x2100]);
  v51 = (v50 + 540682685 - ((2 * v50) & 0x4074537A)) ^ LODWORD(STACK[0x2108]);
  v52 = (v51 + 540682685 - ((2 * v51) & 0x4074537A)) ^ LODWORD(STACK[0x21A8]);
  v53 = (v52 + 1133471491 - ((2 * v52) & 0x871ECE06)) ^ LODWORD(STACK[0x2208]);
  v54 = (v53 + 1133471491 - ((2 * v53) & 0x871ECE06)) ^ LODWORD(STACK[0x21F8]);
  v55 = (v54 + 1133471491 - ((2 * v54) & 0x871ECE06)) ^ LODWORD(STACK[0x2220]);
  v56 = (v55 + 1133471491 - ((2 * v55) & 0x871ECE06)) ^ LODWORD(STACK[0x2248]);
  v57 = (v56 - 113224173 - ((2 * v56) & 0xF280AC26)) ^ LODWORD(STACK[0x2228]);
  v58 = (v57 - 113224172 + ~((2 * v57) & 0xF280AC26)) ^ LODWORD(STACK[0x2230]);
  v59 = (v58 - 113224172 + ~((2 * v58) & 0xF280AC26)) ^ LODWORD(STACK[0x2268]);
  v60 = (v59 - 113224173 - ((2 * v59) & 0xF280AC26)) ^ LODWORD(STACK[0x2218]);
  v61 = STACK[0x1D58];
  v62 = (v60 - 1191414106 - ((2 * v60) & 0x71F8ED4C)) ^ LODWORD(STACK[0x1D58]);
  v63 = v62 ^ 0xAF772D02;
  LODWORD(STACK[0x22B8]) = v37;
  v62 ^= 0x5088D2FDu;
  v64 = (v37 ^ 0x325D713F) + 1868968369 * (LODWORD(STACK[0x1B40]) + v63) + 1868968369;
  v65 = LODWORD(STACK[0x1B3C]) ^ a6 ^ (-690719775 * v62 + 477323025 - ((766044098 * v62) & 0x38E6BE22)) ^ 0x7EE9460D;
  v66 = ((v34 ^ 0x1C735F11) + 679052781 * (LODWORD(STACK[0x1B40]) - v62)) ^ 0x54585424;
  LODWORD(STACK[0x2198]) = (v66 >> 8) - ((v66 >> 7) & 0xA);
  v67 = STACK[0x1FA0];
  v68 = STACK[0x2030] + 3163;
  v69 = STACK[0x2030];
  v70 = *(v68 + (((STACK[0x1FA0] ^ 0x3B) + 84) ^ 0x85));
  v71 = STACK[0x1EF8];
  v72 = (STACK[0x1CB8] + STACK[0x1EF8]);
  v73 = *v72 + 84;
  v74 = *(v68 + ((*v72 + 84) ^ 0x85));
  v75 = v11 ^ v61 ^ v60 ^ 0x1B28EB14 ^ v8;
  LODWORD(STACK[0x2138]) = v75;
  LODWORD(STACK[0x22B0]) = v73 ^ v74 ^ (HIBYTE(v75) - ((v75 >> 23) & 0xA) + 5);
  v64 ^= 0x5C641966u;
  LODWORD(STACK[0x20E0]) = *(STACK[0x2258] + ((-55 * BYTE1(v65)) ^ 0x3ELL)) ^ (201 * (v65 >> 8)) ^ 0xFFFFFFD2 ^ (((201 * (v65 >> 8)) ^ 0xFFFFFFD2) - ((2 * ((201 * (v65 >> 8)) ^ 0xFFFFFFD2) + 6) & 0xA) - 96);
  v76 = HIBYTE(v64);
  v77 = v64;
  v78 = STACK[0x2180];
  v79 = *(STACK[0x2180] + ((((v65 & 3) << 6) | (v65 >> 2)) ^ 0x4DLL));
  v80 = v79 ^ (2 * (v79 ^ 0xFFFFFFA7) * (v79 ^ 0xFFFFFFA7)) ^ 0xFFFFFFA2;
  LODWORD(STACK[0x2130]) = v80 - ((2 * v80 + 10) & 0xA);
  LODWORD(STACK[0x21A0]) = v66;
  LODWORD(STACK[0x2148]) = HIWORD(v66) - ((v66 >> 15) & 0x3E);
  v81 = v70 ^ ((v67 ^ 0x3B) + 84);
  LODWORD(STACK[0x2278]) = v81 ^ 5;
  LODWORD(STACK[0x21E0]) = v81 ^ 0xFFFFFF99;
  v82 = STACK[0x2290];
  LOBYTE(v81) = *(STACK[0x2290] + ((((v67 >> 63) + 111) ^ 0x94 ^ (((v81 ^ 5) & 0x4C ^ 0x40) + ((v81 ^ 0xFFFFFF99) & 0x4C))) & 0xDF)) ^ 5;
  LOBYTE(v81) = (-111 * v81) ^ (68 * v81 * -111 * v81) ^ 0x3B;
  LOBYTE(v63) = *(v78 + (((v72[1] >> 2) | (v72[1] << 6)) ^ 0x4DLL));
  v83 = STACK[0x1B30];
  v84 = *(STACK[0x1B30] + (((v63 ^ (2 * (v63 ^ 0xA7) * (v63 ^ 0xA7)) ^ 0xA2) + 100) ^ 0xF4));
  v85 = ((v81 >> 2) | (v81 << 6)) ^ (2 * ((v71 + 0x2D085CDAF7944B3BLL - ((2 * v71) & 0x1EF289670)) ^ v67));
  HIDWORD(v86) = v84 ^ 5;
  LODWORD(v86) = v84 << 24;
  LODWORD(STACK[0x22A0]) = v86 >> 28;
  v87 = *(v83 + ((v85 + 87) ^ 0xF4));
  HIDWORD(v86) = v87 ^ 5;
  LODWORD(v86) = v87 << 24;
  v88 = (v86 >> 28) ^ 0xFFFFFFBF;
  *(&v90 + 1) = v85 ^ (v71 + 1);
  *&v90 = 2 * ((v71 + 0x2D085CDAF7944B3BLL - ((2 * v71) & 0x1EF289670)) ^ v67);
  v89 = v90 >> 63;
  v91 = STACK[0x2260];
  LODWORD(v85) = *(STACK[0x2260] + ((-19 - 55 * v72[2]) ^ 0xF2)) ^ 5;
  v92 = STACK[0x1B28];
  LODWORD(v85) = *(STACK[0x1B28] + (((((v85 >> 2) | (v85 << 6)) ^ (((((v85 >> 2) | (v85 << 6)) >> 2) & 0x38 ^ ((v85 >> 2) | (v85 << 6)) & 0xF8) >> 3) ^ 0x13) - 58) ^ 6));
  DWORD1(v90) = ~v85;
  LODWORD(v90) = (v85 ^ 4) << 24;
  LODWORD(STACK[0x2140]) = v90 >> 25;
  v93 = STACK[0x1B20];
  LODWORD(v85) = *(STACK[0x1B20] + ((v89 + 5) ^ 0x16));
  DWORD1(v90) = v85 ^ 5;
  LODWORD(v90) = v85 << 24;
  LODWORD(STACK[0x21C0]) = v90 >> 30;
  *(&v90 + 1) = v89 ^ (v71 + 2);
  *&v90 = v89;
  v94 = v90 >> 63;
  v95 = v69;
  v96 = v69 + 1582;
  LODWORD(v89) = *(v69 + 1582 + ((v72[3] + 32) ^ 0xE5));
  STACK[0x20D8] = v69 + 1582;
  STACK[0x2190] = (v88 >> 2) | (v88 << 6);
  v97 = v89 ^ 0x67;
  LODWORD(v85) = (8 * (v89 ^ 0x67)) | 0xE8;
  LOBYTE(v88) = v94 + 32;
  LODWORD(v89) = ((v94 + 32) ^ 0x2F) - ((v94 + 32) ^ 0xB5);
  LODWORD(v85) = v97 ^ v85;
  *(&v90 + 1) = v94 ^ (v71 + 3);
  *&v90 = v94;
  v98 = v90 >> 63;
  LOBYTE(v97) = *(v69 + ((-55 * v72[4]) ^ 0x3ELL) + 2901) ^ (-55 * v72[4]) ^ 0xD2 ^ (((-55 * v72[4]) ^ 0xD2) - ((2 * ((-55 * v72[4]) ^ 0xD2) + 6) & 0xA) - 96) ^ 0x1C;
  LOBYTE(v97) = *(v68 + ((v97 + 26) ^ 0x85)) ^ (v97 - ((2 * (v97 + 26)) & 0xA) + 31) ^ 0x86;
  LODWORD(STACK[0x1FF0]) = v77;
  v99 = *(v91 + ((-12 - 55 * v98) ^ 0xF2));
  v100 = *(STACK[0x21B8] + ((v97 - 39) ^ 0x1ELL));
  v101 = STACK[0x21B8];
  LODWORD(v91) = v76 - ((v77 >> 23) & 0xA) + 5;
  LODWORD(STACK[0x21C8]) = v91;
  LOBYTE(v76) = ((v99 ^ 5uLL) >> ((v99 & 0xBB ^ 0xBA) + (v99 & 0xBB ^ 1) + 71)) ^ (v99 << 6);
  v102 = STACK[0x1B18];
  v103 = *(STACK[0x1B18] + (((v76 ^ ((v76 ^ 0x40) >> 5) ^ ((v76 ^ 0x40) >> 3) ^ 0x53) - 58) ^ 0x27)) ^ 0xFFFFFFAE;
  v104 = v103 ^ v100 ^ (v103 >> 3) ^ (v103 >> 4);
  LODWORD(STACK[0x21D8]) = v104;
  LODWORD(v67) = v104 ^ v91;
  *(&v90 + 1) = v98 ^ (v71 + 4);
  *&v90 = v98;
  v105 = v90 >> 63;
  LODWORD(STACK[0x1EF0]) = v67;
  v106 = *(v83 + (((v67 & 0x7E ^ 0x3A) + (v67 & 0x7E ^ 0x44)) ^ (v72[5] + 87) ^ 0x8Au));
  DWORD1(v90) = v106 ^ 0x55555555;
  LODWORD(v90) = v106 << 24;
  v107 = v90 >> 28;
  LODWORD(v89) = v85 ^ (v89 - ((2 * v89) & 0xA) + 5);
  LODWORD(v85) = *(v83 + ((v105 + 87) ^ 0xF4));
  v108 = v89 ^ *(v95 + 1852 + (v88 ^ 0xD1));
  DWORD1(v90) = v85 ^ 5;
  LODWORD(v90) = v85 << 24;
  LODWORD(v85) = v90 >> 28;
  v109 = (v105 ^ (v71 + 5)) << (((v90 & 0x10000000) == 0) + ((v90 & 0x10000000) != 0));
  v110 = v109 | (v105 >> 63);
  *(&v90 + 1) = v110 ^ (v71 + 6);
  *&v90 = v109;
  v111 = v90 >> 63;
  LODWORD(v110) = *(v92 + ((((2 * v110) & 0xA) + (v110 ^ 5)) ^ 6));
  DWORD1(v90) = ~v110;
  LODWORD(v90) = (v110 ^ 4) << 24;
  LODWORD(v110) = *(v82 + ((((v90 >> 25) ^ 0x26 ^ ((8 * (v90 >> 25)) | 0x90)) + 111) ^ 0xF8));
  LODWORD(STACK[0x20D0]) = v85 ^ v107;
  v112 = (-111 * (v110 ^ 5)) ^ (68 * (v110 ^ 5) * -111 * (v110 ^ 5));
  LODWORD(v110) = *(v93 + ((v72[6] + 5) ^ 0x16));
  DWORD1(v90) = v110 ^ 5;
  LODWORD(v90) = v110 << 24;
  LODWORD(STACK[0x2070]) = v90 >> 30;
  v113 = *(v96 + (*(v101 + ((v111 - 7) ^ 0x1ELL)) ^ 0xA6)) ^ 0x67;
  LODWORD(v85) = v113 ^ *(v95 + 1852 + ((v72[7] + 32) ^ 0xD1)) ^ ((8 * v113) | 0xFFFFFFE8);
  LODWORD(v98) = (v77 ^ (((v72[7] + 32) ^ 0x2F) - ((v72[7] + 32) ^ 0xFFFFFFB5))) - ((2 * (v77 ^ (((v72[7] + 32) ^ 0x2F) - ((v72[7] + 32) ^ 0xFFFFFFB5)))) & 0xA) + 5;
  DWORD1(v90) = v85 ^ v98;
  LODWORD(v90) = (v85 ^ ~v98) << 24;
  LODWORD(STACK[0x1FE0]) = ((v112 ^ 0x3B) >> 2) | ((v112 ^ 0x3B) << 6);
  v114 = *(v78 + ((v90 >> 26) ^ 0x4DLL)) ^ 0xFFFFFFA7;
  v115 = v114 ^ (2 * v114 * v114 - ((4 * v114 * v114) & 8) + 5);
  LODWORD(STACK[0x2170]) = v115 - ((2 * v115 + 26) & 0xFFFFFF8C);
  *(&v90 + 1) = v111 ^ (v71 + 7);
  *&v90 = v111;
  v116 = v90 >> 63;
  LODWORD(v111) = (v72[8] + 84) ^ *(v68 + ((v72[8] + 84) ^ 0x85)) ^ (v116 + 84 - ((2 * (v116 + 84)) & 0xA) + 5) ^ *(v68 + ((v116 + 84) ^ 0x85));
  *(&v90 + 1) = v116 ^ (v71 + 8);
  *&v90 = v116;
  v117 = v90 >> 63;
  LODWORD(v85) = *(v83 + ((v117 + 87) ^ 0xF4));
  DWORD1(v90) = v85 ^ 5;
  LODWORD(v90) = v85 << 24;
  LODWORD(v101) = v111 ^ ((~(v65 >> 23) | 0xFFFFFFF5) + HIBYTE(v65) + 6);
  LODWORD(v98) = (v90 >> 28) + (~(2 * (v90 >> 28)) | 0xFFFFFFF5);
  LODWORD(STACK[0x20C8]) = (v108 ^ v75) - 1833093619 - ((2 * (v108 ^ v75)) & 0x1BE);
  *(&v90 + 1) = v117 ^ (v71 + 9);
  *&v90 = v117;
  v118 = v90 >> 63;
  LODWORD(v117) = *(v92 + ((v72[10] + 5) ^ 6));
  DWORD1(v90) = ~v117;
  LODWORD(v90) = (v117 ^ 4) << 24;
  LODWORD(v117) = v90 >> 25;
  v119 = v118 + 0x2D085CDAF7944B3BLL - ((2 * v118) & 0x5A10B9B5EF289676);
  v120 = STACK[0x2298];
  LODWORD(v111) = *(STACK[0x2298] + (((v119 ^ 0x3B) + 116) ^ 0xE0)) ^ ((((v119 ^ 0x3B) + 116) ^ 0x74) - ((2 * (((v119 ^ 0x3B) + 116) ^ 0x74) + 2) & 0xA) - 114) ^ ((v119 ^ 0x3B) + 116) ^ 0x74 ^ 0x37;
  LODWORD(v111) = *(v93 + (((v111 >> 2) & 0xFFFFFF3F | ((v111 & 3) << 6)) ^ 0x16));
  DWORD1(v90) = v111 ^ 5;
  LODWORD(v90) = v111 << 24;
  STACK[0x20E0] = ((8 * v117) | 0xFFFFFF90) ^ v117 ^ (v90 >> 30) ^ (16 * (v90 >> 30)) ^ ((LODWORD(STACK[0x20E0]) ^ 0x1C) - 58);
  *(&v90 + 1) = v119 ^ ((v71 + 10) + 0x2D085CDAF7944B3BLL - ((2 * (v71 + 10)) & 0x1EF289674));
  *&v90 = v119;
  v121 = v90 >> 63;
  LODWORD(v117) = *(v82 + ((v72[11] + 111) ^ 0xF8)) ^ 5;
  LODWORD(v117) = (-111 * v117) ^ (68 * v117 * -111 * v117) ^ 0x3B;
  LODWORD(v111) = ((v117 >> 2) | (v117 << 6)) + 32;
  LODWORD(v117) = ((v111 ^ 0x2F) - (((v111 ^ 0x2F | 0xFFFFFFDA) - ((v111 ^ 0x2F) & 0x25) - 64) ^ v111 ^ 0x2F)) ^ (LODWORD(STACK[0x2130]) + 18);
  LODWORD(v85) = (v117 ^ 5) + ~(2 * ((v117 ^ 5) & 7 ^ v117 & 2));
  *(&v90 + 1) = v121 ^ (v71 + 11);
  *&v90 = v121;
  v122 = v90 >> 63;
  LODWORD(v121) = v121 + 32;
  LODWORD(v121) = (*(v95 + 1852 + (v121 ^ 0xD1)) ^ *(v95 + 1852 + (v111 ^ 0xD1)) ^ ((v121 ^ 0x2F) - (v121 ^ 0xB5) - ((2 * ((v121 ^ 0x2F) - (v121 ^ 0xB5))) & 0xA) + 5) ^ (v85 + 6)) + 111;
  LODWORD(v121) = *(v120 + (v121 ^ 0xE0)) ^ v121 ^ 0x74 ^ ((v121 ^ 0x74) - ((2 * (v121 ^ 0x74) + 2) & 0xA) - 114) ^ 0x37;
  LODWORD(STACK[0x2130]) = ((v121 >> 2) | (v121 << 6)) - ((2 * ((v121 >> 2) | (v121 << 6))) & 0xFFFFFFE7);
  LODWORD(v85) = *(v102 + ((v72[12] + 84) ^ 0x27)) ^ 0xAE;
  LODWORD(STACK[0x1FA0]) = *(v102 + ((v72[12] + 84) ^ 0x27)) ^ 0xFFFFFFAE ^ (v85 >> 4) ^ (v85 >> 3);
  LOBYTE(v85) = *(v68 + ((v122 + 84) ^ 0x85));
  LOBYTE(v111) = v122 + 84 - ((2 * (v122 + 84)) & 0xA);
  *(&v90 + 1) = v122 ^ (v71 + 12);
  *&v90 = v122;
  v123 = (v90 >> 63) + 0x2D085CDAF7944B3BLL - ((2 * (v90 >> 63)) & 0x5A10B9B5EF289676);
  LODWORD(v122) = (LODWORD(STACK[0x2148]) - 97) ^ *(STACK[0x1B10] + ((v72[13] + 87) ^ 0xF1FFFFA3) + ((2 * ((v72[13] + 87) ^ 0x1C)) & 0x17E) + 234881089);
  LOBYTE(v102) = (v122 ^ 0x9A) - ((2 * v122) & 0xA);
  LODWORD(v122) = *(v93 + ((v72[14] + 5) ^ 0x16));
  DWORD1(v90) = v122 ^ 5;
  LODWORD(v90) = v122 << 24;
  LODWORD(v91) = v90 >> 30;
  *(&v90 + 1) = v123 ^ (((v71 - (STACK[0x2128] & 0x38E6BE22) + 477323038) ^ 0x1C735F11u) + 0x2D085CDAF7944B3BLL - ((2 * ((v71 - (STACK[0x2128] & 0x38E6BE22) + 477323038) ^ 0x1C735F11u)) & 0x1EF289676));
  *&v90 = v123;
  v124 = v90 >> 63;
  LOBYTE(v121) = (v102 + 5) ^ *(STACK[0x1B10] + (((v123 ^ 0x3B) + 87) ^ 0x1CLL));
  LODWORD(v123) = *(v92 + (((((v124 + 5) - ((v124 + 5) ^ 0x17)) ^ 0xFFFFFFFE) + (v124 + 5)) ^ 0x11));
  DWORD1(v90) = ~v123;
  LODWORD(v90) = (v123 ^ 4) << 24;
  LODWORD(v123) = (v90 >> 25) ^ v91 ^ ((16 * v91) | 5) ^ ((8 * (v90 >> 25)) | 0xFFFFFF90) ^ (LODWORD(STACK[0x2198]) + 5);
  LOBYTE(v102) = LODWORD(STACK[0x20D0]) ^ HIWORD(LODWORD(STACK[0x1FF0]));
  LOBYTE(v92) = LODWORD(STACK[0x2070]) ^ (16 * LODWORD(STACK[0x2070])) ^ LODWORD(STACK[0x1FE0]) ^ BYTE1(LODWORD(STACK[0x1FF0]));
  LODWORD(STACK[0x2198]) = *(STACK[0x1B10] + ((v72[9] + 87) ^ 0x1CLL)) ^ (v98 + 6) ^ HIWORD(v65);
  LOBYTE(v93) = LODWORD(STACK[0x2140]) ^ ((8 * LODWORD(STACK[0x2140])) | 0x90);
  *(&v90 + 1) = v124 ^ (v71 + 14);
  *&v90 = v124;
  v125 = v90 >> 63;
  LOBYTE(v124) = *(v120 + ((v72[15] + 111) ^ 0xE0)) ^ (v72[15] + 111) ^ 0x74 ^ (((v72[15] + 111) ^ 0x74) - ((2 * ((v72[15] + 111) ^ 0x74) + 2) & 0xA) - 114) ^ 0x37;
  LOBYTE(v124) = ((v124 >> 2) | (v124 << 6)) + 32;
  v126 = STACK[0x21A0];
  LOBYTE(v124) = *(v95 + 1852 + (v124 ^ 0xD1)) ^ ((v124 ^ 0x2F) - (v124 ^ 0xB5) - ((2 * ((v124 ^ 0x2F) - (v124 ^ 0xB5))) & 0xA) + 5) ^ 0xB6 ^ (v126 - ((2 * v126) & 0xA) + 5);
  LODWORD(v95) = *(STACK[0x20D8] + ((v125 + 32) ^ 0xE5));
  v127 = STACK[0x2290];
  LODWORD(v124) = *(STACK[0x2290] + ((v124 + 111) ^ 0xF8)) ^ 5;
  LODWORD(v82) = (-111 * v124) ^ 0x3B;
  LODWORD(v124) = (v82 ^ (68 * v124 * -111 * v124)) >> 2;
  LODWORD(v82) = v95 ^ ((8 * ~v95) | 0xFFFFFFE8) ^ 0x28 ^ (v124 | (v82 << 6));
  v128 = 2 * (v125 ^ (v71 + 15));
  v129 = ((v125 >> 63) + 217) ^ 5 ^ (((v128 | ~v128) & 0x5437) - 21532);
  LODWORD(v124) = v124 | (v82 - 39) ^ 0xFFFFFFE0;
  v130 = (v82 - 39) ^ 0x1ELL;
  v131 = STACK[0x2030];
  LODWORD(v125) = (v124 | v130 | 5) ^ *(STACK[0x2030] + 1319 + ((LODWORD(STACK[0x20C8]) + 2002) ^ 0x92BD3D09));
  LOBYTE(v99) = *(STACK[0x1F00] + (STACK[0x2190] ^ 0xA7));
  v132 = *(STACK[0x21B8] + v130);
  v72[3] = v125 ^ (v125 >> 3) & 0x12 ^ 0xDF;
  v133 = STACK[0x20B8];
  LOBYTE(v124) = (*(STACK[0x20B8] + (((*(v131 + 1319 + (v92 ^ 0xD1u)) ^ 0x97 ^ ((~*(v131 + 1319 + (v92 ^ 0xD1u)) & 0x93u) >> ((~v129 | v129) & 3))) - 39) ^ 0xADLL)) ^ 5) - 44;
  v72[6] = v124 ^ (v124 >> 2) ^ (v124 >> 1) ^ 0x9A;
  v72[8] = *(v131 + 3958 + (v101 ^ 0xBBLL)) ^ v101 ^ 0x5B ^ ((v101 ^ 0x5B) - 34) ^ 0xC;
  v72[5] = *(v131 + 3958 + (v102 ^ 0x29)) ^ v102 ^ 0xC9 ^ ((v102 ^ 0xC9) - 34) ^ 0xE6;
  v72[14] = *(v131 + 3958 + (v123 ^ 0xB6)) ^ v123 ^ ((v123 ^ 0x56) - ((2 * (v123 ^ 0x56) + 12) & 0xA) - 29) ^ 0xB2;
  LODWORD(v124) = *(v131 + 1319 + ((LODWORD(STACK[0x1FA0]) ^ (v111 + 5) ^ v85) ^ HIBYTE(v126) ^ 0x69));
  LOBYTE(v111) = v93 ^ LODWORD(STACK[0x21C0]) ^ (16 * LODWORD(STACK[0x21C0]));
  v72[12] = v124 ^ 0x2B ^ (~v124 >> 3) & 0x12;
  v72[13] = *(v131 + 3958 + (v121 ^ 0x8BLL)) ^ v121 ^ 0x6B ^ ((v121 ^ 0x6B) - 34) ^ 0x41;
  LODWORD(v121) = (*(v133 + ((((LODWORD(STACK[0x2130]) + 115) ^ 0x3F) - 39) ^ 0xADLL)) ^ 5) - 44;
  LODWORD(v121) = v121 ^ (v121 >> 2) ^ (v121 >> 1);
  v72[11] = *(v131 + ((((v129 ^ 0xFFFFLL) & 0xF76) + (v129 & 0xF76)) & ~v128 | v128 & 0xF76) + (v121 ^ 0x89)) ^ v121 ^ 0x69 ^ ((v121 ^ 0x69) - ((2 * (v121 ^ 0x69) + 12) & 0xA) - 29) ^ 2;
  LOBYTE(v121) = v132 ^ 0x8A ^ ((v132 ^ 0x8A) + ((2 - 2 * (v132 ^ 0x8A)) | 0xF5) - 28);
  v134 = v132 ^ 0x6A;
  v135 = STACK[0x20E0];
  LOBYTE(v121) = v121 ^ *(v131 + 3958 + v134) ^ 0xF9;
  LODWORD(v93) = STACK[0x22B0];
  LODWORD(v134) = LODWORD(STACK[0x22B0]) ^ LODWORD(STACK[0x21E0]);
  v72[15] = v121;
  LOBYTE(v121) = v134 ^ ((v134 ^ 0xBC) - ((2 * (v134 ^ 0xBC) + 12) & 0xA) - 29);
  v136 = STACK[0x2138];
  v137 = ((v111 ^ BYTE1(LODWORD(STACK[0x2138])) ^ 0x46) + 111) ^ 0xF8;
  *v72 = *(v131 + 3958 + ((LODWORD(STACK[0x2278]) ^ v93) ^ 0xC0u)) ^ v121 ^ 0x9F;
  LOBYTE(v121) = (-111 * (*(v127 + v137) ^ 5)) ^ (68 * (*(v127 + v137) ^ 5) * -111 * (*(v127 + v137) ^ 5)) ^ 0x3B;
  v72[2] = *(v131 + 3958 + (((v121 >> 2) | (v121 << 6)) ^ 0x40)) ^ ((v121 >> 2) | (v121 << 6)) ^ 0xA0 ^ ((((v121 >> 2) | (v121 << 6)) ^ 0xA0) + ((2 - 2 * ((v121 >> 2) | (v121 << 6))) | 0xF5) - 28) ^ 0xAC;
  LODWORD(v92) = LODWORD(STACK[0x2170]) - 45;
  v138 = (-55 * (LODWORD(STACK[0x2198]) ^ 0xE3)) ^ 0xF2;
  LODWORD(v96) = *(v131 + 1319 + ((LODWORD(STACK[0x22A0]) ^ ((v99 ^ 0x4B) + 13) ^ BYTE2(v136)) ^ 0xBCu));
  v139 = STACK[0x2260];
  LODWORD(v96) = *(STACK[0x2260] + ((-55 * (v96 ^ 0xA9 ^ (~v96 >> 3) & 0x12)) ^ 0xF2));
  DWORD1(v90) = v96 ^ 1;
  LODWORD(v90) = (v96 ^ 4) << 24;
  v72[1] = ((v90 >> 26) ^ ((v90 >> 26) >> 5) ^ ((v90 >> 26) >> 3) ^ 0x13) - 58;
  LODWORD(v96) = *(v131 + 1319 + (v135 ^ 0x47));
  v72[10] = v96 ^ 0x71 ^ (~v96 >> 3) & 0x12;
  LODWORD(v96) = *(v139 + ((-55 * (v92 ^ ((v92 ^ 0x74) - ((2 * (v92 ^ 0x74) + 12) & 0xA) - 29) ^ *(v131 + 3958 + (v92 ^ 0x94)) ^ 0x43)) ^ 0xF2));
  DWORD1(v90) = v96 ^ 1;
  LODWORD(v90) = (v96 ^ 4) << 24;
  v72[7] = ((v90 >> 26) ^ ((v90 >> 26) >> 5) ^ ((v90 >> 26) >> 3) ^ 0x13) - 58;
  LODWORD(v96) = *(v139 + v138);
  DWORD1(v90) = v96 ^ 1;
  LODWORD(v90) = (v96 ^ 4) << 24;
  LODWORD(v96) = (v90 >> 26) ^ ((v90 >> 26) >> 5) ^ ((v90 >> 26) >> 3);
  v72[9] = *(v131 + 3958 + (((v96 ^ 0x13) - 58) ^ 0x40)) ^ ((v96 ^ 0x13) - 58) ^ 0xA0 ^ (((2 * v96) | 0xF5) + (((v96 ^ 0x13) - 58) ^ 0xA0) - 28) ^ 0xB7;
  v140 = STACK[0x1B48];
  v141 = LODWORD(STACK[0x1B48]) < 0xF91E1648;
  v72[4] = *(v131 + 1319 + (LOBYTE(STACK[0x21D8]) ^ ~LOBYTE(STACK[0x21C8]))) ^ 0x23 ^ (~*(v131 + 1319 + (LOBYTE(STACK[0x21D8]) ^ ~LOBYTE(STACK[0x21C8]))) >> 3) & 0x12;
  if (v141 == (v71 - 115468712) < 0xF91E1648)
  {
    v141 = v140 > v71 - 115468712;
  }

  return (*(STACK[0x22F8] + 8 * (LODWORD(STACK[0x21D0]) ^ (16 * v141))))();
}

void sub_26AA68A04(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  STACK[0x1FA0] = (v7 ^ v8) + a6 + 0x2D085CDAF7944B3BLL - ((2 * ((v7 ^ v8) + a6)) & 0x5A10B9B5EF289676);
  LODWORD(STACK[0x20D8]) = v10 ^ 0xFFFFFF9F;
  LODWORD(STACK[0x20D0]) = v11 - (a4 & (2 * v11)) + 5;
  LODWORD(STACK[0x20E0]) = v12 ^ 0xFFFFFFC7;
  STACK[0x20C8] = LODWORD(STACK[0x1EF0]) ^ 0xFFFFFFC1;
  LODWORD(STACK[0x2190]) = a7 ^ 0xFFFFFFC7;
  STACK[0x1EF8] = v9 + 16;
  JUMPOUT(0x26AA60894);
}

void sub_26AA68A9C(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x2078]) = a4;
  LODWORD(STACK[0x2080]) = v6;
  LODWORD(STACK[0x2098]) = a6;
  v13 = (LODWORD(STACK[0x1EB0]) ^ 0x593) - ((LODWORD(STACK[0x2138]) >> 7) & 0xA) + (LODWORD(STACK[0x2138]) >> 8);
  v14 = a1 & STACK[0x1EB8];
  v15 = STACK[0x2070] >> 16;
  v16 = STACK[0x2140];
  v17 = STACK[0x1E70] - ((2 * STACK[0x1E70]) & 0xA);
  v18 = (STACK[0x2170] >> 16) + (~(2 * (STACK[0x2170] >> 16)) | 0xFFFFFFF5);
  v19 = STACK[0x1E88];
  LODWORD(STACK[0x2090]) = v9;
  LODWORD(STACK[0x2088]) = v9 ^ v12 ^ (v10 - 2 * (v14 ^ v11 & 0xC));
  STACK[0x1CB8] += STACK[0x1EF8];
  LODWORD(STACK[0x22A0]) = v13 + 84;
  STACK[0x1EE0] = v15 - ((2 * v15) & 0xA) + 5;
  LODWORD(STACK[0x22C0]) = (v16 >> 16) - ((2 * (v16 >> 16)) & 0xA) + 5;
  LODWORD(STACK[0x22B0]) = LODWORD(STACK[0x2198]) ^ 0xFFFFFFE2;
  LODWORD(STACK[0x2288]) = LODWORD(STACK[0x1B54]) + 64;
  STACK[0x1FF0] = (v16 >> 8) - ((2 * (v16 >> 8)) & 0x1FFFF8C) - 58;
  LODWORD(STACK[0x20E0]) = v17 + 5;
  STACK[0x20C8] = (v18 + 6);
  LODWORD(STACK[0x22A8]) = v19 + (~(2 * v19) | 0xFFFFFFF5) + 6;
  LODWORD(STACK[0x20F0]) = v7 ^ 0x2E2E2E2E;
  LODWORD(STACK[0x2070]) = v8 ^ 0x1C735F11;
  JUMPOUT(0x26AA56730);
}

uint64_t sub_26AA68C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v65 = (LODWORD(STACK[0x1EE8]) + 1907537845) & 0x8E4D47FF;
  STACK[0x22C0] = STACK[0x2300];
  v66 = -812407749 * ((a64 ^ *(*STACK[0x22E8] + ((v65 - 1977536118) & *STACK[0x22D0]))) & 0x7FFFFFFF);
  *a64 = *(*(&off_279CA5FD0 + (v65 ^ 0x2C1)) + ((-812407749 * (v66 ^ HIWORD(v66))) >> 24) - 8) ^ *(*(&off_279CA5FD0 + (v65 ^ 0x213)) + ((-812407749 * (v66 ^ HIWORD(v66))) >> 24) - 4) ^ *(*(&off_279CA5FD0 + (v65 - 597)) + ((-812407749 * (v66 ^ HIWORD(v66))) >> 24) - 11) ^ (59 * (v66 ^ BYTE2(v66))) ^ (-43 * ((-812407749 * (v66 ^ HIWORD(v66))) >> 24));
  return (*(v64 + 8 * (v65 ^ 0xD7)))();
}

uint64_t sub_26AA68D44@<X0>(int a1@<W8>)
{
  v11 = *(v1 + v2) ^ (v8 + v3);
  v12 = (((v11 & 0x7FFFFFFF) * v7) ^ (((v11 & 0x7FFFFFFFu) * v7) >> 16)) * v7;
  v13 = (((v11 & ((a1 + 1595) ^ 0x7FFFF75E)) * v7) ^ (((v11 & ((a1 + 1595) ^ 0x7FFFF75Eu)) * v7) >> 16)) * v7;
  *(v8 + v3) ^= *(STACK[0x22C0] + v3) ^ *(v4 + (v12 >> 24)) ^ *(v5 + (v12 >> 24)) ^ *((v12 >> 24) + v6 + 1) ^ *(*(v9 + 8 * (a1 ^ 0x244)) + (v13 >> 24)) ^ v12 ^ *(*(v9 + 8 * (a1 - 577)) - 12 + (v13 >> 24)) ^ (-43 * BYTE3(v12)) ^ *(*(v9 + 8 * (a1 ^ 0x2DB)) - 12 + (v13 >> 24)) ^ v13 ^ (33 * BYTE3(v13));
  return (*(v10 + 8 * ((268 * (v3 == 15)) ^ a1)))();
}

uint64_t sub_26AA68E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _BYTE *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, _BYTE *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, _BYTE *a59)
{
  STACK[0x2270] = v64;
  STACK[0x2200] = v60;
  *a59 = 0;
  *a47 = 0;
  *(a47 + 8) = 0;
  *(a47 + 16) = 0;
  *(a47 + 24) = 0;
  *(a47 + 28) = 0;
  *(a47 + 30) = 0;
  v66 = ((*(*v63 + (*v62 & 0x5167F4C8)) ^ a50) & 0x7FFFFFFF) * v61;
  v67 = (v66 ^ HIWORD(v66)) * v61;
  *a13 = *a50 ^ *(STACK[0x15C0] + (v67 >> ((v59 + 12) ^ 0xB5u))) ^ *(STACK[0x15B8] + (v67 >> ((v59 + 12) ^ 0xB5u))) ^ *((v67 >> ((v59 + 12) ^ 0xB5u)) + STACK[0x15B0] + 2) ^ v67 ^ (-61 * (v67 >> ((v59 + 12) ^ 0xB5u))) ^ 0x9B;
  return (*(v65 + 8 * v59))();
}

uint64_t sub_26AA68F34@<X0>(uint64_t a1@<X2>, unsigned int a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v12 = ((*(*v10 + (*v9 & a2)) ^ (a1 + a6)) & (v6 + 2147482194)) * v8;
  v13 = (v12 ^ HIWORD(v12)) * v8;
  *(v7 + a6) = *(a1 + a6) ^ *(a5 + (v13 >> 24)) ^ *(a3 + (v13 >> 24)) ^ *((v13 >> 24) + a4 + 2) ^ v13 ^ (-61 * BYTE3(v13)) ^ 0x9B;
  return (*(v11 + 8 * ((107 * (a6 != 31)) ^ v6)))();
}

uint64_t sub_26AA68FD4()
{
  v8 = (v0 + 1363295702) & 0xAEBDCEFB;
  v9.n128_u64[0] = 0x3636363636363636;
  v9.n128_u64[1] = 0x3636363636363636;
  v10.n128_u64[0] = 0x9B9B9B9B9B9B9B9BLL;
  v10.n128_u64[1] = 0x9B9B9B9B9B9B9B9BLL;
  v11 = ((v3 ^ *(*v5 + (*v4 & v6))) & ((v8 - 1000) ^ 0x7FFFF54C)) * v1;
  v12 = (v11 ^ HIWORD(v11)) * v1;
  return (*(v7 + 8 * ((54 * (((*(STACK[0x2200] + (v12 >> (v8 + 125))) ^ *v3 ^ *(STACK[0x2270] + (v12 >> (v8 + 125))) ^ *(v2 + (v12 >> (v8 + 125))) ^ v12 ^ (33 * (v12 >> (v8 + 125)))) >> 7) & 1)) ^ v8)))(v9, v10);
}

uint64_t sub_26AA690B4(int8x16_t a1, int8x16_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int8x16_t *a10)
{
  v17 = a4 ^ v10;
  *a10 = veorq_s8(vaddq_s8(vsubq_s8(*a10, vandq_s8(vaddq_s8(*a10, *a10), a1)), a2), *v15);
  v18 = (a4 ^ v10) + 426;
  HIDWORD(v19) = ~v15->u8[(v18 ^ v11) + 15];
  LODWORD(v19) = *(STACK[0xAC8] + 254) << 24;
  v15->i8[15] = ((v19 >> 25) ^ v12) + (v13 | ~(2 * ((v19 >> 25) ^ v12))) - 100;
  return (*(v16 + 8 * ((((v18 ^ v11) == -15) * v14) ^ (v17 + 120))))();
}

uint64_t sub_26AA69148@<X0>(int a1@<W1>, char a2@<W2>, int a3@<W8>)
{
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  *v4 = (a1 + 13) ^ v6 ^ (*v4 >> (a1 + 56));
  return (*(v5 + 8 * (a1 ^ (7 * (a3 == 127)))))();
}

uint64_t sub_26AA69198(uint64_t a1, int a2)
{
  STACK[0x22B0] = v2;
  v9 = 2181 * ((a2 + 3771) ^ 0x1086);
  v10.n128_u64[0] = 0x3636363636363636;
  v10.n128_u64[1] = 0x3636363636363636;
  v11.n128_u64[0] = 0x9B9B9B9B9B9B9B9BLL;
  v11.n128_u64[1] = 0x9B9B9B9B9B9B9B9BLL;
  v12 = v3;
  v13 = (v3 ^ *(*v5 + (*v4 & v7))) & ((v9 - 4331) ^ 0x7FFFFFE0);
  v14 = -812407749 * ((v13 * (19 * (v9 ^ 0x110D) - 812407882)) ^ ((v13 * (19 * (v9 ^ 0x110D) - 812407882)) >> 16));
  return (*(v8 + 8 * ((42 * ((((*(v6 + (v14 >> 24)) ^ *v12 ^ *(STACK[0x2270] + (v14 >> 24)) ^ *(STACK[0x22B0] + (v14 >> 24)) ^ v14 ^ (33 * BYTE3(v14))) >> 7) & 1) == 0)) ^ v9)))(-4214, 77, 54, 5739, 4161, 4294967265, 214, 2445, v10, v11);
}

uint64_t sub_26AA692AC(uint64_t a1, char a2, char a3, int a4)
{
  HIDWORD(v7) = ~*(v4 - 1);
  LODWORD(v7) = *v4 << 24;
  *v4 = ((v7 >> 25) ^ a2) - (a3 & (2 * ((v7 >> 25) ^ a2))) - 101;
  return (*(STACK[0x22F8] + 8 * ((((v6 + v5) + a1 == 0) * a4) ^ (v6 + 1651))))();
}

uint64_t sub_26AA69350@<X0>(int a1@<W4>, char a2@<W5>, char a3@<W6>, int a4@<W7>, int a5@<W8>)
{
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  *(STACK[0xAC8] + 255) = v9 ^ (*(STACK[0xAC8] + 255) >> 1) ^ a3;
  return (*(v8 + 8 * (((a5 + 1 == ((7 * (((v6 + 126) | 8) ^ a1)) ^ a4)) * v5) ^ v6)))();
}

uint64_t sub_26AA693C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, _BYTE *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = *STACK[0x22D0];
  STACK[0x1BC0] = -1977535504;
  v67 = -812407749 * (((&STACK[0x2000] + 10408) ^ *(*STACK[0x22E8] + (v66 & 0x8A2133F0))) & 0x7FFFFFFF);
  v68 = -812407749 * ((v67 >> ((v64 + 37) ^ 0x22)) ^ v67);
  *a64 = *(STACK[0x2200] + (v68 >> 24)) ^ *a59 ^ *(STACK[0x2270] + (v68 >> 24)) ^ *(STACK[0x22B0] + (v68 >> 24)) ^ v68 ^ (33 * BYTE3(v68));
  return (*(v65 + 8 * v64))();
}

uint64_t sub_26AA694A0@<X0>(uint64_t a1@<X8>)
{
  v9 = 11 * (v2 ^ 0x795);
  *v3 = 0;
  STACK[0x32A9] = 0;
  LODWORD(STACK[0x32B1]) = 0;
  LOWORD(STACK[0x32B5]) = 0;
  LOBYTE(STACK[0x32B7]) = 0x80;
  v10 = (*(a1 + v1) ^ (&STACK[0x2350] + 9560)) & 0x7FFFFFFF;
  v11 = ((v10 * v4) ^ ((v10 * v4) >> 16)) * v4;
  v12 = ((v10 * ((v9 - 1408043711) & 0x53ED13B3 ^ 0xCF93B419)) ^ ((v10 * ((v9 - 1408043711) & 0x53ED13B3 ^ 0xCF93B419)) >> 16)) * v4;
  *v7 ^= *v3 ^ *(v5 + (v11 >> 24)) ^ *(v6 + (v11 >> 24)) ^ *(STACK[0x22B0] + (v11 >> 24)) ^ *(v5 + (v12 >> 24)) ^ *(v6 + (v12 >> 24)) ^ v11 ^ *(STACK[0x22B0] + (v12 >> 24)) ^ (33 * BYTE3(v11)) ^ v12 ^ (33 * BYTE3(v12));
  return (*(v8 + 8 * (v9 ^ 0x1F)))();
}

uint64_t sub_26AA695C8@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, _BYTE *a43)
{
  v49 = (v44 + 212623323) & 0xF3539FFF;
  *STACK[0x698] = 0;
  *&STACK[0x2E35] = 0u;
  STACK[0x2E45] = 0;
  LODWORD(STACK[0x2E4D]) = 0;
  LOWORD(STACK[0x2E51]) = 0;
  LOBYTE(STACK[0x2E53]) = 0;
  v50 = ((a43 ^ *(a1 + ((v49 + 1365763275) & v43))) & ((v49 + 852960185) & 0xCD28CFDB ^ 0x7FFFFC6D)) * v45;
  v51 = (v50 ^ HIWORD(v50)) * v45;
  *v47 = *a43 ^ *(v46 + (v51 >> 24)) ^ *(STACK[0x15B8] + (v51 >> 24)) ^ *((v51 >> 24) + STACK[0x15B0] + 2) ^ v51 ^ (-61 * BYTE3(v51)) ^ 0x27;
  return (*(v48 + 8 * (v49 ^ 0x1FDF)))();
}

uint64_t sub_26AA696FC@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v9 = (((a1 + v4) ^ *(a2 + v2)) & 0x7FFFFFFF) * (v6 + v3 + 1004 - 1918);
  v10 = (v9 ^ HIWORD(v9)) * v6;
  *(v7 + v4) = *(a1 + v4) ^ *(*(v5 + 8 * (v3 - 702)) + (v10 >> 24) - 12) ^ *(*(v5 + 8 * (v3 - 849)) + (v10 >> 24) + 1 - 8) ^ *(*(v5 + 8 * (v3 - 696)) + (v10 >> 24) + 1 - 4) ^ v10 ^ (115 * BYTE3(v10)) ^ 0x27;
  return (*(v8 + 8 * (((v4 == 31) | (4 * (v4 == 31))) ^ v3)))();
}

uint64_t sub_26AA697A8@<X0>(uint64_t a1@<X8>)
{
  v8.n128_u64[0] = 0x4E4E4E4E4E4E4E4ELL;
  v8.n128_u64[1] = 0x4E4E4E4E4E4E4E4ELL;
  v9.n128_u64[0] = 0x2727272727272727;
  v9.n128_u64[1] = 0x2727272727272727;
  v10 = ((v6 ^ *(a1 + v1)) & 0x7FFFFFFF) * v3;
  v11 = ((v10 >> (((v2 - 127) & 0xFD) + 19)) ^ v10) * v3;
  return (*(v7 + 8 * ((1967 * (((*(v4 + (v11 >> 24)) ^ *v6 ^ *(v5 + (v11 >> 24)) ^ *(STACK[0x22B0] + (v11 >> 24)) ^ v11 ^ (33 * BYTE3(v11))) >> 7) & 1)) ^ (v2 + 1360000129) & 0xAEF00FFD)))(19, 78, 982, 2041, 4294967265, 179, 3273, v8, v9);
}

uint64_t sub_26AA6988C(char a1, char a2, int8x16_t a3, int8x16_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  *STACK[0x698] = veorq_s8(vaddq_s8(vsubq_s8(*STACK[0x698], vandq_s8(vaddq_s8(*STACK[0x698], *STACK[0x698]), a3)), a4), *v12);
  HIDWORD(v14) = ~*(STACK[0x7B8] - 1);
  LODWORD(v14) = *STACK[0x7B8] << 24;
  *STACK[0x7B8] = ((v14 >> 25) ^ a1) - (a2 & (2 * ((v14 >> 25) ^ a1))) + 39;
  return (*(v13 + 8 * (((a10 + v10) & v11) + 2240)))();
}

uint64_t sub_26AA69930(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, _BYTE *a63)
{
  if (v65)
  {
    v67 = 0;
  }

  else
  {
    v67 = a5;
  }

  *a63 = v67 ^ (*a63 >> 1) ^ v64 ^ a4 ^ a6;
  return (*(v66 + 8 * (((v63 + v64 + 1151 == 3196) * a7) ^ v64)))(a1, a2, a3);
}

uint64_t sub_26AA69990@<X0>(uint64_t a1@<X8>)
{
  v7.n128_u64[0] = 0x4E4E4E4E4E4E4E4ELL;
  v7.n128_u64[1] = 0x4E4E4E4E4E4E4E4ELL;
  v8.n128_u64[0] = 0x2727272727272727;
  v8.n128_u64[1] = 0x2727272727272727;
  v9 = -812407749 * ((v5 ^ *(a1 + v1)) & 0x7FFFFFFF);
  v10 = -812407749 * (v9 ^ HIWORD(v9));
  return (*(v6 + 8 * ((50 * (((*(v3 + (v10 >> 24)) ^ *v5 ^ *(v4 + (v10 >> 24)) ^ *(STACK[0x22B0] + (v10 >> 24)) ^ v10 ^ (33 * BYTE3(v10))) >> 7) & 1)) ^ v2 ^ 0x10DC)))(v7, v8);
}

uint64_t sub_26AA69A84(int8x16_t a1, int8x16_t a2, uint64_t a3, int a4, int a5, char a6)
{
  v9 = (v7 + a4) & a5;
  v10 = STACK[0x7B8];
  *STACK[0x698] = veorq_s8(vaddq_s8(vsubq_s8(*STACK[0x698], vandq_s8(vaddq_s8(*STACK[0x698], *STACK[0x698]), a1)), a2), *(STACK[0x7B8] + 1));
  HIDWORD(v11) = ~*(v6 - 1);
  LODWORD(v11) = *(v10 + 16) << 24;
  *v6 = ((v11 >> 25) ^ a6) - ((v9 + 47) & (2 * ((v11 >> 25) ^ a6))) + 39;
  return (*(v8 + 8 * (v9 + 2317)))(a3);
}

uint64_t sub_26AA69B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, int a8)
{
  v12 = v9 + 80;
  if (v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = a6;
  }

  *(STACK[0x7B8] + 1) = v13 ^ (*(STACK[0x7B8] + 1) >> 1) ^ (v12 - 20) ^ a7;
  return (*(v11 + 8 * (v12 ^ ((v8 != 127) * a8))))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_26AA69B80@<X0>(uint64_t a1@<X8>)
{
  v8 = (((v6 + v3) ^ *(a1 + v1)) & 0x7FFFFFFF) * ((v2 + 563) ^ 0xCF93A699);
  v9 = -812407749 * (v8 ^ HIWORD(v8));
  *(v6 + v3) = *(v4 + (v9 >> 24)) ^ *(STACK[0x698] + v3) ^ *(v5 + (v9 >> 24)) ^ *(STACK[0x22B0] + (v9 >> 24)) ^ v9 ^ (33 * BYTE3(v9));
  return (*(v7 + 8 * ((469 * (v3 == 15)) ^ v2)))();
}

uint64_t sub_26AA69C0C()
{
  v2 = v0 ^ 0xA2;
  v3 = STACK[0x1B80];
  v4 = *STACK[0x1B80] ^ 0x99;
  LOBYTE(STACK[0x2357]) = -28;
  v5 = v0 ^ 0xDF ^ v4;
  LOBYTE(STACK[0x2350]) = v5;
  v6 = v3[1] ^ v4;
  LOBYTE(STACK[0x2355]) = v5;
  v7 = v6 ^ 0x7D;
  LOBYTE(STACK[0x2397]) = v6 ^ 0x7D;
  v8 = v3[2] ^ v6;
  LOBYTE(STACK[0x2353]) = v7;
  v9 = v8 ^ 0x7D;
  LOBYTE(STACK[0x2395]) = v8 ^ 0x7D;
  v10 = v3[3] ^ v8;
  LOBYTE(STACK[0x2351]) = v9;
  v11 = v10 ^ 0x7D;
  LOBYTE(STACK[0x2393]) = v10 ^ 0x7D;
  v12 = v3[4] ^ v10;
  LOBYTE(STACK[0x2398]) = v11;
  LOBYTE(STACK[0x2391]) = v12 ^ 0x7D;
  v13 = v3[5];
  v14 = v13 ^ v12;
  LOBYTE(STACK[0x2396]) = v14 ^ 0x7D ^ v13;
  LOBYTE(STACK[0x238F]) = v14 ^ 0x7D;
  v15 = v3[6];
  v16 = v15 ^ v14;
  LOBYTE(STACK[0x2394]) = v16 ^ 0x7D ^ v15;
  LOBYTE(STACK[0x238D]) = v16 ^ 0x7D;
  v17 = v3[7];
  v18 = (v17 - ((2 * v17) & 0x33) - 103) ^ v16;
  v19 = v18 - ((2 * v18) & 0x32) - 103;
  LOBYTE(STACK[0x2392]) = v19 ^ 0x7D ^ v17;
  LOBYTE(STACK[0x238B]) = v19 ^ 0x7D;
  v20 = v3[8];
  v21 = v19 ^ (v20 - ((2 * v20) & 0x33) - 103);
  v22 = v21 - ((2 * v21) & 0x32) - 103;
  v23 = v22 ^ 0x7D;
  LOBYTE(STACK[0x2390]) = v22 ^ 0x7D ^ v20;
  LOBYTE(STACK[0x2389]) = v22 ^ 0x7D;
  v24 = v3[9];
  v25 = v22 ^ v24;
  LOBYTE(STACK[0x238E]) = v23;
  *(&STACK[0x2350] + 0x27F % ((v24 & 0x49 ^ 0x49) + (v24 & 0x49u))) = v25 ^ 0x7D;
  v26 = v3[10];
  v27 = v25 ^ v26;
  v28 = v27 ^ 0x7D;
  LOBYTE(STACK[0x238C]) = v27 ^ 0x7D ^ v26;
  LOBYTE(STACK[0x2385]) = v27 ^ 0x7D;
  v29 = v27 ^ v3[11];
  LOBYTE(STACK[0x238A]) = v28;
  LOBYTE(STACK[0x2383]) = v29 ^ 0x7D;
  v30 = v3[12] ^ v29;
  LOBYTE(STACK[0x2388]) = (v29 ^ 0x99) + (~(2 * v29) | 0x37) - 27;
  v31 = v30 ^ 0x7D;
  LOBYTE(STACK[0x2381]) = v30 ^ 0x7D;
  v32 = v3[13] ^ v30;
  LOBYTE(STACK[0x2386]) = v31;
  LOBYTE(STACK[0x237F]) = v32 ^ 0x7D;
  v33 = v3[14];
  v34 = v33 ^ v32;
  v35 = 71 * ((v33 & 0x21) + (v33 & 0x21 ^ 0x21)) + 994;
  v36 = v34 ^ 0x7D;
  *(&STACK[0x2350] + (v35 - 73 * (((28729 * v35) >> 16) >> 5))) = v34 ^ 0x7D ^ v33;
  LOBYTE(STACK[0x237D]) = v34 ^ 0x7D;
  v37 = (v3[15] - ((2 * v3[15]) & 0x33) - 103) ^ v34;
  v38 = v37 - ((2 * v37) & 0x32) - 103;
  LOBYTE(STACK[0x2382]) = v36;
  v39 = v38 ^ 0x7D;
  LOBYTE(STACK[0x237B]) = v38 ^ 0x7D;
  v40 = v38 ^ v3[16];
  LOBYTE(STACK[0x2380]) = v39;
  v41 = v40 ^ 0x7D;
  LOBYTE(STACK[0x2379]) = v40 ^ 0x7D;
  v42 = v40 ^ v3[17];
  LOBYTE(STACK[0x237E]) = v41;
  v43 = v42 ^ 0x7D;
  LOBYTE(STACK[0x2377]) = v42 ^ 0x7D;
  v44 = v42 ^ v3[18];
  LOBYTE(STACK[0x237C]) = v43;
  v45 = v44 ^ 0x7D;
  LOBYTE(STACK[0x2375]) = v44 ^ 0x7D;
  v46 = v3[19] ^ v44;
  LOBYTE(STACK[0x237A]) = v45;
  v47 = v46 ^ 0x7D;
  LOBYTE(STACK[0x2373]) = v46 ^ 0x7D;
  v48 = v3[20] ^ v46;
  LOBYTE(STACK[0x2378]) = v47;
  LOBYTE(STACK[0x2371]) = v48 ^ 0x7D;
  v49 = v3[21];
  v50 = v49 ^ v48;
  LOBYTE(STACK[0x2376]) = v50 ^ 0x7D ^ v49;
  LOBYTE(STACK[0x236F]) = v50 ^ 0x7D;
  v51 = v3[22];
  v52 = v51 ^ v50;
  LOBYTE(STACK[0x2374]) = v52 ^ 0x7D ^ v51;
  LOBYTE(STACK[0x236D]) = v52 ^ 0x7D;
  v53 = v3[23];
  v54 = (v53 - ((2 * v53) & 0x33) - 103) ^ v52;
  v55 = v54 - ((2 * v54) & 0x32) - 103;
  LOBYTE(STACK[0x2372]) = v55 ^ 0x7D ^ v53;
  LOBYTE(STACK[0x236B]) = v55 ^ 0x7D;
  v56 = v3[24];
  v57 = v55 ^ (v56 - ((2 * v56) & 0x33) - 103);
  v58 = v57 - ((2 * v57) & 0x32) - 103;
  LOBYTE(v35) = v58 ^ 0x7D;
  LOBYTE(STACK[0x2370]) = v58 ^ 0x7D ^ v56;
  LOBYTE(STACK[0x2369]) = v58 ^ 0x7D;
  v59 = v3[25];
  v60 = v58 ^ v59;
  LOBYTE(STACK[0x236E]) = v35;
  *(&STACK[0x2350] + 0x6EF % ((v59 & 0x49 ^ 0x49) + (v59 & 0x49u))) = v60 ^ 0x7D;
  v61 = v3[26];
  v62 = v60 ^ v61;
  LOBYTE(v35) = v62 ^ 0x7D;
  LOBYTE(STACK[0x236C]) = v62 ^ 0x7D ^ v61;
  v63 = v62 ^ v3[27];
  v64 = v3[28] ^ v63;
  v65 = v64 ^ 0x7D;
  v66 = v3[29] ^ v64;
  v67 = v66 ^ 0x7D;
  v68 = v3[30];
  v69 = v68 ^ v66;
  LOBYTE(STACK[0x2365]) = v35;
  LOBYTE(STACK[0x236A]) = v35;
  v70 = 71 * ((v68 & 0x21) + (v68 & 0x21 ^ 0x21)) + 2130;
  LOBYTE(STACK[0x2363]) = v63 ^ 0x7D;
  LOBYTE(STACK[0x2368]) = (v63 ^ 0x99) + (~(2 * v63) | 0x37) - 27;
  LOBYTE(STACK[0x2361]) = v65;
  LOBYTE(STACK[0x2366]) = v65;
  LOBYTE(STACK[0x235F]) = v67;
  *(&STACK[0x2350] + (v70 - 73 * (((28729 * v70) >> 16) >> 5))) = v69 ^ 0x7D ^ v68;
  v71 = (v3[31] - ((2 * v3[31]) & 0x33) - 103) ^ v69;
  LOBYTE(STACK[0x235D]) = v69 ^ 0x7D;
  LOBYTE(STACK[0x2362]) = v69 ^ 0x7D;
  LOBYTE(STACK[0x235B]) = (v71 - ((2 * v71) & 0x32) - 103) ^ 0x7D;
  STACK[0x22A0] = 0xA9CEDEF79F16F4F3;
  STACK[0x2298] = 0xD609A269D11DD23ELL;
  STACK[0x2280] = 0x88CE6865F2DA5F5;
  STACK[0x22C0] = 0xF2270C9087589E86;
  v72 = *(v1 + 8 * ((2545 * ((v2 - 119) & 1)) ^ v2));
  v73 = *(&off_279CA5FD0 + (v2 ^ 0x29A));
  STACK[0x22B8] = v73 + 2380;
  STACK[0x2268] = v73 - 6;
  STACK[0x2158] = v73 + 1051;
  STACK[0x22A8] = v73 + 794;
  STACK[0x21E8] = v73;
  STACK[0x2288] = v73 + 2114;
  STACK[0x2290] = v73 + 263;
  return v72();
}

uint64_t sub_26AA6A308(uint64_t a1, int a2, int a3, int a4, uint64_t a5, int a6)
{
  v11 = ~v9 + v7;
  v12 = ((v11 * a6) * v10) >> 32;
  v13 = *(a5 + v11 * a6 - ((v12 + ((v11 * a6 - v12) >> 1)) >> 6) * a4);
  v14 = v13 ^ ((a3 ^ 0x89u) + 91);
  LOBYTE(v13) = v13 ^ *(a5 + v11 * a6 + 2343 - (((((v11 * a6 + 2343) * v10) >> 32) + ((v11 * a6 + 2343 - (((v11 * a6 + 2343) * v10) >> 32)) >> 1)) >> 6) * a4);
  STACK[0x2278] = v14;
  v15 = v11 + 1453464475 * (v6 ^ a2) - 1453464475 * v14;
  *(a5 + v15 * a6 + 2343 - (((((v15 * a6 + 2343) * v10) >> 32) + ((v15 * a6 + 2343 - (((v15 * a6 + 2343) * v10) >> 32)) >> 1)) >> 6) * a4) = v13 - ((2 * v13) & 0xC8) - 28;
  return (*(v8 + 8 * ((2831 * ((v9 | 1uLL) < v7)) ^ a3)))(a1);
}

uint64_t sub_26AA6A3E0@<X0>(int a1@<W2>, int a2@<W3>, uint64_t a3@<X4>, int a4@<W5>, uint64_t a5@<X7>, char a6@<W8>)
{
  v12 = v7 - v9 - 2;
  v13 = ((v12 * a4) * v10) >> 32;
  v14 = *(a3 + v12 * a4 - ((v13 + ((v12 * a4 - v13) >> 1)) >> 6) * a2);
  v15 = (59 * (a1 ^ 0xB) - ((2 * a6) & 0x32) + a6 + 16) ^ v6;
  v16 = *(a5 + ((-75 * (*(a3 + v12 * a4 + 2343 - (((((v12 * a4 + 2343) * v10) >> 32) + ((v12 * a4 + 2343 - (((v12 * a4 + 2343) * v10) >> 32)) >> 1)) >> 6) * a2) ^ v14)) ^ 0x31)) ^ 0x6C;
  LODWORD(STACK[0x2260]) = v14;
  v17 = ((v12 & 0x21) + v12 + (v12 & 0x21 ^ 0x21)) * a4;
  *(a3 + v17 - ((((v17 * v10) >> 32) + ((v17 - ((v17 * v10) >> 32)) >> 1)) >> 6) * a2) = v15 ^ v11 ^ (v16 - ((2 * v16 - 6) & 0xC8) + 97) ^ v14;
  return (*(v8 + 8 * (a1 | (3576 * ((v9 | 2uLL) < v7)))))();
}

uint64_t sub_26AA6A4F4@<X0>(int a1@<W2>, int a2@<W3>, uint64_t a3@<X4>, int a4@<W5>, uint64_t a5@<X7>, char a6@<W8>)
{
  v13 = a1 + 137;
  v14 = *(a3 + (v11 - 3) * a4 - ((((((v11 - 3) * a4) * v10) >> 32) + (((v11 - 3) * a4 - ((((v11 - 3) * a4) * v10) >> 32)) >> 1)) >> 6) * a2);
  v15 = v6 + (((v14 ^ v12 ^ (v11 - 3)) & 0x832D8C7A ^ a6 & 0x7A | a6 & 0x85) ^ (v14 ^ v12 ^ (v11 - 3)) & 0x7CD27385) * a4;
  v16 = (v14 ^ *(a3 + ((v13 ^ 0x2A8) + v11 - 3) * a4 - ((((((v13 ^ 0x2A8u) + v11 - 3) * a4 * v10) >> 32) + ((((v13 ^ 0x2A8) + v11 - 3) * a4 - ((((v13 ^ 0x2A8u) + v11 - 3) * a4 * v10) >> 32)) >> 1)) >> 6) * a2)) - (v14 ^ v12);
  STACK[0x2258] = v14 ^ v12;
  v17 = (*(a5 + ((-75 * (v14 ^ v12)) ^ 0x31)) ^ 0x6Cu) + 125;
  STACK[0x2250] = v17;
  *(a3 + v15 - ((((v15 * v10) >> 32) + ((v15 - ((v15 * v10) >> 32)) >> 1)) >> 6) * a2) = ((v16 - ((2 * v16) & 0x32) - 103) ^ 0x99) + v17 + (~(2 * (((v16 - ((2 * v16) & 0x32) - 103) ^ 0x99) + v17)) | 0x37) - 27;
  return (*(v8 + 8 * (a1 | ((v9 | 3uLL) < v7) | (2 * ((v9 | 3uLL) < v7)))))();
}

uint64_t sub_26AA6A624@<X0>(int a1@<W2>, int a2@<W3>, uint64_t a3@<X4>, int a4@<W5>, char a5@<W8>)
{
  v13 = *(a3 + (v11 ^ 0xFFFFFC6D) + v12 * a4 - ((((((v11 ^ 0xFFFFFC6D) + v12 * a4) * v10) >> 32) + (((v11 ^ 0xFFFFFC6D) + v12 * a4 - ((((v11 ^ 0xFFFFFC6D) + v12 * a4) * v10) >> 32)) >> 1)) >> 6) * a2);
  v14 = v13 ^ *(a3 + v12 * a4 + 2059 - (((((v12 * a4 + 2059) * v10) >> 32) + ((v12 * a4 + 2059 - (((v12 * a4 + 2059) * v10) >> 32)) >> 1)) >> 6) * a2);
  v15 = (((((v14 >> 3) | (32 * v14)) ^ 0xA2) + ~*(STACK[0x2288] + (((v14 >> 3) | (32 * v14)) ^ 0xF5))) ^ 0x1D) + 96;
  v16 = (((124 - v9) & 0x44) + (v6 & 0x43)) * (v12 + 29);
  LODWORD(STACK[0x2248]) = v13;
  *(a3 + v16 - ((((v16 * v10) >> 32) + ((v16 - ((v16 * v10) >> 32)) >> 1)) >> 6) * a2) = v5 ^ a5 ^ v13 ^ v15;
  return (*(v8 + 8 * (a1 ^ (5099 * ((v9 | 4uLL) < v7)))))();
}

uint64_t sub_26AA6A720@<X0>(int a1@<W2>, int a2@<W3>, uint64_t a3@<X4>, int a4@<W5>, char a5@<W8>)
{
  v12 = (v10 - 5) * a4;
  v13 = *(a3 + v12 - ((((v12 * v9) >> 32) + ((v12 - ((v12 * v9) >> 32)) >> 1)) >> 6) * a2);
  v14 = v13 ^ *(a3 + v12 + a1 + 137 + 1694 - (((((v12 + a1 + 137 + 1694) * v9) >> 32) + ((v12 + a1 + 137 + 1694 - (((v12 + a1 + 137 + 1694) * v9) >> 32)) >> 1)) >> 6) * a2) ^ v11;
  v15 = v13 ^ v11;
  STACK[0x2240] = v15;
  v16 = v5 + (v15 + v10 - 5 - (a5 ^ v11)) * a4;
  *(a3 + v16 - ((((v16 * v9) >> 32) + ((v16 - ((v16 * v9) >> 32)) >> 1)) >> 6) * a2) = v14;
  return (*(v7 + 8 * (a1 ^ (4733 * ((v8 | 5uLL) < v6)))))();
}

uint64_t sub_26AA6A7D4@<X0>(char a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X4>, int a5@<W5>, char a6@<W8>)
{
  v14 = ((a2 ^ 0x89) - 578) * (v12 - 6);
  v15 = ((v14 + 2343) * v11) >> 32;
  v16 = *(a4 + v14 + 2343 - ((v15 + ((v14 + 2343 - v15) >> 1)) >> 6) * a3);
  v17 = *(a4 + v14 - ((((v14 * v11) >> 32) + ((v14 - ((v14 * v11) >> 32)) >> 1)) >> 6) * a3);
  v18 = *(STACK[0x2158] + (((2 * v17) | ((~v17 & 0x80) != 0)) ^ 0x2BLL));
  v19 = (a1 + v6 - ((2 * v6) & 0x32)) ^ a6;
  HIDWORD(v20) = 1 - v18;
  LODWORD(v20) = ~v18 << 24;
  v21 = (v20 >> 25) ^ 0xFFFFFFBE;
  v22 = (v21 - 40);
  v23 = v17 ^ v13;
  STACK[0x2230] = v23;
  STACK[0x2238] = v22;
  LOBYTE(v21) = ((v21 - 2 * ((v21 - 40) & 0x66 ^ v21 & 2) - 68) ^ v16) + (v19 ^ a1) - (v21 - 40);
  v24 = v7 + (v12 - 6 - v23 + v22) * a5;
  *(a4 + v24 - ((((v24 * v11) >> 32) + ((v24 - ((v24 * v11) >> 32)) >> 1)) >> 6) * a3) = (v21 + a1 - ((2 * v21) & 0x32)) ^ 0x7D;
  return (*(v9 + 8 * (a2 ^ (2857 * ((v10 | 6uLL) < v8)))))();
}

uint64_t sub_26AA6A918@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X4>, int a5@<W5>, char a6@<W8>)
{
  v15 = (v13 - 7) * a5;
  v16 = *(a4 + (v15 + 2343) % (((a2 - 718049127) & 0x2ACC8FEFu) - 576));
  v17 = v6 ^ (v7 + a1 - 2 * (v7 & 0x59F ^ a6 & 6));
  v18 = *(a4 + v15 - ((((v15 * v12) >> 32) + ((v15 - ((v15 * v12) >> 32)) >> 1)) >> 6) * a3);
  v19 = v18 ^ 0xE4 ^ v16;
  v20 = v18 ^ v14;
  STACK[0x2228] = v20;
  LODWORD(v20) = v8 + (v13 - 7 - v17 + v20) * a5;
  *(a4 + v20 - ((((v20 * v12) >> 32) + ((v20 - ((v20 * v12) >> 32)) >> 1)) >> 6) * a3) = v19;
  return (*(v10 + 8 * (a2 ^ (1556 * ((v11 | 7uLL) < v9)))))();
}

uint64_t sub_26AA6A9E4@<X0>(int a1@<W2>, int a2@<W3>, uint64_t a3@<X4>, int a4@<W5>, int a5@<W8>)
{
  v13 = (v10 ^ 0xFFFFFFF8) + v8;
  v14 = *(a3 + v13 * a4 + 2343 - (((((v13 * a4 + 2343) * v11) >> 32) + ((v13 * a4 + 2343 - (((v13 * a4 + 2343) * v11) >> 32)) >> 1)) >> 6) * a2);
  v15 = *(a3 + v13 * a4 % ((a1 ^ 0x89u) - 576)) ^ v12;
  STACK[0x2220] = v15;
  v16 = (v15 * ((v13 ^ (a5 - v8)) & 0x698AFED9)) ^ v13 ^ (1770716889 * v15);
  *(a3 + v7 + v16 * a4 - (((((v7 + v16 * a4) * v11) >> 32) + ((v7 + v16 * a4 - (((v7 + v16 * a4) * v11) >> 32)) >> 1)) >> 6) * a2) = v6 ^ v14 ^ (v5 - ((2 * v5) & 0xC8) - 28);
  return (*(v9 + 8 * (a1 | (3562 * (v8 > (v10 | 8uLL))))))();
}

uint64_t sub_26AA6AAB0(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6)
{
  v14 = (v12 - 9) * a6;
  v15 = ((v14 + 2343) * v11) >> 32;
  LOBYTE(v15) = *(a5 + v14 + 2343 - ((v15 + ((v14 + 2343 - v15) >> 1)) >> 6) * a4);
  v16 = *(a5 + v14 - ((((v14 * v11) >> 32) + ((v14 - ((v14 * v11) >> 32)) >> 1)) >> 6) * a4);
  STACK[0x2218] = v16 ^ (59 * (a3 ^ 0x20B)) ^ 0x6Du;
  v17 = v7 ^ v13 ^ (v12 - 9) ^ (v16 ^ (59 * (a3 ^ 0xB)) ^ 0x6D);
  *(a5 + v6 + v17 * a6 - (((((v6 + v17 * a6) * v11) >> 32) + ((v6 + v17 * a6 - (((v6 + v17 * a6) * v11) >> 32)) >> 1)) >> 6) * a4) = v16 ^ v15 ^ v13;
  return (*(v9 + 8 * (a3 | (2396 * ((v10 | 9uLL) < v8)))))();
}

uint64_t sub_26AA6AB74@<X0>(char a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X4>, int a5@<W5>, int a6@<W8>)
{
  v13 = v8 - a6;
  v14 = (((v13 + 31) & a5 ^ a5) + ((v13 + 31) & a5)) * (v13 + 31);
  v15 = v13 * a5;
  LOBYTE(v13) = *(a4 + v13 * a5 - 142 - (((((v13 * a5 - 142) * v11) >> 32) + ((v13 * a5 - 142 - (((v13 * a5 - 142) * v11) >> 32)) >> 1)) >> 6) * a3);
  LOBYTE(v13) = (((a2 ^ 0x89 ^ (a1 + 119)) - ((2 * v7) & 0x32) + v7) ^ (v6 + a1 - ((2 * v6) & 0x33))) - (v13 ^ v12) + (v13 ^ *(a4 + v14 - ((((v14 * v11) >> 32) + ((v14 - ((v14 * v11) >> 32)) >> 1)) >> 6) * a3));
  *(a4 + v15 + 2201 - (((((v15 + 2201) * v11) >> 32) + ((v15 + 2201 - (((v15 + 2201) * v11) >> 32)) >> 1)) >> 6) * a3) = v13 - ((2 * v13) & 0xC8) - 28;
  return (*(v9 + 8 * (a2 ^ (5005 * ((v10 | 0xAuLL) < v8)))))();
}

uint64_t sub_26AA6AC6C@<X0>(int a1@<W2>, int a2@<W3>, uint64_t a3@<X4>, int a4@<W5>, uint64_t a5@<X7>, int a6@<W8>)
{
  v14 = a6 ^ v6;
  v15 = (v12 - 11) * a4;
  v16 = ((v15 + 2343) * v11) >> 32;
  v17 = ((((a1 + 1) | 0x88) + 44) * (*(a3 + v15 + 2343 - ((v16 + ((v15 + 2343 - v16) >> 1)) >> 6) * a2) ^ v13)) ^ 0x31;
  v18 = *(a3 + v15 - ((((v15 * v11) >> 32) + ((v15 - ((v15 * v11) >> 32)) >> 1)) >> 6) * a2) ^ v13;
  v19 = (v18 - 2 * (v18 - 87) - 88) ^ *(STACK[0x22B8] + ((v18 - 87) ^ 0x60));
  LOBYTE(v17) = -75 * (*(a5 + v17) ^ 0x6C) + 97;
  LODWORD(v16) = v7 + (v12 - 11 - 954854281 * v14 + 954854281 * v18) * a4;
  v20 = (*(STACK[0x22A8] + (v17 ^ 0x52)) ^ (~(2 * v17) + v17) ^ 0xC4) + 125;
  LODWORD(STACK[0x2210]) = v19;
  *(a3 + v16 - ((((v16 * v11) >> 32) + ((v16 - ((v16 * v11) >> 32)) >> 1)) >> 6) * a2) = v20 ^ v19 ^ 0x3D;
  return (*(v9 + 8 * (a1 | (2145 * ((v10 | 0xBuLL) < v8)))))();
}

uint64_t sub_26AA6ADB4(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6)
{
  v15 = (v12 ^ 0xFFFFFFF4) + v10;
  v16 = *(a5 + v15 * a6 + 2343 - (((((v15 * a6 + 2343) * v13) >> 32) + ((v15 * a6 + 2343 - (((v15 * a6 + 2343) * v13) >> 32)) >> 1)) >> 6) * a4);
  v17 = ((a3 - 441) & (v15 ^ (v8 - v10))) * v15;
  v18 = *(a5 + v17 - ((((v17 * v13) >> 32) + ((v17 - ((v17 * v13) >> 32)) >> 1)) >> 6) * a4) ^ v14;
  v19 = ((v15 * a6) * v13) >> 32;
  v20 = *(a5 + v15 * a6 - ((v19 + ((v15 * a6 - v19) >> 1)) >> 6) * a4);
  STACK[0x2208] = v18;
  STACK[0x21F8] = v20 ^ v14;
  v21 = (-142522299 * v18) ^ v15 ^ (-142522299 * (v20 ^ v14));
  *(a5 + v6 + v21 * a6 - (((((v6 + v21 * a6) * v13) >> 32) + ((v6 + v21 * a6 - (((v6 + v21 * a6) * v13) >> 32)) >> 1)) >> 6) * a4) = v9 ^ v7 ^ v16 ^ 0xD9;
  return (*(v11 + 8 * (a3 ^ (2221 * ((v12 | 0xCuLL) < v10)))))();
}

uint64_t sub_26AA6AEB8@<X0>(int a1@<W2>, int a2@<W3>, uint64_t a3@<X4>, int a4@<W5>, char a5@<W6>, char a6@<W8>)
{
  v12 = v8 - v7 - (((a6 & 0x97 ^ 0x97) + (a6 & 0x97)) & 0xFE ^ 0x97);
  v13 = ((v12 * a4) * v11) >> 32;
  LODWORD(v13) = *(a3 + v12 * a4 - ((v13 + ((v12 * a4 - v13) >> 1)) >> 6) * a2);
  HIDWORD(v14) = v13 ^ 4;
  LODWORD(v14) = (v13 ^ 0xE0) << 24;
  v15 = *(STACK[0x2268] + ((v14 >> 27) ^ 0x5ALL));
  v16 = ((v15 ^ 0x20) - 2 * (((v15 ^ 0x20) + 96) & 0x67 ^ v15 & 3) + 68) ^ *(a3 + v12 * a4 + 2343 - (((((v12 * a4 + 2343) * v11) >> 32) + ((v12 * a4 + 2343 - (((v12 * a4 + 2343) * v11) >> 32)) >> 1)) >> 6) * a2);
  v17 = v6 + (v12 + 1071243363 * ((v15 ^ 0x20) + 96) - 1071243363 * (a5 ^ ((a1 - 120) | 1) ^ 0x6D)) * a4;
  v18 = (((((v16 >> 3) | (32 * v16)) ^ 0xA2) + ~*(STACK[0x2288] + (((v16 >> 3) | (32 * v16)) ^ 0xF5))) ^ 0x1D) - (v15 ^ 0x20) + (v13 ^ 0xE4);
  *(a3 + v17 - ((((v17 * v11) >> 32) + ((v17 - ((v17 * v11) >> 32)) >> 1)) >> 6) * a2) = v18 - ((2 * v18) & 0xC8) - 28;
  return (*(v9 + 8 * (a1 ^ (2159 * ((v10 | 0xDuLL) < v8)))))();
}

uint64_t sub_26AA6B034@<X0>(int a1@<W2>, unsigned int a2@<W3>, uint64_t a3@<X4>, int a4@<W5>, char a5@<W6>, int a6@<W8>)
{
  v13 = 11 * (a1 ^ 0x23B);
  v14 = (v10 ^ 0xFFFFFFF2) + v8;
  v15 = v14 * a4;
  v16 = *(a3 + (v13 ^ 0xBAE) + v15 - ((((((v13 ^ 0xBAE) + v15) * v11) >> 32) + (((v13 ^ 0xBAE) + v15 - ((((v13 ^ 0xBAE) + v15) * v11) >> 32)) >> 1)) >> 6) * a2);
  v17 = v6 + ((*(a3 + v14 * a4 % ((v14 | (a6 - v8)) & a2)) ^ v12) + v14 - (*(a3 + v15 - ((((v15 * v11) >> 32) + ((v15 - ((v15 * v11) >> 32)) >> 1)) >> 6) * a2) ^ v12)) * a4;
  *(a3 + v17 - ((((v17 * v11) >> 32) + ((v17 - ((v17 * v11) >> 32)) >> 1)) >> 6) * a2) = (v7 ^ a5 ^ v16) - ((2 * (v7 ^ a5 ^ v16)) & 0xC8) - 28;
  return (*(v9 + 8 * (a1 | (405 * ((v10 | 0xEuLL) < v8)))))();
}

uint64_t sub_26AA6B11C(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6)
{
  v13 = (v11 - 15) * a6;
  v14 = ((v13 + 2343) * v10) >> 32;
  v15 = *(a5 + v13 + 2343 - ((v14 + ((v13 + 2343 - v14) >> 1)) >> 6) * a4);
  LOBYTE(v13) = *(a5 + v13 - ((((v13 * v10) >> 32) + ((v13 - ((v13 * v10) >> 32)) >> 1)) >> 6) * a4);
  v16 = v11 - 15 + 254773819 * (((*(STACK[0x22A8] + ((-75 * (v13 ^ v12)) ^ (a3 + 82))) ^ (75 * (v13 ^ v12) - 1) ^ 0xC4) + 125) - (v6 ^ v12));
  v17 = v16 & a6;
  v18 = v16 & a6 ^ a6;
  *(a5 + (v18 + v17) * (v16 + 33) - ((((((v18 + v17) * (v16 + 33)) * v10) >> 32) + (((v18 + v17) * (v16 + 33) - ((((v18 + v17) * (v16 + 33)) * v10) >> 32)) >> 1)) >> 6) * a4) = v13 ^ v15 ^ v12;
  return (*(v8 + 8 * (a3 ^ (3723 * ((v9 | 0xFuLL) < v7)))))();
}

uint64_t sub_26AA6B21C@<X0>(unsigned __int8 a1@<W0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v23 = v11 ^ v12;
  v24 = v20 + a3 + 137 - 665;
  v25 = ((v24 * a6) * v19) >> 32;
  v26 = *(a5 + v24 * a6 + 2343 - (((((v24 * a6 + 2343) * v19) >> 32) + ((v24 * a6 + 2343 - (((v24 * a6 + 2343) * v19) >> 32)) >> 1)) >> 6) * a4) ^ v22;
  LODWORD(STACK[0x21F0]) = v13;
  v27 = *(v8 + ((-75 * v26) ^ 0x31)) ^ 0x6C;
  v28 = *(a5 + v24 * a6 - ((v25 + ((v24 * a6 - v25) >> 1)) >> 6) * a4);
  HIDWORD(v29) = v28 ^ 4;
  LODWORD(v29) = (v28 ^ 0xE0) << 24;
  v30 = ((v27 + ((4 - 2 * v27) | 0x37) + 98) ^ v28) - (v28 ^ v22);
  v31 = 95 - (*(STACK[0x2268] + ((v29 >> 27) ^ 0x5ALL)) ^ 0xFFFFFFDF);
  v32 = v10 + (v24 - 1723768019 * (v28 ^ v22) + 1723768019 * (95 - (*(STACK[0x2268] + ((v29 >> 27) ^ 0x5ALL)) ^ 0xDF))) * a6;
  v33 = ((v30 + a2 - ((2 * v30) & 0x32)) ^ a2) + (v23 ^ v22);
  *(a5 + v32 - ((((v32 * v19) >> 32) + ((v32 - ((v32 * v19) >> 32)) >> 1)) >> 6) * a4) = v33 - ((2 * v33) & 0xC8) - 28;
  v34 = STACK[0x2278] | ((LODWORD(STACK[0x2260]) ^ v22) << 8);
  v35 = v34 - 0x653266CB9A5A85F8 - 2 * (v34 & 0x7A2B ^ STACK[0x2278] & 0x23);
  v36 = STACK[0x2218];
  v37 = STACK[0x22A0] ^ 0xAEB374E35830D0CCLL ^ (v36 - 0x514C8B1CA7CF2F34 - ((2 * v36) & 0x9999999999999999)) ^ (v9 << 16) ^ (STACK[0x21F8] << 24) ^ (v16 << 32) ^ (a8 << 40) ^ (a1 << 48);
  v38 = (v34 + 0x60667322BDD0417BLL - 2 * (v34 & 0x417F ^ STACK[0x2278] & 4)) ^ STACK[0x2280];
  STACK[0x22A0] = v37 ^ (v18 << ((v28 & 8 ^ 8) + (v28 & 8))) ^ (v31 << 56);
  STACK[0x2298] ^= 0xD174087D163BF601 ^ ((v36 | (v18 << 8)) - 0x2E8BF782E9C409FFLL - 2 * ((v36 | (v18 << 8)) & 0xF63D ^ v36 & 0x3C)) ^ ((LODWORD(STACK[0x2210]) ^ 0xD9u) << 16) ^ (STACK[0x2208] << 24) ^ (LODWORD(STACK[0x21F0]) << 32) ^ (v21 << 40) ^ (a7 << (v38 & 0x30) << (v38 & 0x30 ^ 0x30)) ^ ((v28 ^ v22) << 56);
  v39 = STACK[0x2240];
  v40 = LODWORD(STACK[0x2248]) ^ 0xE4;
  v41 = STACK[0x2228];
  v42 = STACK[0x2220] << 56;
  STACK[0x22C0] ^= 0x9ACD993465A57A08 ^ v35 ^ (STACK[0x2250] << 16) ^ (v40 << 24) ^ (STACK[0x2240] << 32) ^ (STACK[0x2238] << 40) ^ (STACK[0x2228] << 48) ^ v42;
  STACK[0x2280] = v38 ^ (((STACK[0x2258] << 16) | (STACK[0x2230] << 40)) & 0xFF00FF0000FFFFFFLL | (v40 << 24) | (v39 << 32) & 0xFF00FFFFFFFFFFFFLL | (v41 << 48)) ^ 0x60667322BDD0417BLL ^ v42;
  return (*(v15 + 8 * (a3 ^ (2545 * (v17 + 16 < v14)))))();
}

uint64_t sub_26AA6B598(uint64_t a1, int a2)
{
  v4 = (((STACK[0x22C0] << 23) ^ 0x9A32D2BD04000000) - 0x653266CB9A5A85F8 - ((((STACK[0x22C0] << 23) ^ 0x9A32D2BD04000000) << (v3 ^ 0x88u)) & 0x359B3268CB000000)) ^ STACK[0x22C0];
  v5 = (STACK[0x2298] >> ((v3 - 51) ^ 0x4Cu)) ^ (v4 >> 17);
  v6 = v4 ^ STACK[0x2298] ^ ((v5 ^ 0x345D021F45) - 0x2E8BF782E9C409FFLL - 2 * ((v5 ^ 0x345D021F45) & 0x87D163BF609 ^ v5 & 8));
  v7 = (((STACK[0x2298] << 23) ^ 0x3E8B1DFB00800000) - 0x2E8BF782E9C409FFLL - ((2 * ((STACK[0x2298] << 23) ^ 0x3E8B1DFB00800000)) & 0xA2E810FA2C000000)) ^ STACK[0x2298];
  v8 = v7 ^ (v7 >> 17) ^ v6 ^ (v6 >> 26);
  v9 = (((STACK[0x2280] << 23) ^ 0x915EE820BD800000) + 0x60667322BDD0417BLL - ((2 * ((STACK[0x2280] << 23) ^ 0x915EE820BD800000)) & 0xC0CCE6457B000000)) ^ STACK[0x2280];
  v10 = STACK[0x22A0];
  v11 = v9 ^ v10 ^ (((v10 >> 26) ^ (v9 >> 17) ^ 0x2BACDD38D6) - 0x514C8B1CA7CF2F34 - ((2 * ((v10 >> 26) ^ (v9 >> 17) ^ 0x2BACDD38D6)) & 0xE9C6B061A198));
  v12 = (((v10 << 23) ^ 0x71AC186866000000) - 0x514C8B1CA7CF2F34 - ((2 * ((v10 << 23) ^ 0x71AC186866000000)) & 0x5D66E9C6B0000000)) ^ v10;
  v13 = v12 ^ (v12 >> 17) ^ v11 ^ (v11 >> 26);
  v14 = v11 ^ (v11 << 23) ^ ((v11 ^ (v11 << 23)) >> 17) ^ (v13 >> 26);
  v15 = (v14 + 0x60667322BDD0417BLL - ((2 * v14) & 0xC0CCE6457BA082F6)) ^ v13 ^ 0x60667322BDD0417BLL;
  v16 = v8 ^ (v8 << 23) ^ ((v8 ^ (v8 << 23)) >> 17) ^ v15 ^ (v15 >> 26);
  LODWORD(v6) = (STACK[0x2298] ^ 1) + 2 * (v8 + v6) + (v6 ^ (v6 << 23) ^ ((v6 ^ (v6 << 23)) >> 17) ^ v8 ^ (v8 >> 26));
  v17 = v6 + a2 - ((2 * v6) & 0x132);
  v18 = (v16 >> 26) ^ v15 ^ (v15 << 23) ^ ((v15 ^ (v15 << 23)) >> 17) ^ v16;
  v19 = ((v16 ^ (v16 << 23)) >> 17) ^ v16 ^ (v16 << 23) ^ v18;
  v20 = v19 ^ (v18 >> 26);
  STACK[0x22C0] = v20 + v18 - 0x653266CB9A5A85F8 - ((2 * (v20 + v18)) & 0x359B3268CB4AF410);
  LODWORD(STACK[0x22A0]) = v17;
  return (*(v2 + 8 * ((43 * (((-(v20 | 0x131C13BF095D18FCLL) | v19) & 0x8000000000000000) == 0)) ^ v3)))();
}

void sub_26AA6B87C(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  STACK[0x2280] = v4;
  STACK[0x22A0] = v3 ^ a1;
  STACK[0x2298] = a2 ^ v2;
  JUMPOUT(0x26AA6A28CLL);
}

uint64_t sub_26AA6B8B4@<X0>(unint64_t a1@<X6>, int a2@<W7>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, _BYTE *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, _BYTE *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, _BYTE *a60)
{
  v72 = 280813903 * (v66 - v60) + (v64 + v65);
  v73 = v72 - ((2 * v72) & 0x75A03604) + 986716930;
  v74 = v73 & 0xFE ^ 2;
  LODWORD(STACK[0x2278]) = v74;
  v75 = 16843009 * v74 - 88252279;
  LODWORD(STACK[0x2218]) = v75 - ((33686018 * v74) & 0xF57AC110);
  v76 = (v74 - 119 - ((2 * v74) & 0x10));
  LODWORD(STACK[0x2298]) = v76;
  v77 = v73 ^ 0x3AD01B02;
  LODWORD(STACK[0x2220]) = v73;
  LODWORD(STACK[0x2250]) = (v73 ^ 0x3AD01B02) + (v73 & 0xFFFFFF01 ^ 0x5ED8DAAC ^ ((v76 ^ 0x89) - ((2 * (v76 ^ 0x89)) & 0xA6) - 1678295469)) + 821939961 * ((v73 ^ 0xC52FE4FD) + ((((v76 ^ 0x89 | v73 & 0xFFFFFF01) ^ 0x3AD01B00) - 2062948967 - 2 * (((v76 ^ 0x89 | v73 & 0xFFFFFF01) ^ 0x3AD01B00) & 0x509E59F ^ v75 & 6)) ^ 0x8509E599));
  STACK[0x21F8] = a1;
  v78 = STACK[0x22C0];
  LODWORD(STACK[0x1D40]) = a1 ^ 0xB49;
  v79 = (((a1 ^ 0xB49) - 23) ^ v78) - v61 + v65;
  v80 = v79 - 2062948967 - ((2 * v79) & 0xA13CB32);
  v81 = v80 & 7 ^ 1;
  LODWORD(STACK[0x2238]) = v80 & 7;
  v82 = (1 - v81 - 2 * (v81 & 1)) & 7;
  LODWORD(STACK[0x21B0]) = v82;
  if ((v80 & 7) == 1)
  {
    v83 = 0;
  }

  else
  {
    v83 = -1;
  }

  v84 = v83 << (v82 ^ 1);
  v85 = v80 & 0xFFFFFFF8 ^ 0x8509E598;
  LODWORD(STACK[0x1F58]) = -2062948968;
  v86 = (v85 - 2062948967 - ((2 * v85) & 0xA13CB30)) ^ (v80 & 7 | 0x8509E598);
  v87 = ~v84;
  if ((v80 & 7) == 1)
  {
    v87 = 0;
  }

  LODWORD(STACK[0x2240]) = ((v86 - 2062948967 - ((2 * v86) & 0xA13CB32)) ^ 0x8509E599 ^ v87 & v77 ^ (16843009 * v84)) - 2062948967 - ((2 * ((v86 - 2062948967 - ((2 * v86) & 0xA13CB32)) ^ 0x8509E599 ^ v87 & v77 ^ (16843009 * v84))) & 0xA13CB32);
  LODWORD(STACK[0x2230]) = (v86 << 7) - 2062948967 - ((v86 << 8) & 0xA13CB00);
  v88 = 1191182336 * v84;
  v89 = v73 & 0xFFFFFF01 ^ 0x3AD01B89 ^ LODWORD(STACK[0x2298]);
  v90 = (16843009 * v84) ^ (v89 - 2062948967 - ((2 * v89) & 0xA13CB32));
  v91 = v63 - v69;
  v92 = v63 - v69 + (v71 + v64);
  LODWORD(STACK[0x21D8]) = 84534685;
  LODWORD(STACK[0x1C98]) = 169069056;
  v93 = ((v90 ^ v88 & v92 ^ 0x8509E599) - 2062948967 - 2 * ((v90 ^ v88 & v92 ^ 0x8509E599) & 0x509E59D ^ (v90 ^ v88 & v92) & 4)) ^ ((v89 << 8) - 2062948967 - ((v89 << 9) & 0xA13CA00));
  v94 = v73 ^ (v73 << 8) ^ (v93 - ((2 * v93) & 0x75A03604) + 986716930);
  LODWORD(STACK[0x21F0]) = v94 ^ 0x8C3B2681;
  LODWORD(STACK[0x21E0]) = (2 * v94) & 0x47BFB6FC ^ 0xFFC9FBFF;
  LODWORD(STACK[0x2228]) = ((v80 << 7) ^ 0x84F2CC80) - 2062948967 - ((2 * ((v80 << 7) ^ 0x84F2CC80)) & 0xA13CB00);
  v95 = v67 ^ (v67 >> 17) ^ v68;
  v96 = v95 ^ v64;
  v97 = ((v95 ^ v70 ^ ((v95 ^ v64) >> 26)) + (v95 ^ v64)) ^ v65 ^ v61 ^ ((v65 ^ v61) >> 3);
  LODWORD(STACK[0x22C0]) = -2062948966;
  LODWORD(v95) = (v97 - 2062948966 + ~((2 * v97) & 0xA13CB32)) ^ 0x8509E599;
  v98 = 436909091 * v95 - 2062948967 - ((68511814 * v95) & 0xA13CB32);
  v99 = v97 & 7;
  if ((v97 & 7) != 0)
  {
    v100 = 255;
  }

  else
  {
    v100 = 0;
  }

  v101 = (v100 >> 3) & 0xFFFFFF1F | (32 * (v100 & 7));
  v102 = -v97 & 7;
  v103 = (((~*(STACK[0x2288] + (v101 ^ 0xF5)) + (v101 ^ 0xFFFFFFA2)) ^ 0x1D) + 96) << (-v97 & 7);
  if ((v97 & 7) != 0)
  {
    v104 = ~v103;
  }

  else
  {
    v104 = 0;
  }

  LODWORD(STACK[0x21D0]) = v104 & (v62 ^ 0x99999999);
  LODWORD(STACK[0x21C8]) = (436909091 * v97 - 2062948967 - ((68511814 * v97) & 0xA13CB32)) ^ v98;
  v105 = 16843009 * (v62 & 0xFE ^ 0x98) - ((33686018 * (v62 & 0xFE ^ 0x98)) & 0x77C21C6C) + 1004604982;
  v106 = (((v62 & 0xFE ^ 0x98) - ((2 * (v62 & 0xFE ^ 0x98)) & 0x6C) + 54) & 0xFE | a2) ^ 0x37;
  LODWORD(STACK[0x21C0]) = 32 * v106 - ((v106 << 6) & 0x2440);
  v107 = v91 + (v96 + v64) - 2062948967 - ((2 * (v91 + (v96 + v64))) & 0xA13CB32);
  v108 = 16843009 * v103;
  v109 = v107 ^ 0x8509E599;
  v110 = v108 ^ v62 ^ (788529152 * v103) & (v107 ^ 0x8509E599);
  LODWORD(STACK[0x21B8]) = (v110 ^ 0x8509E599) - 2062948967 - 2 * ((v110 ^ 0x8509E599) & 0x509E59B ^ v110 & 2);
  STACK[0x2280] = v102;
  v111 = -2062948967 - 1914837765 * v102 - ((196856310 * v102) & 0xA13CB32);
  v112 = ((-629695611 - v102 - ((1108014572 - 2 * v102) & 0x4200411E)) ^ 0x3972208F) + v102;
  v113 = ((a3 & 0x8DDDF4FF ^ 0x8DDDF4FF) + (a3 & 0x8DDDF4FF)) & 0x9DDFEDFB;
  v114 = STACK[0x21B0];
  v115 = ((v112 - 2062948967 - ((2 * v112) & 0xA13CB32)) ^ 0x8509E599) + (v111 ^ 0x8509E599) + v113 + v113 * (LODWORD(STACK[0x21B0]) ^ 0xFFFFFFFE);
  LODWORD(STACK[0x2248]) = v115 - 2062948967 - ((2 * v115) & 0xA13CB32);
  v116 = (v109 | ((v62 ^ 0x8509E599) + 926693100)) - ((2 * (v109 | ((v62 ^ 0x8509E599) + 926693100))) & 0x33F27BEA) + 435764725;
  v117 = ((v77 + 926693100) | v92) - 2062948967 - ((2 * ((v77 + 926693100) | v92)) & 0xA13CB32);
  LODWORD(STACK[0x2210]) = v117;
  v118 = (((BYTE2(v117) ^ BYTE1(v117) ^ 0xEC) - ((2 * (BYTE2(v117) ^ BYTE1(v117) ^ 0xEC)) & 0x33) - 103) ^ v117) ^ HIBYTE(v117) ^ 0x7C;
  v119 = 16843009 * v118 - ((33686018 * v118) & 0x75A24EF8) - 1160697988;
  v120 = (((BYTE1(v116) ^ BYTE2(v116) ^ 0xC4) - 2 * ((BYTE1(v116) ^ BYTE2(v116) ^ 0xC4) & 0x7F ^ (BYTE1(v116) ^ BYTE2(v116)) & 0xA) - 11) ^ v116) ^ HIBYTE(v116) ^ 0xA9;
  v121 = 16843008 * v120;
  v122 = 16843009 * v120;
  LODWORD(STACK[0x2260]) = (16843009 * v120) ^ 0xA9498D45;
  v123 = (((v119 >> 6) ^ 0x10CA37A) - ((2 * ((v119 >> 6) ^ 0x10CA37A)) & 0x3F27BEA) + 435764725) ^ (16843009 * v120) ^ 0xA9498D45;
  v124 = (v123 - 2062948967 - ((2 * v123) & 0xA13CB32)) ^ (v122 >> 6) ^ 0x87CB275B;
  LODWORD(STACK[0x2298]) = v122;
  v125 = (v119 ^ 0x5D6C8A59 ^ (v124 - 2062948967 - ((2 * v124) & 0xA13CB32))) + 981498919 * ((v119 ^ 0x4328DE85) + (v122 ^ 0x4F4F4F4F)) + 981498919;
  v126 = v125 - 2062948967 - ((2 * v125) & 0xA13CB32);
  v127 = ((-2062948967 - 428114837 * v81 - ((217512150 * v81) & 0xA13CB32)) ^ 0x8509E599) + 428114837 * v99 - 1593476362;
  LOBYTE(v109) = v81 + 107 * (v109 - v92);
  v128 = (v81 - v99 + ((v127 - ((2 * v127) & 0x48C1D232) - 1537152743) ^ 0xA460E919)) ^ (-2054121017 * v81);
  v129 = (v128 - 2062948967 - ((2 * v128) & 0xA13CB32)) ^ (-2062948967 - 2054121017 * v99 - ((186725262 * v99) & 0xA13CB32));
  v130 = STACK[0x2218];
  v131 = (LODWORD(STACK[0x2218]) ^ 0xFABD6089) << (((v63 & 9 ^ 9) + (v63 & 9)) & 0x10 | 8);
  v132 = (((v105 ^ 0x3BE10E36) - 1689407163 - 33686018 * LODWORD(STACK[0x2278]) - 2062948967 - 2 * (((v105 ^ 0x3BE10E36) - 1689407163 - 33686018 * LODWORD(STACK[0x2278])) & 0x509E59B ^ ((v105 ^ 0x3BE10E36) - 1689407163) & 2)) ^ 0x8509E599) + (v105 ^ 0x3BE10E36);
  v133 = (v131 ^ (v105 << 8) ^ 0xE10E3600 ^ v132) - 2 * ((v131 ^ (v105 << 8) ^ 0xE10E3600 ^ v132) & 0x7ABD608F ^ v132 & 6);
  v134 = (LODWORD(STACK[0x2240]) ^ LODWORD(STACK[0x2230])) - 2062948967 - 2 * ((LODWORD(STACK[0x2240]) ^ LODWORD(STACK[0x2230])) & STACK[0x21D8] ^ (LODWORD(STACK[0x2240]) + 24) & 4);
  v135 = (((LODWORD(STACK[0x22A0]) >> 8) & 7 ^ 5) - 2062948967 - 2 * (((LODWORD(STACK[0x22A0]) >> 8) & 7 ^ 5) & 1)) ^ (((32 * v62) ^ 0xA13CB320) - 2062948967 - ((2 * ((32 * v62) ^ 0xA13CB320)) & 0xA13CB00)) ^ (LODWORD(STACK[0x21C0]) - 541830608) ^ 0x5ABDB7A9 ^ LODWORD(STACK[0x21B8]);
  v136 = LODWORD(STACK[0x2250]) + LODWORD(STACK[0x21F0]) - 723670407 + LODWORD(STACK[0x21E0]);
  LODWORD(STACK[0x2240]) = v136 - ((2 * v136) & 0xBF68A460);
  v137 = ((v85 ^ v80) >> 7) ^ ((v85 + LODWORD(STACK[0x2238])) << 8) ^ LODWORD(STACK[0x2228]) ^ 0x10A12CB ^ v134;
  v138 = v80 ^ (v80 << 8) ^ (v137 - 2062948967 - ((2 * v137) & 0xA13CB32));
  v139 = LODWORD(STACK[0x21C8]) ^ v108;
  v140 = LODWORD(STACK[0x21D0]) - 87;
  v141 = STACK[0x21E8] + 2637;
  v142 = STACK[0x21E8] - 12;
  STACK[0x2250] = v141;
  LODWORD(STACK[0x2238]) = *(v141 + (v140 ^ 0xC7)) ^ v139;
  v143 = (v62 >> 1) ^ 0x4284F2CC;
  LODWORD(v141) = v62 ^ 0xF8D91949;
  v144 = (v62 ^ 0x7AF61A66) + v106 + ((((2 * v135) & 0xFBA1F9A0) - v135 - 2110848209) ^ v62 ^ 0xF8D91949) + 1;
  LODWORD(STACK[0x2230]) = v144 - ((2 * v144) & 0x37EE7CA6);
  v145 = v80 ^ v97 ^ v114;
  LODWORD(STACK[0x2228]) = v145;
  v146 = v109 - ((2 * v109) & 0x34);
  v147 = v143 - ((2 * v143) & 0x7BA1F9A0);
  v148 = STACK[0x2220];
  v149 = v116 ^ 0x2CFA84D;
  LODWORD(STACK[0x21E8]) = v119 ^ 0xC6213B1C;
  LODWORD(STACK[0x21E0]) = v119 ^ 0xC6213B1C ^ (v119 << 8) ^ v121 ^ v122 ^ 0x28DE85B0 ^ v126;
  v150 = STACK[0x22D0];
  v151 = *(*STACK[0x22E8] + (*STACK[0x22D0] & 0x38F3A374));
  LODWORD(STACK[0x2208]) = v129;
  LODWORD(STACK[0x2220]) = v129 + LODWORD(STACK[0x22C0]) + ~((2 * v129) & 0xA13CB32);
  v152 = v130;
  v153 = v148 ^ v141 ^ (v148 >> 1) ^ (v147 + 2110848208) ^ v130;
  LODWORD(STACK[0x21D0]) = v153;
  LODWORD(STACK[0x2140]) = v105;
  v154 = -812407749 * ((v151 ^ STACK[0x7F0]) & 0x7FFFFFFF);
  v155 = -812407749 * (v154 ^ HIWORD(v154));
  v156 = *STACK[0x7F0] ^ *(STACK[0x22C8] + (v155 >> 24)) ^ *(STACK[0x22E0] + (v155 >> 24)) ^ *((v155 >> 24) + STACK[0x22F0] + 2) ^ (v155 ^ (-109 * BYTE3(v155))) ^ 0xC2u;
  v157 = v142;
  STACK[0x1FF8] = v142;
  LOBYTE(v156) = *(v142 + 2921 + v156);
  v158 = v142 + 2921;
  LODWORD(STACK[0x21D8]) = v149 + (v105 ^ v152 ^ 0xC41EF1C9 ^ (v133 - 88252279));
  LOBYTE(v149) = v156 ^ 0x37 ^ (32 * v156 + 16 * ~v156 + 31);
  LOBYTE(v149) = *(STACK[0x22B8] + ((v149 - 87) ^ 0x60)) ^ (v149 - 2 * (v149 - 87) - 88) ^ 0xE1;
  v159 = v153 ^ 0xA;
  LOBYTE(v149) = v149 ^ ((v149 & (v153 ^ 0xA) & 0xFE) >> 1);
  v160 = v99;
  LODWORD(v156) = *(STACK[0x2158] + (((2 * ((v149 << v99) & 0x7F)) | (v149 << v99 >> 7) & 1) ^ 0xE3)) ^ 0xFF;
  v161 = -812407749 * ((v151 ^ STACK[0x1598]) & 0x7FFFFFFF);
  v162 = -812407749 * (v161 ^ HIWORD(v161));
  v163 = STACK[0x630];
  v164 = *(&off_279CA5FD0 + (STACK[0x21F8] - 2754)) - 8;
  v165 = *(&off_279CA5FD0 + (STACK[0x21F8] - 2811));
  v166 = *(&off_279CA5FD0 + (STACK[0x21F8] ^ 0xB5E)) - 4;
  v167 = STACK[0x2280];
  v168 = ((v149 & v138) >> STACK[0x2280]) | ((((v156 >> 1) | (v156 << 7)) ^ 0xBE) + 216);
  LOBYTE(v156) = *(v142 + 2921 + ((*(STACK[0x630] + 463) ^ v162 ^ (-71 * BYTE3(v162)) ^ v164[v162 >> 24] ^ *(v165 + (v162 >> 24)) ^ v166[v162 >> 24]) ^ 0x4Du));
  v169 = STACK[0x2290];
  LODWORD(v156) = (*(STACK[0x2290] + ((-75 * (v156 ^ 0x82 ^ (32 * v156 + 16 * ~v156 + 31))) ^ 0x31)) ^ 0x6C) + 125;
  LODWORD(v156) = v156 ^ ((v156 & (v153 ^ 0xA) & 0xFE) >> 1);
  v170 = (v146 - 102) ^ 0x9Au;
  LODWORD(v162) = STACK[0x2260];
  v171 = (v168 - ((2 * v168) & 0x33F27BEA) + 435764725) ^ LODWORD(STACK[0x2260]);
  STACK[0x21F0] = v157 + 1596;
  v172 = *(v157 + 1596 + ((((v138 & v156 & 0x80) != 0) | (2 * (v138 & v156))) ^ 0x3BLL));
  v173 = v145 ^ 0x98u;
  v174 = ((v171 ^ 0xF7) + ((2 * v171) & 0xEE) + 9) ^ ((v156 << v170) | (((v172 ^ (4 * v172)) + 88) >> (v145 ^ 0x98u)));
  *a24 = ~(2 * v174) + v174;
  v175 = STACK[0x22E8];
  v176 = *(*STACK[0x22E8] + (*v150 & 0x38F3A374));
  v177 = -812407749 * ((-812407749 * ((v176 ^ (v163 + 448)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v176 ^ (v163 + 448)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v177) = *(v158 + ((v163[448] ^ v164[v177 >> 24] ^ *(v165 + (v177 >> 24)) ^ v166[v177 >> 24] ^ (59 * ((59 * (v176 ^ (v163 - 64))) ^ ((-812407749 * ((v176 ^ (v163 + 448)) & 0x7FFFFFFFu)) >> 16))) ^ (-71 * ((-812407749 * ((-812407749 * ((v176 ^ (v163 + 448)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v176 ^ (v163 + 448)) & 0x7FFFFFFFu)) >> 16))) >> 24))) ^ 0xE0u));
  LODWORD(v177) = v177 ^ 0x4B ^ (32 * v177 + 16 * ~v177 + 31);
  v178 = STACK[0x2288];
  LOBYTE(v177) = (((((((v177 & (v153 ^ 0xA)) >> 4) | (16 * (v177 & (v153 ^ 0xA)))) & 0xEF ^ 0xA2) + ~*(STACK[0x2288] + ((((v177 & (v153 ^ 0xA)) >> 4) | (16 * (v177 & (v153 ^ 0xA)))) & 0xEFLL ^ 0xF5))) ^ 0x1D) + 96) ^ v177;
  LODWORD(v156) = v176 ^ (v163 + 464);
  LOBYTE(v152) = v167;
  v179 = (v177 << v160) | (((*(v169 + ((-75 * (v177 & v138)) ^ 0x31)) ^ 0x6C) + 125) >> v167);
  v180 = -812407749 * ((-812407749 * (v156 & 0x7FFFFFFF)) ^ ((-812407749 * (v156 & 0x7FFFFFFF)) >> 16));
  LODWORD(v180) = *(v158 + ((v163[464] ^ (59 * ((59 * v156) ^ ((-812407749 * (v156 & 0x7FFFFFFF)) >> 16))) ^ v164[v180 >> 24] ^ *(v165 + (v180 >> 24)) ^ v166[v180 >> 24] ^ (-71 * BYTE3(v180))) ^ 0x70u));
  LODWORD(v180) = v180 ^ (16 * ~v180) ^ (((v180 ^ (16 * ~v180)) & (v153 ^ 0xA) & 0xFE) >> 1);
  LOBYTE(v180) = *(STACK[0x22B8] + ((v180 - 87) ^ 0x60)) ^ (v180 - 2 * (v180 - 87) - 88) ^ 0xD9;
  LOBYTE(v179) = (*(STACK[0x22B8] + (((v180 << v170) - 87) ^ 0x60)) ^ (~(2 * ((v180 << v170) - 87)) + (v180 << v170) - 87) ^ 0xD9 | ((v180 & v138) >> v173)) ^ v179;
  LOBYTE(v179) = (v179 - ((2 * v179) & 0xEA) - 11) ^ v162;
  a42[3460] = ~(2 * v179) + v179;
  LODWORD(v156) = *(*v175 + (*v150 & 0x38F3A374));
  v181 = -812407749 * ((-812407749 * ((v156 ^ (v163 + 449)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v156 ^ (v163 + 449)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v180) = *(v158 + (v163[449] ^ v164[v181 >> 24] ^ *(v165 + (v181 >> 24)) ^ v166[v181 >> 24] ^ (59 * ((59 * (v156 ^ (v163 - 63))) ^ ((-812407749 * ((v156 ^ (v163 + 449)) & 0x7FFFFFFF)) >> 16))) ^ (-71 * ((-812407749 * ((-812407749 * ((v156 ^ (v163 + 449)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v156 ^ (v163 + 449)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ 0x5B));
  LODWORD(v180) = v180 ^ 0x16 ^ (32 * v180 + 16 * ~v180 + 31);
  LODWORD(v180) = v180 ^ ((v180 & (v153 ^ 0xA) & 0xFE) >> 1);
  STACK[0x2258] = v160;
  LODWORD(v180) = (v180 << v160) | ((v180 & v138) >> v167);
  v182 = -812407749 * ((-812407749 * ((v156 ^ (v163 + 465)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v156 ^ (v163 + 465)) & 0x7FFFFFFF)) >> 16));
  v183 = v169;
  LODWORD(v182) = *(v158 + (((*(v169 + ((-75 * (v164[v182 >> 24] ^ v163[465] ^ *(v165 + (v182 >> 24)) ^ v182 ^ v166[v182 >> 24] ^ (-71 * BYTE3(v182)))) ^ 0x31)) ^ 0x6C) + 125) ^ 0x2FLL));
  v184 = v158;
  STACK[0x22A0] = v158;
  LODWORD(v182) = v182 ^ 0xFFFFFFB5 ^ (32 * v182 + 16 * ~v182 + 31);
  v185 = v182 ^ ((v182 & v159 & 0xFE) >> 1);
  v186 = v173;
  a42[3461] = ((v185 << v170) | ((*(v169 + ((-75 * ((v185 & v138) >> v173)) ^ 0x31)) ^ 0x6C) + 125)) ^ (((2 * v180) & 0xEA) - v180 + 10) ^ v162;
  v187 = *v150 & 0x38F3A374;
  v188 = *v175;
  v189 = *(*v175 + v187);
  v190 = -812407749 * ((-812407749 * ((v189 ^ (v163 + 450)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v189 ^ (v163 + 450)) & 0x7FFFFFFFu)) >> 16));
  LOBYTE(v135) = v164[v190 >> 24] ^ v163[450] ^ *(v165 + (v190 >> 24)) ^ v166[v190 >> 24] ^ (59 * ((59 * (v189 ^ (v163 - 62))) ^ ((-812407749 * ((v189 ^ (v163 + 450)) & 0x7FFFFFFFu)) >> 16))) ^ (-71 * ((-812407749 * ((-812407749 * ((v189 ^ (v163 + 450)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v189 ^ (v163 + 450)) & 0x7FFFFFFFu)) >> 16))) >> 24));
  v191 = STACK[0x22A8];
  LOBYTE(v135) = *(v184 + (((*(STACK[0x22A8] + ((-75 * v135) ^ 0x52)) ^ (75 * v135 - 1) ^ 0xC4) + 125) ^ 0xD7));
  LOBYTE(v135) = v135 ^ 0x9D ^ (32 * v135 + 16 * ~v135 + 31);
  v192 = *(STACK[0x21F0] + ((((v135 & 0x80) != 0) | (2 * v135)) ^ 0x3BLL));
  LODWORD(v181) = (((4 * ~v192) & 0x14 ^ (v192 ^ 0x6C) & 0x16 | (v192 ^ 0x6C) & 0xFFFFFFE9 ^ (4 * ~v192) & 0xFFFFFFE8) ^ 0x10) - 40;
  LODWORD(v181) = v181 ^ ((v181 & v159 & 0xFE) >> 1);
  v193 = v189 ^ (v163 + 466);
  LODWORD(v181) = (v181 << v160) | ((v181 & v138) >> v152);
  v194 = (v181 >> 3) & 0xFFFFFF1F | (32 * (v181 & 7));
  LOBYTE(v181) = (v194 ^ 0xA2) + ~*(v178 + (v194 ^ 0xF5));
  v195 = -812407749 * ((-812407749 * (v193 & 0x7FFFFFFF)) ^ ((-812407749 * (v193 & 0x7FFFFFFFu)) >> 16));
  LODWORD(v173) = v164[v195 >> 24];
  LODWORD(v160) = *(v165 + (v195 >> 24));
  LODWORD(v169) = -71 * (v195 >> 24);
  LODWORD(v194) = v166[v195 >> 24];
  LODWORD(v178) = v163[466];
  v196 = v195 ^ v178 ^ v173 ^ v160 ^ (-71 * BYTE3(v195)) ^ v194 ^ 0xF2;
  LODWORD(v195) = v178 ^ v173 ^ v160 ^ v194 ^ v195;
  v197 = STACK[0x1FF8] + 1867;
  LODWORD(v195) = v195 ^ v169 ^ 0xFFFFFFC4 ^ *(v197 + v196);
  LODWORD(v195) = v195 ^ ((v195 & v159 & 0xFE) >> 1);
  v198 = STACK[0x2158];
  LOBYTE(v194) = ~*(STACK[0x2158] + (((v195 << v170 >> 7) & 1 | (2 * ((v195 << v170) & 0x7F))) ^ 0xE3));
  v199 = v138;
  v200 = STACK[0x2268];
  LOBYTE(v195) = ((*(v183 + ((-75 * (((*(STACK[0x2268] + ((((v195 & v199) >> 3) | (32 * (v195 & v199))) ^ 0x5ALL)) ^ 0x20) + 96) >> v186)) ^ 0x31)) ^ 0x6C) + 125) | ((((v194 >> 1) | (v194 << 7)) ^ 0xBE) - 40);
  v201 = LODWORD(STACK[0x2298]) ^ 0x4F;
  LODWORD(STACK[0x21F8]) = v201;
  a42[3462] = v201 ^ ((v181 ^ 0x1D) + 96) ^ v195;
  LODWORD(v187) = -812407749 * ((*(v188 + v187) ^ (v163 + 451)) & 0x7FFFFFFF);
  v202 = -812407749 * (v187 ^ WORD1(v187));
  LODWORD(v202) = v163[451] ^ v164[v202 >> 24] ^ *(v165 + (v202 >> 24)) ^ v166[v202 >> 24] ^ v202 ^ (-71 * (v202 >> 24)) ^ 0xFFFFFFE1;
  v203 = v191;
  LOBYTE(v202) = *(v191 + ((-75 * v202) ^ 0x52)) ^ (75 * v202 - 1) ^ 0xC4;
  v204 = STACK[0x22D0];
  v205 = STACK[0x22E8];
  LODWORD(v195) = *(*STACK[0x22E8] + (*STACK[0x22D0] & 0x38F3A374)) ^ (v163 + 467);
  STACK[0x2278] = v197;
  LOBYTE(v188) = *(v197 + ((v202 + 125) ^ 0x70)) ^ (v202 - 2 * (v202 + 125) + 124) ^ 0xC1;
  v206 = STACK[0x2280];
  v207 = STACK[0x2258];
  v208 = -812407749 * ((-812407749 * (v195 & 0x7FFFFFFF)) ^ ((-812407749 * (v195 & 0x7FFFFFFF)) >> 16));
  LODWORD(v208) = v164[v208 >> 24] ^ v163[467] ^ *(v165 + (v208 >> 24)) ^ v166[v208 >> 24] ^ v208 ^ (-71 * (v208 >> 24));
  LOBYTE(v208) = v208 ^ *(v197 + (v208 ^ 0x1Cu));
  v209 = STACK[0x21D0];
  LODWORD(STACK[0x2218]) = LODWORD(STACK[0x21D0]) ^ 0xCBDEEC3A;
  LOBYTE(v208) = ~*(v198 + ((((v208 & 0x80) != 0) | (2 * (v208 ^ 0x20))) ^ 0xE3));
  LOBYTE(v209) = ((((v208 >> 1) | (v208 << 7)) ^ 0xBE) - 40) ^ (v209 & 0xB6 ^ 2 | v209 & 0xB6 ^ 0xB4);
  LOBYTE(v209) = (*(v200 + (((v209 >> 3) | (32 * v209)) ^ 0x5ALL)) ^ 0x20) + 96;
  v210 = ((((v188 ^ ((v188 & v159 & 0xFE) >> 1)) & v199) >> v206) | ((v188 ^ ((v188 & v159 & 0xFE) >> 1)) << v207)) ^ ((((v209 ^ ((v209 & v159 & 0xFE) >> 1)) & v199) >> v186) | ((v209 ^ ((v209 & v159 & 0xFE) >> 1)) << v170));
  LODWORD(v188) = STACK[0x2260];
  LOBYTE(v210) = (v210 - ((2 * v210) & 0xEA) - 11) ^ LODWORD(STACK[0x2260]);
  a42[3463] = ~(2 * v210) + v210;
  v211 = *(*v205 + (*v204 & 0x38F3A374));
  v212 = -812407749 * ((-812407749 * ((v211 ^ (v163 + 452)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v211 ^ (v163 + 452)) & 0x7FFFFFFFu)) >> 16));
  v213 = v165;
  LOBYTE(v184) = *(v165 + (v212 >> 24));
  v214 = v166;
  v215 = *(STACK[0x22A0] + (v163[452] ^ v164[v212 >> 24] ^ v184 ^ v166[v212 >> 24] ^ (59 * ((59 * (v211 ^ (v163 - 60))) ^ ((-812407749 * ((v211 ^ (v163 + 452)) & 0x7FFFFFFFu)) >> 16))) ^ (-71 * ((-812407749 * ((-812407749 * ((v211 ^ (v163 + 452)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v211 ^ (v163 + 452)) & 0x7FFFFFFFu)) >> 16))) >> 24)) ^ 0xA9));
  v216 = v215 ^ 0xFFFFFF95 ^ (32 * v215 + 16 * ~v215 + 31);
  LODWORD(v173) = v216 ^ ((v216 & v159 & 0xFE) >> 1);
  v217 = -812407749 * ((-812407749 * ((v211 ^ (v163 + 468)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v211 ^ (v163 + 468)) & 0x7FFFFFFFu)) >> 16));
  v218 = v217 >> 24;
  v219 = ((((v173 & v199) >> (((v202 + 125) | (2 - v202)) & 7)) ^ (2 * (v173 & v199))) - 2 * ((((v173 & v199) >> (((v202 + 125) | (2 - v202)) & 7)) ^ (2 * (v173 & v199))) & 0x82) + 130) ^ 0xB9;
  LODWORD(v202) = *(v213 + (v217 >> 24));
  v220 = v213;
  v221 = v214;
  LODWORD(v217) = v217 ^ v164[v217 >> 24] ^ v202 ^ v214[v217 >> 24] ^ v163[468];
  HIDWORD(v222) = v217 ^ (57 * v218);
  LODWORD(v222) = (v217 ^ (-71 * v218)) << 24;
  v223 = STACK[0x21F0];
  LODWORD(v219) = (v173 << v207) | (((*(v223 + v219) ^ (4 * *(v223 + v219))) + 88) >> v206);
  LODWORD(v217) = ~*(v198 + ((v222 >> 31) ^ 0xE3));
  LODWORD(v217) = ((((v217 >> 1) | (v217 << 7)) ^ 0xFFFFFFBE) - 40) ^ 0x3E;
  LODWORD(v217) = *(v203 + ((-75 * v217) ^ 0x52)) ^ (-181 * v217 - 1) ^ 0xFFFFFFC4;
  v224 = STACK[0x2278];
  LODWORD(v217) = *(STACK[0x2278] + ((v217 + 125) ^ 0x70)) ^ (v217 - 2 * (v217 + 125) + 124) ^ 0xFFFFFFC8;
  v225 = v217 ^ ((((*(STACK[0x2290] + ((-75 * (v217 & v159)) ^ 0x31)) ^ 0x6C) + 125) & 0xFE) >> 1);
  LOBYTE(v205) = v188;
  a42[3464] = ((v225 << v170) | ((*(v200 + (((((v225 & v199) >> v186) >> 3) & 0xFFFFFF1F | (32 * (((v225 & v199) >> v186) & 7))) ^ 0x5ALL)) ^ 0x20) + 96)) ^ (((2 * v219) & 0xEA) - v219 + 10) ^ v188;
  v226 = STACK[0x22D0];
  v227 = STACK[0x22E8];
  LODWORD(v225) = *(*STACK[0x22E8] + (*STACK[0x22D0] & 0x38F3A374));
  LODWORD(STACK[0x21E0]) += LODWORD(STACK[0x21D8]);
  v228 = -812407749 * ((-812407749 * ((v225 ^ (v163 + 453)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v225 ^ (v163 + 453)) & 0x7FFFFFFF)) >> 16));
  v229 = v220;
  LODWORD(v228) = v164[v228 >> 24] ^ v163[453] ^ *(v220 + (v228 >> 24)) ^ v221[v228 >> 24] ^ v228 ^ (-71 * ((-812407749 * ((-812407749 * ((v225 ^ (v163 + 453)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v225 ^ (v163 + 453)) & 0x7FFFFFFF)) >> 16))) >> 24));
  LOBYTE(v228) = v228 ^ ~*(v224 + (v228 ^ 0x64u));
  LOBYTE(v228) = *(v223 + ((((v228 & 0x80) != 0) | (2 * v228)) ^ 0xCFLL));
  v230 = -812407749 * ((-812407749 * ((v225 ^ (v163 + 469)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v225 ^ (v163 + 469)) & 0x7FFFFFFF)) >> 16));
  v231 = v221;
  LOBYTE(v230) = v164[v230 >> 24] ^ v163[469] ^ *(v220 + (v230 >> 24)) ^ v230 ^ v221[v230 >> 24] ^ (-71 * BYTE3(v230));
  LOBYTE(v228) = (v228 ^ (8 * v228 + 4 * ~v228 + 7) ^ 0x83) - 40;
  LOBYTE(v230) = *(STACK[0x2250] + (((v230 ^ *(v224 + (v230 ^ 0x5Au)) ^ 0xC0) - 87) ^ 0xC7));
  LOBYTE(v230) = (((v159 & ~v230) >> 1) - (v159 & ~v230 | 1)) ^ v230;
  LODWORD(v220) = v199;
  LODWORD(v230) = ((((v228 ^ ((v228 & v159 & 0xFE) >> 1)) & v199) >> v206) | ((v228 ^ ((v228 & v159 & 0xFE) >> 1)) << v207)) ^ (((v230 & v199) >> v186) | (v230 << v170));
  LOBYTE(v230) = (v230 - ((2 * v230) & 0xEA) - 11) ^ v205;
  LOBYTE(v169) = v205;
  a42[3465] = ~(2 * v230) + v230;
  v232 = v227;
  LODWORD(v230) = *(*v227 + (*v226 & 0x38F3A374));
  v233 = -812407749 * ((-812407749 * ((v230 ^ (v163 + 454)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v230 ^ (v163 + 454)) & 0x7FFFFFFF)) >> 16));
  v234 = v164;
  LOBYTE(v218) = v164[v233 >> 24] ^ v163[454];
  v235 = v231;
  LOBYTE(v233) = v218 ^ *(v229 + (v233 >> 24)) ^ *(v231 + (v233 >> 24)) ^ (59 * ((59 * (v230 ^ (v163 - 58))) ^ ((-812407749 * ((v230 ^ (v163 + 454)) & 0x7FFFFFFF)) >> 16))) ^ (-71 * ((-812407749 * ((-812407749 * ((v230 ^ (v163 + 454)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v230 ^ (v163 + 454)) & 0x7FFFFFFF)) >> 16))) >> 24));
  LOBYTE(v233) = v233 ^ 0x6E ^ *(v224 + (v233 ^ 0xC7u));
  v236 = -812407749 * ((-812407749 * ((v230 ^ (v163 + 470)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v230 ^ (v163 + 470)) & 0x7FFFFFFF)) >> 16));
  v237 = v236 >> 24;
  LODWORD(v236) = *(v229 + (v236 >> 24)) ^ *(v234 + (v236 >> 24)) ^ v236 ^ *(v231 + (v236 >> 24)) ^ v163[470];
  HIDWORD(v222) = v236 ^ v237;
  LODWORD(v222) = (v236 ^ (-71 * v237)) << 24;
  v238 = STACK[0x22A0];
  LOBYTE(v236) = *(STACK[0x22A0] + ((((((v222 >> 27) ^ 0xA2) + ~*(STACK[0x2288] + ((v222 >> 27) ^ 0xF5))) ^ 0x1D) + 96) ^ 0x4DLL));
  LOBYTE(v236) = v236 ^ 0x82 ^ (32 * v236 + 16 * ~v236 + 31);
  LODWORD(v236) = ((((v236 ^ ((v236 & v159 & 0xFE) >> 1)) & v220) >> v186) | ((v236 ^ ((v236 & v159 & 0xFE) >> 1)) << v170)) ^ ((((v233 ^ ((v233 & v159 & 0xFE) >> 1)) & v220) >> v206) | ((v233 ^ ((v233 & v159 & 0xFE) >> 1)) << v207));
  LOBYTE(v236) = (v236 - ((2 * v236) & 0xEA) - 11) ^ v169;
  a42[3466] = ~(2 * v236) + v236;
  LODWORD(v236) = *(*v227 + (*v226 & 0x38F3A374));
  LODWORD(STACK[0x2000]) = LODWORD(STACK[0x21E0]) - 2062948966 - ((2 * (LODWORD(STACK[0x21E0]) + 1)) & 0xA13CB32);
  v239 = -812407749 * ((-812407749 * ((v236 ^ (v163 + 455)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v236 ^ (v163 + 455)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v239) = *(v234 + (v239 >> 24)) ^ v163[455] ^ *(v229 + (v239 >> 24)) ^ *(v231 + (v239 >> 24)) ^ v239 ^ (-71 * ((-812407749 * ((-812407749 * ((v236 ^ (v163 + 455)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v236 ^ (v163 + 455)) & 0x7FFFFFFF)) >> 16))) >> 24));
  LODWORD(v239) = *(v224 + (v239 ^ 0x18)) ^ v239 ^ 0xFFFFFFB8;
  LODWORD(v239) = v239 ^ ((v239 & v159 & 0xFE) >> 1);
  LODWORD(v239) = ((v239 & v199) >> v206) | (v239 << v207);
  v240 = -812407749 * ((-812407749 * ((v236 ^ (v163 + 471)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v236 ^ (v163 + 471)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v239) = ~*(STACK[0x2158] + ((((v239 & 0x80) != 0) | (2 * v239)) ^ 0xE3));
  LODWORD(v240) = *(v238 + (v163[471] ^ *(v234 + (v240 >> 24)) ^ *(v229 + (v240 >> 24)) ^ v240 ^ *(v231 + (v240 >> 24)) ^ (-71 * BYTE3(v240)) ^ 0x2C));
  LODWORD(v240) = v240 ^ 0xFFFFFFB3 ^ (32 * v240 + 16 * ~v240 + 31);
  v241 = v240 ^ ((v240 & v159 & 0xFE) >> 1);
  STACK[0x21B8] = v186;
  LODWORD(v239) = LODWORD(STACK[0x2298]) ^ (((v241 & v199) >> v186) | (v241 << v170)) ^ ((((v239 >> 1) | (v239 << 7)) ^ 0xBE) - 40);
  v242 = STACK[0x2268];
  LOBYTE(v241) = *(STACK[0x2268] + ((((v239 ^ 0xB0) >> 3) & 0x1F | (32 * (v239 & 7))) ^ 0x5ALL));
  LODWORD(STACK[0x2210]) ^= 8 * LODWORD(STACK[0x2208]);
  a42[3467] = (v241 ^ 0xDF) - 96;
  LODWORD(v237) = *(*v227 + (*v226 & 0x38F3A374));
  v243 = -812407749 * ((-812407749 * ((v237 ^ (v163 + 456)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v237 ^ (v163 + 456)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v243) = *(v238 + (v163[456] ^ *(v234 + (v243 >> 24)) ^ *(v229 + (v243 >> 24)) ^ *(v231 + (v243 >> 24)) ^ ((59 * ((59 * (v237 ^ (v163 - 56))) ^ ((-812407749 * ((v237 ^ (v163 + 456)) & 0x7FFFFFFF)) >> 16))) ^ (-71 * ((-812407749 * ((-812407749 * ((v237 ^ (v163 + 456)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v237 ^ (v163 + 456)) & 0x7FFFFFFF)) >> 16))) >> 24))) ^ 0x85u));
  LOBYTE(v243) = v243 ^ 0x50 ^ (32 * v243 + 16 * ~v243 + 31);
  LODWORD(v243) = (v243 ^ ((v243 & v159 & 0xFE) >> 1));
  v244 = -812407749 * ((-812407749 * ((v237 ^ (v163 + 472)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v237 ^ (v163 + 472)) & 0x7FFFFFFF)) >> 16));
  v245 = v244 >> 24;
  LODWORD(v244) = *(v229 + (v244 >> 24)) ^ *(v234 + (v244 >> 24)) ^ v244 ^ *(v231 + (v244 >> 24)) ^ v163[472];
  HIDWORD(v222) = v244 ^ (57 * v245);
  LODWORD(v222) = (v244 ^ (-71 * v245)) << 24;
  LODWORD(v244) = *(STACK[0x21F0] + ((v222 >> 31) ^ 0x3BLL));
  LODWORD(v244) = v244 ^ (8 * v244 + 4 * ~v244 + 7) ^ 0xFFFFFF83;
  LODWORD(v244) = *(v224 + ((v244 - 40) ^ 0x8DLL)) ^ (v244 - 2 * (v244 - 40) - 41) ^ 3;
  v246 = v244 ^ ((v244 & v159 & 0xFE) >> 1);
  v247 = (-75 * ((v246 & v220) >> v186)) ^ 0x31;
  v248 = STACK[0x2290];
  LOBYTE(v247) = (*(STACK[0x2290] + v247) ^ 0x6C) + 125;
  STACK[0x22C0] = v170;
  LODWORD(v243) = ((v246 << v170) | v247) ^ (((v243 & v220) >> v206) | (v243 << v207));
  LOBYTE(v243) = (v243 - ((2 * v243) & 0xEA) - 11) ^ v169;
  a42[3468] = ~(2 * v243) + v243;
  LODWORD(v246) = *(*v227 + (*v226 & 0x38F3A374));
  v249 = -812407749 * ((-812407749 * ((v246 ^ (v163 + 457)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v246 ^ (v163 + 457)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v247) = *(v238 + (v163[457] ^ *(v234 + (v249 >> 24)) ^ *(v229 + (v249 >> 24)) ^ *(v231 + (v249 >> 24)) ^ ((59 * ((59 * (v246 ^ (v163 - 55))) ^ ((-812407749 * ((v246 ^ (v163 + 457)) & 0x7FFFFFFF)) >> 16))) ^ (-71 * ((-812407749 * ((-812407749 * ((v246 ^ (v163 + 457)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v246 ^ (v163 + 457)) & 0x7FFFFFFF)) >> 16))) >> 24))) ^ 0xA4u));
  LOBYTE(v247) = v247 ^ 0x37 ^ (32 * v247 + 16 * ~v247 + 31);
  LODWORD(v227) = v246 ^ (v163 + 473);
  LOBYTE(v231) = *(v242 + (((v247 >> 3) | (32 * v247)) ^ 0x5ALL));
  LOBYTE(v173) = ((v231 ^ 0x20) + 96) ^ 0x25;
  LODWORD(v246) = (v173 ^ ((v173 & v159 & 0xFE) >> 1));
  v250 = -812407749 * ((-812407749 * (v227 & 0x7FFFFFFF)) ^ ((-812407749 * (v227 & 0x7FFFFFFF)) >> 16));
  LODWORD(v250) = *(v234 + (v250 >> 24)) ^ v163[473] ^ v250 ^ *(v229 + (v250 >> 24)) ^ *(v235 + (v250 >> 24)) ^ (-71 * (v250 >> 24));
  LODWORD(v250) = v250 ^ 0xFFFFFFB1 ^ *(v224 + (v250 ^ 0xA8u));
  LODWORD(v250) = v250 ^ ((v250 & v159 & 0xFE) >> 1);
  LOBYTE(v250) = (((((v250 >> 3) | (32 * v250)) ^ 0xA2) + ~*(STACK[0x2288] + (((v250 >> 3) | (32 * v250)) ^ 0xF5))) ^ 0x1D) + 96;
  v251 = v250 << v170;
  v252 = STACK[0x22A8];
  v253 = STACK[0x21B8];
  a42[3469] = (((*(STACK[0x22A8] + ((-75 * v251) ^ 0x52)) ^ (~(106 * v251) - 75 * v251) ^ 0xC4) + 125) | (((*(v248 + ((-75 * (v250 & v220)) ^ 0x31)) ^ 0x6C) + 125) >> STACK[0x21B8])) ^ (-126 - (*(v248 + ((-75 * (((((v246 & v220) >> v206) | (v246 << v207)) - ((2 * (((v246 & v220) >> v206) | (v246 << v207))) & 0xEA) - 11) ^ v169)) ^ 0x31)) ^ 0x6C));
  v254 = *v226 & 0x38F3A374;
  v255 = *v232;
  LODWORD(v251) = *(*v232 + v254);
  v256 = -812407749 * ((-812407749 * ((v251 ^ (v163 + 458)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v251 ^ (v163 + 458)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v169) = v163[458];
  STACK[0x21C0] = v234;
  LOBYTE(v233) = v169 ^ *(v234 + (v256 >> 24));
  STACK[0x21C8] = v229;
  LOBYTE(v233) = *(v238 + (v233 ^ *(v229 + (v256 >> 24)) ^ *(v235 + (v256 >> 24)) ^ v256 ^ (-71 * BYTE3(v256)) ^ 0x25));
  LOBYTE(v233) = *(STACK[0x2250] + (((v233 ^ 0x37 ^ (~(32 * (v233 ^ (v173 - (v231 ^ 0xF5) + 15))) + 16 * (v233 ^ (v173 - (v231 ^ 0xF5) + 15)))) - 87) ^ 0xC7)) ^ 0xD6;
  LODWORD(v233) = *(STACK[0x22B8] + (((v233 ^ ((v233 & v159 & 0xFE) >> 1)) - 87) ^ 0x60)) ^ (86 - (v233 ^ ((v233 & v159 & 0xFE) >> 1))) ^ 0xD9;
  v257 = STACK[0x2258];
  v258 = -812407749 * ((-812407749 * ((v251 ^ (v163 + 474)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v251 ^ (v163 + 474)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v173) = v163[474];
  v259 = STACK[0x22C8];
  LOBYTE(v231) = v173 ^ *(v234 + (v258 >> 24)) ^ *(v229 + (v258 >> 24)) ^ *(v235 + (v258 >> 24)) ^ (59 * ((59 * (v251 ^ (v163 - 38))) ^ ((-812407749 * ((v251 ^ (v163 + 474)) & 0x7FFFFFFF)) >> 16))) ^ (-71 * ((-812407749 * ((-812407749 * ((v251 ^ (v163 + 474)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v251 ^ (v163 + 474)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ 0x47;
  v260 = STACK[0x22E0];
  v261 = STACK[0x22F0];
  v262 = STACK[0x2250];
  LODWORD(v258) = v173 ^ *(STACK[0x22C8] + (v258 >> 24)) ^ *(STACK[0x22E0] + (v258 >> 24)) ^ *((v258 >> 24) + STACK[0x22F0] + 2) ^ v258 ^ *(v224 + v231) ^ ~(-109 * (v258 >> 24));
  LOBYTE(v258) = ((v258 & 0x80) != 0) | (2 * v258);
  LODWORD(v233) = 181 * (((v233 & v220) >> v206) | (v233 << STACK[0x2258]));
  v263 = v252;
  v264 = STACK[0x21F0];
  LODWORD(v256) = *(STACK[0x21F0] + (v258 ^ 0x9FLL));
  v265 = ((v256 ^ (4 * v256)) + 88) ^ ((((v256 ^ (4 * v256)) + 88) & v159 & 0xFE) >> 1);
  LOBYTE(v231) = ~*(STACK[0x2158] + (((((v265 & v220) >> v253) >> 7) | (2 * ((v265 & v220) >> v253))) ^ 0xE3));
  v266 = STACK[0x22C0];
  a42[3470] = LODWORD(STACK[0x21F8]) ^ ((((v258 & 0xBE ^ 0x1A | v258 & 0xBE ^ 0xA4) ^ ((v231 >> 1) | (v231 << 7))) - 40) | (v265 << STACK[0x22C0])) ^ ((*(v252 + (v233 ^ 0x52)) ^ (~(2 * v233) + v233) ^ 0xC4) + 125);
  LODWORD(v252) = (*(v255 + v254) ^ (v163 + 459)) & 0x7FFFFFFF;
  v267 = -812407749 * ((-812407749 * v252) ^ ((-812407749 * v252) >> 16));
  v268 = v259;
  v269 = v260;
  LOBYTE(v267) = *(v259 + (v267 >> 24)) ^ v163[459] ^ *(v260 + (v267 >> 24)) ^ *((v267 >> 24) + v261 + 2) ^ v267 ^ (-109 * BYTE3(v267));
  v270 = STACK[0x22A0];
  LOBYTE(v267) = *(STACK[0x22A0] + (((*(v263 + ((-75 * v267) ^ 0x52)) ^ (75 * v267 - 1) ^ 0xC4) + 125) ^ 0xDFLL));
  LOBYTE(v254) = ((STACK[0x2298] & 0x70 ^ 0x30) + (STACK[0x2298] & 0x70 ^ 0x40)) ^ (16 * ~v267);
  LOBYTE(v267) = v267 ^ (~(2 * v254) + v254) ^ 0xF;
  LODWORD(v267) = (v267 ^ ((v267 & v159 & 0xFE) >> 1));
  LODWORD(v229) = v257;
  v271 = STACK[0x2280];
  v272 = STACK[0x22D0];
  v273 = STACK[0x22E8];
  LODWORD(v173) = STACK[0x2260];
  LODWORD(v267) = ((((v267 & v220) >> v271) | (v267 << v257)) - ((2 * (((v267 & v220) >> v271) | (v267 << v257))) & 0x7BEA) + 435764725) ^ LODWORD(STACK[0x2260]);
  v274 = (2 * (v267 & 0x7F)) | (v267 >> 7) & 1;
  LODWORD(v267) = -812407749 * ((*(*STACK[0x22E8] + (*STACK[0x22D0] & 0x38F3A374)) ^ (v163 + 475)) & 0x7FFFFFFF);
  v275 = -812407749 * (v267 ^ WORD1(v267));
  LOBYTE(v275) = *(v268 + (v275 >> 24)) ^ v163[475] ^ *(v269 + (v275 >> 24)) ^ *((v275 >> 24) + v261 + 2) ^ v275 ^ (-109 * BYTE3(v275));
  v276 = STACK[0x2278];
  v277 = STACK[0x2290];
  LODWORD(v275) = *(STACK[0x2290] + ((-75 * (v275 ^ *(STACK[0x2278] + (v275 ^ 0x5Eu)) ^ 0xEE)) ^ 0x31));
  LODWORD(v275) = ((2 * ~v275) & 0xFFFFFFFB ^ 0x22) + (v275 ^ 0x11);
  v278 = ((*(v263 + ((-75 * ((v275 & v159) >> 1)) ^ 0x52)) ^ (-181 * ((v275 & v159) >> 1) - 1) ^ 0xFFFFFFC4) + 125) ^ v275;
  a42[3471] = *(v262 + ((((((v278 & v220) >> v253) | (v278 << v266)) ^ ((*(v264 + (v274 ^ 0x3B)) ^ (8 * *(v264 + (v274 ^ 0x3B)) + 4 * ~*(v264 + (v274 ^ 0x3B)) + 7) ^ 0x83) - 40)) - 87) ^ 0xC7));
  v279 = v273;
  LODWORD(v278) = *(*v273 + (*v272 & 0x38F3A374));
  v280 = -812407749 * ((-812407749 * ((v278 ^ (v163 + 460)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v278 ^ (v163 + 460)) & 0x7FFFFFFF)) >> 16));
  v281 = STACK[0x21C0];
  LOBYTE(v280) = *(v270 + (*(v262 + (((*(STACK[0x21C0] + (v280 >> 24)) ^ v163[460] ^ *(STACK[0x21C8] + (v280 >> 24)) ^ *(v235 + (v280 >> 24)) ^ (59 * ((59 * (v278 ^ (v163 - 52))) ^ ((-812407749 * ((v278 ^ (v163 + 460)) & 0x7FFFFFFF)) >> 16))) ^ (-71 * ((-812407749 * ((-812407749 * ((v278 ^ (v163 + 460)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v278 ^ (v163 + 460)) & 0x7FFFFFFF)) >> 16))) >> 24))) - 87) ^ 0xC7)) ^ 0xBFLL));
  LOBYTE(v280) = v280 ^ 5 ^ (32 * v280 + 16 * ~v280 + 31);
  v282 = -812407749 * ((-812407749 * ((v278 ^ (v163 + 476)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v278 ^ (v163 + 476)) & 0x7FFFFFFF)) >> 16));
  v283 = STACK[0x21C8];
  LODWORD(v282) = v163[476] ^ v282 ^ *(STACK[0x21C0] + (v282 >> 24)) ^ *(STACK[0x21C8] + (v282 >> 24)) ^ *(v235 + (v282 >> 24)) ^ (-71 * (v282 >> 24)) ^ 0xFFFFFFEA;
  v284 = STACK[0x2288];
  LODWORD(v282) = ((((v282 >> 3) | (32 * v282)) ^ 0xFFFFFFA2) + ~*(STACK[0x2288] + (((v282 >> 3) | (32 * v282)) ^ 0xF5))) ^ 0x1D;
  LODWORD(v282) = *(v276 + ((v282 + 96) ^ 0x70)) ^ (-97 - v282) ^ 0x25;
  LODWORD(v282) = v282 ^ ((v282 & v159 & 0xFE) >> 1);
  LOBYTE(v282) = (((((v282 >> 3) | (32 * v282)) ^ 0xA2) + ~*(STACK[0x2288] + (((v282 >> 3) | (32 * v282)) ^ 0xF5))) ^ 0x1D) + 96;
  LODWORD(v282) = (((v282 & v220) >> v253) | (v282 << v266)) ^ ((((v280 ^ ((v280 & v159 & 0xFE) >> 1)) & v220) >> v271) | ((v280 ^ ((v280 & v159 & 0xFE) >> 1)) << v229));
  LOBYTE(v273) = v173;
  LOBYTE(v282) = (v282 - ((2 * v282) & 0xEA) - 11) ^ v173;
  a42[3472] = ~(2 * v282) + v282;
  v285 = v279;
  LODWORD(v280) = *(*v279 + (*v272 & 0x38F3A374));
  v286 = -812407749 * ((-812407749 * ((v280 ^ (v163 + 461)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v280 ^ (v163 + 461)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v274) = *(v270 + (v163[461] ^ *(v281 + (v286 >> 24)) ^ *(v283 + (v286 >> 24)) ^ *(v235 + (v286 >> 24)) ^ ((59 * ((59 * (v280 ^ (v163 - 51))) ^ ((-812407749 * ((v280 ^ (v163 + 461)) & 0x7FFFFFFF)) >> 16))) ^ (-71 * ((-812407749 * ((-812407749 * ((v280 ^ (v163 + 461)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v280 ^ (v163 + 461)) & 0x7FFFFFFF)) >> 16))) >> 24))) ^ 0x23u));
  LOBYTE(v274) = v274 ^ (~(2 * ((16 * ~v274) ^ 0x72)) + ((16 * ~v274) ^ 0x72)) ^ 0xF;
  v287 = -812407749 * ((-812407749 * ((v280 ^ (v163 + 477)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v280 ^ (v163 + 477)) & 0x7FFFFFFF)) >> 16));
  v288 = STACK[0x22C8];
  v289 = STACK[0x22F0];
  v290 = STACK[0x22E0];
  LODWORD(v274) = (v274 ^ (((((((((v274 & v159) >> 3) | (32 * (v274 & v159))) ^ 0xA2) + ~*(v284 + ((((v274 & v159) >> 3) | (32 * (v274 & v159))) ^ 0xF5))) ^ 0x1C) + 96) & 0xFE) >> 1));
  LOBYTE(v232) = *(v270 + (((*(v277 + ((-75 * (v163[477] ^ v287 ^ *(STACK[0x22C8] + (v287 >> 24)) ^ *(STACK[0x22E0] + (v287 >> 24)) ^ *((v287 >> 24) + STACK[0x22F0] + 2) ^ (-109 * BYTE3(v287)) ^ 0x8D)) ^ 0x31)) ^ 0x6C) + 125) ^ 0x7CLL));
  LODWORD(v287) = ((v274 & v220) >> v271) | (v274 << v229);
  LOBYTE(v274) = (32 * v232 + 16 * ~v232 + 31) ^ v232;
  v291 = STACK[0x2158];
  LODWORD(v274) = ~*(STACK[0x2158] + ((((v274 & 0x80) != 0) | (2 * v274)) ^ 0x8DLL));
  LODWORD(v274) = ((((v274 >> 1) | (v274 << 7)) ^ 0xFFFFFFBE) - 40) ^ 0xFFFFFFC4;
  LODWORD(v274) = v274 ^ ((v274 & v159 & 0xFE) >> 1);
  LOBYTE(v274) = *(STACK[0x22B8] + ((v274 - 87) ^ 0x60)) ^ (v274 - 2 * (v274 - 87) - 88) ^ 0xD9;
  LOBYTE(v287) = ~(*(STACK[0x2250] + (((v274 & 9 ^ 9) + (v274 & 9)) ^ 0xCE ^ ((((v274 & v220) >> v253) | (v274 << v266)) - 87))) ^ v287);
  LOBYTE(v287) = (v287 - ((2 * v287) & 0xEA) - 11) ^ v273;
  a42[3473] = ~(2 * v287) + v287;
  LODWORD(v287) = *(*v285 + (*v272 & 0x38F3A374));
  LODWORD(v272) = LODWORD(STACK[0x2210]) ^ LODWORD(STACK[0x2220]);
  v292 = -812407749 * ((-812407749 * ((v287 ^ (v163 + 462)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v287 ^ (v163 + 462)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v292) = *(v281 + (v292 >> 24)) ^ v163[462] ^ *(v283 + (v292 >> 24)) ^ *(v235 + (v292 >> 24)) ^ v292 ^ (-71 * ((-812407749 * ((-812407749 * ((v287 ^ (v163 + 462)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v287 ^ (v163 + 462)) & 0x7FFFFFFF)) >> 16))) >> 24));
  LOBYTE(v292) = v292 ^ ~*(STACK[0x2278] + (v292 ^ 0x65u));
  v293 = STACK[0x21F0];
  LOBYTE(v292) = *(STACK[0x21F0] + ((((v292 & 0x80) != 0) | (2 * v292)) ^ 0x53));
  LOBYTE(v292) = (v292 ^ (8 * v292 + 4 * ~v292 + 7) ^ 0x83) - 40;
  LODWORD(STACK[0x1FA8]) = v229 ^ 0x93D27FA9;
  LODWORD(STACK[0x1FB0]) = v271 ^ 0x9779FBEF;
  LODWORD(v292) = ((*(STACK[0x2268] + ((((((v292 & v159) >> 1) ^ v292) >> 3) | (32 * (((v292 & v159) >> 1) ^ v292))) ^ ((((v292 & v159) >> 1) & 0x2C ^ 0xAC) + (((v292 & v159) >> 1) & 0x2C)) ^ 0xF6)) ^ 0x20) + 96);
  v294 = -812407749 * ((-812407749 * ((v287 ^ (v163 + 478)) & 0x7FFFFFFF)) ^ ((-812407749 * ((v287 ^ (v163 + 478)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v294) = *(v270 + ((v163[478] ^ v294 ^ *(v288 + (v294 >> 24)) ^ *(v290 + (v294 >> 24)) ^ (-109 * BYTE3(v294)) ^ *((v294 >> 24) + v289 + 2)) ^ 0x10u));
  LODWORD(v294) = v294 ^ (32 * v294 + 16 * ~v294 + 31) ^ 0xFFFFFF81;
  v295 = v294 ^ ((v294 & v159 & 0xFE) >> 1);
  LODWORD(STACK[0x22E0]) = v220 ^ 0x8CEC7C99;
  a42[3474] = (((v295 & v220) >> v253) | (v295 << v266)) ^ v273 ^ (((2 * (((v292 & v220) >> v271) | (v292 << v229))) & 0xEA) - (((v292 & v220) >> v271) | (v292 << v229)) + 10);
  LODWORD(v286) = a24[(~*(v291 + (((((35 - a42[3464]) & 0x80) != 0) | (2 * (35 - a42[3464]))) ^ 0xE3)) >> 1) & 0xF ^ 6];
  LODWORD(STACK[0x21D0]) = LODWORD(STACK[0x2248]) ^ (8 * LODWORD(STACK[0x2248])) ^ 0x5EE47CB5 ^ (v272 - 2062948967 - ((2 * v272) & 0xA13CB32));
  LOBYTE(v272) = *(v293 + (((((119 - v286) & 0x80) != 0) | (2 * (119 - v286))) ^ 0x3BLL));
  LOBYTE(v272) = 8 - a24[(3 - a24[((8 * v272 + 4 * ~v272 - 1) ^ v272) & 0xF ^ 3]) & 0xF];
  LODWORD(v286) = LODWORD(STACK[0x2230]) - 1678295469;
  LODWORD(STACK[0x1CE8]) = (LOBYTE(STACK[0x2230]) + 83) & 0x18 ^ 8 | (LOBYTE(STACK[0x2230]) + 83) & 0x18 ^ 0x10;
  v296 = v286 ^ 0x9BF73E53;
  LODWORD(STACK[0x1CE4]) = v286 ^ 0x83E72643;
  LODWORD(STACK[0x1E40]) = v286 ^ 0x9BF33A53;
  LODWORD(STACK[0x1D58]) = v286 ^ 0x13B73613;
  LODWORD(STACK[0x1C90]) = v286 ^ 0xBE72E43;
  LODWORD(STACK[0x1C88]) = v286 ^ 0x19951C11;
  LODWORD(STACK[0x22C8]) = LODWORD(STACK[0x2240]) - 541830608;
  LODWORD(STACK[0x22F0]) = LODWORD(STACK[0x2238]) ^ 0xBAD12783;
  LODWORD(STACK[0x2040]) = LODWORD(STACK[0x2228]) ^ 1;
  v297 = STACK[0x1210];
  STACK[0x1C00] = STACK[0x1210] + 327;
  STACK[0x1BF8] = v297 + 419;
  STACK[0x1BF0] = (a60 - 60293);
  STACK[0x2280] = v296;
  STACK[0x1BE8] = v296 << v266;
  STACK[0x1C50] = a25 + 2849;
  STACK[0x1C58] = a25 + 2848;
  STACK[0x1C10] = a25 + 2853;
  STACK[0x1C68] = a25 + 2857;
  STACK[0x1D08] = a25 + 2856;
  STACK[0x1C08] = a25 + 2845;
  STACK[0x1C48] = a25 + 2854;
  STACK[0x1C38] = a25 + 2847;
  STACK[0x1C70] = a25 + 2850;
  STACK[0x1C18] = a25 + 2846;
  STACK[0x1C28] = a25 + 2852;
  STACK[0x1C20] = a25 + 2858;
  STACK[0x1C60] = a25 + 2851;
  STACK[0x1C30] = a25 + 2855;
  STACK[0x1C40] = a25 + 2859;
  LODWORD(STACK[0x1FB8]) = -STACK[0x6C0];
  LODWORD(STACK[0x2208]) = -514129454;
  LODWORD(STACK[0x2248]) = -2122533581;
  LODWORD(STACK[0x2258]) = 963780751;
  LODWORD(v297) = LODWORD(STACK[0x1D40]) ^ 0x16B;
  LODWORD(STACK[0x22A0]) = v272 & 0xF;
  v298 = STACK[0x22F8];
  LODWORD(v295) = STACK[0x1F58];
  LODWORD(v163) = -812407749 * ((*(*STACK[0x22E8] + (*STACK[0x22D0] & 0x1F9D3120)) ^ a60) & (((v297 - 661311877) & 0x276AD15D) + 2147483314));
  v299 = -812407749 * (v163 ^ (v163 >> 16));
  *a60 = ~*a24 ^ *(*(&off_279CA5FD0 + v297 - 336) + (v299 >> 24) - 12) ^ *(*(&off_279CA5FD0 + (v297 ^ 0x169)) + (v299 >> 24)) ^ *(*(&off_279CA5FD0 + v297 - 167) + (v299 >> 24) - 4) ^ v299 ^ (51 * BYTE3(v299)) ^ 0xD2;
  LODWORD(STACK[0x20A8]) = 84534681;
  return (*(v298 + 8 * ((714 * ((((v295 ^ 0x8509E599) - 2062948967 - ((2 * (v295 ^ 0x8509E599)) & 0xA13CB32)) ^ 0x8509E599) < LODWORD(STACK[0x22A0]))) ^ v297)))(v298);
}

uint64_t sub_26AA6EAC0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X3>, int a5@<W5>, uint64_t a6@<X6>, _DWORD *a7@<X7>, unsigned int a8@<W8>)
{
  v14 = v10 ^ a2;
  v15 = (~(2 * (119 * (v10 ^ a2) - 87)) + 119 * (v10 ^ a2) - 87) ^ *(STACK[0x22B8] + ((a8 + 260) ^ 0x231 ^ (119 * (v10 ^ a2) - 87)));
  v16 = -812407749 * ((*(*v8 + (*a7 & a3)) ^ (v12 + v14)) & 0x7FFFFFFF);
  v17 = -812407749 * (v16 ^ HIWORD(v16));
  *(v12 + v14) = *(v11 + v14) ^ *(v9 + (v17 >> 24)) ^ *(a6 + (v17 >> 24)) ^ (~(2 * v15) + v15) ^ *(a4 + (v17 >> 24)) ^ v17 ^ (BYTE3(v17) * v13) ^ 0xB;
  return (*(a1 + 8 * ((57 * (((a2 + v14 - ((2 * v14 + 2) & a5) + 1) ^ (a2 - 9)) < 0x10)) ^ a8)))();
}

uint64_t sub_26AA6EC08(uint64_t a1, int a2, uint64_t a3, unint64_t a4, int a5, int a6, unint64_t a7, _DWORD *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, _DWORD *a49)
{
  STACK[0x1D30] = a4;
  STACK[0x1C78] = a7;
  STACK[0x1C80] = v51;
  LODWORD(STACK[0x1ED0]) = 0;
  v53 = (a5 ^ 0x24E98D24) + ((a5 ^ 0x24E98D24u) >> 12) - (((a5 ^ 0x24E98D24) + ((a5 ^ 0x24E98D24u) >> 12)) >> 7);
  v54 = 2 * (v52 ^ 0x357);
  LODWORD(STACK[0x2298]) = v54;
  LODWORD(STACK[0x2188]) = v53 ^ v54 ^ 0xF2CDE8EC;
  LODWORD(STACK[0x2180]) = (v53 + a2 - (a6 & (2 * v53))) ^ v50;
  v55 = STACK[0x18D0];
  v56 = *STACK[0x18D0];
  v57 = STACK[0x1758];
  v58 = *STACK[0x1758];
  v59 = *(*v49 + (*a8 & 0xD8A680B0));
  v60 = (-812407749 * ((v59 ^ STACK[0x1908]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1908]) & 0x7FFFFFFF)) >> 16);
  v61 = -812407749 * v60;
  v62 = (-812407749 * v60) >> 24;
  v63 = -1539637248 * v60;
  v64 = *(&off_279CA5FD0 + (v52 ^ 0x220u));
  v65 = *(&off_279CA5FD0 + (v52 ^ 0x26Cu)) - 8;
  v66 = *(&off_279CA5FD0 + (v52 ^ 0x298u)) - 8;
  LODWORD(STACK[0x2238]) = *(v64 + 4 * v62) ^ *STACK[0x1908] ^ *&v65[4 * v62] ^ *&v66[4 * v62 + 28] ^ v63 ^ v61 ^ (-451290709 * v62);
  v67 = (-812407749 * ((v59 ^ v57) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ v57) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2240]) = (-1539637248 * v67) ^ v58 ^ (-812407749 * v67) ^ *(v64 + 4 * ((-812407749 * v67) >> 24)) ^ *&v65[4 * ((-812407749 * v67) >> 24)] ^ (-451290709 * ((-812407749 * v67) >> 24)) ^ *&v66[4 * ((-812407749 * v67) >> 24) + 28];
  v68 = (-812407749 * ((v59 ^ v55) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ v55) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x22A0]) = (-1539637248 * v68) ^ v56 ^ (-812407749 * v68) ^ (-451290709 * ((-812407749 * v68) >> 24)) ^ *(v64 + 4 * ((-812407749 * v68) >> 24)) ^ *&v65[4 * ((-812407749 * v68) >> 24)] ^ *&v66[4 * ((-812407749 * v68) >> 24) + 28];
  v69 = STACK[0x16D0];
  v70 = *STACK[0x16D0];
  v71 = (-812407749 * ((v59 ^ STACK[0x1700]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1700]) & 0x7FFFFFFF)) >> 16);
  v72 = *(&off_279CA5FD0 + v52 - 525) - 12;
  v73 = *(&off_279CA5FD0 + (v52 ^ 0x23Fu)) - 8;
  v74 = *(&off_279CA5FD0 + v52 - 551) - 12;
  LODWORD(STACK[0x21B8]) = (-812407749 * v71) ^ (-1539637248 * v71) ^ *STACK[0x1700] ^ (566113201 * ((-812407749 * v71) >> 24)) ^ *&v72[4 * ((-812407749 * v71) >> 24)] ^ *&v73[4 * ((-812407749 * v71) >> 24) + 4] ^ *&v74[4 * ((-812407749 * v71) >> 24)];
  v75 = (-812407749 * ((v59 ^ STACK[0x1748]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1748]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2278]) = *&v72[4 * ((-812407749 * v75) >> 24)] ^ *STACK[0x1748] ^ *&v73[4 * ((-812407749 * v75) >> 24) + 4] ^ *&v74[4 * ((-812407749 * v75) >> 24)] ^ (-1539637248 * v75) ^ (-812407749 * v75) ^ (566113201 * ((-812407749 * v75) >> 24));
  v76 = STACK[0x1878];
  v77 = *STACK[0x1878];
  v78 = (-812407749 * ((v59 ^ STACK[0x18F0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x18F0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x21D8]) = *&v72[4 * ((-812407749 * v78) >> 24)] ^ *STACK[0x18F0] ^ (-1539637248 * v78) ^ (-812407749 * v78) ^ *&v73[4 * ((-812407749 * v78) >> 24) + 4] ^ *&v74[4 * ((-812407749 * v78) >> 24)] ^ (566113201 * ((-812407749 * v78) >> 24));
  v79 = STACK[0x1770];
  v80 = *STACK[0x1770];
  v81 = (-812407749 * ((v59 ^ v69) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ v69) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2230]) = (-1539637248 * v81) ^ v70 ^ (-812407749 * v81) ^ (566113201 * ((-812407749 * v81) >> 24)) ^ *&v72[4 * ((-812407749 * v81) >> 24)] ^ *&v73[4 * ((-812407749 * v81) >> 24) + 4] ^ *&v74[4 * ((-812407749 * v81) >> 24)];
  v82 = (-812407749 * ((v59 ^ v76) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ v76) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x21E0]) = (-1539637248 * v82) ^ v77 ^ (-812407749 * v82) ^ (566113201 * ((-812407749 * v82) >> 24)) ^ *&v72[4 * ((-812407749 * v82) >> 24)] ^ *&v73[4 * ((-812407749 * v82) >> 24) + 4] ^ *&v74[4 * ((-812407749 * v82) >> 24)];
  v83 = (-812407749 * ((v59 ^ v79) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ v79) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2228]) = *&v72[4 * ((-812407749 * v83) >> 24)] ^ v80 ^ *&v73[4 * ((-812407749 * v83) >> 24) + 4] ^ *&v74[4 * ((-812407749 * v83) >> 24)] ^ (-1539637248 * v83) ^ (-812407749 * v83) ^ (566113201 * ((-812407749 * v83) >> 24));
  v84 = (-812407749 * ((v59 ^ STACK[0x1720]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1720]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x21F8]) = *&v72[4 * ((-812407749 * v84) >> 24)] ^ *STACK[0x1720] ^ *&v73[4 * ((-812407749 * v84) >> 24) + 4] ^ (-1539637248 * v84) ^ (-812407749 * v84) ^ *&v74[4 * ((-812407749 * v84) >> 24)] ^ (566113201 * ((-812407749 * v84) >> 24));
  v85 = (-812407749 * ((v59 ^ STACK[0x17E0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x17E0]) & 0x7FFFFFFF)) >> 16);
  v86 = (-812407749 * v85) >> 24;
  v87 = *(&off_279CA5FD0 + v52 - 454) - 8;
  v88 = *(&off_279CA5FD0 + (v52 ^ 0x279u)) - 8;
  v89 = (-812407749 * v85) ^ (-1539637248 * v85) ^ *STACK[0x17E0];
  v90 = *(&off_279CA5FD0 + (v52 ^ 0x295u)) - 4;
  LODWORD(STACK[0x21C8]) = v89 ^ (595445781 * v86) ^ *&v87[4 * v86] ^ *&v88[4 * v86] ^ *&v90[4 * v86];
  v91 = (-812407749 * ((v59 ^ STACK[0x1690]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1690]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2210]) = (-812407749 * v91) ^ (-1539637248 * v91) ^ *STACK[0x1690] ^ (595445781 * ((-812407749 * v91) >> 24)) ^ *&v87[4 * ((-812407749 * v91) >> 24)] ^ *&v88[4 * ((-812407749 * v91) >> 24)] ^ *&v90[4 * ((-812407749 * v91) >> 24)];
  v92 = (-812407749 * ((v59 ^ STACK[0x1800]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1800]) & 0x7FFFFFFF)) >> 16);
  v93 = (-812407749 * v92) >> 24;
  LODWORD(v72) = *&v72[4 * v93] ^ *STACK[0x1800] ^ *&v73[4 * v93 + 4];
  v94 = STACK[0x15F0];
  LODWORD(v73) = *STACK[0x15F0];
  LODWORD(STACK[0x2220]) = v72 ^ *&v74[4 * v93] ^ (-1539637248 * v92) ^ (-812407749 * v92) ^ (566113201 * v93);
  v95 = (-812407749 * ((v59 ^ v94) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ v94) & 0x7FFFFFFF)) >> 16);
  v96 = STACK[0x1668];
  v97 = *STACK[0x1668];
  LODWORD(STACK[0x21A8]) = *&v87[4 * ((-812407749 * v95) >> 24)] ^ v73 ^ *&v88[4 * ((-812407749 * v95) >> 24)] ^ (-1539637248 * v95) ^ (-812407749 * v95) ^ *&v90[4 * ((-812407749 * v95) >> 24)] ^ (595445781 * ((-812407749 * v95) >> 24));
  v98 = (-812407749 * ((v59 ^ v96) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ v96) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x21B0]) = (-1539637248 * v98) ^ v97 ^ (-812407749 * v98) ^ (595445781 * ((-812407749 * v98) >> 24)) ^ *&v87[4 * ((-812407749 * v98) >> 24)] ^ *&v88[4 * ((-812407749 * v98) >> 24)] ^ *&v90[4 * ((-812407749 * v98) >> 24)];
  LODWORD(v72) = (-812407749 * ((v59 ^ STACK[0x1830]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1830]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v74) = (-812407749 * v72) >> 24;
  v99 = (-812407749 * v72) ^ (-1539637248 * v72) ^ *STACK[0x1830] ^ (595445781 * v74) ^ *&v87[4 * v74];
  LODWORD(v72) = *&v88[4 * v74] ^ *&v90[4 * v74];
  v100 = STACK[0x18B8];
  LODWORD(v74) = *STACK[0x18B8];
  LODWORD(STACK[0x21A0]) = v99 ^ v72;
  v101 = (-812407749 * ((v59 ^ v100) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ v100) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2170]) = *&v87[4 * ((-812407749 * v101) >> 24)] ^ v74 ^ *&v88[4 * ((-812407749 * v101) >> 24)] ^ *&v90[4 * ((-812407749 * v101) >> 24)] ^ (-1539637248 * v101) ^ (-812407749 * v101) ^ (595445781 * ((-812407749 * v101) >> 24));
  v102 = (-812407749 * ((v59 ^ STACK[0x17F0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x17F0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v72) = *STACK[0x17F0] ^ (-1539637248 * v102);
  v102 *= -812407749;
  LODWORD(STACK[0x21C0]) = *&v87[4 * HIBYTE(v102)] ^ v72 ^ v102 ^ *&v88[4 * HIBYTE(v102)] ^ *&v90[4 * HIBYTE(v102)] ^ (595445781 * HIBYTE(v102));
  v103 = (-812407749 * ((v59 ^ STACK[0x16C0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x16C0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v72) = (-1539637248 * v103) ^ *STACK[0x16C0];
  v103 *= -812407749;
  LODWORD(STACK[0x2178]) = v72 ^ v103 ^ (595445781 * HIBYTE(v103)) ^ *&v87[4 * HIBYTE(v103)] ^ *&v88[4 * HIBYTE(v103)] ^ *&v90[4 * HIBYTE(v103)];
  v104 = (-812407749 * ((v59 ^ STACK[0x1660]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1660]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2198]) = (-812407749 * v104) ^ (-1539637248 * v104) ^ *STACK[0x1660] ^ (595445781 * ((-812407749 * v104) >> 24)) ^ *&v87[4 * ((-812407749 * v104) >> 24)] ^ *&v88[4 * ((-812407749 * v104) >> 24)] ^ *&v90[4 * ((-812407749 * v104) >> 24)];
  v105 = (-812407749 * ((v59 ^ STACK[0x15E8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x15E8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2150]) = *&v87[4 * ((-812407749 * v105) >> 24)] ^ *STACK[0x15E8] ^ *&v88[4 * ((-812407749 * v105) >> 24)] ^ *&v90[4 * ((-812407749 * v105) >> 24)] ^ (-1539637248 * v105) ^ (-812407749 * v105) ^ (595445781 * ((-812407749 * v105) >> 24));
  v106 = (-812407749 * ((v59 ^ STACK[0x17A0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x17A0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v72) = *STACK[0x17A0] ^ (-1539637248 * v106);
  v106 *= -812407749;
  LODWORD(STACK[0x2190]) = *&v87[4 * HIBYTE(v106)] ^ v72 ^ v106 ^ *&v88[4 * HIBYTE(v106)] ^ *&v90[4 * HIBYTE(v106)] ^ (595445781 * HIBYTE(v106));
  v107 = (-812407749 * ((v59 ^ STACK[0x16F0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x16F0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v72) = (-1539637248 * v107) ^ *STACK[0x16F0];
  v107 *= -812407749;
  LODWORD(STACK[0x2130]) = v72 ^ v107 ^ (595445781 * HIBYTE(v107)) ^ *&v87[4 * HIBYTE(v107)] ^ *&v88[4 * HIBYTE(v107)] ^ *&v90[4 * HIBYTE(v107)];
  v108 = (-812407749 * ((v59 ^ STACK[0x17A8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x17A8]) & 0x7FFFFFFF)) >> 16);
  v109 = (-812407749 * v108) ^ (-1539637248 * v108) ^ *STACK[0x17A8] ^ (595445781 * ((-812407749 * v108) >> 24)) ^ *&v87[4 * ((-812407749 * v108) >> 24)] ^ *&v88[4 * ((-812407749 * v108) >> 24)] ^ *&v90[4 * ((-812407749 * v108) >> 24)];
  LODWORD(v72) = (-812407749 * ((v59 ^ STACK[0x1710]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1710]) & 0x7FFFFFFF)) >> 16);
  v110 = (-812407749 * v72) >> 24;
  LODWORD(v74) = *&v87[4 * v110] ^ *STACK[0x1710] ^ *&v88[4 * v110] ^ *&v90[4 * v110];
  LODWORD(v72) = (-1539637248 * v72) ^ (-812407749 * v72) ^ (595445781 * v110);
  v111 = STACK[0x1680];
  v112 = (-812407749 * ((v59 ^ v111) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ v111) & 0x7FFFFFFF)) >> 16);
  v113 = -812407749 * v112;
  LODWORD(v55) = *(v64 + 4 * ((-812407749 * v112) >> 24));
  LODWORD(v57) = *&v65[4 * ((-812407749 * v112) >> 24)];
  LODWORD(STACK[0x2168]) = v74 ^ v72;
  v114 = v57 ^ v55 ^ *&v66[4 * HIBYTE(v113) + 28] ^ (-451290709 * HIBYTE(v113));
  v115 = (595445781 * HIBYTE(v113)) ^ *&v87[4 * HIBYTE(v113)] ^ *&v88[4 * HIBYTE(v113)] ^ *&v90[4 * HIBYTE(v113)];
  v116 = (-812407749 * ((v59 ^ STACK[0x1760]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1760]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v57) = -1539637248 * v116;
  v116 *= -812407749;
  LODWORD(STACK[0x2148]) = v57 ^ *STACK[0x1760] ^ v116 ^ (595445781 * HIBYTE(v116)) ^ *&v87[4 * HIBYTE(v116)] ^ *&v88[4 * HIBYTE(v116)] ^ *&v90[4 * HIBYTE(v116)];
  v109 *= -737505385;
  LODWORD(STACK[0x2160]) = v109;
  if ((v109 & 0x4040000) != 0)
  {
    v117 = v115;
  }

  else
  {
    v117 = v114;
  }

  LODWORD(STACK[0x2110]) = (-1539637248 * v112) ^ *v111 ^ v113 ^ v117;
  v118 = (-812407749 * ((v59 ^ STACK[0x1678]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1678]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2108]) = (-812407749 * v118) ^ (-1539637248 * v118) ^ *STACK[0x1678] ^ (-451290709 * ((-812407749 * v118) >> 24)) ^ *(v64 + 4 * ((-812407749 * v118) >> 24)) ^ *&v65[4 * ((-812407749 * v118) >> 24)] ^ *&v66[4 * ((-812407749 * v118) >> 24) + 28];
  v119 = (-812407749 * ((v59 ^ STACK[0x1670]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1670]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2138]) = *(v64 + 4 * ((-812407749 * v119) >> 24)) ^ *STACK[0x1670] ^ *&v65[4 * ((-812407749 * v119) >> 24)] ^ *&v66[4 * ((-812407749 * v119) >> 24) + 28] ^ (-1539637248 * v119) ^ (-812407749 * v119) ^ (-451290709 * ((-812407749 * v119) >> 24));
  v120 = (-812407749 * ((v59 ^ STACK[0x18A0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x18A0]) & 0x7FFFFFFF)) >> 16);
  v121 = (-1539637248 * v120) ^ *STACK[0x18A0];
  v120 *= -812407749;
  v122 = *(&off_279CA5FD0 + v52 - 511);
  v123 = *(&off_279CA5FD0 + (v52 ^ 0x2F9u));
  v124 = *(&off_279CA5FD0 + (v52 ^ 0x2F0u)) - 8;
  LODWORD(STACK[0x2128]) = v121 ^ v120 ^ (1091443017 * HIBYTE(v120)) ^ *(v122 + 4 * HIBYTE(v120)) ^ *(v123 + 4 * (HIBYTE(v120) + 2)) ^ *&v124[4 * HIBYTE(v120)];
  v125 = (-812407749 * ((v59 ^ STACK[0x1880]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1880]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2100]) = (-812407749 * v125) ^ (-1539637248 * v125) ^ *STACK[0x1880] ^ (1091443017 * ((-812407749 * v125) >> 24)) ^ *(v122 + 4 * ((-812407749 * v125) >> 24)) ^ *(v123 + 4 * (((-812407749 * v125) >> 24) + 2)) ^ *&v124[4 * ((-812407749 * v125) >> 24)];
  v126 = (-812407749 * ((v59 ^ STACK[0x1C00]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1C00]) & 0x7FFFFFFF)) >> 16);
  v127 = (-812407749 * v126) >> 24;
  v128 = (-812407749 * v126) ^ (-1539637248 * v126) ^ *STACK[0x1C00] ^ (-140096219 * v127);
  v129 = *(&off_279CA5FD0 + (v52 ^ 0x2E0u)) - 4;
  v130 = *(&off_279CA5FD0 + (v52 ^ 0x290u)) - 12;
  v131 = *(&off_279CA5FD0 + (v52 ^ 0x277u));
  LODWORD(STACK[0x2120]) = v128 ^ *&v129[4 * v127] ^ *&v130[4 * v127] ^ *(v131 + 4 * v127);
  v132 = (-812407749 * ((v59 ^ STACK[0x1828]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1828]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2118]) = *(v122 + 4 * ((-812407749 * v132) >> 24)) ^ *STACK[0x1828] ^ *(v123 + 4 * (((-812407749 * v132) >> 24) + 2)) ^ *&v124[4 * ((-812407749 * v132) >> 24)] ^ (-1539637248 * v132) ^ (-812407749 * v132) ^ (1091443017 * ((-812407749 * v132) >> 24));
  v133 = (-812407749 * ((v59 ^ STACK[0x17E8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x17E8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x20F8]) = *(v122 + 4 * ((-812407749 * v133) >> 24)) ^ *STACK[0x17E8] ^ *(v123 + 4 * (((-812407749 * v133) >> 24) + 2)) ^ *&v124[4 * ((-812407749 * v133) >> 24)] ^ (-1539637248 * v133) ^ (-812407749 * v133) ^ (1091443017 * ((-812407749 * v133) >> 24));
  v134 = (-812407749 * ((v59 ^ STACK[0x1688]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1688]) & 0x7FFFFFFF)) >> 16);
  v135 = *(&off_279CA5FD0 + (v52 ^ 0x29Eu)) - 8;
  v136 = *(&off_279CA5FD0 + (v52 ^ 0x235u)) - 4;
  v137 = *(&off_279CA5FD0 + (v52 ^ 0x299u)) - 8;
  LODWORD(STACK[0x20E8]) = (-812407749 * v134) ^ (-1539637248 * v134) ^ *STACK[0x1688] ^ (1531516889 * ((-812407749 * v134) >> 24)) ^ *&v135[4 * ((-812407749 * v134) >> 24)] ^ *&v136[4 * ((-812407749 * v134) >> 24)] ^ *&v137[4 * ((-812407749 * v134) >> 24) + 8];
  v138 = (-812407749 * ((v59 ^ STACK[0x1730]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1730]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x20D8]) = (-812407749 * v138) ^ (-1539637248 * v138) ^ *STACK[0x1730] ^ (1531516889 * ((-812407749 * v138) >> 24)) ^ *&v135[4 * ((-812407749 * v138) >> 24)] ^ *&v136[4 * ((-812407749 * v138) >> 24)] ^ *&v137[4 * ((-812407749 * v138) >> 24) + 8];
  v139 = (-812407749 * ((v59 ^ STACK[0x1860]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1860]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x20F0]) = *&v135[4 * ((-812407749 * v139) >> 24)] ^ *STACK[0x1860] ^ *&v136[4 * ((-812407749 * v139) >> 24)] ^ *&v137[4 * ((-812407749 * v139) >> 24) + 8] ^ (-1539637248 * v139) ^ (-812407749 * v139) ^ (1531516889 * ((-812407749 * v139) >> 24));
  v140 = (-812407749 * ((v59 ^ STACK[0x18E0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x18E0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x20E0]) = *&v135[4 * ((-812407749 * v140) >> 24)] ^ *STACK[0x18E0] ^ *&v136[4 * ((-812407749 * v140) >> 24)] ^ *&v137[4 * ((-812407749 * v140) >> 24) + 8] ^ (-1539637248 * v140) ^ (-812407749 * v140) ^ (1531516889 * ((-812407749 * v140) >> 24));
  v141 = (-812407749 * ((v59 ^ STACK[0x16D8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x16D8]) & 0x7FFFFFFF)) >> 16);
  v142 = (-1539637248 * v141) ^ *STACK[0x16D8];
  v141 *= -812407749;
  LODWORD(STACK[0x20D0]) = v142 ^ v141 ^ (1531516889 * HIBYTE(v141)) ^ *&v135[4 * HIBYTE(v141)] ^ *&v136[4 * HIBYTE(v141)] ^ *&v137[4 * HIBYTE(v141) + 8];
  v143 = (-812407749 * ((v59 ^ STACK[0x1818]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1818]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x20C8]) = (-812407749 * v143) ^ (-1539637248 * v143) ^ *STACK[0x1818] ^ (1531516889 * ((-812407749 * v143) >> 24)) ^ *&v135[4 * ((-812407749 * v143) >> 24)] ^ *&v136[4 * ((-812407749 * v143) >> 24)] ^ *&v137[4 * ((-812407749 * v143) >> 24) + 8];
  v144 = (-812407749 * ((v59 ^ STACK[0x1788]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1788]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2078]) = *&v135[4 * ((-812407749 * v144) >> 24)] ^ *STACK[0x1788] ^ *&v136[4 * ((-812407749 * v144) >> 24)] ^ *&v137[4 * ((-812407749 * v144) >> 24) + 8] ^ (-1539637248 * v144) ^ (-812407749 * v144) ^ (1531516889 * ((-812407749 * v144) >> 24));
  v145 = (-812407749 * ((v59 ^ STACK[0x17C8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x17C8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x20B8]) = *&v135[4 * ((-812407749 * v145) >> 24)] ^ *STACK[0x17C8] ^ *&v136[4 * ((-812407749 * v145) >> 24)] ^ (-1539637248 * v145) ^ (-812407749 * v145) ^ *&v137[4 * ((-812407749 * v145) >> 24) + 8] ^ (1531516889 * ((-812407749 * v145) >> 24));
  v146 = (-812407749 * ((v59 ^ STACK[0x17F8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x17F8]) & 0x7FFFFFFF)) >> 16);
  v147 = (-1539637248 * v146) ^ *STACK[0x17F8];
  v146 *= -812407749;
  LODWORD(STACK[0x20B0]) = v147 ^ v146 ^ (1531516889 * HIBYTE(v146)) ^ *&v135[4 * HIBYTE(v146)] ^ *&v136[4 * HIBYTE(v146)] ^ *&v137[4 * HIBYTE(v146) + 8];
  v148 = (-812407749 * ((v59 ^ STACK[0x1658]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1658]) & 0x7FFFFFFF)) >> 16);
  v149 = (-812407749 * v148) >> 24;
  v150 = *(&off_279CA5FD0 + v52 - 458) - 8;
  v151 = *(&off_279CA5FD0 + (v52 ^ 0x2C4u)) - 12;
  v152 = (-812407749 * v148) ^ (-1539637248 * v148) ^ *STACK[0x1658] ^ (-261162719 * v149) ^ *&v150[4 * v149] ^ *&v151[4 * v149];
  v153 = v149 + 4;
  v154 = *(&off_279CA5FD0 + (v52 ^ 0x2C6u)) - 12;
  LODWORD(STACK[0x20C0]) = v152 ^ *&v154[4 * v153];
  v155 = (-812407749 * ((v59 ^ STACK[0x16A8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x16A8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2068]) = *&v129[4 * ((-812407749 * v155) >> 24)] ^ *STACK[0x16A8] ^ *&v130[4 * ((-812407749 * v155) >> 24)] ^ *(v131 + 4 * ((-812407749 * v155) >> 24)) ^ (-1539637248 * v155) ^ (-812407749 * v155) ^ (-140096219 * ((-812407749 * v155) >> 24));
  LODWORD(v130) = (-812407749 * ((v59 ^ a49) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ a49) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2088]) = *&v150[4 * ((-812407749 * v130) >> 24)] ^ *a49 ^ *&v151[4 * ((-812407749 * v130) >> 24)] ^ *&v154[4 * ((-812407749 * v130) >> 24) + 16] ^ (-1539637248 * v130) ^ (-812407749 * v130) ^ (-261162719 * ((-812407749 * v130) >> 24));
  LODWORD(v130) = (-812407749 * ((v59 ^ STACK[0x18B0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x18B0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v131) = (-1539637248 * v130) ^ *STACK[0x18B0];
  LODWORD(v130) = -812407749 * v130;
  LODWORD(STACK[0x20A0]) = v131 ^ v130 ^ *&v150[4 * (v130 >> 24)] ^ *&v151[4 * (v130 >> 24)] ^ (-261162719 * (v130 >> 24)) ^ *&v154[4 * (v130 >> 24) + 16];
  LODWORD(v130) = (-812407749 * ((v59 ^ STACK[0x1808]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1808]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v131) = (-1539637248 * v130) ^ *STACK[0x1808];
  LODWORD(v130) = -812407749 * v130;
  LODWORD(STACK[0x2098]) = v131 ^ v130 ^ (-261162719 * (v130 >> 24)) ^ *&v150[4 * (v130 >> 24)] ^ *&v151[4 * (v130 >> 24)] ^ *&v154[4 * (v130 >> 24) + 16];
  LODWORD(v130) = (-812407749 * ((v59 ^ STACK[0x16B0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x16B0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2090]) = *&v150[4 * ((-812407749 * v130) >> 24)] ^ *STACK[0x16B0] ^ *&v151[4 * ((-812407749 * v130) >> 24)] ^ *&v154[4 * ((-812407749 * v130) >> 24) + 16] ^ (-1539637248 * v130) ^ (-812407749 * v130) ^ (-261162719 * ((-812407749 * v130) >> 24));
  LODWORD(v130) = (-812407749 * ((v59 ^ STACK[0x18C8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x18C8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2070]) = *&v150[4 * ((-812407749 * v130) >> 24)] ^ *STACK[0x18C8] ^ *&v151[4 * ((-812407749 * v130) >> 24)] ^ *&v154[4 * ((-812407749 * v130) >> 24) + 16] ^ (-1539637248 * v130) ^ (-812407749 * v130) ^ (-261162719 * ((-812407749 * v130) >> 24));
  LODWORD(v130) = (-812407749 * ((v59 ^ STACK[0x1868]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1868]) & 0x7FFFFFFF)) >> 16);
  v156 = (-812407749 * v130) >> 24;
  v157 = *(&off_279CA5FD0 + v52 - 571) - 12;
  v158 = *(&off_279CA5FD0 + (v52 ^ 0x289u)) - 12;
  LODWORD(v129) = (-812407749 * v130) ^ (-1539637248 * v130) ^ *STACK[0x1868] ^ (-684504187 * v156) ^ *&v157[4 * v156] ^ *&v158[4 * v156 + 16];
  v159 = *(&off_279CA5FD0 + (v52 ^ 0x237u)) - 8;
  LODWORD(STACK[0x2048]) = v129 ^ *&v159[4 * v156 + 8];
  v160 = (-812407749 * ((v59 ^ STACK[0x16B8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x16B8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2080]) = (-812407749 * v160) ^ (-1539637248 * v160) ^ *STACK[0x16B8] ^ (-684504187 * ((-812407749 * v160) >> 24)) ^ *&v157[4 * ((-812407749 * v160) >> 24)] ^ *&v158[4 * ((-812407749 * v160) >> 24) + 16] ^ *&v159[4 * ((-812407749 * v160) >> 24) + 8];
  v161 = (-812407749 * ((v59 ^ STACK[0x17C0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x17C0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2060]) = *&v135[4 * ((-812407749 * v161) >> 24)] ^ *STACK[0x17C0] ^ *&v136[4 * ((-812407749 * v161) >> 24)] ^ *&v137[4 * ((-812407749 * v161) >> 24) + 8] ^ (-1539637248 * v161) ^ (-812407749 * v161) ^ (1531516889 * ((-812407749 * v161) >> 24));
  v162 = (-812407749 * ((v59 ^ STACK[0x18C0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x18C0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = *STACK[0x18C0] ^ (-1539637248 * v162);
  v162 *= -812407749;
  LODWORD(STACK[0x2058]) = *&v150[4 * HIBYTE(v162)] ^ v129 ^ v162 ^ *&v151[4 * HIBYTE(v162)] ^ *&v154[4 * HIBYTE(v162) + 16] ^ (-261162719 * HIBYTE(v162));
  v163 = (-812407749 * ((v59 ^ STACK[0x18E8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x18E8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = (-1539637248 * v163) ^ *STACK[0x18E8];
  v163 *= -812407749;
  LODWORD(STACK[0x2028]) = v129 ^ v163 ^ (-261162719 * HIBYTE(v163)) ^ *&v150[4 * HIBYTE(v163)] ^ *&v151[4 * HIBYTE(v163)] ^ *&v154[4 * HIBYTE(v163) + 16];
  v164 = (-812407749 * ((v59 ^ STACK[0x1778]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1778]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = (-812407749 * v164) >> 24;
  v165 = STACK[0x17B8];
  v166 = (-812407749 * ((v59 ^ v165) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ v165) & 0x7FFFFFFF)) >> 16);
  v167 = (-812407749 * v166) >> 24;
  LODWORD(v137) = *&v137[4 * v167 + 8];
  LODWORD(STACK[0x2038]) = (-812407749 * v164) ^ (-1539637248 * v164) ^ *STACK[0x1778] ^ (-261162719 * v129) ^ *&v150[4 * v129] ^ *&v151[4 * v129] ^ *&v154[4 * (v129 + 4)];
  v168 = *&v135[4 * v167] ^ *v165 ^ *&v136[4 * v167] ^ v137 ^ (-1539637248 * v166) ^ (-812407749 * v166) ^ (1531516889 * v167);
  LODWORD(STACK[0x1F98]) = v168;
  v169 = (-812407749 * ((v59 ^ STACK[0x1750]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1750]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2030]) = *&v150[4 * ((-812407749 * v169) >> 24)] ^ *STACK[0x1750] ^ *&v151[4 * ((-812407749 * v169) >> 24)] ^ *&v154[4 * ((-812407749 * v169) >> 24) + 16] ^ (-1539637248 * v169) ^ (-812407749 * v169) ^ (-261162719 * ((-812407749 * v169) >> 24));
  v170 = (-812407749 * ((v59 ^ STACK[0x18D8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x18D8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = (-1539637248 * v170) ^ *STACK[0x18D8];
  v170 *= -812407749;
  LODWORD(STACK[0x2018]) = v129 ^ v170 ^ *&v150[4 * HIBYTE(v170)] ^ *&v151[4 * HIBYTE(v170)] ^ (-261162719 * HIBYTE(v170)) ^ *&v154[4 * HIBYTE(v170) + 16];
  v171 = (-812407749 * ((v59 ^ STACK[0x1848]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1848]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = (-1539637248 * v171) ^ *STACK[0x1848];
  v171 *= -812407749;
  LODWORD(STACK[0x1FE8]) = v129 ^ v171 ^ (-261162719 * HIBYTE(v171)) ^ *&v150[4 * HIBYTE(v171)] ^ *&v151[4 * HIBYTE(v171)] ^ *&v154[4 * HIBYTE(v171) + 16];
  v172 = (-812407749 * ((v59 ^ STACK[0x1898]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1898]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2020]) = *&v150[4 * ((-812407749 * v172) >> 24)] ^ *STACK[0x1898] ^ *&v151[4 * ((-812407749 * v172) >> 24)] ^ *&v154[4 * ((-812407749 * v172) >> 24) + 16] ^ (-1539637248 * v172) ^ (-812407749 * v172) ^ (-261162719 * ((-812407749 * v172) >> 24));
  v173 = (-812407749 * ((v59 ^ STACK[0x1640]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1640]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2010]) = *&v150[4 * ((-812407749 * v173) >> 24)] ^ *STACK[0x1640] ^ *&v151[4 * ((-812407749 * v173) >> 24)] ^ (-1539637248 * v173) ^ (-812407749 * v173) ^ *&v154[4 * ((-812407749 * v173) >> 24) + 16] ^ (-261162719 * ((-812407749 * v173) >> 24));
  v174 = (-812407749 * ((v59 ^ STACK[0x1718]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1718]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = (-1539637248 * v174) ^ *STACK[0x1718];
  v174 *= -812407749;
  LODWORD(STACK[0x2008]) = v129 ^ v174 ^ (-261162719 * HIBYTE(v174)) ^ *&v150[4 * HIBYTE(v174)] ^ *&v151[4 * HIBYTE(v174)] ^ *&v154[4 * HIBYTE(v174) + 16];
  v175 = (-812407749 * ((v59 ^ STACK[0x17D8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x17D8]) & 0x7FFFFFFF)) >> 16);
  v176 = *(&off_279CA5FD0 + (v52 ^ 0x2EBu));
  v177 = *(&off_279CA5FD0 + v52 - 565) - 12;
  v178 = *(&off_279CA5FD0 + v52 - 412) - 4;
  LODWORD(STACK[0x1FC8]) = (-812407749 * v175) ^ (-1539637248 * v175) ^ *STACK[0x17D8] ^ (-1957175533 * ((-812407749 * v175) >> 24)) ^ *(v176 + 4 * ((-812407749 * v175) >> 24)) ^ *&v177[4 * ((-812407749 * v175) >> 24)] ^ *&v178[4 * ((-812407749 * v175) >> 24)];
  v179 = (-812407749 * ((v59 ^ STACK[0x1738]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1738]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x1FE0]) = *(v176 + 4 * ((-812407749 * v179) >> 24)) ^ *STACK[0x1738] ^ *&v177[4 * ((-812407749 * v179) >> 24)] ^ *&v178[4 * ((-812407749 * v179) >> 24)] ^ (-1539637248 * v179) ^ (-812407749 * v179) ^ (-1957175533 * ((-812407749 * v179) >> 24));
  v180 = (-812407749 * ((v59 ^ STACK[0x1728]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1728]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x2050]) = (-1539637248 * v180) ^ *STACK[0x1728] ^ (-812407749 * v180) ^ *&v150[4 * ((-812407749 * v180) >> 24)] ^ *&v151[4 * ((-812407749 * v180) >> 24)] ^ (-261162719 * ((-812407749 * v180) >> 24)) ^ *&v154[4 * ((-812407749 * v180) >> 24) + 16];
  v181 = (-812407749 * ((v59 ^ STACK[0x1890]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1890]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = (-1539637248 * v181) ^ *STACK[0x1890];
  v181 *= -812407749;
  LODWORD(STACK[0x1FD0]) = v129 ^ v181 ^ (-1957175533 * HIBYTE(v181)) ^ *(v176 + 4 * HIBYTE(v181)) ^ *&v177[4 * HIBYTE(v181)] ^ *&v178[4 * HIBYTE(v181)];
  v182 = (-812407749 * ((v59 ^ STACK[0x1698]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1698]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x1FF0]) = *(v176 + 4 * ((-812407749 * v182) >> 24)) ^ *STACK[0x1698] ^ *&v177[4 * ((-812407749 * v182) >> 24)] ^ *&v178[4 * ((-812407749 * v182) >> 24)] ^ (-1539637248 * v182) ^ (-812407749 * v182) ^ (-1957175533 * ((-812407749 * v182) >> 24));
  v183 = (-812407749 * ((v59 ^ STACK[0x16E8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x16E8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x1FA0]) = *(v176 + 4 * ((-812407749 * v183) >> 24)) ^ *STACK[0x16E8] ^ *&v177[4 * ((-812407749 * v183) >> 24)] ^ *&v178[4 * ((-812407749 * v183) >> 24)] ^ (-1539637248 * v183) ^ (-812407749 * v183) ^ (-1957175533 * ((-812407749 * v183) >> 24));
  v184 = (-812407749 * ((v59 ^ STACK[0x1648]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1648]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x1FD8]) = (-812407749 * v184) ^ (-1539637248 * v184) ^ *STACK[0x1648] ^ (-1957175533 * ((-812407749 * v184) >> 24)) ^ *(v176 + 4 * ((-812407749 * v184) >> 24)) ^ *&v177[4 * ((-812407749 * v184) >> 24)] ^ *&v178[4 * ((-812407749 * v184) >> 24)];
  v185 = (-812407749 * ((v59 ^ STACK[0x1638]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1638]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x1F78]) = (-812407749 * v185) ^ (-1539637248 * v185) ^ *STACK[0x1638] ^ (-1957175533 * ((-812407749 * v185) >> 24)) ^ *(v176 + 4 * ((-812407749 * v185) >> 24)) ^ *&v177[4 * ((-812407749 * v185) >> 24)] ^ *&v178[4 * ((-812407749 * v185) >> 24)];
  v186 = (-812407749 * ((v59 ^ STACK[0x1650]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1650]) & 0x7FFFFFFF)) >> 16);
  v187 = (v168 & 0xD1933DAF) - 737505385 * (*(v176 + 4 * ((-812407749 * v186) >> 24)) ^ *STACK[0x1650] ^ *&v177[4 * ((-812407749 * v186) >> 24)] ^ *&v178[4 * ((-812407749 * v186) >> 24)] ^ (-1539637248 * v186) ^ (-812407749 * v186) ^ (-1957175533 * ((-812407749 * v186) >> 24))) + (v168 & 0xD1933DAF ^ 0xD1933DAF);
  v188 = (-812407749 * ((v59 ^ STACK[0x16F8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x16F8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = (-1539637248 * v188) ^ *STACK[0x16F8];
  v188 *= -812407749;
  LODWORD(STACK[0x1FC0]) = v129 ^ v188 ^ (-1957175533 * HIBYTE(v188)) ^ *(v176 + 4 * HIBYTE(v188)) ^ *&v177[4 * HIBYTE(v188)] ^ *&v178[4 * HIBYTE(v188)];
  v189 = (-812407749 * ((v59 ^ STACK[0x1850]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1850]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x1F70]) = (-812407749 * v189) ^ (-1539637248 * v189) ^ *STACK[0x1850] ^ (-1957175533 * ((-812407749 * v189) >> 24)) ^ *(v176 + 4 * ((-812407749 * v189) >> 24)) ^ *&v177[4 * ((-812407749 * v189) >> 24)] ^ *&v178[4 * ((-812407749 * v189) >> 24)];
  v190 = (-812407749 * ((v59 ^ STACK[0x1768]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1768]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x1F90]) = *(v176 + 4 * ((-812407749 * v190) >> 24)) ^ *STACK[0x1768] ^ *&v177[4 * ((-812407749 * v190) >> 24)] ^ *&v178[4 * ((-812407749 * v190) >> 24)] ^ (-1539637248 * v190) ^ (-812407749 * v190) ^ (-1957175533 * ((-812407749 * v190) >> 24));
  v191 = (-812407749 * ((v59 ^ STACK[0x16A0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x16A0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x1F60]) = *(v176 + 4 * ((-812407749 * v191) >> 24)) ^ *STACK[0x16A0] ^ *&v177[4 * ((-812407749 * v191) >> 24)] ^ *&v178[4 * ((-812407749 * v191) >> 24)] ^ (-1539637248 * v191) ^ (-812407749 * v191) ^ (-1957175533 * ((-812407749 * v191) >> 24));
  v192 = (-812407749 * ((v59 ^ STACK[0x1810]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1810]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x1F68]) = (-812407749 * v192) ^ (-1539637248 * v192) ^ *STACK[0x1810] ^ (-1957175533 * ((-812407749 * v192) >> 24)) ^ *(v176 + 4 * ((-812407749 * v192) >> 24)) ^ *&v177[4 * ((-812407749 * v192) >> 24)] ^ *&v178[4 * ((-812407749 * v192) >> 24)];
  v193 = (-812407749 * ((v59 ^ STACK[0x17D0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x17D0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = (-1539637248 * v193) ^ *STACK[0x17D0];
  v193 *= -812407749;
  LODWORD(STACK[0x1F80]) = v129 ^ v193 ^ (-1957175533 * HIBYTE(v193)) ^ *(v176 + 4 * HIBYTE(v193)) ^ *&v177[4 * HIBYTE(v193)] ^ *&v178[4 * HIBYTE(v193)];
  v194 = (-812407749 * ((v59 ^ STACK[0x1BF8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1BF8]) & 0x7FFFFFFF)) >> 16);
  v195 = *(v176 + 4 * ((-812407749 * v194) >> 24)) ^ *STACK[0x1BF8] ^ *&v177[4 * ((-812407749 * v194) >> 24)] ^ *&v178[4 * ((-812407749 * v194) >> 24)] ^ (-1539637248 * v194) ^ (-812407749 * v194) ^ (-1957175533 * ((-812407749 * v194) >> 24));
  v196 = (-812407749 * ((v59 ^ STACK[0x1820]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1820]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = (-1539637248 * v196) ^ *STACK[0x1820];
  v196 *= -812407749;
  v197 = *(&off_279CA5FD0 + v52 - 435) - 12;
  v198 = *(&off_279CA5FD0 + (v52 ^ 0x26Du)) - 8;
  v199 = *(&off_279CA5FD0 + (v52 ^ 0x2D4u)) - 8;
  v200 = v129 ^ v196 ^ (1310927943 * HIBYTE(v196)) ^ *&v197[4 * HIBYTE(v196)] ^ *&v198[4 * HIBYTE(v196) + 12] ^ *&v199[4 * HIBYTE(v196)];
  v201 = (-812407749 * ((v59 ^ STACK[0x18A8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x18A8]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = (-1539637248 * v201) ^ *STACK[0x18A8];
  v201 *= -812407749;
  LODWORD(v177) = v129 ^ v201 ^ (-1957175533 * HIBYTE(v201)) ^ *(v176 + 4 * HIBYTE(v201)) ^ *&v177[4 * HIBYTE(v201)] ^ *&v178[4 * HIBYTE(v201)];
  v202 = (-812407749 * ((v59 ^ STACK[0x1780]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1780]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = (-1539637248 * v202) ^ *STACK[0x1780];
  v202 *= -812407749;
  v203 = v129 ^ v202 ^ (1310927943 * HIBYTE(v202)) ^ *&v197[4 * HIBYTE(v202)] ^ *&v198[4 * HIBYTE(v202) + 12] ^ *&v199[4 * HIBYTE(v202)];
  v204 = (-812407749 * ((v59 ^ STACK[0x1740]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1740]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x1F48]) = *&v197[4 * ((-812407749 * v204) >> 24)] ^ *STACK[0x1740] ^ *&v198[4 * ((-812407749 * v204) >> 24) + 12] ^ *&v199[4 * ((-812407749 * v204) >> 24)] ^ (-1539637248 * v204) ^ (-812407749 * v204) ^ (1310927943 * ((-812407749 * v204) >> 24));
  v205 = (-812407749 * ((v59 ^ STACK[0x1840]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1840]) & 0x7FFFFFFF)) >> 16);
  v206 = *&v197[4 * ((-812407749 * v205) >> 24)] ^ *STACK[0x1840] ^ *&v198[4 * ((-812407749 * v205) >> 24) + 12] ^ *&v199[4 * ((-812407749 * v205) >> 24)] ^ (-1539637248 * v205) ^ (-812407749 * v205) ^ (1310927943 * ((-812407749 * v205) >> 24));
  v207 = (-812407749 * ((v59 ^ STACK[0x1708]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1708]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = (-1539637248 * v207) ^ *STACK[0x1708];
  v207 *= -812407749;
  LODWORD(STACK[0x1F40]) = v129 ^ v207 ^ (1310927943 * HIBYTE(v207)) ^ *&v197[4 * HIBYTE(v207)] ^ *&v198[4 * HIBYTE(v207) + 12] ^ *&v199[4 * HIBYTE(v207)];
  v208 = (-812407749 * ((v59 ^ STACK[0x1798]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1798]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x1F50]) = (-812407749 * v208) ^ (-1539637248 * v208) ^ *STACK[0x1798] ^ (1310927943 * ((-812407749 * v208) >> 24)) ^ *&v197[4 * ((-812407749 * v208) >> 24)] ^ *&v198[4 * ((-812407749 * v208) >> 24) + 12] ^ *&v199[4 * ((-812407749 * v208) >> 24)];
  v209 = (-812407749 * ((v59 ^ STACK[0x15D0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x15D0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(STACK[0x1F88]) = *&v197[4 * ((-812407749 * v209) >> 24)] ^ *STACK[0x15D0] ^ *&v198[4 * ((-812407749 * v209) >> 24) + 12] ^ *&v199[4 * ((-812407749 * v209) >> 24)] ^ (-1539637248 * v209) ^ (-812407749 * v209) ^ (1310927943 * ((-812407749 * v209) >> 24));
  v210 = (-812407749 * ((v59 ^ STACK[0x1888]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1888]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = *STACK[0x1888] ^ (-1539637248 * v210);
  v210 *= -812407749;
  LODWORD(v135) = *&v197[4 * HIBYTE(v210)] ^ v129 ^ v210 ^ *&v198[4 * HIBYTE(v210) + 12] ^ *&v199[4 * HIBYTE(v210)] ^ (1310927943 * HIBYTE(v210));
  v211 = (-812407749 * ((v59 ^ STACK[0x1630]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1630]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = (-1539637248 * v211) ^ *STACK[0x1630];
  v211 *= -812407749;
  LODWORD(v150) = v129 ^ v211 ^ (1310927943 * HIBYTE(v211)) ^ *&v197[4 * HIBYTE(v211)] ^ *&v198[4 * HIBYTE(v211) + 12] ^ *&v199[4 * HIBYTE(v211)];
  v212 = (-812407749 * ((v59 ^ STACK[0x1858]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1858]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v129) = (-1539637248 * v212) ^ *STACK[0x1858] ^ (-812407749 * v212) ^ (1310927943 * ((-812407749 * v212) >> 24)) ^ *&v197[4 * ((-812407749 * v212) >> 24)] ^ *&v198[4 * ((-812407749 * v212) >> 24) + 12] ^ *&v199[4 * ((-812407749 * v212) >> 24)];
  v213 = (-812407749 * ((v59 ^ STACK[0x16C8]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x16C8]) & 0x7FFFFFFF)) >> 16);
  v214 = *(v122 + 4 * ((-812407749 * v213) >> 24)) ^ *STACK[0x16C8] ^ *(v123 + 4 * (((-812407749 * v213) >> 24) + 2)) ^ *&v124[4 * ((-812407749 * v213) >> 24)] ^ (-1539637248 * v213) ^ (-812407749 * v213) ^ (1091443017 * ((-812407749 * v213) >> 24));
  LODWORD(v176) = (-812407749 * ((v59 ^ STACK[0x1838]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1838]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v197) = *STACK[0x1838] ^ (-1539637248 * v176);
  LODWORD(v176) = -812407749 * v176;
  LODWORD(v176) = *(v122 + 4 * BYTE3(v176)) ^ v197 ^ v176 ^ *(v123 + 4 * (BYTE3(v176) + 2)) ^ *&v124[4 * BYTE3(v176)] ^ (1091443017 * BYTE3(v176));
  LODWORD(v197) = (-812407749 * ((v59 ^ STACK[0x1870]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1870]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v123) = (-1539637248 * v197) ^ *STACK[0x1870] ^ (-812407749 * v197) ^ (1091443017 * ((-812407749 * v197) >> 24)) ^ *(v122 + 4 * ((-812407749 * v197) >> 24)) ^ *(v123 + 4 * (((-812407749 * v197) >> 24) + 2)) ^ *&v124[4 * ((-812407749 * v197) >> 24)];
  LODWORD(v197) = -737505385 * LODWORD(STACK[0x21B8]);
  LODWORD(v154) = STACK[0x2078];
  LODWORD(STACK[0x21B8]) = v214 - LODWORD(STACK[0x2078]);
  LODWORD(STACK[0x1F38]) = v197 - 1557759138 - 737505385 * v154;
  LODWORD(v122) = (-812407749 * ((v59 ^ STACK[0x1790]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x1790]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v122) = *&v157[4 * ((-812407749 * v122) >> 24)] ^ *STACK[0x1790] ^ *&v158[4 * ((-812407749 * v122) >> 24) + 16] ^ *&v159[4 * ((-812407749 * v122) >> 24) + 8] ^ (-1539637248 * v122) ^ (-812407749 * v122) ^ (-684504187 * ((-812407749 * v122) >> 24));
  v215 = (-812407749 * ((v59 ^ STACK[0x16E0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x16E0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v124) = *&v157[4 * ((-812407749 * v215) >> 24)] ^ *STACK[0x16E0] ^ *&v158[4 * ((-812407749 * v215) >> 24) + 16] ^ (-1539637248 * v215) ^ (-812407749 * v215) ^ *&v159[4 * ((-812407749 * v215) >> 24) + 8] ^ (-684504187 * ((-812407749 * v215) >> 24));
  v216 = (-812407749 * ((v59 ^ STACK[0x17B0]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v59 ^ STACK[0x17B0]) & 0x7FFFFFFF)) >> 16);
  LODWORD(v159) = (-812407749 * v216) ^ (-1539637248 * v216) ^ *STACK[0x17B0] ^ (-684504187 * ((-812407749 * v216) >> 24)) ^ *&v157[4 * ((-812407749 * v216) >> 24)] ^ *&v158[4 * ((-812407749 * v216) >> 24) + 16] ^ *&v159[4 * ((-812407749 * v216) >> 24) + 8];
  LODWORD(v157) = v197 - 778879569;
  v217 = -778879569 - 737505385 * LODWORD(STACK[0x21D8]);
  v218 = -778879569 - 737505385 * LODWORD(STACK[0x2110]);
  LODWORD(v197) = -778879569 - 737505385 * LODWORD(STACK[0x2108]);
  LODWORD(v154) = -778879569 - 737505385 * LODWORD(STACK[0x1FE8]);
  LODWORD(v178) = -778879569 - 737505385 * LODWORD(STACK[0x1FC8]);
  LODWORD(v129) = -778879569 - 737505385 * v129;
  LODWORD(v123) = -778879569 - 737505385 * v123;
  LODWORD(STACK[0x1F18]) = v197 ^ v157;
  LODWORD(STACK[0x1FE8]) = v123 + v197;
  LODWORD(STACK[0x1F28]) = v123 + v217;
  LODWORD(STACK[0x2110]) = v218 + v217;
  LODWORD(STACK[0x1F30]) = v178 + v218;
  LODWORD(STACK[0x1FC8]) = v129 ^ v178;
  LODWORD(v159) = -737505385 * v159;
  LODWORD(STACK[0x2078]) = (v159 - 778879569) ^ v154;
  LODWORD(STACK[0x2108]) = v129 + v154;
  v219 = -737505385 * LODWORD(STACK[0x2100]);
  LODWORD(v157) = -737505385 * LODWORD(STACK[0x2068]);
  LODWORD(STACK[0x21D8]) = v159 - v157;
  LODWORD(v159) = v157 - 778879569;
  LODWORD(v157) = -778879569 - 737505385 * LODWORD(STACK[0x2028]);
  LODWORD(STACK[0x2028]) = v187 ^ (v219 - 778879569);
  LODWORD(STACK[0x2068]) = v157 - v187;
  LODWORD(STACK[0x1F10]) = v159 + v157;
  LODWORD(v157) = -737505385 * LODWORD(STACK[0x2150]);
  LODWORD(v159) = -778879569 - 737505385 * LODWORD(STACK[0x2130]);
  LODWORD(v123) = -737505385 * LODWORD(STACK[0x1FA0]);
  LODWORD(v129) = -737505385 * LODWORD(STACK[0x1F78]);
  LODWORD(STACK[0x1EF8]) = v123 + -1557759138 - 737505385 * LODWORD(STACK[0x1F78]);
  LODWORD(STACK[0x1FA0]) = v123 - v157;
  LODWORD(STACK[0x1F20]) = v157 + v159 - 778879569;
  LODWORD(v157) = -737505385 * LODWORD(STACK[0x2170]);
  LODWORD(STACK[0x1F78]) = v157 - v129;
  LODWORD(v123) = v157 - 778879569;
  LODWORD(v157) = -737505385 * LODWORD(STACK[0x2018]);
  LODWORD(v122) = -778879569 - 737505385 * v122;
  LODWORD(STACK[0x2018]) = v123 + v122;
  LODWORD(STACK[0x1F00]) = v122 ^ (v157 - 778879569);
  LODWORD(v122) = -778879569 - 737505385 * LODWORD(STACK[0x2238]);
  LODWORD(v123) = -737505385 * LODWORD(STACK[0x20D8]);
  LODWORD(v129) = -778879569 - 737505385 * LODWORD(STACK[0x2048]);
  v220 = -778879569 - 737505385 * LODWORD(STACK[0x1F70]);
  LODWORD(v154) = -778879569 - 737505385 * LODWORD(STACK[0x1F60]);
  LODWORD(STACK[0x2150]) = v219 - -737505385 * v195;
  LODWORD(v124) = -778879569 - 737505385 * v124;
  LODWORD(STACK[0x2130]) = (-737505385 * v195 - 778879569) ^ v129;
  LODWORD(STACK[0x1EC8]) = v124 + v129;
  LODWORD(STACK[0x2170]) = v124 ^ v122;
  LODWORD(STACK[0x2238]) = v123 - 778879569 + v154;
  LODWORD(STACK[0x1EC0]) = v154 ^ v220;
  LODWORD(STACK[0x1F60]) = v220 + v122;
  LODWORD(v122) = -737505385 * LODWORD(STACK[0x21E0]);
  v221 = -778879569 - 737505385 * LODWORD(STACK[0x21A8]);
  LODWORD(v124) = -778879569 - 737505385 * LODWORD(STACK[0x20F8]);
  LODWORD(v129) = -778879569 - 737505385 * LODWORD(STACK[0x20E8]);
  v222 = -778879569 - 737505385 * LODWORD(STACK[0x20B0]);
  LODWORD(STACK[0x1EE0]) = v122 - 778879569 + v124;
  LODWORD(STACK[0x1EA0]) = v129 + v124;
  LODWORD(STACK[0x1ED8]) = (-737505385 * v206 - 778879569) ^ v222;
  LODWORD(STACK[0x1EE8]) = v222 + v221;
  LODWORD(STACK[0x21E0]) = v129 + v221;
  v223 = -778879569 - 737505385 * LODWORD(STACK[0x21C8]);
  LODWORD(v124) = -778879569 - 737505385 * LODWORD(STACK[0x21A0]);
  LODWORD(v129) = -737505385 * LODWORD(STACK[0x20B8]);
  LODWORD(STACK[0x1EB8]) = v123 - v129;
  LODWORD(v123) = v129 - 778879569;
  LODWORD(v129) = -778879569 - 737505385 * LODWORD(STACK[0x1F98]);
  v224 = -778879569 - 737505385 * LODWORD(STACK[0x1F68]);
  LODWORD(v177) = -778879569 - 737505385 * v177;
  LODWORD(v176) = -778879569 - 737505385 * v176;
  LODWORD(STACK[0x1F68]) = v123 + v129;
  LODWORD(STACK[0x1F98]) = v224 + v129;
  LODWORD(STACK[0x1EA8]) = v177 ^ v224;
  LODWORD(STACK[0x20D8]) = v176 ^ v177;
  LODWORD(STACK[0x1E98]) = v223 - v122;
  LODWORD(STACK[0x1F70]) = v124 ^ v223;
  LODWORD(STACK[0x20B8]) = v176 ^ v124;
  LODWORD(v122) = -737505385 * LODWORD(STACK[0x20C8]);
  v225 = -778879569 - 737505385 * LODWORD(STACK[0x20D0]);
  LODWORD(STACK[0x20F8]) = v157 - 1557759138 - 737505385 * v135;
  LODWORD(STACK[0x20B0]) = v122 - -737505385 * v135;
  LODWORD(v157) = v122 - 778879569;
  LODWORD(v122) = -737505385 * LODWORD(STACK[0x1FD0]);
  LODWORD(STACK[0x2100]) = -737505385 * v206 - -737505385 * v150;
  LODWORD(STACK[0x21C8]) = -737505385 * v150 - v122;
  LODWORD(STACK[0x20E8]) = (v122 - 778879569) ^ v225;
  LODWORD(STACK[0x1F08]) = v157 ^ v225;
  LODWORD(v122) = -737505385 * LODWORD(STACK[0x2038]);
  LODWORD(v157) = -737505385 * LODWORD(STACK[0x2010]);
  LODWORD(STACK[0x2010]) = (v157 - 778879569) ^ (v122 - 778879569);
  v226 = -737505385 * LODWORD(STACK[0x1FE0]);
  LODWORD(v124) = -737505385 * LODWORD(STACK[0x1FC0]);
  LODWORD(STACK[0x1EF0]) = (v124 - 778879569) ^ (v226 - 778879569);
  LODWORD(v123) = -778879569 - 737505385 * LODWORD(STACK[0x2240]);
  LODWORD(v129) = -778879569 - 737505385 * LODWORD(STACK[0x2230]);
  LODWORD(v135) = -778879569 - 737505385 * LODWORD(STACK[0x21F8]);
  LODWORD(v176) = -778879569 - 737505385 * LODWORD(STACK[0x2228]);
  LODWORD(v150) = -778879569 - 737505385 * LODWORD(STACK[0x21B0]);
  LODWORD(v197) = -778879569 - 737505385 * LODWORD(STACK[0x2178]);
  LODWORD(v154) = -778879569 - 737505385 * LODWORD(STACK[0x2148]);
  LODWORD(v178) = -778879569 - 737505385 * LODWORD(STACK[0x20E0]);
  v227 = -737505385 * LODWORD(STACK[0x2088]);
  LODWORD(STACK[0x21F8]) = v227 - v124;
  LODWORD(v124) = v227 - 778879569;
  v228 = -778879569 - 737505385 * LODWORD(STACK[0x2070]);
  v229 = -778879569 - 737505385 * LODWORD(STACK[0x2020]);
  LODWORD(v199) = -778879569 - 737505385 * LODWORD(STACK[0x2030]);
  v230 = -778879569 - 737505385 * LODWORD(STACK[0x2008]);
  LODWORD(v198) = -778879569 - 737505385 * LODWORD(STACK[0x1F90]);
  v231 = -778879569 - 737505385 * v200;
  v232 = -778879569 - 737505385 * v203;
  LODWORD(STACK[0x2240]) = v159 ^ v135;
  LODWORD(STACK[0x1FE0]) = v229 + v135;
  LODWORD(STACK[0x2148]) = v229 + v123;
  LODWORD(v158) = v197 ^ v123;
  LODWORD(STACK[0x2230]) = v199 ^ v197;
  LODWORD(STACK[0x2088]) = v199 ^ v154;
  LODWORD(STACK[0x2228]) = v228 + v154;
  LODWORD(STACK[0x2070]) = v228 ^ v178;
  LODWORD(STACK[0x21A8]) = v198 + v178;
  LODWORD(STACK[0x2030]) = v198 ^ v150;
  LODWORD(v198) = v150 + v129;
  LODWORD(STACK[0x20E0]) = v176 + v129;
  LODWORD(STACK[0x21B0]) = v232 ^ v176;
  v233 = v232 + v230;
  LODWORD(STACK[0x2178]) = v231 ^ v230;
  LODWORD(STACK[0x2048]) = v231 ^ v124;
  LODWORD(v159) = -737505385 * LODWORD(STACK[0x20F0]);
  v234 = v159 - v122;
  LODWORD(v122) = -737505385 * LODWORD(STACK[0x1F48]);
  LODWORD(STACK[0x1EB0]) = v226 - v122;
  v235 = (v122 - 778879569) ^ (v159 - 778879569);
  LODWORD(v123) = -737505385 * LODWORD(STACK[0x2198]);
  LODWORD(v150) = -737505385 * LODWORD(STACK[0x2138]);
  LODWORD(v122) = -778879569 - 737505385 * LODWORD(STACK[0x2128]);
  LODWORD(STACK[0x2138]) = v123 - 778879569 + v122;
  LODWORD(STACK[0x20F0]) = v122 ^ (v150 - 778879569);
  v236 = -778879569 - 737505385 * LODWORD(STACK[0x2210]);
  LODWORD(v122) = -737505385 * LODWORD(STACK[0x2120]);
  LODWORD(v197) = -778879569 - 737505385 * LODWORD(STACK[0x20A0]);
  LODWORD(v124) = -737505385 * LODWORD(STACK[0x2058]);
  LODWORD(v178) = -737505385 * LODWORD(STACK[0x1FD8]);
  LODWORD(STACK[0x2210]) = v157 - v122;
  LODWORD(v157) = -1557759138 - 737505385 * LODWORD(STACK[0x20C0]);
  LODWORD(v154) = v157 + v122;
  v237 = v178 + v157;
  LODWORD(STACK[0x20A0]) = v178 - v124;
  LODWORD(v199) = -737505385 * LODWORD(STACK[0x1F80]);
  LODWORD(v135) = (v124 - 778879569) ^ v236;
  LODWORD(v176) = v197 ^ v236;
  LODWORD(STACK[0x2128]) = (v199 - 778879569) ^ v197;
  LODWORD(v157) = -778879569 - 737505385 * LODWORD(STACK[0x2168]);
  LODWORD(v124) = -737505385 * LODWORD(STACK[0x2098]);
  v238 = -737505385 * LODWORD(STACK[0x2060]);
  v239 = (v238 - 778879569) ^ v157;
  v240 = (v124 - 778879569) ^ v157;
  LODWORD(v157) = -778879569 - 737505385 * LODWORD(STACK[0x2190]);
  LODWORD(v165) = LODWORD(STACK[0x2160]) - 778879569;
  LODWORD(v159) = -737505385 * LODWORD(STACK[0x2118]);
  LODWORD(v122) = -737505385 * LODWORD(STACK[0x1F40]);
  LODWORD(v178) = (v122 - 778879569) ^ v157;
  LODWORD(v197) = v165 + v157;
  LODWORD(STACK[0x21A0]) = (v159 - 778879569) ^ v165;
  LODWORD(v165) = -737505385 * LODWORD(STACK[0x22A0]);
  LODWORD(STACK[0x2060]) = v199 - v165;
  LODWORD(v157) = -778879569 - 737505385 * LODWORD(STACK[0x2278]);
  LODWORD(v199) = -778879569 - 737505385 * LODWORD(STACK[0x2220]);
  v241 = -778879569 - 737505385 * LODWORD(STACK[0x21C0]);
  v242 = -737505385 * LODWORD(STACK[0x2090]);
  v243 = -737505385 * LODWORD(STACK[0x2080]);
  LODWORD(STACK[0x2160]) = v243 - v150;
  LODWORD(STACK[0x22A0]) = v242 - v243;
  LODWORD(v150) = v242 - 778879569;
  v244 = -778879569 - 737505385 * LODWORD(STACK[0x1FF0]);
  v245 = v157 ^ (v165 - 778879569);
  LODWORD(v165) = v244 ^ v157;
  LODWORD(v150) = v150 ^ v199;
  LODWORD(v157) = v244 + v241;
  v246 = v241 + v199;
  v247 = v159 - v124;
  LODWORD(v159) = v123 - v122;
  LODWORD(v129) = STACK[0x1EA0];
  v248 = LODWORD(STACK[0x20E0]) ^ 0xB08F6AAF ^ ((v129 & 0xB08F6AAF ^ 0xB08F6AAF) + (v129 & 0xB08F6AAF));
  LODWORD(v124) = -737505385 * LODWORD(STACK[0x1F50]);
  LODWORD(v123) = LODWORD(STACK[0x1E98]) + 778879569;
  LODWORD(v122) = v238 - v124;
  v249 = STACK[0x1F18];
  LODWORD(STACK[0x2278]) = LODWORD(STACK[0x2230]) + LODWORD(STACK[0x1F18]);
  LODWORD(STACK[0x2198]) = v249 ^ v245;
  LODWORD(STACK[0x2118]) = v245 - v165;
  LODWORD(v199) = STACK[0x1EF8];
  LODWORD(STACK[0x20C8]) = v165 - LODWORD(STACK[0x1EF8]);
  LODWORD(STACK[0x20D0]) = v199 - v158;
  LODWORD(STACK[0x2038]) = v234 ^ v158;
  LODWORD(STACK[0x2220]) = v234 ^ v240;
  v250 = STACK[0x1F10];
  LODWORD(STACK[0x2058]) = v240 - LODWORD(STACK[0x1F10]);
  LODWORD(v158) = STACK[0x2018];
  LODWORD(STACK[0x21C0]) = v250 - LODWORD(STACK[0x2018]);
  LODWORD(STACK[0x20C0]) = v158 ^ v150;
  LODWORD(STACK[0x2230]) = v150 ^ v247;
  v251 = STACK[0x1EC0];
  LODWORD(STACK[0x1F90]) = v247 - LODWORD(STACK[0x1EC0]);
  LODWORD(STACK[0x2168]) = v251 - v239;
  LODWORD(STACK[0x1FD8]) = v239 - v233;
  LODWORD(STACK[0x1F48]) = v122 + v233;
  LODWORD(STACK[0x2080]) = v122 + v135;
  LODWORD(v122) = STACK[0x1EC8];
  LODWORD(STACK[0x20E0]) = LODWORD(STACK[0x1EC8]) + v135;
  LODWORD(v135) = STACK[0x1EA8];
  LODWORD(STACK[0x2098]) = v122 + LODWORD(STACK[0x1EA8]);
  v252 = STACK[0x1F68];
  LODWORD(STACK[0x2020]) = v135 ^ LODWORD(STACK[0x1F68]);
  LODWORD(v122) = STACK[0x1EB8];
  LODWORD(STACK[0x2090]) = v252 ^ LODWORD(STACK[0x1EB8]);
  LODWORD(STACK[0x2008]) = v176 ^ v122;
  LODWORD(v122) = v176 - LODWORD(STACK[0x1FE0]);
  LODWORD(STACK[0x2018]) = LODWORD(STACK[0x1FE0]) + v129;
  v253 = STACK[0x1F28];
  LODWORD(STACK[0x2190]) = LODWORD(STACK[0x1F28]) + v129;
  LODWORD(v165) = STACK[0x1F38];
  LODWORD(STACK[0x2120]) = v253 + LODWORD(STACK[0x1F38]);
  LODWORD(STACK[0x1F18]) = v165 - v154;
  v254 = STACK[0x2010];
  LODWORD(STACK[0x1FD0]) = LODWORD(STACK[0x2010]) ^ v154;
  LODWORD(STACK[0x1FC0]) = v157 ^ v254;
  v255 = v157 + v198;
  LODWORD(STACK[0x1EF8]) = v198 + v123;
  LODWORD(v165) = STACK[0x1F98];
  LODWORD(STACK[0x1FF0]) = v123 - LODWORD(STACK[0x1F98]);
  v256 = STACK[0x1F00];
  LODWORD(STACK[0x1F98]) = LODWORD(STACK[0x1F00]) + v165;
  LODWORD(v157) = STACK[0x1F30];
  LODWORD(STACK[0x1FE0]) = v256 ^ LODWORD(STACK[0x1F30]);
  LODWORD(v165) = STACK[0x1ED8];
  LODWORD(STACK[0x1F10]) = LODWORD(STACK[0x1ED8]) + v157;
  LODWORD(v157) = STACK[0x1EE0];
  LODWORD(STACK[0x1F80]) = v165 + LODWORD(STACK[0x1EE0]);
  LODWORD(STACK[0x2010]) = v159 ^ v157;
  LODWORD(v165) = STACK[0x1F60];
  LODWORD(STACK[0x1F30]) = v159 + LODWORD(STACK[0x1F60]);
  LODWORD(STACK[0x1F60]) = v165 - v237;
  LODWORD(v165) = STACK[0x1F20];
  LODWORD(STACK[0x1F68]) = v237 + LODWORD(STACK[0x1F20]);
  LODWORD(v159) = STACK[0x1EE8];
  LODWORD(STACK[0x1F00]) = LODWORD(STACK[0x1EE8]) + v165;
  LODWORD(STACK[0x1EE8]) = v159 + v197;
  LODWORD(v165) = STACK[0x1F78];
  LODWORD(STACK[0x1F50]) = v197 - LODWORD(STACK[0x1F78]);
  LODWORD(STACK[0x1F28]) = v235 ^ v165;
  LODWORD(v165) = STACK[0x2028];
  LODWORD(STACK[0x1F20]) = v235 - LODWORD(STACK[0x2028]);
  LODWORD(v159) = STACK[0x1FA0];
  LODWORD(STACK[0x1EE0]) = v165 ^ LODWORD(STACK[0x1FA0]);
  LODWORD(v165) = STACK[0x1FE8];
  LODWORD(STACK[0x1F40]) = LODWORD(STACK[0x1FE8]) ^ v159;
  LODWORD(v159) = STACK[0x1F70];
  LODWORD(STACK[0x1FA0]) = v165 + LODWORD(STACK[0x1F70]);
  v257 = LODWORD(STACK[0x1FC8]) ^ v159;
  LODWORD(STACK[0x1FE8]) = LODWORD(STACK[0x1FC8]) - v246;
  LODWORD(v165) = STACK[0x1EB0];
  LODWORD(STACK[0x1F70]) = v246 - LODWORD(STACK[0x1EB0]);
  LODWORD(v159) = STACK[0x1F08];
  LODWORD(STACK[0x1F78]) = v165 + LODWORD(STACK[0x1F08]);
  LODWORD(v165) = STACK[0x2068];
  LODWORD(STACK[0x2028]) = LODWORD(STACK[0x2068]) + v159;
  LODWORD(v159) = STACK[0x1EF0];
  LODWORD(STACK[0x1FC8]) = v165 - LODWORD(STACK[0x1EF0]);
  LODWORD(v199) = v178 ^ v159;
  LODWORD(v123) = STACK[0x2030];
  LODWORD(v176) = v178 ^ LODWORD(STACK[0x2030]);
  LODWORD(STACK[0x1F38]) = (v176 ^ v122) - 2 * (((v176 ^ v122) + 16054176) & 0x63EFBDB ^ (v176 ^ v122) & 1);
  LODWORD(v165) = -778879569 - 737505385 * LODWORD(STACK[0x2050]);
  LODWORD(v157) = -778879569 - 737505385 * LODWORD(STACK[0x1F88]);
  v258 = -737505385 * LODWORD(STACK[0x21B8]);
  LODWORD(v159) = (v124 - 778879569) ^ v165;
  LODWORD(v124) = v157 + v165;
  LODWORD(v122) = STACK[0x20F0];
  LODWORD(STACK[0x1EF0]) = v123 ^ LODWORD(STACK[0x20F0]);
  LODWORD(v123) = LODWORD(STACK[0x2150]) ^ v122;
  LODWORD(v158) = LODWORD(STACK[0x2150]) ^ v248;
  LODWORD(v150) = LODWORD(STACK[0x2130]) + v248;
  LODWORD(v122) = STACK[0x20B8];
  LODWORD(STACK[0x1ED8]) = LODWORD(STACK[0x20B8]) + LODWORD(STACK[0x2130]);
  v259 = v122 ^ LODWORD(STACK[0x20A0]);
  LODWORD(v165) = STACK[0x20D8];
  LODWORD(STACK[0x1EC0]) = LODWORD(STACK[0x20D8]) + LODWORD(STACK[0x20A0]);
  LODWORD(STACK[0x20D8]) = v165 ^ v258;
  v260 = v258 - LODWORD(STACK[0x20B0]);
  LODWORD(v165) = STACK[0x2078];
  LODWORD(STACK[0x1E98]) = LODWORD(STACK[0x20B0]) - LODWORD(STACK[0x2078]);
  v261 = v165 - v157;
  LODWORD(v198) = v157 + LODWORD(STACK[0x21E0]);
  LODWORD(v122) = STACK[0x2138];
  LODWORD(STACK[0x1EB8]) = LODWORD(STACK[0x21E0]) ^ LODWORD(STACK[0x2138]);
  v262 = LODWORD(STACK[0x2048]) ^ v122;
  v263 = LODWORD(STACK[0x2170]) + LODWORD(STACK[0x2048]);
  LODWORD(v154) = LODWORD(STACK[0x2170]) - LODWORD(STACK[0x2060]);
  v264 = LODWORD(STACK[0x2060]) ^ LODWORD(STACK[0x2110]);
  LODWORD(v178) = v159 + LODWORD(STACK[0x2110]);
  LODWORD(v165) = STACK[0x2088];
  LODWORD(STACK[0x2170]) = v159 ^ LODWORD(STACK[0x2088]);
  LODWORD(v159) = STACK[0x2070];
  LODWORD(STACK[0x1EA0]) = v165 ^ LODWORD(STACK[0x2070]);
  LODWORD(v159) = LODWORD(STACK[0x20F8]) + v159;
  LODWORD(v177) = LODWORD(STACK[0x20F8]) ^ LODWORD(STACK[0x21F8]);
  LODWORD(v197) = LODWORD(STACK[0x2108]) ^ LODWORD(STACK[0x21F8]);
  LODWORD(v129) = LODWORD(STACK[0x2108]) + v124;
  LODWORD(v165) = v124 ^ LODWORD(STACK[0x2128]);
  LODWORD(v157) = STACK[0x2238];
  LODWORD(STACK[0x1EC8]) = LODWORD(STACK[0x2128]) - LODWORD(STACK[0x2238]);
  LODWORD(v135) = v157 + LODWORD(STACK[0x2210]);
  v265 = LODWORD(STACK[0x2210]) - LODWORD(STACK[0x2100]);
  v266 = LODWORD(STACK[0x2100]) ^ LODWORD(STACK[0x20E8]);
  v267 = STACK[0x2148];
  LODWORD(v157) = LODWORD(STACK[0x20E8]) - LODWORD(STACK[0x2148]);
  LODWORD(STACK[0x2070]) = v176 ^ v255;
  LODWORD(STACK[0x20B8]) = v159 ^ v255;
  LODWORD(STACK[0x2050]) = (v159 ^ v157) - ((2 * (v159 ^ v157) + 212522404) & 0xA13CB32);
  v268 = STACK[0x2160];
  LODWORD(v159) = v267 ^ LODWORD(STACK[0x2160]);
  LODWORD(v122) = STACK[0x1F70];
  LODWORD(STACK[0x2238]) = LODWORD(STACK[0x1F70]) + 2093241588 + v199;
  v269 = STACK[0x1FF0];
  LODWORD(STACK[0x20A0]) = v199 ^ LODWORD(STACK[0x1FF0]);
  v270 = STACK[0x2090];
  LODWORD(STACK[0x21E0]) = v269 ^ LODWORD(STACK[0x2090]);
  LODWORD(STACK[0x1FF0]) = v165 - v270;
  LODWORD(STACK[0x20F0]) = v261 - v165;
  LODWORD(v176) = STACK[0x1EF8];
  LODWORD(STACK[0x1E60]) = v261 ^ LODWORD(STACK[0x1EF8]);
  LODWORD(STACK[0x2090]) = v159 ^ v176;
  LODWORD(STACK[0x21F8]) = v262 + v159;
  LODWORD(STACK[0x1EB0]) = v257 ^ v262;
  LODWORD(STACK[0x2030]) = v157 + v257 - 2007523960;
  v271 = v268 - LODWORD(STACK[0x22A0]);
  LODWORD(v124) = LODWORD(STACK[0x22A0]) - LODWORD(STACK[0x2240]);
  v272 = LODWORD(STACK[0x21B0]) + LODWORD(STACK[0x2240]);
  v273 = LODWORD(STACK[0x21B0]) ^ LODWORD(STACK[0x2228]);
  LODWORD(v176) = LODWORD(STACK[0x2178]) + LODWORD(STACK[0x2228]);
  LODWORD(v159) = LODWORD(STACK[0x2178]) - LODWORD(STACK[0x21C8]);
  LODWORD(v157) = LODWORD(STACK[0x21C8]) - LODWORD(STACK[0x21D8]);
  LODWORD(v199) = STACK[0x21A8];
  v274 = LODWORD(STACK[0x21D8]) ^ LODWORD(STACK[0x21A8]);
  v275 = STACK[0x2020];
  LODWORD(STACK[0x21D8]) = v122 - LODWORD(STACK[0x2020]);
  v276 = STACK[0x1F00];
  LODWORD(STACK[0x2020]) = v275 - LODWORD(STACK[0x1F00]);
  v277 = STACK[0x1F48];
  LODWORD(STACK[0x1F88]) = LODWORD(STACK[0x1F48]) + v276;
  LODWORD(v165) = STACK[0x1FE8];
  LODWORD(STACK[0x2138]) = LODWORD(STACK[0x1FE8]) + v277;
  v278 = STACK[0x1F10];
  LODWORD(STACK[0x21B8]) = v165 + LODWORD(STACK[0x1F10]);
  v279 = STACK[0x1F18];
  LODWORD(STACK[0x2048]) = v278 + LODWORD(STACK[0x1F18]);
  LODWORD(STACK[0x2240]) = v159 ^ v279;
  LODWORD(STACK[0x2160]) = v159 + v123;
  LODWORD(v165) = v123 + 1469258046;
  LODWORD(v123) = STACK[0x1EE0];
  LODWORD(STACK[0x1F08]) = LODWORD(STACK[0x1EE0]) + v165;
  LODWORD(STACK[0x22A0]) = v129 + v123;
  LODWORD(v123) = STACK[0x1EE8];
  LODWORD(STACK[0x1F70]) = v129 + LODWORD(STACK[0x1EE8]);
  LODWORD(STACK[0x1FE8]) = v123 + 1019125118 + v274;
  LODWORD(v165) = STACK[0x2198];
  LODWORD(STACK[0x2150]) = v274 ^ LODWORD(STACK[0x2198]);
  LODWORD(v122) = STACK[0x1F30];
  LODWORD(STACK[0x20F8]) = LODWORD(STACK[0x1F30]) + v165;
  LODWORD(STACK[0x2060]) = v157 ^ v122;
  LODWORD(v165) = STACK[0x1FD8];
  LODWORD(STACK[0x2128]) = v157 - LODWORD(STACK[0x1FD8]);
  LODWORD(STACK[0x21B0]) = v165 - v150;
  LODWORD(STACK[0x2198]) = v150 + v264;
  LODWORD(STACK[0x1F18]) = v264 + v259 - 1703157173;
  LODWORD(STACK[0x1EF8]) = v265 + 1606483086 + v266;
  LODWORD(STACK[0x2130]) = v154 ^ v266;
  v280 = v154 + LODWORD(STACK[0x1FA0]);
  LODWORD(v165) = STACK[0x2120];
  LODWORD(STACK[0x2068]) = LODWORD(STACK[0x1FA0]) ^ LODWORD(STACK[0x2120]);
  LODWORD(STACK[0x2100]) = v177 - v165;
  LODWORD(STACK[0x2108]) = v197 - v177;
  LODWORD(v157) = STACK[0x1F80];
  LODWORD(STACK[0x1EE8]) = LODWORD(STACK[0x1F80]) - v197;
  LODWORD(STACK[0x2120]) = v135 - v157;
  LODWORD(STACK[0x2228]) = v158 - v135;
  LODWORD(v157) = STACK[0x2190];
  LODWORD(STACK[0x2210]) = LODWORD(STACK[0x2190]) ^ v158;
  LODWORD(STACK[0x2110]) = v178 - v157;
  LODWORD(v157) = STACK[0x1F60];
  LODWORD(STACK[0x2190]) = v178 ^ LODWORD(STACK[0x1F60]);
  LODWORD(STACK[0x2148]) = v260 - v157;
  LODWORD(v154) = LODWORD(STACK[0x1F68]) - v260;
  LODWORD(STACK[0x1EE0]) = LODWORD(STACK[0x1F68]) + 2133241869 + v259;
  v281 = STACK[0x21A0];
  LODWORD(v129) = STACK[0x1F90];
  LODWORD(v122) = STACK[0x1F20];
  LODWORD(STACK[0x1FD8]) = LODWORD(STACK[0x1F90]) - 397259857 + LODWORD(STACK[0x1F20]);
  LODWORD(STACK[0x1FA0]) = v263 + v122;
  LODWORD(v157) = STACK[0x2080];
  LODWORD(STACK[0x20B0]) = LODWORD(STACK[0x2080]) - v263;
  LODWORD(v122) = STACK[0x1FC0];
  LODWORD(STACK[0x2078]) = LODWORD(STACK[0x1FC0]) - v157;
  LODWORD(v135) = STACK[0x20C0];
  LODWORD(STACK[0x1F10]) = LODWORD(STACK[0x20C0]) ^ v122;
  LODWORD(v157) = STACK[0x2220];
  LODWORD(STACK[0x2080]) = LODWORD(STACK[0x2220]) - v135;
  v282 = v124 - v157;
  LODWORD(STACK[0x21C8]) = v124 - v157;
  LODWORD(v157) = STACK[0x1F28];
  LODWORD(STACK[0x1F68]) = LODWORD(STACK[0x1F28]) ^ v124;
  LODWORD(v122) = STACK[0x20D8];
  LODWORD(STACK[0x1EA8]) = LODWORD(STACK[0x20D8]) ^ v157;
  LODWORD(STACK[0x2220]) = v122 + v198;
  LODWORD(v157) = STACK[0x2118];
  LODWORD(STACK[0x20C0]) = LODWORD(STACK[0x2118]) + v198 + 1257114655;
  LODWORD(v122) = STACK[0x1ED8];
  LODWORD(STACK[0x2118]) = LODWORD(STACK[0x1ED8]) - v157;
  LODWORD(STACK[0x1ED8]) = v122 + v281;
  v283 = v281 - 1850706004 + v176;
  LODWORD(STACK[0x1E50]) = v283;
  LODWORD(v122) = STACK[0x1F40];
  LODWORD(STACK[0x20D8]) = LODWORD(STACK[0x1F40]) ^ v176;
  LODWORD(STACK[0x1F30]) = v265 ^ (v199 - v281);
  LODWORD(v159) = STACK[0x1F50];
  LODWORD(v178) = (v199 - v281) ^ LODWORD(STACK[0x1F50]);
  LODWORD(STACK[0x2088]) = v178;
  LODWORD(v157) = STACK[0x1EA0];
  LODWORD(v150) = v159 - LODWORD(STACK[0x1EA0]);
  LODWORD(STACK[0x1E58]) = v150;
  LODWORD(v165) = STACK[0x20E0];
  LODWORD(STACK[0x1FC0]) = v157 - LODWORD(STACK[0x20E0]);
  LODWORD(v159) = STACK[0x2008];
  LODWORD(STACK[0x20E0]) = v165 + LODWORD(STACK[0x2008]);
  LODWORD(v165) = STACK[0x1F78];
  v284 = LODWORD(STACK[0x1F78]) ^ v159;
  LODWORD(STACK[0x1E68]) = v284;
  LODWORD(v157) = STACK[0x1FD0];
  LODWORD(STACK[0x21A0]) = v165 + LODWORD(STACK[0x1FD0]);
  LODWORD(v165) = STACK[0x1F98];
  LODWORD(STACK[0x1F00]) = LODWORD(STACK[0x1F98]) - v122;
  LODWORD(v122) = STACK[0x1E98];
  LODWORD(STACK[0x1EA0]) = LODWORD(STACK[0x1E98]) + v165;
  LODWORD(v159) = STACK[0x21C0];
  LODWORD(STACK[0x20E8]) = v122 + LODWORD(STACK[0x21C0]);
  LODWORD(STACK[0x1F98]) = v157 ^ v159 ^ 0x4E2C8888;
  v285 = v129 - LODWORD(STACK[0x1EB8]);
  LODWORD(v159) = STACK[0x1EC0];
  LODWORD(STACK[0x21A8]) = LODWORD(STACK[0x1EC0]) + LODWORD(STACK[0x1EB8]);
  LODWORD(STACK[0x21C0]) = v159 ^ v273;
  LODWORD(v159) = STACK[0x2038];
  LODWORD(STACK[0x1E10]) = v273 - LODWORD(STACK[0x2038]);
  LODWORD(v165) = STACK[0x1EF0];
  v286 = LODWORD(STACK[0x1EF0]) + v159;
  LODWORD(STACK[0x1DC8]) = v286;
  LODWORD(v122) = v165 ^ LODWORD(STACK[0x1FC8]);
  LODWORD(v165) = STACK[0x2058];
  LODWORD(v198) = LODWORD(STACK[0x1FC8]) - LODWORD(STACK[0x2058]);
  LODWORD(STACK[0x2008]) = v198;
  LODWORD(v197) = LODWORD(STACK[0x2028]) + v165;
  v287 = LODWORD(STACK[0x2028]) ^ LODWORD(STACK[0x20C8]);
  LODWORD(v135) = STACK[0x2018];
  LODWORD(STACK[0x1D28]) = LODWORD(STACK[0x20C8]) ^ LODWORD(STACK[0x2018]);
  LODWORD(v129) = STACK[0x2098];
  LODWORD(STACK[0x1E08]) = LODWORD(STACK[0x2098]) + v135;
  LODWORD(v199) = v129 - LODWORD(STACK[0x20D0]);
  v288 = v272 ^ LODWORD(STACK[0x20D0]);
  LODWORD(STACK[0x1DB0]) = v288;
  LODWORD(v135) = LODWORD(STACK[0x1FE0]) + v272;
  LODWORD(STACK[0x1DF8]) = LODWORD(STACK[0x1FE0]) + v271;
  LODWORD(v165) = STACK[0x1EC8];
  LODWORD(v157) = v271 - LODWORD(STACK[0x1EC8]);
  LODWORD(STACK[0x1E38]) = v157;
  LODWORD(v159) = STACK[0x2170];
  LODWORD(v158) = v165 - LODWORD(STACK[0x2170]);
  LODWORD(STACK[0x1DA8]) = v158;
  LODWORD(v165) = STACK[0x2278];
  v289 = v159 + LODWORD(STACK[0x2278]);
  LODWORD(STACK[0x1DE0]) = v289;
  LODWORD(v129) = STACK[0x2168];
  v290 = LODWORD(STACK[0x2168]) ^ v165;
  LODWORD(STACK[0x1DB8]) = v290;
  LODWORD(v165) = STACK[0x2010];
  LODWORD(v123) = v129 + LODWORD(STACK[0x2010]) + 1932734440;
  LODWORD(STACK[0x2168]) = v123;
  LODWORD(v159) = v199;
  LODWORD(STACK[0x1DD0]) = v199;
  v291 = STACK[0x2230];
  LODWORD(v176) = (((v199 & 0x3CE021F9 ^ 0x3CE021F9) + (v199 & 0x3CE021F9)) & (v154 & 0x79200139 ^ 0x1200011 | v154 & 0x79200139 ^ 0x78000128)) + (v165 ^ LODWORD(STACK[0x2230]));
  LODWORD(STACK[0x2018]) = v176 - 2062948967 - ((2 * v176) & 0xA13CB32);
  LODWORD(STACK[0x2178]) = v280;
  LODWORD(STACK[0x2278]) = v154 ^ 0x862D4D61;
  LODWORD(v124) = (v280 - 88252279 - ((2 * v280) & 0xF57AC112)) ^ v154 ^ 0x862D4D61;
  LODWORD(v199) = LODWORD(STACK[0x20F0]) + 1540087193;
  LODWORD(STACK[0x1EC8]) = v159 - 26715340;
  LODWORD(STACK[0x1EC0]) = v284 - 1957450817;
  LODWORD(STACK[0x1EB8]) = v199;
  LODWORD(v124) = (v159 - 26715340) ^ (v284 - 1957450817) ^ v199 ^ (v124 + 1901479783 - ((2 * v124) & 0xE2AC8ECE));
  LODWORD(v159) = v135 - ((2 * v135 - 520473122) & 0xE2AC8ECE) + 1641243222;
  LODWORD(STACK[0x2038]) = v159;
  LODWORD(v177) = (v124 ^ v159) - 2062948967 - ((2 * (v124 ^ v159)) & 0xA13CB32);
  LODWORD(v124) = LODWORD(STACK[0x2188]) + (LODWORD(STACK[0x2188]) >> 15) - ((LODWORD(STACK[0x2188]) + (LODWORD(STACK[0x2188]) >> 15)) >> 6);
  LODWORD(v135) = LODWORD(STACK[0x2180]) ^ v124;
  LODWORD(v165) = v124 - 269958541 - ((v124 - 269958541) >> 11) + ((v124 - 269958541 - ((v124 - 269958541) >> 11)) >> 5);
  LODWORD(STACK[0x1DD8]) = v165;
  LODWORD(v135) = v135 ^ v165;
  LODWORD(STACK[0x1DC0]) = v287 - 1721212952;
  v292 = LODWORD(STACK[0x2090]) - 848549171;
  LODWORD(STACK[0x1F60]) = v292;
  LODWORD(STACK[0x1E98]) = v291 - 1447289169;
  LODWORD(STACK[0x1E70]) = v197;
  LODWORD(STACK[0x1F28]) = v197 - 115108809;
  LODWORD(STACK[0x2170]) = v135;
  LODWORD(STACK[0x1E80]) = v122;
  LODWORD(STACK[0x1F48]) = v122 - 953586120;
  LODWORD(STACK[0x1FE0]) = v178 + 21026845;
  LODWORD(STACK[0x1E90]) = v285;
  LODWORD(STACK[0x1F78]) = v285 - 1018900343;
  LODWORD(v159) = v135 ^ (v291 - 1447289169) ^ v282 ^ v292 ^ v150 ^ (v287 - 1721212952) ^ (v197 - 115108809) ^ v198 ^ v286 ^ v290 ^ (v122 - 953586120) ^ (v178 + 21026845) ^ (v285 - 1018900343) ^ LODWORD(STACK[0x21E0]) ^ v157;
  LODWORD(v165) = LODWORD(STACK[0x2228]) - 989129669;
  LODWORD(v135) = LODWORD(STACK[0x2198]) + 323118334;
  LODWORD(STACK[0x2098]) = v165;
  LODWORD(v124) = LODWORD(STACK[0x1F08]) ^ v165;
  LODWORD(STACK[0x2058]) = v135;
  LODWORD(v165) = LODWORD(STACK[0x21F8]) + 485219456;
  LODWORD(STACK[0x1F90]) = v165;
  LODWORD(v159) = v159 ^ v124 ^ v135 ^ v283 ^ v165;
  LODWORD(v165) = LODWORD(STACK[0x2020]) - 1176252209;
  LODWORD(STACK[0x1F20]) = v165;
  LODWORD(v124) = v165 ^ (v288 - 1957079364);
  LODWORD(v165) = LODWORD(STACK[0x21B0]) + 1663189474;
  LODWORD(STACK[0x1FC8]) = v165;
  LODWORD(v124) = v124 ^ v165 ^ (LODWORD(STACK[0x21D8]) - 1469370646) ^ LODWORD(STACK[0x1FD8]);
  LODWORD(v165) = LODWORD(STACK[0x21A0]) - 1437647700;
  LODWORD(STACK[0x1F80]) = v165;
  LODWORD(v159) = v159 ^ v124 ^ v165 ^ (LODWORD(STACK[0x1F68]) - 1274778126);
  LODWORD(v157) = LODWORD(STACK[0x2120]) + 1969936285;
  LODWORD(STACK[0x2028]) = v157;
  LODWORD(v165) = LODWORD(STACK[0x2048]) + 1290652205;
  LODWORD(STACK[0x1EF0]) = v165;
  LODWORD(v199) = LODWORD(STACK[0x20F8]) - 2047599152;
  v293 = LODWORD(STACK[0x2070]) + 2096229667;
  LODWORD(v124) = v159 ^ v165 ^ v157 ^ v123 ^ v199 ^ LODWORD(STACK[0x2238]) ^ v293;
  LODWORD(v165) = LODWORD(STACK[0x20A0]) - 301647308;
  LODWORD(STACK[0x1F40]) = v165;
  LODWORD(v159) = v165 ^ LODWORD(STACK[0x1F88]) ^ v289;
  LODWORD(v165) = LODWORD(STACK[0x2078]) + 134340968;
  LODWORD(STACK[0x2188]) = v165;
  LODWORD(STACK[0x1E20]) = v158 + 775234327;
  LODWORD(v157) = LODWORD(STACK[0x2190]) - 142202080;
  LODWORD(STACK[0x1E28]) = v157;
  v294 = v159 ^ v165 ^ (v158 + 775234327) ^ v157 ^ LODWORD(STACK[0x20C0]) ^ (LODWORD(STACK[0x1FF0]) - 2008393531);
  LODWORD(v159) = LODWORD(STACK[0x2050]) + 1264537707;
  LODWORD(STACK[0x1D90]) = v159;
  LODWORD(v165) = LODWORD(STACK[0x20B8]) - 483114046;
  LODWORD(STACK[0x1D98]) = v165;
  v295 = v124 ^ v294 ^ v165 ^ LODWORD(STACK[0x2240]) ^ v159;
  LODWORD(v157) = LODWORD(STACK[0x1F30]) - 1108705055;
  LODWORD(STACK[0x1DA0]) = v157;
  LODWORD(v165) = LODWORD(STACK[0x2160]) + 1587058496;
  LODWORD(STACK[0x20C8]) = v165;
  LODWORD(v123) = v157 ^ LODWORD(STACK[0x1EF8]) ^ v165 ^ LODWORD(STACK[0x1EB0]) ^ LODWORD(STACK[0x22A0]) ^ LODWORD(STACK[0x1F70]) ^ LODWORD(STACK[0x2030]);
  LODWORD(v165) = LODWORD(STACK[0x2138]) + 191030275;
  LODWORD(STACK[0x1FD0]) = v165;
  LODWORD(v159) = LODWORD(STACK[0x21B8]) - 790619550;
  LODWORD(STACK[0x1F50]) = v159;
  LODWORD(v123) = v123 ^ v165 ^ v159;
  LODWORD(v159) = LODWORD(STACK[0x1EE8]) + 824240919;
  LODWORD(STACK[0x1E18]) = v159;
  LODWORD(v165) = LODWORD(STACK[0x2108]) + 1497626615;
  LODWORD(STACK[0x2180]) = v165;
  LODWORD(v123) = v123 ^ v159 ^ v165;
  LODWORD(v165) = LODWORD(STACK[0x2148]) + 96865005;
  LODWORD(STACK[0x2050]) = v165;
  LODWORD(v123) = v295 ^ v123 ^ v165;
  LODWORD(v178) = STACK[0x1EA8];
  v296 = LODWORD(STACK[0x1EE0]) ^ LODWORD(STACK[0x1EA8]) ^ LODWORD(STACK[0x1F18]) ^ LODWORD(STACK[0x21A8]) ^ LODWORD(STACK[0x21C0]) ^ LODWORD(STACK[0x1ED8]);
  LODWORD(v157) = LODWORD(STACK[0x2220]) - 1537716304;
  LODWORD(STACK[0x1E78]) = v157;
  LODWORD(v165) = LODWORD(STACK[0x2118]) - 520372085;
  LODWORD(STACK[0x2010]) = v165;
  v297 = LODWORD(STACK[0x20D8]) + 1352297364;
  v298 = LODWORD(STACK[0x2110]) + 776636435;
  v299 = v296 ^ v157 ^ v165 ^ v297 ^ v298;
  LODWORD(v165) = LODWORD(STACK[0x2068]) - 1743889709;
  LODWORD(STACK[0x1F30]) = v165;
  LODWORD(v123) = v123 ^ v299 ^ v165;
  v300 = LODWORD(STACK[0x1F00]) + 1191827488;
  LODWORD(v122) = LODWORD(STACK[0x2210]) - 2035667247;
  LODWORD(v135) = LODWORD(STACK[0x2100]) - 1515002789;
  LODWORD(STACK[0x20B8]) = v122;
  LODWORD(v129) = STACK[0x1F98];
  v301 = STACK[0x1E08];
  LODWORD(v154) = STACK[0x1FC0];
  LODWORD(v197) = LODWORD(STACK[0x2080]) + 1474924459;
  LODWORD(v157) = LODWORD(STACK[0x1FA0]) + 1898879354;
  LODWORD(v176) = LODWORD(STACK[0x20E0]) + 1181858190;
  v302 = LODWORD(STACK[0x20B0]) - 1971322087;
  v303 = LODWORD(STACK[0x2130]) - 1566268119;
  LODWORD(v159) = (__ROR4__(__ROR4__(STACK[0x1F10], 27) ^ 0x2AF941E3, 5) ^ 0x1957CA0F) + 1867428727;
  LODWORD(STACK[0x1F00]) = v159;
  LODWORD(v165) = LODWORD(STACK[0x2060]) + 1892310925;
  LODWORD(STACK[0x1F10]) = v165;
  LODWORD(v124) = STACK[0x1EA0];
  v304 = STACK[0x1E60];
  LODWORD(v198) = LODWORD(STACK[0x2128]) + 807633568;
  v305 = LODWORD(STACK[0x1FE8]) ^ v165 ^ LODWORD(STACK[0x1EA0]) ^ LODWORD(STACK[0x1E60]) ^ v198;
  LODWORD(v165) = STACK[0x2150];
  LODWORD(STACK[0x1E88]) = LODWORD(STACK[0x2150]) - 1613028915;
  LODWORD(v150) = LODWORD(STACK[0x20E8]) + 2038160456;
  LODWORD(v123) = v123 ^ v135 ^ v122 ^ v129 ^ v301 ^ v154 ^ v197 ^ v300 ^ v157 ^ v176 ^ v302 ^ v303 ^ v305 ^ (v165 - 1613028915) ^ v159 ^ v150 ^ v177 ^ 0x849AA7AD;
  v306 = LODWORD(STACK[0x1D28]) - 38287238;
  LODWORD(v123) = LODWORD(STACK[0x2018]) ^ v306 ^ (v123 - 2062948967 - ((2 * v123) & 0xA13CB32));
  LODWORD(STACK[0x1E00]) = v157;
  LODWORD(STACK[0x1DF0]) = v178 ^ 0x125B9DE0;
  LODWORD(STACK[0x20D0]) = v199;
  LODWORD(STACK[0x1EA8]) = v150;
  LODWORD(STACK[0x1E30]) = v293;
  LODWORD(STACK[0x1F98]) = LODWORD(STACK[0x1E58]) ^ 0x68693AE3;
  LODWORD(STACK[0x1FD8]) = v303;
  LODWORD(STACK[0x1DE8]) = v154 ^ 0xB71CE4D1;
  LODWORD(STACK[0x1E48]) = v124 ^ 0x3CDFB4A7;
  LODWORD(STACK[0x1E68]) = v135;
  LODWORD(STACK[0x20C0]) = v297;
  LODWORD(STACK[0x2030]) = v306;
  LODWORD(STACK[0x1E58]) = v302;
  LODWORD(v150) = LODWORD(STACK[0x1F38]) + 1999893370;
  LODWORD(STACK[0x20F0]) = v150;
  LODWORD(STACK[0x1F38]) = v150 ^ 0x7E76523D ^ (v123 - 2042692646 - ((2 * v123) & 0xC7DF7B4));
  LODWORD(STACK[0x1F68]) = v176;
  LODWORD(STACK[0x1E50]) = v197;
  LODWORD(STACK[0x1EB0]) = LODWORD(STACK[0x1D90]) ^ 0x8509E599;
  LODWORD(STACK[0x1EA0]) = v301 ^ 0x146EF265;
  LODWORD(STACK[0x1E08]) = LODWORD(STACK[0x1F70]) ^ 0x9F54328F;
  LODWORD(STACK[0x1F18]) = LODWORD(STACK[0x21A8]) ^ 0x59C51F6D;
  v307 = STACK[0x1ED0];
  LODWORD(STACK[0x1E38]) = v304 ^ 0x5CA486F;
  LODWORD(STACK[0x1EE0]) = v300;
  LODWORD(STACK[0x1F70]) = v298;
  LODWORD(STACK[0x1E60]) = LODWORD(STACK[0x21C8]) ^ 0xF88A66C7;
  LODWORD(STACK[0x1F88]) = v198;
  LODWORD(STACK[0x1DE0]) = LODWORD(STACK[0x22A0]) ^ 0x909749B8;
  LODWORD(STACK[0x1F08]) = LODWORD(STACK[0x1DB8]) ^ 0x6908C157;
  LODWORD(STACK[0x1EF8]) = LODWORD(STACK[0x1ED8]) ^ 0xED34384B;
  v308 = LODWORD(STACK[0x1DD8]) + (LODWORD(STACK[0x2000]) ^ 0xDD9E45DF) + 1883965246 - ((2 * (LODWORD(STACK[0x1DD8]) + (LODWORD(STACK[0x2000]) ^ 0xDD9E45DF))) & 0xE0960E7C);
  LODWORD(v124) = STACK[0x21D0];
  HIDWORD(v309) = LODWORD(STACK[0x2248]) ^ 0x7CB533;
  LODWORD(v309) = LODWORD(STACK[0x2248]) ^ 0x81000000;
  LODWORD(STACK[0x1FF0]) = LODWORD(STACK[0x1DF8]) ^ 0xE64D7C45;
  LOBYTE(v158) = LODWORD(STACK[0x1FB0]) ^ 0xEF;
  LOBYTE(v122) = LODWORD(STACK[0x1FA8]) ^ 0xA9;
  HIDWORD(v309) = (v309 >> 23) ^ (v124 >> 23) ^ (v124 << 9) & 0xFFFBFFFF ^ ((((v124 >> 9) & 1) << 18) | 0x783A928F) ^ 0x13CB330A;
  LODWORD(v309) = HIDWORD(v309);
  LOBYTE(v177) = LODWORD(STACK[0x2040]) ^ 0x99;
  v310 = LODWORD(STACK[0x2140]) ^ 0x3BE10E36;
  LODWORD(v123) = LODWORD(STACK[0x22E0]) ^ 0x8509E599;
  LODWORD(v124) = LODWORD(STACK[0x22C8]) ^ 0xDFB45230;
  LODWORD(v154) = LODWORD(STACK[0x22F0]) ^ 0xBAD1277C;
  LODWORD(STACK[0x1BE0]) = v308;
  v311 = v308 ^ 0xCD8841D6;
  LODWORD(v129) = STACK[0x2298];
  LODWORD(v176) = (((v307 ^ ((v307 & v310) >> 1)) & v123) >> v158) + ((v307 ^ ((v307 & v310) >> 1)) << v122);
  LODWORD(v176) = (v176 + 435764725 - ((2 * v176) & 0x33F27BEA)) ^ LODWORD(STACK[0x2260]);
  v312 = *(*(&off_279CA5FD0 + v129 - 500) + ((v129 - 386) ^ v307)) ^ 0xCD41F5AA;
  LODWORD(v176) = ((v176 - 113 - ((2 * v176) & 0x1E)) ^ LODWORD(STACK[0x2258]));
  *(STACK[0x6C0] + 4 * v176) = (v309 >> 9) ^ (((v312 ^ ((v312 & v310) >> 1)) & v124) << STACK[0x22C0]) ^ 0x47BC1D49 ^ (((v312 ^ ((v312 & v310) >> 1)) & v154) >> v177);
  v313 = *(*(&off_279CA5FD0 + v129 - 313) + (v307 ^ 0xB5) - 6) ^ 0x3CE9;
  v314 = *(*(&off_279CA5FD0 + v129 - 313) + (v307 ^ 0xB5) - 6) ^ 0x3CE9 ^ (v313 >> 4) ^ (v313 >> 3);
  v315 = (v314 - 2062948967 - ((2 * v314) & 0x1CB32)) ^ LODWORD(STACK[0x21D0]);
  v316 = (v315 - 2122533581 - ((2 * v315) & 0x2F96A66)) ^ LODWORD(STACK[0x2248]);
  *(STACK[0x7B0] + 4 * (13 * v176 - 264 * (((12909 * v176) >> 16) >> 2))) = v311 ^ (v316 + 1883965246 - ((2 * v316) & 0xE0960E7C));
  return (*(STACK[0x22F8] + 8 * ((93 * (v307 != 255)) ^ v129)))();
}

uint64_t sub_26AA72B5C(uint64_t a1, int a2, uint64_t a3, char a4, unint64_t a5)
{
  LODWORD(STACK[0x21D8]) = v6 - v5;
  LODWORD(STACK[0x21E0]) = a2 - v11;
  v17 = STACK[0x1E20];
  LODWORD(STACK[0x2248]) = v13 - ((2 * LODWORD(STACK[0x1E20])) & 0x33F27BEA);
  v18 = STACK[0x1F28];
  v19 = STACK[0x1EF0];
  v20 = LODWORD(STACK[0x2240]) ^ 0x239E33CD;
  v21 = STACK[0x1E30];
  v22 = STACK[0x1F30];
  v23 = STACK[0x1DE8];
  LODWORD(STACK[0x21C8]) ^= LODWORD(STACK[0x1F28]) ^ v15 ^ LODWORD(STACK[0x1FE0]) ^ LODWORD(STACK[0x1F90]) ^ LODWORD(STACK[0x1FC8]) ^ LODWORD(STACK[0x1EF0]) ^ LODWORD(STACK[0x1E30]) ^ v20 ^ LODWORD(STACK[0x2180]) ^ LODWORD(STACK[0x1F18]) ^ LODWORD(STACK[0x1F30]) ^ LODWORD(STACK[0x20C0]) ^ LODWORD(STACK[0x1F70]) ^ LODWORD(STACK[0x20B8]) ^ LODWORD(STACK[0x1DE8]) ^ LODWORD(STACK[0x1FD8]) ^ 0x7EDB3260;
  v24 = STACK[0x1E18];
  LODWORD(STACK[0x1EE8]) = v8 - ((2 * LODWORD(STACK[0x1E18])) & 0xA13CB32);
  v25 = STACK[0x1F60];
  v26 = LODWORD(STACK[0x1F60]) ^ 0xCB6DBF56 ^ LODWORD(STACK[0x1F98]) ^ v16;
  v27 = STACK[0x1F78];
  v28 = v16;
  v29 = STACK[0x1F48];
  v30 = STACK[0x1F20];
  v31 = STACK[0x1F40];
  v32 = STACK[0x1E28];
  v33 = v26 ^ LODWORD(STACK[0x1F48]) ^ LODWORD(STACK[0x1F78]) ^ LODWORD(STACK[0x1F08]) ^ LODWORD(STACK[0x2098]) ^ LODWORD(STACK[0x2058]) ^ LODWORD(STACK[0x1F20]) ^ LODWORD(STACK[0x1F80]) ^ LODWORD(STACK[0x20D0]) ^ LODWORD(STACK[0x1F40]) ^ LODWORD(STACK[0x2188]) ^ v17 ^ LODWORD(STACK[0x1E28]);
  STACK[0x1E20] = v9;
  v34 = v15;
  v35 = STACK[0x1DE0];
  v36 = STACK[0x1E08];
  v37 = STACK[0x1DF0];
  v38 = v24 ^ LODWORD(STACK[0x1DE0]) ^ LODWORD(STACK[0x1E08]) ^ LODWORD(STACK[0x1F50]) ^ LODWORD(STACK[0x1DF0]);
  STACK[0x1ED0] = v10;
  v39 = STACK[0x1E00];
  LODWORD(STACK[0x1FE8]) = v33 ^ v38 ^ LODWORD(STACK[0x1E00]) ^ LODWORD(STACK[0x1F68]) ^ LODWORD(STACK[0x1F88]);
  LODWORD(STACK[0x1ED8]) = LODWORD(STACK[0x2190]) - 2 * (v32 & 0x509E59D ^ STACK[0x2190] & 4);
  LODWORD(STACK[0x1FA0]) = LODWORD(STACK[0x1FA0]) - 1960323216 + ~((2 * v39) & 0x33F27BEA);
  v40 = LODWORD(STACK[0x1E70]) - ((2 * v18) & 0x72E4411E);
  LODWORD(STACK[0x2070]) -= (2 * v21) & 0x33F27BEA;
  LODWORD(STACK[0x1F28]) = LODWORD(STACK[0x2020]) - ((2 * v30) & 0xA13CB32);
  v41 = (v23 - 2062948967 - 2 * (v23 & 0x509E59B ^ STACK[0x1FC0] & 2)) ^ LODWORD(STACK[0x21E8]);
  v42 = STACK[0x21E8];
  LODWORD(STACK[0x1FC0]) = v41 - 514129454 - ((2 * v41) & 0xC2B603A4);
  LODWORD(STACK[0x2020]) = LODWORD(STACK[0x2048]) - ((2 * v19) & 0x33F27BEA);
  LODWORD(STACK[0x2048]) = v37 + 435764725 - ((2 * v37) & 0x33F27BEA);
  LODWORD(STACK[0x21D0]) = v34 - 2062948967 - ((2 * v34) & 0xA13CB32);
  v43 = STACK[0x2260];
  v44 = LODWORD(STACK[0x1F00]) ^ LODWORD(STACK[0x2260]);
  HIDWORD(v45) = v44 ^ 0x55555555;
  LODWORD(v45) = v44 ^ 0x19F93DF0;
  LODWORD(STACK[0x1F20]) = v35 - 2062948967 - 2 * (v35 & 0x509E59D ^ STACK[0x22A0] & 4);
  HIDWORD(v45) = (v45 >> 4) ^ 0x836C7B31;
  LODWORD(v45) = HIDWORD(v45);
  LODWORD(STACK[0x2190]) = (v45 >> 28) + 963780751 - ((2 * (v45 >> 28)) & 0x72E4411E);
  LODWORD(STACK[0x1F60]) = LODWORD(STACK[0x2090]) - ((2 * v25) & 0x33F27BEA);
  LODWORD(STACK[0x2090]) = LODWORD(STACK[0x20A0]) - ((2 * v31) & 0x33F27BEA);
  LODWORD(STACK[0x20A0]) = LODWORD(STACK[0x2060]) - ((2 * LODWORD(STACK[0x1F10])) & 0xA13CB32);
  LODWORD(STACK[0x1F40]) = LODWORD(STACK[0x1E80]) - 2 * (v29 & 0x509E59D ^ STACK[0x1E80] & 4);
  LODWORD(STACK[0x2060]) = v28 - 2062948967 - 2 * (v28 & 0x509E59D ^ STACK[0x2008] & 4);
  LODWORD(STACK[0x1F48]) = LODWORD(STACK[0x2068]) - ((2 * v22) & 0xA13CB32);
  LODWORD(STACK[0x2008]) = v20 - 2062948967 - ((2 * v20) & 0xA13CB32);
  v46 = LODWORD(STACK[0x1E90]) - 55119591 + ~((2 * v27) & 0x72E4411E);
  v47 = LODWORD(STACK[0x2258]) ^ v43;
  v48 = v47 ^ 0x9CF0D86C ^ (v40 + 848671942);
  LODWORD(STACK[0x2240]) = v48;
  LODWORD(STACK[0x22A0]) = v47 ^ 0x9CF0D86C ^ v46;
  v49 = (v36 + 435764725 - ((2 * v36) & 0x33F27BEA)) ^ v43;
  LODWORD(STACK[0x2260]) = v43;
  LODWORD(STACK[0x1F78]) = v49 + 963780751 - ((2 * v49) & 0x72E4411E);
  v50 = (LODWORD(STACK[0x21F8]) - 2 * (STACK[0x1F90] & 0x19F93DFD ^ STACK[0x21F8] & 8) + 920984181) ^ v43;
  LODWORD(STACK[0x1F30]) = v50 + 963780751 - ((2 * v50) & 0x72E4411E);
  v51 = LODWORD(STACK[0x21A0]) - 1001882975 - ((2 * LODWORD(STACK[0x1F80])) & 0x33F27BEA);
  v52 = LODWORD(STACK[0x21B8]) - ((2 * LODWORD(STACK[0x1F50])) & 0xA13CB32);
  LODWORD(STACK[0x1D38]) = 84534687;
  v53 = (LODWORD(STACK[0x2078]) - 2 * (STACK[0x2188] & 0x509E59F ^ STACK[0x2078] & 6) - 1928607999) ^ v42;
  LODWORD(STACK[0x1F80]) = v53 - 514129454 - ((2 * v53) & 0xC2B603A4);
  LODWORD(STACK[0x2188]) = LODWORD(STACK[0x2080]) - ((2 * LODWORD(STACK[0x1E50])) & 0x33F27BEA);
  v54 = LODWORD(STACK[0x21B0]) - ((2 * LODWORD(STACK[0x1FC8])) & 0x33F27BEA);
  v55 = LODWORD(STACK[0x1F18]) - 2062948967 - 2 * (STACK[0x1F18] & 0x509E59B ^ STACK[0x21A8] & 2);
  LODWORD(STACK[0x1FC8]) = LODWORD(STACK[0x2088]) - ((2 * LODWORD(STACK[0x1FE0])) & 0x33F27BEA);
  LODWORD(STACK[0x1F00]) = LODWORD(STACK[0x2100]) - ((2 * LODWORD(STACK[0x1E68])) & 0xA13CB32);
  LODWORD(STACK[0x2080]) = LODWORD(STACK[0x1E48]) + 435764725 - ((2 * LODWORD(STACK[0x1E48])) & 0x33F27BEA);
  v56 = LODWORD(STACK[0x20B0]) - ((2 * LODWORD(STACK[0x1E58])) & 0x33F27BEA);
  v57 = (v55 ^ v42) - 514129454 - ((2 * (v55 ^ v42)) & 0xC2B603A4);
  LODWORD(STACK[0x21B0]) = LODWORD(STACK[0x1E38]) - 2062948967 - ((2 * LODWORD(STACK[0x1E38])) & 0xA13CB32);
  v58 = LODWORD(STACK[0x20E0]) - ((2 * LODWORD(STACK[0x1F68])) & 0xA13CB32);
  v59 = LODWORD(STACK[0x2108]) - ((2 * LODWORD(STACK[0x2180])) & 0xA13CB32);
  v60 = LODWORD(STACK[0x1F08]) + 435764725 - ((2 * LODWORD(STACK[0x1F08])) & 0x33F27BEA);
  LODWORD(STACK[0x1FE0]) = LODWORD(STACK[0x2138]) - ((2 * LODWORD(STACK[0x1FD0])) & 0xA13CB32);
  LODWORD(STACK[0x1FD0]) = LODWORD(STACK[0x2128]) - 2 * (STACK[0x1F88] & 0x19F93DFD ^ STACK[0x2128] & 8);
  LODWORD(STACK[0x1F50]) = LODWORD(STACK[0x2110]) - ((2 * LODWORD(STACK[0x1F70])) & 0x33F27BEA);
  v61 = LODWORD(STACK[0x2198]) - ((2 * LODWORD(STACK[0x2058])) & 0xA13CB32);
  LODWORD(STACK[0x1F18]) = LODWORD(STACK[0x2120]) - ((2 * LODWORD(STACK[0x2028])) & 0x33F27BEA);
  LODWORD(STACK[0x1F70]) = LODWORD(STACK[0x2230]) - ((2 * LODWORD(STACK[0x1E98])) & 0xA13CB32);
  LODWORD(STACK[0x1F68]) = LODWORD(STACK[0x2220]) - ((2 * LODWORD(STACK[0x1E78])) & 0xA13CB32);
  LODWORD(STACK[0x2028]) = ((v61 - 1739830633) ^ v42) - 514129454 - ((2 * ((v61 - 1739830633) ^ v42)) & 0xC2B603A4);
  LODWORD(STACK[0x1F08]) = LODWORD(STACK[0x2130]) - ((2 * LODWORD(STACK[0x1FD8])) & 0x33F27BEA);
  LODWORD(STACK[0x1F10]) = LODWORD(STACK[0x2118]) - ((2 * LODWORD(STACK[0x2010])) & 0xA13CB32);
  LODWORD(STACK[0x1FD8]) = LODWORD(STACK[0x1F98]) - 2062948967 - ((2 * LODWORD(STACK[0x1F98])) & 0xA13CB32);
  v62 = (v59 - 565322352) ^ v42;
  LODWORD(STACK[0x21E8]) = v42;
  v63 = 2 * v62;
  v62 -= 514129454;
  v64 = STACK[0x2208];
  v65 = (((v62 - (v63 & 0xC2B603A4)) ^ v64) & 0x81E84AB3 | ((v62 - (v63 & 0x42B603A4)) ^ v64) & 0x7E17B54C) - 2062948967 - 2 * ((((v62 - (v63 & 0xC2B603A4)) ^ v64) & 0x1084091 | ((v62 - (v63 & 0x42B603A4)) ^ v64) & 0x401A50C) ^ ((v62 - (v63 & 0x42B603A4)) ^ v64) & 4);
  LODWORD(STACK[0x20E0]) = v65;
  v66 = LODWORD(STACK[0x2148]) - ((2 * LODWORD(STACK[0x2050])) & 0x33F27BEA);
  LODWORD(STACK[0x2098]) = LODWORD(STACK[0x2228]) - ((2 * LODWORD(STACK[0x2098])) & 0xA13CB32);
  LODWORD(STACK[0x1F98]) = LODWORD(STACK[0x2150]) - ((2 * LODWORD(STACK[0x1E88])) & 0xA13CB32);
  v67 = LODWORD(STACK[0x1E60]) + 435764725 - ((2 * LODWORD(STACK[0x1E60])) & 0x33F27BEA);
  v68 = v47 ^ v51;
  LODWORD(STACK[0x21B8]) = v47 ^ v51;
  v69 = v42 ^ v64;
  v70 = v42 ^ v64 ^ (v58 - 881090777);
  LODWORD(STACK[0x2050]) = v70;
  v71 = (v68 ^ 0xD829215D ^ v70) - 2062948967 - ((2 * (v68 ^ 0xD829215D ^ v70)) & 0xA13CB32);
  v72 = v42 ^ v64 ^ LODWORD(STACK[0x21D0]);
  LODWORD(STACK[0x2088]) = v72;
  v73 = v42 ^ v64 ^ LODWORD(STACK[0x2060]);
  LODWORD(STACK[0x2078]) = v73;
  v74 = v69 ^ 0x6452E44B;
  v75 = v69 ^ 0x6452E44B ^ (v52 + 1441398779);
  LODWORD(STACK[0x2000]) = v75;
  LODWORD(STACK[0x21D0]) = v57 ^ v64;
  v76 = (v57 ^ v64 ^ v75 ^ v71) - 2062948967 - ((2 * (v57 ^ v64 ^ v75 ^ v71)) & 0xA13CB32);
  v77 = v47 ^ v67;
  LODWORD(STACK[0x2060]) = v47 ^ v67;
  v78 = v47 ^ 0xBC7BC516;
  v79 = v47 ^ 0xBC7BC516 ^ (v54 + 2098954199);
  LODWORD(STACK[0x1F90]) = v79;
  v80 = v74 ^ (LODWORD(STACK[0x1EE8]) - 1238708048);
  LODWORD(STACK[0x21F8]) = v80;
  v81 = ((v76 ^ v79) - 2062948967 - ((2 * (v76 ^ v79)) & 0xA13CB32)) ^ v80;
  v82 = v47 ^ 0xBC7BC516 ^ (LODWORD(STACK[0x2248]) + 1210999052);
  LODWORD(STACK[0x2130]) = v82;
  v83 = (v81 - 2062948967 - ((2 * v81) & 0xA13CB32)) ^ v82;
  v84 = v74 ^ (LODWORD(STACK[0x1F28]) + 1055766120);
  LODWORD(STACK[0x2138]) = v84;
  v85 = (v83 - 2062948967 - ((2 * v83) & 0xA13CB32)) ^ v84;
  v86 = (v85 - 2062948967 - ((2 * v85) & 0xA13CB32)) ^ v48;
  LODWORD(STACK[0x2150]) = -2062948966;
  v87 = v74 ^ (LODWORD(STACK[0x1ED8]) + 2089816249);
  LODWORD(STACK[0x2010]) = v87;
  v88 = (v86 - 2062948966 + ~((2 * v86) & 0xA13CB32)) ^ v87;
  v89 = v47 ^ 0xBC7BC516 ^ LODWORD(STACK[0x2048]);
  LODWORD(STACK[0x2148]) = v89;
  v90 = (v88 - 2062948967 - ((2 * v88) & 0xA13CB32)) ^ v89;
  v91 = v47 ^ 0xBC7BC516 ^ (LODWORD(STACK[0x2070]) - 1762972904);
  v92 = LODWORD(STACK[0x1FC0]) ^ v64;
  LODWORD(STACK[0x2068]) = v92;
  LODWORD(STACK[0x20B0]) = v91;
  v93 = v92 ^ v91;
  LODWORD(STACK[0x2048]) = v93;
  v94 = v93 ^ (v90 - 2062948967 - ((2 * v90) & 0xA13CB32));
  v72 ^= 0x6452E44Bu;
  LODWORD(STACK[0x2180]) = v72;
  v95 = (v94 - 2062948967 - ((2 * v94) & 0xA13CB32)) ^ v72;
  v96 = v47 ^ 0xBC7BC516 ^ LODWORD(STACK[0x1FA0]);
  LODWORD(STACK[0x2220]) = v96;
  v97 = (v95 - 2062948967 - ((2 * v95) & 0xA13CB32)) ^ v96;
  v98 = v74 ^ LODWORD(STACK[0x1F20]);
  LODWORD(STACK[0x2120]) = v98;
  v99 = (v97 - 2062948967 - ((2 * v97) & 0xA13CB32)) ^ v98;
  v100 = v47 ^ 0xBC7BC516 ^ (LODWORD(STACK[0x2020]) + 1726416930);
  LODWORD(STACK[0x2248]) = v100;
  v101 = (v99 - 2062948967 - ((2 * v99) & 0xA13CB32)) ^ v100;
  v102 = v47 ^ 0xBC7BC516 ^ (LODWORD(STACK[0x1F60]) - 412784446);
  LODWORD(STACK[0x2228]) = v102;
  v103 = (v101 - 2062948967 - ((2 * v101) & 0xA13CB32)) ^ v102;
  v104 = v74 ^ (LODWORD(STACK[0x1F40]) + 1278432209);
  LODWORD(STACK[0x2118]) = v104;
  v105 = (v103 - 2062948967 - ((2 * v103) & 0xA13CB32)) ^ v104;
  v106 = STACK[0x2258];
  v107 = LODWORD(STACK[0x1F78]) ^ LODWORD(STACK[0x2258]);
  LODWORD(STACK[0x21A0]) = v107;
  v108 = v107 ^ LODWORD(STACK[0x22A0]) ^ (v105 - 2062948967 - ((2 * v105) & 0xA13CB32));
  v109 = v78 ^ (LODWORD(STACK[0x2090]) + 134117417);
  LODWORD(STACK[0x2110]) = v109;
  v110 = LODWORD(STACK[0x1F30]) ^ v106;
  LODWORD(STACK[0x21A8]) = v110;
  v111 = v106;
  v112 = v109 ^ v110 ^ (v108 - 2062948966 + ~((2 * v108) & 0xA13CB32));
  v113 = v74 ^ (LODWORD(STACK[0x1F48]) + 488128620);
  LODWORD(STACK[0x2128]) = v113;
  v114 = (v112 - 2062948967 - ((2 * v112) & 0xA13CB32)) ^ v113;
  LODWORD(STACK[0x2230]) = v73 ^ 0x6452E44B;
  v115 = (v114 - 2062948967 - ((2 * v114) & 0xA13CB32)) ^ v73 ^ 0x6452E44B;
  v116 = v74 ^ LODWORD(STACK[0x2008]);
  LODWORD(STACK[0x2108]) = v116;
  v117 = LODWORD(STACK[0x1F80]) ^ v64;
  LODWORD(STACK[0x2198]) = v117;
  v118 = v116 ^ v117 ^ (v115 - 2062948967 - ((2 * v115) & 0xA13CB32));
  v119 = v78 ^ (LODWORD(STACK[0x1FC8]) + 456791570);
  LODWORD(STACK[0x1F88]) = v119;
  v120 = (v118 - 2062948967 - ((2 * v118) & 0xA13CB32)) ^ v119;
  LODWORD(STACK[0x2100]) = v78 ^ v60;
  v121 = (v120 - 2062948967 - ((2 * v120) & 0xA13CB32)) ^ v78 ^ v60;
  v122 = (LODWORD(STACK[0x2210]) - ((2 * LODWORD(STACK[0x20B8])) & 0x33F27BEA) - 1599902522) ^ LODWORD(STACK[0x2260]);
  v123 = (LODWORD(STACK[0x21C0]) ^ 0x452A8C8A) - 2062948967 - 2 * ((LODWORD(STACK[0x21C0]) ^ 0x452A8C8A) & 0x509E59D ^ STACK[0x21C0] & 4);
  v124 = LODWORD(STACK[0x2160]) - 2 * (STACK[0x20C8] & 0x509E59B ^ STACK[0x2160] & 2);
  v125 = LODWORD(STACK[0x20D8]) - ((2 * LODWORD(STACK[0x20C0])) & 0x33F27BEA);
  v126 = LODWORD(STACK[0x20F8]) - 2 * (STACK[0x20D0] & 0x19F93DF7 ^ STACK[0x20F8] & 2);
  v127 = LODWORD(STACK[0x1EA0]) + 435764725 - ((2 * LODWORD(STACK[0x1EA0])) & 0x33F27BEA);
  LODWORD(STACK[0x2058]) = v78 ^ LODWORD(STACK[0x2080]);
  v128 = LODWORD(STACK[0x1FD0]) + 1243398293;
  LODWORD(STACK[0x2008]) = v78 ^ (v56 - 1535557362);
  v129 = v78 ^ v128;
  LODWORD(STACK[0x20F8]) = v78 ^ v128;
  v130 = LODWORD(STACK[0x1F50]) + 1212401160;
  LODWORD(STACK[0x20C0]) = v78 ^ (LODWORD(STACK[0x1F18]) - 1889266286);
  v131 = v78 ^ v130;
  LODWORD(STACK[0x1FC8]) = v78 ^ v130;
  v132 = LODWORD(STACK[0x1F08]) - 1130503394;
  LODWORD(STACK[0x1DD8]) = v78 ^ (v66 + 532629730);
  v133 = v78 ^ v132;
  LODWORD(STACK[0x20D0]) = v78 ^ v132;
  v134 = v78 ^ (v125 + 1788062089);
  v135 = v78 ^ (v126 - 1611834427);
  LODWORD(STACK[0x1FD0]) = v135;
  LODWORD(STACK[0x1DE0]) = v78 ^ v127;
  v136 = LODWORD(STACK[0x20E8]) - 2 * (STACK[0x1EA8] & 0x509E59B ^ STACK[0x20E8] & 2);
  LODWORD(STACK[0x2160]) = v74 ^ (LODWORD(STACK[0x20A0]) - 170638042);
  LODWORD(STACK[0x2080]) = v74 ^ (LODWORD(STACK[0x1F00]) + 717015540);
  LODWORD(STACK[0x1F78]) = v74 ^ LODWORD(STACK[0x21B0]);
  LODWORD(STACK[0x20B8]) = v74 ^ (LODWORD(STACK[0x1FE0]) - 1871918692);
  v137 = LODWORD(STACK[0x1F70]) + 784729160;
  LODWORD(STACK[0x20C8]) = v74 ^ (LODWORD(STACK[0x1F68]) + 694302025);
  LODWORD(STACK[0x1DE8]) = v74 ^ v137;
  v138 = LODWORD(STACK[0x1F10]) + 1711646244;
  v139 = v74 ^ LODWORD(STACK[0x1FD8]);
  LODWORD(STACK[0x1FC0]) = v139;
  LODWORD(STACK[0x1E38]) = v74 ^ v138;
  v140 = LODWORD(STACK[0x1F98]) + 618989414;
  v141 = v74 ^ (LODWORD(STACK[0x2098]) + 1242888660);
  LODWORD(STACK[0x1F80]) = v141;
  LODWORD(STACK[0x21B0]) = v74 ^ v123;
  LODWORD(STACK[0x20A0]) = v74 ^ (v124 - 475890471);
  LODWORD(STACK[0x2098]) = v74 ^ v140;
  LODWORD(STACK[0x2090]) = v74 ^ (v136 - 24788511);
  v142 = (v121 - 2062948967 - ((2 * v121) & 0xA13CB32)) ^ v65;
  v143 = (v142 - 2062948967 - ((2 * v142) & 0xA13CB32)) ^ v131;
  v144 = (v143 - 2062948967 - ((2 * v143) & 0xA13CB32)) ^ v133;
  v145 = LODWORD(STACK[0x2028]) ^ v64;
  LODWORD(STACK[0x2210]) = v145;
  v146 = v145 ^ v139 ^ (v144 - 2062948967 - ((2 * v144) & 0xA13CB32));
  v147 = (v146 - 2062948967 - ((2 * v146) & 0xA13CB32)) ^ v129;
  v148 = (v147 - 2062948967 - ((2 * v147) & 0xA13CB32)) ^ v141;
  LODWORD(STACK[0x20E8]) = v77 ^ 0xBC7BC516;
  v149 = (v148 - 2062948967 - ((2 * v148) & 0xA13CB32)) ^ v77 ^ 0xBC7BC516;
  v150 = (v149 - 2062948967 - ((2 * v149) & 0xA13CB32)) ^ v135;
  v151 = v150 - 2062948967 - ((2 * v150) & 0xA13CB32);
  v152 = (v122 + 963780751 - ((2 * v122) & 0x72E4411E)) ^ v111;
  LODWORD(STACK[0x21C0]) = v152;
  LODWORD(STACK[0x1E28]) = v134;
  LODWORD(STACK[0x1FE0]) = v152 ^ v134;
  LODWORD(STACK[0x20D8]) = v152 ^ v134 ^ 0x7C225633 ^ v151;
  v153 = STACK[0x22C0];
  v154 = STACK[0x1E20];
  v155 = STACK[0x1E20] << STACK[0x22C0];
  v156 = STACK[0x1ED0];
  v157 = ((STACK[0x2238] & (STACK[0x1E20] << v153)) >> v153) ^ ((STACK[0x2238] & (STACK[0x1ED0] >> a4)) << a4);
  v158 = STACK[0x2140];
  v159 = (LODWORD(STACK[0x2140]) >> 1) ^ 0x1DF0871B;
  LODWORD(STACK[0x1CE0]) = 1004604980;
  v160 = v158 ^ 0x3BE10E34;
  v161 = v159 & (((v157 ^ ((v157 & v14) >> 1)) & (v158 ^ 0x3BE10E34)) >> 2) ^ v157 ^ ((v157 & v14) >> 1);
  v162 = v159 & ((((v158 >> 1) ^ 0x1DF08718) & (v158 ^ 0x3BE10E34)) >> 2);
  LODWORD(STACK[0x1CD8]) = 1004604976;
  LODWORD(STACK[0x2140]) = v158;
  v163 = v158 ^ 0x3BE10E30;
  v164 = v162 & ((v161 & (v158 ^ 0x3BE10E30)) >> 4) ^ v161;
  v165 = STACK[0x2280];
  v166 = STACK[0x2280] << v7;
  v167 = ((STACK[0x1EB8] & (a5 >> v12)) << v12) + ((STACK[0x1EB8] & v166) >> v7);
  v168 = LODWORD(STACK[0x2218]) ^ 0x16DB9A30;
  v169 = v167 ^ ((v167 & v168) >> 1);
  v170 = (LODWORD(STACK[0x2218]) >> 1) ^ 0xB6DCD18;
  LODWORD(STACK[0x1CD0]) = v170 & ((v169 & v168) >> 2) ^ v169 ^ 0x7DD0FCD0 ^ v170 & ((((v168 & (((v170 & ((v169 & v168) >> 2) ^ v169) & v168) >> 1)) >> ((STACK[0x2218] & 0x39 ^ 0xF6) + (STACK[0x2218] & 0x39 ^ 0xCFu) + 60)) & v168) >> 2);
  v171 = ((STACK[0x1EB0] & (a5 >> v12)) << v12) ^ ((STACK[0x1EB0] & (v154 << v7)) >> v7);
  v172 = v159 & (((v171 ^ ((v171 & v14) >> 1)) & v160) >> 2) ^ v171 ^ ((v171 & v14) >> 1);
  v173 = v162 & ((v172 & v163) >> 4) ^ v172;
  v174 = ((STACK[0x2168] & STACK[0x1BE8]) >> v153) + ((STACK[0x2168] & (v156 >> a4)) << a4);
  v175 = v174 ^ ((v174 & v168) >> 1);
  v176 = v170 & ((v175 & v168) >> 2);
  v177 = v176 & 1;
  if ((v176 & 1 & v175) != 0)
  {
    v177 = -v177;
  }

  v178 = (v177 + v175) ^ v176 & 0x3FFFFFFE;
  v179 = ((STACK[0x1EF8] & (v156 >> v12)) << v12) ^ ((STACK[0x1EF8] & STACK[0x1BE8]) >> v153);
  v180 = v170 & ((v170 & v168) >> 2);
  LODWORD(STACK[0x1E18]) = v178 ^ 0x7DD0FCD0 ^ v180 & ((v178 & v168) >> 4);
  v181 = v159 & (((v179 ^ ((v179 & v14) >> 1)) & v160) >> 2) ^ v179 ^ ((v179 & v14) >> 1);
  v182 = v162 & ((v181 & v163) >> 4) ^ v181;
  v183 = ((STACK[0x1EC0] & (v154 << v7)) >> v7) + ((STACK[0x1EC0] & (a5 >> a4)) << a4);
  v184 = v170 & (((v183 ^ ((v183 & v168) >> 1)) & v168) >> 2) ^ v183 ^ ((v183 & v168) >> 1);
  v185 = STACK[0x1EC8];
  LODWORD(STACK[0x1DD0]) = v184 ^ 0x7DD0FCD0 ^ v180 & ((v184 & v168) >> 4);
  v186 = ((v185 & v155) >> v153) | ((v185 & (a5 >> a4)) << a4);
  v187 = v170 & (((v186 ^ ((v186 & v168) >> 1)) & v168) >> 2) ^ v186 ^ ((v186 & v168) >> 1);
  v188 = v180 & ((v187 & v168) >> 4) ^ v187;
  v189 = ((STACK[0x1EE0] & v166) >> v7) | ((STACK[0x1EE0] & (v156 >> v12)) << v12);
  v190 = (((v189 ^ ((v189 & v14) >> 1)) & v14) >> 2) & (v14 >> 1) ^ v189 ^ ((v189 & v14) >> 1);
  LODWORD(STACK[0x1F48]) = v190 ^ 0x7DD0FCD0 ^ ((((v159 & ((v190 & v160) >> 2) & v14) >> (((v159 & ((v190 & v160) >> 2) & 0xBF ^ 0xBF) + (v159 & ((v190 & v160) >> 2) & 0xBF)) ^ 0xBE)) & v14) >> 1);
  v191 = ((((LODWORD(STACK[0x2038]) ^ 0x71564766) & v168) >> 1) + 1901479783 - ((LODWORD(STACK[0x2038]) ^ 0x71564766) & v168 & 0xE2AC8ECE)) ^ LODWORD(STACK[0x2038]);
  v192 = ((v191 & a5) >> a4) ^ ((v191 & v165) << v7);
  LODWORD(STACK[0x2028]) = v192 - 1761943726 - ((2 * v192) & 0x2DF5BEA4);
  LODWORD(STACK[0x1E30]) = v173;
  v193 = v173 ^ 0x44FDDC44 ^ (((v173 & v168) >> 1) + 1157487684 - (v173 & v168 & 0x89FBB888));
  LODWORD(STACK[0x1DC8]) = v164 ^ 0x8509E599;
  v194 = (((v164 & v14) >> 1) - 2062948967 - (v164 & v14 & 0xA13CB32)) ^ v164 ^ 0x8509E599;
  LODWORD(STACK[0x1DC0]) = v182 ^ 0x8509E599;
  v195 = (((v182 & v14) >> 1) - 2062948967 - (v182 & v14 & 0xA13CB32)) ^ v182 ^ 0x8509E599;
  LODWORD(STACK[0x2070]) = v188 ^ 0x8509E599;
  v196 = (((v188 & v168) >> 1) - 2062948967 - (v188 & v168 & 0xA13CB32)) ^ v188 ^ 0x8509E599;
  v197 = (((v194 & v156) >> v12) | ((v194 & v154) << v153)) ^ LODWORD(STACK[0x2210]) ^ (((v193 & v165) << v153) + ((v193 & a5) >> a4)) ^ ((v195 & v156) >> v12) ^ ((v195 & v154) << v7) ^ (((v196 & a5) >> v12) | ((v196 & v165) << v7));
  v198 = (v197 - 2062948967 - ((2 * v197) & 0xA13CB32)) ^ LODWORD(STACK[0x20E0]);
  v199 = LODWORD(STACK[0x21D0]) ^ LODWORD(STACK[0x2100]) ^ (v198 - 2062948967 - ((2 * v198) & 0xA13CB32));
  v200 = LODWORD(STACK[0x21B8]) ^ 0xBC7BC516;
  LODWORD(STACK[0x21B8]) = v200;
  v201 = LODWORD(STACK[0x2198]) ^ v200 ^ (v199 - 2062948967 - ((2 * v199) & 0xA13CB32));
  v202 = (v201 - 2062948967 - ((2 * v201) & 0xA13CB32)) ^ LODWORD(STACK[0x2000]);
  v203 = LODWORD(STACK[0x21A0]) ^ LODWORD(STACK[0x2228]) ^ (v202 - 2062948967 - ((2 * v202) & 0xA13CB32));
  v204 = STACK[0x2150];
  v205 = (v203 + LODWORD(STACK[0x2150]) + ~((2 * v203) & 0xA13CB32)) ^ LODWORD(STACK[0x2120]);
  v206 = (v205 - 2062948967 - ((2 * v205) & 0xA13CB32)) ^ LODWORD(STACK[0x2148]);
  v207 = (v206 - 2062948967 - ((2 * v206) & 0xA13CB32)) ^ LODWORD(STACK[0x2138]);
  v208 = LODWORD(STACK[0x2048]) ^ (v207 - 2062948967 - ((2 * v207) & 0xA13CB32));
  v209 = (v208 - 2062948967 - ((2 * v208) & 0xA13CB32)) ^ LODWORD(STACK[0x2220]);
  v210 = (v209 - 2062948967 - ((2 * v209) & 0xA13CB32)) ^ LODWORD(STACK[0x2130]);
  v211 = LODWORD(STACK[0x2298]) + 1393;
  v212 = (LODWORD(STACK[0x2298]) + 1595215315) & 0xA0EAF47D;
  LODWORD(STACK[0x2238]) = v212;
  v213 = (v212 - 259021735) ^ LODWORD(STACK[0x2170]);
  LODWORD(STACK[0x2020]) = v213;
  v214 = v213 ^ (v210 + 86842116 - ((2 * v210) & 0xA5A3608));
  v215 = (v214 - 2062948967 - ((2 * v214) & 0xA13CB32)) ^ LODWORD(STACK[0x21F8]);
  v216 = (v215 - 2062948967 - ((2 * v215) & 0xA13CB32)) ^ LODWORD(STACK[0x2240]);
  v217 = (v216 - 2062948967 - ((2 * v216) & 0xA13CB32)) ^ LODWORD(STACK[0x2010]);
  v218 = (v217 - 2062948967 - ((2 * v217) & 0xA13CB32)) ^ LODWORD(STACK[0x2180]);
  v219 = (v218 - 2062948967 - ((2 * v218) & 0xA13CB32)) ^ LODWORD(STACK[0x2248]);
  v220 = (v219 - 2062948967 - ((2 * v219) & 0xA13CB32)) ^ LODWORD(STACK[0x2110]);
  v221 = (v220 - 2062948967 - ((2 * v220) & 0xA13CB32)) ^ LODWORD(STACK[0x22A0]);
  v222 = LODWORD(STACK[0x21A8]) ^ LODWORD(STACK[0x2118]) ^ (v221 + v204 + ~((2 * v221) & 0xA13CB32));
  v223 = (v222 - 2062948967 - ((2 * v222) & 0xA13CB32)) ^ LODWORD(STACK[0x2230]);
  v224 = (v223 - 2062948967 - ((2 * v223) & 0xA13CB32)) ^ LODWORD(STACK[0x2128]);
  v225 = (v224 + v204 + ~((2 * v224) & 0xA13CB32)) ^ LODWORD(STACK[0x2108]);
  v226 = (v225 - 2062948967 - ((2 * v225) & 0xA13CB32)) ^ LODWORD(STACK[0x1F90]);
  v227 = LODWORD(STACK[0x2050]) ^ 0x6452E44B;
  LODWORD(STACK[0x1F40]) = v227;
  v228 = (v226 - 2062948967 - ((2 * v226) & 0xA13CB32)) ^ v227;
  v229 = (v228 - 2062948967 - ((2 * v228) & 0xA13CB32)) ^ LODWORD(STACK[0x1F88]);
  v230 = (v229 - 2062948967 - ((2 * v229) & 0xA13CB32)) ^ LODWORD(STACK[0x20F8]);
  v231 = (v230 - 2062948967 - ((2 * v230) & 0xA13CB32)) ^ LODWORD(STACK[0x1FC8]);
  v232 = (v231 - 2062948967 - ((2 * v231) & 0xA13CB32)) ^ LODWORD(STACK[0x1FC0]);
  v233 = (v232 - 2062948967 - ((2 * v232) & 0xA13CB32)) ^ LODWORD(STACK[0x20D0]);
  v234 = (v233 - 2062948967 - ((2 * v233) & 0xA13CB32)) ^ LODWORD(STACK[0x1F80]);
  v235 = (v234 - 2062948967 - ((2 * v234) & 0xA13CB32)) ^ LODWORD(STACK[0x1FD0]);
  v236 = (v235 - 2062948967 - ((2 * v235) & 0xA13CB32)) ^ LODWORD(STACK[0x20E8]);
  v237 = STACK[0x6C0];
  LODWORD(STACK[0x1F98]) = LODWORD(STACK[0x1FE0]) ^ 0x2D189C14 ^ (v236 - 2062948967 - ((2 * v236) & 0xA13CB32));
  v238 = *STACK[0x22D0] & 0x1F9D3120;
  v239 = *STACK[0x22E8];
  STACK[0x1CC8] = v238;
  STACK[0x1CC0] = v239;
  LODWORD(v238) = *(v239 + v238);
  v240 = -812407749 * ((-812407749 * ((v238 ^ STACK[0x1C50]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ STACK[0x1C50]) & 0x7FFFFFFF)) >> 16));
  LODWORD(v240) = *STACK[0x1C50] ^ *(STACK[0x1C80] + (v240 >> 24)) ^ *(STACK[0x1C78] + (v240 >> 24)) ^ *(STACK[0x1D30] + (v240 >> 24)) ^ v240 ^ (51 * (v240 >> 24)) ^ 0xFFFFFF81;
  v241 = -812407749 * ((-812407749 * ((v238 ^ STACK[0x1C58]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ STACK[0x1C58]) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v240) = *(STACK[0x21F0] + ((((v240 & 0x80) != 0) | (2 * v240)) ^ 0x3BLL));
  v242 = (((v240 ^ (4 * v240)) + 88) << 16) | ((*STACK[0x1C58] ^ *(STACK[0x1C80] + (v241 >> 24)) ^ *(STACK[0x1C78] + (v241 >> 24)) ^ v241 ^ *(STACK[0x1D30] + (v241 >> 24)) ^ (51 * (v241 >> 24)) ^ 0xE) << 24);
  v243 = -812407749 * ((-812407749 * ((v238 ^ STACK[0x1C10]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ STACK[0x1C10]) & 0x7FFFFFFF)) >> 16));
  v244 = *(&off_279CA5FD0 + (v211 ^ 0x747));
  v245 = v243 >> 24;
  v246 = *(&off_279CA5FD0 + v211 - 1830);
  v247 = *(&off_279CA5FD0 + (v211 ^ 0x74A)) - 8;
  LODWORD(v243) = *(v244 + (v243 >> 24)) ^ v243 ^ *(v245 + v246 + 1) ^ *(v247 + v245) ^ *STACK[0x1C10];
  HIDWORD(v248) = v243 ^ v245;
  LODWORD(v248) = (v243 ^ (-119 * v245)) << 24;
  v249 = ((v248 >> 27) ^ 0xA2) + ~*(STACK[0x2288] + ((v248 >> 27) ^ 0xF5));
  v250 = -812407749 * ((-812407749 * ((v238 ^ STACK[0x1C68]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ STACK[0x1C68]) & 0x7FFFFFFF)) >> 16));
  v251 = v250 >> 24;
  LODWORD(v250) = *((v250 >> 24) + v246 + 1) ^ *(v244 + (v250 >> 24)) ^ *(v247 + (v250 >> 24)) ^ v250 ^ *STACK[0x1C68];
  HIDWORD(v248) = v250 ^ v251;
  LODWORD(v248) = (v250 ^ (-119 * v251)) << 24;
  LOBYTE(v251) = v248 >> 27;
  v252 = -812407749 * ((-812407749 * ((v238 ^ STACK[0x1D08]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ STACK[0x1D08]) & 0x7FFFFFFF)) >> 16));
  v253 = v252 >> 24;
  LODWORD(v252) = *((v252 >> 24) + v246 + 1) ^ *(v244 + (v252 >> 24)) ^ v252 ^ *(v247 + (v252 >> 24)) ^ *STACK[0x1D08];
  HIDWORD(v248) = v252 ^ (9 * v253);
  LODWORD(v248) = (v252 ^ (-119 * v253)) << 24;
  LODWORD(v252) = *(STACK[0x2158] + ((v248 >> 31) ^ 0xE3));
  HIDWORD(v248) = ~v252;
  LODWORD(v248) = v252 << 24;
  LODWORD(v252) = (((39 - ((v248 >> 25) ^ 0xFFFFFFC1)) & 0x22) + ((((v248 >> 25) ^ 0xFFFFFFC1) - 40) & 0x22)) ^ (-75 * ((((v248 >> 25) ^ 0xFFFFFFC1) - 40) ^ 0x46));
  v254 = -812407749 * ((-812407749 * ((v238 ^ STACK[0x1C08]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ STACK[0x1C08]) & 0x7FFFFFFF)) >> 16));
  v255 = *STACK[0x1C08] ^ *(v244 + (v254 >> 24)) ^ *((v254 >> 24) + v246 + 1) ^ *(v247 + (v254 >> 24)) ^ v254 ^ (-119 * BYTE3(v254)) ^ 0xA5;
  LODWORD(v251) = ((((*(STACK[0x2268] + (v251 ^ 0x5ALL)) ^ 0x20) + 96) ^ 0xD9) << 16) | (((~(2 * v252) + v252) ^ 0xE6 ^ *(STACK[0x22A8] + (((((39 - ((v248 >> 25) ^ 0xC1)) & 0x22) + ((((v248 >> 25) ^ 0xC1) - 40) & 0x22)) ^ (-75 * ((((v248 >> 25) ^ 0xC1) - 40) ^ 0x46))) ^ 0x70))) << 24);
  v256 = STACK[0x1C20];
  v257 = -812407749 * ((-812407749 * ((v238 ^ v256) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ v256) & 0x7FFFFFFF)) >> 16));
  LODWORD(v251) = v251 & 0xFFFF00FF | ((((59 * ((59 * (v238 ^ v256)) ^ ((-812407749 * ((v238 ^ v256) & 0x7FFFFFFF)) >> 16))) ^ *v256 ^ (-119 * BYTE3(v257)) ^ *(v244 + (v257 >> 24)) ^ *((v257 >> 24) + v246 + 1) ^ *(v247 + (v257 >> 24))) ^ 0x50) << 8);
  v258 = -812407749 * ((-812407749 * ((v238 ^ STACK[0x1C38]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ STACK[0x1C38]) & 0x7FFFFFFF)) >> 16));
  v259 = *(STACK[0x1C80] + (v258 >> 24)) ^ *STACK[0x1C38] ^ v258 ^ *(STACK[0x1C78] + (v258 >> 24)) ^ *(STACK[0x1D30] + (v258 >> 24)) ^ (51 * (v258 >> 24));
  v260 = (*(STACK[0x1C80] + (v258 >> 24)) ^ *STACK[0x1C38] ^ v258 ^ *(STACK[0x1C78] + (v258 >> 24)) ^ *(STACK[0x1D30] + (v258 >> 24)) ^ (51 * BYTE3(v258))) | (v255 << 16);
  v261 = STACK[0x1C18];
  v262 = -812407749 * ((-812407749 * ((v238 ^ v261) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ v261) & 0x7FFFFFFF)) >> 16));
  v263 = (51 * BYTE3(v262)) ^ (59 * ((59 * (v238 ^ v261)) ^ ((-812407749 * ((v238 ^ v261) & 0x7FFFFFFF)) >> 16))) ^ *v261 ^ *(STACK[0x1C80] + (v262 >> 24)) ^ *(STACK[0x1C78] + (v262 >> 24)) ^ *(STACK[0x1D30] + (v262 >> 24));
  v264 = -812407749 * ((-812407749 * ((v238 ^ STACK[0x1C48]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ STACK[0x1C48]) & 0x7FFFFFFF)) >> 16));
  v265 = ((((v249 ^ 0x1D) + 96) ^ 0xFD) << 16) | ((*STACK[0x1C48] ^ *(STACK[0x1C80] + (v264 >> 24)) ^ *(STACK[0x1C78] + (v264 >> 24)) ^ *(STACK[0x1D30] + (v264 >> 24)) ^ (v264 ^ (51 * BYTE3(v264))) ^ 0x74) << 8);
  v266 = STACK[0x1C70];
  v267 = -812407749 * ((-812407749 * ((v238 ^ v266) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ v266) & 0x7FFFFFFF)) >> 16));
  v268 = v260 ^ 0xB7;
  v269 = (((v260 ^ 0xB7) & 0x85) + (v259 & 0x85u) + 60160 + STACK[0x1BF0]);
  v270 = *v269;
  v271 = -812407749 * ((-812407749 * ((v269 ^ v238) & 0x7FFFFFFF)) ^ ((-812407749 * ((v269 ^ v238) & 0x7FFFFFFF)) >> 16));
  v272 = *(&off_279CA5FD0 + v211 - 1760) - 8;
  v273 = *(&off_279CA5FD0 + (v211 ^ 0x735));
  v274 = *(&off_279CA5FD0 + v211 - 1787) - 12;
  v275 = v272[v271 >> 24] ^ v270 ^ *(v273 + (v271 >> 24) + 2) ^ v274[(v271 >> 24) + 2] ^ v271;
  HIDWORD(v248) = v275 ^ (5 * (v271 >> 24));
  LODWORD(v248) = (v275 ^ (85 * (v271 >> 24))) << 24;
  v276 = v242 & 0xFFFF00FF | (((*v266 ^ *(STACK[0x1C80] + (v267 >> 24)) ^ *(STACK[0x1C78] + (v267 >> 24)) ^ *(STACK[0x1D30] + (v267 >> 24)) ^ (59 * ((59 * (v238 ^ v266)) ^ ((-812407749 * ((v238 ^ v266) & 0x7FFFFFFF)) >> 16))) ^ (51 * ((-812407749 * ((-812407749 * ((v238 ^ v266) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ v266) & 0x7FFFFFFF)) >> 16))) >> 24))) ^ 0x18) << 8);
  v277 = ((((*(STACK[0x2290] + ((-75 * v263) ^ 0x31)) ^ 0x6C) + 125) ^ 0x3C) << 8) | (((((((v248 >> 27) ^ 0xA2) + ~*(STACK[0x2288] + ((v248 >> 27) ^ 0xF5))) ^ 0x1D) + 96) ^ 0xD2) << 24);
  v278 = -812407749 * ((-812407749 * ((v238 ^ STACK[0x1C28]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ STACK[0x1C28]) & 0x7FFFFFFF)) >> 16));
  v279 = v278 >> 24;
  LODWORD(v278) = *((v278 >> 24) + v246 + 1) ^ *(v244 + (v278 >> 24)) ^ v278 ^ *(v247 + (v278 >> 24)) ^ *STACK[0x1C28];
  HIDWORD(v248) = v278 ^ (9 * v279);
  LODWORD(v248) = (v278 ^ (-119 * v279)) << 24;
  LODWORD(v278) = *(STACK[0x21F0] + ((v248 >> 31) ^ 0xEFLL));
  v280 = (v278 << 26) ^ (v278 << 24) | v265;
  v281 = -812407749 * ((-812407749 * ((v238 ^ STACK[0x1C40]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ STACK[0x1C40]) & 0x7FFFFFFF)) >> 16));
  LODWORD(v279) = v281 ^ *STACK[0x1C40];
  v281 >>= 24;
  v282 = STACK[0x2180];
  HIDWORD(v248) = v279 ^ (85 * v281) ^ v272[v281] ^ *(v273 + v281 + 2) ^ v274[v281 + 2];
  LODWORD(v248) = (v279 ^ (51 * v281) ^ *(STACK[0x1C80] + v281) ^ *(STACK[0x1C78] + v281) ^ *(STACK[0x1D30] + v281)) << 24;
  v283 = STACK[0x1FF8] + ((v248 >> 31) ^ 0xE3);
  v284 = (~*(v283 + 1063) >> 1) | (~*(v283 + 1063) << 7);
  v285 = STACK[0x1C30];
  v286 = -812407749 * ((-812407749 * ((v238 ^ v285) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ v285) & 0x7FFFFFFF)) >> 16));
  STACK[0x1BD8] = v272;
  LOBYTE(v270) = *v285 ^ v272[v286 >> 24];
  v287 = (v286 >> 24) + 2;
  STACK[0x1BD0] = v273;
  LOBYTE(v270) = v270 ^ *(v273 + v287);
  STACK[0x1BC8] = v274;
  v288 = v280 & 0xFFFFFF00 | (v270 ^ v286 ^ v274[v287] ^ (85 * BYTE3(v286))) ^ 0xCF;
  v289 = -812407749 * ((-812407749 * ((v238 ^ STACK[0x1C60]) & 0x7FFFFFFF)) ^ ((-812407749 * ((v238 ^ STACK[0x1C60]) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v238) = *STACK[0x1C60];
  STACK[0x1D00] = v244;
  LOBYTE(v238) = v238 ^ *(v244 + (v289 >> 24));
  STACK[0x1CF8] = v246;
  LOBYTE(v270) = *((v289 >> 24) + v246 + 1);
  STACK[0x1CF0] = v247;
  LOBYTE(v289) = v238 ^ v270 ^ *(v247 + (v289 >> 24)) ^ v289 ^ (-119 * BYTE3(v289)) ^ 0x93;
  v290 = v276 & 0xFFFFFF00 | v289;
  LODWORD(v289) = v290 & 0x509E5B9 ^ v289 & 0x20;
  LODWORD(v238) = v290 - 2062948967;
  v291 = STACK[0x2058];
  LODWORD(v244) = v238 - 2 * v289;
  LODWORD(v289) = v277 | v268;
  LOBYTE(v238) = (v244 ^ 0x99) + ((21 - (v277 | v268)) ^ 0x9B);
  v292 = (v251 & 0xFFFFFF00 | ((v284 ^ 0xBE) - 40) ^ 0x2B) + 2097152000;
  v293 = STACK[0x1D38];
  v294 = v292 - 2062948967 - 2 * (v292 & STACK[0x1D38] ^ (((v284 ^ 0xBE) - 40) ^ 0x2B) & 6);
  LODWORD(v251) = v288 + 1476395008;
  LODWORD(v238) = ((v288 ^ v238 ^ 0x7F) + ((v292 - 103 - 2 * (v292 & STACK[0x1D38] ^ (((v284 ^ 0xBE) - 40) ^ 0x2B) & 6)) ^ 0x66) - 33);
  LODWORD(STACK[0x1F50]) = 16843009 * v238 + 1250370232 - ((33686018 * v238) & 0x950E4570);
  v295 = STACK[0x2198];
  LODWORD(v238) = (v295 - 2062948967 - ((2 * v295) & 0xA13CB32)) ^ v282;
  v296 = v238 - 2062948967 - ((2 * v238) & 0xA13CB32);
  LODWORD(STACK[0x1DB8]) = LODWORD(STACK[0x21C0]) - 2062948967 - ((2 * LODWORD(STACK[0x21C0])) & 0xA13CB32);
  LODWORD(v238) = LODWORD(STACK[0x21A0]) - 2062948967 - ((2 * LODWORD(STACK[0x21A0])) & 0xA13CB32);
  v297 = v289 - 2062948967 - 2 * (v289 & v293 ^ v268 & 6);
  v298 = LODWORD(STACK[0x2258]) ^ 0xB3CE5681 ^ LODWORD(STACK[0x2190]);
  LODWORD(v289) = (LODWORD(STACK[0x2188]) + 1910689184) ^ LODWORD(STACK[0x2260]);
  v299 = LODWORD(STACK[0x2258]) ^ 0xBC7BC516 ^ v289;
  v300 = v289 ^ 0xFB59397 ^ LODWORD(STACK[0x2190]);
  v301 = (2 * v300) & 0xA13CB32;
  LODWORD(v289) = (-1764736117 * (v294 ^ (v300 - 2062948967 - v301))) ^ ((-1764736117 * (v294 ^ (v300 - 2062948967 - v301))) >> 16);
  LODWORD(v273) = v289 ^ (v289 >> 8);
  LODWORD(v289) = -1995247035 * (v273 ^ v251) - ((-1995247035 * (v273 ^ v251)) >> 16);
  v302 = LODWORD(STACK[0x2068]) - 2062948967 - ((2 * LODWORD(STACK[0x2068])) & 0xA13CB32);
  LOBYTE(v279) = (v295 + (LODWORD(STACK[0x21E8]) ^ 0xF9)) & 0x10;
  v303 = ((v289 ^ (v289 >> 8)) - 2062948967 - ((2 * (v289 ^ (v289 >> 8))) & 0xA13CB32)) ^ v244;
  v304 = (484968295 * v303 - ((484968295 * v303) >> 16)) ^ ((484968295 * v303 - ((484968295 * v303) >> 16)) >> 8);
  LODWORD(v279) = 35567641 * (v304 + (v297 ^ 0x8509E599)) + ((35567641 * (v304 + (v297 ^ 0x8509E599))) >> ((v279 ^ 0x10u) + v279));
  LODWORD(v246) = (v279 ^ (v279 >> 8)) - v237 - 2062948967 - ((2 * ((v279 ^ (v279 >> 8)) - v237)) & 0xA13CB32);
  LODWORD(v279) = (-1764736117 * (v294 ^ v296)) ^ ((-1764736117 * (v294 ^ v296)) >> 16);
  v305 = ((v279 ^ (v279 >> 8)) + v251 - 2 * ((v279 ^ (v279 >> 8)) & v251)) ^ v279 ^ (v279 >> 8);
  LODWORD(STACK[0x20E8]) = LODWORD(STACK[0x2210]) - 2062948967 - ((2 * LODWORD(STACK[0x2210])) & 0xA13CB32);
  LODWORD(v251) = (-1764736117 * (v294 ^ (v300 + LODWORD(STACK[0x2150]) + ~v301))) ^ ((-1764736117 * (v294 ^ (v300 + LODWORD(STACK[0x2150]) + ~v301))) >> 16);
  v306 = v305 ^ 0x8509E599;
  LODWORD(v251) = -1995247035 * (v305 ^ 0x8509E599 ^ ((v251 ^ (v251 >> 8)) - 2062948967 - ((2 * (v251 ^ (v251 >> 8))) & 0xA13CB32)));
  LODWORD(v251) = (v251 - WORD1(v251)) ^ ((v251 - WORD1(v251)) >> 8);
  LODWORD(v251) = 484968295 * ((v251 - 2062948967 - ((2 * v251) & 0xA13CB32)) ^ v244);
  LODWORD(v251) = v251 - WORD1(v251) - 2062948967 - ((2 * (v251 - WORD1(v251))) & 0xA13CB32);
  LODWORD(STACK[0x1E20]) = (LODWORD(STACK[0x2060]) ^ 0x3972208F) - 2062948967 - ((2 * (LODWORD(STACK[0x2060]) ^ 0x3972208F)) & 0xA13CB32);
  LODWORD(v248) = __ROR4__(__ROR4__(v295, 7) ^ 0xF25FAF64, 25);
  LODWORD(v279) = LODWORD(STACK[0x2088]) ^ 0xE15B01D2;
  LODWORD(STACK[0x1DB0]) = v248 ^ 0xAADE57E0;
  LODWORD(v279) = (-1764736117 * (v279 ^ v248 ^ 0xAADE57E0 ^ v294)) ^ ((-1764736117 * (v279 ^ v248 ^ 0xAADE57E0 ^ v294)) >> 16);
  LODWORD(v279) = -1995247035 * (v279 ^ (v279 >> 8) ^ v305) - ((-1995247035 * (v279 ^ (v279 >> 8) ^ v305)) >> 16);
  LODWORD(v279) = v279 ^ (v279 >> 8);
  LODWORD(STACK[0x1F60]) = v279 ^ 0x8509E599 ^ ((v279 ^ -v279 ^ ((LODWORD(STACK[0x2078]) ^ 0xE15B01D2) - ((v279 - 2062948967 - ((2 * v279) & 0xA13CB32)) ^ LODWORD(STACK[0x2230])))) + (LODWORD(STACK[0x2078]) ^ 0xE15B01D2));
  LODWORD(v279) = 484968295 * (v244 ^ 0x2BFEFE3C ^ ((v279 ^ 0x2BFEFE3C) - 2062948967 - 2 * ((v279 ^ 0x2BFEFE3C) & 0x509E59B ^ v279 & 2)));
  LODWORD(v279) = WORD1(v279) + v279 - 2 * WORD1(v279);
  LODWORD(v238) = v279 ^ (v279 >> 8) ^ v238 ^ ((v279 ^ (v279 >> 8)) - 2062948967 - ((2 * (v279 ^ (v279 >> 8))) & 0xA13CB32));
  LODWORD(v273) = -1995247035 * (v305 ^ 0x8509E599 ^ (v273 - 2062948967 - ((2 * v273) & 0xA13CB32)));
  LODWORD(v273) = (v273 - WORD1(v273)) ^ ((v273 - WORD1(v273)) >> 8);
  LODWORD(STACK[0x2230]) = v244;
  LODWORD(v273) = 484968295 * ((v273 - 2062948967 - ((2 * v273) & 0xA13CB32)) ^ v244);
  LODWORD(v279) = LODWORD(STACK[0x2170]) ^ 0xF5A2B3B2;
  v307 = -2062948967 - 379838127 * v279 - ((45630114 * v279) & 0xA13CB32);
  v308 = STACK[0x2030];
  LODWORD(v247) = 2143909305 * v308 - 1160697988 - ((2140334962 * v308) & 0x75A24EF8);
  v309 = -2062948967 - 131208163 * v279 - ((6019130 * v279) & 0xA13CB32);
  LODWORD(STACK[0x2178]) ^= 0x306128A8u;
  LODWORD(STACK[0x2188]) = LODWORD(STACK[0x21A8]) ^ 0x8509E599;
  LODWORD(STACK[0x1F70]) = LODWORD(STACK[0x21D0]) ^ 0x8509E599;
  v310 = 35567641 * (((((v251 >> 8) ^ 0x8509E5) - 2062948967 - ((2 * ((v251 >> 8) ^ 0x8509E5)) & 0x13CB32)) ^ v251) + (v297 ^ 0x8509E599));
  v311 = ((v310 + HIWORD(v310)) ^ ((v310 + HIWORD(v310)) >> 8)) - v237;
  LODWORD(v251) = v311 - 2062948965;
  LODWORD(v266) = v311 - 2062948965 - ((2 * v311) & 0xA13CB32) - 2;
  LODWORD(v273) = 35567641 * (((v273 - WORD1(v273)) ^ ((v273 - WORD1(v273)) >> 8)) + (v297 ^ 0x8509E599));
  LODWORD(v244) = ((v273 + WORD1(v273)) ^ ((v273 + WORD1(v273)) >> 8)) - v238;
  v312 = v238 ^ 0x8509E599;
  STACK[0x1F68] = v302 ^ 0x3179BD29u;
  LODWORD(STACK[0x1FE0]) = v266;
  LODWORD(v273) = (8 * v266) & 0x18;
  v313 = (((8 * v266) ^ 0xF7) + 1) & 0x18;
  LODWORD(v289) = v279 ^ v308;
  LODWORD(v279) = v294;
  v314 = STACK[0x2008];
  LODWORD(STACK[0x1CB8]) = (2 * v251) ^ 2;
  LODWORD(STACK[0x1CA4]) = v307;
  LODWORD(STACK[0x1CB0]) = (v307 ^ 0x7AF61A66) + 1;
  LODWORD(STACK[0x1D20]) = LODWORD(STACK[0x2020]) ^ (-1985432003 * v289);
  LODWORD(STACK[0x21C0]) = v273;
  v315 = v273 ^ 8;
  STACK[0x1FA0] = v313;
  LODWORD(STACK[0x1D18]) = (v273 ^ 8) - v313;
  LODWORD(v238) = STACK[0x2028];
  LODWORD(STACK[0x1D10]) = LODWORD(STACK[0x2028]) ^ 0x96FADF52;
  LODWORD(STACK[0x1C9C]) = v309;
  LODWORD(v289) = v309 ^ 0x8509E599;
  v316 = STACK[0x2160];
  LODWORD(STACK[0x1CAC]) = v289;
  LODWORD(STACK[0x1CA0]) = v247;
  LODWORD(STACK[0x1CA8]) = v247 ^ 0xBAD1277C;
  LODWORD(STACK[0x1FD8]) = v238 ^ 0x9D6F8D1F;
  LODWORD(STACK[0x21D0]) = v312;
  LODWORD(STACK[0x2190]) = v273 ^ 8;
  LODWORD(STACK[0x1E98]) = v279;
  LODWORD(STACK[0x2168]) = v246;
  v317 = v244 + (v312 ^ 0x8509E599) - v237 - 2062948967 - ((2 * (v244 + (v312 ^ 0x8509E599) - v237)) & 0xA13CB32);
  LODWORD(STACK[0x2160]) = v317;
  v318 = v305 - 2062948967 - ((2 * v305) & 0xA13CB32);
  LODWORD(STACK[0x1E90]) = v318;
  LODWORD(v238) = v298 ^ 0x8509E599;
  v319 = (v316 ^ 0x7AF61A66) + (v298 ^ 0x8509E599) + 1;
  LODWORD(STACK[0x1F18]) = v319;
  LODWORD(v289) = -900675241 * (v319 - (v306 ^ 0x8509E599)) - ((-900675241 * (v319 - (v306 ^ 0x8509E599))) >> 16);
  v320 = (LODWORD(STACK[0x2230]) ^ 0x7AF61A66) + 1;
  LODWORD(v289) = -681371641 * (v289 + v320 - (v289 >> 8)) + ((-681371641 * (v289 + v320 - (v289 >> 8))) >> 16);
  v321 = v289 - (v289 >> 8);
  LODWORD(STACK[0x1D78]) = v321;
  LODWORD(v289) = -2015765505 * (v321 - (v279 ^ 0x8509E599)) - ((-2015765505 * (v321 - (v279 ^ 0x8509E599))) >> 16);
  LODWORD(STACK[0x1E80]) = v289;
  v322 = ((v289 & 0x7D49C452 ^ 0x7D49C452) + (v289 & 0x7D49C452)) ^ v297;
  LODWORD(STACK[0x1EA0]) = v322;
  v323 = v238 - (v316 ^ 0x8509E599);
  v324 = v318 ^ 0x8509E599;
  LODWORD(v289) = -900675241 * (v323 - v324) - ((-900675241 * (v323 - v324)) >> 16);
  LODWORD(STACK[0x1E48]) = v320;
  LODWORD(v289) = -681371641 * (v289 + v320 - (v289 >> 8)) + ((-681371641 * (v289 + v320 - (v289 >> 8))) >> 16);
  LODWORD(v238) = (v279 ^ 0x7AF61A66) + 1;
  LODWORD(STACK[0x1E88]) = v238;
  LODWORD(v289) = -2015765505 * (v289 + v238 - (v289 >> 8)) - ((-2015765505 * (v289 + v238 - (v289 >> 8))) >> 16);
  LODWORD(STACK[0x1E70]) = v322 ^ 0xF84021CB;
  LODWORD(v289) = -1112457373 * (v289 - (v289 >> 8) + (v322 ^ 0xF84021CB));
  v325 = v289 + WORD1(v289) + LODWORD(STACK[0x1FB8]) - ((v289 + WORD1(v289)) >> 8);
  LODWORD(v289) = (LODWORD(STACK[0x2238]) + 206140738) & 0xF3B6867F;
  LODWORD(STACK[0x1D40]) = v289;
  LODWORD(v289) = v246 << (v289 - 28);
  LODWORD(STACK[0x1E78]) = v289;
  v326 = (v289 ^ 0x17) + 1;
  LODWORD(v289) = v246 ^ 0x8509E599;
  LODWORD(STACK[0x2088]) = v246 ^ 0x8509E599;
  v327 = v325 - (v246 ^ 0x8509E599);
  v328 = v327 - (v246 ^ 0x8509E599);
  v329 = v328 - v289;
  LODWORD(STACK[0x2008]) = v314;
  v330 = STACK[0x20C8];
  if (v329)
  {
    v330 = v314;
  }

  v331 = STACK[0x20C0];
  if ((v329 & 1) == 0)
  {
    v331 = STACK[0x20B8];
  }

  LODWORD(STACK[0x1DA0]) = v330;
  LODWORD(STACK[0x1D98]) = v331;
  if ((v329 & 2) != 0)
  {
    v332 = v330;
  }

  else
  {
    v332 = v331;
  }

  LODWORD(STACK[0x1ED0]) = 8 * v317;
  v333 = (8 * v317) & 0x18;
  v334 = v333 ^ 8;
  v335 = ((v332 ^ 0x8509E599) << ((8 * v317) & 0x18 ^ 8)) | ((v332 ^ 0x8509E599) >> (v326 & 0x18));
  v336 = v335 - 2062948967 - ((2 * v335) & 0xA13CB32);
  v337 = STACK[0x2248];
  v338 = ((v282 ^ 0x8509E599) - (v337 ^ 0x8509E599) - 2062948967 - ((2 * ((v282 ^ 0x8509E599) - (v337 ^ 0x8509E599))) & 0xA13CB32)) ^ 0x8509E599;
  v339 = ((v338 + (v337 ^ 0x8509E599)) ^ 0xC6FCDDBA) + 956506694 + ((2 * (v338 + (v337 ^ 0x8509E599))) & 0x8DF9BB74);
  v340 = v339 + LODWORD(STACK[0x2150]) + ~((2 * v339) & 0xA13CB32);
  v341 = (v337 ^ 0x8509E599) - 2062948967 - ((2 * (v337 ^ 0x8509E599)) & 0xA13CB32);
  LODWORD(STACK[0x1D50]) = v332;
  if ((v326 & 0x18) != 0)
  {
    v342 = v336;
  }

  else
  {
    v342 = v332;
  }

  LODWORD(STACK[0x1F30]) = v342;
  v343 = STACK[0x21B8];
  v344 = STACK[0x1F70];
  if (v327)
  {
    v345 = STACK[0x1F70];
  }

  else
  {
    v345 = STACK[0x21B8];
  }

  LODWORD(STACK[0x2060]) = v345;
  if (v328)
  {
    v346 = STACK[0x2120];
  }

  else
  {
    v346 = v340;
  }

  if (v328)
  {
    v347 = STACK[0x2220];
  }

  else
  {
    v340 = STACK[0x2220];
    v347 = v341;
  }

  if (v328)
  {
    v348 = STACK[0x1F78];
  }

  else
  {
    v341 = STACK[0x2120];
    v348 = v291;
  }

  if (v328)
  {
    v349 = v299;
  }

  else
  {
    v291 = STACK[0x2080];
    v349 = STACK[0x1F78];
  }

  if (v328)
  {
    v299 = STACK[0x2080];
  }

  LODWORD(STACK[0x2068]) = v328;
  v350 = (v328 & 2) == 0;
  if ((v328 & 2) != 0)
  {
    v351 = v340;
  }

  else
  {
    v351 = v341;
  }

  if (v350)
  {
    v352 = v340;
  }

  else
  {
    v352 = v341;
  }

  LODWORD(STACK[0x2210]) = v352;
  if (v350)
  {
    v353 = v346;
  }

  else
  {
    v353 = v347;
  }

  LODWORD(STACK[0x21A0]) = v353;
  if (v350)
  {
    v354 = v347;
  }

  else
  {
    v354 = v346;
  }

  LODWORD(STACK[0x2170]) = v354;
  if (v350)
  {
    v355 = v299;
  }

  else
  {
    v355 = v348;
  }

  if (v350)
  {
    v356 = v348;
  }

  else
  {
    v356 = v299;
  }

  if (v350)
  {
    v357 = v349;
  }

  else
  {
    v357 = v291;
  }

  if (v350)
  {
    v358 = v291;
  }

  else
  {
    v358 = v349;
  }

  v359 = ((v358 ^ 0x8509E599) << v315) ^ ((v358 ^ 0x8509E599) >> (v326 & 0x18));
  v360 = v359 - 2062948967 - ((2 * v359) & 0xA13CB32);
  if ((v326 & 0x18) != 0)
  {
    v362 = v360;
  }

  else
  {
    v362 = v358;
  }

  LODWORD(STACK[0x1F20]) = v362;
  v363 = v326 & 0x18;
  if ((v326 & 0x18) != 0)
  {
    v361 = ((v357 ^ 0x8509E599) << v315) | ((v357 ^ 0x8509E599) >> (v326 & 0x18));
    v364 = v361 - 2062948967 - ((2 * v361) & 0xA13CB32);
  }

  else
  {
    v364 = v357;
  }

  LODWORD(STACK[0x1F28]) = v364;
  v365 = ((v356 ^ 0x8509E599) >> v363) + ((v356 ^ 0x8509E599) << v334);
  v366 = v365 - 2062948967 - ((2 * v365) & 0xA13CB32);
  LODWORD(STACK[0x2298]) = v333;
  if (v333 == 8)
  {
    v368 = v356;
  }

  else
  {
    v368 = v366;
  }

  LODWORD(STACK[0x1F78]) = v368;
  v369 = -900675241 * (v338 - v324) - ((-900675241 * (v338 - v324)) >> 16);
  v370 = 986716930 - 681371641 * (v369 + v320 - (v369 >> 8)) - ((784740366 * (v369 + v320 - (v369 >> 8))) & 0x75A03604);
  v371 = STACK[0x1F68] ^ v370 ^ 0x8EA043B2 ^ (((v370 & 0xF79D4B54 ^ 0x3AF2BFAB) & (v370 ^ 0x3AD01B02)) - 2062948967 - ((2 * ((v370 & 0xF79D4B54 ^ 0x3AF2BFAB) & (v370 ^ 0x3AD01B02))) & 0xA13CB32));
  LODWORD(STACK[0x1D48]) = v355;
  if (v333 == 8)
  {
    v372 = v355;
  }

  else
  {
    v367 = ((v355 ^ 0x8509E599) << v334) ^ ((v355 ^ 0x8509E599) >> v363);
    v372 = v367 - 2062948967 - ((2 * v367) & 0xA13CB32);
  }

  LODWORD(STACK[0x1F68]) = v372;
  v373 = STACK[0x2108];
  if (v327)
  {
    v374 = STACK[0x2108];
  }

  else
  {
    v374 = v344;
  }

  LODWORD(STACK[0x2248]) = v374;
  v375 = STACK[0x2148];
  v376 = STACK[0x20B0];
  if (v327)
  {
    v377 = STACK[0x20B0];
  }

  else
  {
    v377 = STACK[0x2148];
  }

  LODWORD(STACK[0x2220]) = v377;
  v378 = STACK[0x21B0];
  if (v327)
  {
    v378 = STACK[0x2090];
  }

  LODWORD(STACK[0x2080]) = v378;
  v379 = STACK[0x20A0];
  if (v327)
  {
    v379 = STACK[0x2098];
  }

  LODWORD(STACK[0x2078]) = v379;
  if (v327)
  {
    v380 = STACK[0x2000];
  }

  else
  {
    v380 = v373;
  }

  if ((v327 & 1) == 0)
  {
    v343 = STACK[0x2000];
  }

  LODWORD(STACK[0x21B8]) = v343;
  if (v327)
  {
    v381 = v375;
  }

  else
  {
    v381 = STACK[0x2138];
  }

  if (v327)
  {
    v382 = v371;
  }

  else
  {
    v382 = v376;
  }

  if (v327)
  {
    v383 = STACK[0x2138];
  }

  else
  {
    v383 = v371;
  }

  if ((v327 & 2) != 0)
  {
    v384 = v345;
  }

  else
  {
    v384 = v380;
  }

  v385 = ((v384 ^ 0x8509E599) << v315) ^ ((v384 ^ 0x8509E599) >> v363);
  v386 = v385 - 2062948967 - ((2 * v385) & 0xA13CB32);
  v387 = ((v323 - 2062948967 - ((2 * v323) & 0xA13CB32)) ^ LODWORD(STACK[0x21F8])) - v323 + 2 * (v323 & (LODWORD(STACK[0x21F8]) ^ LODWORD(STACK[0x20A8])));
  v388 = v387 - 2062948967 - ((2 * v387) & 0xA13CB32);
  LODWORD(STACK[0x1D68]) = v384;
  if ((v326 & 0x18) != 0)
  {
    v389 = v386;
  }

  else
  {
    v389 = v384;
  }

  LODWORD(STACK[0x1F70]) = v389;
  v390 = v325;
  v391 = STACK[0x2010];
  if (v325)
  {
    v392 = STACK[0x2130];
  }

  else
  {
    v392 = STACK[0x2010];
  }

  if (v325)
  {
    v393 = v388;
  }

  else
  {
    v393 = STACK[0x2130];
  }

  LODWORD(STACK[0x2108]) = v393;
  if (v325)
  {
    v394 = STACK[0x2240];
  }

  else
  {
    v394 = v388;
  }

  if (v325)
  {
    v395 = v391;
  }

  else
  {
    v395 = STACK[0x2240];
  }

  LODWORD(STACK[0x20B0]) = v395;
  if (v325)
  {
    v396 = STACK[0x1F60];
  }

  else
  {
    v396 = STACK[0x2128];
  }

  if (v325)
  {
    v397 = STACK[0x2118];
  }

  else
  {
    v397 = STACK[0x1F60];
  }

  if (v325)
  {
    v398 = STACK[0x2188];
  }

  else
  {
    v398 = STACK[0x2118];
  }

  if (v325)
  {
    v399 = STACK[0x2128];
  }

  else
  {
    v399 = STACK[0x2188];
  }

  v400 = v390;
  LODWORD(STACK[0x21A8]) = v390;
  if ((v390 & 2) != 0)
  {
    v401 = v398;
  }

  else
  {
    v401 = v396;
  }

  v402 = v315;
  v403 = ((v401 ^ 0x8509E599) << v315) + ((v401 ^ 0x8509E599) >> (v326 & 0x18));
  v404 = v403 - 2062948967 - ((2 * v403) & 0xA13CB32);
  if ((v390 & 2) != 0)
  {
    v405 = v394;
  }

  else
  {
    v405 = v392;
  }

  if ((v390 & 2) != 0)
  {
    v406 = v399;
  }

  else
  {
    v406 = v397;
  }

  if ((v390 & 2) != 0)
  {
    v407 = v393;
  }

  else
  {
    v407 = v395;
  }

  v408 = ((v406 ^ 0x8509E599) >> (v326 & 0x18)) ^ ((v406 ^ 0x8509E599) << v334);
  v409 = v408 - 2062948967 - ((2 * v408) & 0xA13CB32);
  LODWORD(STACK[0x1D60]) = v401;
  if ((v326 & 0x18) != 0)
  {
    v410 = v404;
  }

  else
  {
    v410 = v401;
  }

  LODWORD(STACK[0x1F10]) = v410;
  v411 = ((v405 ^ 0x8509E599) << v334) | ((v405 ^ 0x8509E599) >> (v326 & 0x18));
  v412 = v411 - 2062948967 - ((2 * v411) & 0xA13CB32);
  v413 = (LODWORD(STACK[0x20E8]) ^ 0x8509E599) - 2062948967 - ((2 * (LODWORD(STACK[0x20E8]) ^ 0x8509E599)) & 0xA13CB32);
  LODWORD(STACK[0x2138]) = v406;
  if ((v326 & 0x18) != 0)
  {
    v414 = v409;
  }

  else
  {
    v414 = v406;
  }

  LODWORD(STACK[0x1F00]) = v414;
  LODWORD(STACK[0x2048]) = v405;
  if ((v326 & 0x18) != 0)
  {
    v405 = v412;
  }

  LODWORD(STACK[0x2240]) = v405;
  v415 = STACK[0x20E0];
  if (v329)
  {
    v415 = STACK[0x20F8];
  }

  v416 = STACK[0x2110];
  if (v329)
  {
    v417 = STACK[0x2110];
  }

  else
  {
    v417 = STACK[0x21D0];
  }

  if (v329)
  {
    v416 = STACK[0x22A0];
    v418 = STACK[0x2228];
  }

  else
  {
    v418 = STACK[0x22A0];
  }

  if (v329)
  {
    v419 = STACK[0x21D0];
  }

  else
  {
    v419 = STACK[0x2228];
  }

  LODWORD(STACK[0x1D70]) = v413;
  v420 = STACK[0x2100];
  if ((v329 & 1) == 0)
  {
    v420 = v413;
  }

  LODWORD(STACK[0x1DA8]) = v329;
  v421 = (v329 & 2) == 0;
  if ((v329 & 2) != 0)
  {
    v422 = v417;
  }

  else
  {
    v422 = v418;
  }

  if (v421)
  {
    v423 = v417;
  }

  else
  {
    v423 = v418;
  }

  if (v421)
  {
    v424 = v419;
  }

  else
  {
    v424 = v416;
  }

  if (v421)
  {
    v425 = v416;
  }

  else
  {
    v425 = v419;
  }

  LODWORD(STACK[0x2110]) = v425;
  v426 = ((v423 ^ 0x8509E599) >> (v326 & 0x18)) | ((v423 ^ 0x8509E599) << v402);
  v427 = v426 - 2062948967 - ((2 * v426) & 0xA13CB32);
  LODWORD(STACK[0x1D90]) = v415;
  LODWORD(STACK[0x1D88]) = v420;
  if (v421)
  {
    v428 = v415;
  }

  else
  {
    v428 = v420;
  }

  LODWORD(STACK[0x2198]) = v428;
  v429 = ((v422 ^ 0x8509E599) >> (v326 & 0x18)) + ((v422 ^ 0x8509E599) << v402);
  v430 = v429 - 2062948967 - ((2 * v429) & 0xA13CB32);
  v431 = (v424 ^ 0x8509E599) - 2062948967 - 2 * ((v424 ^ 0x8509E599) & STACK[0x1D38] ^ v424 & 6);
  LODWORD(STACK[0x2130]) = v423;
  if ((v326 & 0x18) != 0)
  {
    v432 = v427;
  }

  else
  {
    v432 = v423;
  }

  LODWORD(STACK[0x1EE0]) = v432;
  v433 = ((v431 ^ 0x8509E599) >> (v326 & 0x18)) | ((v431 ^ 0x8509E599) << v334);
  v434 = v433 - 2062948967 - ((2 * v433) & 0xA13CB32);
  LODWORD(STACK[0x1E08]) = v422;
  if ((v326 & 0x18) != 0)
  {
    v435 = v430;
  }

  else
  {
    v435 = v422;
  }

  LODWORD(STACK[0x1ED8]) = v435;
  v436 = ((v351 ^ 0x8509E599) >> (v326 & 0x18)) + ((v351 ^ 0x8509E599) << v402);
  v437 = v436 - 2062948967 - ((2 * v436) & 0xA13CB32);
  LODWORD(STACK[0x2148]) = v431;
  if ((v326 & 0x18) != 0)
  {
    v438 = v434;
  }

  else
  {
    v438 = v431;
  }

  LODWORD(STACK[0x1EF0]) = v438;
  v439 = ((v407 ^ 0x8509E599) >> (v326 & 0x18)) ^ ((v407 ^ 0x8509E599) << v334);
  v440 = v439 - 2062948967 - ((2 * v439) & 0xA13CB32);
  LODWORD(STACK[0x1E10]) = v351;
  if ((v326 & 0x18) != 0)
  {
    v441 = v437;
  }

  else
  {
    v441 = v351;
  }

  LODWORD(STACK[0x1EC0]) = v441;
  v442 = v326 & 0x18;
  if ((v326 & 0x18) != 0)
  {
    v443 = v440;
  }

  else
  {
    v443 = v407;
  }

  LODWORD(STACK[0x1E50]) = v443;
  LODWORD(STACK[0x1D80]) = v327;
  if ((v327 & 2) != 0)
  {
    v444 = STACK[0x2220];
  }

  else
  {
    v444 = v383;
  }

  if ((v327 & 2) != 0)
  {
    v445 = v383;
  }

  else
  {
    v445 = STACK[0x2220];
  }

  if ((v327 & 2) != 0)
  {
    v446 = v381;
  }

  else
  {
    v446 = v382;
  }

  if ((v327 & 2) != 0)
  {
    v447 = v382;
  }

  else
  {
    v447 = v381;
  }

  v448 = STACK[0x2060];
  if ((v327 & 2) != 0)
  {
    v448 = v380;
    v449 = STACK[0x2248];
  }

  else
  {
    v449 = STACK[0x21B8];
  }

  if ((v327 & 2) != 0)
  {
    v450 = STACK[0x21B8];
  }

  else
  {
    v450 = STACK[0x2248];
  }

  v451 = ((v448 ^ 0x8509E599) >> v442) | ((v448 ^ 0x8509E599) << v334);
  v452 = v451 - 2062948967 - ((2 * v451) & 0xA13CB32);
  v453 = ((v449 ^ 0x8509E599) >> v442) + ((v449 ^ 0x8509E599) << v334);
  v454 = v453 - 2062948967 - ((2 * v453) & 0xA13CB32);
  v455 = STACK[0x2078];
  if ((v327 & 2) != 0)
  {
    v455 = STACK[0x2080];
  }

  LODWORD(STACK[0x2000]) = v455;
  v456 = STACK[0x2298];
  LODWORD(STACK[0x20E8]) = v448;
  if (v456 != 8)
  {
    v448 = v452;
  }

  LODWORD(STACK[0x1F60]) = v448;
  LODWORD(STACK[0x2058]) = v449;
  if (v456 == 8)
  {
    v457 = v449;
  }

  else
  {
    v457 = v454;
  }

  LODWORD(STACK[0x2010]) = v457;
  v458 = (v400 & 2) == 0;
  if ((v400 & 2) != 0)
  {
    v459 = v392;
  }

  else
  {
    v459 = v394;
  }

  v460 = STACK[0x6C0];
  if ((v400 & 2) != 0)
  {
    v399 = v397;
    v462 = v396;
  }

  else
  {
    v462 = v398;
  }

  v461 = ((v399 ^ 0x8509E599) << v334) + ((v399 ^ 0x8509E599) >> v442);
  LODWORD(STACK[0x22A0]) = v461 - 2062948967 - ((2 * v461) & 0xA13CB32);
  v463 = LODWORD(STACK[0x2210]) ^ 0x8509E599;
  v464 = STACK[0x2110];
  v465 = ((v464 ^ 0x8509E599) << v334) ^ ((v464 ^ 0x8509E599) >> v442);
  LODWORD(STACK[0x2248]) = v465 + LODWORD(STACK[0x2150]) + ~((2 * v465) & 0xA13CB32);
  LODWORD(STACK[0x2228]) = ((v463 << v334) ^ (v463 >> v442)) - 2062948967 - ((2 * ((v463 << v334) ^ (v463 >> v442))) & 0xA13CB32);
  v466 = STACK[0x21A0];
  v467 = ((v466 ^ 0x8509E599) >> v442) ^ ((v466 ^ 0x8509E599) << v334);
  v468 = v467 - 2062948967 - ((2 * v467) & 0xA13CB32);
  v469 = ((v447 ^ 0x8509E599) << v334) ^ ((v447 ^ 0x8509E599) >> v442);
  v470 = v469 - 2062948967 - ((2 * v469) & 0xA13CB32);
  v471 = v446;
  LODWORD(STACK[0x2180]) = v334;
  v472 = ((v446 ^ 0x8509E599) >> v442) + ((v446 ^ 0x8509E599) << v334);
  v473 = v472 - 2062948967 - ((2 * v472) & 0xA13CB32);
  v474 = ((v450 ^ 0x8509E599) << v402) + ((v450 ^ 0x8509E599) >> v442);
  v475 = v474 - 2062948967 - ((2 * v474) & 0xA13CB32);
  v476 = ((v462 ^ 0x8509E599) << v402) | ((v462 ^ 0x8509E599) >> v442);
  v477 = v476 - 2062948967 - ((2 * v476) & 0xA13CB32);
  v478 = STACK[0x2170];
  v479 = ((v478 ^ 0x8509E599) >> v442) + ((v478 ^ 0x8509E599) << v402);
  v480 = v479 - 2062948967 - ((2 * v479) & 0xA13CB32);
  v481 = v444;
  v482 = ((v444 ^ 0x8509E599) >> v442) ^ ((v444 ^ 0x8509E599) << v402);
  v483 = v482 - 2062948967 - ((2 * v482) & 0xA13CB32);
  v484 = ((v445 ^ 0x8509E599) >> v442) + ((v445 ^ 0x8509E599) << v402);
  v485 = v484 - 2062948967 - ((2 * v484) & 0xA13CB32);
  v486 = ((v459 ^ 0x8509E599) << v402) | ((v459 ^ 0x8509E599) >> v442);
  v487 = v486 - 2062948967 - ((2 * v486) & 0xA13CB32);
  if (v458)
  {
    v488 = STACK[0x2108];
  }

  else
  {
    v488 = STACK[0x20B0];
  }

  v489 = ((v488 ^ 0x8509E599) >> v442) | ((v488 ^ 0x8509E599) << v402);
  v490 = v489 - 2062948967 - ((2 * v489) & 0xA13CB32);
  v491 = STACK[0x2298];
  v492 = v464;
  if (LODWORD(STACK[0x2298]) != 8)
  {
    v492 = STACK[0x2248];
  }

  LODWORD(STACK[0x1EC8]) = v492;
  LODWORD(STACK[0x2050]) = v399;
  v493 = STACK[0x22A0];
  if (v491 == 8)
  {
    v493 = v399;
  }

  LODWORD(STACK[0x1EF8]) = v493;
  v494 = STACK[0x2210];
  if (v491 != 8)
  {
    v494 = STACK[0x2228];
  }

  LODWORD(STACK[0x1EB8]) = v494;
  if (v491 == 8)
  {
    v495 = v466;
  }

  else
  {
    v495 = v468;
  }

  LODWORD(STACK[0x1EA8]) = v495;
  LODWORD(STACK[0x1DF8]) = v447;
  if (v491 == 8)
  {
    v496 = v447;
  }

  else
  {
    v496 = v470;
  }

  LODWORD(STACK[0x2118]) = v496;
  LODWORD(STACK[0x1E00]) = v471;
  if (v491 == 8)
  {
    v497 = v471;
  }

  else
  {
    v497 = v473;
  }

  LODWORD(STACK[0x1E58]) = v497;
  v498 = STACK[0x21C0];
  LODWORD(STACK[0x2120]) = v450;
  if (v498 == 8)
  {
    v499 = v450;
  }

  else
  {
    v499 = v475;
  }

  LODWORD(STACK[0x1F08]) = v499;
  LODWORD(STACK[0x1DF0]) = v462;
  if (v498 != 8)
  {
    v462 = v477;
  }

  LODWORD(STACK[0x1EE8]) = v462;
  if (v498 == 8)
  {
    v500 = v478;
  }

  else
  {
    v500 = v480;
  }

  LODWORD(STACK[0x1EB0]) = v500;
  LODWORD(STACK[0x2128]) = v481;
  if (v498 == 8)
  {
    v501 = v481;
  }

  else
  {
    v501 = v483;
  }

  LODWORD(STACK[0x1E60]) = v501;
  LODWORD(STACK[0x21D0]) = v445;
  if (v498 == 8)
  {
    v502 = v445;
  }

  else
  {
    v502 = v485;
  }

  LODWORD(STACK[0x1E68]) = v502;
  LODWORD(STACK[0x2060]) = v459;
  if (v498 == 8)
  {
    v503 = v459;
  }

  else
  {
    v503 = v487;
  }

  if (v498 == 8)
  {
    v504 = v488;
  }

  else
  {
    v504 = v490;
  }

  v505 = -1112457373 * (LODWORD(STACK[0x1E80]) - (LODWORD(STACK[0x1E80]) >> 8) + LODWORD(STACK[0x1E70])) + ((-1112457373 * (LODWORD(STACK[0x1E80]) - (LODWORD(STACK[0x1E80]) >> 8) + LODWORD(STACK[0x1E70]))) >> 16);
  v506 = STACK[0x1FB8];
  v507 = (STACK[0x1E78] & 0x18 ^ 8) - 2122533581 - ((2 * LODWORD(STACK[0x1E78])) & 0x20);
  v508 = STACK[0x1E90];
  v509 = -900675241 * (LODWORD(STACK[0x1F18]) + (v508 ^ 0x7AF61A66)) - 900675241 - ((-900675241 * (LODWORD(STACK[0x1F18]) + (v508 ^ 0x7AF61A66u)) - 900675241) >> 16);
  v510 = -681371641 * (v509 + LODWORD(STACK[0x1E48]) - (v509 >> 8)) + ((-681371641 * (v509 + LODWORD(STACK[0x1E48]) - (v509 >> 8))) >> 16);
  v511 = -2015765505 * (v510 + LODWORD(STACK[0x1E88]) - (v510 >> 8)) - ((-2015765505 * (v510 + LODWORD(STACK[0x1E88]) - (v510 >> 8))) >> 16);
  v512 = v511 - (v511 >> 8) + LODWORD(STACK[0x1E70]);
  v513 = ((v505 + v506 - (v505 >> 8) - 2062948967 - ((2 * (v505 + v506 - (v505 >> 8))) & 0xA13CB32)) ^ 0x8509E599) + (LODWORD(STACK[0x2278]) ^ 0xFABD6089);
  LODWORD(STACK[0x1F18]) = v513;
  LODWORD(STACK[0x21B8]) = (LODWORD(STACK[0x2018]) ^ 0x8509E599) + v506 + -1112457373 * v512 + ((-1112457373 * v512) >> 16) - ((-1112457373 * v512 + ((-1112457373 * v512) >> 16)) >> 8);
  v514 = LODWORD(STACK[0x21A8]) + (LODWORD(STACK[0x2178]) ^ 0x1F80B57D);
  LODWORD(STACK[0x1E88]) = v514;
  v515 = v514 - 2062948967 - ((2 * v514) & 0xA13CB32);
  v516 = LODWORD(STACK[0x1EA0]) ^ 0x7D49C452;
  v517 = v508;
  v518 = STACK[0x1E98];
  if (v513)
  {
    v519 = STACK[0x1E98];
  }

  else
  {
    v519 = v508;
  }

  if (v513)
  {
    v518 = LODWORD(STACK[0x1EA0]) ^ 0x7D49C452;
    v516 = STACK[0x2230];
  }

  else
  {
    v517 = STACK[0x2230];
  }

  if ((v513 & 2) != 0)
  {
    v520 = v519;
  }

  else
  {
    v520 = v516;
  }

  v521 = STACK[0x1FA0];
  if ((v513 & 2) != 0)
  {
    v519 = v516;
    v523 = v517;
  }

  else
  {
    v523 = v518;
  }

  if ((v513 & 2) == 0)
  {
    v518 = v517;
  }

  v522 = ((v520 ^ 0x8509E599) << (v507 & 0xF8 ^ 0x30u)) + ((v520 ^ 0x8509E599) >> STACK[0x1FA0]);
  v524 = v522 - 2062948967 - ((2 * v522) & 0xA13CB32);
  v526 = ((LODWORD(STACK[0x1ED0]) ^ 0xF7) + 1) & 0x18;
  if (!v521)
  {
    v524 = v520;
  }

  v525 = ((v519 ^ 0x8509E599) << (v507 & 0xF8 ^ 0x30u)) ^ ((v519 ^ 0x8509E599) >> v521);
  v528 = v525 - 2062948967 - ((2 * v525) & 0xA13CB32);
  v527 = ((v523 ^ 0x8509E599) << (v507 & 0xF8 ^ 0x30u)) ^ ((v523 ^ 0x8509E599) >> v526);
  v529 = v527 - 2062948967 - ((2 * v527) & 0xA13CB32);
  STACK[0x1EA0] = v507 & 0xF8 ^ 0x30u;
  v530 = ((v518 ^ 0x8509E599) >> v526) | ((v518 ^ 0x8509E599) << (v507 & 0xF8 ^ 0x30u));
  v531 = v530 - 2062948967 - ((2 * v530) & 0xA13CB32);
  if (v507 == -2122533581)
  {
    v532 = v523;
  }

  else
  {
    v519 = v528;
    v532 = v529;
  }

  if (v507 != -2122533581)
  {
    v518 = v531;
  }

  v533 = STACK[0x2140];
  LODWORD(STACK[0x22A0]) = LODWORD(STACK[0x2140]) >> 1;
  v534 = (v533 >> 1) & 0x63636363 ^ 0xC7A6C5C5;
  v535 = STACK[0x22E0];
  v536 = LODWORD(STACK[0x1FB0]);
  v537 = v536 ^ 0xEFu;
  v538 = ((LODWORD(STACK[0x22E0]) ^ 0x8501E581) & v534) >> (v536 ^ 0xEFu);
  v539 = LODWORD(STACK[0x1FA8]);
  v540 = STACK[0x1CE4];
  v541 = v503 ^ (v538 + ((v534 & STACK[0x1CE4]) << (v539 ^ 0xA9u))) ^ v518;
  LODWORD(v538) = LODWORD(STACK[0x22C8]) ^ 0xC7A44220;
  v542 = LODWORD(STACK[0x22F0]) ^ 0xA2C12764;
  v543 = LODWORD(STACK[0x2040]);
  v544 = v543 ^ 0x99u;
  v545 = STACK[0x22C0];
  v546 = LODWORD(STACK[0x2240]) ^ ((v542 & v534) >> (v543 ^ 0x99u)) ^ ((v538 & v534) << STACK[0x22C0]) ^ v532;
  v547 = LODWORD(STACK[0x2218]) >> 1;
  LODWORD(STACK[0x2240]) = v547;
  v548 = v547 & 0x63636363 ^ 0xC5A787C6;
  STACK[0x2228] = v539 ^ 0xA9u;
  v549 = v535 ^ 0x8509E599;
  STACK[0x2278] = v549;
  v550 = v537;
  v551 = v548 & v538;
  v552 = v542 & v548;
  v553 = v504 ^ ((v548 & v549) >> v537) ^ ((v548 & v540) << (v539 ^ 0xA9u)) ^ v524;
  v554 = v553 - 1761943726 - ((2 * v553) & 0x2DF5BEA4);
  v555 = LODWORD(STACK[0x1E50]) ^ ((v552 >> v537) | (v551 << (v539 ^ 0xA9u))) ^ v519;
  LODWORD(v551) = v555 - 1761943726 - ((2 * v555) & 0x2DF5BEA4);
  v556 = STACK[0x2028];
  v557 = (v546 - 1761943726 - ((2 * v546) & 0x2DF5BEA4)) ^ LODWORD(STACK[0x2028]);
  v558 = (v541 - 1761943726 - ((2 * v541) & 0x2DF5BEA4u)) ^ LODWORD(STACK[0x2028]);
  v559 = (((32 * (v558 & 7)) | (v558 >> 3)) ^ 0xA2) + ~*(STACK[0x2288] + (((32 * (v558 & 7)) | (v558 >> 3)) ^ 0xF5));
  v560 = v551 ^ LODWORD(STACK[0x2028]);
  v561 = *(v460 + 4 * v557);
  v562 = v554 ^ LODWORD(STACK[0x2028]);
  LODWORD(v551) = *(v460 + 4 * BYTE2(v560)) ^ __ROR4__(*(v460 + ((v558 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v460 + 4 * v562), 16);
  HIDWORD(v563) = *(v460 + 4 * BYTE1(v558));
  LODWORD(v563) = HIDWORD(v563);
  v564 = *(v460 + 4 * BYTE2(v557)) ^ __ROR4__(*(v460 + ((v560 >> 22) & 0x3FC)), 24);
  v565 = (v563 >> 8) ^ __ROR4__(*(v460 + 4 * v560), 16) ^ __ROR4__(*(v460 + 4 * ((*(STACK[0x22A8] + ((-75 * HIBYTE(v557)) ^ 0x52)) ^ (~(106 * HIBYTE(v557)) - 75 * HIBYTE(v557)) ^ 0xC4) + 125)), 24) ^ *(v460 + 4 * BYTE2(v562));
  LODWORD(v558) = (v561 << ((BYTE2(v561) & 0x10 ^ 0x10) + (BYTE2(v561) & 0x10u))) ^ WORD1(v561) ^ __ROR4__(*(v460 + ((v562 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v460 + 4 * BYTE1(v560)), 8) ^ *(v460 + 4 * BYTE2(v558));
  LODWORD(v560) = v565 - 2062948967 - ((2 * v565) & 0xA13CB32);
  v566 = v558 - 2122533581 - ((2 * v558) & 0x2F96A66);
  LODWORD(v560) = (v560 ^ LODWORD(STACK[0x1FE0])) - 2062948967 - ((2 * (v560 ^ LODWORD(STACK[0x1FE0]))) & 0xA13CB32);
  LODWORD(v558) = v564 ^ __ROR4__(*(v460 + 4 * ((v559 ^ 0x1D) + 96)), 16) ^ __ROR4__(*(v460 + 4 * BYTE1(v562)), 8);
  v567 = v551 ^ __ROR4__(*(v460 + 4 * BYTE1(v557)), 8);
  LODWORD(STACK[0x2248]) = v507;
  v568 = (v566 ^ v507) - 2062948967 - ((2 * (v566 ^ v507)) & 0xA13CB32);
  v569 = (v560 ^ LODWORD(STACK[0x2168])) - (LODWORD(STACK[0x2160]) ^ 0x8509E599) + LODWORD(STACK[0x2088]);
  LODWORD(v551) = LODWORD(STACK[0x2298]) ^ 0xFFFFFFF7;
  LODWORD(STACK[0x2188]) = v442;
  LODWORD(STACK[0x2230]) = v442 | 1;
  LODWORD(v551) = (v442 | 1) + v551 + (v507 ^ 0x817CB533);
  LODWORD(v562) = LODWORD(STACK[0x2118]) ^ ((v498 ^ 0x8509E591 ^ v568) + v521 - v442 - 2062948967 - 2 * (((v498 ^ 0x8509E591 ^ v568) + v521 - v442) & 0x509E59B ^ v568 & 2));
  v570 = STACK[0x22A0];
  v571 = STACK[0x2280];
  v572 = STACK[0x2280];
  LODWORD(STACK[0x22E0]) = v535;
  v573 = (((v535 ^ 0x8008C098) & (v570 & 0x48484848 ^ 0x98D09098)) >> (v543 ^ 0x99u)) + (((v570 & 0x48484848 ^ 0x98D09098) & v571) << v545);
  STACK[0x1E98] = v526;
  LODWORD(STACK[0x2018]) = v551 - v526;
  LODWORD(v558) = v551 - v526 + v558 - LODWORD(STACK[0x21B8]);
  LODWORD(STACK[0x2118]) = v515;
  LODWORD(STACK[0x2088]) = v515 ^ 0x8509E599;
  LODWORD(v558) = LODWORD(STACK[0x1E58]) ^ (v558 + (v515 ^ 0x8509E599) - 2062948967 - ((2 * (v558 + (v515 ^ 0x8509E599))) & 0xA13CB32));
  LODWORD(v537) = v567 - 2062948967 - ((2 * v567) & 0xA13CB32);
  LODWORD(v549) = v569 - 2062948967 - ((2 * v569) & 0xA13CB32);
  v574 = v533 & 0x90909090 ^ 0x10800010;
  v575 = (v574 >> 1) | 0x90909090;
  v576 = STACK[0x22C8];
  v577 = (LODWORD(STACK[0x22C8]) ^ 0xD8905010) & v575;
  v578 = (((v535 ^ 0x8008C098) & v575) >> v544) + (v577 << v545);
  LODWORD(v561) = (v574 >> (!(v578 & 1) + (v578 & 1))) ^ 0x90909090;
  LODWORD(STACK[0x1ED0]) = v535 ^ 0x8408E498;
  LODWORD(v561) = v549 ^ (((v561 & (v535 ^ 0x8408E498)) >> v544) + ((v561 & v572) << v545)) ^ LODWORD(STACK[0x1E60]);
  v579 = v550;
  v580 = v572;
  v581 = STACK[0x2228];
  LODWORD(v537) = v537 ^ ((((LODWORD(STACK[0x22F0]) ^ 0x98D00058) & (STACK[0x2240] & 0x48484848 ^ 0x98D8D898)) >> v550) + (((STACK[0x2240] & 0x48484848 ^ 0x98D8D898) & v572) << STACK[0x2228])) ^ LODWORD(STACK[0x1E68]);
  LOBYTE(v549) = v577 & 0x18;
  LODWORD(v537) = (v537 - 1761943726 - ((2 * v537) & 0x2DF5BEA4)) ^ v556;
  LOBYTE(v577) = *(STACK[0x21F0] + (((v537 >> 7) & 0xFE | (v537 >> 15) & 1) ^ 0x3BLL));
  v582 = v577 ^ (8 * v577 + 4 * ~v577 + 7);
  v583 = (v561 - 1761943726 - ((2 * v561) & 0x2DF5BEA4)) ^ v556;
  HIDWORD(v563) = *(v460 + 4 * ((v582 ^ 0x83) - 40));
  LODWORD(v563) = HIDWORD(v563);
  LODWORD(v561) = (v563 >> 8) ^ __ROR4__(*(v460 + 4 * (v583 >> ((v549 ^ 0x18u) + v549))), 24);
  v584 = v573 ^ v556 ^ (v562 - 1761943726 - ((2 * v562) & 0x2DF5BEA4));
  v585 = (v537 >> 11) & 0xE0 | (v537 >> 19) & 0x1F;
  v586 = STACK[0x2288];
  v587 = (v585 ^ 0xA2) + ~*(STACK[0x2288] + (v585 ^ 0xF5));
  v588 = v578 ^ v556 ^ (v558 - 1761943726 - ((2 * v558) & 0x2DF5BEA4));
  LODWORD(v549) = *(v460 + 4 * BYTE2(v583)) ^ __ROR4__(*(v460 + 4 * v537), 16) ^ __ROR4__(*(v460 + ((v588 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v460 + 4 * BYTE1(v584)), 8);
  HIDWORD(v563) = *(v460 + 4 * v583);
  LODWORD(v563) = HIDWORD(v563);
  LODWORD(v558) = (v563 >> 16) ^ __ROR4__(*(v460 + ((v584 >> 22) & 0x3FC)), 24);
  LODWORD(v561) = v561 ^ __ROR4__(*(v460 + 4 * v588), 16) ^ *(v460 + 4 * BYTE2(v584));
  LODWORD(v537) = *(v460 + 4 * BYTE2(v588)) ^ __ROR4__(*(v460 + 4 * BYTE1(v583)), 8) ^ __ROR4__(*(v460 + 4 * v584), 16) ^ __ROR4__(*(v460 + 4 * BYTE3(v537)), 24);
  v589 = STACK[0x2240];
  v590 = STACK[0x2240] & 0x7CFCFCFC ^ 0xF19535E1;
  v591 = STACK[0x22F0];
  v592 = (LODWORD(STACK[0x22F0]) ^ 0xB8D1257C) & v590;
  LODWORD(v549) = (v549 - 2062948967 - ((2 * v549) & 0xA13CB32)) ^ LODWORD(STACK[0x1EC0]);
  v593 = (v590 & (v576 ^ 0xDDB45030)) << STACK[0x2228];
  LODWORD(v537) = LODWORD(STACK[0x1EA8]) ^ ((v592 >> v550) + v593) ^ (v537 - 2062948967 - ((2 * v537) & 0xA13CB32));
  v594 = v537 - 1761943726 - ((2 * v537) & 0x2DF5BEA4);
  LODWORD(v537) = v570 & 0x7CFCFCFC ^ 0xE5097DE1;
  v595 = STACK[0x2278];
  v596 = STACK[0x2278] & v537;
  v597 = (v537 & v580) << v545;
  LODWORD(v561) = LODWORD(STACK[0x1EB0]) ^ ((v596 >> v550) | v597) ^ (v561 - 2062948967 - ((2 * v561) & 0xA13CB32));
  v598 = v561 - 1761943726 - ((2 * v561) & 0x2DF5BEA4);
  v599 = v558 - 2062948967 - ((2 * v558) & 0xA13CB32);
  STACK[0x2220] = v544;
  v600 = v549 & 0xFFFFFFFD ^ ((v592 >> v544) + v593);
  v601 = v549 & 2;
  if ((v601 & STACK[0x1D10]) != 0)
  {
    v601 = -v601;
  }

  v602 = v600 ^ (v601 + LODWORD(STACK[0x1D10]));
  v603 = (v596 >> v544) ^ v597 ^ __ROR4__(*(v460 + 4 * BYTE1(v588)), 8) ^ LODWORD(STACK[0x1EB8]) ^ *(v460 + 4 * ((v587 ^ 0x1D) + 96)) ^ v599;
  v604 = (v603 - 1761943726 - ((2 * v603) & 0x2DF5BEA4)) ^ v556;
  v605 = *(STACK[0x22A8] + ((-75 * HIBYTE(v604)) ^ 0x52)) ^ (~(362 * HIBYTE(v604)) + 181 * HIBYTE(v604)) ^ 0xC4;
  v606 = v594 ^ v556;
  v607 = ((v606 >> LODWORD(STACK[0x1CE8])) >> 3) & 0x1F | (32 * ((v606 >> LODWORD(STACK[0x1CE8])) & 7));
  v608 = (v607 ^ 0xA2) + ~*(v586 + (v607 ^ 0xF5));
  v609 = v598 ^ v556;
  v610 = *(STACK[0x22B8] + ((BYTE2(v609) - 87) ^ 0x60)) ^ (~(2 * (WORD1(v609) + 169)) + WORD1(v609) + 169) ^ 0xD9;
  v611 = *(v460 + 4 * BYTE2(v602)) ^ __ROR4__(*(v460 + 4 * BYTE1(v609)), 8);
  v612 = *(v460 + 4 * v606);
  v613 = *(v460 + 4 * v604);
  v614 = v613 ^ 0x10;
  if (!v612)
  {
    v614 = 16;
  }

  v615 = v611 ^ ((v613 << (v614 & ~v613 & 0xBD | v613 & 0x10)) | WORD1(v613));
  v616 = *(v460 + 4 * BYTE2(v604)) ^ __ROR4__(*(v460 + 4 * v602), 16);
  v617 = *(v460 + 4 * ((v608 ^ 0x1D) + 96));
  v618 = HIBYTE(v617) - 87;
  v619 = (HIBYTE(v617) - 87) ^ 0x60;
  v620 = v615 ^ (*(STACK[0x22B8] + v619) ^ (HIBYTE(v617) - 87) ^ 0xFF | (v617 << 8));
  v621 = STACK[0x21E0];
  v622 = STACK[0x21D8];
  v623 = STACK[0x21E0];
  LODWORD(STACK[0x21E0]) = STACK[0x21E0];
  v624 = v622;
  LODWORD(STACK[0x21D8]) = v622;
  v625 = ((v622 ^ v621) >> 7) ^ 0x71B9E4 ^ *(v460 + 4 * v610) ^ __ROR4__(v612, 16) ^ __ROR4__(*(v460 + ((v602 >> 22) & 0x3FC)), 24);
  v626 = __ROR4__(*(v460 + 4 * BYTE1(v604)), 8);
  v627 = v589 & 0x3BBBBBBB ^ 0x7C5EFE6F;
  v628 = v591 ^ 0x3AD1277C;
  v629 = ((v591 ^ 0x3AD1277C) & v627) >> v579;
  v630 = v576 ^ 0xDFB45230;
  STACK[0x2178] = v630;
  v631 = (v627 & v630) << v581;
  v632 = v629 ^ v631 ^ LODWORD(STACK[0x1EC8]) ^ ((v625 ^ v626) - 2062948967 - ((2 * (v625 ^ v626)) & 0xA13CB32));
  v633 = (v632 + 435764725 - ((2 * v632) & 0x33F27BEA)) ^ v623;
  v634 = (v633 + 556126201 - ((2 * v633) & 0x424B9FF2)) ^ v624;
  v635 = (v634 - 882000042 - ((2 * v634) & 0x96DB7EAC)) ^ LODWORD(STACK[0x1FE8]);
  LODWORD(v630) = LODWORD(STACK[0x21C8]) ^ 0x1B3ED9B8;
  LODWORD(STACK[0x21C8]) = v630;
  v636 = v630 ^ LODWORD(STACK[0x20D8]) ^ (v635 + 2082625075 - ((2 * v635) & 0xF844AC66));
  v637 = v618 & 0xC2 ^ 0x82 | v619 & 0xC2;
  v638 = *(v460 + ((v609 >> 22) & 0x3FC));
  v639 = v616 ^ __ROR4__(*(v460 + 4 * BYTE1(v606)), 8) ^ ((v638 << ((v637 + 70) & 0xFE)) | BYTE3(v638));
  v640 = v636 - 1761943726 - ((2 * v636) & 0x2DF5BEA4);
  HIDWORD(v641) = *(v460 + 4 * (v605 + 125));
  LODWORD(v641) = HIDWORD(v641);
  v642 = (v641 >> 24) ^ __ROR4__(*(v460 + 4 * ((*(STACK[0x2290] + ((-75 * v609) ^ 0x31)) ^ 0x6C) + 125)), 16) ^ __ROR4__(*(v460 + 4 * BYTE1(v602)), 8) ^ *(v460 + 4 * BYTE2(v606));
  v643 = STACK[0x2280];
  v644 = STACK[0x2220];
  v645 = LODWORD(STACK[0x1ED8]) ^ ((v627 & STACK[0x2280]) << STACK[0x22C0]) ^ ((v627 & v595) >> STACK[0x2220]) ^ (v639 - (LODWORD(STACK[0x20F0]) ^ 0x863EFBDA) - 2062948967 - ((2 * (v639 - (LODWORD(STACK[0x20F0]) ^ 0x863EFBDA))) & 0xA13CB32));
  v646 = v642 - 2062948967 - ((2 * v642) & 0xA13CB32);
  v647 = STACK[0x22A0];
  v648 = (v620 - 2062948967 - ((2 * v620) & 0xA13CB32)) ^ LODWORD(STACK[0x1EE0]);
  v649 = (v648 + 86842116 - ((2 * v648) & 0xA5A3608)) ^ LODWORD(STACK[0x2020]);
  v650 = (v649 - 1537152743 - ((2 * v649) & 0x48C1D232)) ^ LODWORD(STACK[0x1FF0]);
  v651 = STACK[0x1F38];
  v652 = (v650 + 1214000700 - ((2 * v650) & 0x90B85C78)) ^ LODWORD(STACK[0x1F38]);
  v653 = v629 | v631;
  v654 = (v629 | v631) ^ v556 ^ (v652 - 1761943726 - ((2 * v652) & 0x2DF5BEA4));
  v655 = (v645 - 1761943726 - ((2 * v645) & 0x2DF5BEA4)) ^ v556;
  v656 = *(STACK[0x2158] + (((v655 >> 7) & 1 | (2 * (v655 & 0x7F))) ^ 0xE3)) ^ 0xFF;
  LOBYTE(v629) = (v656 >> 1) | (v656 << 7);
  LODWORD(v630) = STACK[0x1F98];
  v657 = LODWORD(STACK[0x2030]) ^ 0x2D189C14 ^ LODWORD(STACK[0x1F98]) ^ (((v628 & (v647 & 0x3BBBBBBB ^ 0x6EC7F46Cu)) >> v579) + (((v576 ^ 0x5FB45230) & (v647 & 0x3BBBBBBB ^ 0x6EC7F46Cu)) << v581)) ^ ((v653 & 0x5088D2FD ^ 0x5088D2FD) + (v653 & 0x5088D2FD)) ^ LODWORD(STACK[0x1EF0]) ^ v646;
  v658 = (v657 + 86842116 - ((2 * v657) & 0xA5A3608)) ^ LODWORD(STACK[0x2020]);
  v659 = (v658 - 1761943726 - ((2 * v658) & 0x2DF5BEA4)) ^ v556;
  LOBYTE(v658) = *(STACK[0x21F0] + (((((v654 ^ 0xFFFFFFD9) & 0x80) != 0) | (2 * (v654 ^ 0xD9))) ^ 0x3BLL));
  HIDWORD(v641) = *(v460 + 4 * BYTE1(v659));
  LODWORD(v641) = HIDWORD(v641);
  v660 = (v641 >> 8) ^ __ROR4__(*(v460 + 4 * ((v658 ^ (4 * v658)) + 88)), 16);
  v661 = LODWORD(STACK[0x1FD8]) ^ v640;
  LOBYTE(v640) = *(STACK[0x21F0] + (((v661 >> 7) & 0xFE | (v661 >> 15) & 1) ^ 0x3BLL));
  v662 = *(v460 + 4 * BYTE2(v654)) ^ __ROR4__(*(v460 + 4 * ((v640 ^ (4 * v640)) + 88)), 8) ^ __ROR4__(*(v460 + 4 * HIBYTE(v659)), 24) ^ __ROR4__(*(v460 + 4 * ((v629 ^ 0xBE) - 40)), 16);
  v663 = *(v460 + 4 * BYTE2(v659)) ^ __ROR4__(*(v460 + ((v655 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v460 + 4 * v661), 16) ^ __ROR4__(*(v460 + 4 * ((*(STACK[0x2268] + (((v654 >> 3) & 0xE0 | (v654 >> 11)) ^ 0x5ALL)) ^ 0x20) + 96)), 8);
  v664 = *(v460 + 4 * ~*(STACK[0x2250] + ((HIBYTE(v654) - 87) ^ 0xC7)));
  v665 = *(v460 + 4 * BYTE2(v661)) ^ __ROR4__(*(v460 + 4 * v659), 16) ^ __ROR4__(*(v460 + 4 * BYTE1(v655)), 8) ^ ((v664 >> ((v664 & 0x18 ^ 0x18) + (v664 & 0x18))) | (v664 << 8));
  LODWORD(v629) = STACK[0x22A0] & 0x71F1F1F1 ^ 0xF21362F2;
  v666 = STACK[0x22C0];
  LODWORD(v664) = LODWORD(STACK[0x1EE8]) ^ ((((LODWORD(STACK[0x22E0]) ^ 0x8101E191) & v629) >> STACK[0x2220]) | ((v629 & STACK[0x2280]) << STACK[0x22C0])) ^ (v662 - 2062948967 - ((2 * v662) & 0xA13CB32));
  LODWORD(STACK[0x22C8]) = v576;
  LODWORD(v631) = LODWORD(STACK[0x22F0]) ^ 0xB2D12370;
  v667 = LODWORD(STACK[0x1F00]) ^ (((v631 & v629) >> v644) + (((v576 ^ 0x5DB45030 | v629) - (v576 ^ ((v647 & 0x71F1F1F1 ^ 0x11F08111) - 541830608 - ((2 * (v647 & 0x71F1F1F1 ^ 0x11F08111)) & 0xA360A060)) ^ 0xE3E3E3E3)) << v666)) ^ (v663 + LODWORD(STACK[0x2150]) + ~((2 * v663) & 0xA13CB32));
  LODWORD(v629) = v667 - 1761943726 - ((2 * v667) & 0x2DF5BEA4);
  v668 = STACK[0x2240] & 0x71F1F1F1 ^ 0xE28222F3;
  v669 = (v668 & v643) << v581;
  v670 = LODWORD(STACK[0x1EF8]) ^ (((v631 & v668) >> v579) | v669) ^ (v665 - 2062948967 - ((2 * v665) & 0xA13CB32));
  v671 = *(v460 + 4 * HIBYTE(v661));
  LODWORD(v631) = (2 * v670) & 0x2DF5BEA4;
  v672 = v670 - 1761943726;
  v673 = v671 >> 24;
  LOBYTE(v665) = BYTE3(v671) - 87;
  v674 = (BYTE3(v671) - 87);
  LODWORD(v655) = v660 ^ *(v460 + 4 * BYTE2(v655)) ^ (*(STACK[0x22B8] + (v674 ^ 0x60)) ^ 0xFF | (v671 << 8));
  LODWORD(v655) = LODWORD(STACK[0x1F10]) ^ ((v668 & STACK[0x2278]) >> v579) ^ v669 ^ v674 ^ (v655 - 2062948967 - ((2 * v655) & 0xA13CB32));
  v675 = v556 ^ 0xD9 ^ (v655 - 1761943726 - ((2 * v655) & 0x2DF5BEA4));
  v676 = v629 ^ v556;
  v677 = (v672 - v631) ^ v556;
  HIDWORD(v641) = *(v460 + 4 * BYTE1(v677));
  LODWORD(v641) = HIDWORD(v641);
  v678 = *(v460 + ((v677 >> 22) & 0x3FC));
  v679 = (v678 << (((BYTE2(v676) & 9 ^ 9) + (BYTE2(v676) & 9)) & 0xE)) | (v678 >> 24);
  v680 = (v664 - 1761943726 - ((2 * v664) & 0x2DF5BEA4)) ^ v556;
  LODWORD(v664) = *(v460 + 4 * BYTE2(v677)) ^ __ROR4__(*(v460 + ((v680 >> 22) & 0x3FC)), 24);
  v681 = LODWORD(STACK[0x21C8]) ^ __ROR4__(*(v460 + 4 * BYTE1(v676)), 8) ^ __ROR4__(*(v460 + 4 * v680), 16) ^ *(v460 + 4 * BYTE2(v675)) ^ v679;
  v682 = (v681 + 2082625075 - ((2 * v681) & 0xF844AC66)) ^ LODWORD(STACK[0x20D8]);
  LODWORD(v673) = (v641 >> 8) ^ __ROR4__(*(v460 + 4 * v675), 16) ^ ((*(v460 + ((v676 >> 22) & 0x3FC)) << (((6 - v673) ^ v665) & 8)) + HIBYTE(*(v460 + ((v676 >> 22) & 0x3FC)))) ^ *(v460 + 4 * BYTE2(v680));
  LODWORD(v673) = v651 ^ (1945651023 * (LODWORD(STACK[0x21E0]) ^ 0x19F93DF5)) ^ (v673 + 1214000700 - ((2 * v673) & 0x90B85C78));
  LODWORD(v673) = (v673 - 1537152743 - ((2 * v673) & 0x48C1D232)) ^ LODWORD(STACK[0x1FF0]);
  LODWORD(v673) = LODWORD(STACK[0x1D20]) ^ (1945651023 * (LODWORD(STACK[0x21D8]) ^ 0x2125CFF9)) ^ (-1985432003 * (v630 ^ 0x7D904EE9)) ^ (v673 + 86842116 - ((2 * v673) & 0xA5A3608));
  v683 = *(v460 + 4 * ((v672 - v631) ^ v556));
  LODWORD(v677) = v683 >> (v680 & 0x10) >> (v680 & 0x10 ^ 0x10);
  HIDWORD(v641) = *(v460 + ((v675 >> 22) & 0x3FC));
  LODWORD(v641) = HIDWORD(v641);
  v684 = (v641 >> 24) ^ (LODWORD(STACK[0x20F0]) >> 1) ^ *(v460 + 4 * BYTE2(v676)) ^ __ROR4__(*(v460 + 4 * BYTE1(v680)), 8) ^ (v677 | (v683 << 16));
  LODWORD(v676) = *(v460 + 4 * ((*(STACK[0x2290] + ((-75 * v676) ^ 0x31)) ^ 0x6C) + 125));
  LODWORD(v664) = v664 ^ __ROR4__(v676, 16);
  LODWORD(v641) = __ROR4__(*(v460 + 4 * BYTE1(v675)), 8);
  LODWORD(v675) = v673 - 2062948967 - ((2 * v673) & 0xA13CB32);
  v685 = STACK[0x22A0] & 0x76767676 ^ 0xF89CEAFE;
  LODWORD(v619) = STACK[0x22C8];
  v686 = (LODWORD(STACK[0x22C8]) ^ 0xDEB45230) & v685;
  LODWORD(v630) = LODWORD(STACK[0x1F70]) ^ ((STACK[0x1ED0] & v685) >> v644) ^ (v686 << v666) ^ ((v664 ^ v641) - 2062948967 - ((2 * (v664 ^ v641)) & 0xA13CB32));
  v687 = ((LODWORD(STACK[0x22F0]) ^ 0xBAD0267C) & v685) >> v644;
  v688 = LODWORD(STACK[0x1F60]) ^ (v687 | ((v685 & v643) << v666)) ^ ((v684 ^ 0x431F7DED) - 2062948967 - 2 * ((v684 ^ 0x431F7DED) & 0x509E59B ^ v684 & 2));
  v689 = (v688 - 2042692646 - ((2 * v688) & 0xC7DF7B4)) ^ LODWORD(STACK[0x20F0]);
  LODWORD(v675) = LODWORD(STACK[0x1F08]) ^ ((((STACK[0x2240] & 0x76767676 ^ 0xEE88A8FC) & (LODWORD(STACK[0x22C8]) ^ 0xDEB45230)) << STACK[0x2228]) + (((STACK[0x2240] & 0x76767676 ^ 0xEE88A8FC) & STACK[0x1ED0]) >> v579)) ^ v675;
  LODWORD(v664) = v675 - 1761943726 - ((2 * v675) & 0x2DF5BEA4);
  LOBYTE(v624) = STACK[0x2228];
  LODWORD(v675) = v687 | (v686 << v624);
  LODWORD(v687) = STACK[0x2150];
  v690 = (v675 + LODWORD(STACK[0x2150]) + ~((2 * v675) & 0xA13CB32)) ^ LODWORD(STACK[0x1FE8]) ^ LODWORD(STACK[0x2010]) ^ (v682 - 882000042 - ((2 * v682) & 0x96DB7EAC));
  LODWORD(v686) = v690 - 1761943726 - ((2 * v690) & 0x2DF5BEA4);
  v691 = (v630 - 1761943726 - ((2 * v630) & 0x2DF5BEA4)) ^ v556;
  v692 = (v689 - 1761943726 - ((2 * v689) & 0x2DF5BEA4)) ^ v556;
  HIDWORD(v641) = *(v460 + 4 * (v692 >> ((v677 & 0x18 ^ 0x18) + (v677 & 0x18))));
  LODWORD(v641) = HIDWORD(v641);
  LODWORD(v677) = LODWORD(STACK[0x1FD8]) ^ v686;
  LODWORD(v630) = (v641 >> 24) ^ __ROR4__(*(v460 + 4 * BYTE1(v691)), 8) ^ __ROR4__(*(v460 + 4 * (LOBYTE(STACK[0x1FD8]) ^ v686)), 16);
  LODWORD(v676) = (~(2 * (BYTE3(v677) + 169)) + BYTE3(v677) + 169) ^ *(STACK[0x22B8] + (((WORD1(v676) & 0x2D64) - 11391 + (WORD1(v676) & 0x2D64 ^ 0x2D64)) & 0xFFFC ^ 0x84 ^ (BYTE3(v677) - 87)));
  LOBYTE(v689) = ((((v676 >> 4) | (16 * v676)) ^ 0x25) >> 4) | (16 * (((v676 >> 4) | (16 * v676)) ^ 0x25));
  v693 = v664 ^ v556;
  HIDWORD(v641) = *(v460 + 4 * v692);
  LODWORD(v641) = HIDWORD(v641);
  LODWORD(v664) = (v641 >> 16) ^ __ROR4__(*(v460 + ((v693 >> 22) & 0x3FC)), 24);
  HIDWORD(v641) = *(v460 + 4 * BYTE1(v693));
  LODWORD(v641) = HIDWORD(v641);
  LODWORD(v686) = (v641 >> 8) ^ __ROR4__(*(v460 + 4 * ((*(STACK[0x22A8] + ((-75 * v691) ^ 0x52)) ^ (~(106 * v691) - 75 * v691) ^ 0xC4) + 125)), 16) ^ __ROR4__(*(v460 + 4 * (v689 ^ 0x8Bu)), 24);
  v694 = *(v460 + 4 * BYTE2(v677)) ^ __ROR4__(*(v460 + 4 * BYTE1(v692)), 8) ^ __ROR4__(*(v460 + 4 * v693), 16);
  LODWORD(v692) = v686 ^ *(v460 + 4 * BYTE2(v692));
  LODWORD(v677) = v664 ^ *(v460 + 4 * BYTE2(v691)) ^ __ROR4__(*(v460 + 4 * ((*(STACK[0x2290] + ((-75 * BYTE1(v677)) ^ 0x31)) ^ 0x6C) + 125)), 8);
  LODWORD(v630) = v630 ^ *(v460 + 4 * BYTE2(v693));
  LODWORD(v693) = (v677 - 2062948967 - ((2 * v677) & 0xA13CB32)) ^ LODWORD(STACK[0x1FE0]);
  LODWORD(v630) = (v630 - 2062948967 - ((2 * v630) & 0xA13CB32)) ^ LODWORD(STACK[0x2160]);
  v695 = (v630 - 2062948967 - ((2 * v630) & 0xA13CB32)) ^ LODWORD(STACK[0x2168]);
  LODWORD(v691) = *(STACK[0x22B8] + ((HIBYTE(*(v460 + ((v691 >> 22) & 0x3FC))) - 87) ^ 0x60)) ^ v694 ^ ((HIBYTE(*(v460 + ((v691 >> 22) & 0x3FC))) - 87) | (*(v460 + ((v691 >> 22) & 0x3FC)) << 8)) ^ ((v692 & 0xDA ^ 0xDA) + (v692 & 0xDA));
  LODWORD(v686) = (LODWORD(STACK[0x1F18]) ^ LODWORD(STACK[0x21B8]) ^ (LODWORD(STACK[0x2088]) - LODWORD(STACK[0x1F18]) + v692)) + LODWORD(STACK[0x2018]);
  v696 = LODWORD(STACK[0x2230]) + LODWORD(STACK[0x1D18]) + (LODWORD(STACK[0x2248]) ^ 0x7E834ACC) + ((v693 - 2062948967 - ((2 * v693) & 0xA13CB32)) ^ LODWORD(STACK[0x2168]));
  LODWORD(v693) = STACK[0x22A0] & 0x69E9E9E9 ^ 0xDA3352DA;
  v697 = LODWORD(STACK[0x22F0]) ^ 0xBAD12378;
  LODWORD(v643) = STACK[0x22F0];
  v698 = v693 & STACK[0x1E40];
  v699 = v697 & v693;
  STACK[0x1F70] = v699;
  v700 = (v699 >> v579) | (v698 << v666);
  v701 = LODWORD(STACK[0x1F20]) ^ (v700 - 2062948967 - ((2 * v700) & 0xA13CB32)) ^ v686;
  LODWORD(v677) = (v696 - 2062948967 - ((2 * v696) & 0xA13CB32)) ^ LODWORD(STACK[0x1F28]);
  LODWORD(v664) = v677 - 1761943726 - ((2 * v677) & 0x2DF5BEA4);
  LODWORD(v699) = LODWORD(STACK[0x22E0]) ^ 0x8109E199;
  LODWORD(STACK[0x1F60]) = v699;
  v702 = STACK[0x2220];
  v703 = (v699 & v693) >> STACK[0x2220];
  LODWORD(v698) = LODWORD(STACK[0x1F68]) ^ ((v703 ^ (v698 << v624)) - 2062948967 - ((2 * (v703 ^ (v698 << v624))) & 0xA13CB32));
  LOBYTE(v624) = ~v691 ^ v687;
  LODWORD(v699) = STACK[0x2240];
  LODWORD(v691) = STACK[0x2240] & 0x69E9E9E9 ^ 0xDABA1ADB;
  LODWORD(STACK[0x1F68]) = v691;
  STACK[0x21F8] = v579;
  LOBYTE(v677) = v666;
  LODWORD(v693) = LODWORD(STACK[0x1F78]) ^ ((v703 | (((v619 ^ 0xDBB05230) & v693) << v666)) - 2062948967 - ((2 * (v703 | (((v619 ^ 0xDBB05230) & v693) << v666))) & 0xA13CB32)) ^ v695;
  LODWORD(v664) = v664 ^ v556;
  LODWORD(v666) = v664 ^ (((v697 & v691) >> v579) | ((v691 & (v619 ^ 0xDBB05230)) << v666));
  v704 = (v701 - 1761943726 - ((2 * v701) & 0x2DF5BEA4)) ^ v556;
  v705 = *(v460 + 4 * (((v624 ^ (v698 - 103 - ((2 * v698) & 0x32))) + 82 - ((2 * (v624 ^ (v698 - 103 - ((2 * v698) & 0x32)))) & 0xA4)) ^ v556));
  LODWORD(v669) = *(v460 + 4 * ~*(STACK[0x2250] + (((v664 & 0xA9) + (((v693 - 1761943726 - ((2 * v693) & 0x2DF5BEA4)) ^ v556) >> 16) + (v664 & 0xA9 ^ 0xA9)) ^ 0xC7))) ^ 0x8509E599 ^ __ROR4__(*(v460 + 4 * ((((((v704 >> 27) | (32 * BYTE3(v704))) ^ 0xA2) + ~*(STACK[0x2288] + (((v704 >> 27) | (32 * BYTE3(v704))) ^ 0xF5))) ^ 0x1D) + 96)), 24) ^ __ROR4__(*(v460 + 4 * BYTE1(v666)), 8) ^ (((v705 << 16) - 2062948967 - ((v705 << 17) & 0xA120000)) ^ 0x8509E599 | HIWORD(v705));
  LODWORD(v691) = v699 & 0x13939393 ^ 0x2426A637;
  v706 = v691 & STACK[0x2280];
  LODWORD(STACK[0x1F98]) = v691;
  v707 = (((v643 ^ 0x32912734) & v691) >> v702) ^ (v706 << v677);
  v708 = v669 ^ (v707 - 2062948967 - ((2 * v707) & 0xA13CB32));
  v709 = (v708 - 2062948967 - ((2 * v708) & 0xA13CB32)) ^ LODWORD(STACK[0x1F30]);
  v710 = (v709 - 1761943726 - ((2 * v709) & 0x2DF5BEA4)) ^ v556;
  return (*(STACK[0x22F8] + 8 * (LODWORD(STACK[0x2238]) | (2 * (HIBYTE(*(v460 + ((v710 >> 22) & 0x3FC))) != (HIBYTE(*(v460 + ((v710 >> 22) & 0x3FC))) - 63))))))();
}

uint64_t sub_26AA778E0@<X0>(unsigned int a1@<W1>, int a2@<W2>, unint64_t a3@<X3>, int a4@<W4>, unint64_t a5@<X5>, int a6@<W6>, unint64_t a7@<X8>)
{
  LODWORD(STACK[0x1D40]) = a4;
  LODWORD(STACK[0x2010]) = a2;
  LODWORD(STACK[0x1EF0]) = v7;
  LODWORD(STACK[0x1F78]) = v10 | (v9 << 8);
  STACK[0x1F00] = a7;
  LODWORD(STACK[0x1F30]) = LODWORD(STACK[0x2108]) ^ LODWORD(STACK[0x20B0]);
  LODWORD(STACK[0x1F38]) = LODWORD(STACK[0x2110]) ^ LODWORD(STACK[0x2170]);
  LODWORD(STACK[0x1FA8]) = LODWORD(STACK[0x1D68]) ^ LODWORD(STACK[0x1D60]);
  LODWORD(STACK[0x1E90]) = a6;
  LODWORD(STACK[0x1E78]) = v14;
  LODWORD(STACK[0x1E70]) = v20;
  v21 = ((((v8 ^ 0x940C0ED1) - 117672343) ^ a6) + v14 + 1280610420) ^ v20;
  v22 = v21 - 2 * ((v21 + 33508896) & 0x65154BF ^ v21 & 0x18);
  v23 = (LODWORD(STACK[0x1FD0]) ^ a1) + a1 - 2 * ((LODWORD(STACK[0x1FD0]) ^ a1) & 0x509E59D ^ STACK[0x1FD0] & 4);
  v24 = STACK[0x1E28];
  LODWORD(STACK[0x2238]) = v11;
  v25 = (v24 ^ a1) + a1 - 2 * ((v24 ^ a1) & 0x509E59B ^ v24 & 2);
  v26 = LODWORD(STACK[0x1E30]) + a1 - ((2 * LODWORD(STACK[0x1E30])) & 0xA13CB32);
  STACK[0x21E0] = v12;
  v27 = STACK[0x1D78];
  STACK[0x1FD0] = v17;
  STACK[0x20F0] = a5;
  v28 = STACK[0x1D80];
  if ((STACK[0x1D80] & 2) != 0)
  {
    v29 = STACK[0x2078];
  }

  else
  {
    v29 = STACK[0x2080];
  }

  STACK[0x20D8] = a3;
  v30 = (v29 & 0xF178272C ^ 0x81082508 | v29 & 0xF178272C ^ 0x70700224) + (LODWORD(STACK[0x1DC8]) ^ a1);
  v31 = LODWORD(STACK[0x1DC0]) ^ a1 ^ v27 ^ (v27 + a1 - ((2 * v27) & 0xA13CB32));
  v32 = STACK[0x2068];
  v33 = v30 - ((2 * v30 + 219132328) & 0xA13CB32) - 1819165075;
  if (STACK[0x2068])
  {
    v34 = LODWORD(STACK[0x1DC0]) ^ a1 ^ v27 ^ (v27 + a1 - ((2 * v27) & 0xA13CB32));
  }

  else
  {
    v34 = v26;
  }

  if (v32)
  {
    v31 = STACK[0x2070];
  }

  else
  {
    v26 = v33;
    v33 = STACK[0x2070];
  }

  STACK[0x2080] = v13;
  v35 = STACK[0x1F48];
  if (v32)
  {
    v36 = STACK[0x1CD0];
  }

  else
  {
    v36 = STACK[0x1F48];
  }

  if (v32)
  {
    v37 = STACK[0x1DD0];
  }

  else
  {
    v35 = STACK[0x1DD0];
    v37 = STACK[0x1E18];
  }

  if (v32)
  {
    v38 = STACK[0x1E18];
  }

  else
  {
    v38 = STACK[0x1CD0];
  }

  STACK[0x1E60] = v15;
  if ((v32 & 2) != 0)
  {
    v39 = v37;
  }

  else
  {
    v39 = v36;
  }

  if ((v32 & 2) != 0)
  {
    v40 = v35;
  }

  else
  {
    v36 = v37;
    v40 = v38;
  }

  if ((v32 & 2) != 0)
  {
    v41 = v38;
  }

  else
  {
    v41 = v35;
  }

  LODWORD(STACK[0x1F10]) = v41;
  if ((v32 & 2) != 0)
  {
    v42 = v33;
  }

  else
  {
    v42 = v34;
  }

  if ((v32 & 2) != 0)
  {
    v43 = v34;
  }

  else
  {
    v43 = v33;
  }

  v44 = v43 ^ a1;
  LODWORD(STACK[0x1FB0]) = v43 ^ a1;
  v45 = v43;
  LODWORD(STACK[0x2070]) = v43;
  STACK[0x1EF8] = v19;
  v46 = STACK[0x2188];
  v47 = STACK[0x2180];
  v48 = (v44 >> LODWORD(STACK[0x2188])) + (v44 << LODWORD(STACK[0x2180]));
  if ((v32 & 2) != 0)
  {
    v49 = v31;
  }

  else
  {
    v49 = v26;
  }

  LODWORD(STACK[0x2160]) = v49;
  if ((v32 & 2) != 0)
  {
    v50 = v26;
  }

  else
  {
    v50 = v31;
  }

  LODWORD(STACK[0x2168]) = v50;
  v51 = v48 + a1 - ((2 * v48) & 0xA13CB32);
  v52 = STACK[0x1E20];
  if (v28)
  {
    v53 = STACK[0x1E20];
  }

  else
  {
    v53 = v23;
  }

  if (v28)
  {
    v52 = v25;
    v25 = STACK[0x1DB8];
  }

  else
  {
    v23 = STACK[0x1DB8];
  }

  v54 = STACK[0x2098];
  if (v28)
  {
    v54 = STACK[0x21B0];
    v55 = STACK[0x20A0];
  }

  else
  {
    v55 = STACK[0x2090];
  }

  v56 = v22 + 5284551;
  LODWORD(STACK[0x21C8]) = v22 + 5284551;
  v57 = v40 ^ 0xFB81A877 ^ (v22 + 5284551);
  v58 = STACK[0x2190];
  v59 = STACK[0x21C0];
  if (LODWORD(STACK[0x21C0]) != 8)
  {
    v57 = (v57 << LODWORD(STACK[0x2190])) | (v57 >> v46);
  }

  LODWORD(STACK[0x1F28]) = v57;
  v60 = v36 ^ 0xFB81A877 ^ v56;
  v61 = LODWORD(STACK[0x2298]) == 8;
  if (LODWORD(STACK[0x2298]) == 8)
  {
    v62 = v60;
  }

  else
  {
    v62 = (v60 >> v46) | (v60 << v47);
  }

  LODWORD(STACK[0x1F08]) = v62;
  if (v61)
  {
    v63 = v39 ^ 0xFB81A877 ^ v56;
  }

  else
  {
    v63 = ((v39 ^ 0xFB81A877 ^ v56) >> v46) + ((v39 ^ 0xFB81A877 ^ v56) << v47);
  }

  LODWORD(STACK[0x1F18]) = v63;
  if (v61)
  {
    v64 = v45;
  }

  else
  {
    v64 = v51;
  }

  LODWORD(STACK[0x1F20]) = v64;
  if ((v28 & 2) != 0)
  {
    v65 = v23;
  }

  else
  {
    v65 = v52;
  }

  LODWORD(STACK[0x20A0]) = v65;
  if ((v28 & 2) != 0)
  {
    v66 = v52;
  }

  else
  {
    v66 = v23;
  }

  LODWORD(STACK[0x2170]) = v66;
  if ((v28 & 2) != 0)
  {
    v67 = v25;
  }

  else
  {
    v67 = v53;
  }

  LODWORD(STACK[0x2230]) = v67;
  if ((v28 & 2) != 0)
  {
    v68 = v53;
  }

  else
  {
    v68 = v25;
  }

  LODWORD(STACK[0x21B8]) = v68;
  if ((v28 & 2) != 0)
  {
    v69 = v55;
  }

  else
  {
    v69 = v54;
  }

  LODWORD(STACK[0x2110]) = v16;
  if ((v28 & 2) != 0)
  {
    v70 = v54;
  }

  else
  {
    v70 = v55;
  }

  v71 = STACK[0x21A8];
  v72 = STACK[0x21A8];
  v73 = STACK[0x1E38];
  v74 = STACK[0x1DE0];
  if (STACK[0x21A8])
  {
    v75 = STACK[0x1DE0];
  }

  else
  {
    v75 = STACK[0x1E38];
  }

  LODWORD(STACK[0x1E18]) = v75;
  v76 = STACK[0x1DD8];
  if ((v71 & 1) == 0)
  {
    v73 = STACK[0x1DD8];
  }

  v77 = STACK[0x1DE8];
  if ((v71 & 1) == 0)
  {
    v76 = STACK[0x1DE8];
  }

  LODWORD(STACK[0x2078]) = v76;
  if ((v71 & 1) == 0)
  {
    v77 = v74;
  }

  LODWORD(STACK[0x1F48]) = v42;
  v79 = STACK[0x1F80];
  if (v71)
  {
    v80 = STACK[0x1FC8];
  }

  else
  {
    v80 = STACK[0x1F80];
  }

  if (v71)
  {
    v81 = STACK[0x20D0];
  }

  else
  {
    v79 = STACK[0x20D0];
    v81 = STACK[0x1FC0];
  }

  if (v71)
  {
    v82 = STACK[0x1FC0];
  }

  else
  {
    v82 = STACK[0x1FC8];
  }

  v78 = ((v42 ^ a1) >> v46) | ((v42 ^ a1) << v47);
  v83 = v78 + a1 - ((2 * v78) & 0xA13CB32);
  if (v46)
  {
    v84 = v83;
  }

  else
  {
    v84 = v42;
  }

  LODWORD(STACK[0x1ED0]) = v84;
  if ((v72 & 2) != 0)
  {
    v85 = v77;
  }

  else
  {
    v85 = v73;
  }

  LODWORD(STACK[0x20B0]) = v85;
  if ((v72 & 2) != 0)
  {
    v86 = v73;
  }

  else
  {
    v86 = v77;
  }

  LODWORD(STACK[0x1ED8]) = v86;
  if ((v72 & 2) != 0)
  {
    v87 = v82;
  }

  else
  {
    v87 = v79;
  }

  if ((v72 & 2) != 0)
  {
    v88 = v79;
  }

  else
  {
    v88 = v82;
  }

  if ((v72 & 2) != 0)
  {
    v89 = v81;
  }

  else
  {
    v89 = v80;
  }

  LODWORD(STACK[0x21B0]) = v89;
  if ((v72 & 2) != 0)
  {
    v90 = v80;
  }

  else
  {
    v90 = v81;
  }

  v91 = v90;
  LODWORD(STACK[0x2108]) = v90;
  v92 = ((v90 ^ a1) << v47) ^ ((v90 ^ a1) >> v46);
  v93 = v92 + a1 - ((2 * v92) & 0xA13CB32);
  v94 = v88;
  LODWORD(STACK[0x1FC8]) = v88;
  v95 = ((v88 ^ a1) << v58) | ((v88 ^ a1) >> v46);
  v96 = v95 + a1 - ((2 * v95) & 0xA13CB32);
  LODWORD(STACK[0x2040]) = v87;
  v97 = ((v87 ^ a1) << v47) + ((v87 ^ a1) >> v46);
  LODWORD(STACK[0x21D8]) = a1 + 1;
  v98 = v97 + a1 + 1 + ~((2 * v97) & 0xA13CB32);
  if ((v72 & 2) != 0)
  {
    v99 = v75;
  }

  else
  {
    v99 = v76;
  }

  if (v46)
  {
    v100 = v93;
  }

  else
  {
    v100 = v91;
  }

  LODWORD(STACK[0x1EB8]) = v100;
  if (v46)
  {
    v101 = v98;
  }

  else
  {
    v101 = v87;
  }

  LODWORD(STACK[0x1EA8]) = v101;
  if (v46)
  {
    v102 = v96;
  }

  else
  {
    v102 = v94;
  }

  LODWORD(STACK[0x1EB0]) = v102;
  v103 = STACK[0x1DB0];
  if (v32)
  {
    v104 = STACK[0x1DB0];
  }

  else
  {
    v104 = STACK[0x1F88];
  }

  v105 = STACK[0x1F40];
  if (v32)
  {
    v106 = STACK[0x1F88];
  }

  else
  {
    v106 = STACK[0x1F40];
  }

  LODWORD(STACK[0x2098]) = v106;
  if (v32)
  {
    v107 = STACK[0x1F90];
  }

  else
  {
    v105 = STACK[0x1F90];
    v107 = v103;
  }

  LODWORD(STACK[0x2090]) = v107;
  if ((v32 & 2) != 0)
  {
    v108 = v105;
  }

  else
  {
    v108 = v104;
  }

  if ((v32 & 2) != 0)
  {
    v109 = v104;
  }

  else
  {
    v109 = v105;
  }

  v110 = ((LODWORD(STACK[0x2198]) ^ a1) << v58) + ((LODWORD(STACK[0x2198]) ^ a1) >> v46);
  v111 = v110 + a1 - ((2 * v110) & 0xA13CB32);
  if ((v32 & 2) != 0)
  {
    v112 = v106;
  }

  else
  {
    v112 = v107;
  }

  if (v46)
  {
    v113 = v111;
  }

  else
  {
    v113 = STACK[0x2198];
  }

  LODWORD(STACK[0x1E68]) = v113;
  v114 = STACK[0x1DA8];
  if (STACK[0x1DA8])
  {
    v115 = STACK[0x20B8];
  }

  else
  {
    v115 = STACK[0x2008];
  }

  LODWORD(STACK[0x1F80]) = v115;
  if (v114)
  {
    v116 = STACK[0x20C8];
  }

  else
  {
    v116 = STACK[0x20C0];
  }

  LODWORD(STACK[0x1F90]) = v116;
  if (v114)
  {
    v117 = STACK[0x20E0];
  }

  else
  {
    v117 = STACK[0x2100];
  }

  LODWORD(STACK[0x2100]) = v117;
  v118 = STACK[0x20F8];
  if (v114)
  {
    v118 = STACK[0x1D70];
  }

  if ((v114 & 2) != 0)
  {
    v119 = v117;
  }

  else
  {
    v119 = v118;
  }

  LODWORD(STACK[0x20F8]) = v119;
  v120 = v58;
  v121 = ((v119 ^ a1) >> v46) + ((v119 ^ a1) << v58);
  v122 = v121 + a1 - ((2 * v121) & 0xA13CB32);
  v123 = v18;
  v124 = ((v112 ^ a1) << v58) | ((v112 ^ a1) >> v46);
  v125 = v124 + a1 - ((2 * v124) & 0xA13CB32);
  LODWORD(STACK[0x20D0]) = v109;
  v126 = ((v109 ^ a1) << v58) | ((v109 ^ a1) >> v46);
  if (v46)
  {
    v127 = v122;
  }

  else
  {
    v127 = v119;
  }

  LODWORD(STACK[0x1E58]) = v127;
  v128 = v59;
  if (v59 == 8)
  {
    v129 = v112;
  }

  else
  {
    v129 = v125;
  }

  LODWORD(STACK[0x1E30]) = v129;
  if (v59 == 8)
  {
    v130 = v109;
  }

  else
  {
    v130 = v126 - 2062948967 - ((2 * v126) & 0xA13CB32);
  }

  LODWORD(STACK[0x1E28]) = v130;
  v131 = STACK[0x1DA0];
  if ((v114 & 2) != 0)
  {
    v131 = STACK[0x1D98];
  }

  LODWORD(STACK[0x1FC0]) = v108;
  v132 = ((v108 ^ 0x8509E599) >> v46) ^ ((v108 ^ 0x8509E599) << v47);
  v133 = v132 - 2062948967 - ((2 * v132) & 0xA13CB32);
  if ((v114 & 2) != 0)
  {
    v134 = v115;
  }

  else
  {
    v134 = v116;
  }

  v135 = ((v134 ^ 0x8509E599) << v58) | ((v134 ^ 0x8509E599) >> v46);
  v136 = v135 - 2062948967 - ((2 * v135) & 0xA13CB32);
  v137 = STACK[0x1EA0];
  v138 = STACK[0x1E98];
  v139 = ((v29 ^ 0x8509E599) << STACK[0x1EA0]) + ((v29 ^ 0x8509E599) >> STACK[0x1E98]);
  v140 = STACK[0x1FA0];
  v141 = ((v70 ^ 0x8509E599) << STACK[0x1EA0]) | ((v70 ^ 0x8509E599) >> STACK[0x1FA0]);
  v142 = ((v69 ^ 0x8509E599) << STACK[0x1EA0]) ^ ((v69 ^ 0x8509E599) >> STACK[0x1FA0]);
  v143 = v141 - 2062948967 - ((2 * v141) & 0xA13CB32);
  v144 = v142 - 2062948967 - ((2 * v142) & 0xA13CB32);
  if (v46)
  {
    v145 = v133;
  }

  else
  {
    v145 = v108;
  }

  LODWORD(STACK[0x1DE8]) = v145;
  LODWORD(STACK[0x1DA0]) = v134;
  if (v46)
  {
    v146 = v136;
  }

  else
  {
    v146 = v134;
  }

  LODWORD(STACK[0x1EE8]) = v146;
  v147 = STACK[0x2248];
  if (LODWORD(STACK[0x2248]) == -2122533581)
  {
    v148 = v69;
  }

  else
  {
    v148 = v144;
  }

  LODWORD(STACK[0x20C0]) = v148;
  v149 = STACK[0x2000];
  LODWORD(STACK[0x2018]) = v70;
  if (v140)
  {
    v151 = v143;
  }

  else
  {
    v151 = v70;
  }

  LODWORD(STACK[0x20B8]) = v151;
  if (v138)
  {
    v152 = v139 - 2062948967 - ((2 * v139) & 0xA13CB32);
  }

  else
  {
    v152 = v29;
  }

  LODWORD(STACK[0x1F88]) = v152;
  v153 = *(v123 + 4 * BYTE1(STACK[0x2080]));
  v150 = ((v149 ^ 0x8509E599) << v137) + ((v149 ^ 0x8509E599) >> v138);
  v154 = v150 - 2062948967 - ((2 * v150) & 0xA13CB32);
  v155 = *(v123 + 4 * BYTE2(STACK[0x21E0]));
  v156 = STACK[0x22A0] & 0x13939393 ^ 0x36B7A434;
  LODWORD(STACK[0x1E50]) = v156;
  v157 = STACK[0x1EF0] & v156;
  v158 = (LODWORD(STACK[0x22C8]) ^ 0x17B41230) & v156;
  v159 = STACK[0x21F8];
  STACK[0x1E48] = v157 >> STACK[0x21F8];
  v160 = STACK[0x22C0];
  v161 = ((v157 >> v159) + (v158 << STACK[0x22C0])) ^ __ROR4__(v153, 8) ^ v155 ^ __ROR4__(*(v123 + ((STACK[0x20F0] >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v123 + 4 * STACK[0x20D8]), 16);
  if (v138)
  {
    v162 = v154;
  }

  else
  {
    v162 = v149;
  }

  LODWORD(STACK[0x2000]) = v162;
  v163 = (v161 - 2062948967 - ((2 * v161) & 0xA13CB32)) ^ v146;
  v164 = STACK[0x2028];
  STACK[0x1EC0] = (v163 - 1761943726 - ((2 * v163) & 0x2DF5BEA4u)) ^ LODWORD(STACK[0x2028]);
  HIDWORD(v166) = *(v123 + 4 * ((v163 + 82 - ((2 * v163) & 0xA4)) ^ v164));
  LODWORD(v166) = HIDWORD(v166);
  v165 = v166 >> 16;
  LODWORD(STACK[0x1EE0]) = v165;
  v167 = (((v165 + 1035966154) & 0x2D2FFE43 ^ 0x2D2FFE43) + ((v165 + 1035966154) & 0x2D2FFE43)) | 0xAB6773;
  v168 = STACK[0x1ED8];
  v170 = v99 ^ 0x2DAFFF73 ^ (v167 - 2062948967 - ((2 * v167) & 0xA13CB22));
  v171 = v120;
  if (v46)
  {
    v172 = (v170 >> v46) | (v170 << v120);
  }

  else
  {
    v172 = v170;
  }

  LODWORD(STACK[0x1EF0]) = v172;
  v173 = STACK[0x20B0];
  if (v46)
  {
    v169 = ((v168 ^ 0x8509E599) >> v46) ^ ((v168 ^ 0x8509E599) << v47);
    v175 = v169 - 2062948967 - ((2 * v169) & 0xA13CB32);
  }

  else
  {
    v175 = v168;
  }

  LODWORD(STACK[0x1ED8]) = v175;
  if (v46)
  {
    v174 = ((v173 ^ 0x8509E599) >> v46) ^ ((v173 ^ 0x8509E599) << v171);
    v177 = v174 - 2062948967 - ((2 * v174) & 0xA13CB32);
  }

  else
  {
    v177 = v173;
  }

  LODWORD(STACK[0x1EC8]) = v177;
  if (v46)
  {
    v176 = ((v131 ^ 0x8509E599) >> v46) + ((v131 ^ 0x8509E599) << v171);
    v178 = v176 - 2062948967 - ((2 * v176) & 0xA13CB32);
  }

  else
  {
    v178 = v131;
  }

  LODWORD(STACK[0x20C8]) = v178;
  v179 = ((LODWORD(STACK[0x21B0]) ^ 0x8509E599) >> v46) ^ ((LODWORD(STACK[0x21B0]) ^ 0x8509E599) << v171);
  v180 = v179 - 2062948967 - ((2 * v179) & 0xA13CB32);
  if (v128 == 8)
  {
    v181 = STACK[0x21B0];
  }

  else
  {
    v181 = v180;
  }

  LODWORD(STACK[0x1E38]) = v181;
  if ((v114 & 2) != 0)
  {
    v182 = v118;
  }

  else
  {
    v182 = STACK[0x2100];
  }

  v183 = STACK[0x1D90];
  if ((v114 & 2) == 0)
  {
    v183 = STACK[0x1D88];
  }

  LODWORD(STACK[0x2008]) = v183;
  v184 = ((v183 ^ 0x8509E599) >> v46) ^ ((v183 ^ 0x8509E599) << v47);
  v185 = v184 - 2062948967 - ((2 * v184) & 0xA13CB32);
  LODWORD(STACK[0x20B0]) = v182;
  v186 = v46;
  v187 = ((v182 ^ 0x8509E599) >> v46) ^ ((v182 ^ 0x8509E599) << v47);
  v188 = v187 - 2062948967 - ((2 * v187) & 0xA13CB32);
  v189 = STACK[0x2298];
  if (LODWORD(STACK[0x2298]) == 8)
  {
    v185 = v183;
  }

  LODWORD(STACK[0x1E20]) = v185;
  v190 = v189;
  if (v189 == 8)
  {
    v191 = v182;
  }

  else
  {
    v191 = v188;
  }

  v192 = ((LODWORD(STACK[0x21B8]) ^ 0x8509E599) >> v138) | ((LODWORD(STACK[0x21B8]) ^ 0x8509E599) << v137);
  v193 = v192 - 2062948967 - ((2 * v192) & 0xA13CB32);
  if ((STACK[0x2068] & 2) != 0)
  {
    v194 = STACK[0x2090];
  }

  else
  {
    v194 = STACK[0x2098];
  }

  v195 = STACK[0x2170];
  v196 = ((v195 ^ 0x8509E599) << v137) ^ ((v195 ^ 0x8509E599) >> v138);
  v197 = v196 - 2062948967 - ((2 * v196) & 0xA13CB32);
  v198 = STACK[0x20A0];
  v199 = ((v198 ^ 0x8509E599) << v137) + ((v198 ^ 0x8509E599) >> v140);
  v200 = v199 - 2062948967 - ((2 * v199) & 0xA13CB32);
  if (v138)
  {
    v201 = v193;
  }

  else
  {
    v201 = STACK[0x21B8];
  }

  LODWORD(STACK[0x2100]) = v201;
  if (v147 == -2122533581)
  {
    v202 = v195;
  }

  else
  {
    v202 = v197;
  }

  LODWORD(STACK[0x1F40]) = v202;
  v203 = STACK[0x2230];
  v204 = ((LODWORD(STACK[0x2230]) ^ 0x8509E599) << v137) + ((LODWORD(STACK[0x2230]) ^ 0x8509E599) >> v140) - 2062948967 - ((2 * (((LODWORD(STACK[0x2230]) ^ 0x8509E599) << v137) + ((LODWORD(STACK[0x2230]) ^ 0x8509E599) >> v140))) & 0xA13CB32);
  if (v147 == -2122533581)
  {
    v205 = v198;
  }

  else
  {
    v205 = v200;
  }

  LODWORD(STACK[0x1E80]) = v205;
  if (v140)
  {
    v206 = v204;
  }

  else
  {
    v206 = v203;
  }

  LODWORD(STACK[0x1E98]) = v206;
  v208 = STACK[0x2078];
  if ((STACK[0x21A8] & 2) == 0)
  {
    v208 = STACK[0x1E18];
  }

  LODWORD(STACK[0x20E0]) = v208;
  v207 = ((v194 ^ 0x8509E599) << v47) ^ ((v194 ^ 0x8509E599) >> v186);
  v209 = v207 - 2062948967 - ((2 * v207) & 0xA13CB32);
  if (v190 == 8)
  {
    v209 = v194;
  }

  v210 = STACK[0x1F90];
  if ((v114 & 2) == 0)
  {
    v210 = STACK[0x1F80];
  }

  LODWORD(STACK[0x2078]) = v210;
  v211 = LODWORD(STACK[0x2208]) ^ 0x6452E44B ^ LODWORD(STACK[0x21E8]);
  LODWORD(STACK[0x1F80]) = v211;
  v212 = STACK[0x2278];
  v213 = STACK[0x2178];
  v214 = v160;
  v215 = (((STACK[0x2278] >> v159) & v211) << v159) ^ (((STACK[0x2178] << v160) & v211) >> v160);
  v216 = STACK[0x2218];
  LODWORD(STACK[0x2218]) = STACK[0x2218];
  v217 = STACK[0x2240];
  v218 = (LODWORD(STACK[0x2240]) ^ 0xB6DCD18) & (((v215 ^ ((v215 & (v216 ^ 0x16DB9A30u)) >> 1)) & (v216 ^ 0x16DB9A30)) >> 2) ^ v215 ^ ((v215 & (v216 ^ 0x16DB9A30u)) >> 1);
  LODWORD(STACK[0x1F90]) = v216 ^ 0x16DB9A30;
  LODWORD(STACK[0x2248]) = (v217 ^ 0xB6DCD18) & (((v217 ^ 0xB6DCD18) & (v216 ^ 0x16DB9A30u)) >> 2) & ((v218 & (v216 ^ 0x16DB9A30)) >> 4) ^ v218;
  v219 = (STACK[0x1F70] >> STACK[0x2220]) ^ STACK[0x1E60];
  v220 = LODWORD(STACK[0x1DE8]) ^ (v219 - 2062948967 - ((2 * v219) & 0xA13CB32)) ^ LODWORD(STACK[0x1E70]);
  v221 = (STACK[0x1F68] & v213) << STACK[0x2228];
  v222 = (STACK[0x1F68] & LODWORD(STACK[0x1F60]));
  v223 = STACK[0x2220];
  v224 = v209 ^ ((v221 | (v222 >> STACK[0x2220])) - 2062948967 - ((2 * (v221 | (v222 >> STACK[0x2220]))) & 0xA13CB32)) ^ LODWORD(STACK[0x1E78]);
  v225 = ((STACK[0x1F68] & LODWORD(STACK[0x1E40])) << v160) ^ (v222 >> v159);
  v226 = LODWORD(STACK[0x1E28]) ^ (v225 - 2062948967 - ((2 * v225) & 0xA13CB32)) ^ LODWORD(STACK[0x1E90]);
  v227 = STACK[0x2280];
  v228 = (v222 >> v159) ^ ((STACK[0x1F68] & STACK[0x2280]) << STACK[0x2228]);
  v229 = LODWORD(STACK[0x1E30]) ^ (v228 - 2062948967 - ((2 * v228) & 0xA13CB32));
  v230 = LODWORD(STACK[0x2110]) ^ (v229 - 2062948967 - ((2 * v229) & 0xA13CB32));
  v231 = (v220 - 1761943726 - ((2 * v220) & 0x2DF5BEA4)) ^ v164;
  v232 = (v224 - 1761943726 - ((2 * v224) & 0x2DF5BEA4)) ^ v164;
  v233 = (v226 - 1761943726 - ((2 * v226) & 0x2DF5BEA4)) ^ v164;
  v234 = *(v123 + 4 * BYTE2(v232)) ^ __ROR4__(*(v123 + 4 * BYTE1(v231)), 8) ^ __ROR4__(*(v123 + ((v233 >> 22) & 0x3FC)), 24);
  v235 = (v230 - 1761943726 - ((2 * v230) & 0x2DF5BEA4)) ^ v164;
  v236 = v164;
  v237 = __ROR4__(*(v123 + 4 * ((v230 + 82 - ((2 * v230) & 0xA4)) ^ v164)), 16);
  v238 = ((v234 ^ v237) - 2062948967 - ((2 * (v234 ^ v237)) & 0xA13CB32)) ^ v191;
  v239 = v238 - 1761943726 - ((2 * v238) & 0x2DF5BEA4);
  v240 = v158 << STACK[0x2228];
  v241 = STACK[0x2228];
  HIDWORD(v242) = *(v123 + 4 * BYTE1(v233));
  LODWORD(v242) = HIDWORD(v242);
  v243 = (v157 >> STACK[0x2220]) + v240;
  v244 = (v242 >> 8) ^ __ROR4__(*(v123 + ((v231 >> 22) & 0x3FC)), 24) ^ *(v123 + 4 * BYTE2(v235)) ^ __ROR4__(*(v123 + 4 * v232), 16);
  v245 = STACK[0x1E58];
  LODWORD(v240) = (v244 - 2062948967 - ((2 * v244) & 0xA13CB32)) ^ LODWORD(STACK[0x1E58]);
  v246 = v243 ^ v236;
  v247 = v246 ^ v239;
  v248 = v246 ^ (v240 - 1761943726 - ((2 * v240) & 0x2DF5BEA4u));
  v249 = STACK[0x2268];
  HIDWORD(v242) = *(v123 + 4 * ((*(STACK[0x2268] + (((v232 >> 19) & 0xE0 | (v232 >> 27)) ^ 0x5ALL)) ^ 0x20) + 96));
  LODWORD(v242) = HIDWORD(v242);
  LODWORD(v240) = (v242 >> 24) ^ __ROR4__(*(v123 + 4 * v233), 16);
  LODWORD(v242) = __ROR4__(*(v123 + 4 * BYTE1(v235)), 8);
  v250 = STACK[0x1FF8] + 2649;
  STACK[0x2068] = v250;
  LODWORD(v240) = v240 ^ v242 ^ *(v123 + 4 * ~*(v250 + ((BYTE2(v231) - 87) ^ 0xC7)));
  v251 = (v240 + LODWORD(STACK[0x21D8]) + ~((2 * v240) & 0xA13CB32)) ^ LODWORD(STACK[0x1E68]);
  v61 = (v244 ^ v245) == -2062948967;
  v252 = v216 ^ 0xCE0342E8;
  if (v61)
  {
    v252 = 656877350;
  }

  v253 = v251 ^ (((((v252 & (v216 ^ 0x16DB9A30)) >> 1) ^ 0x27272727) & v227) << v214) ^ (((((v252 & (v216 ^ 0x16DB9A30)) >> 1) ^ 0x27272727) & v212) >> v159);
  v254 = *(v123 + 4 * BYTE2(v233)) ^ __ROR4__(*(v123 + 4 * ((*(STACK[0x2290] + ((-75 * v231) ^ 0x31)) ^ 0x6C) + 125)), 16) ^ __ROR4__(*(v123 + 4 * BYTE1(v232)), 8);
  v255 = __ROR4__(*(v123 + ((v235 >> 22) & 0x3FC)), 24);
  v256 = LODWORD(STACK[0x1E20]) ^ STACK[0x1E48] ^ ((STACK[0x1E50] & LODWORD(STACK[0x1D58])) << v214) ^ ((v254 ^ v255) - 2062948967 - ((2 * (v254 ^ v255)) & 0xA13CB32));
  HIDWORD(v257) = *(v123 + ((v248 >> 22) & 0x3FC));
  LODWORD(v257) = HIDWORD(v257);
  v258 = (v253 - 1761943726 - ((2 * v253) & 0x2DF5BEA4)) ^ v236;
  v259 = (v256 - 1761943726 - ((2 * v256) & 0x2DF5BEA4)) ^ v236;
  v260 = (v257 >> 24) ^ __ROR4__(*(v123 + 4 * BYTE1(v247)), 8) ^ __ROR4__(*(v123 + 4 * ((v253 + 82 - ((2 * v253) & 0xA4)) ^ v236)), 16) ^ *(v123 + 4 * ((*(v249 + (((v259 >> 11) & 0xE0 | (v259 >> 19) & 0x1F) ^ 0x5ALL)) ^ 0x20) + 96));
  v261 = v260 - 2062948967 - ((2 * v260) & 0xA13CB32);
  LODWORD(STACK[0x1F70]) = v217 & 0x27A7A7A7;
  v262 = v217 & 0x27A7A7A7 ^ 0x4C6ACA4F;
  v263 = v262 & v212;
  STACK[0x1F60] = v263;
  v264 = v262 & STACK[0x1C90];
  STACK[0x1EA0] = v264 << v214;
  v265 = v214;
  v266 = LODWORD(STACK[0x1E38]) ^ ((v263 >> v159) | (v264 << v214)) ^ v261;
  HIDWORD(v257) = *(v123 + ((v258 >> 22) & 0x3FC));
  LODWORD(v257) = HIDWORD(v257);
  v267 = v266 - 1761943726 - ((2 * v266) & 0x2DF5BEA4);
  v268 = (*(v123 + 4 * BYTE2(v248)) ^ -*(v123 + 4 * BYTE2(v248)) ^ ((v257 >> 24) - ((v257 >> 24) ^ *(v123 + 4 * BYTE2(v248))))) + (v257 >> 24);
  HIDWORD(v257) = *(v123 + 4 * v247);
  LODWORD(v257) = HIDWORD(v257);
  v269 = v257 >> 16;
  LODWORD(v257) = __ROR4__(*(v123 + 4 * BYTE1(v259)), 8);
  v270 = (v269 ^ v257 ^ v268) - 2062948967 - ((2 * (v269 ^ v257 ^ v268)) & 0xA13CB32);
  v271 = STACK[0x22F0];
  v272 = ((LODWORD(STACK[0x22F0]) ^ 0x2AC1276C) & v262) >> v159;
  LODWORD(v264) = LODWORD(STACK[0x1EA8]) ^ (v272 | (v264 << v241)) ^ v270;
  HIDWORD(v257) = *(v123 + 4 * BYTE1(v258));
  LODWORD(v257) = HIDWORD(v257);
  v273 = (v257 >> 8) ^ __ROR4__(*(v123 + 4 * (*(STACK[0x22B8] + ((HIBYTE(v259) - 87) ^ 0x60)) ^ (~(2 * (HIBYTE(v259) - 87)) + HIBYTE(v259) - 87) ^ 0xD9u)), 24) ^ *(v123 + 4 * BYTE2(v247));
  LODWORD(v257) = __ROR4__(*(v123 + 4 * v248), 16);
  v274 = STACK[0x22E0];
  LODWORD(STACK[0x1E90]) = LODWORD(STACK[0x22E0]) ^ 0x509E589;
  v275 = STACK[0x22A0];
  v276 = STACK[0x22C8];
  LODWORD(STACK[0x1E78]) = LODWORD(STACK[0x22C8]) ^ 0x4FA44220;
  v277 = LODWORD(STACK[0x1EB0]) ^ (((v274 ^ 0x509E589) & (v275 & 0x27A7A7A7 ^ 0x4AEFC84Cu)) >> v223) ^ (((v276 ^ 0x4FA44220) & (v275 & 0x27A7A7A7 ^ 0x4AEFC84Cu)) << v265) ^ ((v273 ^ v257) - 2062948967 - ((2 * (v273 ^ v257)) & 0xA13CB32));
  v278 = *(v123 + 4 * BYTE2(v258)) ^ __ROR4__(*(v123 + 4 * BYTE1(v248)), 8) ^ __ROR4__(*(v123 + ((v247 >> 22) & 0x3FC)), 24);
  LODWORD(v257) = __ROR4__(*(v123 + 4 * v259), 16);
  v279 = LODWORD(STACK[0x1EB8]) ^ (v272 + ((v262 & (v276 ^ 0x4FA44220u)) << v241)) ^ ((v278 ^ v257) - 2062948967 - ((2 * (v278 ^ v257)) & 0xA13CB32));
  v280 = v267 ^ v236;
  v281 = *(v123 + 4 * (v267 ^ v236));
  v282 = (v264 - 1761943726 - ((2 * v264) & 0x2DF5BEA4)) ^ v236;
  HIDWORD(v257) = *(v123 + 4 * BYTE1(v282));
  LODWORD(v257) = HIDWORD(v257);
  LODWORD(v258) = (v277 - 1761943726 - ((2 * v277) & 0x2DF5BEA4)) ^ v236;
  v283 = (v279 - 1761943726 - ((2 * v279) & 0x2DF5BEA4)) ^ v236;
  v284 = (v257 >> 8) ^ __ROR4__(v281, 16) ^ __ROR4__(*(v123 + 4 * ~*(STACK[0x2250] + ((BYTE3(v258) - 87) ^ 0xC7))), 24) ^ *(v123 + 4 * BYTE2(v283));
  v285 = v284 - 2062948967 - ((2 * v284) & 0xA13CB32);
  v286 = v217 & 0xC8C8C8C ^ 0x11159511;
  v287 = v274;
  v288 = v274 ^ 0x5098599;
  v289 = (v286 & (v274 ^ 0x5098599u)) >> v223;
  STACK[0x1E68] = v289;
  v290 = v223;
  v291 = STACK[0x1C88];
  v292 = v286;
  LODWORD(STACK[0x1E70]) = v286;
  LOBYTE(v263) = v265;
  v293 = LODWORD(STACK[0x1E98]) ^ (v289 + ((v286 & v291) << v265)) ^ v285;
  LODWORD(STACK[0x2240]) = (v293 - 1761943726 - ((2 * v293) & 0x2DF5BEA4)) ^ v236;
  v294 = ((v293 + 82 - ((2 * v293) & 0xA4)) ^ v236);
  STACK[0x1F68] = 13 * v294 - 264 * ((12909 * v294) >> 18);
  v295 = *(v123 + 4 * ((v277 + 82 - ((2 * v277) & 0xA4)) ^ v236));
  v296 = *(v123 + 4 * BYTE1(v280));
  v297 = *(v123 + 4 * ((*(STACK[0x22A8] + ((BYTE2(v282) * ((v287 & 0xB5 ^ 0x24) + (v287 & 0xB5 ^ 0x91))) ^ 0x52)) ^ (~(2 * BYTE2(v282) * ((v287 & 0xB5 ^ 0x24) + (v287 & 0xB5 ^ 0x91))) + BYTE2(v282) * ((v287 & 0xB5 ^ 0x24) + (v287 & 0xB5 ^ 0x91))) ^ 0xC4) + 125)) ^ (v295 << 16) ^ __ROR4__(*(v123 + ((v283 >> 22) & 0x3FC)), 24) ^ ((v296 << ((BYTE2(v281) & 0x18 ^ 0x18) + (BYTE2(v281) & 0x18u))) + (v296 >> 8));
  v298 = v297 - 2062948967 - ((2 * v297) & 0xA13CB32);
  LODWORD(v296) = v275 & 0xC8C8C8C ^ 0x15999D11;
  LODWORD(STACK[0x1EB8]) = v271 ^ 0x1891051C;
  v299 = ((v271 ^ 0x1891051C) & v296) >> STACK[0x21F8];
  STACK[0x1EA8] = v299;
  v300 = v276 ^ 0x1D941010;
  LOBYTE(v286) = v241;
  v301 = ((v276 ^ 0x1D941010) & v296) << v241;
  STACK[0x1EB0] = v301;
  v302 = HIWORD(v295);
  LODWORD(v299) = ((LODWORD(STACK[0x1E80]) ^ v299 ^ v301 ^ HIWORD(v295) ^ v298) - 1761943726 - ((2 * (LODWORD(STACK[0x1E80]) ^ v299 ^ v301 ^ HIWORD(v295) ^ v298)) & 0x2DF5BEA4)) ^ v236;
  LODWORD(STACK[0x22C8]) = v299;
  v303 = STACK[0x7B0];
  v304 = *(STACK[0x7B0] + 4 * (13 * BYTE3(v299) - 264 * (((12909 * BYTE3(v299)) >> 16) >> 2)));
  HIDWORD(v257) = v304 ^ 0x8E15;
  LODWORD(v257) = v304 ^ 0xCD880000;
  v305 = *(v123 + 4 * ((v264 + 82 - ((2 * v264) & 0xA4)) ^ v236));
  v306 = *(v123 + 4 * BYTE2(v258)) ^ __ROR4__(v305, 16) ^ __ROR4__(*(v123 + ((v280 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v123 + 4 * BYTE1(v283)), 8);
  v307 = (v257 >> 16) - 846688747 - ((2 * (v257 >> 16)) & 0x9B111C2A);
  LODWORD(STACK[0x1E98]) = v296;
  v308 = v290;
  v309 = LODWORD(STACK[0x1F40]) ^ (((v288 & v296) >> v290) + ((v296 & v291) << v263)) ^ (v306 - 2062948967 - ((2 * v306) & 0xA13CB32));
  LODWORD(v299) = (v309 - 1761943726 - ((2 * v309) & 0x2DF5BEA4)) ^ v236;
  LODWORD(STACK[0x21A8]) = v299;
  v310 = 13 * BYTE1(v299) - 264 * ((12909 * BYTE1(v299)) >> 18);
  v311 = *(v123 + 4 * HIBYTE(v282));
  v312 = STACK[0x2290];
  v313 = (((~(2 * ((BYTE2(v305) & 0x93 ^ 0x93) + (BYTE2(v305) & 0x93))) + (BYTE2(v305) & 0x93 ^ 0x93) + (BYTE2(v305) & 0x93)) ^ *(STACK[0x2290] + ((HIBYTE(v311) * ((v302 & 0xB5 ^ 0xB5) + (v302 & 0xB5))) ^ 0x31))) + 125) | (v311 << 8);
  LODWORD(v280) = *(v123 + 4 * BYTE2(v280)) ^ __ROR4__(*(v123 + 4 * BYTE1(v258)), 8);
  LODWORD(v257) = __ROR4__(*(v123 + 4 * v283), 16);
  v314 = v286;
  LODWORD(v280) = LODWORD(STACK[0x2100]) ^ (((v292 & v300) << v286) | STACK[0x1E68]) ^ ((v280 ^ v257 ^ v313) - 2062948967 - ((2 * (v280 ^ v257 ^ v313)) & 0xA13CB32));
  LODWORD(v299) = (v280 - 1761943726 - ((2 * v280) & 0x2DF5BEA4)) ^ v236;
  LODWORD(STACK[0x2100]) = v299;
  LODWORD(v280) = *(v303 + 4 * (13 * BYTE2(v299) - 264 * (((12909 * BYTE2(v299)) >> 16) >> 2)));
  HIDWORD(v257) = v280 ^ 0x888E15;
  LODWORD(v257) = v280 ^ 0xCD000000;
  LODWORD(v280) = *(v303 + 4 * v310) ^ __ROR4__(*(v303 + 4 * STACK[0x1F68]), 8) ^ v307 ^ 0x15CD888E ^ (v257 >> 24);
  LODWORD(v280) = (v280 - 2062948967 - ((2 * v280) & 0xA13CB32)) ^ LODWORD(STACK[0x1ED0]);
  LODWORD(v280) = (v280 + 1250370232 - ((2 * v280) & 0x950E4570)) ^ LODWORD(STACK[0x1F50]);
  LODWORD(v280) = (v280 + 1901479783 - ((2 * v280) & 0xE2AC8ECE)) ^ LODWORD(STACK[0x2038]);
  LODWORD(v280) = (v280 - 2062948967 - ((2 * v280) & 0xA13CB32)) ^ LODWORD(STACK[0x21E8]);
  LODWORD(v299) = LODWORD(STACK[0x2248]) ^ LODWORD(STACK[0x2208]);
  LODWORD(STACK[0x1ED0]) = v299;
  LODWORD(v280) = v299 ^ (v280 - 514129454 - ((2 * v280) & 0xC2B603A4));
  v315 = STACK[0x2188];
  v316 = STACK[0x2180];
  LODWORD(v258) = ((v280 ^ 0x3C3C3C3C) << LODWORD(STACK[0x2188])) + ((v280 ^ 0x3C3C3C3C) >> LODWORD(STACK[0x2180]));
  v317 = v258 + 2082625075 - ((2 * v258) & 0xF844AC66);
  v318 = STACK[0x20E0];
  v319 = ((v318 ^ 0x8509E599) << LODWORD(STACK[0x2180])) ^ ((v318 ^ 0x8509E599) >> LODWORD(STACK[0x2188]));
  v320 = STACK[0x2298];
  v321 = v280 ^ 0x401E6A0F;
  if (LODWORD(STACK[0x2298]) == 8)
  {
    v322 = v321;
  }

  else
  {
    v322 = v317;
  }

  LODWORD(STACK[0x1F40]) = v322;
  v323 = v319 - 2062948967 - ((2 * v319) & 0xA13CB32);
  v324 = STACK[0x2078];
  if (v320 == 8)
  {
    v323 = v318;
  }

  v325 = ((v324 ^ 0x8509E599) << v316) | ((v324 ^ 0x8509E599) >> v315);
  v326 = v325 - 2062948967 - ((2 * v325) & 0xA13CB32);
  v327 = LODWORD(STACK[0x2238]) + 1437;
  LODWORD(STACK[0x20E0]) = v327;
  v328 = (STACK[0x2218] & 0xE0E0E0E ^ 0xF9F5F5FF) + 1330597711 + ((v327 + 52787974) ^ LODWORD(STACK[0x1F70])) + 1;
  LODWORD(STACK[0x2238]) = v327 - 1437;
  v329 = v328 + 756587540 - ((v328 << ((v327 + 99) ^ 0x5C)) & 0x5A313828);
  v330 = v314;
  v331 = (((STACK[0x1F98] & LODWORD(STACK[0x1D58])) << v314) + ((STACK[0x1F98] & (LODWORD(STACK[0x22E0]) ^ 0x501A591u)) >> v308)) ^ __ROR4__(*(v123 + 4 * BYTE1(STACK[0x20D8])), 8) ^ __ROR4__(*(v123 + 4 * STACK[0x20F0]), 16) ^ __ROR4__(*(v123 + ((STACK[0x21E0] >> 22) & 0x3FC)), 24) ^ *(v123 + 4 * BYTE2(STACK[0x2080]));
  v332 = (v331 - 2062948967 - ((2 * v331) & 0xA13CB32)) ^ LODWORD(STACK[0x20C8]);
  v333 = v332 - 1761943726 - ((2 * v332) & 0x2DF5BEA4);
  v334 = STACK[0x21F8];
  v335 = (STACK[0x1FD0] >> STACK[0x21F8]) + (STACK[0x1EF8] << v314);
  HIDWORD(v336) = *(v123 + 4 * BYTE1(STACK[0x20F0]));
  LODWORD(v336) = HIDWORD(v336);
  v337 = (v336 >> 8) ^ __ROR4__(*(v123 + 4 * ((*(v312 + ((-75 * STACK[0x21E0]) ^ 0x31)) ^ 0x6C) + 125)), 16) ^ __ROR4__(*(v123 + ((STACK[0x2080] >> 22) & 0x3FC)), 24) ^ *(v123 + 4 * ~*(STACK[0x2250] + ((WORD1(STACK[0x20D8]) - 87) ^ 0xC7)));
  v338 = v335 - 2062948967 - ((2 * v335) & 0xA13CB32);
  v339 = v337 - 2062948967 - ((2 * v337) & 0xA13CB32);
  if (v320 == 8)
  {
    v326 = v324;
  }

  v340 = v333 ^ v236;
  v341 = *(v123 + 4 * BYTE2(v340));
  v342 = v236 ^ 0x13F33ACB ^ v326 ^ v339;
  LODWORD(STACK[0x1F70]) = v342;
  v343 = v342 ^ v338;
  v344 = STACK[0x1F00];
  v345 = v341 ^ (*(v123 + 4 * BYTE1(v343)) << 24) ^ (*(v123 + 4 * BYTE1(v343)) >> 8) ^ __ROR4__(*(v123 + 4 * STACK[0x1F00]), 16);
  v346 = STACK[0x1EC0];
  v347 = __ROR4__(*(v123 + ((STACK[0x1EC0] >> 22) & 0x3FC)), 24);
  v348 = ((v345 ^ v347) + LODWORD(STACK[0x21D8]) + ~((2 * (v345 ^ v347)) & 0xA13CB32)) ^ v323;
  LODWORD(STACK[0x1F98]) = v329;
  v349 = STACK[0x2278];
  v350 = v334;
  v351 = STACK[0x2280];
  v352 = (((v329 ^ 0x2D189C14) & STACK[0x2278]) >> v334) ^ (((v329 ^ 0x2D189C14) & STACK[0x2280]) << STACK[0x22C0]) ^ v236 ^ (v348 - 1761943726 - ((2 * v348) & 0x2DF5BEA4));
  v353 = STACK[0x2140];
  v354 = ((STACK[0x2140] & 0x4F4F4F4F) >> 1) ^ 0x4AEFC84C;
  v355 = LODWORD(STACK[0x22F0]) ^ 0xBAD1277C;
  STACK[0x22F0] = v355;
  v356 = STACK[0x2178];
  v357 = (STACK[0x2178] & v354) << v314;
  v358 = v355 & v354;
  STACK[0x1F68] = v358;
  v359 = v308;
  LODWORD(v357) = (v358 >> v308) | v357;
  v360 = STACK[0x21F0];
  v361 = *(STACK[0x21F0] + ((((v343 & 0x80) != 0) | (2 * v343)) ^ 0x3BLL));
  LODWORD(v358) = LODWORD(STACK[0x1F78]) ^ __ROR4__(*(v123 + 4 * ((v361 ^ (4 * v361)) + 88)), 16) ^ __ROR4__(*(v123 + 4 * BYTE1(v340)), 8) ^ *(v123 + 4 * BYTE2(v346)) ^ 0x8509E599;
  LODWORD(STACK[0x20C8]) = v358;
  v362 = v357 ^ v236 ^ ((v358 ^ LODWORD(STACK[0x1EC8])) - 1761943726 - ((2 * (v358 ^ LODWORD(STACK[0x1EC8]))) & 0x2DF5BEA4));
  HIDWORD(v363) = *(v123 + ((v340 >> 22) & 0x3FC));
  LODWORD(v363) = HIDWORD(v363);
  v364 = (v363 >> 24) ^ __ROR4__(*(v123 + 4 * BYTE1(v344)), 8) ^ *(v123 + 4 * BYTE2(v343));
  v365 = LODWORD(STACK[0x1EE0]) ^ LODWORD(STACK[0x1ED8]) ^ (v364 - 2062948967 - ((2 * v364) & 0xA13CB32));
  v366 = ((STACK[0x1E90] & v354) >> v350) | ((STACK[0x1E78] & v354) << v330);
  v367 = (v365 - 1761943726 - ((2 * v365) & 0x2DF5BEA4)) ^ v236;
  LODWORD(v358) = v366 - 2062948967 - ((2 * v366) & 0xA13CB32);
  v368 = STACK[0x22A8];
  LOBYTE(v365) = (BYTE2(v344) * (STACK[0x1EE8] & 0xB5 ^ 0x91 | STACK[0x1EE8] & 0xB5 ^ 0x24)) ^ 0x3B ^ *(STACK[0x22A8] + ((BYTE2(v344) * (STACK[0x1EE8] & 0xB5 ^ 0x91 | STACK[0x1EE8] & 0xB5 ^ 0x24)) ^ 0x52));
  LODWORD(v344) = STACK[0x1EA0] ^ (STACK[0x1F60] >> v359);
  LODWORD(v340) = (v344 - 1761943726 - ((2 * v344) & 0x2DF5BEA4)) ^ v236 ^ __ROR4__(*(v123 + 4 * BYTE1(v346)), 8) ^ __ROR4__(*(v123 + 4 * v340), 16) ^ __ROR4__(*(v123 + ((v343 >> 22) & 0x3FC)), 24) ^ LODWORD(STACK[0x1EF0]) ^ *(v123 + 4 * (v365 + 125));
  LOBYTE(v343) = *(v360 + ((((v340 & 0x80) != 0) | (2 * v340)) ^ 0x3BLL));
  LOBYTE(v344) = v343 ^ 0x6C ^ ((4 * ~v343) ^ 0x10) & 0xFC;
  LODWORD(STACK[0x2080]) = v358;
  v369 = (v367 - 2062948967 - ((2 * v367) & 0xA13CB32)) ^ v358;
  v370 = *(v123 + 4 * (v344 - 40));
  LOBYTE(v344) = (~(2 * ((-75 * BYTE1(v340)) ^ 0x22)) + ((-75 * BYTE1(v340)) ^ 0x22)) ^ 0xE6 ^ *(v368 + ((-75 * BYTE1(v340)) ^ 0x52));
  HIDWORD(v363) = v370;
  LODWORD(v363) = v370;
  v371 = *(v123 + ((v352 >> 22) & 0x3FC));
  v372 = (v363 >> 16) ^ __ROR4__(*(v123 + 4 * BYTE1(v369)), 8) ^ __ROR4__(*(v123 + ((v362 >> 22) & 0x3FC)), 24);
  LODWORD(v358) = (v371 << 8) + 435764725 - ((v371 << 9) & 0x33F27A00);
  v373 = *(v123 + ((v369 >> 22) & 0x3FC));
  v374 = (v373 << 8) - 2062948967 - (STACK[0x1C98] & (v373 << 9));
  LODWORD(STACK[0x1FD0]) = v374;
  v375 = v374 ^ 0x8509E599 | HIBYTE(v373);
  v376 = *(v123 + 4 * v352);
  LODWORD(STACK[0x21E0]) = v358;
  HIDWORD(v363) = v376;
  LODWORD(v363) = v376;
  v377 = (v363 >> 16) - 2062948967 - ((2 * (v363 >> 16)) & 0xA13CB32);
  LODWORD(v344) = (v358 ^ 0x19F93DF5 | HIBYTE(v371)) ^ __ROR4__(*(v123 + 4 * (v344 + 125)), 8);
  LODWORD(STACK[0x1E20]) = v377;
  LODWORD(v358) = v377 ^ 0x3371E43 ^ v375;
  LODWORD(v344) = v344 ^ *(v123 + 4 * BYTE2(v369));
  v378 = v372 ^ *(v123 + 4 * ((*(STACK[0x2268] + (((v352 >> 11) & 0xE0 | (v352 >> 19) & 0x1F) ^ 0x5ALL)) ^ 0x20) + 96));
  LODWORD(v369) = *(v123 + 4 * BYTE2(v362)) ^ __ROR4__(*(v123 + 4 * v369), 16) ^ __ROR4__(*(v123 + 4 * BYTE3(v340)), 24) ^ __ROR4__(*(v123 + 4 * BYTE1(v352)), 8);
  LODWORD(v344) = v344 ^ __ROR4__(*(v123 + 4 * v362), 16);
  v379 = STACK[0x1E70];
  LODWORD(v352) = LODWORD(STACK[0x2000]) ^ (((STACK[0x1E70] & v356) << v330) | ((STACK[0x1E70] & v349) >> v359)) ^ (*(v123 + 4 * BYTE2(v340)) - 2062948967 - ((2 * *(v123 + 4 * BYTE2(v340))) & 0xA13CB32));
  LODWORD(v362) = *(v123 + 4 * BYTE1(v362));
  LODWORD(STACK[0x20F0]) = v358;
  LODWORD(v352) = v358 ^ __ROR4__(v362, 8) ^ (v352 - 2042692646 - ((2 * v352) & 0xC7DF7B4));
  LODWORD(v362) = (v378 - 2062948967 - ((2 * v378) & 0xA13CB32)) ^ LODWORD(STACK[0x1F88]);
  LODWORD(v349) = LODWORD(STACK[0x20C0]) ^ (STACK[0x1EA8] + STACK[0x1EB0]) ^ (v369 - 2062948967 - ((2 * v369) & 0xA13CB32));
  v380 = (STACK[0x1EB8] & v379) >> v350;
  v381 = v379 & v351;
  v382 = v351;
  LODWORD(v380) = v380 | (v381 << STACK[0x22C0]);
  v383 = STACK[0x1EA8] ^ ((STACK[0x1E98] & v351) << STACK[0x22C0]) ^ v236 ^ LODWORD(STACK[0x20B8]) ^ (v344 - 2062948967 - ((2 * v344) & 0xA13CB32));
  LODWORD(v381) = *(v303 + 4 * (13 * (BYTE2(v383) ^ 0xFA) - 264 * (((12909 * (BYTE2(v383) ^ 0xFAu)) >> 16) >> 2)));
  HIDWORD(v363) = v381 ^ 0x888E15;
  LODWORD(v363) = v381 ^ 0xCD000000;
  LODWORD(v381) = v363 >> 24;
  LODWORD(STACK[0x22E0]) = (v349 - 1761943726 - ((2 * v349) & 0x2DF5BEA4)) ^ v236;
  LODWORD(v349) = ((v349 + 82 - ((2 * v349) & 0xA4)) ^ v236);
  LODWORD(v369) = *(v303 + 4 * (13 * v349 - 264 * (((12909 * v349) >> 16) >> 2)));
  LODWORD(STACK[0x1EF8]) = -846688768;
  HIDWORD(v363) = v369 ^ 0x15;
  LODWORD(v363) = v369 ^ 0xCD888E00;
  LODWORD(v369) = (v363 >> 8) ^ v381;
  v384 = (v352 - 1761943726 - ((2 * v352) & 0x2DF5BEA4)) ^ v236;
  LODWORD(v358) = (v362 - 1761943726 - ((2 * v362) & 0x2DF5BEA4)) ^ v236;
  LODWORD(STACK[0x20D8]) = v358;
  v385 = v358 ^ v380;
  LODWORD(v380) = *(v303 + 4 * (13 * HIBYTE(v385) - 264 * (((12909 * HIBYTE(v385)) >> 16) >> 2)));
  HIDWORD(v363) = v380 ^ 0x8E15;
  LODWORD(v363) = v380 ^ 0xCD880000;
  v386 = (STACK[0x22F0] >> v359) & STACK[0x1F80];
  LODWORD(v358) = (LODWORD(STACK[0x1F80]) & (v382 << v330)) - 2062948967 - ((2 * (LODWORD(STACK[0x1F80]) & (v382 << v330))) & 0xA13CB32);
  LODWORD(STACK[0x2000]) = v358;
  LODWORD(v386) = (v386 << v359) ^ ((v358 ^ 0x8509E599) >> v330);
  LODWORD(v358) = v386 - 2062948967 - ((2 * v386) & 0xA13CB32);
  LODWORD(STACK[0x2218]) = v353 ^ 0x3BE10E36;
  LODWORD(v386) = (v358 ^ LODWORD(STACK[0x1F58])) & (v353 ^ 0x3BE10E36);
  LODWORD(STACK[0x1F78]) = v358;
  LODWORD(v386) = ((v386 >> 1) - 2062948967 - (v386 & 0xA13CB32)) ^ v358;
  LODWORD(v386) = (LODWORD(STACK[0x22A0]) ^ 0x1DF0871B) & ((v386 & (v353 ^ LODWORD(STACK[0x1CE0]))) >> 2) ^ v386;
  v387 = (LODWORD(STACK[0x22A0]) ^ 0x1DF0871B) & (((LODWORD(STACK[0x22A0]) ^ 0x1DF08718) & (v353 ^ LODWORD(STACK[0x1CE0]))) >> 2) & ((v386 & (v353 ^ LODWORD(STACK[0x1CD8]))) >> 4) ^ v386;
  LODWORD(v381) = *(v303 + 4 * (13 * BYTE1(v384) - 264 * (((12909 * BYTE1(v384)) >> 16) >> 2))) ^ LODWORD(STACK[0x1F08]) ^ (v369 - 846688747 - ((2 * v369) & 0x9B111C2A)) ^ (v363 >> 16);
  v388 = STACK[0x1F50];
  LODWORD(v381) = (v381 + 1250370232 - ((2 * v381) & 0x950E4570)) ^ LODWORD(STACK[0x1F50]);
  v389 = STACK[0x21E8];
  LODWORD(v381) = (v381 - 2062948967 - ((2 * v381) & 0xA13CB32)) ^ LODWORD(STACK[0x21E8]);
  v390 = STACK[0x2208];
  v391 = STACK[0x2038];
  v392 = LODWORD(STACK[0x2208]) ^ LODWORD(STACK[0x2038]) ^ v387 ^ (v381 + 1901479783 - ((2 * v381) & 0xE2AC8ECE));
  v393 = STACK[0x2180];
  v394 = ((v392 ^ 0x833963B0) >> v393) - 2062948967 - ((2 * ((v392 ^ 0x833963B0) >> v393)) & 0xA13CB32);
  v395 = STACK[0x2188];
  LODWORD(STACK[0x1F08]) = v394;
  LODWORD(STACK[0x1F80]) = v392;
  if (v395)
  {
    v396 = (v394 ^ 0x8509E599) + ((v392 ^ 0x833963B0) << v395) - 2062948967 - ((2 * ((v394 ^ 0x8509E599) + ((v392 ^ 0x833963B0) << v395))) & 0xA13CB32);
  }

  else
  {
    v396 = v392 ^ 0x6308629;
  }

  LODWORD(STACK[0x22A0]) = v396;
  v397 = LODWORD(STACK[0x1F10]) ^ 0xFB81A877 ^ LODWORD(STACK[0x21C8]);
  v398 = STACK[0x2190];
  if (LODWORD(STACK[0x21C0]) != 8)
  {
    v397 = (v397 << LODWORD(STACK[0x2190])) ^ (v397 >> v395);
  }

  LODWORD(STACK[0x2298]) = v383;
  LODWORD(STACK[0x1F00]) = v384;
  v399 = *(v303 + 4 * (13 * (HIBYTE(v383) ^ 0x96) - 264 * (((12909 * (HIBYTE(v383) ^ 0x96)) >> 16) >> 2)));
  HIDWORD(v401) = v399 ^ 0x8E15;
  LODWORD(v401) = v399 ^ 0xCD880000;
  v400 = v401 >> 16;
  v402 = *(v303 + 4 * (13 * BYTE2(v384) - 264 * (((12909 * BYTE2(v384)) >> 16) >> 2)));
  HIDWORD(v401) = v402 ^ 0x888E15;
  LODWORD(v401) = v402 ^ 0xCD000000;
  v403 = v401 >> 24;
  v404 = BYTE1(v385);
  LODWORD(STACK[0x20B8]) = v385;
  v405 = *(v303 + 4 * (13 * v385 - 264 * (((12909 * v385) >> 16) >> 2)));
  v406 = STACK[0x1EF8];
  HIDWORD(v401) = v405 ^ 0x15;
  LODWORD(v401) = v405 ^ LODWORD(STACK[0x1EF8]);
  v407 = v400 ^ v403 ^ 0x8509E599 ^ (v401 >> 8);
  v408 = STACK[0x22E0];
  v409 = *(v303 + 4 * (13 * BYTE1(v408) - 264 * (((12909 * BYTE1(v408)) >> 16) >> 2))) ^ (v397 - 846688747 - ((2 * v397) & 0x9B111C2A));
  LODWORD(STACK[0x1F60]) = v407;
  v410 = (v409 - 2062948967 - ((2 * v409) & 0xA13CB32)) ^ v407;
  v411 = (v410 + 1250370232 - ((2 * v410) & 0x950E4570)) ^ v388;
  v412 = (v411 + 1901479783 - ((2 * v411) & 0xE2AC8ECE)) ^ v391;
  v413 = (v412 - 2062948967 - ((2 * v412) & 0xA13CB32)) ^ v389;
  LODWORD(STACK[0x1F88]) = v387;
  v414 = v387 ^ v390 ^ (v413 - 514129454 - ((2 * v413) & 0xC2B603A4));
  v415 = ((v414 ^ 0x62626262) >> v398) ^ ((v414 ^ 0x62626262) << v395);
  v416 = v415 - 2062948967 - ((2 * v415) & 0xA13CB32);
  v417 = v414 ^ 0xE76B87FB;
  if (v395)
  {
    v418 = v416;
  }

  else
  {
    v418 = v417;
  }

  LODWORD(STACK[0x2208]) = v418;
  v419 = STACK[0x2250];
  v420 = *(STACK[0x2250] + (((v383 ^ 0x52) - 87) ^ 0xC7));
  LODWORD(STACK[0x2140]) = v420;
  v421 = *(v303 + 4 * (13 * ~v420 - 264 * (((12909 * ~v420) >> 16) >> 2)));
  HIDWORD(v422) = v421 ^ 0x15;
  LODWORD(v422) = v421 ^ v406;
  v423 = (v422 >> 8) - 846688747 - ((2 * (v422 >> 8)) & 0x9B111C2A);
  v424 = *(v303 + 4 * (13 * BYTE2(v408) - 264 * (((12909 * BYTE2(v408)) >> 16) >> 2)));
  v425 = *(v303 + 4 * (13 * HIBYTE(v384) - 264 * (((12909 * HIBYTE(v384)) >> 16) >> 2)));
  HIDWORD(v422) = v425 ^ 0x8E15;
  LODWORD(v422) = v425 ^ 0xCD880000;
  v426 = (LODWORD(STACK[0x1F18]) + 1901479783 - ((2 * LODWORD(STACK[0x1F18])) & 0xE2AC8ECE)) ^ v391 ^ *(v303 + 4 * (13 * v404 - 264 * (((12909 * v404) >> 16) >> 2))) ^ (*(v419 + (((HIBYTE(v424) ^ 0xCD) - 87) ^ 0xC7)) ^ 0xFF | (v424 << 8)) ^ (v422 >> 16) ^ v423;
  v427 = ((v426 ^ 0x888E1500) + 1250370232 - 2 * ((v426 ^ 0x888E1500) & 0x4A8722BB ^ v426 & 3)) ^ v388;
  v428 = (v427 + 435764725 - ((2 * v427) & 0x33F27BEA)) ^ LODWORD(STACK[0x2260]);
  v429 = v387 ^ LODWORD(STACK[0x2258]) ^ (v428 + 963780751 - ((2 * v428) & 0x72E4411E));
  v430 = ((v429 ^ 0x62626262) << v395) | ((v429 ^ 0x62626262u) >> v393);
  v431 = v430 - 2062948967 - ((2 * v430) & 0xA13CB32);
  v432 = STACK[0x2240];
  v433 = *(v303 + 4 * (13 * BYTE2(v432) - 264 * (((12909 * BYTE2(v432)) >> 16) >> 2)));
  LOBYTE(v425) = *(STACK[0x21F0] + (((v433 >> 23) & 0xFE | ((v433 & 0x80000000) == 0)) ^ 0xA1));
  v434 = ((v425 ^ (4 * v425)) + 88) | (v433 << 8);
  v435 = STACK[0x2100];
  v436 = *(v303 + 4 * (13 * LODWORD(STACK[0x2100]) - 264 * (((12909 * LODWORD(STACK[0x2100])) >> 16) >> 2)));
  HIDWORD(v422) = v436 ^ 0x15;
  LODWORD(v422) = v436 ^ v406;
  v437 = v422 >> 8;
  v438 = STACK[0x21A8];
  v439 = *(v303 + 4 * (13 * HIBYTE(v438) - 264 * (((12909 * HIBYTE(v438)) >> 16) >> 2)));
  HIDWORD(v422) = v439 ^ 0x8E15;
  LODWORD(v422) = v439 ^ 0xCD880000;
  v440 = STACK[0x22C8];
  v441 = (((v422 >> 16) ^ v437 ^ v434 ^ 0x888E1500) - 846688747 - 2 * (((v422 >> 16) ^ v437 ^ v434 ^ 0x888E1500) & 0x4D888E17 ^ ((v422 >> 16) ^ v437 ^ v434) & 2)) ^ *(v303 + 4 * (13 * BYTE1(v440) - 264 * (((12909 * BYTE1(v440)) >> 16) >> 2)));
  v442 = (v441 - 2062948967 - ((2 * v441) & 0xA13CB32)) ^ LODWORD(STACK[0x1F20]);
  v443 = (v442 + 1250370232 - ((2 * v442) & 0x950E4570)) ^ v388;
  v444 = (v443 + 1901479783 - ((2 * v443) & 0xE2AC8ECE)) ^ v391;
  v445 = (v444 - 2062948967 - ((2 * v444) & 0xA13CB32)) ^ v389;
  v446 = LODWORD(STACK[0x1ED0]) ^ (v445 - 514129454 - ((2 * v445) & 0xC2B603A4));
  v447 = ((v446 ^ 0x3C3C3C3C) << v395) ^ ((v446 ^ 0x3C3C3C3C) >> v393);
  v448 = v447 + 2082625075 - ((2 * v447) & 0xF844AC66);
  v449 = STACK[0x2160];
  v450 = STACK[0x2190];
  v451 = ((v449 ^ 0x8509E599) << LODWORD(STACK[0x2190])) | ((v449 ^ 0x8509E599) >> v395);
  LODWORD(STACK[0x2180]) = v429 ^ 0xE76B87FB;
  if (v395)
  {
    v452 = v431;
  }

  else
  {
    v452 = v429 ^ 0xE76B87FB;
  }

  LODWORD(STACK[0x21E8]) = v452;
  v453 = v446 ^ 0x401E6A0F;
  if (v395)
  {
    v454 = v448;
  }

  else
  {
    v454 = v453;
  }

  LODWORD(STACK[0x20C0]) = v454;
  v455 = v451 - 2062948967 - ((2 * v451) & 0xA13CB32);
  v456 = *(v303 + 4 * (13 * BYTE2(v440) - 264 * (((12909 * BYTE2(v440)) >> 16) >> 2)));
  HIDWORD(v458) = v456 ^ 0x888E15;
  LODWORD(v458) = v456 ^ 0xCD000000;
  v457 = v458 >> 24;
  v459 = *(v303 + 4 * (13 * HIBYTE(v432) - 264 * (((12909 * HIBYTE(v432)) >> 16) >> 2)));
  HIDWORD(v458) = v459 ^ 0x8E15;
  LODWORD(v458) = v459 ^ 0xCD880000;
  v460 = ((v458 >> 16) ^ v457) - 2062948967 - ((2 * ((v458 >> 16) ^ v457)) & 0xA13CB32);
  v461 = *(v303 + 4 * (13 * v438 - 264 * (((12909 * v438) >> 16) >> 2)));
  v462 = v406;
  HIDWORD(v458) = v461 ^ 0x15;
  LODWORD(v458) = v461 ^ v406;
  v463 = (v458 >> 8) - 846688747 - ((2 * (v458 >> 8)) & 0x9B111C2A);
  if (!v395)
  {
    v455 = v449;
  }

  v464 = *(v303 + 4 * (13 * BYTE1(v435) - 264 * (((12909 * BYTE1(v435)) >> 16) >> 2))) ^ v455 ^ v460 ^ v463;
  v465 = (v464 + 1250370232 - ((2 * v464) & 0x950E4570)) ^ v388;
  v466 = (v465 + 1901479783 - ((2 * v465) & 0xE2AC8ECE)) ^ v391;
  v467 = (v466 + 435764725 - ((2 * v466) & 0x33F27BEA)) ^ LODWORD(STACK[0x2260]);
  v468 = STACK[0x2258];
  v469 = LODWORD(STACK[0x2248]) ^ LODWORD(STACK[0x2258]) ^ (v467 + 963780751 - ((2 * v467) & 0x72E4411E));
  v470 = ((v469 ^ 0x3C3C3C3C) << v395) + ((v469 ^ 0x3C3C3C3Cu) >> v450);
  v471 = v470 + 2082625075 - ((2 * v470) & 0xF844AC66);
  if (v395)
  {
    v473 = v471;
  }

  else
  {
    v473 = v469 ^ 0x401E6A0F;
  }

  v472 = ((STACK[0x20D8] & 0xD ^ 0xD) + (STACK[0x20D8] & 0xD)) * BYTE2(LODWORD(STACK[0x20B8]));
  v474 = *(v303 + 4 * (v472 - 264 * (((993 * v472) >> 16) >> 2)));
  HIDWORD(v476) = v474 ^ 0x888E15;
  LODWORD(v476) = v474 ^ 0xCD000000;
  v475 = v476 >> 24;
  v477 = *(v303 + 4 * (13 * LODWORD(STACK[0x1F00]) - 264 * (((12909 * LODWORD(STACK[0x1F00])) >> 16) >> 2)));
  HIDWORD(v476) = v477 ^ 0x15;
  LODWORD(v476) = v477 ^ v462;
  v478 = *(v303 + 4 * (13 * HIBYTE(LODWORD(STACK[0x22E0])) - 264 * (((12909 * HIBYTE(LODWORD(STACK[0x22E0]))) >> 16) >> 2)));
  v479 = v475 ^ (v476 >> 8) ^ HIWORD(v478) ^ ((v478 ^ 0xCD888E15) << ((~LODWORD(STACK[0x2140]) & 0x10 ^ 0x10) + (~LODWORD(STACK[0x2140]) & 0x10u))) ^ 0xCD88;
  v480 = (LODWORD(STACK[0x1F88]) + 963780751 - ((2 * LODWORD(STACK[0x1F88])) & 0x72E4411E)) ^ v468 ^ LODWORD(STACK[0x1F28]) ^ *(v303 + 4 * (13 * (((STACK[0x2298] & 0xFF00) >> 8) ^ 0xDF) - 264 * (((12909 * (((STACK[0x2298] & 0xFF00) >> 8) ^ 0xDF)) >> 16) >> 2))) ^ (v479 - 846688747 - ((2 * v479) & 0x9B111C2A));
  v481 = (v480 + 1250370232 - ((2 * v480) & 0x950E4570)) ^ v388;
  v482 = (v481 + 435764725 - ((2 * v481) & 0x33F27BEA)) ^ LODWORD(STACK[0x2260]);
  v483 = (v482 + 1901479783 - ((2 * v482) & 0xE2AC8ECE)) ^ v391;
  v484 = ((v483 ^ 0x62626262) >> v450) ^ ((v483 ^ 0x62626262) << v395);
  v485 = v484 - 2062948967 - ((2 * v484) & 0xA13CB32);
  v487 = STACK[0x21C0];
  v488 = v483 ^ 0xE76B87FB;
  if (LODWORD(STACK[0x21C0]) != 8)
  {
    v488 = v485;
  }

  v489 = *(v303 + 4 * (13 * LODWORD(STACK[0x22C8]) - 264 * (((12909 * LODWORD(STACK[0x22C8])) >> 16) >> 2)));
  HIDWORD(v491) = v489 ^ 0x15;
  LODWORD(v491) = v489 ^ v462;
  v490 = v491 >> 8;
  v486 = ((LODWORD(STACK[0x2168]) ^ 0x8509E599) >> v395) + ((LODWORD(STACK[0x2168]) ^ 0x8509E599) << v450);
  v492 = v486 - 2062948967 - ((2 * v486) & 0xA13CB32);
  v493 = *(v303 + 4 * (13 * BYTE2(LODWORD(STACK[0x21A8])) - 264 * (((12909 * BYTE2(LODWORD(STACK[0x21A8]))) >> 16) >> 2)));
  v494 = *(v303 + 4 * (13 * HIBYTE(LODWORD(STACK[0x2100])) - 264 * (((12909 * HIBYTE(LODWORD(STACK[0x2100]))) >> 16) >> 2)));
  HIDWORD(v491) = v494 ^ 0x8E15;
  LODWORD(v491) = v494 ^ 0xCD880000;
  v495 = (*(STACK[0x22B8] + (((HIBYTE(v493) ^ 0xCD) - 87) ^ 0x60)) ^ (~(2 * ((HIBYTE(v493) ^ 0xCD) - 87)) + (HIBYTE(v493) ^ 0xCD) - 87) ^ 0xD9 | (v493 << 8)) ^ (v491 >> 16);
  v496 = *(v303 + 4 * (13 * BYTE1(LODWORD(STACK[0x2240])) - 264 * (((12909 * BYTE1(LODWORD(STACK[0x2240]))) >> 16) >> 2))) ^ v490 ^ ((v495 ^ 0x888E1500) - 846688747 - 2 * ((v495 ^ 0x888E1500) & 0x4D888E1D ^ v495 & 8));
  v497 = v496 - 2062948967 - ((2 * v496) & 0xA13CB32);
  v498 = (LODWORD(STACK[0x2248]) + 963780751 - ((2 * LODWORD(STACK[0x2248])) & 0x72E4411E)) ^ v468;
  v499 = (v498 + 435764725 - ((2 * v498) & 0x33F27BEA)) ^ LODWORD(STACK[0x2260]);
  if (v487 == 8)
  {
    v492 = STACK[0x2168];
  }

  v500 = ((v499 ^ v492 ^ v497) + 1250370232 - ((2 * (v499 ^ v492 ^ v497)) & 0x950E4570)) ^ v388;
  v501 = (v500 + 1901479783 - ((2 * v500) & 0xE2AC8ECE)) ^ v391;
  v502 = ((v501 ^ 0x3C3C3C3C) << v395) ^ ((v501 ^ 0x3C3C3C3C) >> v450);
  v503 = v502 + 2082625075 - ((2 * v502) & 0xF844AC66);
  v504 = v501 ^ 0x401E6A0F;
  if (v487 != 8)
  {
    v504 = v503;
  }

  if (STACK[0x1E88])
  {
    v505 = v473;
  }

  else
  {
    v505 = STACK[0x1F40];
  }

  if (STACK[0x1E88])
  {
    v506 = STACK[0x1F40];
  }

  else
  {
    v506 = v504;
  }

  if (STACK[0x1E88])
  {
    v507 = STACK[0x20C0];
  }

  else
  {
    v504 = STACK[0x20C0];
    v507 = v473;
  }

  v508 = LODWORD(STACK[0x2118]) - LODWORD(STACK[0x1CB8]);
  if ((v508 & 2) != 0)
  {
    v509 = v507;
  }

  else
  {
    v509 = v506;
  }

  if ((v508 & 2) != 0)
  {
    v510 = v504;
  }

  else
  {
    v506 = v507;
    v510 = v505;
  }

  if ((v508 & 2) != 0)
  {
    v511 = v505;
  }

  else
  {
    v511 = v504;
  }

  v512 = (STACK[0x2088] & 1) - 2062948967 - 2 * (STACK[0x2088] & 1);
  v513 = STACK[0x21C8];
  v514 = ((v513 ^ 0xFA730294 ^ v509) + 2082625075 - ((2 * (v513 ^ 0xFA730294 ^ v509)) & 0xF844AC66)) ^ v511;
  v515 = v514 - 2062948967 - ((2 * v514) & 0xA13CB32);
  LODWORD(STACK[0x2188]) = v512;
  if (v512 == -2062948967)
  {
    v516 = STACK[0x21E8];
  }

  else
  {
    v516 = STACK[0x2208];
  }

  if (v512 == -2062948967)
  {
    v517 = STACK[0x2208];
  }

  else
  {
    v517 = STACK[0x22A0];
  }

  if (v512 == -2062948967)
  {
    v518 = STACK[0x22A0];
  }

  else
  {
    v518 = v488;
  }

  if (v512 != -2062948967)
  {
    v488 = STACK[0x21E8];
  }

  if ((v508 & 2) != 0)
  {
    v519 = v518;
  }

  else
  {
    v519 = v516;
  }

  if ((v508 & 2) != 0)
  {
    v520 = v488;
  }

  else
  {
    v516 = v518;
    v520 = v517;
  }

  if ((v508 & 2) == 0)
  {
    v517 = v488;
  }

  v521 = v519 ^ v515;
  v522 = (v521 - 2062948967 - ((2 * v521) & 0xA13CB32)) ^ v520;
  LODWORD(STACK[0x20D8]) = v510;
  v523 = (v522 + 2082625075 - ((2 * v522) & 0xF844AC66)) ^ v510;
  v524 = v523 - 2041490265 - ((2 * v523) & 0xCA2A94E);
  LODWORD(STACK[0x2260]) = v516 ^ v513;
  v525 = (155457711 * (v516 ^ v513 ^ 0x358B13E) + 2082625075 - ((310915422 * (v516 ^ v513 ^ 0x358B13E)) & 0xF844AC66)) ^ v511;
  v526 = v524 ^ ((v506 ^ v516 ^ 0xF92BB3AA) - 2041490265 - ((2 * (v506 ^ v516 ^ 0xF92BB3AA)) & 0xCA2A94E));
  LODWORD(STACK[0x22A0]) = v526 ^ 0xDB57BBC7;
  v527 = v526 ^ 0xDB57BBC7 ^ (v525 - 2062948967 - ((2 * v525) & 0xA13CB32));
  v528 = (v527 - 2041490265 - ((2 * v527) & 0xCA2A94E)) ^ v513;
  v529 = STACK[0x21D8];
  LODWORD(STACK[0x22E0]) = v524 ^ v513;
  v530 = v524 ^ v513 ^ 0x5E5E5E5E;
  LODWORD(STACK[0x21A8]) = 155457711 * v530;
  v531 = (155457711 * v530) ^ v517 ^ (v528 + v529 + ~((2 * v528) & 0xA13CB32));
  v532 = (v526 ^ 0x5E5E5E5E) + 1740117181 * ((v519 ^ 0xDB57BBC7) + (v513 ^ 0xA1A1A1A1 ^ (v531 - 2041490265 - ((2 * v531) & 0xCA2A94E)))) + 1740117181;
  v533 = v532 + 556126201 - ((2 * v532) & 0x424B9FF2);
  v534 = (v531 - 2062948967 - ((2 * v531) & 0xA13CB32)) ^ v520;
  v521 ^= 0x5E5E5E5Eu;
  v535 = v513;
  v536 = v521 ^ v513 ^ (v534 - 2041490265 - ((2 * v534) & 0xCA2A94E));
  v537 = (v521 + 1016705037 * ((v517 ^ 0xDB57BBC7) + (v513 ^ 0x588B64A1 ^ v533)) + 1016705037) ^ v536;
  v538 = v519 ^ v513 ^ (v537 - 2062948967 - ((2 * v537) & 0xA13CB32));
  v539 = v513 ^ 0x358B13E;
  v540 = v536 ^ (484866449 * (v513 ^ 0x358B13E ^ v520)) ^ (484866449 * (v538 ^ 0x865154A7));
  v541 = (167791331 * (v533 ^ 0x7F7B91A7)) ^ (167791331 * (v539 ^ v517));
  LODWORD(STACK[0x22C8]) = (v535 ^ 0x27F0F506) + (v516 ^ 0x5E5E5E5E ^ ((v541 ^ v530) - 2062948967 - ((2 * (v541 ^ v530)) & 0xA13CB32)));
  v542 = STACK[0x2020];
  v543 = LODWORD(STACK[0x2060]) ^ LODWORD(STACK[0x2020]) ^ (LODWORD(STACK[0x1F30]) + 86842116 - ((2 * LODWORD(STACK[0x1F30])) & 0xA5A3608));
  v544 = LODWORD(STACK[0x1DF8]) ^ LODWORD(STACK[0x2048]);
  LODWORD(STACK[0x20C0]) = v543;
  LODWORD(STACK[0x2100]) = v544 ^ v543;
  v545 = ((v544 ^ v543 ^ LODWORD(STACK[0x21D0]) ^ LODWORD(STACK[0x1E00]) ^ 0x8509E599) - 2062948967 - 2 * ((v544 ^ v543 ^ LODWORD(STACK[0x21D0]) ^ LODWORD(STACK[0x1E00]) ^ 0x8509E599) & 0x509E59B ^ (v544 ^ v543 ^ LODWORD(STACK[0x21D0]) ^ LODWORD(STACK[0x1E00])) & 2)) ^ LODWORD(STACK[0x2128]);
  LODWORD(STACK[0x1E30]) = v545;
  v546 = (v545 + v529 + ~((2 * v545) & 0xA13CB32)) ^ LODWORD(STACK[0x1E10]);
  v547 = LODWORD(STACK[0x21A0]) ^ LODWORD(STACK[0x2210]) ^ (v546 - 2062948967 - ((2 * v546) & 0xA13CB32));
  v548 = (LODWORD(STACK[0x1F38]) - 2062948967 - ((2 * LODWORD(STACK[0x1F38])) & 0xA13CB32)) ^ LODWORD(STACK[0x1E08]);
  v549 = (v548 - 2062948967 - ((2 * v548) & 0xA13CB32)) ^ LODWORD(STACK[0x1DF0]);
  LODWORD(STACK[0x20B8]) = v547;
  v550 = v547 ^ (v549 - 2062948967 - ((2 * v549) & 0xA13CB32));
  v551 = (v550 + v529 + ~((2 * v550) & 0xA13CB32)) ^ LODWORD(STACK[0x2148]);
  v552 = ((LODWORD(STACK[0x2090]) ^ LODWORD(STACK[0x2098])) - 2062948967 - ((2 * (LODWORD(STACK[0x2090]) ^ LODWORD(STACK[0x2098]))) & 0xA13CB32)) ^ LODWORD(STACK[0x1FC0]);
  v553 = (LODWORD(STACK[0x1FA8]) - 2062948967 - ((2 * LODWORD(STACK[0x1FA8])) & 0xA13CB32)) ^ LODWORD(STACK[0x2138]) ^ LODWORD(STACK[0x2130]) ^ LODWORD(STACK[0x2050]) ^ (v551 - 2062948967 - ((2 * v551) & 0xA13CB32));
  LODWORD(STACK[0x1FC0]) = v553;
  v554 = v553 ^ (v552 - 2062948967 - ((2 * v552) & 0xA13CB32));
  v555 = (v554 - 2062948967 - ((2 * v554) & 0xA13CB32)) ^ LODWORD(STACK[0x2058]);
  v556 = (v555 - 2062948967 - ((2 * v555) & 0xA13CB32)) ^ LODWORD(STACK[0x2120]);
  v557 = LODWORD(STACK[0x20D0]) ^ LODWORD(STACK[0x20E8]) ^ (v556 - 2062948967 - ((2 * v556) & 0xA13CB32));
  v558 = LODWORD(STACK[0x2008]) ^ 0x6EECEE2F;
  v559 = ((LODWORD(STACK[0x20F8]) ^ LODWORD(STACK[0x1FC8])) - 2062948967 - ((2 * (LODWORD(STACK[0x20F8]) ^ LODWORD(STACK[0x1FC8]))) & 0xA13CB32)) ^ LODWORD(STACK[0x21B0]);
  LODWORD(STACK[0x1FC8]) = v557;
  v560 = v557 ^ (v558 - 2062948967 - ((2 * v558) & 0xA13CB32));
  v561 = ((v559 ^ v560) - 2062948967 - ((2 * (v559 ^ v560)) & 0xA13CB32)) ^ LODWORD(STACK[0x20B0]);
  v562 = (v561 - 2062948967 - ((2 * v561) & 0xA13CB32)) ^ LODWORD(STACK[0x2198]);
  v563 = (v562 - 2062948967 - ((2 * v562) & 0xA13CB32)) ^ LODWORD(STACK[0x2108]);
  v564 = STACK[0x2218];
  v565 = STACK[0x1F58];
  v566 = STACK[0x1F90];
  v567 = LODWORD(STACK[0x1F48]) ^ (((LODWORD(STACK[0x1F48]) ^ LODWORD(STACK[0x1F58])) & STACK[0x1F90]) >> 1);
  v568 = ((((LODWORD(STACK[0x2160]) ^ LODWORD(STACK[0x1F58])) & v564) >> 1) - 2062948967 - ((LODWORD(STACK[0x2160]) ^ LODWORD(STACK[0x1F58])) & v564 & 0xA13CB32)) ^ LODWORD(STACK[0x2160]);
  v569 = STACK[0x2178];
  v570 = STACK[0x2278];
  v571 = STACK[0x2220];
  v572 = STACK[0x2228];
  v573 = ((v568 & STACK[0x2178]) << STACK[0x2228]) ^ ((v568 & STACK[0x2278]) >> STACK[0x2220]);
  v574 = v573 - 2062948967 - ((2 * v573) & 0xA13CB32);
  LODWORD(STACK[0x1E38]) = v567;
  v575 = STACK[0x22F0];
  v576 = STACK[0x2280];
  v577 = STACK[0x22C0];
  v578 = (((v567 ^ 0x8509E599) & STACK[0x2280]) << STACK[0x22C0]) ^ (((v567 ^ 0x8509E599) & STACK[0x22F0]) >> v571);
  v579 = (v563 - 2062948967 - ((2 * v563) & 0xA13CB32)) ^ LODWORD(STACK[0x2040]);
  v580 = LODWORD(STACK[0x2230]) ^ LODWORD(STACK[0x20A0]) ^ 0x9635F766 ^ v579;
  LODWORD(STACK[0x1E18]) = v580;
  v581 = v580 ^ (v578 + 2110848208 - ((2 * v578) & 0xFBA1F9A0));
  v582 = (v581 - 2062948967 - ((2 * v581) & 0xA13CB32)) ^ LODWORD(STACK[0x21B8]);
  v583 = STACK[0x2170];
  LODWORD(STACK[0x21D0]) = v574;
  v584 = v574 ^ v583 ^ (v582 - 2062948967 - ((2 * v582) & 0xA13CB32));
  v585 = LODWORD(STACK[0x2168]) ^ (((LODWORD(STACK[0x2168]) ^ v565) & v564) >> 1);
  LODWORD(STACK[0x21E8]) = v585;
  v586 = (((v585 ^ 0x8509E599) & v569) << v572) - 2062948967 - ((2 * (((v585 ^ 0x8509E599) & v569) << v572)) & 0xA13CB32);
  v587 = (((v585 ^ 0x8509E599) & v570) >> STACK[0x21F8]) - 2062948967 - ((2 * (((v585 ^ 0x8509E599) & v570) >> STACK[0x21F8])) & 0xA13CB32);
  v588 = v579 & 1 | 0x12C3001C;
  v589 = v579 & 1;
  v590 = v589 ^ 1 ^ v588;
  v591 = (v589 ^ 1) + v589;
  v592 = STACK[0x1FB0] & v566;
  LODWORD(STACK[0x20F8]) = v586;
  v593 = v587 ^ v586;
  v594 = (1798269387 * v590) & v593;
  v595 = v593 & 0x400;
  if ((v595 & ~v584) != 0)
  {
    v595 = -v595;
  }

  LODWORD(STACK[0x2248]) = v584;
  v596 = v594 ^ 0x8509E599 ^ (v595 + (v584 ^ 0x8509E599));
  v597 = ((v592 >> v591) - 2062948967 - ((2 * (v592 >> v591)) & 0xA13CB32)) ^ LODWORD(STACK[0x2070]);
  v598 = ((v597 & v575) >> v571) + ((v597 & v576) << v577);
  LODWORD(STACK[0x1E28]) = v596;
  v599 = (v598 - 2062948967 - ((2 * v598) & 0xA13CB32)) ^ v596;
  v600 = v599 + 86842116 - ((2 * v599) & 0xA5A3608);
  v601 = (v599 ^ LODWORD(STACK[0x2030])) - 2062948967 - ((2 * (v599 ^ LODWORD(STACK[0x2030]))) & 0xA13CB32);
  LODWORD(STACK[0x21B0]) = v601;
  LODWORD(STACK[0x21D8]) = v533;
  v602 = LODWORD(STACK[0x1CB0]) - 379838127 * (v601 ^ 0xD5813764) + (v533 ^ 0x2125CFF9);
  v603 = v602 + 383490608 - ((2 * v602) & 0x2DB73460);
  v604 = ((-2062948967 - 131208163 * (v601 ^ 0xD5813764) - ((6019130 * (v601 ^ 0xD5813764)) & 0xA13CB32)) ^ 0x7AF61A66) + 529221367 * LODWORD(STACK[0x22C8]) + (v538 ^ 0xD80F0AF9) + 529221368;
  v605 = v604 - 88252279 - ((2 * v604) & 0xF57AC112);
  v606 = v600 ^ v542;
  v607 = v606 ^ 0x5088D2FD;
  v608 = (v541 ^ LODWORD(STACK[0x22E0])) - (((v606 ^ 0x5088D2FD) & (v606 ^ 0x902) & 0x9FB) + 2143909305) * (v606 ^ 0x5088D2FD);
  v609 = STACK[0x1D08];
  v610 = -812407749 * ((-812407749 * ((*(STACK[0x1CC0] + STACK[0x1CC8]) ^ v609) & 0x7FFFFFFF)) ^ ((-812407749 * ((*(STACK[0x1CC0] + STACK[0x1CC8]) ^ v609) & 0x7FFFFFFF)) >> 16));
  *v609 = *(STACK[0x1FF8] + (*(STACK[0x2068] + ((((((v540 + 1950940097 * (v607 - LODWORD(STACK[0x1D28])) - 594395642) ^ ((v603 ^ 0x16DB9A30) - ((2 * (v603 ^ 0x16DB9A30) + 826502604) & 0x2EF3F7DE) + 270250709)) >> 24) ^ 0x3E) - 87) ^ 0xC7)) ^ 0xE3) + 1329) ^ *(STACK[0x1D00] + (v610 >> 24)) ^ *((v610 >> 24) + STACK[0x1CF8] + 1) ^ *(STACK[0x1CF0] + (v610 >> 24)) ^ v610 ^ (-119 * BYTE3(v610)) ^ 0x8C;
  v611 = v608 + LODWORD(STACK[0x1CA8]);
  LODWORD(STACK[0x1F40]) = v611 - ((2 * v611 + 153740668) & 0xA13CB32) - 375465897;
  LODWORD(STACK[0x2278]) = v605;
  LODWORD(v610) = (v605 ^ 0xFABD6089) + LODWORD(STACK[0x1CAC]) - ((2 * ((v605 ^ 0xFABD6089) + LODWORD(STACK[0x1CAC])) - 1763132028) & 0xFBA1F9A0) - 918201454;
  LODWORD(STACK[0x1F48]) = v610;
  return (*(STACK[0x22F8] + 8 * ((1019 * ((((v611 - ((2 * v611 + 124) & 0x32) + 87) ^ v603) ^ 0x4E) == (((v611 - ((2 * v611 + 124) & 0x32) + 87) ^ v603 ^ 0x4E) + 4))) ^ LODWORD(STACK[0x20E0]))))(v610 ^ v611);
}

void sub_26AA7AFDC(int a1@<W0>, int a2@<W2>, int a3@<W3>, int a4@<W6>, int a5@<W7>, int a6@<W8>)
{
  LODWORD(STACK[0x2220]) = a6;
  LODWORD(STACK[0x20A0]) = v14;
  LODWORD(STACK[0x1FB0]) = v7;
  LODWORD(STACK[0x2218]) = a5;
  LODWORD(STACK[0x2228]) = LODWORD(STACK[0x2298]) ^ 0x13F33ACB;
  LODWORD(STACK[0x1DC8]) = LODWORD(STACK[0x2260]) ^ 0x865154A7;
  LODWORD(STACK[0x1DC0]) = v9 ^ 0x5E5E5E5E;
  LODWORD(STACK[0x2178]) = v6 ^ 0x99D1E1DA;
  LODWORD(STACK[0x2208]) = a2 ^ 0xE15B01D2;
  LODWORD(STACK[0x2240]) = v11 ^ a3;
  LODWORD(STACK[0x1DD0]) = v8 ^ 0xF8D91949;
  LODWORD(STACK[0x1F38]) = v12 ^ 0xA3B9258A;
  LODWORD(STACK[0x2260]) = v13 ^ 0x8E80C61A;
  LODWORD(STACK[0x2258]) = a1 ^ 0x44A2DC5F;
  LODWORD(STACK[0x2098]) = v13 ^ 0xBB096104;
  LODWORD(STACK[0x22C8]) = a4 ^ 0xC5A10D22;
  LODWORD(STACK[0x2140]) = v10 ^ 0xD1C58078;
  LODWORD(STACK[0x21F8]) = STACK[0x1C9C];
  LODWORD(STACK[0x1DE8]) = STACK[0x2210];
  LODWORD(STACK[0x1DB8]) = STACK[0x2058];
  LODWORD(STACK[0x1F80]) = STACK[0x21A0];
  LODWORD(STACK[0x1DB0]) = STACK[0x2040];
  LODWORD(STACK[0x20E0]) = STACK[0x1D48];
  LODWORD(STACK[0x2090]) = STACK[0x2160];
  LODWORD(STACK[0x1F88]) = STACK[0x2060];
  LODWORD(STACK[0x1DE0]) = STACK[0x2168];
  LODWORD(STACK[0x22E0]) = STACK[0x21B0];
  LODWORD(STACK[0x22F0]) = STACK[0x1CA0];
  LODWORD(STACK[0x1F90]) = STACK[0x2198];
  LODWORD(STACK[0x1DD8]) = STACK[0x1D40];
  LODWORD(STACK[0x2040]) = a4;
  LODWORD(STACK[0x1FA8]) = v10;
  JUMPOUT(0x26AA74F64);
}

uint64_t sub_26AA7B184(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _BYTE *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = ((v67 >> 23) & 0xFE | ((v67 & 0x80000000) == 0)) ^ 0x37;
  v72 = STACK[0x1FF8];
  v73 = STACK[0x1FF8] + 534;
  v74 = ~*(v73 + (((*(STACK[0x2290] + ((-75 * (BYTE2(v67) ^ 0x24)) ^ 0x31)) ^ 0x6C) + 125) ^ 0xDDLL));
  v75 = BYTE1(v67);
  v76 = STACK[0x2158];
  v77 = ~*(STACK[0x2158] + (((v74 < 0) | (2 * v74)) ^ 0xD9));
  v78 = ((~*(v76 + v71) >> 1) | (~*(v76 + v71) << 7)) ^ 0xBE;
  v79 = STACK[0x22D0];
  v80 = *STACK[0x22D0] & 0x1F9D3120;
  v81 = *STACK[0x22E8];
  v82 = STACK[0x22E8];
  LODWORD(v71) = (*(v81 + v80) ^ STACK[0x1C08]) & 0x7FFFFFFF;
  v83 = -812407749 * ((-812407749 * v71) ^ ((-812407749 * v71) >> 16));
  v84 = STACK[0x1D00];
  v85 = STACK[0x1CF8];
  v86 = STACK[0x1CF0];
  a30[2845] = ((((v77 >> 1) | (v77 << 7)) ^ 0xBE) - 40) ^ *(STACK[0x1D00] + (v83 >> 24)) ^ *((v83 >> 24) + STACK[0x1CF8] + 1) ^ *(STACK[0x1CF0] + (v83 >> 24)) ^ v83 ^ (-119 * BYTE3(v83)) ^ 0x75;
  LODWORD(v83) = -812407749 * ((*(v81 + v80) ^ STACK[0x1C10]) & 0x7FFFFFFF);
  v87 = -812407749 * (v83 ^ WORD1(v83));
  v72 += 1329;
  a30[2853] = *(v72 + (BYTE2(a7) ^ 0x41)) ^ *(v84 + (v87 >> 24)) ^ *((v87 >> 24) + v85 + 1) ^ *(v86 + (v87 >> 24)) ^ v87 ^ (-119 * BYTE3(v87)) ^ 0x2F;
  v88 = *(v73 + (v75 ^ 0x19)) ^ 0x45;
  LODWORD(v80) = -812407749 * ((*(v81 + v80) ^ STACK[0x1C18]) & 0x7FFFFFFF);
  v89 = -812407749 * (v80 ^ WORD1(v80));
  a30[2846] = *((v89 >> 24) + v85 + 1) ^ *(v84 + (v89 >> 24)) ^ *(v86 + (v89 >> 24)) ^ v89 ^ (-119 * BYTE3(v89)) ^ ((((((v88 >> 3) | (32 * v88)) ^ 0xA2) + ~*(STACK[0x2288] + (((v88 >> 3) | (32 * v88)) ^ 0xF5))) ^ 0x1D) + 96);
  LODWORD(v81) = *(v73 + ((v78 - 40) ^ 0x3DLL));
  LOBYTE(v81) = ~*(v76 + (((v81 >> 7) | (2 * (v81 ^ 0x16))) ^ 0xE3));
  v90 = ((v81 >> 1) | (v81 << 7)) ^ 0xBE;
  v91 = v79;
  v92 = *v79 & 0x1F9D3120;
  v93 = *v82;
  v94 = -812407749 * ((*(*v82 + v92) ^ a65) & 0x7FFFFFFF);
  v95 = -812407749 * (v94 ^ HIWORD(v94));
  *a65 = *(v84 + (v95 >> 24)) ^ *((v95 >> 24) + v85 + 1) ^ *(v86 + (v95 >> 24)) ^ v95 ^ (-119 * BYTE3(v95)) ^ (v90 - 40);
  LODWORD(v95) = -812407749 * ((*(v93 + v92) ^ STACK[0x1C20]) & 0x7FFFFFFF);
  v96 = -812407749 * (v95 ^ WORD1(v95));
  a30[2858] = *(v72 + (BYTE1(v69) ^ 0xD0)) ^ *(v84 + (v96 >> 24)) ^ *((v96 >> 24) + v85 + 1) ^ *(v86 + (v96 >> 24)) ^ v96 ^ (-119 * BYTE3(v96)) ^ 0xA9;
  LODWORD(v92) = -812407749 * ((*(v93 + v92) ^ STACK[0x1C28]) & 0x7FFFFFFF);
  v97 = -812407749 * (v92 ^ WORD1(v92));
  v98 = v72;
  a30[2852] = *(v72 + (HIBYTE(a7) ^ 0x4ELL)) ^ *(v84 + (v97 >> 24)) ^ *((v97 >> 24) + v85 + 1) ^ *(v86 + (v97 >> 24)) ^ v97 ^ (-119 * BYTE3(v97)) ^ 0xD9;
  v99 = *v79 & 0x1F9D3120;
  v100 = *v82;
  LODWORD(v96) = -812407749 * ((*(*v82 + v99) ^ STACK[0x1C30]) & 0x7FFFFFFF);
  v101 = -812407749 * (v96 ^ WORD1(v96));
  a30[2855] = *(v72 + (a7 ^ 0x46)) ^ *(v84 + (v101 >> 24)) ^ *((v101 >> 24) + v85 + 1) ^ *(v86 + (v101 >> 24)) ^ v101 ^ (-119 * BYTE3(v101)) ^ 0x3C;
  LODWORD(v101) = -812407749 * ((*(v100 + v99) ^ STACK[0x1C38]) & 0x7FFFFFFF);
  v102 = -812407749 * (v101 ^ WORD1(v101));
  a30[2847] = *(v73 + (*(v68 + ((v66 - 87) ^ 0xC7)) ^ 0x22)) ^ *(v84 + (v102 >> 24)) ^ *((v102 >> 24) + v85 + 1) ^ *(v86 + (v102 >> 24)) ^ v102 ^ (-119 * BYTE3(v102)) ^ 0x2A;
  LODWORD(v99) = -812407749 * ((*(v100 + v99) ^ STACK[0x1C40]) & 0x7FFFFFFF);
  v103 = -812407749 * (v99 ^ WORD1(v99));
  a30[2859] = *(v73 + (v69 ^ 0xALL)) ^ *(v84 + (v103 >> 24)) ^ *((v103 >> 24) + v85 + 1) ^ *(v86 + (v103 >> 24)) ^ v103 ^ (-119 * BYTE3(v103)) ^ 0x4B;
  v104 = *v79 & 0x1F9D3120;
  v105 = *v82;
  LODWORD(v102) = -812407749 * ((*(*v82 + v104) ^ STACK[0x1C48]) & 0x7FFFFFFF);
  v106 = -812407749 * (v102 ^ WORD1(v102));
  a30[2854] = *(v72 + (BYTE1(a7) ^ 0xBLL)) ^ *(v84 + (v106 >> 24)) ^ *((v106 >> 24) + v85 + 1) ^ *(v86 + (v106 >> 24)) ^ v106 ^ (-119 * BYTE3(v106)) ^ 0x98;
  LODWORD(v106) = -812407749 * ((*(v105 + v104) ^ STACK[0x1C50]) & 0x7FFFFFFF);
  v107 = -812407749 * (v106 ^ WORD1(v106));
  a30[2849] = *(v72 + (BYTE2(a1) ^ 0x5BLL)) ^ *(v84 + (v107 >> 24)) ^ *((v107 >> 24) + v85 + 1) ^ *(v86 + (v107 >> 24)) ^ v107 ^ (-119 * BYTE3(v107)) ^ 0xD5;
  LODWORD(v104) = -812407749 * ((*(v105 + v104) ^ STACK[0x1C58]) & 0x7FFFFFFF);
  v108 = -812407749 * (v104 ^ WORD1(v104));
  a30[2848] = *(v73 + (HIBYTE(a1) ^ 0x33)) ^ *(v84 + (v108 >> 24)) ^ *((v108 >> 24) + v85 + 1) ^ *(v86 + (v108 >> 24)) ^ v108 ^ (-119 * BYTE3(v108)) ^ 0xE2;
  v109 = *v79 & 0x1F9D3120;
  v110 = *v82;
  v111 = -812407749 * ((*(*v82 + v109) ^ STACK[0x1C60]) & 0x7FFFFFFF);
  v112 = -812407749 * (v111 ^ HIWORD(v111));
  a30[2851] = *(v72 + (a1 ^ 0x93)) ^ *(v84 + (v112 >> 24)) ^ *((v112 >> 24) + v85 + 1) ^ *(v86 + (v112 >> 24)) ^ v112 ^ (-119 * BYTE3(v112)) ^ 0x10;
  LODWORD(v105) = -812407749 * ((*(v110 + v109) ^ STACK[0x1C68]) & 0x7FFFFFFF);
  v113 = -812407749 * (v105 ^ WORD1(v105));
  v114 = STACK[0x1BD8];
  v115 = STACK[0x1BD0];
  v116 = STACK[0x1BC8];
  v117 = v73;
  a30[2857] = *(v73 + (BYTE2(v69) ^ 0x97)) ^ *(STACK[0x1BD8] + (v113 >> 24)) ^ *(STACK[0x1BD0] + (v113 >> 24) + 2) ^ *(STACK[0x1BC8] + (v113 >> 24) + 2) ^ v113 ^ (85 * BYTE3(v113)) ^ 0x8F;
  LODWORD(v79) = STACK[0x1BE0];
  HIDWORD(v118) = LODWORD(STACK[0x1BE0]) ^ 0x4B073E;
  LODWORD(v118) = LODWORD(STACK[0x1BE0]) ^ 0x70000000;
  LODWORD(v112) = v118 >> 24;
  HIDWORD(v118) = LODWORD(STACK[0x1BE0]) ^ 0x73E;
  LODWORD(v118) = LODWORD(STACK[0x1BE0]) ^ 0x704B0000;
  LODWORD(v109) = -812407749 * ((*(v110 + v109) ^ STACK[0x1C70]) & 0x7FFFFFFF);
  v119 = -812407749 * (v109 ^ WORD1(v109));
  LODWORD(v112) = v112 ^ (v118 >> 16);
  a30[2850] = *(v73 + (BYTE1(a1) ^ 0x30)) ^ *(v114 + (v119 >> 24)) ^ *(v115 + (v119 >> 24) + 2) ^ *(v116 + (v119 >> 24) + 2) ^ v119 ^ (85 * BYTE3(v119)) ^ 6;
  HIDWORD(v118) = v79 ^ 0x3E;
  LODWORD(v118) = v79 ^ 0x704B0700;
  v120 = ((v112 ^ (v118 >> 8)) + 1883965246 - ((2 * (v112 ^ (v118 >> 8))) & 0xE0960E7C)) ^ v79 ^ LODWORD(STACK[0x1F50]);
  STACK[0x22C8] = v120 ^ 0x7C877A9E ^ LODWORD(STACK[0x1F40]);
  v121 = LODWORD(STACK[0x1F48]) ^ v120;
  v122 = v120 ^ 0x89A58AA5 ^ v70;
  LODWORD(v110) = v65 ^ v120 ^ 0x7459869B;
  LOBYTE(v73) = ~*(STACK[0x2288] + (((v110 >> 3) & 0xE0 | (v110 >> 11)) ^ 0xF5)) + (((v110 >> 3) & 0xE0 | (v110 >> 11)) ^ 0xA2);
  LODWORD(STACK[0x22F0]) = *(STACK[0x21F0] + (((v110 >> 23) & 0xFE | ((v65 ^ v120) >> 31)) ^ 0x3BLL));
  v123 = v121 ^ 0x71BD3EC9;
  STACK[0x22E0] = v123;
  v124 = HIBYTE(v121) ^ 0xE6;
  v125 = v91;
  v126 = *v91 & 0x1F9D3120;
  v127 = *v82;
  v128 = -812407749 * ((*(*v82 + v126) ^ (a30 + 2864)) & 0x7FFFFFFF);
  v129 = -812407749 * (v128 ^ HIWORD(v128));
  v130 = v117;
  a30[2864] = *(v117 + v124) ^ *(v84 + (v129 >> 24)) ^ *((v129 >> 24) + v85 + 1) ^ *(v86 + (v129 >> 24)) ^ v129 ^ (-119 * BYTE3(v129)) ^ 0xD7;
  LODWORD(v129) = -812407749 * ((*(v127 + v126) ^ (a30 + 2868)) & 0x7FFFFFFF);
  v131 = -812407749 * (v129 ^ WORD1(v129));
  v132 = v84;
  a30[2868] = *(v98 + ((v122 >> 24) ^ 0x54)) ^ *(v84 + (v131 >> 24)) ^ *((v131 >> 24) + v85 + 1) ^ *(v86 + (v131 >> 24)) ^ v131 ^ (-119 * BYTE3(v131)) ^ 0x32;
  LODWORD(v126) = -812407749 * ((*(v127 + v126) ^ (a30 + 2867)) & 0x7FFFFFFF);
  v133 = -812407749 * (v126 ^ WORD1(v126));
  a30[2867] = *(v130 + (v123 ^ 0x97)) ^ *(v114 + (v133 >> 24)) ^ *(v115 + (v133 >> 24) + 2) ^ *(v116 + (v133 >> 24) + 2) ^ v133 ^ (85 * BYTE3(v133)) ^ 0xEE;
  v134 = *v125 & 0x1F9D3120;
  v135 = *v82;
  LODWORD(v79) = -812407749 * ((*(*v82 + v134) ^ (a30 + 2863)) & 0x7FFFFFFF);
  v136 = -812407749 * (v79 ^ WORD1(v79));
  v137 = STACK[0x22C8];
  v138 = v98;
  a30[2863] = *(v98 + (STACK[0x22C8] ^ 0x54)) ^ *(v114 + (v136 >> 24)) ^ *(v115 + (v136 >> 24) + 2) ^ *(v116 + (v136 >> 24) + 2) ^ v136 ^ (85 * BYTE3(v136)) ^ 2;
  LODWORD(v136) = -812407749 * ((*(v135 + v134) ^ (a30 + 2869)) & 0x7FFFFFFF);
  v139 = -812407749 * (v136 ^ WORD1(v136));
  LOBYTE(v98) = v73 ^ 0x1D;
  LOBYTE(v76) = *(v114 + (v139 >> 24)) ^ *(v115 + (v139 >> 24) + 2) ^ *(v116 + (v139 >> 24) + 2) ^ v139 ^ (85 * BYTE3(v139)) ^ 0x4D;
  v140 = v138;
  a30[2869] = *(v138 + (BYTE2(v122) ^ 0x54)) ^ v76;
  v141 = v130;
  LODWORD(v76) = -812407749 * ((*(v135 + v134) ^ (a30 + 2871)) & 0x7FFFFFFF);
  v142 = -812407749 * (v76 ^ WORD1(v76));
  a30[2871] = *(v130 + ((((~(106 * v122) - 75 * v122) ^ 0xC4 ^ *(STACK[0x22A8] + ((-75 * v122) ^ 0x52))) + 125) ^ 0xDDLL)) ^ *(v132 + (v142 >> 24)) ^ *((v142 >> 24) + v85 + 1) ^ *(v86 + (v142 >> 24)) ^ v142 ^ (-119 * BYTE3(v142)) ^ 0x2D;
  v143 = *v82;
  v144 = *v125 & 0x1F9D3120;
  LODWORD(v73) = -812407749 * ((*(*v82 + v144) ^ (a30 + 2870)) & 0x7FFFFFFF);
  v145 = -812407749 * (v73 ^ WORD1(v73));
  a30[2870] = *(v130 + (BYTE1(v122) ^ 0x97)) ^ *(v132 + (v145 >> 24)) ^ *((v145 >> 24) + v85 + 1) ^ *(v86 + (v145 >> 24)) ^ v145 ^ (-119 * BYTE3(v145)) ^ 0x1A;
  LOBYTE(v114) = *(v140 + (BYTE2(v110) ^ 0x54)) ^ 0x54;
  LODWORD(v122) = -812407749 * ((*(v143 + v144) ^ (a30 + 2873)) & 0x7FFFFFFF);
  v146 = -812407749 * (v122 ^ WORD1(v122));
  v147 = STACK[0x1C80];
  v148 = STACK[0x1C78];
  v149 = STACK[0x1D30];
  a30[2873] = *(STACK[0x22B8] + ((v114 - 87) ^ 0x60)) ^ *(STACK[0x1C80] + (v146 >> 24)) ^ (v114 - 2 * (v114 - 87) - 88) ^ *(STACK[0x1C78] + (v146 >> 24)) ^ *(STACK[0x1D30] + (v146 >> 24)) ^ v146 ^ (51 * BYTE3(v146)) ^ 0xD9;
  LODWORD(v143) = -812407749 * ((*(v143 + v144) ^ (a30 + 2861)) & 0x7FFFFFFF);
  v150 = -812407749 * (v143 ^ WORD1(v143));
  a30[2861] = *(v141 + (BYTE2(v137) ^ 0x97)) ^ *(v147 + (v150 >> 24)) ^ *(v148 + (v150 >> 24)) ^ *(v149 + (v150 >> 24)) ^ v150 ^ (51 * BYTE3(v150)) ^ 0xA6;
  LOBYTE(v114) = *(v140 + ((v98 + 96) ^ 0xC8));
  v151 = *v82;
  v152 = *v125 & 0x1F9D3120;
  LODWORD(v98) = -812407749 * ((*(*v82 + v152) ^ (a30 + 2874)) & 0x7FFFFFFF);
  v153 = -812407749 * (v98 ^ WORD1(v98));
  a30[2874] = v114 ^ *(v147 + (v153 >> 24)) ^ *(v148 + (v153 >> 24)) ^ *(v149 + (v153 >> 24)) ^ v153 ^ (51 * BYTE3(v153)) ^ 0x47;
  LODWORD(v132) = -812407749 * ((*(v151 + v152) ^ (a30 + 2860)) & 0x7FFFFFFF);
  v154 = -812407749 * (v132 ^ WORD1(v132));
  v155 = STACK[0x22F0];
  a30[2860] = *(STACK[0x2250] + (((*(v140 + ((v137 >> 24) ^ 0x54)) ^ 0x18) - 87) ^ 0xC7)) ^ *(v147 + (v154 >> 24)) ^ *(v148 + (v154 >> 24)) ^ *(v149 + (v154 >> 24)) ^ v154 ^ (51 * BYTE3(v154)) ^ 0x38;
  v156 = STACK[0x22E0];
  LODWORD(v151) = -812407749 * ((*(v151 + v152) ^ (a30 + 2866)) & 0x7FFFFFFF);
  v157 = -812407749 * (v151 ^ WORD1(v151));
  a30[2866] = *(v141 + (BYTE1(STACK[0x22E0]) ^ 0x97)) ^ *(v147 + (v157 >> 24)) ^ *(v148 + (v157 >> 24)) ^ *(v149 + (v157 >> 24)) ^ v157 ^ (51 * BYTE3(v157)) ^ 0x4A;
  LOBYTE(v153) = *(v141 + (v110 ^ 0x97));
  v158 = *v82;
  v159 = *v125 & 0x1F9D3120;
  LODWORD(v110) = -812407749 * ((*(*v82 + v159) ^ (a30 + 2875)) & 0x7FFFFFFF);
  v160 = -812407749 * (v110 ^ WORD1(v110));
  a30[2875] = v153 ^ *(v147 + (v160 >> 24)) ^ *(v148 + (v160 >> 24)) ^ *(v149 + (v160 >> 24)) ^ v160 ^ (51 * BYTE3(v160)) ^ 0x59;
  LOBYTE(v153) = *(v140 + (BYTE1(v137) ^ 0x54));
  LOBYTE(v115) = ((~(2 * ((116 - (v153 ^ 0x8B)) ^ (v153 + 1))) + ((116 - (v153 ^ 0x8B)) ^ (v153 + 1))) ^ v153) + 116;
  LODWORD(v153) = -812407749 * ((*(v158 + v159) ^ (a30 + 2862)) & 0x7FFFFFFF);
  v161 = -812407749 * (v153 ^ WORD1(v153));
  a30[2862] = *(v148 + (v161 >> 24)) ^ *(v147 + (v161 >> 24)) ^ *(v149 + (v161 >> 24)) ^ v161 ^ (51 * BYTE3(v161)) ^ v115;
  LODWORD(v151) = -812407749 * ((*(v158 + v159) ^ (a30 + 2872)) & 0x7FFFFFFF);
  v162 = -812407749 * (v151 ^ WORD1(v151));
  a30[2872] = *(v140 + (((v155 ^ (4 * v155)) + 88) ^ 0xD7)) ^ *(v147 + (v162 >> 24)) ^ *(v148 + (v162 >> 24)) ^ *(v149 + (v162 >> 24)) ^ v162 ^ (51 * BYTE3(v162)) ^ 0xDD;
  v163 = *v125;
  v164 = *v82;
  LODWORD(v115) = -812407749 * ((*(*v82 + (v163 & 0x1F9D3120)) ^ (a30 + 2865)) & 0x7FFFFFFF);
  v165 = -812407749 * (v115 ^ WORD1(v115));
  LODWORD(v158) = LODWORD(STACK[0x20E0]) - 916;
  a30[2865] = *(v141 + (BYTE2(v156) ^ 0x97)) ^ *(v147 + (v165 >> 24)) ^ *(v148 + (v165 >> 24)) ^ *(v149 + (v165 >> 24)) ^ v165 ^ (51 * BYTE3(v165)) ^ 0xD9;
  v166 = STACK[0x22F8];
  LODWORD(v119) = -812407749 * ((*(v164 + (v163 & STACK[0x1BC0])) ^ a64) & 0x7FFFFFFF);
  v167 = -812407749 * ((v119 >> ((v158 + 65) ^ 0xB7)) ^ v119);
  LODWORD(v137) = -812407749 * ((*(v164 + (v163 & 0x1F9D3120)) ^ a65) & 0x7FFFFFFF);
  v168 = -812407749 * (v137 ^ WORD1(v137));
  v169 = -812407749 * (v119 ^ WORD1(v119));
  *a64 ^= *a65 ^ *(STACK[0x2200] + (v167 >> 24)) ^ *(STACK[0x2270] + (v167 >> 24)) ^ *(STACK[0x22B0] + (v167 >> 24)) ^ *(v147 + (v168 >> 24)) ^ *(v148 + (v168 >> 24)) ^ v167 ^ *(STACK[0x1D30] + (v168 >> 24)) ^ (33 * BYTE3(v167)) ^ *(STACK[0x2200] + (v169 >> 24)) ^ *(STACK[0x2270] + (v169 >> 24)) ^ v168 ^ *(STACK[0x22B0] + (v169 >> 24)) ^ (51 * BYTE3(v168)) ^ v169 ^ (33 * BYTE3(v169));
  return (*(v166 + 8 * v158))();
}

uint64_t sub_26AA7C2CC()
{
  v13 = *(v1 + v0) ^ (v9 + v4);
  v14 = (((v13 & (v3 + 2147481688)) * v6) ^ (((v13 & (v3 + 2147481688)) * v6) >> 16)) * v6;
  v15 = ((*(v1 + v2) ^ (v10 + v4 + 16)) & 0x7FFFFFFF) * v6;
  v16 = (v15 ^ HIWORD(v15)) * v6;
  v17 = 33 * (((((v13 & (v3 + 2147481688)) * v6) ^ (((v13 & (v3 + 2147481688)) * v6) >> 16)) * v6) >> 24);
  v18 = (((v13 & 0x7FFFFFFF) * v6) ^ (((v13 & 0x7FFFFFFFu) * v6) >> 16)) * v6;
  *(v9 + v4) ^= *(v10 + v4 + 16) ^ *(v8 + (v14 >> 24)) ^ *(v12 + (v14 >> 24)) ^ *(v5 + (v14 >> 24)) ^ *(*(v7 + 8 * (v3 & 0xEE1BF0B3)) + (v16 >> 24)) ^ v14 ^ *(*(v7 + 8 * (v3 & 0xEA3560AE)) + (v16 >> 24) - 12) ^ v17 ^ *(*(v7 + 8 * (v3 ^ 0x7AB)) + (v16 >> 24) - 7) ^ v16 ^ *(v8 + (v18 >> 24)) ^ *(v12 + (v18 >> 24)) ^ (-79 * BYTE3(v16)) ^ *(STACK[0x22B0] + (v18 >> 24)) ^ v18 ^ (33 * BYTE3(v18));
  return (*(v11 + 8 * ((23 * (v4 == 15)) ^ v3)))();
}

uint64_t sub_26AA7C414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v27 = v22 + 120;
  v28 = *(*STACK[0x22E8] + (*STACK[0x22D0] & 0x8A2133F0));
  v29 = ((((v28 ^ ((&STACK[0x2000] + 10400) | 8)) & 0x7FFFFFFF) * v24) ^ ((((v28 ^ ((&STACK[0x2000] + 10400) | 8)) & 0x7FFFFFFF) * v24) >> 16)) * v24;
  *STACK[0x2310] = *(STACK[0x2200] + (v29 >> ((v27 ^ 0xA6u) + 95))) ^ *v25 ^ *(STACK[0x2270] + (v29 >> ((v27 ^ 0xA6u) + 95))) ^ *(v23 + (v29 >> ((v27 ^ 0xA6u) + 95))) ^ v29 ^ (33 * (v29 >> ((v27 ^ 0xA6u) + 95)));
  return (*(v26 + 8 * ((v22 + 277) ^ 0x7C)))(a22);
}

uint64_t sub_26AA7C510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v49 = STACK[0x2348];
  *(v49 + 11424) = a44;
  *(v49 + 11432) = v46;
  *(v49 + 11440) = a45;
  *(v49 + 11448) = STACK[0x7F0];
  *(v49 + 11456) = v47;
  v50 = STACK[0x2320];
  *(v49 + 11464) = STACK[0x2320];
  v51 = STACK[0x2300];
  *(v49 + 11472) = STACK[0x2300];
  *(v49 + 11480) = v45;
  STACK[0x22F0] = v49 + 28680;
  *(v49 + 28680) = -811825237;
  *(v49 + 28684) = 0xCF9C85BBCF9C85BBLL;
  *(v49 + 28692) = 0xCF9C85BBCF9C85BBLL;
  *(v49 + 28700) = -811825701;
  *(v49 + 28704) = -811825781;
  *(v49 + 28708) = -811825781;
  if (v50)
  {
    v52 = v51 == 0;
  }

  else
  {
    v52 = 1;
  }

  v53 = !v52;
  return (*(v48 + 8 * ((v53 * (((a3 + 1024339526) & 0xC2F1CD1F) + 378)) ^ a3)))(a1, a2, 1009461204);
}

uint64_t sub_26AA7C5D0()
{
  LODWORD(STACK[0x22C0]) = v0 + 3484;
  v3 = *STACK[0x11F8];
  STACK[0x22E8] = v3;
  v4 = STACK[0x22D8];
  v5 = *(STACK[0x22D8] + 9);
  v6 = *STACK[0x1280];
  v7 = ((v0 + 9) | 0x91) ^ v5;
  v8 = (v7 ^ 0xEE) & 0x77777751 | 0x26;
  v9 = (v7 ^ 0xEE) & 0xAE ^ -((v7 ^ 0xEE) & 0xAE) ^ (v8 - (v7 ^ 0xC8));
  v10 = ((v9 ^ v8) + 2 * (v9 & v8)) ^ 0x26DF7DBE;
  LOBYTE(v9) = *(STACK[0x22D8] + 47);
  HIDWORD(v11) = v10;
  LODWORD(v11) = v10;
  LODWORD(STACK[0x2288]) = (v11 >> 3) - ((2 * (v11 >> 3)) & 0x89B7DF6E) - 992219209;
  v12 = *(v2 + 8 * ((v0 + 3484) ^ 0xD04));
  v13 = v12 - 3;
  v14 = v12 + 529;
  v15 = -105 * v6[15];
  v16 = 13 * v4[39];
  v17 = (*(v12 + 529 + ((-105 * v4[45]) ^ 0xE8)) - 83) ^ 0x6F;
  v18 = *STACK[0x1368];
  v19 = v16 ^ 0x36;
  v20 = v16 ^ 0x4B;
  LODWORD(STACK[0x22E0]) = (v17 >> 1) | (v17 << 7);
  v21 = v4[17];
  v22 = (v20 - v19) ^ 0xFFFFFFFE;
  v23 = v22 ^ v20;
  v24 = (*(v12 + 529 + ((-105 * v9) ^ 0xE8)) - 83) ^ 0x6F;
  v25 = *(v12 + 529 + (v15 ^ 0xE8));
  if (v5 == 87)
  {
    v26 = v20;
  }

  else
  {
    v26 = ~v23;
  }

  v27 = v4[25];
  v28 = v23 + 2 * (v26 & v22);
  LODWORD(STACK[0x22D0]) = (v24 >> 1) | (v24 << 7);
  v29 = *(v13 + (v18 ^ 0x38)) + 24;
  v30 = *(v13 + (v21 ^ 0x71));
  v31 = *v3;
  v32 = (2 * v30) & 0x30;
  v30 ^= 0x18u;
  LODWORD(STACK[0x21F8]) = 45 * (v29 ^ (16 * v29) ^ 0xFFFFFF95) - ((90 * (v29 ^ (16 * v29) ^ 0xFFFFFF95)) & 0xFFFFFF92);
  v33 = (v31 >> 2) | (v31 << 6);
  LODWORD(STACK[0x22C8]) = (((v25 - 83) ^ 0x6F) >> 1) | (((v25 - 83) ^ 0x6F) << 7);
  v34 = v32 + v30;
  v35 = (*(v14 + ((-105 * v27) ^ 0xE8)) - 83) ^ 0x6F;
  v36 = v34 ^ (16 * v30);
  v37 = (*(v14 + ((-105 * (*STACK[0x1380] ^ 0x49)) ^ 0xE8)) - 83) ^ 0x6F;
  v38 = ((v37 >> 1) | (v37 << 7)) + (~(2 * ((v37 >> 1) | (v37 << 7))) | 0x6D);
  v39 = v6[12];
  v40 = *STACK[0x1350];
  LOBYTE(v37) = v40 ^ (v39 + (~(2 * v39) | 0x6D) + 74);
  LOBYTE(v37) = (v37 + v39 - 2 * v37) ^ ((v40 ^ 0xB6) + 1);
  LOBYTE(v30) = v37 - ((2 * v37) & 0x92);
  v41 = v4[1];
  v42 = *(v13 + (v41 ^ 0x71));
  LODWORD(STACK[0x21E8]) = (13 * v4[38]) & 0xB4 ^ 0x36 ^ (((13 * v4[38]) | 0x4B) - ((13 * v4[38]) ^ 0x4B));
  v43 = (((2 * v42) & 0x30) + (v42 ^ 0x18)) ^ (16 * (v42 ^ 0x18));
  LODWORD(STACK[0x22B0]) = v40;
  LODWORD(STACK[0x22B8]) = v39;
  LOBYTE(v34) = (((v30 + 73) ^ v40) + v39) ^ 0xB2;
  v44 = *STACK[0x1200];
  LODWORD(STACK[0x2280]) = v44;
  v45 = v12 + 797;
  LOBYTE(v30) = (*(v12 + 797 + ((((v44 ^ 0xE4u) >> 2) | (v44 << 6)) ^ 0x90)) ^ 0xAD) + 119;
  v46 = v6[43];
  LODWORD(STACK[0x22A8]) = v46;
  v47 = (v46 ^ 0xBu ^ v30 | v34) ^ 0x71;
  v48 = *v4;
  v184 = v41 == 0;
  v49 = *(v13 + v47) + 24;
  v50 = v49 ^ 0xFFFFFFFB;
  if (v184)
  {
    v50 = 4;
  }

  v51 = v38 + 74;
  v52 = (v49 ^ 0xFFFFFFD0) << ((v38 + 74) & 4) << ((v38 + 74) & 4 ^ 4);
  v53 = v50 & v49;
  v54 = v49 & 0x7B;
  v55 = v52 + (v49 & 0xFFFFFF80);
  if ((v52 & v53) != 0)
  {
    v53 = -v53;
  }

  v56 = v55 + v53;
  v57 = v4[48];
  LODWORD(STACK[0x2258]) = v57;
  v58 = v57 ^ 0xFFFFFF90;
  v59 = v6[74];
  LODWORD(STACK[0x2268]) = v59;
  LODWORD(STACK[0x2200]) = (v59 ^ 0x2A) + v58;
  LODWORD(STACK[0x21C0]) = v54 ^ 0xFFFFFF95 ^ v56;
  v60 = v12 + 268;
  v61 = *(v12 + 268 + v28);
  LODWORD(STACK[0x21D8]) = v61;
  v62 = v4[44];
  LODWORD(STACK[0x22A0]) = v62;
  v63 = (v61 ^ 0xFFFFFF87) - (v62 ^ 0xFFFFFFFB);
  v64 = v6[63];
  LODWORD(STACK[0x2290]) = v64;
  v65 = *STACK[0x1398];
  LODWORD(STACK[0x2248]) = v65;
  v66 = (v64 - ((2 * v64) & 0x1B6) + 91) ^ v65 ^ 0x63;
  v67 = v6[4];
  LODWORD(STACK[0x2298]) = v67;
  LOBYTE(v67) = 13 * (v67 ^ 0xF3);
  v68 = v4[14];
  LODWORD(STACK[0x2278]) = v68;
  HIDWORD(v69) = STACK[0x2288];
  LODWORD(v69) = STACK[0x2288];
  v70 = *(v13 + (v69 >> 29)) + 24;
  v71 = v70 ^ (16 * v70) ^ 0xFFFFFF95;
  v72 = ((((v68 >> 4) | (16 * v68)) ^ 0xB3) >> 4) | (16 * (((v68 >> 4) | (16 * v68)) ^ 0xFFFFFFB3));
  v73 = 45 * (v36 ^ 0xFFFFFF95);
  LODWORD(STACK[0x2288]) = v48;
  LODWORD(STACK[0x2220]) = v73;
  v74 = ((v48 - (v48 ^ -v48 ^ (71 - (v48 ^ 0x47))) - 71) ^ 1) - v48 + (v73 ^ 1);
  v75 = *(v60 + (((v67 ^ 0x4B) - (v67 ^ 0x36)) ^ 0xFFFFFFFE ^ v67 ^ 0x4B) + 2 * ((((v67 ^ 0x4B) - (v67 ^ 0x36)) ^ 0xFFFFFFFE) & (v67 ^ 0x4B))) ^ 0x72;
  v76 = v6[55];
  LODWORD(STACK[0x2210]) = v76;
  v77 = (v76 ^ 0xFFFFFFF3) - v75;
  v78 = v35 >> 1;
  v79 = v4[52];
  LODWORD(STACK[0x2260]) = v79;
  LODWORD(STACK[0x2208]) = v78 | (v35 << 7);
  v80 = (v78 & 0xFFFFFFDF | (v35 << 7)) ^ v79 ^ (v78 & 0x20 | 0xFFFFFF86);
  v81 = v6[99];
  STACK[0x2228] = v81;
  v82 = *(v13 + (v81 ^ 0x73));
  LODWORD(v81) = v6[14];
  LODWORD(STACK[0x2218]) = v81;
  v83 = (v81 - ((2 * v81) & 0x192) + 73) ^ 0xFFFFFF9A;
  v84 = (*(v45 + (v33 ^ 0x90)) ^ 0xFFFFFFAD) + 119;
  LODWORD(v81) = v4[15];
  LODWORD(STACK[0x2250]) = v81;
  STACK[0x2160] = v1;
  LODWORD(STACK[0x21F0]) = v84;
  v85 = v84 + (v81 ^ 0x2D) - 2 * (v84 & (v81 ^ 0x2D));
  LODWORD(STACK[0x2170]) = v43 ^ 0xFFFFFF95;
  LODWORD(STACK[0x2270]) = v51;
  LODWORD(v81) = v4[30];
  LODWORD(STACK[0x21D0]) = v81;
  v86 = v81 ^ 0x12 ^ (45 * ((v82 + 24) ^ (16 * (v82 + 24)) ^ 0xFFFFFF95));
  LODWORD(v81) = v4[12];
  LODWORD(STACK[0x2230]) = v81;
  v87 = (v51 & 0xDF ^ 0x49 ^ (v51 & 0x20 | 0x1C)) - (v81 ^ 0x62);
  LODWORD(v81) = v4[8];
  LODWORD(STACK[0x2240]) = v81;
  v88 = v81 - ((2 * v81) & 0x192) + 73;
  LODWORD(v81) = *STACK[0x1378];
  LODWORD(STACK[0x21E0]) = v81;
  v89 = v88 ^ v81 ^ 0xFFFFFF96;
  v90 = v6[66];
  v91 = *(v45 + (((v87 >> 2) | (v87 << 6)) ^ 0x90));
  LODWORD(STACK[0x2238]) = v90;
  LOBYTE(v81) = ((v90 & 0x22 | 0xC4) ^ v90 & 0xC4 | v90 & 0x19) ^ 0xE6;
  v92 = v4[16];
  LODWORD(STACK[0x21B8]) = v92;
  v93 = v92 ^ 0x5C;
  v94 = v91 ^ 0xFFFFFFAD;
  v95 = v4[36];
  LODWORD(STACK[0x21C8]) = v95;
  v96 = v4[37];
  LODWORD(STACK[0x21A8]) = v96;
  v97 = v63 | (v96 - (v95 ^ 0x6C)) | v66 | (LODWORD(STACK[0x2200]) + 1);
  v98 = v6[76];
  LODWORD(STACK[0x2200]) = v98;
  v99 = *STACK[0x1370];
  LODWORD(STACK[0x2190]) = v99;
  v100 = v97 | (v74 + 1) | (v98 + (~(2 * v98) | 0x49) + 92) ^ v99 ^ 0x1E | v89;
  v101 = LODWORD(STACK[0x21F8]) + 73;
  LODWORD(STACK[0x2198]) = v101;
  v102 = *(v60 + ((13 * v4[42]) ^ 0x36));
  LODWORD(STACK[0x20F0]) = v102;
  v103 = v100 | v83 ^ v101 | v80;
  v104 = STACK[0x22E8];
  v105 = *(STACK[0x22E8] + 1);
  LODWORD(STACK[0x2180]) = v105;
  v106 = v103 | v102 ^ v105 ^ 0x2F | v85;
  v107 = *(v104 + 2);
  LODWORD(STACK[0x21A0]) = v107;
  v108 = v106 | v107 ^ v72 | v77 | v86;
  LODWORD(STACK[0x21F8]) = 45 * v71;
  v109 = v4[18];
  LODWORD(STACK[0x2178]) = v109;
  v110 = v108 | v109 ^ (45 * v71 - ((90 * v71) & 0x76) + 59) | (45 * LODWORD(STACK[0x21C0]));
  v111 = 13 * (v81 + v93) + 13;
  if (((v95 ^ 0x6C) & 0x7F) != 0)
  {
    v112 = v108 | v109 ^ (45 * v71 - ((90 * v71) & 0x76) + 59) | (45 * LODWORD(STACK[0x21C0]));
  }

  else
  {
    v112 = 0;
  }

  v113 = v112 ^ (v94 + 119);
  v114 = v4[41];
  v115 = *STACK[0x13A8];
  LODWORD(STACK[0x2148]) = v115;
  v116 = -105 * (v115 ^ 0x93);
  v117 = -124 - ((((((v114 >> 6) | (4 * v114)) ^ 0x62) >> 2) | ((((v114 >> 6) | (4 * v114)) ^ 0x62) << 6)) ^ 0x1C);
  v118 = *STACK[0x1390];
  LODWORD(STACK[0x2150]) = v118;
  v119 = v118 ^ 0xFFFFFFB0;
  v120 = v6[23];
  LODWORD(STACK[0x21C0]) = v120;
  v121 = v119 - (v120 ^ 0x25);
  v122 = *(v14 + (v116 ^ 0xE8));
  LODWORD(STACK[0x2188]) = v114;
  v123 = (v117 + v114 - 2 * (v117 & v114)) ^ -v114;
  v124 = v6[38];
  LODWORD(STACK[0x2138]) = v124;
  v125 = v124 ^ 0x6A;
  v126 = *STACK[0x1358];
  LODWORD(STACK[0x2128]) = v126;
  v127 = (v126 ^ 0x2A) - v125;
  v128 = *STACK[0x1208];
  LODWORD(STACK[0x2110]) = v128;
  v129 = v4[19];
  LODWORD(STACK[0x21B0]) = v129;
  v130 = (v128 ^ 0x1B5) - (v129 ^ 0x59);
  v131 = v4[53];
  v132 = *v6;
  LODWORD(STACK[0x2108]) = v132;
  v133 = (v132 ^ 0xFFFFFFC9) - v123;
  LODWORD(STACK[0x2120]) = v131;
  v134 = v131 ^ -v131 ^ (-46 - (v131 ^ 0xFFFFFFD2));
  HIDWORD(v135) = v122;
  LODWORD(v135) = (v122 << 24) - 1392508928;
  v136 = 45 * LODWORD(STACK[0x2170]);
  v137 = v4[13];
  LODWORD(STACK[0x2170]) = v137;
  v138 = v137 + (~(2 * v137) | 0x6D) + 74;
  v139 = *STACK[0x1360];
  LODWORD(STACK[0x2100]) = v139;
  v140 = v138 ^ v139 ^ 0x2D;
  v141 = STACK[0x22E0];
  v142 = *STACK[0x13A0];
  LODWORD(STACK[0x20D0]) = v142;
  v143 = (v142 ^ 0x56) - (v141 ^ 0x45);
  v144 = v6[85];
  LODWORD(STACK[0x2168]) = v144;
  v145 = (v144 ^ 0x24) + v134;
  v146 = v6[44];
  v147 = *STACK[0x13C0];
  LODWORD(STACK[0x2158]) = v146;
  LODWORD(STACK[0x20D8]) = v147;
  v148 = (v146 ^ v147 ^ 0xDA) - 2 * (v146 ^ 0x5A) + 2 * (v147 & (v146 ^ 0x5A));
  v149 = v6[1];
  LODWORD(STACK[0x2140]) = v149;
  v150 = v149 + (~(2 * v149) | 0x6D) + 74;
  v151 = *STACK[0x1388];
  LODWORD(STACK[0x20E0]) = v151;
  v152 = v150 ^ v151 ^ 0xFFFFFFC3 | (v145 - 45) | (v133 + 124) | v130 | v121 | v127 | v143 | v140;
  v153 = v4[27];
  LODWORD(STACK[0x2130]) = v153;
  v154 = v152 | v153 ^ (v135 >> 25) ^ 0xFFFFFFE3 | *(v60 + (v111 ^ 0x36)) ^ 0x72 | v110 | v113;
  if (*(v60 + (v111 ^ 0x36)))
  {
    v155 = v154;
  }

  else
  {
    v155 = 0;
  }

  v156 = v155 ^ v148;
  v157 = *(v60 + ((13 * v6[6]) ^ 0x36));
  v158 = *STACK[0x13B0];
  LODWORD(STACK[0x20C0]) = v158;
  v159 = (v158 ^ 0x11) - (v157 ^ 0x2B);
  v160 = v6[36];
  v161 = v6[50];
  LODWORD(STACK[0x2118]) = v160;
  LODWORD(STACK[0x20B8]) = v161;
  v162 = v160 ^ v161 ^ 0x7D;
  v163 = *STACK[0x13C8];
  LODWORD(STACK[0x20B0]) = v163;
  LOBYTE(v160) = *(v60 + ((13 * (v163 ^ 0x35)) ^ 0x36));
  v164 = v6[79];
  v165 = v6[47];
  LODWORD(STACK[0x20A8]) = v165;
  LODWORD(STACK[0x20C8]) = v164;
  v166 = v164 ^ 0x3E;
  LOBYTE(v165) = (v165 ^ 0x52) + (v164 ^ 0x3E);
  LOBYTE(v164) = 2 * (v164 ^ 0x3E);
  v167 = v165 & v164;
  v168 = v165 ^ v164;
  v169 = v4[50];
  LODWORD(STACK[0x20F8]) = v169;
  LOBYTE(v160) = (v160 ^ 0x72) - (v169 ^ 0xAB);
  v170 = STACK[0x22D0];
  v171 = *STACK[0x13B8];
  LODWORD(STACK[0x20A0]) = v171;
  v172 = (v170 - ((2 * v170) & 0x92) + 73) ^ v171 ^ 0x3A;
  v173 = *(v60 + LODWORD(STACK[0x21E8]));
  LOBYTE(v171) = (v173 ^ 0xBC) - ((2 * (v173 ^ 0xBC)) & 0x66);
  v174 = v6[51];
  v175 = v6[26];
  LODWORD(STACK[0x20E8]) = v174;
  v176 = (LODWORD(STACK[0x22C8]) ^ 0x25) + (v6[30] ^ 0xFFFFFFC3);
  v177 = *(v60 + ((13 * (v6[35] ^ 0x10)) ^ 0x36));
  LODWORD(STACK[0x21E8]) = v136;
  v178 = *(v60 + ((13 * (v159 | v162 | (v168 - 4 * v166 + 2 * v167) | v174 ^ v175 ^ 0xB | v160 | v172 | ((v136 ^ 0x52) - (v177 ^ 0x72)) | v154 | v156)) ^ 0x36));
  v179 = v6[5];
  v180 = (v4[43] ^ 0x27) + ((v171 - 77) ^ (77 - v171) ^ (66 - ((v171 - 77) ^ 0x42)));
  v181 = (((v179 ^ 0xFFFFFFE8) & 0xFFFFFFE8 ^ (v179 | 0xFFFFFFE8)) + 2 * (((v179 ^ 0xFFFFFFE8) & 0xFFFFFFE8) - (v179 ^ 0xFFFFFFE8))) ^ -v179;
  v182 = v181 & 2;
  v183 = v181 & 0xFD;
  if ((v182 & v179) != 0)
  {
    v182 = -v182;
  }

  if ((v4[28] ^ v6[95]) ^ 0xCF | ((v180 + 67) | (v176 + 1) | (((v182 + v179) ^ v183) - (v4[3] ^ 0xA7) - 24)) | v178 ^ 0x72)
  {
    v184 = 0;
  }

  else
  {
    v184 = *(v4 + 1) == *(v4 + 5);
  }

  v185 = v173 ^ 0x72u;
  v186 = !v184;
  return (*(STACK[0x22F8] + 8 * ((7 * v186) ^ LODWORD(STACK[0x22C0]))))(v185);
}

uint64_t sub_26AA7D2C4@<X0>(char a1@<W0>, char a2@<W3>, char a3@<W4>, char a4@<W5>, char a5@<W6>, char a6@<W7>, _BYTE *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v28 = STACK[0x22D8];
  v28[37] = STACK[0x21A8];
  *STACK[0x13A0] = STACK[0x20D0];
  v29 = STACK[0x22E8];
  v29[1] = STACK[0x2180];
  *STACK[0x1200] = STACK[0x2280];
  *STACK[0x1370] = STACK[0x2190];
  a7[55] = STACK[0x2210];
  v28[25] = STACK[0x2208];
  *STACK[0x1350] = STACK[0x22B0];
  *a7 = STACK[0x2108];
  *STACK[0x1368] = STACK[0x2198];
  *STACK[0x1208] = STACK[0x2110];
  v28[48] = STACK[0x2258];
  *v29 = STACK[0x21F0];
  v28[17] = STACK[0x2220];
  v28[18] = STACK[0x2178];
  *STACK[0x1398] = STACK[0x2248];
  v28[39] = v23;
  v28[30] = STACK[0x21D0];
  v28[16] = STACK[0x21B8];
  *STACK[0x13A8] = STACK[0x2148];
  v28[38] = a1;
  a7[47] = STACK[0x20A8];
  *STACK[0x13C0] = STACK[0x20D8];
  *STACK[0x13C8] = STACK[0x20B0];
  a7[30] = v25;
  *STACK[0x1360] = STACK[0x2100];
  v29[2] = STACK[0x21A0];
  *STACK[0x1380] = STACK[0x2270];
  a7[5] = a4;
  *STACK[0x13B0] = STACK[0x20C0];
  v28[53] = STACK[0x2120];
  v28[28] = v24;
  *STACK[0x1390] = STACK[0x2150];
  *STACK[0x1358] = STACK[0x2128];
  v28[1] = STACK[0x21E8];
  *STACK[0x1388] = STACK[0x20E0];
  a7[50] = STACK[0x20B8];
  a7[26] = a3;
  *STACK[0x13B8] = STACK[0x20A0];
  *STACK[0x1378] = STACK[0x21E0];
  *v28 = STACK[0x2288];
  a7[35] = a5;
  v28[36] = STACK[0x21C8];
  a7[14] = STACK[0x2218];
  a7[74] = STACK[0x2268];
  a7[12] = STACK[0x22B8];
  a7[43] = STACK[0x22A8];
  a7[99] = STACK[0x2228];
  v28[41] = STACK[0x2188];
  v28[43] = v26;
  a7[38] = STACK[0x2138];
  a7[79] = STACK[0x20C8];
  v28[12] = STACK[0x2230];
  v28[13] = STACK[0x2170];
  v28[14] = STACK[0x2278];
  a7[63] = STACK[0x2290];
  v28[42] = a6;
  v28[47] = STACK[0x22D0];
  v28[44] = STACK[0x22A0];
  v28[52] = STACK[0x2260];
  v28[19] = STACK[0x21B0];
  a7[76] = STACK[0x2200];
  v28[15] = STACK[0x2250];
  v28[9] = STACK[0x21F8];
  a7[85] = STACK[0x2168];
  a7[6] = a2;
  a7[23] = STACK[0x21C0];
  a7[44] = STACK[0x2158];
  a7[1] = STACK[0x2140];
  v28[3] = v22;
  a7[66] = STACK[0x2238];
  a7[95] = v27;
  a7[4] = STACK[0x2298];
  v28[8] = STACK[0x2240];
  v28[45] = STACK[0x22E0];
  v28[27] = STACK[0x2130];
  a7[15] = STACK[0x22C8];
  a7[51] = STACK[0x20E8];
  v28[50] = STACK[0x20F8];
  a7[36] = STACK[0x2118];
  return (*(STACK[0x22F8] + 8 * ((3 * (((v21 - 1200) | 0x16) ^ 0x335) + 1374) ^ (((v21 - 1200) | 0x16) + 1))))(a21);
}

uint64_t sub_26AA7D5E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  *a8 = 4;
  *(a5 + a7) = a6;
  *(result + 64) = 0x68BEB9FED6979B1FLL;
  return result;
}

_BYTE *sub_26AA7D744(_BYTE *result, unsigned int a2, unint64_t a3)
{
  v3 = -result & 7;
  if (v3 > a3)
  {
    LODWORD(v3) = a3;
  }

  if (v3 > 3)
  {
    if (v3 > 5)
    {
      if (v3 != 6)
      {
        if (v3 != 7)
        {
          goto LABEL_20;
        }

        *result++ = a2;
      }

      *result++ = a2;
    }

    else if (v3 == 4)
    {
LABEL_16:
      *result++ = a2;
      goto LABEL_17;
    }

    *result++ = a2;
    goto LABEL_16;
  }

  switch(v3)
  {
    case 1:
LABEL_19:
      *result++ = a2;
      break;
    case 2:
LABEL_18:
      *result++ = a2;
      goto LABEL_19;
    case 3:
LABEL_17:
      *result++ = a2;
      goto LABEL_18;
  }

LABEL_20:
  v4 = a3 - v3;
  if (v4 >= 8)
  {
    v5 = 0x101010101010101 * a2;
    v6 = ((v4 >> 3) + 7) >> 3;
    v7 = (v4 >> 3) & 7;
    if (v7 > 3)
    {
      if (((v4 >> 3) & 7) <= 5)
      {
        if (v7 == 4)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (v7 == 6)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (((v4 >> 3) & 7) > 1)
    {
      if (v7 == 2)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (!v7)
    {
      goto LABEL_32;
    }

    while (1)
    {
      *result = v5;
      result += 8;
      if (!--v6)
      {
        break;
      }

LABEL_32:
      *result = v5;
      result += 8;
LABEL_33:
      *result = v5;
      result += 8;
LABEL_34:
      *result = v5;
      result += 8;
LABEL_35:
      *result = v5;
      result += 8;
LABEL_36:
      *result = v5;
      result += 8;
LABEL_37:
      *result = v5;
      result += 8;
LABEL_38:
      *result = v5;
      result += 8;
    }
  }

  v8 = v4 & 7;
  if (v8 > 3)
  {
    if (v8 > 5)
    {
      if (v8 != 6)
      {
        *result++ = a2;
      }

      *result++ = a2;
    }

    else if (v8 == 4)
    {
      goto LABEL_53;
    }

    *result++ = a2;
LABEL_53:
    *result++ = a2;
LABEL_54:
    *result++ = a2;
LABEL_55:
    *result++ = a2;
    goto LABEL_56;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (v8)
  {
LABEL_56:
    *result = a2;
  }

  return result;
}

uint64_t sub_26AA7D8DC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_msgSend_embeddedSecureElementWithError_(MEMORY[0x277D2C870], a2, 0, a4, a5);
  v11 = (objc_msgSend_isProductionSigned(v10, v9, v5, v6, v7) << 9);
  MEMORY[0x277D82BD8](v10);
  return v11;
}

uint64_t sub_26AA7D944()
{
  v14 = &unk_2803D5710;
  location = 0;
  objc_storeStrong(&location, &unk_287B37320);
  if (*v14 != -1)
  {
    dispatch_once(v14, location);
  }

  objc_storeStrong(&location, 0);
  v8 = 0;
  v9 = &v8;
  v10 = 0x20000000;
  v11 = 32;
  v12 = 1;
  block = MEMORY[0x277D85DD0];
  v3 = -1040187392;
  v4 = 0;
  v5 = sub_26AA7DB0C;
  v6 = &unk_287B37390;
  v7 = &v8;
  dispatch_sync(qword_2803D5718, &block);
  v1 = v9[3] << 12;
  _Block_object_dispose(&v8, 8);
  return v1;
}

void sub_26AA7DA5C(NSObject *a1)
{
  attr[2] = a1;
  attr[1] = a1;
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  attr[0] = dispatch_queue_attr_make_with_autorelease_frequency(v3, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  MEMORY[0x277D82BD8](v3);
  v1 = dispatch_queue_create("com.apple.sprvault.attestation.nfc", attr[0]);
  v2 = qword_2803D5718;
  qword_2803D5718 = v1;
  MEMORY[0x277D82BD8](v2);
  objc_storeStrong(attr, 0);
}

void sub_26AA7DB0C(id *a1)
{
  v20[2] = a1;
  v20[1] = a1;
  v20[0] = dispatch_semaphore_create(0);
  v11 = objc_msgSend_sharedHardwareManager(MEMORY[0x277D2C848], v10, v1, v2, v3);
  v13 = MEMORY[0x277D85DD0];
  v14 = -1040187392;
  v15 = 0;
  v16 = sub_26AA7DC70;
  v17 = &unk_287B37360;
  v18[1] = a1[4];
  v18[0] = MEMORY[0x277D82BE0](v20[0]);
  location = objc_msgSend_startSecureElementReaderSession_(v11, v10, &v13, v4, v5);
  MEMORY[0x277D82BD8](v11);
  timeout = dispatch_time(0, 500000000);
  if (dispatch_semaphore_wait(v20[0], timeout))
  {
    objc_msgSend_endSession(location, v10, v6, v7, v8);
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v18, 0);
  objc_storeStrong(v20, 0);
}

void sub_26AA7DC70(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v22 = 0;
  objc_storeStrong(&v22, a3);
  v21[1] = a1;
  if (location[0])
  {
    v17 = objc_msgSend_sharedHardwareManager(MEMORY[0x277D2C848], v18, v3, v4, v5);
    v21[0] = objc_msgSend_startSecureElementReaderSession_(v17, v18, &unk_287B37340, v6, v7);
    MEMORY[0x277D82BD8](v17);
    *(*(*(a1 + 40) + 8) + 24) = (objc_msgSend_isFirstInQueue(v21[0], v18, v8, v9, v10) ^ 1) & 1;
    objc_msgSend_endSession(v21[0], v18, v11, v12, v13);
    objc_msgSend_endSession(location[0], v18, v14, v15, v16);
    objc_storeStrong(v21, 0);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

void sub_26AA7DD94(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = 0;
  objc_storeStrong(&v4, a3);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

void sub_26AA7DE08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  *(a1 + 32) = 0;
  objc_storeStrong((a1 + 32), v2);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
}

unint64_t sub_26AA7DF14(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = objc_msgSend_embeddedSecureElementWithError_(MEMORY[0x277D2C870], a2, 0, a4, a5);
  v13 = objc_msgSend_sequenceCounter(v14, v12, v5, v6, v7);
  v15 = objc_msgSend_unsignedLongLongValue(v13, v12, v8, v9, v10);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  if (v15 >= 0x10000)
  {
    __assert_rtn("AVGetJSBLVersion", "AVInternalObjC.m", 58, "jsblVersion <= UINT16_MAX");
  }

  return v15 << 24;
}

void sub_26AA7DFD8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_26A93A000, log, OS_LOG_TYPE_ERROR, "[%@ configuration] proxy failed: %@", &v4, 0x16u);
}

void sub_26AA7E16C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_26A93A000, log, OS_LOG_TYPE_ERROR, "[%@ cancelPINCapture]: XPC failed: %@", &v4, 0x16u);
}

void sub_26AA7E1F8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_26A93A000, log, OS_LOG_TYPE_ERROR, "[%@ enableDiagnosticModeWithEnable]: XPC failed: %@", &v4, 0x16u);
}

void sub_26AA7E370(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_26A93A000, a2, OS_LOG_TYPE_ERROR, "Proxy error: %@", &v2, 0xCu);
}

void sub_26AA7E3FC(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_26A93A000, a2, OS_LOG_TYPE_ERROR, "SPRPinVaultCreate failed: %ld", &v2, 0xCu);
}

void sub_26AA7E474(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_26A93A000, a2, OS_LOG_TYPE_ERROR, "SPRPinVaultEncryptDigitCode failed: %ld", &v2, 0xCu);
}

void sub_26AA7E544(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_proxyDescription(a1, a2, a3, a4, a5);
  v8 = 138412546;
  v9 = a1;
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&dword_26A93A000, a2, OS_LOG_TYPE_ERROR, "%@.deinit: Disconnecting from %@", &v8, 0x16u);
}

void sub_26AA7E5F4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_26A93A000, log, OS_LOG_TYPE_ERROR, "%@ disconnected", buf, 0xCu);
}

void sub_26AA7E64C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_26A93A000, log, OS_LOG_TYPE_ERROR, "%@ unavailable", buf, 0xCu);
}