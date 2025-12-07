uint64_t sub_D4730(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v12 = v9 - 1;
  *(*(a5 + 32) + v12) = *(v8 + v12 + v10);
  return (*(v11 + 8 * (((v12 == 0) * (a4 + ((v5 + v6) | v7) + 229)) ^ v5)))(a1, a2, a3);
}

uint64_t sub_D4770@<X0>(_BYTE *a1@<X8>)
{
  a1[260] = *v2;
  a1[261] = v3[21];
  a1[262] = v3[22];
  a1[263] = v3[23];
  a1[264] = v3[24];
  a1[265] = v3[25];
  a1[266] = v3[26];
  a1[267] = v3[27];
  a1[268] = v3[28];
  a1[269] = v3[29];
  a1[270] = v3[30];
  a1[271] = v3[31];
  a1[272] = v3[32];
  a1[273] = v3[33];
  a1[274] = v3[34];
  a1[275] = v3[35];
  return (*(v4 + 8 * v1))();
}

uint64_t sub_D4A00@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 - 856;
  v5 = v1 - 433726631;
  v6 = (v5 ^ 0x8BAEC2B2) + *(v3 + 48);
  v7 = v6 < 0x6D8B1DC4;
  v8 = v6 > v2 + 104649298;
  if ((v2 + 104649298) < 0x6D8B1DC4 != v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  return (*(a1 + 8 * ((457 * ((v5 ^ v9) & 1)) ^ v4)))();
}

uint64_t sub_D4B08()
{
  *v2 = v0;
  *(v2 + 12) = v5 - (((v6 | 0x554F047D) + (~v6 | 0xAAB0FB82)) ^ 0xA0ED2E23) * v4 + 652;
  v8 = (*(v1 + 8 * (v5 + 2596)))(v7 - 208);
  v9 = STACK[0x948];
  *(v3 + 68) = ((v5 + 1953) | 0x20) ^ *(v2 + 8) ^ 0x4B5F6899;
  return (*(v9 + 8 * v5))(v8);
}

uint64_t sub_D4B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = (v9 * v8 + v11) % (((v10 - 1935) | 0x88Au) + 11296);
  *(a8 + 4 * ((((v9 * v8 + 53111800) % 0x34AFu) ^ 0x206F7FB6EFB6CDCDLL) + ((2 * ((v9 * v8 + 53111800) % 0x34AFu)) & 0x1B9A)) + 0x7E4201244124C8CCLL) = *(a8 + 4 * ((v13 ^ 0x1FFD4FEFF7B2F77DLL) + ((2 * v13) & 0x6EFA)) - 0x7FF53FBFDECBDDF4);
  return (*(v12 + 8 * ((3718 * (v9 == 255)) ^ v10)))();
}

uint64_t sub_D4C68@<X0>(int a1@<W8>)
{
  v4 = ((v1 - 1206) | 0x100) + 20776616 + 9002 * a1 - 256;
  *(v3 + 4 * (((v4 % 0x34AF) ^ 0x2DF3FFE7F9AE5F3BLL) + ((2 * (v4 % 0x34AF)) & 0x3E76)) + 0x4830006019468314) = *(v3 + 4 * ((((9002 * a1 + v2) % 0x34AFu) ^ 0x1FF8FFEFE7BFFCCALL) + ((2 * ((9002 * a1 + v2) % 0x34AFu)) & 0x7994)) - 0x7FE3FFBF9EFFF328);
  return (*(STACK[0x6C8] + 8 * ((3804 * (a1 == 255)) ^ v1)))();
}

uint64_t sub_D4D84()
{
  v3 = v1 - 1799;
  v4 = (*(v2 + 8 * (v3 ^ 0xB65)))();
  v5 = STACK[0x948];
  *(v0 + 112) = 0;
  return (*(v5 + 8 * v3))(v4);
}

uint64_t sub_D4DC0@<X0>(unsigned int a1@<W0>, int a2@<W5>, char a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  LODWORD(STACK[0x308]) = v16;
  LODWORD(STACK[0x390]) = a2;
  LODWORD(STACK[0x6A0]) = v13 & 0x27C0EE7C;
  STACK[0x548] = a1 ^ v15;
  v18 = STACK[0x328];
  v19 = ((v14 + 919) ^ 0x2F7030) + 1377 * ((59 * ((*(STACK[0x3E0] + (*(STACK[0x3E0] + a13) + 47) % STACK[0x328]) - 35) % STACK[0x328])) ^ 0x1F);
  v20 = *(STACK[0x900] + v19 - 4864 * (((452101821 * v19) >> 32) >> 9));
  v21 = 1377 * ((*(STACK[0x3E0] + ((v20 ^ 0x6D ^ (((v20 >> 4) & 3 ^ 2) - ((2 * ((v20 >> 4) & 3 ^ 2)) & 4) + 118)) + 48)) - 62) ^ 0xF1) + 2044845;
  v22 = *(STACK[0x900] + v21 - 4864 * (((1766023 * v21) >> 32) >> 1));
  v23 = LODWORD(STACK[0x3F0]) + 49 * (((v22 ^ 0x13) - 19) ^ ((v22 ^ 0x3B) - 59) ^ ((v22 ^ 0x5E) - 94));
  v24 = LODWORD(STACK[0x3F8]) + 98 * (((v22 ^ 0x47) + 57) ^ ((v22 ^ 0x63) - 99) ^ ((v22 ^ 0x52) + 46));
  LOBYTE(v24) = ((v23 ^ v24) & 0x8C | v24 & 0x72 ^ v23 & 0x73) ^ 0x39;
  v25 = *(STACK[0x3E0] + ((v24 >> 5) | (8 * v24)) % STACK[0x328]);
  v26 = 59 * ((v25 ^ 0xE) + ((2 * v25) & 0x1C)) + 10;
  v27 = (v26 ^ 0x63) - (v26 ^ 0xFFFFFFB1);
  v28 = 1377 * ((((((v26 ^ 0x63) & 0xF) - ((v26 ^ 0x63) & 0xF ^ 5)) ^ 0xFE) + ((v26 ^ 0x63) & 0xF)) ^ (v26 ^ 0x63) & 0xF0) + 6292890;
  LOBYTE(v28) = *(STACK[0x900] + v28 - 4864 * (((7064091 * v28) >> 32) >> 3));
  STACK[0x298] = v27;
  return (*(v17 + 8 * v14))(((v28 ^ (v27 - ((2 * v27) & 0xEC) + 118) ^ 0xD9) - ((a3 & 0xD0 ^ 0xD0) + (a3 & 0xD0))) % v18, v18, 1522716574);
}

uint64_t sub_D5124(uint64_t a1, uint64_t a2)
{
  v4 = v3 ^ 0x2D;
  v5 = (*(a2 + 8 * (v4 + 1827)))(a1);
  v6 = STACK[0x948];
  *(v2 + 344) = 0;
  return (*(v6 + 8 * v4))(v5);
}

uint64_t sub_D519C@<X0>(int a1@<W3>, uint64_t a2@<X8>)
{
  v8 = a1 + v2 + 1080;
  *(v5 + 8) = (v2 + v4) ^ (1913485891 * ((2 * ((v6 - 208) & 0x24BDD688) - (v6 - 208) + 1531062646) ^ 0xC6AECE5C));
  *v5 = a2;
  v9 = (*(v7 + 8 * (v3 + v2 + 15)))(v6 - 208);
  return (*(STACK[0x948] + 8 * v8))(v9);
}

uint64_t sub_D5304()
{
  *v1 = v0 - 1775714371 * ((((v2 - 208) | 0x1A6E20FD) - (v2 - 208) + ((v2 - 208) & 0xE591DF00)) ^ 0x999BBD7) + 1979657119;
  v4 = (*(v3 + 8 * (v0 + 2082)))(v2 - 208);
  return (*(STACK[0x948] + 8 * v0))(v4);
}

uint64_t sub_D53B8(uint64_t a1, uint64_t a2, int a3)
{
  *v5 = v3;
  v7 = *(v6 + 8 * (a3 + v4 + 537));
  LODWORD(STACK[0x8F0]) = 624831207;
  return v7(a1, a2);
}

uint64_t sub_D545C()
{
  v4 = v0[5];
  v5 = STACK[0xBCC];
  v6 = STACK[0xA7C];
  v4[11] = STACK[0xA64];
  v4[12] = v6;
  v4[13] = v5;
  v4[32] = STACK[0xF2C];
  v7 = v0[89];
  v8 = *(v7 + 24);
  v9 = *(v7 + 8);
  v10 = v0[78];
  v11 = 1583996299 * ((v2 + 938527502 - 2 * ((v2 - 208) & 0x37F0CBDE)) ^ 0x7E0D0AC1);
  *(v1 + 64) = v11 + (v6 ^ 0x7BFEFD5F) + ((2 * v6) & 0xF7FDFABE) - 4211980;
  *(v1 + 16) = v4;
  *v1 = v8;
  *(v1 + 32) = v10;
  *(v1 + 40) = 0;
  *(v1 + 8) = 782917927 - v11;
  *(v1 + 48) = v9;
  *(v1 + 24) = v11 ^ 0x1E8;
  *(v1 + 56) = v11 + v5 + 327009776;
  v12 = (*(v3 + 21928))(v2 - 208);
  return (*(STACK[0x948] + 8 * ((273 * ((*(v1 + 60) & 1) == 0)) ^ 0xF4u)))(v12, STACK[0x360]);
}

uint64_t sub_D55A4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(*v12 + ((((v10 + a3) & 0xFFFFFFF8 ^ (((a2 - 129) | 0x228) - 694759499)) + ((2 * ((v10 + a3) & 0xFFFFFFF8)) & 0xAD2DA3B0) + 1611659667) & *v13));
  v16 = __ROR8__((v10 + a3) & 0xFFFFFFFFFFFFFFF8, 8);
  v17 = (((2 * (v16 + v15)) & 0xD89DEC5D51EDCDA4) - (v16 + v15) + 0x13B109D15709192DLL) ^ 0x1B2E4C8AF6C9A938;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ v7;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ a7;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ v8;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ v9;
  v26 = __ROR8__(v25, 8);
  v27 = v25 ^ __ROR8__(v24, 61);
  v28 = (v26 + v27 - ((2 * (v26 + v27)) & 0x7C61213832F8FEC6) - 0x41CF6F63E683809DLL) ^ 0x31B2FDD4C5D13F65;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * (v30 + v29)) & 0x51F5E33595951A7CLL) - (v30 + v29) - 0x28FAF19ACACA8D3FLL) ^ 0xE9765198A5B6C262;
  v32 = __ROR8__(v31, 8);
  v33 = __ROR8__(v29, 61);
  *(v10 + a3) = (((a4 - ((v32 + (v31 ^ v33)) | a4) + ((v32 + (v31 ^ v33)) | 0x96CB47EBCAB7129CLL)) ^ 0xB0E4783405530DD0) >> (8 * ((v10 + a3) & 7))) ^ *(v11 + a3);
  return (*(v14 + 8 * ((91 * (a3 == 15)) ^ a2)))();
}

uint64_t sub_D58D8()
{
  **(v1 + 448) = 0;
  **(v1 + 1368) = 0;
  return (*(v2 + 8 * v0))();
}

uint64_t sub_D5900()
{
  *(v1 + 344) = STACK[0x370];
  *(v1 + 64) = &STACK[0xC0C];
  LODWORD(STACK[0xD10]) = 1594033909;
  return (*(v2 + 8 * v0))(624788556);
}

uint64_t sub_D5AA4(int a1, char a2, int a3, char a4, uint64_t a5, uint64_t a6, int a7, char a8)
{
  v24 = v16;
  v25 = (v20 << v16) ^ v15;
  v26 = v25 & a8;
  v27 = v25 & v21;
  v28 = v24 + 1;
  LOBYTE(v24) = *(v12 + v10 + v24 * a7 - ((((v10 + v24 * a7) * v22) >> 32) >> 2) * a1);
  v29 = v24 & v9 ^ v13;
  v30 = v19 ^ v24 ^ (2 * ((v24 ^ 2) & (2 * ((v24 ^ 2) & (2 * ((v24 ^ 2) & (2 * ((v24 ^ 2) & (2 * ((v24 ^ 2) & (2 * (((2 * (v24 & 3)) ^ a2) & (v24 ^ 2) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ a4;
  if ((v26 ^ v17 ^ v27) == 0x89)
  {
    v30 = v19 ^ v23;
  }

  *(v11 + 4 * v18) = v30 ^ (v8 - 21);
  return (*(STACK[0x6C8] + 8 * ((4092 * ((v28 & (a3 - 8)) != 0)) ^ v14)))();
}

uint64_t sub_D5BA0()
{
  v3 = (*(v2 + 8 * (v1 + 447)))(520);
  v4 = STACK[0x948];
  **(v0 + 1776) = v3;
  return (*(v4 + 8 * (((v3 == 0) * (v1 - 2192 + ((v1 + 816506517) & 0xCF5517DF) - 1368)) ^ v1)))();
}

uint64_t sub_D5CB8@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 88);
  *(v2 + 432) = a1 + 88;
  return (*(v3 + 8 * ((((((v1 + 2038409290) & 0xFFFB7CAD) - 2038111470) ^ (v1 - 1973109615) & 0x759B3BFB) * (v4 == 0)) ^ v1)))();
}

uint64_t sub_D5D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v68 = *(*(a62 - 1648919999) + 24);
  *(v65 + 8) = (v63 - 734251588) ^ (1913485891 * ((2 * ((v66 - 208) & 0x6A6E4FB0) - (v66 - 208) + 361869391) ^ 0x887D5765));
  *v65 = v68;
  v69 = v62;
  v70 = (*(v67 + 8 * (v63 + 2710)))(v66 - 208, a2, a3, a4, a5, a6, a7, a8);
  v71 = STACK[0x948];
  v72 = *(a62 - 1648919999);
  v72[1] = v72;
  *v72 = ((v63 + 2028) | 0x80u) ^ 0x64531143E73ABEC4 ^ *(*v69 + (*v64 & 0xFFFFFFFFD7D78108)) & 0x7FFFFFFFFFFFFFFFLL;
  STACK[0xD68] = *(v71 + 8 * v63);
  return (*(v71 + 8 * (v63 + 440)))(v70);
}

uint64_t sub_D5ED0()
{
  *v3 = v1;
  *(v3 + 8) = (v0 - 734251747) ^ (1913485891 * (((((v4 - 208) | 0xA51CBE4) ^ 0xFFFFFFFE) - (~(v4 - 208) | 0xF5AE341B)) ^ 0x6842D331));
  (*(v2 + 8 * (v0 + 2551)))(v4 - 208);
  v5 = (*(v2 + 8 * (v0 | 0xA38)))(*(*(&off_18D8F0 + v0 - 188) - 2121453051), *(&off_18D8F0 + v0 - 94) - 70205899, STACK[0x940] - 1917625750);
  v6 = ((2 * v5) & 0xE7D7DA3E) + ((((v0 + 271712224) | 0x69492C05) - 93275410) ^ ((v0 + 2496) | 0xC) ^ v5);
  *(v3 + 8) = (v0 - 626831911) ^ (1938608989 * ((((v4 - 208) | 0x53499B4F) + (~(v4 - 208) | 0xACB664B0)) ^ 0x2969C5B8));
  *v3 = v1;
  v7 = (*(v2 + 8 * (v0 + 2577)))(v4 - 208);
  return (*(v2 + 8 * ((1033 * (v6 == 1944841503)) | v0)))(v7);
}

uint64_t sub_D60D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t (*a16)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), unint64_t a17, int a18, __int16 a19, char a20, unsigned __int8 a21, unsigned __int8 *a22)
{
  v22 = a22;
  v23 = -a22 & 7;
  if (v23 > a17)
  {
    LODWORD(v23) = a17;
  }

  if (v23 > 3)
  {
    if (v23 > 5)
    {
      if (v23 != 6)
      {
        if (v23 != 7)
        {
          goto LABEL_20;
        }

        *a22 = a21;
        v22 = a22 + 1;
      }

      *v22++ = a21;
    }

    else if (v23 == 4)
    {
LABEL_16:
      *v22++ = a21;
      goto LABEL_17;
    }

    *v22++ = a21;
    goto LABEL_16;
  }

  switch(v23)
  {
    case 1:
LABEL_19:
      *v22++ = a21;
      break;
    case 2:
LABEL_18:
      *v22++ = a21;
      goto LABEL_19;
    case 3:
LABEL_17:
      *v22++ = a21;
      goto LABEL_18;
  }

LABEL_20:
  v24 = a17 - v23;
  if (v24 >= 8)
  {
    v25 = 0x101010101010101 * a21;
    v26 = ((v24 >> 3) + 7) >> 3;
    v27 = (v24 >> 3) & 7;
    if (v27 > 3)
    {
      if (((v24 >> 3) & 7) <= 5)
      {
        if (v27 == 4)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (v27 == 6)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (((v24 >> 3) & 7) > 1)
    {
      if (v27 == 2)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (v27)
    {
      goto LABEL_39;
    }

    do
    {
      *v22 = v25;
      v22 += 8;
LABEL_33:
      *v22 = v25;
      v22 += 8;
LABEL_34:
      *v22 = v25;
      v22 += 8;
LABEL_35:
      *v22 = v25;
      v22 += 8;
LABEL_36:
      *v22 = v25;
      v22 += 8;
LABEL_37:
      *v22 = v25;
      v22 += 8;
LABEL_38:
      *v22 = v25;
      v22 += 8;
LABEL_39:
      *v22 = v25;
      v22 += 8;
      --v26;
    }

    while (v26);
  }

  v28 = v24 & 7;
  if (v28 > 3)
  {
    if (v28 > 5)
    {
      if (v28 != 6)
      {
        *v22++ = a21;
      }

      *v22++ = a21;
    }

    else if (v28 == 4)
    {
      goto LABEL_53;
    }

    *v22++ = a21;
LABEL_53:
    *v22++ = a21;
LABEL_54:
    *v22++ = a21;
    goto LABEL_55;
  }

  if (v28 <= 1)
  {
    if (!v28)
    {
      return a16(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    goto LABEL_56;
  }

  if (v28 != 2)
  {
    goto LABEL_54;
  }

LABEL_55:
  *v22++ = a21;
LABEL_56:
  *v22 = a21;
  return a16(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_D6258()
{
  v0[15] = (v1[15] ^ 0x7F) + 2 * v1[15] - 17;
  v0[14] = ((v2 - 115) ^ v1[14] ^ 0xF7) + 2 * v1[14] - 17;
  v0[13] = (v1[13] ^ 0x7F) + 2 * v1[13] - 17;
  v0[12] = (v1[12] ^ 0x7F) + 2 * v1[12] - 17;
  v0[11] = (v1[11] ^ 0x7F) + 2 * v1[11] - 17;
  v0[10] = (v1[10] ^ 0x7F) + 2 * v1[10] - 17;
  v0[9] = (v1[9] ^ 0x7F) + 2 * v1[9] - 17;
  v0[8] = (v1[8] ^ 0x7F) + 2 * v1[8] - 17;
  v0[7] = (v1[7] ^ 0x7F) + 2 * v1[7] - 17;
  v0[6] = (v1[6] ^ 0x7F) + 2 * v1[6] - 17;
  v0[5] = (v1[5] ^ 0x7F) + 2 * v1[5] - 17;
  v0[4] = (v1[4] ^ 0x7F) + 2 * v1[4] - 17;
  v0[3] = (v1[3] ^ 0x7F) + 2 * v1[3] - 17;
  v0[2] = (v1[2] ^ 0x7F) + 2 * v1[2] - 17;
  v0[1] = (v1[1] ^ 0x7F) + 2 * v1[1] - 17;
  return (*(v3 + 8 * v2))();
}

uint64_t sub_D63A0(uint64_t a1, double a2, __n128 a3, __n128 a4, __n128 a5)
{
  v7 = STACK[0x938];
  v8 = vld1q_dup_f32(v7);
  v9.n128_u64[0] = 0x8000000080000000;
  v9.n128_u64[1] = 0x8000000080000000;
  return (*(a1 + 8 * (v5 + v6 + 976)))(v8, a3, a4, a5, v9, *&STACK[0x8D0], *&STACK[0x8C0], *&STACK[0x8B0]);
}

uint64_t sub_D6428@<X0>(char a1@<W3>, uint64_t a2@<X8>)
{
  v5 = *(a2 + 88);
  *(v3 + 1104) = a2 + 88;
  return (*(v4 + 8 * ((115 * (((v5 == 0) ^ (v2 - a1 - 78)) & 1)) ^ v2)))();
}

uint64_t sub_D6474()
{
  STACK[0x930] = v4 + 48;
  STACK[0x908] = v3 + 1;
  v7 = *(v6 + 8 * v0);
  LODWORD(STACK[0x928]) = 1883321437 * ((((v5 - 208) | 0x5EA646FF) - (v5 - 208) + ((v5 - 208) & 0xA159B900)) ^ 0xB919E243);
  LODWORD(STACK[0x900]) = 2038115490;
  LODWORD(STACK[0x910]) = v2 + 1415;
  STACK[0x940] = v1;
  return v7();
}

uint64_t sub_D64F4()
{
  v3 = STACK[0x940];
  LODWORD(STACK[0xB74]) = STACK[0x940];
  if (v3 >= LODWORD(STACK[0xD88]) - 65021205)
  {
    v4 = LODWORD(STACK[0xD88]) - 65021205;
  }

  else
  {
    v4 = v3;
  }

  v5 = STACK[0xA7C];
  LODWORD(STACK[0xB34]) = LODWORD(STACK[0xA7C]) + 5;
  return (*(v2 + 8 * (((v0 - v1 - 110) ^ ((v5 + 5 + v4) > LODWORD(STACK[0xAFC]))) & 1 | v0)))();
}

uint64_t sub_D6568(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = a4 + a7 + 19;
  v10 = STACK[0x958];
  *(v7 + 1464) = *(v8 + 8 * v9);
  return (*(v8 + 8 * (a4 + a7 + 1028 + v9 - 387)))(v10, a2, a3);
}

uint64_t sub_D6604()
{
  STACK[0x4E8] = v3;
  v4 = STACK[0x518];
  *(v2 - 0x22BB8297B2EB534BLL) = 104;
  v5 = STACK[0x548];
  v6 = *(STACK[0x548] + 8 * (v4 ^ 0x250));
  STACK[0x4E0] = v0;
  v7 = v6(416);
  *(v1 - 0x533ABDEB5CA242C6) = v7;
  return (*(v5 + 8 * (((v7 != 0) * (v4 ^ 0x80E)) ^ (v4 - 1456))))(STACK[0x500]);
}

uint64_t sub_D6690(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8 * (v3 + 1000)))(*(a1 + 1120));
  v5 = STACK[0x948];
  *(a1 + 1120) = 0;
  *(a1 + 1132) = 0;
  return (*(v5 + 8 * v3))(*(v2 + 488));
}

uint64_t sub_D66E0@<X0>(void *a1@<X0>, char a2@<W1>, char a3@<W2>, int a4@<W3>, unsigned int *a5@<X8>)
{
  v15 = *a5;
  v16 = *STACK[0x538];
  v17 = *(v16 + (v15 & v13));
  v18 = v13 + 9 * (v12 ^ 0x688) + v17 + v7;
  v19 = *v10 ^ 0xF1E76555;
  v20 = *a1 ^ 0xDDC772C6444EEA48;
  v21 = 1645 * v5 + 3822980 - 2696 * (((12744711 * (1645 * v5 + 3822980)) >> 32) >> 3);
  v22 = (1 << v5) - ((2 * (1 << v5)) & 0x3C) + 30;
  v23 = (v21 ^ 0x3FFDCFBCFFFFFE3FLL) + v11 + ((2 * v21) & 0x1C7E);
  v24 = (*(v16 + (v15 & STACK[0x540])) + v8 + 1527793161);
  v25 = *(v20 + ((v24 - 2) & v19));
  LODWORD(v24) = *(v20 + (v24 & v19));
  v26 = v24 ^ a2 ^ v25 ^ a3;
  v27 = (((v6 ^ v14 ^ *(v20 + ((v17 + v7 + 1186175274) & v19)) ^ *(v20 + ((v18 - 288) & v19))) ^ 0x5A) & (v22 ^ 0x1E) ^ v22 & 0x1C) == 28;
  v28 = a4 ^ v24 ^ v25;
  if (v27)
  {
    v29 = v26 ^ 0xCC;
  }

  else
  {
    v29 = *(v23 - 0x4ADDFC5F57B6A7ABLL) ^ (110 * (v23 - 63)) ^ *(v20 + ((v23 + 449 + v17 + 1186175272) & v19)) ^ *(v20 + ((v23 + 449 + v17 + 1186175274) & v19)) ^ v26 ^ 0x8A;
  }

  *(v8 + v9) = v28 ^ v29 ^ 0xE6;
  return (*(STACK[0x548] + 8 * ((3227 * (((-2 - v5) & (v5 - 7) & 0x80) == 0)) ^ v12)))();
}

uint64_t sub_D68E0()
{
  v7 = v1 - 1;
  *(v5 + v7) = *(v2 + v7 + v3);
  return (*(v6 + 8 * (((v7 == 0) * v4) ^ v0)))();
}

uint64_t sub_D694C()
{
  v7 = *v0 + 756780528;
  v8 = v7 < ((v6 - 564) | 0x400u) - 527 + v2;
  v9 = v2 + v5 + 530 < v7;
  if (v5 + 1 > v3 != v8)
  {
    v9 = v8;
  }

  return (*(v1 + 8 * ((v9 * v4) ^ v6)))();
}

uint64_t sub_D6A2C()
{
  LODWORD(STACK[0x698]) = v0;
  v4 = v1[63];
  v5 = v1[15];
  LODWORD(STACK[0x618]) = v5;
  v6 = v5 ^ v4;
  v7 = v1[7];
  v8 = v1[55] ^ v7;
  v9 = v7;
  LODWORD(STACK[0x57C]) = v7;
  v10 = *v1;
  v11 = v10 ^ v1[48];
  v12 = v10;
  LODWORD(STACK[0x534]) = v10;
  v13 = v1[3];
  v14 = v2[3];
  LODWORD(STACK[0x66C]) = v14;
  v15 = v13 ^ v14;
  LODWORD(STACK[0x660]) = v15;
  v16 = v13;
  LODWORD(STACK[0x5A0]) = v13;
  v17 = ~(v15 * v15) + 2 * v15 * v15;
  v18 = v1[5];
  v19 = v18 ^ v1[53];
  LODWORD(STACK[0x4F8]) = v18;
  v20 = v1[13];
  v21 = v20 ^ v1[61];
  v22 = v1[6];
  LODWORD(STACK[0x55C]) = v22;
  v23 = v1[54] ^ v22;
  v24 = v1[62];
  v25 = v1[14];
  LODWORD(STACK[0x628]) = v25;
  v26 = v25 ^ v24;
  v27 = v1[9];
  LODWORD(STACK[0x560]) = v27;
  v28 = v6 ^ 9 ^ (-126 * v6 * v6);
  v29 = (-2 * v8 * v8) ^ v8;
  v30 = v1[57] ^ v27 ^ 0xB ^ (-58 * (v1[57] ^ v27) * (v1[57] ^ v27));
  LODWORD(STACK[0x610]) = v29 ^ 0xFFFFFFF2;
  v31 = (-118 * v21 * v21) ^ v21;
  LODWORD(STACK[0x65C]) = 6 * v17 + 6;
  LODWORD(STACK[0x604]) = (v29 ^ 0xFFFFFFF2 | 3) - (v29 ^ 0xFFFFFFF1);
  LODWORD(STACK[0x598]) = v26 ^ (102 * v26 * v26);
  LODWORD(STACK[0x608]) = (16 * (v19 ^ 0xFFFFFFAD ^ (-38 * v19 * v19))) | (2 * ((v19 ^ 0xFFFFFFAD ^ (-38 * v19 * v19)) & 3));
  v32 = v1[8];
  LODWORD(STACK[0x508]) = v32;
  v33 = v1[56] ^ v32 ^ 0xFFFFFFD2 ^ (102 * (v1[56] ^ v32) * (v1[56] ^ v32));
  LODWORD(STACK[0x5C0]) = (16 * (v11 ^ 0xFFFFFFB6 ^ (-18 * v11 * v11))) | (2 * ((v11 ^ 0xFFFFFFB6 ^ (-18 * v11 * v11)) & 3));
  v34 = v1[1];
  v35 = v34 ^ v1[49];
  v36 = 50 * v35 * v35;
  LODWORD(STACK[0x5F0]) = v36 + v35;
  LODWORD(STACK[0x5E8]) = v36 & v35;
  v37 = v1[51] ^ v16 ^ 0xFFFFFFDB ^ (-50 * (v1[51] ^ v16) * (v1[51] ^ v16));
  v38 = v1[4];
  v39 = v1[52] ^ v38 ^ 0xFFFFFF93 ^ (114 * (v1[52] ^ v38) * (v1[52] ^ v38));
  v40 = v31 ^ 0xFFFFFF89;
  LODWORD(STACK[0x588]) = (v31 ^ 0xFFFFFF89 | 3) ^ v31;
  v41 = v2[7];
  LODWORD(STACK[0x63C]) = v41;
  LODWORD(STACK[0x5F8]) = (16 * (v23 ^ 0xFFFFFFDE ^ (-90 * v23 * v23))) | (2 * ((v23 ^ 0xFFFFFFDE ^ (-90 * v23 * v23)) & 3));
  v42 = v1[11];
  v43 = v1[59] ^ v42;
  LODWORD(STACK[0x530]) = v42;
  v44 = v43 ^ (114 * v43 * v43);
  v45 = v1[10];
  v46 = v1[58] ^ v45 ^ 0xFFFFFFB2 ^ (-26 * (v1[58] ^ v45) * (v1[58] ^ v45));
  LODWORD(STACK[0x5D8]) = (16 * v28) | (2 * (v28 & 3));
  v47 = (126 * (v9 ^ v41) * (v9 ^ v41)) ^ v9 ^ v41;
  v48 = v1[12];
  v49 = v1[60] ^ v48;
  v50 = v2[1];
  LODWORD(STACK[0x644]) = v50;
  LODWORD(STACK[0x510]) = v50 + v34 - 2 * (v50 & v34);
  v51 = v2[12];
  LODWORD(STACK[0x640]) = v51;
  v52 = v51 ^ v48 ^ 0xFFFFFF85 ^ (118 * (v51 ^ v48) * (v51 ^ v48));
  v53 = v2[10];
  LODWORD(STACK[0x650]) = v53;
  v54 = v53 ^ v45 ^ 0xFFFFFFBE ^ (-74 * (v53 ^ v45) * (v53 ^ v45));
  LODWORD(STACK[0x5A8]) = (16 * v33) | (2 * (v33 & 3));
  v55 = v49 ^ 0x12 ^ (82 * v49 * v49);
  LODWORD(STACK[0x5D0]) = v55;
  v56 = *v2;
  LODWORD(STACK[0x638]) = v56;
  LODWORD(STACK[0x5B0]) = (16 * v39) | (2 * (v39 & 3));
  v57 = v1[2];
  LODWORD(STACK[0x544]) = v1[50] ^ v57 ^ 0xFFFFFF96 ^ (114 * (v1[50] ^ v57) * (v1[50] ^ v57));
  LODWORD(STACK[0x6AC]) = (-38 * (v12 ^ v56) * (v12 ^ v56)) ^ v12 ^ v56;
  v58 = v2[11];
  LODWORD(STACK[0x648]) = v58;
  LODWORD(STACK[0x548]) = (106 * (v58 ^ v42) * (v58 ^ v42)) ^ v58 ^ v42;
  v59 = v2[4];
  v60 = v59 & 2;
  LODWORD(STACK[0x528]) = v38;
  if ((v38 & v59 & 2) != 0)
  {
    v60 = -v60;
  }

  if ((v47 & 8) != 0)
  {
    v61 = -8;
  }

  else
  {
    v61 = 8;
  }

  LODWORD(STACK[0x634]) = v59;
  v62 = (v60 + v38) ^ v59 & 0xFFFFFFFD;
  v63 = v2[5];
  LODWORD(STACK[0x64C]) = v63;
  v64 = v18 ^ v63;
  LODWORD(STACK[0x5E0]) = (16 * v37) | (2 * (v37 & 3));
  LODWORD(STACK[0x5B8]) = (16 * v30) | (2 * (v30 & 3));
  LODWORD(STACK[0x5C8]) = v55 & 2 | v49 & 1;
  v65 = (v61 + v47) ^ 0xFFFFFF86;
  v66 = v2[13];
  LODWORD(STACK[0x630]) = v66;
  v67 = v20 ^ v66 ^ 0xFFFFFF9A ^ (-54 * (v20 ^ v66) * (v20 ^ v66));
  LODWORD(STACK[0x518]) = (58 * v64 * v64) ^ v64;
  LODWORD(STACK[0x590]) = (16 * (v44 ^ 0xFFFFFFF3)) | (2 * ((v44 ^ 0xFFFFFFF3) & 3));
  v68 = v2[2];
  LODWORD(STACK[0x61C]) = v68;
  v69 = v57 ^ v68;
  v70 = v2[14];
  LODWORD(STACK[0x620]) = v70;
  v71 = STACK[0x628];
  v72 = (126 * (LODWORD(STACK[0x628]) ^ v70) * (LODWORD(STACK[0x628]) ^ v70)) ^ LODWORD(STACK[0x628]) ^ v70;
  LODWORD(STACK[0x558]) = (16 * (LODWORD(STACK[0x598]) ^ 0xE)) | (2 * ((LODWORD(STACK[0x598]) ^ 0xE) & 3));
  LODWORD(STACK[0x598]) = LODWORD(STACK[0x660]) ^ 0xFFFFFF97 ^ LODWORD(STACK[0x65C]);
  v73 = v2[8];
  LODWORD(STACK[0x65C]) = v73;
  v74 = STACK[0x508];
  v75 = LODWORD(STACK[0x508]) ^ v73;
  v76 = 70 * v75 * v75;
  LOBYTE(v73) = v76 & v75;
  v77 = v76 + v75;
  LODWORD(STACK[0x524]) = (16 * v46) | (2 * (v46 & 3));
  v78 = v20 ^ *(v3 - 107);
  LODWORD(STACK[0x570]) = (16 * v65) | (2 * (v65 & 3));
  LODWORD(STACK[0x538]) = ((2 * LODWORD(STACK[0x588])) ^ 0x15) + 16 * v40;
  LOBYTE(v75) = v45 ^ *(v3 - 110);
  v79 = v2[15];
  LODWORD(STACK[0x660]) = v79;
  v80 = STACK[0x618];
  v81 = LODWORD(STACK[0x618]) ^ v79;
  v82 = v77 - 2 * v73;
  LODWORD(STACK[0x580]) = (16 * v67) | (2 * (v67 & 3));
  LODWORD(STACK[0x54C]) = (16 * v54) | (2 * (v54 & 3));
  v83 = v34 ^ *(v3 - 119);
  v84 = v71 ^ *(v3 - 106) & 0xF;
  LODWORD(STACK[0x550]) = (16 * v52) | (2 * (v52 & 3));
  v85 = v62 ^ 0xFFFFFFB6 ^ (-14 * v62 * v62);
  v86 = v2[6];
  LODWORD(STACK[0x628]) = v86;
  v87 = STACK[0x55C];
  v88 = LODWORD(STACK[0x55C]) ^ v86;
  v89 = (32 * LOBYTE(STACK[0x6AC])) & 0x7F | ((STACK[0x6AC] & 8) != 0);
  HIDWORD(v90) = (~(32 * LODWORD(STACK[0x6AC])) >> 7) & 1 | (2 * v89);
  LODWORD(v90) = v89 << 25;
  LODWORD(STACK[0x500]) = v90 >> 26;
  v91 = v48 ^ *(v3 - 108);
  v92 = STACK[0x510];
  LODWORD(STACK[0x588]) = v81 ^ 0x67 ^ (30 * v81 * v81);
  LOBYTE(v89) = *(v3 - 105) ^ v80;
  v93 = v2[9];
  LODWORD(STACK[0x618]) = v93;
  v94 = STACK[0x560];
  LODWORD(STACK[0x568]) = LODWORD(STACK[0x560]) ^ v93 ^ 0x5E ^ (-54 * (LODWORD(STACK[0x560]) ^ v93) * (LODWORD(STACK[0x560]) ^ v93));
  v95 = v88 ^ (-126 * v88 * v88);
  LOBYTE(v93) = v69 ^ 0xAE ^ (-14 * v69 * v69);
  v96 = *(v3 - 114) ^ v87;
  v97 = LODWORD(STACK[0x4F8]) ^ *(v3 - 115);
  LODWORD(STACK[0x4F4]) = (-10 * v84 * v84) ^ v84;
  LODWORD(STACK[0x4F8]) = v92 ^ 0xFFFFFFA5 ^ (42 * v92 * v92);
  LOBYTE(v88) = *(v3 - 118) ^ v57;
  v98 = v94 ^ *(v3 - 111);
  v99 = *(v3 - 112) ^ v74;
  LODWORD(STACK[0x4E8]) = 22 * v98 * v98;
  LODWORD(STACK[0x510]) = v83 ^ 0xFFFFFFEE ^ (102 * v83 * v83);
  LODWORD(STACK[0x55C]) = ((16 * v72) | (2 * (v72 & 3))) ^ 0x41;
  LOBYTE(v84) = v75 ^ 0x35 ^ (-82 * v75 * v75);
  LOBYTE(v75) = v96 ^ 0xE2 ^ (-110 * v96 * v96);
  v100 = *(v3 - 120) ^ LODWORD(STACK[0x534]);
  LODWORD(STACK[0x560]) = (16 * v85) | (2 * (v85 & 3));
  LOBYTE(v83) = v88 ^ 0x55 ^ (114 * v88 * v88);
  LODWORD(STACK[0x508]) = v97 ^ 0x49 ^ (-82 * v97 * v97);
  v101 = LODWORD(STACK[0x530]) ^ *(v3 - 109);
  v102 = *(v3 - 116) ^ LODWORD(STACK[0x528]);
  LODWORD(STACK[0x534]) = (118 * v99 * v99) ^ (v99 + 112);
  v103 = (16 * LOBYTE(STACK[0x518])) | (2 * (STACK[0x518] & 3));
  v104 = (110 * v91 * v91 + v91 - 2 * ((110 * v91 * v91) & v91)) ^ 0xD1;
  v105 = (16 * LOBYTE(STACK[0x544])) | (2 * (STACK[0x544] & 3));
  v106 = LODWORD(STACK[0x57C]) + *(v3 - 113) - 2 * (STACK[0x57C] & *(v3 - 113));
  LODWORD(STACK[0x57C]) = (16 * (v95 ^ 7)) | (2 * ((v95 ^ 7) & 3));
  v107 = (16 * LODWORD(STACK[0x548])) | (2 * (STACK[0x548] & 3));
  HIDWORD(v90) = v106 ^ ~(66 * v106 * v106);
  LODWORD(v90) = (v106 ^ (66 * v106 * v106)) << 24;
  v108 = LODWORD(STACK[0x5A0]) ^ *(v3 - 117);
  LOBYTE(v95) = (16 * (v82 ^ 0x3D)) | (2 * ((v82 ^ 0x3D) & 3));
  v109 = v98 ^ 0xFFFFFF97 ^ STACK[0x4E8] & 0x1E;
  LOBYTE(v97) = v100 ^ 0x8A ^ (54 * v100 * v100);
  LOBYTE(v100) = (16 * (v78 ^ 0xB1 ^ (-110 * v78 * v78))) | (2 * ((v78 ^ 0xB1 ^ (-110 * v78 * v78)) & 3));
  v110 = (2 * (STACK[0x6AC] & 3)) | LODWORD(STACK[0x500]);
  LOBYTE(STACK[0x187B]) = LODWORD(STACK[0x524]) | 1;
  LOBYTE(STACK[0x186B]) = LODWORD(STACK[0x5C0]) | 1;
  v111 = (16 * v104) | (2 * (v104 & 3));
  v112 = (16 * v75) | (2 * (v75 & 3));
  LOBYTE(v75) = (16 * v84) | (2 * (v84 & 3));
  LOBYTE(v84) = (16 * LOBYTE(STACK[0x4F4])) | (2 * (STACK[0x4F4] & 3));
  LOBYTE(STACK[0x188D]) = STACK[0x538];
  LOBYTE(v85) = (16 * LOBYTE(STACK[0x4F8])) | (2 * (STACK[0x4F8] & 3));
  LOBYTE(STACK[0x187C]) = v107 | 1;
  LOBYTE(STACK[0x1871]) = LODWORD(STACK[0x558]) | 1;
  LOBYTE(STACK[0x187E]) = v103 | 1;
  LOBYTE(v106) = ((v90 >> 27) >> 4) & 6 | (((v90 >> 27) & 0xE0) >> 1) | ((v90 >> 27) << 7);
  LOBYTE(STACK[0x1865]) = v85 | 1;
  HIDWORD(v90) = STACK[0x5F0];
  LODWORD(v90) = (LODWORD(STACK[0x5F0]) - 2 * LODWORD(STACK[0x5E8])) << 24;
  LOBYTE(STACK[0x1889]) = LODWORD(STACK[0x5A8]) | 1;
  LOBYTE(STACK[0x1879]) = LODWORD(STACK[0x54C]) | 1;
  LOBYTE(STACK[0x1880]) = LODWORD(STACK[0x590]) | 1;
  LOBYTE(STACK[0x1873]) = (16 * v93) | (2 * (v93 & 3)) | 1;
  LOBYTE(STACK[0x1881]) = LODWORD(STACK[0x5D8]) | 1;
  LOBYTE(STACK[0x1864]) = v111 | 1;
  LOBYTE(STACK[0x1869]) = v106 | 1;
  LOBYTE(STACK[0x1877]) = v84 | 1;
  LOBYTE(STACK[0x1885]) = LODWORD(STACK[0x5B0]) | 1;
  LOBYTE(STACK[0x188A]) = ((((v90 >> 26) ^ 0x19) & 0xC0) >> 2) | (((v90 >> 26) ^ 0x19) << 6) | ((((v90 >> 26) ^ 0x19) & 0xC0) >> 5) | 1;
  LOBYTE(v106) = (16 * LOBYTE(STACK[0x510])) | (2 * (STACK[0x510] & 3));
  LOBYTE(STACK[0x1862]) = LODWORD(STACK[0x550]) | 1;
  LOBYTE(STACK[0x1888]) = LODWORD(STACK[0x570]) | 1;
  LOBYTE(STACK[0x1887]) = (16 * v97) | (2 * (v97 & 3)) | 1;
  LOBYTE(v85) = (16 * LOBYTE(STACK[0x508])) | (2 * (STACK[0x508] & 3));
  LOBYTE(STACK[0x186A]) = (16 * v83) | (2 * (v83 & 3)) | 1;
  LOBYTE(STACK[0x1863]) = STACK[0x55C];
  LOBYTE(STACK[0x1872]) = LODWORD(STACK[0x5F8]) | 1;
  LOBYTE(STACK[0x1867]) = v105 | 1;
  LOBYTE(STACK[0x1878]) = (16 * LOBYTE(STACK[0x598])) | (2 * (STACK[0x598] & 3)) | 1;
  LOBYTE(STACK[0x187F]) = v112 | 1;
  LOBYTE(v99) = (16 * v109) | (2 * (v109 & 3));
  v113 = STACK[0x6C8];
  LOBYTE(STACK[0x188E]) = (16 * (v89 ^ 0x6A ^ (70 * v89 * v89))) | (2 * ((v89 ^ 0x6A ^ (70 * v89 * v89)) & 3)) | 1;
  LOBYTE(STACK[0x1860]) = LODWORD(STACK[0x580]) | 1;
  LOBYTE(STACK[0x1876]) = LODWORD(STACK[0x5B8]) | 1;
  LOBYTE(v93) = 16 * LOBYTE(STACK[0x610]) + 2 * LOBYTE(STACK[0x604]);
  LOBYTE(STACK[0x1875]) = v106 | 1;
  LOBYTE(STACK[0x1868]) = ((16 * ((-82 * v101 * v101) ^ v101)) | (2 * (((-82 * v101 * v101) ^ v101) & 3))) ^ 0x81;
  LOBYTE(STACK[0x1886]) = v85 | 1;
  LOBYTE(STACK[0x187A]) = v95 | 1;
  LOBYTE(STACK[0x188C]) = LODWORD(STACK[0x608]) | 1;
  LOBYTE(v101) = (16 * LOBYTE(STACK[0x534])) | (2 * (STACK[0x534] & 3));
  LOBYTE(STACK[0x186F]) = v110 | 1;
  LOBYTE(STACK[0x1883]) = LODWORD(STACK[0x57C]) | 1;
  LOBYTE(STACK[0x1884]) = v100 | 1;
  LOBYTE(STACK[0x1882]) = LODWORD(STACK[0x560]) | 1;
  LOBYTE(STACK[0x1861]) = (16 * (v108 ^ (34 * v108 * v108) ^ 0xBE) + 2 * ((v108 ^ (34 * v108 * v108) ^ 0xBE | 0x2B) - ((v108 ^ (34 * v108 * v108) ^ 0xBE) & 0x57 ^ 0x2B))) | 1;
  LOBYTE(v80) = (16 * LOBYTE(STACK[0x5D0])) | (2 * LOBYTE(STACK[0x5C8]));
  LOBYTE(STACK[0x187D]) = v75 | 1;
  LOBYTE(STACK[0x188F]) = LODWORD(STACK[0x5E0]) | 1;
  LOBYTE(STACK[0x188B]) = (16 * (v102 ^ 0x85 ^ (-54 * v102 * v102))) | (2 * ((v102 ^ 0x85 ^ (-54 * v102 * v102)) & 3)) | 1;
  LOBYTE(STACK[0x1866]) = v93 | 1;
  LOBYTE(STACK[0x1870]) = v99 | 1;
  LOBYTE(STACK[0x186E]) = v80 | 1;
  v114 = STACK[0x568];
  v115 = 16 * LODWORD(STACK[0x568]);
  LOBYTE(STACK[0x1874]) = v101 | 1;
  v116 = STACK[0x588];
  v117 = 16 * LODWORD(STACK[0x588]);
  LOBYTE(STACK[0x186D]) = v115 & 0xF9 | (2 * (v114 & 3)) | 1;
  LOBYTE(STACK[0x186C]) = v117 & 0xF9 | (2 * (v116 & 3)) | 1;
  v118 = STACK[0x698];
  v119 = STACK[0x6C0];
  v119[3049] = 124;
  v119[1637] = -27;
  v119[99] = 105;
  v119[36] = -93;
  v119[3112] = 21;
  v119[1511] = -127;
  v119[1574] = 18;
  v119[2986] = 56;
  return (*(v113 + 8 * v118))(3013, 1282);
}

uint64_t sub_D76F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = (v8 * v9 + 118871410) % ((v10 ^ 0x5CDu) + 12258);
  *(a8 + 4 * ((v13 ^ 0x35D3D7FAFFD9BFFCLL) + ((2 * v13) & 0x7FF8)) + 2932019365188010000) = *(a8 + 4 * ((((v8 * v9 + v11) % 0x34AFu) ^ 0x37F7FFAF5B6FBF7ELL) + ((2 * ((v8 * v9 + v11) % 0x34AFu)) & 0x7EFC)) + 0x2020014292410208);
  return (*(v12 + 8 * (v10 ^ 0x5A0 ^ (109 * (((v8 + 1 - v10) | (v10 - (v8 + 1))) >= 0)))))();
}

uint64_t sub_D7838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = &STACK[0x1190] + STACK[0x978];
  STACK[0x978] += (v2 - 692883360) & 0x294C8FB7 ^ 0x285;
  memset(v5, 110, 16);
  if (a2)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = v6 || a1 == 0;
  return (*(v4 + 8 * ((232 * v8) ^ v2)))(a1);
}

uint64_t sub_D78E0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v16 = a1 + 223;
  v17 = (a1 + 424177195) | 0x80840D30;
  *(v15 - 116) = v12 - 1600728529 * ((((v15 - 128) | 0x80325954) - ((v15 - 128) & 0x80325954)) ^ 0x5079315) + a1 + 223 + 1814;
  *(v15 - 128) = &a12;
  v18 = (*(v14 + 8 * (a1 + 2161)))(v15 - 128);
  v19 = *(v15 - 120);
  *(v13 + 48) = *(v15 - 120) ^ 0xE8;
  return (*(v14 + 8 * ((99 * ((((v17 + 1714652924) ^ (v19 == 232)) & 1) == 0)) ^ v16)))(v18);
}

uint64_t sub_D7A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = 0;
  v15 = *(*STACK[0x360] + (*v10 & 0x480F6B80)) ^ 0x480F6B83u;
  v16 = *v12 ^ a6;
  v17 = *v11 ^ a5;
  v18 = *(v17 + (v15 & v16)) ^ v15;
  v19 = *(v17 + (v18 & v16)) ^ v18;
  v20 = *(v17 + (v19 & v16)) ^ v19;
  v21 = *(v17 + (v20 & v16)) ^ v20;
  v22 = *(v17 + (v21 & v16)) ^ v21;
  v23 = *(v17 + (v22 & v16)) ^ v22;
  v24 = *(v17 + (v23 & v16)) ^ v23;
  v25 = *(v17 + (v24 & v16)) ^ v24;
  STACK[0x1128] = 0;
  STACK[0x1130] = v6;
  v26 = 16777619 * ((1208970115 * v25 + 7) ^ (1208970115 * v25)) % 7;
  v27 = 16777619 * ((1208970115 * v25 + 6) ^ (1208970115 * v25)) % 6;
  v28 = 16777619 * ((1208970115 * v25 + 5) ^ (1208970115 * v25)) % 5;
  v29 = *(&STACK[0x1128] | v26);
  *(&STACK[0x1128] | v26) = STACK[0x112F];
  v30 = *(&STACK[0x1128] | v27);
  *(&STACK[0x1128] | v27) = STACK[0x112E];
  v31 = *(&STACK[0x1128] | v28);
  *(&STACK[0x1128] | v28) = STACK[0x112D];
  v32 = 16777619 * ((1208970115 * v25 + 3) ^ (1208970115 * v25)) % 3;
  v33 = vdup_n_s32(1208970115 * v25);
  v34.i32[0] = v33.i32[0];
  v34.i32[1] = 1208970115 * v25 + 1;
  LOBYTE(STACK[0x112F]) = v29;
  v35 = v7 + 514;
  v36 = veor_s8(vmul_s32(v34, v33), v33);
  LOBYTE(STACK[0x112E]) = v30;
  LOBYTE(STACK[0x112D]) = v31;
  v37 = STACK[0x1128];
  LOBYTE(STACK[0x1128]) = STACK[0x112C];
  LOBYTE(STACK[0x112C]) = v37;
  v38 = *(&STACK[0x1128] | v32);
  *(&STACK[0x1128] | v32) = STACK[0x112B];
  LOBYTE(STACK[0x112B]) = v38;
  v39 = STACK[0x1129];
  LOBYTE(STACK[0x112A]) = STACK[0x1128];
  LOWORD(STACK[0x1128]) = v39;
  STACK[0x1128] = vmla_s32(v36, STACK[0x1128], vdup_n_s32(0x1000193u));
  v40 = STACK[0x1130];
  v41 = (1208970115 * STACK[0x1130]) ^ v25;
  v42 = vdupq_n_s32(v41);
  v43 = xmmword_158980;
  v44 = xmmword_158990;
  v45 = xmmword_1589A0;
  v46 = xmmword_1589B0;
  v47.i64[0] = 0x9393939393939393;
  v47.i64[1] = 0x9393939393939393;
  v48.i64[0] = 0x1000000010;
  v48.i64[1] = 0x1000000010;
  do
  {
    v49 = *(v40 + v14);
    v62.val[1] = veorq_s8(vqtbl1q_s8(v49, xmmword_1589C0), veorq_s8(v42, vmulq_s32(vaddq_s32(v45, v42), vsubq_s32(v45, v42))));
    v62.val[0] = veorq_s8(vqtbl1q_s8(v49, xmmword_1589D0), veorq_s8(v42, vmulq_s32(vaddq_s32(v46, v42), vsubq_s32(v46, v42))));
    v62.val[2] = veorq_s8(vqtbl1q_s8(v49, xmmword_1589E0), veorq_s8(v42, vmulq_s32(vaddq_s32(v44, v42), vsubq_s32(v44, v42))));
    v62.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v49, xmmword_1589F0), v42), vmulq_s32(vaddq_s32(v43, v42), vsubq_s32(v43, v42)));
    *(v40 + v14) = vmulq_s8(vqtbl4q_s8(v62, xmmword_158A00), v47);
    v14 += 16;
    v46 = vaddq_s32(v46, v48);
    v45 = vaddq_s32(v45, v48);
    v44 = vaddq_s32(v44, v48);
    v43 = vaddq_s32(v43, v48);
  }

  while (v14 != 32);
  v50 = 3;
  do
  {
    v51 = 16777619 * ((v41 + v50) ^ v41) % v50;
    v52 = *(v40 + 8 * v51) ^ *(v40 + 8 * v50);
    *(v40 + 8 * v50) = v52;
    v53 = *(v40 + 8 * v51) ^ v52;
    *(v40 + 8 * v51) = v53;
    *(v40 + 8 * v50) ^= v53;
    v54 = v50-- + 1;
  }

  while (v54 > 2);
  v55 = *(&STACK[0x1130] + v26);
  *(&STACK[0x1130] + v26) = STACK[0x1137];
  v56 = *(&STACK[0x1130] + v27);
  *(&STACK[0x1130] + v27) = STACK[0x1136];
  LOBYTE(STACK[0x1137]) = v55;
  v57 = *(&STACK[0x1130] + v28);
  *(&STACK[0x1130] + v28) = STACK[0x1135];
  LOBYTE(STACK[0x1136]) = v56;
  LOBYTE(STACK[0x1135]) = v57;
  v58 = STACK[0x1130];
  LOBYTE(STACK[0x1130]) = STACK[0x1134];
  LOBYTE(STACK[0x1134]) = v58;
  v59 = *(&STACK[0x1130] + v32);
  *(&STACK[0x1130] + v32) = STACK[0x1133];
  LOBYTE(STACK[0x1133]) = v59;
  v60 = STACK[0x1131];
  LOBYTE(STACK[0x1132]) = STACK[0x1130];
  LOWORD(STACK[0x1130]) = v60;
  STACK[0x1130] = vmla_s32(v36, STACK[0x1130], vdup_n_s32(0x1000193u));
  *(v9 + v8) = STACK[0x1130] ^ STACK[0x1128];
  return (*(v13 + 8 * v35))();
}

uint64_t sub_D8078()
{
  v3 = (*(v2 + 8 * (v1 ^ 0x9B1)))();
  v4 = STACK[0x948];
  *v0 = 0;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_D80AC@<X0>(int a1@<W8>)
{
  v4 = STACK[0x988];
  v5 = STACK[0x988];
  v6 = STACK[0x360];
  v7 = *(*STACK[0x360] + (((STACK[0x988] & 0xFFFFFFF8 ^ 0xA09F947D) - 1777912077 + ((2 * (STACK[0x988] & 0xFFFFFFF8)) & 0x413F28F0)) & *v1));
  v8 = (__ROR8__(STACK[0x988] & 0xFFFFFFFFFFFFFFF8, 8) + v7) ^ 0x89F455BA1C0B015;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = (a1 + 967) ^ 0xD8D188F9068EBC44 ^ (__ROR8__(v8, 8) + v9);
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = __ROR8__(v10, 8);
  v13 = __ROR8__((((v12 + v11) ^ 0x9542FB50F490C3E0 | 0x99002CBF119FF3AELL) - ((v12 + v11) ^ 0x9542FB50F490C3E0 | 0x66FFD340EE600C51) + 0x66FFD340EE600C51) ^ 0xBA324BCFBEDB131, 8);
  v14 = (((v12 + v11) ^ 0x9542FB50F490C3E0 | 0x99002CBF119FF3AELL) - ((v12 + v11) ^ 0x9542FB50F490C3E0 | 0x66FFD340EE600C51) + 0x66FFD340EE600C51) ^ 0xBA324BCFBEDB131 ^ __ROR8__(v11, 61);
  v15 = (v13 + v14 - ((2 * (v13 + v14)) & 0xD5C6DADEE624161CLL) - 0x151C92908CEDF4F2) ^ 0x544F96F03E0B1836;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x8A4943FA3C1BB996;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x8F826D48DCAD4006;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x3E735FFD9083B0A3;
  *v4 = ((__ROR8__(v21, 8) + (v21 ^ __ROR8__(v20, 61))) ^ 0x262F3FDFCFE41F4CuLL) >> (8 * (STACK[0x988] & 7));
  v22 = *(*v6 + ((((v4 + 1) & 0xFFFFFFF8) + 916900720) & *v1));
  v23 = (v22 + __ROR8__((v4 + 1) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0x89F455BA1C0B015;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0xD8D188F9068EB840;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0x7E1F3531EE2817FLL;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0xBEACFB9F4D191338;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x8A4943FA3C1BB996;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x8F826D48DCAD4006;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x3E735FFD9083B0A3;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  *(v4 + 1) = ((v37 + v36 - ((2 * (v37 + v36)) & 0x20137FBE328A6370) - 0x6FF64020E6BACE48) ^ 0xB6268000D6A12EF4) >> (8 * ((v4 + 1) & 7));
  v38 = *(*v6 + ((((v4 + 2) & 0xFFFFFFF8) + 916900720) & *v1));
  v39 = (__ROR8__((v4 + 2) & 0xFFFFFFFFFFFFFFF8, 8) + v38) ^ 0x89F455BA1C0B015;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0xD8D188F9068EB840;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0x7E1F3531EE2817FLL;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0xBEACFB9F4D191338;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0x8A4943FA3C1BB996;
  v48 = __ROR8__(v47, 8);
  v49 = v47 ^ __ROR8__(v46, 61);
  v50 = (((2 * (v48 + v49)) & 0xCD1E974E7BC2983ELL) - (v48 + v49) - 0x668F4BA73DE14C20) ^ 0x16F2D9101EB3F3E6;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0x3E735FFD9083B0A3;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = __ROR8__(v52, 8);
  *(v4 + 2) = ((((2 * (v54 + v53)) & 0x9DF4AE220D814892) - (v54 + v53) - 0x4EFA571106C0A44ALL) ^ 0x972A973136DB44FALL) >> (8 * ((v4 + 2) & 7));
  v55 = *(*v6 + ((((v4 + 3) & 0xFFFFFFF8 ^ 0xE304CE22) + 1403125070 + ((2 * ((v4 + 3) & 0xFFFFFFF8)) & 0xC6099C40)) & *v1));
  v56 = (v55 + __ROR8__((v4 + 3) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0x89F455BA1C0B015;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0xD8D188F9068EB840;
  v59 = __ROR8__(v58, 8);
  v60 = v58 ^ __ROR8__(v57, 61);
  v61 = (((2 * (v59 + v60)) | 0x453634AAD83B98ELL) - (v59 + v60) - 0x229B1A556C1DCC7) ^ 0x5C842F648235DB8;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ 0xBEACFB9F4D191338;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ 0x8A4943FA3C1BB996;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = __ROR8__(v65, 8);
  v68 = (((2 * (v67 + v66)) | 0xF2C40CB0DDA4FAF6) - (v67 + v66) + 0x69DF9A7912D8285) ^ 0x76E06B10B27F3D7DLL;
  v69 = v68 ^ __ROR8__(v66, 61);
  v70 = __ROR8__(v68, 8);
  v71 = (((2 * (v70 + v69)) & 0xCF5B96613DEFAEF0) - (v70 + v69) - 0x67ADCB309EF7D779) ^ 0xA6216B32F18B9824;
  v72 = v71 ^ __ROR8__(v69, 61);
  v73 = __ROR8__(v71, 8);
  *(v4 + 3) = ((((2 * (v73 + v72)) & 0x260C4F38F5B94E30) - (v73 + v72) - 0x1306279C7ADCA719) ^ 0xCAD6E7BC4AC747ABLL) >> (8 * ((v4 + 3) & 7));
  LODWORD(v4) = *v1;
  v74 = *(*v6 + ((((v5 + 4) & 0xFFFFFFF8) + 916900720) & *v1));
  v75 = __ROR8__((v5 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v76 = (((2 * (v75 + v74)) & 0x8D9D1AC685ED692ELL) - (v75 + v74) - 0x46CE8D6342F6B498) ^ 0xB1AE37C71CC9FB7DLL;
  v77 = v76 ^ __ROR8__(v74, 61);
  v78 = (__ROR8__(v76, 8) + v77) ^ 0xD8D188F9068EB840;
  v79 = v78 ^ __ROR8__(v77, 61);
  v80 = (__ROR8__(v78, 8) + v79) ^ 0x7E1F3531EE2817FLL;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0xBEACFB9F4D191338;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ 0x8A4943FA3C1BB996;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ 0x8F826D48DCAD4006;
  v87 = __ROR8__(v86, 8);
  v88 = v86 ^ __ROR8__(v85, 61);
  v89 = (v87 + v88) ^ 0x3E735FFD9083B0A3;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = __ROR8__(v89, 8);
  *(v5 + 4) = ((((v91 + v90) | 0x4BC8920FD64FAB8) - ((v91 + v90) | 0xFB4376DF029B0547) - 0x4BC8920FD64FAB9) ^ 0x2293B6FF3280E5F4) >> (8 * ((v5 + 4) & 7));
  v92 = *(*v6 + ((((v5 + 5) & 0xFFFFFFF8) + 916900720) & v4));
  v93 = __ROR8__((v5 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v94 = (((v92 + v93) | 0x1A9433B9BF4BCDBELL) - ((v92 + v93) | 0xE56BCC4640B43241) - 0x1A9433B9BF4BCDBFLL) ^ 0x120B76E21E8B7DABLL;
  v95 = v94 ^ __ROR8__(v92, 61);
  v96 = (__ROR8__(v94, 8) + v95) ^ 0xD8D188F9068EB840;
  v97 = v96 ^ __ROR8__(v95, 61);
  v98 = __ROR8__(v96, 8);
  v99 = (((v98 + v97) & 0xFC9C814FFEFDEA6FLL ^ 0xF498014570E1EA26) + ((v98 + v97) ^ 0xB66B09A8E1C00D9) - (((v98 + v97) ^ 0xB66B09A8E1C00D9) & 0xFC9C814FFEFDEA6FLL)) ^ 0xF01BC2866E036BC9;
  v100 = v99 ^ __ROR8__(v97, 61);
  v101 = (__ROR8__(v99, 8) + v100) ^ 0xBEACFB9F4D191338;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = (__ROR8__(v101, 8) + v102) ^ 0x8A4943FA3C1BB996;
  v104 = v103 ^ __ROR8__(v102, 61);
  v105 = (__ROR8__(v103, 8) + v104) ^ 0x8F826D48DCAD4006;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = (__ROR8__(v105, 8) + v106) ^ 0x3E735FFD9083B0A3;
  *(v5 + 5) = ((__ROR8__(v107, 8) + (v107 ^ __ROR8__(v106, 61))) ^ 0x262F3FDFCFE41F4CuLL) >> (8 * ((v5 + 5) & 7));
  v108 = STACK[0x988];
  v109 = STACK[0x988];
  v110 = STACK[0x988] + 6;
  LODWORD(v107) = *v1;
  v111 = *(*v6 + (((v110 & 0xFFFFFFF8) + 916900720) & *v1));
  v112 = (__ROR8__(v110 & 0xFFFFFFFFFFFFFFF8, 8) + v111) ^ 0x89F455BA1C0B015;
  v113 = __ROR8__(v112, 8);
  v114 = v112 ^ __ROR8__(v111, 61);
  v115 = (v113 + v114) ^ 0xD8D188F9068EB840;
  v116 = v115 ^ __ROR8__(v114, 61);
  v117 = __ROR8__(v115, 8);
  v118 = (v117 + v116 - ((2 * (v117 + v116)) & 0x8BF3A09509B890ACLL) + 0x45F9D04A84DC4856) ^ 0x421823199A3EC929;
  v119 = v118 ^ __ROR8__(v116, 61);
  v120 = (__ROR8__(v118, 8) + v119) ^ 0xBEACFB9F4D191338;
  v121 = v120 ^ __ROR8__(v119, 61);
  v122 = (__ROR8__(v120, 8) + v121) ^ 0x8A4943FA3C1BB996;
  v123 = v122 ^ __ROR8__(v121, 61);
  v124 = (__ROR8__(v122, 8) + v123) ^ 0x8F826D48DCAD4006;
  v125 = v124 ^ __ROR8__(v123, 61);
  v126 = __ROR8__(v124, 8);
  v127 = (v126 + v125 - ((2 * (v126 + v125)) & 0x8CB3822F09ADA49ALL) + 0x4659C11784D6D24DLL) ^ 0x782A9EEA145562EELL;
  v128 = __ROR8__(v127, 8);
  v129 = __ROR8__(v125, 61);
  *(v108 + 6) = ((((2 * (v128 + (v127 ^ v129))) | 0x13D89CC82EAD2248) - (v128 + (v127 ^ v129)) - 0x9EC4E6417569124) ^ 0x2FC371BBD8B28E68) >> (8 * (v110 & 7u));
  v130 = *(*v6 + ((((v108 + 7) & 0xFFFFFFF8) + 916900720) & v107));
  v131 = (v130 + __ROR8__((v108 + 7) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0x89F455BA1C0B015;
  v132 = v131 ^ __ROR8__(v130, 61);
  v133 = (__ROR8__(v131, 8) + v132) ^ 0xD8D188F9068EB840;
  v134 = v133 ^ __ROR8__(v132, 61);
  v135 = (__ROR8__(v133, 8) + v134) ^ 0x7E1F3531EE2817FLL;
  v136 = __ROR8__(v135, 8);
  v137 = v135 ^ __ROR8__(v134, 61);
  v138 = (((v136 + v137) | 0x8C415B16A944CFE1) - ((v136 + v137) | 0x73BEA4E956BB301ELL) + 0x73BEA4E956BB301ELL) ^ 0x32EDA089E45DDCD9;
  v139 = __ROR8__(v138, 8);
  v140 = v138 ^ __ROR8__(v137, 61);
  v141 = (((v139 + v140) & 0xE25345BEA9A9BD0FLL ^ 0x43048800A10405) + ((v139 + v140) ^ 0xE7147177FD5AFB8ALL) - (((v139 + v140) ^ 0xE7147177FD5AFB8ALL) & 0xE25345BEA9A9BD0FLL)) ^ 0x8F0E773368E8FF13;
  v142 = v141 ^ __ROR8__(v140, 61);
  v143 = __ROR8__(v141, 8);
  v144 = (((v143 + v142) | 0x9E3EE8B48DFD5845) - ((v143 + v142) | 0x61C1174B7202A7BALL) + 0x61C1174B7202A7BALL) ^ 0x11BC85FC51501843;
  v145 = v144 ^ __ROR8__(v142, 61);
  v146 = (__ROR8__(v144, 8) + v145) ^ 0x3E735FFD9083B0A3;
  *(v108 + 7) = ((__ROR8__(v146, 8) + (v146 ^ __ROR8__(v145, 61))) ^ 0x262F3FDFCFE41F4CuLL) >> (8 * ((v108 + 7) & 7));
  LODWORD(v108) = *v1;
  v147 = *v6;
  v148 = *(*v6 + ((((v109 + 8) & 0xFFFFFFF8 ^ 0xC2262852) + 1954587422 + ((2 * ((v109 + 8) & 0xFFFFFFF8)) & 0x844C50A0)) & *v1));
  v149 = __ROR8__((v109 + 8) & 0xFFFFFFFFFFFFFFF8, 8);
  v150 = (((2 * (v149 + v148)) & 0x6F4095875929B5AELL) - (v149 + v148) - 0x37A04AC3AC94DAD8) ^ 0xC0C0F067F2AB953DLL;
  v151 = v150 ^ __ROR8__(v148, 61);
  v152 = (__ROR8__(v150, 8) + v151) ^ 0xD8D188F9068EB840;
  v153 = v152 ^ __ROR8__(v151, 61);
  v154 = (__ROR8__(v152, 8) + v153) ^ 0x7E1F3531EE2817FLL;
  v155 = v154 ^ __ROR8__(v153, 61);
  v156 = (__ROR8__(v154, 8) + v155) ^ 0xBEACFB9F4D191338;
  v157 = v156 ^ __ROR8__(v155, 61);
  v158 = __ROR8__(v156, 8);
  v159 = (((2 * (v158 + v157)) & 0xA63FC59A0F7C3B04) - (v158 + v157) + 0x2CE01D32F841E27DLL) ^ 0xA6A95EC8C45A5BEBLL;
  v160 = v159 ^ __ROR8__(v157, 61);
  v161 = (__ROR8__(v159, 8) + v160) ^ 0x8F826D48DCAD4006;
  v162 = __ROR8__(v161, 8);
  v163 = v161 ^ __ROR8__(v160, 61);
  v164 = (((2 * (v162 + v163)) | 0x82C0A7B401B60666) - (v162 + v163) - 0x416053DA00DB0333) ^ 0x7F130C279058B390;
  *(v109 + 8) = ((__ROR8__(v164, 8) + (v164 ^ __ROR8__(v163, 61))) ^ 0x262F3FDFCFE41F4CLL) >> (8 * ((v109 + 8) & 7));
  v165 = *(v147 + ((((v109 + 9) & 0x832B03D0 | 0x7CD4FC2B) + ((v109 + 9) & 0x7CD4FC28 | 0x832B03D5) + 916900720) & v108));
  v166 = __ROR8__((v109 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  v167 = (((v165 + v166) | 0x4B3FD40680946DCALL) - ((v165 + v166) | 0xB4C02BF97F6B9235) - 0x4B3FD40680946DCBLL) ^ 0x43A0915D2154DDDFLL;
  v168 = v167 ^ __ROR8__(v165, 61);
  v169 = __ROR8__(v167, 8);
  v170 = (((v169 + v168) | 0xA1618DC4B2FF47EFLL) - ((v169 + v168) | 0x5E9E723B4D00B810) + 0x5E9E723B4D00B810) ^ 0x79B0053DB471FFAFLL;
  v171 = v170 ^ __ROR8__(v168, 61);
  v172 = (__ROR8__(v170, 8) + v171) ^ 0x7E1F3531EE2817FLL;
  v173 = v172 ^ __ROR8__(v171, 61);
  v174 = (__ROR8__(v172, 8) + v173) ^ 0xBEACFB9F4D191338;
  v175 = v174 ^ __ROR8__(v173, 61);
  v176 = __ROR8__(v174, 8);
  v177 = (((v176 + v175) | 0x3EFA6C07D0F0A1B4) - ((v176 + v175) | 0xC10593F82F0F5E4BLL) - 0x3EFA6C07D0F0A1B5) ^ 0xB4B32FFDECEB1822;
  v178 = v177 ^ __ROR8__(v175, 61);
  v179 = (__ROR8__(v177, 8) + v178) ^ 0x8F826D48DCAD4006;
  v180 = v179 ^ __ROR8__(v178, 61);
  v181 = (__ROR8__(v179, 8) + v180) ^ 0x3E735FFD9083B0A3;
  *(v109 + 9) = ((__ROR8__(v181, 8) + (v181 ^ __ROR8__(v180, 61))) ^ 0x262F3FDFCFE41F4CuLL) >> (8 * ((v109 + 9) & 7));
  v182 = STACK[0x988];
  v183 = STACK[0x988];
  v184 = STACK[0x988] + 10;
  LODWORD(v181) = *v1;
  v185 = *v6;
  v186 = *(*v6 + (((v184 & 0xFFFFFFF8) + 916900720) & *v1));
  v187 = (__ROR8__(v184 & 0xFFFFFFFFFFFFFFF8, 8) + v186) ^ 0x89F455BA1C0B015;
  v188 = __ROR8__(v187, 8);
  v189 = v187 ^ __ROR8__(v186, 61);
  v190 = (((2 * (v188 + v189)) | 0xC4C1BF8CBF903B6) - (v188 + v189) - 0x6260DFC65FC81DBLL) ^ 0xDEF785056372399BLL;
  v191 = v190 ^ __ROR8__(v189, 61);
  v192 = __ROR8__(v190, 8);
  v193 = (((2 * (v192 + v191)) | 0x6298ED8B66C926D6) - (v192 + v191) - 0x314C76C5B364936BLL) ^ 0x36AD8596AD861214;
  v194 = v193 ^ __ROR8__(v191, 61);
  v195 = (__ROR8__(v193, 8) + v194) ^ 0xBEACFB9F4D191338;
  v196 = v195 ^ __ROR8__(v194, 61);
  v197 = (__ROR8__(v195, 8) + v196) ^ 0x8A4943FA3C1BB996;
  v198 = v197 ^ __ROR8__(v196, 61);
  v199 = (__ROR8__(v197, 8) + v198) ^ 0x8F826D48DCAD4006;
  v200 = v199 ^ __ROR8__(v198, 61);
  v201 = __ROR8__(v199, 8);
  *(v182 + 10) = ((__ROR8__((v201 + v200 - ((2 * (v201 + v200)) & 0x45BC72A6936075C2) - 0x5D21C6ACB64FC51FLL) ^ 0x9CAD66AED9338A42, 8) + ((v201 + v200 - ((2 * (v201 + v200)) & 0x45BC72A6936075C2) - 0x5D21C6ACB64FC51FLL) ^ 0x9CAD66AED9338A42 ^ __ROR8__(v200, 61))) ^ 0x262F3FDFCFE41F4CLL) >> (8 * (v184 & 7u));
  v202 = *(v185 + ((((v182 + 11) & 0xFFFFFFF8 ^ 0x92E6D3FE) - 1547700366 + ((2 * ((v182 + 11) & 0xFFFFFFF8)) & 0x25CDA7F0)) & v181));
  v203 = (v202 + __ROR8__((v182 + 11) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0x89F455BA1C0B015;
  v204 = v203 ^ __ROR8__(v202, 61);
  v205 = (__ROR8__(v203, 8) + v204) ^ 0xD8D188F9068EB840;
  v206 = __ROR8__(v205, 8);
  v207 = v205 ^ __ROR8__(v204, 61);
  v208 = (v206 + v207) ^ 0x7E1F3531EE2817FLL;
  v209 = v208 ^ __ROR8__(v207, 61);
  v210 = (__ROR8__(v208, 8) + v209) ^ 0xBEACFB9F4D191338;
  v211 = v210 ^ __ROR8__(v209, 61);
  v212 = __ROR8__(v210, 8);
  v213 = (v212 + v211 - ((2 * (v212 + v211)) & 0xF5A2BA914EC5E794) - 0x52EA2B7589D0C36) ^ 0x70981EB29B794A5CLL;
  v214 = v213 ^ __ROR8__(v211, 61);
  v215 = __ROR8__(v213, 8);
  v216 = (((2 * (v215 + v214)) & 0x9FDDF40F10CA8132) - (v215 + v214) - 0x4FEEFA078865409ALL) ^ 0x3F9368B0AB37FF60;
  v217 = v216 ^ __ROR8__(v214, 61);
  v218 = (__ROR8__(v216, 8) + v217) ^ 0x3E735FFD9083B0A3;
  *(v182 + 11) = ((__ROR8__(v218, 8) + (v218 ^ __ROR8__(v217, 61))) ^ 0x262F3FDFCFE41F4CuLL) >> (8 * ((v182 + 11) & 7));
  LODWORD(v217) = *v1;
  v219 = *v6;
  v220 = *(*v6 + ((((v183 + 12) & 0xFFFFFFF8) + 916900720) & *v1));
  v221 = (__ROR8__((v183 + 12) & 0xFFFFFFFFFFFFFFF8, 8) + v220) ^ 0x89F455BA1C0B015;
  v222 = v221 ^ __ROR8__(v220, 61);
  v223 = __ROR8__(v221, 8);
  v224 = (v223 + v222 - ((2 * (v223 + v222)) & 0xAFE9032442C7785ELL) - 0x280B7E6DDE9C43D1) ^ 0xF25096B27ED046FLL;
  v225 = v224 ^ __ROR8__(v222, 61);
  v226 = __ROR8__(v224, 8);
  v227 = (((2 * (v226 + v225)) | 0x218A0ADB09DCF9CLL) - (v226 + v225) + 0x7EF3AFA927B11832) ^ 0x86EDA305C6AC66B1;
  v228 = v227 ^ __ROR8__(v225, 61);
  v229 = (__ROR8__(v227, 8) + v228) ^ 0xBEACFB9F4D191338;
  v230 = v229 ^ __ROR8__(v228, 61);
  v231 = (__ROR8__(v229, 8) + v230) ^ 0x8A4943FA3C1BB996;
  v232 = __ROR8__(v231, 8);
  v233 = v231 ^ __ROR8__(v230, 61);
  v234 = (v232 + v233) ^ 0x8F826D48DCAD4006;
  v235 = v234 ^ __ROR8__(v233, 61);
  v236 = __ROR8__(v234, 8);
  v237 = (((2 * (v236 + v235)) & 0x16DC4F415150A506) - (v236 + v235) - 0xB6E27A0A8A85284) ^ 0xCAE287A2C7D41DDFLL;
  *(v183 + 12) = ((__ROR8__(v237, 8) + (v237 ^ __ROR8__(v235, 61))) ^ 0x262F3FDFCFE41F4CLL) >> (8 * ((v183 + 12) & 7));
  v238 = *(v219 + ((((v183 + 13) & 0x5A430338) + ((v183 + 13) & 0xA5BCFCC0 | 0x5A43033E) - 597440462) & v217));
  v239 = __ROR8__((v183 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v240 = (((v238 + v239) | 0x87DDC974850228B1) - ((v238 + v239) | 0x7822368B7AFDD74ELL) + 0x7822368B7AFDD74ELL) ^ 0x8F428C2F24C298A4;
  v241 = v240 ^ __ROR8__(v238, 61);
  v242 = __ROR8__(v240, 8);
  v243 = (((v242 + v241) | 0x124BDAE317A64D4ALL) - ((v242 + v241) | 0xEDB4251CE859B2B5) - 0x124BDAE317A64D4BLL) ^ 0xCA9A521A1128F50ALL;
  v244 = v243 ^ __ROR8__(v241, 61);
  v245 = __ROR8__(v243, 8);
  v246 = (((2 * (v245 + v244)) | 0xA2A2D63789A0C4F8) - (v245 + v244) - 0x51516B1BC4D0627CLL) ^ 0x56B09848DA32E303;
  v247 = v246 ^ __ROR8__(v244, 61);
  v248 = __ROR8__(v246, 8);
  v249 = (((2 * (v248 + v247)) | 0x32A0A242369C1474) - (v248 + v247) - 0x195051211B4E0A3ALL) ^ 0xA7FCAABE56571902;
  v250 = v249 ^ __ROR8__(v247, 61);
  v251 = __ROR8__(v249, 8);
  v252 = (((v251 + v250) | 0x781B1873E21F084DLL) - ((v251 + v250) | 0x87E4E78C1DE0F7B2) - 0x781B1873E21F084ELL) ^ 0xF2525B89DE04B1DBLL;
  v253 = v252 ^ __ROR8__(v250, 61);
  v254 = (__ROR8__(v252, 8) + v253) ^ 0x8F826D48DCAD4006;
  v255 = v254 ^ __ROR8__(v253, 61);
  v256 = __ROR8__(v254, 8);
  v257 = (((v256 + v255) | 0x44E2EAAD482B2DCCLL) - ((v256 + v255) | 0xBB1D1552B7D4D233) - 0x44E2EAAD482B2DCDLL) ^ 0x7A91B550D8A89D6FLL;
  *(v183 + 13) = ((__ROR8__(v257, 8) + (v257 ^ __ROR8__(v255, 61))) ^ 0x262F3FDFCFE41F4CLL) >> (8 * ((v183 + 13) & 7));
  v258 = STACK[0x988];
  v259 = STACK[0x988] + 14;
  LODWORD(v255) = *v1;
  v260 = *v6;
  v261 = *(*v6 + (((v259 & 0xF46DC7A0) + (v259 & 0xB923858 | 0xF46DC7A0) + 1111032784) & *v1));
  v262 = (__ROR8__(v259 & 0xFFFFFFFFFFFFFFF8, 8) + v261) ^ 0x89F455BA1C0B015;
  v263 = v262 ^ __ROR8__(v261, 61);
  v264 = __ROR8__(v262, 8);
  v265 = (((2 * ((v264 + v263) ^ 0xAEED015E34F9F87CLL)) | 0x73A6CCF4A1D30626) - ((v264 + v263) ^ 0xAEED015E34F9F87CLL) - 0x39D3667A50E98313) ^ 0x4FEFEFDD629EC32FLL;
  v266 = v265 ^ __ROR8__(v263, 61);
  v267 = (__ROR8__(v265, 8) + v266) ^ 0x7E1F3531EE2817FLL;
  v268 = v267 ^ __ROR8__(v266, 61);
  v269 = (__ROR8__(v267, 8) + v268) ^ 0xBEACFB9F4D191338;
  v270 = v269 ^ __ROR8__(v268, 61);
  v271 = __ROR8__(v269, 8);
  v272 = (((2 * (v271 + v270)) & 0x8FE13F6EE2E2558) - (v271 + v270) - 0x47F09FB771712ADLL) ^ 0x71C9B5FEB4F354C5;
  v273 = v272 ^ __ROR8__(v270, 61);
  v274 = __ROR8__(v272, 8);
  v275 = (v274 + v273 - ((2 * (v274 + v273)) & 0xB68F5EA821C54D32) - 0x24B850ABEF1D5967) ^ 0x54C5C21CCC4FE69FLL;
  v276 = v275 ^ __ROR8__(v273, 61);
  v277 = (__ROR8__(v275, 8) + v276) ^ 0x3E735FFD9083B0A3;
  v278 = __ROR8__(v277, 8) + (v277 ^ __ROR8__(v276, 61));
  *(v258 + 14) = ((((2 * v278) | 0x8FAEF8B2BE90AAB2) - v278 - 0x47D77C595F485559) ^ 0x61F8438690AC4A15) >> (8 * (v259 & 7u));
  v279 = *(v260 + ((((v258 + 15) & 0xFFFFFFF8) + 916900720) & v255));
  v280 = __ROR8__((v258 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v281 = (((v279 + v280) | 0x4FBDB90C85530A50) - ((v279 + v280) | 0xB04246F37AACF5AFLL) - 0x4FBDB90C85530A51) ^ 0x4722FC572493BA45;
  v282 = v281 ^ __ROR8__(v279, 61);
  v283 = __ROR8__(v281, 8);
  v284 = (v283 + v282 - ((2 * (v283 + v282)) & 0xA14E140AF00556CLL) + 0x50A70A057802AB6) ^ 0xDDDBF859510E92F6;
  v285 = v284 ^ __ROR8__(v282, 61);
  v286 = (__ROR8__(v284, 8) + v285) ^ 0x7E1F3531EE2817FLL;
  v287 = __ROR8__(v286, 8);
  v288 = v286 ^ __ROR8__(v285, 61);
  v289 = (v287 + v288) ^ 0xBEACFB9F4D191338;
  v290 = v289 ^ __ROR8__(v288, 61);
  v291 = __ROR8__(v289, 8);
  v292 = (((v291 + v290) | 0x6331C847CB9CA673) - ((v291 + v290) | 0x9CCE37B83463598CLL) - 0x6331C847CB9CA674) ^ 0xE9788BBDF7871FE5;
  v293 = v292 ^ __ROR8__(v290, 61);
  v294 = (__ROR8__(v292, 8) + v293) ^ 0x8F826D48DCAD4006;
  v295 = v294 ^ __ROR8__(v293, 61);
  v296 = (__ROR8__(v294, 8) + v295) ^ 0x3E735FFD9083B0A3;
  v297 = v296 ^ __ROR8__(v295, 61);
  v298 = __ROR8__(v296, 8);
  *(v258 + 15) = ((v298 + v297 - ((2 * (v298 + v297)) & 0xF83AC99989DF221CLL) - 0x3E29B333B106EF2) ^ 0xDA325B130B0B8E42) >> (8 * ((v258 + 15) & 7));
  v299 = *(v2 + 832);
  *v299 = 0;
  v299[1] = 0;
  v299[2] = 0;
  v299[3] = 0;
  v299[4] = 0;
  v299[5] = 0;
  v299[6] = 0;
  v299[7] = 0;
  STACK[0x9A8] = ((2 * (LODWORD(STACK[0xD14]) + 36)) & 0x1DBFFFFDALL) + ((LODWORD(STACK[0xD14]) + 36) ^ 0x3FCDBCDFEDFFFFEDLL) - 0x901068151224;
  *(v2 + 1464) = *(v3 + 8 * a1);
  return (*(v3 + 8 * (a1 + 152)))();
}

uint64_t sub_D98FC()
{
  v10 = 1600728529 * ((2 * (v6 & 0x4601560) - v6 - 73405799) ^ 0x7EAA20D8);
  *(v2 + 16) = v0;
  *(v2 + 8) = (v4 + 2065905158) ^ v10;
  *v2 = v5 ^ v10;
  v11 = (*(v1 + 8 * (v4 + 1451)))(v9 - 208);
  return (*(STACK[0x948] + 8 * ((3255 * ((v8 + v7) > *(v3 + 72))) ^ v4)))(v11);
}

uint64_t sub_D9A70@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, unint64_t a9@<X8>)
{
  *(v12 + a3) = *(a5 + a3) ^ v11;
  *(v14 + (a3 ^ v13)) = *(v9 + a3) ^ v19;
  v20 = a3 ^ a9;
  *(v15 + 4 * v20) = a8 ^ *(a6 + 4 * a3);
  v21 = *(a7 + a3) ^ a1;
  *(a2 + v20) = v21 ^ v18;
  *(a4 + v20) = v16 ^ v21;
  return (*(STACK[0x948] + 8 * (((a3 == 255) * v17) ^ v10)))();
}

uint64_t sub_D9B1C(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = STACK[0x520] + (((1645 * v8 + 2113825) % 0xA88u) ^ 0xFF76B76BBFFBBAFDLL) + ((31 * (a1 ^ 0x389)) ^ 0x89489440044604) + ((2 * ((1645 * v8 + 2113825) % 0xA88u)) & 0x15FA);
  v12 = *v7;
  v13 = *STACK[0x538];
  v14 = *(v13 + (v12 & v9));
  v15 = *a7 ^ 0xF1E76555;
  LODWORD(v11) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v11 + v14 + v9) & v15)) ^ *(v11 - 0xAE02CA257B6A96CLL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v11 + v14 + v9 + 2) & v15)) ^ (110 * v11);
  LODWORD(v11) = 551 * (((v11 ^ 0x4F1A64FD) - 1435670508) ^ ((v11 ^ 0xB4D25EA4) + 1369789003) ^ ((v11 ^ 0xFBC83A1F) + 515847922)) + 484295028;
  v16 = STACK[0x518] + 4 * (v11 - v11 / 0x1D48 * v10);
  LODWORD(v12) = *(v13 + (v12 & STACK[0x540]));
  v17 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v16 + v12 + LODWORD(STACK[0x52C])) & v15)) ^ *(v16 - 0x40E8C283FA03C307) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v16 + v12 + 1527793161) & v15));
  LODWORD(v11) = 1645 * (((v17 ^ (11565 * v16)) >> 8) ^ 0x6B) + 3391990;
  v18 = v11 - 2696 * (((12744711 * v11) >> 32) >> 3);
  v19 = (1645 * (((((v17 ^ (1912024365 * v16)) >> 24) ^ 0x76D5A7BB) - 1772057945) ^ ((((v17 ^ (1912024365 * v16)) >> 24) ^ 0x19B01987) - 117099365) ^ ((((v17 ^ (1912024365 * v16)) >> 24) ^ 0x6F65BE16) - 1882156276)) + 335556894) % 0xA88;
  v20 = 1645 * (((v17 ^ (16198957 * v16)) >> 16) ^ 0xE7) + 3391990;
  v21 = v20 - 2696 * (((12744711 * v20) >> 32) >> 3);
  v22 = (v18 ^ 0x5BFF4DBDDBFFDEF8) + STACK[0x520] + ((2 * v18) & 0x1DF0);
  v23 = (v17 ^ (45 * v16));
  v24 = (v21 ^ 0x7FEFFAF6FEFF8FFFLL) + 2 * v21 + STACK[0x520];
  v25 = (v19 ^ 0x7B5FBF75FBDFFF7ELL) + STACK[0x520] + ((2 * v19) & 0x1EFC);
  v26 = (1645 * (((v23 ^ 0xDBBB7F) + 134764719) ^ ((v23 ^ 0xB826CB13) - 1326110525) ^ ((v23 ^ 0xB8FD7046) - 1339124840)) + 1185138602) % 0xA88;
  v27 = (v26 ^ 0xF6FFF2FAF3EE6FF7) + STACK[0x520] + ((2 * v26) & 0x1FEE);
  LODWORD(v13) = 551 * (((2 * v8) & 0xA14) + (v8 ^ 0x50A));
  LODWORD(v21) = ((*(v24 + 0x752FD866A949C695) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v24 + 16805889 + v14 + v9) & v15)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v24 + 16805889 + v14 + v9 + 2) & v15)) ^ (110 * (v24 + 1)) ^ 0x46) << 8) | ((*(v25 + 0x79C013E7AC695716) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v25 + 69206146 + v14 + v9) & v15)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v25 + 69206146 + v14 + v9 + 2) & v15)) ^ (110 * (v25 - 126)) ^ 0x46) << 16);
  LODWORD(v22) = ((*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v22 + 603988232 + v14 + v9) & v15)) ^ *(v22 - 0x66DF7A6033B68864) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v22 + 603988232 + v14 + v9 + 2) & v15)) ^ (110 * (v22 + 8)) ^ 0x99370F) & ~v21 | v21 & 0x66C800) << 8;
  v28 = STACK[0x518] + 4 * (v13 - v13 / 0x1D48 * v10);
  *(v28 - 0x40E8C283FA03C307) = (1912024365 * v28) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v12 + v28 + LODWORD(STACK[0x52C])) & v15)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v12 + v28 + 1527793161) & v15)) ^ 0xF1D0122B ^ ((v22 ^ 0x420030FF) & (*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v27 + 202477577 + v14 + v9) & v15)) ^ *(v27 - 0x1E01F9D4BA51963) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v27 + 202477577 + v14 + v9 + 2) & v15)) ^ (110 * (v27 + 9)) ^ 0xC3073147) | v22 & 0x3CF8CE00);
  return (*(STACK[0x548] + 8 * ((39 * (v8 != 255)) ^ a1)))();
}

uint64_t sub_DA154(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = a4 + v4 + 448;
  v8 = (*(a2 + 8 * (v6 + v4 - 12)))(a1);
  v9 = STACK[0x948];
  *(v5 + 240) = 0;
  *(v5 + 248) = 0;
  return (*(v9 + 8 * v7))(v8);
}

uint64_t sub_DA224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, int a14, int a15)
{
  v18 = *(v15 + 8);
  **(v15 + 40) = *(&a12 + 4);
  *v18 = a15;
  return (*(v16 + 8 * (v17 - 1611)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_DC78C@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v4 = *(v3 + 24);
  v5 = v4 + 1811132388;
  v6 = v4 > 0x940C501B;
  v7 = v2 + 77948016;
  v8 = v6;
  v9 = (v7 < 0x6BF3AFE4) ^ v8;
  v10 = v5 > v7;
  if (v9)
  {
    v10 = v8;
  }

  return (*(a2 + 8 * ((v10 * ((a1 + 1639) ^ 0x9B)) ^ a1)))();
}

uint64_t sub_DC7F8(uint64_t a1, uint64_t a2)
{
  *(v2 + 352) = 0;
  *(v2 + 512) = 0;
  *(v2 + 504) = 0;
  return (*(a2 + 8 * (((*(v2 + 496) == 0) * ((v3 - 841) ^ 0x51C ^ ((v3 - 2376) | 0x300))) ^ v3)))();
}

uint64_t sub_DC880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v22 - 116) = v20 - 734 - 434465113 * ((((v22 - 128) | 0xB3AF585E) - ((v22 - 128) & 0xB3AF585E)) ^ 0x460D7201);
  *(v22 - 128) = &a19;
  (*(v21 + 8 * (v20 ^ 0xCCA)))(v22 - 128, a2, a3, a4, a5, a6, a7, a8);
  v19[688] = *(v22 - 120) ^ 0xF9;
  *(v22 - 128) = &a19;
  *(v22 - 116) = v20 - 734 - 434465113 * ((792642443 - ((v22 - 128) | 0x2F3EC38B) + ((v22 - 128) | 0xD0C13C74)) ^ 0x2563162B);
  v23 = (*(v21 + 8 * (v20 ^ 0xCCA)))(v22 - 128);
  v19[689] = *(v22 - 120) ^ 0xF9;
  v24 = v19[418] >= (((v20 - 28) & 0xFA) + (v20 ^ 0x11));
  return (*(v21 + 8 * ((v24 | (32 * v24)) ^ v20)))(v23);
}

uint64_t sub_DC9E0()
{
  STACK[0x8F8] = STACK[0x980];
  LODWORD(STACK[0x8D0]) = STACK[0xC08];
  STACK[0x760] = STACK[0x988];
  v2 = *(v1 + 8 * v0);
  STACK[0x8E8] = v2;
  STACK[0xC30] = v2;
  v3 = *(v1 + 8 * ((((v0 - 1878258615) | 0x6031411E) + 264418718) ^ v0));
  LODWORD(STACK[0x768]) = 16;
  return v3();
}

uint64_t sub_DCA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v5 + 24);
  v7 = ((v3 - 1364484276) ^ 0x9C1C5706) + v6;
  v8 = v6 > 0xCD480ACA;
  if ((v4 - 882267711) < 0x32B7F535 == v8)
  {
    v8 = v7 > v4 - 882267711;
  }

  return (*(a3 + 8 * ((v8 * (((v3 - 223) | 0x800) - 1036)) ^ v3)))(a1, a2, 0);
}

uint64_t sub_DCAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, int a4@<W5>, uint64_t a5@<X8>, int8x16_t a6@<Q0>, int8x16_t a7@<Q1>, int8x16_t a8@<Q4>, int8x16_t a9@<Q5>, int8x16_t a10@<Q6>, int32x4_t a11@<Q7>)
{
  v14 = a5 ^ a3 | v12;
  v15 = a2 + 4 * v12;
  v16 = v12 + 4;
  a7.i64[0] = *(v15 + 4);
  a7.i32[2] = *(a2 + 4 * v14);
  v17 = vextq_s8(a6, a7, 0xCuLL);
  a7.i32[3] = *(a2 + 4 * v16);
  v18 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(a7, a10), vandq_s8(v17, a8)), 1uLL), *(v15 + 1588));
  v19.i32[0] = *(v13 + 4 * (*(v15 + 4) & 1));
  v19.i32[1] = *(v13 + 4 * (*(v15 + 8) & 1));
  v19.i32[2] = *(v13 + 4 * (a7.i8[8] & 1));
  v19.i32[3] = *(v13 + 4 * (a7.i8[12] & 1));
  *v15 = veorq_s8(vaddq_s32(vsubq_s32(v18, vandq_s8(vaddq_s32(v18, v18), a9)), a11), v19);
  return (*(a1 + 8 * (((v16 == 224) * a4) ^ v11)))(a7);
}

uint64_t sub_DCC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v10 = a7 + v8 + 72 - 80;
  v11 = (*(v9 + 8 * ((v8 + 2376) ^ 0x305)))(v7, a2, a3, a4, a5, a6);
  v12 = STACK[0x948];
  STACK[0xA50] = v11;
  return (*(v12 + 8 * ((((v10 ^ (v11 == 0)) & 1) * (((2 * (v8 + 2376)) ^ 0x129E) - 27)) ^ (v8 + 2376))))();
}

uint64_t sub_DCC78()
{
  v4 = (*(v3 + 8 * (v2 + v1 - 12)))();
  v5 = STACK[0x948];
  *(v0 + 72) = 0;
  return (*(v5 + 8 * (v2 + v1 - 524)))(v4);
}

uint64_t sub_DCCAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *(v9 + 16) + v7;
  v11 = *(*(v6 - 132921991) + (((v10 & 0xFFFFFFF8) + 916900720) & *(v8 - 464343834)));
  v12 = (__ROR8__(v10 & 0xFFFFFFFFFFFFFFF8, 8) + v11) ^ 0x89F455BA1C0B015;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0xD8D188F9068EB840;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = a5 ^ 0x7E1F3531EE28B77 ^ (__ROR8__(v14, 8) + v15);
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((2 * (v18 + v17)) & 0x87CA5B272AAAB7AELL) - (v18 + v17) - 0x43E52D9395555BD8) ^ 0x2B629F327B3B710;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x8A4943FA3C1BB996;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((v23 + v22) | 0x6EC73CC417A708EDLL) - ((v23 + v22) | 0x9138C33BE858F712) - 0x6EC73CC417A708EELL) ^ 0xE145518CCB0A48EBLL;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((2 * (v26 + v25)) | 0xA0B022BECB75806CLL) - (v26 + v25) - 0x5058115F65BAC036) ^ 0x6E2B4EA2F5397095;
  return (*(a6 + 8 * a4))(a1, a2, a3, (((__ROR8__(v27, 8) + (v27 ^ __ROR8__(v25, 61))) ^ 0x262F3FDFCFE41F4CLL) >> (8 * (v10 & 7u))) ^ *v10);
}

uint64_t sub_DCF64()
{
  v3 = *(&STACK[0x6D0] + v0 + 16);
  v4 = (STACK[0x6C0] + v0);
  *v4 = *(&STACK[0x6D0] + v0);
  v4[1] = v3;
  return (*(v2 + 8 * (((v0 == 4448) * ((v1 + 503) ^ 0x8A4)) ^ v1)))();
}

void *sub_DCFAC(unint64_t a1)
{
  v2 = *(&off_18D8F0 + (byte_184300[~byte_158820[(-73 * ((dword_1902E8 + dword_190128) ^ 1))]] ^ (-73 * ((dword_1902E8 + dword_190128) ^ 1))) + 70);
  v3 = *(v2 - 54526878);
  v4 = *(&off_18D8F0 + (byte_123510[(byte_FF9E0[(-73 * ((dword_1902E8 - v3) ^ 1)) + 256] ^ 0x98) + 256] ^ (-73 * ((dword_1902E8 - v3) ^ 1))) - 163);
  v5 = v3 ^ &v249 ^ *(v4 - 2105774026);
  v6 = 1615229111 * (v5 + 0xF7839D8DBCF6EFFLL);
  v7 = 1615229111 * (v5 ^ 0xF087C62724309101);
  *(v2 - 54526878) = v6;
  *(v4 - 2105774026) = v7;
  LOBYTE(v7) = -73 * ((v7 + *(v2 - 54526878)) ^ 1);
  v8 = *(&off_18D8F0 + (byte_FF8E0[byte_184200[v7] ^ 0x35] ^ v7) - 203);
  v9 = *(v8 - 811444702);
  *(v8 - 811444702) = v9 + 1;
  v248 = v4;
  LOBYTE(v6) = -73 * ((*(v4 - 2105774026) + *(v2 - 54526878)) ^ 1);
  v10 = *(*(&off_18D8F0 + (byte_123410[byte_FF7E0[v6] ^ 0xEA] ^ v6) + 2) + 8 * (v9 & 1) - 1742994139);
  if (!v10)
  {
    return 0;
  }

  v247 = *(&off_18D8F0 + ((-73 * ((dword_1902E8 + dword_190128) ^ 1)) ^ byte_FF8E0[byte_184200[(-73 * ((dword_1902E8 + dword_190128) ^ 1))] ^ 0xFC]) - 54) - 939039246;
  if ((*(v10 + 880) & 2) != 0 && atomic_exchange((v10 + 884), 1u))
  {
    v11 = 1;
    while (*(v10 + 884) || atomic_exchange((v10 + 884), 1u))
    {
      if ((v11 & 0x3F) == 0)
      {
        (*&v247[8 * ((-73 * ((*(v248 - 2105774026) - *(v2 - 54526878)) ^ 1)) ^ byte_FF8E0[byte_184200[(-73 * ((*(v248 - 2105774026) - *(v2 - 54526878)) ^ 1))] ^ 0x35]) + 20400])();
      }

      ++v11;
    }
  }

  v12 = (*(&off_18D8F0 + ((-73 * ((*(v248 - 2105774026) + *(v2 - 54526878)) ^ 1)) ^ byte_123410[byte_FF7E0[(-73 * ((*(v248 - 2105774026) + *(v2 - 54526878)) ^ 1))] ^ 0xEA]) + 91) - 623296426);
  if (a1 <= 0xE0)
  {
    v13 = (a1 + 31) & 0x1F0;
    if (a1 < 0xF)
    {
      v13 = 32;
    }

    v14 = v13 >> 3;
    v15 = *v10;
    v16 = *v10 >> (v13 >> 3);
    if ((v16 & 3) != 0)
    {
      v17 = ((*v10 >> (v13 >> 3)) & 1 | v14) ^ 1;
      v18 = v10 + 8 * (2 * v17);
      v19 = v18 + 72;
      v20 = *(v18 + 88);
      v21 = v20[2];
      if (v19 == v21)
      {
        *v10 = v15 & ~(1 << v17);
      }

      else
      {
        *(v21 + 24) = v19;
        *(v19 + 16) = v21;
      }

      v20[1] = (8 * (v17 & 0x3F)) | 3;
      v39 = &v20[v17];
      v39[1] |= 1uLL;
      *v39 = *v12 ^ v10;
      goto LABEL_93;
    }

    if (v13 > *(v10 + 8))
    {
      if (v16)
      {
        v26 = (v16 << v14) & ((2 << v14) | -(2 << v14));
        v27 = (v26 - 1) & ~v26;
        v28 = (v27 >> 12) & 0x10;
        v29 = v27 >> v28;
        v30 = v28 & 0xFFFFFFF0 | (v29 >> 5) & 0xF;
        v31 = v29 >> ((v29 >> 5) & 8);
        v32 = v30 & 0xFFFFFFF8 | (v31 >> 2) & 7;
        v33 = v31 >> ((v31 >> 2) & 4);
        v34 = (v32 & 0xFFFFFFFC | (v33 >> 1) & 2 | (v33 >> ((v33 >> 1) & 2) >> 1) & 1) + (v33 >> ((v33 >> 1) & 2) >> (((v33 >> ((v33 >> 1) & 2)) & 2) != 0));
        v35 = v10 + 16 * v34;
        v36 = v35 + 72;
        v37 = *(v35 + 88);
        v38 = *(v37 + 16);
        if (v36 == v38)
        {
          *v10 = v15 & ~(1 << v34);
        }

        else
        {
          *(v38 + 24) = v36;
          *(v36 + 16) = v38;
        }

        v126 = 8 * v34;
        v70 = v126 - v13;
        if (v126 - v13 <= 0x1F)
        {
          *(v37 + 8) = v126 | 3;
          v127 = (v37 + v126);
LABEL_218:
          v127[1] |= 1uLL;
          *v127 = *v12 ^ v10;
          result = (v37 + 16);
          goto LABEL_94;
        }

        *(v37 + 8) = v13 | 3;
        v128 = (v37 + v13);
        *v128 = *v12 ^ v10;
        v128[1] = v70 | 1;
        goto LABEL_220;
      }

      v62 = *(v10 + 4);
      if (v62)
      {
        v63 = (v62 - 1) & ~v62;
        v64 = (v63 >> 12) & 0x10;
        v65 = v63 >> v64;
        v66 = v64 & 0xFFFFFFF0 | (v65 >> 5) & 0xF;
        v67 = v65 >> ((v65 >> 5) & 8);
        v68 = v66 & 0xFFFFFFF8 | (v67 >> 2) & 7;
        v69 = v67 >> ((v67 >> 2) & 4);
        v37 = *(v10 + 8 * ((v68 & 0xFFFFFFFC | (v69 >> 1) & 2 | (v69 >> ((v69 >> 1) & 2) >> 1) & 1) + (v69 >> ((v69 >> 1) & 2) >> (((v69 >> ((v69 >> 1) & 2)) & 2) != 0))) + 600);
        v70 = (*(v37 + 8) & 0xFFFFFFFFFFFFFFF8) - v13;
        v71 = 32;
        if (!*(v37 + 32))
        {
          v71 = 40;
        }

        for (i = *(v37 + v71); i; i = *(i + v73))
        {
          if ((*(i + 8) & 0xFFFFFFFFFFFFFFF8) - v13 < v70)
          {
            v37 = i;
            v70 = (*(i + 8) & 0xFFFFFFFFFFFFFFF8) - v13;
          }

          if (*(i + 32))
          {
            v73 = 32;
          }

          else
          {
            v73 = 40;
          }
        }

        v74 = *(v37 + 48);
        v75 = *(v37 + 24);
        if (v75 == v37)
        {
          v146 = (v37 + 40);
          v147 = *(v37 + 40);
          if (v147 || (v146 = (v37 + 32), (v147 = *(v37 + 32)) != 0))
          {
            do
            {
              do
              {
                v148 = v146;
                v75 = v147;
                v146 = v147 + 5;
                v147 = v147[5];
              }

              while (v147);
              v146 = v75 + 4;
              v147 = v75[4];
            }

            while (v147);
            *v148 = 0;
            if (!v74)
            {
              goto LABEL_216;
            }
          }

          else
          {
            v75 = 0;
            if (!v74)
            {
              goto LABEL_216;
            }
          }
        }

        else
        {
          v76 = *(v37 + 16);
          *(v76 + 24) = v75;
          v75[2] = v76;
          if (!v74)
          {
            goto LABEL_216;
          }
        }

        v149 = v10 + 8 * *(v37 + 56);
        if (v37 == *(v149 + 600))
        {
          *(v149 + 600) = v75;
          if (!v75)
          {
            *(v10 + 4) &= ~(1 << *(v37 + 56));
LABEL_216:
            if (v70 <= 0x1F)
            {
              v176 = v70 + v13;
              *(v37 + 8) = v176 | 3;
              v127 = (v37 + v176);
              goto LABEL_218;
            }

            *(v37 + 8) = v13 | 3;
            *(v37 + v13) = *v12 ^ v10;
            v128 = (v37 + v13);
            v128[1] = v70 | 1;
LABEL_220:
            *(v128 + v70) = v70;
            v177 = *(v10 + 8);
            if (v177)
            {
              v178 = *(v10 + 32);
              v179 = v177 >> 3;
              v180 = v10 + ((2 * v177) & 0x7FFFFFFF0) + 72;
              v181 = 1 << v179;
              if ((*v10 & v181) != 0)
              {
                v182 = *(v180 + 16);
              }

              else
              {
                *v10 |= v181;
                v182 = v180;
              }

              *(v180 + 16) = v178;
              *(v182 + 24) = v178;
              *(v178 + 16) = v182;
              *(v178 + 24) = v180;
            }

            *(v10 + 8) = v70;
            *(v10 + 32) = v128;
            result = (v37 + 16);
            goto LABEL_94;
          }
        }

        else
        {
          v150 = 40;
          if (*(v74 + 32) == v37)
          {
            v150 = 32;
          }

          *(v74 + v150) = v75;
          if (!v75)
          {
            goto LABEL_216;
          }
        }

        v75[6] = v74;
        v157 = *(v37 + 32);
        if (v157)
        {
          v75[4] = v157;
          *(v157 + 48) = v75;
        }

        v158 = *(v37 + 40);
        if (v158)
        {
          v75[5] = v158;
          *(v158 + 48) = v75;
        }

        goto LABEL_216;
      }
    }

    goto LABEL_71;
  }

  if (a1 > 0xFFFFFFFFFFFFFF7FLL)
  {
    v13 = -1;
    goto LABEL_71;
  }

  v13 = (a1 + 31) & 0xFFFFFFFFFFFFFFF0;
  v23 = *(v10 + 4);
  v261 = (v10 + 4);
  if (v23)
  {
    v24 = -v13;
    if (a1 <= 0xFFFFE0)
    {
      v40 = (a1 + 31) >> 8;
      v41 = ((v40 + 1048320) >> 16) & 8;
      LODWORD(v40) = v40 << v41;
      LODWORD(v40) = (v40 << (((v40 + 520192) >> 16) & 4) << ((((v40 << (((v40 + 520192) >> 16) & 4)) + 245760) >> 16) & 2) >> 15) - (((v40 + 520192) >> 16) & 4 | v41 | (((v40 << (((v40 + 520192) >> 16) & 4)) + 245760) >> 16) & 2);
      v25 = ((v13 >> (v40 + 21)) & 1 | (2 * v40)) + 28;
    }

    else
    {
      v25 = 31;
    }

    v42 = *(v10 + 8 * v25 + 600);
    if (v42)
    {
      v43 = 0;
      v44 = 0;
      v45 = 57 - (v25 >> 1);
      if (v25 == 31)
      {
        LOBYTE(v45) = 0;
      }

      v46 = v13 << v45;
      while (1)
      {
        v49 = (v42[1] & 0xFFFFFFFFFFFFFFF8) - v13;
        if (v49 < v24)
        {
          v43 = v42;
          v24 = (v42[1] & 0xFFFFFFFFFFFFFFF8) - v13;
          if (!v49)
          {
            break;
          }
        }

        v47 = v42[5];
        v42 = v42[(v46 >> 63) + 4];
        if (v47 != v42 && v47 != 0)
        {
          v44 = v47;
        }

        v46 *= 2;
        if (!v42)
        {
          goto LABEL_43;
        }
      }

      v43 = v42;
    }

    else
    {
      v43 = 0;
      v44 = 0;
LABEL_43:
      if (!(v44 | v43))
      {
        v50 = ((2 << v25) | -(2 << v25)) & v23;
        if (!v50)
        {
          goto LABEL_71;
        }

        v43 = 0;
        v51 = (v50 - 1) & ~v50;
        v52 = (v51 >> 12) & 0x10;
        v53 = v51 >> v52;
        v54 = v52 & 0xFFFFFFF0 | (v53 >> 5) & 0xF;
        v55 = v53 >> ((v53 >> 5) & 8);
        v56 = v54 & 0xFFFFFFF8 | (v55 >> 2) & 7;
        v57 = v55 >> ((v55 >> 2) & 4);
        v44 = *(v10 + 8 * ((v56 & 0xFFFFFFFC | (v57 >> 1) & 2 | (v57 >> ((v57 >> 1) & 2) >> 1) & 1) + (v57 >> ((v57 >> 1) & 2) >> (((v57 >> ((v57 >> 1) & 2)) & 2) != 0))) + 600);
      }

      v42 = v44;
      if (!v44)
      {
LABEL_53:
        v262 = v43;
        v263 = v24;
        if (!v43 || v263 >= *(v10 + 8) - v13)
        {
          goto LABEL_71;
        }

        v264 = v262 + v13;
        v59 = v262[6];
        v60 = v262[3];
        if (v60 == v262)
        {
          v129 = v262 + 5;
          v130 = v262[5];
          if (v130 || (v129 = v262 + 4, (v130 = v262[4]) != 0))
          {
            do
            {
              do
              {
                v131 = v129;
                v60 = v130;
                v129 = v130 + 5;
                v130 = v130[5];
              }

              while (v130);
              v129 = v60 + 4;
              v130 = v60[4];
            }

            while (v130);
            *v131 = 0;
            if (!v59)
            {
              goto LABEL_199;
            }
          }

          else
          {
            v60 = 0;
            if (!v59)
            {
              goto LABEL_199;
            }
          }
        }

        else
        {
          v61 = v262[2];
          *(v61 + 24) = v60;
          v60[2] = v61;
          if (!v59)
          {
            goto LABEL_199;
          }
        }

        v132 = v262;
        v133 = v10 + 8 * *(v262 + 14);
        if (v262 == *(v133 + 600))
        {
          *(v133 + 600) = v60;
          if (!v60)
          {
            *v261 &= ~(1 << *(v132 + 14));
LABEL_199:
            if (v263 > 0x1F)
            {
              v165 = v262;
              v262[1] = v13 | 3;
              *(v165 + v13) = *v12 ^ v10;
              v166 = v263;
              v167 = v264;
              *(v264 + 8) = v263 | 1;
              *(v167 + v166) = v166;
              if (v166 > 0xFF)
              {
                v250 = 31;
                if (!(v166 >> 24))
                {
                  v172 = (((v263 >> 8) + 1048320) >> 16) & 8;
                  v173 = (v263 >> 8) << v172;
                  v174 = (v173 << (((v173 + 520192) >> 16) & 4) << ((((v173 << (((v173 + 520192) >> 16) & 4)) + 245760) >> 16) & 2) >> 15) - (((v173 + 520192) >> 16) & 4 | v172 | (((v173 << (((v173 + 520192) >> 16) & 4)) + 245760) >> 16) & 2);
                  v250 = ((v263 >> (v174 + 21)) & 1 | (2 * v174)) + 28;
                }

                v251 = v250;
                v252 = v10 + 8 * v250 + 600;
                *(v264 + 56) = v250;
                __asm { BRAA            X8, X17 }
              }

              v168 = v166 >> 3;
              v169 = v10 + 16 * (v166 >> 3) + 72;
              v170 = 1 << v168;
              if ((v170 & *v10) != 0)
              {
                v171 = *(v169 + 16);
              }

              else
              {
                *v10 |= v170;
                v171 = v169;
              }

              v175 = v264;
              *(v169 + 16) = v264;
              *(v171 + 24) = v175;
              *(v175 + 16) = v171;
              *(v175 + 24) = v169;
            }

            else
            {
              v162 = v262;
              v163 = v263 + v13;
              v262[1] = v163 | 3;
              v164 = (v162 + v163);
              v164[1] |= 1uLL;
              *v164 = *v12 ^ v10;
            }

            v20 = v262;
            goto LABEL_93;
          }
        }

        else
        {
          v134 = 40;
          if (*(v59 + 32) == v262)
          {
            v134 = 32;
          }

          *(v59 + v134) = v60;
          if (!v60)
          {
            goto LABEL_199;
          }
        }

        v60[6] = v59;
        v135 = v262[4];
        if (v135)
        {
          v60[4] = v135;
          *(v135 + 48) = v60;
        }

        v136 = v262[5];
        if (v136)
        {
          v60[5] = v136;
          *(v136 + 48) = v60;
        }

        goto LABEL_199;
      }
    }

    do
    {
      if ((v42[1] & 0xFFFFFFFFFFFFFFF8) - v13 < v24)
      {
        v43 = v42;
        v24 = (v42[1] & 0xFFFFFFFFFFFFFFF8) - v13;
      }

      if (v42[4])
      {
        v58 = 4;
      }

      else
      {
        v58 = 5;
      }

      v42 = v42[v58];
    }

    while (v42);
    goto LABEL_53;
  }

LABEL_71:
  v265 = v13;
  v77 = *(v10 + 8);
  if (v13 <= v77)
  {
    v83 = v77 - v265;
    v20 = *(v10 + 32);
    if (v77 - v265 < 0x20)
    {
      *(v10 + 8) = 0;
      *(v10 + 32) = 0;
      v20[1] = v77 | 3;
      *(v20 + v77 + 8) |= 1uLL;
    }

    else
    {
      v77 = v265;
      v84 = v20 + v265;
      *(v10 + 32) = v20 + v265;
      *(v10 + 8) = v83;
      *(v84 + 1) = v83 | 1;
      *&v84[v83] = v83;
      v20[1] = v77 | 3;
    }

    *(v20 + v77) = *v12 ^ v10;
    goto LABEL_93;
  }

  v78 = *(v10 + 16);
  v266 = (v10 + 16);
  if (v265 < v78)
  {
    v79 = v265;
    v80 = v78 - v265;
    *v266 = v80;
    v81 = *(v10 + 40);
    v82 = (v81 + v79);
    *(v10 + 40) = v81 + v79;
    v82[1] = v80 | 1;
    *(v81 + 8) = v79 | 3;
    *v82 = *v12 ^ v10;
    result = (v81 + 16);
    goto LABEL_94;
  }

  if (v78)
  {
    if ((*(v10 + 880) & 1) != 0 && v12[3] <= v265)
    {
      v85 = (v12[1] + v265 + 62) & -v12[1];
      v86 = *(v10 + 872);
      if (!v86 || (v87 = *(v10 + 856), v87 + v85 > v87) && v87 + v85 <= v86)
      {
        if (v85 > v265)
        {
          v88 = (*&v247[8 * ((-73 * ((*(v248 - 2105774026) - *(v2 - 54526878)) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((*(v248 - 2105774026) - *(v2 - 54526878)) ^ 1))] ^ 0x65]) + 21752])(0, (v12[1] + v265 + 62) & -v12[1], 3, 4098, 0xFFFFFFFFLL, 0);
          if (v88 != -1)
          {
            v89 = -(v88 + 16) & 0xFLL;
            if (((v88 + 16) & 0xF) == 0)
            {
              v89 = 0;
            }

            v20 = (v88 + v89);
            *v20 = v89;
            v20[1] = v85 - v89 - 32;
            v90 = (v88 + v85 - 32);
            *v90 = *v12 ^ v10;
            v90[1] = 11;
            *(v85 + v88 - 16) = 0;
            v91 = *(v10 + 24);
            if (!v91 || v88 < v91)
            {
              *(v10 + 24) = v88;
            }

            v92 = *(v10 + 856) + v85;
            *(v10 + 856) = v92;
            if (v92 > *(v10 + 864))
            {
              *(v10 + 864) = v92;
            }

            goto LABEL_93;
          }
        }
      }
    }
  }

  result = 0;
  v93 = (v12[2] + v265 + 95) & -v12[2];
  if (v93 > v265)
  {
    v94 = *(v10 + 872);
    if (!v94 || (result = 0, v95 = *(v10 + 856), v95 + v93 > v95) && v95 + v93 <= v94)
    {
      v96 = (*&v247[8 * ((-73 * ((*(v248 - 2105774026) + *(v2 - 54526878)) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((*(v248 - 2105774026) + *(v2 - 54526878)) ^ 1))] ^ 0x52]) + 20080])(0, (v12[2] + v265 + 95) & -v12[2], 3, 4098, 0xFFFFFFFFLL, 0);
      v97 = v96 != -1;
      if (v96 == -1)
      {
        v98 = 0;
      }

      else
      {
        v98 = v93;
      }

      if (v96 == -1)
      {
LABEL_320:
        v246 = (*&v247[8 * ((-73 * ((*(v248 - 2105774026) - *(v2 - 54526878)) ^ 1)) ^ byte_FF8E0[byte_184200[(-73 * ((*(v248 - 2105774026) - *(v2 - 54526878)) ^ 1))] ^ 0xBC]) + 21008])();
        result = 0;
        *v246 = 12;
        goto LABEL_94;
      }

      v99 = *(v10 + 856) + v93;
      *(v10 + 856) = v99;
      if (v99 > *(v10 + 864))
      {
        *(v10 + 864) = v99;
      }

      v100 = *(v10 + 40);
      v267 = (v10 + 40);
      if (!v100)
      {
        v137 = *(v10 + 24);
        if (!v137 || v96 < v137)
        {
          *(v10 + 24) = v96;
        }

        *(v10 + 888) = v96;
        *(v10 + 896) = v93;
        *(v10 + 912) = v97;
        v138 = *v12;
        *(v10 + 56) = 4095;
        *(v10 + 64) = v138;
        *(v10 + 96) = v10 + 72;
        *(v10 + 88) = v10 + 72;
        *(v10 + 112) = v10 + 88;
        *(v10 + 104) = v10 + 88;
        *(v10 + 128) = v10 + 104;
        *(v10 + 120) = v10 + 104;
        *(v10 + 144) = v10 + 120;
        *(v10 + 136) = v10 + 120;
        *(v10 + 160) = v10 + 136;
        *(v10 + 152) = v10 + 136;
        *(v10 + 176) = v10 + 152;
        *(v10 + 168) = v10 + 152;
        *(v10 + 192) = v10 + 168;
        *(v10 + 184) = v10 + 168;
        *(v10 + 208) = v10 + 184;
        *(v10 + 200) = v10 + 184;
        *(v10 + 224) = v10 + 200;
        *(v10 + 216) = v10 + 200;
        *(v10 + 240) = v10 + 216;
        *(v10 + 232) = v10 + 216;
        *(v10 + 248) = v10 + 232;
        *(v10 + 256) = v10 + 232;
        *(v10 + 264) = v10 + 248;
        *(v10 + 272) = v10 + 248;
        *(v10 + 280) = v10 + 264;
        *(v10 + 288) = v10 + 264;
        *(v10 + 296) = v10 + 280;
        *(v10 + 304) = v10 + 280;
        *(v10 + 312) = v10 + 296;
        *(v10 + 320) = v10 + 296;
        *(v10 + 328) = v10 + 312;
        *(v10 + 336) = v10 + 312;
        *(v10 + 344) = v10 + 328;
        *(v10 + 352) = v10 + 328;
        *(v10 + 360) = v10 + 344;
        *(v10 + 368) = v10 + 344;
        *(v10 + 376) = v10 + 360;
        *(v10 + 384) = v10 + 360;
        *(v10 + 392) = v10 + 376;
        *(v10 + 400) = v10 + 376;
        *(v10 + 408) = v10 + 392;
        *(v10 + 416) = v10 + 392;
        *(v10 + 424) = v10 + 408;
        *(v10 + 432) = v10 + 408;
        *(v10 + 440) = v10 + 424;
        *(v10 + 448) = v10 + 424;
        *(v10 + 456) = v10 + 440;
        *(v10 + 464) = v10 + 440;
        *(v10 + 472) = v10 + 456;
        *(v10 + 480) = v10 + 456;
        *(v10 + 488) = v10 + 472;
        *(v10 + 504) = v10 + 488;
        *(v10 + 512) = v10 + 488;
        *(v10 + 496) = v10 + 472;
        *(v10 + 528) = v10 + 504;
        *(v10 + 520) = v10 + 504;
        *(v10 + 544) = v10 + 520;
        *(v10 + 536) = v10 + 520;
        *(v10 + 560) = v10 + 536;
        *(v10 + 552) = v10 + 536;
        *(v10 + 576) = v10 + 552;
        *(v10 + 568) = v10 + 552;
        *(v10 + 592) = v10 + 568;
        *(v10 + 584) = v10 + 568;
        v139 = v10 + (*(v10 - 8) & 0xFFFFFFFFFFFFFFF8);
        v140 = v139 - 16;
        if ((v139 & 0xF) != 0)
        {
          v141 = -v139 & 0xFLL;
        }

        else
        {
          v141 = 0;
        }

        v142 = v140 + v141;
        v143 = v96 + v93 - v140 - v141 - 80;
        v144 = v266;
        *v267 = v142;
        *v144 = v143;
        *(v142 + 8) = v143 | 1;
        v145 = (v142 + v143);
        goto LABEL_188;
      }

      v101 = *(v10 + 888);
      v102 = *(v10 + 896);
      if (v96 == v101 + v102 && v100 < v96 && v100 >= v101)
      {
        v152 = *(v10 + 912);
        if ((v152 & 1) != 0 && (v152 & 8) == 0)
        {
          *(v10 + 896) = v102 + v93;
          v153 = v266;
          if (((v100 + 2) & 0xF) != 0)
          {
            v154 = -(v100 + 16) & 0xFLL;
          }

          else
          {
            v154 = 0;
          }

          v155 = v100 + v154;
          v156 = v93 - v154 + *v266;
          *v267 = v155;
          *v153 = v156;
          *(v155 + 1) = v156 | 1;
          v145 = &v155[v156];
LABEL_188:
          *(v145 + 1) = 80;
          *(v10 + 48) = v12[4];
          goto LABEL_318;
        }
      }

      v103 = (v10 + 888);
      if (v96 < *(v10 + 24))
      {
        *(v10 + 24) = v96;
      }

      v104 = *v103;
      v105 = (v10 + 888);
      if (*v103 == v96 + v93)
      {
        v106 = *(v10 + 912);
        v105 = (v10 + 888);
        if (v106)
        {
          v105 = (v10 + 888);
          if ((v106 & 8) == 0)
          {
            *v103 = v96;
            *(v10 + 896) += v93;
            if (((v96 + 16) & 0xF) != 0)
            {
              v107 = -(v96 + 16) & 0xFLL;
            }

            else
            {
              v107 = 0;
            }

            v108 = v96 + v107;
            if (((v104 + 16) & 0xF) != 0)
            {
              v109 = -(v104 + 16) & 0xFLL;
            }

            else
            {
              v109 = 0;
            }

            v110 = v104 + v109;
            v111 = v265;
            v268 = v108;
            v269 = v108 + v265;
            v112 = v104 + v109 - v108 - v265;
            *(v108 + 8) = v265 | 3;
            *(v108 + v111) = *v12 ^ v10;
            if (v110 == *v267)
            {
              v192 = v267;
              v193 = *v266 + v112;
              *v266 = v193;
              v194 = v269;
              *v192 = v269;
              *(v194 + 8) = v193 | 1;
            }

            else
            {
              if (v110 != *(v10 + 32))
              {
                v113 = *(v110 + 8);
                if ((v113 & 3) != 1)
                {
LABEL_273:
                  v270 = v112;
                  *(v110 + 8) = v113 & 0xFFFFFFFFFFFFFFFELL;
                  v207 = v269;
                  *(v269 + 8) = v112 | 1;
                  *(v207 + v112) = v112;
                  if (v112 > 0xFF)
                  {
                    v253 = 31;
                    if (!(v112 >> 24))
                    {
                      v212 = (((v270 >> 8) + 1048320) >> 16) & 8;
                      v213 = (v270 >> 8) << v212;
                      v214 = (v213 << (((v213 + 520192) >> 16) & 4) << ((((v213 << (((v213 + 520192) >> 16) & 4)) + 245760) >> 16) & 2) >> 15) - (((v213 + 520192) >> 16) & 4 | v212 | (((v213 << (((v213 + 520192) >> 16) & 4)) + 245760) >> 16) & 2);
                      v253 = ((v270 >> (v214 + 21)) & 1 | (2 * v214)) + 28;
                    }

                    v254 = v253;
                    v215 = v10 + 8 * v253 + 600;
                    *(v269 + 56) = v253;
                    v255 = v215;
                    v256 = v10 + 4;
                    __asm { BRAA            X8, X17 }
                  }

                  v208 = v112 >> 3;
                  v209 = v10 + 16 * (v112 >> 3) + 72;
                  v210 = 1 << v208;
                  if ((v210 & *v10) != 0)
                  {
                    v211 = *(v209 + 16);
                  }

                  else
                  {
                    *v10 |= v210;
                    v211 = v209;
                  }

                  v216 = v269;
                  *(v209 + 16) = v269;
                  *(v211 + 24) = v216;
                  *(v216 + 16) = v211;
                  *(v216 + 24) = v209;
                  goto LABEL_321;
                }

                v114 = v113 & 0xFFFFFFFFFFFFFFF8;
                if (v113 <= 0xFF)
                {
                  v115 = *(v110 + 16);
                  v116 = *(v110 + 24);
                  if (v116 == v115)
                  {
                    *v10 &= ~(1 << (v113 >> 3));
                  }

                  else
                  {
                    *(v115 + 24) = v116;
                    *(v116 + 16) = v115;
                  }

                  goto LABEL_272;
                }

                v197 = *(v110 + 48);
                v198 = *(v110 + 24);
                if (v198 == v110)
                {
                  v200 = (v110 + 40);
                  v201 = *(v110 + 40);
                  if (v201 || (v200 = (v110 + 32), (v201 = *(v110 + 32)) != 0))
                  {
                    do
                    {
                      do
                      {
                        v202 = v200;
                        v198 = v201;
                        v200 = v201 + 5;
                        v201 = v201[5];
                      }

                      while (v201);
                      v200 = v198 + 4;
                      v201 = v198[4];
                    }

                    while (v201);
                    *v202 = 0;
                  }

                  else
                  {
                    v198 = 0;
                  }
                }

                else
                {
                  v199 = *(v110 + 16);
                  *(v199 + 24) = v198;
                  v198[2] = v199;
                }

                if (!v197)
                {
                  goto LABEL_272;
                }

                v203 = v10 + 8 * *(v110 + 56);
                if (v110 == *(v203 + 600))
                {
                  *(v203 + 600) = v198;
                  if (!v198)
                  {
                    *(v10 + 4) &= ~(1 << *(v110 + 56));
LABEL_272:
                    v110 += v114;
                    v112 += v114;
                    v113 = *(v110 + 8);
                    goto LABEL_273;
                  }
                }

                else
                {
                  v204 = 40;
                  if (*(v197 + 32) == v110)
                  {
                    v204 = 32;
                  }

                  *(v197 + v204) = v198;
                  if (!v198)
                  {
                    goto LABEL_272;
                  }
                }

                v198[6] = v197;
                v205 = *(v110 + 32);
                if (v205)
                {
                  v198[4] = v205;
                  *(v205 + 48) = v198;
                }

                v206 = *(v110 + 40);
                if (v206)
                {
                  v198[5] = v206;
                  *(v206 + 48) = v198;
                }

                goto LABEL_272;
              }

              v195 = *(v10 + 8) + v112;
              *(v10 + 8) = v195;
              v196 = v269;
              *(v10 + 32) = v269;
              *(v196 + 8) = v195 | 1;
              *(v196 + v195) = v195;
            }

LABEL_321:
            v20 = v268;
LABEL_93:
            result = v20 + 2;
            goto LABEL_94;
          }
        }
      }

      while (1)
      {
        if (*v105 <= v100)
        {
          v117 = *v105 + v105[1];
          if (v117 > v100)
          {
            break;
          }
        }

        v105 = v105[2];
      }

      if (((v117 - 79) & 0xF) != 0)
      {
        v118 = (79 - v117) & 0xFLL;
      }

      else
      {
        v118 = 0;
      }

      v119 = (v117 + v118 - 95);
      if (v119 < v100 + 4)
      {
        v119 = v100;
      }

      v120 = v119 + 2;
      if (((v96 + 16) & 0xF) != 0)
      {
        v121 = -(v96 + 16) & 0xFLL;
      }

      else
      {
        v121 = 0;
      }

      v122 = v98 - v121;
      v123 = v96 + v121;
      v122 -= 80;
      *v267 = v123;
      *v266 = v122;
      *(v123 + 8) = v122 | 1;
      *(v123 + v122 + 8) = 80;
      *(v10 + 48) = v12[4];
      v119[1] = 51;
      v119[6] = *v12 ^ v10;
      if (((v120 ^ v103) & 7) != 0)
      {
        v124 = 0;
        do
        {
          v125 = &v120[v124 * 8];
          *v125 = v103[v124];
          v125[1] = BYTE1(v103[v124]);
          v125[2] = BYTE2(v103[v124]);
          v125[3] = BYTE3(v103[v124]);
          v125[4] = BYTE4(v103[v124]);
          v125[5] = BYTE5(v103[v124]);
          v125[6] = BYTE6(v103[v124]);
          v125[7] = HIBYTE(v103[v124++]);
        }

        while ((v124 * 8) != 32);
LABEL_307:
        *v103 = v96;
        *(v10 + 896) = v98;
        *(v10 + 912) = v97;
        v232 = v119 + 7;
        *(v10 + 904) = v120;
        do
        {
          *v232++ = 11;
        }

        while (v232 < v117);
        v233 = v119 - v100;
        if (v119 != v100)
        {
          v271 = v100;
          v272 = v119 - v100;
          v119[1] &= ~1uLL;
          v100[1] = v233 | 1;
          *v119 = v233;
          if (v233 > 0xFF)
          {
            v257 = 31;
            if (!(v233 >> 24))
            {
              v237 = (((v272 >> 8) + 1048320) >> 16) & 8;
              v238 = (v272 >> 8) << v237;
              v239 = (v238 << (((v238 + 520192) >> 16) & 4) << ((((v238 << (((v238 + 520192) >> 16) & 4)) + 245760) >> 16) & 2) >> 15) - (((v238 + 520192) >> 16) & 4 | v237 | (((v238 << (((v238 + 520192) >> 16) & 4)) + 245760) >> 16) & 2);
              v257 = ((v272 >> (v239 + 21)) & 1 | (2 * v239)) + 28;
            }

            v258 = v257;
            v240 = v10 + 8 * v257 + 600;
            *(v271 + 14) = v257;
            v259 = v240;
            v260 = v10 + 4;
            __asm { BRAA            X8, X17 }
          }

          v234 = v10 + 16 * (v233 >> 3) + 72;
          v235 = 1 << (v233 >> 3);
          if ((v235 & *v10) != 0)
          {
            v236 = *(v10 + 16 * (v233 >> 3) + 88);
          }

          else
          {
            *v10 |= v235;
            v236 = v10 + 16 * (v233 >> 3) + 72;
          }

          v241 = v271;
          *(v234 + 16) = v271;
          *(v236 + 24) = v241;
          v241[2] = v236;
          v241[3] = v234;
        }

LABEL_318:
        if (*v266 > v265)
        {
          v242 = v265;
          v243 = *v266 - v265;
          *v266 = v243;
          v244 = *v267;
          v245 = (*v267 + v242);
          *v267 = v245;
          v245[1] = v243 | 1;
          *(v244 + 8) = v242 | 3;
          *v245 = *v12 ^ v10;
          result = (v244 + 16);
          goto LABEL_94;
        }

        goto LABEL_320;
      }

      v159 = -v103 & 7;
      v160 = (v10 + 888);
      v161 = (v119 + 2);
      if ((-v103 & 7u) <= 3)
      {
        if ((-v103 & 7u) <= 1)
        {
          if (!v159)
          {
LABEL_238:
            v189 = 32 - v159;
            if (v189 >= 8)
            {
              v190 = v189 >> 3;
              v191 = ((v189 >> 3) + 7) >> 3;
              if (v189 >> 3 > 3)
              {
                if (v189 >> 3 <= 5)
                {
                  if (v190 == 4)
                  {
                    goto LABEL_286;
                  }

                  goto LABEL_285;
                }

                if (v190 == 6)
                {
                  goto LABEL_284;
                }

                goto LABEL_283;
              }

              if (v189 >> 3 > 1)
              {
                if (v190 == 2)
                {
                  goto LABEL_288;
                }

                goto LABEL_287;
              }

              if (v190)
              {
                goto LABEL_289;
              }

              do
              {
                v217 = *v160;
                v160 += 8;
                *v161 = v217;
                v161 += 8;
LABEL_283:
                v218 = *v160;
                v160 += 8;
                *v161 = v218;
                v161 += 8;
LABEL_284:
                v219 = *v160;
                v160 += 8;
                *v161 = v219;
                v161 += 8;
LABEL_285:
                v220 = *v160;
                v160 += 8;
                *v161 = v220;
                v161 += 8;
LABEL_286:
                v221 = *v160;
                v160 += 8;
                *v161 = v221;
                v161 += 8;
LABEL_287:
                v222 = *v160;
                v160 += 8;
                *v161 = v222;
                v161 += 8;
LABEL_288:
                v223 = *v160;
                v160 += 8;
                *v161 = v223;
                v161 += 8;
LABEL_289:
                v224 = *v160;
                v160 += 8;
                *v161 = v224;
                v161 += 8;
                --v191;
              }

              while (v191);
            }

            v225 = v189 & 7;
            if (v225 <= 3)
            {
              if (v225 <= 1)
              {
                if (!v225)
                {
                  goto LABEL_307;
                }

                goto LABEL_306;
              }

              if (v225 == 2)
              {
LABEL_305:
                v231 = *v160++;
                *v161++ = v231;
LABEL_306:
                *v161 = *v160;
                goto LABEL_307;
              }

LABEL_304:
              v230 = *v160++;
              *v161++ = v230;
              goto LABEL_305;
            }

            if (v225 > 5)
            {
              if (v225 != 6)
              {
                v226 = *v160++;
                *v161++ = v226;
              }

              v227 = *v160++;
              *v161++ = v227;
            }

            else if (v225 == 4)
            {
              goto LABEL_303;
            }

            v228 = *v160++;
            *v161++ = v228;
LABEL_303:
            v229 = *v160++;
            *v161++ = v229;
            goto LABEL_304;
          }

LABEL_237:
          v188 = *v160++;
          *v161++ = v188;
          goto LABEL_238;
        }

        if (v159 == 2)
        {
LABEL_236:
          v187 = *v160++;
          *v161++ = v187;
          goto LABEL_237;
        }

LABEL_235:
        v186 = *v160++;
        *v161++ = v186;
        goto LABEL_236;
      }

      if ((-v103 & 7u) > 5)
      {
        if (v159 != 6)
        {
          v160 = (v10 + 889);
          *v120 = *v103;
          v161 = v119 + 17;
        }

        v183 = *v160++;
        *v161++ = v183;
      }

      else if (v159 == 4)
      {
        goto LABEL_234;
      }

      v184 = *v160++;
      *v161++ = v184;
LABEL_234:
      v185 = *v160++;
      *v161++ = v185;
      goto LABEL_235;
    }
  }

LABEL_94:
  if ((*(v10 + 880) & 2) != 0)
  {
    atomic_store(0, (v10 + 884));
  }

  return result;
}

uint64_t sub_DEC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = *(a3 + v6);
  v10 = (a5 + v6);
  *v10 = *(a3 + v6 - 16);
  v10[1] = v9;
  return (*(v8 + 8 * (((a4 == 0) * a6) ^ v7)))(a1, a2, a3 - 32, a4 - 32, a5 - 32);
}

uint64_t sub_DED54()
{
  v7 = *(v1 + 4 * (v2 - 1));
  v8 = (((((v7 >> 30) | 0xF7630B38) ^ v7 ^ 0xB239E355) + 1304829099) ^ ((((v7 >> 30) | 0xF7630B38) ^ v7 ^ 0xA2F20EB3) + 1561194829) ^ ((((v7 >> 30) | 0xF7630B38) ^ v7 ^ 0xE7A8E6DE) + 408361250)) * LODWORD(STACK[0x928]) - 1834981648;
  v9 = (v8 ^ 0x2E4672C7) & (2 * (v8 & 0x8C577AE8)) ^ v8 & 0x8C577AE8;
  v10 = ((2 * (v8 ^ 0x3E48F347)) ^ 0x643F135E) & (v8 ^ 0x3E48F347) ^ (2 * (v8 ^ 0x3E48F347)) & 0xB21F89AE;
  v11 = v10 ^ 0x920088A1;
  v12 = (v10 ^ 0x201F0100) & (4 * v9) ^ v9;
  v13 = ((4 * v11) ^ 0xC87E26BC) & v11 ^ (4 * v11) & 0xB21F89AC;
  v14 = (v13 ^ 0x801E00A0) & (16 * v12) ^ v12;
  v15 = ((16 * (v13 ^ 0x32018903)) ^ 0x21F89AF0) & (v13 ^ 0x32018903) ^ (16 * (v13 ^ 0x32018903)) & 0xB21F89A0;
  v16 = v14 ^ 0xB21F89AF ^ (v15 ^ 0x20188800) & (v14 << 8);
  v17 = v8 ^ *(v1 + 4 * v2) ^ (2 * ((v16 << 16) & 0x321F0000 ^ v16 ^ ((v16 << 16) ^ 0x9AF0000) & (((v15 ^ 0x9207010F) << 8) & 0x321F0000 ^ 0x20160000 ^ (((v15 ^ 0x9207010F) << 8) ^ 0x1F890000) & (v15 ^ 0x9207010F))));
  *(v1 + 4 * v2) = v3 + *(STACK[0x940] + 4 * v3) - 967947911 + (((v17 ^ 0xAD043653) + 2093214052) ^ ((v17 ^ 0x38412D6D) - 377032098) ^ ((v17 ^ 0x7D337288) - 1393250887));
  v18 = v6 - 208;
  *(v18 + 40) = ((v4 - 1075776583) ^ 0x7C) - v5;
  *(v18 + 8) = v5 + v4 + 1596328632;
  *(v18 + 32) = v5 + 623;
  *(v18 + 16) = v2 + 1 - v5;
  *v18 = (v4 - 1075776588) ^ v5;
  *(v18 + 4) = v4 - 1075776583 - v5;
  *(v18 + 28) = -v5;
  v19 = (*(v0 + 8 * (v4 - 2038112765)))(v6 - 208);
  return (*(STACK[0x948] + 8 * *(v6 - 184)))(v19);
}

uint64_t sub_DF080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned int a23, unsigned int a24)
{
  v28 = ((&a22 & 0x3968666F | ~(&a22 | 0x3968666F)) ^ 0x21283D2C) * v26;
  a22 = v25;
  a23 = v28 ^ 0x7E746F71;
  a24 = (v27 + 178) ^ v28;
  v29 = (*(v24 + 8 * (v27 ^ 0x8F1)))(&a22, a2, a3, a4, a5, a6, a7, a8);
  return (*(v24 + 8 * (v27 + 118)))(v29);
}

uint64_t sub_DF130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v18 = v14 - 1;
  v19 = *(*v15 + ((((v11 + v18) & 0xFFFFFFF8) + a8) & *v16));
  v20 = (__ROR8__((v11 + v18) & 0xFFFFFFFFFFFFFFF8, 8) + v19) ^ a6;
  v21 = __ROR8__(v20, 8);
  v22 = v20 ^ __ROR8__(v19, 61);
  v23 = (v13 + 367) ^ (v8 + 552) ^ (v21 + v22);
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = __ROR8__((v25 + v24 - ((2 * (v25 + v24)) & 0xF41B8F2AF0F1DA98) - 0x5F2386A878712B4) ^ 0xFDEC34C6669A6C33, 8);
  v27 = (v25 + v24 - ((2 * (v25 + v24)) & 0xF41B8F2AF0F1DA98) - 0x5F2386A878712B4) ^ 0xFDEC34C6669A6C33 ^ __ROR8__(v24, 61);
  v28 = (v26 + v27) ^ v9;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v10;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (((v32 + v31) & 0xF769B04EF94BB1A5 ^ 0x27298008B9418181) + ((v32 + v31) & 0x8964FB106B44E5ALL ^ 0x804491104244203) - 1) ^ 0xA0AFA45161C88385;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((v35 + v34) & 0xD2863F8D93518C25 ^ 0x4206020580500400) + ((v35 + v34) & 0x2D79C0726CAE73DALL ^ 0xC40407200A063C3) - 1) ^ 0x70351D8A1073D761;
  *(v11 + v18) = (((__ROR8__(v36, 8) + (v36 ^ __ROR8__(v34, 61))) ^ a5) >> (8 * ((v11 + v18) & 7))) ^ *(v12 + v18);
  return (*(v17 + 8 * ((99 * (v18 == 0)) ^ v13)))();
}

uint64_t sub_DF330(uint64_t result)
{
  v1 = *(&off_18D8F0 + (byte_FF8E0[byte_184200[(-73 * ((dword_1902E8 - dword_190500) ^ 1))] ^ 0xFC] ^ (-73 * ((dword_1902E8 - dword_190500) ^ 1))) - 123);
  v2 = *(v1 - 480022859);
  v3 = *(&off_18D8F0 + ((-73 * ((dword_1902E8 - v2) ^ 1)) ^ byte_FF8E0[byte_184200[(-73 * ((dword_1902E8 - v2) ^ 1))] ^ 0xBC]) - 186);
  v4 = 1615229111 * (((*(v3 - 2105774026) ^ v2) - &v91) ^ 0xF087C62724309101);
  *(v1 - 480022859) = v4;
  *(v3 - 2105774026) = v4;
  if (!result)
  {
    return result;
  }

  v88 = (result - 16);
  v5 = v1;
  v6 = v3;
  v87 = (*(&off_18D8F0 + (byte_123310[byte_FF6E0[(-73 * (*(v1 - 480022859) ^ 1 ^ *(v3 - 2105774026)))] ^ 0x9B] ^ (-73 * (*(v1 - 480022859) ^ 1 ^ *(v3 - 2105774026)))) - 26) - 623296426);
  v7 = (*v87 ^ *(result - 16 + (*(result - 8) & 0xFFFFFFFFFFFFFFF8)));
  v89 = v7;
  v90 = *(&off_18D8F0 + ((-73 * ((dword_1902E8 - dword_190500) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((dword_1902E8 - dword_190500) ^ 1))] ^ 0xC]) + 40) - 939039246;
  if ((*(&stru_330.flags + v7) & 2) != 0 && atomic_exchange(v7 + 221, 1u))
  {
    v8 = 1;
    while (*(v7 + 221) || atomic_exchange(v7 + 221, 1u))
    {
      if ((v8 & 0x3F) == 0)
      {
        v9 = -73 * ((*(v6 - 2105774026) + *(v5 - 480022859)) ^ 1);
        result = (*&v90[8 * (byte_123510[byte_FF9E0[v9] ^ 0x46] ^ v9) + 22264])();
        v7 = v89;
      }

      ++v8;
    }
  }

  v10 = v88;
  v11 = v88[1];
  v12 = v11 & 0xFFFFFFFFFFFFFFF8;
  v13 = v88 + (v11 & 0xFFFFFFFFFFFFFFF8);
  if ((v11 & 1) == 0)
  {
    v14 = *v88;
    if ((v11 & 2) == 0)
    {
      v15 = v12 + v14 + 32;
      result = (*&v90[8 * ((-73 * ((*(v6 - 2105774026) + *(v5 - 480022859)) ^ 1)) ^ byte_FF8E0[byte_184200[(-73 * ((*(v6 - 2105774026) + *(v5 - 480022859)) ^ 1))] ^ 0xDA]) + 20616])(v88 - v14, v15);
      v7 = v89;
      if (!result)
      {
        v89[107] -= v15;
      }

      goto LABEL_150;
    }

    v10 = (v88 - v14);
    v12 += v14;
    if ((v88 - v14) != v7[4])
    {
      if (v14 <= 0xFF)
      {
        v16 = v10[2];
        v17 = v10[3];
        if (v17 == v16)
        {
          *v7 &= ~(1 << (v14 >> 3));
        }

        else
        {
          *(v16 + 24) = v17;
          *(v17 + 16) = v16;
        }

        goto LABEL_40;
      }

      v18 = v10[6];
      v19 = v10[3];
      if (v19 == v10)
      {
        v21 = v10 + 5;
        v22 = v10[5];
        if (v22 || (v21 = v10 + 4, (v22 = v10[4]) != 0))
        {
          do
          {
            do
            {
              v23 = v21;
              v19 = v22;
              v21 = v22 + 5;
              v22 = v22[5];
            }

            while (v22);
            v21 = v19 + 4;
            v22 = v19[4];
          }

          while (v22);
          *v23 = 0;
          if (!v18)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v19 = 0;
          if (!v18)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        v20 = v10[2];
        *(v20 + 24) = v19;
        v19[2] = v20;
        if (!v18)
        {
          goto LABEL_40;
        }
      }

      v24 = &v7[*(v10 + 14)];
      if (v10 == v24[75])
      {
        v24[75] = v19;
        if (!v19)
        {
          *(v7 + 1) &= ~(1 << *(v10 + 14));
          goto LABEL_40;
        }
      }

      else
      {
        v25 = 40;
        if (*(v18 + 32) == v10)
        {
          v25 = 32;
        }

        *(v18 + v25) = v19;
        if (!v19)
        {
          goto LABEL_40;
        }
      }

      v19[6] = v18;
      v26 = v10[4];
      if (v26)
      {
        v19[4] = v26;
        *(v26 + 48) = v19;
      }

      v27 = v10[5];
      if (v27)
      {
        v19[5] = v27;
        *(v27 + 48) = v19;
      }

      goto LABEL_40;
    }

    if ((~*(v13 + 2) & 3) == 0)
    {
      v7[1] = v12;
      *(v13 + 1) &= ~1uLL;
LABEL_66:
      v10[1] = v12 | 1;
      *(v10 + v12) = v12;
      goto LABEL_150;
    }
  }

LABEL_40:
  v28 = *(v13 + 1);
  if ((v28 & 2) != 0)
  {
    *(v13 + 1) = v28 & 0xFFFFFFFFFFFFFFFELL;
    v10[1] = v12 | 1;
    *(v10 + v12) = v12;
    v29 = v5;
    v30 = v6;
LABEL_47:
    v100 = v12;
    if (v12 > 0xFF)
    {
      v92 = 31;
      if (!(v12 >> 24))
      {
        v37 = (((v100 >> 8) + 1048320) >> 16) & 8;
        v38 = (v100 >> 8) << v37;
        v39 = (v38 << (((v38 + 520192) >> 16) & 4) << ((((v38 << (((v38 + 520192) >> 16) & 4)) + 245760) >> 16) & 2) >> 15) - (((v38 + 520192) >> 16) & 4 | v37 | (((v38 << (((v38 + 520192) >> 16) & 4)) + 245760) >> 16) & 2);
        v92 = ((v100 >> (v39 + 21)) & 1 | (2 * v39)) + 28;
      }

      v93 = v92;
      v40 = &v7[v92 + 75];
      *(v10 + 14) = v92;
      v94 = v40;
      v95 = v7 + 4;
      __asm { BRAA            X8, X17 }
    }

    v33 = v12 >> 3;
    v34 = &v7[2 * (v12 >> 3) + 9];
    v35 = 1 << v33;
    if ((v35 & *v7) != 0)
    {
      v36 = *(v34 + 16);
    }

    else
    {
      *v7 |= v35;
      v36 = v34;
    }

    *(v34 + 16) = v10;
    *(v36 + 24) = v10;
    v10[2] = v36;
    v10[3] = v34;
    goto LABEL_150;
  }

  v29 = v5;
  v30 = v6;
  if (v13 == v7[5])
  {
    v41 = v7 + 2;
    v42 = v7[2] + v12;
    v7[2] = v42;
    v7[5] = v10;
    v10[1] = v42 | 1;
    if (v10 == v7[4])
    {
      v7[4] = 0;
      v7[1] = 0;
    }

    if (v42 <= v7[6])
    {
      goto LABEL_150;
    }

    v43 = v7[5];
    if (!v43)
    {
      goto LABEL_150;
    }

    if (*v41 < 0x51uLL)
    {
      v44 = 0;
    }

    else
    {
      v44 = ((*v41 + v87[2] - 81) / v87[2] - 1) * v87[2];
      v45 = v7 + 111;
      v46 = v7 + 111;
      do
      {
        if (*v46 <= v43 && *v46 + v46[1] > v43)
        {
          break;
        }

        v46 = v46[2];
      }

      while (v46);
      if ((v46[3] & 9) == 1)
      {
        v47 = v46[1];
        v48 = v47 - v44;
        if (v47 >= v44)
        {
          v49 = *v46;
          v50 = *v46 + v47;
          while (v45 < v49 || v45 >= v50)
          {
            v45 = v45[2];
            if (!v45)
            {
              result = (*&v90[8 * ((-73 * ((*(v6 - 2105774026) - *(v29 - 480022859)) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((*(v6 - 2105774026) - *(v29 - 480022859)) ^ 1))] ^ 0xC5]) + 21736])(v49 + v48, ((*v41 + v87[2] - 81) / v87[2] - 1) * v87[2]);
              if (v44)
              {
                v7 = v89;
                if (result)
                {
                  v44 = 0;
                }

                else
                {
                  v46[1] -= v44;
                  v89[107] -= v44;
                  v61 = v89[5];
                  if (((v61 + 16) & 0xF) != 0)
                  {
                    v62 = -(v61 + 16) & 0xFLL;
                  }

                  else
                  {
                    v62 = 0;
                  }

                  v63 = v61 + v62;
                  v64 = v89[2] - v44 - v62;
                  v89[5] = v63;
                  v89[2] = v64;
                  *(v63 + 8) = v64 | 1;
                  *(v63 + v64 + 8) = 80;
                  v89[6] = v87[4];
                }
              }

              else
              {
                v7 = v89;
              }

              goto LABEL_108;
            }
          }
        }
      }

      v44 = 0;
    }

LABEL_108:
    v103 = v41;
    v102 = 1;
    v101 = v44;
    v65 = v7[113];
    if (!v65 || (*(v65 + 24) & 9) != 1 || ((result = *v65, v66 = *(v65 + 8), v67 = *(v65 + 16), v68 = *v65 + 16, (v68 & 0xF) != 0) ? (v69 = -v68 & 0xFLL) : (v69 = 0), (v104 = result + v69, v70 = *(result + v69 + 8), v105 = v70 & 0xFFFFFFFFFFFFFFF8, (v70 & 3) != 1) || v104 + v105 < result + v66 - 80))
    {
      v66 = 0;
LABEL_136:
      v7[7] = 4095;
      v82 = v102 == 1 && v101 == -v66;
      if (v82 && *v103 > v7[6])
      {
        v7[6] = -1;
      }

      goto LABEL_150;
    }

    if (v104 == v7[4])
    {
      v7[4] = 0;
      v7[1] = 0;
    }

    else
    {
      v71 = *(v104 + 48);
      v72 = *(v104 + 24);
      if (v72 == v104)
      {
        v74 = (v104 + 40);
        v75 = *(v104 + 40);
        if (v75 || (v72 = 0, v74 = (v104 + 32), (v75 = *(v104 + 32)) != 0))
        {
          do
          {
            do
            {
              v76 = v74;
              v72 = v75;
              v74 = v75 + 5;
              v75 = v75[5];
            }

            while (v75);
            v74 = v72 + 4;
            v75 = v72[4];
          }

          while (v75);
          *v76 = 0;
        }
      }

      else
      {
        v73 = *(v104 + 16);
        *(v73 + 24) = v72;
        v72[2] = v73;
      }

      if (!v71)
      {
        goto LABEL_144;
      }

      v77 = v104;
      v78 = &v7[*(v104 + 56)];
      if (v104 != v78[75])
      {
        v79 = 40;
        if (*(v71 + 32) == v104)
        {
          v79 = 32;
        }

        *(v71 + v79) = v72;
        if (!v72)
        {
          goto LABEL_144;
        }

        goto LABEL_131;
      }

      v78[75] = v72;
      if (v72)
      {
LABEL_131:
        v72[6] = v71;
        v80 = *(v104 + 32);
        if (v80)
        {
          v72[4] = v80;
          *(v80 + 48) = v72;
        }

        v81 = *(v104 + 40);
        if (v81)
        {
          v72[5] = v81;
          *(v81 + 48) = v72;
        }

        goto LABEL_144;
      }

      *(v7 + 1) &= ~(1 << *(v77 + 56));
    }

LABEL_144:
    result = (*&v90[8 * ((-73 * ((*(v6 - 2105774026) - *(v29 - 480022859)) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((*(v6 - 2105774026) - *(v29 - 480022859)) ^ 1))] ^ 0xC5]) + 21736])();
    if (result)
    {
      v96 = 0;
      if (v70 >= 0x100)
      {
        v96 = 31;
        if (!(v70 >> 24))
        {
          v83 = (((v70 >> 8) + 1048320) >> 16) & 8;
          v84 = (v70 >> 8) << v83;
          v85 = (v84 << (((v84 + 520192) >> 16) & 4) << ((((v84 << (((v84 + 520192) >> 16) & 4)) + 245760) >> 16) & 2) >> 15) - (((v84 + 520192) >> 16) & 4 | v83 | (((v84 << (((v84 + 520192) >> 16) & 4)) + 245760) >> 16) & 2);
          v96 = ((v105 >> (v85 + 21)) & 1 | (2 * v85)) + 28;
        }
      }

      v97 = v96;
      v86 = &v89[v96 + 75];
      *(v104 + 56) = v96;
      v98 = v86;
      v99 = v89 + 4;
      __asm { BRAA            X8, X17 }
    }

    v7 = v89;
    v89[107] -= v66;
    v89[113] = v67;
    goto LABEL_136;
  }

  if (v13 == v7[4])
  {
    v12 += v7[1];
    v7[1] = v12;
    v7[4] = v10;
    goto LABEL_66;
  }

  v12 += v28 & 0xFFFFFFFFFFFFFFF8;
  if (v28 <= 0xFF)
  {
    v32 = *(v13 + 2);
    v31 = *(v13 + 3);
    if (v31 == v32)
    {
      *v7 &= ~(1 << (v28 >> 3));
    }

    else
    {
      *(v32 + 24) = v31;
      *(v31 + 16) = v32;
    }

    goto LABEL_94;
  }

  v51 = *(v13 + 6);
  v52 = *(v13 + 3);
  if (v52 == v13)
  {
    v54 = v13 + 40;
    v55 = *(v13 + 5);
    if (v55 || (v54 = v13 + 32, (v55 = *(v13 + 4)) != 0))
    {
      do
      {
        do
        {
          v56 = v54;
          v52 = v55;
          v54 = v55 + 5;
          v55 = v55[5];
        }

        while (v55);
        v54 = v52 + 32;
        v55 = *(v52 + 4);
      }

      while (v55);
      *v56 = 0;
      if (!v51)
      {
        goto LABEL_94;
      }
    }

    else
    {
      v52 = 0;
      if (!v51)
      {
        goto LABEL_94;
      }
    }
  }

  else
  {
    v53 = *(v13 + 2);
    *(v53 + 24) = v52;
    *(v52 + 2) = v53;
    if (!v51)
    {
      goto LABEL_94;
    }
  }

  v57 = &v7[*(v13 + 14)];
  if (v13 == v57[75])
  {
    v57[75] = v52;
    if (!v52)
    {
      *(v7 + 1) &= ~(1 << *(v13 + 14));
      goto LABEL_94;
    }

    goto LABEL_89;
  }

  v58 = 40;
  if (*(v51 + 32) == v13)
  {
    v58 = 32;
  }

  *(v51 + v58) = v52;
  if (v52)
  {
LABEL_89:
    *(v52 + 6) = v51;
    v59 = *(v13 + 4);
    if (v59)
    {
      *(v52 + 4) = v59;
      *(v59 + 48) = v52;
    }

    v60 = *(v13 + 5);
    if (v60)
    {
      *(v52 + 5) = v60;
      *(v60 + 48) = v52;
    }
  }

LABEL_94:
  v10[1] = v12 | 1;
  *(v10 + v12) = v12;
  if (v10 != v7[4])
  {
    goto LABEL_47;
  }

  v7[1] = v12;
LABEL_150:
  if ((v7[110] & 2) != 0)
  {
    atomic_store(0, v7 + 221);
  }

  return result;
}

uint64_t sub_E0234@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + 4 * v2 + 764);
  v6 = (a1 + 4 * v2 + 748);
  *v6 = *(v1 + 4 * v2 + 748);
  v6[1] = v5;
  v7 = v2 + ((v4 + 1092187205) & 0xBEE687B9) != 88;
  return (*(v3 + 8 * (((4 * v7) | (16 * v7)) ^ v4)))();
}

uint64_t sub_E0290@<X0>(uint64_t a1@<X4>, int a2@<W5>, unsigned int a3@<W8>)
{
  v7 = 2 * (a3 >> v4);
  *(a1 + ((v3 + 1583) ^ 0xFFFFF74D) + a2) = (a3 >> v4) - 61 - (v7 & 0x87);
  v8 = a2 != ((v7 & v5) != ((a3 >> v4) - 61));
  return (*(v6 + 8 * (((4 * v8) | (16 * v8)) ^ v3)))();
}

uint64_t sub_E02EC@<X0>(int a1@<W3>, uint64_t a2@<X8>)
{
  v5 = *(a2 + 40);
  *(v3 + 104) = a2 + 40;
  return (*(v4 + 8 * (((v5 == 0) * (a1 + v2 - 261 + ((v2 - 33817912) & 0x7B7F2CEF) - 983)) ^ v2)))();
}

uint64_t sub_E0340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, int a23, unsigned int a24)
{
  a24 = v25 - 531 - 434465113 * ((((&a22 | 0x33350FA) ^ 0xFFFFFFFE) - (~&a22 | 0xFCCCAF05)) ^ 0x96E855A);
  a22 = &a12;
  (*(v24 + 8 * (v25 + 1413)))(&a22, a2, a3, a4, a5, a6, a7, a8);
  a22 = &a12;
  a24 = v25 - 531 - 434465113 * ((((&a22 | 0x86394BEE) ^ 0xFFFFFFFE) - (~&a22 | 0x79C6B411)) ^ 0x8C649E4E);
  (*(v24 + 8 * (v25 + 1413)))(&a22);
  a22 = &a12;
  a24 = v25 - 531 - 434465113 * (((&a22 | 0x542D326D) - &a22 + (&a22 & 0xABD2CD90)) ^ 0xA18F1832);
  (*(v24 + 8 * (v25 + 1413)))(&a22);
  a24 = v25 - 531 - 434465113 * ((((&a22 | 0xAD469CCA) ^ 0xFFFFFFFE) - (~&a22 | 0x52B96335)) ^ 0xA71B496A);
  a22 = &a12;
  v26 = (*(v24 + 8 * (v25 ^ 0xFFD)))(&a22);
  return (*(v24 + 8 * v25))(v26);
}

void *sub_E0554(void *result)
{
  v1 = *(&off_18D8F0 + ((-73 * ((dword_1902E8 + dword_190508) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((dword_1902E8 + dword_190508) ^ 1))] ^ 0xC3]) + 3);
  v2 = *(v1 - 970397290);
  v3 = *(&off_18D8F0 + (byte_184300[byte_158820[(-73 * ((dword_1902E8 - v2) ^ 1))] ^ 0xC] ^ (-73 * ((dword_1902E8 - v2) ^ 1))) - 70);
  v4 = v2 - &v11 + *(v3 - 2105774026);
  *(v1 - 970397290) = 1615229111 * (v4 + 0xF7839D8DBCF6EFFLL);
  *(v3 - 2105774026) = 1615229111 * (v4 ^ 0xF087C62724309101);
  if (result)
  {
    v5 = *(&off_18D8F0 + ((-73 * ((dword_1902E8 - dword_190508) ^ 1)) ^ byte_123310[byte_FF6E0[(-73 * ((dword_1902E8 - dword_190508) ^ 1))] ^ 0x9B]) - 30) - 939039246;
    v6 = result;
    (*&v5[8 * (byte_123510[(byte_FF9E0[(-73 * ((*(v3 - 2105774026) - *(v1 - 970397290)) ^ 1)) + 256] ^ 0x98) + 256] ^ (-73 * ((*(v3 - 2105774026) - *(v1 - 970397290)) ^ 1))) + 20112])(*result);
    (*&v5[8 * (byte_FF8E0[byte_184200[(-73 * ((*(v3 - 2105774026) + *(v1 - 970397290)) ^ 1))] ^ 0xFC] ^ (-73 * ((*(v3 - 2105774026) + *(v1 - 970397290)) ^ 1))) + 20104])(v6[2]);
    v7 = -73 * ((*(v3 - 2105774026) + *(v1 - 970397290)) ^ 1);
    (*&v5[8 * (byte_123510[byte_FF9E0[v7] ^ 0x46] ^ v7) + 21416])(v6[4]);
    (*&v5[8 * ((-73 * ((*(v3 - 2105774026) - *(v1 - 970397290)) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((*(v3 - 2105774026) - *(v1 - 970397290)) ^ 1))] ^ 0xC]) + 20856])(v6[6]);
    (*&v5[8 * ((-73 * ((*(v3 - 2105774026) - *(v1 - 970397290)) ^ 1)) ^ byte_123510[byte_FF9E0[(-73 * ((*(v3 - 2105774026) - *(v1 - 970397290)) ^ 1))] ^ 0x46]) + 21416])(v6[8]);
    (*&v5[8 * ((-73 * ((*(v3 - 2105774026) + *(v1 - 970397290)) ^ 1)) ^ byte_184300[~byte_158820[(-73 * ((*(v3 - 2105774026) + *(v1 - 970397290)) ^ 1))]]) + 21224])(v6[10]);
    v8 = -73 * ((*(v3 - 2105774026) - *(v1 - 970397290)) ^ 1);
    (*&v5[8 * (byte_123310[byte_FF6E0[v8] ^ 0x9B] ^ v8) + 20296])(v6[12]);
    (*&v5[8 * ((-73 * ((*(v3 - 2105774026) + *(v1 - 970397290)) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((*(v3 - 2105774026) + *(v1 - 970397290)) ^ 1))] ^ 0xC3]) + 20672])(v6[14]);
    (*&v5[8 * ((-73 * (*(v1 - 970397290) ^ 1 ^ *(v3 - 2105774026))) ^ byte_FF8E0[byte_184200[(-73 * (*(v1 - 970397290) ^ 1 ^ *(v3 - 2105774026)))] ^ 0xDA]) + 19920])(v6[16]);
    (*&v5[8 * ((-73 * (*(v1 - 970397290) ^ 1 ^ *(v3 - 2105774026))) ^ byte_184300[byte_158820[(-73 * (*(v1 - 970397290) ^ 1 ^ *(v3 - 2105774026)))] ^ 0x65]) + 21408])(v6[18]);
    v9 = -73 * ((*(v3 - 2105774026) + *(v1 - 970397290)) ^ 1);
    (*&v5[8 * (byte_123410[byte_FF7E0[v9] ^ 0xEA] ^ v9) + 21232])(v6[20]);
    (*&v5[8 * ((-73 * ((*(v3 - 2105774026) - *(v1 - 970397290)) ^ 1)) ^ byte_123510[(byte_FF9E0[(-73 * ((*(v3 - 2105774026) - *(v1 - 970397290)) ^ 1)) + 256] ^ 0x98) + 256]) + 20112])(v6[22]);
    (*&v5[8 * ((-73 * ((*(v3 - 2105774026) + *(v1 - 970397290)) ^ 1)) ^ byte_FF8E0[byte_184200[(-73 * ((*(v3 - 2105774026) + *(v1 - 970397290)) ^ 1))] ^ 0x35]) + 19552])(v6[24]);
    (*&v5[8 * ((-73 * ((*(v3 - 2105774026) + *(v1 - 970397290)) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((*(v3 - 2105774026) + *(v1 - 970397290)) ^ 1))] ^ 0xC3]) + 20672])(v6[26]);
    (*&v5[8 * ((-73 * ((*(v3 - 2105774026) + *(v1 - 970397290)) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((*(v3 - 2105774026) + *(v1 - 970397290)) ^ 1))] ^ 0xC]) + 20856])(v6[28]);
    (*&v5[8 * ((-73 * ((*(v3 - 2105774026) - *(v1 - 970397290)) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((*(v3 - 2105774026) - *(v1 - 970397290)) ^ 1))] ^ 0xC3]) + 20672])(v6[30]);
    v10 = *&v5[8 * ((-73 * ((*(v3 - 2105774026) - *(v1 - 970397290)) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((*(v3 - 2105774026) - *(v1 - 970397290)) ^ 1))] ^ 0x52]) + 19736];

    return v10(v6);
  }

  return result;
}

void *sub_E0D44(void *result, unsigned __int8 *a2, int a3, char a4)
{
  v5 = *(&off_18D8F0 + ((-73 * ((dword_1902E8 - dword_190038) ^ 1)) ^ byte_123510[byte_FF9E0[(-73 * ((dword_1902E8 - dword_190038) ^ 1))] ^ 0x46]) + 29);
  v6 = *(v5 - 1427251319);
  v7 = *(&off_18D8F0 + (byte_FF8E0[byte_184200[(-73 * ((dword_1902E8 + v6) ^ 1))] ^ 0x35] ^ (-73 * ((dword_1902E8 + v6) ^ 1))) - 233);
  v8 = (*(v7 - 2105774026) ^ v6) - &v14;
  *(v5 - 1427251319) = (1615229111 * v8) ^ 0xF087C62724309101;
  *(v7 - 2105774026) = 1615229111 * (v8 ^ 0xF087C62724309101);
  if (a3)
  {
    v10 = a3;
    v11 = result;
    do
    {
      v12 = *a2++;
      v13 = -73 * ((*(v7 - 2105774026) - *(v5 - 1427251319)) ^ 1);
      result = (*(*(&off_18D8F0 + ((-73 * ((dword_1902E8 - dword_190038) ^ 1)) ^ byte_123410[byte_FF7E0[(-73 * ((dword_1902E8 - dword_190038) ^ 1))] ^ 0xEA]) + 87) + 8 * (byte_123310[byte_FF6E0[v13] ^ 0x9B] ^ v13) - 939018174))(*(*v11 + 16 * (a4 & 0xF)), 0, *(*v11 + 16 * (a4 & 0xF) + 8), v12);
      ++a4;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_E0F9C(uint64_t result, unsigned int a2, int a3, char a4)
{
  v4 = *(&off_18D8F0 + ((-73 * ((dword_1902E8 + dword_190020) ^ 1)) ^ byte_123510[byte_FF9E0[(-73 * ((dword_1902E8 + dword_190020) ^ 1))] ^ 0x46]) + 34);
  v5 = *(v4 - 495701882);
  v6 = *(&off_18D8F0 + (byte_184300[byte_158820[(-73 * ((dword_1902E8 - v5) ^ 1))] ^ 0x52] ^ (-73 * ((dword_1902E8 - v5) ^ 1))) - 210);
  v7 = &v17[v5 + 4 + *(v6 - 2105774026)];
  *(v4 - 495701882) = 1615229111 * v7 + 0xF7839D8DBCF6EFFLL;
  *(v6 - 2105774026) = 1615229111 * (v7 ^ 0xF087C62724309101);
  if (a3)
  {
    v8 = v17 ^ a2;
    v9 = v8 ^ a4;
    v10 = v8 + a4;
    if ((a4 & 1) == 0)
    {
      v9 = v10;
    }

    if (*(result + a2) == 1)
    {
      v16 = v9;
    }

    else if (*(result + a2))
    {
      v16 = 0;
    }

    else
    {
      v16 = v9;
    }

    v15 = 2 * a2;
    v11 = (a3 - 1);
    v12 = *(&off_18D8F0 + ((-73 * ((dword_1902E8 + dword_190020) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((dword_1902E8 + dword_190020) ^ 1))] ^ 0xC]) + 40) - 939039246;
    v13 = result;
    (*&v12[8 * ((-73 * ((*(v6 - 2105774026) + *(v4 - 495701882)) ^ 1)) ^ byte_184300[~byte_158820[(-73 * ((*(v6 - 2105774026) + *(v4 - 495701882)) ^ 1))]]) + 22000])();
    v14 = -73 * ((*(v6 - 2105774026) - *(v4 - 495701882)) ^ 1);
    return (*&v12[8 * (byte_123510[byte_FF9E0[v14] ^ 0x46] ^ v14) + 22192])(v13, v15 + 2, v11, v16);
  }

  else
  {
    *(result + a2) = a4;
  }

  return result;
}

uint64_t sub_E1294@<X0>(int a1@<W0>, int a2@<W4>, void *a3@<X6>, int a4@<W8>)
{
  v8 = *v4;
  v9 = (((((3 * (a1 ^ 0x4CB)) ^ 0x204806u) + 1645 * a4) % 0xA88) ^ 0xBFFFAEEB5D17DFF1) + STACK[0x520] + ((2 * ((((3 * (a1 ^ 0x4CB)) ^ 0x204806u) + 1645 * a4) % 0xA88)) & 0x1FE2);
  v10 = *STACK[0x538];
  v11 = *(v10 + (v8 & v6));
  v12 = *a3 ^ 0xF1E76555;
  v13 = v6 + 2;
  LODWORD(v9) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v9 - 1561845745 + v11 + v6) & v12)) ^ *(v9 + 0x352024724B3176A3) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v9 - 1561845745 + v11 + v6 + 2) & v12)) ^ (110 * (v9 + 15));
  LODWORD(v9) = (((v9 ^ 0xE067D6D3) - 340892608) ^ ((v9 ^ 0x2BAF8FE4) + 543571209) ^ ((v9 ^ 0xCBC85971) - 1073615970)) * v7 - 1592213454;
  v14 = STACK[0x518] + 4 * (v9 - ((((v9 >> 3) * v5) >> 32) >> 7) * a2);
  v15 = *(v10 + (v8 & STACK[0x540]));
  LODWORD(v8) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v14 + v15 + LODWORD(STACK[0x52C])) & v12)) ^ *(v14 - 0x40E8C283FA03C307) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v14 + v15 + 1527793161) & v12));
  LODWORD(v10) = v8 ^ (1912024365 * v14);
  v16 = ((v8 ^ (16198957 * v14)) >> 16);
  LODWORD(v14) = 1645 * ((((v8 ^ (45 * v14)) ^ 0xDF2BF891) + 37201325) ^ (((v8 ^ (45 * v14)) ^ 0xB9C347A0) + 1692342942) ^ (((v8 ^ (45 * v14)) ^ 0x66E8BF1B) - 1141579225)) + 821137086;
  v17 = 1645 * (v16 ^ 0xE7) + 3391990 - 2696 * (((12744711 * (1645 * (v16 ^ 0xE7u) + 3391990)) >> 32) >> 3);
  v18 = 1645 * (((v10 >> 7) & 0x1C ^ 0x14) + (BYTE1(v10) ^ 0x865));
  v19 = 1645 * (((BYTE3(v10) ^ 0xFABC79A6) + 1144452411) ^ ((BYTE3(v10) ^ 0xAEB5BAAD) + 272578098) ^ ((BYTE3(v10) ^ 0x5409C321) - 360493122)) - 1612083701;
  v20 = (v17 ^ 0xBEEFFFCFDA7FEFB1) + STACK[0x520] + ((2 * v17) & 0x1F62);
  LODWORD(v10) = v20 + 629149775;
  v21 = v18 - 2696 * (((12744711 * v18) >> 32) >> 3);
  v22 = ((v14 % 0xA88) ^ 0xBF7EFAB7BFBEFB8BLL) + STACK[0x520] + ((2 * (v14 % 0xA88)) & 0x1716);
  v23 = ((v19 % 0xA88) ^ 0xECDDFBFBBFBF7FB6) + STACK[0x520] + ((2 * (v19 % 0xA88)) & 0x1F6C);
  v24 = *(v22 + 0x35A0D8A5E88A5B09);
  v25 = (v21 ^ 0x7F7DEBDBF5DFFEFFLL) + STACK[0x520] + ((2 * v21) & 0x1DFE);
  v26 = v22 + 1078002805;
  LODWORD(v20) = ((*(v20 + 0x362FD38DCDC966E3) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v10 + v11 + 1186175272) & v12)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v10 + v11 + v13) & v12)) ^ (110 * v10) ^ 0x46) << 8) | ((*(v23 + 0x841D761E889D6DELL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v23 + 1077968970 + v11 + 1186175272) & v12)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v23 + 1077968970 + v11 + v13) & v12)) ^ (110 * (v23 + 74)) ^ 0x46) << 16);
  LODWORD(v22) = (v20 ^ 0xFDFDFF) & (*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v25 + 169869569 + v11 + 1186175272) & v12)) ^ *(v25 + 0x75A1E781B2695795) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v25 + 169869569 + v11 + v13) & v12)) ^ (110 * (v25 + 1)) ^ 0x153C18) | v20 & 0xEAC300;
  v27 = STACK[0x518] + 4 * (a4 * v7 + 710790 - (((((a4 * v7 + 710790) >> 3) * v5) >> 32) >> 7) * a2);
  *(v27 - 0x40E8C283FA03C307) = (1912024365 * v27) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v15 + v27 + LODWORD(STACK[0x52C])) & v12)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v15 + v27 + 1527793161) & v12)) ^ 0xDD1B355D ^ (((v22 << 8) ^ 0xFFC001FF) & (*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v26 + v11 + 1186175272) & v12)) ^ v24 ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v26 + v11 + v13) & v12)) ^ (110 * v26) ^ 0xE2F41231) | (v22 << 8) & 0x1D0BED00);
  return (*(STACK[0x548] + 8 * ((30 * (a4 == 255)) ^ a1)))();
}

uint64_t sub_E18B0@<X0>(int a1@<W8>)
{
  v3 = *(v1 + 240);
  memset(v3, 110, 16);
  return (*(v2 + 8 * ((((((a1 ^ 0x29) - 18) ^ (*(*(v1 + 848) + 16) > v3)) & 1) * ((151 * (a1 ^ 0x829)) ^ 0x2F1)) | a1)))();
}

uint64_t sub_E1908(uint64_t result, _BYTE *a2, int a3, char a4)
{
  v6 = *(&off_18D8F0 + ((-73 * ((dword_1902E8 + dword_190300) ^ 1)) ^ byte_123410[byte_FF7E0[(-73 * ((dword_1902E8 + dword_190300) ^ 1))] ^ 0xEA]) - 20);
  v7 = *(v6 - 258354175);
  v8 = *(&off_18D8F0 + (byte_184300[byte_158820[(-73 * (v7 ^ dword_1902E8 ^ 1))] ^ 0x3B] ^ (-73 * (v7 ^ dword_1902E8 ^ 1))) - 117);
  v9 = *(v8 - 2105774026) - v7 - &v15;
  *(v6 - 258354175) = 1615229111 * (v9 + 0xF7839D8DBCF6EFFLL);
  *(v8 - 2105774026) = 1615229111 * (v9 ^ 0xF087C62724309101);
  if (a3)
  {
    v10 = a3;
    v11 = result;
    do
    {
      v12 = v11 + 16 * (a4 & 0xF);
      v13 = *v12;
      v14 = *(v12 + 8);
      LOBYTE(v12) = -73 * (*(v6 - 258354175) ^ 1 ^ *(v8 - 2105774026));
      result = (*(*(&off_18D8F0 + ((-73 * (dword_190300 ^ 1 ^ dword_1902E8)) ^ byte_184300[byte_158820[(-73 * (dword_190300 ^ 1 ^ dword_1902E8))] ^ 0x3B]) - 7) + 8 * (byte_FF8E0[byte_184200[v12] ^ 0xFC] ^ v12) - 939019198))(v13, 0, v14);
      *a2++ = result;
      ++a4;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_E1B58(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(&off_18D8F0 + ((-73 * ((dword_1902E8 - dword_190130) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((dword_1902E8 - dword_190130) ^ 1))] ^ 0xC]) + 28);
  v4 = *(v3 - 1886267706);
  v5 = *(&off_18D8F0 + (byte_123410[byte_FF7E0[(-73 * ((dword_1902E8 - v4) ^ 1))] ^ 0xEA] ^ (-73 * ((dword_1902E8 - v4) ^ 1))) - 23);
  v6 = &v16[v4 + *(v5 - 2105774026)];
  *(v3 - 1886267706) = 1615229111 * (v6 + 0xF7839D8DBCF6EFFLL);
  *(v5 - 2105774026) = 1615229111 * (v6 ^ 0xF087C62724309101);
  if (a3)
  {
    v15 = 2 * a2;
    v7 = (a3 - 1);
    v8 = *(&off_18D8F0 + ((-73 * ((dword_1902E8 - dword_190130) ^ 1)) ^ byte_123510[byte_FF9E0[(-73 * ((dword_1902E8 - dword_190130) ^ 1))] ^ 0x46]) + 110) - 939039246;
    v14 = (*&v8[8 * (byte_184300[byte_158820[(-73 * ((*(v5 - 2105774026) + *(v3 - 1886267706)) ^ 1))] ^ 0x52] ^ (-73 * ((*(v5 - 2105774026) + *(v3 - 1886267706)) ^ 1))) + 19680])(a1, (2 * a2) | 1, v7);
    v11 = (*&v8[8 * ((-73 * ((*(v5 - 2105774026) - *(v3 - 1886267706)) ^ 1)) ^ byte_184300[~byte_158820[(-73 * ((*(v5 - 2105774026) - *(v3 - 1886267706)) ^ 1))]]) + 21168])(a1, v15 + 2, v7);
    if (*(a1 + a2) == 1)
    {
      return (v11 + v14);
    }

    else if (!*(a1 + a2))
    {
      return (v11 ^ v14);
    }
  }

  else
  {
    return *(a1 + a2);
  }

  return v12;
}

uint64_t sub_E1E00(uint64_t *a1)
{
  v7 = a1;
  v8 = *(&off_18D8F0 + ((-73 * (dword_190010 ^ 1 ^ dword_1902E8)) ^ byte_184300[byte_158820[(-73 * (dword_190010 ^ 1 ^ dword_1902E8))] ^ 0xC3]) - 94);
  v9 = *(v8 - 574096995);
  v10 = *(&off_18D8F0 + (byte_184300[byte_158820[(-73 * (v9 ^ dword_1902E8 ^ 1))] ^ 0x65] ^ (-73 * (v9 ^ dword_1902E8 ^ 1))) - 1);
  v11 = &v23[1] + *(v10 - 2105774026) - v9;
  *(v8 - 574096995) = 1615229111 * v11 - 0xF7839D8DBCF6EFFLL;
  *(v10 - 2105774026) = 1615229111 * (v11 ^ 0xF087C62724309101);
  v12 = *(&off_18D8F0 + ((-73 * ((dword_1902E8 + dword_190010) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((dword_1902E8 + dword_190010) ^ 1))] ^ 0xC3]) + 17);
  v23[0] = *(v12 - 939017342) ^ a1;
  v13 = v12 - 939039246;
  v14 = (*(v12 - 939039246 + 8 * ((byte_123310[byte_FF6E0[(-73 * ((*(v10 - 2105774026) + *(v8 - 574096995)) ^ 1))] ^ 0x9B] ^ (-73 * ((*(v10 - 2105774026) + *(v8 - 574096995)) ^ 1))) + 2529)))(256);
  v15 = v14;
  if (v14)
  {
    v16 = 0;
    v22 = v7;
    *v7 = v14;
    v17 = v14 + 2;
    for (i = 1; ; ++i)
    {
      v1 = v17 + v16 + v23[0] * v23;
      v23[0] = v1;
      v19 = (v15 + v16);
      *(v15 + v16 + 8) = v1 & 3;
      v2 = (v17 + v16) & 3;
      v3 = (*(v13 + 8 * (((-73 * ((*(v10 - 2105774026) + *(v8 - 574096995)) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((*(v10 - 2105774026) + *(v8 - 574096995)) ^ 1))] ^ 0xC6]) + 2575)))(~(-2 << ((v15 + 2 + v16) & 3)));
      if (!v3)
      {
        break;
      }

      if (v2)
      {
        *v3 = ((v1 * v1) ^ 1) & 1;
        if (v2 != 1)
        {
          v4 = (((v1 * v1) ^ 1) * ((v1 * v1) ^ 1)) ^ 1;
          v3[1] = v4 & 1;
          v5 = (v4 * v4) ^ 1;
          v3[2] = v5 & 1;
          if (v2 != 2)
          {
            v6 = (v5 & 1) == 0;
            v3[3] = v6;
            v3[4] = !v6;
            v3[5] = v6;
            v3[6] = !v6;
          }
        }
      }

      *(v15 + v16) = v3;
      v16 += 16;
      if (v16 == 256)
      {
        return 0;
      }
    }

    *v19 = 0;
    v7 = v22;
    do
    {
      if (*v19)
      {
        (*(v13 + 8 * (((-73 * ((*(v10 - 2105774026) + *(v8 - 574096995)) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((*(v10 - 2105774026) + *(v8 - 574096995)) ^ 1))] ^ 0x52]) + 2467)))();
      }

      v19 -= 2;
    }

    while (i-- > 1);
  }

  (*(v13 + 8 * (((-73 * ((*(v10 - 2105774026) - *(v8 - 574096995)) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((*(v10 - 2105774026) - *(v8 - 574096995)) ^ 1))] ^ 0xC5]) + 2630)))(v15);
  *v7 = 0;
  return 0xFFFFFFFFLL;
}

uint64_t sub_E20F8(uint64_t result)
{
  v1 = *(&off_18D8F0 + ((-73 * ((dword_1902E8 - dword_190528) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((dword_1902E8 - dword_190528) ^ 1))] ^ 0xC3]) - 31);
  v2 = *(v1 - 432985790);
  v3 = *(&off_18D8F0 + (byte_FF8E0[byte_184200[(-73 * ((dword_1902E8 - v2) ^ 1))] ^ 0x35] ^ (-73 * ((dword_1902E8 - v2) ^ 1))) - 233);
  v4 = (*(v3 - 2105774026) + v2) ^ &v6;
  *(v1 - 432985790) = (1615229111 * v4) ^ 0xF087C62724309101;
  *(v3 - 2105774026) = 1615229111 * (v4 ^ 0xF087C62724309101);
  if (result)
  {
    v5 = 1615229111 * ((*(v3 - 2105774026) - *(v1 - 432985790)) ^ 0x24309101);
    return (*(*(&off_18D8F0 + ((-73 * ((dword_1902E8 + dword_190528) ^ 1)) ^ byte_123410[byte_FF7E0[(-73 * ((dword_1902E8 + dword_190528) ^ 1))] ^ 0xEA]) + 87) + 8 * (byte_184300[byte_158820[v5] ^ 0xC6] ^ v5) - 939018582))();
  }

  return result;
}

uint64_t sub_E22B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11)
{
  v14 = v11 | 0x460;
  a10 = (v11 | 0x460) - 1879456961 * ((&a9 + 1145992841 - 2 * (&a9 & 0x444E7689)) ^ 0x178428EE) - 18;
  a11 = v12;
  (*(v13 + 8 * ((v11 | 0x460) ^ 0xEB3)))(&a9, a2, a3, a4, a5, a6, a7, a8);
  *(v12 + 24) = a9;
  return (*(v13 + 8 * v14))(a1);
}

uint64_t sub_E233C@<X0>(_BYTE *a1@<X0>, int a2@<W8>)
{
  LODWORD(STACK[0x28C]) = v6;
  LODWORD(STACK[0x928]) = *(v2 + 248);
  v11 = *(v2 + 240);
  v12 = *(v10 + 8 * a2);
  STACK[0x910] = v12;
  v7[57] = v12;
  v13 = STACK[0x978];
  v14 = &STACK[0x1190] + STACK[0x978];
  v15 = v14 + 10704;
  v16 = v14 + 10960;
  v17 = v14 + 11216;
  STACK[0x940] = v14;
  v18 = v14 + 11472;
  v13 += 21520;
  STACK[0x908] = v13;
  STACK[0x978] = v13;
  v7[108] = v8;
  v19 = v9 ^ v4;
  v20 = *(v10 + 8 * (v9 ^ v4));
  STACK[0x930] = v5;
  v7[122] = v5;
  v21 = v9 + v3;
  v20(*(&off_18D8F0 + v9 + v3 - 2739) - 858481771, v14 + 16, 10684);
  (*(STACK[0x948] + 8 * v19))(*(&off_18D8F0 + v21 - 2651) - 354590675, v15, 256);
  (*(STACK[0x948] + 8 * v19))(*(&off_18D8F0 + (v9 ^ 0x91546F45)) - 23168830, v16, 256);
  (*(STACK[0x948] + 8 * v21))(*(&off_18D8F0 + (v9 ^ 0x91546F43)) - 1570524886, v17, 256);
  v22 = (*(STACK[0x948] + 8 * v21))(*(&off_18D8F0 + (v9 ^ 0x91546F47)) - 1254782066, v18, 256);
  v23 = STACK[0x910];
  v24 = STACK[0x28C];
  v25 = STACK[0x948];
  if (v11 && (v26 = (v9 + 2125216096) | 0x1001128, LODWORD(STACK[0x928]) != v26 - 285260218) && v8 && (v24 & 0xF) == 0 && v24 != ((v26 + 1795093243) & 0xFD7B7FEF) - 2038115493 && a1 && STACK[0x930])
  {
    v27 = STACK[0x940];
    STACK[0x738] = STACK[0x940] + 12000;
    STACK[0x930] = (v27 + 16768);
    *v27 = *a1;
    v27[1] = a1[1];
    v27[2] = a1[2];
    v27[3] = a1[3];
    v27[4] = a1[4];
    v27[5] = a1[5];
    v27[6] = a1[6];
    v27[7] = a1[7];
    v27[8] = a1[8];
    v27[9] = a1[9];
    v27[10] = a1[10];
    v27[11] = a1[11];
    v27[12] = a1[12];
    v27[13] = a1[13];
    v27[14] = a1[14];
    v27[15] = a1[15];
    return (*(v25 + 8 * (((v26 + 1795093243) & 0xFD7B7FEF) - 2038113930)))(v27 + 17040, v27 + 18080, v27 + 14400, v27 + 19136, v27 + 20208, v27 + 21248, 2038115493);
  }

  else
  {
    STACK[0x978] = STACK[0x908] - 21520;
    return v23(v22);
  }
}

uint64_t sub_E26C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12)
{
  *(*(v14 + 8) + v13 + 24) = (*(v12 + 8 * (v15 ^ 0xCB1)))(44, a2, a3, a4, a5, a6, a7, a8);
  a11 = *(*(v14 + 8) + v13 + 24);
  a12 = (v15 - 1209825562) ^ (1883321437 * ((((2 * &a11) | 0x7505AA5A) - &a11 + 1165830867) ^ 0x5D3D7191));
  v16 = (*(v12 + 8 * (v15 + 1047)))(&a11);
  return (*(v12 + 8 * (((*(*(v14 + 8) + v13 + 24) == 0) * (v15 - 1741)) ^ v15)))(v16);
}

uint64_t sub_E2788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x890]) = v7 << 24;
  v8 = HIBYTE(v4);
  v9 = STACK[0x400];
  v10 = (LODWORD(STACK[0x400]) - 829) | 0xA4;
  v11 = STACK[0x6E8] & v6;
  LODWORD(STACK[0x65C]) = STACK[0x768] & 0x49494949;
  LODWORD(STACK[0x610]) = (v5 >> 24) ^ 0xC7;
  v12 = *(STACK[0x948] + 8 * v9);
  STACK[0x710] = v8;
  return v12((v10 - 562), a2, v11, a4, (v10 - 562) ^ (v5 >> 16));
}

uint64_t sub_E2B7C@<X0>(int a1@<W6>, int a2@<W8>)
{
  v4 = a2 + 871;
  v5 = (*(v3 + 8 * (v2 ^ (a1 - 1644))))();
  return (*(STACK[0x948] + 8 * v4))(v5);
}

void *sub_E2BB4(void *result, char *a2, int a3, uint64_t a4)
{
  if (a3)
  {
    v4 = *result | 1;
    v5 = *result + v4 * a4;
    do
    {
      v6 = *a2++;
      *(*result + (v5 & 0xF)) = v6;
      v5 += v4;
      --a3;
    }

    while (a3);
  }

  return result;
}

uint64_t sub_E2BE8@<X0>(int a1@<W0>, int a2@<W3>, int a3@<W6>, uint64_t a4@<X8>)
{
  v7[64] = *(v8 + 8 * v4);
  v7[219] = a4;
  v7[220] = v6;
  v9 = *(v8 + 8 * (((a4 != 0) * (a2 + v5 + a3 + v5 - 1616 - 1401)) ^ v5));
  LODWORD(STACK[0x8F0]) = a1 + 1;
  return v9();
}

double sub_E2C30(unint64_t a1, double *a2, unsigned int a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a1 | 1;
    v5 = a1 + a4 * (a1 | 1);
    if (a3 < 8 || a1 > 1 || a3 - 1 > 0xF || (~(a4 + a1) & 0xFu) < ((a3 - 1) & 0xFu) || a2 - a1 - ((a4 + a1) & 0xF) < 0x20)
    {
      goto LABEL_3;
    }

    if (a3 >= 0x20)
    {
      v8 = (a1 + (v5 & 0xF));
      for (i = a2 + 2; ; i += 4)
      {
        v10 = v8[1];
        *(i - 1) = *v8;
        *i = v10;
      }
    }

    v6 = a3 & 0x18;
    result = *(a1 + (v5 & 0xF));
    *a2 = result;
    if (v6 != 8)
    {
      result = *(a1 + (v5 & 0xF ^ 8));
      a2[1] = result;
    }

    if (v6 != a3)
    {
      v5 += v6 * v4;
      a2 = (a2 + v6);
      a3 -= v6;
      do
      {
LABEL_3:
        *a2 = *(a1 + (v5 & 0xF));
        a2 = (a2 + 1);
        v5 += v4;
        --a3;
      }

      while (a3);
    }
  }

  return result;
}

uint64_t sub_E2D08()
{
  v3 = (*(v2 + 8 * (v0 ^ 0x2BE)))(v1);
  v4 = STACK[0x948];
  *(STACK[0x8C0] + 128) = v3;
  return (*(v4 + 8 * ((493 * (((v3 == 0) ^ (v0 - 12)) & 1)) ^ v0)))();
}

uint64_t sub_E2DC0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  LODWORD(STACK[0x324]) = v47;
  LODWORD(STACK[0x7A0]) = 0;
  LODWORD(STACK[0x7D0]) = 0;
  v51 = STACK[0x678] | (v45 >> 8);
  v52 = STACK[0x660] | (v41 >> 8);
  v53 = STACK[0x868];
  v54 = v51 ^ __ROR4__(*(STACK[0x868] + 4 * BYTE1(v43)), 16) ^ *(STACK[0x868] + ((v43 >> 22) & 0x3FC));
  LODWORD(STACK[0x548]) = v44;
  v55 = (v44 + 1434) | 0x49u;
  STACK[0x7B8] = v55;
  v56 = *(v53 + 4 * v48);
  v57 = __PAIR64__(v56, __ROR4__(*(v53 + 4 * ((v55 ^ 0x636) & v43)), 24));
  LODWORD(STACK[0x358]) = v54 ^ v57;
  LODWORD(v57) = v56;
  v58 = (v57 >> 24) ^ __ROR4__(*(v53 + 4 * BYTE1(v48)), 16) ^ *(v53 + 4 * HIBYTE(v48));
  if (v56 << 8)
  {
    v59 = ~(LODWORD(STACK[0x858]) ^ v58);
  }

  else
  {
    v59 = STACK[0x858];
  }

  v60 = v58 + LODWORD(STACK[0x858]) - 2 * (v59 & v58);
  v61 = (STACK[0x5B8] ^ ~(STACK[0x5B8] + 1) ^ (STACK[0x5B0] + (STACK[0x5B0] ^ STACK[0x5B8]) + 1)) + STACK[0x5B0];
  v62 = (((v61 ^ STACK[0x5B0]) * (((-2 - STACK[0x5B8]) & STACK[0x5B8]) >> 31)) ^ v61 | ~STACK[0x5B8]) & LODWORD(STACK[0x5A8]) ^ STACK[0x5B0];
  v63 = v62 ^ (v62 >> 8) ^ LODWORD(STACK[0x600]);
  v64 = *(v53 + 4 * HIBYTE(v63));
  v65 = *(v53 + 4 * BYTE2(v63));
  LODWORD(STACK[0x4B0]) = v60 ^ (a2 << 24);
  v66 = v64 ^ __ROR4__(v65, 8);
  v67 = *(v53 + 4 * STACK[0x670]);
  v68 = 1377 * ((HIBYTE(v67) + 110) ^ 0xDC) + 4834647;
  v69 = STACK[0x900];
  v70 = *(STACK[0x900] + v68 - 4864 * (((7064091 * v68) >> 32) >> 3));
  HIDWORD(v72) = v70 ^ 0x16;
  LODWORD(v72) = (v70 ^ 0x60) << 24;
  v71 = v72 >> 29;
  v73 = v66 ^ __ROR4__(*(v53 + 4 * v63), 24);
  v74 = *(v53 + ((STACK[0x670] >> 22) & 0x3FC)) ^ __ROR4__(*(v53 + 4 * BYTE2(STACK[0x670])), 8) ^ __ROR4__(*(v53 + 4 * BYTE1(STACK[0x670])), 16);
  v75 = STACK[0x598];
  v76 = *(v53 + 4 * LODWORD(STACK[0x598]));
  LODWORD(STACK[0x758]) = *(v53 + ((a5 >> 22) & 0x3FC)) ^ v52 ^ __ROR4__(*(v53 + 4 * BYTE1(a5)), 16) ^ __ROR4__(*(v53 + 4 * ((*(STACK[0x900] + 1377 * (LODWORD(STACK[0x758]) ^ 0x60) + 5554818 - 4864 * (((7064091 * (1377 * (LODWORD(STACK[0x758]) ^ 0x60u) + 5554818)) >> 32) >> 3)) ^ 0xE2) - 110)), 24);
  v77 = HIBYTE(v76);
  v78 = HIBYTE(v76) - 241;
  if (HIBYTE(v76) < 0xF1u)
  {
    v78 = HIBYTE(v76);
  }

  if (v77 <= 0xF0)
  {
    v79 = 0;
  }

  else
  {
    v79 = 241;
  }

  if (!v78)
  {
    v77 = v79;
  }

  v80 = v77 | (v76 << 8);
  v81 = *(v53 + 4 * LODWORD(STACK[0x570])) ^ __ROR4__(*(v53 + 4 * LODWORD(STACK[0x578])), 24) ^ __ROR4__(*(v53 + 4 * STACK[0x560]), 16);
  v82 = *(v53 + 4 * BYTE1(v63));
  LODWORD(STACK[0x818]) = v73 ^ WORD1(v82) ^ (v82 << ((BYTE2(v82) & 0x10 ^ 0x10) + (BYTE2(v82) & 0x10u)));
  LODWORD(STACK[0x800]) = v74 ^ (v71 ^ 0x68 | (v67 << 8));
  v83 = *(v53 + 4 * BYTE2(STACK[0x550]));
  STACK[0x670] = v81 ^ __ROR4__(v83, 8);
  v84 = *(STACK[0x910] + 4 * (1079 * ((v83 << 24) % 0x101u) + 1111370 - 2120 * ((2025928 * (1079 * ((v83 << 24) % 0x101u) + 1111370)) >> 32)));
  LODWORD(STACK[0x860]) = ((2039570243 * (((v84 ^ 0xC62CD557) + 970140329) ^ ((v84 ^ 0x4FC54B4D) - 1338329933) ^ ((v84 ^ 0x58DBFFA0) - 1490812832)) - 1228039762) ^ 0xCA2272A0) + ((2039570243 * (((v84 ^ 0xDB645CBC) + 614179652) ^ ((v84 ^ 0x3EE18CAA) - 1054969002) ^ ((v84 ^ 0x34B7B1AC) - 884453804)) - 1228039762) ^ 0x35DD8D5F);
  v85 = LODWORD(STACK[0x5A0]) ^ 0x9B32977F;
  LODWORD(v82) = 1377 * ((59 * BYTE1(v85)) ^ 0x66) + 6292890;
  LODWORD(v82) = *(v69 + v82 - 4864 * (((7064091 * v82) >> 32) >> 3));
  HIDWORD(v86) = v82 ^ 6;
  LODWORD(v86) = (v82 ^ 0x70) << 24;
  v87 = ((59 * BYTE1(v85)) ^ 0x63) - ((59 * BYTE1(v85)) ^ 0xB1);
  LODWORD(v82) = ((((v86 >> 27) ^ 0x8A) >> 5) | (8 * ((v86 >> 27) ^ 0xFFFFFF8A))) ^ 0xFFFFFF8D;
  HIDWORD(v86) = *(v53 + 4 * (v87 + (v82 ^ -v82 ^ (v87 - (v82 ^ v87))) + 48));
  LODWORD(v86) = HIDWORD(v86);
  v88 = *(v53 + ((v85 >> 22) & 0x3FC));
  v89 = (v86 >> 16) ^ __ROR4__(*(v53 + 4 * (LOBYTE(STACK[0x5A0]) ^ 0x7Fu)), 24);
  v90 = v88 & 0x8000000;
  if ((v88 & 0x8000000 & v89) != 0)
  {
    v90 = -v90;
  }

  LODWORD(STACK[0x600]) = v88 & 0xF7FFFFFF ^ __ROR4__(*(v53 + 4 * BYTE2(v85)), 8) ^ (v90 + v89);
  v91 = 1377 * ((BYTE1(v75) + 110) ^ 0xDC) + 4834647;
  v92 = *(v69 + v91 - 4864 * (((7064091 * v91) >> 32) >> 3));
  HIDWORD(v93) = v92 ^ 0x16;
  LODWORD(v93) = (v92 ^ 0x60) << 24;
  STACK[0x7E0] = v80 ^ __ROR4__(*(v53 + 4 * BYTE2(v75)), 8) ^ __ROR4__(*(v53 + 4 * ((v93 >> 29) ^ 0x68u)), 16) ^ *(v53 + 4 * ((*(v69 + 1377 * (HIBYTE(v75) ^ 0x60) + 5554818 - 4864 * (((7064091 * (1377 * (HIBYTE(v75) ^ 0x60) + 5554818)) >> 32) >> 3)) ^ 0xE2) - 110));
  LODWORD(STACK[0x730]) = STACK[0x7B0] ^ v50 ^ v46;
  v94 = STACK[0x6B0];
  STACK[0x7A8] = (STACK[0x6B0] & 0x18 ^ 0x18) + (STACK[0x6B0] & 0x18);
  LODWORD(STACK[0x540]) = v49;
  v95 = (HIBYTE(v49) ^ 0xFFFFFFFB) + (*(v69 + 1377 * (HIBYTE(v49) ^ 0xC2) + 980424 - 4864 * (((1766023 * (1377 * (HIBYTE(v49) ^ 0xC2) + 980424)) >> 32) >> 1)) ^ 0x76);
  v96 = v42 ^ STACK[0x668];
  v97 = v42 ^ STACK[0x668];
  STACK[0x768] = v96;
  LODWORD(v93) = __ROR4__(*(v53 + 4 * BYTE1(v96)), 14) ^ 0xC1D5D52E;
  HIDWORD(v93) = v93;
  v98 = v93 >> 2;
  v99 = 1377 * ((59 * LODWORD(STACK[0x590])) ^ 0x1F) + 3110643;
  LODWORD(v93) = __ROR4__(*(v53 + 4 * BYTE2(v97)), 8);
  v100 = *(STACK[0x648] + v99 - 4864 * (((7064091 * v99) >> 32) >> 3)) ^ 0xFFFFFFED;
  LODWORD(STACK[0x6B8]) = (v100 >> 4) & 3 ^ v100 & 0xB | v100 & 0xF4;
  v101 = 59 * STACK[0x808];
  v102 = (59 * STACK[0x808]) ^ 0x63;
  v103 = (5 - ((59 * STACK[0x808]) ^ 0x66)) ^ v102;
  LOBYTE(v103) = ((v103 >> 6) | (4 * v103)) ^ ((-((59 * STACK[0x808]) ^ 0x63) >> 6) - 4 * ((59 * STACK[0x808]) ^ 0x63));
  v104 = v98 ^ v93 ^ 0xB075754B;
  LODWORD(STACK[0x6CC]) = v104;
  v105 = STACK[0x5D8];
  v106 = 1377 * ((LODWORD(STACK[0x5D8]) >> (v104 & 0x18) >> (v104 & 0x18 ^ 0x18)) ^ 0xEB) + 3822552;
  LOBYTE(v106) = *(v69 + v106 - 4864 * (((7064091 * v106) >> 32) >> 3));
  v107 = ((v103 ^ 0x6Eu) >> 2) | ((v103 ^ 0x6E) << 6);
  LOBYTE(v103) = ((v106 ^ 0x29) - 41) ^ ((v106 ^ 0x89) + 119) ^ ((v106 ^ 0xD6) + 42);
  LOBYTE(v106) = ((v106 - 64) ^ v106 ^ ((v106 ^ 0x36) - 54)) - 60;
  v108 = (-38 - 9 * v103) ^ ((((9 * v106) ^ 0x20) + 39 * v106) | 0xC0);
  v109 = STACK[0x628];
  v110 = 1377 * (STACK[0x628] ^ 0x60) + 5554818;
  v111 = *(v53 + 4 * ((*(v69 + v110 - 4864 * (((7064091 * v110) >> 32) >> 3)) ^ 0xE2) - 110));
  v112 = (59 * HIBYTE(v111));
  v114 = *(v53 + 4 * BYTE1(LODWORD(STACK[0x5D8])));
  v115 = STACK[0x620];
  v116 = *(v53 + 4 * BYTE1(STACK[0x620]));
  LODWORD(STACK[0x660]) = v116;
  v117 = *(v53 + 4 * v105);
  v118 = HIWORD(v114) & 0x1000;
  v119 = (v117 << 8) | (v117 >> ((BYTE2(v116) & 0x18 ^ 0x18) + (BYTE2(v116) & 0x18u)));
  if (((v117 << 8) & v118) != 0)
  {
    v121 = -v118;
  }

  else
  {
    v121 = HIWORD(v114) & 0x1000;
  }

  HIDWORD(v122) = v114;
  LODWORD(v122) = v114;
  v123 = (v122 >> 30) & 0xBFFFFFFF ^ __ROR4__(v119 + v121, 14);
  v124 = STACK[0x6E0];
  v125 = *(v53 + 4 * BYTE2(STACK[0x6E0]));
  v126 = __PAIR64__(v125, __ROR4__(v123 ^ 0x7F7D72C2, 18));
  LODWORD(STACK[0x678]) = *(v53 + 4 * ((v108 ^ 0x1F) - 110)) ^ __ROR4__(*(v53 + 4 * BYTE2(v105)), 8) ^ v126;
  LODWORD(v126) = v125;
  v127 = v126 >> 8;
  HIDWORD(v126) = *(v53 + 4 * v124);
  LODWORD(v126) = HIDWORD(v126);
  v128 = (((v126 >> 24) | v127) & 0x86030BD1 ^ v127 & (v126 >> 24) & 0x86030BD1 | ((v126 >> 24) ^ v127) & 0x79FCF42E) ^ __ROR4__(*(v53 + 4 * BYTE1(v124)), 16);
  v113 = (~(118 * HIBYTE(v111)) & 0x188) + (v112 ^ 0x118);
  v120 = 1377 * v113 - 4864 * (((1766023 * (1377 * v113)) >> 32) >> 1);
  v129 = ((((((((v112 ^ 0x50) - 3) ^ v112 ^ 0x50) + (~(2 * (((v112 ^ 0x50) - 3) ^ v112 ^ 0x50)) | 0x13) + 119) ^ *(v69 + v120)) + 2 * ((((v112 ^ 0x50) - 3) ^ v112 ^ 0x50) & (*(v69 + v120) ^ 0x76))) ^ 0x7C) + 48) | (v111 << 8);
  v130 = 1377 * ((v107 ^ 0x9B) + 5) + 6292890;
  v131 = (v102 - (v101 ^ 0xB1) - ((2 * (v102 - (v101 ^ 0xB1))) & 0xFFFFFFEC) + 118) ^ 0xD9 ^ *(v69 + v130 - 4864 * (((7064091 * v130) >> 32) >> 3));
  v132 = STACK[0x618];
  v133 = (59 * BYTE1(STACK[0x618]));
  v134 = LODWORD(STACK[0x690]);
  v135 = *(v53 + ((v109 >> 22) & 0x3FC)) ^ __ROR4__(*(v53 + 4 * BYTE1(v109)), 16) ^ __ROR4__(*(v53 + 4 * BYTE2(v109)), 8);
  HIDWORD(v126) = *(v53 + 4 * BYTE2(v94));
  LODWORD(v126) = HIDWORD(v126);
  v136 = (v126 >> 8) ^ __ROR4__(*(v53 + 4 * v94), 24);
  v137 = *(v53 + 4 * STACK[0x738]);
  HIDWORD(v126) = *(v53 + 4 * BYTE2(v115));
  LODWORD(v126) = HIDWORD(v126);
  v138 = (v126 >> 8) ^ __ROR4__(*(v53 + 4 * v115), 24);
  v139 = 1079 * (BYTE2(v137) - ((65281 * HIWORD(v137)) >> 24));
  HIDWORD(v126) = *(v53 + 4 * STACK[0x618]);
  LODWORD(v126) = HIDWORD(v126);
  v140 = STACK[0x910];
  v141 = *(STACK[0x910] + 4 * (v139 + 1668134 - 2120 * ((2025928 * (v139 + 1668134)) >> 32)));
  v142 = (v126 >> 24) ^ __ROR4__(*(v53 + 4 * ((((*(v69 + 1377 * (v133 ^ 0xDC) + 622404 - 4864 * (((1766023 * (1377 * (v133 ^ 0xDCu) + 622404)) >> 32) >> 1)) ^ 0x76) + (((v133 ^ 0x50) - 3) ^ v133 ^ 0x50)) ^ 0x7C) + 48)), 16) ^ __ROR4__(*(v53 + 4 * BYTE2(STACK[0x618])), 8);
  v143 = *(v53 + 4 * STACK[0x5E8]);
  v144 = ((v95 + 1) ^ 0xBA) - 110;
  v145 = v143 >> 8;
  v146 = ((v143 << (v144 & 0x18) << (v144 & 0x18 ^ 0x18)) | (v143 >> 8)) ^ __ROR4__(*(v53 + 4 * STACK[0x5E0]), 24);
  v147 = ((v141 ^ 0x9B) + 101) ^ ((v141 ^ 0x39) - 57) ^ ((v141 ^ 0x18) - 24);
  v148 = ((v141 ^ 0x7F) - 127) ^ ((v141 ^ 0x11) - 17) ^ ((v141 ^ 0xD4) + 44);
  v149 = (*(v69 + 1377 * (BYTE1(v134) ^ 0xC2) + 980424 - 4864 * (((1766023 * (1377 * (BYTE1(v134) ^ 0xC2u) + 980424)) >> 32) >> 1)) ^ 0x76) - ((v134 >> 8) ^ 4);
  STACK[0x858] = v128 ^ *(v53 + ((v124 >> 22) & 0x3FC));
  HIDWORD(v126) = *(v53 + 4 * BYTE1(v94));
  LODWORD(v126) = HIDWORD(v126);
  LODWORD(STACK[0x4F8]) = v135 ^ v129;
  LODWORD(STACK[0x6B0]) = *(v53 + ((v94 >> 22) & 0x3FC)) ^ (((v126 >> 16) ^ -(v126 >> 16) ^ (v136 - ((v126 >> 16) ^ v136))) + v136);
  HIDWORD(v126) = *(v53 + 4 * BYTE2(STACK[0x808]));
  LODWORD(v126) = HIDWORD(v126);
  v150 = *(v53 + 4 * BYTE1(STACK[0x808]));
  LODWORD(STACK[0x3D0]) = v150;
  v151 = (v126 >> 8) ^ __ROR4__(v150, 16) ^ *(v53 + 4 * ((LODWORD(STACK[0x6B8]) ^ 0xF6) + 48));
  HIDWORD(v126) = STACK[0x660];
  LODWORD(v126) = STACK[0x660];
  v152 = v138 ^ -v138;
  LODWORD(STACK[0x500]) = ((v152 ^ ((v126 >> 16) - (v138 ^ (v126 >> 16)))) + (v126 >> 16)) ^ *(v53 + ((v115 >> 22) & 0x3FC));
  STACK[0x4C0] = v142 ^ *(v53 + ((v132 >> 22) & 0x3FC));
  v153 = v146 ^ *(v53 + 4 * STACK[0x610]);
  STACK[0x560] = (*(v53 + ((STACK[0x688] >> 22) & 0x3FC)) ^ __ROR4__(*(v53 + 4 * STACK[0x638]), 24)) ^ __ROR4__(*(v53 + 4 * BYTE1(STACK[0x688])), 16) ^ __ROR4__(*(v53 + 4 * BYTE2(STACK[0x688])), 8);
  STACK[0x738] = v151 ^ __ROR4__(*(v53 + 4 * (v131 + 48)), 24);
  LODWORD(STACK[0x620]) = v153 ^ __ROR4__(*(v53 + 4 * BYTE1(STACK[0x7B0])), 16);
  v154 = *(v53 + 4 * BYTE1(STACK[0x5C8]));
  v155 = v154 << (((~(2 * v145) + v145) & 0x10) + (v145 & 0x10));
  v156 = WORD1(v154) ^ __ROR4__(*(v53 + 4 * STACK[0x5C8]), 24) ^ *(v53 + 4 * (STACK[0x5C8] >> STACK[0x7A8]));
  LODWORD(v154) = *(v53 + 4 * STACK[0x768]);
  v157 = *(v53 + ((STACK[0x768] >> 22) & 0x3FC));
  STACK[0x5A0] = v156 ^ __ROR4__(*(v53 + 4 * BYTE2(STACK[0x5C8])), 8) ^ v155;
  HIDWORD(v126) = v154;
  LODWORD(v126) = v154;
  v158 = v126 >> 24;
  v159 = (v126 >> 24) & 0x10000000;
  if ((v159 & STACK[0x6CC]) != 0)
  {
    LODWORD(v159) = -v159;
  }

  v160 = *(v53 + 4 * v144);
  STACK[0x5E8] = v158 & 0xEFFFFFFF ^ v157 ^ (v159 + LODWORD(STACK[0x6CC]));
  LODWORD(STACK[0x488]) = v160 ^ STACK[0x8F8] ^ __ROR4__(*(v53 + 4 * LODWORD(STACK[0x540])), 24) ^ __ROR4__(*(v53 + 4 * BYTE1(LODWORD(STACK[0x540]))), 16);
  HIDWORD(v161) = *(v53 + 4 * STACK[0x708]);
  LODWORD(v161) = HIDWORD(v161);
  v162 = STACK[0x700];
  v163 = 1377 * ((((-21 * v147 - 66) ^ 0x2D ^ ((-42 * v148 + 124) | 0x4E)) + BYTE3(STACK[0x700])) ^ 0x32) + 3470040;
  LOBYTE(v163) = ((67 * (*(v140 + 4 * (v139 + 1111370 - 2120 * ((2025928 * (v139 + 1111370)) >> 32))) ^ 0xBA)) ^ 0x5F) + (*(v69 + v163 - 4864 * (((7064091 * v163) >> 32) >> 3)) ^ (((-21 * v147 - 66) ^ 0x2D ^ ((-42 * v148 + 124) | 0x4E)) + BYTE3(STACK[0x700]) - ((2 * (((-21 * v147 - 66) ^ 0x2D ^ ((-42 * v148 + 124) | 0x4E)) + BYTE3(STACK[0x700]))) & 0xEC) + 118) ^ 0x49);
  STACK[0x688] = (v161 >> 8) ^ __ROR4__(v137, 16) ^ *(v53 + 4 * STACK[0x788]);
  LODWORD(STACK[0x788]) = *(v53 + 4 * (v163 + 103)) ^ __ROR4__(*(v53 + 4 * v162), 24);
  v164 = STACK[0x880];
  STACK[0x4A0] = (LODWORD(STACK[0x65C]) ^ LODWORD(STACK[0x880]));
  LODWORD(STACK[0x7A8]) = LODWORD(STACK[0x3A0]) + LODWORD(STACK[0x860]) + 1;
  LODWORD(STACK[0x720]) ^= v164;
  LODWORD(STACK[0x708]) = LODWORD(STACK[0x710]) ^ v164;
  v165 = STACK[0x790];
  STACK[0x6E0] = *(v53 + ((STACK[0x790] >> 22) & 0x3FC));
  LODWORD(STACK[0x480]) = LODWORD(STACK[0x678]) ^ 0x5CB09FDF;
  STACK[0x710] = (v149 ^ 0xFFFFFFBA) - 110;
  STACK[0x860] = v162 >> 16;
  v166 = *(v53 + 4 * BYTE2(v134));
  LODWORD(STACK[0x308]) = v166 >> 8;
  STACK[0x5F8] = v165;
  STACK[0x700] = BYTE2(v165);
  v167 = *(STACK[0x948] + 8 * SLODWORD(STACK[0x548]));
  LODWORD(STACK[0x538]) = ~(v166 << 24);
  return v167(v134, v140, v131, v115, v152, v69, v139, v128, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41);
}

uint64_t sub_E3E40()
{
  v6 = STACK[0x910];
  *(STACK[0x910] + v0) = *(v2 + (v0 + v4));
  v7 = *(v5 + 8 * ((7 * (v0 + 1 == v3)) ^ v1));
  STACK[0x930] = v6;
  return v7();
}

uint64_t sub_E3E78(uint64_t *a1)
{
  v2 = *(&off_18D8F0 + ((-73 * ((dword_1902E8 - dword_190018) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((dword_1902E8 - dword_190018) ^ 1))] ^ 0xC]) + 1);
  v3 = *(v2 - 1333177179);
  v4 = *(&off_18D8F0 + (byte_184300[byte_158820[(-73 * ((dword_1902E8 + v3) ^ 1))] ^ 0xC6] ^ (-73 * ((dword_1902E8 + v3) ^ 1))) - 94);
  v5 = v3 ^ &v11 ^ *(v4 - 2105774026);
  v6 = 1615229111 * v5 - 0xF7839D8DBCF6EFFLL;
  v7 = 1615229111 * (v5 ^ 0xF087C62724309101);
  *(v2 - 1333177179) = v6;
  *(v4 - 2105774026) = v7;
  LOBYTE(v4) = -73 * ((v7 + *(v2 - 1333177179)) ^ 1);
  v8 = (*(*(&off_18D8F0 + ((-73 * ((dword_1902E8 - dword_190018) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((dword_1902E8 - dword_190018) ^ 1))] ^ 0xC3]) + 17) + 8 * (byte_123310[byte_FF6E0[v4] ^ 0x7C] ^ v4) - 939018822))(16);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *a1 = v9;
  return result;
}

void *sub_E403C(void *result)
{
  v1 = *(&off_18D8F0 + ((-73 * (dword_190140 ^ 1 ^ dword_1902E8)) ^ byte_184300[byte_158820[(-73 * (dword_190140 ^ 1 ^ dword_1902E8))] ^ 0x65]) + 4);
  v2 = *(v1 - 1174224591);
  v3 = *(&off_18D8F0 + (byte_184300[byte_158820[(-73 * ((dword_1902E8 - v2) ^ 1))] ^ 0x65] ^ (-73 * ((dword_1902E8 - v2) ^ 1))) - 1);
  v4 = v2 ^ &v7 ^ *(v3 - 2105774026);
  *(v1 - 1174224591) = 1615229111 * (v4 + 0xF7839D8DBCF6EFFLL);
  *(v3 - 2105774026) = 1615229111 * (v4 ^ 0xF087C62724309101);
  if (result)
  {
    do
    {
      v5 = *result;
      v6 = -73 * ((*(v3 - 2105774026) - *(v1 - 1174224591)) ^ 1);
      (*(*(&off_18D8F0 + ((-73 * (dword_190140 ^ 1 ^ dword_1902E8)) ^ byte_184300[byte_158820[(-73 * (dword_190140 ^ 1 ^ dword_1902E8))] ^ 0x3B]) - 7) + 8 * (byte_123310[byte_FF6E0[v6] ^ 0x9B] ^ v6) - 939018950))();
      result = v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_E4248(int a1)
{
  LODWORD(STACK[0x820]) = a1;
  v4 = (*(v3 + 8 * (v2 + 1432)))(v1);
  v5 = STACK[0x948];
  *(STACK[0x8C0] + 72) = v4;
  return (*(v5 + 8 * (((((v4 == 0) ^ (v2 + 18)) & 1) * ((v2 ^ 0x60C) - 600)) ^ v2)))();
}

uint64_t sub_E42E4(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 8 * (v3 + 110)))(a1);
  v5 = STACK[0x948];
  *(v2 + 488) = 0;
  return (*(v5 + 8 * v3))(v4);
}

uint64_t *sub_E431C(uint64_t *result, char *a2, int a3, uint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2;
    v5 = result;
    do
    {
      v5 = *v5;
      v6 = v5[1];
      if (v6)
      {
        v7 = v6 == a4;
      }

      else
      {
        v7 = 1;
      }
    }

    while (!v7);
    if (!v6)
    {
      v5[1] = a4;
    }

    *(v5 + 16) = v4;
    ++a2;
    ++a4;
  }

  return result;
}

uint64_t *sub_E4360(uint64_t *result, _BYTE *a2, int a3, uint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = result[1];
    if (v4)
    {
      v5 = v4 == a4;
    }

    else
    {
      v5 = 1;
    }

    v6 = result;
    if (!v5)
    {
      v6 = result;
      do
      {
        v6 = *v6;
        v7 = v6[1];
        if (v7)
        {
          v8 = v7 == a4;
        }

        else
        {
          v8 = 1;
        }
      }

      while (!v8);
    }

    *a2++ = *(v6 + 16);
    ++a4;
  }

  return result;
}

uint64_t sub_E43AC@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v51 = *(v48 + 272);
  v52 = *(v51 + 508);
  v53 = *(v51 + 496);
  v54 = *STACK[0x990];
  *a1 = 1;
  *(a1 + 24) = v54;
  *(a1 + 28) = v52;
  *(a1 + 8) = v45;
  *(a1 + 16) = v53;
  *(a1 + 128) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 52) = 65021204;
  *(a1 + 56) = 0;
  v55 = *(*(v48 + 32) + 112);
  v56 = 381473641 * (((((v49 - 208) | 0x75F87E30) ^ 0xFFFFFFFE) - (~(v49 - 208) | 0x8A0781CF)) ^ 0x94E3A61D);
  *v47 = *(*(v48 + 272) + 424);
  *(v47 + 24) = v56 + (v55 ^ 0x7FEBEFFF) + ((((v46 + 1053199110) & 0xBD59595F ^ 0xFFD7D7C1) + v46 - 65020817) & (2 * v55)) - 201443297;
  *(v47 + 8) = -65021204 - v56 + v46 + 950;
  *(v47 + 16) = a45;
  v57 = (*(v50 + 8 * (v46 ^ 0x3E02E16)))(v49 - 208);
  return (*(STACK[0x948] + 8 * (v46 ^ 0x3E02DAD ^ ((((*(v47 + 12) - v46) | (v46 - *(v47 + 12))) >> 31) | (2 * (((*(v47 + 12) - v46) | (v46 - *(v47 + 12))) >> 31))))))(v57);
}

uint64_t sub_E4504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v22 - 128) = &a19;
  *(v22 - 116) = 853792023 - 1600728529 * ((2 * ((v22 - 128) & 0x4142EC88) - (v22 - 128) - 1094904970) ^ 0x3B88D937) + v21 + 2347;
  v23 = (*(v20 + 8 * (v21 ^ 0xBE9)))(v22 - 128, a2, a3, a4, a5, a6, a7, a8);
  v24 = *(v22 - 120);
  *(v19 + 421) = (((v21 + 70) & 0xDD) - 16) ^ *(v22 - 120) ^ 0xDD;
  return (*(v20 + 8 * ((26 * (v24 != 232)) | v21)))(v23);
}

uint64_t sub_E45C8(uint64_t *a1)
{
  v1 = *(&off_18D8F0 + ((-73 * ((dword_1902E8 + dword_190510) ^ 1)) ^ byte_123310[byte_FF6E0[(-73 * ((dword_1902E8 + dword_190510) ^ 1))] ^ 0x9B]) - 125);
  v2 = *(v1 - 1458609363);
  v3 = *(&off_18D8F0 + (byte_184300[byte_158820[(-73 * (v2 ^ dword_1902E8 ^ 1))] ^ 0xC3] ^ (-73 * (v2 ^ dword_1902E8 ^ 1))) - 93);
  v4 = &v41[v2 + *(v3 - 2105774026)];
  v5 = 1615229111 * v4 - 0xF7839D8DBCF6EFFLL;
  v6 = 1615229111 * (v4 ^ 0xF087C62724309101);
  *(v1 - 1458609363) = v5;
  *(v3 - 2105774026) = v6;
  LOBYTE(v6) = -73 * ((v6 - *(v1 - 1458609363)) ^ 1);
  v7 = *(&off_18D8F0 + ((-73 * ((dword_1902E8 + dword_190510) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((dword_1902E8 + dword_190510) ^ 1))] ^ 0xC5]) + 63) - 939039246;
  v8 = (*&v7[8 * (byte_123510[byte_FF9E0[v6] ^ 0x46] ^ v6) + 21352])(24);
  if (v8
    && (v9 = v8, *a1 = v8, (*&v7[8 * ((-73 * ((*(v3 - 2105774026) - *(v1 - 1458609363)) ^ 1)) ^ byte_184300[~byte_158820[(-73 * ((*(v3 - 2105774026) - *(v1 - 1458609363)) ^ 1))]]) + 21928])(), (v10 = (*&v7[8 * (byte_FF8E0[byte_184200[(-73 * ((*(v3 - 2105774026) + *(v1 - 1458609363)) ^ 1))] ^ 0xDA] ^ (-73 * ((*(v3 - 2105774026) + *(v1 - 1458609363)) ^ 1))) + 19856])(24)) != 0)
    && (v11 = v10, *v9 = v10, (*&v7[8 * ((-73 * ((*(v3 - 2105774026) - *(v1 - 1458609363)) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((*(v3 - 2105774026) - *(v1 - 1458609363)) ^ 1))] ^ 0xC6]) + 21368])(), (v12 = (*&v7[8 * ((-73 * ((*(v3 - 2105774026) - *(v1 - 1458609363)) ^ 1)) ^ byte_FF8E0[byte_184200[(-73 * ((*(v3 - 2105774026) - *(v1 - 1458609363)) ^ 1))] ^ 0xBC]) + 19864])(24)) != 0)
    && (v13 = v12, *v11 = v12, (*&v7[8 * ((-73 * (*(v1 - 1458609363) ^ 1 ^ *(v3 - 2105774026))) ^ byte_184300[~byte_158820[(-73 * (*(v1 - 1458609363) ^ 1 ^ *(v3 - 2105774026)))]]) + 21928])(), (v14 = (*&v7[8 * ((-73 * ((*(v3 - 2105774026) + *(v1 - 1458609363)) ^ 1)) ^ byte_184300[~byte_158820[(-73 * ((*(v3 - 2105774026) + *(v1 - 1458609363)) ^ 1))]]) + 21160])(24)) != 0)
    && (v15 = v14, *v13 = v14, (*&v7[8 * ((-73 * ((*(v3 - 2105774026) + *(v1 - 1458609363)) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((*(v3 - 2105774026) + *(v1 - 1458609363)) ^ 1))] ^ 0x65]) + 22112])(), (v16 = (*&v7[8 * ((-73 * ((*(v3 - 2105774026) - *(v1 - 1458609363)) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((*(v3 - 2105774026) - *(v1 - 1458609363)) ^ 1))] ^ 0x52]) + 19672])(24)) != 0)
    && (v17 = v16, *v15 = v16, (*&v7[8 * (byte_123510[(byte_FF9E0[(-73 * ((*(v3 - 2105774026) - *(v1 - 1458609363)) ^ 1)) + 256] ^ 0x98) + 256] ^ (-73 * ((*(v3 - 2105774026) - *(v1 - 1458609363)) ^ 1))) + 20816])(), (v18 = (*&v7[8 * ((-73 * ((*(v3 - 2105774026) - *(v1 - 1458609363)) ^ 1)) ^ byte_FF8E0[byte_184200[(-73 * ((*(v3 - 2105774026) - *(v1 - 1458609363)) ^ 1))] ^ 0xDA]) + 19856])(24)) != 0)
    && (v19 = v18, *v17 = v18, (*&v7[8 * ((-73 * (*(v1 - 1458609363) ^ 1 ^ *(v3 - 2105774026))) ^ byte_184300[byte_158820[(-73 * (*(v1 - 1458609363) ^ 1 ^ *(v3 - 2105774026)))] ^ 0x3B]) + 21184])(), (v20 = (*&v7[8 * ((-73 * (*(v1 - 1458609363) ^ 1 ^ *(v3 - 2105774026))) ^ byte_123510[byte_FF9E0[(-73 * (*(v1 - 1458609363) ^ 1 ^ *(v3 - 2105774026)))] ^ 0x46]) + 21352])(24)) != 0)
    && (v21 = v20, *v19 = v20, (*&v7[8 * ((-73 * ((*(v3 - 2105774026) - *(v1 - 1458609363)) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((*(v3 - 2105774026) - *(v1 - 1458609363)) ^ 1))] ^ 0xC6]) + 21368])(), (v22 = (*&v7[8 * ((-73 * ((*(v3 - 2105774026) - *(v1 - 1458609363)) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((*(v3 - 2105774026) - *(v1 - 1458609363)) ^ 1))] ^ 0xC5]) + 20976])(24)) != 0)
    && (v23 = v22, *v21 = v22, (*&v7[8 * ((-73 * (*(v1 - 1458609363) ^ 1 ^ *(v3 - 2105774026))) ^ byte_184300[byte_158820[(-73 * (*(v1 - 1458609363) ^ 1 ^ *(v3 - 2105774026)))] ^ 0xC6]) + 21368])(), (v24 = (*&v7[8 * ((-73 * (*(v1 - 1458609363) ^ 1 ^ *(v3 - 2105774026))) ^ byte_FF8E0[byte_184200[(-73 * (*(v1 - 1458609363) ^ 1 ^ *(v3 - 2105774026)))] ^ 0xFC]) + 20040])(24)) != 0)
    && (v25 = v24, *v23 = v24, (*&v7[8 * ((-73 * ((*(v3 - 2105774026) + *(v1 - 1458609363)) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((*(v3 - 2105774026) + *(v1 - 1458609363)) ^ 1))] ^ 0xC]) + 21560])(), (v26 = (*&v7[8 * ((-73 * ((*(v3 - 2105774026) - *(v1 - 1458609363)) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((*(v3 - 2105774026) - *(v1 - 1458609363)) ^ 1))] ^ 0x3B]) + 20416])(24)) != 0)
    && (v27 = v26, *v25 = v26, (*&v7[8 * ((-73 * ((*(v3 - 2105774026) + *(v1 - 1458609363)) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((*(v3 - 2105774026) + *(v1 - 1458609363)) ^ 1))] ^ 0x65]) + 22112])(), (v28 = (*&v7[8 * ((-73 * ((*(v3 - 2105774026) - *(v1 - 1458609363)) ^ 1)) ^ byte_123510[(byte_FF9E0[(-73 * ((*(v3 - 2105774026) - *(v1 - 1458609363)) ^ 1)) + 256] ^ 0x98) + 256]) + 20048])(24)) != 0)
    && (v29 = v28, *v27 = v28, (*&v7[8 * ((-73 * ((*(v3 - 2105774026) + *(v1 - 1458609363)) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((*(v3 - 2105774026) + *(v1 - 1458609363)) ^ 1))] ^ 0xC5]) + 21744])(), (v30 = (*&v7[8 * ((-73 * ((*(v3 - 2105774026) - *(v1 - 1458609363)) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((*(v3 - 2105774026) - *(v1 - 1458609363)) ^ 1))] ^ 0x3B]) + 20416])(24)) != 0)
    && (v31 = v30, *v29 = v30, (*&v7[8 * ((-73 * ((*(v3 - 2105774026) - *(v1 - 1458609363)) ^ 1)) ^ byte_123510[byte_FF9E0[(-73 * ((*(v3 - 2105774026) - *(v1 - 1458609363)) ^ 1))] ^ 0x46]) + 22120])(), (v32 = (*&v7[8 * ((-73 * ((*(v3 - 2105774026) - *(v1 - 1458609363)) ^ 1)) ^ byte_123510[(byte_FF9E0[(-73 * ((*(v3 - 2105774026) - *(v1 - 1458609363)) ^ 1)) + 256] ^ 0x98) + 256]) + 20048])(24)) != 0)
    && (v33 = v32, *v31 = v32, (*&v7[8 * ((-73 * ((*(v3 - 2105774026) - *(v1 - 1458609363)) ^ 1)) ^ byte_123310[byte_FF6E0[(-73 * ((*(v3 - 2105774026) - *(v1 - 1458609363)) ^ 1))] ^ 0x9B]) + 21000])(), (v34 = (*&v7[8 * ((-73 * ((*(v3 - 2105774026) + *(v1 - 1458609363)) ^ 1)) ^ byte_123310[byte_FF6E0[(-73 * ((*(v3 - 2105774026) + *(v1 - 1458609363)) ^ 1))] ^ 0x7C]) + 20424])(24)) != 0)
    && (v35 = v34, *v33 = v34, (*&v7[8 * ((-73 * (*(v1 - 1458609363) ^ 1 ^ *(v3 - 2105774026))) ^ byte_184300[byte_158820[(-73 * (*(v1 - 1458609363) ^ 1 ^ *(v3 - 2105774026)))] ^ 0x65]) + 22112])(), (v36 = (*&v7[8 * ((-73 * ((*(v3 - 2105774026) + *(v1 - 1458609363)) ^ 1)) ^ byte_123510[byte_FF9E0[(-73 * ((*(v3 - 2105774026) + *(v1 - 1458609363)) ^ 1))] ^ 0x46]) + 21352])(24)) != 0)
    && (v37 = v36, *v35 = v36, (*&v7[8 * ((-73 * (*(v1 - 1458609363) ^ 1 ^ *(v3 - 2105774026))) ^ byte_184300[byte_158820[(-73 * (*(v1 - 1458609363) ^ 1 ^ *(v3 - 2105774026)))] ^ 0xC]) + 21560])(), (v38 = (*&v7[8 * ((-73 * (*(v1 - 1458609363) ^ 1 ^ *(v3 - 2105774026))) ^ byte_123310[byte_FF6E0[(-73 * (*(v1 - 1458609363) ^ 1 ^ *(v3 - 2105774026)))] ^ 0x7C]) + 20424])(24)) != 0))
  {
    *v37 = v38;
    (*&v7[8 * ((-73 * ((*(v3 - 2105774026) - *(v1 - 1458609363)) ^ 1)) ^ byte_123510[(byte_FF9E0[(-73 * ((*(v3 - 2105774026) - *(v1 - 1458609363)) ^ 1)) + 256] ^ 0x98) + 256]) + 20816])();
    return 0;
  }

  else
  {
    (*&v7[8 * ((-73 * (*(v1 - 1458609363) ^ 1 ^ *(v3 - 2105774026))) ^ byte_123310[byte_FF6E0[(-73 * (*(v1 - 1458609363) ^ 1 ^ *(v3 - 2105774026)))] ^ 0x9B]) + 21128])(*a1);
    *a1 = 0;
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_E541C(uint64_t a1)
{
  *(a1 + 24) = 1;
  (*(v2 + 8 * (v1 ^ 0xC57)))();
  return (*(STACK[0x948] + 8 * v1))(3945954799, 1503);
}

uint64_t sub_E55B0@<X0>(int a1@<W8>)
{
  v4 = ((2 * v1) & 0x6F4BAF0C) + ((((a1 + 2046799080) & 0xFF7B7FAD) + 0x5B37F7F5BE2AAAE1) ^ v1) - 0x5B37F7F54D98812ELL;
  v6 = v4 < 0xEA0D5654 || v4 > *(v2 + 8) + 3926742612u;
  return (*(v3 + 8 * ((2509 * v6) ^ a1)))();
}

uint64_t sub_E5670@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  LODWORD(STACK[0x28C]) = v3;
  v6 = a3 ^ 0xCB98594B;
  v7 = *(a2 + 240);
  v8 = v4[62];
  v9 = v6 ^ 0xE24A0FFA;
  v10 = (v6 - 1384816338) & 0x86F24D9F;
  v11 = *(a2 + 248);
  v12 = STACK[0x978];
  v13 = (v9 ^ v10 ^ 0x29D26D74) + STACK[0x978];
  STACK[0x978] = v13;
  v4[151] = v8;
  v4[29] = a1;
  v4[131] = v8;
  if (v7 && v11 && (v10 = 109 * (v9 ^ 0x29D256A0), v8) && ((v10 + (v9 ^ 0xD62DA14B)) & STACK[0x28C]) == 0 && a1)
  {
    v14 = 0;
    v15 = 0;
    STACK[0x8D0] = &STACK[0x1190] + v12;
    v16 = v9 ^ 0xDD68735E;
    LODWORD(STACK[0x8F0]) = (v9 ^ 0xDD68735E) + 192431111;
    v17 = *(v7 + 16388);
    v18 = ((*(v7 + 0x4000) * v17) ^ *(v7 + 0x4000)) & 0xFFF;
    v19 = *(v7 + 4 * (v18 ^ 0x63));
    LODWORD(STACK[0x808]) = v16 + 189127241;
    v20 = *(v7 + 4 * (v18 ^ 0x58));
    v21 = *(v7 + 4 * (v18 ^ 0x3F));
    v22 = *(v7 + 4 * (v18 ^ 0x35));
    v23 = *(v7 + 4 * (v18 ^ 0x5B));
    v24 = *(v7 + 4 * (v18 ^ 0x4D));
    v25 = *(v7 + 4 * (v18 ^ 0x30));
    v26 = (v21 * v17) ^ v21;
    v27 = *(v7 + 4 * (v18 ^ 0x3C));
    LODWORD(STACK[0x5F0]) = v18 ^ 0x60;
    v28 = *(v7 + 4 * (v18 ^ 0x60));
    LODWORD(STACK[0x5E8]) = (v28 * v17) ^ v28;
    LODWORD(STACK[0x928]) = v18 ^ 0x19;
    v29 = (v25 * v17) ^ v25;
    v30 = *(v7 + 4 * (v18 ^ 0x31));
    LODWORD(STACK[0x870]) = v26 + (v18 ^ 0x3F);
    v31 = (v22 * v17) ^ v22;
    v32 = *(v7 + 4 * (v18 ^ 0x19));
    LODWORD(STACK[0x878]) = ((v30 * v17) ^ v30) + (v18 ^ 0x31);
    LODWORD(STACK[0x8C0]) = ((v24 * v17) ^ v24) + (v18 ^ 0x4D);
    v33 = *(v7 + 4 * (v18 ^ 0x52));
    LODWORD(STACK[0x860]) = ((v23 * v17) ^ v23) + (v18 ^ 0x5B);
    LODWORD(STACK[0x858]) = v31 + (v18 ^ 0x35);
    v34 = *(v7 + 4 * (v18 ^ 0x41));
    LODWORD(STACK[0x8B0]) = ((v20 * v17) ^ v20) + (v18 ^ 0x58);
    v35 = (v34 * v17) ^ v34;
    LODWORD(STACK[0x900]) = v18 ^ 0x43;
    v36 = *(v7 + 4 * (v18 ^ 0x43));
    LODWORD(STACK[0x8F8]) = (v36 * v17) ^ v36;
    LODWORD(STACK[0x868]) = ((v19 * v17) ^ v19) + (v18 ^ 0x63);
    LODWORD(STACK[0x7F0]) = (v32 * v17) ^ v32;
    v37 = *(v7 + 4 * (v18 ^ 0x33));
    LODWORD(STACK[0x8A0]) = v35 + (v18 ^ 0x41);
    v38 = (v37 * v17) ^ v37;
    v39 = *(v7 + 4 * (v18 ^ 0x49));
    LODWORD(STACK[0x5E0]) = v18 ^ 0x2D;
    v40 = *(v7 + 4 * (v18 ^ 0x2D));
    LODWORD(STACK[0x5D8]) = (v40 * v17) ^ v40;
    LODWORD(STACK[0x850]) = v38 + (v18 ^ 0x33);
    LODWORD(STACK[0x890]) = ((v39 * v17) ^ v39) + (v18 ^ 0x49);
    v41 = *(v7 + 4 * (v18 ^ 0x44));
    v42 = (v41 * v17) ^ v41;
    LODWORD(STACK[0x810]) = v29 + (v18 ^ 0x30);
    v43 = *(v7 + 4 * (v18 ^ 4));
    v44 = (v43 * v17) ^ v43;
    v45 = *(v7 + 4 * (v18 ^ 0x4F));
    v46 = (v45 * v17) ^ v45;
    LODWORD(STACK[0x7D8]) = v18 ^ 0x22;
    v47 = *(v7 + 4 * (v18 ^ 0x22));
    LODWORD(STACK[0x728]) = (v47 * v17) ^ v47;
    LODWORD(STACK[0x880]) = ((v33 * v17) ^ v33) + (v18 ^ 0x52);
    v48 = *(v7 + 4 * (v18 ^ 0x2A));
    LODWORD(STACK[0x4D8]) = ((v48 * v17) ^ v48) + (v18 ^ 0x2A);
    LODWORD(STACK[0x6A0]) = v18 ^ 0x16;
    v49 = *(v7 + 4 * (v18 ^ 0x16));
    LODWORD(STACK[0x5C0]) = v18 ^ 0x25;
    v50 = *(v7 + 4 * (v18 ^ 0x25));
    LODWORD(STACK[0x590]) = (v50 * v17) ^ v50;
    LODWORD(STACK[0x670]) = (v49 * v17) ^ v49;
    v51 = *(v7 + 4 * (v18 ^ 0x12));
    v52 = *(v7 + 4 * (v18 ^ 0x2F));
    LODWORD(STACK[0x820]) = (v51 * v17) ^ v51;
    LODWORD(STACK[0x8E8]) = (v52 * v17) ^ v52;
    v53 = *(v7 + 4 * (v18 ^ 2));
    LODWORD(STACK[0x838]) = (v53 * v17) ^ v53;
    LODWORD(STACK[0x848]) = ((v27 * v17) ^ v27) + (v18 ^ 0x3C);
    v54 = *(v7 + 4 * (v18 ^ 3));
    LODWORD(STACK[0x830]) = (v54 * v17) ^ v54;
    v55 = *(v7 + 4 * (v18 ^ 0x15));
    v56 = *(v7 + 4 * (v18 ^ 9));
    LODWORD(STACK[0x828]) = (v56 * v17) ^ v56;
    LODWORD(STACK[0x840]) = ((v55 * v17) ^ v55) + (v18 ^ 0x15);
    v57 = *(v7 + 4 * (v18 ^ 8));
    LODWORD(STACK[0x818]) = (v57 * v17) ^ v57;
    LODWORD(STACK[0x65C]) = v18 ^ 1;
    v58 = *(v7 + 4 * (v18 ^ 1));
    LODWORD(STACK[0x650]) = (v58 * v17) ^ v58;
    v59 = STACK[0xE98];
    v60 = (1202758137 * bswap32(*STACK[0xE98]) - 744161827) ^ 0x66DE06E7;
    v61 = v60 - 76469480;
    v62 = v60 + 1784094503;
    v63 = v60 + 1425898072;
    v64 = bswap32(*(STACK[0xE98] + 4));
    LODWORD(STACK[0x758]) = 1202758137 * v64;
    LODWORD(STACK[0x6CC]) = v61;
    LODWORD(STACK[0x6C0]) = v62;
    LODWORD(STACK[0x730]) = v63;
    v65 = v62 + v61 + v63 + 1202758137 * v64;
    v66 = *(v59 + 8);
    LODWORD(v59) = *(v59 + 12);
    v67 = bswap32(v66);
    LODWORD(STACK[0x738]) = 1202758137 * v67;
    LODWORD(v59) = bswap32(v59);
    LODWORD(STACK[0x750]) = 1202758137 * v59;
    v63 ^= 0x66DE06E7u;
    LODWORD(STACK[0x6E0]) = v63;
    v68 = (v65 ^ v63) + 1425898072;
    v69 = v68 + v61;
    v70 = v68 ^ v63;
    v71 = v68 + v62;
    v72 = ((1202758137 * v67 + v68 + v68 + v61 + v68 + v62) ^ v68 ^ v63) + 1425898072;
    v73 = v72 + v69;
    LODWORD(STACK[0x930]) = v72 ^ v70;
    LODWORD(STACK[0x910]) = v72 + v71;
    LODWORD(STACK[0x410]) = v72 + v69;
    v74 = (v72 + 1202758137 * v59 + v72 + v69 + v72 + v71) ^ v72 ^ v70;
    LODWORD(STACK[0x648]) = v74;
    LODWORD(STACK[0x940]) = v74 + 1425898072;
    LODWORD(v59) = v74 + 1425898072 + v73;
    LODWORD(STACK[0x908]) = v59;
    LODWORD(STACK[0x640]) = (v59 + 126) % 0x28u;
    v75 = *(v7 + 4 * (v18 ^ 0x28));
    LODWORD(STACK[0x578]) = v18 ^ 0x10;
    v76 = *(v7 + 4 * (v18 ^ 0x10));
    LODWORD(STACK[0x568]) = (v76 * v17) ^ v76;
    LODWORD(STACK[0x7F8]) = LODWORD(STACK[0x818]) + (v18 ^ 8);
    LODWORD(STACK[0x708]) = v44 + (v18 ^ 4);
    v77 = *(v7 + 4 * (v18 ^ 0xC));
    v78 = *(v7 + 4 * (v18 ^ 0xF));
    v79 = *(v7 + 4 * (v18 ^ 0x29));
    LODWORD(STACK[0x7A8]) = ((v78 * v17) ^ v78) + (v18 ^ 0xF);
    LODWORD(STACK[0x4D0]) = ((v79 * v17) ^ v79) + (v18 ^ 0x29);
    v80 = *(v7 + 4 * (v18 ^ 0x1B));
    v81 = *(v7 + 4 * (v18 ^ 0x11));
    LODWORD(STACK[0x7C0]) = LODWORD(STACK[0x8E8]) + (v18 ^ 0x2F);
    LODWORD(STACK[0x7D0]) = LODWORD(STACK[0x830]) + (v18 ^ 3);
    v82 = *(v7 + 4 * (v18 ^ 0x20));
    LODWORD(STACK[0x6F0]) = LODWORD(STACK[0x838]) + (v18 ^ 2);
    LODWORD(STACK[0x7A0]) = ((v77 * v17) ^ v77) + (v18 ^ 0xC);
    LODWORD(STACK[0x818]) = v42 + (v18 ^ 0x44);
    LODWORD(STACK[0x838]) = ((v80 * v17) ^ v80) + (v18 ^ 0x1B);
    LODWORD(STACK[0x780]) = ((v81 * v17) ^ v81) + (v18 ^ 0x11);
    v83 = *(v7 + 4 * (v18 ^ 0x24));
    LODWORD(STACK[0x8E8]) = LODWORD(STACK[0x828]) + (v18 ^ 9);
    LODWORD(STACK[0x828]) = ((v75 * v17) ^ v75) + (v18 ^ 0x28);
    LODWORD(STACK[0x830]) = v46 + (v18 ^ 0x4F);
    LODWORD(STACK[0x800]) = ((v82 * v17) ^ v82) + (v18 ^ 0x20);
    LODWORD(STACK[0x7C8]) = ((v83 * v17) ^ v83) + (v18 ^ 0x24);
    LODWORD(STACK[0x820]) += v18 ^ 0x12;
    v84 = *(v7 + 4 * (v18 ^ 0x3A));
    v85 = (v84 * v17) ^ v84;
    v86 = *(v7 + 4 * (v18 ^ 0x40));
    v87 = *(v7 + 4 * (v18 ^ 0x4C));
    v88 = *(v7 + 4 * (v18 ^ 0x54));
    v89 = *(v7 + 4 * (v18 ^ 0x38));
    v90 = *(v7 + 4 * (v18 ^ 0x47));
    v91 = *(v7 + 4 * (v18 ^ 0x5E));
    v92 = *(v7 + 4 * (v18 ^ 0x65));
    v93 = *(v7 + 4 * (v18 ^ 0x3E));
    LODWORD(v59) = *(v7 + 4 * (v18 ^ 0x5D));
    v94 = (v59 * v17) ^ v59;
    v95 = (v93 * v17) ^ v93;
    v96 = *(v7 + 4 * (v18 ^ 0x66));
    LODWORD(STACK[0x5D0]) = v18 ^ 0x4E;
    LODWORD(v59) = *(v7 + 4 * (v18 ^ 0x4E));
    LODWORD(STACK[0x5C8]) = (v59 * v17) ^ v59;
    LODWORD(STACK[0x748]) = ((v96 * v17) ^ v96) + (v18 ^ 0x66);
    LODWORD(STACK[0x7B0]) = v95 + (v18 ^ 0x3E);
    v97 = *(v7 + 4 * (v18 ^ 0x5F));
    LODWORD(STACK[0x5A8]) = v18 ^ 0x34;
    v98 = *(v7 + 4 * (v18 ^ 0x34));
    LODWORD(STACK[0x598]) = (v98 * v17) ^ v98;
    LODWORD(STACK[0x6A8]) = ((v92 * v17) ^ v92) + (v18 ^ 0x65);
    v99 = *(v7 + 4 * (v18 ^ 0x61));
    LODWORD(STACK[0x700]) = v94 + (v18 ^ 0x5D);
    v100 = v18 ^ LODWORD(STACK[0x808]);
    LODWORD(STACK[0x5A0]) = v100;
    LODWORD(STACK[0x588]) = (*(v7 + 4 * v100) * v17) ^ *(v7 + 4 * v100);
    LODWORD(STACK[0x6F8]) = ((v97 * v17) ^ v97) + (v18 ^ 0x5F);
    v101 = *(v7 + 4 * (v18 ^ 0x37));
    LODWORD(STACK[0x770]) = ((v99 * v17) ^ v99) + (v18 ^ 0x61);
    LODWORD(STACK[0x6E8]) = ((v91 * v17) ^ v91) + (v18 ^ 0x5E);
    LODWORD(STACK[0x7E0]) = ((v90 * v17) ^ v90) + (v18 ^ 0x47);
    LODWORD(STACK[0x580]) = v18 ^ 0x46;
    v102 = *(v7 + 4 * (v18 ^ 0x46));
    LODWORD(STACK[0x570]) = (v102 * v17) ^ v102;
    LODWORD(STACK[0x720]) = ((v101 * v17) ^ v101) + (v18 ^ 0x37);
    LODWORD(STACK[0x808]) = ((v89 * v17) ^ v89) + (v18 ^ 0x38);
    v103 = *(v7 + 4 * (v18 ^ 0x53));
    v104 = *(v7 + 4 * (v18 ^ 0xA));
    LODWORD(STACK[0x558]) = v18 ^ 0x42;
    v105 = *(v7 + 4 * (v18 ^ 0x42));
    LODWORD(STACK[0x550]) = (v105 * v17) ^ v105;
    LODWORD(STACK[0x778]) = ((v87 * v17) ^ v87) + (v18 ^ 0x4C);
    LODWORD(STACK[0x760]) = ((v104 * v17) ^ v104) + (v18 ^ 0xA);
    v106 = *(v7 + 4 * (v18 ^ 0x13));
    LODWORD(STACK[0x7B8]) = ((v88 * v17) ^ v88) + (v18 ^ 0x54);
    LODWORD(STACK[0x718]) = ((v106 * v17) ^ v106) + (v18 ^ 0x13);
    LODWORD(STACK[0x540]) = v18 ^ 0x1F;
    v107 = *(v7 + 4 * (v18 ^ 0x1F));
    LODWORD(STACK[0x548]) = v18 ^ 0x50;
    v108 = *(v7 + 4 * (v18 ^ 0x50));
    LODWORD(STACK[0x538]) = (v108 * v17) ^ v108;
    LODWORD(STACK[0x470]) = (v107 * v17) ^ v107;
    v109 = *(v7 + 4 * (v18 ^ 0x1C));
    LODWORD(STACK[0x7E8]) = v85 + (v18 ^ 0x3A);
    v110 = *(v7 + 4 * (v18 ^ 0x17));
    LODWORD(STACK[0x468]) = v18 ^ 0x21;
    v111 = *(v7 + 4 * (v18 ^ 0x21));
    LODWORD(STACK[0x460]) = (v111 * v17) ^ v111;
    LODWORD(STACK[0x790]) = ((v103 * v17) ^ v103) + (v18 ^ 0x53);
    v112 = *(v7 + 4 * (v18 ^ 0x23));
    LODWORD(STACK[0x710]) = ((v110 * v17) ^ v110) + (v18 ^ 0x17);
    v113 = *(v7 + 4 * (v18 ^ 0x2B));
    v114 = *(v7 + 4 * (v18 ^ 0x1E));
    v115 = *(v7 + 4 * (v18 ^ 0xD));
    v116 = *(v7 + 4 * (v18 ^ 0x48));
    LODWORD(STACK[0x688]) = ((v112 * v17) ^ v112) + (v18 ^ 0x23);
    LODWORD(STACK[0x458]) = v18 ^ 0x26;
    LODWORD(v59) = *(v7 + 4 * (v18 ^ 0x26));
    LODWORD(STACK[0x450]) = (v59 * v17) ^ v59;
    LODWORD(STACK[0x768]) = ((v109 * v17) ^ v109) + (v18 ^ 0x1C);
    v117 = *(v7 + 4 * (v18 ^ 0x14));
    LODWORD(STACK[0x798]) = ((v116 * v17) ^ v116) + (v18 ^ 0x48);
    LODWORD(STACK[0x6D8]) = ((v117 * v17) ^ v117) + (v18 ^ 0x14);
    LODWORD(STACK[0x4A0]) = ((v113 * v17) ^ v113) + (v18 ^ 0x2B);
    LODWORD(STACK[0x6D0]) = ((v115 * v17) ^ v115) + (v18 ^ 0xD);
    v118 = *(v7 + 4 * (v18 ^ 0x1D));
    LODWORD(STACK[0x788]) = ((v118 * v17) ^ v118) + (v18 ^ 0x1D);
    LODWORD(STACK[0x6B0]) = ((v86 * v17) ^ v86) + (v18 ^ 0x40);
    LODWORD(STACK[0x448]) = v18 ^ 0xE;
    LODWORD(v59) = *(v7 + 4 * (v18 ^ 0xE));
    LODWORD(STACK[0x438]) = (v59 * v17) ^ v59;
    LODWORD(STACK[0x430]) = v18 ^ 0x18;
    LODWORD(v59) = *(v7 + 4 * (v18 ^ 0x18));
    LODWORD(STACK[0x428]) = (v59 * v17) ^ v59;
    LODWORD(STACK[0x740]) = ((v114 * v17) ^ v114) + (v18 ^ 0x1E);
    LODWORD(v59) = *(v7 + 4 * (v18 ^ 6));
    LODWORD(STACK[0x660]) = (v59 * v17) ^ v59;
    LODWORD(v59) = *(v7 + 4 * (v18 ^ 0x4A));
    LODWORD(STACK[0x680]) = (v59 * v17) ^ v59;
    LODWORD(v59) = *(v7 + 4 * (v18 ^ 0x2E));
    v119 = (v59 * v17) ^ v59;
    LODWORD(v59) = *(v7 + 4 * (v18 ^ 0x2C));
    LODWORD(STACK[0x638]) = (v59 * v17) ^ v59;
    LODWORD(v59) = *(v7 + 4 * (v18 ^ 0x57));
    v120 = (v59 * v17) ^ v59;
    LODWORD(v59) = *(v7 + 4 * (v18 ^ 0x45));
    v121 = (v59 * v17) ^ v59;
    LODWORD(v59) = *(v7 + 4 * (v18 ^ 0x5A));
    v122 = (v59 * v17) ^ v59;
    LODWORD(v59) = *(v7 + 4 * (v18 ^ 0x64));
    v123 = (v59 * v17) ^ v59;
    LODWORD(v59) = *(v7 + 4 * (v18 ^ 0x56));
    v124 = (v59 * v17) ^ v59;
    LODWORD(v59) = ((LODWORD(STACK[0x6CC]) + LODWORD(STACK[0x730]) + LODWORD(STACK[0x6C0]) + LODWORD(STACK[0x758])) ^ LODWORD(STACK[0x6E0])) + 1425898072;
    v125 = v59 + LODWORD(STACK[0x6CC]);
    v126 = v59 ^ LODWORD(STACK[0x6E0]);
    v127 = v59 + LODWORD(STACK[0x6C0]);
    v128 = ((LODWORD(STACK[0x738]) + v59 + v125 + v127) ^ v126) + 1425898072;
    v129 = v128 + v125;
    v130 = v128 ^ v126;
    v131 = v128 + v127;
    v132 = *(v7 + 4 * (v18 ^ 0x5C));
    LODWORD(STACK[0x630]) = v128 + LODWORD(STACK[0x750]);
    v133 = *(v7 + 4 * (v18 ^ 0x59));
    LODWORD(STACK[0x5B8]) = v18 ^ 0x67;
    LODWORD(v59) = *(v7 + 4 * (v18 ^ 0x67));
    LODWORD(STACK[0x5B0]) = (v59 * v17) ^ v59;
    LODWORD(STACK[0x698]) = v123 + (v18 ^ 0x64);
    LODWORD(STACK[0x408]) = v18 ^ 0x4B;
    LODWORD(v59) = *(v7 + 4 * (v18 ^ 0x4B));
    LODWORD(STACK[0x3F8]) = (v59 * v17) ^ v59;
    LODWORD(STACK[0x678]) = (v18 ^ 0x59) + ((v133 * v17) ^ v133);
    LODWORD(STACK[0x730]) = v121 + (v18 ^ 0x45);
    LODWORD(STACK[0x668]) = ((v132 * v17) ^ v132) + (v18 ^ 0x5C);
    LODWORD(STACK[0x758]) = LODWORD(STACK[0x8F8]) + LODWORD(STACK[0x900]);
    LODWORD(STACK[0x750]) = v122 + (v18 ^ 0x5A);
    LODWORD(STACK[0x490]) = v124 + (v18 ^ 0x56);
    v134 = STACK[0x8D0];
    LODWORD(STACK[0x400]) = v18 ^ 0x3B;
    LODWORD(v59) = *(v7 + 4 * (v18 ^ 0x3B));
    LODWORD(STACK[0x3F0]) = (v59 * v17) ^ v59;
    LODWORD(STACK[0x480]) = v120 + (v18 ^ 0x57);
    LODWORD(STACK[0x738]) = (LODWORD(STACK[0x7F0]) ^ LODWORD(STACK[0x928])) + 2 * (STACK[0x7F0] & LODWORD(STACK[0x928]));
    v135 = *(v7 + 4 * (v18 ^ 0x51));
    v136 = *(v7 + 4 * (v18 ^ 0xB));
    v137 = v119 + (v18 ^ 0x2E);
    v138 = STACK[0x410];
    LODWORD(STACK[0x6CC]) = v137;
    LODWORD(STACK[0x6B8]) = LODWORD(STACK[0x728]) + LODWORD(STACK[0x7D8]);
    v139 = *(v7 + 4 * (v18 ^ 0x55));
    LODWORD(STACK[0x690]) = ((v136 * v17) ^ v136) + (v18 ^ 0xB);
    LODWORD(STACK[0x6C0]) = LODWORD(STACK[0x638]) + (v18 ^ 0x2C);
    LODWORD(STACK[0x728]) = LODWORD(STACK[0x680]) + (v18 ^ 0x4A);
    LODWORD(STACK[0x3E0]) = v18 ^ 0x1A;
    v140 = *(v7 + 4 * (v18 ^ 0x1A));
    LODWORD(STACK[0x3D8]) = (v140 * v17) ^ v140;
    v141 = *(v7 + 4 * (v18 ^ 0x27));
    LODWORD(STACK[0x680]) = ((v141 * v17) ^ v141) + (v18 ^ 0x27);
    LODWORD(STACK[0x420]) = (*(v7 + 4 * v18) * v17) ^ *(v7 + 4 * v18);
    LODWORD(STACK[0x638]) = LODWORD(STACK[0x660]) + (v18 ^ 6);
    LODWORD(STACK[0x6E0]) = ((v135 * v17) ^ v135) + (v18 ^ 0x51);
    v142 = *(v7 + 4 * (v18 ^ 5));
    LODWORD(STACK[0x670]) += LODWORD(STACK[0x6A0]);
    LODWORD(STACK[0x478]) = ((v139 * v17) ^ v139) + (v18 ^ 0x55);
    LODWORD(STACK[0x660]) = ((v142 * v17) ^ v142) + (v18 ^ 5);
    LODWORD(STACK[0x6A0]) = LODWORD(STACK[0x650]) + LODWORD(STACK[0x65C]);
    STACK[0x258] = v134 + 4664;
    STACK[0x250] = v134 + 5696;
    STACK[0x7F0] = v134 + 6748;
    STACK[0x248] = v134 + 7784;
    STACK[0x4C8] = v134 + 11160;
    STACK[0x4C0] = v134 + 12200;
    LODWORD(STACK[0x4B0]) = (a1[1] - 110);
    LODWORD(STACK[0x498]) = (a1[11] - 110);
    LODWORD(STACK[0x518]) = (a1[15] - 110);
    LODWORD(STACK[0x530]) = (a1[10] - 110);
    LODWORD(STACK[0x4F0]) = (*a1 - 110);
    v143 = STACK[0xAC8];
    LODWORD(STACK[0x528]) = (*(STACK[0xAC8] + 5) - 110);
    LODWORD(STACK[0x4B8]) = (v143[4] - 110);
    LODWORD(STACK[0x4A8]) = (v143[2] - 110);
    LODWORD(STACK[0x4E0]) = (v143[9] - 110);
    LODWORD(STACK[0x4F8]) = (v143[3] - 110);
    LODWORD(STACK[0x510]) = (v143[8] - 110);
    LOBYTE(v143) = v143[12] - 110;
    LOBYTE(v142) = a1[7] - 110;
    LOBYTE(v140) = a1[6] - 110;
    LOBYTE(v141) = a1[14] - 110;
    LODWORD(STACK[0x520]) = (a1[13] - 110);
    LODWORD(STACK[0x4E8]) = v141;
    LODWORD(STACK[0x508]) = v140;
    LODWORD(STACK[0x488]) = v142;
    LODWORD(STACK[0x500]) = v143;
    LODWORD(v143) = (LODWORD(STACK[0x630]) + v129 + v131) ^ v130;
    LODWORD(STACK[0x3B0]) = v143;
    v144 = v143 + 1425898072;
    LODWORD(STACK[0x270]) = v143 + 1425898072 + v131;
    v145 = LODWORD(STACK[0x648]) + 381291216;
    v146 = LODWORD(STACK[0x640]);
    v147 = STACK[0x940];
    v148 = LODWORD(STACK[0x940]) + LODWORD(STACK[0x910]);
    v149 = LODWORD(STACK[0x940]) ^ LODWORD(STACK[0x930]);
    v150 = v149 + 1347468771;
    v151 = STACK[0x908];
    v152 = LODWORD(STACK[0x908]) ^ v148;
    v153 = v152 + v149;
    v154 = v149 - LODWORD(STACK[0x908]);
    LODWORD(STACK[0x900]) = v149 + v148;
    LOBYTE(v82) = v149 + v151;
    v146 <<= 9;
    LODWORD(STACK[0x65C]) = v145;
    LODWORD(STACK[0x648]) = v148 - v151;
    LODWORD(STACK[0x650]) = v148 ^ v149;
    v155 = v145 ^ v138 ^ (v148 - v151) ^ v148 ^ v149;
    v156 = v146 + 45312;
    LODWORD(STACK[0x640]) = v146 + 45056;
    STACK[0x240] = v134 + 10116;
    STACK[0x928] = v134 + 9080;
    STACK[0x238] = v134 + 1036;
    v849 = v134 + 2076;
    STACK[0x268] = v134 + 2333;
    STACK[0x230] = v134 + 2592;
    STACK[0x228] = v134 + 3632;
    LODWORD(STACK[0x3C8]) = v18 ^ 0x3D;
    v157 = *(v7 + 4 * (v18 ^ 0x3D));
    LODWORD(STACK[0x3B8]) = v18 ^ 0x39;
    v158 = *(v7 + 4 * (v18 ^ 0x39));
    LODWORD(STACK[0x3C0]) = v18 ^ 0x32;
    v159 = *(v7 + 4 * (v18 ^ 0x32));
    LODWORD(STACK[0x3D0]) = v18 ^ 0x62;
    LODWORD(STACK[0x3A8]) = *(v7 + 4 * (v18 ^ 0x62));
    LODWORD(STACK[0x388]) = v159;
    LODWORD(STACK[0x384]) = v159 * v17;
    LODWORD(STACK[0x3A0]) = v18 ^ 7;
    v160 = *(v7 + 4 * (v18 ^ 7));
    LODWORD(STACK[0x358]) = v157;
    LODWORD(STACK[0x354]) = v157 * v17;
    LODWORD(STACK[0x398]) = v160;
    LODWORD(STACK[0x390]) = v160 * v17;
    LODWORD(STACK[0x27C]) = v129;
    LODWORD(STACK[0x3E8]) = v144 + v129;
    LODWORD(STACK[0x560]) = v130;
    LODWORD(STACK[0x418]) = v144;
    LODWORD(STACK[0x260]) = v144 ^ v130;
    LODWORD(STACK[0x35C]) = v158;
    LODWORD(STACK[0x350]) = v158 * v17;
    LOBYTE(v159) = v147;
    v161 = v151 ^ v147;
    LODWORD(STACK[0x628]) = v154 + v147;
    LODWORD(STACK[0x620]) = v148 - v138;
    LODWORD(STACK[0x618]) = v152 + v147;
    LODWORD(STACK[0x610]) = v148 + v151;
    LODWORD(STACK[0x630]) = v150;
    LODWORD(STACK[0x608]) = v150 ^ v148;
    LODWORD(STACK[0x600]) = HIWORD(v155);
    LODWORD(STACK[0x5F8]) = v148 - (v151 ^ v147);
    LODWORD(STACK[0x8F8]) = v148;
    v162 = v151 + v147;
    v163 = v151 + v147 + v148;
    v164 = v82;
    v165 = v159 - v82;
    v166 = v155 >> 8;
    v167 = v155;
    v168 = HIBYTE(v155);
    STACK[0x7D8] = v134 + 8820;
    do
    {
      v169 = STACK[0x8F0];
      v170 = LODWORD(STACK[0x8F0]) + 1009270215;
      v171 = (v134 + v14);
      v171[1946] = ((((v15 ^ v168) + 104) ^ v18) + ((*(v7 + 4 * (((v15 ^ v168) + 104) ^ v18)) * v17) ^ *(v7 + 4 * (((v15 ^ v168) + 104) ^ v18)))) ^ LODWORD(STACK[0x65C]);
      v172 = *(&off_18D8F0 + (v169 ^ 0x3269F1)) - 1505646434;
      v173 = ((v172[v170 ^ 0x3C5A819D ^ ((v15 ^ v165) | v156)] ^ 0x93) + 2152) ^ v18;
      v174 = STACK[0x910];
      v171[3050] = v152 ^ LODWORD(STACK[0x910]) ^ LODWORD(STACK[0x618]) ^ v153 ^ (v173 + ((*(v7 + 4 * v173) * v17) ^ *(v7 + 4 * v173)));
      v175 = ((v172[((v15 ^ LODWORD(STACK[0x930])) | v156) ^ 0x2626] ^ 0x93) + 1384) ^ v18;
      v171[908] = LODWORD(STACK[0x8F8]) ^ 0x1D654F25 ^ v154 ^ LODWORD(STACK[0x628]) ^ (v175 + ((*(v7 + 4 * v175) * v17) ^ *(v7 + 4 * v175)));
      v176 = ((v15 ^ LODWORD(STACK[0x600])) + 360) ^ v18;
      v171[648] = (((*(v7 + 4 * v176) * v17) ^ *(v7 + 4 * v176)) + v176) ^ LODWORD(STACK[0x648]);
      v177 = ((v172[((v15 ^ v163) | v156) ^ 0x2626] ^ 0x93) + 2408) ^ v18;
      v171[1687] = (v177 + ((*(v7 + 4 * v177) * v17) ^ *(v7 + 4 * v177))) ^ v174;
      v178 = ((v172[((LODWORD(STACK[0x608]) ^ v15) | v156) ^ 0x2626] ^ 0x93) + 1128) ^ v18;
      v171[2529] = (v178 + ((*(v7 + 4 * v178) * v17) ^ *(v7 + 4 * v178))) ^ v152;
      v171[259] = (((*(v7 + 4 * (((v15 ^ v166) + 3432) ^ v18)) * v17) ^ *(v7 + 4 * (((v15 ^ v166) + 3432) ^ v18))) + (((v15 ^ v166) + 3432) ^ v18)) ^ v138;
      v179 = ((v172[((v15 ^ v162) | v156) ^ 0x2626] ^ 0x93) + 872) ^ v18;
      v171[2790] = (v179 + ((*(v7 + 4 * v179) * v17) ^ *(v7 + 4 * v179))) ^ v152;
      v180 = ((v172[((v15 ^ LODWORD(STACK[0x610])) | v156) ^ 0x2626] ^ 0x93) + 616) ^ v18;
      v171[1166] = LODWORD(STACK[0x908]) ^ 0x1D654F25 ^ (v180 + ((*(v7 + 4 * v180) * v17) ^ *(v7 + 4 * v180)));
      v171[1424] = (((*(v7 + 4 * (((v15 ^ v167) + 1896) ^ v18)) * v17) ^ *(v7 + 4 * (((v15 ^ v167) + 1896) ^ v18))) + (((v15 ^ v167) + 1896) ^ v18)) ^ LODWORD(STACK[0x650]);
      v181 = ((v172[((v15 ^ v164) | v156) ^ 0x2626] ^ 0x93) + 2664) ^ v18;
      v182 = v172;
      *v171 = (v181 + ((*(v7 + 4 * v181) * v17) ^ *(v7 + 4 * v181))) ^ v153;
      v183 = ((v172[((v15 ^ LODWORD(STACK[0x630])) | v156) ^ 0x2626] ^ 0x93) + 1640) ^ v18;
      v184 = STACK[0x7D8];
      v171[2270] = (v183 + ((*(v7 + 4 * v183) * v17) ^ *(v7 + 4 * v183))) ^ v154;
      v185 = ((v15 ^ LODWORD(STACK[0x620])) + 3688) ^ v18;
      LOBYTE(v171) = *(v7 + 4 * v185);
      LOBYTE(v185) = v172[(LODWORD(STACK[0x640]) + (((v171 * v17) ^ v171) + v185)) ^ 0x2626];
      v186 = v134 + v15;
      *(v186 + 2076) = LODWORD(STACK[0x940]) ^ 0x84 ^ v185;
      v187 = ((v15 ^ LODWORD(STACK[0x900])) + 2920) ^ v18;
      *(v186 + 2333) = (((*(v7 + 4 * v187) * v17) ^ *(v7 + 4 * v187)) + v187) ^ v138;
      v188 = ((v15 ^ LODWORD(STACK[0x5F8])) + 3176) ^ v18;
      *(v184 + v15++) = (((*(v7 + 4 * v188) * v17) ^ *(v7 + 4 * v188)) + v188) ^ v161;
      v14 += 4;
    }

    while (v15 != 256);
    v189 = 0;
    v190 = LODWORD(STACK[0x354]) ^ LODWORD(STACK[0x358]);
    LODWORD(STACK[0x5C8]) += LODWORD(STACK[0x5D0]);
    LODWORD(STACK[0x5B0]) += LODWORD(STACK[0x5B8]);
    LODWORD(STACK[0x608]) = LODWORD(STACK[0x5E8]) + LODWORD(STACK[0x5F0]);
    LODWORD(STACK[0x5B8]) = (LODWORD(STACK[0x350]) ^ LODWORD(STACK[0x35C])) + LODWORD(STACK[0x3B8]);
    LODWORD(STACK[0x5A0]) += LODWORD(STACK[0x588]);
    LODWORD(STACK[0x588]) = LODWORD(STACK[0x598]) + LODWORD(STACK[0x5A8]);
    LODWORD(STACK[0x5A8]) = LODWORD(STACK[0x3F8]) + LODWORD(STACK[0x408]);
    LODWORD(STACK[0x580]) += LODWORD(STACK[0x570]);
    LODWORD(STACK[0x618]) = LODWORD(STACK[0x5D8]) + LODWORD(STACK[0x5E0]);
    v191 = LODWORD(STACK[0x384]) ^ LODWORD(STACK[0x388]);
    LODWORD(STACK[0x628]) = v190 + LODWORD(STACK[0x3C8]);
    LODWORD(STACK[0x5F8]) = LODWORD(STACK[0x550]) + LODWORD(STACK[0x558]);
    LODWORD(STACK[0x570]) = v191 + LODWORD(STACK[0x3C0]);
    LODWORD(STACK[0x5D8]) = LODWORD(STACK[0x470]) + LODWORD(STACK[0x540]);
    LODWORD(STACK[0x598]) = LODWORD(STACK[0x538]) + LODWORD(STACK[0x548]);
    LODWORD(STACK[0x5D0]) = LODWORD(STACK[0x460]) + LODWORD(STACK[0x468]);
    LODWORD(STACK[0x620]) = LODWORD(STACK[0x590]) + LODWORD(STACK[0x5C0]);
    LODWORD(STACK[0x630]) = LODWORD(STACK[0x3F0]) + LODWORD(STACK[0x400]);
    LODWORD(STACK[0x600]) = LODWORD(STACK[0x3D8]) + LODWORD(STACK[0x3E0]);
    LODWORD(STACK[0x590]) = LODWORD(STACK[0x568]) + LODWORD(STACK[0x578]);
    v192 = LODWORD(STACK[0x390]) ^ LODWORD(STACK[0x398]);
    LODWORD(STACK[0x5C0]) = LODWORD(STACK[0x450]) + LODWORD(STACK[0x458]);
    LODWORD(STACK[0x5E0]) = v192 + LODWORD(STACK[0x3A0]);
    LODWORD(STACK[0x5F0]) = LODWORD(STACK[0x428]) + LODWORD(STACK[0x430]);
    LODWORD(STACK[0x610]) = LODWORD(STACK[0x438]) + LODWORD(STACK[0x448]);
    v193 = LODWORD(STACK[0x8F8]) ^ LODWORD(STACK[0x940]);
    LODWORD(STACK[0x220]) = LODWORD(STACK[0x3B0]) + 381291216;
    v194 = (v170 - 969417890) | 0x902070C0;
    LODWORD(STACK[0x5E8]) = ((LODWORD(STACK[0x3A8]) * v17) ^ LODWORD(STACK[0x3A8])) + LODWORD(STACK[0x3D0]);
    v195 = *(STACK[0x268] + (LODWORD(STACK[0x900]) ^ 0x2ALL)) ^ v138;
    v196 = v18 ^ 0xBB0;
    v197 = *(v7 + 4 * (v18 ^ 0xBB0));
    v198 = *(v7 + 4 * (v18 ^ 0xDA8));
    v199 = *(v7 + 4 * (v18 ^ 0x74D));
    v200 = ((v198 * v17) ^ v198) + (v18 ^ 0xDA8);
    LODWORD(STACK[0x470]) = v194;
    v201 = ((*(v7 + 4 * (v18 ^ 0x92B2FD51 ^ v194)) * v17) ^ *(v7 + 4 * (v18 ^ 0x92B2FD51 ^ v194))) + (v18 ^ 0x92B2FD51 ^ v194);
    LODWORD(STACK[0x910]) = ((v199 * v17) ^ v199) + (v18 ^ 0x74D);
    LODWORD(STACK[0x578]) = LODWORD(STACK[0x420]) + v18;
    v202 = v18 ^ 0xFFC;
    v203 = (*(v7 + 4 * v202) * v17) ^ *(v7 + 4 * v202);
    LODWORD(STACK[0x930]) = ((v197 * v17) ^ v197) + v196;
    LODWORD(STACK[0x438]) = v203 + v202;
    v204 = v195 & 1;
    LODWORD(STACK[0x430]) = (v195 >> 1) & 1;
    LOBYTE(v197) = STACK[0x260];
    v205 = STACK[0x270];
    v206 = STACK[0x418];
    v207 = (LODWORD(STACK[0x270]) ^ LODWORD(STACK[0x418])) >> 24;
    v208 = STACK[0x3E8];
    LODWORD(STACK[0x21C]) = (LODWORD(STACK[0x270]) ^ LODWORD(STACK[0x3E8])) + LODWORD(STACK[0x418]);
    v209 = (v197 - 29);
    LODWORD(STACK[0x218]) = v205 - v208;
    STACK[0x210] = v209 ^ HIBYTE(v193);
    LODWORD(STACK[0x65C]) = v206 ^ 0x17;
    LODWORD(STACK[0x20C]) = (v205 + v197);
    LODWORD(STACK[0x650]) = (v208 + v206);
    LODWORD(STACK[0x648]) = (v208 + v197);
    LODWORD(STACK[0x450]) = (v206 - (v208 + v197));
    LODWORD(STACK[0x640]) = (v208 + v206 + v205);
    LODWORD(STACK[0x208]) = (v208 + v205);
    LODWORD(STACK[0x200]) = LODWORD(STACK[0x560]);
    v856 = ((v197 - 29) ^ v205);
    v855 = STACK[0xE98];
    LODWORD(STACK[0x458]) = v208 ^ v206;
    LODWORD(STACK[0x468]) = v207;
    STACK[0x460] = v209;
    v854 = v209 ^ v207;
    v210 = v205 - LODWORD(STACK[0x27C]);
    LODWORD(STACK[0x448]) = v205 - (v208 ^ v206);
    v853 = (v205 - (v208 ^ v206));
    v851 = v210;
    v852 = STACK[0xDF8];
    STACK[0x940] = v210;
    STACK[0x440] = v182;
    v211 = STACK[0x530];
    v212 = STACK[0x8E8];
    v213 = STACK[0x528];
    v214 = STACK[0x520];
    v215 = STACK[0x518];
    v216 = STACK[0x928];
    v217 = STACK[0x510];
    v218 = STACK[0x508];
    v219 = STACK[0x500];
    v220 = STACK[0x4F8];
    LODWORD(v221) = STACK[0x4F0];
    LODWORD(v222) = STACK[0x4E8];
    v223 = STACK[0x4E0];
    do
    {
      LODWORD(STACK[0x4E0]) = v223;
      LODWORD(STACK[0x4F8]) = v220;
      LODWORD(STACK[0x4E8]) = v222;
      LODWORD(STACK[0x518]) = v215;
      LODWORD(STACK[0x510]) = v217;
      LODWORD(STACK[0x508]) = v218;
      LODWORD(STACK[0x528]) = v213;
      LODWORD(STACK[0x500]) = v219;
      LODWORD(STACK[0x520]) = v214;
      LODWORD(STACK[0x530]) = v211;
      LODWORD(STACK[0x4F0]) = v221;
      LODWORD(STACK[0x428]) = v189;
      LODWORD(STACK[0x420]) = v189 + 3;
      v224 = *(v855 + v189 + 3);
      v225 = 1323793521 * (v224 - LODWORD(STACK[0x910]));
      v226 = v225 ^ LODWORD(STACK[0x930]);
      LODWORD(STACK[0x410]) = v189 + 2;
      v227 = *(v855 + v189 + 2);
      LODWORD(STACK[0x3D0]) = v227;
      v228 = -1278174867 * (v227 - v226);
      LODWORD(STACK[0x3F8]) = v189 + 1;
      v229 = *(v855 + v189 + 1);
      LODWORD(STACK[0x3D8]) = v229;
      v230 = 220278491 * (v229 + v201 - 1278174867 * (v227 - v226));
      v231 = *(v855 + v189);
      v232 = v231 + v200;
      v233 = v231;
      LODWORD(STACK[0x3C0]) = v231;
      v234 = 2083039101 * (v232 - v230);
      LODWORD(STACK[0x400]) = v189 + 7;
      v235 = *(v855 + v189 + 7);
      v236 = -108454649 * (v235 + LODWORD(STACK[0x438]) + v234);
      LODWORD(STACK[0x3F0]) = v189 + 6;
      v237 = *(v855 + v189 + 6);
      LODWORD(STACK[0x35C]) = v237;
      v238 = -912635147 * (v237 - (v236 ^ v225));
      LODWORD(STACK[0x3E0]) = v189 + 5;
      v239 = *(v855 + v189 + 5);
      LODWORD(STACK[0x354]) = v239;
      LODWORD(STACK[0x3C8]) = v189 + 4;
      v240 = *(v855 + v189 + 4);
      v241 = 2121577225 * (v228 + v239 + v238);
      LODWORD(STACK[0x3B0]) = v240;
      v242 = 2143208385 * (v230 + v240 + v241);
      LODWORD(STACK[0x390]) = v189 + 15;
      LODWORD(STACK[0x3B8]) = v189 + 11;
      v243 = *(v855 + v189 + 11);
      LODWORD(STACK[0x418]) = v235;
      LODWORD(STACK[0x398]) = v224;
      v244 = *(v855 + v189 + 15);
      LODWORD(STACK[0x3A0]) = v244;
      LODWORD(STACK[0x408]) = v243;
      v245 = v224 ^ v235 ^ v243 ^ v244;
      v246 = v204 + 2 * (v204 ^ LODWORD(STACK[0x430]));
      v850 = LODWORD(STACK[0x470]) + 1833766748;
      v247 = v189 + (v850 ^ 0x339);
      LODWORD(STACK[0x324]) = v247;
      v248 = v224 | (v227 << 8) | (v233 << 24) | (v229 << 16);
      LODWORD(STACK[0x344]) = v189 + 9;
      v249 = *(v855 + v189 + 9);
      LODWORD(STACK[0x3E8]) = v249;
      LODWORD(STACK[0x330]) = v189 + 8;
      v250 = *(v855 + v189 + 8);
      LODWORD(STACK[0x388]) = v250;
      v251 = (v249 << 8) | (v250 << 16);
      LODWORD(STACK[0x328]) = v189 + 10;
      v252 = *(v855 + v189 + 10);
      LODWORD(STACK[0x34C]) = v252;
      v253 = v243 | ((v251 | v252) << 8);
      v254 = v189 + 14;
      LODWORD(STACK[0x348]) = v189 + 14;
      v255 = v189 + 13;
      LODWORD(STACK[0x338]) = v255;
      v256 = *(v855 + v255);
      LODWORD(STACK[0x350]) = v256;
      v257 = *(v855 + v254);
      LODWORD(STACK[0x3A8]) = v257;
      v258 = *(v855 + v247);
      LODWORD(STACK[0x358]) = v258;
      v259 = (v257 << 8) | (v256 << 16) | (v258 << 24) | v244;
      v260 = v245 & 1;
      if (v245)
      {
        v261 = v259;
      }

      else
      {
        v261 = v224 | (v227 << 8) | (v233 << 24) | (v229 << 16);
      }

      if (v245)
      {
        v259 = v253;
        v253 = v235 | (((v239 << 8) | (v240 << 16) | v237) << 8);
      }

      else
      {
        v248 = v235 | (((v239 << 8) | (v240 << 16) | v237) << 8);
      }

      v262 = (v245 >> 1) & 1;
      LODWORD(STACK[0x430]) = v262;
      if (v262)
      {
        v263 = v261;
      }

      else
      {
        v263 = v253;
      }

      LODWORD(STACK[0x568]) = v263;
      if (v262)
      {
        v264 = v253;
      }

      else
      {
        v264 = v261;
      }

      LODWORD(STACK[0x550]) = v264;
      if (v262)
      {
        v265 = v259;
      }

      else
      {
        v265 = v248;
      }

      LODWORD(STACK[0x560]) = v265;
      if (v262)
      {
        v266 = v248;
      }

      else
      {
        v266 = v259;
      }

      LODWORD(STACK[0x558]) = v266;
      v267 = v246 ^ 1;
      LODWORD(STACK[0x384]) = v260;
      v268 = (v260 | (2 * (v262 ^ v260))) ^ 1;
      v269 = *(v216 + 4 * STACK[0x460]);
      v270 = *(v216 + 4 * v854);
      v271 = v268 - v267;
      LODWORD(STACK[0x2F0]) = v268 - v267;
      STACK[0x438] = v269 ^ LODWORD(STACK[0x448]) ^ v270;
      v272 = v238 + v236;
      v273 = v241 ^ v272;
      v274 = v241 ^ (v238 + v236) ^ LODWORD(STACK[0x760]);
      v275 = v234 - v242;
      v276 = v242 + (v241 ^ v272);
      v277 = v272 ^ LODWORD(STACK[0x7F8]);
      v278 = v272 ^ LODWORD(STACK[0x690]);
      v279 = v272;
      v280 = (v271 & 1) == 0;
      if (v271)
      {
        v281 = v272 ^ LODWORD(STACK[0x690]);
      }

      else
      {
        v281 = v273 ^ LODWORD(STACK[0x760]);
      }

      LODWORD(STACK[0x7F8]) = v281;
      if ((v271 & 1) == 0)
      {
        v274 = v276 ^ v212;
      }

      LODWORD(STACK[0x908]) = v274;
      if (v271)
      {
        v282 = v277;
      }

      else
      {
        v282 = v278;
      }

      LODWORD(STACK[0x8E8]) = v282;
      if (v271)
      {
        v283 = v276 ^ v212;
      }

      else
      {
        v283 = v277;
      }

      LODWORD(STACK[0x690]) = v283;
      v284 = (v275 - v276) ^ v236;
      v285 = (v275 - v276) ^ LODWORD(STACK[0x7B8]);
      v286 = v275 - v276;
      v287 = v276 ^ LODWORD(STACK[0x480]);
      v288 = v284 ^ LODWORD(STACK[0x478]);
      if (v271)
      {
        v289 = v285;
      }

      else
      {
        v289 = v276 ^ LODWORD(STACK[0x480]);
      }

      LODWORD(STACK[0x760]) = v289;
      if (v271)
      {
        v285 = v288;
      }

      LODWORD(STACK[0x7B8]) = v285;
      v290 = v279 ^ LODWORD(STACK[0x490]);
      if ((v271 & 1) == 0)
      {
        v287 = v279 ^ LODWORD(STACK[0x490]);
      }

      LODWORD(STACK[0x2E0]) = v287;
      if ((v271 & 1) == 0)
      {
        v290 = v288;
      }

      LODWORD(STACK[0x2F8]) = v290;
      LODWORD(STACK[0x540]) = *(v216 + 4 * STACK[0x210]) ^ v269;
      v291 = v286 ^ LODWORD(STACK[0x688]);
      v292 = v273 ^ LODWORD(STACK[0x6B8]);
      v293 = v279 ^ LODWORD(STACK[0x800]);
      v294 = v286 ^ LODWORD(STACK[0x5D0]);
      if (v271)
      {
        v295 = v286 ^ LODWORD(STACK[0x688]);
      }

      else
      {
        v295 = v273 ^ LODWORD(STACK[0x6B8]);
      }

      LODWORD(STACK[0x6B8]) = v295;
      if ((v271 & 1) == 0)
      {
        v292 = v294;
      }

      LODWORD(STACK[0x5D0]) = v292;
      if (v271)
      {
        v291 = v293;
      }

      LODWORD(STACK[0x490]) = v291;
      if (v271)
      {
        v296 = v294;
      }

      else
      {
        v296 = v293;
      }

      LODWORD(STACK[0x310]) = v296;
      v297 = v284 ^ LODWORD(STACK[0x7E0]);
      v298 = v276 ^ LODWORD(STACK[0x818]);
      v299 = v273 ^ LODWORD(STACK[0x730]);
      v300 = v276 ^ LODWORD(STACK[0x580]);
      if (v271)
      {
        v301 = v273 ^ LODWORD(STACK[0x730]);
      }

      else
      {
        v301 = v276 ^ LODWORD(STACK[0x818]);
      }

      LODWORD(STACK[0x800]) = v301;
      if ((v271 & 1) == 0)
      {
        v298 = v297;
      }

      LODWORD(STACK[0x818]) = v298;
      if ((v271 & 1) == 0)
      {
        v297 = v300;
      }

      LODWORD(STACK[0x580]) = v297;
      if (v271)
      {
        v302 = v300;
      }

      else
      {
        v302 = v299;
      }

      LODWORD(STACK[0x7E0]) = v302;
      v303 = v286 ^ LODWORD(STACK[0x830]);
      v304 = v273 ^ LODWORD(STACK[0x5C8]);
      v305 = v286 ^ LODWORD(STACK[0x8C0]);
      v306 = v279 ^ LODWORD(STACK[0x778]);
      if (v271)
      {
        v307 = v273 ^ LODWORD(STACK[0x5C8]);
      }

      else
      {
        v307 = v286 ^ LODWORD(STACK[0x8C0]);
      }

      if ((v271 & 1) == 0)
      {
        v305 = v279 ^ LODWORD(STACK[0x778]);
      }

      LODWORD(STACK[0x5C8]) = v305;
      if (v271)
      {
        v308 = v306;
      }

      else
      {
        v308 = v303;
      }

      if ((v271 & 1) == 0)
      {
        v303 = v304;
      }

      LODWORD(STACK[0x320]) = v303;
      v309 = v276 ^ LODWORD(STACK[0x4A0]);
      v310 = v286 ^ LODWORD(STACK[0x828]);
      v311 = v279 ^ LODWORD(STACK[0x4D8]);
      v312 = v284 ^ LODWORD(STACK[0x4D0]);
      if (v271)
      {
        v313 = v276 ^ LODWORD(STACK[0x4A0]);
      }

      else
      {
        v313 = v279 ^ LODWORD(STACK[0x4D8]);
      }

      LODWORD(STACK[0x828]) = v313;
      if ((v271 & 1) == 0)
      {
        v311 = v312;
      }

      LODWORD(STACK[0x778]) = v311;
      if (v271)
      {
        v309 = v310;
      }

      LODWORD(STACK[0x31C]) = v309;
      if (v271)
      {
        v314 = v312;
      }

      else
      {
        v314 = v310;
      }

      LODWORD(STACK[0x730]) = v314;
      v315 = v273 ^ LODWORD(STACK[0x7A8]);
      v316 = v286 ^ LODWORD(STACK[0x6D0]);
      v317 = v284 ^ LODWORD(STACK[0x7A0]);
      v318 = v284 ^ LODWORD(STACK[0x610]);
      if (v271)
      {
        v319 = v273 ^ LODWORD(STACK[0x7A8]);
      }

      else
      {
        v319 = v284 ^ LODWORD(STACK[0x610]);
      }

      LODWORD(STACK[0x610]) = v319;
      if ((v271 & 1) == 0)
      {
        v318 = v316;
      }

      LODWORD(STACK[0x7A8]) = v318;
      if (v271)
      {
        v315 = v317;
      }

      LODWORD(STACK[0x7A0]) = v315;
      if (v271)
      {
        v320 = v316;
      }

      else
      {
        v320 = v317;
      }

      LODWORD(STACK[0x478]) = v320;
      v321 = v284 ^ LODWORD(STACK[0x820]);
      v322 = v276 ^ LODWORD(STACK[0x590]);
      v323 = v276 ^ LODWORD(STACK[0x718]);
      v324 = v284 ^ LODWORD(STACK[0x780]);
      if (v271)
      {
        v325 = v284 ^ LODWORD(STACK[0x820]);
      }

      else
      {
        v325 = v284 ^ LODWORD(STACK[0x780]);
      }

      LODWORD(STACK[0x780]) = v325;
      if (v271)
      {
        v326 = v324;
      }

      else
      {
        v326 = v322;
      }

      if ((v271 & 1) == 0)
      {
        v322 = v323;
      }

      LODWORD(STACK[0x4A0]) = v322;
      if (v271)
      {
        v327 = v323;
      }

      else
      {
        v327 = v321;
      }

      v328 = v273 ^ LODWORD(STACK[0x850]);
      v329 = v284 ^ LODWORD(STACK[0x878]);
      v330 = v286 ^ LODWORD(STACK[0x570]);
      if (v271)
      {
        v331 = v273 ^ LODWORD(STACK[0x850]);
      }

      else
      {
        v331 = v286 ^ LODWORD(STACK[0x570]);
      }

      LODWORD(STACK[0x538]) = v331;
      if ((v271 & 1) == 0)
      {
        v330 = v329;
      }

      LODWORD(STACK[0x850]) = v330;
      v332 = v273 ^ LODWORD(STACK[0x810]);
      if ((v271 & 1) == 0)
      {
        v329 = v273 ^ LODWORD(STACK[0x810]);
      }

      LODWORD(STACK[0x810]) = v329;
      if (v271)
      {
        v328 = v332;
      }

      LODWORD(STACK[0x6D0]) = v328;
      v333 = v273 ^ LODWORD(STACK[0x598]);
      v334 = v279 ^ LODWORD(STACK[0x790]);
      v335 = v273 ^ LODWORD(STACK[0x6E0]);
      v336 = v273;
      v337 = v279 ^ LODWORD(STACK[0x880]);
      if (v271)
      {
        v338 = v279 ^ LODWORD(STACK[0x790]);
      }

      else
      {
        v338 = v279 ^ LODWORD(STACK[0x880]);
      }

      if (v271)
      {
        v334 = v273 ^ LODWORD(STACK[0x598]);
      }

      LODWORD(STACK[0x790]) = v334;
      if (v271)
      {
        v339 = v335;
      }

      else
      {
        v339 = v333;
      }

      if (v271)
      {
        v340 = v337;
      }

      else
      {
        v340 = v335;
      }

      LODWORD(STACK[0x2E8]) = v340;
      v341 = v279 ^ LODWORD(STACK[0x768]);
      v342 = v273 ^ LODWORD(STACK[0x740]);
      v343 = v286 ^ LODWORD(STACK[0x5D8]);
      v344 = v286 ^ LODWORD(STACK[0x788]);
      if (v271)
      {
        v345 = v286 ^ LODWORD(STACK[0x5D8]);
      }

      else
      {
        v345 = v273 ^ LODWORD(STACK[0x740]);
      }

      LODWORD(STACK[0x740]) = v345;
      if (v271)
      {
        v346 = v341;
      }

      else
      {
        v346 = v343;
      }

      if (v271)
      {
        v341 = v344;
      }

      LODWORD(STACK[0x308]) = v341;
      if (v271)
      {
        v347 = v342;
      }

      else
      {
        v347 = v344;
      }

      v348 = v279 ^ LODWORD(STACK[0x5B0]);
      v349 = v286 ^ LODWORD(STACK[0x698]);
      v350 = v276 ^ LODWORD(STACK[0x6A8]);
      v351 = v273 ^ LODWORD(STACK[0x748]);
      if (v271)
      {
        v352 = v279 ^ LODWORD(STACK[0x5B0]);
      }

      else
      {
        v352 = v273 ^ LODWORD(STACK[0x748]);
      }

      LODWORD(STACK[0x698]) = v352;
      if ((v271 & 1) == 0)
      {
        v351 = v350;
      }

      LODWORD(STACK[0x8F0]) = v351;
      if ((v271 & 1) == 0)
      {
        v350 = v349;
      }

      LODWORD(STACK[0x688]) = v350;
      if (v271)
      {
        v348 = v349;
      }

      LODWORD(STACK[0x6A8]) = v348;
      v353 = v284 ^ LODWORD(STACK[0x7E8]);
      v354 = v286 ^ LODWORD(STACK[0x5B8]);
      v355 = v273 ^ LODWORD(STACK[0x630]);
      v356 = v284 ^ LODWORD(STACK[0x808]);
      if (v271)
      {
        v357 = v284 ^ LODWORD(STACK[0x7E8]);
      }

      else
      {
        v357 = v286 ^ LODWORD(STACK[0x5B8]);
      }

      LODWORD(STACK[0x718]) = v357;
      if (v271)
      {
        v358 = v355;
      }

      else
      {
        v358 = v353;
      }

      if (v271)
      {
        v359 = v354;
      }

      else
      {
        v359 = v356;
      }

      if (v271)
      {
        v360 = v356;
      }

      else
      {
        v360 = v355;
      }

      LODWORD(STACK[0x630]) = v360;
      if (v271)
      {
        v361 = v273 ^ LODWORD(STACK[0x728]);
      }

      else
      {
        v361 = v286 ^ LODWORD(STACK[0x890]);
      }

      if (v271)
      {
        v362 = v286 ^ LODWORD(STACK[0x5A8]);
      }

      else
      {
        v362 = v273 ^ LODWORD(STACK[0x728]);
      }

      if (v271)
      {
        v363 = v279 ^ LODWORD(STACK[0x798]);
      }

      else
      {
        v363 = v286 ^ LODWORD(STACK[0x5A8]);
      }

      if (v271)
      {
        v364 = v286 ^ LODWORD(STACK[0x890]);
      }

      else
      {
        v364 = v279 ^ LODWORD(STACK[0x798]);
      }

      v365 = v279 ^ LODWORD(STACK[0x680]);
      v366 = v273 ^ LODWORD(STACK[0x620]);
      v367 = v279 ^ LODWORD(STACK[0x5C0]);
      v368 = v336 ^ LODWORD(STACK[0x7C8]);
      if (v280)
      {
        v369 = v336 ^ LODWORD(STACK[0x620]);
      }

      else
      {
        v369 = v279 ^ LODWORD(STACK[0x5C0]);
      }

      LODWORD(STACK[0x748]) = v369;
      if (v280)
      {
        v370 = v368;
      }

      else
      {
        v370 = v366;
      }

      LODWORD(STACK[0x7C8]) = v370;
      if (v280)
      {
        v371 = v367;
      }

      else
      {
        v371 = v365;
      }

      LODWORD(STACK[0x5B8]) = v371;
      if (v280)
      {
        v372 = v365;
      }

      else
      {
        v372 = v368;
      }

      LODWORD(STACK[0x620]) = v372;
      v373 = v276;
      v374 = v276 ^ LODWORD(STACK[0x7D0]);
      v375 = v276 ^ LODWORD(STACK[0x578]);
      v376 = v276 ^ LODWORD(STACK[0x6F0]);
      v377 = v284 ^ LODWORD(STACK[0x6A0]);
      if (v280)
      {
        v378 = v276 ^ LODWORD(STACK[0x578]);
      }

      else
      {
        v378 = v284 ^ LODWORD(STACK[0x6A0]);
      }

      LODWORD(STACK[0x578]) = v378;
      if (v280)
      {
        v379 = v377;
      }

      else
      {
        v379 = v376;
      }

      LODWORD(STACK[0x7D0]) = v379;
      if (v280)
      {
        v380 = v376;
      }

      else
      {
        v380 = v374;
      }

      LODWORD(STACK[0x4D8]) = v380;
      if (v280)
      {
        v381 = v374;
      }

      else
      {
        v381 = v375;
      }

      LODWORD(STACK[0x680]) = v381;
      v382 = v276 ^ LODWORD(STACK[0x870]);
      v383 = v284 ^ LODWORD(STACK[0x7B0]);
      v384 = v276 ^ LODWORD(STACK[0x848]);
      if (v280)
      {
        v385 = v284 ^ LODWORD(STACK[0x7B0]);
      }

      else
      {
        v385 = v276 ^ LODWORD(STACK[0x870]);
      }

      LODWORD(STACK[0x878]) = v385;
      if (v280)
      {
        v386 = v382;
      }

      else
      {
        v386 = v384;
      }

      LODWORD(STACK[0x870]) = v386;
      v387 = v284 ^ LODWORD(STACK[0x628]);
      if (v280)
      {
        v388 = v384;
      }

      else
      {
        v388 = v284 ^ LODWORD(STACK[0x628]);
      }

      LODWORD(STACK[0x7B0]) = v388;
      if (v280)
      {
        v389 = v387;
      }

      else
      {
        v389 = v383;
      }

      LODWORD(STACK[0x480]) = v389;
      v390 = v336 ^ LODWORD(STACK[0x708]);
      v391 = v336 ^ LODWORD(STACK[0x5E0]);
      v392 = v336;
      v393 = v284 ^ LODWORD(STACK[0x660]);
      v394 = v286;
      v395 = v286 ^ LODWORD(STACK[0x638]);
      if (v280)
      {
        v396 = v336 ^ LODWORD(STACK[0x5E0]);
      }

      else
      {
        v396 = v336 ^ LODWORD(STACK[0x708]);
      }

      LODWORD(STACK[0x708]) = v396;
      if (v280)
      {
        v397 = v395;
      }

      else
      {
        v397 = v391;
      }

      LODWORD(STACK[0x638]) = v397;
      if (v280)
      {
        v398 = v393;
      }

      else
      {
        v398 = v395;
      }

      LODWORD(STACK[0x6F0]) = v398;
      if (v280)
      {
        v399 = v390;
      }

      else
      {
        v399 = v393;
      }

      LODWORD(STACK[0x570]) = v399;
      v400 = v286 ^ LODWORD(STACK[0x670]);
      v401 = v286 ^ LODWORD(STACK[0x840]);
      v402 = v279 ^ LODWORD(STACK[0x710]);
      v403 = v279 ^ LODWORD(STACK[0x6D8]);
      if (v280)
      {
        v404 = v286 ^ LODWORD(STACK[0x840]);
      }

      else
      {
        v404 = v286 ^ LODWORD(STACK[0x670]);
      }

      LODWORD(STACK[0x710]) = v404;
      if (v280)
      {
        v405 = v403;
      }

      else
      {
        v405 = v401;
      }

      LODWORD(STACK[0x6D8]) = v405;
      if (v280)
      {
        v406 = v400;
      }

      else
      {
        v406 = v402;
      }

      LODWORD(STACK[0x300]) = v406;
      if (v280)
      {
        v407 = v402;
      }

      else
      {
        v407 = v403;
      }

      LODWORD(STACK[0x670]) = v407;
      v408 = v279 ^ LODWORD(STACK[0x588]);
      v409 = v279 ^ LODWORD(STACK[0x720]);
      v410 = v276 ^ LODWORD(STACK[0x858]);
      v411 = v336 ^ LODWORD(STACK[0x5A0]);
      if (v280)
      {
        v412 = v279 ^ LODWORD(STACK[0x588]);
      }

      else
      {
        v412 = v276 ^ LODWORD(STACK[0x858]);
      }

      LODWORD(STACK[0x8F8]) = v412;
      if (v280)
      {
        v413 = v409;
      }

      else
      {
        v413 = v408;
      }

      LODWORD(STACK[0x858]) = v413;
      if (v280)
      {
        v414 = v411;
      }

      else
      {
        v414 = v409;
      }

      LODWORD(STACK[0x588]) = v414;
      if (v280)
      {
        v415 = v410;
      }

      else
      {
        v415 = v411;
      }

      LODWORD(STACK[0x4D0]) = v415;
      v416 = v279 ^ LODWORD(STACK[0x6B0]);
      v417 = v286 ^ LODWORD(STACK[0x8A0]);
      v418 = v279 ^ LODWORD(STACK[0x758]);
      v419 = v279;
      v420 = v286 ^ LODWORD(STACK[0x5F8]);
      LODWORD(STACK[0x548]) = v286;
      if (v280)
      {
        v421 = v416;
      }

      else
      {
        v421 = v417;
      }

      LODWORD(STACK[0x660]) = v421;
      if (v280)
      {
        v422 = v417;
      }

      else
      {
        v422 = v420;
      }

      if (v280)
      {
        v423 = v418;
      }

      else
      {
        v423 = v416;
      }

      if (v280)
      {
        v424 = v420;
      }

      else
      {
        v424 = v418;
      }

      LODWORD(STACK[0x5F8]) = v424;
      v425 = v284 ^ LODWORD(STACK[0x8B0]);
      v426 = v392 ^ LODWORD(STACK[0x750]);
      v427 = v419;
      v428 = v419 ^ LODWORD(STACK[0x678]);
      v429 = v284 ^ LODWORD(STACK[0x860]);
      if (v280)
      {
        v430 = v284 ^ LODWORD(STACK[0x860]);
      }

      else
      {
        v430 = v284 ^ LODWORD(STACK[0x8B0]);
      }

      LODWORD(STACK[0x860]) = v430;
      if (v280)
      {
        v431 = v425;
      }

      else
      {
        v431 = v428;
      }

      if (v280)
      {
        v432 = v428;
      }

      else
      {
        v432 = v426;
      }

      LODWORD(STACK[0x6B0]) = v432;
      if (!v280)
      {
        v426 = v429;
      }

      v433 = v276 ^ LODWORD(STACK[0x6CC]);
      v434 = v276 ^ LODWORD(STACK[0x6C0]);
      v435 = v276 ^ LODWORD(STACK[0x7C0]);
      v436 = v284 ^ LODWORD(STACK[0x618]);
      if (v280)
      {
        v437 = v276 ^ LODWORD(STACK[0x7C0]);
      }

      else
      {
        v437 = v276 ^ LODWORD(STACK[0x6C0]);
      }

      LODWORD(STACK[0x720]) = v437;
      if (v280)
      {
        v438 = v434;
      }

      else
      {
        v438 = v436;
      }

      LODWORD(STACK[0x840]) = v438;
      if (!v280)
      {
        v436 = v433;
      }

      LODWORD(STACK[0x678]) = v436;
      if (v280)
      {
        v439 = v433;
      }

      else
      {
        v439 = v435;
      }

      LODWORD(STACK[0x6CC]) = v439;
      v440 = v284 ^ LODWORD(STACK[0x868]);
      v441 = v284 ^ LODWORD(STACK[0x608]);
      v442 = v427 ^ LODWORD(STACK[0x770]);
      LODWORD(STACK[0x910]) = v427;
      v443 = STACK[0x5E8];
      LODWORD(STACK[0x930]) = v392;
      v444 = v392 ^ v443;
      if (v280)
      {
        v445 = v440;
      }

      else
      {
        v445 = v441;
      }

      LODWORD(STACK[0x7C0]) = v445;
      if (v280)
      {
        v440 = v444;
      }

      LODWORD(STACK[0x5E8]) = v440;
      if (v280)
      {
        v446 = v442;
      }

      else
      {
        v446 = v444;
      }

      LODWORD(STACK[0x770]) = v446;
      if (v280)
      {
        v447 = v441;
      }

      else
      {
        v447 = v442;
      }

      LODWORD(STACK[0x5E0]) = v447;
      v448 = STACK[0x5F0];
      LODWORD(STACK[0x900]) = v373;
      v449 = v373 ^ v448;
      v450 = v284 ^ LODWORD(STACK[0x838]);
      v451 = v392 ^ LODWORD(STACK[0x738]);
      v452 = v373 ^ LODWORD(STACK[0x600]);
      if (v280)
      {
        v453 = v284 ^ LODWORD(STACK[0x838]);
      }

      else
      {
        v453 = v449;
      }

      if (v280)
      {
        v450 = v373 ^ LODWORD(STACK[0x600]);
      }

      LODWORD(STACK[0x600]) = v450;
      if (v280)
      {
        v454 = v451;
      }

      else
      {
        v454 = v452;
      }

      if (!v280)
      {
        v449 = v451;
      }

      LODWORD(STACK[0x5A0]) = v449;
      v455 = v392 ^ LODWORD(STACK[0x6E8]);
      v456 = v373 ^ LODWORD(STACK[0x700]);
      v457 = v394 ^ LODWORD(STACK[0x668]);
      v458 = v427 ^ LODWORD(STACK[0x6F8]);
      if (v280)
      {
        v459 = v394 ^ LODWORD(STACK[0x668]);
      }

      else
      {
        v459 = v373 ^ LODWORD(STACK[0x700]);
      }

      LODWORD(STACK[0x700]) = v459;
      if (v280)
      {
        v460 = v456;
      }

      else
      {
        v460 = v455;
      }

      LODWORD(STACK[0x6F8]) = v460;
      if (!v280)
      {
        v455 = v458;
      }

      LODWORD(STACK[0x668]) = v455;
      if (v280)
      {
        v461 = v458;
      }

      else
      {
        v461 = v457;
      }

      LODWORD(STACK[0x5B0]) = v461;
      v462 = ((LODWORD(STACK[0x2F0]) ^ (LODWORD(STACK[0x2F0]) >> 1)) & 1) == 0;
      v463 = STACK[0x7B8];
      if ((LODWORD(STACK[0x2F0]) ^ (LODWORD(STACK[0x2F0]) >> 1)))
      {
        v464 = STACK[0x7B8];
      }

      else
      {
        v464 = STACK[0x2E0];
      }

      if ((LODWORD(STACK[0x2F0]) ^ (LODWORD(STACK[0x2F0]) >> 1)))
      {
        v463 = STACK[0x2E0];
      }

      LODWORD(STACK[0x7B8]) = v463;
      if (v462)
      {
        v465 = v307;
      }

      else
      {
        v465 = v308;
      }

      LODWORD(STACK[0x8C0]) = v465;
      if (v462)
      {
        v466 = v308;
      }

      else
      {
        v466 = v307;
      }

      LODWORD(STACK[0x830]) = v466;
      v467 = STACK[0x828];
      if (v462)
      {
        v468 = STACK[0x828];
      }

      else
      {
        v468 = STACK[0x730];
      }

      if (v462)
      {
        v467 = STACK[0x730];
      }

      LODWORD(STACK[0x828]) = v467;
      v469 = STACK[0x818];
      v470 = STACK[0x7E0];
      if (v462)
      {
        v471 = STACK[0x7E0];
      }

      else
      {
        v471 = STACK[0x818];
      }

      LODWORD(STACK[0x730]) = v471;
      if (v462)
      {
        v472 = v469;
      }

      else
      {
        v472 = v470;
      }

      LODWORD(STACK[0x7E0]) = v472;
      if (v462)
      {
        v473 = STACK[0x2F8];
      }

      else
      {
        v473 = STACK[0x760];
      }

      if (v462)
      {
        v474 = STACK[0x760];
      }

      else
      {
        v474 = STACK[0x2F8];
      }

      if (v462)
      {
        v475 = v326;
      }

      else
      {
        v475 = v327;
      }

      LODWORD(STACK[0x590]) = v475;
      if (v462)
      {
        v476 = v327;
      }

      else
      {
        v476 = v326;
      }

      LODWORD(STACK[0x820]) = v476;
      v477 = STACK[0x800];
      v478 = STACK[0x580];
      if (v462)
      {
        v479 = STACK[0x800];
      }

      else
      {
        v479 = STACK[0x580];
      }

      LODWORD(STACK[0x818]) = v479;
      if (v462)
      {
        v480 = v478;
      }

      else
      {
        v480 = v477;
      }

      LODWORD(STACK[0x580]) = v480;
      if (v462)
      {
        v481 = v339;
      }

      else
      {
        v481 = v338;
      }

      LODWORD(STACK[0x598]) = v481;
      if (v462)
      {
        v482 = v338;
      }

      else
      {
        v482 = v339;
      }

      LODWORD(STACK[0x880]) = v482;
      if (v462)
      {
        v483 = v346;
      }

      else
      {
        v483 = v347;
      }

      LODWORD(STACK[0x5D8]) = v483;
      if (v462)
      {
        v484 = v347;
      }

      else
      {
        v484 = v346;
      }

      LODWORD(STACK[0x788]) = v484;
      v485 = STACK[0x7F8];
      v486 = STACK[0x690];
      if (v462)
      {
        v487 = STACK[0x7F8];
      }

      else
      {
        v487 = STACK[0x690];
      }

      LODWORD(STACK[0x760]) = v487;
      if (v462)
      {
        v488 = v486;
      }

      else
      {
        v488 = v485;
      }

      LODWORD(STACK[0x7F8]) = v488;
      if (v462)
      {
        v489 = v358;
      }

      else
      {
        v489 = v359;
      }

      LODWORD(STACK[0x7E8]) = v489;
      if (v462)
      {
        v490 = v359;
      }

      else
      {
        v490 = v358;
      }

      LODWORD(STACK[0x808]) = v490;
      v491 = STACK[0x6B8];
      v492 = STACK[0x310];
      if (v462)
      {
        v493 = STACK[0x310];
      }

      else
      {
        v493 = STACK[0x6B8];
      }

      LODWORD(STACK[0x800]) = v493;
      if (v462)
      {
        v494 = v491;
      }

      else
      {
        v494 = v492;
      }

      LODWORD(STACK[0x6B8]) = v494;
      if (v462)
      {
        v495 = v363;
      }

      else
      {
        v495 = v361;
      }

      LODWORD(STACK[0x5A8]) = v495;
      if (v462)
      {
        v496 = v361;
      }

      else
      {
        v496 = v363;
      }

      LODWORD(STACK[0x890]) = v496;
      if (v462)
      {
        v497 = v362;
      }

      else
      {
        v497 = v364;
      }

      LODWORD(STACK[0x728]) = v497;
      if (v462)
      {
        v498 = v364;
      }

      else
      {
        v498 = v362;
      }

      LODWORD(STACK[0x798]) = v498;
      v499 = STACK[0x790];
      v500 = STACK[0x2E8];
      if (v462)
      {
        v501 = STACK[0x2E8];
      }

      else
      {
        v501 = STACK[0x790];
      }

      LODWORD(STACK[0x6E0]) = v501;
      if (v462)
      {
        v502 = v499;
      }

      else
      {
        v502 = v500;
      }

      LODWORD(STACK[0x790]) = v502;
      if (v462)
      {
        v503 = STACK[0x778];
      }

      else
      {
        v503 = STACK[0x31C];
      }

      if (v462)
      {
        v504 = STACK[0x31C];
      }

      else
      {
        v504 = STACK[0x778];
      }

      v505 = STACK[0x5C8];
      v506 = STACK[0x320];
      if (v462)
      {
        v507 = STACK[0x5C8];
      }

      else
      {
        v507 = STACK[0x320];
      }

      LODWORD(STACK[0x778]) = v507;
      if (v462)
      {
        v508 = v506;
      }

      else
      {
        v508 = v505;
      }

      LODWORD(STACK[0x5C8]) = v508;
      v509 = STACK[0x908];
      v510 = STACK[0x8E8];
      if (v462)
      {
        v511 = STACK[0x8E8];
      }

      else
      {
        v511 = STACK[0x908];
      }

      LODWORD(STACK[0x690]) = v511;
      if (v462)
      {
        v512 = v509;
      }

      else
      {
        v512 = v510;
      }

      LODWORD(STACK[0x8E8]) = v512;
      if (v462)
      {
        v513 = v422;
      }

      else
      {
        v513 = v423;
      }

      LODWORD(STACK[0x8A0]) = v513;
      if (v462)
      {
        v514 = v423;
      }

      else
      {
        v514 = v422;
      }

      LODWORD(STACK[0x758]) = v514;
      v515 = STACK[0x740];
      v516 = STACK[0x308];
      if (v462)
      {
        v517 = STACK[0x308];
      }

      else
      {
        v517 = STACK[0x740];
      }

      LODWORD(STACK[0x768]) = v517;
      if (v462)
      {
        v518 = v515;
      }

      else
      {
        v518 = v516;
      }

      LODWORD(STACK[0x740]) = v518;
      v519 = LODWORD(STACK[0x540]);
      v520 = *(v849 + (v519 ^ STACK[0x940]));
      v521 = *(v849 + STACK[0x940]);
      if (v462)
      {
        v522 = v431;
      }

      else
      {
        v522 = v426;
      }

      LODWORD(STACK[0x8B0]) = v522;
      if (v462)
      {
        v523 = v426;
      }

      else
      {
        v523 = v431;
      }

      LODWORD(STACK[0x750]) = v523;
      v524 = STACK[0x65C];
      LODWORD(STACK[0x308]) = v521 ^ LODWORD(STACK[0x65C]);
      v525 = v524;
      v526 = v520 ^ v521;
      if (v462)
      {
        v527 = v453;
      }

      else
      {
        v527 = v454;
      }

      LODWORD(STACK[0x838]) = v527;
      if (v462)
      {
        v528 = v454;
      }

      else
      {
        v528 = v453;
      }

      LODWORD(STACK[0x738]) = v528;
      v529 = STACK[0x878];
      v530 = STACK[0x7B0];
      if (v462)
      {
        v531 = STACK[0x7B0];
      }

      else
      {
        v531 = STACK[0x878];
      }

      LODWORD(STACK[0x848]) = v531;
      if (v462)
      {
        v532 = v529;
      }

      else
      {
        v532 = v530;
      }

      LODWORD(STACK[0x7B0]) = v532;
      v533 = STACK[0x850];
      v534 = STACK[0x6D0];
      if (v462)
      {
        v535 = STACK[0x850];
      }

      else
      {
        v535 = STACK[0x6D0];
      }

      LODWORD(STACK[0x878]) = v535;
      if (v462)
      {
        v536 = v534;
      }

      else
      {
        v536 = v533;
      }

      LODWORD(STACK[0x850]) = v536;
      v537 = STACK[0x7A8];
      v538 = STACK[0x7A0];
      if (v462)
      {
        v539 = STACK[0x7A8];
      }

      else
      {
        v539 = STACK[0x7A0];
      }

      LODWORD(STACK[0x6D0]) = v539;
      if (v462)
      {
        v540 = v538;
      }

      else
      {
        v540 = v537;
      }

      LODWORD(STACK[0x7A8]) = v540;
      v541 = STACK[0x610];
      v542 = STACK[0x478];
      if (v462)
      {
        v543 = STACK[0x478];
      }

      else
      {
        v543 = STACK[0x610];
      }

      LODWORD(STACK[0x7A0]) = v543;
      if (v462)
      {
        v544 = v541;
      }

      else
      {
        v544 = v542;
      }

      LODWORD(STACK[0x610]) = v544;
      v545 = STACK[0x27C];
      LODWORD(STACK[0x310]) = LODWORD(STACK[0x220]) ^ LODWORD(STACK[0x27C]) ^ LODWORD(STACK[0x270]) ^ LODWORD(STACK[0x260]) ^ LODWORD(STACK[0x218]) ^ (16843009 * v519);
      v546 = STACK[0x7C8];
      v547 = STACK[0x5B8];
      if (v462)
      {
        v548 = STACK[0x5B8];
      }

      else
      {
        v548 = STACK[0x7C8];
      }

      LODWORD(STACK[0x5C0]) = v548;
      if (v462)
      {
        v549 = v546;
      }

      else
      {
        v549 = v547;
      }

      LODWORD(STACK[0x7C8]) = v549;
      v550 = STACK[0x718];
      v551 = STACK[0x630];
      if (v462)
      {
        v552 = STACK[0x718];
      }

      else
      {
        v552 = STACK[0x630];
      }

      LODWORD(STACK[0x5B8]) = v552;
      if (v462)
      {
        v553 = v551;
      }

      else
      {
        v553 = v550;
      }

      LODWORD(STACK[0x630]) = v553;
      v554 = STACK[0x780];
      v555 = STACK[0x4A0];
      if (v462)
      {
        v556 = STACK[0x4A0];
      }

      else
      {
        v556 = STACK[0x780];
      }

      LODWORD(STACK[0x718]) = v556;
      if (v462)
      {
        v557 = v554;
      }

      else
      {
        v557 = v555;
      }

      LODWORD(STACK[0x780]) = v557;
      v558 = STACK[0x840];
      v559 = STACK[0x6CC];
      if (v462)
      {
        v560 = STACK[0x840];
      }

      else
      {
        v560 = STACK[0x6CC];
      }

      LODWORD(STACK[0x6C0]) = v560;
      if (v462)
      {
        v561 = v559;
      }

      else
      {
        v561 = v558;
      }

      LODWORD(STACK[0x6CC]) = v561;
      v562 = STACK[0x7D0];
      v563 = STACK[0x680];
      if (v462)
      {
        v564 = STACK[0x7D0];
      }

      else
      {
        v564 = STACK[0x680];
      }

      LODWORD(STACK[0x6A0]) = v564;
      if (v462)
      {
        v565 = v563;
      }

      else
      {
        v565 = v562;
      }

      LODWORD(STACK[0x7D0]) = v565;
      v566 = *(STACK[0x7D8] + STACK[0x438]);
      LODWORD(STACK[0x320]) = v566;
      v567 = STACK[0x20C];
      v568 = v566 ^ LODWORD(STACK[0x458]);
      v569 = STACK[0x568];
      v570 = STACK[0x268];
      v571 = ((*(STACK[0x268] + ((v566 ^ LOBYTE(STACK[0x458]) ^ HIBYTE(LODWORD(STACK[0x568]))) ^ v567)) ^ v545) << 16) | ((*(STACK[0x268] + ((v566 ^ LOBYTE(STACK[0x458]) ^ HIWORD(LODWORD(STACK[0x568]))) ^ v567)) ^ v545) << 8);
      v572 = STACK[0x748];
      v573 = STACK[0x620];
      if (v462)
      {
        v574 = STACK[0x620];
      }

      else
      {
        v574 = STACK[0x748];
      }

      LODWORD(STACK[0x680]) = v574;
      if (v462)
      {
        v575 = v572;
      }

      else
      {
        v575 = v573;
      }

      LODWORD(STACK[0x620]) = v575;
      v576 = STACK[0x698];
      v577 = STACK[0x688];
      if (v462)
      {
        v578 = STACK[0x698];
      }

      else
      {
        v578 = STACK[0x688];
      }

      LODWORD(STACK[0x748]) = v578;
      if (v462)
      {
        v579 = v577;
      }

      else
      {
        v579 = v576;
      }

      LODWORD(STACK[0x698]) = v579;
      v580 = STACK[0x560];
      v581 = ((*(v570 + ((v568 ^ HIBYTE(LODWORD(STACK[0x560]))) ^ v567)) ^ v545) << 16) | ((*(v570 + ((v568 ^ HIWORD(LODWORD(STACK[0x560]))) ^ v567)) ^ v545) << 8) | (*(v570 + ((v568 ^ BYTE1(LODWORD(STACK[0x560]))) ^ v567)) ^ v545);
      v582 = STACK[0x870];
      v583 = STACK[0x480];
      if (v462)
      {
        v584 = STACK[0x480];
      }

      else
      {
        v584 = STACK[0x870];
      }

      LODWORD(STACK[0x628]) = v584;
      if (v462)
      {
        v585 = v582;
      }

      else
      {
        v585 = v583;
      }

      LODWORD(STACK[0x870]) = v585;
      v586 = STACK[0x5D0];
      v587 = STACK[0x490];
      if (v462)
      {
        v588 = STACK[0x490];
      }

      else
      {
        v588 = STACK[0x5D0];
      }

      LODWORD(STACK[0x688]) = v588;
      if (v462)
      {
        v589 = v586;
      }

      else
      {
        v589 = v587;
      }

      LODWORD(STACK[0x5D0]) = v589;
      v590 = STACK[0x710];
      v591 = STACK[0x670];
      if (v462)
      {
        v592 = STACK[0x710];
      }

      else
      {
        v592 = STACK[0x670];
      }

      LODWORD(STACK[0x840]) = v592;
      if (v462)
      {
        v593 = v591;
      }

      else
      {
        v593 = v590;
      }

      LODWORD(STACK[0x710]) = v593;
      v594 = STACK[0x7C0];
      v595 = STACK[0x770];
      if (v462)
      {
        v596 = STACK[0x7C0];
      }

      else
      {
        v596 = STACK[0x770];
      }

      LODWORD(STACK[0x868]) = v596;
      if (v462)
      {
        v597 = v595;
      }

      else
      {
        v597 = v594;
      }

      LODWORD(STACK[0x770]) = v597;
      v598 = STACK[0x6D8];
      v599 = STACK[0x300];
      if (v462)
      {
        v600 = STACK[0x300];
      }

      else
      {
        v600 = STACK[0x6D8];
      }

      LODWORD(STACK[0x670]) = v600;
      if (v462)
      {
        v601 = v598;
      }

      else
      {
        v601 = v599;
      }

      LODWORD(STACK[0x6D8]) = v601;
      v602 = STACK[0x720];
      v603 = STACK[0x678];
      if (v462)
      {
        v604 = STACK[0x720];
      }

      else
      {
        v604 = STACK[0x678];
      }

      LODWORD(STACK[0x7C0]) = v604;
      if (v462)
      {
        v605 = v603;
      }

      else
      {
        v605 = v602;
      }

      LODWORD(STACK[0x618]) = v605;
      v606 = STACK[0x558];
      v607 = ((*(v570 + ((v568 ^ HIBYTE(LODWORD(STACK[0x558]))) ^ v567)) ^ v545) << 16) | ((*(v570 + ((v568 ^ HIWORD(LODWORD(STACK[0x558]))) ^ v567)) ^ v545) << 8) | (*(v570 + ((v568 ^ BYTE1(LODWORD(STACK[0x558]))) ^ v567)) ^ v545);
      v608 = (*(v570 + ((v569 ^ v568) ^ v567)) ^ v545) | ((v571 & 0xFFFFFF00 | (*(v570 + ((v568 ^ BYTE1(v569)) ^ v567)) ^ v545)) << 8);
      v609 = *(v570 + ((v580 ^ v568) ^ v567));
      v610 = STACK[0x858];
      v611 = STACK[0x4D0];
      if (v462)
      {
        v612 = STACK[0x858];
      }

      else
      {
        v612 = STACK[0x4D0];
      }

      LODWORD(STACK[0x720]) = v612;
      if (v462)
      {
        v613 = v611;
      }

      else
      {
        v613 = v610;
      }

      LODWORD(STACK[0x858]) = v613;
      v614 = (v609 ^ v545) | (v581 << 8);
      v615 = STACK[0x860];
      v616 = STACK[0x6B0];
      if (v462)
      {
        v617 = STACK[0x6B0];
      }

      else
      {
        v617 = STACK[0x860];
      }

      LODWORD(STACK[0x678]) = v617;
      if (v462)
      {
        v618 = v615;
      }

      else
      {
        v618 = v616;
      }

      LODWORD(STACK[0x860]) = v618;
      v619 = *(v570 + ((v568 ^ HIBYTE(LODWORD(STACK[0x550]))) ^ v567));
      v620 = v568 ^ HIWORD(LODWORD(STACK[0x550]));
      v621 = v568;
      v622 = STACK[0x550];
      v623 = ((v619 ^ v545) << 16) | ((*(v570 + (v620 ^ v567)) ^ v545) << 8);
      v624 = STACK[0x660];
      v625 = STACK[0x5F8];
      if (v462)
      {
        v626 = STACK[0x660];
      }

      else
      {
        v626 = STACK[0x5F8];
      }

      LODWORD(STACK[0x6B0]) = v626;
      if (v462)
      {
        v627 = v625;
      }

      else
      {
        v627 = v624;
      }

      LODWORD(STACK[0x5F8]) = v627;
      LODWORD(STACK[0x31C]) = v621;
      v628 = (*(v570 + ((v606 ^ v621) ^ v567)) ^ v545) | (v607 << 8);
      v629 = STACK[0x5E8];
      v630 = STACK[0x5E0];
      if (v462)
      {
        v631 = STACK[0x5E0];
      }

      else
      {
        v631 = STACK[0x5E8];
      }

      LODWORD(STACK[0x608]) = v631;
      if (v462)
      {
        v632 = v629;
      }

      else
      {
        v632 = v630;
      }

      LODWORD(STACK[0x5E8]) = v632;
      v633 = STACK[0x708];
      v634 = STACK[0x6F0];
      if (v462)
      {
        v635 = STACK[0x708];
      }

      else
      {
        v635 = STACK[0x6F0];
      }

      LODWORD(STACK[0x5E0]) = v635;
      if (v462)
      {
        v636 = v634;
      }

      else
      {
        v636 = v633;
      }

      LODWORD(STACK[0x660]) = v636;
      v637 = STACK[0x600];
      v638 = STACK[0x5A0];
      if (v462)
      {
        v639 = STACK[0x5A0];
      }

      else
      {
        v639 = STACK[0x600];
      }

      LODWORD(STACK[0x5F0]) = v639;
      if (v462)
      {
        v640 = v637;
      }

      else
      {
        v640 = v638;
      }

      LODWORD(STACK[0x600]) = v640;
      v641 = (*(v570 + ((v622 ^ v621) ^ v567)) ^ v545) | ((v623 & 0xFFFFFF00 | (*(v570 + ((v621 ^ BYTE1(v622)) ^ v567)) ^ v545)) << 8);
      v642 = STACK[0x700];
      v643 = STACK[0x668];
      if (v462)
      {
        v644 = STACK[0x668];
      }

      else
      {
        v644 = STACK[0x700];
      }

      LODWORD(STACK[0x6E8]) = v644;
      if (v462)
      {
        v645 = v642;
      }

      else
      {
        v645 = v643;
      }

      LODWORD(STACK[0x668]) = v645;
      v646 = STACK[0x6F8];
      v647 = STACK[0x5B0];
      if (v462)
      {
        v648 = STACK[0x6F8];
      }

      else
      {
        v648 = STACK[0x5B0];
      }

      LODWORD(STACK[0x700]) = v648;
      if (v462)
      {
        v649 = v647;
      }

      else
      {
        v649 = v646;
      }

      LODWORD(STACK[0x6F8]) = v649;
      v650 = STACK[0x8F0];
      v651 = STACK[0x6A8];
      if (v462)
      {
        v652 = STACK[0x6A8];
      }

      else
      {
        v652 = STACK[0x8F0];
      }

      LODWORD(STACK[0x5B0]) = v652;
      if (v462)
      {
        v653 = v650;
      }

      else
      {
        v653 = v651;
      }

      LODWORD(STACK[0x6A8]) = v653;
      v654 = STACK[0x578];
      v655 = STACK[0x4D8];
      if (v462)
      {
        v656 = STACK[0x4D8];
      }

      else
      {
        v656 = STACK[0x578];
      }

      LODWORD(STACK[0x6F0]) = v656;
      if (v462)
      {
        v657 = v654;
      }

      else
      {
        v657 = v655;
      }

      LODWORD(STACK[0x578]) = v657;
      v658 = STACK[0x638];
      v659 = STACK[0x570];
      if (v462)
      {
        v660 = STACK[0x570];
      }

      else
      {
        v660 = STACK[0x638];
      }

      LODWORD(STACK[0x708]) = v660;
      if (v462)
      {
        v661 = v658;
      }

      else
      {
        v661 = v659;
      }

      LODWORD(STACK[0x638]) = v661;
      v662 = STACK[0x900];
      LODWORD(STACK[0x4A0]) = v504;
      v663 = v504 ^ v662 ^ v608;
      LODWORD(STACK[0x480]) = v474;
      v664 = v474 ^ v662;
      v665 = *(v849 + (v851 ^ ((v474 ^ v662) >> 16))) ^ v521;
      v666 = *(v849 + (v851 ^ BYTE2(v663)));
      LODWORD(STACK[0x908]) = v526;
      v667 = v526 ^ v525;
      v668 = (v526 ^ v525 ^ v666 ^ v665) ^ 0x1026;
      v669 = STACK[0x8F8];
      v670 = STACK[0x588];
      if (v462)
      {
        v671 = STACK[0x588];
      }

      else
      {
        v671 = STACK[0x8F8];
      }

      LODWORD(STACK[0x5A0]) = v671;
      if (v462)
      {
        v672 = v669;
      }

      else
      {
        v672 = v670;
      }

      LODWORD(STACK[0x588]) = v672;
      LODWORD(STACK[0x490]) = v464;
      v673 = v464 ^ LODWORD(STACK[0x930]);
      v674 = *(v849 + (v464 ^ LOBYTE(STACK[0x930]) ^ v851));
      v675 = LODWORD(STACK[0x930]) ^ v614;
      LODWORD(STACK[0x4D8]) = v468;
      v676 = v468 ^ v675;
      v677 = v674 ^ v525;
      v678 = v526 ^ v521;
      LOBYTE(v675) = v526 ^ v521 ^ *(v849 + (v468 ^ v675 ^ v851)) ^ v677;
      v679 = v677;
      LODWORD(STACK[0x478]) = v473;
      v680 = STACK[0x910];
      v681 = v473 ^ LODWORD(STACK[0x910]);
      v682 = v526 ^ v521 ^ LODWORD(STACK[0x910]) ^ *(v849 + (v851 ^ BYTE1(v681)));
      v683 = LODWORD(STACK[0x828]) ^ v284 ^ v628;
      LODWORD(STACK[0x438]) = v284;
      v684 = LODWORD(STACK[0x7B8]) ^ v284;
      v685 = *(v849 + (v851 ^ BYTE1(v683))) ^ v521;
      v686 = (v667 ^ *(v849 + (v851 ^ BYTE1(v684))) ^ v685) ^ 0x5226;
      v687 = STACK[0x440];
      v688 = v665 | ((v665 ^ 0x93u ^ *(STACK[0x440] + v668)) << 8);
      v689 = *(v849 + (v663 ^ v851));
      LODWORD(STACK[0x4D0]) = v503;
      v690 = v503 ^ v680 ^ v641;
      v691 = *(v849 + (v851 ^ BYTE1(v690)));
      STACK[0x2A8] = (v689 ^ v525) | ((v526 ^ v521 ^ *(v849 + (v664 ^ v851))) << 8);
      v692 = v525;
      v693 = v691 ^ v680 ^ v525;
      v694 = v685 | ((v685 ^ 0x93u ^ *(v687 + v686)) << 8);
      v695 = STACK[0x940];
      STACK[0x2F8] = (*(v849 + (STACK[0x940] ^ HIBYTE(v690))) ^ v521) | ((v667 ^ *(v849 + (STACK[0x940] ^ HIBYTE(v681)))) << 8);
      v696 = v521;
      STACK[0x2D8] = (*(v849 + (v690 ^ v851)) ^ v521) | ((v667 ^ *(v849 + (v681 ^ v851))) << 8);
      v697 = (*(v849 + (v851 ^ BYTE2(v690))) ^ v692) | ((v526 ^ v521 ^ *(v849 + (v851 ^ BYTE2(v681)))) << 8);
      v698 = v679 ^ 0x93 ^ *(v687 + (v675 ^ 0x6F26));
      v699 = *(v849 + (v851 ^ BYTE2(v683)));
      v700 = *(v849 + (v851 ^ BYTE2(v684)));
      STACK[0x2B8] = (*(v849 + (v851 ^ BYTE1(v673))) ^ v696) | ((v667 ^ *(v849 + (v851 ^ BYTE1(v676)))) << 8);
      v701 = *(&off_18D8F0 + LODWORD(STACK[0x470]) + 1833766017) - 701691539;
      v702 = (v700 ^ v692) | ((v678 ^ v699) << 8);
      STACK[0x2A0] = v702;
      v703 = v695;
      v704 = (*(v849 + (v695 ^ HIBYTE(v673))) ^ v696) | ((v667 ^ *(v849 + (v695 ^ HIBYTE(v676)))) << 8);
      STACK[0x2F0] = v693 | (v682 << 8);
      v705 = *(v849 + (v695 ^ HIBYTE(v664)));
      v706 = *(v849 + (v695 ^ HIBYTE(v663)));
      v707 = STACK[0x538];
      v708 = STACK[0x810];
      if (v462)
      {
        v709 = STACK[0x538];
      }

      else
      {
        v709 = STACK[0x810];
      }

      LODWORD(STACK[0x570]) = v709;
      if (v462)
      {
        v710 = v708;
      }

      else
      {
        v710 = v707;
      }

      LODWORD(STACK[0x810]) = v710;
      STACK[0x2C8] = (*(v849 + (v851 ^ BYTE1(v664))) ^ v696) | ((v667 ^ *(v849 + (v851 ^ BYTE1(v663)))) << 8);
      LODWORD(STACK[0x8F8]) = v678;
      STACK[0x2E0] = (v705 ^ v692) | ((v678 ^ v706) << 8);
      v711 = v679 | (v698 << 8);
      v712 = *(v849 + (v851 ^ BYTE2(v673)));
      v713 = *(v849 + (v851 ^ BYTE2(v676)));
      v714 = (*(v849 + (v703 ^ HIBYTE(v684))) ^ v692) | ((v678 ^ *(v849 + (v703 ^ HIBYTE(v683)))) << 8);
      LODWORD(STACK[0x8F0]) = v667;
      LODWORD(STACK[0x540]) = v696;
      v715 = *(v687 + v688);
      STACK[0x2D0] = (v713 ^ v696) | ((v667 ^ v712) << 8);
      v716 = v701[v688];
      v717 = v701[v688];
      LODWORD(STACK[0x2B0]) = v716;
      STACK[0x2C0] = (*(v849 + (v684 ^ v851)) ^ v696) | ((v667 ^ *(v849 + (v683 ^ v851))) << 8);
      v718 = STACK[0x468];
      v719 = v717 ^ LODWORD(STACK[0x468]) ^ *(v687 + ((v716 ^ v715) ^ 0x5F26));
      v720 = v701[v694];
      v721 = (v720 ^ *(v687 + v694)) ^ 0x1D26;
      v722 = *(v687 + v702);
      v723 = v722 & 8;
      if ((v723 & STACK[0x468]) != 0)
      {
        v723 = -v723;
      }

      v724 = STACK[0x640];
      v725 = *(v687 + v711);
      LODWORD(STACK[0x298]) = v722 & 0xFFFFFFF7 ^ LODWORD(STACK[0x640]) ^ (v723 + v718);
      v726 = v701[v711];
      v727 = v720 ^ v718 ^ *(v687 + v721);
      v728 = v726 ^ v718 ^ *(v687 + ((v726 ^ v725) ^ 0x4026));
      v729 = STACK[0x2B8];
      v730 = STACK[0x650];
      v731 = STACK[0x450];
      v732 = STACK[0x4C8];
      v733 = STACK[0x4C0];
      v734 = STACK[0x21C];
      v735 = STACK[0x2D8];
      v736 = STACK[0x648];
      v737 = STACK[0x8D0];
      v738 = LODWORD(STACK[0x7C8]) ^ LODWORD(STACK[0x21C]) ^ *(STACK[0x4C0] + 4 * ((*(v687 + v714) ^ v718) ^ LODWORD(STACK[0x450]))) ^ *(STACK[0x4C8] + 4 * ((*(v687 + STACK[0x2B8]) ^ v718) ^ LODWORD(STACK[0x650]))) ^ *(STACK[0x8D0] + 4 * ((*(v687 + STACK[0x2D8]) ^ v718) ^ LODWORD(STACK[0x648])));
      LODWORD(STACK[0x300]) = v724 ^ 0x93;
      v739 = STACK[0x7F0];
      LODWORD(STACK[0x538]) = v738 ^ *(STACK[0x7F0] + 4 * (v724 ^ 0x93 ^ v719));
      v740 = v739;
      v741 = LODWORD(STACK[0x880]) ^ v734 ^ *(v739 + 4 * (v701[v697] ^ v724)) ^ *(v737 + 4 * (v701[STACK[0x2A8]] ^ v736)) ^ *(v733 + 4 * (v701[v704] ^ v731)) ^ *(v732 + 4 * (v720 ^ v730));
      v742 = LODWORD(STACK[0x5C0]) ^ v734 ^ *(v737 + 4 * ((*(v687 + STACK[0x2A8]) ^ v718) ^ v736)) ^ *(v733 + 4 * ((*(v687 + v704) ^ v718) ^ v731)) ^ *(v739 + 4 * ((*(v687 + v697) ^ v718) ^ v724)) ^ *(v732 + 4 * (v730 ^ 0x93 ^ v727));
      LODWORD(v739) = LODWORD(STACK[0x620]) ^ v734 ^ *(v733 + 4 * ((*(v687 + STACK[0x2F8]) ^ v718) ^ v731)) ^ *(v732 + 4 * ((*(v687 + STACK[0x2C8]) ^ v718) ^ v730)) ^ *(v739 + 4 * LODWORD(STACK[0x298])) ^ *(v737 + 4 * (v736 ^ 0x93 ^ v728));
      v743 = v740;
      v744 = LODWORD(STACK[0x6E0]) ^ v734 ^ *(v733 + 4 * (v701[STACK[0x2F8]] ^ v731)) ^ *(v740 + 4 * (v701[STACK[0x2A0]] ^ v724));
      LODWORD(v740) = v730;
      v745 = v744 ^ *(v732 + 4 * (v701[STACK[0x2C8]] ^ v730)) ^ *(v737 + 4 * (v726 ^ v736));
      v746 = v701;
      v747 = LODWORD(STACK[0x598]) ^ v734 ^ *(v737 + 4 * (v701[v735] ^ v736)) ^ *(v733 + 4 * (v701[v714] ^ v731)) ^ *(v732 + 4 * (v701[v729] ^ v740)) ^ *(v743 + 4 * (LODWORD(STACK[0x2B0]) ^ v724));
      v748 = LODWORD(STACK[0x680]) ^ v734 ^ *(v737 + 4 * ((*(v687 + STACK[0x2C0]) ^ v718) ^ v736)) ^ *(v743 + 4 * ((*(v687 + STACK[0x2D0]) ^ v718) ^ v724)) ^ *(v733 + 4 * ((*(v687 + STACK[0x2E0]) ^ v718) ^ v731)) ^ *(v732 + 4 * ((*(v687 + STACK[0x2F0]) ^ v718) ^ v740));
      v749 = LODWORD(STACK[0x790]) ^ v734 ^ *(v737 + 4 * (*(v746 + STACK[0x2C0]) ^ v736)) ^ *(v733 + 4 * (*(v746 + STACK[0x2E0]) ^ v731)) ^ *(v743 + 4 * (v701[STACK[0x2D0]] ^ v724)) ^ *(v732 + 4 * (v701[STACK[0x2F0]] ^ v740));
      v750 = STACK[0x940];
      v751 = STACK[0x65C];
      v752 = *(v849 + (STACK[0x940] ^ HIBYTE(v742))) ^ LODWORD(STACK[0x65C]);
      v753 = STACK[0x538];
      LOBYTE(v738) = v752 + LODWORD(STACK[0x308]) - 2 * (v752 & LOBYTE(STACK[0x308]));
      LOBYTE(v752) = *(v849 + (v741 ^ v851));
      v754 = STACK[0x8F0];
      LOBYTE(v743) = STACK[0x540];
      STACK[0x2E0] = (*(v849 + (v851 ^ BYTE2(v747))) ^ v743) | ((v754 ^ *(v849 + (v851 ^ HIWORD(LODWORD(STACK[0x538]))))) << 8);
      LOBYTE(v737) = STACK[0x8F8];
      STACK[0x2F8] = (*(v849 + (v851 ^ BYTE1(v742))) ^ v751) | ((v737 ^ *(v849 + (v851 ^ BYTE1(v741)))) << 8);
      v755 = *(v849 + (v851 ^ BYTE2(v749)));
      STACK[0x2D8] = (v752 ^ v751) | ((v737 ^ *(v849 + (v742 ^ v851))) << 8);
      LOBYTE(v752) = *(v849 + (v851 ^ BYTE2(v748))) ^ v751;
      STACK[0x308] = (*(v849 + (v851 ^ BYTE2(v741))) ^ v751) | ((v737 ^ *(v849 + (v851 ^ BYTE2(v742)))) << 8);
      v756 = v752 ^ 0x93 ^ *(v687 + ((v737 ^ v755 ^ v752) ^ 0x826));
      LODWORD(v735) = v745;
      STACK[0x2C8] = (*(v849 + (v745 ^ v851)) ^ v751) | ((v737 ^ *(v849 + (v739 ^ v851))) << 8);
      STACK[0x2A0] = (*(v849 + (v750 ^ BYTE3(v739))) ^ v743) | ((v754 ^ *(v849 + (v750 ^ HIBYTE(v745)))) << 8);
      LOBYTE(v745) = v753;
      STACK[0x2B8] = (*(v849 + (v750 ^ HIBYTE(v753))) ^ v751) | ((v737 ^ *(v849 + (v750 ^ HIBYTE(v747)))) << 8);
      v757 = v752 | (v756 << 8);
      v758 = (*(v849 + (v851 ^ BYTE1(v749))) ^ v751) | ((v737 ^ *(v849 + (v851 ^ BYTE1(v748)))) << 8);
      v759 = v750 ^ HIBYTE(v741);
      LOBYTE(v741) = *(v849 + (v750 ^ HIBYTE(v748)));
      LOBYTE(v759) = *(v849 + v759);
      STACK[0x2D0] = (*(v849 + (v747 ^ v851)) ^ v751) | ((v737 ^ *(v849 + (v745 ^ v851))) << 8);
      v760 = (v759 ^ v751);
      LOBYTE(v759) = *(v687 + v757);
      STACK[0x2C0] = v760 & 0xFFFFFFFFFFFF00FFLL | ((v738 ^ LODWORD(STACK[0x908])) << 8);
      v761 = v701[v757];
      STACK[0x2A8] = (*(v849 + (v750 ^ HIBYTE(v749))) ^ v751) | ((v737 ^ v741) << 8);
      STACK[0x2B0] = (*(v849 + (v851 ^ BYTE1(v735))) ^ v743) | ((v754 ^ *(v849 + (v851 ^ BYTE1(v739)))) << 8);
      v762 = (*(v849 + (v851 ^ BYTE2(v735))) ^ v751) | ((v737 ^ *(v849 + (v851 ^ BYTE2(v739)))) << 8);
      STACK[0x290] = v762;
      LODWORD(STACK[0x300]) ^= (v761 ^ v718 ^ *(v687 + ((v761 ^ v759) ^ 0xA726)));
      v763 = (*(v849 + (v749 ^ v851)) ^ v743) | ((v754 ^ *(v849 + (v748 ^ v851))) << 8);
      v764 = (*(v849 + (v851 ^ BYTE1(LODWORD(STACK[0x538])))) ^ v743) | ((v754 ^ *(v849 + (v851 ^ BYTE1(v747)))) << 8);
      v765 = STACK[0x2A0];
      v766 = STACK[0x2D8];
      LODWORD(v750) = STACK[0x648];
      v767 = STACK[0x8D0];
      v768 = STACK[0x2E0];
      LODWORD(v760) = STACK[0x640];
      v769 = STACK[0x7F0];
      v770 = STACK[0x650];
      v771 = STACK[0x2C8];
      v772 = *(v746 + STACK[0x2C8]);
      LODWORD(STACK[0x298]) = LODWORD(STACK[0x5D0]) ^ v734 ^ *(v733 + 4 * ((*(v687 + STACK[0x2A0]) ^ v718) ^ v731)) ^ *(STACK[0x8D0] + 4 * ((*(v687 + STACK[0x2D8]) ^ v718) ^ LODWORD(STACK[0x648]))) ^ *(STACK[0x7F0] + 4 * ((*(v687 + STACK[0x2E0]) ^ v718) ^ LODWORD(STACK[0x640]))) ^ *(v732 + 4 * ((*(v687 + v758) ^ v718) ^ LODWORD(STACK[0x650])));
      v773 = LODWORD(STACK[0x778]) ^ v734 ^ *(v767 + 4 * (v772 ^ v750)) ^ *(v769 + 4 * (v761 ^ v760));
      v774 = STACK[0x2B8];
      v775 = STACK[0x2F8];
      LODWORD(STACK[0x2F0]) = v773 ^ *(v733 + 4 * (*(v746 + STACK[0x2B8]) ^ v731)) ^ *(v732 + 4 * (*(v746 + STACK[0x2F8]) ^ v770));
      v776 = *(v746 + v762);
      LODWORD(STACK[0x2A0]) = LODWORD(STACK[0x8C0]) ^ v734 ^ *(v767 + 4 * (*(v746 + v766) ^ v750)) ^ *(v769 + 4 * (*(v746 + v768) ^ v760)) ^ *(v733 + 4 * (*(v746 + v765) ^ v731)) ^ *(v732 + 4 * (*(v746 + v758) ^ v770));
      LODWORD(v768) = v770;
      v777 = LODWORD(STACK[0x5C8]) ^ v734 ^ *(v769 + 4 * (v776 ^ v760)) ^ *(v767 + 4 * (*(v746 + v763) ^ v750)) ^ *(v732 + 4 * (*(v746 + v764) ^ v770));
      v778 = STACK[0x2C0];
      LODWORD(STACK[0x2E0]) = v777 ^ *(v733 + 4 * (*(v746 + STACK[0x2C0]) ^ v731));
      v779 = STACK[0x2A8];
      v780 = *(v746 + STACK[0x2A8]);
      STACK[0x2E8] = v746;
      v781 = LODWORD(STACK[0x830]) ^ v734 ^ *(v733 + 4 * (v780 ^ v731)) ^ *(v767 + 4 * (*(v746 + STACK[0x2D0]) ^ v750)) ^ *(v769 + 4 * (*(v746 + STACK[0x308]) ^ v760)) ^ *(v732 + 4 * (*(v746 + STACK[0x2B0]) ^ v768));
      v782 = LODWORD(STACK[0x800]) ^ v734 ^ *(v767 + 4 * ((*(v687 + v771) ^ v718) ^ v750)) ^ *(v732 + 4 * ((*(v687 + v775) ^ v718) ^ v768)) ^ *(v769 + 4 * LODWORD(STACK[0x300])) ^ *(v733 + 4 * ((*(v687 + v774) ^ v718) ^ v731));
      LODWORD(v763) = LODWORD(STACK[0x6B8]) ^ v734 ^ *(v732 + 4 * ((*(v687 + v764) ^ v718) ^ v768)) ^ *(v769 + 4 * ((*(v687 + STACK[0x290]) ^ v718) ^ v760)) ^ *(v733 + 4 * ((*(v687 + v778) ^ v718) ^ v731)) ^ *(v767 + 4 * ((*(v687 + v763) ^ v718) ^ v750));
      v783 = v687;
      LODWORD(v733) = LODWORD(STACK[0x688]) ^ v734 ^ *(v732 + 4 * ((*(v687 + STACK[0x2B0]) ^ v718) ^ v768)) ^ *(v769 + 4 * ((*(v687 + STACK[0x308]) ^ v718) ^ v760)) ^ *(v733 + 4 * ((*(v687 + v779) ^ v718) ^ v731)) ^ *(v767 + 4 * ((*(v687 + STACK[0x2D0]) ^ v718) ^ v750));
      LODWORD(v750) = STACK[0x298];
      v784 = STACK[0x2A0];
      LOBYTE(v779) = STACK[0x8F0];
      LOBYTE(v746) = STACK[0x540];
      STACK[0x308] = (*(v849 + (v851 ^ HIWORD(LODWORD(STACK[0x2A0])))) ^ v746) | ((v779 ^ *(v849 + (v851 ^ HIWORD(LODWORD(STACK[0x298]))))) << 8);
      LOBYTE(v760) = *(v849 + (v851 ^ BYTE2(v781)));
      LOBYTE(v759) = *(v849 + (v851 ^ BYTE2(v733)));
      LODWORD(v767) = STACK[0x2E0];
      STACK[0x538] = (*(v849 + (v851 ^ BYTE1(v763))) ^ v746) | ((v779 ^ *(v849 + (v851 ^ BYTE1(LODWORD(STACK[0x2E0]))))) << 8);
      LOBYTE(v778) = STACK[0x8F8];
      STACK[0x300] = (v759 ^ v751) | ((v778 ^ v760) << 8);
      LOBYTE(v760) = *(v849 + (v763 ^ v851));
      LOBYTE(v775) = *(v849 + (v767 ^ v851));
      STACK[0x2F8] = (*(v849 + (v781 ^ v851)) ^ v751) | ((v778 ^ *(v849 + (v733 ^ v851))) << 8);
      v785 = (v775 ^ v751) | ((v778 ^ v760) << 8);
      v786 = STACK[0x940];
      LOBYTE(v731) = *(v849 + (STACK[0x940] ^ BYTE3(v763))) ^ v746;
      v787 = (v779 ^ *(v849 + (STACK[0x940] ^ BYTE3(v767))) ^ v731) ^ 0x5926;
      LODWORD(v771) = STACK[0x930];
      LODWORD(v774) = LODWORD(STACK[0x930]) >> 8;
      LOBYTE(v734) = v751 ^ LODWORD(STACK[0x908]);
      LOBYTE(v767) = v774 ^ v734 ^ *(v849 + (STACK[0x940] ^ HIBYTE(v781)));
      STACK[0x2E0] = (*(v849 + (v851 ^ BYTE2(v763))) ^ v746) | ((v779 ^ *(v849 + (v851 ^ BYTE2(v767)))) << 8);
      LODWORD(v768) = STACK[0x2F0];
      v788 = (*(v849 + (v782 ^ v851)) ^ v746) | ((v779 ^ *(v849 + (LODWORD(STACK[0x2F0]) ^ v851))) << 8);
      LOBYTE(v760) = v778;
      v789 = (*(v849 + (v851 ^ BYTE1(v781))) ^ v751) | ((v778 ^ *(v849 + (v851 ^ BYTE1(v733)))) << 8);
      LOBYTE(v737) = v784;
      v790 = (*(v849 + (v851 ^ BYTE1(v750))) ^ v751) | ((v778 ^ *(v849 + (v851 ^ BYTE1(v784)))) << 8);
      v791 = (*(v849 + (v851 ^ BYTE2(v782))) ^ v751) | ((v760 ^ *(v849 + (v851 ^ HIWORD(LODWORD(STACK[0x2F0]))))) << 8);
      STACK[0x2D8] = (*(v849 + (v851 ^ BYTE1(v782))) ^ v751) | ((v760 ^ *(v849 + (v851 ^ BYTE1(LODWORD(STACK[0x2F0]))))) << 8);
      v792 = (*(v849 + (v786 ^ HIBYTE(v784))) ^ v751) | ((v760 ^ *(v849 + (v786 ^ BYTE3(v750)))) << 8);
      v793 = (v774 ^ v746 ^ *(v849 + (v786 ^ BYTE3(v733)))) | (v767 << 8);
      v794 = v731 | ((v731 ^ 0x93u ^ *(v783 + v787)) << 8);
      v795 = (BYTE2(v771) ^ v746 ^ *(v849 + (v737 ^ v851))) | ((BYTE2(v771) ^ v734 ^ *(v849 + (v750 ^ v851))) << 8);
      LOBYTE(v734) = v746;
      v796 = (*(v849 + (v786 ^ BYTE3(v768))) ^ v746) | ((v779 ^ *(v849 + (v786 ^ HIBYTE(v782)))) << 8);
      v797 = STACK[0x2E8];
      LODWORD(v733) = *(STACK[0x2E8] + v794);
      LOBYTE(v786) = STACK[0x468];
      LOBYTE(v779) = v733 ^ v786 ^ *(v783 + ((*(v783 + v794) ^ v733) ^ 0x1626));
      LODWORD(v794) = LODWORD(STACK[0x788]) ^ LODWORD(STACK[0x310]) ^ LODWORD(STACK[0x890]) ^ *(STACK[0x4C0] + 4 * (*(STACK[0x2E8] + v792) ^ LODWORD(STACK[0x450]))) ^ *(STACK[0x4C8] + 4 * (*(STACK[0x2E8] + v789) ^ LODWORD(STACK[0x650]))) ^ *(STACK[0x4C0] + 4 * ((*(v783 + v792) ^ v786) ^ LODWORD(STACK[0x450]))) ^ *(STACK[0x8D0] + 4 * (*(STACK[0x2E8] + v785) ^ LODWORD(STACK[0x648]))) ^ *(STACK[0x7F0] + 4 * (*(STACK[0x2E8] + v791) ^ LODWORD(STACK[0x640]))) ^ *(STACK[0x8D0] + 4 * ((*(v783 + v785) ^ v786) ^ LODWORD(STACK[0x648]))) ^ *(STACK[0x7F0] + 4 * ((*(v783 + v791) ^ v786) ^ LODWORD(STACK[0x640])));
      LOBYTE(v771) = *(v783 + v789) ^ v786;
      LOBYTE(v789) = v786;
      LODWORD(v771) = v794 ^ *(STACK[0x4C8] + 4 * (v771 ^ LODWORD(STACK[0x650])));
      LODWORD(v760) = LODWORD(STACK[0x5D8]) ^ LODWORD(STACK[0x310]) ^ LODWORD(STACK[0x5A8]) ^ *(STACK[0x4C0] + 4 * (*(STACK[0x2E8] + v793) ^ LODWORD(STACK[0x450]))) ^ *(STACK[0x8D0] + 4 * (*(STACK[0x2E8] + v788) ^ LODWORD(STACK[0x648]))) ^ *(STACK[0x4C8] + 4 * ((*(v783 + v790) ^ v789) ^ LODWORD(STACK[0x650]))) ^ *(STACK[0x8D0] + 4 * ((*(v783 + v788) ^ v789) ^ LODWORD(STACK[0x648]))) ^ *(STACK[0x7F0] + 4 * (*(STACK[0x2E8] + STACK[0x2E0]) ^ LODWORD(STACK[0x640]))) ^ *(STACK[0x7F0] + 4 * ((*(v783 + STACK[0x2E0]) ^ v789) ^ LODWORD(STACK[0x640]))) ^ *(STACK[0x4C0] + 4 * ((*(v783 + v793) ^ v789) ^ LODWORD(STACK[0x450]))) ^ *(STACK[0x4C8] + 4 * (*(STACK[0x2E8] + v790) ^ LODWORD(STACK[0x650])));
      v798 = LODWORD(STACK[0x740]) ^ LODWORD(STACK[0x310]) ^ LODWORD(STACK[0x728]) ^ *(STACK[0x7F0] + 4 * (*(STACK[0x2E8] + STACK[0x308]) ^ LODWORD(STACK[0x640]))) ^ *(STACK[0x4C8] + 4 * (*(STACK[0x2E8] + STACK[0x2D8]) ^ LODWORD(STACK[0x650]))) ^ *(STACK[0x8D0] + 4 * ((*(v783 + STACK[0x2F8]) ^ v789) ^ LODWORD(STACK[0x648]))) ^ *(STACK[0x4C0] + 4 * (v733 ^ LODWORD(STACK[0x450]))) ^ *(STACK[0x4C8] + 4 * ((*(v783 + STACK[0x2D8]) ^ v789) ^ LODWORD(STACK[0x650]))) ^ *(STACK[0x8D0] + 4 * (*(STACK[0x2E8] + STACK[0x2F8]) ^ LODWORD(STACK[0x648]))) ^ *(STACK[0x7F0] + 4 * ((*(v783 + STACK[0x308]) ^ v789) ^ LODWORD(STACK[0x640]))) ^ *(STACK[0x4C0] + 4 * (LODWORD(STACK[0x450]) ^ 0x93 ^ v779));
      LODWORD(v794) = LODWORD(STACK[0x768]) ^ LODWORD(STACK[0x310]) ^ LODWORD(STACK[0x798]) ^ *(STACK[0x7F0] + 4 * ((*(v783 + STACK[0x300]) ^ v789) ^ LODWORD(STACK[0x640]))) ^ *(STACK[0x4C8] + 4 * (*(STACK[0x2E8] + STACK[0x538]) ^ LODWORD(STACK[0x650]))) ^ *(STACK[0x4C0] + 4 * (*(STACK[0x2E8] + v796) ^ LODWORD(STACK[0x450]))) ^ *(STACK[0x4C0] + 4 * ((*(v783 + v796) ^ v789) ^ LODWORD(STACK[0x450]))) ^ *(STACK[0x4C8] + 4 * ((*(v783 + STACK[0x538]) ^ v789) ^ LODWORD(STACK[0x650])));
      LOBYTE(v791) = *(v783 + v795) ^ v786;
      LOBYTE(v783) = v786;
      LODWORD(v791) = v794 ^ *(STACK[0x8D0] + 4 * (*(STACK[0x2E8] + v795) ^ LODWORD(STACK[0x648]))) ^ *(STACK[0x7F0] + 4 * (*(STACK[0x2E8] + STACK[0x300]) ^ LODWORD(STACK[0x640]))) ^ *(STACK[0x8D0] + 4 * (v791 ^ LODWORD(STACK[0x648])));
      LODWORD(v796) = LODWORD(STACK[0x818]) ^ LODWORD(STACK[0x5F0]) ^ *(STACK[0x230] + 4 * BYTE2(v760)) ^ *(STACK[0x248] + 4 * BYTE3(v791)) ^ *(STACK[0x250] + 4 * v771) ^ *(STACK[0x238] + 4 * BYTE1(v798));
      LODWORD(v794) = LODWORD(STACK[0x730]) ^ LODWORD(STACK[0x738]) ^ *(STACK[0x248] + 4 * BYTE3(v771)) ^ *(STACK[0x230] + 4 * BYTE2(v791)) ^ *(STACK[0x238] + 4 * BYTE1(v760)) ^ *(STACK[0x250] + 4 * v798);
      LODWORD(v790) = LODWORD(STACK[0x580]) ^ LODWORD(STACK[0x600]) ^ *(STACK[0x230] + 4 * BYTE2(v771)) ^ *(STACK[0x250] + 4 * v760) ^ *(STACK[0x238] + 4 * BYTE1(v791)) ^ *(STACK[0x248] + 4 * HIBYTE(v798));
      LODWORD(v764) = LODWORD(STACK[0x7E0]) ^ LODWORD(STACK[0x838]) ^ *(STACK[0x238] + 4 * BYTE1(v771)) ^ *(STACK[0x248] + 4 * BYTE3(v760)) ^ *(STACK[0x250] + 4 * v791) ^ *(STACK[0x230] + 4 * BYTE2(v798));
      LODWORD(v760) = LODWORD(STACK[0x5F8]) ^ LODWORD(STACK[0x670]) ^ *(STACK[0x238] + 4 * BYTE1(v796)) ^ *(STACK[0x248] + 4 * BYTE3(v790)) ^ *(STACK[0x230] + 4 * BYTE2(v794)) ^ *(STACK[0x250] + 4 * (LOBYTE(STACK[0x7E0]) ^ LOBYTE(STACK[0x838]) ^ *(STACK[0x238] + 4 * BYTE1(v771)) ^ *(STACK[0x248] + 4 * BYTE3(v760)) ^ *(STACK[0x250] + 4 * v791) ^ *(STACK[0x230] + 4 * BYTE2(v798))));
      v799 = LODWORD(STACK[0x8A0]) ^ LODWORD(STACK[0x840]) ^ *(STACK[0x230] + 4 * BYTE2(v796)) ^ *(STACK[0x248] + 4 * BYTE3(v794)) ^ *(STACK[0x238] + 4 * BYTE1(v764)) ^ *(STACK[0x250] + 4 * v790);
      LODWORD(v791) = LODWORD(STACK[0x6B0]) ^ LODWORD(STACK[0x6D8]) ^ *(STACK[0x248] + 4 * BYTE3(v796)) ^ *(STACK[0x230] + 4 * BYTE2(v764)) ^ *(STACK[0x250] + 4 * v794) ^ *(STACK[0x238] + 4 * BYTE1(v790));
      LODWORD(v794) = LODWORD(STACK[0x758]) ^ LODWORD(STACK[0x710]) ^ *(STACK[0x230] + 4 * BYTE2(v790)) ^ *(STACK[0x248] + 4 * BYTE3(v764)) ^ *(STACK[0x238] + 4 * BYTE1(v794));
      LODWORD(v764) = v794 ^ *(STACK[0x250] + 4 * v796);
      LODWORD(v796) = LODWORD(STACK[0x7B0]) ^ LODWORD(STACK[0x820]) ^ *(STACK[0x230] + 4 * BYTE2(v799)) ^ *(STACK[0x248] + 4 * BYTE3(v760)) ^ *(STACK[0x238] + 4 * BYTE1(v791)) ^ *(STACK[0x250] + 4 * (v794 ^ *(STACK[0x250] + 4 * v796)));
      LODWORD(v794) = LODWORD(STACK[0x870]) ^ LODWORD(STACK[0x718]) ^ *(STACK[0x238] + 4 * BYTE1(v799)) ^ *(STACK[0x250] + 4 * v791) ^ *(STACK[0x230] + 4 * BYTE2(v760)) ^ *(STACK[0x248] + 4 * BYTE3(v764));
      LODWORD(v790) = LODWORD(STACK[0x628]) ^ LODWORD(STACK[0x780]) ^ *(STACK[0x250] + 4 * v760) ^ *(STACK[0x230] + 4 * BYTE2(v791)) ^ *(STACK[0x248] + 4 * HIBYTE(v799)) ^ *(STACK[0x238] + 4 * BYTE1(v764));
      v800 = LODWORD(STACK[0x848]) ^ LODWORD(STACK[0x590]) ^ *(STACK[0x248] + 4 * BYTE3(v791)) ^ *(STACK[0x250] + 4 * v799) ^ *(STACK[0x230] + 4 * BYTE2(v764)) ^ *(STACK[0x238] + 4 * BYTE1(v760));
      LODWORD(v760) = *(STACK[0x230] + 4 * BYTE2(v800)) ^ *(STACK[0x238] + 4 * BYTE1(v794)) ^ *(STACK[0x248] + 4 * BYTE3(v790)) ^ *(STACK[0x250] + 4 * v796);
      LODWORD(v764) = *(STACK[0x238] + 4 * BYTE1(v800)) ^ *(STACK[0x248] + 4 * BYTE3(v796));
      LODWORD(v768) = *(STACK[0x238] + 4 * BYTE1(v796)) ^ *(STACK[0x248] + 4 * HIBYTE(v800)) ^ *(STACK[0x230] + 4 * BYTE2(v794)) ^ *(STACK[0x250] + 4 * v790);
      v801 = *(STACK[0x230] + 4 * BYTE2(v796)) ^ *(STACK[0x248] + 4 * BYTE3(v794)) ^ *(STACK[0x250] + 4 * v800) ^ *(STACK[0x238] + 4 * BYTE1(v790));
      LODWORD(v794) = v764 ^ *(STACK[0x250] + 4 * v794) ^ *(STACK[0x230] + 4 * BYTE2(v790));
      LODWORD(v790) = LODWORD(STACK[0x7E8]) ^ LODWORD(STACK[0x610]) ^ v794;
      LODWORD(v764) = LODWORD(STACK[0x748]) ^ LODWORD(STACK[0x6E8]) ^ v794;
      LODWORD(v771) = LODWORD(STACK[0x630]) ^ LODWORD(STACK[0x7A8]) ^ v801;
      LODWORD(v796) = LODWORD(STACK[0x5B0]) ^ LODWORD(STACK[0x6F8]) ^ v801;
      LODWORD(v794) = LODWORD(STACK[0x808]) ^ LODWORD(STACK[0x7A0]) ^ v768;
      LODWORD(v791) = LODWORD(STACK[0x698]) ^ LODWORD(STACK[0x668]) ^ v768;
      LODWORD(v785) = LODWORD(STACK[0x5B8]) ^ LODWORD(STACK[0x6D0]) ^ v760;
      LODWORD(v768) = LODWORD(STACK[0x6A8]) ^ LODWORD(STACK[0x700]) ^ v760;
      LODWORD(v760) = LODWORD(STACK[0x858]) ^ LODWORD(STACK[0x8E8]) ^ *(STACK[0x230] + 4 * BYTE2(v794)) ^ *(STACK[0x238] + 4 * BYTE1(v771)) ^ *(STACK[0x250] + 4 * v790) ^ *(STACK[0x248] + 4 * BYTE3(v785));
      v802 = LODWORD(STACK[0x720]) ^ LODWORD(STACK[0x690]) ^ *(STACK[0x238] + 4 * BYTE1(v785)) ^ *(STACK[0x230] + 4 * BYTE2(v790)) ^ *(STACK[0x248] + 4 * BYTE3(v771)) ^ *(STACK[0x250] + 4 * v794);
      v803 = LODWORD(STACK[0x5A0]) ^ LODWORD(STACK[0x760]) ^ *(STACK[0x238] + 4 * BYTE1(v794)) ^ *(STACK[0x230] + 4 * BYTE2(v785)) ^ *(STACK[0x250] + 4 * v771) ^ *(STACK[0x248] + 4 * BYTE3(v790));
      LODWORD(v785) = LODWORD(STACK[0x588]) ^ LODWORD(STACK[0x7F8]) ^ *(STACK[0x238] + 4 * BYTE1(v790)) ^ *(STACK[0x250] + 4 * v785) ^ *(STACK[0x230] + 4 * BYTE2(v771)) ^ *(STACK[0x248] + 4 * BYTE3(v794));
      LODWORD(v790) = LODWORD(STACK[0x608]) ^ LODWORD(STACK[0x8B0]) ^ *(STACK[0x230] + 4 * BYTE2(v796)) ^ *(STACK[0x248] + 4 * BYTE3(v791)) ^ *(STACK[0x250] + 4 * v768) ^ *(STACK[0x238] + 4 * BYTE1(v764));
      LODWORD(v771) = LODWORD(STACK[0x770]) ^ LODWORD(STACK[0x678]) ^ *(STACK[0x230] + 4 * BYTE2(v791)) ^ *(STACK[0x250] + 4 * v764) ^ *(STACK[0x238] + 4 * BYTE1(v796)) ^ *(STACK[0x248] + 4 * BYTE3(v768));
      LODWORD(v795) = *(STACK[0x230] + 4 * BYTE2(v764));
      LODWORD(v764) = LODWORD(STACK[0x5E8]) ^ LODWORD(STACK[0x750]) ^ *(STACK[0x248] + 4 * BYTE3(v764)) ^ *(STACK[0x230] + 4 * BYTE2(v768)) ^ *(STACK[0x238] + 4 * BYTE1(v791)) ^ *(STACK[0x250] + 4 * v796);
      LODWORD(v791) = LODWORD(STACK[0x868]) ^ LODWORD(STACK[0x860]) ^ v795 ^ *(STACK[0x248] + 4 * BYTE3(v796)) ^ *(STACK[0x238] + 4 * BYTE1(v768)) ^ *(STACK[0x250] + 4 * v791);
      LODWORD(v796) = *(STACK[0x248] + 4 * HIBYTE(v803)) ^ *(STACK[0x230] + 4 * BYTE2(v760)) ^ *(STACK[0x250] + 4 * v802) ^ *(STACK[0x238] + 4 * BYTE1(v785));
      LODWORD(v768) = *(STACK[0x230] + 4 * BYTE2(v803)) ^ *(STACK[0x248] + 4 * HIBYTE(v802)) ^ *(STACK[0x250] + 4 * v785) ^ *(STACK[0x238] + 4 * BYTE1(v760));
      LODWORD(v788) = *(STACK[0x230] + 4 * BYTE2(v802)) ^ *(STACK[0x248] + 4 * BYTE3(v785)) ^ *(STACK[0x238] + 4 * BYTE1(v803)) ^ *(STACK[0x250] + 4 * v760);
      LODWORD(v794) = *(STACK[0x238] + 4 * BYTE1(v802)) ^ *(STACK[0x248] + 4 * BYTE3(v760)) ^ *(STACK[0x230] + 4 * BYTE2(v785)) ^ *(STACK[0x250] + 4 * v803);
      v804 = *(STACK[0x238] + 4 * BYTE1(v790)) ^ *(STACK[0x248] + 4 * BYTE3(v764)) ^ *(STACK[0x230] + 4 * BYTE2(v771)) ^ *(STACK[0x250] + 4 * v791);
      LODWORD(v760) = *(STACK[0x230] + 4 * BYTE2(v791)) ^ *(STACK[0x238] + 4 * BYTE1(v764)) ^ *(STACK[0x248] + 4 * BYTE3(v790)) ^ *(STACK[0x250] + 4 * v771);
      v805 = *(STACK[0x248] + 4 * BYTE3(v771)) ^ *(STACK[0x230] + 4 * BYTE2(v790)) ^ *(STACK[0x238] + 4 * BYTE1(v791)) ^ *(STACK[0x250] + 4 * v764);
      LODWORD(v790) = *(STACK[0x238] + 4 * BYTE1(v771)) ^ *(STACK[0x230] + 4 * BYTE2(v764)) ^ *(STACK[0x248] + 4 * BYTE3(v791)) ^ *(STACK[0x250] + 4 * v790);
      LODWORD(v764) = v788 ^ LODWORD(STACK[0x310]);
      LODWORD(v791) = v764 - (v760 ^ LODWORD(STACK[0x310])) + (v788 ^ 0x482D8CA3 ^ v760);
      LODWORD(v760) = v796 ^ LODWORD(STACK[0x310]);
      LODWORD(v771) = (v796 ^ 0xF54E22F4 ^ v804) + v760 - (v804 ^ LODWORD(STACK[0x310]));
      v806 = v768 ^ LODWORD(STACK[0x310]);
      LODWORD(v796) = v768 ^ 0x31D443C4 ^ v790;
      LODWORD(v768) = v794 ^ LODWORD(STACK[0x310]);
      LODWORD(v790) = v796 + v806 - (v790 ^ LODWORD(STACK[0x310]));
      LODWORD(v785) = STACK[0x930];
      LODWORD(v796) = LODWORD(STACK[0x708]) ^ LODWORD(STACK[0x930]) ^ v764;
      LODWORD(v764) = LODWORD(STACK[0x660]) ^ LODWORD(STACK[0x900]) ^ v768;
      LODWORD(v794) = -1552853171 * ((v794 ^ 0x686D45AE ^ v805) + v768 - (v805 ^ LODWORD(STACK[0x310])));
      LODWORD(v790) = -1354390625 * v790;
      LODWORD(v791) = v794 ^ (-958771333 * v791);
      LODWORD(v768) = -572832135 * v771 - v790;
      LODWORD(v790) = v790 ^ v791;
      LODWORD(v791) = v791 - v768;
      LODWORD(v794) = v790 ^ (v794 - -572832135 * v771);
      LODWORD(v790) = v794 + v790;
      LODWORD(v768) = v768 - v791;
      LODWORD(v791) = v791 - v790;
      LODWORD(v794) = v794 - v791;
      LODWORD(v768) = v794 + v768;
      LODWORD(v764) = v764 ^ v794;
      LODWORD(v737) = STACK[0x548];
      LODWORD(v760) = LODWORD(STACK[0x638]) ^ LODWORD(STACK[0x548]) ^ v760 ^ v768;
      LODWORD(v771) = STACK[0x910];
      v807 = v806 ^ LODWORD(STACK[0x910]) ^ LODWORD(STACK[0x5E0]) ^ (v790 - v768);
      LODWORD(v733) = LODWORD(STACK[0x900]) ^ 0x9EE79EBE ^ LODWORD(STACK[0x878]);
      LOBYTE(v805) = STACK[0x8F0];
      v808 = (*(v849 + (v851 ^ BYTE1(v764))) ^ v746) | ((v805 ^ *(v849 + (v851 ^ BYTE1(v733)))) << 8);
      LOBYTE(v786) = STACK[0x8F8];
      v809 = STACK[0x65C];
      STACK[0x538] = (*(v849 + (v851 ^ BYTE2(v733))) ^ LODWORD(STACK[0x65C])) | ((v786 ^ *(v849 + (v851 ^ BYTE2(v764)))) << 8);
      LODWORD(v789) = v771 ^ 0xA8B98F8D ^ LODWORD(STACK[0x850]);
      STACK[0x908] = (*(v849 + (v789 ^ v851)) ^ v746) | (((*(v849 + (v807 ^ v851)) + v809 - 2 * (*(v849 + (v807 ^ v851)) & v809)) ^ LODWORD(STACK[0x908])) << 8);
      LODWORD(v793) = v737 ^ 0x196D8BE7 ^ LODWORD(STACK[0x570]);
      v810 = (*(v849 + (v851 ^ BYTE1(v793))) ^ v809) | ((v786 ^ *(v849 + (v851 ^ BYTE1(v760)))) << 8);
      LODWORD(v792) = v796 ^ v791;
      LODWORD(v791) = v785 ^ 0x43BC51FB ^ LODWORD(STACK[0x810]);
      LOBYTE(v771) = v805;
      v811 = (*(v849 + (v851 ^ BYTE1(v791))) ^ v746) | ((v805 ^ *(v849 + (v851 ^ BYTE1(v792)))) << 8);
      v812 = (*(v849 + (STACK[0x940] ^ BYTE3(v733))) ^ v809) | ((v786 ^ *(v849 + (STACK[0x940] ^ BYTE3(v764)))) << 8);
      v813 = (*(v849 + (v851 ^ BYTE2(v791))) ^ v746) | ((v805 ^ *(v849 + (v851 ^ BYTE2(v792)))) << 8);
      v814 = (*(v849 + (STACK[0x940] ^ HIBYTE(v807))) ^ v809) | ((v786 ^ *(v849 + (STACK[0x940] ^ BYTE3(v789)))) << 8);
      v815 = (*(v849 + (STACK[0x940] ^ BYTE3(v792))) ^ v809) | ((v786 ^ *(v849 + (STACK[0x940] ^ BYTE3(v791)))) << 8);
      v816 = (*(v849 + (STACK[0x940] ^ BYTE3(v793))) ^ v746) | ((v771 ^ *(v849 + (STACK[0x940] ^ BYTE3(v760)))) << 8);
      v817 = (*(v849 + (v733 ^ v851)) ^ v746) | ((v771 ^ *(v849 + (v764 ^ v851))) << 8);
      v818 = (*(v849 + (v851 ^ BYTE1(v807))) ^ v746) | ((v771 ^ *(v849 + (v851 ^ BYTE1(v789)))) << 8);
      LOBYTE(v794) = v786 ^ *(v849 + (v851 ^ BYTE2(v793)));
      v819 = STACK[0x7D8];
      v820 = (*(v849 + (v851 ^ BYTE2(v807))) ^ v809) | ((v786 ^ *(v849 + (v851 ^ BYTE2(v789)))) << 8);
      v821 = (*(v849 + (v791 ^ v851)) ^ v734) | ((v771 ^ *(v849 + (v792 ^ v851))) << 8);
      v822 = (*(v849 + (v760 ^ v851)) ^ v809) | ((v786 ^ *(v849 + (v793 ^ v851))) << 8);
      v823 = (*(v849 + (v851 ^ BYTE2(v760))) ^ v809) | (v794 << 8);
      v824 = STACK[0x208];
      LOBYTE(v760) = v783;
      LODWORD(v771) = LODWORD(STACK[0x618]) ^ LODWORD(STACK[0x6A0]) ^ *(STACK[0x228] + 4 * (*(v797 + v812) ^ LODWORD(STACK[0x200]))) ^ *(STACK[0x240] + 4 * (*(v797 + v813) ^ v856)) ^ *(STACK[0x258] + 4 * (*(v797 + v818) ^ v824)) ^ *(STACK[0x928] + 4 * (*(v797 + v822) ^ STACK[0x460])) ^ *(STACK[0x258] + 4 * ((*(STACK[0x440] + v818) ^ v760) ^ v824)) ^ *(STACK[0x240] + 4 * ((*(STACK[0x440] + v813) ^ v760) ^ v856)) ^ *(STACK[0x228] + 4 * ((*(STACK[0x440] + v812) ^ v760) ^ LODWORD(STACK[0x200]))) ^ *(STACK[0x928] + 4 * ((*(STACK[0x440] + v822) ^ v760) ^ STACK[0x460]));
      LODWORD(v789) = STACK[0x460];
      v825 = STACK[0x428];
      v216 = STACK[0x928];
      v826 = STACK[0x448];
      v827 = LODWORD(STACK[0x7C0]) ^ LODWORD(STACK[0x7D0]) ^ *(STACK[0x258] + 4 * (*(v797 + v808) ^ v824)) ^ *(STACK[0x928] + 4 * ((*(STACK[0x440] + v821) ^ v760) ^ v789)) ^ *(STACK[0x258] + 4 * ((*(STACK[0x440] + v808) ^ v760) ^ v824)) ^ *(STACK[0x228] + 4 * ((*(STACK[0x440] + v814) ^ v760) ^ LODWORD(STACK[0x200]))) ^ *(STACK[0x240] + 4 * ((*(STACK[0x440] + v823) ^ v760) ^ v856)) ^ *(STACK[0x228] + 4 * (*(v797 + v814) ^ LODWORD(STACK[0x200]))) ^ *(STACK[0x240] + 4 * (*(v797 + v823) ^ v856)) ^ *(STACK[0x928] + 4 * (*(v797 + v821) ^ v789));
      LODWORD(v737) = STACK[0x320];
      v828 = ((*(STACK[0x7D8] + (v853 ^ HIBYTE(v827))) ^ v737) << 16) | ((*(STACK[0x7D8] + (v826 ^ BYTE2(v827))) ^ v737) << 8) | (*(STACK[0x7D8] + (v826 ^ BYTE1(v827))) ^ v737);
      v829 = LODWORD(STACK[0x6C0]) ^ LODWORD(STACK[0x578]) ^ *(STACK[0x258] + 4 * (*(v797 + v810) ^ v824)) ^ *(STACK[0x258] + 4 * ((*(STACK[0x440] + v810) ^ v783) ^ v824)) ^ *(STACK[0x228] + 4 * ((*(STACK[0x440] + v815) ^ v760) ^ LODWORD(STACK[0x200]))) ^ *(STACK[0x240] + 4 * ((*(STACK[0x440] + v820) ^ v760) ^ v856)) ^ *(STACK[0x240] + 4 * (*(v797 + v820) ^ v856)) ^ *(STACK[0x928] + 4 * ((*(STACK[0x440] + v817) ^ v760) ^ v789)) ^ *(STACK[0x228] + 4 * (*(v797 + v815) ^ LODWORD(STACK[0x200]))) ^ *(STACK[0x928] + 4 * (*(v797 + v817) ^ v789));
      v830 = STACK[0x320];
      v831 = ((*(STACK[0x7D8] + (v826 ^ BYTE2(v771))) ^ v737) << 8) | ((*(STACK[0x7D8] + (v853 ^ BYTE3(v771))) ^ v737) << 16) | (*(STACK[0x7D8] + (v826 ^ BYTE1(v771))) ^ LODWORD(STACK[0x320]));
      v201 = STACK[0x900];
      v200 = STACK[0x548];
      v832 = ((*(STACK[0x7D8] + (v826 ^ BYTE2(v829))) ^ v737) << 8) | ((*(STACK[0x7D8] + (v853 ^ HIBYTE(v829))) ^ v737) << 16) | (*(STACK[0x7D8] + (v826 ^ BYTE1(v829))) ^ LODWORD(STACK[0x320]));
      v212 = STACK[0x8E8];
      v833 = LODWORD(STACK[0x6CC]) ^ LODWORD(STACK[0x6F0]) ^ *(STACK[0x258] + 4 * ((*(STACK[0x440] + v811) ^ v760) ^ v824)) ^ *(STACK[0x228] + 4 * (*(v797 + v816) ^ LODWORD(STACK[0x200]))) ^ *(STACK[0x228] + 4 * ((*(STACK[0x440] + v816) ^ v760) ^ LODWORD(STACK[0x200]))) ^ *(STACK[0x928] + 4 * (*(v797 + STACK[0x908]) ^ STACK[0x460])) ^ *(STACK[0x240] + 4 * ((*(STACK[0x440] + STACK[0x538]) ^ v760) ^ v856)) ^ *(STACK[0x258] + 4 * (*(v797 + v811) ^ v824)) ^ *(STACK[0x928] + 4 * ((*(STACK[0x440] + STACK[0x908]) ^ v760) ^ STACK[0x460])) ^ *(STACK[0x240] + 4 * (*(v797 + STACK[0x538]) ^ v856));
      v834 = *(STACK[0x7D8] + (v771 ^ LODWORD(STACK[0x448]))) ^ LODWORD(STACK[0x458]);
      v835 = STACK[0x31C] & 2;
      if ((v834 & v835) != 0)
      {
        v835 = -v835;
      }

      v836 = ((v835 + v834) ^ STACK[0x31C] & 0xFD) | (v831 << 8);
      v837 = (*(v819 + (v833 ^ v826)) ^ v830) | ((((*(STACK[0x7D8] + (v853 ^ HIBYTE(v833))) ^ v830) << 16) | ((*(STACK[0x7D8] + (v826 ^ BYTE2(v833))) ^ v830) << 8) | (*(STACK[0x7D8] + (v826 ^ BYTE1(v833))) ^ v830)) << 8);
      v838 = (*(v819 + (v827 ^ v826)) ^ v830) | (v828 << 8);
      v839 = (*(v819 + (v829 ^ v826)) ^ v830) | (v832 << 8);
      v840 = LODWORD(STACK[0x558]) ^ LODWORD(STACK[0x550]) ^ LODWORD(STACK[0x560]) ^ LODWORD(STACK[0x568]);
      if (v840)
      {
        v841 = v836;
      }

      else
      {
        v841 = v837;
      }

      if (v840)
      {
        v836 = v839;
      }

      else
      {
        v837 = v838;
      }

      if ((v840 & 1) == 0)
      {
        v838 = v839;
      }

      v842 = v840 ^ (v840 >> 1);
      v843 = (v842 & 1) == 0;
      if (v842)
      {
        v844 = v837;
      }

      else
      {
        v844 = v836;
      }

      *(v852 + LODWORD(STACK[0x3F8])) = LODWORD(STACK[0x4B0]) ^ BYTE2(v844);
      *(v852 + LODWORD(STACK[0x410])) = LODWORD(STACK[0x4A8]) ^ BYTE1(v844);
      *(v852 + LODWORD(STACK[0x420])) = v844 ^ LOBYTE(STACK[0x4F8]);
      if (v843)
      {
        v845 = v841;
      }

      else
      {
        v845 = v838;
      }

      *(v852 + LODWORD(STACK[0x3C8])) = LODWORD(STACK[0x4B8]) ^ HIBYTE(v845);
      *(v852 + LODWORD(STACK[0x3E0])) = LODWORD(STACK[0x528]) ^ BYTE2(v845);
      *(v852 + LODWORD(STACK[0x3F0])) = LODWORD(STACK[0x508]) ^ BYTE1(v845);
      *(v852 + LODWORD(STACK[0x400])) = v845 ^ LOBYTE(STACK[0x488]);
      if (v843)
      {
        v836 = v837;
      }

      *(v852 + LODWORD(STACK[0x330])) = LODWORD(STACK[0x510]) ^ HIBYTE(v836);
      *(v852 + LODWORD(STACK[0x344])) = LODWORD(STACK[0x4E0]) ^ BYTE2(v836);
      *(v852 + LODWORD(STACK[0x328])) = LODWORD(STACK[0x530]) ^ BYTE1(v836);
      *(v852 + LODWORD(STACK[0x3B8])) = v836 ^ LODWORD(STACK[0x498]);
      *(v852 + v825) = LOBYTE(STACK[0x4F0]) ^ HIBYTE(v844);
      if (v843)
      {
        v846 = v838;
      }

      else
      {
        v846 = v841;
      }

      *(v852 + LODWORD(STACK[0x324])) = LODWORD(STACK[0x500]) ^ HIBYTE(v846);
      *(v852 + LODWORD(STACK[0x338])) = LODWORD(STACK[0x520]) ^ BYTE2(v846);
      *(v852 + LODWORD(STACK[0x348])) = LODWORD(STACK[0x4E8]) ^ BYTE1(v846);
      *(v852 + LODWORD(STACK[0x390])) = v846 ^ LODWORD(STACK[0x518]);
      v189 = v825 + 16;
      v211 = STACK[0x34C];
      v213 = STACK[0x354];
      v214 = STACK[0x350];
      v218 = STACK[0x35C];
      v220 = STACK[0x398];
      v217 = STACK[0x388];
      v219 = STACK[0x358];
      v215 = STACK[0x3A0];
      LODWORD(STACK[0x4B8]) = STACK[0x3B0];
      v221 = LODWORD(STACK[0x3C0]);
      v222 = LODWORD(STACK[0x3A8]);
      LODWORD(STACK[0x4A8]) = STACK[0x3D0];
      LODWORD(STACK[0x4B0]) = STACK[0x3D8];
      v204 = STACK[0x384];
      v223 = STACK[0x3E8];
      LODWORD(STACK[0x488]) = STACK[0x418];
      LODWORD(STACK[0x498]) = STACK[0x408];
    }

    while (LODWORD(STACK[0x28C]) != v189);
    return (*(STACK[0x948] + 8 * v850))(v222, v221);
  }

  else
  {
    STACK[0x978] = v13 + ((v10 - 2063) | 0x45u) - 13341;
    return (*(v5 + 8 * v10))();
  }
}

uint64_t sub_EA580()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  return (*(v2 + 8 * ((98 * (*(v0 + 16) != 0)) ^ v1 ^ 0x2A)))();
}

uint64_t sub_EA5B8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v8 * a4;
  *(a8 + 4 * ((((v11 + 80864966) % 0x34AFu) ^ 0x2FD54AF7B3BE66FELL) + ((2 * ((v11 + 80864966) % 0x34AFu)) & 0x4DFC)) + 0x40AAD42131066408) = *(a8 + 4 * ((((v11 + 116503884) % ((103 * (v9 ^ 0x184)) ^ 0x367Eu)) ^ 0x37FF9FABDF7EEDE3) + ((2 * ((v11 + 116503884) % ((103 * (v9 ^ 0x184)) ^ 0x367Eu))) & 0x5BC6)) + 0x2001815082044874);
  return (*(v10 + 8 * ((850 * (v8 == 255)) ^ v9)))();
}

uint64_t sub_EA6EC@<X0>(int a1@<W2>, void *a2@<X6>, int a3@<W8>)
{
  v5 = STACK[0x518] + 4 * ((551 * v3 + v4) % 0x1D48u);
  v6 = STACK[0x518] + 4 * ((551 * v3 + 3980424) % 0x1D48u);
  v7 = *(*STACK[0x538] + (*STACK[0x530] & (a3 + 1527792994)));
  v8 = *a2 ^ 0xF1E76555;
  *(v6 - 0x40E8C283FA03C307) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v6 + v7 + a1) & v8)) ^ *(v5 - 0x40E8C283FA03C307) ^ (1912024365 * v6) ^ (1912024365 * v5) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v6 + v7 + 1527793161) & v8)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v5 + v7 + a1) & v8)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v5 + v7 + 1527793161) & v8));
  return (*(STACK[0x548] + 8 * ((121 * (v3 == 255)) ^ a3)))();
}

uint64_t sub_EA8C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = STACK[0x520] + (((1645 * a4 + 2113825) % 0xA88u) ^ 0x3DEBEB5EF7CFF3C7) + ((v8 + 1102) ^ 0xC21414A108300AA6) + ((2 * ((1645 * a4 + 2113825) % 0xA88u)) & 0x78E);
  v12 = *v7;
  v13 = *STACK[0x538];
  v14 = *(v13 + (v12 & v9));
  v15 = *a7 ^ 0xF1E76555;
  v16 = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v11 + v14 + v9) & v15)) ^ *(v11 - 0xAE02CA257B6A96CLL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v11 + v14 + v9 + 2) & v15)) ^ (110 * v11);
  v17 = STACK[0x518] + 4 * ((551 * (((v16 ^ 0x62C5DB4) + 447938831) ^ ((v16 ^ 0x15704856) + 166663405) ^ ((v16 ^ 0x135C15A4u) + 264456479)) + 1694569389) % 0x1D48);
  v18 = *(v13 + (v12 & STACK[0x540]));
  LODWORD(v12) = *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v17 + v18 + v10) & v15)) ^ *(v17 - 0x40E8C283FA03C307) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v17 + v18 + 1527793161) & v15));
  LODWORD(v13) = (v12 ^ (1912024365 * v17)) >> 24;
  v19 = ((v12 ^ (16198957 * v17)) >> 16) ^ 0xE7;
  LOWORD(v12) = v12 ^ (11565 * v17);
  LODWORD(v13) = 1645 * (((v13 ^ 0x3486F341) - 1986001631) ^ ((v13 ^ 0x93A96F8) - 1273208678) ^ ((v13 ^ 0x3DBC6593) - 2137353229)) - 1932059750;
  v20 = 1645 * v19 + 3391990 - 2696 * (((12744711 * (1645 * v19 + 3391990)) >> 32) >> 3);
  v21 = 1645 * (((v12 ^ 0x87F780F8) - 1894081783) ^ ((v12 ^ 0x6D531586) + 1706954359) ^ ((v12 ^ 0xEAA49554) - 498495835)) - 1533557833;
  v22 = 1645 * (BYTE1(v12) ^ 0x6B) + 3391990 - 2696 * (((12744711 * (1645 * (BYTE1(v12) ^ 0x6Bu) + 3391990)) >> 32) >> 3);
  v23 = ((v13 % 0xA88) ^ 0x37ECD54FFFFEFDDFLL) + STACK[0x520] + ((2 * (v13 % 0xA88)) & 0x1BBE);
  v24 = (v20 ^ 0x6F7FFFDBEECD7F5ELL) + STACK[0x520] + ((2 * v20) & 0x1EBC);
  v25 = ((v21 % 0xA88) ^ 0xFE6AF3A3F07F9B7ELL) + STACK[0x520] + ((2 * (v21 % 0xA88)) & 0x16FC);
  v26 = (v22 ^ 0xEBF6DFBB9EFFC99ALL) + STACK[0x520] + ((2 * v22) & 0x1334);
  LODWORD(v17) = ((*(v24 - 0x7A602C7E468428CALL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v24 + 288522402 + v14 + 1186175272) & v15)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v24 + 288522402 + v14 + v9 + 2) & v15)) ^ (110 * (v24 - 94)) ^ 0x46) << 8) | ((*(v23 - 0x42CD01F257B5A74BLL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v23 + 66081 + v14 + 1186175272) & v15)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v23 + 66081 + v14 + v9 + 2) & v15)) ^ (110 * (v23 + 33)) ^ 0x46) << 16);
  LODWORD(v23) = (v17 ^ 0xEFFFFF) & (*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v26 + 1627403878 + v14 + 1186175272) & v15)) ^ *(v26 + 0x928F3A209498CFALL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v26 + 1627403878 + v14 + v9 + 2) & v15)) ^ (110 * (v26 + 102)) ^ 0x6C9F9E);
  v27 = STACK[0x518] + 4 * ((551 * a4 + 710790) % 0x1D48u);
  *(v27 - 0x40E8C283FA03C307) = (1912024365 * v27) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v18 + v27 + LODWORD(STACK[0x52C])) & v15)) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v18 + v27 + 1527793161) & v15)) ^ 0xC738B5B7 ^ ((((v23 | v17 & 0x936000) << 8) ^ 0x814006FF) & (*((qword_191540 ^ 0xDDC772C6444EEA48) + ((v25 + 260072578 + v14 + 1186175272) & v15)) ^ *(v25 - 0x94B2046483644EALL) ^ *((qword_191540 ^ 0xDDC772C6444EEA48) + ((v25 + 260072578 + v14 + v9 + 2) & v15)) ^ (110 * (v25 - 126)) ^ 0x85DC4EDB) | ((v23 | v17 & 0x936000) << 8) & 0x7A23B100);
  return (*(STACK[0x548] + 8 * ((2603 * (a4 == 255)) ^ v8)))();
}

uint64_t sub_EAF18(uint64_t result)
{
  v1 = *(&off_18D8F0 + ((-73 * (dword_190520 ^ 1 ^ dword_1902E8)) ^ byte_184300[byte_158820[(-73 * (dword_190520 ^ 1 ^ dword_1902E8))] ^ 0x3B]) - 57);
  v2 = *(v1 - 1664599022);
  v3 = *(&off_18D8F0 + (byte_184300[byte_158820[(-73 * (v2 ^ dword_1902E8 ^ 1))] ^ 0xC6] ^ (-73 * (v2 ^ dword_1902E8 ^ 1))) - 94);
  v4 = v2 ^ &v6 ^ *(v3 - 2105774026);
  *(v1 - 1664599022) = 1615229111 * v4 + 0x3405E178246E17B7;
  *(v3 - 2105774026) = 1615229111 * (v4 ^ 0xF087C62724309101);
  if (result)
  {
    v5 = 1615229111 * ((*(v3 - 2105774026) + *(v1 - 1664599022)) ^ 0x24309101);
    return (*(*(&off_18D8F0 + ((-73 * (dword_190520 ^ 1 ^ dword_1902E8)) ^ byte_184300[byte_158820[(-73 * (dword_190520 ^ 1 ^ dword_1902E8))] ^ 0xC5]) + 63) + 8 * (byte_FF8E0[byte_184200[v5] ^ 0xBC] ^ v5) - 939019318))();
  }

  return result;
}

void *sub_EB0C4(void *result, char *a2, int a3, uint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(*result + (a4++ & 0xF)) = v4;
  }

  return result;
}

double sub_EB0E8(uint64_t a1, double *a2, unsigned int a3, uint64_t a4)
{
  if (a3)
  {
    if (a3 < 8 || a3 - 1 > 0xF || (~a4 & 0xFu) < ((a3 - 1) & 0xFu) || a2 - a1 - (a4 & 0xF) < 0x20)
    {
      goto LABEL_3;
    }

    if (a3 >= 0x20)
    {
      for (i = a2 + 2; ; i += 4)
      {
        v7 = (a1 + (a4 & 0xF));
        v8 = v7[1];
        *(i - 1) = *v7;
        *i = v8;
        a4 += 32;
      }
    }

    v4 = a3 & 0x18;
    result = *(a1 + (a4 & 0xF));
    *a2 = result;
    if (v4 != 8)
    {
      result = *(a1 + ((a4 + 8) & 0xF));
      a2[1] = result;
    }

    if (v4 != a3)
    {
      a4 += v4;
      a2 = (a2 + v4);
      a3 -= v4;
      do
      {
LABEL_3:
        *a2 = *(a1 + (a4 & 0xF));
        a2 = (a2 + 1);
        ++a4;
        --a3;
      }

      while (a3);
    }
  }

  return result;
}

uint64_t sub_EB1F0(uint64_t *a1)
{
  v2 = *(&off_18D8F0 + ((-73 * ((dword_1902E8 - dword_190138) ^ 1)) ^ byte_123310[byte_FF6E0[(-73 * ((dword_1902E8 - dword_190138) ^ 1))] ^ 0x9B]) - 35);
  v3 = *(v2 - 1870588683);
  v4 = *(&off_18D8F0 + (byte_FF8E0[byte_184200[(-73 * ((dword_1902E8 + v3) ^ 1))] ^ 0xFC] ^ (-73 * ((dword_1902E8 + v3) ^ 1))) - 164);
  v5 = v3 ^ &v11 ^ *(v4 - 2105774026);
  v6 = 1615229111 * v5 - 0xF7839D8DBCF6EFFLL;
  v7 = 1615229111 * (v5 ^ 0xF087C62724309101);
  *(v2 - 1870588683) = v6;
  *(v4 - 2105774026) = v7;
  LOBYTE(v4) = -73 * ((v7 + *(v2 - 1870588683)) ^ 1);
  v8 = (*(*(&off_18D8F0 + ((-73 * ((dword_1902E8 - dword_190138) ^ 1)) ^ byte_FF8E0[byte_184200[(-73 * ((dword_1902E8 - dword_190138) ^ 1))] ^ 0xFC]) - 54) + 8 * (byte_123310[byte_FF6E0[v4] ^ 0x7C] ^ v4) - 939018822))(16);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *a1 = v9;
  return result;
}

uint64_t sub_EB444()
{
  v0 = *(&off_18D8F0 + ((-73 * ((dword_1902E8 - dword_1902F0) ^ 1)) ^ byte_184300[byte_158820[(-73 * ((dword_1902E8 - dword_1902F0) ^ 1))] ^ 0xC5]) + 19);
  v1 = *(v0 - 117242970);
  v2 = *(&off_18D8F0 + (byte_184300[byte_158820[(-73 * (v1 ^ dword_1902E8 ^ 1))] ^ 0x65] ^ (-73 * (v1 ^ dword_1902E8 ^ 1))) - 1);
  v3 = &v7[v1 + *(v2 - 2105774026)];
  v4 = 1615229111 * v3 + 0x3405E178246E17B7;
  v5 = 1615229111 * (v3 ^ 0xF087C62724309101);
  *(v0 - 117242970) = v4;
  *(v2 - 2105774026) = v5;
  return (*(*(&off_18D8F0 + ((-73 * ((dword_1902E8 - dword_1902F0) ^ 1)) ^ byte_FF8E0[byte_184200[(-73 * ((dword_1902E8 - dword_1902F0) ^ 1))] ^ 0xBC]) - 76) + 8 * ((-73 * (*(v0 - 117242970) ^ 1 ^ v5)) ^ byte_184300[byte_158820[(-73 * (*(v0 - 117242970) ^ 1 ^ v5))] ^ 0x3B]) - 939018830))();
}

void *sub_EB648@<X0>(uint64_t a1@<X8>)
{
  v3 = a1 ^ 0x67;
  *(v1 + 408) = *(v2 + 8 * v3);
  return (*(v2 + 8 * (v3 ^ 0x42A ^ (v3 - 64))))(&STACK[0xAE8]);
}

uint64_t sub_EB72C@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v4 = **(v2 + 520);
  *(v2 + 1464) = *(v3 + 8 * a2);
  return (*(v3 + 8 * (a2 ^ 0x9D)))(v4, a1, 938337180);
}

uint64_t sub_EB7CC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, unsigned int a5@<W6>, unsigned int a6@<W7>, uint64_t a7@<X8>)
{
  LODWORD(STACK[0x940]) = v9;
  LODWORD(STACK[0x928]) = a2;
  v15 = a4 - 2671 * ((((2291399625u * v9) >> 32) + ((LODWORD(STACK[0x940]) - ((2291399625u * v9) >> 32)) >> 1)) >> 11) + 59800;
  v16 = *(a1 + 4 * v15) * (*(a7 + 4 * v15) - 27085663) + 1496863994;
  v17 = LODWORD(STACK[0x890]) ^ v16 ^ ((LODWORD(STACK[0x848]) ^ v16) - 1646902838) ^ ((v16 ^ 0x25E0CB71) - 2094571403) ^ ((v16 ^ 0x10368A38) - 1225711298) ^ ((v16 ^ 0x57FFFF7F) - 247966597) ^ 0xC4F5FBC2;
  v18 = *(a3 + v8);
  *(STACK[0x8C0] + 4 * v18) = *(a3 + v17) | (((*(a3 + (v17 >> 24)) << 16) | (*(a3 + BYTE2(v17)) << 8) | *(a3 + BYTE1(v17))) << 8);
  v19 = (*(a7 + 4 * (a4 + 354200 - 2671 * (a6 / 0xA6F))) - 27085663) * *(a1 + 4 * (a4 + 354200 - 2671 * (a6 / 0xA6F))) + 526935881;
  v20 = (v19 ^ 0xD4D794B6) & (2 * (v19 & 0xE09798B7)) ^ v19 & 0xE09798B7;
  LODWORD(v17) = ((2 * (v19 ^ 0xD5DEA490)) ^ 0x6A92784E) & (v19 ^ 0xD5DEA490) ^ (2 * (v19 ^ 0xD5DEA490)) & 0x35493C26;
  v21 = v17 ^ 0x15490421;
  LODWORD(v17) = (v17 ^ 0x2004) & (4 * v20) ^ v20;
  v22 = ((4 * v21) ^ 0xD524F09C) & v21 ^ (4 * v21) & 0x35493C24;
  LODWORD(v17) = (v22 ^ 0x15003000) & (16 * v17) ^ v17;
  v23 = ((16 * (v22 ^ 0x20490C23)) ^ 0x5493C270) & (v22 ^ 0x20490C23) ^ (16 * (v22 ^ 0x20490C23)) & 0x35493C20;
  LODWORD(v17) = v17 ^ 0x35493C27 ^ (v23 ^ 0x14010000) & (v17 << 8);
  v24 = LODWORD(STACK[0x880]) ^ v19 ^ (2 * ((v17 << 16) & 0x35490000 ^ v17 ^ ((v17 << 16) ^ 0x3C270000) & (((v23 ^ 0x21483C07) << 8) & 0x35490000 ^ 0x34410000 ^ (((v23 ^ 0x21483C07) << 8) ^ 0x493C0000) & (v23 ^ 0x21483C07)))) ^ 0x42DC8BCD;
  v25 = (a2 ^ (v8 + 564)) + 2 * (a2 & (v8 + 564));
  v26 = *(a3 + BYTE1(v24));
  v27 = (*(a3 + (v24 >> 24)) << 16) | (*(a3 + BYTE2(v24)) << 8);
  v28 = *(a3 + v24);
  if (v25 >= 0xF6D111C3)
  {
    v25 += 154070589;
  }

  *(STACK[0x8D0] + 4 * v18) = v28 | ((v27 | v26) << 8);
  v29 = (*(a7 + 4 * (v25 % 0xA6F)) - 27085663) * *(a1 + 4 * (v25 % 0xA6F)) - 998686682;
  v30 = LODWORD(STACK[0x878]) ^ v29 ^ ((v29 ^ 0xFA9956CF) - 1054873321) ^ ((v29 ^ 0x367D8452) + 234568588) ^ ((v29 ^ 0x67E24D40) + 1550119578) ^ ((v29 ^ 0x6F7FDFFB) + 1425629219) ^ 0xE9C147B8;
  *(STACK[0x8F0] + 4 * v18) = *(a3 + v30) | (((*(a3 + (v30 >> 24)) << 16) | (*(a3 + BYTE2(v30)) << 8) | *(a3 + BYTE1(v30))) << 8);
  LODWORD(v30) = (*(a7 + 4 * (a4 + 943000 - 2671 * (v11 / 0xA6F))) - 27085663) * *(a1 + 4 * (a4 + 943000 - 2671 * (v11 / 0xA6F))) + 1678712855;
  v31 = ((2 * (v30 ^ 0x2F0EA387)) ^ 0x69FCF8DC) & (v30 ^ 0x2F0EA387) ^ (2 * (v30 ^ 0x2F0EA387)) & 0xB4FE7C6E;
  v32 = v31 ^ 0x94020422;
  v33 = (v30 ^ 0x1BEE9FC5) & (2 * (v30 & 0x9BF0DFE9)) ^ v30 & 0x9BF0DFE9;
  v34 = (v31 ^ 0x20C4784C) & (4 * v33) ^ v33;
  v35 = ((4 * v32) ^ 0xD3F9F1B8) & v32 ^ (4 * v32) & 0xB4FE7C6C;
  v36 = STACK[0x8B0];
  v37 = ((16 * (v35 ^ 0x24060C46)) ^ 0x4FE7C6E0) & (v35 ^ 0x24060C46) ^ (16 * (v35 ^ 0x24060C46)) & 0xB4FE7C60;
  v38 = (v35 ^ 0x90F87020) & (16 * v34) ^ v34 ^ 0xB4FE7C6E ^ (v37 ^ 0x4E64400) & (((v35 ^ 0x90F87020) & (16 * v34) ^ v34) << 8);
  LODWORD(v30) = LODWORD(STACK[0x870]) ^ v30 ^ (2 * ((v38 << 16) & 0x34FE0000 ^ v38 ^ ((v38 << 16) ^ 0x7C6E0000) & (((v37 ^ 0xB018380E) << 8) & 0x34FE0000 ^ 0x820000 ^ (((v37 ^ 0xB018380E) << 8) ^ 0x7E7C0000) & (v37 ^ 0xB018380E)))) ^ 0xC1CA1E9F;
  v39 = *(a3 + v8);
  *(STACK[0x8E8] + 4 * v39) = *(a3 + v30) | (((*(a3 + BYTE3(v30)) << 16) | (*(a3 + BYTE2(v30)) << 8) | *(a3 + BYTE1(v30))) << 8);
  LODWORD(v30) = *(a1 + 4 * (a4 + 1237400 - 2671 * (v12 / 0xA6F))) * (*(a7 + 4 * (a4 + 1237400 - 2671 * (v12 / 0xA6F))) - 27085663) + 338983393;
  v40 = LODWORD(STACK[0x868]) ^ v30 ^ ((v30 ^ 0xB6247794) + 1576006027) ^ ((v30 ^ 0xBE792BA1) + 1437773248) ^ ((v30 ^ 0x63C6DA2B) - 2012390346) ^ ((v30 ^ 0x7FAFFFFF) - 1805354526) ^ 0xA51B847E;
  *(STACK[0x900] + 4 * v39) = *(a3 + v40) | (((*(a3 + (v40 >> 24)) << 16) | (*(a3 + BYTE2(v40)) << 8) | *(a3 + BYTE1(v40))) << 8);
  LODWORD(v40) = (*(a7 + 4 * (a4 + 1529129 - 2671 * (v13 / 0xA6F))) - 27085663) * *(a1 + 4 * (a4 + 1529129 - 2671 * (v13 / 0xA6F))) - 1546694970;
  v41 = LODWORD(STACK[0x860]) ^ v40 ^ ((v40 ^ 0x4BEA16AC) + 400205718) ^ ((v40 ^ 0xF52B6D6B) - 1457791917) ^ ((v40 ^ 0xE2F9EAF6) - 1094100016) ^ ((v40 ^ 0xFFF7DFF7) - 1547211057) ^ 0x2F1A3EBA;
  *(v36 + 4 * *(a3 + v8)) = (*(a3 + (v41 >> 24)) << 24) | (*(a3 + BYTE1(v41)) << 8) | (*(a3 + BYTE2(v41)) << 16) | *(a3 + v41);
  LODWORD(v39) = *(a1 + 4 * (a4 + 1826200 - 2671 * (v10 / 0xA6F))) * (*(a7 + 4 * (a4 + 1826200 - 2671 * (v10 / 0xA6F))) - 27085663) + 1596433535;
  LODWORD(v41) = ((2 * (v39 ^ 0xF17D4E01)) ^ 0xA34A2B00) & (v39 ^ 0xF17D4E01) ^ (2 * (v39 ^ 0xF17D4E01)) & 0x51A51580;
  v42 = v41 ^ 0x50A51480;
  v43 = (v39 ^ 0xB0DD5B01) & (2 * (v39 & 0xA0D85B81)) ^ v39 & 0xA0D85B81;
  LODWORD(v41) = (v41 ^ 0x1000000) & (4 * v43) ^ v43;
  v44 = ((4 * v42) ^ 0x46945600) & v42 ^ (4 * v42) & 0x51A51580;
  LODWORD(v41) = v41 ^ 0x51A51580 ^ (v44 ^ 0x40841400) & (16 * v41);
  v45 = (16 * (v44 ^ 0x11210180)) & 0x51A51580 ^ 0x41A40580 ^ ((16 * (v44 ^ 0x11210180)) ^ 0x1A515800) & (v44 ^ 0x11210180);
  LODWORD(v41) = (v41 << 8) & 0x51A51500 ^ v41 ^ ((v41 << 8) ^ 0xA5158000) & v45;
  v46 = LODWORD(STACK[0x858]) ^ v39 ^ (2 * ((v41 << 16) & 0x51A50000 ^ v41 ^ ((v41 << 16) ^ 0x15800000) & ((v45 << 8) & 0x51A50000 ^ 0x50A00000 ^ ((v45 << 8) ^ 0xA5150000) & v45))) ^ 0xD16508EA;
  v47 = *(a3 + v8);
  *(STACK[0x910] + 4 * v47) = (*(a3 + (v46 >> 24)) << 24) | (*(a3 + BYTE1(v46)) << 8) | (*(a3 + BYTE2(v46)) << 16) | *(a3 + v46);
  LODWORD(v46) = (*(a7 + 4 * (a4 + 2120600 - 2671 * (a5 / 0xA6F))) - 27085663) * *(a1 + 4 * (a4 + 2120600 - 2671 * (a5 / 0xA6F))) + 930294986;
  v48 = STACK[0x8A0];
  v49 = LODWORD(STACK[0x850]) ^ v46 ^ ((v46 ^ 0xE770514D) + 805077625) ^ ((v46 ^ 0xA04D0F88) + 1757535422) ^ ((v46 ^ 0xFB1D9B0) - 952300922) ^ ((v46 ^ 0x7FFFABBF) - 1217169269) ^ 0xC80D80BA;
  LODWORD(v39) = a4 + 2415000 - 2671 * (v7 / 0xA6F);
  *(STACK[0x908] + 4 * v47) = *(a3 + v49) | (((*(a3 + BYTE2(v49)) << 8) | (*(a3 + (v49 >> 24)) << 16) | *(a3 + BYTE1(v49))) << 8);
  LODWORD(v49) = *(a1 + 4 * v39);
  LODWORD(v47) = *(a7 + 4 * v39) - 27085663;
  LOBYTE(v49) = *(a3 + (((v47 * v49 - 52) ^ -(v47 * v49) ^ (((v47 * v49 - 52) ^ 0xE7) - 43) ^ (((v47 * v49 - 52) ^ 0x74) + 72) ^ (((v47 * v49 - 52) ^ 0xA0) - 108)) ^ 0xCCLL));
  v50 = (STACK[0x930] + v8);
  LODWORD(v39) = *v50;
  v50[3440] = v49;
  LODWORD(v49) = 1150 * v39 + 2709400 - 2671 * (((6431999 * (1150 * v39 + 2709400)) >> 32) >> 2);
  LODWORD(v49) = (*(a7 + 4 * v49) - 27085663) * *(a1 + 4 * v49) - 249651090;
  LOBYTE(v39) = ((2 * (v49 ^ 0x1E)) ^ 0x18) & (v49 ^ 0x1E) ^ (2 * (v49 ^ 0x1E)) & 0x8C;
  LOBYTE(v35) = (v39 ^ 8) & (4 * (((2 * v49) & 0x24 ^ 0x92) & v49)) ^ ((2 * v49) & 0x24 ^ 0x92) & v49;
  v50[3712] = v49 ^ (2 * (((4 * v39) ^ 0x20) & v39 & (16 * v35) ^ v35)) ^ 0x92;
  return (*(v14 + 8 * ((37 * (v8 == 255)) | v48)))();
}

uint64_t sub_EC408(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 8 * (v3 + 1148)))(a1);
  v5 = STACK[0x948];
  *(v2 + 496) = 0;
  return (*(v5 + 8 * v3))(v4);
}

uint64_t sub_EC444(uint64_t a1, unsigned int a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, int a6, int a7, unsigned int a8)
{
  STACK[0x548] = a4;
  STACK[0x5F8] = v15;
  v18 = (LODWORD(STACK[0x840]) + 1593501592) & 0xA10514FF;
  v19 = a6 + a3;
  STACK[0x930] = v11;
  v20 = v10 | (v9 << 16);
  STACK[0x690] = v18;
  v21 = (v18 + 55) & (v11 >> 16);
  STACK[0x400] = v21;
  v22 = *(v14 + 4 * v21);
  v23 = 1377 * (BYTE3(v11) ^ 0xB0) + 2400111;
  v24 = v16;
  LODWORD(STACK[0x458]) = v23;
  v25 = STACK[0x900];
  v26 = *(STACK[0x900] + v23 - 4864 * (((7064091 * v23) >> 32) >> 3));
  v27 = *(v14 + 4 * (((((2 * v26) ^ 0xEC) - 74) ^ ((((v26 ^ 0xAC) + 84) ^ ((v26 ^ 0x3D) - 61) ^ ((v26 ^ 0xE7) + 25)) - 44) ^ 0xE0) + 102));
  LODWORD(STACK[0x550]) = v19;
  v28 = v19 ^ a7 ^ v8 ^ v20 ^ (v22 >> 8) ^ v27 ^ (v22 << ((v19 & 0x18 ^ 0x18) + (v19 & 0x18u)));
  if ((v28 & v16 & 0x20000) != 0)
  {
    v29 = 2 * ((v28 - 364212035) & (364212035 - (v16 & 0x20000)));
    v30 = (v29 ^ (v28 - 364212035) ^ (364212035 - (v16 & 0x20000))) + 2 * (v29 & ((v28 - 364212035) ^ (364212035 - (v16 & 0x20000))));
  }

  else
  {
    v30 = v28 + (v16 & 0x20000);
  }

  v31 = v30 ^ v16 & 0xFFFDFFFF;
  v32 = v24 ^ v8;
  v33 = a8 ^ v13 ^ v24 ^ v8 ^ v31;
  v34 = v33 ^ 0xCA2272A0;
  if ((v33 & v8 & 2) != 0)
  {
    v35 = -(v8 & 2);
  }

  else
  {
    v35 = v8 & 2;
  }

  v36 = (v35 + v34) ^ v8 & 0xFFFFFFFD;
  LODWORD(STACK[0x7A0]) = v17;
  v38 = v17 ^ v12;
  v39 = (v24 ^ -v24 ^ ((a4 ^ v38 ^ v34 ^ v24) - (a4 ^ v38 ^ v34))) + (a4 ^ v38 ^ v34 ^ v24);
  v40 = ((STACK[0x7F0] - ((2 * STACK[0x7F0]) & 0xEC) + 118) ^ *(STACK[0x778] + 54) ^ 0x70) << 24;
  v41 = v32 ^ v38 ^ v11 ^ v39;
  v42 = v41 ^ a2;
  v43 = STACK[0x7E8];
  v44 = v40 & STACK[0x7E8];
  STACK[0x870] = v42 >> 24;
  v45 = 59 * ((v41 ^ a2) >> 24);
  v46 = v40 ^ (2 * v44);
  v47 = 1377 * (v45 ^ 0x66) + 6292890 - 4864 * (((7064091 * (1377 * (v45 ^ 0x66u) + 6292890)) >> 32) >> 3);
  v48 = *(v14 + 4 * BYTE1(v42));
  LOBYTE(v47) = (((((v45 ^ 0x63) - (v45 ^ 0xB1) - ((2 * ((v45 ^ 0x63) - (v45 ^ 0xB1))) & 4) + 2) ^ *(v25 + v47)) & 5 | (((v45 ^ 0x63) - (v45 ^ 0xB1) - ((2 * ((v45 ^ 0x63) - (v45 ^ 0xB1))) & 0xEC) + 118) ^ *(v25 + v47)) & 0xFA) ^ 0xDD) + 48;
  v49 = 1377 * (((v32 ^ v38 ^ v11 ^ v39 ^ a2) + 110) ^ 0xF1) + 2044845;
  v50 = *(v25 + v49 - 4864 * (((1766023 * v49) >> 32) >> 1));
  v51 = *(v14 + 4 * v47);
  v52 = ((v46 & STACK[0x8F8]) >> STACK[0x6A8]) ^ ((v46 & STACK[0x848]) << STACK[0x6D0]);
  v53 = (LODWORD(STACK[0x3F8]) + 98 * (((v50 ^ 4) + 124) ^ ((v50 ^ 0x5E) - 94) ^ ((v50 ^ 0x2C) + 84))) ^ (LODWORD(STACK[0x3F0]) + 49 * (((v50 ^ 0x2A) - 42) ^ ((v50 ^ 0x3A) - 58) ^ ((v50 ^ 0x66) - 102)));
  v54 = *(v14 + 4 * (((v53 >> 5) | (8 * v53)) ^ 0xC9u));
  v55 = HIBYTE(v54) + 110;
  v56 = 1377 * ((v55 ^ 0x55 ^ -(v55 ^ 0x55) ^ (68 - (v55 ^ 0x11))) + 68);
  v57 = *(v25 + (v56 - 4864 * ((883012 * v56) >> 32)));
  v58 = v55 ^ 0xE5;
  v59 = v57 ^ 0xEC;
  v60 = v57 ^ ((v58 & 0x40) + ~(2 * (v58 & 0x40)) + 119) ^ 0xFFFFFF9A;
  if ((v58 & 0x40 & v59) != 0)
  {
    v60 = v59 - (v58 & 0x40);
  }

  STACK[0x610] = v42;
  STACK[0x8F0] = BYTE2(v42);
  v61 = *(v14 + 4 * BYTE2(v42));
  v62 = (v60 ^ -v60 ^ ((v58 & 0xFFFFFFBF) - (v60 ^ v58 & 0xFFFFFFBF))) + (v58 & 0xFFFFFFBF);
  v63 = v61 << (v43 & 0x18) << (v43 & 0x18 ^ 0x18);
  LODWORD(STACK[0x510]) = v48;
  LODWORD(STACK[0x780]) = v31;
  LODWORD(v65) = __ROR4__(v24 ^ __ROR4__(__ROR4__(v32 ^ a2 ^ __ROR4__(v48, 16) ^ v52 ^ v31 ^ ((v63 ^ (v61 >> 8)) + 2 * (v63 & (v61 >> 8))) ^ v51 ^ (((v62 >> 5) | (8 * v62)) | (v54 << 8)), 27) ^ 0x66AD62DD, 5) ^ 0xEB356B16, 9) ^ 0x39F552CA;
  HIDWORD(v65) = v65;
  v64 = v65 >> 23;
  v66 = v8 ^ v13;
  v67 = STACK[0x7B8];
  v68 = STACK[0x7B8];
  v69 = STACK[0x730];
  v70 = STACK[0x730];
  v71 = STACK[0x858];
  v72 = 1377 * (HIBYTE(LODWORD(STACK[0x730])) ^ 0xEB) + 3822552;
  LOBYTE(v72) = *(v25 + v72 - 4864 * (((7064091 * v72) >> 32) >> 3));
  v73 = STACK[0x868];
  v74 = *(STACK[0x868] + 4 * BYTE1(LODWORD(STACK[0x858])));
  v75 = ((v8 ^ v13 ^ 0xA5270F8E ^ v36 ^ v64 | v24) - ((v8 ^ v13 ^ 0xA5270F8E ^ v36 ^ v64) & v24 & 0x80)) ^ (v8 ^ v13 ^ 0xA5270F8E ^ v36 ^ v64) & v24 & 0xFFFFFF7F;
  v76 = *(STACK[0x868] + 4 * BYTE2(v68));
  LODWORD(STACK[0x6D8]) = v8 ^ 0xEAA59473 ^ v64;
  v77 = *(v73 + 4 * BYTE2(v70));
  STACK[0x810] = v36 ^ v24;
  LODWORD(STACK[0x418]) = v38;
  LODWORD(STACK[0x580]) = v39 ^ v32;
  LODWORD(STACK[0x838]) = v75;
  v78 = v39 ^ v38 ^ 0xCA2272A0 ^ v75;
  LODWORD(STACK[0x7F0]) = v78 ^ v32;
  LODWORD(STACK[0x6C0]) = v24 ^ v66 ^ v41 ^ v78;
  v79 = (16 * ((3 * (((v72 ^ 7) + 25) ^ ((v72 ^ 9) + 39) ^ ((v72 ^ 8) + 56))) & 3)) ^ (-38 - 9 * (((v72 ^ 9) - 9) ^ ((v72 ^ 4) - 4) ^ ((v72 ^ 0x7B) - 123)));
  v80 = *(v73 + 4 * BYTE1(v70));
  v81 = *(v73 + 4 * v69);
  HIDWORD(v65) = *(v73 + 4 * v71);
  LODWORD(v65) = HIDWORD(v65);
  v82 = v65 >> 24;
  v84 = __PAIR64__(v80, __ROR4__(v74, 16));
  v83 = v82 ^ v84;
  v85 = *(v73 + 4 * v67);
  LODWORD(v84) = v80;
  v86 = *(v73 + 4 * ((((v79 ^ 0xE0 ^ -(v79 ^ 0xE0) ^ (-63 - (v79 ^ 0x21))) - 63) ^ 0xDE) - 110));
  v87 = (v84 >> 16) ^ __ROR4__(v77, 8);
  v88 = 1377 * (HIBYTE(v85) ^ 0x4C) + 2756754 - 4864 * (((7064091 * (1377 * (HIBYTE(v85) ^ 0x4C) + 2756754)) >> 32) >> 3);
  v89 = *(v73 + 4 * BYTE1(v68));
  LODWORD(STACK[0x730]) = v88;
  LODWORD(v68) = *(v73 + ((v68 >> 22) & 0x3FC));
  LODWORD(v84) = __ROR4__(v81, 24);
  LOBYTE(v81) = ((*(v25 + v88) ^ 0x12) - 18) ^ ((*(v25 + v88) ^ 0xAF) + 81) ^ ((*(v25 + v88) ^ 0xCB) + 53);
  LODWORD(STACK[0x578]) = v87 ^ v84 ^ v86;
  v90 = *(v73 + ((v71 >> 22) & 0x3FC));
  v91 = (((v81 - 88) ^ 0xCC) + 102) | (v85 << 8);
  HIDWORD(v84) = *(v73 + 4 * BYTE2(v71));
  LODWORD(v84) = HIDWORD(v84);
  v92 = (v84 >> 8);
  HIDWORD(v84) = v89;
  LODWORD(v84) = v89;
  v93 = (v84 >> 16) ^ __ROR4__(v76, 8) ^ v68;
  v94 = 1377 * (a8 ^ 0x69) + 1692333 - 9728 * (((1766023 * (1377 * (a8 ^ 0x69u) + 1692333)) >> 32) >> 2);
  if (v94 >> 8 >= 0x13)
  {
    v94 = ((2 * v94) & 0x5A00) + (v94 ^ 0xFFFFED00);
  }

  LODWORD(STACK[0x2D8]) = BYTE3(v11);
  STACK[0x928] = v11;
  v95 = *(v73 + 4 * v11);
  v96 = *(v25 + v94);
  v97 = *(v73 + 4 * (LODWORD(STACK[0x788]) ^ 0xA0u));
  v98 = *(v73 + 4 * ((LODWORD(STACK[0x788]) ^ 0xCA2272A0) >> 16));
  STACK[0x668] = a8;
  LODWORD(STACK[0x590]) = *(v73 + 4 * BYTE1(STACK[0x930]));
  LODWORD(STACK[0x890]) = *(v73 + 4 * ((v96 ^ 0x81) - 110));
  v99 = *(STACK[0x948] + 8 * ((161 * (BYTE3(v11) == (BYTE3(v11) + 19))) ^ LODWORD(STACK[0x840])));
  LODWORD(STACK[0x538]) = v90;
  LODWORD(STACK[0x808]) = v83;
  STACK[0x560] = v92;
  STACK[0x930] = v90 ^ v83 ^ v92;
  LODWORD(STACK[0x4D8]) = v91;
  LODWORD(STACK[0x628]) = v93 ^ v91;
  LODWORD(STACK[0x528]) = v98;
  HIDWORD(v100) = v95;
  LODWORD(v100) = v95;
  LODWORD(STACK[0x568]) = v100 >> 24;
  LODWORD(STACK[0x358]) = v97;
  return v99();
}

uint64_t sub_ECE08()
{
  v0 = *(&off_18D8F0 + ((-73 * ((dword_1902E8 - dword_190148) ^ 1)) ^ byte_123410[byte_FF7E0[(-73 * ((dword_1902E8 - dword_190148) ^ 1))] ^ 0xEA]) + 67);
  v1 = *(v0 - 370269698);
  v2 = *(&off_18D8F0 + (byte_184300[byte_158820[(-73 * ((dword_1902E8 - v1) ^ 1))] ^ 0xC3] ^ (-73 * ((dword_1902E8 - v1) ^ 1))) - 93);
  v3 = v1 - &v7 + *(v2 - 2105774026);
  v4 = 1615229111 * v3 + 0x3405E178246E17B7;
  v5 = 1615229111 * (v3 ^ 0xF087C62724309101);
  *(v0 - 370269698) = v4;
  *(v2 - 2105774026) = v5;
  return (*(*(&off_18D8F0 + ((-73 * ((dword_1902E8 - dword_190148) ^ 1)) ^ byte_FF8E0[byte_184200[(-73 * ((dword_1902E8 - dword_190148) ^ 1))] ^ 0xBC]) - 76) + 8 * (((-73 * (*(v0 - 370269698) ^ 1 ^ v5)) ^ byte_184300[byte_158820[(-73 * (*(v0 - 370269698) ^ 1 ^ v5))] ^ 0x3B]) | 0xA00u) - 939039246))();
}

uint64_t sub_ECF9C(uint64_t a1, uint64_t a2)
{
  LODWORD(STACK[0x1018]) = v4 & 0xF;
  v7 = v4 & 0xF | v3;
  LODWORD(STACK[0x101C]) = v7;
  v8 = v4 - v7;
  LODWORD(STACK[0x1020]) = v8;
  LODWORD(STACK[0x1024]) = v8 + v3;
  v5[201] = v3;
  v9 = v5[164];
  v5[183] = *(v6 + 8 * v2);
  return (*(v6 + 8 * (v2 + 208)))(v9, a2, 938337180);
}

char *sub_ED068(char *result, char *a2, unint64_t a3)
{
  if (((a2 ^ result) & 7) == 0)
  {
    v5 = -result & 7;
    if ((-result & 7u) <= 3)
    {
      if ((-result & 7u) <= 1)
      {
        if (!v5)
        {
LABEL_27:
          v13 = a3 >= v5;
          v14 = a3 - v5;
          if (!v13)
          {
            v14 = 0;
          }

          if (v14 >= 8)
          {
            v15 = ((v14 >> 3) + 7) >> 3;
            v16 = (v14 >> 3) & 7;
            if (v16 > 3)
            {
              if (((v14 >> 3) & 7) <= 5)
              {
                if (v16 == 4)
                {
                  goto LABEL_58;
                }

                goto LABEL_57;
              }

              if (v16 == 6)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            }

            if (((v14 >> 3) & 7) > 1)
            {
              if (v16 == 2)
              {
                goto LABEL_60;
              }

              goto LABEL_59;
            }

            if (!v16)
            {
              goto LABEL_54;
            }

            while (1)
            {
              v32 = *result;
              result += 8;
              *a2 = v32;
              a2 += 8;
              if (!--v15)
              {
                break;
              }

LABEL_54:
              v25 = *result;
              result += 8;
              *a2 = v25;
              a2 += 8;
LABEL_55:
              v26 = *result;
              result += 8;
              *a2 = v26;
              a2 += 8;
LABEL_56:
              v27 = *result;
              result += 8;
              *a2 = v27;
              a2 += 8;
LABEL_57:
              v28 = *result;
              result += 8;
              *a2 = v28;
              a2 += 8;
LABEL_58:
              v29 = *result;
              result += 8;
              *a2 = v29;
              a2 += 8;
LABEL_59:
              v30 = *result;
              result += 8;
              *a2 = v30;
              a2 += 8;
LABEL_60:
              v31 = *result;
              result += 8;
              *a2 = v31;
              a2 += 8;
            }
          }

          v33 = v14 & 7;
          if (v33 <= 3)
          {
            if (v33 <= 1)
            {
              if (!v33)
              {
                return result;
              }

LABEL_78:
              *a2 = *result;
              return result;
            }

            if (v33 == 2)
            {
LABEL_77:
              v39 = *result++;
              *a2++ = v39;
              goto LABEL_78;
            }

LABEL_76:
            v38 = *result++;
            *a2++ = v38;
            goto LABEL_77;
          }

          if (v33 > 5)
          {
            if (v33 != 6)
            {
              v34 = *result++;
              *a2++ = v34;
            }

            v35 = *result++;
            *a2++ = v35;
          }

          else if (v33 == 4)
          {
            goto LABEL_75;
          }

          v36 = *result++;
          *a2++ = v36;
LABEL_75:
          v37 = *result++;
          *a2++ = v37;
          goto LABEL_76;
        }

LABEL_26:
        v12 = *result++;
        *a2++ = v12;
        goto LABEL_27;
      }

      if (v5 == 2)
      {
LABEL_25:
        v11 = *result++;
        *a2++ = v11;
        goto LABEL_26;
      }

LABEL_24:
      v10 = *result++;
      *a2++ = v10;
      goto LABEL_25;
    }

    if ((-result & 7u) > 5)
    {
      if (v5 != 6)
      {
        v6 = *result++;
        *a2++ = v6;
      }

      v7 = *result++;
      *a2++ = v7;
    }

    else if (v5 == 4)
    {
      goto LABEL_23;
    }

    v8 = *result++;
    *a2++ = v8;
LABEL_23:
    v9 = *result++;
    *a2++ = v9;
    goto LABEL_24;
  }

  if ((a3 + 7) >= 8)
  {
    v3 = (a3 + 7) >> 3;
    v4 = a3 & 7;
    if (v4 > 3)
    {
      if ((a3 & 7) <= 5)
      {
        if (v4 == 4)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

      if (v4 == 6)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    if ((a3 & 7) > 1)
    {
      if (v4 == 2)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    if ((a3 & 7) == 0)
    {
      goto LABEL_45;
    }

    while (1)
    {
      v24 = *result++;
      *a2++ = v24;
      if (!--v3)
      {
        break;
      }

LABEL_45:
      v17 = *result++;
      *a2++ = v17;
LABEL_46:
      v18 = *result++;
      *a2++ = v18;
LABEL_47:
      v19 = *result++;
      *a2++ = v19;
LABEL_48:
      v20 = *result++;
      *a2++ = v20;
LABEL_49:
      v21 = *result++;
      *a2++ = v21;
LABEL_50:
      v22 = *result++;
      *a2++ = v22;
LABEL_51:
      v23 = *result++;
      *a2++ = v23;
    }
  }

  return result;
}

_BYTE *sub_ED2C4(_BYTE *result, unsigned int a2, unint64_t a3)
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