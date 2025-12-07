uint64_t sub_24474C480@<X0>(uint64_t a1@<X6>, unint64_t a2@<X8>)
{
  STACK[0x898] = *(a1 + 8 * v3);
  STACK[0x410] = v2;
  LODWORD(STACK[0x72C]) = v7;
  STACK[0x820] = a2;
  STACK[0x7D8] = v5;
  LODWORD(STACK[0x748]) = v4;
  STACK[0x840] = v6;
  STACK[0x768] = 0;
  v10 = (*(a1 + 8 * (v8 + 3089)))(16);
  v11 = STACK[0x328];
  STACK[0x6F0] = v10 + v9;
  return (*(v11 + 8 * (((((v8 ^ (v10 == 0)) & 1) == 0) * ((v8 - 757162943) & 0x2D213F2F ^ 0x295F)) ^ v8)))();
}

uint64_t sub_24474C51C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  a1[1] = 0x750C1ABFB0567FDBLL;
  return (*(a7 + 8 * v7))();
}

uint64_t sub_24474C554@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v4 = v2 + ((a2 - 109671501) & 0x6896FF7) - 0x7D2D1804CAB32316 + 803 * (a2 ^ 0x504Au);
  v6 = v4 <= 0x5FE4E3D9 || v4 >= (v3 - 1118126865) + 1608836058;
  return (*(a1 + 8 * ((195 * v6) ^ a2)))();
}

uint64_t sub_24474C6CC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = ((2 * (v7 - 0x7D2D18052A97A823)) & 0x6FBFE3BBFFB7E4B4) + ((v7 - 0x7D2D18052A97A823) ^ 0x77DFF1DDFFDBF25ALL) - 0x77DFF1DDFFDBF25ALL;
  STACK[0x300] = v8;
  STACK[0x2F0] = v8 + 1;
  STACK[0x2E0] = ((v7 - 0x7D2D18052A97A821) ^ 0x5DF7DB7F4EEFFD8FLL) - 0x45A4810804043882 + ((2 * (v7 - 0x7D2D18052A97A821)) & 0x3BEFB6FE9DDFFB1ELL);
  LODWORD(STACK[0x310]) = STACK[0x8B4];
  return (*(a7 + 8 * (a2 + 4802)))(1359470885);
}

uint64_t sub_24474C990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v7 + (v8 ^ v10) - 0x7D2D1804F8C18C2DLL;
  v12 = v11 < 0x31D61BFA;
  v13 = v11 > v9;
  if (v9 < 0x31D61BFA != v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  return (*(a7 + 8 * ((((STACK[0x320] ^ 0xF58) - 1511) * !v14) ^ (STACK[0x320] + 3645))))(a1);
}

uint64_t sub_24474CB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x320] - 2009;
  v9 = *(a7 + 8 * (STACK[0x320] + 2779));
  LODWORD(STACK[0x310]) = v7;
  return v9(a1, v8, a3, a4, a5, a6);
}

uint64_t sub_24474CBB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, __int16 a6@<W8>)
{
  v9 = STACK[0x320] + 734;
  LODWORD(STACK[0x8B4]) = STACK[0x310];
  LOWORD(STACK[0x8BA]) = a6;
  LODWORD(STACK[0x8BC]) = v7;
  LODWORD(STACK[0x748]) = v8;
  STACK[0x8C0] = v6;
  return (*(a5 + 8 * v9))(a1, a2, a3, a4, LODWORD(STACK[0x31C]));
}

uint64_t sub_24474CC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X6>, __int16 a5@<W8>)
{
  LODWORD(STACK[0x8B4]) = STACK[0x310];
  LOWORD(STACK[0x8BA]) = a5;
  LODWORD(STACK[0x8BC]) = v7;
  STACK[0x8C0] = v5;
  return (*(a4 + 8 * ((216 * (v7 == (((v6 - 1040177578) | 0x9AA4002) ^ 0xC58C7A48) + v6 - 1331)) ^ v6)))(a1, a2, 1216081110, a3, LODWORD(STACK[0x31C]));
}

uint64_t sub_24474CCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(v7 + v8 + ((v9 + 878026808) | 0x2060) - 0x7D2D18052A97D587) << 56;
  v11 = (v7 - 0x7D2D18052A97A823 + v8);
  v12 = v10 | (v11[7] << 48) | (v11[8] << 40) | (v11[9] << 32) | (v11[10] << 24) | (v11[11] << 16) | (v11[12] << 8) | v11[13];
  STACK[0x840] = v12 + 0x44046241CC2D2A4ELL - ((2 * v12) & 0x8808C483985A549CLL);
  return (*(a7 + 8 * ((((v9 > 0x6507EBB1) << 9) | ((v9 > 0x6507EBB1) << 10)) ^ (v9 + 878026030))))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_24474CE20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, __int16 a6@<W8>)
{
  v11 = v9 | 0xC00;
  LODWORD(STACK[0x8B4]) = STACK[0x310];
  LOWORD(STACK[0x8BA]) = a6;
  LODWORD(STACK[0x8BC]) = v10;
  STACK[0x8C0] = v8;
  STACK[0x768] = v7 + v6 + (v11 ^ 0x82D2E7FAD5685BE3);
  return (*(a5 + 8 * v11))(a1, a2, a3, a4, LODWORD(STACK[0x31C]));
}

uint64_t sub_24474CE80@<X0>(uint64_t a1@<X6>, unsigned __int16 a2@<W8>)
{
  STACK[0x7D8] = v2;
  v6 = LODWORD(STACK[0x8B4]) == v4 && a2 == ((v3 ^ 0x2D69) + 7862);
  return (*(a1 + 8 * ((156 * (((-73 * (v3 ^ 0x69)) ^ v6) & 1)) ^ v3)))();
}

uint64_t sub_24474CED4@<X0>(uint64_t a1@<X6>, __int16 a2@<W8>)
{
  v5 = STACK[0x748];
  v6 = STACK[0x840];
  v7 = STACK[0x768];
  STACK[0x5E8] = STACK[0x6F0];
  LODWORD(STACK[0x484]) = v4;
  LOWORD(STACK[0x4E6]) = a2;
  LODWORD(STACK[0x6B4]) = v3;
  LODWORD(STACK[0x4BC]) = v5;
  STACK[0x390] = v6;
  STACK[0x730] = v7;
  LODWORD(STACK[0x5B4]) = -996403115;
  return (*(a1 + 8 * v2))();
}

uint64_t sub_24474CF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X6>, __int16 a5@<W8>)
{
  LODWORD(STACK[0x8B4]) = STACK[0x310];
  LOWORD(STACK[0x8BA]) = a5;
  LODWORD(STACK[0x8BC]) = v7;
  STACK[0x8C0] = v5;
  return (*(a4 + 8 * v6))(a1, a2, 1216081110, a3, LODWORD(STACK[0x31C]));
}

uint64_t sub_24474CFC0@<X0>(unint64_t a1@<X0>, unint64_t a2@<X5>, unint64_t a3@<X6>, unint64_t a4@<X8>)
{
  STACK[0x250] = *(STACK[0x328] + 8 * v4);
  *&STACK[0x2E0] = vdupq_n_s64(v7);
  *&STACK[0x2F0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x2D0] = vdupq_n_s64(v6);
  *&STACK[0x300] = vdupq_n_s64(0xFFA15F77D01CA573);
  *&STACK[0x2B0] = vdupq_n_s64(0x3098A71738BBE723uLL);
  *&STACK[0x2C0] = vdupq_n_s64(a3);
  *&STACK[0x290] = vdupq_n_s64(0x31D67F1C8D5E088uLL);
  *&STACK[0x2A0] = vdupq_n_s64(0xF9C5301C6E543EF0);
  *&STACK[0x270] = vdupq_n_s64(a1);
  *&STACK[0x280] = vdupq_n_s64(a2);
  *&STACK[0x260] = vdupq_n_s64(a4);
  return (STACK[0x250])(v5 - 15);
}

uint64_t sub_24474DF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v23 = (v12 + v15);
  v24 = STACK[0x310] + v23;
  v25 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = (((v13 & v14) + v16 + v25) | v21) - (((v13 & v14) + v16 + v25) | v9) + v9;
  v27 = __ROR8__(v26 ^ a2, 8);
  v28 = v26 ^ v22;
  v29 = (v27 + v28) ^ a3;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = __ROR8__(((v20 & (2 * (v31 + v30))) - (v31 + v30) + a7) ^ v8, 8);
  v33 = ((v20 & (2 * (v31 + v30))) - (v31 + v30) + a7) ^ v8 ^ __ROR8__(v30, 61);
  v34 = (v32 + v33) ^ 0x1717D4ABBED3C077;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (v10 - ((v36 + v35) | v10) + ((v36 + v35) | 0xFFA15F77D01CA573)) ^ a6;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x3098A71738BBE723;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (((2 * (v41 + v40)) | 0xF9C5301C6E543EF0) - (v41 + v40) + 0x31D67F1C8D5E088) ^ a5;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  *v24 = *(v19 + v23) ^ v17 ^ (((v44 + v43 - (a1 & (2 * (v44 + v43))) + a8) ^ a4) >> (8 * (v24 & 7u)));
  return (*(STACK[0x328] + 8 * (((v12 != 872629589) * v18) ^ v11)))();
}

uint64_t sub_24474E0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39)
{
  STACK[0x350] = STACK[0x310];
  LODWORD(STACK[0x7C4]) = a39;
  return (*(STACK[0x328] + 8 * v39))(a1, a2, 1216124116, a4, LODWORD(STACK[0x31C]), a6);
}

uint64_t sub_24474E160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (*(a7 + 8 * (v7 + 15674)))(a1, a2, a3, a4, a5, a6);
  v9 = STACK[0x328];
  STACK[0x360] = 0;
  return (*(v9 + 8 * v7))(v8);
}

uint64_t sub_24474E2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x350];
  v10 = STACK[0x7C4];
  STACK[0x478] = &STACK[0x510];
  STACK[0x4F8] = v9;
  LODWORD(STACK[0x794]) = v10;
  LODWORD(STACK[0x524]) = 1949473975;
  return (*(a7 + 8 * ((((10 * (v7 ^ (v8 + 768))) ^ 0x15DE) * (v7 != -1675859066)) | (v7 + 683742661))))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_24474E3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(v8 - 0x6286B82630F8F22CLL);
  STACK[0x4F0] = 0x750C1ABFB0567FDBLL;
  STACK[0x858] = 0x51C9FC85BE436A2;
  return (*(a7 + 8 * (((((v7 - 52) ^ (v10 == v9)) & 1) * ((v7 + 1376491174) & 0xADF41BEA ^ 0x91A)) ^ v7)))(a1, a2, a5, a4);
}

uint64_t sub_24474E438@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  STACK[0x3B8] = v2;
  LODWORD(STACK[0x4CC]) = 1375866203;
  STACK[0x5E0] = &STACK[0x4F0];
  LODWORD(STACK[0x854]) = -909373485;
  return (*(a1 + 8 * a2))(1845370862, 305147913);
}

uint64_t sub_24474E668@<X0>(uint64_t a1@<X6>, unsigned int a2@<W8>)
{
  v2 = *(STACK[0x4F0] - 0x750C1ABFB0567FC3);
  STACK[0x7A0] = v2;
  return (*(a1 + 8 * ((112 * (v2 != 0)) ^ a2)))();
}

uint64_t sub_24474E6D8@<X0>(uint64_t a1@<X6>, unsigned int a2@<W8>)
{
  v3 = (v2 | ((v2 < 0xA6B181C) << 32)) + 0x2F92C0D317064F86;
  STACK[0x958] = v3;
  v4 = STACK[0x858];
  STACK[0x960] = STACK[0x858];
  return (*(a1 + 8 * ((1324 * (v3 - v4 - 0x2A76210AC58D310ALL < ((a2 - 12918 - 6400) ^ (a2 - 6628)))) ^ a2)))();
}

uint64_t sub_24474E79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a2 + 8 * ((v7 - 2239) ^ 0x768));
  LOWORD(STACK[0x946]) = v6;
  LODWORD(STACK[0x2E0]) = v6;
  return v8(a1, a2, a3, a4, a5, a6, a2);
}

uint64_t sub_24474EE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = STACK[0x320] ^ 0x7E36AB07;
  v68 = (STACK[0x320] + 120549557) & 0xF8D0A7F9;
  v69 = STACK[0x320] + 10956;
  v70 = (v66 ^ 0xE2617E9u) + a66;
  STACK[0x948] = v70 + 10;
  v71 = ((v68 - 0x178535579F5333E9) ^ v67) + v70;
  v72 = v71 < 0xD264D4ED;
  v73 = v71 > a65;
  if (a65 < 0xD264D4ED != v72)
  {
    v74 = v72;
  }

  else
  {
    v74 = v73;
  }

  return (*(a7 + 8 * ((2019 * !v74) ^ v69)))(a1);
}

uint64_t sub_24474F060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a7 + 8 * ((v7 - 2241) ^ 0x76A));
  LODWORD(STACK[0x2E0]) = 8855;
  return v8(a1, a2, a3, a4, a5);
}

uint64_t sub_24474F0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, unint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v57 = STACK[0x320] + 1201240307;
  v58 = STACK[0x320] + 17355;
  v59 = STACK[0x320] + 19334;
  v60 = (v55 ^ v56) + a55;
  STACK[0x928] = v60 + 10;
  v61 = v57 + (v58 ^ 0xF1096DDD139F52F2) + v60;
  v62 = v61 < 0xAB82BBD8;
  v63 = v61 > a51;
  if (a51 < 0xAB82BBD8 != v62)
  {
    v64 = v62;
  }

  else
  {
    v64 = v63;
  }

  return (*(a7 + 8 * ((19 * v64) ^ v59)))(a1, a2, a3, a4, a5);
}

uint64_t sub_24474F2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a7 + 8 * (v7 - 535));
  LODWORD(STACK[0x2F0]) = 8855;
  return v8(a1, a2, a3, a4, a5);
}

uint64_t sub_24474F2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x320] - 1647;
  LODWORD(STACK[0x8F4]) = v7;
  return (*(a7 + 8 * (v8 ^ 0x14E1)))(a1, a2, a3, a4, a5);
}

uint64_t sub_24474F344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, unint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v65 = STACK[0x320] - 2029;
  v66 = STACK[0x320] + 7996;
  v67 = (v63 ^ v64) + a63;
  STACK[0x938] = v67 + 10;
  v67 -= 0x28AECDD6355E7B48;
  v68 = v67 < 0xE458A521;
  v69 = v67 > a57;
  if (a57 < 0xE458A521 != v68)
  {
    v70 = v68;
  }

  else
  {
    v70 = v69;
  }

  return (*(a7 + 8 * (((v65 ^ 0x103) * v70) ^ v66)))(a1, a2, 1216081110, a4, a5);
}

uint64_t sub_24474F4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a7 + 8 * (v7 - 3935));
  LODWORD(STACK[0x300]) = 8855;
  return v8(a1, a2, a3, a4, a5);
}

uint64_t sub_24474F588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = STACK[0x320] + 18795;
  LODWORD(STACK[0x8FC]) = v65;
  v68 = (v65 ^ v66) + a65;
  STACK[0x900] = v68 + 10;
  v68 -= 0x2E752BE549ABA067;
  v69 = v68 < 0x725C0B98;
  v70 = v68 > a34;
  if (a34 < 0x725C0B98 != v69)
  {
    v71 = v69;
  }

  else
  {
    v71 = v70;
  }

  return (*(a7 + 8 * (v67 ^ (19 * v71))))(a1, a2, a3, a4, a5);
}

uint64_t sub_24474F730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a7 + 8 * ((v7 - 2301) ^ 0x72E));
  LODWORD(STACK[0x260]) = 8855;
  return v8(a1, a2, a3, a4, a5);
}

uint64_t sub_24474F768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unint64_t a30, uint64_t a31, uint64_t a32)
{
  v34 = STACK[0x320] + 12647;
  v35 = (v32 ^ v33) + a32;
  STACK[0x8D0] = v35 + 10;
  v35 -= 0x1CBD6E83EC2526BCLL;
  v36 = v35 < 0x56CDD3A1;
  v37 = v35 > a30;
  if (a30 < 0x56CDD3A1 != v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v37;
  }

  return (*(a7 + 8 * (v34 ^ (47 * v38))))(a1, a2, a3, a4, a5);
}

uint64_t sub_24474F91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a7 + 8 * ((((v7 ^ 0x2DE50) + 1318988531) & 0xB161DDFE ^ 0xFF9) + (v7 ^ 0x2DE50)));
  LODWORD(STACK[0x290]) = 8855;
  return v8(a1, a2, a3, a4, a5);
}

uint64_t sub_24474F9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, unint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v51 = STACK[0x320] + 19445;
  v52 = ((v50 + STACK[0x320] - 2029 - 309) ^ v49) + a49;
  STACK[0x918] = v52 + 10;
  v52 -= 0x975FCA4A6CE85F9;
  v53 = v52 < 0x21C78427;
  v54 = v52 > a45;
  if (a45 < 0x21C78427 != v53)
  {
    v55 = v53;
  }

  else
  {
    v55 = v54;
  }

  return (*(a7 + 8 * ((53 * v55) ^ v51)))(a1, a2, 1216081110, a4, a5);
}

uint64_t sub_24474FB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a7 + 8 * (v7 - 535));
  LODWORD(STACK[0x310]) = 8855;
  return v8(a1, a2, a3, a4, a5);
}

uint64_t sub_244750098(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8 * (v3 - 535));
  LOWORD(STACK[0x926]) = v2;
  LODWORD(STACK[0x2F0]) = v2;
  return v4(a1);
}

uint64_t sub_2447500EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8 * (v3 - 535));
  LOWORD(STACK[0x8FA]) = v2;
  LODWORD(STACK[0x260]) = v2;
  return v4(a1);
}

uint64_t sub_244750140(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8 * ((v3 - 2282) ^ 0x733));
  LOWORD(STACK[0x8CE]) = v2;
  LODWORD(STACK[0x290]) = v2;
  return v4(a1);
}

uint64_t sub_2447501C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8 * ((v3 - 2257) ^ 0x75A));
  LOWORD(STACK[0x936]) = v2;
  LODWORD(STACK[0x300]) = v2;
  return v4(a1);
}

uint64_t sub_2447501F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8 * (v3 - 535));
  LOWORD(STACK[0x916]) = v2;
  LODWORD(STACK[0x310]) = v2;
  return v4(a1);
}

uint64_t sub_244750220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x320] + 14291;
  LODWORD(STACK[0x664]) = v7;
  LODWORD(STACK[0x300]) = LOWORD(STACK[0x936]);
  return (*(a7 + 8 * v8))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_244750250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x320] + 18268;
  LODWORD(STACK[0x584]) = v7;
  return (*(a7 + 8 * v8))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_24475028C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x9C0] + (v7 ^ v8) - 0x6B2E761C077F108CLL;
  v10 = STACK[0x9B8] - 0x326774D020C0FFF0;
  v11 = v9 < 0x22B939C3;
  v12 = v9 > v10;
  if (v11 != v10 < 0x22B939C3)
  {
    v12 = v11;
  }

  return (*(a7 + 8 * ((1003 * v12) ^ (STACK[0x320] + 11454))))(a1, a2, 1216081110, a4, a5, a6);
}

uint64_t sub_24475043C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x320] + 3829;
  v9 = STACK[0x320] - 1674625575;
  LODWORD(STACK[0x804]) = v7;
  return (*(a7 + 8 * ((993 * (v9 != -1057078608)) ^ ((v8 ^ 0x63D0C9C7) + v9))))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_244750494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x970] + (v7 ^ v8) - 0x4EB7C46A5D002681;
  v10 = STACK[0x968] - 0x12F9DB6A50DD3B53;
  v11 = v9 < 0x8D68AE49;
  v12 = v9 > v10;
  if (v11 != v10 < 0x8D68AE49)
  {
    v12 = v11;
  }

  return (*(a7 + 8 * ((STACK[0x320] + 5673) | (4 * v12))))(a1, a2, 1216081110, a4, LODWORD(STACK[0x31C]), a6);
}

uint64_t sub_244750630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x320] + 8791;
  LODWORD(STACK[0x55C]) = v7;
  return (*(a7 + 8 * v8))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_244750660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x320] + 9125;
  LODWORD(STACK[0x744]) = v7;
  return (*(a7 + 8 * v8))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_24475069C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x960] + (v7 ^ v8) - 0x51C9FC7C02A35AELL;
  v10 = STACK[0x958] - 0x2F92C0D285B766B8;
  v11 = v9 < 0x9BBA00EA;
  v12 = v9 > v10;
  if (v11 != v10 < ((STACK[0x320] + 4002) ^ 0x9BBA182EuLL))
  {
    v12 = v11;
  }

  return (*(a7 + 8 * ((225 * v12) ^ (STACK[0x320] + 15924))))(a1, a2, a3, a4, LODWORD(STACK[0x31C]), a6);
}

uint64_t sub_244750828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x990] + (v7 ^ v8) - 0x8E0387F399A892BLL;
  v10 = STACK[0x988] - 0x50262E18C1613524;
  v11 = v9 < 0x770BDE10;
  v12 = v9 > v10;
  if (v11 != v10 < 0x770BDE10)
  {
    v12 = v11;
  }

  return (*(a7 + 8 * (v12 | (STACK[0x320] + 16406))))(a1, a2, 1216081110, a4, LODWORD(STACK[0x31C]), a6);
}

uint64_t sub_244750998@<X0>(uint64_t a1@<X6>, unint64_t a2@<X8>)
{
  v5 = STACK[0x718];
  STACK[0x500] = a2;
  STACK[0x490] = v5 + v2;
  return (*(a1 + 8 * ((((v3 ^ 0x40EB) - 5170) * (v4 == 237377481)) ^ v3)))();
}

uint64_t sub_244750A4C@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  v7 = *(v4 - 0x6286B82630F8F1B4);
  v8 = 1197783899 * *(v4 - 0x6286B82630F8F1C8) - 2138716457;
  v9 = 1649972239 * ((((v6 - 224) | 0x45BEE32D) - (v6 - 224) + ((v6 - 224) & 0xBA411CD0)) ^ 0x9E06CF55);
  *(v6 - 224) = 1270344271 - v9;
  *(v6 - 216) = a2;
  *(v6 - 208) = v3;
  *(v6 - 184) = (v7 ^ 0x4259F24) - v9 - 1749510158 + ((v7 << (v5 ^ 0x2A)) & 0xF6FEDF5E ^ 0xF6B4C116);
  *(v6 - 180) = v5 - v9 + 322434182;
  *(v6 - 176) = v4 + 0x154269182B6B91FALL;
  *(v6 - 200) = v8 ^ v9;
  *(v6 - 196) = v9 ^ v2 ^ 0x5351E767;
  *(v6 - 192) = a2;
  v10 = (*(a1 + 8 * (v5 ^ 0x4904)))(v6 - 224);
  return (*(STACK[0x328] + 8 * v5))(v10);
}

uint64_t sub_244750B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x980] + (v7 ^ v8) - 0x65F456A139F40805;
  v10 = STACK[0x978] - 0x41BB32F7F42089BCLL;
  v11 = v9 < 0x93760F73;
  v12 = v9 > v10;
  if (v11 != v10 < 0x93760F73)
  {
    v12 = v11;
  }

  return (*(a7 + 8 * ((2017 * v12) ^ (STACK[0x320] + 19086))))(a1, a2, 1216081110, a4, LODWORD(STACK[0x31C]), a6);
}

uint64_t sub_244750D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x320] + 174;
  LODWORD(STACK[0x6C4]) = v7;
  LODWORD(STACK[0x310]) = LOWORD(STACK[0x916]);
  return (*(a7 + 8 * v8))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_244750DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x9A0] + (v7 ^ v8) - 0x6FD5269A32777A9CLL;
  v10 = STACK[0x998] - 0x1F897D3FA0385699;
  v11 = v9 < 0x921E1723;
  v12 = v9 > v10;
  if (v11 != v10 < 0x921E1723)
  {
    v12 = v11;
  }

  return (*(a7 + 8 * ((76 * v12) ^ (STACK[0x320] + 11772))))(a1, a2, a3, a4, LODWORD(STACK[0x31C]), a6);
}

uint64_t sub_244750EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = STACK[0x438];
  STACK[0x750] = v7;
  LODWORD(STACK[0x46C]) = v10;
  return (*(a7 + 8 * (((((v11 + v8 == 0) ^ (v9 - 41)) & 1) * ((v9 - 75486303) & 0x47F9976 ^ 0x93B)) ^ v9)))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_244750F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, int a63)
{
  v64 = v63 & 0xA8FFBF7F;
  v65 = (*(a7 + 8 * (v63 & 0xA8FFBF7F ^ 0x60A4)))(LODWORD(STACK[0x46C]) ^ 0xE2617E9u, a2, a3, a4, a5, a6);
  v66 = STACK[0x328];
  STACK[0x9A8] = v65 + 0x3E0DD92B1DE16FEALL;
  if (v65)
  {
    a63 = 1216124116;
  }

  LODWORD(STACK[0x9B4]) = a63;
  return (*(v66 + 8 * ((191 * (((v64 - 62) ^ (v65 == 0)) & 1)) ^ v64)))();
}

uint64_t sub_24475139C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X6>, int a4@<W8>)
{
  v5 = (a4 + 3812) | 0x11;
  v6 = a4 ^ 0x817;
  v7 = a4 + 19197;
  LODWORD(STACK[0x61C]) = v4;
  v8 = STACK[0x878];
  STACK[0x620] = STACK[0x878];
  return (*(a3 + 8 * (((v8 != 0x6286B82630F8F22CLL) * (v6 - 6413 + v5)) ^ v7)))(a1, a2, LODWORD(STACK[0x31C]));
}

uint64_t sub_244751400@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 0x6286B82630F8F224);
  STACK[0x5C0] = 0x750C1ABFB0567FDBLL;
  LODWORD(STACK[0x804]) = 237377513;
  STACK[0x358] = 0xEF69223504A1BAELL;
  return (*(a1 + 8 * ((((v2 ^ (v3 == 0x146375EC570BCC2FLL)) & 1) * (((v2 - 310291226) & 0x127EDFEF) - 19635)) ^ v2)))();
}

uint64_t sub_24475149C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x3B8] = v7;
  LODWORD(STACK[0x4CC]) = -214693917;
  STACK[0x5E0] = &STACK[0x5C0];
  LODWORD(STACK[0x854]) = -2123894883;
  return (*(a7 + 8 * (v8 ^ 0x114A)))(1845370862, 305147913, a3, a4, LODWORD(STACK[0x31C]), a6);
}

uint64_t sub_24475173C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = v65 + 7826;
  v67 = (a65 - 0x2E752BE5BC07AC05 + STACK[0x3A0]);
  v68 = v67 + 13;
  v69 = __ROR8__((v67 + 6) & 0xFFFFFFFFFFFFFFF8, 8);
  v70 = (0x7653FFD844AF1481 - v69) & 0xB55F80C7BE1258C6 | (v69 + ((v65 - 965) ^ 0x9AC0027BB50E25CLL)) & 0x4AA07F3841EDA739;
  v71 = v70 ^ 0x79151616AAB9A54;
  v70 ^= 0x4AF1505CB02CC1A0uLL;
  v72 = (__ROR8__(v71, 8) + v70) ^ 0x8DBE49DF8B3EC60ALL;
  v73 = __ROR8__(v72, 8);
  v74 = v72 ^ __ROR8__(v70, 61);
  v75 = (((v73 + v74) | 0x32D0D64D4270688ELL) - ((v73 + v74) | 0xCD2F29B2BD8F9771) - 0x32D0D64D4270688FLL) ^ 0x73F88A156FEBEE07;
  v76 = __ROR8__(v75, 8);
  v77 = v75 ^ __ROR8__(v74, 61);
  v78 = (((2 * (v76 + v77)) | 0x562CC8E4F1BBEDCCLL) - (v76 + v77) - 0x2B16647278DDF6E6) ^ 0x3C01B0D9C60E3691;
  v79 = v78 ^ __ROR8__(v77, 61);
  v80 = (__ROR8__(v78, 8) + v79) ^ 0xEC888CBFDF3BD3D0;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = __ROR8__(v80, 8);
  v83 = (((v82 + v81) | 0x266D8F709B2661D1) - ((v82 + v81) | 0xD992708F64D99E2ELL) - 0x266D8F709B2661D2) ^ 0x16F52867A39D86F2;
  v84 = v83 ^ __ROR8__(v81, 61);
  v85 = __ROR8__(v83, 8);
  v86 = (((v85 + v84) | 0xFE7D31885E37F5C1) - ((v85 + v84) | 0x182CE77A1C80A3ELL) + 0x182CE77A1C80A3ELL) ^ 0xAE558AEBB9958041;
  v87 = v86 ^ __ROR8__(v84, 61);
  v88 = __ROR8__(v86, 8);
  LODWORD(v87) = (((v88 + v87 - ((2 * (v88 + v87)) & 0x8951FAF1706958CALL) + 0x44A8FD78B834AC65) ^ 0x2C108E8044E3F2ADLL) >> (8 * ((v67 + 6) & 7u))) ^ v67[6];
  v89 = (((v87 - ((2 * v87) & 0x72) + 248) << 56) - 0x3F00000000000000) ^ 0xB900000000000000;
  v90 = __ROR8__((v67 + 7) & 0xFFFFFFFFFFFFFFF8, 8) - 0x7653FFD844AF1482;
  v91 = __ROR8__(v90 ^ 0xB2CED1A6D4B9C292, 8);
  v90 ^= 0xFFAED09B0E3E9966;
  v92 = (((2 * (v91 + v90)) | 0xD7FAD21042F2E9F6) - (v91 + v90) - 0x6BFD6908217974FBLL) ^ 0xE64320D7AA47B2F1;
  v93 = v92 ^ __ROR8__(v90, 61);
  v94 = __ROR8__(v92, 8);
  v95 = STACK[0x328];
  v96 = (((v94 + v93) | 0x3A2808815C23D964) - ((v94 + v93) | 0xC5D7F77EA3DC269BLL) - 0x3A2808815C23D965) ^ 0x7B0054D971B85FEDLL;
  v97 = v96 ^ __ROR8__(v93, 61);
  v98 = (__ROR8__(v96, 8) + v97) ^ 0x1717D4ABBED3C077;
  v99 = v98 ^ __ROR8__(v97, 61);
  v100 = __ROR8__(v98, 8);
  v101 = (((2 * ((v100 + v99) ^ 0xD408842FB46A4E43)) & 0x440D90F0109BC5F4) - ((v100 + v99) ^ 0xD408842FB46A4E43) - 0x2206C878084DE2FBLL) ^ 0xE5793F179CE38096;
  v102 = v101 ^ __ROR8__(v99, 61);
  v103 = (__ROR8__(v101, 8) + v102) ^ 0x3098A71738BBE723;
  v104 = v103 ^ __ROR8__(v102, 61);
  v105 = (__ROR8__(v103, 8) + v104) ^ 0x5028BB63E7A27580;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = __ROR8__(v105, 8);
  v108 = (((((((v107 + v106) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v68 - 6) & 7u))) ^ *(v68 - 6)) - ((2 * ((((v107 + v106) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v68 - 6) & 7u))) ^ *(v68 - 6))) & 0x36) + 7714) << 48) - 0x7000000000000) ^ 0x1E1B000000000000;
  v109 = (v89 - ((2 * v89) & 0x3400000000000000) + 0x1AFDFF6CEB6F6797) ^ 0x1AFDFF6CEB6F6797 | (v108 - ((2 * v108) & 0xD3A000000000000) + 0x69DEA13325AFA26) ^ 0x69DEA13325AFA26;
  v110 = __ROR8__((v67 + 8) & 0xFFFFFFFFFFFFFFF8, 8);
  v111 = ((2 * (v110 - 0x7653FFD844AF1482)) | 0x57766318D8555E06) - (v110 - 0x7653FFD844AF1482) - 0x2BBB318C6C2AAF03;
  v112 = __ROR8__(v111 ^ 0x9975E02AB8936D91, 8);
  v111 ^= 0xD415E11762143665;
  v113 = (v112 + v111) ^ 0x8DBE49DF8B3EC60ALL;
  v114 = v113 ^ __ROR8__(v111, 61);
  v115 = __ROR8__(v113, 8);
  v116 = (v115 + v114 - ((2 * (v115 + v114)) & 0x178196D87B910AFELL) + 0xBC0CB6C3DC8857FLL) ^ 0x4AE89734105303F6;
  v117 = v116 ^ __ROR8__(v114, 61);
  v118 = (__ROR8__(v116, 8) + v117) ^ 0x1717D4ABBED3C077;
  v119 = v118 ^ __ROR8__(v117, 61);
  v120 = (__ROR8__(v118, 8) + v119) ^ 0xEC888CBFDF3BD3D0;
  v121 = v120 ^ __ROR8__(v119, 61);
  v122 = (__ROR8__(v120, 8) + v121) ^ 0x3098A71738BBE723;
  v123 = v122 ^ __ROR8__(v121, 61);
  v124 = __ROR8__(v122, 8);
  v125 = (((2 * (v124 + v123)) & 0x1A9298E04E50232ELL) - (v124 + v123) + 0x72B6B38FD8D7EE68) ^ 0x229E08EC3F759BE8;
  v126 = __ROR8__(v125, 8);
  v127 = __ROR8__(v123, 61);
  v128 = (((((((v126 + (v125 ^ v127)) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v68 - 5) & 7u))) ^ *(v68 - 5)) - ((2 * ((((v126 + (v125 ^ v127)) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v68 - 5) & 7u))) ^ *(v68 - 5))) & 0x36) + 8426327) << 40) - 0x3C0000000000) ^ 0x80931B0000000000;
  v129 = (v109 - ((2 * v109) & 0xC5C7542C082005ALL) - 0x79D1C55E9FBEFFD3) ^ 0x862E3AA16041002DLL | (v128 - ((2 * v128) & 0x3B8D840000000000) + 0x5DC6C2ECF9DE3A52) ^ 0x5DC6C2ECF9DE3A52;
  v130 = __ROR8__((v67 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  v131 = (v130 - 0x7653FFD844AF1482) ^ 0xFFAED09B0E3E9966;
  v132 = (__ROR8__((v130 - 0x7653FFD844AF1482) ^ 0xB2CED1A6D4B9C292, 8) + v131) ^ 0x8DBE49DF8B3EC60ALL;
  v133 = v132 ^ __ROR8__(v131, 61);
  v134 = (__ROR8__(v132, 8) + v133) ^ 0x41285C582D9B8689;
  v135 = v134 ^ __ROR8__(v133, 61);
  v136 = __ROR8__(v134, 8);
  v137 = (v136 + v135 - ((2 * (v136 + v135)) & 0x178B388C2E3B00A6) + 0xBC59C46171D8053) ^ 0x1CD248EDA9CE4024;
  v138 = v137 ^ __ROR8__(v135, 61);
  v139 = __ROR8__(v137, 8);
  v140 = (((2 * (v139 + v138)) | 0x630BB4B9EEC52676) - (v139 + v138) + 0x4E7A25A3089D6CC5) ^ 0x5D0D56E3285940EBLL;
  v141 = v140 ^ __ROR8__(v138, 61);
  v142 = (__ROR8__(v140, 8) + v141) ^ 0x3098A71738BBE723;
  v143 = v142 ^ __ROR8__(v141, 61);
  v144 = (__ROR8__(v142, 8) + v143) ^ 0x5028BB63E7A27580;
  v145 = v144 ^ __ROR8__(v143, 61);
  v146 = __ROR8__(v144, 8);
  v147 = (((((2 * (v146 + v145)) & 0xDD2F4BB1125BA10ALL) - (v146 + v145) + 0x11685A2776D22F7ALL) ^ 0x79D029DF8A0571B2) >> (8 * ((v67 + 9) & 7u))) ^ v67[9];
  v148 = (((~(2 * v147) | 0xFFFFFF2D) + v147 - 1358946198) << 32) ^ 0xAF00206900000000;
  v149 = (v129 - ((2 * v129) & 0x311FD92E949EB106) - 0x67701368B5B0A77DLL) ^ 0x988FEC974A4F5883 | (v148 - ((2 * v148) & 0x56DE00000000) - 0x624A94900DDC5735) ^ 0x9DB56B6FF223A8CBLL;
  v150 = __ROR8__((v67 + 10) & 0xFFFFFFFFFFFFFFF8, 8) - 0x7653FFD844AF1482;
  v151 = __ROR8__(v150 ^ 0xB2CED1A6D4B9C292, 8);
  v150 ^= 0xFFAED09B0E3E9966;
  v152 = (v151 + v150) ^ 0x8DBE49DF8B3EC60ALL;
  v153 = v152 ^ __ROR8__(v150, 61);
  v154 = __ROR8__(v152, 8);
  v155 = (((v154 + v153) | 0x2AABDA015CBFF13FLL) - ((v154 + v153) | 0xD55425FEA3400EC0) - 0x2AABDA015CBFF140) ^ 0x6B838659712477B6;
  v156 = v155 ^ __ROR8__(v153, 61);
  v157 = (__ROR8__(v155, 8) + v156) ^ 0x1717D4ABBED3C077;
  v158 = v157 ^ __ROR8__(v156, 61);
  v159 = (__ROR8__(v157, 8) + v158) ^ 0xEC888CBFDF3BD3D0;
  v160 = v159 ^ __ROR8__(v158, 61);
  v161 = (__ROR8__(v159, 8) + v160) ^ 0x3098A71738BBE723;
  v162 = v161 ^ __ROR8__(v160, 61);
  v163 = (__ROR8__(v161, 8) + v162) ^ 0x5028BB63E7A27580;
  v164 = v163 ^ __ROR8__(v162, 61);
  v165 = __ROR8__(v163, 8);
  v166 = (((((((((2 * (v165 + v164)) | 0x5AE51A94776BB02ELL) - (v165 + v164) + 0x528D72B5C44A27E9) ^ 0xC5CAFEB2C76286DFLL) >> (8 * ((v68 - 3) & 7u))) ^ *(v68 - 3)) - ((2 * ((((((2 * (v165 + v164)) | 0x5AE51A94776BB02ELL) - (v165 + v164) + 0x528D72B5C44A27E9) ^ 0xC5CAFEB2C76286DFLL) >> (8 * ((v68 - 3) & 7u))) ^ *(v68 - 3))) & 0x12ELL)) << 24) - 0x5880801B69000000) ^ 0xA77F7FE497000000;
  v167 = (v149 - ((2 * v149) & 0x2678A5D1C62DCC80) + 0x133C52E8E316E640) ^ 0x133C52E8E316E640 | (v166 - ((2 * v166) & 0x173C036D12000000) + 0xB9E01B689F783ACLL) ^ 0xB9E01B689F783ACLL;
  v168 = v167 - ((2 * v167) & 0xA81A98E1C9DEAB4ELL);
  v169 = __ROR8__((v67 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v170 = ((0x7653FFD844AF1481 - v169) & 0xB30B0E04CEBC8992) + v169 - 0x7653FFD844AF1482 - ((v169 - 0x7653FFD844AF1482) & 0xB30B0E04CEBC8992);
  v171 = v170 ^ 0x1C5DFA21A054B00;
  v170 ^= 0x4CA5DE9FC08210F4uLL;
  v172 = (__ROR8__(v171, 8) + v170) ^ 0x8DBE49DF8B3EC60ALL;
  v173 = v172 ^ __ROR8__(v170, 61);
  v174 = __ROR8__(v172, 8);
  v175 = (((2 * (v174 + v173)) & 0x3F33FA72E4ED7622) - (v174 + v173) + 0x606602C68D8944EELL) ^ 0x214E5E9EA012C267;
  v176 = v175 ^ __ROR8__(v173, 61);
  v177 = (__ROR8__(v175, 8) + v176) ^ 0x1717D4ABBED3C077;
  v178 = __ROR8__(v177, 8);
  v179 = v177 ^ __ROR8__(v176, 61);
  v180 = (v178 + v179 - ((2 * (v178 + v179)) & 0x1E478AE932743620) + 0xF23C574993A1B10) ^ 0xE3AB49CB4601C8C0;
  v181 = v180 ^ __ROR8__(v179, 61);
  v182 = (__ROR8__(v180, 8) + v181) ^ 0x3098A71738BBE723;
  v183 = v182 ^ __ROR8__(v181, 61);
  v184 = __ROR8__(v182, 8);
  v185 = (((2 * (v184 + v183)) & 0x55781032AF4E8526) - (v184 + v183) - 0x2ABC081957A74294) ^ 0x856B4C854FFAC8ECLL;
  v186 = v185 ^ __ROR8__(v183, 61);
  v187 = __ROR8__(v185, 8);
  v188 = (((((((v187 + v186) ^ 0x68B873F8FCD75EC8) >> (8 * ((v68 - 2) & 7u))) ^ *(v68 - 2)) - ((2 * ((((v187 + v186) ^ 0x68B873F8FCD75EC8) >> (8 * ((v68 - 2) & 7u))) ^ *(v68 - 2))) & 0x15ELL)) << 16) + 0x30A78F5762AF0000) ^ 0x30A78F5762AF0000;
  v189 = (v168 - 0x2BF2B38F1B10AA59) ^ 0xD40D4C70E4EF55A7 | (v188 - ((2 * v188) & 0x3CB82722D9E20000) - 0x61A3EC6E930EB5C6) ^ 0x9E5C13916CF14A3ALL;
  v190 = __ROR8__((v67 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v191 = ((0x7653FFD844AF1481 - v190) & 0x529ADAA51514455CLL) + v190 - 0x7653FFD844AF1482 - ((v190 - 0x7653FFD844AF1482) & 0x529ADAA51514455CLL);
  v192 = v191 ^ 0xE0540B03C1AD87CELL;
  v191 ^= 0xAD340A3E1B2ADC3ALL;
  v193 = __ROR8__(v192, 8);
  v194 = (((v193 + v191) | 0x7DB19439D5F1CCCCLL) - ((v193 + v191) | 0x824E6BC62A0E3333) - 0x7DB19439D5F1CCCDLL) ^ 0xF00FDDE65ECF0AC6;
  v195 = v194 ^ __ROR8__(v191, 61);
  v196 = __ROR8__(v194, 8);
  v197 = (((v196 + v195) & 0x788A5C50FF477F5FLL ^ 0x882404046034B0BLL) + ((v196 + v195) & 0x8775A3AF00B880A0 ^ 0x8175010600388081) - 1) ^ 0xC8DF1D1E6BA04D02;
  v198 = v197 ^ __ROR8__(v195, 61);
  v199 = (__ROR8__(v197, 8) + v198) ^ 0x1717D4ABBED3C077;
  v200 = v199 ^ __ROR8__(v198, 61);
  v201 = __ROR8__(v199, 8);
  v202 = (((2 * (v201 + v200)) | 0x75FF21A51885509ELL) - (v201 + v200) - 0x3AFF90D28C42A84FLL) ^ 0xD6771C6D53797B9FLL;
  v203 = v202 ^ __ROR8__(v200, 61);
  v204 = __ROR8__(v202, 8);
  v205 = __ROR8__((((2 * (v204 + v203)) | 0x5CA5DE9B2A16C314) - (v204 + v203) - 0x2E52EF4D950B618ALL) ^ 0x1ECA485AADB086A9, 8);
  v206 = (((2 * (v204 + v203)) | 0x5CA5DE9B2A16C314) - (v204 + v203) - 0x2E52EF4D950B618ALL) ^ 0x1ECA485AADB086A9 ^ __ROR8__(v203, 61);
  v207 = (((v205 + v206) | 0xACFB152F5E235A2ALL) - ((v205 + v206) | 0x5304EAD0A1DCA5D5) + 0x5304EAD0A1DCA5D5) ^ 0xFCD3AE4CB9812FAALL;
  LODWORD(v68) = (((__ROR8__(v207, 8) + (v207 ^ __ROR8__(v206, 61))) ^ 0x68B873F8FCD75EC8) >> (8 * ((v67 + 12) & 7u))) ^ v67[12];
  v208 = (((v68 - ((2 * v68) & 0xD8)) << 8) + 0x656F4C2EF9FB6C00) ^ 0x656F4C2EF9FB6C00;
  v209 = (v189 - ((2 * v189) & 0xAB50CDA986396698) - 0x2A57992B3CE34CB4) ^ 0xD5A866D4C31CB34CLL | (v208 - ((2 * v208) & 0x4D0D95807EF16400) + 0x2686CAC03F78B2CELL) ^ 0x2686CAC03F78B2CELL;
  v210 = __ROR8__((v67 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v211 = v210 - ((2 * v210 + 0x1358004F76A1D6FCLL) & 0x41AF948D421BCAB4) + 0x2E83CA6E5C5ED0D8;
  v212 = __ROR8__(v211 ^ 0x16191BE075B427C8, 8);
  v211 ^= 0x5B791ADDAF337C3CuLL;
  v213 = (v212 + v211) ^ 0x8DBE49DF8B3EC60ALL;
  v214 = v213 ^ __ROR8__(v211, 61);
  v215 = __ROR8__(v213, 8);
  v216 = (((2 * (v215 + v214)) & 0x55C06E2F00B4CAB4) - (v215 + v214) - 0x2AE03717805A655BLL) ^ 0x943794B0523E1C2CLL;
  v217 = v216 ^ __ROR8__(v214, 61);
  v218 = __ROR8__(v216, 8);
  v219 = (((2 * (v218 + v217)) | 0x9B94C29DE3853946) - (v218 + v217) + 0x32359EB10E3D635DLL) ^ 0xDADDB5E54F115CD4;
  v220 = v219 ^ __ROR8__(v217, 61);
  v221 = (__ROR8__(v219, 8) + v220) ^ 0xEC888CBFDF3BD3D0;
  v222 = v221 ^ __ROR8__(v220, 61);
  v223 = __ROR8__(v221, 8);
  v224 = (((2 * (v223 + v222)) | 0xF8965BD215354BBELL) - (v223 + v222) + 0x3B4D216F5655A21) ^ 0xCCD38AFE322142FCLL;
  v225 = v224 ^ __ROR8__(v222, 61);
  v226 = __ROR8__(v224, 8);
  v227 = (((v226 + v225) | 0xAE369C8CF25F2B72) - ((v226 + v225) | 0x51C963730DA0D48DLL) + 0x51C963730DA0D48DLL) ^ 0xFE1E27EF15FD5EF2;
  v228 = (((__ROR8__(v227, 8) + (v227 ^ __ROR8__(v225, 61))) ^ 0x68B873F8FCD75EC8) >> (8 * ((v67 + 13) & 7u))) ^ v67[13];
  v229 = (v209 - ((2 * v209) & 0x453D573D1F5CC204) - 0x5D61546170519EFELL) ^ 0xA29EAB9E8FAE6102 | (v228 - ((2 * v228) & 0x1FALL) - 0x655FB5C7BC995903) ^ 0x9AA04A384366A6FDLL;
  STACK[0x868] = v229 - 0x362BAD4AF6A55359 - ((2 * v229) & 0x93A8A56A12B5594ELL);
  return (*(v95 + 8 * v66))();
}

uint64_t sub_2447528DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x4C0] = STACK[0x900];
  LODWORD(STACK[0x3F0]) = STACK[0x8F4];
  LOWORD(STACK[0x3F6]) = STACK[0x8FA];
  LODWORD(STACK[0x468]) = STACK[0x8FC];
  return (*(a7 + 8 * ((3108 * ((v7 - 1109893544) > 0x34B1D36)) | (v7 - 1109893544) ^ 0xBDD867B9)))(a1, a2, 1216124116, a4, LODWORD(STACK[0x31C]), a6);
}

uint64_t sub_244752A30@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  LODWORD(STACK[0x5DC]) = a2;
  v3 = *(STACK[0x348] - 0x58FA20369C313A66) == (46 * (v2 ^ 0x31) - 91);
  return (*(a1 + 8 * (((2 * (((23 * (v2 ^ 0x6B)) ^ v3) & 1)) & 0xFB | (4 * (((23 * (v2 ^ 0x96B)) ^ v3) & 1))) ^ (v2 + 15608))))();
}

uint64_t sub_244752AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  *(a4 - 0x58FA20369C313A5ELL) = STACK[0x5DC];
  *(a4 + v5) = (v6 ^ 0xE2616DC ^ (v4 - 8350)) + 237377513 - ((2 * (v6 ^ 0xE2616DC ^ (v4 - 8350)) + 2) & 0x1C4C2FD2) + 1;
  return (*(a3 + 8 * v4))(a1, a2, 1216124116);
}

uint64_t sub_244752D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, unsigned int a63)
{
  v67 = STACK[0x540];
  STACK[0x420] = v63;
  LODWORD(STACK[0x46C]) = v66;
  return (*(a7 + 8 * (((v67 + v64 == 0) * (((1169 * (v65 ^ 0x42AF)) ^ 0xFFFFED2C) + ((v65 - 12973) | 0xC08))) ^ v65)))(a1, a2, a63, a4, a5, a6);
}

uint64_t sub_244752DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, int a63)
{
  v64 = (*(a7 + 8 * (v63 + 15805)))((((v63 + 9907) ^ 0x4B99u) + 237375175) ^ LODWORD(STACK[0x46C]), a2, a3, a4, a5, a6);
  v65 = STACK[0x328];
  STACK[0x9C8] = v64 + 0x3E0DD92B1DE16FEALL;
  if (v64)
  {
    a63 = 1216124116;
  }

  LODWORD(STACK[0x9D4]) = a63;
  return (*(v65 + 8 * ((43 * (v64 == 0)) ^ v63)))();
}

uint64_t sub_244752F38(unint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v10 = v8 - a1 < 0x10 || a5 + a4 + ((v7 - 2995) | 0x8CAu) + 562332497 < 8;
  v11 = *(a7 + 8 * (v7 + 8 * v10));
  STACK[0x310] = a1;
  return v11();
}

uint64_t sub_244753080(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a7 + 8 * v8);
  *&STACK[0x2E0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x2F0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x2C0] = vdupq_n_s64(0x7F265DEF06E3E4EEuLL);
  *&STACK[0x2D0] = vdupq_n_s64(v9);
  *&STACK[0x2A0] = vdupq_n_s64(v7);
  *&STACK[0x2B0] = vdupq_n_s64(v11);
  LODWORD(STACK[0x250]) = a3 & 0xFFFFFFF8;
  *&STACK[0x280] = vdupq_n_s64(v12);
  *&STACK[0x290] = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *&STACK[0x270] = vdupq_n_s64(v10);
  *&STACK[0x260] = xmmword_245010D40;
  return v13();
}

uint64_t sub_244753244@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W6>, int a7@<W7>, uint64_t a8@<X8>)
{
  v35 = (v16 + a2 + 8);
  v36.i64[0] = a8 + (a5 + a2 + 8);
  v36.i64[1] = a8 + (a3 + a2 + 8);
  v37.i64[0] = a8 + (a7 + a2 + 8);
  v37.i64[1] = a8 + (a6 + a2 + 8);
  v38.i64[0] = a8 + v35;
  v38.i64[1] = a8 + (v15 + a2 + 8);
  v39.i64[0] = a8 + v10 + a2 + (a4 ^ (v9 + 2707)) + 8;
  v39.i64[1] = a8 + (v12 + a2 + 8);
  v40 = vandq_s8(v38, *&STACK[0x2F0]);
  v41 = vandq_s8(v37, *&STACK[0x2F0]);
  v42 = vandq_s8(v39, *&STACK[0x2F0]);
  v43 = vandq_s8(v36, *&STACK[0x2F0]);
  v44 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v45 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v46 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v47 = vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL);
  v49 = *&STACK[0x2C0];
  v48 = *&STACK[0x2D0];
  v50 = vaddq_s64(v46, *&STACK[0x2D0]);
  v51 = vaddq_s64(v45, *&STACK[0x2D0]);
  v53 = *&STACK[0x2A0];
  v52 = *&STACK[0x2B0];
  *&STACK[0x300] = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x2B0], v47), *&STACK[0x2A0]), vorrq_s8(vaddq_s64(v47, *&STACK[0x2D0]), *&STACK[0x2C0]));
  v54 = vorrq_s8(vaddq_s64(v44, v48), v49);
  v55 = vsubq_s64(v52, v46);
  v56 = vorrq_s8(vsubq_s64(v52, v44), v53);
  v57 = vaddq_s64(vorrq_s8(v55, v53), vorrq_s8(v50, v49));
  v58 = vsubq_s64(*&STACK[0x290], vaddq_s64(v56, v54));
  v59 = vsubq_s64(*&STACK[0x290], vaddq_s64(vorrq_s8(vsubq_s64(v52, v45), v53), vorrq_s8(v51, v49)));
  v60 = veorq_s8(v59, *&STACK[0x280]);
  v61 = veorq_s8(v58, *&STACK[0x280]);
  v62 = veorq_s8(v58, *&STACK[0x270]);
  v63 = veorq_s8(v59, *&STACK[0x270]);
  v64 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v62), v20);
  v65 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v63), v20);
  v66 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v67 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v68 = veorq_s8(v64, v66);
  v69 = vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v68);
  v71 = vaddq_s64(v69, v67);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v71, v71), v21), v71), v22), v23);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v70, v70), v21), v70), v22), v23);
  v74 = vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL);
  v75 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v76 = veorq_s8(v72, v74);
  v77 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v76);
  v79 = vaddq_s64(v77, v75);
  v80 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v78, v24), vorrq_s8(v78, v25)), v25), v26);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v79, v24), vorrq_s8(v79, v25)), v25), v26);
  v82 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v83 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v83);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v82);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(v85, vandq_s8(vaddq_s64(v85, v85), v27)), v28), v29);
  v87 = veorq_s8(vaddq_s64(vsubq_s64(v84, vandq_s8(vaddq_s64(v84, v84), v27)), v28), v29);
  v88 = vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL);
  v89 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v90 = veorq_s8(v86, v88);
  v91 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v90);
  v93 = veorq_s8(vaddq_s64(v91, v89), v30);
  v94 = vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL);
  v95 = veorq_s8(v92, v30);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v97 = veorq_s8(v93, v94);
  v98 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v97);
  v100 = vaddq_s64(v98, v96);
  v101 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v100, v100), v31), v100), v32), v33);
  v102 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v99, v99), v31), v99), v32), v33);
  v103 = vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL);
  v104 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v105 = vsubq_s64(*&STACK[0x290], v57);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), veorq_s8(v101, v103));
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v104);
  v146.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v106, v106), v34), v106), v18), v19), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), *&STACK[0x2E0])));
  v146.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v107, v107), v34), v107), v18), v19), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), *&STACK[0x2E0])));
  v108 = veorq_s8(v105, *&STACK[0x280]);
  v109 = veorq_s8(v105, *&STACK[0x270]);
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), v20);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v112, v112), v21), v112), v22), v23);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v115, v24), vorrq_s8(v115, v25)), v25), v26);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(v118, vandq_s8(vaddq_s64(v118, v118), v27)), v28), v29);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), v30);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v123, v123), v31), v123), v32), v33);
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL)));
  v126 = vsubq_s64(*&STACK[0x290], *&STACK[0x300]);
  v146.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v125, v125), v34), v125), v18), v19), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), *&STACK[0x2E0])));
  v127 = veorq_s8(v126, *&STACK[0x280]);
  v128 = veorq_s8(v126, *&STACK[0x270]);
  v129 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128), v20);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v131, v131), v21), v131), v22), v23);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v134, v24), vorrq_s8(v134, v25)), v25), v26);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136);
  v138 = veorq_s8(vaddq_s64(vsubq_s64(v137, vandq_s8(vaddq_s64(v137, v137), v27)), v28), v29);
  v139 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v140 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139), v30);
  v141 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v142 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v141);
  v143 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v142, v142), v31), v142), v32), v33);
  v144 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL)));
  v146.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v144, v144), v34), v144), v18), v19), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), *&STACK[0x2E0])));
  *(v13 + v35) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(a8 + v35 - 7)), 0x5D5D5D5D5D5D5D5DLL), *&vqtbl4q_s8(v146, *&STACK[0x260])));
  return (*(v8 + 8 * (((v14 == a2) * v17) ^ v11)))(a1, (a2 - 8));
}

uint64_t sub_24475399C@<X0>(uint64_t a1@<X6>, unint64_t a2@<X8>)
{
  v5 = STACK[0x498];
  STACK[0x700] = a2;
  LODWORD(STACK[0x44C]) = v4;
  STACK[0x458] = v5 + v2;
  return (*(a1 + 8 * ((30 * ((((v3 - 4671) ^ *(STACK[0x600] - 0x6286B82630F8F1B0) & (LODWORD(STACK[0x4AC]) != 0)) & 1) == 0)) ^ v3)))();
}

uint64_t sub_244753A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(v8 - 0x6286B82630F8F22CLL);
  STACK[0x720] = 0x750C1ABFB0567FDBLL;
  STACK[0x798] = 0x65F456A1CD6A1782;
  return (*(a7 + 8 * (((((((v7 | 0x988) - 1984652347) & 0x764B3FFF) - 73) ^ (((v7 | 0x988) - 11416) | 0x822)) * (v10 != v9)) ^ (v7 | 0x988))))(a1, a2, a5, a4);
}

uint64_t sub_244753A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x3B8] = v7;
  LODWORD(STACK[0x4CC]) = -149197095;
  STACK[0x5E0] = &STACK[0x720];
  LODWORD(STACK[0x854]) = -1314213951;
  return (*(a7 + 8 * v8))(1845370862, 305147913, a3, a4, a5, a6);
}

uint64_t sub_244753B40@<X0>(uint64_t a1@<X6>, unint64_t a2@<X8>)
{
  v5 = STACK[0x7A0];
  STACK[0x858] = a2;
  LODWORD(STACK[0x69C]) = v4;
  STACK[0x838] = v5 + v2;
  return (*(a1 + 8 * v3))();
}

uint64_t sub_244753C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X6>, int a5@<W8>)
{
  if (*(v5 - 0x6286B82630F8F1CBLL) == ((((2 * a5) ^ 0xA0) + 12) & 0xFE))
  {
    a3 = 1216081108;
  }

  else
  {
    a3 = a3;
  }

  return (*(a4 + 8 * a5))(a1, a2, a3);
}

uint64_t sub_244753D34@<X0>(uint64_t a1@<X6>, unint64_t a2@<X8>)
{
  v5 = STACK[0x380];
  STACK[0x798] = a2;
  STACK[0x5D0] = v5 + v2;
  return (*(a1 + 8 * ((((v3 ^ 0x6CCE) - 2306) * (v4 == 237377529)) ^ v3)))();
}

uint64_t sub_244753D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(STACK[0x600] - 0x6286B82630F8F22CLL);
  STACK[0x690] = 0x750C1ABFB0567FDBLL;
  STACK[0x500] = 0x8E0387FB0A66745;
  return (*(a7 + 8 * (((v10 == v9) * ((v7 ^ 0xFFFFD2F2) + v8)) ^ v7)))(a1, a2, a5, a4);
}

uint64_t sub_244753DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x3B8] = v7;
  LODWORD(STACK[0x4CC]) = -106723608;
  STACK[0x5E0] = &STACK[0x690];
  LODWORD(STACK[0x854]) = 630849464;
  return (*(a7 + 8 * (v8 ^ 0x2CFF)))(1845370862, 305147913, a3, a4, a5, a6);
}

uint64_t sub_244753F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X6>, unint64_t a4@<X8>)
{
  STACK[0x700] = a4;
  LODWORD(STACK[0x44C]) = v5;
  return (*(a3 + 8 * v4))(a1, a2, 1216081111);
}

uint64_t sub_244753FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X6>, unint64_t a4@<X8>)
{
  STACK[0x858] = a4;
  LODWORD(STACK[0x69C]) = v5;
  return (*(a3 + 8 * (v4 ^ 0x87205695 ^ ((14 * (v4 ^ 0x7207225) + 25612) * (v4 != 1852932509)))))(a1, a2, 1216081111);
}

uint64_t sub_2447541BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x590];
  v9 = *(a7 + 8 * ((v7 + 1587481055) ^ 0x5E9F170E ^ ((v7 == 889688899) * (v7 + 9751))));
  STACK[0x2B0] = STACK[0x590];
  STACK[0x310] = v8;
  return v9(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_244754248@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  v7 = STACK[0x490];
  v8 = 810199703 * ((((v6 - 224) | 0x78297157) - ((v6 - 224) & 0x78297157)) ^ 0x9EA067DA);
  *(v6 - 184) = v5 - v8 + 1268;
  *(v6 - 176) = a2;
  *(v6 - 192) = v7;
  *(v6 - 208) = v3;
  *(v6 - 216) = v8 ^ v2 ^ 0xB7E2A918;
  *(v6 - 212) = v8 + ((2 * v4) & 0xEBEE7EBC) + 1607198656 + ((1936 * (v5 ^ 0x132E) - 168355442) ^ v4);
  *(v6 - 224) = a2;
  v9 = (*(a1 + 8 * (v5 ^ 0x4911)))(v6 - 224);
  return (*(STACK[0x328] + 8 * v5))(v9);
}

uint64_t sub_2447543C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7 - 0x6286B82630F8F224;
  v10 = STACK[0x458];
  v11 = STACK[0x44C];
  STACK[0x478] = v9;
  STACK[0x4F8] = v10;
  LODWORD(STACK[0x794]) = v11;
  LODWORD(STACK[0x524]) = -1115135404;
  return (*(a7 + 8 * (v8 - 19853)))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_244754490(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  a1[1] = 0x750C1ABFB0567FDBLL;
  *(v7 - 0x6286B82630F8F224) = a1 + v9;
  LODWORD(STACK[0x3E4]) = 1216124116;
  return (*(a7 + 8 * v8))();
}

uint64_t sub_2447544DC@<X0>(int a1@<W2>, int a2@<W3>, int a3@<W4>, unint64_t a4@<X5>, uint64_t a5@<X6>, unint64_t a6@<X8>)
{
  STACK[0x210] = *(a5 + 8 * v11);
  *&STACK[0x2F0] = vdupq_n_s64(v8);
  *&STACK[0x300] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x2D0] = vdupq_n_s64(v13);
  *&STACK[0x2E0] = vdupq_n_s64(0x7F265DEF06E3E4EEuLL);
  *&STACK[0x2C0] = vdupq_n_s64(v6);
  *&STACK[0x2A0] = vdupq_n_s64(a6);
  *&STACK[0x2B0] = vdupq_n_s64(v7);
  *&STACK[0x280] = vdupq_n_s64(0x83A45518CDBB382ALL);
  *&STACK[0x290] = vdupq_n_s64(0x9085EC444E5742A3);
  *&STACK[0x260] = vdupq_n_s64(v12);
  *&STACK[0x270] = vdupq_n_s64(v9);
  *&STACK[0x240] = vdupq_n_s64(0xD9BE212C6B4B997FLL);
  *&STACK[0x250] = vdupq_n_s64(0x3098A71738BBE723uLL);
  *&STACK[0x230] = vdupq_n_s64(a4);
  *&STACK[0x220] = xmmword_245010D30;
  return (STACK[0x210])(v10, (v11 + 19696), (a3 + a2 + 562336020), (a3 + a2 + 562336021), (a3 + a2 + 562336022), -(a1 & 0xFFFFFFF0));
}

uint64_t sub_244755510@<X0>(uint64_t a1@<X5>, uint64_t a2@<X6>, int a3@<W7>, uint64_t a4@<X8>)
{
  v21 = (v7 + a3);
  v22 = __ROR8__((v15 + v21) & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = v10 - (((v19 - v22) | v4) + ((v22 + v13) | v9));
  v24 = v23 ^ v20;
  v25 = v23 ^ v17;
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x8DBE49DF8B3EC60ALL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = ((v18 | (2 * (v28 + v27))) - (v28 + v27) + v12) ^ v5;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = __ROR8__((v6 - ((v31 + v30) | v6) + ((v31 + v30) | a4)) ^ 0x9085EC444E5742A3, 8);
  v33 = (v6 - ((v31 + v30) | v6) + ((v31 + v30) | a4)) ^ 0x9085EC444E5742A3 ^ __ROR8__(v30, 61);
  v34 = (v32 + v33 - ((2 * (v32 + v33)) & 0x83A45518CDBB382ALL) + v14) ^ v16;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x3098A71738BBE723;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (((2 * (v38 + v37)) | 0x132D349F19D3D9FELL) - (v38 + v37) + 0x766965B073161301) ^ 0xD9BE212C6B4B997FLL;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = __ROR8__(v39, 8);
  *(STACK[0x310] + v21) = *(v15 + v21) ^ v11 ^ (((((2 * (v41 + v40)) | 0x378D21D8533D4CDCLL) - (v41 + v40) + a1) ^ 0x737EE314D549F8A6) >> (8 * ((v15 + v7 + a3) & 7)));
  return (*(a2 + 8 * (((v7 != 209284294) | (16 * (v7 != 209284294))) ^ v8)))();
}

uint64_t sub_2447557F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X6>, int a4@<W8>)
{
  v4 = STACK[0x878];
  STACK[0x408] = STACK[0x878];
  return (*(a3 + 8 * (((v4 != 0x6286B82630F8F22CLL) * (((a4 - 15213) ^ 0x50DD) - 20937)) ^ a4)))(a1, a2, LODWORD(STACK[0x31C]));
}

uint64_t sub_244755844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(v7 - 0x6286B82630F8F224);
  STACK[0x560] = 0x750C1ABFB0567FDBLL;
  LODWORD(STACK[0x584]) = 237377513;
  STACK[0x5A0] = 0x17853558B3CA852ALL;
  return (*(a7 + 8 * (((((v8 - 23) ^ (v9 == 0x146375EC570BCC2FLL)) & 1) * ((v8 + 193284321) ^ 0xB859950)) ^ v8)))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2447558E4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X6>, int a4@<W8>)
{
  STACK[0x3B8] = v4;
  LODWORD(STACK[0x4CC]) = -156791547;
  STACK[0x5E0] = &STACK[0x560];
  LODWORD(STACK[0x854]) = 226008998;
  return (*(a3 + 8 * (v5 ^ a4 ^ ((v5 > 0xB68101F7) * ((v5 ^ 0xB858101) - 43)))))(1845370862, 305147913, a1, a2, LODWORD(STACK[0x31C]));
}

uint64_t sub_244755A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v7 = *(a5 - 0x6286B82630F8F22CLL);
  STACK[0x650] = 0x750C1ABFB0567FDBLL;
  STACK[0x700] = 0x4EB7C46AEA68D4D4;
  return (*(a4 + 8 * (((v7 == v6) * (v5 - 2324)) ^ (v5 + 16448))))(a1, a2, a3);
}

uint64_t sub_244755B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x3B8] = v7;
  LODWORD(STACK[0x4CC]) = -217172434;
  STACK[0x5E0] = &STACK[0x650];
  LODWORD(STACK[0x854]) = 1035689930;
  return (*(a7 + 8 * (v8 ^ 0xEC4A2102 ^ (((v8 - 360515713) & 0x2932FBE9 ^ 0x4F) * (v8 < 0xCEAFF969)))))(1845370862, 305147913, a3, a4, a5, a6);
}

uint64_t sub_244755BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(STACK[0x650] - 0x750C1ABFB0567FC3);
  STACK[0x498] = v8;
  return (*(a7 + 8 * (((v8 == 0) * ((((v7 - 6367) | 0x1901) ^ 0xFFFFE1D5) + ((v7 + 943085232) & 0xC7C9997A))) ^ v7)))(a1, a2, a5, a4);
}

uint64_t sub_244755C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X6>, int a4@<W8>)
{
  v5 = (v4 | ((v4 < 0xA6B181C) << 32)) + (a4 - 6349) + 0x12F9DB6AD3DAD134;
  STACK[0x968] = v5;
  v6 = STACK[0x700];
  STACK[0x970] = STACK[0x700];
  return (*(a3 + 8 * ((14787 * (v5 - v6 + 0x3BBDE9000C22EB2ELL < (a4 - 4087) - 2348)) ^ a4)))(a1, a2, 1216081110);
}

uint64_t sub_244755D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(STACK[0x720] - 0x750C1ABFB0567FC3);
  STACK[0x380] = v8;
  return (*(a7 + 8 * (((v8 == 0) * (((v7 - 15376) ^ 0xDE3) - 1101)) ^ v7)))(a1, a2, a5, a4);
}

uint64_t sub_244755DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X6>, unsigned int a4@<W8>)
{
  v6 = a4 ^ v4;
  v7 = (v5 | ((v5 < 0xA6B181C) << 32)) + 0x41BB32F87D2B810DLL + 3 * (a4 ^ 0x4C3);
  STACK[0x978] = v7;
  v8 = STACK[0x798];
  STACK[0x980] = STACK[0x798];
  return (*(a3 + 8 * ((3633 * (v7 - v8 + v6 + 0x243923A945D37527 < 0xFFFFFFFFFFFFFFF6)) ^ a4)))(a1, a2, 1216081110);
}

uint64_t sub_244755EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X6>, int a5@<W8>)
{
  v5 = *(STACK[0x690] - 0x750C1ABFB0567FC3);
  STACK[0x718] = v5;
  return (*(a4 + 8 * (a5 ^ (16 * ((((a5 + 1121) ^ (v5 == 0)) & 1) == 0)))))(a1, a2, a3);
}

uint64_t sub_244755F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X6>, int a4@<W8>)
{
  v5 = (v4 | ((v4 < 0xA6B181C) << 32)) + 0x50262E192E01FB18;
  STACK[0x988] = v5;
  v6 = STACK[0x500];
  STACK[0x990] = STACK[0x500];
  return (*(a3 + 8 * ((15683 * (v5 - v6 - 0x4745F59987C6ABF9 < ((a4 - 1165) ^ 0xFFFFFFFFFFFFFFC2))) ^ a4)))(a1, a2, 1216081110);
}

uint64_t sub_2447560C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x6E0] = STACK[0x600];
  STACK[0x818] = *(a7 + 8 * v7);
  return (*(a7 + 8 * (v7 ^ 0x11D ^ (v7 + 1586))))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_24475613C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x878] = v8;
  STACK[0x638] += (2428 * (v7 ^ 0x927u)) ^ 0xFFFFFFFFFFFFD08CLL;
  return (*(a7 + 8 * (v7 + 7188)))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_244756178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x600] = v7;
  v9 = STACK[0x3E4];
  STACK[0x878] = v7;
  STACK[0x638] -= 32;
  return (*(a7 + 8 * ((649 * (v9 == ((((v8 + 1570) | 0x2028) + 1216112245) ^ (v8 + 619378845) & 0xDB14FF75))) ^ (v8 + 8006))))(a1, a2);
}

uint64_t sub_2447562B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x440] = 0x750C1ABFB0567FDBLL;
  STACK[0x750] = 0x6FD5269AC49591C9;
  return (*(a7 + 8 * (((((v7 == v9) ^ (v8 - 84)) & 1) * (167 * (v8 ^ 0x550F) - 2279)) ^ v8)))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_24475631C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x3B8] = v7;
  LODWORD(STACK[0x4CC]) = -41143177;
  STACK[0x5E0] = &STACK[0x440];
  LODWORD(STACK[0x854]) = -178831468;
  return (*(a7 + 8 * (v8 ^ 0xEE36848E ^ (3454 * (v8 >= ((v8 - 465380548) & 0x2D86BFDE) + 1168551317)))))(1845370862, 305147913, a3, a4, a5, a6);
}

uint64_t sub_2447563F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(STACK[0x440] - 0x750C1ABFB0567FC3);
  STACK[0x438] = v8;
  return (*(a7 + 8 * ((88 * (((v8 == 0) ^ (v7 + 3 + v7 + 59 + 1)) & 1)) ^ v7)))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_244756460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v8 & 0xE4AB6CAF;
  v10 = (v7 | ((v7 < 0xA6B181C) << 32)) + 0x1F897D4027EB4C7ELL + 1169 * (v8 & 0xE4AB6CAF ^ 0x4408);
  STACK[0x998] = v10;
  v11 = STACK[0x750];
  STACK[0x9A0] = STACK[0x750];
  return (*(a7 + 8 * ((3034 * (v10 - v11 + (v9 ^ 0x4408) + 71 + 0x504BA95A923F23BALL < 0xFFFFFFFFFFFFFFF6)) ^ v9)))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_244756528@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  STACK[0x6B8] = 0x3E0DD92B1DE16FEALL;
  LODWORD(STACK[0x46C]) = 237377513;
  return (*(a1 + 8 * (((a2 == 1376598565) * ((a2 + 1981891282) & 0x89DEFD5F ^ 0x7450)) ^ (a2 + 3004))))();
}

uint64_t sub_2447565E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X6>, int a4@<W8>)
{
  STACK[0x880] = 0x750C1ABFB0567FDBLL;
  STACK[0x420] = 0x6B2E761C2A384A59;
  return (*(a3 + 8 * (((((((a4 | 6) + 539537501) | 0x41404410) ^ 0x9E96B3AD) + (((a4 | 6) + 793501503) & 0xD0B3D9BB)) * (v4 == 0x146375EC570BCC2FLL)) ^ (a4 | 6))))(a1, a2, LODWORD(STACK[0x31C]));
}

uint64_t sub_244756684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x3B8] = v7;
  LODWORD(STACK[0x4CC]) = -41143177;
  STACK[0x5E0] = &STACK[0x880];
  LODWORD(STACK[0x854]) = -1719054417;
  return (*(a7 + 8 * ((((v8 - 1634281676) ^ 0x9E96DF01) + v8) ^ (7143 * (v8 == -763820084)))))(1845370862, 305147913, a3, a4, a5, a6);
}

uint64_t sub_244756744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(STACK[0x880] - 0x750C1ABFB0567FC3);
  STACK[0x540] = v8;
  return (*(a7 + 8 * (((v8 == 0) * ((v7 + 697346458) & 0xD66F2D7B ^ 0x938)) ^ v7)))(a1, a2, a5, a4);
}

uint64_t sub_2447567B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7 + 10;
  v10 = (v8 | ((v8 < 0xA6B181C) << 32)) + ((v7 - 2101962893) & 0x7D4936BF) + 0x326774D0390F2158;
  STACK[0x9B8] = v10;
  v11 = STACK[0x420];
  STACK[0x9C0] = STACK[0x420];
  return (*(a7 + 8 * ((3535 * (v10 - v11 + ((v9 - 975444187) & 0x3A23EFE6) + 0x38C7014BE6BE077ALL < 0xFFFFFFFFFFFFFFF6)) ^ v9)))(a1, a2, 1216081110, a4, a5, a6);
}

uint64_t sub_24475689C@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  STACK[0x6B8] = 0x3E0DD92B1DE16FEALL;
  LODWORD(STACK[0x46C]) = 237377513;
  return (*(a1 + 8 * (a2 + 13184)))();
}

uint64_t sub_244756928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(STACK[0x560] - 0x750C1ABFB0567FC3);
  STACK[0x760] = v8;
  return (*(a7 + 8 * (((v8 == 0) * ((v7 - 15707) ^ 0xF4D)) ^ v7)))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_24475698C@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v3 = (v2 | ((v2 < 0xA6B181C) << 32)) + ((a2 + 897059686) & 0xCA87E57E ^ 0x366B3B981064E082);
  STACK[0x9D8] = v3;
  v4 = STACK[0x5A0];
  STACK[0x9E0] = STACK[0x5A0];
  return (*(a1 + 8 * (((v3 - v4 - 0x1EE6063F670573CCLL > 0xFFFFFFFFFFFFFFF5) * (((a2 + 4451) | 0x101) - 8423)) ^ a2)))();
}

uint64_t sub_244756A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(STACK[0x408] - 0x6286B82630F8F22CLL);
  STACK[0x7F0] = 0x750C1ABFB0567FDBLL;
  LODWORD(STACK[0x664]) = 237377513;
  STACK[0x530] = 0x28AECDD719B72073;
  return (*(a7 + 8 * (((v8 == 0x146375EC570BCC2FLL) * (v7 ^ 0x288E ^ (799 * (v7 ^ 0x21D2)))) | v7)))(a1, a2, LODWORD(STACK[0x31C]), a4, a5, a6);
}

uint64_t sub_244756ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x3B8] = v7;
  LODWORD(STACK[0x4CC]) = -156791547;
  STACK[0x5E0] = &STACK[0x7F0];
  LODWORD(STACK[0x854]) = -504533019;
  return (*(a7 + 8 * v8))(1845370862, 305147913, a3, a4, LODWORD(STACK[0x31C]), a6);
}

uint64_t sub_244756B70@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v2 = *(a1 + 8 * a2);
  STACK[0x2D0] = STACK[0x760];
  STACK[0x2C0] = STACK[0x340];
  STACK[0x2B0] = STACK[0x5B8];
  STACK[0x2A0] = STACK[0x7B8];
  STACK[0x250] = STACK[0x540];
  STACK[0x240] = STACK[0x438];
  STACK[0x230] = STACK[0x718];
  STACK[0x220] = STACK[0x380];
  STACK[0x280] = STACK[0x3A0];
  STACK[0x210] = STACK[0x498];
  STACK[0x270] = STACK[0x4A0];
  STACK[0x200] = STACK[0x7A0];
  LODWORD(STACK[0x2E0]) = LOWORD(STACK[0x946]);
  LODWORD(STACK[0x300]) = LOWORD(STACK[0x936]);
  LODWORD(STACK[0x2F0]) = LOWORD(STACK[0x926]);
  LODWORD(STACK[0x310]) = LOWORD(STACK[0x916]);
  LODWORD(STACK[0x260]) = LOWORD(STACK[0x8FA]);
  LODWORD(STACK[0x290]) = LOWORD(STACK[0x8CE]);
  return v2(0x5028BB63E7A27580, a1);
}

uint64_t sub_244757744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(STACK[0x7F0] - 0x750C1ABFB0567FC3);
  STACK[0x340] = v8;
  return (*(a7 + 8 * (((v8 == 0) * ((v7 ^ 0x1765) - 15773 + ((v7 + 1610787179) & 0x9FFD7CE6))) ^ v7)))(a1, a2, LODWORD(STACK[0x31C]), a4, a5, a6);
}

uint64_t sub_2447577C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X6>, int a4@<W8>)
{
  v5 = (v4 | ((v4 < 0xA6B181C) << 32)) + 0x4A71114A69871268;
  STACK[0x9E8] = v5;
  v6 = STACK[0x530];
  STACK[0x9F0] = STACK[0x530];
  return (*(a3 + 8 * ((28442 * (v5 - v6 - 0x21C243735A3B0A1BLL < (a4 - 15437) + (103 * (a4 ^ 0x3CA1u)) - 404)) ^ a4)))(a1, a2, 1216081110);
}

uint64_t sub_24475790C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(STACK[0x5C0] - 0x750C1ABFB0567FC3);
  STACK[0x5B8] = v8;
  return (*(a7 + 8 * (((v8 == 0) * ((((v7 - 6927) | 0x4CE8) - 16782) ^ 0xB3A)) ^ v7)))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_244757978@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v3 = (v2 | ((v2 < 0xA6B181C) << 32)) + 0x466B1BBF92FEE070;
  STACK[0x9F8] = v3;
  v4 = STACK[0x358];
  STACK[0xA00] = STACK[0x358];
  return (*(a1 + 8 * ((46 * (v3 - v4 - 0x3774899C4D1FDCE8 >= ((a2 - 269548436) & 0x1010F07C ^ 0xFFFFFFFFFFFFFFBELL))) ^ a2)))();
}

uint64_t sub_244757A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(STACK[0x620] - 0x6286B82630F8F22CLL);
  STACK[0x670] = 0x750C1ABFB0567FDBLL;
  LODWORD(STACK[0x6C4]) = 237377513;
  STACK[0x778] = 0x975FCA4C8960A2ALL;
  return (*(a7 + 8 * ((494 * (((v8 == 0x146375EC570BCC2FLL) ^ (-115 * (v7 ^ 0xFC) + 96)) & 1)) ^ v7)))(a1, a2, LODWORD(STACK[0x31C]), a4, a5, a6);
}

uint64_t sub_244757AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x3B8] = v7;
  LODWORD(STACK[0x4CC]) = -214693917;
  STACK[0x5E0] = &STACK[0x670];
  LODWORD(STACK[0x854]) = 1440530396;
  return (*(a7 + 8 * v8))(1845370862, 305147913, a3, a4, LODWORD(STACK[0x31C]), a6);
}

uint64_t sub_244757BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X6>, int a4@<W8>)
{
  v4 = *(STACK[0x670] - 0x750C1ABFB0567FC3);
  STACK[0x7B8] = v4;
  return (*(a3 + 8 * ((((103 * ((a4 + 214) ^ 0x1743)) ^ (73 * ((a4 + 214) ^ 0x1757)) ^ 0x7B6) * (v4 == 0)) | (a4 + 214))))(a1, a2, LODWORD(STACK[0x31C]));
}

uint64_t sub_244757C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X6>, int a4@<W8>)
{
  v5 = (v4 | ((v4 < 0xA6B181C) << 32)) + (((a4 - 1647) | 0x115u) ^ 0x609D0CAFC2EBA997);
  STACK[0xA08] = v5;
  v6 = STACK[0x778];
  STACK[0xA10] = STACK[0x778];
  return (*(a3 + 8 * ((3227 * (v5 - v6 - 0x5727100B04C0B69ELL < ((a4 - 1647) ^ 0x7Cu) - 102)) ^ a4)))(a1, a2, 1216081110);
}

uint64_t sub_244757D00(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x814]) = a3;
  STACK[0x818] = *(a7 + 8 * v7);
  return (*(a7 + 8 * ((((v7 - 15694134) & 0xEF7F37) - 285) ^ v7)))(a1, a2);
}

uint64_t sub_244757D54@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  STACK[0x808] = v2;
  v4 = *v2;
  STACK[0x7E0] = *v2;
  return (*(a1 + 8 * (((v4 == v3) * (((a2 - 1845) | 0x920) + ((a2 + 5292584) & 0xFFAF37EB) - 2567)) ^ a2)))();
}

uint64_t sub_244757EC4@<X0>(uint64_t a1@<X6>, unint64_t a2@<X8>)
{
  STACK[0x6D0] = a2;
  STACK[0x610] = 0x750C1ABFB0567FDBLL;
  LODWORD(STACK[0x744]) = v4;
  STACK[0x430] = 0x1CBD6E8442F2FA67;
  return (*(a1 + 8 * (((v2 == v5) * (v3 - 14143 + v3 - 9352)) ^ v3)))();
}

uint64_t sub_24475801C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x41C]) = a3;
  STACK[0x848] = *(a7 + 8 * v7);
  return (*(a7 + 8 * (((10 * (v7 ^ 0x499)) ^ 0x3C25) + v7)))(a1, a2);
}

uint64_t sub_244758054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x3B8] = v7;
  LODWORD(STACK[0x4CC]) = v8;
  STACK[0x5E0] = &STACK[0x610];
  LODWORD(STACK[0x854]) = -2044755968;
  return (*(a7 + 8 * v9))(1845370862, 305147913, a3, a4, LODWORD(STACK[0x31C]), a6);
}

uint64_t sub_244758120(uint64_t a1, int a2, int a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v12 = *v10;
  STACK[0x3C0] = *v10;
  return (*(a7 + 8 * (((v12 == v11) * ((((v8 + v9 + a4) & a6) + a8) ^ (v8 + v9 + a2) & a3)) ^ (v8 + v9))))(a1);
}

uint64_t sub_244758288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (*(a7 + 8 * (v8 + 12371)))(a1, a2, a3, a4, a5, a6);
  v10 = STACK[0x328];
  *(v7 - 0x750C1ABFB0567FC3) = 0;
  return (*(v10 + 8 * v8))(v9);
}

uint64_t sub_2447582F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  (*(a7 + 8 * (v9 ^ 0x4647)))(v7 - 0x146375EC570BCC2FLL, a2, a3, a4, a5, a6);
  v10 = STACK[0x328];
  *v8 = 0x146375EC570BCC2FLL;
  return (*(v10 + 8 * v9))(4294959251, 1376439502, 2918512943, 146549274, LODWORD(STACK[0x31C]), 4148412159);
}

uint64_t sub_244758640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X6>, __int16 a5@<W8>)
{
  STACK[0x7C8] = v5;
  LODWORD(STACK[0xA18]) = v12;
  LOWORD(STACK[0xA1E]) = a5;
  LODWORD(STACK[0xA20]) = v11;
  LODWORD(STACK[0xA24]) = v6;
  STACK[0xA28] = v8;
  STACK[0xA30] = v10;
  v14 = v5 != 0x146375EC570BCC2FLL && (v11 ^ (v9 - 1)) < 0xFFFFFFF6;
  return (*(a4 + 8 * ((v14 * (((v7 + 506441122) & 0xE1D07999) + (v7 ^ 0xFFFFC349))) ^ v7)))(a1, a2, a3);
}

uint64_t sub_2447586C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7 ^ 0x5EF5;
  v9 = v7 ^ 0x19F7;
  v10 = (*(a7 + 8 * (v7 ^ 0x4910)))(32, a2, a3, a4, a5, a6);
  v11 = STACK[0x328];
  STACK[0x5C8] = v10 + 0x750C1ABFB0567FDBLL;
  return (*(v11 + 8 * (((v10 == 0) * (v9 - 22608 + ((v8 - 18592) | 0x4A5A))) ^ v8)))();
}

uint64_t sub_244758744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  *(a1 + 8) = 0x750C1ABFB0567FDBLL;
  v11 = v8 ^ v9;
  STACK[0xA38] = v11;
  LODWORD(v11) = ((v11 + 10) ^ 0x6E6B3CBC) - 1677730976 + (((v11 + 10) << ((v7 - 48) ^ 0xAB)) & 0xDCD67978);
  *(a1 + 16) = v11;
  v12 = (*(a7 + 8 * (v7 + 2539)))(((v7 - 1997193776) & 0x770A7B77) - 174790684 + v11 - 2338, a2, a3, a4, a5, a6);
  v13 = STACK[0x328];
  *(a1 + 24) = v12;
  return (*(v13 + 8 * (((2 * (v12 != 0)) | (32 * (v12 != 0))) ^ v7)))();
}

uint64_t sub_24475885C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  STACK[0x310] = STACK[0x5C8] - 0x750C1ABFB0567FC3;
  LODWORD(STACK[0x2A0]) = SLOWORD(STACK[0xA1E]) ^ 0xFFFFDD8C;
  LODWORD(STACK[0x2E0]) = STACK[0xA20];
  STACK[0x300] = STACK[0x568] - 0x750C1ABFB0567FC3;
  v63 = SLOWORD(STACK[0xA56]);
  LODWORD(STACK[0x2B0]) = v63;
  LODWORD(STACK[0x290]) = v63 ^ 0x260E;
  v64 = *(a7 + 8 * ((v62 + 1304638717) ^ 0x4DC32EDA ^ (2284 * ((v62 + 1304638717) < 0xA5F5FFF1))));
  STACK[0x2F0] = STACK[0x550] - 0x750C1ABFB0567FC3;
  v65 = STACK[0x320];
  LODWORD(STACK[0x280]) = STACK[0x320] + 12679;
  LODWORD(STACK[0x270]) = v65 + 5955;
  LODWORD(a59) = v65 + 8323;
  LODWORD(STACK[0x260]) = ((v65 - 1292323652) & 0x4D076EAD ^ 0xFFFFFBB0) + v65 + 8323;
  LODWORD(STACK[0x250]) = v65 + 5547;
  LODWORD(STACK[0x240]) = v65 + 19209;
  v66 = (v65 + 7986) | 0x701;
  LODWORD(a57) = v65 + 10018;
  LODWORD(v65) = v65 + 53235;
  LODWORD(STACK[0x230]) = v65;
  LODWORD(STACK[0x220]) = v65 ^ 0xCECE;
  LODWORD(STACK[0x200]) = v66;
  LODWORD(STACK[0x2C0]) = a2 + 4;
  LODWORD(STACK[0x2D0]) = STACK[0xA58];
  LODWORD(STACK[0x210]) = STACK[0x5B0];
  return v64(v64, a2, a3, 0x8AF3E5404FA9803DLL, 0x60F92125641679B0, 0x89AC0027BB50EB7ELL, 0xDF5A02CB45FE5A29, 4 * (v66 ^ 0x2344u), a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_244758BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  *(v7 - 0x750C1ABFB0567FDBLL) = v6;
  *(v6 - 0x750C1ABFB0567FD3) = *(a4 + v5);
  *(a4 + v5) = v6;
  return (*(a3 + 8 * v4))(a1, a2, 1216124116);
}

uint64_t sub_244758C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x450];
  v9 = *(STACK[0x450] - 0x750C1ABFB0567FD3);
  v10 = STACK[0x5C8];
  *(v10 - 0x750C1ABFB0567FD3) = v9;
  *(v10 - 0x750C1ABFB0567FDBLL) = *(v8 - 0x750C1ABFB0567FDBLL);
  return (*(a7 + 8 * ((45 * (((v7 ^ (v9 == 0x750C1ABFB0567FDBLL)) & 1) == 0)) | v7)))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_244758E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (*(a7 + 8 * (v7 + 18969)))(a1, a2, a3, a4, a5, a6);
  v9 = STACK[0x328];
  *(STACK[0x450] - 0x750C1ABFB0567FC3) = 0;
  return (*(v9 + 8 * v7))(v8);
}

uint64_t sub_244758F18@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 8 * (v2 ^ 0x4F0B)))(a2 - 0x750C1ABFB0567FDBLL);
  v4 = STACK[0x328];
  STACK[0x450] = 0x750C1ABFB0567FDBLL;
  return (*(v4 + 8 * v2))(v3);
}

uint64_t sub_244758F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  *(a4 + v4) = v5;
  *(a4 - 0x146375EC570BCC2FLL) = v5;
  return (*(a3 + 8 * v6))(a1, a2, 1216124116);
}

uint64_t sub_244759058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (*(a7 + 8 * (v8 ^ 0x7F92)))(a1, a2, a3, a4, a5, a6);
  v10 = STACK[0x328];
  *(v7 - 0x750C1ABFB0567FC3) = 0;
  return (*(v10 + 8 * v8))(v9);
}

uint64_t sub_24475936C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x6C8]) = a3;
  STACK[0x710] = STACK[0x6F0];
  STACK[0x848] = *(a7 + 8 * v7);
  return (*(a7 + 8 * ((v7 + 1568) ^ v7)))(a1, a2);
}

uint64_t sub_24475949C@<X0>(uint64_t a1@<X6>, unint64_t a2@<X8>)
{
  STACK[0x528] = v2;
  LODWORD(STACK[0x404]) = v3;
  STACK[0x3F8] = a2;
  STACK[0x4C0] = 0x2E752BE5BC07AC09;
  LODWORD(STACK[0x3F0]) = v5;
  LOWORD(STACK[0x3F6]) = -18976;
  LODWORD(STACK[0x468]) = v5;
  LODWORD(STACK[0x55C]) = v5;
  STACK[0x868] = 0xC9D452B5095AACA7;
  STACK[0x6A8] = 0;
  v7 = (*(a1 + 8 * (v4 + 18411)))(16);
  v8 = STACK[0x328];
  STACK[0x370] = v7 + v6;
  return (*(v8 + 8 * (((2 * (((v4 ^ (v4 + 7)) ^ (v7 == 0)) & 1)) & 0xFB | (4 * (((v4 ^ (v4 + 7)) ^ (v7 == 0)) & 1))) ^ v4)))();
}

uint64_t sub_24475954C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  a1[1] = 0x750C1ABFB0567FDBLL;
  return (*(a7 + 8 * (v7 ^ 0x5210)))();
}

uint64_t sub_244759608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x3F8] == 0;
  STACK[0x3A0] = STACK[0x3F8];
  return (*(a7 + 8 * ((((v8 ^ (9 * (v7 ^ 0xE3))) & 1) * (((v7 - 15754) | 0x20) ^ 0x938)) ^ v7)))(a1, a2, a5, a4);
}

uint64_t sub_24475965C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = ((((v8 - 1221) | 0x100u) - 0x40082409101ADCA4) ^ v9) + ((2 * v9) & 0x1DFCA58FCLL);
  STACK[0xA40] = ((v8 - 2079476584) & 0x7BF23E82) + 0x4FB97F397DBED39ALL + v10;
  STACK[0xA48] = v7;
  return (*(a7 + 8 * ((498 * (v10 - v7 + 0x6E7D4FEECC227F81 < 0xFFFFFFFFFFFFFFF6)) ^ v8)))(a1, a2, 1216081110, a4, a5, a6);
}

uint64_t sub_2447597F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X6>, unint64_t a5@<X8>)
{
  STACK[0x6D8] = a5;
  LODWORD(STACK[0xA50]) = v7;
  LOWORD(STACK[0xA56]) = v6;
  v9 = STACK[0x468];
  LODWORD(STACK[0xA58]) = STACK[0x468];
  LODWORD(STACK[0xA5C]) = STACK[0x55C];
  STACK[0xA60] = STACK[0x868];
  STACK[0x6A0] = STACK[0x6A8];
  v11 = a5 != v8 && ((v5 + 12564) ^ v9 ^ 0xE265D38u) < 165 * (v5 ^ 0x19BEu) - 340;
  return (*(a4 + 8 * ((94 * v11) ^ v5)))(a1, a2, a3);
}

uint64_t sub_244759870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (*(a7 + 8 * (v7 ^ 0x1315)))(32, a2, a3, a4, a5, a6);
  STACK[0x568] = v9 + 0x750C1ABFB0567FDBLL;
  return (*(a7 + 8 * ((v9 == 0) ^ v7)))();
}

uint64_t sub_2447598D4(uint64_t a1)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  *(a1 + 8) = 0x750C1ABFB0567FDBLL;
  v5 = v1 ^ 0xE2617E9u;
  STACK[0xA68] = v5;
  LODWORD(v5) = ((v5 + 10) ^ 0x5F7F1B7F) - 1427374947 + (((v5 + 10) << ((7 * (v2 ^ 0x23) - 64) ^ 0x64)) & 0xBEFE36FE);
  *(a1 + 16) = v5;
  v6 = (*(v3 + 8 * (7 * (v2 ^ 0x4F23) + 12320)))((v5 - 174790684));
  *(a1 + 24) = v6;
  return (*(v3 + 8 * ((29 * (((7 * (v2 ^ 0x23) - 64) ^ (v6 == 0)) & 1)) ^ (7 * (v2 ^ 0x4F23)))))();
}

uint64_t sub_244759BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x398];
  v9 = *(STACK[0x398] - 0x750C1ABFB0567FD3);
  v10 = STACK[0x568];
  *(v10 - 0x750C1ABFB0567FD3) = v9;
  *(v10 - 0x750C1ABFB0567FDBLL) = *(v8 - 0x750C1ABFB0567FDBLL);
  return (*(a7 + 8 * ((505 * (((v7 - 99) ^ (v9 == 0x750C1ABFB0567FDBLL)) & 1)) ^ v7)))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_244759E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (*(a7 + 8 * (v7 ^ 0x6508)))(a1, a2, a3, a4, a5, a6);
  v9 = STACK[0x328];
  *(STACK[0x398] - 0x750C1ABFB0567FC3) = 0;
  return (*(v9 + 8 * v7))(v8);
}

uint64_t sub_244759EA4@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(v2 + 8 * (v1 ^ 0x4F08)))(a1 - 0x750C1ABFB0567FDBLL);
  STACK[0x398] = 0x750C1ABFB0567FDBLL;
  return (*(v2 + 8 * (((LODWORD(STACK[0x60C]) == (v1 ^ 0x5502) + 1216106762) * (((4 * v1) ^ 0x67EC) - 12522)) ^ v1)))(v3);
}

uint64_t sub_244759FF4@<X0>(void *a1@<X8>)
{
  *(v3 - 0x750C1ABFB0567FDBLL) = v1;
  *(v1 - 0x750C1ABFB0567FD3) = *a1;
  return (*(v4 + 8 * v2))();
}

uint64_t sub_24475A09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (*(a7 + 8 * (v7 + 7384)))(a1, a2, a3, a4, a5, a6);
  v10 = STACK[0x328];
  *(v8 - 0x750C1ABFB0567FC3) = 0;
  return (*(v10 + 8 * v7))(v9);
}

uint64_t sub_24475A194(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x368]) = a3;
  STACK[0x828] = STACK[0x370];
  STACK[0x848] = *(a7 + 8 * v7);
  return (*(a7 + 8 * (((v7 - 481346381) & 0x1CB0FACE ^ 0x3C1A) + v7)))(a1, a2);
}

uint64_t sub_24475A33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(STACK[0x610] - 0x750C1ABFB0567FC3);
  STACK[0x4A0] = v8;
  return (*(a7 + 8 * (((((v7 + 1863815671) & 0x90E82BFA) + ((v7 - 216018260) & 0xCDFEFBB) - 5812) * (v8 == 0)) | v7)))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_24475A3C8@<X0>(uint64_t a1@<X6>, unsigned int a2@<W8>)
{
  v3 = (v2 | ((v2 < 0xA6B181C) << 32)) + 0xF6EF39BF357E3D4;
  STACK[0xA70] = v3;
  v4 = STACK[0x430];
  STACK[0xA78] = STACK[0x430];
  return (*(a1 + 8 * ((16308 * (v3 - v4 + (((a2 ^ 0x4BA) - 2272) ^ 0xD4E7AE8452FFE2FLL) < 0xFFFFFFFFFFFFFFF6)) ^ a2)))();
}

uint64_t sub_24475A480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0xA84]) = v8;
  STACK[0xA88] = v10;
  v13 = v7 == v11 || v10 == 0;
  return (*(a7 + 8 * (((((-53 * (v9 ^ 0xC3)) ^ v13) & 1) * (((v9 - 855120873) & 0x32F80862) - 2107)) ^ v9)))(a1, a2, a5, a4);
}

uint64_t sub_24475A508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X6>, int a4@<W8>)
{
  v5 = *v4;
  STACK[0x460] = *v4;
  return (*(a3 + 8 * ((13 * (((a4 - 31 + a4) ^ (v5 == 0x750C1ABFB0567FDBLL)) & 1)) ^ a4)))(a1, a2, 1216081113);
}

uint64_t sub_24475B028@<X0>(uint64_t a1@<X6>, unsigned int a2@<W8>)
{
  v5 = v2 + 40 * a2;
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  STACK[0x668] = STACK[0x330];
  LODWORD(STACK[0x70C]) = v6;
  STACK[0x688] = v4;
  LODWORD(STACK[0x74C]) = v7;
  LODWORD(STACK[0x8A4]) = 2109758884;
  return (*(a1 + 8 * v3))();
}

uint64_t sub_24475B1F4@<X0>(uint64_t a1@<X6>, unsigned int a2@<W8>)
{
  v5 = v3 + 40 * a2;
  v6 = *v5;
  v7 = *(v5 + 24);
  STACK[0x5E8] = v2;
  LODWORD(STACK[0x484]) = v7;
  LOWORD(STACK[0x4E6]) = -13593;
  LODWORD(STACK[0x6B4]) = 237377505;
  LODWORD(STACK[0x4BC]) = 237377513;
  STACK[0x390] = v6;
  STACK[0x730] = 0;
  LODWORD(STACK[0x5B4]) = -1627710164;
  return (*(a1 + 8 * v4))();
}

uint64_t sub_24475B524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x5E8] = v7;
  LODWORD(STACK[0x484]) = v12;
  LOWORD(STACK[0x4E6]) = 7865;
  LODWORD(STACK[0x6B4]) = v11;
  LODWORD(STACK[0x4BC]) = v9;
  STACK[0x390] = 0x44046241CC2D2A4ELL;
  STACK[0x730] = v10;
  LODWORD(STACK[0x5B4]) = 2035950083;
  return (*(a7 + 8 * (v8 ^ 0x40AC)))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_24475B7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, unint64_t a13, uint64_t a14)
{
  v20 = v15 + v16 + 2;
  v21 = *(a1 + 96) - 0x708103872B23E0D5;
  v22 = *(v17 + 8 * v19);
  v23 = 1143492667 * ((((2 * &a10) | 0xF0408608E28FD832) - &a10 + 0x7DFBCFB8EB813E7) ^ 0xAEFEE79D6E6CFA15);
  a10 = v23 + v19 + 503588953;
  a11 = ((2 * v20) & 0x7EFF3EBE) + (v20 ^ ((v19 + 1074076200) | 0x9584100) ^ 0x3622C029) + v23 - 370377756;
  a12 = v14;
  a13 = v22 ^ v23;
  a14 = v21;
  v26 = (*(v17 + 8 * (v19 + 21891)))(&a10, a2, a3, a4, a5, a6, a7, a8);
  *(*(a1 + 96) - 0x708103872B23E119) = *(a2 + v18) + 700953032;
  v27 = *(a2 + v18) - ((((v19 + 1303034217) & 0x6E7B) + 2 * *(a2 + v18) + 691516425) & 0x279427FE) + 140903453;
  return (*(v17 + 8 * ((((2 * v27) & 0xFF84F7F6 ^ 0x278427F6) + (v27 ^ 0x6C086804) - 1090527568 == 1052924587) | (v19 + 14216))))(v26);
}

uint64_t sub_24475BB6C@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W3>, int a4@<W8>)
{
  v10 = (v6 - a4 + a1);
  v11 = *(v5 + v10 - 15);
  v12 = *(v5 + v10 - 31);
  v13 = v4 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v9 + 8 * (((a2 + a4 == v7) * a3) ^ v8)))();
}

void sub_24475BCA8(_DWORD *a1)
{
  v1 = *a1 + 1459227061 * ((((2 * a1) | 0x794817D8) - a1 - 1017383916) ^ 0x369C2125);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_24475BDD0(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(&off_278E1E490 + ((49 * ((qword_27EDF1468 + dword_27EDF10B0) ^ 0x27)) ^ byte_244FB9490[byte_244F6B1B0[(49 * ((qword_27EDF1468 + dword_27EDF10B0) ^ 0x27))] ^ 0xF9]) + 1052);
  v3 = *(v2 - 4);
  v4 = *(&off_278E1E490 + (byte_244FB969C[(byte_244F6B4BC[(49 * (v3 ^ qword_27EDF1468 ^ 0x27)) - 12] ^ 0xB5) - 12] ^ (49 * (v3 ^ qword_27EDF1468 ^ 0x27))) + 587);
  v5 = &v11[*v4 ^ v3];
  *(v2 - 4) = 2085698353 * (v5 + 0x1FC28598584843D9);
  *v4 = 2085698353 * (v5 ^ 0xE03D7A67A7B7BC27);
  v6 = *(&off_278E1E490 + ((49 * (dword_27EDF10B0 ^ 0x27 ^ qword_27EDF1468)) ^ byte_244FB9590[byte_244F6B3B0[(49 * (dword_27EDF10B0 ^ 0x27 ^ qword_27EDF1468))] ^ 0x21]) - 114);
  v7 = 1649972239 * (((&v12 | 0xDEE51C10C5922286) - &v12 + (&v12 & 0x211AE3EF3A6DDD78)) ^ 0xBFF1220B1E2A0EFELL);
  v8 = *(v6 + 8816) - v7;
  v13 = a1;
  v15 = v8;
  v16 = a2;
  v12 = v7 - 721054033;
  v9 = 49 * ((*v4 + *(v2 - 4)) ^ 0x27);
  (*(v6 + 8 * ((byte_244FB949C[(byte_244F6B1B0[v9] ^ 0x70) - 12] ^ v9) + 22862) - 8))(&v12);
  return v14;
}

uint64_t sub_24475C000(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(&off_278E1E490 + ((49 * ((qword_27EDF1468 + dword_27EDF03C0) ^ 0x27)) ^ byte_244FB9390[byte_244F6B0B0[(49 * ((qword_27EDF1468 + dword_27EDF03C0) ^ 0x27))] ^ 0x93]) + 749);
  v3 = *(v2 - 4);
  v4 = *(&off_278E1E490 + (byte_244F1BEB4[(byte_245010C34[(49 * ((qword_27EDF1468 + v3) ^ 0x27)) - 4] ^ 0x92) - 4] ^ (49 * ((qword_27EDF1468 + v3) ^ 0x27))) + 629);
  v5 = &v11[*v4 - v3];
  *(v2 - 4) = (2085698353 * v5) ^ 0xE03D7A67A7B7BC27;
  *v4 = 2085698353 * (v5 ^ 0xE03D7A67A7B7BC27);
  v6 = *(&off_278E1E490 + ((49 * ((qword_27EDF1468 + dword_27EDF03C0) ^ 0x27)) ^ byte_244FB9590[byte_244F6B3B0[(49 * ((qword_27EDF1468 + dword_27EDF03C0) ^ 0x27))] ^ 0x9E]) - 91);
  v7 = *(v6 + 8624);
  v8 = 1649972239 * ((((2 * &v12) | 0x35853B5FC7C41FEELL) - &v12 + 0x653D62501C1DF009) ^ 0xFBD6A3B4385A238FLL);
  v12 = v8 - 721054033;
  v13 = a1;
  v15 = v7 - v8;
  v16 = a2;
  v9 = 49 * (*(v2 - 4) ^ 0x27 ^ *v4);
  (*(v6 + 8 * ((byte_244FB969C[(byte_244F6B4BC[v9 - 12] ^ 0x7D) - 12] ^ v9) + 22820) - 8))(&v12);
  return v14;
}

void sub_24475C230(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40) - 426870883 * ((a1 & 0xF7F143ED | ~(a1 | 0xF7F143ED)) ^ 0xCD27C125);
  v2 = *(a1 + 16);
  v3 = *a1;
  v4 = *(a1 + 32);
  v5 = *(&off_278E1E490 + (v1 ^ 0x439D)) - 8;
  (*&v5[8 * (v1 ^ 0x1A2E)])(v9, 0, 16);
  if (v2)
  {
    v6 = v3 == 0x7AEAD47767F7FCBELL;
  }

  else
  {
    v6 = 1;
  }

  v8 = v6 || v4 == 0x35189F1CFD27983ELL;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_24475C3B8@<X0>(int a1@<W8>)
{
  v3 = a1 | 0x48;
  v4 = STACK[0x2E8];
  v5 = *(STACK[0x2E8] + 8 * v3);
  v6 = 867706601 * (((~(v2 - 160) | 0xBBE7A28CBA7D832ELL) + ((v2 - 160) | 0x44185D7345827CD1)) ^ 0xD53D2290419B46BBLL);
  *(v2 - 152) = &STACK[0x21640918BF0054FD];
  *(v2 - 144) = &STACK[0xB477B9BEAD2E2AA];
  *(v2 - 128) = STACK[0x270];
  *(v2 - 160) = v5 + v6;
  *(v2 - 120) = v6 - 59111578 + v3;
  *(v2 - 112) = v1;
  v7 = (*(v4 + 8 * (v3 + 21967)))(v2 - 160);
  return (*(v4 + 8 * (((*(v2 - 136) == 1216124116) * ((21 * (v3 ^ 0x45B)) ^ 0x5DDA)) ^ ((((v3 ^ 0x45B) + 17388) ^ 0x4DDD) + v3))))(v7);
}

uint64_t sub_24475C4E4()
{
  v1 = *(STACK[0x2E8] + 8 * (v0 + 12738));
  v2 = STACK[0x2B0];
  STACK[0x228] = (STACK[0x2B0] + 1040887689) & 0xFFFFFFFFC1F50FFBLL;
  LODWORD(STACK[0x2D4]) = v2 - 11489;
  LODWORD(STACK[0x2D0]) = v2 + 1263201268;
  return v1(103782805, 3490008947, 804974449, -103782741, -19823);
}

uint64_t sub_24475C9A8()
{
  v3 = STACK[0x2E8];
  STACK[0x288] = *(STACK[0x2E8] + 8 * v2);
  v4 = &STACK[0x440] + v1;
  *(&STACK[0x440] + v1 + 74) = 0;
  STACK[0x2B8] = &STACK[0x440] + v1 + 74;
  STACK[0x290] = v1;
  v5 = v1 - 17264 + ((v0 + 1857333264) & 0x914B57D7);
  STACK[0x280] = v5;
  STACK[0x370] = v5;
  *(v4 + 82) = 0;
  v4[90] = 0;
  return (*(v3 + 8 * v0))();
}

uint64_t sub_24475CAA0@<X0>(int a1@<W8>)
{
  v4 = *(STACK[0x2E8] + 8 * ((11 * (((v1 + 1) ^ (a1 + 1506760576 < ((v1 + 1722265219) & 0x995847FF) + 2147466254)) & 1)) | v1));
  STACK[0x2A0] = *(v3 + 8 * (v1 ^ 0x4EDA)) - 4;
  STACK[0x2D8] = *(v3 + 8 * (v1 ^ 0x4D93)) - 2;
  STACK[0x2E0] = v2;
  return v4();
}

uint64_t sub_24475CB2C@<X0>(int a1@<W8>)
{
  STACK[0x2A8] = v2;
  v3 = v1 ^ 0x5EA4;
  LODWORD(STACK[0x298]) = (v3 ^ 0xC15C7BC) + a1;
  return (*(STACK[0x2E8] + 8 * v3))();
}

uint64_t sub_24475CB78@<X0>(int a1@<W8>)
{
  v4 = v1 ^ 0x381B51E3;
  v5 = a1 ^ 0x5FCD799 ^ (((v1 ^ 0x381B51E3) + 1055186614) | 0x30AA);
  if (v2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = STACK[0x2E0] + v6;
  LODWORD(STACK[0x2C0]) = v3 - 133476646;
  v8 = STACK[0x2E8];
  v9 = (*(STACK[0x2E8] + 8 * (v4 + 1055209640)))(v7, 74, 0, -1, STACK[0x2A0]);
  return (*(v8 + 8 * (v4 ^ 0xC11B099B ^ (31098 * (v4 == -1145559487)))))(v9);
}

uint64_t sub_24475CC4C@<X0>(int a1@<W8>)
{
  v5 = a1 ^ v2;
  v6 = STACK[0x2A8];
  v7 = STACK[0x2C0];
  v8 = STACK[0x2E8];
  v9 = (*(STACK[0x2E8] + 8 * (v4 + 10568)))(v1 + v5, 74, 0, -1, STACK[0x2D8]);
  v10 = *(v6 + v7);
  if ((v10 - 127) < (v4 - 9))
  {
    v10 = 46;
  }

  v11 = STACK[0x2B8];
  v12 = STACK[0x2C8];
  *(v11 + v12) = v10;
  *(v11 + v12 + 1) = 0;
  v14 = (v3 + 843480297) > 0x32467CE7 && (v3 + 843480297) < LODWORD(STACK[0x298]);
  return (*(v8 + 8 * (v4 ^ (28 * v14))))(v9);
}

uint64_t sub_24475CD28()
{
  v2 = (v1 + 48) & 0xF;
  STACK[0x2C8] = v2;
  return (*(STACK[0x2E8] + 8 * (((2 * (v2 == ((v0 - 117421433) ^ 0xF90070A9))) | (16 * (v2 == ((v0 - 117421433) ^ 0xF90070A9)))) ^ v0)))();
}

uint64_t sub_24475CD7C()
{
  v2 = *(STACK[0x2E8] + 8 * ((13741 * (v0 >= v0 + 875625889)) ^ (v0 + 117419219)));
  LODWORD(STACK[0x2C0]) = v1;
  return v2();
}

uint64_t sub_24475CE38@<X0>(int a1@<W8>)
{
  v8 = STACK[0x2E8];
  (*(STACK[0x2E8] + 8 * (v7 + 8525)))(v4 + (a1 ^ v3), 74, 0, -1, *(v5 + 8 * (v7 ^ v6)));
  return (*(v8 + 8 * ((((v7 ^ (((v1 + 1) & 0xF) == 6)) & 1) * v2) ^ v7)))();
}

uint64_t sub_24475CEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30, int a31)
{
  v31 = STACK[0x2E8];
  v32 = (*(STACK[0x2E8] + 8 * a31))(16, a2, a3, a4, a5, a6, a7, a8) != 0;
  return (*(v31 + 8 * ((v32 * a30) ^ a23)))();
}

uint64_t sub_24475CF0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  a1[1] = 0x750C1ABFB0567FDBLL;
  v22 = STACK[0x2E8];
  v23 = *(STACK[0x2E8] + 8 * a22);
  STACK[0x320] = a1 + 0x146375EC570BCC2FLL;
  STACK[0x2F0] = v23;
  return (*(v22 + 88832))();
}

uint64_t sub_24475CF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28, int a29)
{
  STACK[0x298] = &STACK[0x420];
  v29 = STACK[0x2E8];
  STACK[0x368] = *(STACK[0x2E8] + 8 * a28);
  v30 = *(v29 + 8 * ((40 * a29 - 1788) ^ a28));
  LODWORD(STACK[0x2E0]) = 1692377732;
  return v30(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_24475CFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26, int a27, int a28, int a29)
{
  v30 = *(STACK[0x2E8] + 8 * ((a28 * (a24 == 0x5972DEC1548CC742)) ^ a29));
  STACK[0x2C8] = *(v29 + 8 * a25) - 4;
  return v30(a1, a2, a3);
}

uint64_t sub_24475D05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  *(v12 - 160) = v11 - 1230911237 * ((((v12 - 160) | 0xD249C499) + (~(v12 - 160) | 0x2DB63B66)) ^ 0x814A766D) - 4443;
  v13 = STACK[0x2E8];
  (*(STACK[0x2E8] + 8 * (v11 ^ 0x1A07)))(v12 - 160, a2, a3, a4, a5, a6, a7, a8);
  return (*(v13 + 8 * a11))(20995, 4294959872, 16899, 3580093963, 714886135, 12803, 1646481449, 27441);
}

uint64_t sub_24475D1A4()
{
  *(v1 - 160) = v0 - 1230911237 * ((-97962376 - ((v1 - 160) | 0xFA293678) + ((v1 - 160) | 0x5D6C987)) ^ 0x56D57B72) - 4443;
  v2 = STACK[0x2E8];
  (*(STACK[0x2E8] + 8 * (v0 + 5633)))(v1 - 160);
  return (*(v2 + 8 * (v0 - 13905)))(4294951173, 208);
}

uint64_t sub_24475D2B0()
{
  STACK[0x298] = v3;
  STACK[0x2A8] = v1;
  STACK[0x370] = STACK[0x280];
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  v4 = *(STACK[0x2E8] + 8 * v0);
  STACK[0x2C0] = v2 + 17;
  return v4();
}

uint64_t sub_24475D3A0@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v7 = v4 - 1408019679;
  v8 = STACK[0x2E8];
  v9 = *(STACK[0x2A8] + v7) ^ (43 * v7) ^ *(a1 + v7) ^ *(STACK[0x298] + v7);
  v10 = (*(STACK[0x2E8] + 8 * (v3 + 12926)))(v2 + (a2 ^ 0x656CD61C), 74, 0, -1, STACK[0x2D8]);
  v11 = v9 ^ *(&STACK[0x410] + v7);
  if ((v11 - 127) < 0xA1u)
  {
    v11 = 46;
  }

  v12 = (STACK[0x2E0] + v6);
  *v12 = v11;
  v12[1] = 0;
  return (*(v8 + 8 * (v3 ^ (200 * (v5 != 1408019695)))))(v10);
}

uint64_t sub_24475D528@<X0>(int a1@<W8>)
{
  v3 = STACK[0x2E8];
  v4 = (*(STACK[0x2E8] + 8 * (v2 + 4587)))(v1 + (a1 ^ 0x656CD61C), 74, 0, -1, STACK[0x2A0]);
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_24475D5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v24 = *(STACK[0x2E8] + 8 * (((((7 * (v23 ^ 0xF1C)) ^ 0x69E3) - 10641) * (a23 == 0x448A96681ABD3804)) ^ v23));
  STACK[0x2C0] = *(&off_278E1E490 + (v23 ^ 0xA));
  return v24(a1, a2, a3, a4);
}

uint64_t sub_24475D670()
{
  *(v1 - 160) = v0 - 1230911237 * ((((v1 - 160) | 0x70216BAA) - (v1 - 160) + ((v1 - 160) & 0x8FDE9450)) ^ 0x2322D95F) - 4443;
  v2 = STACK[0x2E8];
  (*(STACK[0x2E8] + 8 * (v0 ^ 0x1A07)))(v1 - 160);
  return (*(v2 + 8 * (v0 - 13701)))(176, 974861966, 4294953555, 19893, 2273429941, 2021551095, -974878080, 0x35B8CDC0D6BB35D8);
}

uint64_t sub_24475D7DC()
{
  *(v1 - 160) = v0 - 1230911237 * ((2 * ((v1 - 160) & 0xF11DC70) - (v1 - 160) + 1894654861) ^ 0x23ED9178) - 4443;
  v2 = STACK[0x2E8];
  (*(STACK[0x2E8] + 8 * (v0 ^ 0x1A07)))(v1 - 160);
  return (*(v2 + 8 * (v0 - 10383)))();
}

uint64_t sub_24475D8E4()
{
  STACK[0x2A8] = v1;
  STACK[0x370] = STACK[0x280];
  *(v3 + 82) = 0;
  *(v3 + 74) = 0;
  *(v3 + 90) = 0;
  v4 = *(STACK[0x2E8] + 8 * v0);
  STACK[0x298] = v2;
  return v4();
}

uint64_t sub_24475D9D4()
{
  v3 = (STACK[0x2B8] + STACK[0x2C8]);
  *v3 = v0;
  v3[1] = 0;
  return (*(STACK[0x2E8] + 8 * (((v2 + ((v1 - 1761060556) & 0x68F79D3F) == 214450630) * ((v1 ^ 0x4769) - 12504)) ^ v1)))();
}

uint64_t sub_24475DA9C()
{
  v2 = (v1 + 10) & 0xF;
  STACK[0x2C8] = v2;
  return (*(STACK[0x2E8] + 8 * (((v2 != (v0 - 11986) - 7170) * (v0 - 19103)) ^ v0)))();
}

uint64_t sub_24475DAE0@<X0>(int a1@<W8>)
{
  v4 = v1 + 13;
  v5 = STACK[0x2E8];
  v6 = (*(STACK[0x2E8] + 8 * ((v1 + 13) ^ 0x1313)))(v3 + (a1 ^ v2), 74, 0, -1, STACK[0x2A0]);
  return (*(v5 + 8 * v4))(v6);
}

uint64_t sub_24475DB80@<X0>(int a1@<W8>)
{
  v5 = v4 + (a1 ^ v2);
  v6 = STACK[0x2E8];
  v7 = (*(STACK[0x2E8] + 8 * (v1 ^ 0x45F0)))(v5, 74, 0, -1, STACK[0x2D8]);
  return (*(v6 + 8 * ((78 * ((*(&STACK[0x400] + v3 - 214449542) ^ (-119 * (v3 + 122)) ^ *(*(&off_278E1E490 + v1 - 6235) + v3 - 214449554) ^ *(*(&off_278E1E490 + (v1 ^ 0x1849)) + v3 - 214449550) ^ *(*(&off_278E1E490 + (v1 ^ 0x1F58)) + v3 - 214449550)) > 0x1Fu)) ^ v1)))(v7);
}

uint64_t sub_24475DCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  STACK[0x370] = STACK[0x290];
  v33 = STACK[0x330];
  v34 = STACK[0x2E8];
  v35 = 715682041 * ((~(v32 - 160) & 0x73FBFE0434EE92FELL | (v32 - 160) & 0x8C0401FBCB116D01) ^ 0xA2A7D21C1A869ACLL);
  v36 = *(STACK[0x2E8] + 8 * v31) ^ v35;
  *(v32 - 120) = v35 + LODWORD(STACK[0x340]) - 1659671487;
  *(v32 - 116) = 480593869 - v35 + v31 + 58;
  *(v32 - 152) = v36;
  *(v32 - 144) = a31;
  *(v32 - 136) = a30;
  *(v32 - 128) = v33;
  v37 = (*(v34 + 8 * (v31 + 21989)))(v32 - 160, a2, a3, a4, a5, a6, a7, a8);
  return (*(v34 + 8 * ((((v31 - 557005886) & 0x21337BFF) - 15025) ^ v31 ^ ((*(v32 - 160) == 1216124116) * (v31 + 12986)))))(v37);
}

uint64_t sub_24475DE0C()
{
  v2 = STACK[0x2E8];
  v3 = (*(STACK[0x2E8] + 8 * (v1 ^ 0x6D54)))((((v1 ^ 0x1793) + 6000) ^ 0x3A76) + (4 * v0 + 1691820296) / 3u) == 0;
  return (*(v2 + 8 * ((406 * v3) ^ v1)))();
}

uint64_t sub_24475DEE4@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v7 = *v5;
  v8 = v7 >> 2;
  v9 = v5[1];
  v10 = (v9 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v7 & 3));
  v11 = 4 * (v9 & 0xF);
  v12 = v5[2];
  *v2 = *(a2 + v8) - 122;
  v2[1] = *(a2 + v10) - 122;
  v2[2] = *(a2 + (v11 | (v12 >> ((v6 ^ v3) + 17)))) - 122;
  v2[3] = *(a2 + (v12 & 0x3F)) - 122;
  return (*(STACK[0x2E8] + 8 * (((v4 + a1) < 0xFFFFFFFD) | (4 * ((v4 + a1) < 0xFFFFFFFD)) | v6)))();
}

uint64_t sub_24475E074@<X0>(uint64_t a1@<X8>, uint64_t a2, int a3)
{
  LOBYTE(STACK[0x346]) = v6;
  *v3 = *(a1 + ((v5 >> 2) ^ 0x28)) - 122;
  v8 = *(a1 + (((49 * (((v4 - 12322) | 0x4220) ^ 0x4290)) ^ 0x3C0u) & (16 * ~v5) | ((v6 & 0xF0) >> 4) ^ 0xAu));
  LOBYTE(STACK[0x347]) = -93;
  v3[1] = v8 - 122;
  v3[2] = *(a1 + (((LOBYTE(STACK[0x347]) >> 6) ^ 2) & 0xFFFFFFFFFFFFFFC3 | (4 * ((v6 ^ 3) & 0xF)))) - 122;
  v3[3] = 61;
  return (*(STACK[0x2E8] + 8 * (v4 ^ (30339 * (v7 == a3)))))();
}

uint64_t sub_24475E15C(uint64_t a1)
{
  v3 = v1 - 13508;
  *(a1 + ((v2 - a1) & ((v1 - 2433) + 4294952333))) = 0;
  v4 = STACK[0x2E8];
  v5 = (*(STACK[0x2E8] + 8 * (v1 + 5581)))();
  return (*(v4 + 8 * v3))(v5);
}

uint64_t sub_24475E1A4()
{
  v2 = STACK[0x2F8];
  STACK[0x370] = v1 + 16;
  STACK[0x380] = v2;
  STACK[0x378] = v2;
  STACK[0x388] = &STACK[0x410];
  return (*(STACK[0x2E8] + 8 * ((30341 * (&STACK[0x400] == v2)) ^ v0)))();
}

uint64_t sub_24475E208()
{
  v2 = &STACK[0x440] + v1;
  *v2 = STACK[0x400];
  *(v2 + 1) = STACK[0x401];
  *(v2 + 9) = STACK[0x409];
  *(v2 + 13) = STACK[0x40D];
  v2[15] = STACK[0x40F];
  return (*(STACK[0x2E8] + 8 * v0))();
}

uint64_t sub_24475FB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, unsigned int a54, int a55, int a56, int a57, int a58, int a59, int a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v93 = (v88 - 12279) | 0x888;
  LODWORD(STACK[0x24C]) = v93;
  v94 = v88;
  v95 = (((v93 - 7071) & v92 ^ 0x6DB029CF) - 2129593715 - ((((v88 - 190) | 0x1B3) ^ 0x221B6E9) & (2 * ((v93 - 7071) & v92 ^ 0x6DB029CF)))) ^ 0x8110FA8D;
  LODWORD(STACK[0x2D8]) = v95;
  v96 = *(a61 + (*(a52 + v95) ^ 0xBALL));
  v97 = v92 & 0xFFFFFFFD ^ 0x6DB029C2;
  LODWORD(STACK[0x2C8]) = v97;
  v98 = *(a64 + (*(a52 + v97) ^ 0x3FLL));
  v99 = ((v92 & 0xFFFFFFF4 ^ 0x6DB029CB) - 1565423730 - ((2 * (v92 & 0xFFFFFFF4 ^ 0x6DB029CB)) & 0x45630F1C)) ^ 0xA2B1878E;
  LODWORD(STACK[0x2C0]) = v99;
  v100 = ((((v98 ^ 0x62) + 8098871 - ((2 * (v98 ^ 0x62)) & 0x42)) << 8) - 5632) ^ 0x7B942100;
  v101 = *(a61 + (*(a52 + v99) ^ 0x84));
  LODWORD(STACK[0x2E0]) = 1840261573;
  v102 = ((v92 & 0xFFFFFFFA ^ 0x6DB029C5) + 800003649 - ((2 * (v92 & 0xFFFFFFFA ^ 0x6DB029C5)) & 0x5F5E2C82)) ^ 0x2FAF1641;
  LODWORD(STACK[0x2A0]) = v102;
  v103 = v100 - 1683851584 - ((2 * v100) & 0x3744EC00);
  v104 = *(a63 + (*(a52 + v102) ^ 0xD8));
  v105 = ((v92 & 0xFFFFFFF6 ^ 0x6DB029C9) + 1303612383 - ((2 * (v92 & 0xFFFFFFF6 ^ 0x6DB029C9)) & 0x9B6717BE)) ^ 0x4DB38BDF;
  LODWORD(STACK[0x2A8]) = v105;
  HIDWORD(v106) = v104 ^ 0x70;
  LODWORD(v106) = ~v104 << 24;
  v107 = ((((((v106 >> 31) - ((2 * (v106 >> 31)) & 4) - 126) ^ 0xFB) - ((2 * (((v106 >> 31) - ((2 * (v106 >> 31)) & 4) - 126) ^ 0xFB)) & 0xE0)) << 16) - 797966336) ^ 0xD0700000;
  v108 = *(a63 + (*(a52 + v105) ^ 0x14));
  HIDWORD(v106) = v108 ^ 0x70;
  LODWORD(v106) = ~v108 << 24;
  v109 = ((((((v106 >> 31) - ((2 * (v106 >> 31)) & 0xC4) + 98) ^ 0x70) - ((2 * (((v106 >> 31) - ((2 * (v106 >> 31)) & 0xC4) + 98) ^ 0x70)) & 0x166)) << 16) + 280166400) ^ 0x10B30000;
  v110 = (v109 + 297110588 - ((2 * v109) & 0x236A0000)) ^ 0x11B58C3C | ((v101 ^ 0xEF) - 1867951395 - ((2 * (v101 ^ 0xEF)) & 0xBBBBBBBB)) ^ 0x90A952DD;
  v111 = ((v92 & 0xFFFFFFF3 ^ 0x6DB029CC) - 1177777085 - ((2 * (v92 & 0xFFFFFFF3 ^ 0x6DB029CC)) & 0x73991886)) ^ 0xB9CC8C43;
  LODWORD(STACK[0x2B8]) = v111;
  v112 = *(a62 + (*(a52 + v111) ^ 0x2CLL));
  LODWORD(STACK[0x298]) = v92 ^ 0x6DB029C0;
  v113 = (v112 - ((2 * v112 + 64) & 0x9C) + 110) ^ 0xF4;
  v114 = (((v113 - ((2 * v113) & 0xFFFFFFF3)) << 24) - 117440512) ^ 0xF9000000;
  v115 = *(a62 + (*(a52 + (v92 ^ 0x6DB029C0u)) ^ 0x53));
  v116 = (v114 - 1009868721 - ((2 * v114) & 0x86000000)) ^ 0xC3CEA04F | ((v96 ^ 0xBD) + 2037731216 - ((2 * (v96 ^ 0xBD)) & 0x120)) ^ 0x79754F90;
  v117 = (v115 - ((2 * v115) & 0x26) - 77) ^ 0x7E;
  v118 = (((v117 - ((2 * v117) & 0xA2)) << 24) - 788529152) ^ 0xD1000000;
  v119 = (v118 + 438980857 - ((2 * v118) & 0x34000000)) ^ 0x1A2A50F9 | v103 ^ 0x9BA276C0;
  v120 = v92 & 0xFFFFFFF9 ^ 0x6DB029C6;
  LODWORD(STACK[0x290]) = v120;
  v121 = *(a64 + (*(a52 + v120) ^ 0x2BLL)) ^ 0x69;
  v122 = (((v121 - ((2 * v121) & 0xFA)) << 8) - 505316096) ^ 0xE1E17D00;
  v123 = (v122 - 1452958294 - ((2 * v122) & 0x52CB3A00)) ^ 0xA9659DAA | (v107 - 2139123439 - ((2 * v107) & 0xFE0000)) ^ 0x807F9111;
  v124 = ((v92 & 0xFFFFFFF1 ^ 0x6DB029CE) + 410154397 - ((2 * (v92 & 0xFFFFFFF1 ^ 0x6DB029CE)) & 0x30E4EB3A)) ^ 0x1872759D;
  LODWORD(STACK[0x268]) = v124;
  v125 = v123 - 1248092320 - ((2 * v123) & 0x6B373EC0);
  v126 = *(a64 + (*(a52 + v124) ^ 0x7BLL)) ^ 0x5A;
  v127 = (((v126 - ((2 * v126) & 0x1D4)) << 8) - 20977152) ^ 0xFEBFEA00;
  v128 = (v116 + 314245987 - ((2 * v116) & 0x257606C6)) ^ 0x12BB0363 | (v127 + 121837834 - ((2 * v127) & 0xE863200)) ^ 0x743190A;
  v129 = v128 + 276590065 - ((2 * v128) & 0x20F8DBE2);
  v130 = v92 & 0xFFFFFFF7 ^ 0x6DB029C8;
  LODWORD(STACK[0x280]) = v130;
  v131 = *(a62 + (*(a52 + v130) ^ 0x5ELL));
  v132 = v131 - 2 * ((v131 + 32) & 0x63 ^ v131 & 2) + 1;
  v133 = ((((v132 ^ 0x94) - ((2 * v132) & 0x96)) << 24) - 889192448) ^ 0xCB000000;
  v134 = (v133 + 1861943532 - ((2 * v133) & 0xDC000000)) ^ 0x6EFB00EC | (v110 + 645421723 - ((2 * v110) & 0x4CF0B536)) ^ 0x26785A9B;
  v135 = v92 & 0xFFFFFFF5 ^ 0x6DB029CA;
  LODWORD(STACK[0x264]) = v135;
  v136 = *(a64 + (*(a52 + v135) ^ 0xFELL)) ^ 0x7F;
  v137 = (((v136 - ((2 * v136) & 0xCCCCCCCC)) << 8) + 1163879936) ^ 0x455F6600;
  v138 = (v134 + 161339375 - ((2 * v134) & 0x133BAFDE)) ^ 0x99DD7EF | (v137 - 1770709151 - ((2 * v137) & 0x2CEA3E00)) ^ 0x96751F61;
  v139 = v138 - ((2 * v138) & 0x508E4C92) + 675751497;
  v140 = v92 & 0xFFFFFFFE ^ 0x6DB029C1;
  LODWORD(STACK[0x278]) = v140;
  v141 = *(a63 + (*(a52 + v140) ^ 0xD3));
  HIDWORD(v106) = v141 ^ 0x70;
  LODWORD(v106) = ~v141 << 24;
  v142 = ((((((v106 >> 31) - 2 * ((v106 >> 31) & 0x1F) - 97) ^ 0xC9) - ((2 * (((v106 >> 31) - 2 * ((v106 >> 31) & 0x1F) - 97) ^ 0xC9)) & 0x1A8)) << 16) - 808189952) ^ 0xCFD40000;
  v143 = (v142 - 603337927 - ((2 * v142) & 0x38120000)) ^ 0xDC09CB39 | (v119 + 581511352 - ((2 * v119) & 0x45525170)) ^ 0x22A928B8;
  v144 = ((v92 & 0xFFFFFFF8 ^ 0x6DB029C7) - 1733414344 - ((2 * (v92 & 0xFFFFFFF8 ^ 0x6DB029C7)) & 0x315C6470)) ^ 0x98AE3238;
  LODWORD(STACK[0x288]) = v144;
  v145 = *(a61 + (*(a52 + v144) ^ 0xB6)) ^ 0xEA;
  v146 = v125 ^ 0xB59B9F60 | (v145 - 1346827002 + (~(2 * v145) | 0xFFFFFFF3) + 1) ^ 0xAFB90D06;
  v147 = v92 & 0xFFFFFFFC ^ 0x6DB029C3;
  LODWORD(STACK[0x254]) = v147;
  v148 = *(a61 + (*(a52 + v147) ^ 0xAELL));
  v149 = ((v92 & 0xFFFFFFFB ^ 0x6DB029C4) - 518364308 - ((2 * (v92 & 0xFFFFFFFB ^ 0x6DB029C4)) & 0xC234C6D8)) ^ 0xE11A636C;
  LODWORD(STACK[0x260]) = v149;
  v150 = (v143 - 1803130177 - ((2 * v143) & 0x290CD57E)) ^ 0x94866ABF | ((v148 ^ 0xFA) - 1331524057 - ((2 * (v148 ^ 0xFA)) & 0x4E)) ^ 0xB0A28E27;
  v151 = *(a62 + (*(a52 + v149) ^ 0x14));
  v152 = (v151 + ((-66 - 2 * v151) | 0x51) - 8) ^ 9;
  v153 = (((v152 - ((2 * v152) & 0xFFFFFF87)) << 24) - 1023410176) ^ 0xC3000000;
  v154 = (v153 - 795478580 - ((2 * v153) & 0xA0000000)) ^ 0xD095F5CC | (v146 + 473356317 - ((2 * v146) & 0x386DB03A)) ^ 0x1C36D81D;
  v155 = v92 & 0xFFFFFFF2 ^ 0x6DB029CD;
  LODWORD(STACK[0x258]) = v155;
  v156 = *(a63 + (*(a52 + v155) ^ 0xB7));
  HIDWORD(v106) = v156 ^ 0x70;
  LODWORD(v106) = ~v156 << 24;
  v157 = ((((((v106 >> 31) - ((2 * (v106 >> 31)) & 0x34) - 102) ^ 0x6F) - ((2 * (((v106 >> 31) - ((2 * (v106 >> 31)) & 0x34) - 102) ^ 0x6F)) & 0x50)) << 16) + 52953088) ^ 0x3280000;
  v158 = (v157 - 1200260618 - ((2 * v157) & 0x70EA0000)) ^ 0xB87579F6 | v129 ^ 0x107C6DF1;
  v159 = v158 - ((2 * v158) & 0x2DA07EE2) - 1764737167;
  v160 = a56 ^ v89 ^ 0xBF510095 ^ (v154 - ((2 * v154) & 0x7FB528EC) - 1076194186);
  v161 = a8 ^ LODWORD(STACK[0x240]) ^ (v150 - ((2 * v150) & 0x5A94A33E) - 1387638369);
  v162 = v90 ^ LODWORD(STACK[0x248]) ^ v139;
  v163 = v91 ^ LODWORD(STACK[0x244]) ^ v159;
  v164 = ((a8 ^ LOWORD(STACK[0x240]) ^ (v150 - ((2 * v150) & 0xA33E) + 20895)) >> 8);
  v165 = BYTE1(v162);
  v166 = (BYTE1(v162) ^ 0x38) - ((2 * (BYTE1(v162) ^ 0x38) + 440) & 0x3B2);
  v167 = a53 ^ (v160 - ((2 * v160) & 0xDC9A006C) + 1850540086);
  v168 = *(&off_278E1E490 + (v94 ^ 0x42A4));
  v169 = *(&off_278E1E490 + (v94 ^ 0x4782)) - 4;
  LODWORD(STACK[0x250]) = v94;
  v170 = v168 - 4;
  v171 = *(&off_278E1E490 + v94 - 17120) - 12;
  v172 = *(&off_278E1E490 + (v94 ^ 0x42A8)) - 8;
  v173 = HIBYTE(v163);
  LODWORD(v168) = *&v169[4 * (BYTE1(v163) ^ 0xB8)] ^ LODWORD(STACK[0x220]) ^ *(v168 - 4 + 4 * (BYTE2(v162) ^ 0x58u)) ^ *&v171[4 * (v161 ^ 0x77)] ^ ((BYTE1(v163) ^ 0x6E) + 1745226376 + ((2 * (BYTE1(v163) ^ 0x6E) + 440) & 0x356 ^ 0xAFEBEBFF)) ^ *&v172[4 * (HIBYTE(v167) ^ 0xB3)];
  v174 = *(v170 + 4 * (BYTE2(v161) ^ 0x54u)) ^ LODWORD(STACK[0x23C]) ^ *&v172[4 * (HIBYTE(v163) ^ 0x3B)] ^ *&v171[4 * (v162 ^ 0xB3)] ^ *&v169[4 * (BYTE1(v167) ^ 0x2E)] ^ ((BYTE1(v167) ^ 0xF8) - ((2 * (BYTE1(v167) ^ 0xF8) + 1519687096) & 0x5880146E) - 635742957);
  v175 = HIBYTE(v162);
  v161 >>= 24;
  v176 = *&v169[4 * (v164 ^ 0x5D)] ^ LODWORD(STACK[0x21C]) ^ *&v172[4 * (HIBYTE(v162) ^ 0xEE)] ^ *(v170 + 4 * (BYTE2(v163) ^ 0x9Au)) ^ ((v164 ^ 0x8B) - ((2 * (v164 ^ 0x8B) + 440) & 0x1A8) - 724190288) ^ *&v171[4 * (v167 ^ 0x5E)];
  v177 = a60 ^ *&v172[4 * (v161 ^ 0xA1)] ^ *&v171[4 * (v163 ^ 0xA8)] ^ *&v169[4 * (v165 ^ 0xEE)] ^ (v166 - 161639755) ^ *(v170 + 4 * (BYTE2(v167) ^ 0x2Eu));
  v178 = v175 ^ 0x15 ^ v176;
  v179 = v161 ^ v177;
  v180 = BYTE1(v176);
  v181 = (BYTE1(v176) ^ 0x76) + 1110839134 + ((2 * (((BYTE1(v176) ^ 0x76) + 220) & 0x83 ^ (BYTE1(v176) ^ 0x76 | 0x7FFFFFFD))) ^ 0x8948005);
  v182 = HIBYTE(v176);
  v183 = *&v172[4 * (HIBYTE(v176) ^ 0x10)] ^ LODWORD(STACK[0x214]) ^ *(v170 + 4 * (BYTE2(v174) ^ 0x80u)) ^ *&v171[4 * (HIBYTE(v167) ^ v168 ^ 0x10)] ^ ((BYTE1(v177) ^ 0xD) - ((2 * (BYTE1(v177) ^ 0xD) + 440) & 0x2AE) + 1596897331) ^ *&v169[4 * (BYTE1(v177) ^ 0xDB)];
  v184 = *&v171[4 * (v179 ^ 0x80)] ^ LODWORD(STACK[0x218]) ^ *&v169[4 * (BYTE1(v174) ^ 0xE1)] ^ *(v170 + 4 * (BYTE2(v176) ^ 0x81u)) ^ *&v172[4 * (BYTE3(v168) ^ 0x4C)] ^ ((BYTE1(v174) ^ 0x37) - ((v174 >> 7) & 8) - 510785824);
  v185 = HIBYTE(v174);
  v186 = *&v171[4 * (v173 ^ 0x12 ^ v174)];
  v187 = *&v171[4 * v178] ^ LODWORD(STACK[0x210]) ^ *(v170 + 4 * (BYTE2(v177) ^ 0xB9u)) ^ *&v172[4 * (HIBYTE(v174) ^ 0x29)] ^ *&v169[4 * (BYTE1(v168) ^ 0x18)] ^ ((BYTE1(v168) ^ 0xCE) - ((2 * (BYTE1(v168) ^ 0xCE) + 56) & 0x70) - 229178604);
  v188 = *&v172[4 * (HIBYTE(v177) ^ 0x38)] ^ LODWORD(STACK[0x224]) ^ v186 ^ *&v169[4 * (v180 ^ 0xA0)] ^ *(v170 + 4 * (BYTE2(v168) ^ 0xA7u)) ^ v181;
  v189 = HIBYTE(v177) ^ 0xEF ^ (v172[4 * (HIBYTE(v177) ^ 0x38)] ^ LOBYTE(STACK[0x224]) ^ v186 ^ v169[4 * (v180 ^ 0xA0)] ^ *(v170 + 4 * (BYTE2(v168) ^ 0xA7u)) ^ v181);
  v190 = BYTE1(v188);
  v191 = (BYTE1(v188) ^ 0x4A) - ((2 * (BYTE1(v188) ^ 0x4A) + 445945272) & 0x1A1016A8);
  v192 = BYTE3(v168) ^ 0xA9 ^ v184;
  v193 = v182 ^ 0x63 ^ v183;
  v194 = HIBYTE(v188);
  LODWORD(v168) = *&v172[4 * (HIBYTE(v188) ^ 0x7A)] ^ LODWORD(STACK[0x20C]) ^ *&v171[4 * (v185 ^ 0x94 ^ v187)] ^ *&v169[4 * (BYTE1(v183) ^ 0x20)] ^ *(v170 + 4 * (BYTE2(v184) ^ 0x47u)) ^ ((BYTE1(v183) ^ 0xF6) - 1072206135 + ((2 * (((BYTE1(v183) ^ 0xF6) + 220) & 0x1ED ^ ((v183 >> 8) | 0x7FFFFFFE))) ^ 0x900403));
  v195 = HIBYTE(v184);
  v196 = *&v171[4 * v189] ^ LODWORD(STACK[0x208]) ^ *(v170 + 4 * (BYTE2(v183) ^ 0xF1u)) ^ *&v169[4 * (BYTE1(v187) ^ 0xD7)] ^ *&v172[4 * (HIBYTE(v184) ^ 0x57)] ^ ((BYTE1(v187) ^ 1) + 1853274105 + ((2 * (((BYTE1(v187) ^ 1) + 220) & 0x11D ^ (BYTE1(v187) ^ 1 | 0x7FFFFFFE))) ^ 0x2109003));
  v197 = *&v169[4 * (BYTE1(v184) ^ 0x1A)] ^ LODWORD(STACK[0x200]) ^ *(v170 + 4 * (BYTE2(v188) ^ 0xD0u)) ^ *&v172[4 * (HIBYTE(v187) ^ 0xB)] ^ ((BYTE1(v184) ^ 0xCC) - ((2 * (BYTE1(v184) ^ 0xCC) + 43292088) & 0x21495B2) + 786766261) ^ *&v171[4 * v193];
  v198 = HIBYTE(v183);
  v199 = *&v172[4 * (HIBYTE(v183) ^ 0xA0)] ^ LODWORD(STACK[0x204]) ^ *(v170 + 4 * (BYTE2(v187) ^ 0x7Du)) ^ *&v169[4 * (v190 ^ 0x9C)] ^ (v191 + 2095241776) ^ *&v171[4 * v192];
  v200 = v194 ^ 0xC2 ^ v168;
  v201 = v198 ^ 0xE2 ^ v199;
  v202 = BYTE1(v168);
  v203 = (BYTE1(v168) ^ 0x8F) - ((2 * (BYTE1(v168) ^ 0x8F) + 440) & 0x280);
  v204 = BYTE3(v168);
  v205 = *&v172[4 * (BYTE3(v168) ^ 0xC0)] ^ a88 ^ *&v169[4 * (BYTE1(v199) ^ 0x2C)] ^ *(v170 + 4 * (BYTE2(v196) ^ 0xC5u)) ^ *&v171[4 * (HIBYTE(v187) ^ 0xB4 ^ v197)] ^ ((BYTE1(v199) ^ 0xFA) - ((2 * (BYTE1(v199) ^ 0xFA) + 1519687096) & 0x4A80055E) + 319552907);
  v206 = HIBYTE(v196);
  v207 = ((BYTE1(v196) ^ 0xB9) - ((2 * (BYTE1(v196) ^ 0xB9) + 440) & 0x1E4) - 1171828786) ^ a85 ^ *&v171[4 * v201] ^ *&v172[4 * (HIBYTE(v197) ^ 0x99)] ^ *(v170 + 4 * (BYTE2(v168) ^ 0x5Eu)) ^ *&v169[4 * (BYTE1(v196) ^ 0x6F)];
  v208 = *&v172[4 * (HIBYTE(v196) ^ 0xA6)] ^ a87 ^ *&v169[4 * (BYTE1(v197) ^ 0x83)] ^ *&v171[4 * v200] ^ ((BYTE1(v197) ^ 0x55) - ((2 * (BYTE1(v197) ^ 0x55) + 440) & 0x168) - 58873968) ^ *(v170 + 4 * (BYTE2(v199) ^ 0xD1u));
  v199 >>= 24;
  v209 = *(v170 + 4 * (BYTE2(v197) ^ 0x7Du)) ^ a86 ^ (v203 - 1666343908) ^ *&v171[4 * (v195 ^ 0xD5 ^ v196)] ^ *&v169[4 * (v202 ^ 0x59)] ^ *&v172[4 * (v199 ^ 0xC2)];
  v210 = HIBYTE(v197) ^ 0x9A ^ v207;
  v211 = BYTE1(v208);
  v212 = (BYTE1(v208) ^ 0xE6) - ((2 * (BYTE1(v208) ^ 0xE6) + 440) & 0x156);
  v213 = v199 ^ 0xFA ^ v209;
  v214 = v204 ^ 0x50 ^ v205;
  v215 = HIBYTE(v209) ^ ((BYTE1(v205) ^ 0xC6) - ((2 * (BYTE1(v205) ^ 0xC6) + 440) & 0x3C0) + 1215435964) ^ *&v171[4 * (v206 ^ v208 ^ 0x1F)] ^ *(v170 + 4 * (BYTE2(v207) ^ 0x4Fu)) ^ *&v169[4 * (BYTE1(v205) ^ 0x10)] ^ *&v172[4 * (HIBYTE(v209) ^ 0x4E)];
  v216 = (v215 & 0x20 ^ 0x65ACFE7C) + 2 * (v215 & 0x20);
  v217 = ((v216 - 1705836156) & a55) - 1489591641 - ((2 * ((v216 - 1705836156) & a55)) & 0x4E6D4500) == -1489591641;
  v218 = v216 - 606659596;
  v219 = -1489954580 - v216;
  if (v217)
  {
    v219 = v218;
  }

  v220 = (v219 + a65 - ((2 * (v219 + a65) + 16419746) & 0xD2990C2) - 955118030) ^ v215 & 0xFFFFFFDF;
  v221 = *&v171[4 * v210] ^ a82 ^ *(v170 + 4 * (BYTE2(v208) ^ 0x1Eu)) ^ ((BYTE1(v209) ^ 0x8A) - ((2 * (BYTE1(v209) ^ 0x8A) + 440) & 0x180) + 727706012) ^ *&v172[4 * (HIBYTE(v205) ^ 0xE9)] ^ *&v169[4 * (BYTE1(v209) ^ 0x5C)];
  v222 = HIBYTE(v208);
  v223 = *(v170 + 4 * (BYTE2(v209) ^ 0x29u)) ^ a84 ^ *&v169[4 * (BYTE1(v207) ^ 0xF8)] ^ ((BYTE1(v207) ^ 0x2E) - ((2 * (BYTE1(v207) ^ 0x2E) + 56) & 0x30) + 1047771892) ^ *&v171[4 * v214] ^ *&v172[4 * (v222 ^ 0x82)];
  v224 = HIBYTE(v207);
  v225 = *(v170 + 4 * (BYTE2(v205) ^ 0x34u)) ^ a83 ^ *&v169[4 * (v211 ^ 0x30)] ^ (v212 - 1485289081) ^ *&v171[4 * v213] ^ *&v172[4 * (HIBYTE(v207) ^ 0x93)];
  v226 = v224 ^ 0xD0 ^ v225;
  v227 = BYTE1(v220);
  v228 = (BYTE1(v220) ^ 0xEC) - ((2 * (BYTE1(v220) ^ 0xEC) + 440) & 0xFFFFFF8F);
  v229 = *&v169[4 * (BYTE1(v225) ^ 0xB3)] ^ a80 ^ ((BYTE1(v225) ^ 0x65) - 1171102834 + ((2 * (((BYTE1(v225) ^ 0x65) + 220) & 0xB3 ^ ((v225 >> 8) | 0x7FFFFFFD))) ^ 0x18901005)) ^ *&v171[4 * (HIBYTE(v205) ^ 0xAA ^ v221)] ^ *&v172[4 * (HIBYTE(v223) ^ 0x10)] ^ *(v170 + 4 * (BYTE2(v220) ^ 0xF1u));
  v230 = HIBYTE(v220);
  v231 = *&v169[4 * (BYTE1(v221) ^ 0x82)] ^ a79 ^ *&v171[4 * (v222 ^ 0xAB ^ v223)] ^ ((BYTE1(v221) ^ 0x54) + 1896739171 + ((2 * (((BYTE1(v221) ^ 0x54) + 220) & 0x87 ^ ((v221 >> 8) | 0x7FFFFFFE))) ^ 0x2840403)) ^ *(v170 + 4 * (BYTE2(v225) ^ 0x66u)) ^ *&v172[4 * (HIBYTE(v220) ^ 0xA2)];
  v225 >>= 24;
  v232 = HIBYTE(v221);
  v233 = *(v170 + 4 * (BYTE2(v221) ^ 0x8Fu)) ^ a78 ^ ((BYTE1(v223) ^ 0x73) - ((2 * (BYTE1(v223) ^ 0x73) + 440) & 0x2E2) - 1991558579) ^ *&v172[4 * (v225 ^ 0x92)] ^ *&v169[4 * (BYTE1(v223) ^ 0xA5)] ^ *&v171[4 * (v220 ^ 0x5A)];
  v234 = *&v171[4 * v226] ^ a81 ^ *(v170 + 4 * (BYTE2(v223) ^ 0x2Eu)) ^ *&v172[4 * (HIBYTE(v221) ^ 0xD5)] ^ *&v169[4 * (v227 ^ 0x3A)] ^ (v228 - 333037917);
  v235 = HIBYTE(v223) ^ 0x6E ^ v229;
  v236 = v231 ^ v230 ^ 0x58;
  v237 = HIBYTE(v234);
  v238 = *&v172[4 * (HIBYTE(v234) ^ 0x61)] ^ a77 ^ *&v169[4 * (BYTE1(v231) ^ 0xDE)] ^ ((BYTE1(v231) ^ 8) - ((2 * (BYTE1(v231) ^ 8) + 56) & 0x30) - 1570766604) ^ *(v170 + 4 * (BYTE2(v229) ^ 0x64u)) ^ *&v171[4 * (v225 ^ 0xC8 ^ v233)];
  v239 = BYTE1(v234);
  v240 = (BYTE1(v234) ^ 0x6B) - ((2 * (BYTE1(v234) ^ 0x6B) + 1519687096) & 0x501494CE);
  v241 = ((BYTE1(v229) ^ 0xE8) - ((2 * (BYTE1(v229) ^ 0xE8) + 440) & 0x196) - 1196117593) ^ a74 ^ *&v172[4 * (HIBYTE(v233) ^ 0xE9)] ^ *&v169[4 * (BYTE1(v229) ^ 0x3E)] ^ *&v171[4 * v236] ^ *(v170 + 4 * (BYTE2(v234) ^ 0x83u));
  v229 >>= 24;
  v242 = HIBYTE(v231);
  v243 = *&v169[4 * (BYTE1(v233) ^ 0x13)] ^ a76 ^ *&v171[4 * (v232 ^ 0xEB ^ v234)] ^ ((BYTE1(v233) ^ 0xC5) + 1367249630 + ((2 * ((BYTE1(v233) ^ 0xC5) & 3 ^ ((v233 >> 8) | 0x7FFFFFFD))) ^ 0x48009005)) ^ *&v172[4 * (v229 ^ 0x19)] ^ *(v170 + 4 * (BYTE2(v231) ^ 0x8Au));
  v244 = *(v170 + 4 * (BYTE2(v233) ^ 0xB8u)) ^ a75 ^ *&v172[4 * (HIBYTE(v231) ^ 0x95)] ^ *&v171[4 * v235] ^ *&v169[4 * (v239 ^ 0xBD)] ^ (v240 + 1743374659);
  v245 = v242 ^ 0xF9 ^ v244;
  v246 = v229 ^ v243;
  v247 = HIBYTE(v238);
  v248 = *&v172[4 * (HIBYTE(v238) ^ 0xBF)] ^ a73 ^ *&v171[4 * (HIBYTE(v233) ^ 0x14 ^ v241)] ^ *(v170 + 4 * (BYTE2(v243) ^ 5u)) ^ *&v169[4 * (BYTE1(v244) ^ 0x1E)] ^ ((BYTE1(v244) ^ 0xC8) - ((v244 >> 7) & 4) - 286036258);
  v249 = HIBYTE(v243);
  v250 = *&v171[4 * (v237 ^ 0x47 ^ v238)] ^ a72 ^ *&v169[4 * (BYTE1(v241) ^ 0xFA)] ^ ((BYTE1(v241) ^ 0x2C) - ((2 * (BYTE1(v241) ^ 0x2C) + 1519687096) & 0x4010046A) + 1577311505) ^ *(v170 + 4 * (BYTE2(v244) ^ 0x9Eu)) ^ *&v172[4 * (HIBYTE(v243) ^ 0x5D)];
  v244 >>= 24;
  v251 = a59 ^ *(v170 + 4 * (BYTE2(v241) ^ 0x32u)) ^ *&v172[4 * (v244 ^ 0xB1)] ^ ((BYTE1(v238) ^ 0xEE) - ((2 * (BYTE1(v238) ^ 0xEE) + 440) & 0x134) - 1673750154) ^ *&v169[4 * (BYTE1(v238) ^ 0x38)] ^ *&v171[4 * (v246 ^ 0xFC)];
  v252 = HIBYTE(v241);
  v253 = ((BYTE1(v243) ^ 0x70) - ((2 * (BYTE1(v243) ^ 0x70) + 440) & 0x298) + 663156264) ^ a71 ^ *&v169[4 * (BYTE1(v243) ^ 0xA6)] ^ *&v171[4 * v245] ^ *(v170 + 4 * (BYTE2(v238) ^ 0x80u)) ^ *&v172[4 * (HIBYTE(v241) ^ 0xC2)];
  v254 = 2 * (v250 >> 8);
  v255 = (v254 & 0x1FC ^ 0x170) + (BYTE1(v250) ^ 0xFFFDE346);
  v256 = v255 + 138457 + (((v254 ^ 0x1C64F70) - ((2 * (v254 ^ 0x1C64F70)) & 0xB8) + 92) & 0x1AC ^ 0xFFFFFFF3);
  v257 = *&v171[4 * (v252 ^ 0xCD ^ v253)];
  v258 = (((v257 ^ 0x95869114) + 942381025) ^ 0x6FF977BF) + ((2 * ((v257 ^ 0x95869114) + 942381025)) & 0xDFF2EF7E) - 1878620094 + ((((2 * v257) ^ 0x2B0D2228) - ((2 * ((2 * v257) ^ 0x2B0D2228)) & 0x59B0C92C) + 1826120854) & 0x70572FC2 ^ 0x9FAFDB7D);
  v259 = v258 - ((2 * v258) & 0xC16A75D8);
  v260 = BYTE1(v253);
  v261 = *(v170 + 4 * (BYTE2(v253) ^ 0x38u));
  v262 = (BYTE1(v253) ^ 0x96) - ((2 * (BYTE1(v253) ^ 0x96) + 1519687096) & 0x58841326);
  v263 = *(v170 + 4 * (BYTE2(v248) ^ 0x6Fu));
  v264 = v249 ^ v250;
  v265 = HIBYTE(v253);
  v266 = HIBYTE(v248);
  v267 = *&v172[4 * (HIBYTE(v248) ^ 0xCE)];
  v268 = HIBYTE(v251);
  v269 = *&v171[4 * (v264 ^ 1)];
  v270 = *&v171[4 * (v244 ^ 0x71 ^ v251)];
  v271 = *&v171[4 * (v247 ^ 0xA3 ^ v248)];
  v272 = BYTE1(v248);
  v273 = v267 ^ a70 ^ *(v170 + 4 * (BYTE2(v250) ^ 0x27u)) ^ ((BYTE1(v251) ^ 0xBD) - ((2 * (BYTE1(v251) ^ 0xBD) + 440) & 0x3A6) - 129068881) ^ *&v169[4 * (BYTE1(v251) ^ 0x6B)] ^ (v259 - 524993812);
  v274 = *&v169[4 * v256] ^ a68 ^ (v255 + 1009451501 + ((2 * ((v255 + 1758) & 0xB0F ^ ((v250 >> 8) | 0x7FFFFFFE))) ^ 0x18940003)) ^ v263 ^ *&v172[4 * (v265 ^ 0x6E)] ^ v270;
  v275 = ((v272 ^ 0x16) - ((2 * (v272 ^ 0x16) + 440) & 0xFFFFFE0F) - 1372479517) ^ a69 ^ *&v172[4 * (HIBYTE(v251) ^ 0xD2)] ^ v261;
  v276 = v269 ^ *&v169[4 * (v272 ^ 0xC0)];
  v277 = *&v172[4 * (HIBYTE(v250) ^ 0x60)] ^ a66 ^ *&v169[4 * (v260 ^ 0x40)] ^ *(v170 + 4 * (BYTE2(v251) ^ 0xEEu)) ^ (v262 + 440468591) ^ v271;
  v278 = HIBYTE(v250) ^ 0x6471E1AD ^ v277;
  v279 = STACK[0x250];
  v280 = *(&off_278E1E490 + (LODWORD(STACK[0x250]) ^ 0x436D)) - 12;
  v281 = *&v280[4 * (BYTE1(v278) ^ 0xB9)];
  v282 = v275 ^ v276;
  v283 = v281 - ((2 * v281 + 40886674) & 0xC5F50EA);
  v284 = *(&off_278E1E490 + LODWORD(STACK[0x250]) - 16559) - 8;
  v285 = *&v284[4 * (BYTE2(v274) ^ 0xD4)];
  v286 = v285 - 854058949 + ((1697129930 - 2 * v285) | 0xA7A9BF);
  v287 = v265 ^ 0x64 ^ v274;
  v288 = *&v284[4 * (BYTE2(v282) ^ 0x21)];
  v289 = v288 - ((2 * v288 - 1697129932) & 0xB1821EE2);
  v290 = *&v284[4 * (BYTE2(v278) ^ 0xC9)];
  v291 = *&v284[4 * (BYTE2(v273) ^ 0x68)];
  v292 = v291 - ((2 * v291 - 1697129932) & 0x9DE06F8C);
  v293 = *&v280[4 * (BYTE1(v274) ^ 0xF4)];
  v294 = *&v280[4 * (BYTE1(v282) ^ 0xEC)];
  LODWORD(v284) = *&v280[4 * (BYTE1(v273) ^ 0x4D)];
  v295 = v268 ^ 0x2D ^ v282;
  v296 = *(&off_278E1E490 + LODWORD(STACK[0x250]) - 15607) - 12;
  v297 = *&v296[4 * (v278 ^ 0xF3)];
  v298 = *&v296[4 * v287];
  v299 = *&v296[4 * v295];
  v300 = *&v296[4 * (v266 ^ v273 ^ 0x7F)];
  v301 = HIBYTE(v274) ^ 0xB8;
  v302 = HIBYTE(v277) ^ 0x66;
  v303 = *(&off_278E1E490 + (LODWORD(STACK[0x250]) ^ 0x4783)) - 8;
  v304 = *&v303[4 * (HIBYTE(v282) ^ 0xD2)];
  v305 = *&v303[4 * v301];
  v306 = *&v303[4 * (HIBYTE(v273) ^ 0xC1)];
  v307 = (v289 + 640482443) ^ a58 ^ (v293 - ((2 * v293 + 309322130) & 0x3071F158) - 1586435723) ^ v300 ^ *&v303[4 * v302];
  v308 = v297 ^ a57 ^ v304 ^ v286 ^ (v284 - ((2 * v284 + 309322130) & 0x7E50CB06) - 933210548);
  v309 = a57 ^ a68 ^ (v283 + 258447678) ^ v305 ^ v299 ^ (v292 - 1671682848);
  v310 = *(&off_278E1E490 + (LODWORD(STACK[0x250]) ^ 0x46C0)) - 4;
  v311 = v310[BYTE2(v307) ^ 0xE3];
  HIDWORD(v312) = v311 ^ 0xA;
  LODWORD(v312) = ~v311 << 24;
  *(a51 + LODWORD(STACK[0x2A0])) = ((v312 >> 30) - ((2 * (v312 >> 30)) & 0x7C) - 66) ^ 0xC8;
  v313 = *(&off_278E1E490 + (v279 ^ 0x42FB)) - 12;
  *(a51 + LODWORD(STACK[0x268])) = v313[BYTE1(v309) ^ 4] ^ 0xF1;
  v314 = v310[BYTE2(v308) ^ 0x1DLL];
  HIDWORD(v312) = v314 ^ 0xA;
  LODWORD(v312) = ~v314 << 24;
  *(a51 + LODWORD(STACK[0x2A8])) = ((v312 >> 30) - ((2 * (v312 >> 30)) & 0x84) + 66) ^ 0xA1;
  v315 = v298 ^ a67 ^ (v290 - ((2 * v290 + 450353716) & 0x13A828A4) + 1463812460) ^ (v294 - ((2 * v294 + 309322130) & 0x40E178AC) + 698920223) ^ v306;
  v316 = *(&off_278E1E490 + v279 - 15955) - 8;
  *(a51 + LODWORD(STACK[0x254])) = v316[v315 ^ 0xDELL] ^ 0x38;
  *(a51 + LODWORD(STACK[0x264])) = v313[BYTE1(v308) ^ 0xD7] ^ 0xB4;
  v317 = *(&off_278E1E490 + (v279 ^ 0x46E5));
  *(a51 + LODWORD(STACK[0x280])) = *(v317 + (HIBYTE(v308) ^ 0x53)) ^ 0xEE;
  v318 = LODWORD(STACK[0x298]);
  *(a51 + v318) = *(v317 + (HIBYTE(v315) ^ 0xADLL)) ^ 0xD0;
  *(a51 + LODWORD(STACK[0x290])) = v313[BYTE1(v307) ^ 0x29] ^ 0xC3;
  *(a51 + LODWORD(STACK[0x2C0])) = v316[v308 ^ 0xCBLL] ^ 0xC2;
  v319 = v310[BYTE2(v315) ^ 0x93];
  HIDWORD(v312) = v319 ^ 0xA;
  LODWORD(v312) = ~v319 << 24;
  *(a51 + LODWORD(STACK[0x278])) = ((v312 >> 30) - ((2 * (v312 >> 30)) & 0xB8) - 36) ^ 0x1A;
  LODWORD(v310) = v310[BYTE2(v309) ^ 0x65];
  HIDWORD(v312) = v310 ^ 0xA;
  LODWORD(v312) = ~v310 << 24;
  *(a51 + LODWORD(STACK[0x258])) = ((v312 >> 30) - ((2 * (v312 >> 30)) & 0x74) - 70) ^ 0x88;
  *(a51 + LODWORD(STACK[0x2D8])) = v316[v309 ^ 0xDBLL] ^ 0x4E;
  *(a51 + LODWORD(STACK[0x2C8])) = v313[BYTE1(v315) ^ 0x51] ^ 0x23;
  *(a51 + LODWORD(STACK[0x260])) = *(v317 + (HIBYTE(v307) ^ 0x8ALL)) ^ 0x60;
  *(a51 + LODWORD(STACK[0x2B8])) = *(v317 + (HIBYTE(v309) ^ 0x5BLL)) ^ 0x32;
  *(a51 + LODWORD(STACK[0x288])) = v316[v307 ^ 0x67] ^ 4;
  return (*(STACK[0x2E8] + 8 * ((((v318 + 1840261584 - 2 * ((v318 + 16) & STACK[0x2E0] ^ v92 & 5)) ^ 0x6DB029C0u) < a54) ^ v279)))(10, 107, v318, v294, a51, v289, v305, v297, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_244762060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, unint64_t a19, unint64_t a20, unint64_t a21)
{
  v23 = STACK[0x2E8];
  STACK[0x398] = *(STACK[0x2E8] + 8 * (v21 - 16295));
  STACK[0x3A0] = STACK[0x270];
  STACK[0x3B0] = a19;
  STACK[0x3C0] = a18;
  STACK[0x3D8] = a21;
  STACK[0x3E0] = a20;
  *(v22 - 152) = &STACK[0x398];
  *(v22 - 144) = v21 - 16295 + 867706601 * ((((v22 - 160) | 0xA7F83084) - (v22 - 160) + ((v22 - 160) & 0x5807CF78)) ^ 0xA3E10AEF) + 1372744757;
  v24 = (*(v23 + 8 * ((v21 - 16295) ^ 0x5DBF)))(v22 - 160, a2, a3, a4, a5, a6, a7, a8);
  v25 = *(v22 - 160);
  LODWORD(STACK[0x394]) = v25;
  return (*(v23 + 8 * ((6980 * (v25 == v21 + 1216106721)) ^ (v21 - 8971 + 67 * ((v21 - 16295) ^ 0x44E)))))(v24);
}

uint64_t sub_244762158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  *(a49 - 0x7AEAD47767F7FCBELL) = STACK[0x2F8];
  *(a48 - 0x35189F1CFD27983ELL) = STACK[0x328];
  *(a16 - 0x6D7C2575A5BD7142) = STACK[0x350];
  *(a17 - 0x1FA32169AFA064C0) = STACK[0x35C];
  return (*(STACK[0x2E8] + 8 * (v49 + 4001)))(103782805, 3490008947, 804974449, -103782741, -19823, a6, a7, a8);
}

uint64_t sub_244762250()
{
  STACK[0x298] = 0;
  STACK[0x280] = v1;
  v2 = *(STACK[0x2E8] + 8 * (((v1 == 0x146375EC570BCC2FLL) * ((((v0 - 6085) | 0x41A0) - 7072) ^ (v0 - 2054158905) & 0x7A6FF2BF)) ^ v0));
  LODWORD(STACK[0x2E0]) = 1692377704;
  return v2();
}

uint64_t sub_244762350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v34 = STACK[0x2E8];
  STACK[0x2F0] = *(STACK[0x2E8] + 8 * a34);
  return (*(v34 + 8 * (a34 ^ 0x282D)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_2447623EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v45 = *(STACK[0x270] + 32);
  v46 = STACK[0x2E8];
  v47 = *(STACK[0x2E8] + 8 * a44);
  *(v44 - 120) = a32 + ((a44 - 381) ^ 0xBFFACF12 ^ *STACK[0x348]) + ((*STACK[0x348] << (a44 - 106)) & 0x7FF59BF8) + 1458568160;
  *(v44 - 116) = 480593869 - a32 + a44;
  *(v44 - 152) = v47 ^ a32;
  *(v44 - 128) = v45;
  *(v44 - 144) = a36;
  *(v44 - 136) = a35;
  v48 = (*(v46 + 8 * (a44 ^ 0x5E7D)))(v44 - 160, a2, a3, a4, a5, a6, a7, a8);
  return (*(v46 + 8 * (a44 ^ (7974 * (*(v44 - 160) == 1216124116)) ^ 0xC0)))(v48);
}

uint64_t sub_2447624C4()
{
  STACK[0x298] = STACK[0x310];
  LODWORD(STACK[0x2E0]) = STACK[0x33C];
  v1 = STACK[0x2E8];
  STACK[0x368] = *(STACK[0x2E8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x8EA ^ (v0 + 5930))))();
}

uint64_t sub_24476261C@<X0>(int a1@<W8>)
{
  v1 = STACK[0x270];
  STACK[0x298] = *(STACK[0x270] + 160);
  v2 = STACK[0x2E8];
  v3 = *(STACK[0x2E8] + 8 * a1);
  LODWORD(STACK[0x2E0]) = (*(v1 + 168) ^ (((a1 + 853466167) & 0xCD213ADE) - 151001625)) + ((2 * *(v1 + 168)) & 0xEDFFFFFE) + 1843372645;
  STACK[0x368] = v3;
  return (*(v2 + 8 * (a1 + 3354)))();
}

uint64_t sub_2447626E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v46 = STACK[0x2E8];
  *(v45 - 152) = *(STACK[0x2E8] + 8 * ((a45 + 981) ^ a45)) ^ a33;
  *(v45 - 144) = a33 + a45 + 1007955521;
  v47 = (*(v46 + 8 * (a45 + 22005)))(v45 - 160, a2, a3, a4, a5, a6, a7, a8);
  STACK[0x2F0] = *(v46 + 8 * a45);
  return (*(v46 + 8 * (a45 + 10228)))(v47);
}

uint64_t sub_244762764()
{
  STACK[0x298] = 0;
  v3 = STACK[0x2E8];
  v4 = *(STACK[0x2E8] + 8 * v2);
  STACK[0x280] = v1;
  v5 = *(v3 + 8 * (((v1 == 0x146375EC570BCC2FLL) * ((v0 - 1382455833) & 0x5266929F ^ 0x12AB)) ^ v0));
  STACK[0x308] = v4;
  LODWORD(STACK[0x2E0]) = 1692377708;
  return v5();
}

uint64_t sub_2447627F0@<X0>(int a1@<W8>)
{
  v4 = STACK[0x280];
  v5 = STACK[0x280] == 0x146375EC570BCC2FLL;
  LODWORD(STACK[0x288]) = a1 - ((2 * a1 + 269459390) & 0x2438EC62) - 635156976;
  LODWORD(STACK[0x2C0]) = -((189899730 * v2 + 94416066) & 0x2438EC62) - 2052533783 * v2 + 1424805010;
  v6 = v3 - ((2 * v3 + 0x38B3C9117CF078AALL) & 0x221D9CC63339B076) + 0x2D68B2EBD8151490;
  STACK[0x258] = HIWORD(v6);
  STACK[0x278] = v4 + 0x1F07A6E43F2290A0;
  LODWORD(STACK[0x290]) = a1 - 939012129;
  v7 = STACK[0x2E0];
  v8 = LODWORD(STACK[0x2E0]) - 1692377700;
  v10 = !v5 && v8 < 0xFFFFFFF6;
  LODWORD(STACK[0x2A8]) = v7 - 1517587006;
  STACK[0x2A0] = v8 + 10;
  v11 = 2 * v7 + 910211896;
  LODWORD(STACK[0x2D8]) = v7 - (v11 & 0x2438EC62) - 1388522547;
  LODWORD(STACK[0x2C8]) = 1692377704;
  LODWORD(STACK[0x264]) = ((v7 - (v11 & 0x2460974A) - 1387222719) ^ 0xCF8BA052) + 1870460926 + ((2 * (v7 - (v11 & 0x2460974A) - 1387222719)) & 0xBB77D7EE ^ 0x2060974A);
  LODWORD(STACK[0x260]) = 1692377708;
  v12 = *(STACK[0x2E8] + 8 * v1);
  LODWORD(STACK[0x254]) = HIBYTE(v6) ^ 0x91;
  LODWORD(STACK[0x250]) = (v6 >> 40) ^ 0xCE;
  LODWORD(STACK[0x24C]) = HIDWORD(v6) ^ 0x63;
  LODWORD(STACK[0x248]) = (v6 >> 24) ^ 0x19;
  LODWORD(STACK[0x244]) = (v6 >> 16) ^ 0x9C;
  LODWORD(STACK[0x240]) = (v6 >> 8) ^ 0xD8;
  LODWORD(STACK[0x23C]) = (v3 - ((2 * v3 + 2096134314) & 0x3339B076) - 669707120) ^ 0x3B;
  LODWORD(STACK[0x2B8]) = v10;
  return v12();
}

uint64_t sub_244762AB4()
{
  v1 = STACK[0x2E8];
  v2 = (*(STACK[0x2E8] + 8 * (v0 + 5586)))(32) != 0;
  return (*(v1 + 8 * ((v2 * (7 * ((v0 + 4003) ^ 0x59DB) + ((v0 + 4003) ^ 0xFFFFE465))) ^ (v0 + 4003))))();
}

uint64_t sub_244762B20()
{
  *v0 = 0x750C1ABFB0567FDBLL;
  *(v0 + 8) = 0x750C1ABFB0567FDBLL;
  *(v0 + 16) = STACK[0x2A8];
  v2 = STACK[0x2E8];
  v3 = (*(STACK[0x2E8] + 8 * (v1 + 4522)))(STACK[0x2A0]);
  *(v0 + 24) = v3;
  return (*(v2 + 8 * ((45 * ((((v1 - 29) ^ (v1 - 28)) ^ (v3 == 0)) & 1)) ^ v1)))();
}

uint64_t sub_244762CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(v8 + 24);
  v14 = __ROR8__((v13 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v15 = ((v11 + 2 * v14) & 0xB543C47627A6A004) - v14 + 0x17B21D9D30DBC47FLL;
  v16 = v15 ^ 0x1390CC6238956D6FLL;
  v15 ^= 0x5EF0CD5FE212369BuLL;
  v17 = (__ROR8__(v16, 8) + v15) ^ a3;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ a8;
  v20 = __ROR8__(v19, 8);
  v21 = v19 ^ __ROR8__(v18, 61);
  v22 = (((2 * (v20 + v21)) & 0x3EC3AD2A46AC9354) - (v20 + v21) + 0x609E296ADCA9B655) ^ 0x7789FDC1627A7622;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ a1;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ v9;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ a7;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  *(v13 + 4) = (((v30 + v29 - ((2 * (v30 + v29)) & 0x9FF91FBD96B0FA88) - 0x3003702134A782BCLL) ^ 0xA744FC26378F238CLL) >> (8 * ((v13 + 4) & 7))) ^ HIBYTE(v12) ^ 0x93;
  v31 = __ROR8__((v13 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v32 = v31 - ((v11 + 2 * v31) & 0x53F10677A11C3C64) + 0x37A483638BDF09B0;
  v33 = v32 ^ 0x1F36529D0437DCA0;
  v32 ^= 0x525653A0DEB08754uLL;
  v34 = (__ROR8__(v33, 8) + v32) ^ a3;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ a8;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (v38 + v37 - ((2 * (v38 + v37)) & 0xD9CB08B4ECE0576CLL) + 0x6CE5845A76702BB6) ^ 0x7BF250F1C8A3EBC1;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ a1;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (((2 * (v43 + v42)) & 0xD648B671C1CE70FALL) - (v43 + v42) + 0x14DBA4C71F18C782) ^ 0x244303D027A320A1;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ a7;
  *(v13 + 5) = v12 ^ (((__ROR8__(v46, 8) + (v46 ^ __ROR8__(v45, 61))) ^ a6) >> (8 * ((v13 + 5) & 7))) ^ 0xEE;
  return (*(STACK[0x2E8] + 8 * ((v10 - 16794) | 0x3024)))();
}

uint64_t sub_244762FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(v12 + 24) + v9 - 0x60F92125641679AALL;
  v16 = __ROR8__(v15 & 0xFFFFFFFFFFFFFFF8, 8);
  v17 = ((v14 + 2 * v16) & 0x52654FF3073825D0) - v16 - 0x36DEA8213EECFE67;
  v18 = __ROR8__(v17 ^ 0xE00389A0A8DA2F85, 8);
  v17 ^= 0xAD63889D725D7471;
  v19 = (((2 * (v18 + v17)) & 0x6AB7D0CE24EE43E8) - (v18 + v17) - 0x355BE867127721F5) ^ 0x471A5E4766B61801;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (((2 * (v21 + v20)) & 0xE674F2A747EA81D8) - (v21 + v20) + 0xCC586AC5C0ABF13) ^ 0x4DEDDAF47191399ALL;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x1717D4ABBED3C077;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((2 * (v26 + v25)) & 0x652AFBEC07153E02) - (v26 + v25) - 0x32957DF6038A9F02) ^ 0x21E20EB6234EB32ELL;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v13;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (0xE1A6BF51B88E2E89 - ((v31 + v30) | 0xE1A6BF51B88E2E89) + ((v31 + v30) | 0x1E5940AE4771D176)) ^ 0x4E71FBCDA0D3A4F6;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v32, 8);
  LOBYTE(v33) = (((((v34 + v33) & 0x3F6A12301298EE2BLL ^ 0x372A12000080EE21) + ((v34 + v33) ^ 0x885028F6F338005ELL) - (((v34 + v33) ^ 0x885028F6F338005ELL) & 0x3F6A12301298EE2BLL)) ^ 0xDF82493E1D77B0BDLL) >> (8 * (v15 & 7u))) ^ HIBYTE(v8);
  v35 = __ROR8__((v15 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v36 = ((a5 - v35) & 0x968887040D1C5000) + v35 + a4 - ((v35 + a4) & 0x928887040D1C5000);
  v37 = __ROR8__(v36 ^ 0x244656A2D9A59292, 8);
  v38 = *(STACK[0x2E8] + 8 * v10);
  *v15 = v33 ^ 0x12;
  v39 = v36 ^ 0x6926579F0322C966;
  v40 = (0xF1BE72C0C63F4F2 - ((v37 + (v36 ^ 0x6926579F0322C966)) | 0xF1BE72C0C63F4F2) + ((v37 + (v36 ^ 0x6926579F0322C966)) | 0xF0E418D3F39C0B0DLL)) ^ 0x7D5A510C78A2CD07;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ a8;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x1717D4ABBED3C077;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (((2 * (v46 + v45)) | 0x1FB1BCB025A9A32) - (v46 + v45) - 0xFD8DE5812D4D19) ^ 0xEC75015A5E169EC9;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ v13;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ a7;
  v52 = __ROR8__((v15 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  *(v15 + 1) = (((__ROR8__(v51, 8) + (v51 ^ __ROR8__(v50, 61))) ^ a6) >> (8 * ((v15 + 1) & 7))) ^ BYTE2(v8) ^ 0x1C;
  v53 = (v52 + a4) ^ v11;
  v54 = (__ROR8__((v52 + a4) ^ a2, 8) + v53) ^ a3;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = __ROR8__(v54, 8);
  v57 = (((2 * ((v56 + v55) ^ 0x13AC9FC9158C886CLL)) | 0x26C2470D59C93E66) - ((v56 + v55) ^ 0x13AC9FC9158C886CLL) - 0x13612386ACE49F33) ^ 0x41E5E01794F391D6;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ 0x1717D4ABBED3C077;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ a1;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = __ROR8__(v61, 8);
  v64 = (0x8A9CE68BA4EA51CCLL - ((v63 + v62) | 0x8A9CE68BA4EA51CCLL) + ((v63 + v62) | 0x756319745B15AE33)) ^ 0x45FBBE6363AE4910;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ a7;
  v67 = __ROR8__((v15 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  *(v15 + 2) = (((__ROR8__(v66, 8) + (v66 ^ __ROR8__(v65, 61))) ^ a6) >> (8 * ((v15 + 2) & 7))) ^ BYTE1(v8) ^ 0x76;
  v68 = (v67 + a4) ^ v11;
  v69 = (__ROR8__((v67 + a4) ^ a2, 8) + v68) ^ a3;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ a8;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0x1717D4ABBED3C077;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = __ROR8__(v73, 8);
  v76 = (0x20A5FD34BA01A5D6 - ((v75 + v74) | 0x20A5FD34BA01A5D6) + ((v75 + v74) | 0xDF5A02CB45FE5A29)) ^ 0x33D28E749AC589F9;
  v77 = v76 ^ __ROR8__(v74, 61);
  v78 = (__ROR8__(v76, 8) + v77) ^ v13;
  v79 = v78 ^ __ROR8__(v77, 61);
  v80 = (__ROR8__(v78, 8) + v79) ^ a7;
  *(v15 + 3) = v8 ^ 0x31 ^ (((__ROR8__(v80, 8) + (v80 ^ __ROR8__(v79, 61))) ^ a6) >> (8 * ((v15 + 3) & 7)));
  return v38();
}

uint64_t sub_24476387C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v5 - 1);
  v7 = (v6 | ((v6 < 0x4D38E3F5) << 32)) + 0x8E1DB1F6CAB5108;
  v8 = v7 + v4 - 0x8E1DB1FB9E434F3;
  v9 = __ROR8__(v8 & 0xFFFFFFFFFFFFFFF8, 8);
  v10 = -2 - (((a1 - v9) | 0x4D40EBB8E606437CLL) + ((v9 + 0x9AC0027BB50EB7ELL) | 0xB2BF144719F9BC83));
  v11 = v10 ^ 0xFF8E3A1E32BF81EELL;
  v10 ^= 0xB2EE3B23E838DA1ALL;
  v12 = __ROR8__(v11, 8);
  v13 = (v12 + v10 - ((2 * (v12 + v10)) & 0x53FCDAE653451284) + 0x29FE6D7329A28942) ^ 0xA44024ACA29C4F48;
  v14 = v13 ^ __ROR8__(v10, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ a3;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x1717D4ABBED3C077;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = __ROR8__((0x6E7EF7C81B29114 - ((v19 + v18) | 0x6E7EF7C81B29114) + ((v19 + v18) | 0xF91810837E4D6EEBLL)) ^ 0x15909C3CA176BD3BLL, 8);
  v21 = (0x6E7EF7C81B29114 - ((v19 + v18) | 0x6E7EF7C81B29114) + ((v19 + v18) | 0xF91810837E4D6EEBLL)) ^ 0x15909C3CA176BD3BLL ^ __ROR8__(v18, 61);
  v22 = (((2 * (v20 + v21)) & 0x2ABDFA66D1BC8650) - (v20 + v21) + 0x6AA102CC9721BCD7) ^ 0x5A39A5DBAF9A5BF4;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (0x438BA9E120534034 - ((v24 + v23) | 0x438BA9E120534034) + ((v24 + v23) | 0xBC74561EDFACBFCBLL)) ^ 0xEC5CED7D380ECA4BLL;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = __ROR8__(v25, 8);
  *v8 = (((((2 * (v27 + v26)) & 0x45021E605BC493ELL) - (v27 + v26) - 0x22810F302DE24A0) ^ 0x956F9CF401F685A8) >> (8 * ((v6 + 8 + v4 + 13) & 7))) ^ *((v3 + 3651) + STACK[0x298] + v7 - 0x8E1DB1FB9E478F0);
  return (*(STACK[0x2E8] + 8 * ((102 * (v6 != 1295574005)) ^ v3)))();
}

uint64_t sub_244763BC8()
{
  v2 = *(v1 + 24);
  v3 = __ROR8__((v2 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v4 = ((0x1653FFD844AF1481 - v3) & 0x130468B0ADC0E86ELL) + v3 - 0x7653FFD844AF1482 - ((v3 - 0x7653FFD844AF1482) & 0x130468B0ADC0E86ELL);
  v5 = __ROR8__(v4 ^ 0xA1CAB91679792AFCLL, 8);
  v4 ^= 0xECAAB82BA3FE7108;
  v6 = __ROR8__(((((v5 + v4) << (((v0 - 127) | 0x32) ^ 0xF2u)) & 0x8FCBB528808EB37CLL) - (v5 + v4) + 0x381A256BBFB8A641) ^ 0xB5A46CB43486604BLL, 8);
  v7 = ((((v5 + v4) << (((v0 - 127) | 0x32) ^ 0xF2u)) & 0x8FCBB528808EB37CLL) - (v5 + v4) + 0x381A256BBFB8A641) ^ 0xB5A46CB43486604BLL ^ __ROR8__(v4, 61);
  v8 = (v6 + v7 - ((2 * (v6 + v7)) & 0x54FF189EF0F80B50) + 0x2A7F8C4F787C05A8) ^ 0x6B57D01755E78321;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0x1717D4ABBED3C077;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (((2 * (v12 + v11)) & 0x15C8C1EBA79D52F6) - (v12 + v11) + 0x751B9F0A2C315684) ^ 0x999313B5F30A8554;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = __ROR8__(v13, 8);
  v16 = __ROR8__((v2 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v17 = ((0x7653FFD844AF1481 - v16) & 0x70831D5BAED8CA38) + v16 - 0x7653FFD844AF1482 - ((v16 - 0x7653FFD844AF1482) & 0x70831D5BAED8CA38);
  v18 = __ROR8__(v17 ^ 0xC24DCCFD7A6108AALL, 8);
  v17 ^= 0x8F2DCDC0A0E6535ELL;
  v19 = (v15 + v14 - ((2 * (v15 + v14)) & 0x596CDF2F575C1AE0) - 0x534990685451F290) ^ 0x9C2EC8809315EA53;
  v20 = v19 ^ __ROR8__(v14, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x5028BB63E7A27580;
  v22 = (((2 * (v18 + v17)) & 0x6E525F98C78DC348) - (v18 + v17) - 0x37292FCC63C6E1A5) ^ 0x456899EC1707D851;
  v23 = v22 ^ __ROR8__(v17, 61);
  v24 = __ROR8__(v22, 8);
  v25 = __ROR8__(v21, 8) + (v21 ^ __ROR8__(v20, 61));
  v26 = (v24 + v23 - ((2 * (v24 + v23)) & 0xC56FF7F50AB548DALL) - 0x1D4804057AA55B93) ^ 0xA39FA7A2A8C122E4;
  v27 = v26 ^ __ROR8__(v23, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x1717D4ABBED3C077;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (v25 ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v2 + 10) & 7u));
  v31 = (__ROR8__(v28, 8) + v29) ^ 0xEC888CBFDF3BD3D0;
  v32 = v31 ^ __ROR8__(v29, 61);
  v2[10] = v30 ^ LODWORD(STACK[0x254]);
  v33 = __ROR8__(v31, 8);
  v34 = (((2 * (v33 + v32)) | 0x7A6D1720E44E8DA0) - (v33 + v32) + 0x42C9746F8DD8B930) ^ 0x8DAE2C874A9CA1F3;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = __ROR8__(v34, 8);
  v37 = ((__ROR8__((((2 * (v36 + v35)) & 0xB9A93452FE95BBA4) - (v36 + v35) - 0x5CD49A297F4ADDD3) ^ 0xF303DEB5671757ADLL, 8) + ((((2 * (v36 + v35)) & 0xB9A93452FE95BBA4) - (v36 + v35) - 0x5CD49A297F4ADDD3) ^ 0xF303DEB5671757ADLL ^ __ROR8__(v35, 61))) ^ 0x68B873F8FCD75EC8) >> (8 * ((v2 + 11) & 7u));
  v38 = __ROR8__((v2 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v39 = ((2 * (v38 - 0x7653FFD844AF1482)) | 0x45442B74ECC86264) - (v38 - 0x7653FFD844AF1482) - 0x22A215BA76643132;
  v40 = v39 ^ 0x906CC41CA2DDF3A0;
  v39 ^= 0xDD0CC521785AA854;
  v41 = (__ROR8__(v40, 8) + v39) ^ 0x8DBE49DF8B3EC60ALL;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (v43 + v42 - ((2 * (v43 + v42)) & 0x621F3207827676ACLL) + 0x310F9903C13B3B56) ^ 0x7027C55BECA0BDDFLL;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (((v46 + v45) & 0xF2F70C921EAF6767 ^ 0x129204900E202063) + ((v46 + v45) & 0xD08F36DE1509898 ^ 0x8536880509889) - 1) ^ 0x58D835330A3789CLL;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (0xF8617D17858604C8 - ((v49 + v48) | 0xF8617D17858604C8) + ((v49 + v48) | 0x79E82E87A79FB37)) ^ 0xEB160E57A54228E7;
  v51 = v50 ^ __ROR8__(v48, 61);
  v2[11] = v37 ^ STACK[0x258] ^ 0xE;
  v52 = __ROR8__(v50, 8);
  v53 = __ROR8__((((2 * (v52 + v51)) | 0x595BEEF0A4B15B5ELL) - (v52 + v51) + 0x53520887ADA75251) ^ 0x9C35506F6AE34A8CLL, 8);
  v54 = (((2 * (v52 + v51)) | 0x595BEEF0A4B15B5ELL) - (v52 + v51) + 0x53520887ADA75251) ^ 0x9C35506F6AE34A8CLL ^ __ROR8__(v51, 61);
  v55 = (((2 * (v53 + v54)) | 0x6A5ED517B9BA5572) - (v53 + v54) - 0x352F6A8BDCDD2AB9) ^ 0x6507D1E83B7F5F39;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = __ROR8__(v55, 8);
  v58 = ((0xA05094E96C297DA5 - ((v57 + v56) | 0xA05094E96C297DA5) + ((v57 + v56) | 0x5FAF6B1693D6825ALL)) ^ 0x371718EE6F01DC92) >> (8 * ((v2 + 12) & 7u));
  v59 = __ROR8__((v2 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v60 = ((2 * (v59 - 0x7653FFD844AF1482)) | 0x726974BEE01D68F0) - (v59 - 0x7653FFD844AF1482) - 0x3934BA5F700EB478;
  v61 = __ROR8__(v60 ^ 0x8BFA6BF9A4B776EALL, 8);
  v60 ^= 0xC69A6AC47E302D1ELL;
  v62 = (v61 + v60) ^ 0x8DBE49DF8B3EC60ALL;
  v63 = v62 ^ __ROR8__(v60, 61);
  v2[12] = v58 ^ LODWORD(STACK[0x250]);
  v64 = (__ROR8__(v62, 8) + v63) ^ 0x41285C582D9B8689;
  v65 = v64 ^ __ROR8__(v63, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ 0x1717D4ABBED3C077;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0xEC888CBFDF3BD3D0;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0x3098A71738BBE723;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ 0x5028BB63E7A27580;
  v2[13] = (((__ROR8__(v72, 8) + (v72 ^ __ROR8__(v71, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v2 + 13) & 7u))) ^ LODWORD(STACK[0x24C]);
  v73 = __ROR8__((v2 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v74 = ((0x7653FFD844AF1481 - v73) & 0xFE542F78DA5444B9) + v73 - 0x7653FFD844AF1482 - ((v73 - 0x7653FFD844AF1482) & 0xFA542F78DA5444B9);
  v75 = v74 ^ 0x4C9AFEDE0EED862BLL;
  v74 ^= 0x1FAFFE3D46ADDDFuLL;
  v76 = (__ROR8__(v75, 8) + v74) ^ 0x8DBE49DF8B3EC60ALL;
  v77 = v76 ^ __ROR8__(v74, 61);
  v78 = __ROR8__(v76, 8);
  v79 = __ROR8__((((v78 + v77) & 0x23EC8C234378AF19 ^ 0x3C8000341608D11) + ((v78 + v77) & 0xDC1373DCBC8750E6 ^ 0xDC006048288600E1) - 1) ^ 0x9EE03C13447D0B78, 8);
  v80 = (((v78 + v77) & 0x23EC8C234378AF19 ^ 0x3C8000341608D11) + ((v78 + v77) & 0xDC1373DCBC8750E6 ^ 0xDC006048288600E1) - 1) ^ 0x9EE03C13447D0B78 ^ __ROR8__(v77, 61);
  v81 = (v79 + v80) ^ 0x1717D4ABBED3C077;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = __ROR8__(v81, 8);
  v84 = (((2 * (v83 + v82)) | 0xEBEEBD579C80540CLL) - (v83 + v82) + 0xA08A15431BFD5FALL) ^ 0x197FD214117BF9D6;
  v85 = v84 ^ __ROR8__(v82, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ 0x3098A71738BBE723;
  v87 = __ROR8__(v86, 8);
  v88 = v86 ^ __ROR8__(v85, 61);
  v89 = (v87 + v88 - ((2 * (v87 + v88)) & 0x1D2A56B20491C28) + 0xE952B590248E14) ^ 0x50C1E9D67786FB94;
  v90 = __ROR8__((v2 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v2[14] = (((__ROR8__(v89, 8) + (v89 ^ __ROR8__(v88, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v2 + 14) & 7u))) ^ LODWORD(STACK[0x248]);
  v91 = ((v90 - 0x7653FFD844AF1482) | 0x3482ED2F4BE36F82) - ((v90 - 0x7653FFD844AF1482) | 0xCB7D12D0B41C907DLL) - 0x3482ED2F4BE36F83;
  v92 = v91 ^ 0x864C3C899F5AAD10;
  v91 ^= 0xCB2C3DB445DDF6E4;
  v93 = (__ROR8__(v92, 8) + v91) ^ 0x8DBE49DF8B3EC60ALL;
  v94 = v93 ^ __ROR8__(v91, 61);
  v95 = (__ROR8__(v93, 8) + v94) ^ 0x41285C582D9B8689;
  v96 = v95 ^ __ROR8__(v94, 61);
  v97 = (__ROR8__(v95, 8) + v96) ^ 0x1717D4ABBED3C077;
  v98 = __ROR8__(v97, 8);
  v99 = v97 ^ __ROR8__(v96, 61);
  v100 = (((2 * (v98 + v99)) | 0x421E3E46FF8178FELL) - (v98 + v99) + 0x5EF0E0DC803F4381) ^ 0x4D87939CA0FB6FAFLL;
  v101 = v100 ^ __ROR8__(v99, 61);
  v102 = (__ROR8__(v100, 8) + v101) ^ 0x3098A71738BBE723;
  v103 = v102 ^ __ROR8__(v101, 61);
  v104 = (__ROR8__(v102, 8) + v103) ^ 0x5028BB63E7A27580;
  v105 = __ROR8__(v104, 8);
  v106 = __ROR8__(v103, 61);
  v2[15] = (((0x3FC69902C3AF1B5ALL - ((v105 + (v104 ^ v106)) | 0x3FC69902C3AF1B5ALL) + ((v105 + (v104 ^ v106)) | 0xC03966FD3C50E4A5)) ^ 0xA8811505C087BA6DLL) >> (8 * ((v2 + 15) & 7u))) ^ LODWORD(STACK[0x244]);
  v107 = __ROR8__((v2 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v108 = ((2 * (v107 - 0x7653FFD844AF1482)) | 0x75D79D827AEEC060) - (v107 - 0x7653FFD844AF1482) + 0x4514313EC2889FD0;
  v109 = v108 ^ 0x8251F67E9CEA2A2;
  v108 ^= 0x45451E5A3349F956uLL;
  v110 = (__ROR8__(v109, 8) + v108) ^ 0x8DBE49DF8B3EC60ALL;
  v111 = v110 ^ __ROR8__(v108, 61);
  v112 = (__ROR8__(v110, 8) + v111) ^ 0x41285C582D9B8689;
  v113 = v112 ^ __ROR8__(v111, 61);
  v114 = (__ROR8__(v112, 8) + v113) ^ 0x1717D4ABBED3C077;
  v115 = v114 ^ __ROR8__(v113, 61);
  v116 = (__ROR8__(v114, 8) + v115) ^ 0xEC888CBFDF3BD3D0;
  v117 = v116 ^ __ROR8__(v115, 61);
  v118 = (__ROR8__(v116, 8) + v117) ^ 0x3098A71738BBE723;
  v119 = v118 ^ __ROR8__(v117, 61);
  v120 = (__ROR8__(v118, 8) + v119) ^ 0x5028BB63E7A27580;
  v121 = v120 ^ __ROR8__(v119, 61);
  v122 = __ROR8__(v120, 8);
  LOBYTE(v103) = (((0x2F7515BD0D2013E4 - ((v122 + v121) | 0x2F7515BD0D2013E4) + ((v122 + v121) | 0xD08AEA42F2DFEC1BLL)) ^ 0xB83299BA0E08B2D3) >> (8 * ((v2 + 16) & 7u))) ^ LODWORD(STACK[0x240]);
  v123 = __ROR8__((v2 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v2[16] = v103;
  v124 = ((2 * v123 + 0x1358004F76A1D6FCLL) & 0xF72D73938192B118) - v123 - 0x942B9F17C1A440BLL;
  v125 = v124 ^ 0x32A79790EB8F65E1;
  v124 ^= 0x7FC796AD31083E15uLL;
  v126 = (__ROR8__(v125, 8) + v124) ^ 0x8DBE49DF8B3EC60ALL;
  v127 = v126 ^ __ROR8__(v124, 61);
  v128 = (__ROR8__(v126, 8) + v127) ^ 0x41285C582D9B8689;
  v129 = v128 ^ __ROR8__(v127, 61);
  v130 = (__ROR8__(v128, 8) + v129) ^ 0x1717D4ABBED3C077;
  v131 = v130 ^ __ROR8__(v129, 61);
  v132 = (__ROR8__(v130, 8) + v131) ^ 0xEC888CBFDF3BD3D0;
  v133 = v132 ^ __ROR8__(v131, 61);
  v134 = (__ROR8__(v132, 8) + v133) ^ 0x3098A71738BBE723;
  v135 = v134 ^ __ROR8__(v133, 61);
  v136 = (__ROR8__(v134, 8) + v135) ^ 0x5028BB63E7A27580;
  v2[17] = (((__ROR8__(v136, 8) + (v136 ^ __ROR8__(v135, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v2 + 17) & 7u))) ^ LODWORD(STACK[0x23C]);
  return (*(STACK[0x2E8] + 8 * v0))();
}

uint64_t sub_24476498C()
{
  v2 = STACK[0x2E8];
  v3 = (*(STACK[0x2E8] + 8 * (v1 + 4755)))();
  *(v0 + 24) = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_244764A04()
{
  v2 = STACK[0x2E8];
  v3 = (*(STACK[0x2E8] + 8 * (v1 + 21750)))(v0);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_244764C80()
{
  v4 = *(v3 - 0x750C1ABFB0567FC3);
  v5 = __ROR8__(v4 & (((v0 - 1474971333) & 0x57EA2BFF) - 11243), 8) + (((v0 - 17896) | 0x90Bu) ^ 0x89AC0027BB50E2B5);
  v6 = v5 ^ 0xB2CED1A6D4B9C292;
  v5 ^= 0xFFAED09B0E3E9966;
  v7 = __ROR8__(v6, 8);
  v8 = (0x35499D6888D533D0 - ((v7 + v5) | 0x35499D6888D533D0) + ((v7 + v5) | 0xCAB66297772ACC2FLL)) ^ 0x47082B48FC140A25;
  v9 = v8 ^ __ROR8__(v5, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0x41285C582D9B8689;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0x1717D4ABBED3C077;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (((2 * (v14 + v13)) & 0xCAF1EC7A4A3B3B4ELL) - (v14 + v13) + 0x1A8709C2DAE26258) ^ 0xF60F857D05D9B188;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((2 * (v17 + v16)) & 0xA592141D35C12AB4) - (v17 + v16) - 0x52C90A0E9AE0955BLL) ^ 0x9DAE52E65DA48D86;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ v2;
  v21 = __ROR8__((v4 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v22 = v21 - ((2 * v21 + 0x1358004F76A1D6FCLL) & 0xF20E7F6DFB683C14) - 0x7D4CC02146FAF678;
  v23 = v22 ^ 0x4BC9EE10290DDC98;
  v22 ^= 0x6A9EF2DF38A876CuLL;
  v24 = (__ROR8__(v23, 8) + v22) ^ 0x8DBE49DF8B3EC60ALL;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((2 * (v26 + v25)) | 0x1D2A79C6F28899D4) - (v26 + v25) + 0x716AC31C86BBB316) ^ 0xCFBD60BB54DFCA63;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  v30 = __ROR8__((((2 * ((v29 + v28) ^ 0x26BA9FA4E389EDEFLL)) | 0x860F113DCBD1E372) - ((v29 + v28) ^ 0x26BA9FA4E389EDEFLL) + 0x3CF877611A170E47) ^ 0xF2AAC391B8B2DC21, 8);
  v31 = (((2 * ((v29 + v28) ^ 0x26BA9FA4E389EDEFLL)) | 0x860F113DCBD1E372) - ((v29 + v28) ^ 0x26BA9FA4E389EDEFLL) + 0x3CF877611A170E47) ^ 0xF2AAC391B8B2DC21 ^ __ROR8__(v28, 61);
  v32 = (v30 + v31) ^ 0xEC888CBFDF3BD3D0;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x3098A71738BBE723;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (((((__ROR8__(v20, 8) + (v20 ^ __ROR8__(v19, 61))) ^ v1) >> (8 * (v4 & 7u))) ^ *v4) << 24) | (((((__ROR8__((((2 * (v36 + v35)) | 0x8CFC76BC64A22DD0) - (v36 + v35) + 0x3981C4A1CDAEE918) ^ 0x9656803DD5F36368, 8) + ((((2 * (v36 + v35)) | 0x8CFC76BC64A22DD0) - (v36 + v35) + 0x3981C4A1CDAEE918) ^ 0x9656803DD5F36368 ^ __ROR8__(v35, 61))) ^ v1) >> (8 * ((v4 + 1) & 7))) ^ *(v4 + 1)) << 16);
  v38 = __ROR8__((v4 + 2) & 0xFFFFFFFFFFFFFFF8, 8) - 0x7653FFD844AF1482;
  v39 = __ROR8__(v38 ^ 0xB2CED1A6D4B9C292, 8);
  v38 ^= 0xFFAED09B0E3E9966;
  v40 = (v39 + v38) ^ 0x8DBE49DF8B3EC60ALL;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0x41285C582D9B8689;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x1717D4ABBED3C077;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (v46 + v45 - ((2 * (v46 + v45)) & 0x335B37608487439ELL) - 0x6652644FBDBC5E31) ^ 0x7525170F9D78721FLL;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (0x87FED870A05565F9 - ((v49 + v48) | 0x87FED870A05565F9) + ((v49 + v48) | 0x7801278F5FAA9A06)) ^ 0x4899809867117D25;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ v2;
  v53 = v37 | (((((__ROR8__(v52, 8) + (v52 ^ __ROR8__(v51, 61))) ^ v1) >> (8 * ((v4 + 2) & 7))) ^ *(v4 + 2)) << 8);
  v54 = *(v4 + 3);
  v4 += 3;
  v55 = __ROR8__(v4 & 0xFFFFFFFFFFFFFFF8, 8);
  v56 = v55 - ((2 * v55 + 0x1358004F76A1D6FCLL) & 0x742C57E06AE528E8) + 0x47C22C17F0C37FF2;
  v57 = v56 ^ 0xCD8FA56E1CB56E6;
  v56 ^= 0x41B8FB6B3B4C0D12uLL;
  v58 = __ROR8__(v57, 8);
  v59 = (v58 + v56 - ((2 * (v58 + v56)) & 0xD8E04A55F568E668) + 0x6C70252AFAB47334) ^ 0xE1CE6CF5718AB53ELL;
  v60 = v59 ^ __ROR8__(v56, 61);
  v61 = __ROR8__(v59, 8);
  v62 = (((2 * (v61 + v60)) | 0x713007E3D4BB777ELL) - (v61 + v60) + 0x4767FC0E15A24441) ^ 0xF9B05FA9C7C63D36;
  v63 = v62 ^ __ROR8__(v60, 61);
  v64 = __ROR8__(v62, 8);
  v65 = (v64 + v63 - ((2 * (v64 + v63)) & 0x999F361F413571E6) + 0x4CCF9B0FA09AB8F3) ^ 0x5BD84FA41E497884;
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0xEC888CBFDF3BD3D0;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ 0x3098A71738BBE723;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = __ROR8__(v69, 8);
  v72 = (((2 * (v71 + v70)) | 0x9286D3CDBB818024) - (v71 + v70) - 0x494369E6DDC0C012) ^ 0x196BD2853A62B592;
  LODWORD(v4) = (((__ROR8__(v72, 8) + (v72 ^ __ROR8__(v70, 61))) ^ v1) >> (8 * (v4 & 7u))) ^ v54;
  return (*(STACK[0x2E8] + 8 * ((106 * ((((v53 | v4) + 237377513 - 2 * ((v53 | v4) & 0xE2617EB ^ v4 & 2)) ^ LODWORD(STACK[0x290])) == 237377513)) ^ v0)))();
}

uint64_t sub_244765464()
{
  v3 = v0 ^ 0x4F7C;
  v4 = STACK[0x268];
  *(v2 + v1) = STACK[0x268];
  *(v2 - 0x146375EC570BCC2FLL) = v4;
  return (*(STACK[0x2E8] + 8 * v3))();
}

uint64_t sub_2447654B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = STACK[0x268];
  *(v4 + a3) = STACK[0x268];
  *(v7 + 8) = *(v6 + v5);
  *(v6 + v5) = v8;
  return (*(STACK[0x2E8] + 8 * v3))(a1, a2);
}

uint64_t sub_2447654EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v5 - 0x750C1ABFB0567FD3);
  v4[1] = v6;
  *v4 = *(v5 + a3);
  return (*(STACK[0x2E8] + 8 * (((v6 == 0x750C1ABFB0567FDBLL) * (v3 + 55 + (v3 ^ 0x50A8) - 24476)) ^ v3)))(a1, a2);
}

uint64_t sub_244765754()
{
  v2 = STACK[0x2E8];
  v3 = (*(STACK[0x2E8] + 8 * (v0 + 20991)))();
  *(v1 - 0x750C1ABFB0567FC3) = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_2447657EC()
{
  v2 = STACK[0x2E8];
  v3 = (*(STACK[0x2E8] + 8 * (v0 ^ 0x1A33)))(v1 - 0x750C1ABFB0567FDBLL);
  return (*(v2 + 8 * (v0 - 9771)))(v3);
}

uint64_t sub_2447658D0@<X0>(int a1@<W8>)
{
  v1 = STACK[0x2E8];
  STACK[0x2F0] = *(STACK[0x2E8] + 8 * a1);
  return (*(v1 + 8 * (a1 + 10274)))();
}

uint64_t sub_244765970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, unint64_t a46)
{
  v46 = STACK[0x228];
  STACK[0x348] = a46;
  v47 = STACK[0x2E8];
  STACK[0x2F0] = *(STACK[0x2E8] + 8 * v46);
  return (*(v47 + 8 * (v46 ^ 0x2818)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_244765A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  STACK[0x298] = STACK[0x300];
  LODWORD(STACK[0x2E0]) = STACK[0x32C];
  v43 = STACK[0x2E8];
  STACK[0x368] = *(STACK[0x2E8] + 8 * a43);
  return (*(v43 + 8 * (((a43 + 5914) ^ 0x1706) + a43)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_244765AB4()
{
  v1 = STACK[0x2E8];
  v2 = (*(STACK[0x2E8] + 8 * (v0 ^ 0x59A4)))(&STACK[0x318]);
  return (*(v1 + 8 * ((52526 * ((v0 + 1178604265) > 0xE11E2EED)) ^ (v0 + 16682))))(v2);
}

uint64_t sub_244765BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, int a13)
{
  v13 = STACK[0x2E8];
  STACK[0x368] = *(STACK[0x2E8] + 8 * a13);
  v14 = *(v13 + 8 * (a13 ^ 0x8FB ^ (a13 + 5913)));
  LODWORD(STACK[0x2E0]) = 1692377732;
  STACK[0x298] = a11;
  return v14(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_244765C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  STACK[0x298] = *(STACK[0x270] + 112);
  v13 = STACK[0x2E8];
  STACK[0x368] = *(STACK[0x2E8] + 8 * a13);
  v14 = *(v13 + 8 * (a13 + ((8 * a13) ^ 0xF40) - 3239));
  LODWORD(STACK[0x2E0]) = 1692377732;
  return v14(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_244765D90@<X0>(int a1@<W8>)
{
  v3 = a1 + 574046740 + ((v2 + 1275645772) & 0xB3F747F3) - 10396;
  v4 = -1588465811 - *(v1 - 0x750C1ABFB0567FCBLL);
  v5 = v3 < 0x96E6D752;
  v6 = v3 > v4;
  if (v4 < 0x96E6D752 != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0x2E8] + 8 * ((444 * !v6) ^ v2)))();
}

uint64_t sub_244765ED4@<X0>(int a1@<W8>)
{
  v2 = 16 - ((-15 * (v1 ^ 0xD5) + a1) & 0xFu);
  STACK[0x2B8] = v2;
  return (*(STACK[0x2E8] + 8 * (v1 ^ 0xFFFFDE98 ^ (5772 * ((v2 + (a1 - 1957657063) - v1) >> 63)))))();
}

uint64_t sub_244765F40@<X0>(int a1@<W8>)
{
  v3 = v1 ^ 0xFFFFFB5D;
  v4 = a1 - v2;
  v5 = STACK[0x2E8];
  v6 = *(STACK[0x2E8] + 8 * (v1 ^ 0xFFFFA633));
  LODWORD(STACK[0x2A0]) = v2;
  v7 = v6((v4 - 1957657037));
  STACK[0x2A8] = v7;
  return (*(v5 + 8 * ((((v7 != 0) << 7) | ((v7 != 0) << 8)) ^ v3)))();
}

uint64_t sub_244765FB0(uint64_t a1)
{
  LODWORD(STACK[0x298]) = v1;
  v4 = (v2 - 1163) | 0x1413;
  v5 = *(v3 - 0x146375EC570BCC2FLL) == 0x750C1ABFB0567FDBLL;
  LODWORD(STACK[0x290]) = v4;
  return (*(STACK[0x2E8] + 8 * ((v5 * (v4 - 20354 + 636 * (v4 ^ 0x142B))) ^ v4)))(a1, 1627698072, 427923614);
}

uint64_t sub_244766080(uint64_t a1, uint64_t a2, int a3)
{
  v4 = STACK[0x2A8];
  *(((2 * (a3 - 427923614)) & 0xB79FDFEE) + ((v3 - 15128) ^ (a3 - 427923614) ^ 0x3E777FFF5BCFEF7FLL) + STACK[0x2A8] - 0x3E777FFF5BCFEFF7) = 0;
  *(((2 * (a3 - 427923610)) & 0xED7FFF6CLL) + ((a3 - 427923610) ^ 0xFC78466D76BFFFB6) + v4 + 0x387B9928940004ALL) = -9392;
  v5 = ((32 - 2 * LOBYTE(STACK[0x2A0])) & 0xE3) + LODWORD(STACK[0x2A0]);
  v6 = ((2 * (a3 - 427923608)) & 0xFFBEFE72) + ((a3 - 427923608) ^ 0xFE77FFFF7FDF7F39) + v4 + 0x1880000802080C7;
  *v6 = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = (-31 - v5) ^ 0xD1;
  return (*(STACK[0x2E8] + 8 * (v3 ^ (21 * ((STACK[0x2B8] ^ 0xD755FBFB6FFF16BFLL) + 2 * STACK[0x2B8] != 0xD755FBFB6FFF16BFLL)))))(103782805, 3490008947, 804974449, -103782741, -19823, 2323877919, 1971074248, 0xE5B58399ABB77380);
}

uint64_t sub_244766254@<X0>(int a1@<W5>, unsigned int a2@<W6>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v10 = v5 < v9;
  *(v6 + v4 + a3) = 0;
  if (v10 == v6 + a4 < v9 + ((v7 + a1) & a2) - 136)
  {
    v10 = v6 + a4 < v5;
  }

  return (*(STACK[0x2E8] + 8 * ((v10 * v8) | v7)))();
}

uint64_t sub_2447662B0()
{
  v1 = LODWORD(STACK[0x298]) + LODWORD(STACK[0x290]) - 233133634;
  STACK[0x330] = v0;
  LODWORD(STACK[0x340]) = v1;
  return (*(STACK[0x2E8] + 33080))();
}

uint64_t sub_244766368(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  STACK[0x2E0] = ((v5 - 10770) | 0x411u) + 16098;
  v6 = *(a4 - 0x750C1ABFB0567FCBLL) - ((2 * *(a4 - 0x750C1ABFB0567FCBLL) + 1797902280) & 0x6EB399F4) + 753841374;
  return (*(STACK[0x2E8] + 8 * ((102 * (v4 + (v6 ^ 0x5C267F05) + ((v6 << (((v5 - 18) | 0x11) - 16)) & 0xD6FF67FE ^ 0x46B301F4) + 1 != a2)) ^ v5)))();
}

uint64_t sub_24476641C(uint64_t a1, uint64_t a2, int a3, unint64_t a4)
{
  STACK[0x2C0] = a4;
  LODWORD(STACK[0x2C8]) = a3;
  v5 = *(STACK[0x2E8] + 8 * v4);
  STACK[0x2D8] = ((a3 - 427924897 + (v4 ^ 0x12u)) ^ 0x6FDBF705DF9DF995) + 0x7E75FEABCEDC0255 + ((2 * (a3 - 427924897 + (v4 ^ 0x12u))) & 0x1BF3BF32ALL);
  STACK[0x2E0] = (v4 ^ 0x12u) + 16112;
  return v5();
}

uint64_t sub_244766600@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v24 = (STACK[0x2E0] ^ a3) + v11 + ((v11 < 0x6104B398) << 32);
  v25 = __ROR8__((v24 + v8) & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = (0x7653FFD844AF1481 - v25) & a4 | (v25 + 0x9AC0027BB50EB7ELL) & v14;
  v27 = v26 ^ v6;
  v28 = v26 ^ v7;
  v29 = (__ROR8__(v27, 8) + v28) ^ 0x8DBE49DF8B3EC60ALL;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x41285C582D9B8689;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (v17 - ((v33 + v32) | v17) + ((v33 + v32) | a1)) ^ v15;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = __ROR8__(v34, 8);
  v37 = ((v16 | (2 * (v36 + v35))) - (v36 + v35) + v5) ^ a2;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = __ROR8__(v37, 8);
  v40 = __ROR8__(((v21 & (2 * (v39 + v38))) - (v39 + v38) + v22) ^ v23, 8);
  v41 = ((v21 & (2 * (v39 + v38))) - (v39 + v38) + v22) ^ v23 ^ __ROR8__(v38, 61);
  v42 = ((a5 & (2 * (v40 + v41))) - (v40 + v41) + v13) ^ v18;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v42, 8);
  *(v19 + STACK[0x2D8] + v24) = ((((v20 | (2 * (v44 + v43))) - (v44 + v43) + v12) ^ 0xC8FE4A225BB69FEuLL) >> (8 * ((v24 + v8) & 7))) ^ *(v24 + v8);
  return (*(STACK[0x2E8] + 8 * (((2 * (v10 != 0)) | (16 * (v10 != 0))) ^ v9)))();
}

uint64_t sub_244766840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  STACK[0x298] = &STACK[0x3F0];
  v42 = STACK[0x2E8];
  STACK[0x368] = *(STACK[0x2E8] + 8 * a42);
  v43 = *(v42 + 8 * ((((a42 + 3348) | 0xA08) - 1848) ^ a42));
  LODWORD(STACK[0x2E0]) = 1692377716;
  return v43(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_2447669C0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 & 0x1485DFAF;
  v4 = 715682041 * (((((v2 - 160) | 0xE7018E16) ^ 0xFFFFFFFE) - (~(v2 - 160) | 0x18FE71E9)) ^ 0xEDB88ABB);
  *(v2 - 132) = v4 ^ 0xBDD8363C;
  *(v2 - 128) = &STACK[0x420];
  *(v2 - 144) = a1;
  *(v2 - 152) = v4 ^ 0x2F4E14D2;
  *(v2 - 148) = -1239219175 - v4;
  *(v2 - 160) = *(&off_278E1E490 + (v1 & 0x1485DFAF) - 3584);
  *(v2 - 120) = ((v1 & 0x1485DFAF) + 6520) ^ v4;
  v5 = STACK[0x2E8];
  v6 = (*(STACK[0x2E8] + 8 * (v1 & 0x1485DFAF ^ 0x4B69u)))(v2 - 160);
  return (*(v5 + 8 * (((*(v2 - 136) == 1216124116) * (((v3 + 12073) | 0x240) ^ 0x77FA)) ^ v3)))(v6);
}

uint64_t sub_244766BB4@<X0>(int a1@<W8>)
{
  v1 = a1 | 0x228;
  v2 = STACK[0x2E8];
  v3 = (*(STACK[0x2E8] + 8 * ((a1 | 0x228) ^ 0x7FE9)))();
  STACK[0x310] = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_244766C20()
{
  v1 = STACK[0x2E8];
  v2 = (*(STACK[0x2E8] + 8 * (v0 ^ 0x6D32)))();
  STACK[0x330] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_244766C98()
{
  v1 = v0 ^ 0x6B260AEA;
  v2 = STACK[0x2E8];
  v3 = (*(STACK[0x2E8] + 8 * (v1 - 1797652619)))();
  STACK[0x300] = 0;
  return (*(v2 + 8 * (v1 ^ 0x6B267B09 ^ ((v1 < 0xB09C920F) * ((v1 ^ 0x6B265E93) - 1057)))))(v3);
}

uint64_t sub_244766D04()
{
  v1 = STACK[0x320];
  STACK[0x360] = STACK[0x320];
  return (*(STACK[0x2E8] + 8 * (((((v1 == 0x146375EC570BCC2FLL) ^ (47 * (v0 ^ 0x8D))) & 1) * (7 * (v0 ^ 0xD6D) - 17332)) ^ v0)))();
}

uint64_t sub_244766DF4()
{
  v4 = STACK[0x2E8];
  v5 = (*(STACK[0x2E8] + 8 * (v3 + 18981)))(v1 - 0x750C1ABFB0567FDBLL);
  return (*(v4 + 8 * ((((v3 + 3713) ^ v3 ^ 0x4C68 ^ 0x5DDD) * (v2 + 0x1C97C522E0502DEBLL == v0)) ^ v3)))(v5);
}

uint64_t sub_244766EC8()
{
  v3 = STACK[0x2E8];
  v4 = (*(STACK[0x2E8] + 8 * (v2 ^ 0x15983BC4)))();
  *(v1 - 0x750C1ABFB0567FC3) = 0;
  return (*(v3 + 8 * (((((v0 + v2 + 966) | 0xB80) ^ 0x2B1D) * (v2 > 0x3B9C0A64)) ^ (v2 - 362300827))))(v4);
}

uint64_t sub_244766F5C@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0x2E8];
  v3 = (*(STACK[0x2E8] + 8 * (v1 + 5581)))(a1 - 0x146375EC570BCC2FLL);
  return (*(v2 + 8 * (v1 - 16155)))(v3);
}

void sub_244767080()
{
  v2 = v1 - ((2 * v1 + 691527742) & 0x279427FE) + 140903454;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_244767348@<X0>(int a1@<W5>, unsigned int a2@<W7>, uint64_t a3@<X8>)
{
  v7 = v4 + a2;
  v8 = *(v7 - 31);
  v9 = a3 + a2;
  *(v9 - 15) = *(v7 - 15);
  *(v9 - 31) = v8;
  return (*(v3 + 8 * (((v5 == 0) * v6) ^ a1)))();
}

uint64_t sub_2447674EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 - 0x708103872B23DF2DLL) = v7 + (v8 ^ 0x34758222);
  *(*(a1 + 96) - 0x708103872B23E445) = *(a2 + v6) + 1;
  return (*(v5 + 8 * v8))();
}

void sub_244767550(uint64_t a1)
{
  v3 = *(a1 + 16) == 0xEF0A890CD1B92FELL || *a1 == 0x6EFFD31DA51BA2E0;
  v1 = *(a1 + 24) ^ (1659165839 * ((256474578 - (a1 | 0xF497DD2) + (a1 | 0xF0B6822D)) ^ 0xEBC29CA2));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_2447676A0()
{
  v2 = *(v0 + 8 * (v1 ^ 0x1329));
  STACK[0x358] = v0;
  v3 = v2(16);
  return (*(STACK[0x358] + 8 * (((v3 != 0) * (((v1 - 18323) ^ 0xFFFFF818) + v1 - 17454)) ^ v1)))(v3, v4, v5, STACK[0x358], v6, v7);
}

uint64_t sub_244767748(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  a1[1] = 0x750C1ABFB0567FDBLL;
  *(v5 + 488) = a1 + v6;
  *(v5 + 584) = *(a4 + 8 * v4);
  return (*(a4 + 8 * (v4 ^ 0x42E8 ^ (v4 + 17554))))();
}

uint64_t sub_24476792C@<X0>(uint64_t a1@<X3>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a2 | 0x68;
  v10 = *(a1 + 8 * v9);
  v11 = 412655981 * ((((2 * (v8 - 232)) | 0xEACC9EFE616C5B98) - (v8 - 232) - 0x75664F7F30B62DCCLL) ^ 0x66CA45CEFDCF384ELL);
  *(v8 - 192) = v11 + v9 + 1742797557;
  v7[249] = a6;
  v7[248] = v10 - v11;
  v7[252] = a5;
  v7[251] = a7;
  v12 = (*(a1 + 8 * (v9 + 21937)))(v8 - 232);
  return (*(STACK[0x358] + 8 * ((3593 * (*(v8 - 216) == 1216124116)) ^ (((v9 + 596) ^ 0x9A8) + v9 + ((v9 - 618) | 0x58)))))(v12);
}

uint64_t sub_244767A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = LODWORD(STACK[0x720]);
  *(v5 + 1144) = *(a4 + 8 * v4);
  return (*(a4 + 8 * (v4 ^ 0x5872 ^ (1319 * (v4 ^ 0x255)))))(v6, a2, a3);
}

uint64_t sub_244767B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x350] ^ 0x405B;
  v6 = *(v4 + 952);
  LODWORD(STACK[0x5E0]) = STACK[0x55C];
  return (*(a4 + 8 * (((4 * (((v6 == 0) ^ (v5 + 26)) & 1)) & 0xF7 | (8 * (((v6 == 0) ^ (v5 + 26)) & 1))) ^ v5)))(a1, a2, a3);
}

uint64_t sub_244767B6C@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v3[153] = 0;
  LODWORD(STACK[0x558]) = 813441302;
  v3[111] = 0x3E0DD92B1DE16FEALL;
  LODWORD(STACK[0x69C]) = 237377513;
  v3[31] = 0;
  return (*(a1 + 8 * ((43 * (a2 == ((v2 - 17067) ^ 0xE2613D3))) ^ (v2 - 6154))))();
}

uint64_t sub_244767BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 810199703 * ((v6 - 232) ^ 0xBD5D7B6E689168DLL);
  *(v5 + 1992) = *(a4 + 8 * v4) ^ v7;
  *(v6 - 216) = v7 + v4 + 1007955315;
  v8 = (*(a4 + 8 * (v4 ^ 0x5D5B)))(v6 - 232, a2, a3);
  return (*(STACK[0x358] + 8 * (v4 ^ 0x1EB8 ^ ((*(v6 - 232) == ((v4 - 899114615) ^ 0x82140917)) * ((v4 - 899114615) & 0x359766BF ^ 0x31B4)))))(v8);
}

uint64_t sub_244767CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[223] = *(a4 + 8 * v4);
  v5[249] = &STACK[0xAE0];
  *(v6 - 232) = 1649972239 * ((v6 - 720274705 - 2 * ((v6 - 232) & 0xD5117BD7)) ^ 0xEA957AF) - 572929518 + v4;
  v7 = (*(a4 + 8 * (v4 + 21879)))(v6 - 232, a2, a3);
  v8 = STACK[0x358];
  v9 = *(&off_278E1E490 + v4 - 576);
  v10 = *(v6 - 228);
  v11 = *(&off_278E1E490 + v4 - 216);
  if (v10 == 93)
  {
    v12 = v11 - 4;
  }

  else
  {
    v12 = v9 - 12;
  }

  v5[31] = v12;
  v13 = (v11 + 20);
  v14 = (v9 + 12);
  if (v10 == 93)
  {
    v14 = v13;
  }

  return (*(v8 + 8 * (v4 ^ 0x3C40 ^ ((*v14 == 68) * ((v4 + 1363) ^ 0x6152)))))(v7);
}

uint64_t sub_244767D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = (v6 + 40);
  v11 = (v5 + 40);
  if (v4 == 93)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = *v12;
  v14 = STACK[0x3B8];
  v9[97] = &STACK[0xAF0] + STACK[0x3B8];
  STACK[0x3B8] = v14 + 48;
  v9[6] = v8;
  v9[37] = 0x19847B594A0B84A2;
  v9[131] = 0x6286B82630F8F22CLL;
  STACK[0x380] = v13;
  return (*(a4 + 8 * (((((((v7 ^ 0x254C) - 6682) ^ (v13 == 0x58FA20369C313ACELL)) & 1) == 0) | ((((((v7 ^ 0x254C) - 6682) ^ (v13 == 0x58FA20369C313ACELL)) & 1) == 0) << 6)) ^ v7 ^ 0x254Cu)))(a1, a2, a3);
}

uint64_t sub_244767EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x53C]) = v9;
  LODWORD(STACK[0x4C4]) = v10;
  LODWORD(STACK[0x818]) = a8;
  return (*(a4 + 8 * v8))(a1, a2, a3);
}

uint64_t sub_244767F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = STACK[0x380];
  *(v5 - 0x19847B594A0B843ALL) = 2136666267;
  *(v5 - 0x19847B594A0B843BLL) = *(v6 - 0x58FA20369C313AB7);
  *(v5 - 0x19847B594A0B843CLL) = *(v6 - 0x58FA20369C313AB8);
  *(v5 - 0x19847B594A0B843DLL) = *(v6 - 0x58FA20369C313AB9);
  *(v5 - 0x19847B594A0B843ELL) = *(v6 - 0x58FA20369C313ABALL);
  *(v5 - 0x19847B594A0B843FLL) = *(v6 - 0x58FA20369C313ABBLL);
  *(v5 - 0x19847B594A0B8440) = *(v6 - 0x58FA20369C313ABCLL);
  *(v5 - 0x19847B594A0B8441) = *(v6 - 0x58FA20369C313ABDLL);
  *(v5 - 0x19847B594A0B8442) = *(v6 - 0x58FA20369C313ABELL);
  *(v5 - 0x19847B594A0B8443) = *(v6 - 0x58FA20369C313ABFLL);
  *(v5 - 0x19847B594A0B8444) = *(v6 - 0x58FA20369C313AC0);
  *(v5 - 0x19847B594A0B8445) = *(v6 - 0x58FA20369C313AC1);
  *(v5 - 0x19847B594A0B8446) = *(v6 - 0x58FA20369C313AC2);
  *(v5 - 0x19847B594A0B8447) = *(v6 - 0x58FA20369C313AC3);
  *(v5 - 0x19847B594A0B8448) = *(v6 - 0x58FA20369C313AC4);
  *(v5 - 0x19847B594A0B8449) = *(v6 - 0x58FA20369C313AC5);
  *(v5 - 0x19847B594A0B844ALL) = *(v6 - 0x58FA20369C313AC6);
  return (*(a4 + 8 * ((57 * (((v5 == 0x19847B594A0B84A2) ^ (v4 - 68)) & 1)) ^ v4)))(a1, a2, a3);
}

uint64_t sub_2447683A0@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v6 = *(a2 + v3);
  *(v5 - 0x19847B594A0B848ALL) = *(a2 - 0x58FA20369C313AA6);
  *(v5 + v4) = v6;
  return (*(a1 + 8 * v2))();
}

uint64_t sub_2447683E8@<X0>(uint64_t a1@<X3>, int a2@<W7>, uint64_t a3@<X8>)
{
  v8 = v5[97];
  *v8 = 0x44046241CC2D2A4ELL;
  *(v8 + 8) = (v3 ^ 0x1D8D) + 237367016 + *(a3 - 0x58FA20369C313A62) - (((v3 - 13558) ^ 0x1C4C296C) & (2 * *(a3 - 0x58FA20369C313A62))) + 712;
  *(v8 + 16) = 0;
  *(v8 + 24) = -190490885;
  *(v8 + 28) = 400696312;
  *(v8 + 32) = 237377517;
  *(v8 + 36) = 1073028368;
  v5[130] = v8;
  LODWORD(STACK[0x6C4]) = 0;
  v5[33] = 0x19847B594A0B84A2;
  v10 = (*(a1 + 8 * (v3 + 7697)))(128);
  v11 = STACK[0x358];
  v5[34] = v10 + 0x6286B82630F8F22CLL;
  LODWORD(STACK[0x53C]) = v4;
  LODWORD(STACK[0x4C4]) = v6;
  LODWORD(STACK[0x3C4]) = v7;
  LODWORD(STACK[0x818]) = a2;
  return (*(v11 + 8 * (v3 ^ (8 * (v10 != 0)))))();
}

uint64_t sub_244768530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x53C]) = v9;
  LODWORD(STACK[0x4C4]) = v10;
  LODWORD(STACK[0x3C4]) = v11;
  LODWORD(STACK[0x818]) = a8;
  return (*(a4 + 8 * v8))(a1, a2, a3);
}

uint64_t sub_2447685A4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v5 = v2 == a2;
  v6 = STACK[0x350] + 526790;
  v7 = 73 * (STACK[0x350] ^ 0x6B7);
  v8 = STACK[0x350] + 16070;
  LODWORD(STACK[0x53C]) = v3;
  LODWORD(STACK[0x4C4]) = v4;
  return (*(a1 + 8 * (((((v6 ^ v5) & 1) == 0) * (v7 - 626)) ^ v8)))();
}

uint64_t sub_244768704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0x350] + 4248;
  v5 = STACK[0x350] ^ 0x3B1E;
  v6 = STACK[0x350] + 14423;
  v7 = (*(a4 + 8 * (STACK[0x350] + 21255)))(16, a2, a3);
  return (*(STACK[0x358] + 8 * (((v7 == 0) * (v4 + v5 - 21736)) ^ v6)))();
}

uint64_t sub_244768774(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  a1[1] = 0x750C1ABFB0567FDBLL;
  *(v4 - 0x6286B82630F8F224) = a1 + v6;
  return (*(a4 + 8 * (((((v5 - 7010) ^ 0xFFFFCA8E) + v5 - 9802) * (v4 != 0x6286B82630F8F22CLL)) | v5)))();
}

uint64_t sub_24476888C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  a1[1] = 0x750C1ABFB0567FDBLL;
  *v4 = a1 + v6;
  return (*(a4 + 8 * ((19 * (((STACK[0x7F8] == 0) ^ (v5 - 54 + v5 + 72 + 1)) & 1)) ^ v5)))();
}

uint64_t sub_2447689E0@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v7 = *v5;
  v6[71] = *(a1 + 8 * v2);
  v6[24] = v7;
  LODWORD(STACK[0x538]) = v4;
  v6[70] = a2;
  return (*(a1 + 8 * (((a2 == 0) * (((2 * v3) ^ 0x7FA) + 8501)) ^ (v3 + 15))))();
}

uint64_t sub_244768AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x3A8] = *(v5 - 0x6286B82630F8F224);
  LODWORD(STACK[0x88C]) = -122660393;
  *(v6 + 616) = &STACK[0x6C4];
  LODWORD(STACK[0x448]) = -1894167198;
  return (*(a4 + 8 * (v4 + 10168)))(a1, a2, a3);
}

uint64_t sub_244768B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v6 - 232) = v4 - 1230911237 * ((v6 - 232) ^ 0x5303B2F5) + 12089;
  v7 = (*(a4 + 8 * (v4 ^ 0x5AAB)))(v6 - 232, a2, a3);
  v8 = STACK[0x358];
  *(v5 + 584) = *(STACK[0x358] + 8 * v4);
  return (*(v8 + 13008))(v7);
}

uint64_t sub_244768CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0x350] + 1890;
  LODWORD(STACK[0x444]) = 1216124116;
  return (*(a4 + 8 * v4))(a1, a2, a3);
}

uint64_t sub_244768CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v6 + 840) = v5;
  STACK[0x388] = &STACK[0x730];
  LODWORD(STACK[0x4EC]) = -466409415;
  return (*(a4 + 8 * v4))(a1, a2, a3);
}

uint64_t sub_244768E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v5 - 0x6286B82630F8F224);
  *(v6 + 664) = v8;
  return (*(a4 + 8 * ((((141 * ((v4 + 1633005979) & 0x9EAA7BFF ^ 0x3B62)) ^ 0x72B) * (v8 == v7)) ^ v4)))(a1, a2, a3);
}

uint64_t sub_244768F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 14785;
  v6 = (*(a4 + 8 * ((v4 + 14785) ^ 0x1E52)))(32, a2, a3);
  v7 = STACK[0x358];
  STACK[0x5F0] = v6 + 0x750C1ABFB0567FDBLL;
  return (*(v7 + 8 * (((v6 == 0) * (((v5 ^ 0x551A) - 2314) ^ 0x652)) ^ v5)))();
}

uint64_t sub_244768FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  *(a1 + 8) = 0x750C1ABFB0567FDBLL;
  v7 = v5 ^ ((v4 - 3707) | 0x2880) ^ (v4 - 633557647) & 0x25C346BF ^ 0xE263DC5u;
  STACK[0x990] = v7;
  LODWORD(v7) = ((v7 + 10) ^ 0xBE7BBDDC) + 1273977408 + ((2 * (v7 + 10)) & 0x7CF77BB8);
  *(a1 + 16) = v7;
  v8 = (*(a4 + 8 * (v4 ^ 0x4B48)))((v7 - 174790684), a2, a3);
  v9 = STACK[0x358];
  *(a1 + 24) = v8;
  return (*(v9 + 8 * ((41 * (v8 != 0)) ^ v4)))();
}

uint64_t sub_244769128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = *v13 + a4 - 0x60F92125641679AALL;
  v21 = __ROR8__(v20 & 0xFFFFFFFFFFFFFFF8, 8);
  v22 = ((2 * v21 + 0x1358004F76A1D6FCLL) & 0x52654FF3073825D0) - v21 - 0x36DEA8213EECFE67;
  v23 = __ROR8__(v22 ^ 0xE00389A0A8DA2F85, 8);
  v22 ^= 0xAD63889D725D7471;
  v24 = (((2 * (v23 + v22)) & 0x6AB7D0CE24EE43E8) - (v23 + v22) - 0x355BE867127721F5) ^ 0x471A5E4766B61801;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((2 * (v26 + v25)) & 0xE674F2A747EA81D8) - (v26 + v25) + 0xCC586AC5C0ABF13) ^ 0x4DEDDAF47191399ALL;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0x1717D4ABBED3C077;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (((2 * (v31 + v30)) & 0x652AFBEC07153E02) - (v31 + v30) - 0x32957DF6038A9F02) ^ 0x21E20EB6234EB32ELL;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ a6;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = __ROR8__((v7 - ((v36 + v35) | v7) + ((v36 + v35) | 0x1E5940AE4771D176)) ^ 0x4E71FBCDA0D3A4F6, 8) + ((v7 - ((v36 + v35) | v7) + ((v36 + v35) | 0x1E5940AE4771D176)) ^ 0x4E71FBCDA0D3A4F6 ^ __ROR8__(v35, 61));
  v38 = __ROR8__((v20 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v39 = ((0x7653FFD844AF1481 - v38) & 0x968887040D1C5000) + v38 + v17 - ((v38 + v17) & 0x928887040D1C5000);
  v40 = __ROR8__(v39 ^ 0x244656A2D9A59292, 8);
  v41 = *(a7 + 8 * v12);
  *v20 = ((((v37 & v9 ^ 0x372A12000080EE21) + (v37 ^ 0x885028F6F338005ELL) - ((v37 ^ 0x885028F6F338005ELL) & v9)) ^ 0xDF82493E1D77B0BDLL) >> (8 * (v20 & 7u))) ^ HIBYTE(v15) ^ 0x12;
  v42 = (v11 - ((v40 + (v39 ^ 0x6926579F0322C966)) | v11) + ((v40 + (v39 ^ 0x6926579F0322C966)) | 0xF0E418D3F39C0B0DLL)) ^ 0x7D5A510C78A2CD07;
  v43 = v42 ^ __ROR8__(v39 ^ 0x6926579F0322C966, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x41285C582D9B8689;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0x1717D4ABBED3C077;
  v47 = __ROR8__(v46, 8);
  v48 = v46 ^ __ROR8__(v45, 61);
  v49 = (((2 * (v47 + v48)) | 0x1FB1BCB025A9A32) - (v47 + v48) - 0xFD8DE5812D4D19) ^ 0xEC75015A5E169EC9;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ a6;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0x5028BB63E7A27580;
  *(v20 + 1) = (((__ROR8__(v53, 8) + (v53 ^ __ROR8__(v52, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v20 + 1) & 7))) ^ BYTE2(v15) ^ 0x1C;
  v54 = __ROR8__((v20 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v55 = (v54 + v17) ^ 0xFFAED09B0E3E9966;
  v56 = (__ROR8__((v54 + v17) ^ 0xB2CED1A6D4B9C292, 8) + v55) ^ 0x8DBE49DF8B3EC60ALL;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = __ROR8__(v56, 8);
  v59 = __ROR8__((((2 * ((v58 + v57) ^ 0x13AC9FC9158C886CLL)) | 0x26C2470D59C93E66) - ((v58 + v57) ^ 0x13AC9FC9158C886CLL) - 0x13612386ACE49F33) ^ 0x41E5E01794F391D6, 8);
  v60 = (((2 * ((v58 + v57) ^ 0x13AC9FC9158C886CLL)) | 0x26C2470D59C93E66) - ((v58 + v57) ^ 0x13AC9FC9158C886CLL) - 0x13612386ACE49F33) ^ 0x41E5E01794F391D6 ^ __ROR8__(v57, 61);
  v61 = (v59 + v60) ^ 0x1717D4ABBED3C077;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ 0xEC888CBFDF3BD3D0;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = __ROR8__(v63, 8);
  v66 = (v8 - ((v65 + v64) | v8) + ((v65 + v64) | 0x756319745B15AE33)) ^ 0x45FBBE6363AE4910;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0x5028BB63E7A27580;
  *(v20 + 2) = (((__ROR8__(v68, 8) + (v68 ^ __ROR8__(v67, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v20 + 2) & 7))) ^ BYTE1(v15) ^ v19;
  v69 = __ROR8__((v20 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v70 = (v69 + v17) ^ 0xFFAED09B0E3E9966;
  v71 = (__ROR8__((v69 + v17) ^ 0xB2CED1A6D4B9C292, 8) + v70) ^ 0x8DBE49DF8B3EC60ALL;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0x41285C582D9B8689;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0x1717D4ABBED3C077;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = __ROR8__(v75, 8);
  v78 = (v10 - ((v77 + v76) | v10) + ((v77 + v76) | v18)) ^ v14;
  v79 = v78 ^ __ROR8__(v76, 61);
  v80 = (__ROR8__(v78, 8) + v79) ^ a6;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0x5028BB63E7A27580;
  *(v20 + 3) = v15 ^ v16 ^ (((__ROR8__(v82, 8) + (v82 ^ __ROR8__(v81, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v20 + 3) & 7)));
  return v41();
}

uint64_t sub_244769A24(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a7 + 8 * v8);
  v12 = *v10;
  v13 = *v10 + 4;
  v14 = __ROR8__(v13 & 0xFFFFFFFFFFFFFFF8, 8);
  v15 = ((2 * v14 + 0x1358004F76A1D6FCLL) & 0xB543C47627A6A004) - v14 + 0x17B21D9D30DBC47FLL;
  v16 = v15 ^ 0x1390CC6238956D6FLL;
  v15 ^= 0x5EF0CD5FE212369BuLL;
  v17 = (__ROR8__(v16, 8) + v15) ^ a8;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x41285C582D9B8689;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (((2 * (v21 + v20)) & 0x3EC3AD2A46AC9354) - (v21 + v20) + 0x609E296ADCA9B655) ^ 0x7789FDC1627A7622;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0xEC888CBFDF3BD3D0;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x3098A71738BBE723;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x5028BB63E7A27580;
  v29 = __ROR8__(v28, 8);
  v30 = __ROR8__(v27, 61);
  *(v12 + 4) = v9 ^ 0x93 ^ (((v29 + (v28 ^ v30) - ((2 * (v29 + (v28 ^ v30))) & 0x9FF91FBD96B0FA88) - 0x3003702134A782BCLL) ^ 0xA744FC26378F238CLL) >> (8 * (v13 & 7u)));
  v31 = __ROR8__((v12 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v32 = v31 - ((2 * v31 + 0x1358004F76A1D6FCLL) & 0x53F10677A11C3C64) + 0x37A483638BDF09B0;
  v33 = v32 ^ 0x1F36529D0437DCA0;
  v32 ^= 0x525653A0DEB08754uLL;
  v34 = (__ROR8__(v33, 8) + v32) ^ a8;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x41285C582D9B8689;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (v38 + v37 - ((2 * (v38 + v37)) & 0xD9CB08B4ECE0576CLL) + 0x6CE5845A76702BB6) ^ 0x7BF250F1C8A3EBC1;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0xEC888CBFDF3BD3D0;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (((2 * (v43 + v42)) & 0xD648B671C1CE70FALL) - (v43 + v42) + 0x14DBA4C71F18C782) ^ 0x244303D027A320A1;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0x5028BB63E7A27580;
  *(v12 + 5) = a4 ^ (((__ROR8__(v46, 8) + (v46 ^ __ROR8__(v45, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v12 + 5) & 7))) ^ 0xEE;
  return v11();
}

uint64_t sub_244769E8C@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v2[29] = 0x750C1ABFB0567FDBLL;
  STACK[0x3E0] = v2[83];
  LODWORD(STACK[0x5E4]) = -41143177;
  v2[146] = &STACK[0x4D0];
  LODWORD(STACK[0x3A4]) = 131579726;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_244769F04()
{
  v6 = (v4 - 1);
  v7 = (v6 | ((v6 < v0) << 32)) - 1819935941;
  v8 = v7 + v2 + 10;
  v9 = __ROR8__((v3 + v7) & (v1 - 4516 - 2585), 8);
  v10 = (v9 - 0x16480F2CA374302ALL) ^ 0xB74DE7873E22183;
  v11 = __ROR8__((v9 - 0x16480F2CA374302ALL) ^ 0x46CB58E297BC5F34, 8) + v10;
  v12 = (((2 * v11) | 0x5A674FDF1756D5A2) - v11 + 0x52CC58107454952FLL) ^ 0xBAEC1222C318C06BLL;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0x8EFC952A6735A9DCLL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0xECC83F369EF51C3ELL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((v18 + v17) | 0x6B3C3A68AAE458CALL) - ((v18 + v17) | 0x94C3C597551BA735) - 0x6B3C3A68AAE458CBLL) ^ 0xCA1EA81159D0CDAELL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v8 & 0xFFFFFFFFFFFFFFF8, 8);
  v22 = (v21 - 0x7653FFD844AF1482) ^ 0xFFAED09B0E3E9966;
  v23 = (__ROR8__(v19, 8) + v20) ^ 0x3DFD662A599D9AF9;
  v24 = (__ROR8__((v21 - 0x7653FFD844AF1482) ^ 0xB2CED1A6D4B9C292, 8) + v22) ^ 0x8DBE49DF8B3EC60ALL;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = v23 ^ __ROR8__(v20, 61);
  v27 = (__ROR8__(v24, 8) + v25) ^ 0x41285C582D9B8689;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (v29 + v28 - ((2 * (v29 + v28)) & 0x1CDA1B05ADC53F2CLL) - 0x7192F27D291D606ALL) ^ 0x997AD92968315FE1;
  v31 = __ROR8__(v30, 8);
  v32 = (__ROR8__(v23, 8) + v26) ^ 0xF5D96172F3B103E6;
  v33 = v30 ^ __ROR8__(v28, 61);
  v34 = (((v31 + v33) | 0x276D29752D95C365) - ((v31 + v33) | 0xD892D68AD26A3C9ALL) - 0x276D29752D95C366) ^ 0xCBE5A5CAF2AE10B5;
  v35 = __ROR8__(v32, 8) + (v32 ^ __ROR8__(v26, 61));
  v36 = v34 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v34, 8) + v36) ^ 0x3098A71738BBE723;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8) + v38;
  v40 = (v35 ^ 0x8A3898548E787E8BLL) >> (8 * ((v3 + v6 + 59) & 7));
  v41 = (((2 * v39) | 0x6A6BEF16EAD396BALL) - v39 + 0x4ACA08748A9634A3) ^ 0xE51D4CE892CBBEDDLL;
  v42 = __ROR8__(v38, 61);
  v43 = STACK[0x358];
  *v8 = (((__ROR8__(v41, 8) + (v41 ^ v42)) ^ 0x68B873F8FCD75EC8) >> (8 * (v8 & 7u))) ^ v40 ^ *(v3 + v7);
  return (*(v43 + 8 * (((v6 != v0) * v5) ^ v1)))();
}

uint64_t sub_24476A3A8@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v7 = (v5 - 1);
  v8 = (v7 | ((v7 < v2) << 32)) - 1627666759;
  v9 = v4 + v8;
  v10 = v8 + v3;
  v11 = __ROR8__(v9 & 0xFFFFFFFFFFFFFFF8, 8) + (v6 ^ 0x89AC0027BB50EDC0);
  v12 = __ROR8__(v11 ^ 0xB2CED1A6D4B9C292, 8);
  v13 = (((v12 + (v11 ^ 0xFFAED09B0E3E9966)) | 0xD408256BCF0DF4BALL) - ((v12 + (v11 ^ 0xFFAED09B0E3E9966)) | 0x2BF7DA9430F20B45) + 0x2BF7DA9430F20B45) ^ 0x59B66CB4443332B0;
  v14 = v13 ^ __ROR8__(v11 ^ 0xFFAED09B0E3E9966, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) | 0xB30143A17B512198) - (v15 + v14) - 0x5980A1D0BDA890CCLL) ^ 0x18A8FD8890331645;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0x1717D4ABBED3C077;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) | 0x2F2FE27F94D7D59CLL) - (v20 + v19) + 0x68680EC035941532) ^ 0x7B1F7D801550391ELL;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = __ROR8__(v21, 8);
  v24 = ((v23 + v22) | 0x398F0AE4B26C3B04) - ((v23 + v22) | 0xC670F51B4D93C4FBLL) - 0x398F0AE4B26C3B05;
  v25 = __ROR8__((v10 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v24 ^= 0x917ADF38AD7DC27uLL;
  v26 = v24 ^ __ROR8__(v22, 61);
  v27 = (0x7653FFD844AF1481 - v25) & 0xA16C8C544D5E23C8 | (v25 + 0x9AC0027BB50EB7ELL) & 0x5A9373ABB2A1DC37;
  v28 = v27 ^ 0x13A25DF299E7E15ALL;
  v29 = __ROR8__(v24, 8);
  v27 ^= 0x5EC25CCF4360BAAEuLL;
  v30 = __ROR8__(v28, 8);
  v31 = (v30 + v27 - ((2 * (v30 + v27)) & 0xABB5637936BDEFB4) + 0x55DAB1BC9B5EF7DALL) ^ 0xD864F863106031D0;
  v32 = v31 ^ __ROR8__(v27, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x41285C582D9B8689;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (v29 + v26 - ((2 * (v29 + v26)) & 0x4E27738A1387A88) + 0x2713B9C509C3D44) ^ 0x525980FFB73E48C4;
  v37 = (((2 * (v35 + v34)) | 0xB0D7263BF68D6C1ALL) - (v35 + v34) + 0x27946CE204B949F3) ^ 0xCF7C47B64595767ALL;
  v38 = v37 ^ __ROR8__(v34, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0xEC888CBFDF3BD3D0;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v36, 8) + (v36 ^ __ROR8__(v26, 61));
  v42 = (__ROR8__(v39, 8) + v40) ^ 0x3098A71738BBE723;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x5028BB63E7A27580;
  *(v10 + 10) = ((v41 ^ 0x68B873F8FCD75EC8uLL) >> (8 * (v9 & 7u))) ^ (((__ROR8__(v44, 8) + (v44 ^ __ROR8__(v43, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v10 + 10) & 7))) ^ *v9;
  return (*(a1 + 8 * ((30 * (v7 != v2)) ^ a2)))();
}

uint64_t sub_24476A9E0@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v5 = *(v2 - 0x750C1ABFB0567FC3);
  v6 = __ROR8__((v5 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v7 = *(a1 + 8 * v3);
  v8 = ((0x1653FFD844AF1481 - v6) & 0x130468B0ADC0E86ELL) + v6 - 0x7653FFD844AF1482 - ((v6 - 0x7653FFD844AF1482) & 0x130468B0ADC0E86ELL);
  v9 = v8 ^ 0xA1CAB91679792AFCLL;
  v8 ^= 0xECAAB82BA3FE7108;
  v10 = __ROR8__(v9, 8);
  v11 = (((2 * (v10 + v8)) & 0x8FCBB528808EB37CLL) - (v10 + v8) + 0x381A256BBFB8A641) ^ 0xB5A46CB43486604BLL;
  v12 = v11 ^ __ROR8__(v8, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (v13 + v12 - ((2 * (v13 + v12)) & 0x54FF189EF0F80B50) + 0x2A7F8C4F787C05A8) ^ 0x6B57D01755E78321;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ v4;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((2 * (v18 + v17)) & 0x15C8C1EBA79D52F6) - (v18 + v17) + 0x751B9F0A2C315684) ^ 0x999313B5F30A8554;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = __ROR8__((v21 + v20 - ((2 * (v21 + v20)) & 0x596CDF2F575C1AE0) - 0x534990685451F290) ^ 0x9C2EC8809315EA53, 8);
  v23 = (v21 + v20 - ((2 * (v21 + v20)) & 0x596CDF2F575C1AE0) - 0x534990685451F290) ^ 0x9C2EC8809315EA53 ^ __ROR8__(v20, 61);
  v5[10] = (((__ROR8__((v22 + v23) ^ 0x5028BB63E7A27580, 8) + ((v22 + v23) ^ 0x5028BB63E7A27580 ^ __ROR8__(v23, 61))) ^ 0x68B873F8FCD75EC8) >> (8 * ((v5 + 10) & 7u))) ^ HIBYTE(a2) ^ 0x91;
  v24 = __ROR8__((v5 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = ((0x7653FFD844AF1481 - v24) & 0x70831D5BAED8CA38) + v24 - 0x7653FFD844AF1482 - ((v24 - 0x7653FFD844AF1482) & 0x70831D5BAED8CA38);
  v26 = v25 ^ 0xC24DCCFD7A6108AALL;
  v25 ^= 0x8F2DCDC0A0E6535ELL;
  v27 = __ROR8__(v26, 8);
  v28 = __ROR8__((((2 * (v27 + v25)) & 0x6E525F98C78DC348) - (v27 + v25) - 0x37292FCC63C6E1A5) ^ 0x456899EC1707D851, 8);
  v29 = (((2 * (v27 + v25)) & 0x6E525F98C78DC348) - (v27 + v25) - 0x37292FCC63C6E1A5) ^ 0x456899EC1707D851 ^ __ROR8__(v25, 61);
  v30 = (v28 + v29 - ((2 * (v28 + v29)) & 0xC56FF7F50AB548DALL) - 0x1D4804057AA55B93) ^ 0xA39FA7A2A8C122E4;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v4;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0xEC888CBFDF3BD3D0;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (((2 * (v36 + v35)) | 0x7A6D1720E44E8DA0) - (v36 + v35) + 0x42C9746F8DD8B930) ^ 0x8DAE2C874A9CA1F3;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (((2 * (v39 + v38)) & 0xB9A93452FE95BBA4) - (v39 + v38) - 0x5CD49A297F4ADDD3) ^ 0xF303DEB5671757ADLL;
  v5[11] = (((__ROR8__(v40, 8) + (v40 ^ __ROR8__(v38, 61))) ^ 0x68B873F8FCD75EC8) >> (8 * ((v5 + 11) & 7u))) ^ BYTE6(a2) ^ 0xE;
  v41 = __ROR8__((v5 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v42 = ((2 * (v41 - 0x7653FFD844AF1482)) | 0x45442B74ECC86264) - (v41 - 0x7653FFD844AF1482) - 0x22A215BA76643132;
  v43 = v42 ^ 0x906CC41CA2DDF3A0;
  v42 ^= 0xDD0CC521785AA854;
  v44 = (__ROR8__(v43, 8) + v42) ^ 0x8DBE49DF8B3EC60ALL;
  v45 = __ROR8__(v44, 8);
  v46 = v44 ^ __ROR8__(v42, 61);
  v47 = (v45 + v46 - ((2 * (v45 + v46)) & 0x621F3207827676ACLL) + 0x310F9903C13B3B56) ^ 0x7027C55BECA0BDDFLL;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (((v49 + v48) & 0xF2F70C921EAF6767 ^ 0x129204900E202063) + ((v49 + v48) & 0xD08F36DE1509898 ^ 0x8536880509889) - 1) ^ 0x58D835330A3789CLL;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = __ROR8__(v50, 8);
  v53 = (((v52 + v51) | 0x79E82E87A79FB37) - ((v52 + v51) | 0xF8617D17858604C8) - 0x79E82E87A79FB38) ^ 0xEB160E57A54228E7;
  v54 = v53 ^ __ROR8__(v51, 61);
  v55 = __ROR8__(v53, 8);
  v56 = (((2 * (v55 + v54)) | 0x595BEEF0A4B15B5ELL) - (v55 + v54) + 0x53520887ADA75251) ^ 0x9C35506F6AE34A8CLL;
  v57 = v56 ^ __ROR8__(v54, 61);
  v58 = __ROR8__(v56, 8);
  v59 = (((2 * (v58 + v57)) | 0x6A5ED517B9BA5572) - (v58 + v57) - 0x352F6A8BDCDD2AB9) ^ 0x6507D1E83B7F5F39;
  v60 = v59 ^ __ROR8__(v57, 61);
  v61 = __ROR8__(v59, 8);
  v5[12] = (((((v61 + v60) | 0x5FAF6B1693D6825ALL) - ((v61 + v60) | 0xA05094E96C297DA5) - 0x5FAF6B1693D6825BLL) ^ 0x371718EE6F01DC92) >> (8 * ((v5 + 12) & 7u))) ^ BYTE5(a2) ^ 0xCE;
  v62 = __ROR8__((v5 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v63 = ((2 * (v62 - 0x7653FFD844AF1482)) | 0x726974BEE01D68F0) - (v62 - 0x7653FFD844AF1482) - 0x3934BA5F700EB478;
  v64 = v63 ^ 0x8BFA6BF9A4B776EALL;
  v63 ^= 0xC69A6AC47E302D1ELL;
  v65 = (__ROR8__(v64, 8) + v63) ^ 0x8DBE49DF8B3EC60ALL;
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0x41285C582D9B8689;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ v4;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ 0xEC888CBFDF3BD3D0;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0x3098A71738BBE723;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0x5028BB63E7A27580;
  v76 = ((__ROR8__(v75, 8) + (v75 ^ __ROR8__(v74, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v5 + 13) & 7u));
  v77 = __ROR8__((v5 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v78 = ((0x7653FFD844AF1481 - v77) & 0xFE542F78DA5444B9) + v77 - 0x7653FFD844AF1482 - ((v77 - 0x7653FFD844AF1482) & 0xFA542F78DA5444B9);
  v79 = v78 ^ 0x4C9AFEDE0EED862BLL;
  v78 ^= 0x1FAFFE3D46ADDDFuLL;
  v80 = (__ROR8__(v79, 8) + v78) ^ 0x8DBE49DF8B3EC60ALL;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = __ROR8__(v80, 8);
  v83 = __ROR8__((((v82 + v81) & 0x23EC8C234378AF19 ^ 0x3C8000341608D11) + ((v82 + v81) & 0xDC1373DCBC8750E6 ^ 0xDC006048288600E1) - 1) ^ 0x9EE03C13447D0B78, 8);
  v84 = (((v82 + v81) & 0x23EC8C234378AF19 ^ 0x3C8000341608D11) + ((v82 + v81) & 0xDC1373DCBC8750E6 ^ 0xDC006048288600E1) - 1) ^ 0x9EE03C13447D0B78 ^ __ROR8__(v81, 61);
  v85 = (v83 + v84) ^ v4;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = __ROR8__(v85, 8);
  v88 = (((2 * (v87 + v86)) | 0xEBEEBD579C80540CLL) - (v87 + v86) + 0xA08A15431BFD5FALL) ^ 0x197FD214117BF9D6;
  v89 = v88 ^ __ROR8__(v86, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0x3098A71738BBE723;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = __ROR8__(v90, 8);
  v93 = (v92 + v91 - ((2 * (v92 + v91)) & 0x1D2A56B20491C28) + 0xE952B590248E14) ^ 0x50C1E9D67786FB94;
  v94 = ((__ROR8__(v93, 8) + (v93 ^ __ROR8__(v91, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v5 + 14) & 7u));
  v95 = __ROR8__((v5 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v96 = ((v95 - 0x7653FFD844AF1482) | 0x3482ED2F4BE36F82) - ((v95 - 0x7653FFD844AF1482) | 0xCB7D12D0B41C907DLL) - 0x3482ED2F4BE36F83;
  v97 = v96 ^ 0x864C3C899F5AAD10;
  v96 ^= 0xCB2C3DB445DDF6E4;
  v98 = (__ROR8__(v97, 8) + v96) ^ 0x8DBE49DF8B3EC60ALL;
  v99 = v98 ^ __ROR8__(v96, 61);
  v5[13] = v76 ^ BYTE4(a2) ^ 0x63;
  v5[14] = v94 ^ BYTE3(a2) ^ 0x19;
  v100 = (__ROR8__(v98, 8) + v99) ^ 0x41285C582D9B8689;
  v101 = v100 ^ __ROR8__(v99, 61);
  v102 = (__ROR8__(v100, 8) + v101) ^ v4;
  v103 = v102 ^ __ROR8__(v101, 61);
  v104 = __ROR8__(v102, 8);
  v105 = (((2 * (v104 + v103)) | 0x421E3E46FF8178FELL) - (v104 + v103) + 0x5EF0E0DC803F4381) ^ 0x4D87939CA0FB6FAFLL;
  v106 = v105 ^ __ROR8__(v103, 61);
  v107 = (__ROR8__(v105, 8) + v106) ^ 0x3098A71738BBE723;
  v108 = __ROR8__(v107, 8);
  v109 = v107 ^ __ROR8__(v106, 61);
  v110 = (v108 + v109) ^ 0x5028BB63E7A27580;
  v111 = v110 ^ __ROR8__(v109, 61);
  v112 = __ROR8__(v110, 8);
  LOBYTE(v111) = (((((v112 + v111) | 0xC03966FD3C50E4A5) - ((v112 + v111) | 0x3FC69902C3AF1B5ALL) + 0x3FC69902C3AF1B5ALL) ^ 0xA8811505C087BA6DLL) >> (8 * ((v5 + 15) & 7u))) ^ BYTE2(a2) ^ 0x9C;
  v113 = __ROR8__((v5 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v5[15] = v111;
  v114 = ((2 * (v113 - 0x7653FFD844AF1482)) | 0x75D79D827AEEC060) - (v113 - 0x7653FFD844AF1482) + 0x4514313EC2889FD0;
  v115 = __ROR8__(v114 ^ 0x8251F67E9CEA2A2, 8);
  v114 ^= 0x45451E5A3349F956uLL;
  v116 = (v115 + v114) ^ 0x8DBE49DF8B3EC60ALL;
  v117 = v116 ^ __ROR8__(v114, 61);
  v118 = (__ROR8__(v116, 8) + v117) ^ 0x41285C582D9B8689;
  v119 = v118 ^ __ROR8__(v117, 61);
  v120 = (__ROR8__(v118, 8) + v119) ^ v4;
  v121 = v120 ^ __ROR8__(v119, 61);
  v122 = (__ROR8__(v120, 8) + v121) ^ 0xEC888CBFDF3BD3D0;
  v123 = v122 ^ __ROR8__(v121, 61);
  v124 = (__ROR8__(v122, 8) + v123) ^ 0x3098A71738BBE723;
  v125 = v124 ^ __ROR8__(v123, 61);
  v126 = (__ROR8__(v124, 8) + v125) ^ 0x5028BB63E7A27580;
  v127 = __ROR8__(v126, 8);
  v128 = __ROR8__(v125, 61);
  v5[16] = (((((v127 + (v126 ^ v128)) | 0xD08AEA42F2DFEC1BLL) - ((v127 + (v126 ^ v128)) | 0x2F7515BD0D2013E4) + 0x2F7515BD0D2013E4) ^ 0xB83299BA0E08B2D3) >> (8 * ((v5 + 16) & 7u))) ^ BYTE1(a2) ^ 0xD8;
  v129 = __ROR8__((v5 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v130 = ((2 * v129 + 0x1358004F76A1D6FCLL) & 0xF72D73938192B118) - v129 - 0x942B9F17C1A440BLL;
  v131 = v130 ^ 0x32A79790EB8F65E1;
  v130 ^= 0x7FC796AD31083E15uLL;
  v132 = (__ROR8__(v131, 8) + v130) ^ 0x8DBE49DF8B3EC60ALL;
  v133 = v132 ^ __ROR8__(v130, 61);
  v134 = (__ROR8__(v132, 8) + v133) ^ 0x41285C582D9B8689;
  v135 = v134 ^ __ROR8__(v133, 61);
  v136 = (__ROR8__(v134, 8) + v135) ^ v4;
  v137 = v136 ^ __ROR8__(v135, 61);
  v138 = (__ROR8__(v136, 8) + v137) ^ 0xEC888CBFDF3BD3D0;
  v139 = v138 ^ __ROR8__(v137, 61);
  v140 = (__ROR8__(v138, 8) + v139) ^ 0x3098A71738BBE723;
  v141 = v140 ^ __ROR8__(v139, 61);
  v142 = (__ROR8__(v140, 8) + v141) ^ 0x5028BB63E7A27580;
  v5[17] = (((__ROR8__(v142, 8) + (v142 ^ __ROR8__(v141, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v5 + 17) & 7u))) ^ a2 ^ 0x3B;
  return v7();
}

uint64_t sub_24476B70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x778] = 0x750C1ABFB0567FDBLL;
  STACK[0x3E0] = STACK[0x578];
  LODWORD(STACK[0x5E4]) = STACK[0xAA0];
  STACK[0x878] = &STACK[0x778];
  LODWORD(STACK[0x3A4]) = 126273521;
  return (*(a7 + 8 * (v7 + 851)))(a1, a2, a3, a7, a5, a6);
}

uint64_t sub_24476B83C@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v3 = a2 ^ 0xDDE940BE;
  v4 = (*(a1 + 8 * (a2 ^ 0x118C)))();
  v5 = STACK[0x358];
  *(v2 - 0x750C1ABFB0567FC3) = 0;
  return (*(v5 + 8 * (v3 ^ 0xDDE900F4 ^ (5702 * (v3 >= (((v3 + 571930675) | 0x500A) ^ 0x59854009))))))(v4);
}

uint64_t sub_24476BC1C(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = (v8 - 1);
  v26 = v25 == a1;
  v27 = (v25 | ((v25 < a1) << 32)) + v14;
  v28 = v27 + v9 + 10;
  v29 = __ROR8__(v28 & 0xFFFFFFFFFFFFFFF8, 8);
  v30 = -2 - (((0x7653FFD844AF1481 - v29) | 0x4D40EBB8E606437CLL) + ((v29 + 0x9AC0027BB50EB7ELL) | 0xB2BF144719F9BC83));
  v31 = v30 ^ 0xFF8E3A1E32BF81EELL;
  v32 = v30 ^ a5;
  v33 = __ROR8__(v31, 8);
  v34 = __ROR8__((v33 + v32 - (a6 & (2 * (v33 + v32))) + a4) ^ a8, 8);
  v35 = (v33 + v32 - (a6 & (2 * (v33 + v32))) + a4) ^ a8 ^ __ROR8__(v32, 61);
  v36 = (v34 + v35) ^ 0x41285C582D9B8689;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0x1717D4ABBED3C077;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (v11 - ((v40 + v39) | v11) + ((v40 + v39) | v15)) ^ v16;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  v44 = ((v17 & (2 * (v43 + v42))) - (v43 + v42) + v18) ^ v19;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = __ROR8__(v44, 8);
  v47 = __ROR8__((v10 - ((v46 + v45) | v10) + ((v46 + v45) | v20)) ^ v21, 8) + ((v10 - ((v46 + v45) | v10) + ((v46 + v45) | v20)) ^ v21 ^ __ROR8__(v45, 61));
  *v28 = ((((v22 & (2 * v47)) - v47 + v23) ^ v24) >> (8 * (v28 & 7u))) ^ *(v12 + v27);
  v48 = !v26;
  return (*(a7 + 8 * (((8 * v48) | (16 * v48)) ^ v13)))(1295574005);
}

uint64_t sub_24476BDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x8D8] = 0x750C1ABFB0567FDBLL;
  STACK[0x3E0] = STACK[0x820];
  LODWORD(STACK[0x5E4]) = STACK[0xA68];
  STACK[0x878] = &STACK[0x8D8];
  LODWORD(STACK[0x3A4]) = 110354906;
  return (*(a7 + 8 * (v7 + 851)))(a1, a2, a3, a7, a5, a6);
}

uint64_t sub_24476BEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v5 + 232);
  v7 = *(v6 - 0x750C1ABFB0567FD3);
  v8 = *(v5 + 520);
  *(v8 - 0x750C1ABFB0567FD3) = v7;
  *(v8 - 0x750C1ABFB0567FDBLL) = *(v6 - 0x750C1ABFB0567FDBLL);
  return (*(a4 + 8 * (((v7 != 0x750C1ABFB0567FDBLL) * ((v4 - 3509) ^ 0x1F1D)) ^ v4)))(a1, a2, a3);
}

uint64_t sub_24476C114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 8 * (v4 ^ 0x5D55)))(a1, a2, a3);
  v7 = STACK[0x358];
  *(*(v5 + 232) - 0x750C1ABFB0567FC3) = 0;
  return (*(v7 + 8 * v4))(v6);
}

uint64_t sub_24476C1AC@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = v2 ^ 0x3BAD;
  v5 = (*(a1 + 8 * (v4 + 21502)))(a2 - 0x750C1ABFB0567FDBLL);
  v6 = STACK[0x358];
  *(v3 + 232) = 0x750C1ABFB0567FDBLL;
  return (*(v6 + 8 * ((LODWORD(STACK[0x424]) == (((v4 - 1202) | 0x804) ^ (v4 + 1216124926))) ^ v4)))(v5);
}

uint64_t sub_24476C364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 8 * (v4 + 20446)))(a1, a2, a3);
  v7 = STACK[0x358];
  *(v5 - 0x750C1ABFB0567FC3) = 0;
  return (*(v7 + 8 * v4))(v6);
}

uint64_t sub_24476C448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v7 - 0x750C1ABFB0567FDBLL) = v5;
  *(v5 - 0x750C1ABFB0567FD3) = *v4;
  return (*(a4 + 8 * v6))(a1, a2, a3);
}

uint64_t sub_24476C584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v6 - 232) = v4 - 1230911237 * ((((2 * (v6 - 232)) | 0x6C4DCDCE) - (v6 - 232) + 1238964505) ^ 0xE5255412) + 3670;
  v7 = (*(a4 + 8 * (v4 + 13746)))(v6 - 232, a2, a3);
  v8 = STACK[0x358];
  *(v5 - 0x58FA20369C313A5ELL) = (v4 - 1480208724) & 0x583A0F3D ^ *(v6 - 224) ^ 0x58CB8E75;
  return (*(v8 + 8 * v4))(v7);
}

uint64_t sub_24476C71C@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v4 = *(v3 + 1048);
  *(v3 + 288) = *(a1 + 8 * v2);
  return (*(a1 + 8 * (((v4 == 0x6286B82630F8F22CLL) * (((a2 - 902630830) & 0x35CCBFBE) - 1338)) ^ a2)))();
}

uint64_t sub_24476C77C@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v3 = a2 - 20819;
  *(v2 + 584) = *(a1 + 8 * v3);
  return (*(a1 + 8 * ((((v3 + 16457) | 0x448) - 17131) ^ v3)))();
}

uint64_t sub_24476C8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v5[131];
  v8 = STACK[0x3B8];
  v9 = &STACK[0xAF0] + STACK[0x3B8];
  v5[132] = v9;
  v10 = v9 + 16;
  v5[43] = v9 + 16;
  STACK[0x398] = (v9 + 48);
  STACK[0x3B8] = ((v4 + 665565219) & 0xD8541FF6 ^ 0xD86) + v8;
  (*(a4 + 8 * (v4 + 9249)))();
  v11 = (*(STACK[0x358] + 8 * (v4 ^ 0x6C61)))(v10, 0, 32);
  v12 = STACK[0x358];
  STACK[0x738] = v6;
  STACK[0x450] = 0;
  LODWORD(STACK[0x534]) = 237377513;
  STACK[0x828] = 0;
  LODWORD(STACK[0x584]) = 813441302;
  STACK[0x6C8] = v7;
  return (*(v12 + 8 * (((v7 != 0x6286B82630F8F22CLL) * (((v4 - 13573) | 0x200) - 596)) ^ v4)))(v11);
}

uint64_t sub_24476C9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 240) = 0;
  LODWORD(STACK[0x83C]) = 813441302;
  return (*(a4 + 8 * (v5 ^ 0x21C7 ^ (v5 + 879684644) & 0xCB913BBE)))(a1, a2, a3);
}

uint64_t sub_24476CC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[126] = v4;
  LODWORD(STACK[0x3D8]) = v7;
  LOWORD(STACK[0x3D6]) = -9963;
  LODWORD(STACK[0x784]) = 237377517;
  LODWORD(STACK[0x86C]) = v5;
  v8[93] = 0x44046241CC2D2A4ELL;
  v8[102] = 0;
  LODWORD(STACK[0x4B4]) = 1365178996;
  return (*(a4 + 8 * v6))();
}

uint64_t sub_24476CD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v8[96] = v7;
  v8[72] = *(a4 + 8 * v4);
  v8[149] = 0;
  LODWORD(STACK[0x6DC]) = 965345306;
  LODWORD(STACK[0x7E4]) = 237377513;
  return (*(a4 + 8 * (((v10 == v9) * ((v6 + 6955) ^ 0x21A3)) ^ (v6 + 8284))))(a1, a2, a3);
}

uint64_t sub_24476CE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (863 * (v6 ^ 0x3A17) - 1711) & (v4 + 9);
  LODWORD(STACK[0x6DC]) = v5 - v7 + 16;
  return (*(a4 + 8 * ((((16 - v7) + (v4 - 353435009) < 0xFFFFFFF6) * (((v6 ^ 0x3A17) + 14864) ^ 0x44A7)) ^ v6)))(a1, a2, a3);
}

uint64_t sub_24476CE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v5 + v4 - ((2 * (v5 + v4) + 46793950) & 0x1C4C2FD2) - 1081402792;
  LODWORD(STACK[0x7E4]) = v8;
  v9 = (*(a4 + 8 * (v6 ^ 0x63D7)))(((v6 ^ 0x3CAC) + 237375787) ^ v8, a2, a3);
  v10 = STACK[0x358];
  *(v7 + 1192) = v9;
  return (*(v10 + 8 * ((7 * (v9 == 0)) ^ v6)))();
}

uint64_t sub_24476D4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a1 + v13 - 0x6844FBE6A61D15B6;
  v18 = __ROR8__(v17 & 0xFFFFFFFFFFFFFFF8, 8);
  v19 = ((0x16480F2CA3743029 - v18) & 0x24D95A6FCF82AE4ELL) + v18 + v10 - ((v18 + v10) & 0x20D95A6FCF82AE4ELL);
  v20 = __ROR8__(v19 ^ 0x6212028D583EF17ALL, 8);
  v19 ^= 0x2FAD8417BC608FCDuLL;
  v21 = (((2 * (v20 + v19)) & 0x863DF203D7CD43ELL) - (v20 + v19) + 0x7BCE106FE14195E0) ^ 0x6C11A5A2A9F23F5ALL;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x8EFC952A6735A9DCLL;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ a3;
  v26 = __ROR8__(v25, 8);
  v27 = __ROR8__(v24, 61);
  v28 = (((2 * (v26 + (v25 ^ v27))) & 0x2EA57472DD57E1E0) - (v26 + (v25 ^ v27)) - 0x1752BA396EABF0F1) ^ 0x498FD7BF62609A6BLL;
  v29 = v28 ^ __ROR8__(v25 ^ v27, 61);
  v30 = *(STACK[0x358] + 8 * v16);
  v31 = __ROR8__(v28, 8);
  v32 = __ROR8__((v31 + v29 - ((2 * (v31 + v29)) & 0xE88C35A3C70E36C8) + 0x74461AD1E3871B64) ^ 0x49BB7CFBBA1A819DLL, 8);
  v33 = (v31 + v29 - ((2 * (v31 + v29)) & 0xE88C35A3C70E36C8) + 0x74461AD1E3871B64) ^ 0x49BB7CFBBA1A819DLL ^ __ROR8__(v29, 61);
  v34 = (v32 + v33 - ((2 * (v32 + v33)) & 0x2A07DFB7FD806E98) - 0x6AFC1024013FC8B4) ^ 0x60DA8EA90D7134AALL;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  *v17 = (((v11 - ((v36 + v35) | v11) + ((v36 + v35) | 0x4967CBFA4B12AF0)) ^ 0x8EAEE4EB2AC9547BLL) >> (8 * (v17 & 7u))) ^ HIBYTE(v14) ^ 0xC0;
  v37 = __ROR8__((v17 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v38 = v37 - ((2 * v37 + 0x136FE1A6B9179FACLL) & 0x2781D76CBF2F0836) + 0x178DC89BC2353F1;
  v39 = v38 ^ 0x510BB354C82BDB2FLL;
  v38 ^= 0x1CB435CE2C75A598uLL;
  v40 = (__ROR8__(v39, 8) + v38) ^ 0x17DFB5CD48B3AABALL;
  v41 = __ROR8__(v40, 8);
  v42 = __ROR8__(v38, 61);
  v43 = (((2 * (v41 + (v40 ^ v42))) & 0x5EF68222E9BD709CLL) - (v41 + (v40 ^ v42)) + 0x5084BEEE8B2147B1) ^ 0xDE782BC4EC14EE6DLL;
  v44 = v43 ^ __ROR8__(v40 ^ v42, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ a3;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v45, 8);
  v48 = (a7 - ((v47 + v46) | a7) + ((v47 + v46) | 0xC7975E5DF76293E0)) ^ 0x66B5CC2404560684;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (((2 * (v50 + v49)) | 0xEF359D77A13F518CLL) - (v50 + v49) + 0x86531442F60573ALL) ^ 0xCA67A8918902323FLL ^ __ROR8__(v49, 61);
  v52 = (__ROR8__((((2 * (v50 + v49)) | 0xEF359D77A13F518CLL) - (v50 + v49) + 0x86531442F60573ALL) ^ 0xCA67A8918902323FLL, 8) + v51) ^ a2;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = __ROR8__(v52, 8);
  *(v17 + 1) = (((((v54 + v53) & 0xFEDA796B56DB599BLL ^ 0x6A08414100124098) + ((v54 + v53) & 0x1258694A924A664 ^ 0x204A1202401) - 1) ^ 0xE030DB112F4A1A13) >> (8 * ((v17 + 1) & 7))) ^ BYTE2(v14) ^ 0x18;
  v55 = __ROR8__((v17 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v56 = ((2 * (v55 + v10)) | 0x942AC465F311F89ELL) - (v55 + v10) - 0x4A156232F988FC4FLL;
  v57 = __ROR8__(v56 ^ 0xCDE3AD06E34A37BLL, 8);
  v56 ^= 0x4161BC4A8A6ADDCCuLL;
  v58 = (v57 + v56) ^ 0x17DFB5CD48B3AABALL;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0x8EFC952A6735A9DCLL;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = __ROR8__(v60, 8);
  v63 = __ROR8__((v62 + v61 - ((2 * (v62 + v61)) & 0x289691EA58AD6270) + 0x144B48F52C56B138) ^ 0xF88377C3B2A3AD06, 8);
  v64 = (v62 + v61 - ((2 * (v62 + v61)) & 0x289691EA58AD6270) + 0x144B48F52C56B138) ^ 0xF88377C3B2A3AD06 ^ __ROR8__(v61, 61);
  v65 = (v63 + v64) ^ 0xA1229279F3349564;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = __ROR8__(v65, 8);
  v68 = (v67 + v66 - ((2 * (v67 + v66)) & 0xFA695A78BC373002) + 0x7D34AD3C5E1B9801) ^ 0x40C9CB16078602F8;
  v69 = v68 ^ __ROR8__(v66, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ a2;
  *(v17 + 2) = (((__ROR8__(v70, 8) + (v70 ^ __ROR8__(v69, 61))) ^ a6) >> (8 * ((v17 + 2) & 7))) ^ BYTE1(v14) ^ 0xF7;
  v71 = __ROR8__((v17 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v72 = ((v71 + v10) | 0xCA9151DD609C8C82) - ((v71 + v10) | v12) + v12;
  v73 = v72 ^ 0x8C5A093FF720D3B6;
  v72 ^= 0xC1E58FA5137EAD01;
  v74 = (__ROR8__(v73, 8) + v72) ^ 0x17DFB5CD48B3AABALL;
  v75 = v74 ^ __ROR8__(v72, 61);
  v76 = __ROR8__(v74, 8);
  v77 = (a4 - ((v76 + v75) | a4) + ((v76 + v75) | 0x1F2BFDC807F7AEBBLL)) ^ v8;
  v78 = v77 ^ __ROR8__(v75, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ a3;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = __ROR8__(v79, 8);
  v82 = __ROR8__(((a8 & (2 * ((v81 + v80) ^ a5))) - ((v81 + v80) ^ a5) + v15) ^ v9, 8);
  v83 = ((a8 & (2 * ((v81 + v80) ^ a5))) - ((v81 + v80) ^ a5) + v15) ^ v9 ^ __ROR8__(v80, 61);
  v84 = (v82 + v83) ^ 0x3DFD662A599D9AF9;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ a2;
  *(v17 + 3) = v14 ^ (((__ROR8__(v86, 8) + (v86 ^ __ROR8__(v85, 61))) ^ a6) >> (8 * ((v17 + 3) & 7))) ^ 4;
  return v30();
}

uint64_t sub_24476DB8C()
{
  v5 = STACK[0x350] - 1389;
  *v0 = v1;
  *v2 = v3;
  return (*(STACK[0x358] + 8 * (v5 ^ 0x2561)))(v4);
}

uint64_t sub_24476DC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = ((v6 - 13766) | 0x20A0) - *(v5 - 0x750C1ABFB0567FCBLL) + 1633805361;
  v8 = v4 + 1105588350 > v7;
  v9 = ((v4 + 1105588350) < 0x56F6EDFF) ^ (v7 < 0x56F6EDFF);
  v10 = v8;
  if (v9)
  {
    v11 = (v4 + 1105588350) < 0x56F6EDFF;
  }

  else
  {
    v11 = v10;
  }

  return (*(a4 + 8 * ((v11 * ((v6 ^ 0x31B1) - 1557)) ^ v6)))(v10);
}

uint64_t sub_24476DEB8@<X0>(uint64_t a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, unsigned int a4@<W8>)
{
  v16 = ((v4 - 10154) | 0x202u) + a3 + ((a3 < a4) << 32) + 0x4B8DE68F16A59469;
  v17 = v16 + v6 - 0x4B8DE68F2D2D9D44;
  v18 = a1 + v10 + v16;
  v19 = __ROR8__(v17 & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = ((0x653FFD844AF1481 - v19) & 0x68192F52EEDDDAFLL) + v19 + v12 - ((v19 + v12) & 0x28192F52EEDDDAFLL);
  v21 = v20 ^ 0xB44F4353FA541F3DLL;
  v20 ^= 0xF92F426E20D344C9;
  v22 = __ROR8__(v21, 8);
  v23 = (v9 - ((v22 + v20) | v9) + ((v22 + v20) | 0x469495A91D8C25D5)) ^ 0xCB2ADC7696B2E3DFLL;
  v24 = v23 ^ __ROR8__(v20, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ v13;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ v14;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = __ROR8__((v29 + v28 - ((2 * (v29 + v28)) & 0x2D1F34E73514C3DCLL) - 0x6970658C65759E12) ^ 0x7A0716CC45B1B23ELL, 8);
  v31 = (v29 + v28 - ((2 * (v29 + v28)) & 0x2D1F34E73514C3DCLL) - 0x6970658C65759E12) ^ 0x7A0716CC45B1B23ELL ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v18 & 0xFFFFFFFFFFFFFFF8, 8);
  v33 = (v30 + v31 - ((2 * (v30 + v31)) & 0xCE208E478446816ELL) - 0x18EFB8DC3DDCBF49) ^ 0xD788E034FA98A794;
  v34 = ((2 * (v32 + v7)) | 0x28EEB20E853F7082) - (v32 + v7) - 0x14775907429FB841;
  v35 = v34 ^ 0x52BC01E5D523E775;
  v36 = v33 ^ __ROR8__(v31, 61);
  v34 ^= 0x1F03877F317D99C2uLL;
  v37 = __ROR8__(v35, 8);
  v38 = __ROR8__(v33, 8) + v36;
  v39 = (((2 * (v37 + v34)) | 0x706841FC22E0D7B8) - (v37 + v34) + 0x47CBDF01EE8F9424) ^ 0xAFEB953359C3C166;
  v40 = v39 ^ __ROR8__(v34, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ v5;
  v42 = __ROR8__(v41, 8);
  v43 = __ROR8__(v40, 61);
  v44 = (((2 * v38) | 0xB55A8D32B8DC1880) - v38 - 0x5AAD46995C6E0C40) ^ 0xA85FDFABBCC79C0;
  v45 = (((v42 + (v41 ^ v43)) ^ 0x94E285B32A857C8ELL) - ((2 * ((v42 + (v41 ^ v43)) ^ 0x94E285B32A857C8ELL)) & 0xC27F96A12606E26) + 0x613FCB509303713) ^ 0x7E394630BD4057A3;
  v46 = v45 ^ __ROR8__(v41 ^ v43, 61);
  v47 = __ROR8__(v45, 8);
  v48 = (((2 * (v47 + v46)) & 0xA32AFCE7CDD2825ALL) - (v47 + v46) + 0x2E6A818C1916BED2) ^ 0x8F4813F5EA222BB6;
  v49 = __ROR8__(v44, 8) + (v44 ^ __ROR8__(v36, 61));
  v50 = v48 ^ __ROR8__(v46, 61);
  v51 = (__ROR8__(v48, 8) + v50) ^ v15;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (((2 * (v53 + v52)) | 0x10C451FDEBF960B8) - (v53 + v52) + 0x779DD7010A034FA4) ^ 0x7DBB498C064DB3BALL;
  v55 = __ROR8__(v54, 8) + (v54 ^ __ROR8__(v52, 61));
  *v18 = (((v8 - (v55 | v8) + (v55 | 0x36646C87B986A7D1)) ^ 0xBC5CF4D337FED95ALL) >> (8 * (v18 & 7u))) ^ (((v49 - ((2 * v49) & 0x1FE01D123E3422C8) + 0xFF00E891F1A1164) ^ 0x67487D71E3CD4FACLL) >> (8 * (v17 & 7u))) ^ *v17;
  return (*(v11 + 8 * ((24662 * (a2 == 0)) ^ v4)))();
}

uint64_t sub_24476E3A4()
{
  v0 = STACK[0x350] + 21110;
  STACK[0x340] = STACK[0x890];
  v1 = LODWORD(STACK[0x6DC]) - ((2 * LODWORD(STACK[0x6DC]) - 1930690612) & 0xD71894E4) + 839010904;
  return (*(STACK[0x358] + 8 * ((15 * (((2 * v1) & 0x4F6EFDBE ^ 0x470894A4) + (v1 ^ 0xCC3B34AD) + 1559886266 == 78739609)) ^ v0)))();
}

uint64_t sub_24476E470(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = v4 ^ 0x3E1Eu;
  STACK[0x330] = ((LODWORD(STACK[0x330]) - 1462231131) ^ 0xC3E7BFFFEF2CF7FCLL) + 0x7EFFCBF87FFFCEA4 + ((v6 + 0x1DE59D2E5) & (2 * (LODWORD(STACK[0x330]) - 1462231131)));
  return (*(STACK[0x358] + 8 * ((11 * (a4 + v5 + ((v6 + 14930) ^ 0x5848D644u) >= ((v6 - 6761) | 0x414u) - 1718)) ^ v6)))();
}

uint64_t sub_24476E634(int a1)
{
  v2 = *(STACK[0x358] + 8 * v1);
  *&STACK[0x320] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  LODWORD(STACK[0x300]) = ((598 * (v1 ^ 0x2C90)) ^ 0xFFFFD39A) & a1;
  *&STACK[0x310] = xmmword_245010D40;
  return v2();
}

uint64_t sub_24476E794(uint64_t a1, int a2, int a3, double a4, int8x16_t a5, int64x2_t a6, int8x16_t a7, int64x2_t a8, int8x16_t a9, int8x16_t a10, int8x16_t a11, uint64_t a12, int a13, int a14, int a15, int a16)
{
  v40 = v16 + v17 + v18;
  v41.i64[0] = v40 + (a3 + a14);
  v42.i64[0] = v40 + (a3 + a16);
  v41.i64[1] = v40 + (a3 + a2 + v24);
  v42.i64[1] = v40 + (a3 + a15);
  v43.i64[0] = v40 + (a3 + v21);
  v44.i64[0] = v40 + (a3 + v23);
  v43.i64[1] = v40 + (a3 + v20);
  v44.i64[1] = v40 + (a3 + v22);
  v45 = vandq_s8(v44, *&STACK[0x320]);
  v46 = vandq_s8(v43, *&STACK[0x320]);
  v47 = vandq_s8(v42, *&STACK[0x320]);
  v48 = vandq_s8(v41, *&STACK[0x320]);
  v49 = vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL);
  v50 = vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL);
  v51 = vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL);
  v52 = vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL);
  v53 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v51, v51), a6), a7), v51);
  v54 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v52, v52), a6), a7), v52);
  v55 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v50, v50), a6), a7), v50), a8);
  v56 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v49, v49), a6), a7), v49), a8);
  v57 = veorq_s8(v56, a9);
  v58 = veorq_s8(v55, a9);
  v59 = veorq_s8(v55, a10);
  v60 = veorq_s8(v56, a10);
  v61 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v59), a11);
  v62 = vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL);
  v63 = vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL);
  v64 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v60), a11);
  v65 = veorq_s8(v64, v63);
  v66 = veorq_s8(v61, v62);
  v67 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v66);
  v69 = veorq_s8(vaddq_s64(v67, v65), v27);
  v70 = vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL);
  v71 = veorq_s8(v68, v27);
  v72 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v73 = veorq_s8(v69, v70);
  v74 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v73);
  v76 = vaddq_s64(v74, v72);
  v77 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v75, v28), vorrq_s8(v75, v26)), v26), v29);
  v78 = vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL);
  v79 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v80 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v76, v28), vorrq_s8(v76, v26)), v26), v29);
  v81 = veorq_s8(v80, v79);
  v82 = veorq_s8(v77, v78);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v82);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v81);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v83, v30), vorrq_s8(v83, v31)), v31), v32);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v84, v30), vorrq_s8(v84, v31)), v31), v32);
  v87 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v88 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v89 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v87), v33);
  v90 = vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL);
  v91 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v88), v33);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v93 = veorq_s8(v89, v90);
  v94 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v93);
  v96 = vaddq_s64(v94, v92);
  v97 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v96, v96), v34), v96), v35), v36);
  v98 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v95, v95), v34), v95), v35), v36);
  v99 = vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL);
  v100 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v101 = veorq_s8(v97, v99);
  v102 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v103 = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v104 = vaddq_s64(v53, a8);
  v105 = vaddq_s64(v103, v101);
  v106 = vaddq_s64(v102, v100);
  v143.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v105, v105), v37), v105), v38), v39), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), a5)));
  v143.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v106, v106), v37), v106), v38), v39), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), a5)));
  v107 = veorq_s8(v104, a9);
  v108 = veorq_s8(v104, a10);
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), a11);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), v27);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v113, v28), vorrq_s8(v113, v26)), v26), v29);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v116, v30), vorrq_s8(v116, v31)), v31), v32);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), v33);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v121, v121), v34), v121), v35), v36);
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL)));
  v124 = vaddq_s64(v54, a8);
  v143.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v123, v123), v37), v123), v38), v39), vnegq_s64(vandq_s8(vshlq_n_s64(v43, 3uLL), a5)));
  v125 = veorq_s8(v124, a9);
  v126 = veorq_s8(v124, a10);
  v127 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126), a11);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v129 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128), v27);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v131, v28), vorrq_s8(v131, v26)), v26), v29);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v134, v30), vorrq_s8(v134, v31)), v31), v32);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v137 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136), v33);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138);
  v140 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v139, v139), v34), v139), v35), v36);
  v141 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL)));
  v143.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v141, v141), v37), v141), v38), v39), vnegq_s64(vandq_s8(vshlq_n_s64(v44, 3uLL), a5)));
  *(v44.i64[0] - 7) = vrev64_s8(*&vqtbl4q_s8(v143, *&STACK[0x310]));
  return (*(STACK[0x358] + 8 * (((a3 != a13) * v25) ^ v19)))(a1, (a2 - 8));
}

uint64_t sub_24476EE54@<X0>(uint64_t a1@<X1>, int a2@<W3>, int a3@<W5>, unint64_t a4@<X7>, int a5@<W8>)
{
  STACK[0x2C0] = *(STACK[0x358] + 8 * (a5 + 17402));
  v12 = v10;
  v13 = a2 + v5 + a3;
  *&STACK[0x260] = vdupq_n_s64(0x38uLL);
  *&STACK[0x270] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  LODWORD(STACK[0x250]) = v13 - 8;
  *&STACK[0x310] = vdupq_n_s64(a4);
  *&STACK[0x320] = vdupq_n_s64(v9);
  *&STACK[0x240] = vdupq_n_s64(v6);
  LODWORD(STACK[0x230]) = v13 - 7;
  LODWORD(STACK[0x220]) = v13 - 6;
  *&STACK[0x200] = vdupq_n_s64(v8);
  *&STACK[0x210] = vdupq_n_s64(v7);
  *&STACK[0x300] = vdupq_n_s64(v12);
  *&STACK[0x2E0] = vdupq_n_s64(v11);
  *&STACK[0x2F0] = vdupq_n_s64(0x771D26CAC39558FBuLL);
  *&STACK[0x2D0] = vdupq_n_s64(0x553B2A364E371E0CuLL);
  return (STACK[0x2C0])((v13 + 2), a1, (v13 + 5), (v13 + 6), 4294967280);
}

uint64_t sub_24476F044(int a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, int a7, int a8, int8x16_t a53, int8x16_t a60, int64x2_t a61, int8x16_t a62, int8x16_t a63, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int8x16_t a54, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t _190)
{
  v91 = v79 + v70 + v71;
  *&v92 = v91 + (LODWORD(STACK[0x250]) + a5 + 16);
  *&v93 = v91 + (LODWORD(STACK[0x220]) + a5 + 16);
  *(&v92 + 1) = v91 + (v74 + a5 + 16);
  *(&v93 + 1) = v91 + (LODWORD(STACK[0x230]) + a5 + 16);
  *&STACK[0x2B0] = v93;
  *&STACK[0x2C0] = v92;
  v94.i64[0] = v91 + (v76 + a5 + 16);
  v94.i64[1] = v91 + (v73 + a5 + 16);
  v95.i64[0] = v91 + (a1 + a5 + 16);
  v95.i64[1] = v91 + (v72 + a5 + 16);
  v96.i64[0] = v91 + (v77 + a5 + 16);
  v97.i64[0] = v91 + (a4 + a5 + 16);
  v96.i64[1] = v91 + (v68 + a5 + 16);
  v97.i64[1] = v91 + (a3 + a5 + 16);
  v98 = *&STACK[0x270];
  v99 = vandq_s8(v97, *&STACK[0x270]);
  v100 = vandq_s8(v96, *&STACK[0x270]);
  v101 = vandq_s8(v95, *&STACK[0x270]);
  v102 = vandq_s8(v94, *&STACK[0x270]);
  v103 = vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL);
  v104 = vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL);
  v105 = vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL);
  v106 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v107 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v103, v103), *&STACK[0x320]), *&STACK[0x310]), v103);
  v108 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v104, v104), *&STACK[0x320]), *&STACK[0x310]), v104);
  v109 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v105, v105), *&STACK[0x320]), *&STACK[0x310]), v105);
  *&STACK[0x2A0] = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v106, v106), *&STACK[0x320]), *&STACK[0x310]), v106);
  v110 = vaddq_s64(v108, *&STACK[0x240]);
  v111 = vaddq_s64(v107, *&STACK[0x240]);
  v112 = *&STACK[0x240];
  v113 = veorq_s8(v111, v81);
  v114 = veorq_s8(v110, v81);
  v115 = *&STACK[0x200];
  v116 = veorq_s8(v110, *&STACK[0x200]);
  v117 = veorq_s8(v111, *&STACK[0x200]);
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v116), v85);
  v119 = vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL);
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v117), v85);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v122 = veorq_s8(v118, v119);
  v123 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v122);
  v125 = veorq_s8(vaddq_s64(v123, v121), v84);
  v126 = veorq_s8(v124, v84);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v128 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v128);
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127);
  v131 = *&STACK[0x300];
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v129, *&STACK[0x300]), vorrq_s8(v129, v87)), v87), a68);
  v133 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v130, *&STACK[0x300]), vorrq_s8(v130, v87)), v87), a68);
  v134 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v135 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v136 = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v135);
  v138 = vaddq_s64(v136, v134);
  v139 = *&STACK[0x2F0];
  v140 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v137, a67), vorrq_s8(v137, v86)), v86), *&STACK[0x2F0]);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v138, a67), vorrq_s8(v138, v86)), v86), *&STACK[0x2F0]);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v143 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v144 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142), v90);
  v145 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v143), v90);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v147 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v148 = vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL);
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v147);
  v150 = vaddq_s64(v148, v146);
  v151 = *&STACK[0x2D0];
  v152 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v150, v150), *&STACK[0x2D0]), v150), a66), a65);
  v153 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v149, v149), *&STACK[0x2D0]), v149), a66), a65);
  v154 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v155 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v156 = vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL);
  v157 = vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL);
  v158.i64[0] = v91 + (a8 + a5 + 16);
  v158.i64[1] = v91 + (a7 + a5 + 16);
  *&STACK[0x280] = v158;
  v159 = vaddq_s64(v109, v112);
  v160 = vaddq_s64(v157, v155);
  v161 = vaddq_s64(v156, v154);
  v273.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v160, v160), v88), v160), v89), v83), vnegq_s64(vandq_s8(vshlq_n_s64(v94, 3uLL), v82)));
  v273.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v161, v161), v88), v161), v89), v83), vnegq_s64(vandq_s8(vshlq_n_s64(v95, 3uLL), v82)));
  v162 = veorq_s8(v159, v81);
  v163 = veorq_s8(v159, v115);
  v164 = vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL);
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), v85);
  v166 = veorq_s8(v165, v164);
  v167 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166), v84);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v169, v131), vorrq_s8(v169, v87)), v87), a68);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171);
  v173 = v139;
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v172, a67), vorrq_s8(v172, v86)), v86), v139);
  v175 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v176 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175), v90);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v178 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177);
  v179 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v178, v178), v151), v178), a66), a65);
  v139.i64[0] = v91 + (v80 + a5 + 16);
  v139.i64[1] = v91 + (v75 + a5 + 16);
  *&STACK[0x290] = v139;
  v180 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL)));
  v181 = vsubq_s64(vorrq_s8(vaddq_s64(v180, v180), v88), v180);
  v182 = vandq_s8(v139, v98);
  v183 = vaddq_s64(*&STACK[0x2A0], v112);
  v273.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v181, v89), v83), vnegq_s64(vandq_s8(vshlq_n_s64(v96, 3uLL), v82)));
  v184 = veorq_s8(v183, v81);
  v185 = veorq_s8(v183, v115);
  v186 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185), v85);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v188 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187), v84);
  v189 = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v190 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), v189);
  v191 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v190, v131), vorrq_s8(v190, v87)), v87), a68);
  v192 = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL));
  v193 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v192);
  v194 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v193, a67), vorrq_s8(v193, v86)), v86), v173);
  v195 = veorq_s8(v194, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v196 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), v195), v90);
  v197 = veorq_s8(v196, vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL));
  v198 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), v197);
  v199 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v198, v198), v151), v198), a66), a65);
  v200 = veorq_s8(v199, vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL));
  v201 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v202 = vandq_s8(v158, v98);
  v203 = vaddq_s64(v201, v200);
  v204 = vandq_s8(*&STACK[0x2B0], v98);
  v273.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v203, v203), v88), v203), v89), v83), vnegq_s64(vandq_s8(vshlq_n_s64(v97, 3uLL), v82)));
  v205 = vandq_s8(*&STACK[0x2C0], v98);
  v206 = vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL);
  v207 = vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL);
  v208 = vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL);
  v209 = vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL);
  v210 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v206, v206), *&STACK[0x320]), *&STACK[0x310]), v206);
  v211 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v209, v209), *&STACK[0x320]), *&STACK[0x310]), v209);
  v212 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v207, v207), *&STACK[0x320]), *&STACK[0x310]), v207), v112);
  v213 = vaddq_s64(v210, v112);
  v209.i64[0] = vqtbl4q_s8(v273, a54).u64[0];
  v214 = veorq_s8(v213, v81);
  v273.val[0] = veorq_s8(v212, v81);
  v273.val[1] = veorq_s8(v212, v115);
  v273.val[2] = veorq_s8(v213, v115);
  v273.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v273.val[0], 0x38uLL), v273.val[0], 8uLL), v273.val[1]), v85);
  v215 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), v273.val[2]), v85);
  v216 = vsraq_n_u64(vshlq_n_s64(v273.val[1], 3uLL), v273.val[1], 0x3DuLL);
  v273.val[1] = veorq_s8(v215, vsraq_n_u64(vshlq_n_s64(v273.val[2], 3uLL), v273.val[2], 0x3DuLL));
  v273.val[2] = veorq_s8(v273.val[0], v216);
  v217 = vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL);
  v218 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v273.val[0], 0x38uLL), v273.val[0], 8uLL), v273.val[2]);
  v273.val[0] = veorq_s8(vaddq_s64(v217, v273.val[1]), v84);
  v219 = vsraq_n_u64(vshlq_n_s64(v273.val[1], 3uLL), v273.val[1], 0x3DuLL);
  v220 = veorq_s8(v218, v84);
  v273.val[1] = veorq_s8(v220, vsraq_n_u64(vshlq_n_s64(v273.val[2], 3uLL), v273.val[2], 0x3DuLL));
  v273.val[2] = veorq_s8(v273.val[0], v219);
  v221 = vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL);
  v222 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v273.val[0], 0x38uLL), v273.val[0], 8uLL), v273.val[2]);
  v273.val[0] = vaddq_s64(v221, v273.val[1]);
  v223 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v222, *&STACK[0x300]), vorrq_s8(v222, v87)), v87), a68);
  v273.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v273.val[0], *&STACK[0x300]), vorrq_s8(v273.val[0], v87)), v87), a68);
  v273.val[1] = veorq_s8(v273.val[0], vsraq_n_u64(vshlq_n_s64(v273.val[1], 3uLL), v273.val[1], 0x3DuLL));
  v273.val[2] = veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v273.val[2], 3uLL), v273.val[2], 0x3DuLL));
  v224 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v273.val[2]);
  v273.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v273.val[0], 0x38uLL), v273.val[0], 8uLL), v273.val[1]);
  v225 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v224, a67), vorrq_s8(v224, v86)), v86), *&STACK[0x2F0]);
  v273.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v273.val[0], a67), vorrq_s8(v273.val[0], v86)), v86), *&STACK[0x2F0]);
  v273.val[1] = veorq_s8(v273.val[0], vsraq_n_u64(vshlq_n_s64(v273.val[1], 3uLL), v273.val[1], 0x3DuLL));
  v273.val[2] = veorq_s8(v225, vsraq_n_u64(vshlq_n_s64(v273.val[2], 3uLL), v273.val[2], 0x3DuLL));
  v273.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v273.val[0], 0x38uLL), v273.val[0], 8uLL), v273.val[1]), *&STACK[0x2E0]);
  v226 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL), v273.val[2]), *&STACK[0x2E0]);
  v227 = vsraq_n_u64(vshlq_n_s64(v273.val[1], 3uLL), v273.val[1], 0x3DuLL);
  v273.val[1] = veorq_s8(v226, vsraq_n_u64(vshlq_n_s64(v273.val[2], 3uLL), v273.val[2], 0x3DuLL));
  v273.val[2] = veorq_s8(v273.val[0], v227);
  v228 = vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL);
  v229 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v273.val[0], 0x38uLL), v273.val[0], 8uLL), v273.val[2]);
  v273.val[0] = vaddq_s64(v228, v273.val[1]);
  v273.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v273.val[0], v273.val[0]), *&STACK[0x2D0]), v273.val[0]), a66), a65);
  v230 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v229, v229), *&STACK[0x2D0]), v229), a66), a65);
  v231 = vsraq_n_u64(vshlq_n_s64(v273.val[1], 3uLL), v273.val[1], 0x3DuLL);
  v273.val[1] = veorq_s8(v230, vsraq_n_u64(vshlq_n_s64(v273.val[2], 3uLL), v273.val[2], 0x3DuLL));
  v273.val[2] = veorq_s8(v273.val[0], v231);
  v232 = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v233 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v208, v208), *&STACK[0x320]), *&STACK[0x310]), v208), v112);
  v234 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v273.val[0], 0x38uLL), v273.val[0], 8uLL), v273.val[2]);
  v273.val[0] = vaddq_s64(v232, v273.val[1]);
  v273.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v234, v234), v88), v234), v89), v83), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2C0], 3uLL), v82)));
  v273.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v273.val[0], v273.val[0]), v88), v273.val[0]), v89), v83), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2B0], 3uLL), v82)));
  v235 = veorq_s8(v233, v81);
  v236 = veorq_s8(v233, v115);
  v237 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL), v236), v85);
  v238 = veorq_s8(v237, vsraq_n_u64(vshlq_n_s64(v236, 3uLL), v236, 0x3DuLL));
  v239 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v237, 0x38uLL), v237, 8uLL), v238), v84);
  v240 = veorq_s8(v239, vsraq_n_u64(vshlq_n_s64(v238, 3uLL), v238, 0x3DuLL));
  v241 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL), v240);
  v242 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v241, *&STACK[0x300]), vorrq_s8(v241, v87)), v87), a68);
  v243 = veorq_s8(v242, vsraq_n_u64(vshlq_n_s64(v240, 3uLL), v240, 0x3DuLL));
  v244 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL), v243);
  v245 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v244, a67), vorrq_s8(v244, v86)), v86), *&STACK[0x2F0]);
  v246 = veorq_s8(v245, vsraq_n_u64(vshlq_n_s64(v243, 3uLL), v243, 0x3DuLL));
  v247 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v245, 0x38uLL), v245, 8uLL), v246), *&STACK[0x2E0]);
  v248 = veorq_s8(v247, vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL));
  v249 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), v248);
  v250 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v249, v249), *&STACK[0x2D0]), v249), a66), a65);
  v251 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL), veorq_s8(v250, vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL)));
  v252 = vaddq_s64(v211, v112);
  v273.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v251, v251), v88), v251), v89), v83), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x280], 3uLL), v82)));
  v253 = veorq_s8(v252, v81);
  v254 = veorq_s8(v252, v115);
  v255 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v253, 0x38uLL), v253, 8uLL), v254), v85);
  v256 = veorq_s8(v255, vsraq_n_u64(vshlq_n_s64(v254, 3uLL), v254, 0x3DuLL));
  v257 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v255, 0x38uLL), v255, 8uLL), v256), v84);
  v258 = veorq_s8(v257, vsraq_n_u64(vshlq_n_s64(v256, 3uLL), v256, 0x3DuLL));
  v259 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL), v258);
  v260 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v259, *&STACK[0x300]), vorrq_s8(v259, v87)), v87), a68);
  v261 = veorq_s8(v260, vsraq_n_u64(vshlq_n_s64(v258, 3uLL), v258, 0x3DuLL));
  v262 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260, 0x38uLL), v260, 8uLL), v261);
  v263 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v262, a67), vorrq_s8(v262, v86)), v86), *&STACK[0x2F0]);
  v264 = veorq_s8(v263, vsraq_n_u64(vshlq_n_s64(v261, 3uLL), v261, 0x3DuLL));
  v265 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL), v264), *&STACK[0x2E0]);
  v266 = veorq_s8(v265, vsraq_n_u64(vshlq_n_s64(v264, 3uLL), v264, 0x3DuLL));
  v267 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL), v266);
  v268 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v267, v267), *&STACK[0x2D0]), v267), a66), a65);
  v269 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL), veorq_s8(v268, vsraq_n_u64(vshlq_n_s64(v266, 3uLL), v266, 0x3DuLL)));
  v270 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v269, v269), v88), v269), v89), v83), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x290], 3uLL), v82)));
  v209.i64[1] = vqtbl4q_s8(v273, a54).u64[0];
  v271 = vrev64q_s8(v209);
  *(v91 + (a4 + a5 + 16) - 15) = vextq_s8(v271, v271, 8uLL);
  return (*(STACK[0x358] + 8 * ((7792 * (v69 == a5)) ^ v78)))();
}

uint64_t sub_24476FD8C@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X4>, int a5@<W6>, uint64_t a6@<X7>, int a7@<W8>)
{
  v23 = STACK[0x340] + STACK[0x330] - 0x42E78BF86F2CC6A0 + (v9 + a3);
  v24 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = ((v17 + 2 * v24) & a6) - v24 + v13;
  v26 = __ROR8__(v25 ^ v14, 8);
  v27 = v25 ^ v15;
  v28 = (v26 + v27) ^ a4;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x8EFC952A6735A9DCLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = __ROR8__((v7 - ((v32 + v31) | v7) + ((v32 + v31) | v18)) ^ v19, 8);
  v34 = (v7 - ((v32 + v31) | v7) + ((v32 + v31) | v18)) ^ v19 ^ __ROR8__(v31, 61);
  v35 = (v8 - ((v33 + v34) | v8) + ((v33 + v34) | v20)) ^ 0x771D26CAC39558FBLL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ v22;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (((2 * (v39 + v38)) & 0x553B2A364E371E0CLL) - (v39 + v38) + v21) ^ v16;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = __ROR8__(v40, 8);
  *v23 = (((v10 | (2 * (v42 + v41))) - (v42 + v41) + v11) ^ 0x98A79D594FD45327) >> (8 * (v23 & 7u));
  LODWORD(v23) = ((a7 + a1) ^ a2) + v9 == a5;
  return (*(STACK[0x358] + 8 * (((16 * v23) | (32 * v23)) ^ v12)))();
}

uint64_t sub_24476FF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, _DWORD *a48)
{
  **(v49 + 768) = STACK[0x340];
  *a48 = STACK[0x7E4];
  return (*(STACK[0x358] + 8 * v48))(a1, a2, a3);
}

uint64_t sub_2447700E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v9 - 232) = v7 - 1230911237 * ((((v9 - 232) | 0x77FF9072) - ((v9 - 232) & 0x77FF9072)) ^ 0x24FC2287) + 4192;
  v10 = (*(a4 + 8 * (v7 + 14268)))(v9 - 232, a2, a3);
  v11 = STACK[0x358];
  *(v6 + v4 - 514141447) = *(v8 + 1992) ^ 0xB0;
  return (*(v11 + 8 * (((v6 != v5 + 15) * ((v7 - 5274) ^ 0xDFE)) ^ v7)))(v10);
}

uint64_t sub_244770410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (v4 + 775967976) & 0x11BF9FFE;
  *(v5 + v6 + v7 + ((v8 + 1137667201) & 0x3C308BCE)) = 0;
  return (*(a4 + 8 * v8))(a1, a2, a3);
}

uint64_t sub_2447704B4@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v4 = a2 ^ 0xED4;
  v5 = 47 * (a2 ^ 0x1AF5);
  v6 = v2[13];
  v2[16] = v6;
  v7 = v2[92];
  v8 = *(v7 - 0x6286B82630F8F1C8);
  v9 = v7 - 0x18B00F50F48C0FALL;
  v10 = v2[132];
  LODWORD(v7) = (*(v7 - 0x6286B82630F8F1B4) ^ (v5 - 2136316652)) + 792685600 + ((2 * *(v7 - 0x6286B82630F8F1B4)) & 0xFFE12FF8 ^ 0xFEA12110);
  v11 = LODWORD(STACK[0x534]) ^ 0xC6E9B556;
  v12 = 201256697 * ((((2 * (v3 - 232)) | 0xFD11FDE8) - (v3 - 232) + 24576268) ^ 0x8837F8BD);
  v2[251] = v6;
  v2[249] = v10;
  *(v3 - 192) = v7 ^ v12;
  *(v3 - 188) = v8 - v12 - ((2 * v8 + 382429722) & 0xEBCD1B30) + 21775013;
  *(v3 - 180) = v11 + v12;
  v2[255] = v6;
  *(v3 - 232) = v4 - v12 + 11695;
  *(v3 - 216) = v12 ^ 0x68BD8DA2;
  v2[252] = v9;
  v13 = (*(a1 + 8 * (v4 ^ 0x4E27)))(v3 - 232);
  return (*(STACK[0x358] + 8 * ((9588 * (*(v3 - 184) == 1216124116)) ^ v4)))(v13);
}

uint64_t sub_2447706F8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v3 = LODWORD(STACK[0x534]);
  *(v2 + 1144) = *(a1 + 8 * a2);
  return (*(a1 + 8 * (((a2 + 16551) ^ 0x5486) + a2)))(v3);
}

uint64_t sub_2447708C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 8 * ((v4 ^ 0x470B) + 2220));
  STACK[0x340] = STACK[0x398];
  v7 = v6();
  v8 = STACK[0x358];
  STACK[0x2C0] = *(v5 + 376);
  return (*(v8 + 8 * (v4 ^ 0x470B)))(v7);
}

uint64_t sub_24477092C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x528]) = STACK[0x2E0];
  LOBYTE(STACK[0x4EB]) = STACK[0x330];
  LODWORD(STACK[0x81C]) = STACK[0x310];
  STACK[0x908] = STACK[0x320];
  LODWORD(STACK[0x914]) = v9;
  return (*(a4 + 8 * ((((((v8 - 5098) | 0x204) + 5108) ^ 0x4ABF) * (a8 == 1216124116)) ^ v8)))(a1, a2, a3);
}

uint64_t sub_244770A60(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[126] = v4;
  LODWORD(STACK[0x3D8]) = v6;
  LOWORD(STACK[0x3D6]) = 7865;
  LODWORD(STACK[0x784]) = a1;
  LODWORD(STACK[0x86C]) = 237377513;
  v8[93] = 0x44046241CC2D2A4ELL;
  LODWORD(STACK[0x4B4]) = 1893669865;
  v8[102] = v7;
  return (*(a4 + 8 * v5))();
}

uint64_t sub_244770D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (v5 + v4);
  v9 = ((2 * v8) & 0xB76FDEE2) + (v8 ^ 0xFCF77FFF5BB7EF71) + a1;
  *(v9 + (((v6 - 6124) | 0x2C02u) ^ 0x3088000A4483E3DLL)) = 0;
  v9 += 0x3088000A4481090;
  *v9 = 0;
  *(v9 + 2) = 0;
  *(((2 * (v8 + 4)) & 0xE7FBFB3ELL) + ((v8 + 4) ^ 0xCDCB1EED73FDFD9FLL) + a1 + 0x3234E1128C020261) = -9392;
  v10 = ((2 * (v8 + 6)) & 0x1F79FDBEELL) + ((v8 + 6) ^ 0xBE7F7FFFFBCFEDF7) + a1 + 0x4180800004301209;
  *v10 = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = (-31 - (((32 - 2 * v7) & 0xE3) + v7)) ^ 0xD1;
  return (*(a4 + 8 * (v6 ^ (79 * (((16 - v7) ^ 0xF477F9E3F4FD9EAFLL) + 2 * ((16 - v7) & 0xFLL) == 0xF477F9E3F4FD9EAFLL)))))();
}

uint64_t sub_244770F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, int a3@<W8>)
{
  *v4 = a1;
  *v5 = a3;
  return (*(a2 + 8 * v3))();
}

uint64_t sub_244770F90@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  *(v2 + 1224) = *(v2 + 1088);
  LODWORD(STACK[0x558]) = STACK[0x584];
  return (*(a1 + 8 * a2))();
}

uint64_t sub_244770FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x3DC]) = a8;
  *(v9 + 648) = &STACK[0x738];
  LODWORD(STACK[0x8AC]) = -1292923695;
  return (*(a4 + 8 * v8))(a1, a2, a3);
}

uint64_t sub_244771044@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v4 = 1376033868 - *(v2 - 0x750C1ABFB0567FCBLL);
  v5 = (a2 + 82200867 < ((v3 - 1292441268) & 0x4D08EEBFu) + 1201241459) ^ (v4 < 0x47998431);
  v6 = a2 + 82200867 > v4;
  if (v5)
  {
    v7 = a2 + 82200867 < ((v3 - 1292441268) & 0x4D08EEBFu) + 1201241459;
  }

  else
  {
    v7 = v6;
  }

  return (*(a1 + 8 * ((98 * !v7) ^ v3)))();
}

uint64_t sub_244771170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 - 0x750C1ABFB0567FCBLL) - (((*(v4 - 0x750C1ABFB0567FCBLL) << ((93 * v5) ^ 0xCF)) + 1797902280) & 0x6EB399F4) + 753841374;
  v7 = (v6 ^ 0x5C267F05) + (((v5 ^ 0x1700) + 2248) ^ 0x46B3091A ^ (2 * v6) & 0xD6FF67FE) != 1803531263;
  return (*(a4 + 8 * (v7 | (8 * v7) | v5)))(a1);
}

uint64_t sub_244771304(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5)
{
  v13 = (a5 | ((a5 < v7) << 32)) + 0x11AE0A4DF081507ELL;
  v14 = ((v6 - 1898830319) & 0x712DDBF3) + v13 + v8 - 0x11AE0A4E51860F09;
  v15 = __ROR8__(v14 & 0xFFFFFFFFFFFFFFF8, 8);
  v16 = (v12 - v15) & 0xED4F91AA4A423CBDLL | (v15 + a2) & 0x12B06E55B5BDC342;
  v17 = __ROR8__(v16 ^ 0x5F81400C9EFBFE2FLL, 8);
  v16 ^= 0x12E14131447CA5DBuLL;
  v18 = (v17 + v16) ^ v11;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ v5;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (v9 - ((v22 + v21) | v9) + ((v22 + v21) | 0x8D3B3089BCC3568ELL)) ^ 0x9A2CE422021096F9;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (((2 * (v25 + v24)) | 0xF728AA7174275F3ALL) - (v25 + v24) + 0x46BAAC745EC5063) ^ 0x171CD98765287C4DLL;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((2 * (v28 + v27)) & 0xE1834BC7A0790E66) - (v28 + v27) + 0xF3E5A1C2FC378CCLL) ^ 0x3FA6FD0B17789FEFLL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (((2 * (v31 + v30)) & 0x660E5FCC7C2DD5DALL) - (v31 + v30) + 0x4CF8D019C1E91512) ^ 0x1CD06B7A264B6092;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v32, 8);
  *(a1 + a3 + v13) = (((((2 * (v34 + v33)) | 0xC86F2EB5B2D86E6CLL) - (v34 + v33) - 0x6437975AD96C3736) ^ 0xC8FE4A225BB69FELL) >> (8 * (v14 & 7u))) ^ *v14;
  return (*(v10 + 8 * ((5623 * (a4 == 0)) ^ v6)))();
}

uint64_t sub_2447715C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v6 < v4;
  *(v8 + v5 - 0x1A4A7C6654488C80) = 0;
  if (v9 == v8 - 0x1A4A7C6567C0EB25 < v4)
  {
    v9 = v8 - 0x1A4A7C6567C0EB25 < v6;
  }

  return (*(a4 + 8 * ((!v9 * (v7 - 6733)) ^ v7)))(a1, a2, a3);
}

uint64_t sub_244771704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x8D4]) = a8;
  STACK[0x388] = &STACK[0x800];
  LODWORD(STACK[0x4EC]) = -1806005378;
  return (*(a4 + 8 * v8))(a1, a2, a3);
}

uint64_t sub_2447717DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 1784) = *(a4 + 8 * v4);
  *(v6 - 232) = 1649972239 * ((((v6 - 232) | 0xF17ECBF) - ((v6 - 232) & 0xF17ECBF)) ^ 0xD4AFC0C7) - 572929518 + v4;
  STACK[0xBB0] = &STACK[0xAE0];
  v7 = (*(a4 + 8 * (v4 + 21879)))(v6 - 232, a2, a3);
  return (*(STACK[0x358] + 8 * ((((((*(v6 - 228) - (v4 - 38)) | (v4 - 38 - *(v6 - 228))) >> 7) & 1) * (((v4 - 127) | 0x49) - 1054)) ^ (v4 + 20760))))(v7);
}

uint64_t sub_24477189C()
{
  v5 = (v1 - 1155) | 0x42BLL;
  v6 = v3[31];
  v7 = v3[153];
  v8 = STACK[0x558];
  v9 = 715682041 * ((0x2CFD05204B0BC6AALL - (v2 | 0x2CFD05204B0BC6AALL) + (v2 | 0xD302FADFB4F43955)) ^ 0xAAD379FA41B2C207);
  v3[251] = *(v0 + 8 * v5) + v9;
  v3[252] = v6;
  v3[249] = v7;
  *(v4 - 212) = -1811545066 - v9 + v5 + 34;
  *(v4 - 232) = v8 - v9 - 320953821;
  v10 = (*(v0 + 8 * (v5 + 21957)))(v4 - 232);
  return (*(STACK[0x358] + 66416))(v10);
}

uint64_t sub_244771988()
{
  v5 = v3[31];
  v6 = v3[153];
  v7 = *(v0 + 8 * v1);
  *(v4 - 232) = LODWORD(STACK[0x558]) - 715682041 * ((v2 - 2089813755 - 2 * (v2 & 0x836FF905)) ^ 0x76290257) - 199950376;
  *(v4 - 212) = -1811545066 - 715682041 * ((v2 - 2089813755 - 2 * (v2 & 0x836FF905)) ^ 0x76290257) + v1;
  v3[249] = v6;
  v3[252] = v5;
  v3[251] = v7 + 715682041 * ((v2 + 0x5FFCC488836FF905 - 2 * (v2 & 0x5FFCC488836FF905)) ^ 0x262D47AD76290257);
  v8 = (*(v0 + 8 * (v1 + 21923)))(v4 - 232);
  return (*(STACK[0x358] + 8 * ((14872 * (v1 != 914076175)) ^ (v1 + 5673))))(v8);
}

uint64_t sub_244771AB4@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v4[69] = v2;
  LODWORD(STACK[0x5C8]) = v3;
  STACK[0x368] = 0x58FA20369C313ACELL;
  LODWORD(STACK[0x52C]) = 237377513;
  LODWORD(STACK[0x714]) = 237377513;
  v4[9] = 0x6286B82630F8F22CLL;
  v4[133] = 0x19847B594A0B84A2;
  return (*(a1 + 8 * (((((a2 - 14230) | 0x8D0) - 2423) * (v2 == 0)) ^ a2)))();
}

uint64_t sub_244771BB4@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v3 = (a2 - 1197) | 0xCA2;
  v4 = a2 + 1991;
  STACK[0x5D8] = *(a1 + 8 * v2);
  v5 = (*(a1 + 8 * (a2 ^ 0x5F7B)))(112);
  v6 = STACK[0x358];
  STACK[0x408] = v5 + 0x19847B594A0B84A2;
  return (*(v6 + 8 * (((v5 == 0) * (v3 - 3709)) ^ v4)))();
}

uint64_t sub_244771C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = -318161901;
  *(a1 + 4) = 2142665936;
  *(a1 + 80) = 11781;
  memset((a1 + 8), 93, 64);
  *(a1 + 72) = 0x4AB47B8A4AB47B8ALL;
  v7 = *(v6 + 32);
  *(v7 - 0x19847B594A0B844ELL) = 1956268794;
  *(v7 - 0x19847B594A0B843ALL) = 2136666251;
  memset((v7 - 0x19847B594A0B844ALL), 93, 16);
  *(v7 - 0x19847B594A0B8436) = -15;
  *v4 = v7;
  return (*(a4 + 8 * v5))();
}

uint64_t sub_244771E40@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v3 = a2 - 920;
  v4 = STACK[0x368];
  *(v2 - 0x19847B594A0B843ALL) = 2136666267;
  *(v2 - 0x19847B594A0B843BLL) = *(v4 - 0x58FA20369C313AB7);
  *(v2 - 0x19847B594A0B843CLL) = *(v4 - 0x58FA20369C313AB8);
  *(v2 - 0x19847B594A0B843DLL) = *(v4 - 0x58FA20369C313AB9);
  *(v2 - 0x19847B594A0B843ELL) = *(v4 - 0x58FA20369C313ABALL);
  *(v2 - 0x19847B594A0B843FLL) = *(v4 - 0x58FA20369C313ABBLL);
  *(v2 - 0x19847B594A0B8440) = *(v4 - 0x58FA20369C313ABCLL);
  *(v2 - 0x19847B594A0B8441) = *(v4 - 0x58FA20369C313ABDLL);
  *(v2 - 0x19847B594A0B8442) = *(v4 - 0x58FA20369C313ABELL);
  *(v2 - 0x19847B594A0B8443) = *(v4 - 0x58FA20369C313ABFLL);
  *(v2 - 0x19847B594A0B8444) = *(v4 - 0x58FA20369C313AC0);
  *(v2 - 0x19847B594A0B8445) = *(v4 - 0x58FA20369C313AC1);
  *(v2 - 0x19847B594A0B8446) = *(v4 - 0x58FA20369C313AC2);
  *(v2 - 0x19847B594A0B8447) = *(v4 - 0x58FA20369C313AC3);
  *(v2 - 0x19847B594A0B8448) = *(v4 - 0x58FA20369C313AC4);
  *(v2 - 0x19847B594A0B8449) = *(v4 - 0x58FA20369C313AC5);
  *(v2 - 0x19847B594A0B844ALL) = *(v4 - 0x58FA20369C313AC6);
  return (*(a1 + 8 * ((94 * (*(v4 - 0x58FA20369C313ACALL) == (((v3 - 2) ^ 0x8F) + v3 + 93))) ^ v3)))();
}

uint64_t sub_24477216C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x53C]) = a8;
  LODWORD(STACK[0x4C4]) = v10;
  LODWORD(STACK[0x3C4]) = v11;
  LODWORD(STACK[0x818]) = v9;
  return (*(a4 + 8 * (v8 ^ 0x3A1E)))(a1, a2, a3);
}

uint64_t sub_2447721A8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v5 = v2 == a2;
  v6 = 10 * (STACK[0x350] ^ 0x6FD);
  v7 = STACK[0x350] + 20825;
  LODWORD(STACK[0x53C]) = v3;
  LODWORD(STACK[0x4C4]) = v4;
  return (*(a1 + 8 * (((v6 ^ 0x2E9) * v5) ^ v7)))();
}

uint64_t sub_24477227C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  *(a2 - 0x6286B82630F8F21CLL) = *(v3 - 0x19847B594A0B84A2);
  *(a2 - 0x6286B82630F8F1D4) = *(v3 - 0x19847B594A0B845ALL);
  *(a2 - 0x6286B82630F8F1D0) = *(v3 - 0x19847B594A0B8456);
  v4 = (v2 + 947036960) & 0xC78D5CCF;
  *(a2 - 0x6286B82630F8F1CCLL) = *(v3 - 0x19847B594A0B8452);
  *(a2 - 0x6286B82630F8F1CBLL) = *(v3 - 0x19847B594A0B8451);
  *(a2 - 0x6286B82630F8F1B4) = *(v3 - 0x19847B594A0B843ALL);
  *(a2 - 0x6286B82630F8F1C8) = *(v3 - 0x19847B594A0B844ELL);
  *(a2 - 0x6286B82630F8F1B0) = *(v3 - 0x19847B594A0B8436) & 1 | (v2 + 32) & 0xCF ^ 0xA9;
  return (*(a1 + 8 * v2))(v4, a2 - 0x6286B82630F8F1F5, (v4 + 7144) | 0xD4u, v3 - 0x19847B594A0B847BLL, v4 ^ 0x1C6B, ((v4 + 7144) | 0xD4u) ^ 0x34FBLL, (v4 - 5769), (v4 - 5535));
}

uint64_t sub_244772464(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8)
{
  v13 = (v8 - 1) & 0xF;
  *(a2 + v8) = *(a4 + v8) ^ (v13 * v9) ^ *(*(v11 + 8 * a5) + v13) ^ *(*(v11 + 8 * a7) - 4 + a6 + v13) ^ *(*(v11 + 8 * a8) + v13) ^ v10;
  return (*(v12 + 8 * (a1 ^ (16 * (v8 != -31)))))();
}

uint64_t sub_2447725B8@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 + 0x6286B82630F8F1C5;
  v9 = (v1 + v3 + 0x49023CCCE6ED6D7ALL) > 0xF && *(&off_278E1E490 + (v2 ^ 0x5549)) + v1 + 0x6286B82630F8F1C0 > 0xF && *(&off_278E1E490 + (v2 ^ 0x507C)) + v5 - 4 >= ((v2 ^ 0x7F2Eu) - 7275) - 3212 && *(&off_278E1E490 + (v2 ^ 0x5375)) + v5 - 4 > 0xF;
  return (*(v4 + 8 * ((7 * v9) ^ v2)))(a1 - 0x6286B82630F8F1C4);
}

uint64_t sub_2447726D8@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 - 0x19847B594A0B849ELL);
  *(a1 - 0x6286B82630F8F218) = v4;
  return (*(v3 + 8 * (((v4 == (((v1 - 1130) | 0x224) ^ 0x7FB67A6E)) * (3 * (v1 ^ 3) - 1613)) | v1)))();
}

uint64_t sub_24477284C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x53C]) = a8;
  LODWORD(STACK[0x4C4]) = v9;
  return (*(a4 + 8 * (v8 + 12694)))(a1, a2, a3);
}

uint64_t sub_2447729D4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v6 = *(a2 + v3);
  *(v5 - 0x19847B594A0B848ALL) = *(a2 - 0x58FA20369C313AA6);
  *(v5 + v4) = v6;
  return (*(a1 + 8 * v2))();
}

uint64_t sub_244772A60@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = v2 + 1591;
  v5 = ((v2 + 6438) | 0x418) - 4171;
  *(v3 - 0x19847B594A0B844ELL) = *(a2 - 0x58FA20369C313ACELL);
  v6 = STACK[0x3B8];
  STACK[0x560] = &STACK[0xAF0] + STACK[0x3B8];
  STACK[0x3B8] = v6 + 32;
  v7 = STACK[0x610];
  STACK[0x728] = STACK[0x610];
  STACK[0x678] = 0;
  STACK[0x8C8] = 0;
  STACK[0x790] = 0;
  LODWORD(STACK[0x4A4]) = 0;
  STACK[0x648] = 0x19847B594A0B84A2;
  STACK[0x4C8] = 0;
  v8 = (*(a1 + 8 * (v2 + 16355)))();
  if (v7)
  {
    v9 = LODWORD(STACK[0x5C8]) == (v5 ^ 0x307C07FB);
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  return (*(STACK[0x358] + 8 * (v4 ^ (2 * v10))))(v8);
}

uint64_t sub_244772B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 8 * (v4 + 8845)))(128, a2, a3);
  v7 = STACK[0x358];
  *(v5 + 944) = v6 + 0x6286B82630F8F22CLL;
  return (*(v7 + 8 * ((((((v4 - 11550) ^ (v6 == 0)) & 1) == 0) * (v4 - 14048)) ^ v4)))();
}

uint64_t sub_244772C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = v7;
  LODWORD(STACK[0x53C]) = v6;
  LODWORD(STACK[0x4C4]) = 237377513;
  LODWORD(STACK[0x3C4]) = 237377513;
  LODWORD(STACK[0x818]) = v4;
  return (*(a4 + 8 * ((6518 * (((v5 - 1090) ^ 0x1072CA1Bu) < 0x8F106E05)) ^ (v5 - 1395))))();
}

uint64_t sub_244772C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x53C]) = a8;
  LODWORD(STACK[0x4C4]) = v10;
  LODWORD(STACK[0x3C4]) = v11;
  LODWORD(STACK[0x818]) = v9;
  return (*(a4 + 8 * v8))(a1, a2, a3);
}

uint64_t sub_244772CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x53C]) = v6;
  LODWORD(STACK[0x4C4]) = 237377513;
  LODWORD(STACK[0x3C4]) = 237377513;
  LODWORD(STACK[0x818]) = v4;
  return (*(a4 + 8 * v5))(a1, a2, a3);
}

uint64_t sub_244772D70@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v6[67] = *(a1 + 8 * a2);
  v6[155] = v3;
  LODWORD(STACK[0x7D4]) = v4;
  v6[150] = v2;
  v6[141] = 0x45C4E0EEBCEA53E0;
  LODWORD(STACK[0x7AC]) = 237377513;
  v6[58] = 0x44046241CC2D2A4ELL;
  v6[52] = 0;
  v8 = (*(a1 + 8 * (v5 + 11306)))(16);
  v9 = STACK[0x358];
  v6[87] = v8 + v7;
  return (*(v9 + 8 * (((v8 != 0) * (v5 - 11670)) ^ v5)))();
}

uint64_t sub_244772E10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  a1[1] = 0x750C1ABFB0567FDBLL;
  return (*(a4 + 8 * ((v4 - 1228273826) & 0x4935EBD6)))();
}

uint64_t sub_244772FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (((v4 - 0x45C4E0EEBCEA53DCLL) << (v5 + 13)) & 0x7F3DABFFE7D7B676) + ((v4 - 0x45C4E0EEBCEA53DCLL) ^ 0xFF9ED5FFF3EBDB3BLL) + 0x612A000C1424C5;
  STACK[0x330] = v6;
  STACK[0x320] = v6 + 1;
  STACK[0x310] = ((v4 - 0x45C4E0EEBCEA53DALL) ^ 0xFB5B7AF7CEFBEDBFLL) + 0x1CF7DF7F7BEFD74ELL + ((2 * (v4 - 0x45C4E0EEBCEA53DALL)) & 0x76B6F5EF9DF7DB7ELL);
  LODWORD(STACK[0x340]) = STACK[0x8E4];
  v7 = *(a4 + 8 * (v5 ^ 0x1777));
  v8 = STACK[0x350];
  LODWORD(STACK[0x300]) = STACK[0x350] - 1215081707;
  LODWORD(STACK[0x2F0]) = v8 + 4293;
  return v7(a1, 1387181824, 463407057);
}

uint64_t sub_2447732A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v7 + (a7 ^ v9) - 0x45C4E0EEA69E4065;
  v12 = v11 < (STACK[0x350] ^ 0x164C15C5uLL);
  v13 = v11 > v8;
  if (v8 < 0x164C137B != v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  return (*(a4 + 8 * ((55 * v14) ^ v10)))(a7, a2, a3);
}

uint64_t sub_244773448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = *(a4 + 8 * SLODWORD(STACK[0x2F0]));
  LODWORD(STACK[0x340]) = a7;
  return v7();
}

uint64_t sub_2447734E8@<X0>(uint64_t a1@<X3>, int a2@<W6>, __int16 a3@<W8>)
{
  v5 = STACK[0x350];
  v6 = STACK[0x350] + 1617817088;
  LODWORD(STACK[0x8E4]) = STACK[0x340];
  LOWORD(STACK[0x8EA]) = a3;
  LODWORD(STACK[0x8EC]) = v4;
  STACK[0x8F0] = v3;
  LODWORD(STACK[0x7AC]) = a2;
  return (*(a1 + 8 * ((3879 * (v6 < 0x346A6B04)) ^ (v5 - 433))))(v4);
}

uint64_t sub_2447735C8@<X0>(int a1@<W0>, uint64_t a2@<X3>, __int16 a3@<W8>)
{
  LODWORD(STACK[0x8E4]) = STACK[0x340];
  LOWORD(STACK[0x8EA]) = a3;
  LODWORD(STACK[0x8EC]) = a1;
  STACK[0x8F0] = v3;
  return (*(a2 + 8 * ((((1138 * ((v4 - 1213365121) & 0x485257FF ^ 0x508)) ^ 0x799F) * (a1 == 237377505)) ^ v4)))();
}

uint64_t sub_24477365C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 - 0x45C4E0EEBCEA53DCLL + v5);
  v10 = (v9[6] << 56) | (v9[7] << 48) | (v9[8] << 40) | (*(v4 + v5 - 0x45C4E0EEBCEA9A21 + ((v6 + 1415666002) & 0xAB9EE7EB) + 3) << 32) | (v9[10] << 24) | (v9[11] << 16) | (v9[12] << 8) | v9[13];
  *(v8 + 464) = v10 + 0x44046241CC2D2A4ELL - ((2 * v10) & 0x8808C483985A549CLL);
  return (*(a4 + 8 * v6))(v7, a2, a3);
}

uint64_t sub_244773760@<X0>(int a1@<W0>, uint64_t a2@<X3>, __int16 a3@<W8>)
{
  LODWORD(STACK[0x8E4]) = STACK[0x340];
  LOWORD(STACK[0x8EA]) = a3;
  LODWORD(STACK[0x8EC]) = a1;
  STACK[0x8F0] = v5;
  STACK[0x588] = v3 + v4 - 0x45C4E0EEBCEA9A21 + 5 * ((v6 - 8872) ^ 0xB02u);
  return (*(a2 + 8 * (v6 - 8872)))();
}

uint64_t sub_2447737D4@<X0>(uint64_t a1@<X3>, __int16 a2@<W8>)
{
  *(v4 + 1128) = v2;
  v6 = LODWORD(STACK[0x8E4]) == 237377513 && a2 == 7865;
  return (*(a1 + 8 * ((v6 * ((v3 - 413873172) ^ 0xE75512D6)) ^ v3)))();
}

uint64_t sub_244773870@<X0>(int a1@<W0>, uint64_t a2@<X3>, int a3@<W5>, __int16 a4@<W8>)
{
  LODWORD(STACK[0x8E4]) = STACK[0x340];
  LOWORD(STACK[0x8EA]) = a4;
  LODWORD(STACK[0x8EC]) = a1;
  STACK[0x8F0] = v4;
  return (*(a2 + 8 * a3))();
}

uint64_t sub_2447738C4@<X0>(int a1@<W0>, uint64_t a2@<X3>, __int16 a3@<W8>)
{
  v6 = STACK[0x7AC];
  v7 = v5[58];
  v8 = v5[52];
  v5[126] = v5[87];
  LODWORD(STACK[0x3D8]) = v4;
  LOWORD(STACK[0x3D6]) = a3;
  LODWORD(STACK[0x784]) = a1;
  LODWORD(STACK[0x86C]) = v6;
  v5[93] = v7;
  v5[102] = v8;
  LODWORD(STACK[0x4B4]) = -1344315693;
  return (*(a2 + 8 * (((((v3 + 413857309) | 0x600) ^ 0x18AAF576) + v3) ^ (7744 * (v3 > 0x86EED7D7)))))();
}

uint64_t sub_2447739EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v5 - 0x6286B82630F8F22CLL);
  *(v6 + 112) = 0x750C1ABFB0567FDBLL;
  *(v6 + 168) = 0x1900B5F15EE1C6CELL;
  return (*(a4 + 8 * (((v8 != v7) * (((v4 ^ 0xDD08B31) - 231788247) ^ 0xA2A)) ^ v4)))(a1, a2, a3);
}

uint64_t sub_244773A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x3E0] = v4;
  LODWORD(STACK[0x5E4]) = 1375866203;
  *(v6 + 1168) = &STACK[0x458];
  LODWORD(STACK[0x3A4]) = 147498341;
  return (*(a4 + 8 * v5))(a1, a2, a3);
}

uint64_t sub_244773B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(v5 + 112) - 0x750C1ABFB0567FC3);
  *(v5 + 280) = v6;
  return (*(a4 + 8 * ((4 * (((v6 == 0) ^ ((v4 + 68) ^ (v4 + 73))) & 1)) & 0xF7 | (8 * (((v6 == 0) ^ (v4 - 4284) ^ (v4 - 1377980343)) & 1)) | v4)))(a1, a2, a3);
}

uint64_t sub_244773B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (v5 | ((v5 < 0xA6B181C) << 32)) + 0x2E3460622498571ALL;
  v6[182] = v7;
  v8 = v6[21];
  v6[183] = v8;
  return (*(a4 + 8 * (((v7 - v8 - 0x1533AA70D021A872 < 0xFFFFFFFFFFFFFFF6) * (((v4 ^ 0x14EE) + 231790029) ^ 0xDD08D34)) ^ v4)))(a1, a2, a3);
}

uint64_t sub_244773C5C()
{
  v3 = *(v2 + 8 * ((v1 - 938) ^ 0x591));
  LOWORD(STACK[0x986]) = v0;
  LODWORD(STACK[0x340]) = v0;
  return v3();
}

uint64_t sub_244774308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, unint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v64 = STACK[0x350] + 12181;
  v65 = STACK[0x350] + 18179;
  v66 = (v62 ^ v61) + a61;
  STACK[0x978] = v66 + 10;
  v67 = (v64 ^ 0xBBF3792E405A3F17) + v66;
  v68 = v67 < 0x9738EB80;
  v69 = v67 > a57;
  if (a57 < 0x9738EB80 != v68)
  {
    v70 = v68;
  }

  else
  {
    v70 = v69;
  }

  return (*(v63 + 8 * ((v70 | (2 * v70)) ^ v65)))();
}

uint64_t sub_2447744A8()
{
  v2 = *(v1 + 8 * (v0 - 57));
  LODWORD(STACK[0x310]) = 8855;
  return v2();
}

uint64_t sub_2447744CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, unint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v58 = (STACK[0x350] + 1409556290) | 0x8B800C2;
  v59 = STACK[0x350] + 15064;
  v60 = (v56 ^ v55) + a55;
  STACK[0x968] = v60 + 10;
  v61 = v60 + v58 - 0x739917DE18496CC0;
  v62 = v61 < 0xC8F149BC;
  v63 = v61 > a51;
  if (a51 < 0xC8F149BC != v62)
  {
    v64 = v62;
  }

  else
  {
    v64 = v63;
  }

  return (*(v57 + 8 * ((54 * v64) ^ v59)))();
}

uint64_t sub_2447746CC()
{
  v2 = *(v1 + 8 * ((v0 - 932) ^ 0x59F));
  LODWORD(STACK[0x320]) = 8855;
  return v2();
}

uint64_t sub_244774718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = STACK[0x350] + 1857;
  v70 = (v67 ^ v66) + a66;
  STACK[0x958] = v70 + (STACK[0x350] ^ 0x4660) - 16596;
  v70 -= 0x366AF98AD88BF543;
  v71 = v70 < 0x68818D26;
  v72 = v70 > a65;
  if (a65 < 0x68818D26 != v71)
  {
    v73 = v71;
  }

  else
  {
    v73 = v72;
  }

  return (*(v68 + 8 * (v69 ^ (1008 * v73))))();
}

uint64_t sub_2447748D0()
{
  v2 = *(v1 + 8 * (v0 - 57));
  LODWORD(STACK[0x330]) = 8855;
  return v2();
}

uint64_t sub_244774918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, unint64_t a40)
{
  v43 = (STACK[0x350] - 1206) | 0x1432;
  v44 = STACK[0x350] + 16183;
  LODWORD(STACK[0x92C]) = v41;
  v45 = (v41 ^ v40) + STACK[0x200];
  STACK[0x930] = v45 + 10;
  v45 -= 0xFF70A3C6547AC9ELL;
  v46 = v45 < 0x862D961C;
  v47 = v45 > a40;
  if (a40 < 0x862D961C != v46)
  {
    v48 = v46;
  }

  else
  {
    v48 = v47;
  }

  return (*(v42 + 8 * (((v43 ^ 0x1639) * !v48) ^ v44)))();
}

uint64_t sub_244774AF4()
{
  v2 = *(v1 + 8 * ((((v0 - 4805908) < 0x3660D5D9) * ((2 * v0) ^ 0xDBD)) ^ (v0 + 879)));
  LODWORD(STACK[0x270]) = 8855;
  return v2();
}

uint64_t sub_244774B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, unint64_t a46, uint64_t a47, uint64_t a48)
{
  v50 = STACK[0x350] + 6429;
  v51 = (v48 ^ (STACK[0x350] + 1214515320) ^ 0x464218DF) + a48;
  STACK[0x948] = v51 + 10;
  v51 -= 0x217682805F633B00;
  v52 = v51 < 0xBFF98A12;
  v53 = v51 > a46;
  if (a46 < 0xBFF98A12 != v52)
  {
    v54 = v52;
  }

  else
  {
    v54 = v53;
  }

  return (*(v49 + 8 * ((59 * !v54) ^ v50)))();
}

uint64_t sub_244774D24()
{
  v2 = *(v1 + 8 * ((v0 - 898) ^ 0x5B9));
  LODWORD(STACK[0x2F0]) = 8855;
  return v2();
}

uint64_t sub_244774DD8()
{
  v2 = STACK[0x350] - 716;
  LODWORD(STACK[0x924]) = v0;
  return (*(v1 + 8 * (v2 ^ 0x43F)))();
}

uint64_t sub_244774E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unint64_t a36, uint64_t a37, uint64_t a38)
{
  v41 = STACK[0x350] - 1714072838;
  v42 = STACK[0x350] + 13898;
  v43 = (v39 ^ v38) + a38;
  STACK[0x900] = v43 + 10;
  v43 -= 0xD5B5F8210E19582;
  v44 = v43 < (v41 ^ 0x25E0BAFFuLL);
  v45 = v43 > a36;
  if (a36 < 0xBC35E347 != v44)
  {
    v46 = v44;
  }

  else
  {
    v46 = v45;
  }

  return (*(v40 + 8 * ((88 * v46) ^ v42)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_24477504C()
{
  v2 = *(v1 + 8 * ((v0 - 2431) ^ 0x58D));
  LODWORD(STACK[0x300]) = 8855;
  return v2();
}

uint64_t sub_24477554C()
{
  v3 = *(v2 + 8 * (v1 - 57));
  LOWORD(STACK[0x956]) = v0;
  LODWORD(STACK[0x330]) = v0;
  return v3();
}

uint64_t sub_244775574()
{
  v3 = *(v2 + 8 * ((v1 - 921) ^ 0x5A0));
  LOWORD(STACK[0x966]) = v0;
  LODWORD(STACK[0x320]) = v0;
  return v3();
}

uint64_t sub_2447755C8()
{
  v3 = *(v2 + 8 * ((v1 - 929) ^ 0x598));
  LOWORD(STACK[0x92A]) = v0;
  LODWORD(STACK[0x270]) = v0;
  return v3();
}

uint64_t sub_244775618()
{
  v3 = *(v2 + 8 * ((v1 - 925) ^ 0x5A4));
  LOWORD(STACK[0x8FE]) = v0;
  LODWORD(STACK[0x300]) = v0;
  return v3();
}

uint64_t sub_2447756B8()
{
  v3 = *(v2 + 8 * (v1 - 57));
  LOWORD(STACK[0x976]) = v0;
  LODWORD(STACK[0x310]) = v0;
  return v3();
}

uint64_t sub_2447756E0()
{
  LOWORD(STACK[0x946]) = v0;
  v3 = *(v2 + 8 * ((549 * (v1 != -2106604260)) ^ (v1 - 542)));
  LODWORD(STACK[0x2F0]) = v0;
  return v3();
}

uint64_t sub_244775724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, unint64_t a63)
{
  v68 = STACK[0x350] + 3467;
  v69 = (v66 ^ v65) + a65;
  STACK[0x988] = v69 + 10;
  v69 -= 0x517B132E2D2409A5;
  v70 = v69 < 0x739643B8;
  v71 = v69 > a63;
  if (a63 < 0x739643B8 != v70)
  {
    v72 = v70;
  }

  else
  {
    v72 = v71;
  }

  return (*(v67 + 8 * (v68 | (2 * !v72) | (32 * !v72))))();
}

uint64_t sub_2447758B0()
{
  v2 = *(v1 + 8 * ((v0 - 998) ^ 0x45D));
  LODWORD(STACK[0x340]) = 8855;
  return v2();
}

uint64_t sub_2447758D8()
{
  v2 = STACK[0x350] + 955;
  LODWORD(STACK[0x698]) = v0;
  return (*(v1 + 8 * v2))();
}

uint64_t sub_244775908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0xA00] + (v7 ^ 0xE2617E9u) - 0x561AB2AE4849B59BLL;
  v10 = STACK[0x9F8] - 0xC6CD2F0F3A7AABDLL;
  v11 = v9 < 0x28519107;
  v12 = v9 > v10;
  if (v11 != v10 < 0x28519107)
  {
    v12 = v11;
  }

  return (*(v8 + 8 * ((16 * !v12) | (32 * !v12) | (STACK[0x350] + 3848))))(a1, a2, a3, v8, a5, a6, a7, 1216081110);
}

uint64_t sub_244775ACC()
{
  v2 = STACK[0x350] + 16282;
  LODWORD(STACK[0x44C]) = v0;
  return (*(v1 + 8 * v2))();
}

uint64_t sub_244775B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = STACK[0x9E0] + (v3 ^ 0xE2617E9u) - 0x5E5905806C832285;
  v6 = STACK[0x9D8] - 0x66EAB10160ED2A97;
  v7 = v5 < 0xCE4B862E;
  v8 = v5 > v6;
  if (v7 != v6 < 0xCE4B862E)
  {
    v8 = v7;
  }

  return (*(v4 + 8 * ((450 * v8) ^ (STACK[0x350] + 20501))))(a1, a2, a3, v4);
}

uint64_t sub_244775CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = STACK[0x350] + 2162;
  LODWORD(STACK[0x704]) = v3;
  return (*(v4 + 8 * v5))(a1, a2, a3, v4);
}

uint64_t sub_244775CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x9A0] + (v7 ^ 0xE2617E9u) - 0x1900B5F098FECD66;
  v10 = STACK[0x998] - 0x2E346061692075D8;
  v11 = v9 < ((STACK[0x350] + 231789098) ^ 0xC83221B6uLL);
  v12 = v9 > v10;
  if (v11 != v10 < 0xC5E2F95E)
  {
    v12 = v11;
  }

  return (*(v8 + 8 * ((992 * v12) ^ (STACK[0x350] + 15149))))(a1, a2, a3, v8, a5, a6, a7, 1216081110);
}

uint64_t sub_244776140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v5 + 376);
  v7 = *(a4 + 8 * v4);
  STACK[0x2C0] = v6;
  STACK[0x340] = v6;
  return v7(a1, a2, a3);
}

uint64_t sub_24477619C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x2D0]) = STACK[0x3C4];
  LODWORD(STACK[0x2F0]) = 237377481;
  STACK[0x2A0] = *(v4 + 224);
  STACK[0x300] = v5;
  STACK[0x2B0] = v5 - 0x6286B82630F8F1F4;
  LODWORD(STACK[0x2E0]) = STACK[0x528];
  LODWORD(STACK[0x330]) = LOBYTE(STACK[0x4EB]);
  LODWORD(STACK[0x310]) = STACK[0x81C];
  STACK[0x320] = *(v4 + 1312);
  v7 = *(a4 + 8 * (v6 ^ 0xECF5E52D ^ ((v6 < 0x2A77C9EE) * ((v6 + 319426433) ^ 0x223A))));
  v8 = STACK[0x350];
  LODWORD(STACK[0x290]) = STACK[0x350] + 44050890;
  LODWORD(STACK[0x280]) = v8 + 8426;
  return v7(a1, a2, a3);
}

uint64_t sub_2447762B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v5 = 0u;
  v5[1] = 0u;
  LODWORD(STACK[0x330]) = 92;
  STACK[0x340] = v5;
  return (*(a4 + 8 * v4))(a1);
}

uint64_t sub_2447763F8@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v7 = a2 & 0x3689AB1D;
  v8 = 715682041 * ((((v6 - 232) | 0xB32CA1F0) - ((v6 - 232) & 0xB32CA1F0)) ^ 0x466A5AA2);
  STACK[0xBC8] = STACK[0x340];
  STACK[0xBB8] = v5;
  STACK[0xBA8] = v4;
  *(v6 - 224) = v3 ^ v8;
  *(v6 - 220) = v2 - v8 - 1926566409;
  *(v6 - 192) = ((a2 & 0x3689AB1D) + 1014) ^ v8;
  *(v6 - 204) = v8 ^ 0xBDD8363C;
  v9 = (*(a1 + 8 * (a2 & 0x3689AB1D ^ 0x71EFu)))(v6 - 232);
  return (*(STACK[0x358] + 8 * v7))(v9);
}

uint64_t sub_244776694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8 * (((((v4 - 8426) ^ 0xB54B8847) + v4 + 1253331938) * (LODWORD(STACK[0x2D0]) == LODWORD(STACK[0x2F0]))) ^ v4));
  LODWORD(STACK[0x310]) = 1216124116;
  return v5(a1, STACK[0x300], a3);
}

uint64_t sub_244776700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x330]) = v5;
  v6 = *(a4 + 8 * (v4 + 1755));
  LODWORD(STACK[0x310]) = 1216124116;
  return v6(a1, a2, a3);
}

uint64_t sub_2447767B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8 * (((((v4 ^ 0x15C) + 7286) ^ (v4 + 11659)) * (LODWORD(STACK[0x2D0]) == LODWORD(STACK[0x2F0]))) ^ v4));
  LODWORD(STACK[0x2E0]) = 1216124116;
  return v5(LODWORD(STACK[0x330]), a2, a3);
}

uint64_t sub_244776814(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x330]) = a1;
  v6 = *(a4 + 8 * ((v4 - 1101) ^ 0xFE8));
  LODWORD(STACK[0x2E0]) = v5;
  return v6();
}

uint64_t sub_244776834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x320] = *(a4 + 8 * v5);
  *(v6 + 1328) = 0;
  return (*(a4 + 8 * ((116 * (((v4 + 107) ^ (*(v6 + 1328) < 0x20uLL)) & 1)) ^ (v4 + 15099))))(0xD06F0ADDD55D4C72, 0x97C87A91155159C6, 1984758740);
}

uint64_t sub_244776BB8@<X0>(char a1@<W0>, uint64_t a2@<X3>, int a3@<W8>)
{
  LODWORD(STACK[0x528]) = STACK[0x2E0];
  LOBYTE(STACK[0x4EB]) = a1;
  LODWORD(STACK[0x81C]) = STACK[0x310];
  *(v4 + 1312) = STACK[0x320];
  LODWORD(STACK[0x914]) = v3;
  return (*(a2 + 8 * a3))();
}

uint64_t sub_244776C6C@<X0>(uint64_t a1@<X3>, int a2@<W7>, int a3@<W8>)
{
  LODWORD(STACK[0x528]) = STACK[0x2E0];
  LOBYTE(STACK[0x4EB]) = STACK[0x330];
  LODWORD(STACK[0x81C]) = a2;
  STACK[0x908] = STACK[0x320];
  LODWORD(STACK[0x914]) = v3;
  return (*(a1 + 8 * a3))();
}

uint64_t sub_244776CCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = 313 * (STACK[0x350] ^ 0x698);
  v7 = (STACK[0x350] + 1683413305) & 0x9BA927FC;
  v8 = STACK[0x350] + 11951;
  LODWORD(STACK[0x528]) = STACK[0x2E0];
  LOBYTE(STACK[0x4EB]) = STACK[0x330];
  LODWORD(STACK[0x81C]) = STACK[0x310];
  STACK[0x908] = v4;
  LODWORD(STACK[0x914]) = v5;
  return (*(a4 + 8 * ((((v7 ^ 0xFFFFD5DA) + v6) * (v5 == a3)) ^ v8)))();
}

uint64_t sub_244776D5C@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  STACK[0x3A8] = *(*(v2 + 944) - 0x6286B82630F8F22CLL);
  LODWORD(STACK[0x88C]) = 2001745651;
  *(v2 + 616) = &STACK[0x4A4];
  LODWORD(STACK[0x448]) = -554781745;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_244776DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x528]) = a8;
  LOBYTE(STACK[0x4EB]) = STACK[0x330];
  LODWORD(STACK[0x81C]) = STACK[0x310];
  STACK[0x908] = STACK[0x320];
  LODWORD(STACK[0x914]) = v9;
  return (*(a4 + 8 * v8))(a1, a2, a3);
}

uint64_t sub_244776EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x9C0] + (v7 ^ 0xE2617E9u) - 0x42DD76D274EC79CCLL;
  v10 = STACK[0x9B8] - 0x43CDFDB01142754BLL;
  v11 = v9 < 0x784DF514;
  v12 = v9 > v10;
  if (v11 != v10 < 0x784DF514)
  {
    v12 = v11;
  }

  return (*(v8 + 8 * ((240 * v12) ^ (STACK[0x350] + 4275))))(a1, a2, a3, v8, a5, a6, a7, 1216081110);
}

uint64_t sub_24477706C()
{
  v2 = STACK[0x350] + 6801;
  LODWORD(STACK[0x404]) = v0;
  return (*(v1 + 8 * v2))();
}

uint64_t sub_244777098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x9B0] + (v7 ^ 0xE2617E9u) - 0x1A8AD39A4ADA8AF6;
  v10 = STACK[0x9A8] - 0x5B9A44093627770;
  v11 = v9 < 0x4D441BF1;
  v12 = v9 > v10;
  if (v11 != v10 < 0x4D441BF1)
  {
    v12 = v11;
  }

  return (*(v8 + 8 * ((STACK[0x350] + 14053) ^ (8 * v12))))(a1, a2, a3, v8, a5, a6, a7, 1216081110);
}

uint64_t sub_244777228@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v6 = v4[1];
  v4[79] = a2;
  LODWORD(STACK[0x4C4]) = v5;
  v4[117] = v6 + v2;
  return (*(a1 + 8 * (((*(v4[118] - 0x6286B82630F8F1B0) & (LODWORD(STACK[0x4A4]) != ((v3 + 15509) | 0x201) - 18021)) * (((v3 + 19633) | 0x327) - 5848)) ^ v3)))();
}

uint64_t sub_2447772A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v5 - 0x6286B82630F8F22CLL);
  *(v6 + 208) = 0x750C1ABFB0567FDBLL;
  *(v6 + 424) = 0x42DD76D2ED3A6EEALL;
  return (*(a4 + 8 * (((v8 == v7) * ((v4 - 15444) ^ 0xA1F)) ^ v4)))(a1, a2, a3);
}

uint64_t sub_244777320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x3E0] = v4;
  LODWORD(STACK[0x5E4]) = -149197095;
  *(v6 + 1168) = &STACK[0x4B8];
  LODWORD(STACK[0x3A4]) = 158110751;
  return (*(a4 + 8 * v5))(a1, a2, a3);
}

uint64_t sub_244777358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x9D0] + (v7 ^ 0xE2617E9u) - 0x40A3F59CD6BCD622;
  v10 = STACK[0x9C8] - 0x5DA34DC631726DACLL;
  v11 = v9 < 0x818456F;
  v12 = v9 > v10;
  if (v11 != v10 < ((STACK[0x350] + 1084574082) | 0x32580C01) - 1793398482)
  {
    v12 = v11;
  }

  return (*(v8 + 8 * ((51 * !v12) ^ (STACK[0x350] + 17888))))(a1, a2, a3, v8, a5, a6, a7, 1216081110);
}

uint64_t sub_244777520@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v6 = v4[89];
  v4[55] = a2;
  v4[156] = v6 + v2;
  return (*(a1 + 8 * (((((v5 == 237377481) ^ (v3 - 1)) & 1) * (((v3 - 1577961438) ^ 0xA1F2120D) - 11723)) ^ v3)))();
}

uint64_t sub_2447775CC@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v8 = *(v4 - 0x6286B82630F8F1B4);
  v9 = 1197783899 * *(v4 - 0x6286B82630F8F1C8) - 2138716457;
  v10 = 1649972239 * ((v7 - 232) ^ 0xDBB82C78);
  v6[250] = v2;
  *(v7 - 188) = v5 - v10 + 322426181;
  *(v7 - 232) = 1270344271 - v10;
  *(v7 - 208) = v9 ^ v10;
  *(v7 - 204) = v10 ^ v3 ^ 0x5351E767;
  *(v7 - 192) = (v8 ^ 0x4825872A) - v10 - 608661504 + ((v8 << (v5 - 107)) & 0x6EFEEF42 ^ 0x6EB4E102);
  v6[249] = a2;
  v6[254] = v4 + 0x154269182B6B91FALL;
  v6[252] = a2;
  v11 = (*(a1 + 8 * (v5 + 10179)))(v7 - 232);
  return (*(STACK[0x358] + 8 * v5))(v11);
}

uint64_t sub_244777700()
{
  v2 = STACK[0x350] + 6514;
  LODWORD(STACK[0x364]) = v0;
  return (*(v1 + 8 * v2))();
}

uint64_t sub_244777740()
{
  v2 = STACK[0x350] + 8229;
  LODWORD(STACK[0x5CC]) = v0;
  return (*(v1 + 8 * v2))();
}

uint64_t sub_244777774()
{
  v2 = STACK[0x350] + 7773;
  LODWORD(STACK[0x464]) = v0;
  LODWORD(STACK[0x340]) = LOWORD(STACK[0x986]);
  return (*(v1 + 8 * v2))();
}

uint64_t sub_244777CB4@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  LODWORD(STACK[0x52C]) = a2;
  v4 = *(v2 + 72);
  *(v2 + 800) = v4;
  return (*(a1 + 8 * (((v4 == 0x6286B82630F8F22CLL) * (v3 - 1669)) ^ (v3 + 8661))))();
}

uint64_t sub_244777D00@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v5 = *(a2 - 0x6286B82630F8F224);
  *(v2 + 1208) = 0x750C1ABFB0567FDBLL;
  LODWORD(STACK[0x44C]) = 237377513;
  *(v2 + 16) = 0x440C86D256DEE246;
  return (*(a1 + 8 * (((v5 == v4) * ((((v3 - 1198) | 0x801) ^ 0xFFFFC3F6) + v3 + 12181)) ^ (v3 + 10784))))();
}

uint64_t sub_244777D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x3E0] = v3;
  LODWORD(STACK[0x5E4]) = -214693917;
  *(v5 + 1168) = &STACK[0x8A0];
  LODWORD(STACK[0x3A4]) = 179335571;
  return (*(v6 + 8 * v4))(a1, a2, a3, v6);
}

uint64_t sub_244778118@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  *(a2 - 0x58FA20369C313A5ELL) = STACK[0x714];
  *(a2 + v3) = (v4 ^ 0xE2617E9) + 237377513 - ((((v4 ^ 0xE2617E9) << ((v2 - 121) ^ 0xBF)) + 2) & 0x1C4C2FD2) + 1;
  return (*(a1 + 8 * v2))();
}

uint64_t sub_2447782BC@<X0>(int a1@<W8>)
{
  v3 = (STACK[0x200] - 0xFF70A3CEB754408 + *(v1 + 1176));
  v4 = __ROR8__((v3 + 334) & 0xFFFFFFFFFFFFFFF8, 8);
  v5 = (0x7653FFD844AF1481 - v4) & ((a1 ^ 0x98Eu) - 0x4AA07F3841EDADF8) | (v4 + 0x9AC0027BB50EB7ELL) & 0x4AA07F3841EDA739;
  v6 = v5 ^ 0x79151616AAB9A54;
  v5 ^= 0x4AF1505CB02CC1A0uLL;
  v7 = (__ROR8__(v6, 8) + v5) ^ 0x8DBE49DF8B3EC60ALL;
  v8 = v7 ^ __ROR8__(v5, 61);
  v9 = __ROR8__(v7, 8);
  v10 = (((v9 + v8) | 0x32D0D64D4270688ELL) - ((v9 + v8) | 0xCD2F29B2BD8F9771) - 0x32D0D64D4270688FLL) ^ 0x73F88A156FEBEE07;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (((2 * (v12 + v11)) | 0x562CC8E4F1BBEDCCLL) - (v12 + v11) - 0x2B16647278DDF6E6) ^ 0x3C01B0D9C60E3691;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xEC888CBFDF3BD3D0;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((v17 + v16) | 0x266D8F709B2661D1) - ((v17 + v16) | 0xD992708F64D99E2ELL) - 0x266D8F709B2661D2) ^ 0x16F52867A39D86F2;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((v20 + v19) | 0xFE7D31885E37F5C1) - ((v20 + v19) | 0x182CE77A1C80A3ELL) + 0x182CE77A1C80A3ELL) ^ 0xAE558AEBB9958041;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((v23 + v22 - ((2 * (v23 + v22)) & 0x8951FAF1706958CALL) + 0x44A8FD78B834AC65) ^ 0x2C108E8044E3F2ADLL) >> (8 * ((v3 + 78) & 7u))) ^ v3[334];
  v25 = (((v24 - ((2 * v24) & 0x72u) + 248) << 56) - 0x3F00000000000000) ^ 0xB900000000000000;
  v26 = __ROR8__((v3 + 335) & 0xFFFFFFFFFFFFFFF8, 8);
  v27 = (v26 - 0x7653FFD844AF1482) ^ 0xFFAED09B0E3E9966;
  v28 = __ROR8__((v26 - 0x7653FFD844AF1482) ^ 0xB2CED1A6D4B9C292, 8);
  v29 = (((2 * (v28 + v27)) | 0xD7FAD21042F2E9F6) - (v28 + v27) - 0x6BFD6908217974FBLL) ^ 0xE64320D7AA47B2F1;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (((v31 + v30) | 0x3A2808815C23D964) - ((v31 + v30) | 0xC5D7F77EA3DC269BLL) - 0x3A2808815C23D965) ^ 0x7B0054D971B85FEDLL;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x1717D4ABBED3C077;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (((2 * ((v36 + v35) ^ 0xD408842FB46A4E43)) & 0x440D90F0109BC5F4) - ((v36 + v35) ^ 0xD408842FB46A4E43) - 0x2206C878084DE2FBLL) ^ 0xE5793F179CE38096;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x3098A71738BBE723;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0x5028BB63E7A27580;
  LODWORD(v40) = (((__ROR8__(v41, 8) + (v41 ^ __ROR8__(v40, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v3 + 79) & 7u))) ^ v3[335];
  v42 = (((v40 - ((2 * v40) & 0x36u) + 7714) << 48) - 0x7000000000000) ^ 0x1E1B000000000000;
  v43 = (v25 - ((2 * v25) & 0x3400000000000000) + 0x1AFDFF6CEB6F6797) ^ 0x1AFDFF6CEB6F6797 | (v42 - ((2 * v42) & 0xD3A000000000000) + 0x69DEA13325AFA26) ^ 0x69DEA13325AFA26;
  v44 = __ROR8__((v3 + 336) & 0xFFFFFFFFFFFFFFF8, 8);
  v45 = ((2 * (v44 - 0x7653FFD844AF1482)) | 0x57766318D8555E06) - (v44 - 0x7653FFD844AF1482) - 0x2BBB318C6C2AAF03;
  v46 = v45 ^ 0x9975E02AB8936D91;
  v45 ^= 0xD415E11762143665;
  v47 = (__ROR8__(v46, 8) + v45) ^ 0x8DBE49DF8B3EC60ALL;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (v49 + v48 - ((2 * (v49 + v48)) & 0x178196D87B910AFELL) + 0xBC0CB6C3DC8857FLL) ^ 0x4AE89734105303F6;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0x1717D4ABBED3C077;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0xEC888CBFDF3BD3D0;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0x3098A71738BBE723;
  v57 = __ROR8__(v56, 8);
  v58 = v56 ^ __ROR8__(v55, 61);
  v59 = (((2 * (v57 + v58)) & 0x1A9298E04E50232ELL) - (v57 + v58) + 0x72B6B38FD8D7EE68) ^ 0x229E08EC3F759BE8;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = __ROR8__(v59, 8);
  v62 = (((((((v61 + v60) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v3 + 80) & 7u))) ^ v3[336]) - ((2 * ((((v61 + v60) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v3 + 80) & 7u))) ^ v3[336])) & 0x36) + 8426327) << 40) - 0x3C0000000000) ^ 0x80931B0000000000;
  v63 = (v43 - ((2 * v43) & 0xC5C7542C082005ALL) - 0x79D1C55E9FBEFFD3) ^ 0x862E3AA16041002DLL | (v62 - ((2 * v62) & 0x3B8D840000000000) + 0x5DC6C2ECF9DE3A52) ^ 0x5DC6C2ECF9DE3A52;
  v64 = __ROR8__((v3 + 337) & 0xFFFFFFFFFFFFFFF8, 8) - 0x7653FFD844AF1482;
  v65 = __ROR8__(v64 ^ 0xB2CED1A6D4B9C292, 8);
  v64 ^= 0xFFAED09B0E3E9966;
  v66 = (v65 + v64) ^ 0x8DBE49DF8B3EC60ALL;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0x41285C582D9B8689;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = __ROR8__(v68, 8);
  v71 = (v70 + v69 - ((2 * (v70 + v69)) & 0x178B388C2E3B00A6) + 0xBC59C46171D8053) ^ 0x1CD248EDA9CE4024;
  v72 = v71 ^ __ROR8__(v69, 61);
  v73 = __ROR8__(v71, 8);
  v74 = (((2 * (v73 + v72)) | 0x630BB4B9EEC52676) - (v73 + v72) + 0x4E7A25A3089D6CC5) ^ 0x5D0D56E3285940EBLL;
  v75 = v74 ^ __ROR8__(v72, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ 0x3098A71738BBE723;
  v77 = v76 ^ __ROR8__(v75, 61);
  v78 = (__ROR8__(v76, 8) + v77) ^ 0x5028BB63E7A27580;
  v79 = __ROR8__(v78, 8);
  v80 = __ROR8__(v77, 61);
  LODWORD(v22) = (((((2 * (v79 + (v78 ^ v80))) & 0xDD2F4BB1125BA10ALL) - (v79 + (v78 ^ v80)) + 0x11685A2776D22F7ALL) ^ 0x79D029DF8A0571B2) >> (8 * ((v3 + 81) & 7u))) ^ v3[337];
  v81 = (((~(2 * v22) | 0xFFFFFF2D) + v22 - 1358946198) << 32) ^ 0xAF00206900000000;
  v82 = (v63 - ((2 * v63) & 0x311FD92E949EB106) - 0x67701368B5B0A77DLL) ^ 0x988FEC974A4F5883 | (v81 - ((2 * v81) & 0x56DE00000000) - 0x624A94900DDC5735) ^ 0x9DB56B6FF223A8CBLL;
  v83 = __ROR8__((v3 + 338) & 0xFFFFFFFFFFFFFFF8, 8);
  v84 = (v83 - 0x7653FFD844AF1482) ^ 0xFFAED09B0E3E9966;
  v85 = (__ROR8__((v83 - 0x7653FFD844AF1482) ^ 0xB2CED1A6D4B9C292, 8) + v84) ^ 0x8DBE49DF8B3EC60ALL;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = __ROR8__(v85, 8);
  v88 = (((v87 + v86) | 0x2AABDA015CBFF13FLL) - ((v87 + v86) | 0xD55425FEA3400EC0) - 0x2AABDA015CBFF140) ^ 0x6B838659712477B6;
  v89 = v88 ^ __ROR8__(v86, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0x1717D4ABBED3C077;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = (__ROR8__(v90, 8) + v91) ^ 0xEC888CBFDF3BD3D0;
  v93 = v92 ^ __ROR8__(v91, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ 0x3098A71738BBE723;
  v95 = v94 ^ __ROR8__(v93, 61);
  v96 = (__ROR8__(v94, 8) + v95) ^ 0x5028BB63E7A27580;
  v97 = __ROR8__(v96, 8);
  v98 = __ROR8__(v95, 61);
  v99 = (((((((((2 * (v97 + (v96 ^ v98))) | 0x5AE51A94776BB02ELL) - (v97 + (v96 ^ v98)) + 0x528D72B5C44A27E9) ^ 0xC5CAFEB2C76286DFLL) >> (8 * ((v3 + 82) & 7u))) ^ v3[338]) - ((2 * ((((((2 * (v97 + (v96 ^ v98))) | 0x5AE51A94776BB02ELL) - (v97 + (v96 ^ v98)) + 0x528D72B5C44A27E9) ^ 0xC5CAFEB2C76286DFLL) >> (8 * ((v3 + 82) & 7u))) ^ v3[338])) & 0x12ELL)) << 24) - 0x5880801B69000000) ^ 0xA77F7FE497000000;
  v100 = (v82 - ((2 * v82) & 0x2678A5D1C62DCC80) + 0x133C52E8E316E640) ^ 0x133C52E8E316E640 | (v99 - ((2 * v99) & 0x173C036D12000000) + 0xB9E01B689F783ACLL) ^ 0xB9E01B689F783ACLL;
  v101 = __ROR8__((v3 + 339) & 0xFFFFFFFFFFFFFFF8, 8);
  v102 = ((0x7653FFD844AF1481 - v101) & 0xB30B0E04CEBC8992) + v101 - 0x7653FFD844AF1482 - ((v101 - 0x7653FFD844AF1482) & 0xB30B0E04CEBC8992);
  v103 = v102 ^ 0x1C5DFA21A054B00;
  v102 ^= 0x4CA5DE9FC08210F4uLL;
  v104 = (__ROR8__(v103, 8) + v102) ^ 0x8DBE49DF8B3EC60ALL;
  v105 = v104 ^ __ROR8__(v102, 61);
  v106 = __ROR8__(v104, 8);
  v107 = __ROR8__((((2 * (v106 + v105)) & 0x3F33FA72E4ED7622) - (v106 + v105) + 0x606602C68D8944EELL) ^ 0x214E5E9EA012C267, 8);
  v108 = (((2 * (v106 + v105)) & 0x3F33FA72E4ED7622) - (v106 + v105) + 0x606602C68D8944EELL) ^ 0x214E5E9EA012C267 ^ __ROR8__(v105, 61);
  v109 = (v107 + v108) ^ 0x1717D4ABBED3C077;
  v110 = v109 ^ __ROR8__(v108, 61);
  v111 = __ROR8__(v109, 8);
  v112 = (v111 + v110 - ((2 * (v111 + v110)) & 0x1E478AE932743620) + 0xF23C574993A1B10) ^ 0xE3AB49CB4601C8C0;
  v113 = v112 ^ __ROR8__(v110, 61);
  v114 = (__ROR8__(v112, 8) + v113) ^ 0x3098A71738BBE723;
  v115 = v114 ^ __ROR8__(v113, 61);
  v116 = __ROR8__(v114, 8);
  v117 = (((2 * (v116 + v115)) & 0x55781032AF4E8526) - (v116 + v115) - 0x2ABC081957A74294) ^ 0x856B4C854FFAC8ECLL;
  v118 = v117 ^ __ROR8__(v115, 61);
  v119 = __ROR8__(v117, 8);
  v120 = (((((((v119 + v118) ^ 0x68B873F8FCD75EC8) >> (8 * ((v3 + 83) & 7u))) ^ v3[339]) - ((2 * ((((v119 + v118) ^ 0x68B873F8FCD75EC8) >> (8 * ((v3 + 83) & 7u))) ^ v3[339])) & 0x15ELL)) << 16) + 0x30A78F5762AF0000) ^ 0x30A78F5762AF0000;
  v121 = (v100 - ((2 * v100) & 0xA81A98E1C9DEAB4ELL) - 0x2BF2B38F1B10AA59) ^ 0xD40D4C70E4EF55A7 | (v120 - ((2 * v120) & 0x3CB82722D9E20000) - 0x61A3EC6E930EB5C6) ^ 0x9E5C13916CF14A3ALL;
  v122 = __ROR8__((v3 + 340) & 0xFFFFFFFFFFFFFFF8, 8);
  v123 = ((0x7653FFD844AF1481 - v122) & 0x529ADAA51514455CLL) + v122 - 0x7653FFD844AF1482 - ((v122 - 0x7653FFD844AF1482) & 0x529ADAA51514455CLL);
  v124 = v123 ^ 0xE0540B03C1AD87CELL;
  v123 ^= 0xAD340A3E1B2ADC3ALL;
  v125 = __ROR8__(v124, 8);
  v126 = (((v125 + v123) | 0x7DB19439D5F1CCCCLL) - ((v125 + v123) | 0x824E6BC62A0E3333) - 0x7DB19439D5F1CCCDLL) ^ 0xF00FDDE65ECF0AC6;
  v127 = v126 ^ __ROR8__(v123, 61);
  v128 = __ROR8__(v126, 8);
  v129 = (((v128 + v127) & 0x788A5C50FF477F5FLL ^ 0x882404046034B0BLL) + ((v128 + v127) & 0x8775A3AF00B880A0 ^ 0x8175010600388081) - 1) ^ 0xC8DF1D1E6BA04D02;
  v130 = v129 ^ __ROR8__(v127, 61);
  v131 = (__ROR8__(v129, 8) + v130) ^ 0x1717D4ABBED3C077;
  v132 = v131 ^ __ROR8__(v130, 61);
  v133 = __ROR8__(v131, 8);
  v134 = __ROR8__((((2 * (v133 + v132)) | 0x75FF21A51885509ELL) - (v133 + v132) - 0x3AFF90D28C42A84FLL) ^ 0xD6771C6D53797B9FLL, 8);
  v135 = (((2 * (v133 + v132)) | 0x75FF21A51885509ELL) - (v133 + v132) - 0x3AFF90D28C42A84FLL) ^ 0xD6771C6D53797B9FLL ^ __ROR8__(v132, 61);
  v136 = (((2 * (v134 + v135)) | 0x5CA5DE9B2A16C314) - (v134 + v135) - 0x2E52EF4D950B618ALL) ^ 0x1ECA485AADB086A9;
  v137 = v136 ^ __ROR8__(v135, 61);
  v138 = __ROR8__(v136, 8);
  v139 = (((v138 + v137) | 0xACFB152F5E235A2ALL) - ((v138 + v137) | 0x5304EAD0A1DCA5D5) + 0x5304EAD0A1DCA5D5) ^ 0xFCD3AE4CB9812FAALL;
  v140 = v139 ^ __ROR8__(v137, 61);
  v141 = __ROR8__(v139, 8);
  v142 = (((((((v141 + v140) ^ 0x68B873F8FCD75EC8) >> (8 * ((v3 + 84) & 7u))) ^ v3[340]) - ((2 * ((((v141 + v140) ^ 0x68B873F8FCD75EC8) >> (8 * ((v3 + 84) & 7u))) ^ v3[340])) & 0xD8)) << 8) + 0x656F4C2EF9FB6C00) ^ 0x656F4C2EF9FB6C00;
  v143 = (v121 - ((2 * v121) & 0xAB50CDA986396698) - 0x2A57992B3CE34CB4) ^ 0xD5A866D4C31CB34CLL | (v142 - ((2 * v142) & 0x4D0D95807EF16400) + 0x2686CAC03F78B2CELL) ^ 0x2686CAC03F78B2CELL;
  v144 = __ROR8__((v3 + 341) & 0xFFFFFFFFFFFFFFF8, 8);
  v145 = v144 - ((2 * v144 + 0x1358004F76A1D6FCLL) & 0x41AF948D421BCAB4) + 0x2E83CA6E5C5ED0D8;
  v146 = __ROR8__(v145 ^ 0x16191BE075B427C8, 8);
  v145 ^= 0x5B791ADDAF337C3CuLL;
  v147 = (v146 + v145) ^ 0x8DBE49DF8B3EC60ALL;
  v148 = v147 ^ __ROR8__(v145, 61);
  v149 = __ROR8__(v147, 8);
  v150 = (((2 * (v149 + v148)) & 0x55C06E2F00B4CAB4) - (v149 + v148) - 0x2AE03717805A655BLL) ^ 0x943794B0523E1C2CLL;
  v151 = v150 ^ __ROR8__(v148, 61);
  v152 = __ROR8__(v150, 8);
  v153 = (((2 * (v152 + v151)) | 0x9B94C29DE3853946) - (v152 + v151) + 0x32359EB10E3D635DLL) ^ 0xDADDB5E54F115CD4;
  v154 = v153 ^ __ROR8__(v151, 61);
  v155 = (__ROR8__(v153, 8) + v154) ^ 0xEC888CBFDF3BD3D0;
  v156 = v155 ^ __ROR8__(v154, 61);
  v157 = __ROR8__(v155, 8);
  v158 = (((2 * (v157 + v156)) | 0xF8965BD215354BBELL) - (v157 + v156) + 0x3B4D216F5655A21) ^ 0xCCD38AFE322142FCLL;
  v159 = v158 ^ __ROR8__(v156, 61);
  v160 = __ROR8__(v158, 8);
  v161 = (((v160 + v159) | 0xAE369C8CF25F2B72) - ((v160 + v159) | 0x51C963730DA0D48DLL) + 0x51C963730DA0D48DLL) ^ 0xFE1E27EF15FD5EF2;
  LODWORD(v3) = (((__ROR8__(v161, 8) + (v161 ^ __ROR8__(v159, 61))) ^ 0x68B873F8FCD75EC8) >> (8 * ((v3 + 85) & 7u))) ^ v3[341];
  v162 = (v143 - ((2 * v143) & 0x453D573D1F5CC204) - 0x5D61546170519EFELL) ^ 0xA29EAB9E8FAE6102 | (v3 - ((2 * v3) & 0x1FALL) - 0x655FB5C7BC995903) ^ 0x9AA04A384366A6FDLL;
  *(v1 + 760) = v162 - 0x362BAD4AF6A55359 - ((2 * v162) & 0x93A8A56A12B5594ELL);
  return (*(v2 + 8 * a1))();
}

uint64_t sub_244779454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 160) = *(v5 + 1352);
  v7 = LODWORD(STACK[0x924]) != ((v4 + 4075) ^ 0xE260140) || LOWORD(STACK[0x92A]) != ((v4 + 813) ^ 0xECD0);
  return (*(a4 + 8 * ((432 * v7) ^ (v4 + 1524))))(a1, a2, a3);
}

uint64_t sub_2447794C4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v7 = STACK[0x92C];
  v5[50] = a2;
  LODWORD(STACK[0xAA0]) = v4;
  LOWORD(STACK[0xAA6]) = v2;
  LODWORD(STACK[0xAA8]) = v7;
  LODWORD(STACK[0xAAC]) = STACK[0x704];
  v5[217] = v5[95];
  v5[123] = STACK[0x370];
  v9 = a2 != v6 && (v7 ^ 0xE2617E8u) < (((v3 + 15257) | 0x71) ^ 0xFFFFBA03);
  return (*(a1 + 8 * ((v9 * ((v3 + 7888) ^ 0x6542)) ^ v3)))();
}

uint64_t sub_244779550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 8 * (v4 ^ 0x717E)))(32, a2, a3);
  v6 = STACK[0x358];
  STACK[0x568] = v5 + 0x750C1ABFB0567FDBLL;
  return (*(v6 + 8 * (((v5 != 0) * (((v4 - 1199208652) & 0x477A7F7D) - 11704)) ^ v4)))();
}

uint64_t sub_2447795DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  *(a1 + 8) = 0x750C1ABFB0567FDBLL;
  v8 = v5 ^ 0xE2617E9u;
  *(v4 + 1744) = v8;
  LODWORD(v8) = ((v8 + v6 - 11494 - 637) ^ 0xEBFB1DDE) + (((v6 - 11999) | 0x630) ^ 0x1E6FFC80) + ((2 * (v8 + v6 - 11494 - 637)) & 0xD7F63BBC);
  *(a1 + 16) = v8;
  v9 = (*(a4 + 8 * (v6 ^ 0x76A8)))((v8 - 174790684), a2, a3);
  v10 = STACK[0x358];
  *(a1 + 24) = v9;
  return (*(v10 + 8 * (((8 * (v9 != 0)) | (16 * (v9 != 0))) ^ v6)))();
}

uint64_t sub_2447798B4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v6 = *(v4 + 1160);
  *(v4 + 904) = a2;
  LODWORD(STACK[0x69C]) = v5;
  return (*(a1 + 8 * (((v6 + v2 == 0) * (((v3 + 8849) | 0x200) + ((v3 + 1532495119) & 0xA4A7EFBF) - 14670)) ^ v3)))();
}

uint64_t sub_244779918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = (*(a4 + 8 * (v8 ^ 0x6F45)))(LODWORD(STACK[0x69C]) ^ 0xE2617E9u, a2, a3);
  v12 = STACK[0x358];
  *(v9 + 1568) = v11 + 0x3E0DD92B1DE16FEALL;
  if (v11)
  {
    v13 = 1216124116;
  }

  else
  {
    v13 = a8;
  }

  LODWORD(STACK[0xA14]) = v13;
  return (*(v12 + 8 * ((25 * (((((v8 - 72) | 0x86) + 11) ^ (v11 == 0)) & 1)) ^ v8)))();
}

uint64_t sub_244779A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v7 + 720);
  *(v7 + 864) = v4;
  LODWORD(STACK[0x69C]) = v8;
  return (*(a4 + 8 * (((((v9 + v5 == 0) ^ (v6 + 65)) & 1) * (v6 ^ 0x4617)) ^ v6)))(a1, a2, a3);
}

uint64_t sub_244779A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4 | 0x2200;
  v7 = (*(a4 + 8 * ((v4 | 0x2200) + 7858)))(LODWORD(STACK[0x69C]) ^ 0xE261E34 ^ (101 * ((v4 | 0x2200) ^ 0x3B0Au)), a2, a3);
  v8 = STACK[0x358];
  *(v5 + 1536) = v7 + 0x3E0DD92B1DE16FEALL;
  if (v7)
  {
    v9 = 1216124116;
  }

  else
  {
    v9 = 1216081107;
  }

  LODWORD(STACK[0x9F4]) = v9;
  return (*(v8 + 8 * ((51 * (v7 != 0)) ^ v6)))();
}

uint64_t sub_244779D28(uint64_t a1, int a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  STACK[0x290] = *(a4 + 8 * v8);
  v14 = a3 + a2 + v9;
  *&STACK[0x230] = vdupq_n_s64(0x38uLL);
  *&STACK[0x320] = vdupq_n_s64(a7);
  *&STACK[0x330] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x300] = vdupq_n_s64(a8);
  *&STACK[0x310] = vdupq_n_s64(0x7F265DEF06E3E4EEuLL);
  *&STACK[0x2F0] = vdupq_n_s64(0x80D9A210F91C1B11);
  *&STACK[0x210] = vdupq_n_s64(v11);
  *&STACK[0x220] = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *&STACK[0x200] = vdupq_n_s64(a5);
  *&STACK[0x2E0] = vdupq_n_s64(0xA58607B0ECAE5480);
  *&STACK[0x340] = vdupq_n_s64(0x41D22A8C66DD9C15uLL);
  *&STACK[0x2C0] = vdupq_n_s64(v12);
  *&STACK[0x2D0] = vdupq_n_s64(v13);
  *&STACK[0x2A0] = vdupq_n_s64(v10);
  *&STACK[0x2B0] = vdupq_n_s64(0x3098A71738BBE723uLL);
  return (STACK[0x290])((v14 + 4), (v14 - 3), (v14 - 2), (v14 + 5), (v14 + 6), (v14 + 2));
}

uint64_t sub_244779F84@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int8x16_t a49, int8x16_t a50, uint64_t a51, uint64_t a52, int64x2_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int8x16_t a60, uint64_t a61, uint64_t a62, int8x16_t a63)
{
  v86.i64[0] = v75 + (a8 + v78 + 16);
  v86.i64[1] = v75 + (v76 + v78 + 16);
  v87.i64[0] = v75 + (v67 + v78 + 16);
  v87.i64[1] = v75 + (v69 + v78 + 16);
  v88.i64[0] = v75 + (a2 + v78 + 16);
  v88.i64[1] = v75 + (v71 + v78 + 16);
  v89.i64[0] = v75 + (v65 + v78 + 16);
  v89.i64[1] = v75 + (a3 + v78 + 16);
  v90 = v89;
  *&STACK[0x260] = v89;
  v89.i64[0] = v75 + (v74 + v78 + 16);
  v89.i64[1] = v75 + (v66 + v78 + 16);
  *&STACK[0x290] = v89;
  v89.i64[0] = v75 + (a7 + v78 + 16);
  v89.i64[1] = v75 + (a6 + v78 + 16);
  *&STACK[0x270] = v89;
  v91 = *&STACK[0x320];
  v92 = vandq_s8(v90, *&STACK[0x330]);
  v93 = vandq_s8(v88, *&STACK[0x330]);
  v94 = vandq_s8(v87, *&STACK[0x330]);
  v95 = vandq_s8(v86, *&STACK[0x330]);
  v96 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v97 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v98 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v99 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v100 = vaddq_s64(v98, *&STACK[0x320]);
  v101 = vaddq_s64(v97, *&STACK[0x320]);
  v103 = *&STACK[0x300];
  v102 = *&STACK[0x310];
  v104 = *&STACK[0x2F0];
  *&STACK[0x280] = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x300], v99), *&STACK[0x2F0]), vorrq_s8(vaddq_s64(v99, *&STACK[0x320]), *&STACK[0x310]));
  v105 = vaddq_s64(vorrq_s8(vsubq_s64(v103, v98), v104), vorrq_s8(v100, v102));
  v106 = *&STACK[0x210];
  v107 = vsubq_s64(*&STACK[0x220], vaddq_s64(vorrq_s8(vsubq_s64(v103, v96), v104), vorrq_s8(vaddq_s64(v96, v91), v102)));
  v108 = vsubq_s64(*&STACK[0x220], vaddq_s64(vorrq_s8(vsubq_s64(v103, v97), v104), vorrq_s8(v101, v102)));
  v109 = *&STACK[0x220];
  v110 = veorq_s8(v108, *&STACK[0x210]);
  v111 = veorq_s8(v107, *&STACK[0x210]);
  v112 = veorq_s8(v107, v82);
  v113 = veorq_s8(v108, v82);
  v114 = (v70 + v78 + v64 + 16);
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), v83);
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v113), v83);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v118 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v119 = vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL);
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v118);
  v121 = vaddq_s64(v119, v117);
  v122 = *&STACK[0x2E0];
  v123 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v121, v121), a64), v121), *&STACK[0x2E0]), a63);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v120, v120), a64), v120), *&STACK[0x2E0]), a63);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v126 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v127 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v126);
  v129 = vaddq_s64(v127, v125);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v128, v84), vorrq_s8(v128, a49)), a49), a60);
  v131 = vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v129, v84), vorrq_s8(v129, a49)), a49), a60);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v134 = veorq_s8(v130, v131);
  v135 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v134);
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133);
  v137 = *&STACK[0x2C0];
  v138 = *&STACK[0x2D0];
  v139 = veorq_s8(vaddq_s64(vsubq_s64(v136, vandq_s8(vaddq_s64(v136, v136), *&STACK[0x2D0])), *&STACK[0x340]), *&STACK[0x2C0]);
  v140 = vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(v135, vandq_s8(vaddq_s64(v135, v135), *&STACK[0x2D0])), *&STACK[0x340]), *&STACK[0x2C0]);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v143 = veorq_s8(v139, v140);
  v144 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v145 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v143);
  v146 = *&STACK[0x2A0];
  v147 = *&STACK[0x2B0];
  v148 = veorq_s8(vaddq_s64(v144, v142), *&STACK[0x2B0]);
  v149 = vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL);
  v150 = veorq_s8(v145, *&STACK[0x2B0]);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v152 = veorq_s8(v148, v149);
  v153 = vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL);
  v154 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v152);
  v155 = vaddq_s64(v153, v151);
  v156 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v155, v155), *&STACK[0x2A0]), v155), v79), v85);
  v157 = vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL);
  v158 = vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL);
  v159 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v154, v154), *&STACK[0x2A0]), v154), v79), v85);
  v160.i64[0] = v75 + (a4 + v78 + 16);
  v160.i64[1] = v75 + (a1 + v78 + 16);
  *&STACK[0x240] = v160;
  v161 = vsubq_s64(v109, v105);
  v162 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), veorq_s8(v156, v157));
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), veorq_s8(v159, v158));
  v164 = *&STACK[0x230];
  v285.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v162, v162), v80), v162), a53), v81), vnegq_s64(vandq_s8(vshlq_n_s64(v86, 3uLL), *&STACK[0x230])));
  v285.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v163, v163), v80), v163), a53), v81), vnegq_s64(vandq_s8(vshlq_n_s64(v87, 3uLL), *&STACK[0x230])));
  v165 = veorq_s8(v161, v106);
  v166 = veorq_s8(v161, v82);
  v167 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166), v83);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v169, v169), a64), v169), v122), a63);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171);
  v173 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v172, v84), vorrq_s8(v172, a49)), a49), a60);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174);
  v176 = *&STACK[0x340];
  v177 = veorq_s8(vaddq_s64(vsubq_s64(v175, vandq_s8(vaddq_s64(v175, v175), v138)), *&STACK[0x340]), v137);
  v178 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v179 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178), v147);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v181 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180);
  v182 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v181, v181), v146), v181), v79), v85);
  v159.i64[0] = v75 + v114;
  v159.i64[1] = v75 + (a5 + v78 + 16);
  *&STACK[0x250] = v159;
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL)));
  v184 = vsubq_s64(vorrq_s8(vaddq_s64(v183, v183), v80), v183);
  v185 = vandq_s8(v159, *&STACK[0x330]);
  v186 = vsubq_s64(v109, *&STACK[0x280]);
  v285.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v184, a53), v81), vnegq_s64(vandq_s8(vshlq_n_s64(v88, 3uLL), v164)));
  v187 = veorq_s8(v186, v106);
  v188 = veorq_s8(v186, v82);
  v189 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v188), v83);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v191 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v190);
  v192 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v191, v191), a64), v191), v122), a63);
  v193 = veorq_s8(v192, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v194 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL), v193);
  v195 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v194, v84), vorrq_s8(v194, a49)), a49), a60);
  v196 = veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL));
  v197 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v196);
  v198 = veorq_s8(vaddq_s64(vsubq_s64(v197, vandq_s8(vaddq_s64(v197, v197), v138)), v176), v137);
  v199 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL));
  v200 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v199), v147);
  v201 = veorq_s8(v200, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL));
  v202 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v201);
  v203 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v202, v202), v146), v202), v79), v85);
  v204 = veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL));
  v205 = vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL);
  v206 = vandq_s8(v160, *&STACK[0x330]);
  v207 = vaddq_s64(v205, v204);
  v208 = *&STACK[0x270];
  v209 = vandq_s8(*&STACK[0x270], *&STACK[0x330]);
  v285.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v207, v207), v80), v207), a53), v81), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x260], 3uLL), v164)));
  v210 = *&STACK[0x290];
  v211 = vandq_s8(*&STACK[0x290], *&STACK[0x330]);
  v212 = vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL);
  v213 = vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL);
  v214 = vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL);
  v215 = vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL);
  v216 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x300], v214), *&STACK[0x2F0]), vorrq_s8(vaddq_s64(v214, *&STACK[0x320]), *&STACK[0x310]));
  v217 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x300], v215), *&STACK[0x2F0]), vorrq_s8(vaddq_s64(v215, *&STACK[0x320]), *&STACK[0x310]));
  v218 = vsubq_s64(v109, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x300], v212), *&STACK[0x2F0]), vorrq_s8(vaddq_s64(v212, *&STACK[0x320]), *&STACK[0x310])));
  v219 = vsubq_s64(v109, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x300], v213), *&STACK[0x2F0]), vorrq_s8(vaddq_s64(v213, *&STACK[0x320]), *&STACK[0x310])));
  *&STACK[0x280] = vqtbl4q_s8(v285, a50);
  v220 = veorq_s8(v219, v106);
  v285.val[0] = veorq_s8(v218, v106);
  v285.val[1] = veorq_s8(v218, v82);
  v285.val[2] = veorq_s8(v219, v82);
  v285.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v285.val[0], 0x38uLL), v285.val[0], 8uLL), v285.val[1]), v83);
  v221 = vsraq_n_u64(vshlq_n_s64(v285.val[1], 3uLL), v285.val[1], 0x3DuLL);
  v222 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v285.val[2]), v83);
  v285.val[1] = veorq_s8(v222, vsraq_n_u64(vshlq_n_s64(v285.val[2], 3uLL), v285.val[2], 0x3DuLL));
  v285.val[2] = veorq_s8(v285.val[0], v221);
  v223 = vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL);
  v224 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v285.val[0], 0x38uLL), v285.val[0], 8uLL), v285.val[2]);
  v285.val[0] = vaddq_s64(v223, v285.val[1]);
  v285.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v285.val[0], v285.val[0]), a64), v285.val[0]), *&STACK[0x2E0]), a63);
  v225 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v224, v224), a64), v224), *&STACK[0x2E0]), a63);
  v226 = vsraq_n_u64(vshlq_n_s64(v285.val[1], 3uLL), v285.val[1], 0x3DuLL);
  v285.val[1] = veorq_s8(v225, vsraq_n_u64(vshlq_n_s64(v285.val[2], 3uLL), v285.val[2], 0x3DuLL));
  v285.val[2] = veorq_s8(v285.val[0], v226);
  v227 = vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL);
  v228 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v285.val[0], 0x38uLL), v285.val[0], 8uLL), v285.val[2]);
  v285.val[0] = vaddq_s64(v227, v285.val[1]);
  v229 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v228, v84), vorrq_s8(v228, a49)), a49), a60);
  v285.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v285.val[0], v84), vorrq_s8(v285.val[0], a49)), a49), a60);
  v285.val[1] = veorq_s8(v285.val[0], vsraq_n_u64(vshlq_n_s64(v285.val[1], 3uLL), v285.val[1], 0x3DuLL));
  v285.val[2] = veorq_s8(v229, vsraq_n_u64(vshlq_n_s64(v285.val[2], 3uLL), v285.val[2], 0x3DuLL));
  v230 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), v285.val[2]);
  v285.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v285.val[0], 0x38uLL), v285.val[0], 8uLL), v285.val[1]);
  v285.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v285.val[0], vandq_s8(vaddq_s64(v285.val[0], v285.val[0]), *&STACK[0x2D0])), *&STACK[0x340]), *&STACK[0x2C0]);
  v231 = vsraq_n_u64(vshlq_n_s64(v285.val[1], 3uLL), v285.val[1], 0x3DuLL);
  v232 = veorq_s8(vaddq_s64(vsubq_s64(v230, vandq_s8(vaddq_s64(v230, v230), *&STACK[0x2D0])), *&STACK[0x340]), *&STACK[0x2C0]);
  v285.val[1] = veorq_s8(v232, vsraq_n_u64(vshlq_n_s64(v285.val[2], 3uLL), v285.val[2], 0x3DuLL));
  v285.val[2] = veorq_s8(v285.val[0], v231);
  v233 = vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL);
  v234 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v285.val[0], 0x38uLL), v285.val[0], 8uLL), v285.val[2]);
  v285.val[0] = veorq_s8(vaddq_s64(v233, v285.val[1]), *&STACK[0x2B0]);
  v235 = veorq_s8(v234, *&STACK[0x2B0]);
  v236 = vsraq_n_u64(vshlq_n_s64(v285.val[1], 3uLL), v285.val[1], 0x3DuLL);
  v285.val[1] = veorq_s8(v235, vsraq_n_u64(vshlq_n_s64(v285.val[2], 3uLL), v285.val[2], 0x3DuLL));
  v285.val[2] = veorq_s8(v285.val[0], v236);
  v237 = vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL);
  v238 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v285.val[0], 0x38uLL), v285.val[0], 8uLL), v285.val[2]);
  v285.val[0] = vaddq_s64(v237, v285.val[1]);
  v285.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v285.val[0], v285.val[0]), *&STACK[0x2A0]), v285.val[0]), v79), v85);
  v239 = vsraq_n_u64(vshlq_n_s64(v285.val[1], 3uLL), v285.val[1], 0x3DuLL);
  v240 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v238, v238), *&STACK[0x2A0]), v238), v79), v85);
  v285.val[1] = veorq_s8(v240, vsraq_n_u64(vshlq_n_s64(v285.val[2], 3uLL), v285.val[2], 0x3DuLL));
  v285.val[2] = veorq_s8(v285.val[0], v239);
  v241 = vsraq_n_u64(vshlq_n_s64(v240, 0x38uLL), v240, 8uLL);
  v242 = vsubq_s64(v109, v216);
  v243 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v285.val[0], 0x38uLL), v285.val[0], 8uLL), v285.val[2]);
  v285.val[0] = vaddq_s64(v241, v285.val[1]);
  v285.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v243, v243), v80), v243), a53), v81), vnegq_s64(vandq_s8(vshlq_n_s64(v210, 3uLL), v164)));
  v285.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v285.val[0], v285.val[0]), v80), v285.val[0]), a53), v81), vnegq_s64(vandq_s8(vshlq_n_s64(v208, 3uLL), v164)));
  v244 = veorq_s8(v242, v106);
  v245 = veorq_s8(v242, v82);
  v246 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), v245), v83);
  v247 = veorq_s8(v246, vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL));
  v248 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL), v247);
  v249 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v248, v248), a64), v248), *&STACK[0x2E0]), a63);
  v250 = veorq_s8(v249, vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL));
  v251 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL), v250);
  v252 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v251, v84), vorrq_s8(v251, a49)), a49), a60);
  v253 = veorq_s8(v252, vsraq_n_u64(vshlq_n_s64(v250, 3uLL), v250, 0x3DuLL));
  v254 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v252, 0x38uLL), v252, 8uLL), v253);
  v255 = veorq_s8(vaddq_s64(vsubq_s64(v254, vandq_s8(vaddq_s64(v254, v254), *&STACK[0x2D0])), *&STACK[0x340]), *&STACK[0x2C0]);
  v256 = veorq_s8(v255, vsraq_n_u64(vshlq_n_s64(v253, 3uLL), v253, 0x3DuLL));
  v257 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v255, 0x38uLL), v255, 8uLL), v256), *&STACK[0x2B0]);
  v258 = veorq_s8(v257, vsraq_n_u64(vshlq_n_s64(v256, 3uLL), v256, 0x3DuLL));
  v259 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL), v258);
  v260 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v259, v259), *&STACK[0x2A0]), v259), v79), v85);
  v261 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260, 0x38uLL), v260, 8uLL), veorq_s8(v260, vsraq_n_u64(vshlq_n_s64(v258, 3uLL), v258, 0x3DuLL)));
  v262 = vsubq_s64(v109, v217);
  v285.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v261, v261), v80), v261), a53), v81), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x240], 3uLL), v164)));
  v263 = veorq_s8(v262, v106);
  v264 = veorq_s8(v262, v82);
  v265 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL), v264), v83);
  v266 = veorq_s8(v265, vsraq_n_u64(vshlq_n_s64(v264, 3uLL), v264, 0x3DuLL));
  v267 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL), v266);
  v268 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v267, v267), a64), v267), *&STACK[0x2E0]), a63);
  v269 = veorq_s8(v268, vsraq_n_u64(vshlq_n_s64(v266, 3uLL), v266, 0x3DuLL));
  v270 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL), v269);
  v271 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v270, v84), vorrq_s8(v270, a49)), a49), a60);
  v272 = veorq_s8(v271, vsraq_n_u64(vshlq_n_s64(v269, 3uLL), v269, 0x3DuLL));
  v273 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v271, 0x38uLL), v271, 8uLL), v272);
  v274 = veorq_s8(vaddq_s64(vsubq_s64(v273, vandq_s8(vaddq_s64(v273, v273), *&STACK[0x2D0])), *&STACK[0x340]), *&STACK[0x2C0]);
  v275 = veorq_s8(v274, vsraq_n_u64(vshlq_n_s64(v272, 3uLL), v272, 0x3DuLL));
  v276 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274, 0x38uLL), v274, 8uLL), v275), *&STACK[0x2B0]);
  v277 = veorq_s8(v276, vsraq_n_u64(vshlq_n_s64(v275, 3uLL), v275, 0x3DuLL));
  v278 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v276, 0x38uLL), v276, 8uLL), v277);
  v279 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v278, v278), *&STACK[0x2A0]), v278), v79), v85);
  v280 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v279, 0x38uLL), v279, 8uLL), veorq_s8(v279, vsraq_n_u64(vshlq_n_s64(v277, 3uLL), v277, 0x3DuLL)));
  v281 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v280, v280), v80), v280), a53), v81), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x250], 3uLL), v164)));
  v280.i64[0] = vqtbl4q_s8(v285, a50).u64[0];
  v280.i64[1] = STACK[0x280];
  v282 = vrev64q_s8(*(v75 + v114 - 15));
  v285.val[0].i64[0] = 0x5D5D5D5D5D5D5D5DLL;
  v285.val[0].i64[1] = 0x5D5D5D5D5D5D5D5DLL;
  v283 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v282, v282, 8uLL), v285.val[0]), v280));
  *(v72 + v114) = vextq_s8(v283, v283, 8uLL);
  return (*(v73 + 8 * ((27866 * (v77 == v78)) ^ v68)))();
}

uint64_t sub_24477AD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  v10 = *(a4 + 8 * v8);
  *&STACK[0x320] = vdupq_n_s64(0x38uLL);
  *&STACK[0x330] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x300] = vdupq_n_s64(0x7F265DEF06E3E4EEuLL);
  *&STACK[0x310] = vdupq_n_s64(a7);
  *&STACK[0x2E0] = vdupq_n_s64(0x80D9A210F91C1B11);
  *&STACK[0x2F0] = vdupq_n_s64(a8);
  *&STACK[0x2C0] = vdupq_n_s64(v9);
  *&STACK[0x2D0] = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *&STACK[0x2B0] = vdupq_n_s64(a5);
  *&STACK[0x2A0] = xmmword_245010D40;
  return v10();
}

uint64_t sub_24477AEDC(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v33 = (a6 + v9);
  v34.i64[0] = v15 + (v13 + v9);
  v34.i64[1] = v15 + (v12 + v9);
  v35.i64[0] = v15 + (a3 + v9);
  v35.i64[1] = v15 + (a2 + v9);
  v36.i64[0] = v15 + (a5 + v9);
  v36.i64[1] = v15 + (a4 + v9);
  v37.i64[0] = v15 + v33;
  v37.i64[1] = v15 + (a7 + v9);
  v38 = vandq_s8(v37, *&STACK[0x330]);
  v39 = vandq_s8(v36, *&STACK[0x330]);
  v40 = vandq_s8(v35, *&STACK[0x330]);
  v41 = vandq_s8(v34, *&STACK[0x330]);
  v42 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v43 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v44 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v45 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v47 = *&STACK[0x300];
  v46 = *&STACK[0x310];
  v48 = vaddq_s64(v44, *&STACK[0x310]);
  v49 = vaddq_s64(v43, *&STACK[0x310]);
  v51 = *&STACK[0x2E0];
  v50 = *&STACK[0x2F0];
  *&STACK[0x340] = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x2F0], v45), *&STACK[0x2E0]), vorrq_s8(vaddq_s64(v45, *&STACK[0x310]), *&STACK[0x300]));
  v52 = vaddq_s64(vorrq_s8(vsubq_s64(v50, v44), v51), vorrq_s8(v48, v47));
  v53 = vsubq_s64(*&STACK[0x2D0], vaddq_s64(vorrq_s8(vsubq_s64(v50, v42), v51), vorrq_s8(vaddq_s64(v42, v46), v47)));
  v54 = vsubq_s64(*&STACK[0x2D0], vaddq_s64(vorrq_s8(vsubq_s64(v50, v43), v51), vorrq_s8(v49, v47)));
  v55 = veorq_s8(v54, *&STACK[0x2C0]);
  v56 = veorq_s8(v53, *&STACK[0x2C0]);
  v57 = veorq_s8(v53, *&STACK[0x2B0]);
  v58 = veorq_s8(v54, *&STACK[0x2B0]);
  v59 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v57), v18);
  v60 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v58), v18);
  v61 = vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL);
  v62 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v63 = veorq_s8(v59, v61);
  v64 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v63);
  v66 = vaddq_s64(v64, v62);
  v67 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v66, v66), v19), v66), v20), v21);
  v68 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v65, v65), v19), v65), v20), v21);
  v69 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v70 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v71 = veorq_s8(v67, v69);
  v72 = vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v71);
  v74 = vaddq_s64(v72, v70);
  v75 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v73, v22), vorrq_s8(v73, v23)), v23), v24);
  v76 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v74, v22), vorrq_s8(v74, v23)), v23), v24);
  v77 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v78 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v79 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v78);
  v80 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v77);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(v80, vandq_s8(vaddq_s64(v80, v80), v25)), v26), v27);
  v82 = veorq_s8(vaddq_s64(vsubq_s64(v79, vandq_s8(vaddq_s64(v79, v79), v25)), v26), v27);
  v83 = vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL);
  v84 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v85 = veorq_s8(v81, v83);
  v86 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v85);
  v88 = veorq_s8(vaddq_s64(v86, v84), v28);
  v89 = vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL);
  v90 = veorq_s8(v87, v28);
  v91 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v92 = veorq_s8(v88, v89);
  v93 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v92);
  v95 = vaddq_s64(v93, v91);
  v96 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v95, v95), v29), v95), v30), v31);
  v97 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v94, v94), v29), v94), v30), v31);
  v98 = vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL);
  v99 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v100 = veorq_s8(v96, v98);
  v101 = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v103 = vsubq_s64(*&STACK[0x2D0], v52);
  v104 = vaddq_s64(v102, v100);
  v105 = vaddq_s64(v101, v99);
  v144.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v104, v104), v32), v104), v16), v17), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), *&STACK[0x320])));
  v144.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v105, v105), v32), v105), v16), v17), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), *&STACK[0x320])));
  v106 = veorq_s8(v103, *&STACK[0x2C0]);
  v107 = veorq_s8(v103, *&STACK[0x2B0]);
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), v18);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109);
  v111 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v110, v110), v19), v110), v20), v21);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v113, v22), vorrq_s8(v113, v23)), v23), v24);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(v116, vandq_s8(vaddq_s64(v116, v116), v25)), v26), v27);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), v28);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v121, v121), v29), v121), v30), v31);
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL)));
  v124 = vsubq_s64(*&STACK[0x2D0], *&STACK[0x340]);
  v144.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v123, v123), v32), v123), v16), v17), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), *&STACK[0x320])));
  v125 = veorq_s8(v124, *&STACK[0x2C0]);
  v126 = veorq_s8(v124, *&STACK[0x2B0]);
  v127 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126), v18);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v129, v129), v19), v129), v20), v21);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131);
  v133 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v132, v22), vorrq_s8(v132, v23)), v23), v24);
  v134 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v135 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v134);
  v136 = veorq_s8(vaddq_s64(vsubq_s64(v135, vandq_s8(vaddq_s64(v135, v135), v25)), v26), v27);
  v137 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v138 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v137), v28);
  v139 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v140, v140), v29), v140), v30), v31);
  v142 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL)));
  v144.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v142, v142), v32), v142), v16), v17), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), *&STACK[0x320])));
  *(v10 + v33) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(v15 + v33 - 7)), 0x5D5D5D5D5D5D5D5DLL), *&vqtbl4q_s8(v144, *&STACK[0x2A0])));
  return (*(v14 + 8 * (((v11 == v9) * a8) ^ v8)))(a1);
}

uint64_t sub_24477B620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v21 = (v6 - 209284294);
  v22 = __ROR8__((v20 + v21) & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = v10 - (((a5 - v22) | 0x80D9A210F91C1B11) + ((v22 + a4) | 0x7F265DEF06E3E4EELL));
  v24 = v23 ^ v15;
  v25 = v23 ^ a2;
  v26 = (__ROR8__(v24, 8) + v25) ^ a3;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((2 * (v28 + v27)) | 0xB4F3F09E26A35700) - (v28 + v27) - 0x5A79F84F1351AB80) ^ 0x1B51A4173ECA2D09;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = __ROR8__((v7 - ((v31 + v30) | v7) + ((v31 + v30) | 0x879238EFF08482D4)) ^ v17, 8);
  v33 = (v7 - ((v31 + v30) | v7) + ((v31 + v30) | 0x879238EFF08482D4)) ^ v17 ^ __ROR8__(v30, 61);
  v34 = (v32 + v33 - (v19 & (2 * (v32 + v33))) + 0x41D22A8C66DD9C15) ^ v16;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v13;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = ((v14 | (2 * (v38 + v37))) - (v38 + v37) + 0x766965B073161301) ^ a6;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = __ROR8__(v39, 8);
  v42 = STACK[0x358];
  *(a1 + v21) = *(v20 + v21) ^ v11 ^ ((((v18 | (2 * (v41 + v40))) - (v41 + v40) - 0x1BC690EC299EA66ELL) ^ 0x737EE314D549F8A6uLL) >> (8 * ((v20 + v6 + 58) & 7)));
  return (*(v42 + 8 * (((v9 + v6 == 209284293) * v12) ^ v8)))();
}

uint64_t sub_24477B83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x350] + 8811;
  *(v4 + 888) = *(v4 + 1536);
  return (*(a4 + 8 * v5))(a1, a2, a3);
}

uint64_t sub_24477B910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v7[35];
  v7[21] = v4;
  LODWORD(STACK[0x3C4]) = v8;
  v7[28] = v9 + v6;
  return (*(a4 + 8 * v5))(a1, a2, a3);
}

uint64_t sub_24477B99C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v6 = v4[44];
  v4[53] = a2;
  v4[82] = v6 + v2;
  return (*(a1 + 8 * ((((v3 - 310) ^ 0x560D ^ ((v3 + 15885) | 0xA6)) * (v5 == 237377529)) ^ v3)))();
}

uint64_t sub_24477B9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v5[118] - 0x6286B82630F8F22CLL);
  v5[17] = 0x750C1ABFB0567FDBLL;
  v5[55] = 0x40A3F59CDED51B9BLL;
  return (*(a4 + 8 * (((((91 * (v4 ^ 0xA4)) ^ (v7 == v6)) & 1) * (((v4 ^ 0x46A4) + 1723) ^ 0x6AD)) ^ v4)))(a1, a2, a3);
}

uint64_t sub_24477BA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x3E0] = v4;
  LODWORD(STACK[0x5E4]) = -106723608;
  *(v6 + 1168) = &STACK[0x470];
  LODWORD(STACK[0x3A4]) = 163416956;
  return (*(a4 + 8 * v5))(a1, a2, a3);
}

uint64_t sub_24477BD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v6 + 168) = v4;
  LODWORD(STACK[0x3C4]) = v7;
  return (*(a4 + 8 * v5))(a1, a2, a3);
}

uint64_t sub_24477BE68@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  *(v3 + 632) = a2;
  LODWORD(STACK[0x4C4]) = v4;
  return (*(a1 + 8 * v2))();
}

uint64_t sub_24477BEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x350] - 77;
  *(v4 + 888) = *(v4 + 1568);
  return (*(a4 + 8 * v5))(a1, a2, a3);
}

uint64_t sub_24477BFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 72);
  *(v4 + 928) = v6;
  return (*(a4 + 8 * (((((((v5 ^ 0x49A1) - 14509) ^ (v6 == 0x6286B82630F8F22CLL)) & 1) == 0) * (863 * (v5 ^ 0x6BC) - 1669)) ^ v5 ^ 0x49A1)))(a1, a2, a3);
}

uint64_t sub_24477C038@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v5 = *(v2 - 0x6286B82630F8F224);
  *(v3 + 312) = 0x750C1ABFB0567FDBLL;
  LODWORD(STACK[0x698]) = 237377513;
  *(v3 + 176) = 0x366AF98B410D8273;
  return (*(a1 + 8 * (((((a2 - 97) ^ (v5 == v4)) & 1) * (a2 - 5733)) | a2)))();
}

uint64_t sub_24477C0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x3E0] = v3;
  LODWORD(STACK[0x5E4]) = -156791547;
  *(v5 + 1168) = &STACK[0x520];
  LODWORD(STACK[0x3A4]) = 174029366;
  return (*(v6 + 8 * v4))(a1, a2, a3, v6);
}

uint64_t sub_24477C118@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v8 = v6[156];
  v9 = 810199703 * (((((v7 - 232) | 0x3B1EDDA6) ^ 0xFFFFFFFE) - (~(v7 - 232) | 0xC4E12259)) ^ 0x226834D4);
  v6[254] = a2;
  *(v7 - 224) = v9 ^ v3 ^ 0xB7E2A918;
  *(v7 - 220) = v9 + (v4 ^ 0x55CBB73F) - 561185 + ((v4 << (((v5 - 117) & 0xBA) + 79)) & 0xAB976E7E);
  v6[252] = v8;
  v6[250] = v2;
  *(v7 - 192) = v5 - v9 - 6733;
  v6[248] = a2;
  v10 = (*(a1 + 8 * (v5 + 10190)))(v7 - 232);
  return (*(STACK[0x358] + 8 * v5))(v10);
}

uint64_t sub_24477C330(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  a1[1] = 0x750C1ABFB0567FDBLL;
  *(v4 - 0x6286B82630F8F224) = a1 + v7;
  return (*(a4 + 8 * ((2 * (v5 ^ (v6 + 345)) - 1285874974) ^ v5 ^ (2073 * (v5 < 0xEFA4CA53)))))();
}

uint64_t sub_24477C534@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v5 = *(v2 - 0x6286B82630F8F22CLL);
  *(v3 + 784) = 0x750C1ABFB0567FDBLL;
  *(v3 + 632) = 0x1A8AD39A981EA6F1;
  return (*(a1 + 8 * (((((v5 == v4) ^ (a2 + 4)) & 1) * (((a2 + 1513346702) & 0xA5CBD6BE) - 1493)) ^ a2)))();
}

uint64_t sub_24477C5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x3E0] = v4;
  LODWORD(STACK[0x5E4]) = -217172434;
  *(v6 + 1168) = &STACK[0x6F8];
  LODWORD(STACK[0x3A4]) = 152804546;
  return (*(a4 + 8 * (v5 & 0x16F4F7BF ^ 0x16A44924u)))(a1, a2, a3);
}

uint64_t sub_24477C674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(v5 + 784) - 0x750C1ABFB0567FC3);
  *(v5 + 8) = v6;
  return (*(a4 + 8 * (((v6 == 0) * (((v4 - 2791) ^ 0x2A4F) - 11286)) ^ (v4 - 39))))(a1, a2, a3);
}

uint64_t sub_24477C6E0@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v4 = ((a2 - 1723622963) & 0x66BC3FFF ^ 0x5B9A440D63B7DFBLL) + v2 + ((v2 < ((a2 - 1723622963) ^ 0x9328DEA2)) << 32);
  v3[184] = v4;
  v5 = v3[79];
  v3[185] = v5;
  return (*(a1 + 8 * ((5643 * (v4 - v5 + 0x14D12F59B7781386 < 0xFFFFFFFFFFFFFFF6)) ^ a2)))();
}

uint64_t sub_24477C804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(v5 + 208) - 0x750C1ABFB0567FC3);
  *(v5 + 352) = v6;
  return (*(a4 + 8 * (((v6 != 0) * (((v4 - 13088) | 0x692) ^ 0xFAC)) | v4)))(a1, a2, a3);
}

uint64_t sub_24477C878@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v4 = v2 + ((a2 - 1945935989) & 0x73FC93FB) + ((v2 < ((a2 + 836849484) & 0xCE1EA7BF) + 174788958) << 32) + 0x43CDFDB07F254F0ALL;
  v3[186] = v4;
  v5 = v3[53];
  v3[187] = v5;
  return (*(a1 + 8 * ((20233 * (v4 - v5 - 0xF086DD9C55FB7FLL < 0xFFFFFFFFFFFFFFF6)) ^ a2)))();
}

uint64_t sub_24477C9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(v5 + 136) - 0x750C1ABFB0567FC3);
  *(v5 + 712) = v6;
  return (*(a4 + 8 * (((v6 == 0) * ((2 * (v4 ^ 0xCF9)) ^ ((v4 ^ 0xFFFFF050) + 1716))) ^ v4)))(a1, a2, a3);
}

uint64_t sub_24477CA24@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = (v2 | ((v2 < 0xA6B181C) << 32)) + 0x5DA34DC62F1F9AFFLL;
  v3[188] = v4;
  v5 = v3[55];
  v3[189] = v5;
  v6 = a2 | (((((a2 - 1497088312) & 0x593BC7FF) - 899) ^ 0xFFFFFCC4) << 32);
  return (*(a1 + 8 * ((8815 * ((((v6 ^ (v4 - v5 - 0x1CFF58295AB5978ALL)) & v6) >> (__clz(v6 ^ (v4 - v5 - 0x1CFF58295AB5978ALL) | 1) ^ 0x3Fu)) & 1)) ^ (a2 + 4527))))();
}

uint64_t sub_24477CC34@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v3 = *(v2 + 72);
  *(v2 + 968) = v3;
  return (*(a1 + 8 * (((v3 != 0x6286B82630F8F22CLL) * ((((a2 - 2402) | 0x5000) - 19021) ^ ((a2 - 982) | 0x32))) ^ (a2 + 13070))))();
}

uint64_t sub_24477CCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x3C8] = 0x750C1ABFB0567FDBLL;
  *(v6 + 864) = 0x5E5905813ACEA8BDLL;
  return (*(a4 + 8 * ((((2 * v5) ^ 0xA576 ^ ((v5 ^ 0x5BF5) - 1208)) * (v4 == v7)) ^ v5)))(a1, a2, a3);
}

uint64_t sub_24477CD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x3E0] = v4;
  LODWORD(STACK[0x5E4]) = -41143177;
  *(v6 + 1168) = &STACK[0x3C8];
  LODWORD(STACK[0x3A4]) = 184641776;
  return (*(a4 + 8 * v5))(a1, a2, a3);
}

uint64_t sub_24477CD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v6 + 1024) = v5;
  STACK[0x388] = &STACK[0x7E8];
  LODWORD(STACK[0x4EC]) = 873186548;
  return (*(a4 + 8 * v4))(a1, a2, a3);
}

uint64_t sub_24477CE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(STACK[0x3C8] - 0x750C1ABFB0567FC3);
  *(v5 + 720) = v6;
  return (*(a4 + 8 * (((v6 != 0) * ((v4 - 11321) ^ 0x76C)) ^ v4)))(a1, a2, a3);
}

uint64_t sub_24477CEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 6 * (v4 ^ 0x3954);
  v8 = (v5 | ((v5 < 0xA6B181C) << 32)) + ((v7 - 700583617) & 0x29C1CBFF ^ 0x66EAB10224CD9BB8);
  v6[190] = v8;
  v9 = v6[108];
  v6[191] = v9;
  return (*(a4 + 8 * ((3606 * (v8 - v9 - 0x891AB80F46A0812 < 0xFFFFFFFFFFFFFFF6)) ^ v7)))(a1, a2, a3);
}

uint64_t sub_24477CFA0@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  *(v2 + 888) = 0x3E0DD92B1DE16FEALL;
  LODWORD(STACK[0x69C]) = 237377513;
  return (*(a1 + 8 * ((a2 + 1282280186) ^ 0x4C6E0B10 ^ (12733 * ((a2 + 1282280186) < 0x4FE8EAE0)))))();
}

uint64_t sub_24477D050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 472) = 0x750C1ABFB0567FDBLL;
  *(v5 + 904) = 0x561AB2AE709B46ACLL;
  return (*(a4 + 8 * (((((v4 == v7) ^ (v6 + 1)) & 1) * (3 * (v6 ^ 0x5E5) - 2499)) ^ v6 ^ 0x46B1)))(a1, a2, a3);
}

uint64_t sub_24477D0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x3E0] = v4;
  LODWORD(STACK[0x5E4]) = -41143177;
  *(v6 + 1168) = &STACK[0x5C0];
  LODWORD(STACK[0x3A4]) = 168723161;
  return (*(a4 + 8 * v5))(a1, a2, a3);
}

uint64_t sub_24477D148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(v5 + 472) - 0x750C1ABFB0567FC3);
  *(v5 + 1160) = v6;
  return (*(a4 + 8 * (((v6 == 0) * (((v4 + 409712588) & 0xE7940FFA) - 4064)) ^ v4)))(a1, a2, a3);
}

uint64_t sub_24477D1C0@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v4 = (v2 | ((v2 < 0xA6B181C) << 32)) + ((a2 - 3251) ^ 0xC6CD2F1118E209FLL);
  v3[194] = v4;
  v5 = v3[113];
  v3[195] = v5;
  return (*(a1 + 8 * ((7797 * (v4 - v5 + 0x49ADDFBD54A20ADELL < ((a2 - 2348) ^ 0xFFFFFFFFFFFFF948))) ^ a2)))();
}

uint64_t sub_24477D28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 888) = 0x3E0DD92B1DE16FEALL;
  LODWORD(STACK[0x69C]) = 237377513;
  return (*(a4 + 8 * (v5 + 12184)))(a1, a2, a3);
}

uint64_t sub_24477D318()
{
  v3 = *(*(v1 + 312) - 0x750C1ABFB0567FC3);
  *(v1 + 80) = v3;
  return (*(v2 + 8 * ((((46 * (((v0 - 12964) | 0x1060) ^ 0x171B)) ^ 0x40D2) * (v3 == 0)) ^ v0)))();
}

uint64_t sub_24477D38C@<X0>(unsigned int a1@<W8>)
{
  v4 = (v1 | ((v1 < 0xA6B181C) << 32)) + 0x588B58A6E71FC73ALL;
  v2[198] = v4;
  v5 = v2[22];
  v2[199] = v5;
  return (*(v3 + 8 * ((22484 * (v4 - v5 + ((a1 - 4950) ^ 0xDDDFA0E44F82A00FLL) < (a1 ^ 0xFFFFFFFFFFFFE984))) ^ a1)))();
}

uint64_t sub_24477D444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(v8[116] - 0x6286B82630F8F22CLL);
  LODWORD(STACK[0x464]) = 237377513;
  v8[56] = 0x750C1ABFB0567FDBLL;
  v8[57] = 0x517B132EA0BA4D67;
  return (*(v9 + 8 * (((v10 == 0x146375EC570BCC2FLL) * ((v7 - 1893443872) & 0x70DB6EFF ^ 0x687)) ^ v7)))(a1, a2, a3, v9, a5, a6, a7, 1216081105);
}

uint64_t sub_24477D4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x3E0] = v4;
  LODWORD(STACK[0x5E4]) = -156791547;
  *(v6 + 1168) = &STACK[0x5A8];
  LODWORD(STACK[0x3A4]) = 136885931;
  return (*(a4 + 8 * (v5 - 14029)))(a1, a2, a3);
}

uint64_t sub_24477D574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(v5 + 448) - 0x750C1ABFB0567FC3);
  *(v5 + 1120) = v6;
  return (*(a4 + 8 * ((124 * (((v4 ^ 0x2E14 ^ (v6 == 0)) & 1) == 0)) ^ v4 ^ 0x189D)))(a1, a2, a3);
}

uint64_t sub_24477D5E8@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v4 = (v2 | ((v2 < 0xA6B181C) << 32)) + ((a2 - 10617) ^ 0x2EAECD56942AA32ALL);
  v3[200] = v4;
  v5 = v3[57];
  v3[201] = v5;
  return (*(a1 + 8 * ((26797 * (v4 - v5 + 0x22CC45D802248FADLL < 0xFFFFFFFFFFFFFFF6)) ^ a2)))();
}

uint64_t sub_24477D6AC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v87 = STACK[0xA20];
  v64 = ((v87 - 0x366AF98B410D8269) ^ ((a1 ^ 0x2A12u) - 0x42445820942108BFLL)) + ((2 * (v87 - 0x366AF98B410D8269)) & 0x7B774FBED7BDFBFELL) + 0x77FFFEEEFDE98FFCLL;
  v86 = STACK[0xA30];
  v85 = STACK[0xA28] - 0x2EAECD562AFF79F8;
  v63 = ((v86 - 0x517B132EA0BA4D5DLL) ^ 0x35FBB7CFFFD89DFBLL) - 0x40110196101000 + ((2 * (v86 - 0x517B132EA0BA4D5DLL)) & 0x6BF76F9FFFB13BF6);
  v84 = STACK[0xA40];
  v83 = STACK[0xA38] - 0x2A48B799FBCAADF5;
  v82 = STACK[0xA50];
  v81 = STACK[0xA48] - 0x5F78A173B31506EELL;
  v80 = STACK[0xA60];
  v79 = STACK[0xA58] - 0x6CD78A2A096F27C3;
  v78 = ((STACK[0xA00] - 0x561AB2AE709B46A8) ^ 0xAA6BFDDBE7EFDF7FLL) + 0x7FF79BF6B97FFFF5 + ((2 * (STACK[0xA00] - 0x561AB2AE709B46A8)) & 0x54D7FBB7CFDFBEFELL);
  v77 = ((STACK[0x9E0] - 0x5E5905813ACEA8B9) ^ 0x6F67DBF3A56FFF7ELL) - 0x450442210400200ALL + ((2 * (STACK[0x9E0] - 0x5E5905813ACEA8B9)) & 0xDECFB7E74ADFFEFCLL);
  v76 = ((STACK[0x9D0] - 0x40A3F59CDED51B97) ^ 0xFF6BDFDFEFFFFF75) + 0x2AF7B9F2B16FDFFFLL + ((2 * (STACK[0x9D0] - 0x40A3F59CDED51B97)) & 0xFED7BFBFDFFFFEEALL);
  v56 = STACK[0x9C0] - 0x42DD76D2ED3A6EE6;
  v57 = STACK[0xA98];
  v75 = ((v57 - 0xFF70A3CEB7542C0) ^ 0xBB7BDFD3E5FFFF7DLL) + 0x6EE7B9FEBB6FDFF7 + ((2 * (v57 - 0xFF70A3CEB7542C0)) & 0x76F7BFA7CBFFFEFALL);
  v74 = STACK[0xA90] - 0x4D20DE21600C286BLL;
  v58 = STACK[0x9B0] - 0x1A8AD39A981EA6EDLL;
  v73 = STACK[0xAC8];
  v72 = STACK[0xAC0] - 0xD788DBB17985B8DLL;
  v59 = STACK[0x9A0] - 0x1900B5F15EE1C6CALL;
  v71 = ((STACK[0xA00] - 0x561AB2AE709B46A6) ^ 0x75BBAEDFEBCF8FFBLL) - 0x4000081182070200 + ((2 * (STACK[0xA00] - 0x561AB2AE709B46A6)) & 0xEB775DBFD79F1FF6);
  v70 = ((STACK[0x9E0] - 0x5E5905813ACEA8B7) ^ 0xB7FFAFCEFDCCCFFFLL) + 0x7DBBF6FF6BFBBDFCLL + ((2 * (STACK[0x9E0] - 0x5E5905813ACEA8B7)) & 0x6FFF5F9DFB999FFELL);
  v69 = ((STACK[0x9D0] - 0x40A3F59CDED51B95) ^ 0xF7BBFEFF6DDEBDFFLL) + 0x3DFFA7CEFBE9CFFCLL + ((2 * (STACK[0x9D0] - 0x40A3F59CDED51B95)) & 0xEF77FDFEDBBD7BFELL);
  v68 = ((STACK[0x9C0] - 0x42DD76D2ED3A6EE4) ^ 0xF7FBF7DF7FDCBFFFLL) + 0x3DBFAEEEE9EBCDFCLL + ((2 * (STACK[0x9C0] - 0x42DD76D2ED3A6EE4)) & 0xEFF7EFBEFFB97FFELL);
  v67 = ((v57 - 0xFF70A3CEB7542BELL) ^ 0xFFBFFEFF69D9EDFBLL) + 0x35FBA7CEFFEEA000 + ((2 * (v57 - 0xFF70A3CEB7542BELL)) & 0xFF7FFDFED3B3DBF6);
  v66 = ((STACK[0x9B0] - 0x1A8AD39A981EA6EBLL) ^ 0x35FBB7CEEFFDDDFBLL) - 0x40110086355000 + ((2 * (STACK[0x9B0] - 0x1A8AD39A981EA6EBLL)) & 0x6BF76F9DDFFBBBF6);
  v65 = ((STACK[0x9A0] - 0x1900B5F15EE1C6C8) ^ 0x7FFBFFDE7DF8CDFFLL) - 0x4A40591014304004 + ((2 * (STACK[0x9A0] - 0x1900B5F15EE1C6C8)) & 0xFFF7FFBCFBF19BFELL);
  STACK[0x200] = STACK[0xA98];
  v62 = v57 + 0x25C49C917E534B41;
  v60 = *(v55 + 8 * a1);
  LODWORD(STACK[0x330]) = LOWORD(STACK[0x956]);
  LODWORD(STACK[0x340]) = LOWORD(STACK[0x986]);
  LODWORD(STACK[0x310]) = LOWORD(STACK[0x976]);
  LODWORD(STACK[0x320]) = LOWORD(STACK[0x966]);
  LODWORD(STACK[0x2F0]) = LOWORD(STACK[0x946]);
  LODWORD(STACK[0x270]) = LOWORD(STACK[0x92A]);
  LODWORD(STACK[0x300]) = LOWORD(STACK[0x8FE]);
  STACK[0x2E0] = STACK[0x438];
  STACK[0x2D0] = STACK[0x848];
  STACK[0x2C0] = STACK[0x8B8];
  STACK[0x2B0] = STACK[0x7C8];
  STACK[0x2A0] = STACK[0x390];
  STACK[0x260] = STACK[0x870];
  STACK[0x250] = STACK[0x6B8];
  STACK[0x240] = STACK[0x6B0];
  STACK[0x230] = STACK[0x548];
  STACK[0x290] = STACK[0x880];
  STACK[0x220] = STACK[0x3F0];
  STACK[0x280] = STACK[0x6A8];
  STACK[0x210] = STACK[0x500];
  return v60(v56, 0x999F361F413571E6, v58, 0x41285C582D9B8689, v59, 0x713007E3D4BB777ELL, 0x9286D3CDBB818024, &STACK[0x3E8], a2, a3, a4, a5, a6, a7, v62, ((v73 - 0xD5B5F82CD1778C9) ^ 0x7FBBA7CEFDEDEDFFLL) - 0x4A00010094256004 + ((2 * (v73 - 0xD5B5F82CD1778C9)) & 0xFF774F9DFBDBDBFELL), ((v80 - 0x217682811F5CC512) ^ 0x75BFBFFFF9EBAFFBLL) - 0x4004193190232200 + ((2 * (v80 - 0x217682811F5CC512)) & 0xEB7F7FFFF3D75FF6), ((v82 - 0x739917DE847E8FBALL) ^ 0xBDFBEFFFFBDCDFFBLL) + 0x77BFB6CE6DEBAE00 + ((2 * (v82 - 0x739917DE847E8FBALL)) & 0x7BF7DFFFF7B9BFF6), ((v84 - 0x440C86D256DEE23CLL) ^ 0x77BFBECFEFDA9FFFLL) - 0x4204180186121204 + ((2 * (v84 - 0x440C86D256DEE23CLL)) & 0xEF7F7D9FDFB53FFELL), v63, v64, v65, ((v73 - 0xD5B5F82CD1778CDLL) ^ 0xBFFBA6CEFBDFFDFBLL) + 0x75BFFFFF6DE89000 + ((2 * (v73 - 0xD5B5F82CD1778CDLL)) & 0x7FF74D9DF7BFFBF6), v66, v67, v68, v69, v70, v71, ((v80 - 0x217682811F5CC516) ^ 0xFDBBAEEE6DF99FFFLL) + 0x37FFF7DFFBCEEDFCLL + ((2 * (v80 - 0x217682811F5CC516)) & 0xFB775DDCDBF33FFELL), ((v82 - 0x739917DE847E8FBELL) ^ 0xF7BFF7CE79DBFFFFLL) + 0x3DFBAEFFEFEC8DFCLL + ((2 * (v82 - 0x739917DE847E8FBELL)) & 0xEF7FEF9CF3B7FFFELL), ((v84 - 0x440C86D256DEE240) ^ 0x7FFBFECEE9DEEFFFLL) - 0x4A40580080166204 + ((2 * (v84 - 0x440C86D256DEE240)) & 0xFFF7FD9DD3BDDFFELL), ((v86 - 0x517B132EA0BA4D61) ^ 0xB7FBA6EFEBD9EDFBLL) + 0x7DBFFFDE7DEEA000 + ((2 * (v86 - 0x517B132EA0BA4D61)) & 0x6FF74DDFD7B3DBF6), ((v87 - 0x366AF98B410D826DLL) ^ 0x3FBFFEEFFDD8BDFBLL) - 0xA04582194103000 + ((2 * (v87 - 0x366AF98B410D826DLL)) & 0x7F7FFDDFFBB17BF6), (v59 ^ 0x3BE7BDDAFF7FDFFELL) - 0x118424085E10008ALL + ((2 * v59) & 0x77CF7BB5FEFFBFFCLL), v72, ((v73 - 0xD5B5F82CD1778CFLL) ^ 0xFB7FDDF3F7EFFFF7) + 0x2EE3BBDEA97FDF7DLL + ((2 * (v73 - 0xD5B5F82CD1778CFLL)) & 0xF6FFBBE7EFDFFFEELL), v73, (v58 ^ 0x2FF3FFD7A7EFFF7CLL) - 0x590660506802008 + ((2 * v58) & 0x5FE7FFAF4FDFFEF8), v74, v75, (v56 ^ 0xBB6F9FF2F76FFF7CLL) + 0x6EF3F9DFA9FFDFF8 + ((2 * v56) & 0x76DF3FE5EEDFFEF8), v76, v77, v78, v79, ((v80 - 0x217682811F5CC518) ^ 0xBF67FFF6A57FDFF7) + 0x6AFB99DBFBEFFF7DLL + ((2 * (v80 - 0x217682811F5CC518)) & 0x7ECFFFED4AFFBFEELL), v80, ((v87 - 0x366AF98B410D826FLL) ^ 0xBF73FBF3FF7FDF7DLL) + 0x6AEF9DDEA1EFFFF7 + ((2 * (v87 - 0x366AF98B410D826FLL)) & 0x7EE7F7E7FEFFBEFALL), a43, v81, a45, ((v82 - 0x739917DE847E8FC0) ^ 0xBBE39FFAEF6FFFFELL) + 0x6E7FF9D7B1FFDF76 + ((2 * (v82 - 0x739917DE847E8FC0)) & 0x77C73FF5DEDFFFFCLL), a47, v82, a49, v83, a51, ((v84 - 0x440C86D256DEE242) ^ 0x7F67D9F7A97FFF7FLL) - 0x550440250810200BLL + ((2 * (v84 - 0x440C86D256DEE242)) & 0xFECFB3EF52FFFEFELL), a53, v84, a55, v85);
}

uint64_t sub_24477E374()
{
  v3 = *(*(v1 + 1208) - 0x750C1ABFB0567FC3);
  *(v1 + 1232) = v3;
  return (*(v2 + 8 * (((4 * (((v3 == 0) ^ ((v0 - 33) ^ v0)) & 1)) & 0xF7 | (8 * (((v3 == 0) ^ ((v0 - 33) ^ v0)) & 1))) ^ v0)))();
}

uint64_t sub_24477E3DC@<X0>(int a1@<W8>)
{
  v4 = (v1 | ((v1 < a1 + 174778168) << 32)) + 0x2A48B79A88988159;
  v2[202] = v4;
  v5 = v2[2];
  v2[203] = v5;
  return (*(v3 + 8 * ((32068 * (v4 - v5 + (a1 + 1391) + 0x19C3CF37C3DB1274 < 0xFFFFFFFFFFFFFFF6)) ^ a1)))();
}

uint64_t sub_24477E4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(v8[100] - 0x6286B82630F8F22CLL);
  *v8 = 0x750C1ABFB0567FDBLL;
  LODWORD(STACK[0x5CC]) = 237377513;
  v8[139] = 0x739917DE847E8FC4;
  return (*(v9 + 8 * (((v10 == 0x146375EC570BCC2FLL) * ((((v7 + 1932452267) & 0x8CD0EEBF) + 854) ^ (v7 - 584431284) & 0x22D58A71)) ^ v7)))(a1, a2, a3, v9, a5, a6, a7, 1216081105);
}

uint64_t sub_24477E56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x66C]) = a8;
  STACK[0x388] = &STACK[0x430];
  LODWORD(STACK[0x4EC]) = 1149365955;
  return (*(a4 + 8 * (v8 + 107)))(a1, a2, a3);
}

uint64_t sub_24477E5A0@<X0>(uint64_t a1@<X3>, unsigned int a2@<W8>)
{
  STACK[0x3E0] = v2;
  LODWORD(STACK[0x5E4]) = -214693917;
  *(v3 + 1168) = &STACK[0x3E8];
  LODWORD(STACK[0x3A4]) = 142192136;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_24477E660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*v5 - 0x750C1ABFB0567FC3);
  v5[124] = v6;
  return (*(a4 + 8 * (((v6 == 0) * (((v4 - 21877) | 0x802) + ((v4 - 20759) ^ 0xFFFFF364))) ^ v4)))(a1, a2, a3);
}

uint64_t sub_24477E6D8@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v4 = (v2 | ((v2 < 0xA6B181C) << 32)) + 0x5F78A174719B388ELL;
  v3[204] = v4;
  v5 = v3[139];
  v3[205] = v5;
  return (*(a1 + 8 * (((v4 - v5 + 0x1420766A08783F10 < ((a2 - 932) ^ 0xFFFFFFFFFFFFF948)) * (a2 ^ 0x11E8)) ^ a2)))();
}

uint64_t sub_24477E7FC@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = v2 + 2698;
  v5 = (*(a1 + 8 * (v2 + 21250)))(a2 - 0x19847B594A0B84A2);
  v6 = STACK[0x358];
  *v3 = 0x19847B594A0B84A2;
  return (*(v6 + 8 * v4))(v5);
}

uint64_t sub_24477E950(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v46 = *(a4 + 8 * ((32730 * (((((v44 + 10986) | 0xB01) ^ 0x7BDEA13E) & (2 * (v45 - ((2 * v45) & 0x9A76DF1A) - 851742835)) ^ 0x1A569E1A) + ((v45 - ((2 * v45) & 0x9A76DF1A) - 851742835) ^ 0x70D420F2) + ((v44 + 449859037) & 0xE52FEFFD ^ 0x7613B264) == 872629588)) ^ (v44 + 13829)));
  STACK[0x340] = a1;
  return v46(a1, a2, a3, a4, 0x8DBE49DF8B3EC60ALL, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_24477EBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 8 * v4);
  *&STACK[0x320] = vdupq_n_s64(0x38uLL);
  *&STACK[0x330] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x310] = vdupq_n_s64(v5);
  *&STACK[0x300] = xmmword_245010D40;
  return v6();
}

uint64_t sub_24477ED54@<X0>(uint64_t a1@<X8>, int8x16_t a2@<Q3>, int8x16_t a3@<Q4>, int8x16_t a4@<Q5>, int8x16_t a5@<Q6>, int8x16_t a6@<Q7>)
{
  v34 = (v16 + v17);
  v35.i64[0] = a1 + (v16 + v19);
  v35.i64[1] = a1 + (v16 + v18);
  v36 = STACK[0x358];
  v37.i64[0] = a1 + (v16 + v7);
  v37.i64[1] = a1 + (v16 + v14);
  v38.i64[0] = a1 + (v16 + v9);
  v38.i64[1] = a1 + (v16 + v8 + v11);
  v39.i64[0] = a1 + v34;
  v39.i64[1] = a1 + (v16 + v10);
  v40 = vandq_s8(v39, *&STACK[0x330]);
  v41 = vandq_s8(v38, *&STACK[0x330]);
  v42 = vandq_s8(v37, *&STACK[0x330]);
  v43 = vandq_s8(v35, *&STACK[0x330]);
  v44 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), *&STACK[0x310]);
  v45 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), *&STACK[0x310]);
  v46 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), *&STACK[0x310]);
  v47 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), *&STACK[0x310]);
  v48 = vorrq_s8(v46, a2);
  v49 = vorrq_s8(v46, a3);
  v50 = vsubq_s64(vorrq_s8(v45, a2), vorrq_s8(v45, a3));
  v51 = vsubq_s64(v48, v49);
  v52 = vaddq_s64(vsubq_s64(vorrq_s8(v47, a2), vorrq_s8(v47, a3)), a3);
  v53 = vaddq_s64(v51, a3);
  v54 = veorq_s8(v53, a4);
  v55 = veorq_s8(v52, a4);
  v56 = veorq_s8(v52, a5);
  v57 = veorq_s8(v53, a5);
  v58 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v56), a6);
  v59 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v57), a6);
  v60 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v61 = veorq_s8(v58, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v62 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v61);
  v64 = vaddq_s64(v62, v60);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v64, v64), v20), v64), v21), v22);
  v66 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v63, v63), v20), v63), v21), v22);
  v67 = vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL);
  v68 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v69 = veorq_s8(v65, v67);
  v70 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v69);
  v72 = veorq_s8(vaddq_s64(v70, v68), v23);
  v73 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v74 = veorq_s8(v71, v23);
  v75 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v76 = veorq_s8(v72, v73);
  v77 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v76);
  v79 = vaddq_s64(v77, v75);
  v80 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v78, v24), vorrq_s8(v78, v25)), v25), v26);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v79, v24), vorrq_s8(v79, v25)), v25), v26);
  v82 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v83 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v84 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v82), v27);
  v85 = vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL);
  v86 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v83), v27);
  v87 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v88 = veorq_s8(v84, v85);
  v89 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v88);
  v91 = vaddq_s64(v89, v87);
  v92 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v91, v91), v28), v91), v29), v30);
  v93 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v90, v90), v28), v90), v29), v30);
  v94 = vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL);
  v95 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v96 = veorq_s8(v92, v94);
  v97 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v98 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v99 = vaddq_s64(v50, a3);
  v100 = vaddq_s64(v98, v96);
  v101 = vaddq_s64(v97, v95);
  v138.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v100, vandq_s8(vaddq_s64(v100, v100), v31)), v32), v33), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), *&STACK[0x320])));
  v138.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v101, vandq_s8(vaddq_s64(v101, v101), v31)), v32), v33), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), *&STACK[0x320])));
  v102 = veorq_s8(v99, a4);
  v103 = veorq_s8(v99, a5);
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), a6);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v106, v106), v20), v106), v21), v22);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), v23);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v111, v24), vorrq_s8(v111, v25)), v25), v26);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v27);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v116, v116), v28), v116), v29), v30);
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL)));
  v119 = vaddq_s64(vsubq_s64(vorrq_s8(v44, a2), vorrq_s8(v44, a3)), a3);
  v138.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v118, vandq_s8(vaddq_s64(v118, v118), v31)), v32), v33), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), *&STACK[0x320])));
  v120 = veorq_s8(v119, a4);
  v121 = veorq_s8(v119, a5);
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), a6);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v124, v124), v20), v124), v21), v22);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v127 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126), v23);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v129, v24), vorrq_s8(v129, v25)), v25), v26);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v132 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131), v27);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v134, v134), v28), v134), v29), v30);
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL)));
  v138.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v136, vandq_s8(vaddq_s64(v136, v136), v31)), v32), v33), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), *&STACK[0x320])));
  *(v39.i64[0] - 7) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(v13 + v34)), 0x5D5D5D5D5D5D5D5DLL), *&vqtbl4q_s8(v138, *&STACK[0x300])));
  return (*(v36 + 8 * (((v16 != v12) * v6) ^ v15)))();
}

uint64_t sub_24477F3F0@<X0>(unint64_t a1@<X0>, unint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, unint64_t a5@<X8>)
{
  v16 = *(a3 + 8 * v9);
  *&STACK[0x270] = vdupq_n_s64(v13);
  *&STACK[0x280] = vdupq_n_s64(0x38uLL);
  *&STACK[0x320] = vdupq_n_s64(v7);
  *&STACK[0x330] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x250] = vdupq_n_s64(v15);
  *&STACK[0x260] = vdupq_n_s64(a2);
  *&STACK[0x240] = vdupq_n_s64(a4);
  *&STACK[0x310] = xmmword_245010D30;
  *&STACK[0x220] = vdupq_n_s64(v5);
  *&STACK[0x230] = vdupq_n_s64(v14);
  *&STACK[0x200] = vdupq_n_s64(0x1717D4ABBED3C077uLL);
  *&STACK[0x210] = vdupq_n_s64(a5);
  *&STACK[0x2F0] = vdupq_n_s64(0x3098A71738BBE723uLL);
  *&STACK[0x300] = vdupq_n_s64(a1);
  return v16(-(v8 & 0xFFFFFFF0), (v12 + v10 + v11 + v6));
}

uint64_t sub_24477F590@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X8>, int8x16_t a6@<Q5>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v79 = (a2 + v66 + 16);
  v80.i64[0] = a5 + (a2 + v66 + 2);
  v80.i64[1] = a5 + (a2 + v66 + 1);
  *&STACK[0x2E0] = v80;
  v80.i64[0] = a5 + (a2 + v66 + 4);
  v80.i64[1] = a5 + (a2 + v66 + 3);
  *&STACK[0x2D0] = v80;
  v81.i64[0] = a5 + (a2 + v66 + 10);
  v81.i64[1] = a5 + (a4 + v66 + 16);
  v82.i64[0] = a5 + (a2 + v66 + 12);
  v82.i64[1] = a5 + (a2 + v66 + 11);
  v83.i64[0] = a5 + (a2 + v66 + 14);
  v83.i64[1] = a5 + (a2 + v66 + 13);
  v80.i64[0] = a5 + v79;
  v80.i64[1] = a5 + (a2 + v66 + 15);
  *&STACK[0x2B0] = v80;
  v84 = *&STACK[0x320];
  v85 = vandq_s8(v80, *&STACK[0x330]);
  v86 = vandq_s8(v83, *&STACK[0x330]);
  v87 = vandq_s8(v82, *&STACK[0x330]);
  v88 = vandq_s8(v81, *&STACK[0x330]);
  v90 = *&STACK[0x260];
  v89 = *&STACK[0x270];
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), *&STACK[0x270]);
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), *&STACK[0x270]);
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), *&STACK[0x270]);
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), *&STACK[0x270]);
  v95 = vorrq_s8(v94, *&STACK[0x320]);
  v96 = vorrq_s8(v93, *&STACK[0x320]);
  *&STACK[0x2C0] = vsubq_s64(vorrq_s8(v91, *&STACK[0x320]), vorrq_s8(v91, v73));
  v97 = vsubq_s64(vorrq_s8(v92, v84), vorrq_s8(v92, v73));
  v98 = vsubq_s64(v96, vorrq_s8(v93, v73));
  v99 = vaddq_s64(vsubq_s64(v95, vorrq_s8(v94, v73)), v73);
  v100 = vaddq_s64(v98, v73);
  v101 = veorq_s8(v100, v90);
  v102 = veorq_s8(v99, v90);
  v103 = veorq_s8(v99, *&STACK[0x250]);
  v104 = veorq_s8(v100, *&STACK[0x250]);
  v105 = *&STACK[0x250];
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), v71);
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v104), v71);
  v108 = vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL);
  v109 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v110 = veorq_s8(v106, v108);
  v111 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v110);
  v113 = vaddq_s64(v111, v109);
  v114 = *&STACK[0x220];
  v115 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v113, v113), v70), v113), *&STACK[0x220]), v69);
  v116 = vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v112, v112), v70), v112), *&STACK[0x220]), v69);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v119 = veorq_s8(v115, v116);
  v120 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v119);
  v122 = *&STACK[0x200];
  v123 = veorq_s8(vaddq_s64(v120, v118), *&STACK[0x200]);
  v124 = veorq_s8(v121, *&STACK[0x200]);
  v125 = vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL);
  v126 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v127 = veorq_s8(v123, v125);
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v127);
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v126);
  v130 = *&STACK[0x2F0];
  v131 = *&STACK[0x300];
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v128, a65), vorrq_s8(v128, a6)), a6), *&STACK[0x300]);
  v133 = vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL);
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v129, a65), vorrq_s8(v129, a6)), a6), *&STACK[0x300]);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v136 = veorq_s8(v132, v133);
  v137 = vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL);
  v138 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v136);
  v139 = veorq_s8(vaddq_s64(v137, v135), *&STACK[0x2F0]);
  v140 = veorq_s8(v138, *&STACK[0x2F0]);
  v141 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v142 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v142);
  v144 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v141);
  v145 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v144, v144), v74), v144), v75), v76);
  v146 = vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL);
  v147 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v143, v143), v74), v143), v75), v76);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v149 = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v150.i64[0] = a5 + (a2 + v66 + 6);
  v150.i64[1] = a5 + (a2 + v66 + 5);
  *&STACK[0x290] = v150;
  v151 = vaddq_s64(v97, v73);
  v152 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), veorq_s8(v145, v146));
  v153 = vaddq_s64(v149, v148);
  v279.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v152, vandq_s8(vaddq_s64(v152, v152), v77)), v78), v72), vnegq_s64(vandq_s8(vshlq_n_s64(v81, 3uLL), v68)));
  v279.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v153, vandq_s8(vaddq_s64(v153, v153), v77)), v78), v72), vnegq_s64(vandq_s8(vshlq_n_s64(v82, 3uLL), v68)));
  v154 = veorq_s8(v151, v90);
  v155 = veorq_s8(v151, v105);
  v156 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155), v71);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v158 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157);
  v159 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v158, v158), v70), v158), v114), v69);
  v160 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v161 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160), v122);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162);
  v164 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v163, a65), vorrq_s8(v163, a6)), a6), v131);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v166 = v130;
  v167 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165), v130);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v169, v169), v74), v169), v75), v76);
  v130.i64[0] = a5 + (a2 + v66 + 8);
  v130.i64[1] = a5 + (a2 + v66 + 7);
  *&STACK[0x2A0] = v130;
  v171 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL)));
  v172 = vsubq_s64(v171, vandq_s8(vaddq_s64(v171, v171), v77));
  v173 = vandq_s8(v130, *&STACK[0x330]);
  v174 = vaddq_s64(*&STACK[0x2C0], v73);
  v279.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v172, v78), v72), vnegq_s64(vandq_s8(vshlq_n_s64(v83, 3uLL), v68)));
  v175 = veorq_s8(v174, v90);
  v176 = veorq_s8(v174, v105);
  v177 = v105;
  v178 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176), v71);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v180 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179);
  v181 = v114;
  v182 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v180, v180), v70), v180), v114), v69);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v184 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183), v122);
  v185 = v122;
  v186 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v187 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v186);
  v188 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v187, a65), vorrq_s8(v187, a6)), a6), v131);
  v189 = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v190 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), v189), v166);
  v191 = veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL));
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), v191);
  v193 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v192, v192), v74), v192), v75), v76);
  v194 = veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL));
  v195 = vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL);
  v196 = vandq_s8(v150, *&STACK[0x330]);
  v197 = vaddq_s64(v195, v194);
  v199 = *&STACK[0x2D0];
  v198 = *&STACK[0x2E0];
  v200 = vandq_s8(*&STACK[0x2D0], *&STACK[0x330]);
  v279.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v197, vandq_s8(vaddq_s64(v197, v197), v77)), v78), v72), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2B0], 3uLL), v68)));
  v201 = vandq_s8(*&STACK[0x2E0], *&STACK[0x330]);
  v202 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v203 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v89);
  v204 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), v89);
  v205 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v89);
  v206 = vaddq_s64(v202, v89);
  v207 = *&STACK[0x320];
  *&STACK[0x2C0] = vsubq_s64(vorrq_s8(v203, *&STACK[0x320]), vorrq_s8(v203, v73));
  v208 = vsubq_s64(vorrq_s8(v204, v207), vorrq_s8(v204, v73));
  v209 = vaddq_s64(vsubq_s64(vorrq_s8(v206, v207), vorrq_s8(v206, v73)), v73);
  v210 = vaddq_s64(vsubq_s64(vorrq_s8(v205, v207), vorrq_s8(v205, v73)), v73);
  v202.i64[0] = vqtbl4q_s8(v279, *&STACK[0x310]).u64[0];
  v211 = veorq_s8(v210, v90);
  v279.val[0] = veorq_s8(v209, v90);
  v279.val[1] = veorq_s8(v209, v177);
  v279.val[2] = veorq_s8(v210, v177);
  v279.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v279.val[0], 0x38uLL), v279.val[0], 8uLL), v279.val[1]), v71);
  v212 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL), v279.val[2]), v71);
  v213 = vsraq_n_u64(vshlq_n_s64(v279.val[1], 3uLL), v279.val[1], 0x3DuLL);
  v279.val[1] = veorq_s8(v212, vsraq_n_u64(vshlq_n_s64(v279.val[2], 3uLL), v279.val[2], 0x3DuLL));
  v279.val[2] = veorq_s8(v279.val[0], v213);
  v214 = vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL);
  v215 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v279.val[0], 0x38uLL), v279.val[0], 8uLL), v279.val[2]);
  v279.val[0] = vaddq_s64(v214, v279.val[1]);
  v279.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v279.val[0], v279.val[0]), v70), v279.val[0]), v181), v69);
  v216 = vsraq_n_u64(vshlq_n_s64(v279.val[1], 3uLL), v279.val[1], 0x3DuLL);
  v217 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v215, v215), v70), v215), v181), v69);
  v279.val[1] = veorq_s8(v217, vsraq_n_u64(vshlq_n_s64(v279.val[2], 3uLL), v279.val[2], 0x3DuLL));
  v279.val[2] = veorq_s8(v279.val[0], v216);
  v218 = vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL);
  v219 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v279.val[0], 0x38uLL), v279.val[0], 8uLL), v279.val[2]);
  v279.val[0] = veorq_s8(vaddq_s64(v218, v279.val[1]), v185);
  v220 = veorq_s8(v219, v185);
  v221 = vsraq_n_u64(vshlq_n_s64(v279.val[1], 3uLL), v279.val[1], 0x3DuLL);
  v279.val[1] = veorq_s8(v220, vsraq_n_u64(vshlq_n_s64(v279.val[2], 3uLL), v279.val[2], 0x3DuLL));
  v279.val[2] = veorq_s8(v279.val[0], v221);
  v222 = vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL);
  v223 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v279.val[0], 0x38uLL), v279.val[0], 8uLL), v279.val[2]);
  v279.val[0] = vaddq_s64(v222, v279.val[1]);
  v224 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v223, a65), vorrq_s8(v223, a6)), a6), *&STACK[0x300]);
  v279.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v279.val[0], a65), vorrq_s8(v279.val[0], a6)), a6), *&STACK[0x300]);
  v279.val[1] = veorq_s8(v279.val[0], vsraq_n_u64(vshlq_n_s64(v279.val[1], 3uLL), v279.val[1], 0x3DuLL));
  v279.val[2] = veorq_s8(v224, vsraq_n_u64(vshlq_n_s64(v279.val[2], 3uLL), v279.val[2], 0x3DuLL));
  v279.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v279.val[0], 0x38uLL), v279.val[0], 8uLL), v279.val[1]), *&STACK[0x2F0]);
  v225 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), v279.val[2]), *&STACK[0x2F0]);
  v226 = vsraq_n_u64(vshlq_n_s64(v279.val[1], 3uLL), v279.val[1], 0x3DuLL);
  v279.val[1] = veorq_s8(v225, vsraq_n_u64(vshlq_n_s64(v279.val[2], 3uLL), v279.val[2], 0x3DuLL));
  v279.val[2] = veorq_s8(v279.val[0], v226);
  v227 = vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL);
  v228 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v279.val[0], 0x38uLL), v279.val[0], 8uLL), v279.val[2]);
  v279.val[0] = vaddq_s64(v227, v279.val[1]);
  v279.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v279.val[0], v279.val[0]), v74), v279.val[0]), v75), v76);
  v229 = vsraq_n_u64(vshlq_n_s64(v279.val[1], 3uLL), v279.val[1], 0x3DuLL);
  v230 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v228, v228), v74), v228), v75), v76);
  v279.val[1] = veorq_s8(v230, vsraq_n_u64(vshlq_n_s64(v279.val[2], 3uLL), v279.val[2], 0x3DuLL));
  v279.val[2] = veorq_s8(v279.val[0], v229);
  v231 = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v232 = vaddq_s64(v208, v73);
  v233 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v279.val[0], 0x38uLL), v279.val[0], 8uLL), v279.val[2]);
  v279.val[0] = vaddq_s64(v231, v279.val[1]);
  v279.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v233, vandq_s8(vaddq_s64(v233, v233), v77)), v78), v72), vnegq_s64(vandq_s8(vshlq_n_s64(v198, 3uLL), v68)));
  v279.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v279.val[0], vandq_s8(vaddq_s64(v279.val[0], v279.val[0]), v77)), v78), v72), vnegq_s64(vandq_s8(vshlq_n_s64(v199, 3uLL), v68)));
  v234 = veorq_s8(v232, v90);
  v235 = veorq_s8(v232, v177);
  v236 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), v235), v71);
  v237 = veorq_s8(v236, vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL));
  v238 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL), v237);
  v239 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v238, v238), v70), v238), v181), v69);
  v240 = veorq_s8(v239, vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL));
  v241 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL), v240), v185);
  v242 = veorq_s8(v241, vsraq_n_u64(vshlq_n_s64(v240, 3uLL), v240, 0x3DuLL));
  v243 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), v242);
  v244 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v243, a65), vorrq_s8(v243, a6)), a6), *&STACK[0x300]);
  v245 = veorq_s8(v244, vsraq_n_u64(vshlq_n_s64(v242, 3uLL), v242, 0x3DuLL));
  v246 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), v245), *&STACK[0x2F0]);
  v247 = veorq_s8(v246, vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL));
  v248 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL), v247);
  v249 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v248, v248), v74), v248), v75), v76);
  v250 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL), veorq_s8(v249, vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL)));
  v251 = vaddq_s64(*&STACK[0x2C0], v73);
  v279.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v250, vandq_s8(vaddq_s64(v250, v250), v77)), v78), v72), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x290], 3uLL), v68)));
  v252 = veorq_s8(v251, v90);
  v253 = veorq_s8(v251, v177);
  v254 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v252, 0x38uLL), v252, 8uLL), v253), v71);
  v255 = vsraq_n_u64(vshlq_n_s64(v253, 3uLL), v253, 0x3DuLL);
  v256 = vsraq_n_u64(vshlq_n_s64(v254, 0x38uLL), v254, 8uLL);
  v257 = veorq_s8(v254, v255);
  v258 = vaddq_s64(v256, v257);
  v259 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v258, v258), v70), v258), v181), v69);
  v260 = veorq_s8(v259, vsraq_n_u64(vshlq_n_s64(v257, 3uLL), v257, 0x3DuLL));
  v261 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v259, 0x38uLL), v259, 8uLL), v260), v185);
  v262 = vsraq_n_u64(vshlq_n_s64(v260, 3uLL), v260, 0x3DuLL);
  v263 = vsraq_n_u64(vshlq_n_s64(v261, 0x38uLL), v261, 8uLL);
  v264 = veorq_s8(v261, v262);
  v265 = vaddq_s64(v263, v264);
  v266 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v265, a65), vorrq_s8(v265, a6)), a6), *&STACK[0x300]);
  v267 = veorq_s8(v266, vsraq_n_u64(vshlq_n_s64(v264, 3uLL), v264, 0x3DuLL));
  v268 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL), v267), *&STACK[0x2F0]);
  v269 = vsraq_n_u64(vshlq_n_s64(v267, 3uLL), v267, 0x3DuLL);
  v270 = vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL);
  v271 = veorq_s8(v268, v269);
  v272 = vaddq_s64(v270, v271);
  v273 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v272, v272), v74), v272), v75), v76);
  v274 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v273, 0x38uLL), v273, 8uLL), veorq_s8(v273, vsraq_n_u64(vshlq_n_s64(v271, 3uLL), v271, 0x3DuLL)));
  v275 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v274, vandq_s8(vaddq_s64(v274, v274), v77)), v78), v72), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2A0], 3uLL), v68)));
  v202.i64[1] = vqtbl4q_s8(v279, *&STACK[0x310]).u64[0];
  v276 = vrev64q_s8(*(v65 + v79));
  v279.val[0].i64[0] = 0x5D5D5D5D5D5D5D5DLL;
  v279.val[0].i64[1] = 0x5D5D5D5D5D5D5D5DLL;
  v277 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v276, v276, 8uLL), v279.val[0]), v202));
  *(a5 + v79 - 15) = vextq_s8(v277, v277, 8uLL);
  return (*(a3 + 8 * ((31 * (a1 == v66)) ^ v67)))();
}

uint64_t sub_244780254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v21 = ((v8 + v12) ^ v14) + v13;
  v22 = STACK[0x340] + v21;
  v23 = __ROR8__(v22 & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = ((v23 + v18) | 0x9FDA978DA1F8AD85) - ((v23 + v18) | v9) + v9;
  v25 = __ROR8__(v24 ^ a2, 8);
  v26 = v24 ^ v20;
  v27 = (v25 + v26) ^ a4;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = __ROR8__(((v19 & (2 * (v29 + v28))) - (v29 + v28) + v7) ^ a7, 8);
  v31 = ((v19 & (2 * (v29 + v28))) - (v29 + v28) + v7) ^ a7 ^ __ROR8__(v28, 61);
  v32 = (v30 + v31) ^ 0x1717D4ABBED3C077;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (v10 - ((v34 + v33) | v10) + ((v34 + v33) | a6)) ^ a1;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0x3098A71738BBE723;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (((2 * (v39 + v38)) | 0xF9C5301C6E543EF0) - (v39 + v38) + 0x31D67F1C8D5E088) ^ 0xACCA236DD0886AF8;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = __ROR8__(v40, 8);
  *v22 = *(a5 + v21) ^ v15 ^ (((v42 + v41 - ((2 * (v42 + v41)) & 0xBD2C4FBD64469196) + 0x5E9627DEB22348CBLL) ^ 0x362E54264EF41603) >> (8 * (v22 & 7u)));
  return (*(a3 + 8 * (((v13 - 1 == v17) * v16) ^ v11)))();
}

uint64_t sub_244780414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53)
{
  *(v54 + 144) = STACK[0x340];
  LODWORD(STACK[0x428]) = a53;
  return (*(a4 + 8 * v53))(a1, a2, a3);
}

uint64_t sub_24478047C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4 ^ 0x3D0;
  v7 = (*(a4 + 8 * (v6 + 20410)))(a1, a2, a3);
  v8 = STACK[0x358];
  *(v5 + 1224) = 0;
  return (*(v8 + 8 * v6))(v7);
}

uint64_t sub_2447805C4@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v6[64] = *(a1 + 8 * a2);
  v6[84] = v3;
  LODWORD(STACK[0x42C]) = v4;
  v6[74] = v2;
  v6[20] = 0xFF70A3CEB7542C4;
  LODWORD(STACK[0x704]) = 237377513;
  v6[95] = 0xC9D452B5095AACA7;
  STACK[0x370] = 0;
  v8 = (*(a1 + 8 * (v5 + 20285)))(16);
  v9 = STACK[0x358];
  v6[54] = v8 + v7;
  return (*(v9 + 8 * (((v8 == 0) * (((v5 - 637629065) & 0x26016EBE ^ 0xFFFFD0FC) + v5 + 7995)) ^ v5)))();
}

uint64_t sub_244780690(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  a1[1] = 0x750C1ABFB0567FDBLL;
  return (*(a4 + 8 * v4))();
}

uint64_t sub_244780738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v5 + 592);
  *(v5 + 1176) = v6;
  return (*(a4 + 8 * (((v6 == 0) * (((v4 - 5463) ^ 0xFFFFE9CC) - 5629)) ^ (v4 - 1733))))(a1, a2, a3);
}

uint64_t sub_244780780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v12 = ((10 * (v8 ^ 0x7FFFFDCF) + 0x5F3FFF7BFEBDA8A5) ^ v9) + ((2 * v9) & 0x1FD7B7DBELL);
  *(v10 + 1704) = v12 - 0x121F215A18840058;
  *(v10 + 1712) = a8;
  v13 = ((v8 ^ 9) << (3 * (v8 ^ 0xE4) - 22)) + v8;
  return (*(v11 + 8 * (v8 ^ 0xFFFFF809 ^ (9659 * (((((v12 - a8 - 0x4F48F53F13487C25) ^ v13) & v13) >> (__clz((v12 - a8 - 0x4F48F53F13487C25) ^ v13 | 1) ^ 0x3Fu)) & 1)))))(a1, a2, a3, a4, a5, a6, a7, 1216081110);
}

uint64_t sub_244780898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x484]) = a8;
  v9[109] = v9[54];
  v9[81] = &STACK[0x750];
  LODWORD(STACK[0x8AC]) = 2063684994;
  return (*(v10 + 8 * v8))(a1, a2, a3, v10, a5, a6, a7);
}

uint64_t sub_244780994@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  STACK[0x3A8] = *(v2 + 856);
  LODWORD(STACK[0x88C]) = -413953907;
  *(v2 + 616) = &STACK[0x724];
  LODWORD(STACK[0x448]) = 1061414645;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_244780A60@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v4 = v2[107];
  v2[129] = 0x750C1ABFB0567FDBLL;
  LODWORD(STACK[0x364]) = 237377513;
  v2[49] = 0x217682811F5CC51CLL;
  return (*(a1 + 8 * (((v4 != v3) * ((863 * (a2 ^ 2)) ^ 0x69A)) ^ a2 ^ 0x3C9C)))();
}

uint64_t sub_244780ADC@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  STACK[0x3E0] = v2;
  LODWORD(STACK[0x5E4]) = 1450588084;
  *(v3 + 1168) = &STACK[0x7F0];
  LODWORD(STACK[0x3A4]) = 120967316;
  return (*(a1 + 8 * ((a2 - 12940) | 1)))();
}

uint64_t sub_244780BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(v5 + 1032) - 0x750C1ABFB0567FC3);
  STACK[0x390] = v6;
  return (*(a4 + 8 * (((v6 == 0) * (((v4 - 15340) ^ 0x1366) - 826)) ^ v4)))(a1, a2, a3);
}

uint64_t sub_244780C0C@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v4 = (v2 | ((v2 < 0xA6B181C) << 32)) + ((a2 - 3866) ^ 0x5ADu) + 0x6CD78A2ABEFD96A6;
  v3[206] = v4;
  v5 = v3[49];
  v3[207] = v5;
  return (*(a1 + 8 * ((13599 * (v4 - v5 - 0x4B6107A9AA0BECC3 < 0xFFFFFFFFFFFFFFF6)) ^ a2)))();
}

uint64_t sub_244780CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x868]) = a8;
  *(v9 + 648) = &STACK[0x5D0];
  LODWORD(STACK[0x8AC]) = 186967780;
  return (*(a4 + 8 * (v8 + 3964)))(a1, a2, a3);
}

uint64_t sub_244780DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v5;
  *(v6 + 360) = *v5;
  return (*(a4 + 8 * ((((((v4 + 3067) ^ (v8 == v7)) & 1) == 0) * (((v4 - 15645) | 0x2A2) ^ 0x614)) ^ v4)))(a1, a2, a3);
}

uint64_t sub_244780F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4 ^ 0x2483;
  v7 = (*(a4 + 8 * (v6 ^ 0x4EC5)))(a1, a2, a3);
  v8 = STACK[0x358];
  *(v5 - 0x750C1ABFB0567FC3) = 0;
  return (*(v8 + 8 * v6))(v7);
}

uint64_t sub_244780FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 8 * (v6 + 21250)))(v4 - 0x146375EC570BCC2FLL, a2, a3);
  v7 = STACK[0x358];
  *v5 = 0x146375EC570BCC2FLL;
  return (*(v7 + 8 * (v6 + 14971)))(1389611311, 2905374331, 10084);
}

uint64_t sub_244781160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 648) = *(v5 + 1096) - 0x6286B82630F8F22CLL;
  LODWORD(STACK[0x8AC]) = 583793519;
  return (*(a4 + 8 * v4))(a1, a2, a3);
}

uint64_t sub_244781334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v6 + 648) = &STACK[0x740];
  LODWORD(STACK[0x8AC]) = v5;
  return (*(a4 + 8 * v4))(a1, a2, a3);
}

uint64_t sub_244781468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 8 * (v4 + 10058)))(a1, a2, a3);
  v7 = STACK[0x358];
  *(v5 + 952) = 0;
  return (*(v7 + 8 * v4))(v6);
}

uint64_t sub_244781794@<X0>(int a1@<W0>, uint64_t a2@<X3>, __int16 a3@<W8>)
{
  v10[135] = v3;
  LODWORD(STACK[0xA68]) = v8;
  LOWORD(STACK[0xA6E]) = a3;
  LODWORD(STACK[0xA70]) = a1;
  LODWORD(STACK[0xA74]) = v4;
  v10[210] = v6;
  v10[211] = v9;
  v13 = v3 != v11 && (a1 ^ (v7 - 1)) < ((v5 + 3217) ^ 0xFFFFE513);
  return (*(a2 + 8 * ((v13 * ((v5 ^ 0x11DF) + 6582)) ^ v5)))();
}

uint64_t sub_2447817FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 8 * (v4 + 16096)))(32, a2, a3);
  v7 = STACK[0x358];
  *(v5 + 40) = v6 + 0x750C1ABFB0567FDBLL;
  return (*(v7 + 8 * (((v6 == 0) * ((2 * v4) ^ 0x3374 ^ (v4 + 808662282) & 0xCFCCB974 ^ 0xFC5)) ^ v4)))();
}

uint64_t sub_24478188C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  *(a1 + 8) = 0x750C1ABFB0567FDBLL;
  v8 = v6 ^ 0xE2617E9u;
  *(v5 + 1696) = v8;
  v9 = ((((2 * v4) ^ 0x12C2) + v8) ^ 0xBAFFD95D) + 1332428479 + ((2 * (((2 * v4) ^ 0x12C2) + v8)) & 0x75FFB2BA);
  *(a1 + 16) = v9;
  v10 = (*(a4 + 8 * (v4 + 20577)))((v9 - 174790684), a2, a3);
  v11 = STACK[0x358];
  *(a1 + 24) = v10;
  return (*(v11 + 8 * (((v10 == 0) * (((v4 - 128918151) & 0x7AF1BB7) - 436)) ^ v4)))();
}

uint64_t sub_2447819F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 8 * (v5 ^ 0x7B75)))(a1, a2, a3);
  v7 = STACK[0x358];
  *(v4 - 0x750C1ABFB0567FC3) = 0;
  return (*(v7 + 8 * v5))(v6);
}

uint64_t sub_244781E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x65C]) = a8;
  v9[110] = v9[87];
  v9[81] = &STACK[0x758];
  LODWORD(STACK[0x8AC]) = 1522152126;
  return (*(a4 + 8 * v8))(a1, a2, a3);
}

uint64_t sub_244781E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  STACK[0x340] = STACK[0x410] - 0x750C1ABFB0567FC3;
  LODWORD(STACK[0x2C0]) = SLOWORD(STACK[0xA6E]) ^ 0xFFFFDD8C;
  LODWORD(STACK[0x310]) = STACK[0xA70];
  LODWORD(STACK[0x2F0]) = 237377517;
  LODWORD(STACK[0x210]) = STACK[0xA74];
  STACK[0x330] = STACK[0x568] - 0x750C1ABFB0567FC3;
  v63 = SLOWORD(STACK[0xAA6]);
  LODWORD(STACK[0x2D0]) = v63;
  LODWORD(STACK[0x2B0]) = v63 ^ 0x260E;
  STACK[0x320] = STACK[0x5F0] - 0x750C1ABFB0567FC3;
  v64 = *(a4 + 8 * (v62 + 1014));
  LODWORD(STACK[0x300]) = STACK[0xAA8];
  v65 = STACK[0x350];
  LODWORD(STACK[0x2A0]) = STACK[0x350] + 6090;
  LODWORD(STACK[0x200]) = STACK[0xAAC];
  LODWORD(STACK[0x290]) = v65 + 1846688561;
  LODWORD(STACK[0x280]) = v65 + 9037;
  LODWORD(STACK[0x270]) = v65 + 16584;
  LODWORD(STACK[0x260]) = ((v65 + 7356) ^ 0x6710) - 8659;
  LODWORD(STACK[0x250]) = v65 + 19408;
  LODWORD(STACK[0x2E0]) = v65 ^ 0x1511;
  LODWORD(STACK[0x240]) = v65 + 7219;
  LODWORD(STACK[0x230]) = STACK[0x5E0];
  LODWORD(STACK[0x220]) = v65 + 5844;
  return v64(0x60F92125641679B0, v63, a3, 0x60F92125641679AALL, v65 ^ 0x1807, 0x3098A71738BBE723, a4, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_2447820C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v5 + 1264);
  v7 = *(v6 - 0x750C1ABFB0567FD3);
  v8 = *(v5 + 40);
  *(v8 - 0x750C1ABFB0567FD3) = v7;
  *(v8 - 0x750C1ABFB0567FDBLL) = *(v6 - 0x750C1ABFB0567FDBLL);
  return (*(a4 + 8 * (((v7 == 0x750C1ABFB0567FDBLL) * ((((v4 + 2125406495) & 0x8150DEF3) + 3131) ^ (v4 - 427356065) & 0x1978FBFD)) | v4)))(a1, a2, a3);
}

uint64_t sub_24478237C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4 & 0xDF77B5F7;
  v7 = (*(a4 + 8 * (v4 & 0xDF77B5F7 ^ 0xDB76F831)))(a1, a2, a3);
  v8 = STACK[0x358];
  *(*(v5 + 1264) - 0x750C1ABFB0567FC3) = 0;
  return (*(v8 + 8 * ((29165 * (v6 == 1110350480)) ^ (v6 + 612994403))))(v7);
}

uint64_t sub_244782448@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = (*(a1 + 8 * (v2 ^ 0x5045)))(a2 - 0x750C1ABFB0567FDBLL);
  v5 = STACK[0x358];
  *(v3 + 1264) = 0x750C1ABFB0567FDBLL;
  return (*(v5 + 8 * v2))(v4);
}

uint64_t sub_24478255C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  *(a2 + v2) = v3;
  *(a2 - 0x146375EC570BCC2FLL) = v3;
  return (*(a1 + 8 * v4))();
}

uint64_t sub_244782598@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  *(v5 - 0x750C1ABFB0567FDBLL) = v3;
  *(v3 - 0x750C1ABFB0567FD3) = *(a2 + v2);
  *(a2 + v2) = v3;
  return (*(a1 + 8 * v4))();
}

uint64_t sub_24478263C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v5 + 912);
  v7 = *(v6 - 0x750C1ABFB0567FD3);
  v8 = *(v5 + 384);
  *(v8 - 0x750C1ABFB0567FD3) = v7;
  *(v8 - 0x750C1ABFB0567FDBLL) = *(v6 - 0x750C1ABFB0567FDBLL);
  return (*(a4 + 8 * ((67 * (((v7 == 0x750C1ABFB0567FDBLL) ^ ((v4 ^ 0xA4) - 1)) & 1)) ^ v4 ^ 0x26A4u)))(a1, a2, a3);
}

uint64_t sub_2447828D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 8 * (v4 + 9741)))(a1, a2, a3);
  v7 = STACK[0x358];
  *(*(v5 + 912) - 0x750C1ABFB0567FC3) = 0;
  return (*(v7 + 8 * v4))(v6);
}

uint64_t sub_244782988@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = (*(a1 + 8 * (v2 + 17809)))(a2 - 0x750C1ABFB0567FDBLL);
  v5 = STACK[0x358];
  *(v3 + 912) = 0x750C1ABFB0567FDBLL;
  return (*(v5 + 8 * v2))(v4);
}

uint64_t sub_244782A8C@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  *(v2 + v3) = v4;
  *(v2 - 0x146375EC570BCC2FLL) = v4;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_244782ABC@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  *(v5 - 0x750C1ABFB0567FDBLL) = v4;
  *(v4 - 0x750C1ABFB0567FD3) = *(v2 + v3);
  *(v2 + v3) = v4;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_244782B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x378] = v6;
  *(v7 + 680) = 0x750C1ABFB0567FDBLL;
  LODWORD(STACK[0x404]) = 237377513;
  *(v7 + 896) = 0xD5B5F82CD1778D3;
  v10 = v4 == v8 || v6 == 0;
  return (*(a4 + 8 * ((v10 * ((v5 - 20250) ^ 0xCA9 ^ ((v5 - 21163) | 0x3E))) ^ v5)))(a1, a2, a3);
}

uint64_t sub_244782C34@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  STACK[0x3E0] = v2;
  LODWORD(STACK[0x5E4]) = v3;
  *(v4 + 1168) = &STACK[0x690];
  LODWORD(STACK[0x3A4]) = 115661111;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_244782DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(v5 + 680) - 0x750C1ABFB0567FC3);
  *(v5 + 704) = v6;
  return (*(a4 + 8 * (((v6 == 0) * ((v4 ^ 0x118F) - 7493 + (((v4 ^ 0x118F) - 5405) | 0x4AA))) ^ v4 ^ 0x118F)))(a1, a2, a3);
}

uint64_t sub_244782E4C@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v4 = (v2 | ((v2 < ((a2 - 4881) | 0x234u) + 174788958) << 32)) + 0xD788DBBC96326B8;
  v3[219] = v4;
  v5 = v3[112];
  v3[220] = v5;
  return (*(a1 + 8 * ((24515 * (v4 - v5 - 0x1D2E3906B6C60BLL < 0xFFFFFFFFFFFFFFF6)) ^ a2)))();
}

uint64_t sub_244782F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0xAD4]) = v5;
  *(v8 + 1776) = v7;
  v11 = v4 == v9 || v7 == 0;
  return (*(a4 + 8 * ((v11 * ((v6 - 16056) ^ 0x679)) ^ v6)))(a1, a2, a3);
}

uint64_t sub_244782FB4@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = *a2;
  *(v3 + 600) = *a2;
  return (*(a1 + 8 * (((v4 != 0x750C1ABFB0567FDBLL) * ((v2 ^ 0x43E9) - 17652)) ^ (v2 + 12029))))();
}

uint64_t sub_244783B3C@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = *a2;
  *(v3 + 1096) = v4;
  return (*(a1 + 8 * ((((((v2 - 17949) | 0x698) ^ 0x48FA5078) + ((v2 - 1073895498) & 0xF707BB56)) * (v4 == 0x6286B82630F8F22CLL)) ^ v2)))();
}

uint64_t sub_244783BA8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  *(v3 + 648) = a2 - 0x6286B82630F8F224;
  LODWORD(STACK[0x8AC]) = -354565088;
  return (*(a1 + 8 * ((5924 * (v2 > 0xF4881)) ^ (v2 + 1224366030))))();
}

uint64_t sub_244783C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8 * v4);
  LODWORD(STACK[0x340]) = -354565701;
  return v5(1389611311, 2905374331, 10084);
}

uint64_t sub_244784194@<X0>(uint64_t a1@<X3>, unsigned int a2@<W8>)
{
  v5 = *(v2 + 40 * a2 + 32);
  *(v4 + 1144) = *(a1 + 8 * v3);
  return (*(a1 + 50824))(v5);
}

uint64_t sub_2447841CC@<X0>(uint64_t a1@<X3>, unsigned int a2@<W8>)
{
  v6 = (v3 + 40 * a2);
  v7 = *v6;
  v8 = *(v6 + 6);
  v5[126] = v2;
  LODWORD(STACK[0x3D8]) = v8;
  LOWORD(STACK[0x3D6]) = -13593;
  LODWORD(STACK[0x784]) = 237377505;
  LODWORD(STACK[0x86C]) = 237377513;
  v5[93] = v7;
  v5[102] = 0;
  LODWORD(STACK[0x4B4]) = -1872806562;
  return (*(a1 + 8 * v4))();
}

uint64_t sub_2447842F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v32 = *(a9 + 32);
  v33 = *(a9 + 16) - v32;
  v35 = v32 == 299866220 && v33 == -246125874;
  return (*(a4 + 8 * ((v35 * (v31 ^ 0x1F38A6F6)) ^ (v31 - 523800445))))(a1, a2, a3);
}

uint64_t sub_24478435C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (v32)
  {
    v33 = v31 == 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = v33;
  return (*(a4 + 8 * (((1993 * (v30 ^ 0x2E96) + ((v30 - 7669) | 0x642) - 11782) * v34) ^ v30)))(a1, a2, a3);
}

uint64_t sub_244784428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a4 + 16);
  STACK[0x288] = 32;
  v9 = v5 == 0;
  LOBYTE(STACK[0x517]) = v9;
  if (v8 == 1623921477 || v4 == 0x1FE18A5030EE0E2CLL)
  {
    v9 = 1;
  }

  LODWORD(STACK[0x3BC]) = 1216117114;
  return (*(a3 + 8 * (((4 * (v7 ^ (v6 + 2591)) - 8422) * !v9) ^ (v7 - 523797034))))(a1, a2, 3771163265);
}

uint64_t sub_244784508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v58 = (*(a4 + 8 * (v57 ^ 0x78C1)))(224, a2, a3);
  STACK[0x518] = v58;
  LODWORD(STACK[0x3BC]) = 1216117112;
  return (*(a35 + 8 * (((v58 == 0) * (v57 ^ 0x47A ^ ((v57 - 208) | 0x540))) ^ v57)))(v58, v59, 3771163265, a35, 1216081105, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
}

uint64_t sub_244784600@<X0>(uint64_t a1@<X3>, unint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  STACK[0x300] = a2;
  v30 = (*(a1 + 8 * (v29 ^ 0x79A2)))(((v29 ^ 0x6ABAu) + 4 * a7 + 2094229519) / 3 + 4);
  STACK[0x520] = v30;
  return (*(a29 + 8 * ((27 * (v30 != 0)) ^ v29)))();
}

uint64_t sub_244784670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unint64_t a14)
{
  STACK[0x320] = STACK[0x520];
  STACK[0x328] = a14;
  v15 = *(a4 + 8 * ((95 * ((~(a13 + ((((v14 - 2005694323) | 0x778C5709) + 8537) | 0x1400u) - 1623935134) + ((v14 - 2005694323) | 0x778C5709u)) >> 32)) ^ (((v14 - 2005694323) | 0x778C5709) + 15680)));
  LODWORD(STACK[0x334]) = a13;
  return v15(a1, a2, a3);
}

uint64_t sub_244784700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  LODWORD(STACK[0x30C]) = a13;
  STACK[0x310] = v14;
  STACK[0x318] = STACK[0x520];
  return (*(a4 + 8 * v13))();
}

uint64_t sub_244784750@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v7 = *v3;
  v8 = v7 >> 2;
  v9 = v3[1];
  v10 = (v9 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v7 & 3));
  v11 = 4 * (v9 & 0xF);
  v12 = v3[2];
  *v6 = *(a2 + v8) - 122;
  v6[1] = *(a2 + v10) - 122;
  v6[2] = *(a2 + (v11 | (v12 >> v5))) - 122;
  v6[3] = *(a2 + (v12 & 0x3F)) - 122;
  return (*(a1 + 8 * (((4 * (v4 > 0xFFFFFFFC)) | (8 * (v4 > 0xFFFFFFFC))) ^ v2)))();
}

uint64_t sub_2447847DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x318] = v7;
  STACK[0x310] = v6;
  LODWORD(STACK[0x30C]) = v5;
  STACK[0x320] = v7;
  STACK[0x328] = v6;
  LODWORD(STACK[0x334]) = v5;
  return (*(a4 + 8 * v4))(a1, a2, a3);
}

uint64_t sub_244784804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x334];
  LODWORD(STACK[0x52C]) = STACK[0x334];
  STACK[0x530] = STACK[0x328];
  v6 = STACK[0x320];
  STACK[0x538] = STACK[0x320];
  STACK[0x338] = v6;
  return (*(a4 + 8 * (((v5 == ((v4 - 3680) ^ 0x60CB3777)) * ((v4 - 10580) ^ 0x901)) ^ v4)))(a1, a2, a3);
}

uint64_t sub_24478485C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  LOBYTE(STACK[0x546]) = *STACK[0x530] - ((*STACK[0x530] << (~(v55 - 52) & 0xD9)) & ((v55 - 22) ^ 0x7E)) + 49;
  v56 = LODWORD(STACK[0x52C]) != 1623921478;
  LOBYTE(STACK[0x547]) = LODWORD(STACK[0x52C]) == 1623921478;
  return (*(a4 + 8 * (v56 | (4 * v56) | v55)))(a1, a2, a3);
}

uint64_t sub_244784980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35, uint64_t a36, int a37, int a38, int a39)
{
  LODWORD(a33) = v39 & 0xFFFFFFF9 ^ 0x5EE9DAE;
  v41 = v39;
  LODWORD(a30) = v39 & 0xFFFFFFFD ^ 0x5EE9DAA;
  HIDWORD(a12) = 1993 * (a8 ^ 0x2EA1);
  LODWORD(a13) = (a8 ^ 0x2EA1) + 5855;
  v42 = *(v40 + 8 * (a8 ^ 0x2D31)) - 4;
  v43 = *(v42 + (*(a14 + a33) ^ (BYTE4(a12) - 117))) ^ 0x6B;
  v44 = (((a13 + v43 - ((2 * v43) & 0x192)) << 8) - 532683008) ^ 0xE056C900;
  v45 = v44 - 2114114913 - ((2 * v44) & 0x3FA5400);
  v46 = *(v42 + (*(a14 + a30) ^ 0x52)) ^ 0x42;
  v47 = 16 * (v46 - ((2 * v46) & 0x84)) - 595262432;
  v48 = ((v47 ^ 0xDC850420) + 100811853 + ~(2 * ((v47 ^ 0xDC850420) & 0x6024450 ^ v47 & 0x10))) & 0xFFFFFFC ^ 0xF602444C;
  v49 = v48 - 512590496 - ((2 * v48) & 0xC2E4FAF0) + 25;
  HIDWORD(v50) = v49 ^ 0xFFFFFFF9;
  LODWORD(v50) = v49 ^ 0xE1727D60;
  v51 = (v50 >> 5) - ((2 * (v50 >> 5)) & 0x54C6525A) + 711141677;
  HIDWORD(v50) = v51 & 0x7F ^ 0x66C588D;
  LODWORD(v50) = v51 | 0x78000000;
  LODWORD(a31) = ((v41 & 0xFFFFFFFB ^ 0x5EE9DAC) + 816223553 - ((2 * (v41 & 0xFFFFFFFB ^ 0x5EE9DAC)) & 0x614D2A82)) ^ 0x30A69541;
  v52 = *(a14 + a31) ^ 0x9ELL;
  v53 = (16 * ((v50 >> 27) - ((2 * (v50 >> 27)) & 0x21605DE)) + 821833456) ^ 0x30FC2EF0;
  v54 = v53 - ((2 * v53) & 0xCFF1B9A0) + 1744362706;
  HIDWORD(v335) = ((v41 & 0xFFFFFFFE ^ 0x5EE9DA9) + 2097089114 + ((2 * ((v41 & 0xFFFFFFFE ^ 0x5EE9DA9) & 0x7CFF0A5A ^ (v41 | 0x7FFFFFFD))) ^ 7)) ^ 0x7CFF0A59;
  v55 = *(a14 + HIDWORD(v335));
  v56 = *(v40 + 8 * (a8 ^ 0x2AEE)) - 12;
  v57 = ((((*(v56 + v52) ^ 0x20) - ((2 * (*(v56 + v52) ^ 0x20)) & 0xE4)) << 24) + 1912602624) ^ 0x72000000;
  v58 = v57 - 1816855065 - ((2 * v57) & 0x26000000);
  HIDWORD(a23) = 99524013;
  v59 = *(v40 + 8 * (a8 ^ 0x2A37)) - 4;
  LODWORD(a32) = ((v41 & 0xFFFFFFF2 ^ 0x5EE9DAD) - 825248985 - ((2 * (v41 & 0xFFFFFFF2 ^ 0x5EE9DAD)) & 0x9D9F664E)) ^ 0xCECFB327;
  v60 = *(a14 + a32);
  LODWORD(v52) = (v58 ^ 0x93B4FDE7 | v45 ^ 0x81FD2A9F) - 314239440 - ((2 * (v58 ^ 0x93B4FDE7 | v45 ^ 0x81FD2A9F)) & 0xDA8A2C60);
  v61 = ((((v55 ^ 0x84 ^ *(v59 + (v55 ^ 0x3D))) - ((2 * (v55 ^ 0x84 ^ *(v59 + (v55 ^ 0x3D)))) & 0x4A)) << 16) + 1176829952) ^ 0x46250000;
  v62 = v54 ^ 0xBF499C22 | (v61 + 363712822 - ((2 * v61) & 0x2B5A0000)) ^ 0x15ADD136;
  LODWORD(v55) = 2 * v60 - ((4 * v60) & 0x20) + 49;
  LODWORD(v55) = ((2 * v60) & 0xDE) + (v60 ^ 0xB3DFD56F) + (((v55 & 0x34 ^ 0x30) & 0xFFFFFFF7 | (8 * ((v55 >> 2) & 1))) ^ 0x4030027B);
  v63 = v55 - ((2 * v55 + 400576608) & 0x9DC3D7D6) + 1523717147;
  LODWORD(a29) = v41 & 0xFFFFFFF8 ^ 0x5EE9DAF;
  LODWORD(a27) = v41 & 0xFFFFFFFC ^ 0x5EE9DAB;
  v64 = *(&off_278E1E490 + (a8 ^ 0x2A0D)) - 8;
  v65 = v64[*(a14 + a29) ^ 6];
  LODWORD(a24) = ((v41 & 0xFFFFFFF1 ^ 0x5EE9DAE) - 1687497190 + ((2 * ((v41 & 0xFFFFFFF1 ^ 0x5EE9DAE) & 0x1B6AD611 ^ (v41 | 0x7FFFFFFE))) ^ 0x17) + 1) ^ 0x9B6AD61A;
  v66 = ((((*(v59 + (v63 ^ 0x4EE1EBD4)) ^ v63 ^ 0x4A) - ((2 * (*(v59 + (v63 ^ 0x4EE1EBD4)) ^ v63 ^ 0x4A)) & 4)) << 16) + 1677852672) ^ 0x64020000;
  LODWORD(v63) = v52 ^ 0xED451630 | ((v65 - 57) - 2116994499 - ((2 * (v65 - 57)) & 0x7A)) ^ 0x81D13A3D;
  v67 = v63 + 1336890913 - ((2 * v63) & 0x9F5EAC42);
  LODWORD(v52) = *(v42 + (*(a14 + a24) ^ 0x70)) ^ 0x59;
  LODWORD(v52) = (((v52 - ((2 * v52) & 0xFC)) << 8) - 1817870848) ^ 0x93A57E00;
  LODWORD(v335) = ((v41 & 0xFFFFFFF7 ^ 0x5EE9DA8) - 2133903294 - ((2 * (v41 & 0xFFFFFFF7 ^ 0x5EE9DA8)) & 0x19E7084)) ^ 0x80CF3842;
  v68 = (v66 + 2137388739 - ((2 * v66) & 0x7ECA0000)) ^ 0x7F65F6C3 | (v52 - 361780278 - ((2 * v52) & 0x54DF5600)) ^ 0xEA6FABCA;
  LODWORD(v63) = v68 - 1787229390 - ((2 * v68) & 0x2AF21664);
  v69 = *(v56 + (*(a14 + v335) ^ 5)) ^ 0xBC;
  LODWORD(a21) = v41 & 0xFFFFFFF3 ^ 0x5EE9DAC;
  v70 = (((v69 - ((2 * v69) & 0xFFFFFF8F)) << 24) + 1191182336) ^ 0x47000000;
  LODWORD(v52) = ((((2 * v41) ^ 0xBDD3B50) + 315555237 - ((2 * ((2 * v41) ^ 0xBDD3B50)) & 0x259DFB48)) ^ 0x12CEFDA5) + (v41 ^ 0xFA116253);
  v71 = (v52 ^ 0x7BF6FE6E) - 2079784548 + ((2 * v52) & 0xF7EDFCDC);
  LODWORD(v52) = *(v56 + (*(a14 + a21) ^ 0xB3)) ^ 0xD9;
  LODWORD(v52) = (((v52 - ((2 * v52) & 0xC8)) << 24) - 469762048) ^ 0xE4000000;
  LODWORD(v63) = v63 ^ 0x95790B32 | (v52 - 467280158 - ((2 * v52) & 0xC8000000)) ^ 0xE425DEE2;
  v72 = v63 - 614503847 - ((2 * v63) & 0xB6BED4B2);
  LODWORD(v63) = *(a14 + v71) ^ 0xB5 ^ *(v59 + (*(a14 + v71) ^ 8));
  LODWORD(v63) = (((v63 - ((2 * v63) & 0x1AC)) << 16) + 1171652608) ^ 0x45D60000;
  v73 = (v63 - 25762592 + (~(2 * v63) | 0x8313FFFF) + 1) ^ 0xFE76E4E0 | v67 ^ 0x4FAF5621;
  LODWORD(a26) = v41 & 0xFFFFFFF5 ^ 0x5EE9DAA;
  LODWORD(a25) = ((v41 & 0xFFFFFFF4 ^ 0x5EE9DAB) + 996116935 - ((2 * (v41 & 0xFFFFFFF4 ^ 0x5EE9DAB)) & 0x76BF138E)) ^ 0x3B5F89C7;
  v74 = v64[*(a14 + a25) ^ 0x19] - 57;
  v75 = (v74 - 1606170765 - ((2 * v74) & 0xE6)) ^ 0xA043C773 | (v70 + 106788741 - ((2 * v70) & 0xC000000)) ^ 0x65D7785;
  v76 = *(v42 + (*(a14 + a26) ^ 0xC2)) ^ 0x1D;
  v77 = (((v76 - ((2 * v76) & 0x16)) << 8) + 1846676224) ^ 0x6E120B00;
  LODWORD(a19) = ((v41 & 0xFFFFFFF6 ^ 0x5EE9DA9) + 860214806 + ((2 * ((v41 & 0xFFFFFFF6 ^ 0x5EE9DA9) & 0x3345D616 ^ (v41 | 0x7FFFFFFD))) ^ 0x15) + 7) ^ 0x3345D61C;
  LODWORD(a20) = v41 ^ 0x5EE9DA8;
  LODWORD(v334) = *(v56 + (*(a14 + (v41 ^ 0x5EE9DA8)) ^ 0x6DLL));
  v78 = (v77 + 1543610024 - ((2 * v77) & 0x38033C00)) ^ 0x5C019EA8 | (v75 - 732577156 + (~(2 * v75) | 0x57547B07) + 1) ^ 0xD455C27C;
  v79 = v78 - 1939599909 - ((2 * v78) & 0x18C81BB6);
  v80 = ((((v334 ^ 0x77) - ((2 * (v334 ^ 0x77)) & 0x6C)) << 24) + 905969664) ^ 0x36000000;
  v81 = *(a14 + a19);
  v82 = (v80 - ((2 * v80) & 0x34000000) + 439216130) ^ ((v64[*(a14 + a27) ^ 0x77] - 57) - ((2 * (v64[*(a14 + a27) ^ 0x77] - 57)) & 0x68) - 55620044) ^ (v62 - ((2 * v62) & 0x9ED6DCA0) - 815042992);
  LODWORD(v59) = *(v59 + (v81 ^ 3));
  LOBYTE(v81) = (((v81 | 0xEB) - ((2 * v81) & 8) + 60) ^ 0xCC) & (v81 & 0xEB ^ 0x9E);
  LODWORD(a22) = ((v41 & 0xFFFFFFF0 ^ 0x5EE9DAF) + 272549253 - ((2 * (v41 & 0xFFFFFFF0 ^ 0x5EE9DAF)) & 0x207D8B0A)) ^ 0x103EC585;
  LODWORD(v59) = v59 ^ 0xEB ^ (v81 - ((2 * v81) & 0x2C) - 106);
  LODWORD(v59) = (((v59 - ((2 * v59) & 0x72)) << 16) + 1983447040) ^ 0x76390000;
  v83 = (v59 + 457656834 - ((2 * v59) & 0x368E0000)) ^ 0x1B474A02 | v79 ^ 0x8C640DDB;
  v85 = (v83 - ((2 * v83) & 0x9B6884E2) + 1303659121) ^ a38;
  v86 = (2 * (v82 & 0x1000000)) ^ 0x2000000 | v82 & 0x1000000;
  v87 = ((v86 - 0x1000000) & (a39 ^ 0x87000000)) + 1525493962 - ((2 * ((v86 - 0x1000000) & (a39 ^ 0x87000000))) & 0xB5DA6188) == 1525493962;
  v88 = v86 | 0x2440E676;
  v89 = 641787510 - v86;
  if (v87)
  {
    v89 = v88;
  }

  v90 = ((a39 ^ 0x872644D3) - 625010294 + v89 - ((2 * ((a39 ^ 0x872644D3) - 625010294 + v89)) & 0x6EDFE07C) - 1217400770) ^ v82 & 0xFEFFFFFF;
  v91 = (v73 - ((2 * v73) & 0x5EBC914C) + 794708134) ^ a37;
  v84 = v64[*(a14 + a22) ^ 0x6FLL];
  v92 = v72 ^ 0xDB5F6A59 | ((v84 - 57) + 1822574304 - ((2 * (v84 - 57)) & 0x1C0)) ^ 0x6CA246E0;
  v93 = v92 - ((2 * v92) & 0xB52EB7C6);
  v94 = (v91 >> 8) & 0x8C;
  v95 = (v94 ^ 0x36BFEF90) + ((v91 >> 7) & 0x18 ^ 0xDE) - 918548335;
  v96 = ((v95 - v94 + ((2 * (v95 - v94)) ^ 0xFFFFFFFB) + 254) & 0x9D ^ 1) + v95;
  v97 = (v96 - ((2 * v96) & 0x5A) + 173) ^ (((v91 >> 8) & 0x73 ^ 0xAE) + 244);
  v98 = (((2 * HIBYTE(v90)) ^ 0x1EA) + 679846877 - ((2 * ((2 * HIBYTE(v90)) ^ 0x1EA)) & 0xBBBBBBBB)) ^ 0x2885A3DD;
  LODWORD(a17) = 2147483642;
  v99 = v98 + 680942809 + ((2 * ((v98 + 32440592) & 0x26A75BCD ^ (v98 | 0x7FFFFFFA))) ^ 0xB);
  v100 = *(&off_278E1E490 + a8 - 10244) - 8;
  v101 = (BYTE2(v91) ^ 0x850A8BA9) + *&v100[4 * (BYTE2(v91) ^ 0x52)];
  v102 = ((v91 >> 22) & 0x3BC ^ 0x3A8) + ((2 * HIBYTE(v91)) ^ 0x1EFEC20B);
  v103 = *(&off_278E1E490 + a8 - 11309);
  v104 = *(v103 + 4 * (HIBYTE(v91) ^ 0x35));
  v105 = ((-1626529565 - v102 - ((2065822 - 2 * v102) & 0x22BC28)) ^ (v102 - ((2 * v102 + 31488610) & 0x3C53820) + 483580226) ^ 0x233C5905 ^ ((v104 ^ 0x8E1C6DDE) - (v104 ^ 0x37FEF1CF ^ (v102 - ((2 * v102 + 31488610) & 0x3C53820) + 483580226)) - ((2 * ((v104 ^ 0x8E1C6DDE) - (v104 ^ 0x37FEF1CF ^ (v102 - ((2 * v102 + 31488610) & 0x3C53820) + 483580226)))) & 0x36473600) - 1692165376)) + (v104 ^ 0x8E1C6DDE);
  v106 = v105 - ((2 * v105) & 0x9D6F5296);
  v107 = (v93 + 1519868899) ^ a35;
  LODWORD(a15) = a8;
  v108 = *(&off_278E1E490 + a8 - 10745) - 12;
  v109 = *(&off_278E1E490 + (a8 ^ 0x2A5E)) - 12;
  v110 = *&v108[4 * (BYTE1(v85) ^ 0xA0)] ^ *&v109[4 * (v107 ^ 0x99)] ^ (v101 - ((2 * v101 - 1847573424) & 0xC4E4BA58) + 727875412) ^ *(v103 + 4 * (HIBYTE(v90) ^ 0x2A)) ^ v99;
  v111 = ((2 * ((BYTE1(v107) ^ 0xFFFFFFC6) + 1)) & 0xFF9D5BC6) + (((BYTE1(v107) ^ 0xFFFFFFC6) + 1) ^ 0x7FCEADE3);
  v112 = *&v100[4 * (BYTE2(v85) ^ 0xA1)] + (BYTE2(v85) ^ 0x7AF574A5) - 923786713;
  v113 = ((v107 >> 7) & 0x1D6 ^ 0x156) + (BYTE1(v107) ^ 0x30EEE740);
  v114 = v113 - ((2 * v113 + 505556742) & 0x19E2F7FA);
  v115 = 798065162 - v113 - ((1641926906 - 2 * v113) & 0xFD45331A);
  v116 = (v112 ^ 0xCCFE67BF) + ((((2 * BYTE2(v85)) ^ 0xF5EAE94A) - ((2 * ((2 * BYTE2(v85)) ^ 0xF5EAE94A)) & 0x68445398) - 1272828468) ^ 0x4BDDD233) + ((2 * v112) & 0x99FCCF7E) + 855742530;
  v117 = ((((v111 - 2144251363) ^ 0xFEA2998D ^ v115) - ((2 * ((v111 - 2144251363) ^ 0xFEA2998D ^ v115)) & 0x7301F06A) + 964753461) ^ 0xC67F07CA) + v111;
  v118 = ((v114 - 603810944) ^ v115 ^ 0x45159A65 ^ (v117 - ((2 * v117 + 6464572) & 0x6E8CF02A) + 930597427)) - (BYTE1(v107) ^ 0x39);
  v119 = (v106 + 1320659275) ^ (v116 - ((2 * v116) & 0xCF1F79E2) + 1737473265) ^ *&v108[4 * (BYTE1(v107) ^ 0xA7BA9E84 ^ (v118 - 1480941948 - ((2 * v118) & 0x4F753D7A) + 57)) + 584];
  v120 = (2 * (v119 & 0x100000)) ^ 0x200000 | v119 & 0x100000;
  v121 = (((a12 | ~v119) + 1742081004) | 0x9829F414) - (v119 ^ 0xE5F5F95);
  v122 = v121 - ((2 * v121) & 0x375F97DA);
  v123 = *&v109[4 * (v90 ^ 0x53)];
  v87 = ((v120 - 0x100000) & (v123 ^ 0xA2700000)) - 478898604 - ((2 * ((v120 - 0x100000) & (v123 ^ 0xA2700000))) & 0xC6E92C6C) == -478898604;
  v124 = v120 + 1424022251;
  v125 = 1426119403 - v120;
  if (v87)
  {
    v125 = v124;
  }

  v126 = ((v123 ^ 0xA07F68EB) - 1425070827 + v125 - ((2 * ((v123 ^ 0xA07F68EB) - 1425070827 + v125)) & 0x790FE31E) - 1131941489) ^ (v122 - 1682977811);
  v127 = (((2 * HIBYTE(v85)) ^ 0x13C) - 1597151565 - ((2 * ((2 * HIBYTE(v85)) ^ 0x13C)) & 0x164)) ^ 0xA0CD66B3;
  v128 = (BYTE2(v107) ^ 0x850A8BCF) + *&v100[4 * (BYTE2(v107) ^ 0x34)];
  v129 = (((2 * HIBYTE(v107)) ^ 0xBE) + 768104163 - ((2 * ((2 * HIBYTE(v107)) ^ 0xBE)) & 0x1C4)) ^ 0x2DC856E3;
  v130 = *&v108[4 * (BYTE1(v90) ^ 0x27)] ^ *(v103 + 4 * (HIBYTE(v85) ^ 0x41)) ^ *&v109[4 * (v91 ^ 1)] ^ (v128 - ((2 * v128 - 1847573424) & 0xDC7A67D8) + 925718036) ^ (v127 - ((2 * v127 + 64881184) & 0x5B5EDE08) - 1348571116);
  v131 = (BYTE2(v90) ^ 0x850A8B7C) + *&v100[4 * (BYTE2(v90) ^ 0x87)];
  v132 = *&v108[4 * (v97 ^ 0x33)] ^ *(v103 + 4 * (HIBYTE(v107) ^ 0x80)) ^ *&v109[4 * (v85 ^ 0xF)] ^ (v129 - ((2 * v129 + 64881184) & 0x30C9590E) + 1515433367) ^ (v131 - ((2 * v131 - 1847573424) & 0xD92B94C2) - 1249514359);
  v133 = ((2 * HIBYTE(v110)) ^ 0x8E) - 1548667365 - ((2 * ((2 * HIBYTE(v110)) ^ 0x8E)) & 0x34);
  v134 = (BYTE2(v126) ^ 0x850A8B83) + *&v100[4 * (BYTE2(v126) ^ 0x78)];
  v135 = *&v108[4 * (BYTE1(v130) ^ 0x73)] ^ *(v103 + 4 * (HIBYTE(v110) ^ 0x98)) ^ *&v109[4 * (v132 ^ 0xA4)] ^ ((v133 ^ 0xA3B1361B) + 219353731 + ((2 * (((v133 ^ 0xA3B1361B) + 32440592) & 0xB241176 ^ (v133 | 0x7FFFFFFB))) ^ 9)) ^ (v134 - ((2 * v134 - 1847573424) & 0xF1E3E0D2) + 1105334929);
  v136 = ((((4 * HIBYTE(v126)) ^ 0x334) - 2 * (((4 * HIBYTE(v126)) ^ 0x334) & 0x17C ^ (4 * HIBYTE(v126)) & 8) + 374) & 0x220 ^ 0x20) + ((((2 * HIBYTE(v126)) ^ 0x19A) - ((2 * ((2 * HIBYTE(v126)) ^ 0x19A)) & 0xE8) + 126925429) ^ 0x867FBB65);
  v137 = (HIWORD(v130) & 0x8A ^ 0xC09897BC ^ ((HIWORD(v130) & 0x75 ^ 0x7AF574AE) - ((v130 >> 15) & 0x82) - 895702975)) + *&v100[4 * (BYTE2(v130) ^ 0xA8)];
  v138 = ((2 * v110) ^ 0x1B2) + (v110 ^ 0x747DBF26);
  v139 = ((2 * v138 - ((4 * v138 + 636382380) & 0x6764E60C) - 894588580) ^ 0x48498CF9) + 2 * v138;
  v140 = *&v108[4 * (BYTE1(v132) ^ 0xFD)] ^ *&v109[4 * (v110 ^ 0x7E)] ^ (v137 - ((2 * v137 + 299910224) & 0x17A51878) + 1422044772) ^ (v139 - ((2 * v139 + 704362074) & 0x48465C20) - 115275459) ^ *(v103 + 4 * (HIBYTE(v126) ^ 0x12)) ^ (v136 - ((2 * v136) & 0x79CF9774) + 1021823930);
  v141 = (((2 * HIBYTE(v130)) ^ 0x1C0) + 1773261779 - 2 * (((2 * HIBYTE(v130)) ^ 0x1C0) & 0x1D6 ^ (2 * HIBYTE(v130)) & 4)) ^ 0x69B1D3D3;
  v142 = (BYTE2(v132) ^ 0x850A8BE3) + *&v100[4 * (BYTE2(v132) ^ 0x18)];
  v143 = *&v108[4 * (BYTE1(v110) ^ 0x72)] ^ *(v103 + 4 * (HIBYTE(v130) ^ 0x3F)) ^ (v142 - ((2 * v142 - 1847573424) & 0xB9A21ACC) + 633417614) ^ (v141 - ((2 * v141 + 64881184) & 0x777F35B2) + 2108595177) ^ *&v109[4 * (v126 ^ 3)];
  v144 = (((2 * HIBYTE(v132)) ^ 0x46) + 1445620764 - ((2 * ((2 * HIBYTE(v132)) ^ 0x46)) & 0x38)) ^ 0x562A6C1C;
  v145 = (BYTE2(v110) ^ 0x850A8BC1) + *&v100[4 * (BYTE2(v110) ^ 0x3A)];
  v146 = *(v103 + 4 * (HIBYTE(v132) ^ 0xFC)) ^ 0xFA5F23F2 ^ (v144 - ((2 * v144 + 64881184) & 0x68869C58) - 164475076);
  v147 = (v145 - ((2 * v145 + 299910224) & 0x44503AE2) - 350732391) ^ 0x22281D71;
  v148 = *&v109[4 * (v130 ^ 0x23)] ^ ((v147 | v146) - ((2 * (v147 | v146)) & 0xFCB19684) + 2119748418) ^ ((v147 & v146) - ((2 * (v147 & v146)) & 0x82105FAA) - 1056428075) ^ *&v108[4 * ~(v126 >> 8)];
  v149 = (((2 * HIBYTE(v135)) ^ 0x130) + 1327288805 - ((2 * ((2 * HIBYTE(v135)) ^ 0x130)) & 0x3C8)) ^ 0x4F1CD1E5;
  v150 = (BYTE2(v140) ^ 0x850A8BE6) + *&v100[4 * (BYTE2(v140) ^ 0x1D)];
  v151 = *&v108[4 * (BYTE1(v143) ^ 0x68)] ^ *&v109[4 * (v148 ^ 0x6B)] ^ *(v103 + 4 * (HIBYTE(v135) ^ 0x47)) ^ (v149 - 2 * ((v149 + 32440592) & 0x6650030F ^ v149 & 0xC) - 398523373) ^ (v150 - ((2 * v150 + 299910224) & 0x1186152E) + 1370696895);
  v152 = (((2 * HIBYTE(v140)) ^ 0x56) - 1513411530 - 2 * (((2 * HIBYTE(v140)) ^ 0x56) & 0x3E ^ (2 * HIBYTE(v140)) & 8)) ^ 0xA5CB2C36;
  v153 = (BYTE2(v143) ^ 0x850A8BCA) + *&v100[4 * (BYTE2(v143) ^ 0x31)];
  v154 = (v153 - ((2 * v153 - 1847573424) & 0xDD786A70) - 1213442208) ^ *(v103 + 4 * (HIBYTE(v140) ^ 0xF4)) ^ (v152 + 1251821907 + ((2 * ((v152 + 32440592) & 0x48AE4846 ^ (v152 | 0x7FFFFFFB))) ^ 9));
  v155 = *&v108[4 * (BYTE1(v148) ^ 0xE7)];
  v156 = ((2 * v155) & 0xF7FCE3D6 ^ 0xB1106380) + (v155 ^ 0xA376C43B);
  v157 = (((2 * HIBYTE(v143)) ^ 0xE6) + 1902597204 - ((2 * ((2 * HIBYTE(v143)) ^ 0xE6)) & 0xA8)) ^ 0x71675454;
  v158 = v156 - 2080272875 + (v154 ^ ((v154 ^ 0x57F1EF5B) - ((2 * (v154 ^ 0x57F1EF5B) + 2) & 0xC7EE773E) + 1677147040) ^ ((v155 ^ 0x8F795A8B ^ v154) + v156 - ((2 * ((v155 ^ 0x8F795A8B ^ v154) + v156) + 134421548) & 0x7DF99FE4) - 1023517176) ^ 0xF505E4C9);
  v159 = (v158 - ((2 * v158) & 0x9CB32782) - 832990271) ^ *&v109[4 * (v135 ^ 0x44)];
  v160 = (v148 >> 15) & 0x114;
  v161 = (v160 ^ 0x10) - 1110956214 + ((2 * ((v160 ^ 0x10 | 0x7FFFFFEB) ^ v160)) ^ 9);
  v162 = (((v160 ^ 0x10) + 1479872421 + 2 * ((v160 ^ 0x10 | 0x7FFFFFE7) ^ v160) + 18) ^ 0x58350FA5) + (BYTE2(v148) ^ 0x7AF57496);
  v163 = ((v161 + 1) ^ 0xBDC8274A) + (v162 ^ 0x5271C080) - ((2 * v162) & 0x5B1C7EFE) - 1383186560;
  v164 = (v163 ^ 0xEFFDEB3F) + *&v100[4 * (BYTE2(v148) ^ 0x92)] + ((2 * v163) & 0xDFFBD67E);
  v165 = *&v108[4 * (BYTE1(v135) ^ 0x44)] ^ *(v103 + 4 * (HIBYTE(v143) ^ 0xAC)) ^ (v157 - ((2 * v157 + 64881184) & 0x5AB3316) + 1153735322) ^ *&v109[4 * (v140 ^ 0xEB)] ^ (v164 - ((2 * v164 + 300182992) & 0x1F3ACDC4) + 1754242506);
  v166 = (((2 * HIBYTE(v148)) ^ 0x1FE) - 1877845014 - ((2 * ((2 * HIBYTE(v148)) ^ 0x1FE)) & 0x3D4)) ^ 0x90125BEA;
  v167 = (BYTE2(v135) ^ 0x850A8BF0) + *&v100[4 * (BYTE2(v135) ^ 0xB)];
  v168 = *&v108[4 * (BYTE1(v140) ^ 0x17)] ^ *(v103 + 4 * (HIBYTE(v148) ^ 0x20)) ^ *&v109[4 * (v143 ^ 0xAF)] ^ (v166 - ((2 * v166 + 64881184) & 0x5615D166) + 1828317635) ^ (v167 - ((2 * v167 - 1847573424) & 0xF0BF934E) - 1051726897);
  v169 = (v165 ^ 0x3EC2A359) % 0x1619F9A6;
  LOBYTE(v164) = (v165 ^ 0x59) + (v169 ^ 0x10) - ((2 * v169) & 0xDE);
  LOBYTE(v164) = ((2 * v169) & 0xFC) + (v169 ^ 0xFE) + ((v164 - 16) ^ 0xFB) + ((2 * (v164 - 16)) & 0xF6);
  LOBYTE(v143) = v164 + ((112 - 2 * v164) | 0x97);
  v170 = (((2 * HIBYTE(v151)) ^ 0x66) + 1564139189 - ((2 * ((2 * HIBYTE(v151)) ^ 0x66)) & 0x168)) ^ 0x5D3ADEB5;
  v171 = v170 - ((2 * v170 + 64881184) & 0x604550F2);
  v172 = (BYTE2(v159) ^ 0x850A8B05) + *&v100[4 * (BYTE2(v159) ^ 0xFE)];
  v173 = ((((2 * v168) ^ 0x46D232EE) - 2 * (((2 * v168) ^ 0x46D232EE) & 0x34 ^ (2 * v168) & 0x10) + 100) & 0x54 ^ 0x44) + (v168 ^ 0xFDF95B5D);
  v174 = (v168 ^ 0x77) + (v173 ^ 0x9F30022A) - ((2 * v173) & 0xC192BBAA) + 1624243670;
  v175 = (2 * HIBYTE(v159)) ^ 0x64;
  v176 = (v175 - 1043629760 - ((2 * v175) & 0x280)) ^ 0xC1CB7940;
  v177 = *&v108[4 * (BYTE1(v165) ^ 0x31)] ^ *(v103 + 4 * (HIBYTE(v151) ^ 0xEC)) ^ *&v109[4 * (v168 ^ 0xD0)] ^ (v171 - 1307465335) ^ (v174 - ((2 * v174) & 0x465FE948) + 590345380) ^ (v172 - ((2 * v172 - 1847573424) & 0xEFE23504) - 1058980694);
  v178 = (BYTE2(v165) ^ 0x850A8BB7) + *&v100[4 * (BYTE2(v165) ^ 0x4C)];
  v179 = HIBYTE(v165);
  v180 = ((2 * HIBYTE(v165)) ^ 0x7C) - 1133409788 - ((2 * ((2 * HIBYTE(v165)) ^ 0x7C)) & 8);
  v181 = (v180 ^ 0xBC718A04) + 174947990 + ((2 * (((v180 ^ 0xBC718A04) + 32440592) & 0x87E7D8F ^ (v180 | 0x7FFFFFF5))) ^ 0x15);
  v182 = *&v108[4 * (BYTE1(v168) ^ 0x8B)] ^ *&v109[4 * (v151 ^ 0xB9)] ^ (v178 - ((2 * v178 + 299910224) & 0x601E0E12) + 2029988145) ^ *(v103 + 4 * (HIBYTE(v159) ^ 0xED)) ^ (v176 - 2 * ((v176 + 32440592) & 0x786575DD ^ v175 & 4) - 95127831);
  v183 = (BYTE2(v168) ^ 0x850A8B1C) + *&v100[4 * (BYTE2(v168) ^ 0xE7)];
  v184 = *&v109[4 * (v159 ^ 0x39)];
  v185 = (((v184 ^ 0xA279CC3D) - (v184 ^ 0xA07F68EB) - ((2 * ((v184 ^ 0xA279CC3D) - (v184 ^ 0xA07F68EB))) & 0x110CD926) + 143027347) ^ 0xF779936F) + (v184 ^ 0xA279CC3D);
  v186 = ((BYTE2(v151) ^ 0x4B) - 105 * ((((57 * (BYTE2(v151) ^ 0x4Bu)) >> 8) + ((((BYTE2(v151) ^ 0x4B) - ((57 * (BYTE2(v151) ^ 0x4B)) >> 8)) & 0xFE) >> 1)) >> 6));
  LOBYTE(v167) = v186 + (BYTE2(v151) ^ 0x4B) - 2 * v186 - ((2 * (v186 + (BYTE2(v151) ^ 0x4B) - 2 * v186)) & 0x34);
  v187 = *&v108[4 * (BYTE1(v151) ^ 0xE2)] ^ *(v103 + 4 * (v179 ^ 0xE1)) ^ (v183 - ((2 * v183 + 299910224) & 0x3DE626BE) - 404540025) ^ v181 ^ (v185 - ((2 * v185) & 0xA716638) - 2059881700);
  HIDWORD(v334) = v186 + 1627280058 - ((2 * v186) & 0x74);
  v188 = (2 * HIBYTE(v168)) ^ 0x146;
  v189 = (v188 + 985105144 - ((2 * v188) & 0x1F0)) ^ 0x3AB782F8;
  v190 = ((v167 + 26) ^ 0x1A) + (HIDWORD(v334) ^ 0x60FE52BA);
  v191 = ((v190 - 400012993 - ((2 * v190) & 0x5050927E)) ^ 0x6D22C24A) + *&v100[4 * ((v190 - 400012993 - ((2 * v190) & 0x5050927E)) ^ 0xE82849B1)];
  v192 = *&v108[4 * (BYTE1(v159) ^ 0x70)] ^ *(v103 + 4 * (HIBYTE(v168) ^ 0x7C)) ^ (v189 - 2 * ((v189 + 32440592) & 0x5E80927F ^ v188 & 6) - 529558648) ^ *&v109[4 * ((v143 - 68) ^ 0x13)] ^ (v191 - ((2 * v191 - 1847573424) & 0x8BD943A2) + 249349113);
  v193 = (((2 * HIBYTE(v177)) ^ 0x1B4) - 933009882 - ((2 * ((2 * HIBYTE(v177)) ^ 0x1B4)) & 0x4C)) ^ 0xC8636626;
  v194 = (BYTE2(v182) ^ 0x850A8B3E) + *&v100[4 * (BYTE2(v182) ^ 0xC5)];
  v195 = *&v108[4 * (BYTE1(v187) ^ 0xB3)] ^ *(v103 + 4 * (HIBYTE(v177) ^ 5)) ^ (v193 - 2 * ((v193 + 32440592) & 0x63C2EAEF ^ v193 & 0xC) - 441324558) ^ (v194 - ((2 * v194 - 1847573424) & 0xF5260E22) + 1132669241) ^ *&v109[4 * (v192 ^ 0x76)];
  v196 = (((2 * HIBYTE(v182)) ^ 0xA6) + 885040337 - ((2 * ((2 * HIBYTE(v182)) ^ 0xA6)) & 0x1A0)) ^ 0x34C0A4D1;
  v197 = (BYTE2(v187) ^ 0x850A8BF2) + *&v100[4 * (BYTE2(v187) ^ 9)];
  v198 = *&v109[4 * (v177 ^ 0x82)] ^ *(v103 + 4 * (HIBYTE(v182) ^ 0x8C)) ^ (v197 - ((2 * v197 + 299910224) & 0x73265E12) + 42160433) ^ *&v108[4 * (BYTE1(v192) ^ 0x95)] ^ (v196 - ((2 * v196 + 64881184) & 0x206E541C) - 1842992354);
  v199 = (((2 * HIBYTE(v187)) ^ 0xAC) + 1610160950 - ((2 * ((2 * HIBYTE(v187)) ^ 0xAC)) & 0x26C)) ^ 0x5FF91B36;
  v200 = (BYTE2(v192) ^ 0x850A8B8E) + *&v100[4 * (BYTE2(v192) ^ 0x75)];
  v201 = ((2 * v182) & 0xFC ^ 0xF4) + (v182 ^ 0x6BF3AF84);
  v202 = ((2 * v201 - ((4 * v201 + 1209446064) & 0xA2A10C2C) + 2036653422) ^ 0xAAA679E9) + 2 * v201;
  v203 = HIBYTE(v192);
  v204 = ((2 * v203) ^ 0x86) - 269080190 - ((2 * ((2 * v203) ^ 0x86)) & 0xFFFFFF07);
  v205 = *&v108[4 * (BYTE1(v177) ^ 0x11)] ^ *&v109[4 * (v182 ^ 0x5D)] ^ *(v103 + 4 * (HIBYTE(v187) ^ 0x89)) ^ (v199 - ((2 * v199 + 64881184) & 0x622D085E) - 1291483841) ^ (v202 - ((2 * v202 + 1277425758) & 0x6DBC1FCA) + 485493780) ^ (v200 - ((2 * v200 - 1847573424) & 0xC51D588E) - 1417752977);
  v206 = (BYTE2(v177) ^ 0x850A8BF5) + *&v100[4 * (BYTE2(v177) ^ 0xE)];
  v207 = *&v108[4 * (((BYTE1(v182) ^ 0x22) + 146) ^ 0x7BBEFF5B) - 0x1EEFBFD68 + 4 * ((2 * ((BYTE1(v182) ^ 0x22) + 146)) & 0x2B6) + 4 * ((((2 * (v182 >> 8)) ^ 0x44444444) - ((v182 >> 6) & 0x174) + 443) & 0x124 ^ 0xFFFFFEDF)] ^ *(v103 + 4 * (v203 ^ 0x9C)) ^ *&v109[4 * (((v187 ^ 0xE1) + 167) ^ 0x7FFFFDD2) + 0x2000008BCLL + 4 * ((2 * ((v187 ^ 0xE1) + 167)) & 0x3A4) + 4 * ((((2 * v187) ^ 0xAD0E43C2) - ((2 * ((2 * v187) ^ 0xAD0E43C2)) & 0xE0) + 369) & 0x14E ^ 0xFFFFFEBF)] ^ (v206 - ((2 * v206 + 299910224) & 0x394CDFB8) - 443117052) ^ ((v204 ^ 0xEFF62982) - 2 * (((v204 ^ 0xEFF62982) + 32440592) & 0x34A55A3F ^ v204 & 8) - 1231791289);
  v208 = (((2 * HIBYTE(v195)) ^ 0x166) + 414030069 - ((2 * ((2 * HIBYTE(v195)) ^ 0x166)) & 0x1E8)) ^ 0x18AD98F5;
  v209 = ((((v207 ^ 0xA92257C8) >> (v334 & 0x10 ^ 0x10)) + 1189420013 + (~(2 * ((v207 ^ 0xA92257C8) >> (v334 & 0x10 ^ 0x10))) | 0x7235C825) + 1) ^ 0x46E51BED) >> (v334 & 0x10);
  LOBYTE(v182) = v209 - ((2 * v209) & 0xD6);
  v210 = (BYTE2(v198) ^ 0x850A8B2A) + *&v100[4 * (BYTE2(v198) ^ 0xD1)];
  v211 = (((2 * HIBYTE(v198)) ^ 0xA8) + 1544716910 - 2 * (((2 * HIBYTE(v198)) ^ 0xA8) & 0x7E ^ (2 * HIBYTE(v198)) & 0x10)) ^ 0x5C1282EC;
  v212 = *&v108[4 * (BYTE1(v205) ^ 0xDF)] ^ *(v103 + 4 * (HIBYTE(v195) ^ 0x6C)) ^ *&v109[4 * (v207 ^ 0x6F)] ^ (v210 - ((2 * v210 + 299910224) & 0x6F0A70F0) + 7690912) ^ (v208 - ((2 * v208 + 64881184) & 0x3CCCE89A) + 542471517);
  v213 = (BYTE2(v205) ^ 0x850A8B65) + *&v100[4 * (BYTE2(v205) ^ 0x9E)];
  v214 = v195 ^ (184221431 - (v195 ^ 0xE5445C7A) - ((1250474438 - 2 * (v195 ^ 0xE5445C7A)) & 0x4B6D4428)) ^ ((v195 ^ 0xFFFFFF66) - ((2 * (v195 ^ 0xFFFFFF66) + 2) & 0x3796A9BE) + 466310368) ^ 0x3E7DF652;
  v215 = *&v108[4 * (BYTE1(v207) ^ 0xC5)] ^ *(v103 + 4 * (HIBYTE(v198) ^ 0xCA)) ^ (v213 - ((2 * v213 + 299910224) & 0x7081D45A) - 2127492011) ^ *&v109[4 * ((v214 - ((2 * v214 - 897009210) & 0xBDE31066) + 1144382742) ^ 0xBBB5D477)] ^ (v211 - ((2 * v211 + 64881184) & 0x3153C752) + 446227641);
  v216 = (((2 * HIBYTE(v205)) ^ 0x1E6) + 41342221 - 2 * (((2 * HIBYTE(v205)) ^ 0x1E6) & 0x11C ^ (2 * HIBYTE(v205)) & 0x10)) ^ 0x276D50D;
  v217 = ((v182 - 21) ^ 0x850A8B9E) + *&v100[4 * ((v182 - 21) ^ 0x65)];
  v218 = HIBYTE(v207);
  v219 = (((2 * HIBYTE(v207)) ^ 0x152) - 2080058283 - ((2 * ((2 * HIBYTE(v207)) ^ 0x152)) & 0xA8)) ^ 0x8404D455;
  v220 = *&v108[4 * (BYTE1(v195) ^ 0x75)] ^ *&v109[4 * (v198 ^ 0x37)] ^ *(v103 + 4 * (HIBYTE(v205) ^ 0x2C)) ^ (v216 + 2051619574 + ((2 * ((v216 + 32440592) & 0x785A39EF ^ (v216 | 0x7FFFFFF5))) ^ 0x15)) ^ (v217 - ((2 * v217 + 31474768) & 0xA94B594) + 1312455922);
  v221 = (BYTE2(v195) ^ 0x850A8B18) + *&v100[4 * (BYTE2(v195) ^ 0xE3)];
  v222 = *&v108[4 * (BYTE1(v198) ^ 0x55)] ^ *(v103 + 4 * (v218 ^ 0x76)) ^ *&v109[4 * (v205 ^ 0x70)] ^ (v221 - ((2 * v221 - 1847573424) & 0xE50576CC) + 997383566) ^ (v219 - ((2 * v219 + 64881184) & 0x2921EA1E) - 696256993);
  v223 = (((2 * HIBYTE(v212)) ^ 0xF4) + 996772745 - ((2 * ((2 * HIBYTE(v212)) ^ 0xF4)) & 0x310)) ^ 0x3B698B89;
  v224 = ~(v215 >> 15) & 0x114;
  v225 = v224 - 1046314012 - ((2 * v224) & 0xFFFFFE1F);
  v226 = ((v224 + 1449908431 - ((2 * v224) & 8)) ^ 0x566BD8CF) + (BYTE2(v215) | 0x7AF57400);
  v227 = (v225 ^ 0xC1A283E4) + (v226 ^ 0x8300092) - ((2 * v226) & 0xEF9FFEDA) - 137363602;
  v228 = (v227 ^ 0x7D7F5BDF) + *&v100[4 * (BYTE2(v215) ^ 4)] + ((2 * v227) & 0xFAFEB7BE);
  v229 = *&v108[4 * (BYTE1(v220) ^ 0x1F)] ^ *(v103 + 4 * (HIBYTE(v212) ^ 0xA5)) ^ *&v109[4 * (v222 ^ 0x12)] ^ (v223 - ((2 * v223 + 64881184) & 0x3472E6E) - 2087544761) ^ (v228 - 2 * ((v228 + 1265681992) & 0x52BB9116 ^ v228 & 2) - 1641261220);
  v230 = (((2 * HIBYTE(v215)) ^ 0xBA) + 6404615 - ((2 * ((2 * HIBYTE(v215)) ^ 0xBA)) & 0x270) + 306) ^ 0x61BA07;
  v231 = (BYTE2(v220) ^ 0x850A8BB0) + *&v100[4 * (BYTE2(v220) ^ 0x4B)];
  v232 = *&v108[4 * (BYTE1(v222) ^ 0xC8)] ^ *&v109[4 * (v212 ^ 0xA1)] ^ *(v103 + 4 * (HIBYTE(v215) ^ 0x1D)) ^ (v230 - 2 * ((v230 + 32440592) & 0x14E6E5DF ^ v230 & 4) - 1764366613) ^ (v231 - ((2 * v231 + 299910224) & 0x245DD2D0) - 618722416);
  v233 = (((2 * HIBYTE(v220)) ^ 0x8C) + 865523193 - ((2 * ((2 * HIBYTE(v220)) ^ 0x8C)) & 0x3F0)) ^ 0x3396D5F9;
  v234 = (BYTE2(v222) ^ 0x850A8B75) + *&v100[4 * (BYTE2(v222) ^ 0x8E)];
  v235 = *&v108[4 * (BYTE1(v212) ^ 0x3C)] ^ *&v109[4 * (v215 ^ 0x50)] ^ (v234 - ((2 * v234 + 299910224) & 0x40D680A4) - 379886982) ^ *(v103 + 4 * (HIBYTE(v220) ^ 0x99)) ^ (v233 - 2 * ((v233 + 32440592) & 0x147A32AF ^ v233 & 0xC) - 1771490381);
  v236 = (((2 * HIBYTE(v222)) ^ 0x122) - 1551227586 + (~(2 * ((2 * HIBYTE(v222)) ^ 0x122)) | 0xFFFFFD83) + 1) ^ 0xA38A253E;
  v237 = (BYTE2(v212) ^ 0x850A8BE8) + *&v100[4 * (BYTE2(v212) ^ 0x13)];
  v238 = *&v108[4 * (BYTE1(v215) ^ 0x23)] ^ *(v103 + 4 * (HIBYTE(v222) ^ 0x4E)) ^ (v237 - ((2 * v237 + 299910224) & 0x5ECB88E0) + 2018895512) ^ (v236 - ((2 * v236 + 64881184) & 0x39ED801A) - 1629109987) ^ *&v109[4 * (v220 ^ 0xA0)];
  v239 = HIBYTE(v229) ^ 0xAA;
  v240 = v239 + 1433021246 + ((2 * v239 + 544) & 0x45A ^ 0xFD29FFFF);
  v241 = 2 * (((v240 ^ 0x2D) & v239) - ((2 * ((v240 ^ 0x2D) & v239)) & 0x28));
  v242 = ((((v241 + 206222376) ^ 0xC4AB428) + 2016105096 - 2 * (((v241 + 206222376) ^ 0xC4AB428) & 0x782B528C ^ (v241 + 48) & 4)) ^ 0x782B5288) + (HIBYTE(v229) ^ 0xD37B2A87 ^ v240);
  v243 = (BYTE2(v232) ^ 0x850A8BC5) + *&v100[4 * (BYTE2(v232) ^ 0x3E)];
  v244 = *&v108[4 * (BYTE1(v235) ^ 0x4D)] ^ *(v103 + 4 * (HIBYTE(v229) ^ 0x75)) ^ *&v109[4 * (v238 ^ 0x61)] ^ (v243 - ((2 * v243 + 299910224) & 0x570C4568) - 193575716) ^ (v242 - ((2 * v242) & 0x12EC9E5E) + 158748463);
  v245 = (((2 * HIBYTE(v232)) ^ 0x20) - 1998024756 - ((v232 >> 22) & 0x398)) ^ 0x88E88FCC;
  v246 = (BYTE2(v235) ^ 0x850A8B2F) + *&v100[4 * (BYTE2(v235) ^ 0xD4)];
  v247 = *&v108[4 * (BYTE1(v238) ^ 0xB7)] ^ *&v109[4 * (v229 ^ 0x6F)] ^ *(v103 + 4 * (HIBYTE(v232) ^ 0xCF)) ^ (v245 - ((2 * v245 + 64881184) & 0x7600443E) - 51436754) ^ (v246 - ((2 * v246 + 299910224) & 0x1F572434) + 1486599234);
  v248 = (((2 * HIBYTE(v235)) ^ 0x28) + 1995198661 - ((v235 >> 22) & 0x188)) ^ 0x76EC50C5;
  v249 = (BYTE2(v238) ^ 0x850A8B59) + *&v100[4 * (BYTE2(v238) ^ 0xA2)];
  v250 = *&v108[4 * (BYTE1(v229) ^ 0x6F)] ^ *(v103 + 4 * (HIBYTE(v235) ^ 0xCB)) ^ *&v109[4 * (v232 ^ 0x5B)] ^ (v249 - ((2 * v249 - 1847573424) & 0xFB03331E) - 965624905) ^ (v248 - ((2 * v248 + 64881184) & 0x1A7EA20C) - 1892789738);
  v251 = (((2 * HIBYTE(v238)) ^ 0x52) - 1863137665 - ((2 * ((2 * HIBYTE(v238)) ^ 0x52)) & 0xFC)) ^ 0x90F2C67F;
  v252 = (BYTE2(v229) ^ 0x850A8B90) + *&v100[4 * (BYTE2(v229) ^ 0x6B)];
  v253 = *&v108[4 * (BYTE1(v232) ^ 0x45)] ^ *(v103 + 4 * (HIBYTE(v238) ^ 0xF6)) ^ *&v109[4 * (v235 ^ 0xE6)] ^ (v251 - ((2 * v251 + 64881184) & 0x30D97188) - 1705264684) ^ (v252 - ((2 * v252 - 1847573424) & 0x82678438) + 170124356);
  v254 = (((2 * HIBYTE(v244)) ^ 0x2A) - 1565423034 - 2 * (((2 * HIBYTE(v244)) ^ 0x2A) & 0x56 ^ (2 * HIBYTE(v244)) & 0x10)) ^ 0xA2B18A46;
  v255 = (BYTE2(v247) ^ 0x850A8B7B) + *&v100[4 * (BYTE2(v247) ^ 0x80)];
  v256 = 2 * HIBYTE(v247);
  v257 = ((v256 ^ 0x112) - 919778296 - ((v247 >> 22) & 0x10)) ^ 0xC92D4CAA;
  v258 = *&v108[4 * (BYTE1(v250) ^ 0xCA)] ^ *&v109[4 * (v253 ^ 0x9F)] ^ (v255 - ((2 * v255 - 1847573424) & 0x9CCBFF00) - 1755962968) ^ *(v103 + 4 * (HIBYTE(v244) ^ 0xCA)) ^ (v254 + 917004482 + ((2 * ((v254 + 32440592) & 0x34B95FBB ^ (v254 | 0x7FFFFFF5))) ^ 0x15));
  v259 = (v257 - 2 * ((v257 + 32440592) & 0x3A57D7DD ^ v256 & 4) - 1136207639) ^ *(v103 + 4 * (HIBYTE(v247) ^ 7));
  v260 = (BYTE2(v250) ^ 0x850A8BC3) + *&v100[4 * (BYTE2(v250) ^ 0x38)];
  v261 = v260 - ((2 * v260 + 299910224) & 0x50AD2534) - 247024446;
  v262 = (v261 ^ ((v261 ^ 0xD7A96D65) - ((2 * (v261 ^ 0xD7A96D65) + 2) & 0x4E776CD0) + 658224745) ^ 0xEA4A11E2 ^ ((v259 ^ 0xB44BBA07) - (v261 ^ 0x9C1D289D ^ v259) - ((2 * ((v259 ^ 0xB44BBA07) - (v261 ^ 0x9C1D289D ^ v259))) & 0xCA4E6A20) - 450415344)) + (v259 ^ 0xB44BBA07);
  v263 = HIBYTE(v250) ^ 0xF1;
  v264 = v263 - 1081621877 + ((2 * ((v263 + 272) & 0x17F ^ (v263 | 0x7FFFFFFA))) ^ 0x310000B);
  v265 = *&v109[4 * (v244 ^ 0x4F)] ^ *&v108[4 * (BYTE1(v253) ^ 0xC1)] ^ (v262 - ((2 * v262) & 0x630ADA1A) - 1316655859);
  v266 = (v264 ^ 0x3D98C17A | v263) - ((2 * (v264 ^ 0x3D98C17A | v263)) & 0x31128F2C);
  v267 = ((((2 * ((v266 + 411649942) ^ v264 ^ HIBYTE(v250))) ^ 0x4A230C3A) + 876566115 + ((2 * (((2 * ((v266 + 411649942) ^ v264 ^ HIBYTE(v250))) ^ 0x4A230C3A) & 0x343F566E ^ (2 * ((v266 + 411649942) ^ v264 ^ HIBYTE(v250))) & 0xC)) ^ 0xFFFFFFEF) + 1) ^ 0x343F5663) + (v264 ^ HIBYTE(v250) ^ 0x3D98C18B);
  v268 = (BYTE2(v253) ^ 0x850A8B7B) + *&v100[4 * (BYTE2(v253) ^ 0x80)];
  v269 = (((2 * HIBYTE(v253)) ^ 0x19E) + 829349544 - ((2 * ((2 * HIBYTE(v253)) ^ 0x19E)) & 0x150)) ^ 0x316EDEA8;
  v270 = *&v108[4 * (BYTE1(v244) ^ 0x19)] ^ *(v103 + 4 * (HIBYTE(v250) ^ 0x2E)) ^ *&v109[4 * (v247 ^ 0x48)] ^ (v268 - ((2 * v268 - 1847573424) & 0xD64FCA56) + 873989971) ^ (v267 - ((2 * v267) & 0x672CDE7C) + 865496894);
  v271 = (BYTE2(v244) ^ 0x850A8BBE) + *&v100[4 * (BYTE2(v244) ^ 0x45)];
  v272 = *&v108[4 * (BYTE1(v247) ^ 0x87)] ^ *(v103 + 4 * (HIBYTE(v253) ^ 0x10)) ^ *&v109[4 * (v250 ^ 0xA2)] ^ (v269 - 2 * ((v269 + 32440592) & 0x461A2EBF ^ v269 & 8) - 938922042) ^ (v271 - ((2 * v271 - 1847573424) & 0xCE5F86B2) + 807396737);
  v273 = *(&off_278E1E490 + a8 - 11668) - 8;
  v274 = *(&off_278E1E490 + (a8 ^ 0x2A29)) - 12;
  v275 = *(&off_278E1E490 + (a8 ^ 0x2E32)) - 12;
  HIDWORD(v276) = *&v275[4 * (v272 ^ 8)];
  LODWORD(v276) = HIDWORD(v276) ^ 0x9180C410;
  v277 = *&v273[4 * (BYTE2(v265) ^ 0x9E)] ^ *&v274[4 * (HIBYTE(v258) ^ 0x8F)] ^ ((BYTE2(v265) ^ 0xD1) - 1376371802 + ((2 * (((BYTE2(v265) ^ 0xD1) + 44) & 0x17B ^ (HIWORD(v265) | 0x7FFFFFFD))) ^ 0x1C048005)) ^ 0x13B2A883;
  v278 = *(&off_278E1E490 + a8 - 11453) - 12;
  v279 = *&v278[4 * (BYTE1(v270) ^ 0x81)];
  v280 = (v276 >> 3) - ((2 * (v276 >> 3)) & 0x1E30AEA6) - 1894230189;
  v336 = ((~(701070796 * (v279 ^ 0x5AB477DD)) | 0x4AFAE913) + 350535398 * (v279 ^ 0x5AB477DD) - 628978824) ^ v279 ^ v280 ^ (v280 >> 2) & 0xB128A44 ^ (v277 - ((2 * v277) & 0xBD1E8FD4) + 1586448362);
  v281 = *&v278[4 * (BYTE1(v272) ^ 0x57)];
  HIDWORD(v276) = *&v275[4 * (v258 ^ 0x86)];
  LODWORD(v276) = HIDWORD(v276) ^ 0x9180C410;
  v282 = *&v274[4 * (HIBYTE(v265) ^ 0xEB)] ^ v281 ^ *&v273[4 * (BYTE2(v270) ^ 0x58)] ^ (350535398 * (v281 ^ 0x5AB477DD) - ((701070796 * (v281 ^ 0x5AB477DD)) & 0x36BF34CC) - 1688233370);
  v283 = (v276 >> 3) - ((2 * (v276 >> 3)) & 0x97811B52) + 1270910377;
  v284 = v282 ^ v283 ^ (v283 >> 2) & 0xB128A44 ^ ((BYTE2(v270) ^ 0x17) - ((2 * (BYTE2(v270) ^ 0x17) + 94867544) & 0x5839352) - 1564626475);
  v285 = *&v273[4 * (BYTE2(v272) ^ 0x6B)] ^ ((BYTE2(v272) ^ 0x24) - 2072005939 + ((2 * (((BYTE2(v272) ^ 0x24) + 44) & 0xA2 ^ (HIWORD(v272) | 0x7FFFFFFD))) ^ 0x9079005)) ^ *&v274[4 * (HIBYTE(v270) ^ 0x80)];
  HIDWORD(v276) = *&v275[4 * (v265 ^ 0x58)];
  LODWORD(v276) = HIDWORD(v276) ^ 0x9180C410;
  v286 = (v276 >> 3) - ((2 * (v276 >> 3)) & 0x5756069E);
  v287 = *&v278[4 * (BYTE1(v258) ^ 0x9E)];
  v288 = (350535398 * (v287 ^ 0x5AB477DD) - ((701070796 * (v287 ^ 0x5AB477DD)) & 0xA1032788) + 1350669252) ^ v287;
  v289 = (v288 & 0x40 ^ 0x2D3DFDF6) + 2 * (v288 & 0x40);
  v87 = ((v285 ^ 0xF93B3140) & (v289 - 759037430)) - 51660916 - ((2 * ((v285 ^ 0xF93B3140) & (v289 - 759037430))) & 0xF9D76E80) == -51660916;
  v290 = v289 - 67991636;
  v291 = 1450083224 - v289;
  if (v87)
  {
    v291 = v290;
  }

  v292 = ((v286 + 732627791) >> 2) & 0xB128A44 ^ (v286 + 732627791) ^ v288 & 0xFFFFFFBF ^ ((v285 ^ 0xF93B315A) - 691045794 + v291 - ((2 * ((v285 ^ 0xF93B315A) - 691045794 + v291)) & 0x7B2835AC) - 1114367274);
  v293 = *&v274[4 * (HIBYTE(v272) ^ 0x62)];
  v294 = *&v273[4 * (BYTE2(v258) ^ 0x98)];
  v295 = *&v278[4 * (BYTE1(v265) ^ 3)];
  v296 = v294 ^ v293 ^ ((BYTE2(v258) ^ 0xD7) - ((2 * (BYTE2(v258) ^ 0xD7) + 88) & 0x226) + 296765759) ^ v295;
  v297 = ((350535398 * (v295 ^ 0x5AB477DD)) ^ 0xCFF7FFBF) + ((701070796 * (v295 ^ 0x5AB477DD)) & 0x9FEFFF7C);
  v298 = (2 * (v296 & 0x400)) ^ 0x800 | v296 & 0x400;
  v299 = v298 | 0x4235A077;
  HIDWORD(v300) = *&v275[4 * (v270 ^ 0xC5)];
  LODWORD(v300) = HIDWORD(v300) ^ 0x9180C410;
  v301 = (v300 >> 3) - ((2 * (v300 >> 3)) & 0xBDEFB4EE) + 1593301623;
  v302 = ((v298 - 1024) & (v297 + 805830721)) + 965136754 - ((2 * ((v298 - 1024) & (v297 + 805830721))) & 0x730DA2A4);
  v303 = v296 & 0xFFFFFBFF;
  v304 = 1110812791 - v298;
  if (v302 == 965136754)
  {
    v304 = v299;
  }

  v305 = v301 ^ v303 ^ (v301 >> 2) & 0xB128A44 ^ 0xF18F2AFD ^ (v304 + v297 - ((2 * (v304 + v297) - 609962092) & 0xC6AD36EE) + 1361639233);
  v306 = *(&off_278E1E490 + (a8 ^ 0x2FD3)) - 8;
  v307 = v306[BYTE2(v284) ^ 0x42] - ((2 * v306[BYTE2(v284) ^ 0x42] + 58) & 0x83) - 34;
  *(a11 + (v41 & 0xFFFFFFFA ^ 0x5EE9DAD)) = v307 ^ (-((32 * v307) ^ 0x20) - 9) ^ (((4 * v307) ^ 4) - ((2 * ((4 * v307) ^ 4)) & 0xA8) - 42) ^ 0xA;
  v308 = v306[BYTE2(v292) ^ 0xAALL];
  v309 = v308 - ((2 * v308 + 58) & 0x32);
  v310 = v309 - 74;
  v311 = (((4 * v310) ^ 0x64) - 32 * (((4 * v310) ^ 0x64u) >> 4) - 16) ^ (((32 * (v309 - 74)) ^ 0x20) + (((v309 << 6) - 4480) | 0x43));
  v312 = v311 ^ 0xB3;
  v313 = (v311 ^ 0xB3) - (v310 ^ 0x2A ^ v311) + (~(2 * ((v311 ^ 0xB3) - (v310 ^ 0x2A ^ v311))) | 7);
  v314 = v305 - ((2 * v305) & 0xC6B9A45E) + 1667027503;
  LOBYTE(v305) = ((90 - v308 - ((-58 - 2 * v308) & 0xEF)) ^ v310 ^ 0x12 ^ (v313 - 3)) + v312;
  *(a11 + a19) = (v305 - ((2 * v305) & 0xF0) + 120) ^ 0x70;
  v315 = *(&off_278E1E490 + a8 - 10223) - 8;
  HIDWORD(v316) = v315[HIBYTE(v336) ^ 0xF1];
  LODWORD(v316) = (HIDWORD(v316) ^ 0xFFFFFF83) << 24;
  *(a11 + a20) = ((v316 >> 25) - ((2 * (v316 >> 25)) & 0x72) - 71) ^ 0x41;
  v317 = BYTE1(v336);
  HIDWORD(v316) = v315[(v314 >> 24) ^ 0x39];
  LODWORD(v316) = (HIDWORD(v316) ^ 0xFFFFFF83) << 24;
  *(a11 + a21) = ((v316 >> 25) + (~(2 * (v316 >> 25)) | 0x53) + 87) ^ 0xEF;
  v318 = *(&off_278E1E490 + a8 - 11919) - 4;
  v319 = (v317 ^ 0x96) - (v317 ^ 0xA3) - ((2 * ((v317 ^ 0x96) - (v317 ^ 0xA3))) & 0xAE4F8DC4) - 685259038;
  v320 = (2 * (((v319 ^ 0x1C) & (v317 ^ 0x96)) - ((2 * ((v319 ^ 0x1C) & (v317 ^ 0x96))) & 0x168)) + 162775400) ^ 0x9B3C168;
  v321 = (2 * v320) & 0xDA595B8;
  LOBYTE(v310) = (v318[BYTE1(v314)] ^ ((~v318[BYTE1(v314)] << 7) | 0x78) ^ 0xB2 ^ (((8 * v318[BYTE1(v314)]) ^ 0x98) - ((2 * ((8 * v318[BYTE1(v314)]) ^ 0x98)) & 0xBF) - 34)) + (BYTE4(v334) ^ 0xBA);
  v322 = ((v320 + 1188219612 - v321) ^ 0x46D2CADC) + (BYTE1(v336) ^ 0x28D8398A ^ v319);
  *(a11 + a24) = (v310 ^ 0x5A) - (BYTE4(v334) ^ 0xBA) + ((2 * v310) & 0xB4) - 90;
  v323 = v318[(v322 + 1367826335 - ((2 * v322) & 0xA30EBFE2) + 82) ^ 0x51875F9F];
  v324 = ((v336 >> 9) & 0x80 | (v336 >> 17) & 0x7F) ^ 0x65;
  v325 = ((2 * v324) & 0x8C) - v324;
  *(a11 + a30) = v323 ^ ((~v323 << 7) | 0x7B) ^ (((8 * v323) ^ 0x98) - ((16 * v323) & 0xC0) + 97) ^ 0xC1;
  HIDWORD(v316) = (v325 + 57) ^ 0x35;
  LODWORD(v316) = (-58 - v325) << 24;
  v326 = v306[((v316 >> 31) - ((2 * (v316 >> 31)) & 0x4E) + 39) ^ 0x33];
  v337 = v284;
  v327 = v326 - 51;
  v328 = v326 - 51 - ((2 * v326 + 58) & 0x54) - 6;
  *(a11 + HIDWORD(v335)) = v328 ^ (((4 * v328) ^ 0xA8) - 8 * (v327 & 1) + 5) ^ (((32 * v328) ^ 0x40) + (~(2 * ((32 * v328) ^ 0x40)) | 0x7F) - 59) ^ 0x87;
  v329 = *(&off_278E1E490 + (a8 ^ 0x2F9A)) - 12;
  *(a11 + a27) = v329[v336 ^ 0x58] ^ ((v336 ^ 0x9A) + ((-8 - 2 * (v336 ^ 0x9A)) | 0x2F) + 108) ^ 0x5B;
  *(a11 + a25) = v329[v292 ^ 0x41] ^ ((v292 ^ 0x83) - ((2 * (v292 ^ 0x83) + 6) & 0xC3) + 100) ^ 0xD8;
  HIDWORD(v316) = v315[HIBYTE(v337) ^ 0xBLL];
  LODWORD(v316) = (HIDWORD(v316) ^ 0xFFFFFF83) << 24;
  *(a11 + a31) = ((v316 >> 25) - ((2 * (v316 >> 25)) & 0x8F) + 71) ^ 0x1E;
  v330 = (2 * v314 + 6) & 0x1C;
  *(a11 + a22) = v329[v314 ^ 0xC2] ^ (v314 - v330 + 17) ^ 0x8E;
  *(a11 + a29) = v329[v337 ^ 0xCFLL] ^ ((v337 ^ 0xD) - ((2 * (v337 ^ 0xD) + 6) & 0xC) + 9) ^ 0xD1;
  v331 = v306[BYTE2(v314) ^ 0x7DLL] - ((2 * v306[BYTE2(v314) ^ 0x7DLL] + 2) & 6) + 32;
  *(a11 + a32) = (((32 * v331) ^ 0x77) - 5) ^ v331 ^ (((2 * ((4 * v331) ^ 0xC)) & 0x8F) - ((4 * v331) ^ 0xC) + 56);
  v332 = v318[BYTE1(v337) ^ 0xE6];
  *(a11 + a33) = v332 & 0x71 ^ ((~v332 << 7) | 0x76) ^ ((v332 & 0x8E ^ 0xF3) + 80) ^ 0x8B ^ (((8 * v332) ^ 0x98) - ((2 * ((8 * v332) ^ 0x98)) & 0xB0) + 92);
  HIDWORD(v316) = v315[HIBYTE(v292) ^ 0x33];
  LODWORD(v316) = (HIDWORD(v316) ^ 0xFFFFFF83) << 24;
  *(a11 + v335) = ((v316 >> 25) - ((2 * (v316 >> 25)) & 0xF3) - 7) ^ 0xEF;
  *(a11 + a26) = v318[BYTE1(v292) ^ 0x38] ^ ((~v318[BYTE1(v292) ^ 0x38] << 7) - 45) ^ (-((8 * v318[BYTE1(v292) ^ 0x38]) ^ 0x98) - 5) ^ 0x81;
  return (*(a36 + 8 * ((5797 * (((a20 + 99524008 - ((2 * a20 + 32) & 0xBDD3B50) + 16) ^ 0x5EE9DA0u) < 0x20)) ^ a8)))(v330, 4294967192, v336, a36, v321, a11, a20, v41, a9, a10, a11, a12, a13, a14, a15, v334, a17, v41 | 0x7FFFFFFD00000000, a19, a20, a21, a22, a23, a24, a25, a26, a27, v335, a29, a30, a31, a32, a33);
}

uint64_t sub_244788BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v59 = LOBYTE(STACK[0x546]);
  v60 = STACK[0x538];
  *v60 = *(a9 + ((v59 >> 2) ^ 0xC)) - 122;
  v60[1] = *(a9 + (((v59 ^ 1) << (((v58 + 103) & 0xFEu) - 58)) & 0x30 | (v57 >> (((v58 + 23) & 0xBD) + 87)) ^ 3u)) - 122;
  v60[2] = *(a9 + 4 * ((v57 ^ 1) & 0xF)) - 122;
  v60 += 2;
  STACK[0x548] = v60;
  STACK[0x550] = (v60 + 2);
  v60[1] = 61;
  STACK[0x338] = (v60 + 2);
  return (*(a4 + 8 * ((31865 * LOBYTE(STACK[0x547])) ^ (v58 - 523793451))))(a1, a2, a3);
}

uint64_t sub_244788CC8@<X0>(uint64_t a1@<X3>, char a2@<W8>)
{
  *STACK[0x548] = a2;
  STACK[0x338] = STACK[0x550];
  return (*(a1 + 8 * v2))();
}

uint64_t sub_244788CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(STACK[0x520] + ((STACK[0x338] - STACK[0x520]) & ((v35 + 16799) + 4294948130))) = 0;
  v36 = (*(a4 + 8 * (v35 + 20610)))();
  return (*(a35 + 8 * v35))(v36);
}

uint64_t sub_244788D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  HIDWORD(a47) = 237377513;
  v50 = (*(a4 + 8 * (v48 + 3816)))(16, a2, a3);
  STACK[0x558] = v50;
  STACK[0x248] = v50 + v49;
  LODWORD(STACK[0x39C]) = 1216081107;
  return (*(a35 + 8 * (((v50 == 0) * ((v48 - 10703) ^ v48 ^ 0x7306 ^ 0x18EE)) ^ v48)))(v50, v51, 3771163265, a35, 1216081105, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, 0x44046241CC2D2A4ELL, 0, a47, a48);
}

uint64_t sub_244788DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = STACK[0x558];
  *v6 = v5;
  v6[1] = v5;
  return (*(a4 + 8 * v4))(a1, a2, a3);
}

uint64_t sub_244788E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  STACK[0x560] = v14;
  v16 = v14 - 0x55A793A404D27CFFLL > 0x19CD1B33 && v14 - 0x55A793A404D27CFFLL < (a13 + v13 - 523787692 - 1623940209) + 432872244;
  return (*(a4 + 8 * ((21 * v16) ^ (v13 - 523790072))))(a1, a2, a3);
}

uint64_t sub_244788EC0@<X0>(uint64_t a1@<X3>, int a2@<W4>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (a3 - 15072) | 0x20;
  v9 = (a8 | ((a8 < 0x60CB1345) << 32)) + 0x5822C37B634BA603 + (v8 ^ 0xE36u);
  STACK[0x568] = v9;
  LODWORD(v9) = v9 - STACK[0x560] - 0x27B2FD7A5772179 < (v8 - 3231) - 471;
  LODWORD(STACK[0x398]) = a2 + 5;
  return (*(a1 + 8 * ((163 * v9) ^ v8)))();
}

uint64_t sub_244788F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v26 = STACK[0x560];
  v27 = ((v25 + 528021005) & 0xFFBFAEFD ^ 0xC2ABC6D333748A02) + STACK[0x560];
  STACK[0x570] = STACK[0x560] + 10;
  v28 = STACK[0x568] - 0x5822C37B75D23880;
  STACK[0x578] = v28;
  LOBYTE(STACK[0x587]) = v28 < 0x4E448122;
  v29 = a14 + ((2 * (v26 - 0x55A793A41E9F982FLL)) & 0x67F1E79DE7B5FEBELL) + ((v26 - 0x55A793A41E9F982FLL) ^ 0xF3F8F3CEF3DAFF5FLL) + 0xC070C310C2500A1;
  STACK[0x588] = v29;
  STACK[0x590] = v29 + 1;
  STACK[0x598] = ((v26 - 0x55A793A41E9F982DLL) ^ 0x3957DBF7CFFBCF3FLL) - 0x2104818085100A32 + ((2 * (v26 - 0x55A793A41E9F982DLL)) & 0x72AFB7EF9FF79E7ELL);
  v30 = *(a4 + 8 * (v25 ^ 0x2A44));
  return v30(v29 + 1, LODWORD(STACK[0x34C]), v27, v30, a5, 4294949347, 6361, LODWORD(STACK[0x344]), a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_2447891C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v20 = (a14 + a3 - 0x18535A774AEBC50DLL);
  v21 = (((*v20 - ((2 * *v20) & 0x72)) << 24) - 1191182336) ^ 0xB9000000;
  v22 = (((v20[1] - ((2 * v20[1]) & 0xDDDD)) << 16) + 1122893824) ^ 0x42EE0000;
  v23 = (v22 + 463407057 - ((2 * v22) & 0x373E0000)) ^ 0x1B9F07D1 | (v21 - 891795044 - ((2 * v21) & 0x94000000)) ^ 0xCAD8499C;
  v24 = (v16 + ((v20[2] - ((2 * v20[2]) & 0x16E)) << 8)) ^ v16;
  v25 = (v23 + 1359470885 - ((2 * v23) & 0xA20FC24A)) ^ 0x5107E125 | (v24 + 121000587 + (~(2 * v24) | 0xF1935BFF) + 1) ^ 0x736528B;
  LODWORD(v20) = (v25 - 1662291071 - (v17 & (2 * v25))) ^ 0x9CEB7381 | (v20[3] + 37327398 - (v18 & (2 * v20[3]))) ^ 0x2399226;
  return (*(v15 + 8 * v14))(a1, a2, v19 & (2 * v20), v20 + 237377513 - (v19 & (2 * v20)));
}

uint64_t sub_244789324(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35)
{
  v40 = (a4 ^ v39) + v35 - 0x55A793A3D05B1711;
  v41 = v40 < 0x4E448122;
  v42 = v40 > v36;
  if (v37 != v41)
  {
    v42 = v41;
  }

  return (*(v38 + 8 * (((923 * (a35 ^ 0x1F38A6DC) - 3474) * v42) ^ (a35 - 523801468))))(a1, a2);
}

uint64_t sub_2447895B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a6@<X7>, unint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  LOWORD(STACK[0x8F4]) = v41;
  STACK[0x5A0] = v42;
  STACK[0x2A0] = a7;
  LODWORD(STACK[0x344]) = a6;
  LOWORD(STACK[0x34A]) = v40;
  LODWORD(STACK[0x34C]) = a2;
  LODWORD(STACK[0x29C]) = v39;
  LOWORD(STACK[0x29A]) = v41;
  LODWORD(STACK[0x294]) = v38;
  LODWORD(STACK[0x350]) = v39;
  LOWORD(STACK[0x356]) = v41;
  return (*(v43 + 8 * (HIDWORD(a33) - 523805082)))(a1);
}

uint64_t sub_24478968C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, uint64_t a6@<X7>, unint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  LOWORD(STACK[0x8F4]) = v31;
  STACK[0x5A0] = a7;
  STACK[0x2A0] = a7;
  LODWORD(STACK[0x344]) = a6;
  LOWORD(STACK[0x34A]) = v29;
  LODWORD(STACK[0x34C]) = a2;
  LODWORD(STACK[0x29C]) = a3;
  LOWORD(STACK[0x29A]) = -13593;
  LODWORD(STACK[0x294]) = v28;
  return (*(v32 + 8 * ((10555 * (a3 == v33 + ((v30 - 3602) ^ 0xF67) - 3909)) ^ v30)))(a1);
}

uint64_t sub_244789740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  STACK[0x358] = STACK[0x248];
  LOWORD(STACK[0x362]) = a9;
  LODWORD(STACK[0x364]) = 237377505;
  return (*(a4 + 8 * v49))(a1, a2, a3);
}

uint64_t sub_244789840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, uint64_t a6@<X7>, unint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  LOWORD(STACK[0x8F4]) = v41;
  STACK[0x5A0] = a7;
  STACK[0x2A0] = a7;
  LODWORD(STACK[0x344]) = a6;
  LOWORD(STACK[0x34A]) = v38;
  LODWORD(STACK[0x34C]) = a2;
  LODWORD(STACK[0x29C]) = a3;
  LOWORD(STACK[0x29A]) = v40;
  LODWORD(STACK[0x294]) = v37;
  LODWORD(STACK[0x350]) = a3;
  LOWORD(STACK[0x356]) = v40;
  return (*(v42 + 8 * v39))(a1);
}

uint64_t sub_2447898D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v49 = STACK[0x356];
  v50 = STACK[0x350];
  v52 = HIDWORD(a37) == 237377513 && (((v48 - 2365) | 0x1E5) + 5844) == LOWORD(STACK[0x356]);
  v53 = STACK[0x248];
  STACK[0x358] = STACK[0x248];
  LOWORD(STACK[0x362]) = v49;
  LODWORD(STACK[0x364]) = v50;
  STACK[0x390] = v53;
  return (*(a4 + 8 * ((v52 * ((v48 - 8460101) & 0x1FB9AEDF ^ 0x1F388A66)) ^ v48)))(a1, a2, a3);
}

uint64_t sub_244789994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, unint64_t a45, unint64_t a46, int a47, int a48)
{
  v50 = STACK[0x364];
  LODWORD(STACK[0x5AC]) = STACK[0x364];
  LOWORD(STACK[0x5B2]) = STACK[0x362];
  v51 = STACK[0x358];
  STACK[0x280] = STACK[0x358];
  LODWORD(STACK[0x5B4]) = a48;
  STACK[0x5B8] = a45;
  STACK[0x5C0] = a46;
  v52 = v50 ^ 0xE2617E8;
  v54 = v51 != v49 && v52 < 0xFFFFFFF6;
  LODWORD(STACK[0x38C]) = a5;
  return (*(a4 + 8 * ((v54 * ((((v48 + 370154163) | 0x9288440) - 523786007) ^ 0x4FDF)) ^ v48)))(a1, a2, a3);
}

uint64_t sub_244789A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v37 = (*(a4 + 8 * (v35 ^ 0x1604)))(32, a2, a3);
  STACK[0x5C8] = v37;
  STACK[0x258] = v37 + v36;
  LODWORD(STACK[0x388]) = 1216081107;
  return (*(a35 + 8 * (((v37 == 0) * ((v35 + 523786013) ^ v35 ^ 0x1F38E919)) | v35)))();
}

uint64_t sub_244789AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v38 = STACK[0x5C8];
  *v38 = v37;
  *(v38 + 8) = v37;
  v39 = LODWORD(STACK[0x5AC]) ^ 0xE2617E9;
  LODWORD(STACK[0x5D4]) = v39;
  v40 = ((v39 + 10) ^ 0x2AEB5D5E) - 545280292 + ((((v35 - 1623488504) & 0x7FFCEFF8) + 916329444) & (2 * (v39 + 10))) + 3042;
  *(v38 + 16) = v40;
  v41 = (*(a4 + 8 * (v35 ^ 0x7712)))(v40 + ((v35 - 11428) ^ 0xF594E5D7), a2, a3);
  *(v38 + 24) = v41;
  STACK[0x5D8] = v38 + 24;
  LODWORD(STACK[0x388]) = v36;
  return (*(a35 + 8 * (v35 | (8 * (v41 == 0)))))();
}

uint64_t sub_244789B94(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  LOBYTE(STACK[0x5E5]) = LODWORD(STACK[0x5AC]) == 237377517;
  v25 = LOWORD(STACK[0x5B2]);
  LOBYTE(STACK[0x5E6]) = v25 >> ((v24 - a3 + 38) ^ 0xD0);
  LOBYTE(STACK[0x5E7]) = v25;
  STACK[0x4E8] = 0x60F92125641679AALL;
  v26 = *(a4 + 8 * (v24 + 885));
  return v26(v26, a2, SLOWORD(STACK[0x5B2]), a4, 0x7653FFD844AF1481, a6, 0x8DBE49DF8B3EC60ALL, 0x68B873F8FCD75EC8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_244789D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a7@<X7>, unint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  LOWORD(STACK[0x8F4]) = v31;
  STACK[0x5A0] = a8;
  STACK[0x2A0] = a8;
  LODWORD(STACK[0x344]) = a7;
  LOWORD(STACK[0x34A]) = v30;
  LODWORD(STACK[0x34C]) = a2;
  LODWORD(STACK[0x29C]) = a4;
  LOWORD(STACK[0x29A]) = v31;
  LODWORD(STACK[0x294]) = v29;
  return (*(v32 + 8 * a3))(a1);
}

uint64_t sub_244789D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, int a32, char a33)
{
  v39 = v36 - 523804031;
  v40 = *v37;
  v41 = *v37 + 4;
  v42 = __ROR8__(v41 & 0xFFFFFFFFFFFFFFF8, 8);
  v43 = (v36 - 523804976);
  v44 = ((v33 + 2 * v42) & 0xB543C47627A6A004) - v42 + 0x17B21D9D30DBC47FLL;
  v45 = v44 ^ 0x1390CC6238956D6FLL;
  v44 ^= 0x5EF0CD5FE212369BuLL;
  v46 = v43 ^ (a7 - 616) ^ (__ROR8__(v45, 8) + v44);
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ v35;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (((2 * (v50 + v49)) & 0x3EC3AD2A46AC9354) - (v50 + v49) + 0x609E296ADCA9B655) ^ 0x7789FDC1627A7622;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ a2;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ v38;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ v34;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = __ROR8__(v57, 8);
  *(v40 + 4) = a33 ^ (((v59 + v58 - ((2 * (v59 + v58)) & 0x9FF91FBD96B0FA88) - 0x3003702134A782BCLL) ^ 0xA744FC26378F238CLL) >> (8 * (v41 & 7u)));
  v60 = __ROR8__((v40 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v61 = v60 - ((v33 + 2 * v60) & 0x53F10677A11C3C64) + 0x37A483638BDF09B0;
  v62 = v61 ^ 0x1F36529D0437DCA0;
  v61 ^= 0x525653A0DEB08754uLL;
  v63 = (__ROR8__(v62, 8) + v61) ^ a7;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ v35;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = __ROR8__(v65, 8);
  v68 = (v67 + v66 - ((2 * (v67 + v66)) & 0xD9CB08B4ECE0576CLL) + 0x6CE5845A76702BB6) ^ 0x7BF250F1C8A3EBC1;
  v69 = v68 ^ __ROR8__(v66, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ a2;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = __ROR8__(v70, 8);
  v73 = (((2 * (v72 + v71)) & 0xD648B671C1CE70FALL) - (v72 + v71) + 0x14DBA4C71F18C782) ^ 0x244303D027A320A1;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ v34;
  *(v40 + 5) = a31 ^ (((__ROR8__(v75, 8) + (v75 ^ __ROR8__(v74, 61))) ^ a8) >> (8 * ((v40 + 5) & 7)));
  STACK[0x368] = 0x60F92125641679B0;
  return (*(a4 + 8 * ((v39 - 1847) ^ 0xE4F)))();
}

uint64_t sub_24478A0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v23 = *v21 + STACK[0x4E8] - 0x60F92125641679AALL;
  v24 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = ((v10 + 2 * v24) & 0x52654FF3073825D0) - v24 - 0x36DEA8213EECFE67;
  v26 = __ROR8__(v25 ^ 0xE00389A0A8DA2F85, 8);
  v25 ^= 0xAD63889D725D7471;
  v27 = (((2 * (v26 + v25)) & 0x6AB7D0CE24EE43E8) - (v26 + v25) - 0x355BE867127721F5) ^ 0x471A5E4766B61801;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (((2 * (v29 + v28)) & 0xE674F2A747EA81D8) - (v29 + v28) + 0xCC586AC5C0ABF13) ^ 0x4DEDDAF47191399ALL;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v17;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (((2 * (v34 + v33)) & 0x652AFBEC07153E02) - (v34 + v33) - 0x32957DF6038A9F02) ^ 0x21E20EB6234EB32ELL;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ v22;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (v9 - ((v39 + v38) | v9) + ((v39 + v38) | 0x1E5940AE4771D176)) ^ 0x4E71FBCDA0D3A4F6;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = __ROR8__(v40, 8);
  LOBYTE(v41) = (((((v42 + v41) & v12 ^ 0x372A12000080EE21) + ((v42 + v41) ^ 0x885028F6F338005ELL) - (((v42 + v41) ^ 0x885028F6F338005ELL) & v12)) ^ 0xDF82493E1D77B0BDLL) >> (8 * ((*v21 + LOBYTE(STACK[0x4E8]) + 86) & 7u))) ^ HIBYTE(v8);
  v43 = __ROR8__((v23 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v44 = ((a5 - v43) & 0x968887040D1C5000) + v43 - 0x7653FFD844AF1482 - ((v43 - 0x7653FFD844AF1482) & 0x928887040D1C5000);
  v45 = __ROR8__(v44 ^ 0x244656A2D9A59292, 8);
  v46 = *(a4 + 8 * v18);
  *v23 = v41 ^ 0xE;
  v47 = v44 ^ 0x6926579F0322C966;
  v48 = (v14 - ((v45 + (v44 ^ 0x6926579F0322C966)) | v14) + ((v45 + (v44 ^ 0x6926579F0322C966)) | 0xF0E418D3F39C0B0DLL)) ^ 0x7D5A510C78A2CD07;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ v16;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ v17;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = __ROR8__(v52, 8);
  v55 = (((2 * (v54 + v53)) | 0x1FB1BCB025A9A32) - (v54 + v53) - 0xFD8DE5812D4D19) ^ 0xEC75015A5E169EC9;
  v56 = v55 ^ __ROR8__(v53, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ v22;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ v15;
  v60 = __ROR8__((v23 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  *(v23 + 1) = (((__ROR8__(v59, 8) + (v59 ^ __ROR8__(v58, 61))) ^ a8) >> (8 * ((v23 + 1) & 7))) ^ BYTE2(v8) ^ 0x26;
  v61 = (v60 - 0x7653FFD844AF1482) ^ 0xFFAED09B0E3E9966;
  v62 = (__ROR8__((v60 - 0x7653FFD844AF1482) ^ 0xB2CED1A6D4B9C292, 8) + v61) ^ a7;
  v63 = v62 ^ __ROR8__(v61, 61);
  v64 = __ROR8__(v62, 8);
  v65 = (((2 * ((v64 + v63) ^ 0x13AC9FC9158C886CLL)) | 0x26C2470D59C93E66) - ((v64 + v63) ^ 0x13AC9FC9158C886CLL) - 0x13612386ACE49F33) ^ 0x41E5E01794F391D6;
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ v17;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ 0xEC888CBFDF3BD3D0;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = __ROR8__(v69, 8);
  v72 = (v11 - ((v71 + v70) | v11) + ((v71 + v70) | 0x756319745B15AE33)) ^ 0x45FBBE6363AE4910;
  v73 = v72 ^ __ROR8__(v70, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ v15;
  v75 = __ROR8__((v23 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  *(v23 + 2) = (((__ROR8__(v74, 8) + (v74 ^ __ROR8__(v73, 61))) ^ a8) >> (8 * ((v23 + 2) & 7))) ^ BYTE1(v8) ^ 0x17;
  v76 = (v75 - 0x7653FFD844AF1482) ^ 0xFFAED09B0E3E9966;
  v77 = (__ROR8__((v75 - 0x7653FFD844AF1482) ^ 0xB2CED1A6D4B9C292, 8) + v76) ^ a7;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ v16;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ v17;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = __ROR8__(v81, 8);
  v84 = (v13 - ((v83 + v82) | v13) + ((v83 + v82) | 0xDF5A02CB45FE5A29)) ^ v19;
  v85 = v84 ^ __ROR8__(v82, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ 0x3098A71738BBE723;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = (__ROR8__(v86, 8) + v87) ^ v15;
  *(v23 + 3) = v8 ^ v20 ^ (((__ROR8__(v88, 8) + (v88 ^ __ROR8__(v87, 61))) ^ a8) >> (8 * ((v23 + 3) & 7)));
  return v46();
}

uint64_t sub_24478A8B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, int a4@<W4>, int a5@<W8>)
{
  v5 = LODWORD(STACK[0x5AC]) == 237377505;
  LODWORD(STACK[0x388]) = a4 + 5;
  return (*(a3 + 8 * (((a5 - 523796123 + ((a5 - 549875431) & 0x3FFEE6DF) + 3407) * v5) ^ a5)))(a1, a2, 3771163265);
}

uint64_t sub_24478A95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(STACK[0x258] - 0x750C1ABFB0567FC3);
  v11 = STACK[0x5B8];
  v12 = __ROR8__((v10 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v13 = ((((v7 + 335585831) | 0xB380288u) - v12 + 0x1653FFD825766DA9) & 0x130468B0ADC0E86ELL) + v12 - 0x7653FFD844AF1482 - ((v12 - 0x7653FFD844AF1482) & 0x130468B0ADC0E86ELL);
  v14 = v13 ^ 0xA1CAB91679792AFCLL;
  v13 ^= 0xECAAB82BA3FE7108;
  v15 = __ROR8__(v14, 8);
  v16 = (((2 * (v15 + v13)) & 0x8FCBB528808EB37CLL) - (v15 + v13) + 0x381A256BBFB8A641) ^ 0xB5A46CB43486604BLL;
  v17 = v16 ^ __ROR8__(v13, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (v18 + v17 - ((2 * (v18 + v17)) & 0x54FF189EF0F80B50) + 0x2A7F8C4F787C05A8) ^ 0x6B57D01755E78321;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x1717D4ABBED3C077;
  v22 = __ROR8__(v21, 8);
  v23 = v21 ^ __ROR8__(v20, 61);
  v24 = (((2 * (v22 + v23)) & 0x15C8C1EBA79D52F6) - (v22 + v23) + 0x751B9F0A2C315684) ^ 0x999313B5F30A8554;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (v26 + v25 - ((2 * (v26 + v25)) & 0x596CDF2F575C1AE0) - 0x534990685451F290) ^ 0x9C2EC8809315EA53;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0x5028BB63E7A27580;
  v10[10] = (((__ROR8__(v29, 8) + (v29 ^ __ROR8__(v28, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v10 + 10) & 7u))) ^ HIBYTE(STACK[0x5B8]) ^ 0x44;
  v30 = __ROR8__((v10 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v31 = ((v8 - v30) & 0x70831D5BAED8CA38) + v30 - 0x7653FFD844AF1482 - ((v30 - 0x7653FFD844AF1482) & 0x70831D5BAED8CA38);
  v32 = v31 ^ 0xC24DCCFD7A6108AALL;
  v31 ^= 0x8F2DCDC0A0E6535ELL;
  v33 = __ROR8__(v32, 8);
  v34 = (((2 * (v33 + v31)) & 0x6E525F98C78DC348) - (v33 + v31) - 0x37292FCC63C6E1A5) ^ 0x456899EC1707D851;
  v35 = v34 ^ __ROR8__(v31, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (v36 + v35 - ((2 * (v36 + v35)) & 0xC56FF7F50AB548DALL) - 0x1D4804057AA55B93) ^ 0xA39FA7A2A8C122E4;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x1717D4ABBED3C077;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ a2;
  v42 = __ROR8__(v41, 8);
  v43 = v41 ^ __ROR8__(v40, 61);
  v44 = (((2 * (v42 + v43)) | 0x7A6D1720E44E8DA0) - (v42 + v43) + 0x42C9746F8DD8B930) ^ 0x8DAE2C874A9CA1F3;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (((2 * (v46 + v45)) & 0xB9A93452FE95BBA4) - (v46 + v45) - 0x5CD49A297F4ADDD3) ^ 0xF303DEB5671757ADLL;
  v10[11] = (((__ROR8__(v47, 8) + (v47 ^ __ROR8__(v45, 61))) ^ 0x68B873F8FCD75EC8) >> (8 * ((v10 + 11) & 7u))) ^ LOWORD(STACK[0x5BE]) ^ 4;
  v48 = __ROR8__((v10 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v49 = ((2 * (v48 - 0x7653FFD844AF1482)) | 0x45442B74ECC86264) - (v48 - 0x7653FFD844AF1482) - 0x22A215BA76643132;
  v50 = v49 ^ 0x906CC41CA2DDF3A0;
  v49 ^= 0xDD0CC521785AA854;
  v51 = (__ROR8__(v50, 8) + v49) ^ a7;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (v53 + v52 - ((2 * (v53 + v52)) & 0x621F3207827676ACLL) + 0x310F9903C13B3B56) ^ 0x7027C55BECA0BDDFLL;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = __ROR8__(v54, 8);
  v57 = __ROR8__((((v56 + v55) & 0xF2F70C921EAF6767 ^ 0x129204900E202063) + ((v56 + v55) & 0xD08F36DE1509898 ^ 0x8536880509889) - 1) ^ 0x58D835330A3789CLL, 8);
  v58 = (((v56 + v55) & 0xF2F70C921EAF6767 ^ 0x129204900E202063) + ((v56 + v55) & 0xD08F36DE1509898 ^ 0x8536880509889) - 1) ^ 0x58D835330A3789CLL ^ __ROR8__(v55, 61);
  v59 = (((v57 + v58) | 0x79E82E87A79FB37) - ((v57 + v58) | 0xF8617D17858604C8) - 0x79E82E87A79FB38) ^ 0xEB160E57A54228E7;
  v60 = __ROR8__(v59, 8);
  v61 = v59 ^ __ROR8__(v58, 61);
  v62 = (((2 * (v60 + v61)) | 0x595BEEF0A4B15B5ELL) - (v60 + v61) + 0x53520887ADA75251) ^ 0x9C35506F6AE34A8CLL;
  v63 = v62 ^ __ROR8__(v61, 61);
  v64 = __ROR8__(v62, 8);
  v65 = (((2 * (v64 + v63)) | 0x6A5ED517B9BA5572) - (v64 + v63) - 0x352F6A8BDCDD2AB9) ^ 0x6507D1E83B7F5F39;
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = __ROR8__(v65, 8);
  v10[12] = (((((v67 + v66) | 0x5FAF6B1693D6825ALL) - ((v67 + v66) | 0xA05094E96C297DA5) - 0x5FAF6B1693D6825BLL) ^ 0x371718EE6F01DC92) >> (8 * ((v10 + 12) & 7u))) ^ BYTE5(v11) ^ 0x62;
  v68 = __ROR8__((v10 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v69 = ((2 * (v68 - 0x7653FFD844AF1482)) | 0x726974BEE01D68F0) - (v68 - 0x7653FFD844AF1482) - 0x3934BA5F700EB478;
  v70 = v69 ^ 0x8BFA6BF9A4B776EALL;
  v69 ^= 0xC69A6AC47E302D1ELL;
  v71 = (__ROR8__(v70, 8) + v69) ^ a7;
  v72 = v71 ^ __ROR8__(v69, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0x41285C582D9B8689;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0x1717D4ABBED3C077;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ a2;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ v9;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ 0x5028BB63E7A27580;
  LODWORD(v65) = STACK[0x5B8];
  v10[13] = (((__ROR8__(v81, 8) + (v81 ^ __ROR8__(v80, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v10 + 13) & 7u))) ^ LODWORD(STACK[0x5BC]) ^ 0x41;
  v82 = __ROR8__((v10 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v83 = ((v8 - v82) & 0xFE542F78DA5444B9) + v82 - 0x7653FFD844AF1482 - ((v82 - 0x7653FFD844AF1482) & 0xFA542F78DA5444B9);
  v84 = v83 ^ 0x4C9AFEDE0EED862BLL;
  v83 ^= 0x1FAFFE3D46ADDDFuLL;
  v85 = (__ROR8__(v84, 8) + v83) ^ a7;
  v86 = v85 ^ __ROR8__(v83, 61);
  v87 = __ROR8__(v85, 8);
  v88 = (((v87 + v86) & 0x23EC8C234378AF19 ^ 0x3C8000341608D11) + ((v87 + v86) & 0xDC1373DCBC8750E6 ^ 0xDC006048288600E1) - 1) ^ 0x9EE03C13447D0B78;
  v89 = v88 ^ __ROR8__(v86, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0x1717D4ABBED3C077;
  v91 = __ROR8__(v90, 8);
  v92 = v90 ^ __ROR8__(v89, 61);
  v93 = (((2 * (v91 + v92)) | 0xEBEEBD579C80540CLL) - (v91 + v92) + 0xA08A15431BFD5FALL) ^ 0x197FD214117BF9D6;
  v94 = v93 ^ __ROR8__(v92, 61);
  v95 = (__ROR8__(v93, 8) + v94) ^ v9;
  v96 = v95 ^ __ROR8__(v94, 61);
  v97 = __ROR8__(v95, 8);
  v98 = (v97 + v96 - ((2 * (v97 + v96)) & 0x1D2A56B20491C28) + 0xE952B590248E14) ^ 0x50C1E9D67786FB94;
  v10[14] = (((__ROR8__(v98, 8) + (v98 ^ __ROR8__(v96, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v10 + 14) & 7u))) ^ LODWORD(STACK[0x5BB]) ^ 0xCC;
  v99 = __ROR8__((v10 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v100 = ((v99 - 0x7653FFD844AF1482) | 0x3482ED2F4BE36F82) - ((v99 - 0x7653FFD844AF1482) | 0xCB7D12D0B41C907DLL) - 0x3482ED2F4BE36F83;
  v101 = v100 ^ 0x864C3C899F5AAD10;
  v100 ^= 0xCB2C3DB445DDF6E4;
  v102 = (__ROR8__(v101, 8) + v100) ^ a7;
  v103 = v102 ^ __ROR8__(v100, 61);
  v104 = (__ROR8__(v102, 8) + v103) ^ 0x41285C582D9B8689;
  v105 = v104 ^ __ROR8__(v103, 61);
  v106 = (__ROR8__(v104, 8) + v105) ^ 0x1717D4ABBED3C077;
  v107 = v106 ^ __ROR8__(v105, 61);
  v108 = __ROR8__(v106, 8);
  v109 = __ROR8__((((2 * (v108 + v107)) | 0x421E3E46FF8178FELL) - (v108 + v107) + 0x5EF0E0DC803F4381) ^ 0x4D87939CA0FB6FAFLL, 8);
  v110 = (((2 * (v108 + v107)) | 0x421E3E46FF8178FELL) - (v108 + v107) + 0x5EF0E0DC803F4381) ^ 0x4D87939CA0FB6FAFLL ^ __ROR8__(v107, 61);
  v111 = (v109 + v110) ^ v9;
  v112 = v111 ^ __ROR8__(v110, 61);
  v113 = (__ROR8__(v111, 8) + v112) ^ 0x5028BB63E7A27580;
  v114 = v113 ^ __ROR8__(v112, 61);
  v115 = __ROR8__(v113, 8);
  v10[15] = (((((v115 + v114) | 0xC03966FD3C50E4A5) - ((v115 + v114) | 0x3FC69902C3AF1B5ALL) + 0x3FC69902C3AF1B5ALL) ^ 0xA8811505C087BA6DLL) >> (8 * ((v10 + 15) & 7u))) ^ LODWORD(STACK[0x5BA]) ^ 0x2D;
  v116 = __ROR8__((v10 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v117 = ((2 * (v116 - 0x7653FFD844AF1482)) | 0x75D79D827AEEC060) - (v116 - 0x7653FFD844AF1482) + 0x4514313EC2889FD0;
  v118 = __ROR8__(v117 ^ 0x8251F67E9CEA2A2, 8);
  v117 ^= 0x45451E5A3349F956uLL;
  v119 = (v118 + v117) ^ a7;
  v120 = v119 ^ __ROR8__(v117, 61);
  v121 = (__ROR8__(v119, 8) + v120) ^ 0x41285C582D9B8689;
  v122 = v121 ^ __ROR8__(v120, 61);
  v123 = (__ROR8__(v121, 8) + v122) ^ 0x1717D4ABBED3C077;
  v124 = v123 ^ __ROR8__(v122, 61);
  v125 = (__ROR8__(v123, 8) + v124) ^ a2;
  v126 = v125 ^ __ROR8__(v124, 61);
  v127 = (__ROR8__(v125, 8) + v126) ^ v9;
  v128 = v127 ^ __ROR8__(v126, 61);
  v129 = (__ROR8__(v127, 8) + v128) ^ 0x5028BB63E7A27580;
  v130 = __ROR8__(v129, 8) + (v129 ^ __ROR8__(v128, 61));
  v10[16] = ((((v130 | 0xD08AEA42F2DFEC1BLL) - (v130 | 0x2F7515BD0D2013E4) + 0x2F7515BD0D2013E4) ^ 0xB83299BA0E08B2D3) >> (8 * ((v10 + 16) & 7u))) ^ LODWORD(STACK[0x5B9]) ^ 0x2A;
  v131 = __ROR8__((v10 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v132 = ((2 * v131 + 0x1358004F76A1D6FCLL) & 0xF72D73938192B118) - v131 - 0x942B9F17C1A440BLL;
  v133 = v132 ^ 0x32A79790EB8F65E1;
  v132 ^= 0x7FC796AD31083E15uLL;
  v134 = (__ROR8__(v133, 8) + v132) ^ a7;
  v135 = v134 ^ __ROR8__(v132, 61);
  v136 = (__ROR8__(v134, 8) + v135) ^ 0x41285C582D9B8689;
  v137 = v136 ^ __ROR8__(v135, 61);
  v138 = (__ROR8__(v136, 8) + v137) ^ 0x1717D4ABBED3C077;
  v139 = v138 ^ __ROR8__(v137, 61);
  v140 = (__ROR8__(v138, 8) + v139) ^ a2;
  v141 = v140 ^ __ROR8__(v139, 61);
  v142 = (__ROR8__(v140, 8) + v141) ^ v9;
  v143 = v142 ^ __ROR8__(v141, 61);
  v144 = (__ROR8__(v142, 8) + v143) ^ 0x5028BB63E7A27580;
  v10[17] = (((__ROR8__(v144, 8) + (v144 ^ __ROR8__(v143, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v10 + 17) & 7u))) ^ v65 ^ 0x4E;
  return (*(a4 + 8 * v7))();
}

uint64_t sub_24478B6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x5E8] = *(STACK[0x258] - 0x750C1ABFB0567FC3);
  v5 = LODWORD(STACK[0x5D4]) - (((v4 + 2147129170) & 0x9F3DE7FE ^ 0x3B583192) & (2 * LODWORD(STACK[0x5D4]))) + 305154981;
  v6 = (v5 ^ 0xCF8BA052) + 1870460926 + ((2 * v5) & 0xBB77D7EE ^ 0x2060974A);
  LODWORD(STACK[0x5F4]) = v6;
  return (*(a4 + 8 * (((v6 != 1295574005) | (8 * (v6 != 1295574005))) ^ v4)))(a1, a2, a3);
}

uint64_t sub_24478B8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X6>, uint64_t a4@<X7>, unsigned int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v49 = ((v33 - 1) | ((v33 - 1 < a5) << 32)) + a1;
  v50 = v49 + v37 + 10;
  v51 = __ROR8__(v50 & 0xFFFFFFFFFFFFFFF8, 8);
  v52 = -2 - (((v42 - v51) | 0x4D40EBB8E606437CLL) + ((v51 + 0x9AC0027BB50EB7ELL) | a2));
  v53 = v52 ^ 0xFF8E3A1E32BF81EELL;
  v52 ^= 0xB2EE3B23E838DA1ALL;
  v54 = __ROR8__(v53, 8);
  v55 = __ROR8__((v54 + v52 - ((2 * (v54 + v52)) & 0x53FCDAE653451284) + 0x29FE6D7329A28942) ^ 0xA44024ACA29C4F48, 8);
  v56 = (v54 + v52 - ((2 * (v54 + v52)) & 0x53FCDAE653451284) + 0x29FE6D7329A28942) ^ 0xA44024ACA29C4F48 ^ __ROR8__(v52, 61);
  v57 = (v55 + v56) ^ v39;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ a4;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = __ROR8__(v59, 8);
  v62 = (v35 - ((v61 + v60) | v35) + ((v61 + v60) | a3)) ^ v40;
  v63 = v62 ^ __ROR8__(v60, 61);
  v64 = __ROR8__(v62, 8);
  v65 = ((v41 & (2 * (v64 + v63))) - (v64 + v63) + v38) ^ v43;
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = __ROR8__(v65, 8);
  v68 = __ROR8__((v34 - ((v67 + v66) | v34) + ((v67 + v66) | v44)) ^ v45, 8) + ((v34 - ((v67 + v66) | v34) + ((v67 + v66) | v44)) ^ v45 ^ __ROR8__(v66, 61));
  *v50 = ((((v46 & (2 * v68)) - v68 + v47) ^ v48) >> (8 * (v50 & 7u))) ^ *(v36 + v49);
  return (*(a32 + 8 * (v32 ^ (16 * (a5 + 1 == v33)))))();
}

uint64_t sub_24478BAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, int a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = (v65 - 523802104) | 0x14;
  v67 = v65 - 523805988;
  a65 = 0x750C1ABFB0567FDBLL;
  v68 = STACK[0x280];
  STACK[0x490] = *(a4 + 8 * v67);
  STACK[0x498] = v68;
  LODWORD(STACK[0x4A4]) = a38;
  STACK[0x4A8] = &a65;
  return (*(a4 + 8 * (v67 ^ 0x11C8 ^ (((v67 ^ 0x39377315u) > 0xC2351870) * (v66 ^ 0x2075)))))(1276675257, a2);
}

uint64_t sub_24478BC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = STACK[0x280];
  STACK[0x5F8] = STACK[0x280];
  STACK[0x600] = v6 - 0x146375EC570BCC27;
  v7 = *(v6 - 0x146375EC570BCC27);
  STACK[0x608] = v7;
  return (*(a4 + 8 * ((((((v4 ^ 0xA2) - 1) ^ (v7 == v5)) & 1) * ((v4 ^ 0x3E716914) - 9325)) ^ v4 ^ 0x3E716DA2)))(a1, a2, a3);
}

uint64_t sub_24478BCCC@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  *(STACK[0x608] - 0x750C1ABFB0567FDBLL) = a2;
  v3 = STACK[0x600];
  *(a2 - 0x750C1ABFB0567FD3) = *STACK[0x600];
  *v3 = a2;
  return (*(a1 + 8 * v2))();
}

uint64_t sub_24478BD94@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  *STACK[0x600] = a2;
  *(STACK[0x5F8] - 0x146375EC570BCC2FLL) = a2;
  return (*(a1 + 8 * ((v2 + 8238) | 0x282)))();
}

uint64_t sub_24478BDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x610] = a65;
  v67 = *(a65 - 0x750C1ABFB0567FD3);
  STACK[0x618] = v67;
  v68 = STACK[0x258];
  STACK[0x620] = STACK[0x258];
  STACK[0x628] = v68 - 0x750C1ABFB0567FD3;
  *(v68 - 0x750C1ABFB0567FD3) = v67;
  STACK[0x630] = a65 - 0x750C1ABFB0567FDBLL;
  v69 = *(a65 - 0x750C1ABFB0567FDBLL);
  STACK[0x638] = v68 - 0x750C1ABFB0567FDBLL;
  *(v68 - 0x750C1ABFB0567FDBLL) = v69;
  STACK[0x378] = v69;
  return (*(a4 + 8 * (((v67 == v66) * ((v65 - 358178378) ^ 0xEAA6A688 ^ (v65 - 358178378) & 0x15594D3D ^ 0x1466)) ^ v65)))(a1, a2, a3);
}

uint64_t sub_24478BE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(STACK[0x618] - 0x750C1ABFB0567FDBLL) = STACK[0x620];
  STACK[0x378] = *STACK[0x638];
  return (*(a4 + 8 * v4))(a1, a2, a3);
}

uint64_t sub_24478BEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = STACK[0x378];
  STACK[0x640] = STACK[0x378];
  return (*(a4 + 8 * (((v6 != v5) * (((v4 - 20846) | 0x4E82) - 19886)) ^ v4)))(a1, a2, a3);
}

uint64_t sub_24478BFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (STACK[0x610] - 0x750C1ABFB0567FC3);
  STACK[0x648] = v5;
  v6 = *v5;
  STACK[0x650] = *v5;
  return (*(a4 + 8 * (((v6 != 0) * ((v4 ^ 0xE9A) - 17033)) ^ v4)))(a1, a2, a3);
}

uint64_t sub_24478C040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v36 = (*(a4 + 8 * ((v35 - 8616) ^ 0x78DA)))(STACK[0x650], a2, a3);
  *STACK[0x648] = 0;
  return (*(a35 + 8 * (v35 - 8616)))(v36);
}

uint64_t sub_24478C0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v36 = (v35 - 1331075845) & 0x4F567CE6;
  v37 = (*(a4 + 8 * (v36 ^ 0x7D64)))(STACK[0x630], a2, a3);
  return (*(a35 + 8 * v36))(v37);
}

uint64_t sub_24478C158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x388];
  LODWORD(STACK[0x65C]) = STACK[0x388];
  return (*(a4 + 8 * (((((v5 - (v4 + 692317692)) | (v4 + 692317692 - v5)) >= 0) * ((v4 - 523793476) ^ 0x32B4)) | (v4 - 523791501))))(a1, a2, a3);
}

uint64_t sub_24478C1D0@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v2 = STACK[0x258];
  STACK[0x660] = STACK[0x258];
  STACK[0x668] = v2 - 0x750C1ABFB0567FC3;
  v3 = *(v2 - 0x750C1ABFB0567FC3);
  STACK[0x670] = v3;
  return (*(a1 + 8 * (((v3 == 0) * ((20 * (a2 ^ 0x301D)) ^ a2)) | a2)))();
}

uint64_t sub_24478C230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v36 = (*(a4 + 8 * (v35 ^ 0x6B74)))(STACK[0x670], a2, a3);
  *STACK[0x668] = 0;
  return (*(a35 + 8 * v35))(v36);
}

uint64_t sub_24478C340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = LODWORD(STACK[0x38C]) == v6;
  LODWORD(STACK[0x398]) = STACK[0x38C];
  return (*(a4 + 8 * ((v7 * ((v5 + 1264194439) & 0x956D45FA ^ 0xD2)) ^ (v5 + v4))))(a1, a2, a3);
}

uint64_t sub_24478C434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = LODWORD(STACK[0x39C]) == ((v4 + 645402974) & 0xD987CD93 ^ 0x487C94D4);
  LODWORD(STACK[0x3BC]) = STACK[0x39C];
  return (*(a4 + 8 * ((4359 * v5) ^ v4)))(a1, a2, a3);
}

uint64_t sub_24478C4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v37 = v35 & 0x3D643D7D;
  v38 = 426870883 * ((((v36 - 152) | 0x55383429) - ((v36 - 152) & 0x55383429)) ^ 0x9011491E);
  *(v36 - 144) = &STACK[0x920];
  *(v36 - 136) = (v35 & 0x3D643D7D) - v38 + 9187;
  *(v36 - 152) = v38 + 172871735;
  v39 = (*(a4 + 8 * ((v35 & 0x3D643D7Du) + 20667)))(v36 - 152, a2, a3);
  v40 = *(v36 - 132);
  LODWORD(STACK[0x3BC]) = v40;
  return (*(a35 + 8 * (((v40 == ((v37 + 6428) ^ 0x487CB6A1)) * (((v37 + 218135799) | 0x12382088) ^ 0x1F38EFA3)) ^ v37)))(v39);
}

uint64_t sub_24478C5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  v67 = a66;
  LODWORD(STACK[0x210]) = 158827996;
  STACK[0x278] = &a65;
  LODWORD(STACK[0x214]) = 1512809883;
  STACK[0x3C0] = &a65;
  STACK[0x3C8] = &a63;
  LODWORD(STACK[0x3D4]) = 158827996;
  STACK[0x3D8] = v67;
  return (*(a4 + 8 * v66))(a1, a2, a3);
}

uint64_t sub_24478C660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  HIDWORD(a54) = v67 - ((2 * v67 + 500445380) & ((v65 ^ 0x5D83) + 474732424)) + 1561342027;
  STACK[0x268] = a65;
  STACK[0x408] = a65;
  LODWORD(STACK[0x414]) = HIDWORD(a54);
  STACK[0x418] = v66;
  return (*(a4 + 8 * v65))(1276675257, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, v66, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

uint64_t sub_24478C7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v46 = (v42 + v38) & 0xF;
  *(v37 + v38) = *(*(v44 + 8 * (v43 ^ (a6 + 1395))) + v46) ^ *(v39 + v42) ^ *(*(v44 + 8 * (v43 ^ (v45 + 742))) + v46 + 2) ^ (v46 * v40) ^ *(*(v44 + 8 * (v43 ^ v45)) + v46);
  return (*(a35 + 8 * (((v35 == v42) * v41) ^ v36)))();
}

uint64_t sub_24478C84C@<X0>(uint64_t a1@<X3>, int a2@<W4>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, unint64_t a61)
{
  STACK[0x3A0] = v61;
  STACK[0x680] = a61;
  LODWORD(STACK[0x3AC]) = a2;
  return (*(a1 + 8 * (((a61 == v62) * ((((a3 - 12575) | 0x149) + 3817) ^ 0x185A)) ^ a3)))();
}

uint64_t sub_24478C894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v37 = STACK[0x680];
  v38 = 715682041 * ((((v36 - 152) | 0x4A39FC1D) - (v36 - 152) + ((v36 - 152) & 0xB5C603E0)) ^ 0xBF7F074F);
  *(v36 - 124) = v38 ^ 0xBDD8363C;
  *(v36 - 152) = &STACK[0x960];
  *(v36 - 136) = v37;
  *(v36 - 112) = (v35 + 5056) ^ v38;
  *(v36 - 144) = v38 ^ 0x2F4E14D2;
  *(v36 - 140) = -1239219175 - v38;
  *(v36 - 120) = &STACK[0x940];
  v39 = (*(a4 + 8 * (v35 + 16801)))(v36 - 152, a2, a3);
  LODWORD(STACK[0x3AC]) = *(v36 - 128);
  return (*(a35 + 8 * v35))(v39);
}

uint64_t sub_24478C960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = LODWORD(STACK[0x3AC]) == v5 + ((v4 - 2097425770) & 0x7D04257F) - 367;
  LODWORD(STACK[0x3BC]) = STACK[0x3AC];
  return (*(a4 + 8 * ((18139 * v6) ^ v4)))(a1, a2, 3771163265);
}

uint64_t sub_24478C9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x688] = &STACK[0x940];
  STACK[0x690] = STACK[0x288];
  LODWORD(STACK[0x4F4]) = v4;
  return (*(a4 + 8 * (v4 ^ 0xE98u)))(-103797906, 3145);
}

uint64_t sub_24478CA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _BYTE *a30)
{
  *a30 = 0;
  *(v31 + 83) = 0;
  *(v31 + 75) = 0;
  return (*(a4 + 8 * (v30 - 523784677)))(a1, a2, a3);
}

uint64_t sub_24478CC24@<X0>(uint64_t a1@<X3>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, unsigned int a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v51 = v30 + v35 + 1998;
  v50 = *(a24 + v36);
  v39 = (*(a1 + 8 * (v35 - 523783398)))(v33 + (a2 ^ v32), 74, 0, -1, *(v37 + 8 * (v31 + v35 - 2166)) - 2);
  if (*(a24 + v36) - 127 >= 0xFFFFFFA1)
  {
    v46 = *(a24 + v36);
  }

  else
  {
    v46 = 46;
  }

  *(a25 + a28) = v46;
  *(a25 + ((v35 - v34 - 373) ^ 0x2338u) + a28) = 0;
  v48 = (v38 + 843480297) > 0x32467CE7 && v38 + 843480297 < a23;
  return (*(a30 + 8 * (v51 ^ (425 * v48))))(v39, v40, v41, a30, v42, v43, v44, v45, v50, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_24478CD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (v38)
  {
    v39 = 0;
  }

  else
  {
    v39 = ((v37 ^ 0x1F388BCA) - 423346085) ^ v35;
  }

  v40 = (*(a4 + 8 * (v37 + 11488)))(v36 + v39, 74, 0, -1, *(&off_278E1E490 + v37 - 10600) - 4, a6, a7, a8);
  return (*(a35 + 8 * v37))(v40);
}

uint64_t sub_24478CFF8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X3>, int a3@<W4>, int a4@<W5>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, uint64_t a23, uint64_t a24, uint64_t a25, unint64_t a26, unint64_t a27, int a28, uint64_t a29, uint64_t a30, int a31, int a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, unint64_t a61)
{
  STACK[0x8F8] = a26;
  LODWORD(STACK[0x4F4]) = a22;
  STACK[0x900] = v62;
  STACK[0x908] = a27;
  STACK[0x910] = a1;
  STACK[0x4F8] = 103782741 - v63;
  LODWORD(STACK[0x500]) = v61;
  LODWORD(STACK[0x504]) = a5;
  LODWORD(STACK[0x508]) = a28;
  LOBYTE(STACK[0x91F]) = v64;
  LODWORD(STACK[0x50C]) = a4;
  LODWORD(STACK[0x510]) = a3;
  STACK[0x288] = STACK[0x690];
  STACK[0x698] = a61;
  STACK[0x3B0] = 0x3BED6560F8FDF97DLL;
  return (*(a2 + 8 * (a32 - 523789962)))(5829, 2813575089, 1481397066, 4294956703, 0x3BED6560F8FDF99CLL);
}

uint64_t sub_24478D1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  STACK[0x3B0] = v8;
  STACK[0x6A0] = v8 - 1;
  LOBYTE(STACK[0x6AA]) = a6;
  LOBYTE(STACK[0x6AB]) = a7;
  return (*(v9 + 8 * v7))(a1, a2, a3, v9, a5);
}

uint64_t sub_24478D21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  STACK[0x3B0] = v7;
  STACK[0x6A0] = v7;
  LOBYTE(STACK[0x6AA]) = a6;
  LOBYTE(STACK[0x6AB]) = a7;
  return (*(v9 + 8 * v8))(a1, a2, a3, v9, a5);
}

uint64_t sub_24478D2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, int a4@<W8>)
{
  LODWORD(STACK[0x6AC]) = v6;
  v8 = v6 - ((a4 + 1073524356) & 0xDF3BEEFA) == 276728965;
  v9 = (*(STACK[0x698] + (v5 ^ v4)) << (((a4 + 19) & 0x93u) + 48)) | (*(&STACK[0x940] + (v5 ^ v4)) << 56);
  v10 = 0x1AD4E14D3F71F48ALL;
  if (v8)
  {
    v10 = 0x1AD4E14F3F71F48ALL;
  }

  v11 = v9 + v10 - ((2 * v9) & 0x35A8000000000000);
  v12 = *(v7 + 8 * (a4 ^ 0xD2F));
  v13 = (*v12)++;
  LODWORD(v12) = (v13 + 57) & 0x3F;
  v14 = 8 * ((v13 + 57) & 0x3F);
  v15 = *(v7 + 8 * (a4 ^ 0xCF0)) + v14 - 4;
  v16 = v14 + *(v7 + 8 * (a4 ^ 0x907)) - 96;
  if (v12 <= 0xB)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  *v17 = v11;
  LODWORD(STACK[0x3BC]) = 1216117099;
  return (*(a3 + 8 * ((15707 * v8) ^ a4)))(a1, a2, 3771163265);
}

uint64_t sub_24478D4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  HIDWORD(a54) = 1964010345;
  STACK[0x268] = a65 + 4;
  STACK[0x408] = a65 + 4;
  LODWORD(STACK[0x414]) = 1964010345;
  STACK[0x418] = a66;
  return (*(a4 + 8 * v66))(1276675257, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a66, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

uint64_t sub_24478D638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  HIDWORD(a54) = 1196793377;
  STACK[0x268] = a65 + 8;
  STACK[0x408] = a65 + 8;
  LODWORD(STACK[0x414]) = 1196793377;
  STACK[0x418] = a66;
  return (*(a4 + 8 * v66))(1276675257, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a66, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

uint64_t sub_24478D6C8@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v4 = (v2 + 2225) | 0x4A2;
  v5 = v3 - 523794792;
  v6 = a2 < v3 + 692307819 + v4 + 483;
  return (*(a1 + 8 * ((v6 | (8 * v6)) ^ v5)))();
}

uint64_t sub_24478D7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  HIDWORD(a54) = 305624500;
  STACK[0x268] = a65 + 12;
  STACK[0x408] = a65 + 12;
  LODWORD(STACK[0x414]) = 305624500;
  STACK[0x418] = a66;
  return (*(a4 + 8 * v66))(1276675257, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a66, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

uint64_t sub_24478D924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  HIDWORD(a54) = 1514563843;
  STACK[0x268] = a65 + 16;
  STACK[0x408] = a65 + 16;
  LODWORD(STACK[0x414]) = 1514563843;
  STACK[0x418] = a66;
  return (*(a4 + 8 * v66))(1276675257, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a66, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

uint64_t sub_24478DA58@<X0>(uint64_t a1@<X3>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, unint64_t a60)
{
  v60 = STACK[0x6B0] + 24;
  STACK[0x230] = a60;
  STACK[0x438] = v60;
  LODWORD(STACK[0x444]) = -49551262;
  STACK[0x448] = a60;
  return (*(a1 + 8 * (a2 ^ 0x17EE)))(1276675257);
}

uint64_t sub_24478DB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x230] = a66;
  STACK[0x438] = a65 + 32;
  LODWORD(STACK[0x444]) = -316346685;
  STACK[0x448] = a66;
  return (*(a4 + 8 * (v66 ^ 0x5220F248 ^ (6784 * (v66 > 0x1CFEDDB6)))))(1276675257, a2, a3);
}

uint64_t sub_24478DC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x210]) = 1323744634;
  STACK[0x278] = a65 + 48;
  LODWORD(STACK[0x214]) = -1165707944;
  STACK[0x3C0] = a65 + 48;
  STACK[0x3C8] = a65 + 40;
  LODWORD(STACK[0x3D4]) = 1323744634;
  STACK[0x3D8] = a66;
  return (*(a4 + 8 * ((v66 - 5347) | 0x41)))(a1, a2, a3);
}

uint64_t sub_24478DCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, unint64_t a57, uint64_t a58, uint64_t a59, char *a60, char a61, uint64_t a62, uint64_t a63)
{
  v66 = a65;
  a57 = a65;
  LODWORD(STACK[0x210]) = -2142416661;
  a60 = &a61;
  STACK[0x278] = &a42;
  LODWORD(STACK[0x214]) = 450741525;
  STACK[0x3C0] = &a42;
  STACK[0x3C8] = &a61;
  LODWORD(STACK[0x3D4]) = -2142416661;
  STACK[0x3D8] = v66;
  return (*(a4 + 8 * v65))(a1, a2, a3);
}

uint64_t sub_24478DDF4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v35 = (v31 ^ 0x7FDBB757) + (v30 & 0xFFB76EAE) - 1762731246 + ((v32 - 1610818171) ^ 0x9FFCC270);
  v36 = 201256697 * (((((v34 - 152) | 0x892F7178) ^ 0xFFFFFFFE) - (~(v34 - 152) | 0x76D08E87)) ^ 0x6F88CE);
  *(v34 - 152) = v32 - v36 - 1360;
  *(v34 - 144) = a2;
  *(v34 - 136) = v29;
  *(v34 - 128) = v35 ^ v36;
  v37 = (*(a1 + 8 * (v32 ^ 0x5095)))(v34 - 152);
  v38 = *(v34 - 124);
  LODWORD(STACK[0x3BC]) = v38;
  return (*(a29 + 8 * (((v38 == v33) * (((v32 - 1610818171) & 0x7F3BBFF9) - 523804886)) ^ v32)))(v37);
}

uint64_t sub_24478DF08@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v35 = v30 - 3135;
  v36 = (v32 ^ 0xA3EFDB1B ^ (v30 - 2207)) + 1591131872 + (((v30 - 3135) ^ 0x47DFDE64) & v31);
  v37 = 201256697 * ((-920625981 - ((v34 - 152) | 0xC9205CC3) + ((v34 - 152) | 0x36DFA33C)) ^ 0x4060A575);
  *(v34 - 144) = v29;
  *(v34 - 136) = a2;
  *(v34 - 124) = v36 ^ v37;
  *(v34 - 152) = v37 - 7337 + v35;
  v38 = (*(a1 + 8 * (v35 + 14647)))(v34 - 152);
  v39 = *(v34 - 128);
  LODWORD(STACK[0x3BC]) = v39;
  return (*(a29 + 8 * ((30403 * (v39 == v33)) ^ v35)))(v38);
}

uint64_t sub_24478E004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a11 - 0x1FE18A5030EE0E2CLL) = STACK[0x6B8];
  LODWORD(STACK[0x3BC]) = v12;
  return (*(a4 + 8 * v11))(a1, a2, a3);
}

uint64_t sub_24478E03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, unint64_t a61)
{
  LODWORD(STACK[0x22C]) = STACK[0x3BC];
  STACK[0x6C0] = a61;
  return (*(a4 + 8 * (((((v61 + 107) ^ (a61 == 0)) & 1) * ((v61 - 523799739) ^ 0x15A9)) ^ (v61 - 523783968))))(a1, a2, a3);
}

uint64_t sub_24478E18C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  STACK[0x898] = v61;
  v64 = *(a4 + 8 * v62);
  STACK[0x8A0] = v60;
  STACK[0x238] = v64;
  STACK[0x488] = v64;
  return (*(a4 + 8 * (((v60 == v63) * (((a9 + 523789185) ^ 0x1F38E38B) - 17692)) ^ a9)))(a1, a2, a3);
}

uint64_t sub_24478E1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x8A0];
  v6 = *(STACK[0x8A0] - 0x146375EC570BCC2FLL);
  STACK[0x8A8] = v6;
  STACK[0x480] = v5;
  return (*(a4 + 8 * ((7 * (((v4 - 7 + v4) ^ (v6 == 0x750C1ABFB0567FDBLL)) & 1)) ^ v4)))(a1, a2, a3);
}

uint64_t sub_24478E264@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v2 = *(a1 + 8 * a2);
  STACK[0x478] = STACK[0x8A8];
  return v2();
}

uint64_t sub_24478E360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v38 = (*(a4 + 8 * (v37 ^ 0x4EC8)))(v35, a2, a3);
  *v36 = 0;
  return (*(a35 + 8 * v37))(v38);
}

uint64_t sub_24478E398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x478] = v67;
  STACK[0x8B0] = v65;
  STACK[0x8B8] = v67;
  STACK[0x8C0] = v68;
  STACK[0x8C8] = v66;
  STACK[0x480] = a65;
  return (*(a4 + 8 * v69))(a1, a2, a3);
}

uint64_t sub_24478E3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v37 = (*(a4 + 8 * (v35 ^ 0x6BF5)))(STACK[0x480] - 0x146375EC570BCC2FLL, a2, a3);
  *STACK[0x898] = v36;
  STACK[0x488] = STACK[0x238];
  return (*(a35 + 8 * v35))(v37);
}

uint64_t sub_24478E4C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v64 = STACK[0x3D8];
  STACK[0x6D0] = STACK[0x3D8];
  LODWORD(STACK[0x6DC]) = STACK[0x3D4];
  v65 = STACK[0x3C8];
  v66 = STACK[0x3C0];
  STACK[0x200] = STACK[0x3C0];
  v69 = v64 == v63 || v65 == 0 || v66 == 0;
  LODWORD(STACK[0x404]) = a5;
  return (*(a4 + 8 * (((((a9 - 105) ^ v69) & 1) * (((a9 - 843185033) & 0x3241FFFE) - 12475)) ^ a9)))(a1, a2, a3);
}

uint64_t sub_24478E550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  STACK[0x240] = 0;
  STACK[0x260] = 0x10FD9F9680D8A4EBLL;
  v47 = STACK[0x6D0] == v46;
  LODWORD(STACK[0x400]) = a5;
  return (*(a4 + 8 * ((v47 * (((v45 ^ 0x3BC1) - 2336) ^ 0x1A0)) ^ v45)))(a1, a2, a3);
}

uint64_t sub_24478E5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  STACK[0x490] = *(a4 + 8 * v53);
  STACK[0x498] = STACK[0x6D0];
  LODWORD(STACK[0x4A4]) = STACK[0x6DC];
  STACK[0x4A8] = &a53;
  return (*(a4 + 8 * (v53 + (v53 ^ 0x113B) - 583)))(1276675257, a2, a3);
}

uint64_t sub_24478E6A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  v54 = *(a54 - 0x750C1ABFB0567FC3);
  STACK[0x6E0] = v54;
  LODWORD(STACK[0x6EC]) = *(a54 - 0x750C1ABFB0567FCBLL);
  LODWORD(STACK[0x400]) = a5;
  return (*(a4 + 8 * (((v54 == 0) * (a9 ^ 0xFFFFF8AB ^ ((a9 ^ 0x4EB3) - 16127) ^ 0xFFFFF6F5)) ^ a9 ^ 0x4EB3)))(a1, a2, a3);
}

uint64_t sub_24478E71C@<X0>(uint64_t a1@<X3>, int a2@<W4>, uint64_t a3@<X8>)
{
  v3 = (LODWORD(STACK[0x6EC]) | ((LODWORD(STACK[0x6EC]) < 0xA6B181C) << 32)) + ((a3 - 1083461239) & 0x40944F8E) + 0x3179B69A27CE97FCLL;
  STACK[0x2D0] = v3;
  v4 = STACK[0x260];
  STACK[0x6F0] = STACK[0x260];
  STACK[0x2D8] = v4;
  LODWORD(STACK[0x400]) = a2 + 5;
  return (*(a1 + 8 * ((496 * (((((v3 - v4 - 0x207C1703B1610C45) ^ (a3 | ((a3 | 9) << 32))) & (a3 | ((a3 | 9) << 32))) >> (__clz((v3 - v4 - 0x207C1703B1610C45) ^ (a3 | ((a3 | 9) << 32)) | 1) ^ 0x3Fu)) & 1)) | a3 & 0x4A0A)))();
}

uint64_t sub_24478E7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x6F0] + 0x24BE07378266897ELL + (v4 + 1720278660);
  STACK[0x3E0] = STACK[0x6E0];
  STACK[0x3E8] = v5;
  STACK[0x3F0] = a4 + 8 * v4;
  return (*(a4 + 8 * ((51196 * ((v4 ^ 0xD1893997) > 0xFC4A2E6D)) ^ (v4 + 16793))))(a1, a2, a3);
}

uint64_t sub_24478E86C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, unint64_t a54)
{
  v54 = STACK[0x2D8];
  v55 = ((a3 - 1434008338) | 0xE288258u) + STACK[0x2D8] - 0x10FD9F96A0114BBFLL;
  STACK[0x6F8] = a54;
  STACK[0x700] = (v55 ^ 0x6A739DD6BB7FFFFFLL) - 0x401004041A10208BLL + ((2 * v55) & 0xD4E73BAD76FFFFFELL);
  v56 = STACK[0x2E8] - 0x4CADEA05E36F2753;
  STACK[0x708] = STACK[0x2E8];
  STACK[0x710] = STACK[0x208];
  STACK[0x718] = (v56 ^ 0xEAF79FD2FDEFDF7DLL) + 0x3F6BF9FFA37FFFF7 + ((2 * v56) & 0xD5EF3FA5FBDFBEFALL);
  v57 = STACK[0x2E0] - 0x3A9DD32390942AD1;
  STACK[0x720] = v56 + 6;
  v58 = STACK[0x2F8] - 0x2861475123990826;
  STACK[0x728] = v57;
  LOBYTE(STACK[0x737]) = v57 < 0xBEECB71E;
  STACK[0x738] = STACK[0x220];
  STACK[0x740] = (v58 ^ 0xAAEFF9D3A76FFF7ELL) + 0x7F739FFEF9FFDFF6 + ((2 * v58) & 0x55DFF3A74EDFFEFCLL);
  STACK[0x748] = ((v54 - 0x10FD9F9680D8A4E5) ^ 0x3DBFEFDFEBECBFFBLL) - 0x804491182243200 + ((2 * (v54 - 0x10FD9F9680D8A4E5)) & 0x7B7FDFBFD7D97FF6);
  STACK[0x750] = ((v56 + 2) ^ 0xFDBBBEDFEBFAFDFFLL) + 0x37FFE7EE7DCD8FFCLL + ((2 * (v56 + 2)) & 0xFB777DBFD7F5FBFELL);
  STACK[0x758] = ((v58 + 2) ^ 0x7FFFBECFE9FDDFFFLL) - 0x4A44180180355204 + ((2 * (v58 + 2)) & 0xFFFF7D9FD3FBBFFELL);
  return (*(a2 + 8 * (a3 ^ 0x66895957 ^ (2321 * (a3 != 440093431)))))(LOWORD(STACK[0x8F6]), a1, LOWORD(STACK[0x456]));
}

uint64_t sub_24478F390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24, unint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, uint64_t a37)
{
  v38 = (((a18 & 0x86042B66) + 237368451) ^ v37) + a27 - 0x4CADEA052482702FLL;
  v39 = v38 < 0xBEECB71E;
  v40 = v38 > a25;
  if (a24 != v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v40;
  }

  return (*(a37 + 8 * ((227 * !v41) ^ (a36 - 523786097))))(a1, a2, a3);
}

uint64_t sub_24478F624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (**a6)(unint64_t, uint64_t, uint64_t, uint64_t), uint64_t a7, unint64_t a8)
{
  v12 = v9 + v8 - 0x2A6399D2A16FDF74;
  v13 = __ROR8__(v12 & 0xFFFFFFFFFFFFFFF8, 8);
  v14 = (v13 - 0x7653FFD844AF1482) ^ 0xFFAED09B0E3E9966;
  v15 = __ROR8__((v13 - 0x7653FFD844AF1482) ^ 0xB2CED1A6D4B9C292, 8);
  v16 = (0xE19E65671DE0D6E7 - ((v15 + v14) | 0xE19E65671DE0D6E7) + ((v15 + v14) | 0x1E619A98E21F2918)) ^ 0x93DFD3476921EF12;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (v18 + v17 - ((2 * (v18 + v17)) & 0x7990129101F12E50) - 0x4337F6B77F0768D8) ^ 0xFDE05510AD6311A1;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (((2 * (v21 + v20)) & 0x6CB2749BB5F15E5CLL) - (v21 + v20) + 0x49A6C5B2250750D1) ^ 0x5EB111199BD490A6;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0xEC888CBFDF3BD3D0;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ v11;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (v28 + v27 - ((2 * (v28 + v27)) & 0x6E72A2AF21184034) + 0x37395157908C201ALL) ^ 0x6711EA34772E559ALL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (((0x5540492CCE43BE73 - ((v31 + v30) | 0x5540492CCE43BE73) + ((v31 + v30) | 0xAABFB6D331BC418CLL)) ^ 0xC207C52BCD6B1F44) >> (8 * (v12 & 7u))) ^ *v12;
  v33 = *++v12;
  v34 = __ROR8__(v12 & 0xFFFFFFFFFFFFFFF8, 8);
  v35 = ((2 * (v34 - 0x7653FFD844AF1482)) | 0x6F4364B9E29305D8) - (v34 - 0x7653FFD844AF1482) + 0x485E4DA30EB67D14;
  v36 = v35 ^ 0x56F63FA25F0407ELL;
  v35 ^= 0x480F62C7FF771B8AuLL;
  v37 = (__ROR8__(v36, 8) + v35) ^ a7;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ v10;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (0x83FA91AA55FF72BLL - ((v41 + v40) | 0x83FA91AA55FF72BLL) + ((v41 + v40) | 0xF7C056E55AA008D4)) ^ 0xE0D7824EE473C8A3;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (((2 * (v44 + v43)) & 0x3B1FFFBC03CF245ELL) - (v44 + v43) - 2130202477749310000) ^ 0xEF88C9E2123BE00;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ v11;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (((2 * (v49 + v48)) | 0xB488767D6D706434) - (v49 + v48) + 0x25BBC4C14947CDE6) ^ 0x8A6C805D511A479ALL;
  LOBYTE(v12) = (((__ROR8__(v50, 8) + (v50 ^ __ROR8__(v48, 61))) ^ a8) >> (8 * (v12 & 7u))) ^ v33;
  return (*a6)((v12 | (v32 << 8)) - 2 * ((v12 & 0xE2 | (v32 << 8) & 0x35E2) ^ v12 & 2) - 18976, a2, a3, a4);
}