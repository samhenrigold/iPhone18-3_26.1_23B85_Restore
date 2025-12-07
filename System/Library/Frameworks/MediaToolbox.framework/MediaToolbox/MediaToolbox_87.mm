uint64_t sub_19698AB24@<X0>(unsigned int a1@<W0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, unsigned int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned int a8@<W8>)
{
  v14 = v12 < a1;
  *(a7 + a8) = *(a6 + v8) - (a2 & (2 * *(a6 + v8))) - 20;
  if (v14 == v8 + 1 > ((v9 + a4) & a5) + v10)
  {
    v14 = v11 + v8 + 214 < v12;
  }

  return (*(v13 + 8 * ((!v14 * a3) ^ v9)))();
}

void sub_19698B238(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  *&STACK[0x410] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x2F0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x3F0] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x400] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  STACK[0x230] = v15 & 0xFFFFFFF0;
  *&STACK[0x3D0] = vdupq_n_s64(v7);
  *&STACK[0x3E0] = vdupq_n_s64(v16);
  *&STACK[0x2D0] = vdupq_n_s64(v8);
  *&STACK[0x2E0] = vdupq_n_s64(v14);
  *&STACK[0x2B0] = vdupq_n_s64(v10);
  *&STACK[0x2C0] = vdupq_n_s64(v9);
  *&STACK[0x250] = vdupq_n_s64(a7);
  *&STACK[0x260] = vdupq_n_s64(v13);
  *&STACK[0x290] = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  *&STACK[0x2A0] = vdupq_n_s64(v12);
  *&STACK[0x3B0] = vdupq_n_s64(a1);
  *&STACK[0x3C0] = vdupq_n_s64(v11);
  *&STACK[0x390] = vdupq_n_s64(a3);
  *&STACK[0x3A0] = vdupq_n_s64(a2);
  *&STACK[0x370] = vdupq_n_s64(a4);
  *&STACK[0x380] = vdupq_n_s64(0x64C31C027084DE6CuLL);
  *&STACK[0x350] = vdupq_n_s64(a6);
  *&STACK[0x360] = vdupq_n_s64(a5);
  *&STACK[0x280] = vdupq_n_s64(0xAB3042D228875C41);
  *&STACK[0x270] = xmmword_196EBFA60;
  JUMPOUT(0x19698B378);
}

uint64_t sub_19698BE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  v54 = *v52;
  STACK[0x968] = 0;
  LODWORD(STACK[0x8B4]) = 0;
  return (*(v53 + 8 * (((v54 == 0) * (((v51 + 908086690) & 0xC9DFBF9F ^ 0x5E3) - 3015)) ^ (((v51 + 908086690) & 0xC9DFBF9F) - 3012))))(a1, a2);
}

void sub_19698BF60()
{
  *&STACK[0x3D0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x3E0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x3A0] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x200] = vdupq_n_s64(0xFBFFFFFFFFFFFFFFLL);
  *&STACK[0x410] = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  *&STACK[0x3B0] = vdupq_n_s64(0x8EB890C1F5A7514ELL);
  *&STACK[0x3C0] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x380] = vdupq_n_s64(0xDCED4F79D683836ALL);
  *&STACK[0x390] = vdupq_n_s64(0x26FE75566C512012uLL);
  *&STACK[0x370] = vdupq_n_s64(0xEE76A7BCEB41C1B5);
  *&STACK[0x360] = xmmword_196EBFA60;
  JUMPOUT(0x19698C1F0);
}

uint64_t sub_19698D834@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(v3 + v5) = *(a1 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (v1 - 1169)) ^ v1)))();
}

void sub_19698D904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, uint64_t a19)
{
  a17 = 0;
  a19 = a14;
  a18 = v20 + ((&a17 - 60287223 - 2 * (&a17 & 0xFC681709)) ^ 0xD0BC6A95) * v21 + v23 + 1070;
  (*(v19 + 8 * (v22 + v23 + 851)))(&a17, a2, a3, a4, a5, a6, a7, a8);
  JUMPOUT(0x1969240A8);
}

uint64_t sub_19698D9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(STACK[0x538] + 24);
  STACK[0x5B0] = v7;
  return (*(a6 + 8 * (((v7 != 0) * (((v6 - 1678) | 0x294) - 1706)) ^ v6)))(a1, a2, a3, a4, a5);
}

void sub_19698DA58()
{
  v4 = *(v1 + 24);
  **(v1 + 16) = v0;
  *v4 = v3;
  *(v1 + 4) = *(v2 + 24);
}

uint64_t sub_19698DBBC@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v5 = (v2 - 770) | 0x1309;
  *v9 = a1;
  *v8 = a2;
  v6 = (v5 + 1002870698) & 0xC4395FDE;
  v12 = v5 - (((&v12 | 0x731F3180) - (&v12 & 0x731F3180)) ^ 0x8BC311C1) * v3 + 1224;
  v13 = v11;
  (*(v4 + 8 * (v5 ^ 0x9A6)))(&v12);
  v12 = v6 - (((&v12 | 0xDAF64C04) - (&v12 & 0xDAF64C04)) ^ 0x222A6C45) * v3 + 3391;
  v13 = v10;
  (*(v4 + 8 * (v6 ^ 0x103D)))(&v12);
  return 0;
}

uint64_t sub_19698DBE0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = (a2 - 829) | 0x491u;
  **(a1 + 8) = v5 + v6 + (v7 ^ 0x4B3);
  return (*(v4 + 8 * ((848 * (*(a3 + 24) == v7 + v3)) ^ v7)))();
}

uint64_t sub_19698DC6C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a2 + v5) = *(a1 + v5);
  return (*(v4 + 8 * ((3412 * (v5 == ((v3 + 1511017657) & 0xA5EFB7BF ^ 0x103FLL))) ^ (v3 - 1782))))();
}

uint64_t sub_19698DCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unsigned int a33)
{
  v37 = *(&a30 + v33 + 4);
  v38 = ((2 * v33) & 0xFF7CF778) + (v33 ^ 0xFFBE7BBE) + v34;
  *(a1 + v38) = (HIBYTE(v37) ^ 0x7C) - (((v35 - 58) ^ 0xB5) & (2 * (HIBYTE(v37) ^ 0x7C))) - 20;
  *(a1 + v38 + 1) = (BYTE2(v37) ^ 0x47) - ((2 * (BYTE2(v37) ^ 0x47)) & 0xD8) - 20;
  *(a1 + v38 + 2) = (BYTE1(v37) ^ 7) - ((2 * (BYTE1(v37) ^ 7)) & 0xD8) - 20;
  *(a1 + v38 + 3) = v37 ^ 0x87;
  return (*(v36 + 8 * ((2465 * (v33 + 4 < a33)) ^ v35)))();
}

uint64_t sub_19698DD90(uint64_t a1)
{
  *a1 = 237100009;
  *(a1 + 4) = 0;
  *(a1 + 64) = v2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 17152;
  *(a1 + 8) = v2;
  *(a1 + 16) = v2;
  *(a1 + 24) = v2;
  *(a1 + 32) = v2;
  *(a1 + 40) = v2;
  *(a1 + 48) = v2;
  *(a1 + 56) = v2;
  v3 = STACK[0x3C8];
  *(v3 + 84) = 7;
  *(v3 + 104) = 0;
  *(v3 + 88) = v2;
  *(v3 + 96) = v2;
  *(v3 + 108) = 0;
  *v1 = v3;
  return (STACK[0x3E0])();
}

uint64_t sub_19698DDEC()
{
  STACK[0x750] = v0;
  v3 = (*(v2 + 8 * (v1 ^ 0x1DF8)))(32, 0x103004054B5FA7DLL);
  STACK[0x520] = v3;
  return (*(v2 + 8 * (((v3 == 0) * (29 * (v1 ^ 0x70E) - 3362)) ^ v1)))();
}

void fp_dh_317b9ebff42a3a2f09f67d19747a0915(uint64_t a1)
{
  v1 = 753662761 * ((~a1 & 0x83AC854E | a1 & 0x7C537AB1) ^ 0xE6B67E05);
  v2 = *(a1 + 4) ^ v1;
  v3 = (*a1 - v1);
  if (*(a1 + 8))
  {
    v4 = v3 == 1556;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_19698DF34()
{
  LODWORD(STACK[0x69C]) = v0;
  STACK[0x488] = STACK[0x5D8];
  STACK[0x800] = *(v2 + 8 * (v1 ^ 0xEA3));
  LODWORD(STACK[0x410]) = v3 - 3580;
  LODWORD(STACK[0x400]) = v3 - 3374;
  return (*(v2 + 8 * (((&STACK[0x488] == 0) * (((((v1 ^ 0xEA3) + 5108) ^ 0xEF4) - 2745) ^ ((v1 ^ 0xEA3) + 3421))) ^ ((v1 ^ 0xEA3) + 5108))))();
}

uint64_t sub_19698DF60()
{
  v4 = *STACK[0x3E0];
  v5 = __ROR8__((v4 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v6 = (0x2AF7234D0CC131D4 - v5) & 0x2A199E3A6C7C6131 | (v5 + v1) & 0xD1E661C593839ECELL;
  v7 = v6 ^ 0x67F0DC01036A86E3;
  v6 ^= 0xCFB639969A9CF7BFLL;
  v8 = __ROR8__(v7, 8);
  v9 = (((2 * (v8 + v6)) | 0x1ED977F0C520FDA0) - (v8 + v6) + 0x709344079D6F8130) ^ 0x6BF1CC27E5ADC1AELL;
  v10 = v9 ^ __ROR8__(v6, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (((2 * (v11 + v10)) & 0xAB878F6F884E2F0ELL) - (v11 + v10) + 0x2A3C38483BD8E878) ^ 0xDF9EC9F18E085A71;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = __ROR8__(v12, 8);
  v15 = __ROR8__((0x32FA8FDF7E2CED0CLL - ((v14 + v13) | 0x32FA8FDF7E2CED0CLL) + ((v14 + v13) | 0xCD05702081D312F3)) ^ 0x9466C6E5D40A6DECLL, 8);
  v16 = (0x32FA8FDF7E2CED0CLL - ((v14 + v13) | 0x32FA8FDF7E2CED0CLL) + ((v14 + v13) | 0xCD05702081D312F3)) ^ 0x9466C6E5D40A6DECLL ^ __ROR8__(v13, 61);
  v17 = (((2 * (v15 + v16)) | 0xC9AD8CEC88B7F32) - (v15 + v16) - 0x64D6C676445BF99) ^ 0x6708F14D945A9B6ELL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x64C31C027084DE6CLL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = *(STACK[0x248] + 8 * (v2 - 3495));
  v23 = (((v21 + v20) & 0x63AF45F0EF53838FLL ^ 0x294560A0428381) + ((v21 + v20) & 0x9C50BA0F10AC7C70 ^ 0x10503A0C108C4421) - 1) ^ 0xA539488F29D68A2;
  v24 = v23 ^ __ROR8__(v20, 61);
  v25 = __ROR8__(v23, 8);
  *(v4 + 4) = v0 ^ 0xDD ^ (((0xB80DBCCEE227D4F9 - ((v25 + v24) | 0xB80DBCCEE227D4F9) + ((v25 + v24) | 0x47F243311DD82B06)) ^ 0xECC201E3355F7747) >> (8 * ((v4 + 4) & 7)));
  v26 = __ROR8__((v4 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v27 = (v26 + v1) ^ 0xE1AFA7ACF6E0968ELL;
  v28 = (__ROR8__((v26 + v1) ^ 0x49E9423B6F16E7D2, 8) + v27) ^ 0xE49D77DF873DBF7ELL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0xF5A2F1B9B5D0B209;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x5963B6C555D97F1FLL;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x61459D2AF01F24F7;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x64C31C027084DE6CLL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v3;
  *(v4 + 5) = (((__ROR8__(v38, 8) + (v38 ^ __ROR8__(v37, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v4 + 5) & 7))) ^ 0xDB;
  return v22();
}

uint64_t sub_19698E00C()
{
  v4 = 998242381 * (((v1 | 0xFB94A625) - v1 + (v1 & 0x46B59D8)) ^ 0x51FB3EF3);
  v5 = LODWORD(STACK[0x20C]) - v4 - 1065587238;
  *(v3 - 184) = (LODWORD(STACK[0x42C]) ^ 0x75E6DDB3) + v4 + ((877 * (v0 ^ 0x6AE)) ^ ((v0 ^ 0xF9A) - 1143366958)) + ((2 * LODWORD(STACK[0x42C])) & 0xEBCDBB66);
  *(v3 - 180) = v5;
  *(v3 - 188) = (v0 + 1099) ^ v4;
  *(v3 - 176) = STACK[0x218];
  *(v3 - 200) = &STACK[0x4D8];
  *(v3 - 208) = &STACK[0x38C];
  v6 = (*(v2 + 8 * (v0 + 5195)))(v3 - 208);
  v7 = *(v3 - 192);
  LODWORD(STACK[0x450]) = v7;
  return (*(v2 + 8 * ((3019 * (v7 == 1906281716)) ^ v0)))(v6);
}

uint64_t sub_19698E124()
{
  v3 = 64 - (v0 - 1622544449);
  v4 = 1622544448 - v0;
  if (HIDWORD(v3))
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 >= v3;
  }

  v6 = !v5;
  return (*(v2 + 8 * ((((v1 + 486) ^ 0x15D1) * v6) | v1)))();
}

uint64_t sub_19698E278()
{
  (*(v3 + 8 * (v1 + 2705)))(v0);
  v4 = STACK[0x228];
  LODWORD(STACK[0x464]) = v2;
  STACK[0x6A0] = STACK[0x7E8];
  STACK[0x800] = *(v3 + 8 * (v1 - 3787));
  LODWORD(STACK[0x410]) = v4 - 3580;
  LODWORD(STACK[0x400]) = v4 - 3374;
  return (*(v3 + 8 * (((&STACK[0x6A0] == 0) * ((((v1 + 1283) ^ 0xEF4) - 2745) ^ (v1 - 404))) ^ (v1 + 1283))))();
}

uint64_t sub_19698E438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (*(a6 + 8 * (v6 + 3453)))((v6 + 2381) ^ 0x9976EE86 ^ LODWORD(STACK[0x4B8]), 0x100004077774924, a3, a4, a5);
  v9 = STACK[0x370];
  STACK[0x908] = v8;
  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = 1906239688;
  }

  LODWORD(STACK[0x914]) = v10;
  return (*(v9 + 8 * (((v8 != 0) * (((4 * v6) ^ 0x380C) - 3100)) ^ v6)))();
}

uint64_t sub_19698E4BC@<X0>(uint64_t a1@<X8>)
{
  v5 = (v3 - 2847) | 0xB1Au;
  *(a1 + v2) = 0;
  v6 = v2 + ((v5 - 2938) | 0x40Au) - 1026 != ((v5 - 2914) & v1);
  return (*(v4 + 8 * (v6 | (4 * v6) | v5)))();
}

uint64_t sub_19698E508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t (*a22)(uint64_t), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28)
{
  v31 = 1283153057 * ((((v30 - 144) | 0x913C2900) - ((v30 - 144) & 0x913C2900)) ^ 0xDEE42A37);
  *(v30 - 144) = v31 + (a28 ^ 0xFFC8E57E) + ((2 * a28) & 0x20) + 754925568;
  *(v30 - 136) = a27;
  *(v30 - 128) = (v28 - 2362) ^ v31;
  v32 = (*(v29 + 8 * (v28 ^ 0xE51)))(v30 - 144, a2, a3, a4, a5, a6, a7, a8);
  return a22(v32);
}

uint64_t sub_196993830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int a22, int a23, unsigned int a24, uint64_t a25, char *a26, unsigned int a27)
{
  v30 = 1012216201 * ((-1385045456 - (&a22 | 0xAD71E230) + (&a22 | 0x528E1DCF)) ^ 0xD6279523);
  a27 = v30 + v29 - 1795305762;
  a22 = v30 ^ 0x80F33AC;
  a24 = v30 + 1249100332;
  a25 = a20;
  a26 = &a17;
  v31 = (*(v28 + 8 * (v29 ^ 0x1341)))(&a22, a2, a3, a4, a5, a6, a7, a8);
  return (*(v28 + 8 * (((a23 == v27) * ((v29 ^ 0x1AA3 ^ (a16 - 2473)) + (v29 ^ 0xE5B1EAE))) ^ v29)))(v31);
}

uint64_t fp_dh_ef79ca9f25c1a3acc2aa506fa496c046(uint64_t a1, uint64_t a2)
{
  v2 = (fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_48e08ed9ea9b27d3dbd2f448a82f543c) ^ &v8;
  fp_dh_48e08ed9ea9b27d3dbd2f448a82f543c = 810526117 * v2 + 0x3983E51A1E6C17ABLL;
  fp_dh_f272d8beb7e490dc1fc02e5519da452d = 810526117 * (v2 ^ 0xC67C1AE5E193E855);
  v3 = *(a2 + 4);
  v4 = -91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - (-91 * v2 - 85)) ^ 0x55);
  v5 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v4 ^ fp_dh_085b997b52366f602a7525e2de3d45fc[fp_dh_2105d8695f17c8422a3228296125ea91[v4] ^ 0x7F]) + 583) - 4;
  if (v3 == 763604094)
  {
    __asm { BRAA            X1, X17 }
  }

  if (v3 == 763604101)
  {
    v6 = **(a2 + 8) - 9;
    __asm { BRAA            X2, X17 }
  }

  return 4294925278;
}

uint64_t sub_196993CD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = 0;
  a1[1] = 0;
  return (*(a6 + 8 * (((v6 == 0) * ((5 * ((289 * ((v7 - 850021186) & 0x32AA57E6 ^ 0x15C1)) ^ 0x20C)) ^ 0x733)) | (289 * ((v7 - 850021186) & 0x32AA57E6 ^ 0x15C1)))))();
}

uint64_t sub_196993D54()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_196993DD0(int a1, uint64_t a2)
{
  v7 = a2 - 1;
  *(v5 + v7) ^= *(v2 + (v7 & 0xF)) ^ *(v3 + (v7 & 0xF)) ^ (69 * (v7 & 0xF)) ^ *((v7 & 0xF) + v4 + 2);
  return (*(v6 + 8 * ((7338 * (v7 == 0)) ^ (a1 - 3763))))();
}

uint64_t sub_196993E28(uint64_t a1, uint64_t a2, int a3)
{
  v9 = v3 - 1;
  *(v6 + v9) = *(v5 + v9);
  return (*(v7 + 8 * ((117 * (v9 == (v4 - v8 + 2163) - 6442)) ^ (a3 + v4 + 3523))))(a1, a2);
}

uint64_t sub_196993EA0@<X0>(int a1@<W2>, int a2@<W8>)
{
  v5 = *(v3 + a2 * a1 + 36);
  LODWORD(STACK[0x534]) = v5;
  v6 = v5 + 877 * (v2 ^ 0x6F0) + 881465882;
  v8 = v6 > -588597763 && v6 < SLODWORD(STACK[0x308]);
  return (*(v4 + 8 * ((4540 * v8) ^ v2)))();
}

uint64_t sub_196993F04(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  *a1 = 1498173510;
  *(a1 + 4) = v32 ^ 0x7B ^ v30 ^ 0x3E;
  *(a1 + 5) = 513;
  *(a1 + 7) = 0;
  *(a1 + 8) = -2113929216;
  *(a1 + 12) = 2;
  *(a1 + 13) = *(v29 + 14);
  *(v33 - 128) = a1 + 14;
  *(v33 - 144) = ((((v33 - 144) | 0xC556) - ((v33 - 144) | 0x3AA9) + 15017) ^ 0xB8CA) * a4 + 6847;
  *(v33 - 140) = ((((v33 - 144) | 0x3EF8C556) - ((v33 - 144) | 0xC1073AA9) - 1056490839) ^ 0x122CB8CA) * a4 + v30 - 1629;
  v34 = (*(v31 + 8 * (v30 + 2675)))(v33 - 144, a2, a3);
  *(a1 + 14) = 256;
  return (*(v31 + 8 * ((2362 * (a1 - a29 + (v30 ^ 0x1EDCu) - 3950 < 0x20)) ^ v30)))(v34);
}

uint64_t sub_196994014(uint64_t a1, uint64_t a2)
{
  v8 = a2 + v7;
  v9 = a2 - 1;
  v10 = STACK[0x370];
  *(v4 + v9) = *(v5 + v9) ^ *(v6 + v9) ^ (-87 * v9) ^ *(v8 + 1) ^ *(v2 + v9) ^ 0xEC;
  return (*(v10 + 8 * (((v9 == 0) * ((v3 - 587) ^ 0x1C4D)) ^ v3)))(a1);
}

uint64_t sub_196994078@<X0>(int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = vld4_s8(v3);
  v7.val[0] = v6.val[3];
  v7.val[1] = v6.val[2];
  v7.val[2] = v6.val[1];
  v7.val[3] = v6.val[0];
  vst4_s8(v3, v7);
  return (*(a3 + 8 * (((a2 == 0) * a1) ^ v4)))();
}

void fp_dh_d3a872c34cbd73fe8194a698d07dd7d8(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *a1 ^ (1825732043 * ((-1178899978 - (a1 | 0xB9BB69F6) + (a1 | 0x46449609)) ^ 0x46D2C53E));
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v10[0] = 0x285020DC00000082;
  v10[1] = &v11;
  v9[0] = 0x285020DC00000082;
  v9[1] = &v12;
  v6 = v5[1];
  v15 = v5;
  v16 = v6;
  LODWORD(v14) = v1 + 1283153057 * ((2 * (&v13 & 0x7E730178) - &v13 - 2121466235) ^ 0xCE54FDB2) + 647;
  v13 = v10;
  v17 = v2;
  v18 = v3;
  v7 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v1 ^ 0xFD1)) - 4;
  (*&v7[8 * v1 + 26416])(&v13);
  v8 = *v5;
  LODWORD(v13) = (654144011 * ((((2 * &v13) | 0x9489B750) - &v13 + 901456984) ^ 0xE690A634)) ^ (v1 + 750);
  v14 = v8;
  v15 = v9;
  (*&v7[8 * (v1 ^ 0x1706)])(&v13);
  v13 = v4;
  HIDWORD(v14) = (1621291457 * (&v13 ^ 0x36178199)) ^ (v1 + 701);
  (*&v7[8 * (v1 ^ 0x16B9)])(&v13);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969942C0@<X0>(unint64_t a1@<X8>)
{
  STACK[0x370] = a1;
  *&STACK[0x350] = vdupq_n_s64(0x38uLL);
  *&STACK[0x3E0] = vdupq_n_s64(0x9DEA8F311324A00DLL);
  *&STACK[0x3F0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x3C0] = vdupq_n_s64(0xF0A3D2B2DAD0ADA6);
  *&STACK[0x3D0] = vdupq_n_s64(v4);
  *&STACK[0x3B0] = vdupq_n_s64(0xF4A3D2B2DAD0ADA6);
  *&STACK[0x330] = vdupq_n_s64(0xEAB5CC19324E229uLL);
  *&STACK[0x340] = vdupq_n_s64(0xE1FF25490A01E245);
  *&STACK[0x320] = vdupq_n_s64(0x5424D64A200F187uLL);
  v5 = 3 * (v3 ^ 0x8AA);
  *&STACK[0x300] = vdupq_n_s64(0xD55F4D68987D3CBBLL);
  *&STACK[0x310] = xmmword_196EBFBD0;
  *&STACK[0x2E0] = vdupq_n_s64(0xB33FBF243F06FBC9);
  *&STACK[0x2F0] = vdupq_n_s64(0x667F7E487E0DF792uLL);
  *&STACK[0x2C0] = vdupq_n_s64(0x7647E08E13D90E2uLL);
  *&STACK[0x2D0] = vdupq_n_s64(0xE8836A3EEB59375ELL);
  *&STACK[0x2A0] = vdupq_n_s64(0xA8D9890C4D09A340);
  *&STACK[0x2B0] = vdupq_n_s64(0x7C4DC0FB8F61378EuLL);
  *&STACK[0x390] = vdupq_n_s64(0x58FB3C07CCBDF75AuLL);
  *&STACK[0x3A0] = vdupq_n_s64(0xB1F6780F997BEEB4);
  *&STACK[0x280] = vdupq_n_s64(0x60B83CEF67356D1BuLL);
  *&STACK[0x290] = vdupq_n_s64(0x836EA13BF7F542CCLL);
  *&STACK[0x260] = vdupq_n_s64(0xB9699EEB72020FC9);
  *&STACK[0x270] = vdupq_n_s64(0xBB5B6BF4C59B502uLL);
  *&STACK[0x360] = xmmword_196EBFA60;
  v6 = STACK[0x248];
  STACK[0x9B0] = *(STACK[0x248] + 8 * v2);
  v7 = ((v5 - 1463555141) & 0x573C0E3E ^ 0xFFFFFFFFFFFFF1F3) + v1 < 0xFFFFFFFFFFFFFFF0;
  return (*(v6 + 8 * ((v7 | (8 * v7)) ^ v5)))();
}

uint64_t sub_196994590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(v7 + 4);
  *(a1 + 20) = v8;
  return (*(a6 + 8 * ((((v6 - 816307413) & 0x30A7DF9F ^ 0x14F) * (v8 != 0)) ^ v6)))();
}

uint64_t sub_196994788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 + (v12 + 3144) - 5440) = (&a10 ^ 0xBA) * (&a10 + 17);
  *(v10 + 30) = (&a10 ^ 0xBB) * (&a10 + 18);
  return (*(v11 + 8 * v12))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_196994870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = (*(v66 + 8 * (v65 + 310)))(LODWORD(STACK[0x480]) ^ 0x9976F8DB, 0x100004077774924, a3, a4, a5, a6, a7, a8);
  STACK[0xA88] = v67;
  if (v67)
  {
    a65 = 1906281716;
  }

  LODWORD(STACK[0xA94]) = a65;
  return (*(v66 + 8 * (((v67 != 0) * ((v65 + 98415492) & 0xFA22377D ^ 0x450)) ^ v65)))();
}

void sub_1969948FC(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  a4 = v7 - ((2 * (&a4 & 0x6641C0D8) - &a4 + 431898404) ^ 0xE1621F65) * v5 + 4200;
  a5 = a1;
  (*(v6 + 8 * (v7 ^ 0x1DC6)))(&a4);
  JUMPOUT(0x196994958);
}

uint64_t sub_1969949D0@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v6 = v5 < v3;
  *(v4 + v2) = 0;
  v7 = v2 + 1;
  if (v6 == v7 > 0xFFFFFFFF35B9E9A0)
  {
    v6 = v7 + v3 < v5;
  }

  return (*(a1 + 8 * ((v6 * (((a2 + 481921114) & 0xE34673FC) - 365)) ^ a2)))();
}

uint64_t sub_196994BA8()
{
  v3 = *(v1 + 8 * (((v2 + 32 - STACK[0x808] >= ((v0 + 160866161) & 0xF6696DFF ^ 0x3D1) - 3583) * (5 * ((v0 + 160866161) & 0xF6696DFF ^ 0xD67) + 52)) ^ (v0 + 160866161) & 0xF6696DFF));
  STACK[0x9A0] = *(v1 + 8 * v0);
  return v3(0xC17A025099347672, 0xB64EDDBD1051F4D4, 0);
}

uint64_t sub_196994D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, unsigned int a16, int a17, unsigned int a18, uint64_t a19, char *a20, unsigned int a21)
{
  v24 = 1012216201 * ((((2 * &a16) | 0x5A359D74) - &a16 - 756731578) ^ 0xA9B34656);
  a21 = v24 + v23 - 1795305139;
  a19 = a12;
  a20 = &a14;
  a16 = v24 ^ 0x80F33AA;
  a18 = v24 - 1727888643;
  v25 = (*(v21 + 8 * (v23 ^ 0x1DD0)))(&a16, a2, a3, a4, a5, a6, a7, a8);
  return (*(v21 + 8 * (((a17 == (v23 ^ 0x5EC ^ (v22 + 347))) * ((v23 + 594802647) & 0x2DF ^ 0x2DF)) ^ v23)))(v25);
}

void sub_196994DE0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, uint64_t a19, uint64_t a20, unsigned int a21, uint64_t a22)
{
  v25 = (v22 + 578816561) & 0xDD7FEFD7;
  v26 = (v25 - 1611569586) & 0x600E9BF7;
  *a4 = a1;
  *a11 = a18 ^ (v23 + 1152) ^ v25;
  a22 = a16;
  a21 = v26 - 1790939281 * ((2 * (&a21 & 0x648B9F18) - &a21 + 460611812) ^ 0xE3A840A5) + 3599;
  (*(v24 + 8 * (v26 ^ 0x136D)))(&a21, a2, a3);
  JUMPOUT(0x196994EA8);
}

void MpmZulZW()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0CB90 + (*(off_1F0B0C400 + (-91 * (fp_dh_f5ed92673e7d2638522c198d7d8b73a7 ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d))) ^ 0xCu)) ^ (-91 * (fp_dh_f5ed92673e7d2638522c198d7d8b73a7 ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d))) + 201);
  v1 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - *v0) ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - *v0) ^ 0x55))] ^ 0x1D]) + 385);
  v2 = 810526117 * (&v4[*v0 + *(v1 - 4)] ^ 0xC67C1AE5E193E855);
  *v0 = v2;
  *(v1 - 4) = v2;
  v5[0] = 1575331711 * ((v5 & 0x3192108A | ~(v5 | 0x3192108A)) ^ 0xA2367A77) + 1655634431;
  LOBYTE(v1) = -91 * ((*(v1 - 4) + *v0) ^ 0x55);
  v3 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_f5ed92673e7d2638522c198d7d8b73a7) ^ 0x55)) ^ fp_dh_9f3a64ae35be94ec7344ce35efe855d0[fp_dh_6f808fec9028d604a6d723482abcf3ae[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_f5ed92673e7d2638522c198d7d8b73a7) ^ 0x55))] ^ 0xA7]) + 449) - 4;
  (*&v3[8 * (*(off_1F0B0C8F0 + (*(off_1F0B0CD68 + v1 - 4) ^ 0x4Eu) - 4) ^ v1) + 53032])(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_196995220()
{
  v2 = STACK[0x7E8];
  LODWORD(STACK[0x464]) = 1906281716;
  *STACK[0x6B8] = v2;
  LODWORD(STACK[0x824]) = 1906281716;
  return (*(v1 + 8 * ((((((v0 - 772843953) & 0x2E10AE5C) + 1811396307) & 0x94083B1C) + 4866) ^ (3 * ((v0 - 772843953) & 0x2E10AE5C ^ 0xCAD)) ^ (((v0 - 772843953) & 0x2E10AE5C) - 1249))))();
}

void sub_196995260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  *v13 = a1;
  *v12 = (v11 + 768) ^ (v14 + 3441) ^ a11;
  JUMPOUT(0x1968D55E0);
}

void sub_196995328()
{
  LOWORD(STACK[0x9DE]) = v0;
  LODWORD(STACK[0x410]) = v0;
  JUMPOUT(0x196A17488);
}

void sub_19699539C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *v32 = ((((a20 - v31) | (v31 - a20)) >> 31) ^ 0x7FFFFFFF) + (v31 ^ 0x1D7 ^ (v31 + 470));
  (*(v33 + 8 * (v31 ^ 0x1A41)))(a31, a2, a3, a4, a5, a6, a7, a8);
  JUMPOUT(0x1969953FCLL);
}

uint64_t sub_1969954A4(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v8 = *(v6 + a5 + 16);
  v9 = (a2 + a5);
  *(v9 - 1) = *(v6 + a5);
  *v9 = v8;
  return (*(v7 + 8 * (((v5 == a5) * a4) ^ a3)))(a1);
}

uint64_t sub_1969955A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, uint64_t a19, unsigned int a20, unsigned int a21, uint64_t a22, char a23)
{
  v29 = (((&a16 | 0xD1250407) - (&a16 | 0x2EDAFBF8) + 786103288) ^ 0x4CBE596) * v27;
  a20 = v28 - v29 + 1053;
  a21 = (a13 ^ 0x57BFFDFD) - v29 + (v26 & 0xAF7FFBFA) - 312588648 + ((v28 - 511) ^ 0x1D17);
  a23 = (((&a16 | 7) - (&a16 | 0xF8) - 8) ^ 0x96) * v27 + 102;
  a18 = v23;
  a19 = v25 + 36;
  a22 = v25;
  a16 = a11;
  (*(v24 + 8 * (v28 + 3142)))(&a16, a2, a3, a4, a5, a6, a7, a8);
  return (*(v24 + 8 * ((8058 * (a17 == 1906281716)) ^ v28)))(a14);
}

void fp_dh_142e98d6f3252e312dc2850dbfeb5290(uint64_t a1)
{
  v1 = 1283153057 * ((2 * (a1 & 0x1E30AF5D) - a1 - 506507102) ^ 0xAE175395);
  __asm { BRAA            X1, X17 }
}

uint64_t sub_1969957D8()
{
  v5 = v1 + v7 + 1491;
  *(v4 - 128) = v5 - 1790939281 * ((((2 * (v4 - 136)) | 0x4A4D3D34) - (v4 - 136) - 623287962) ^ 0xDDFABEDB) + 1489674037;
  *v0 = v3;
  (*(v2 + 8 * (v1 + v7 - 1469341392)))(v4 - 136);
  return (v8 ^ 0xFB9FCCF7) + 1979695101 + ((v5 ^ 0xA0ABE6B7) & (2 * v8)) - 1906281716;
}

uint64_t sub_1969959DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = STACK[0x560];
  STACK[0x590] = STACK[0x560];
  v10 = *(STACK[0x738] + 100);
  v11 = STACK[0x738] + 104;
  v12 = *(STACK[0x738] + 120);
  v13 = STACK[0x4B0];
  v14 = ((LODWORD(STACK[0x4A4]) ^ (v6 - 1081469776)) + 1081468247) ^ ((LODWORD(STACK[0x4A4]) ^ 0xA25B1B61) + 1571087519) ^ ((LODWORD(STACK[0x4A4]) ^ 0x84A7F913) + 2069366509);
  v15 = (v8 - 224) & 0x829D1B65;
  v16 = 753662761 * ((v8 - 2103633275 - 2 * v15) ^ 0xE787E02E);
  *(v8 - 176) = v16 + 1380726813;
  *(v8 - 184) = v9;
  v17 = -753662761 * ((v8 - 2103633275 - 2 * v15) ^ 0xE787E02E);
  *(v8 - 200) = v11;
  *(v8 - 192) = ((5 * (v6 ^ 0x180)) ^ 0x7EBFE1B2) + v16 + (v12 ^ 0xBBF3FFDF) + ((2 * v12) & 0x77E7FFBE);
  *(v8 - 188) = v17 + 183904433 * v10 + 1045703498;
  *(v8 - 168) = v13;
  *(v8 - 216) = v9;
  *(v8 - 208) = v17 + 286780367 * v14 + 1229026305;
  *(v8 - 204) = v16 + v6 + 12;
  v18 = (*(a6 + 8 * (v6 + 5435)))(v8 - 224);
  return (*(STACK[0x370] + 8 * ((3181 * (*(v8 - 224) == v7)) ^ v6)))(v18);
}

uint64_t sub_196995B6C@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, unint64_t a38)
{
  v40 = STACK[0x228] + 3038;
  v41 = (v38 ^ a1) + STACK[0x2B0];
  STACK[0x9F0] = v41;
  return (*(v39 + 8 * (v40 ^ (1019 * (v41 <= a38)))))();
}

uint64_t sub_196995C24@<X0>(int a1@<W8>)
{
  v3 = a1 ^ 0xC95;
  (*(v2 + 8 * (a1 ^ 0x1F17)))();
  *(v1 + 24) = 0;
  (*(v2 + 8 * (v3 ^ 0x1382)))(v1);
  return (STACK[0x840])();
}

void sub_196995CD4()
{
  v3 = *(v0 + 16);
  v2 = (v0 + 16);
  v1[16] = *v1 ^ v3;
  v4 = v1 + 16;
  v4[1] = *(v4 - 15) ^ v2[1];
  v4[2] = *(v4 - 14) ^ v2[2];
  v4[3] = *(v4 - 13) ^ v2[3];
  v4[4] = *(v4 - 12) ^ v2[4];
  v4[5] = *(v4 - 11) ^ v2[5];
  v4[6] = *(v4 - 10) ^ v2[6];
  v4[7] = *(v4 - 9) ^ v2[7];
  v4[8] = *(v4 - 8) ^ v2[8];
  v4[9] = *(v4 - 7) ^ v2[9];
  v4[10] = *(v4 - 6) ^ v2[10];
  v4[11] = *(v4 - 5) ^ v2[11];
  v4[12] = *(v4 - 4) ^ v2[12];
  v4[13] = *(v4 - 3) ^ v2[13];
  v4[14] = *(v4 - 2) ^ v2[14];
  v4[15] = *(v4 - 1) ^ v2[15];
  JUMPOUT(0x196995DF0);
}

uint64_t sub_196996250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, char a12, int a13)
{
  a12 = ((*(v15 + 7) ^ 0x77) + ((2 * *(v15 + 7)) & 0xEF) - 5) ^ (41 * (((&a11 | 0x4F) - &a11 + (&a11 & 0xB0)) ^ 4));
  a13 = 753662761 * (((&a11 | 0xF9B2ED4F) - &a11 + (&a11 & 0x64D12B0)) ^ 0x9CA81604) + 4399 + v13;
  v16 = (*(v14 + 8 * (v13 ^ 0x19F1)))(&a11, a2, a3, a4, a5, a6, a7, a8);
  return (*(v14 + 8 * ((4171 * (a11 == 1906281716)) ^ v13)))(v16);
}

uint64_t sub_196996300@<X0>(int a1@<W8>)
{
  v4 = (a1 ^ 0x878F9E81) & (2 * ((((v1 - 1329) | 0x14B2) ^ 0xD7AFC8DF) & a1)) ^ (((v1 - 1329) | 0x14B2) ^ 0xD7AFC8DF) & a1;
  v5 = ((2 * (a1 ^ 0x8DC83CC9)) ^ 0xB4CFC7DA) & (a1 ^ 0x8DC83CC9) ^ (2 * (a1 ^ 0x8DC83CC9)) & 0x5A67E3EC;
  v6 = (v5 ^ 0x1047C185) & (4 * v4) ^ v4;
  v7 = ((4 * (v5 ^ 0x4A202025)) ^ 0x699F8FB4) & (v5 ^ 0x4A202025) ^ (4 * (v5 ^ 0x4A202025)) & 0x5A67E3EC;
  v8 = (v7 ^ 0x480783A9) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x12606049)) ^ 0xA67E3ED0) & (v7 ^ 0x12606049) ^ (16 * (v7 ^ 0x12606049)) & 0x5A67E3E0;
  v10 = v8 ^ 0x5A67E3ED ^ (v9 ^ 0x266222D) & (v8 << 8);
  return (*(v2 + 8 * ((1993 * ((v3 ^ (4 * a1) ^ (8 * ((v10 << 16) & 0x1A670000 ^ v10 ^ ((v10 << 16) ^ 0x3ED0000) & (((v9 ^ 0x5801C12D) << 8) & 0x1A670000 ^ 0x18040000 ^ (((v9 ^ 0x5801C12D) << 8) ^ 0x7E30000) & (v9 ^ 0x5801C12D))))) == -1633131528)) ^ v1)))();
}

uint64_t sub_196996824@<X0>(int a1@<W0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = (v6 + (a1 ^ 0x122Du) - 5468) & ((a1 + 2909) - 4756);
  v12 = a2 > 0xF && (1 - a3 + v4 - v6 + v8) > 0xF && (1 - a3 + v3 - v6 + v8) > 0xF && (-a3 - v6 + v5 + v8 + 2) > 0xF;
  return (*(v7 + 8 * ((27 * v12) ^ a1)))();
}

uint64_t sub_196996CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, int a19, char *a20, unsigned int a21)
{
  a21 = 1498 - 1825732043 * (((&a19 | 0x8BEA9F9D) - &a19 + (&a19 & 0x74156060)) ^ 0x8B7CCCAA);
  a20 = &a16;
  v22 = (*(v21 + 53584))(&a19, a2, a3, a4, a5, a6, a7, a8);
  return (*(v21 + 8 * ((90 * (a19 != 1906281716)) | 0x224u)))(v22);
}

uint64_t sub_196996EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x800]) = STACK[0x320];
  LODWORD(STACK[0x43C]) = STACK[0x330];
  v8 = 27 * (v6 ^ 0x363);
  LODWORD(STACK[0x48C]) = STACK[0x340];
  LODWORD(STACK[0x44C]) = v7;
  v11 = 57 * (v8 ^ 0xBD);
  LODWORD(STACK[0x6EC]) = 1906239693;
  STACK[0x6F8] = *(a6 + 8 * v8);
  STACK[0x508] = &STACK[0x5F0];
  v9 = STACK[0x5F0];
  STACK[0x5A8] = STACK[0x5F0];
  return (*(a6 + 8 * ((197 * (((v9 == 0) ^ (v11 - 76)) & 1)) ^ v11)))();
}

void sub_196996EF0()
{
  LODWORD(STACK[0x800]) = STACK[0x320];
  LODWORD(STACK[0x43C]) = STACK[0x330];
  LODWORD(STACK[0x48C]) = STACK[0x340];
  LODWORD(STACK[0x44C]) = v0;
  JUMPOUT(0x196996F18);
}

uint64_t sub_196996F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = (v6 - 416) | 0x905;
  v8 = STACK[0x580];
  v9 = STACK[0x798];
  STACK[0x608] = *(a6 + 8 * v6);
  STACK[0x3A8] = &STACK[0x618];
  LODWORD(STACK[0x74C]) = v9;
  STACK[0x510] = v8;
  STACK[0x610] = 0;
  LODWORD(STACK[0x6D4]) = -1720256293;
  STACK[0x740] = 0x25B2F1AA6CA5FEE2;
  STACK[0x5B8] = 0;
  v10 = (*(a6 + 8 * (v7 ^ 0x1390)))(16, 0x20040A4A59CD2, a3, a4, a5);
  v11 = STACK[0x370];
  STACK[0x398] = v10;
  return (*(v11 + 8 * (((v10 != 0) * (((v7 - 1300) | 0x1254) - 5615)) ^ v7)))();
}

void sub_196996FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  v19 = (a3 + v17);
  *v19 = v15;
  v19[1] = v16;
  v19[2] = v18;
  *(v17 + a3 + 57 * (a15 ^ 0x7E1u) - 225) = a7;
  JUMPOUT(0x196997014);
}

void fp_dh_3803da1879708cc00f43786bb05af425(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 4) - 1012216201 * (((a1 | 0x42CF86CA) - (a1 & 0x42CF86CA)) ^ 0xC6660E26);
  v2 = *(a1 + 8);
  v3 = 455395931 * ((2 * (&v5 & 0x535B4690) - &v5 + 748992873) ^ 0x5A55E7A5);
  v5 = v3 ^ 0x56CDB657;
  v8 = v1 + v3 + 3176;
  v6 = v2 + 48;
  v7 = v2;
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 - 2952) - 4;
  (*&v4[8 * (v1 ^ 0x152A)])(&v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969972F0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v13 = &a10 + 4 * v10 + 16;
  v14 = vdupq_n_s32(0x9DC3156D);
  *(v13 - 1) = v14;
  *v13 = v14;
  return (*(v12 + 8 * (((2 * ((((a1 & 0xFFFFFFFFFFFFFFF8) == 8) ^ ((v11 ^ 0xF2) + 14)) & 1)) & 0xFB | (4 * ((((a1 & 0xFFFFFFFFFFFFFFF8) == 8) ^ ((v11 ^ 0xF2) + 14)) & 1))) ^ ((v11 ^ 0x14F2) - 2519))))();
}

uint64_t sub_19699735C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v35 = v34 - 144;
  *(v34 - 136) = v31;
  *(v34 - 144) = 998242381 * ((2 * ((v34 - 144) & 0x6F3FC6E8) - (v34 - 144) - 1866450672) ^ 0x3AAFA1C6) + 1135419499 + v33 - 3424;
  (*(a3 + 8 * (v33 + 2349)))(v34 - 144, a2);
  v36 = 1283153057 * (((v35 | 0x8D4F68D7) - v35 + (v35 & 0x72B09728)) ^ 0xC2976BE0);
  v37 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v33 ^ 0x11C2)) - 8;
  *(v34 - 144) = v31;
  *(v34 - 136) = v37;
  *(v34 - 128) = v33 + 624 + v36;
  *(v34 - 124) = v36 + 814017574;
  (*(a31 + 8 * (v33 ^ 0xBD0)))(v34 - 144);
  v38 = 1283153057 * (((v35 | 0x98D10ED1) + (~v35 | 0x672EF12E)) ^ 0xD7090DE7);
  *(v34 - 128) = v33 + 624 + v38;
  *(v34 - 124) = v38 + 814017530;
  *(v34 - 144) = v31;
  *(v34 - 136) = a14;
  v39 = (*(a31 + 8 * (v33 + 2384)))(v34 - 144);
  return sub_1969974E8(v39, v40, a31, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v32 - v31);
}

uint64_t sub_1969974E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unint64_t a29)
{
  *v30 = *v29;
  v30[1] = v29[1];
  v30[2] = v29[2];
  v30[3] = v29[3];
  v30[4] = v29[4];
  v30[5] = v29[5];
  return (*(a3 + 8 * ((((v31 ^ 0x193) - 2433) * (a29 < v32)) ^ v31)))(a1, a2);
}

uint64_t sub_196997550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, char a27, uint64_t a28, int a29, char a30, __int16 a31, char a32, int a33, int a34, char a35)
{
  v38 = 1621291457 * ((v37 - 160) ^ 0x36178199);
  STACK[0x310] = &a32;
  STACK[0x320] = &a27;
  STACK[0x300] = &a35;
  STACK[0x330] = &a30;
  STACK[0x308] = a18;
  *(v37 - 120) = v38 + v35 + 2799;
  *(v37 - 132) = v38 + a6 + 273763806 + 3 * (v35 ^ 0x75A);
  v39 = (*(v36 + 8 * (v35 ^ 0x1882)))(v37 - 160, a2, a3, a4, a5);
  return (*(v36 + 8 * ((3278 * (*(v37 - 136) == 1906281716)) ^ v35)))(v39, 570499551);
}

uint64_t sub_1969976C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, int a15, int *a16, unsigned int a17, unsigned int a18, int *a19, unsigned int a20, unsigned int a21)
{
  v26 = 1825732043 * ((2 * (&a16 & 0x61192698) - &a16 + 518445411) ^ 0x1E708A54);
  a17 = v26 + 1865116605;
  a18 = (v25 + 5110) ^ v26;
  a16 = v24;
  (*(v22 + 8 * (v25 + 6318)))(&a16, a2, a3, a4, a5, a6, a7, a8);
  v27 = 489239129 * ((~(&a16 | 0x58FE51EE) + (&a16 & 0x58FE51EE)) ^ 0x1E298D27);
  a19 = v24;
  a16 = &a12;
  a20 = v27 + 426488402;
  a21 = v27 ^ 0x99603FFC;
  a17 = v27 + v25 + 3651;
  (*(v22 + 8 * (v25 + 6334)))(&a16);
  v28 = v21[1];
  *v21 += a12;
  v21[1] = v28 + a13;
  v29 = v21[3];
  v21[2] += a14;
  v21[3] = v29 + a15;
  a17 = 1068996913 * ((&a16 - 1718672156 - 2 * (&a16 & 0x998F24E4)) ^ 0x4C61C575) + 1738598562 + v25 + 392;
  a16 = v24;
  a19 = v21;
  v30 = (*(v22 + 8 * (v25 + 6306)))(&a16);
  return (*(v22 + 8 * ((22 * ((v25 ^ 0xB ^ (v23 - 1381547621 < (v25 ^ 0xF70u) - 3514)) & 1)) ^ v25)))(v30);
}

uint64_t sub_196997908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, unsigned int a15, uint64_t a16)
{
  v21 = *(v16 + 4) ^ v19;
  v22 = 1621291457 * ((1439337116 - (&a13 | 0x55CA8A9C) + (&a13 | 0xAA357563)) ^ 0x9C22F4FA);
  a16 = a10;
  a14 = v22 + v20 - 597;
  a15 = ((24 * (v20 ^ 0x703) - 307774919) * v21 + 1955029302) ^ v22;
  v23 = (*(v17 + 8 * (v20 + 4995)))(&a13, a2, a3, a4, a5, a6, a7, a8);
  return (*(v17 + 8 * ((3172 * (a13 == v18)) ^ v20)))(v23);
}

uint64_t sub_1969979D8(uint64_t a1)
{
  v8 = (*(v3 + 8 * (v6 ^ 0x19B3)))(a1, 0);
  if (v8 == 16)
  {
    v5 = -42029;
    result = a1;
    goto LABEL_7;
  }

  v9 = v8;
  result = a1;
  if (v9 == 12)
  {
LABEL_7:
    result = (*(v3 + 8 * (v2 + 5971)))(result);
    goto LABEL_8;
  }

  if (v9)
  {
    v5 = -42030;
    goto LABEL_7;
  }

  v5 = 0;
  *v4 = a1;
LABEL_8:
  *v1 = v5;
  return result;
}

uint64_t sub_196997BE4(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8)
{
  v21 = v9 - 16;
  v22.i64[0] = v21 + v10 - 8;
  v22.i64[1] = v21 + v10 - 9;
  v23.i64[0] = v21 + v10 - 6;
  v23.i64[1] = v21 + v10 - 7;
  v24.i64[0] = v21 + v10 + 2;
  v24.i64[1] = v21 + v10 + 1;
  v25.i64[0] = v21 + v10 + 4;
  v25.i64[1] = v21 + v10 + 3;
  v26.i64[0] = v21 + v10 + 6;
  v26.i64[1] = v21 + v10 + 5;
  v27.i64[0] = v21 + v10;
  v27.i64[1] = v21 + v10 + v12 + 7;
  v28 = vandq_s8(v27, a1);
  v29 = vandq_s8(v26, a1);
  v30 = vandq_s8(v25, a1);
  v31 = vandq_s8(v24, a1);
  v32 = vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL);
  v33 = vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL);
  v34 = vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL);
  v35 = vsraq_n_u64(vshlq_n_s64(v28, 0x38uLL), v28, 8uLL);
  v36 = vaddq_s64(v33, a3);
  v37 = vaddq_s64(v32, a3);
  v38 = veorq_s8(v37, a4);
  v39 = veorq_s8(v36, a4);
  v40 = veorq_s8(v36, a5);
  v41 = veorq_s8(v37, a5);
  v42 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), v40), a6);
  v43 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), v41), a6);
  v44 = vsraq_n_u64(vshlq_n_s64(v40, 3uLL), v40, 0x3DuLL);
  v45 = veorq_s8(v43, vsraq_n_u64(vshlq_n_s64(v41, 3uLL), v41, 0x3DuLL));
  v46 = veorq_s8(v42, v44);
  v47 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v48 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v46);
  v49 = veorq_s8(vaddq_s64(v47, v45), a7);
  v50 = veorq_s8(v48, a7);
  v51 = vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL);
  v52 = veorq_s8(v50, vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL));
  v53 = veorq_s8(v49, v51);
  v54 = vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL);
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v53);
  v56 = veorq_s8(vaddq_s64(v54, v52), a8);
  v57 = veorq_s8(v55, a8);
  v58 = vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL);
  v59 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL));
  v60 = veorq_s8(v56, v58);
  v61 = vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL);
  v62 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v60);
  v63 = veorq_s8(vaddq_s64(v61, v59), v14);
  v64 = veorq_s8(v62, v14);
  v65 = vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL);
  v66 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v67 = veorq_s8(v63, v65);
  v68 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v67);
  v70 = veorq_s8(vaddq_s64(v68, v66), v15);
  v71 = veorq_s8(v69, v15);
  v72 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v73 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v74 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v73);
  v76 = vaddq_s64(v74, v72);
  v77 = veorq_s8(vaddq_s64(vsubq_s64(v76, vandq_s8(vaddq_s64(v76, v76), v16)), v17), v18);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(v75, vandq_s8(vaddq_s64(v75, v75), v16)), v17), v18);
  v79 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v80 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v73.i64[0] = v21 + v10 - 4;
  v73.i64[1] = v21 + v10 - 5;
  v81 = vaddq_s64(v34, a3);
  v170.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), veorq_s8(v77, v79)), v19), vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), a2)));
  v170.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v80), v19), vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), a2)));
  v82 = veorq_s8(v81, a4);
  v83 = veorq_s8(v81, a5);
  v84 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v83), a6);
  v85 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v86 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v85), a7);
  v87 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v88 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v87), a8);
  v89 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v90 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v89), v14);
  v91 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v92 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91), v15);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93);
  v95 = veorq_s8(vaddq_s64(vsubq_s64(v94, vandq_s8(vaddq_s64(v94, v94), v16)), v17), v18);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v97 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v95.i64[0] = v21 + v10 - 2;
  v95.i64[1] = v21 + v10 - 3;
  v98 = vaddq_s64(v97, v96);
  v99 = vandq_s8(v95, a1);
  v100 = vaddq_s64(v35, a3);
  v170.val[0] = vshlq_u64(veorq_s8(v98, v19), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), a2)));
  v101 = veorq_s8(v100, a4);
  v102 = veorq_s8(v100, a5);
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), a6);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), a7);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), a8);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), v14);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), v15);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(v113, vandq_s8(vaddq_s64(v113, v113), v16)), v17), v18);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v116 = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v117 = vandq_s8(v73, a1);
  v118 = vaddq_s64(v116, v115);
  v119 = vandq_s8(v23, a1);
  v170.val[3] = vshlq_u64(veorq_s8(v118, v19), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), a2)));
  v120 = vandq_s8(v22, a1);
  v121 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v122 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), a3);
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), a3);
  v120.i64[0] = vqtbl4q_s8(v170, v20).u64[0];
  v170.val[0] = veorq_s8(v124, a4);
  v170.val[1] = veorq_s8(v123, a4);
  v125 = veorq_s8(v123, a5);
  v126 = veorq_s8(v124, a5);
  v170.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[1], 0x38uLL), v170.val[1], 8uLL), v125), a6);
  v170.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[0], 0x38uLL), v170.val[0], 8uLL), v126), a6);
  v170.val[2] = vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL);
  v127 = veorq_s8(v170.val[0], vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v128 = veorq_s8(v170.val[1], v170.val[2]);
  v170.val[2] = vsraq_n_u64(vshlq_n_s64(v170.val[0], 0x38uLL), v170.val[0], 8uLL);
  v170.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[1], 0x38uLL), v170.val[1], 8uLL), v128);
  v170.val[1] = veorq_s8(vaddq_s64(v170.val[2], v127), a7);
  v170.val[0] = veorq_s8(v170.val[0], a7);
  v170.val[2] = vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL);
  v129 = veorq_s8(v170.val[0], vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v130 = veorq_s8(v170.val[1], v170.val[2]);
  v170.val[2] = vsraq_n_u64(vshlq_n_s64(v170.val[0], 0x38uLL), v170.val[0], 8uLL);
  v170.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[1], 0x38uLL), v170.val[1], 8uLL), v130);
  v170.val[1] = veorq_s8(vaddq_s64(v170.val[2], v129), a8);
  v170.val[0] = veorq_s8(v170.val[0], a8);
  v170.val[2] = vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL);
  v131 = veorq_s8(v170.val[0], vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v132 = veorq_s8(v170.val[1], v170.val[2]);
  v170.val[2] = vsraq_n_u64(vshlq_n_s64(v170.val[0], 0x38uLL), v170.val[0], 8uLL);
  v170.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[1], 0x38uLL), v170.val[1], 8uLL), v132);
  v170.val[1] = veorq_s8(vaddq_s64(v170.val[2], v131), v14);
  v170.val[0] = veorq_s8(v170.val[0], v14);
  v170.val[2] = vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL);
  v133 = veorq_s8(v170.val[0], vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v134 = veorq_s8(v170.val[1], v170.val[2]);
  v170.val[2] = vsraq_n_u64(vshlq_n_s64(v170.val[0], 0x38uLL), v170.val[0], 8uLL);
  v170.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[1], 0x38uLL), v170.val[1], 8uLL), v134);
  v170.val[1] = veorq_s8(vaddq_s64(v170.val[2], v133), v15);
  v170.val[0] = veorq_s8(v170.val[0], v15);
  v170.val[2] = vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL);
  v135 = veorq_s8(v170.val[0], vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v136 = veorq_s8(v170.val[1], v170.val[2]);
  v170.val[2] = vsraq_n_u64(vshlq_n_s64(v170.val[0], 0x38uLL), v170.val[0], 8uLL);
  v170.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[1], 0x38uLL), v170.val[1], 8uLL), v136);
  v170.val[1] = vaddq_s64(v170.val[2], v135);
  v170.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v170.val[1], vandq_s8(vaddq_s64(v170.val[1], v170.val[1]), v16)), v17), v18);
  v170.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v170.val[0], vandq_s8(vaddq_s64(v170.val[0], v170.val[0]), v16)), v17), v18);
  v137 = vaddq_s64(v121, a3);
  v170.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[1], 0x38uLL), v170.val[1], 8uLL), veorq_s8(v170.val[1], vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL))), v19), vnegq_s64(vandq_s8(vshlq_n_s64(v22, 3uLL), a2)));
  v170.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[0], 0x38uLL), v170.val[0], 8uLL), veorq_s8(v170.val[0], vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL))), v19), vnegq_s64(vandq_s8(vshlq_n_s64(v23, 3uLL), a2)));
  v138 = veorq_s8(v137, a4);
  v139 = veorq_s8(v137, a5);
  v140 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139), a6);
  v141 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v142 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v141), a7);
  v143 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL));
  v144 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v143), a8);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v146 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145), v14);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v148 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147), v15);
  v149 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v150 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v149);
  v151 = veorq_s8(vaddq_s64(vsubq_s64(v150, vandq_s8(vaddq_s64(v150, v150), v16)), v17), v18);
  v152 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL)));
  v153 = vaddq_s64(v122, a3);
  v170.val[1] = vshlq_u64(veorq_s8(v152, v19), vnegq_s64(vandq_s8(vshlq_n_s64(v73, 3uLL), a2)));
  v154 = veorq_s8(v153, a4);
  v155 = veorq_s8(v153, a5);
  v156 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155), a6);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157), a7);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v160 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159), a8);
  v161 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161), v14);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), v15);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(v166, vandq_s8(vaddq_s64(v166, v166), v16)), v17), v18);
  v170.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL))), v19), vnegq_s64(vandq_s8(vshlq_n_s64(v95, 3uLL), a2)));
  v120.i64[1] = vqtbl4q_s8(v170, v20).u64[0];
  v168 = vrev64q_s8(v120);
  *(v21 + v10 - 9) = vextq_s8(v168, v168, 8uLL);
  return (*(STACK[0x370] + 8 * (((v8 == 16) * v13) ^ v11)))();
}

uint64_t sub_196997BF0()
{
  v7 = v1 - 654144011 * ((((2 * &v6) | 0xA27BF3A4) - &v6 - 1363016146) ^ 0x7DE9844E) + 496582728;
  v6 = v2 + 8;
  result = (*(v3 + 8 * (v1 + 3297)))(&v6);
  *v0 = v4;
  return result;
}

uint64_t sub_196997CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35)
{
  *(v38 - 112) = (v35 - 207) ^ (998242381 * ((((2 * (v38 - 144)) | 0x50D92120) - (v38 - 144) + 1469280112) ^ 0x2030846));
  *(v38 - 144) = v37;
  *(v38 - 128) = &a35;
  *(v38 - 120) = v36 + 12;
  v39 = (*(a3 + 8 * ((v35 - 3511) ^ 0x1236)))(v38 - 144, a2);
  return (*(a31 + 8 * ((63 * ((((v35 - 3511) ^ (*(v38 - 136) == 1906281716) ^ (v35 - 3449)) & 1) == 0)) ^ (v35 - 3511))))(v39);
}

void fp_dh_42da626634c2ec403b46e00fdf23a37d(_DWORD *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *a1 ^ (1012216201 * ((a1 - 2 * (a1 & 0xB4C3E5A6) - 1262230106) ^ 0x306A6D4A));
  v3[0] = v1 + 1575331711 * (((~v3 & 0x915E28B0) - (~v3 | 0x915E28B1)) ^ 0xFD05BDB3) + 1655633351;
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v1 - 448)) - 4;
  (*&v2[8 * (v1 ^ 0x1E90)])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_196997F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, int a36, char a37, uint64_t a38, unint64_t a39, unint64_t a40)
{
  a39 = 0xA005C2CA39410838;
  a40 = 0xAFCC11CD4CDFF4D3;
  v46 = (10 * ((v44 + 831) ^ 0xB60) - 1814) | 6;
  if ((v41 & 0x20) != 0)
  {
    v47 = 6;
  }

  else
  {
    v47 = 8;
  }

  if (((v46 - 38) & v41) != 0)
  {
    v48 = v40;
  }

  else
  {
    v48 = v47;
  }

  v49 = *(v42 + 4) ^ a16;
  v50 = **v42;
  v51 = 1068996913 * ((2 * ((v45 - 176) & 0x49B6DD10) - (v45 - 176) - 1236720916) ^ 0x63A7C37D);
  *(v45 - 160) = v51 + ((2 * v48) & (v46 + 2147413784)) + ((276 * (v46 ^ 0x6E) - 37089) ^ v48) + 531230564;
  v52 = (v45 - 176);
  *v52 = &a37;
  *(v45 - 168) = v49 - v51 - 214221051;
  *(v45 - 164) = v46 - v51 + 563;
  v52[5] = &a39;
  v52[6] = v50;
  v52[3] = &a31;
  v52[4] = &a35;
  v53 = (*(v43 + 8 * (v46 + 6811)))(v45 - 176, a2, a3, a4, a5, a6, a7, a8);
  return (*(v43 + 8 * ((5441 * (*(v45 - 156) == 1906281716)) ^ v46)))(v53);
}

uint64_t sub_196998054(int8x16_t a1, int8x16_t a2)
{
  v8 = (v4 - 32);
  v9 = (v5 - 32);
  v10 = vaddq_s8(vsubq_s8(*v9, vandq_s8(vaddq_s8(*v9, *v9), a1)), a2);
  v8[-1] = vaddq_s8(vsubq_s8(v9[-1], vandq_s8(vaddq_s8(v9[-1], v9[-1]), a1)), a2);
  *v8 = v10;
  return (*(v7 + 8 * (((v3 == 32) * (v2 + 4016)) ^ v6)))();
}

uint64_t sub_1969980D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t *a16, unsigned int a17)
{
  a17 = 1498 - 1825732043 * (((&a15 | 0xB913F980) - &a15 + (&a15 & 0x46EC0678)) ^ 0xB985AAB7);
  a16 = &a9;
  v19 = (*(v17 + 53584))(&a15, a2, a3, a4, a5, a6, a7, a8);
  return (*(v17 + 8 * ((45 * (a15 == 1906281716)) ^ v18)))(v19);
}

void sub_196998178()
{
  v1 = STACK[0xA80];
  STACK[0x300] = ((STACK[0xA80] + 4) ^ 0xFFEFF4F6D76C7F3FLL) + 0x2D756BFD78B7CDFFLL + ((2 * (STACK[0xA80] + 4)) & 0xFFDFE9EDAED8FE7ELL);
  v2 = STACK[0xAA0] + (((51 * (v0 ^ 0x144) - 3201) | 0xA14u) ^ 0xE18);
  STACK[0x2F0] = (v2 ^ 0xFD6D66FC757E6FFELL) + 0x2FF7F9F7DAA5DD40 + ((2 * v2) & 0xFADACDF8EAFCDFFCLL);
  STACK[0x2E0] = ((STACK[0xAC0] + 4) ^ 0xBDE566F576ACEF7FLL) + 0x6F7FF9FED9775DBFLL + ((2 * (STACK[0xAC0] + 4)) & 0x7BCACDEAED59DEFELL);
  STACK[0x2D0] = ((STACK[0xAE0] + 4) ^ 0x7D65E2F4FC37EF7FLL) - 0x50008200AC13A241 + ((2 * (STACK[0xAE0] + 4)) & 0xFACBC5E9F86FDEFELL);
  v3 = STACK[0xB00];
  STACK[0x2C0] = ((STACK[0xB00] + 4) ^ 0xBD776FF57F34ED7FLL) + 0x6FEDF0FED0EF5FBFLL + ((2 * (STACK[0xB00] + 4)) & 0x7AEEDFEAFE69DAFELL);
  v4 = STACK[0xB10];
  STACK[0x2A0] = ((STACK[0xB10] + 4) ^ 0xBF7D60FC7E6DCF7FLL) + 0x6DE7FFF7D1B67DBFLL + ((2 * (STACK[0xB10] + 4)) & 0x7EFAC1F8FCDB9EFELL);
  v5 = STACK[0xA50] + 10;
  STACK[0x280] = ((STACK[0xA50] + 4) ^ 0xFD7576FD75347D7ELL) + 0x2FEFE9F6DAEFCFC0 + ((2 * (STACK[0xA50] + 4)) & 0xFAEAEDFAEA68FAFCLL);
  STACK[0x270] = ((STACK[0xA40] + 4) ^ 0x7F77E0FFFD36EFBFLL) - 0x5212800BAD12A281 + ((2 * (STACK[0xA40] + 4)) & 0xFEEFC1FFFA6DDF7ELL);
  STACK[0x260] = ((STACK[0xA30] + 4) ^ 0xED6FFAF7DA267D3ELL) + 0x3FF565FC75FDD000 + ((2 * (STACK[0xA30] + 4)) & 0xDADFF5EFB44CFA7CLL);
  STACK[0x250] = ((STACK[0xA20] + 4) ^ 0x2D6FF0F47CF5EDFELL) - 0xA90002CD1A0C0 + ((2 * (STACK[0xA20] + 4)) & 0x5ADFE1E8F9EBDBFCLL);
  STACK[0x230] = ((STACK[0xA10] + 4) ^ 0x6DFF77FCF464EDFFLL) - 0x409A1708A440A0C1 + ((2 * (STACK[0xA10] + 4)) & 0xDBFEEFF9E8C9DBFELL);
  STACK[0x210] = ((STACK[0xB30] + 4) ^ 0x6F6FE0F6FD37FD7FLL) - 0x420A8002AD13B041 + ((2 * (STACK[0xB30] + 4)) & 0xDEDFC1EDFA6FFAFELL);
  STACK[0x200] = ((v1 + 6) ^ 0x6EED8F765F7CFDB9) - 0x8986425554A811 + ((2 * (v1 + 6)) & 0xDDDB1EECBEF9FB72);
  STACK[0x2B0] = v3 + 10;
  STACK[0x290] = v4 + 10;
  STACK[0x310] = v5;
  STACK[0x390] = STACK[0x8E8];
  STACK[0x380] = STACK[0x6C8];
  STACK[0x370] = STACK[0x7D8];
  STACK[0x360] = STACK[0x748];
  STACK[0x400] = STACK[0x550];
  STACK[0x3E0] = STACK[0x950];
  STACK[0x3C0] = STACK[0x618];
  STACK[0x350] = STACK[0x4F0];
  STACK[0x340] = STACK[0x7A0];
  STACK[0x330] = STACK[0x600];
  STACK[0x320] = STACK[0x818];
  STACK[0x3B0] = STACK[0x598];
  LODWORD(STACK[0x3F0]) = LOWORD(STACK[0x9EE]);
  LODWORD(STACK[0x410]) = LOWORD(STACK[0x9DE]);
  LODWORD(STACK[0x3A0]) = LOWORD(STACK[0x9CA]);
  LODWORD(STACK[0x3D0]) = LOWORD(STACK[0x986]);
  JUMPOUT(0x196A17488);
}

uint64_t sub_196998234@<X0>(unint64_t a1@<X8>)
{
  STACK[0x830] = a1;
  LODWORD(STACK[0xA58]) = v3;
  LOWORD(STACK[0xA5E]) = v2;
  LODWORD(STACK[0xA60]) = STACK[0x724];
  LODWORD(STACK[0xA64]) = STACK[0x8F4];
  STACK[0xA68] = STACK[0x868];
  STACK[0x940] = STACK[0x8C8];
  return (*(v4 + 8 * (((((a1 == 0) ^ (v1 - 94)) & 1) * (((16 * (v1 + 910)) ^ 0x172A0) + 17)) ^ (v1 + 910))))();
}

uint64_t sub_196998330@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  *(a2 + 104) = veorq_s8(*(v2 + 88), xmmword_196EBFAD0);
  v4 = *(v2 + 4);
  *(a2 + 20) = v4;
  return (*(v3 + 8 * ((209 * ((((a1 ^ 0x90) + 1) ^ (v4 == ((11 * (a1 ^ 0x449)) ^ 0x1217))) & 1)) ^ a1 ^ 0x90)))();
}

uint64_t sub_196998400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4 - 1;
  v14 = v6 + v13 + v5;
  v15 = __ROR8__(v14 & 0xFFFFFFFFFFFFFFF8, 8);
  v16 = (v15 + v12) ^ 0xE788DD3012A091E0;
  v17 = __ROR8__((v15 + v12) ^ ((v4 ^ 0x636u) - 0x749594F881B6A799), 8);
  v18 = (v9 - ((v17 + v16) | v9) + ((v17 + v16) | a1)) ^ a2;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0xBD8F7CFD1E07971BLL;
  v21 = __ROR8__(v20, 8);
  v22 = v20 ^ __ROR8__(v19, 61);
  v23 = ((v8 & (2 * (v21 + v22))) - (v21 + v22) + 0x7960F2B616996E9FLL) ^ 0x84EBA188CFF32DABLL;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (v7 - ((v25 + v24) | v7) + ((v25 + v24) | 0xADBA7ED07AC0689ALL)) ^ 0xA77DA4D51E01EB11;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v10;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * (v30 + v29)) | 0x67ECAB24E0949C16) - (v30 + v29) + 0x4C09AA6D8FB5B1F5) ^ 0x3DBB3B5844776955;
  v32 = __ROR8__(v31, 8);
  v33 = __ROR8__(v29, 61);
  *v14 = ((((v32 + (v31 ^ v33)) & 0x7068FDEC8CEB6B27 ^ 0x87C0804202802) + ((v32 + (v31 ^ v33)) & 0x8F970213731494D8 ^ 0x701021320009051) - 1) ^ 0x56B23F6A8BCD7E7ALL) >> (8 * (v14 & 7u));
  return (*(v11 + 8 * ((v13 == 0) | (2 * (v13 == 0)) | (v4 - 280))))();
}

uint64_t sub_196998600@<X0>(int a1@<W8>)
{
  STACK[0x790] = 0;
  v2 = *(STACK[0x578] + 8);
  STACK[0x700] = 0;
  LODWORD(STACK[0x90C]) = 0;
  LODWORD(STACK[0x5C8]) = -1720256293;
  return (*(v1 + 8 * (((v2 == 0) * (((a1 - 520) | 4) ^ 0xE0C)) ^ a1)))();
}

uint64_t sub_1969986C0()
{
  v3 = (v0 - 270704124) > 0x9FE365E;
  if ((v0 - 270704124) < 0x9FE365E)
  {
    v3 = 1;
  }

  return (*(v2 + 8 * ((v3 * (((v1 - 151) | 0xA0) + ((v1 + 79821924) & 0xFB3E17FF) - 5046)) ^ v1)))();
}

uint64_t fp_dh_721e500a6cda322bb4fc5179415ba567(_DWORD *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1[2] + 1790939281 * (a1 ^ 0xF8DC2041);
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = v1 + 1335949639;
  v8 = v1 + 1335949639 - 1790939281 * ((2 * (&v8 & 0x251BD718) - &v8 - 622581533) ^ 0x223808A2);
  v9 = v3;
  v5 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v1 + 1335944170)) + 8 * (v1 + 1335950365);
  (*(v5 - 4))(&v8);
  v6 = *v2;
  v8 = v4 - 1790939281 * ((&v8 & 0x3E8E0BD1 | ~(&v8 | 0x3E8E0BD1)) ^ 0x39ADD46F);
  v9 = v6;
  return (*(v5 - 4))(&v8);
}

uint64_t sub_19699880C()
{
  v4 = v0 + 3314;
  v11 = ((v0 + 3314) ^ 0xFFFFFFDE) - (((v2 ^ 0xFFFFFFC3) - 99) ^ ((v2 ^ 0x19) + 71) ^ ((v2 ^ 0xFFFFFFDA) - 122));
  v5 = (*(v3 + 8 * ((v0 + 3314) ^ 0xE23)))((v11 ^ 0x7CBBE9DF) + v2 + ((2 * v11) & 0x1BE) - 2092689831, 0x100004077774924);
  *v1 = v5;
  return (*(v3 + 8 * (((v5 == 0) * (v4 - 5198)) ^ v4)))(v5, v6, v7, v8, v9);
}

uint64_t sub_196998A20()
{
  v5 = v2 + 31066334 - 1790939281 * (&v5 ^ 0xF8DC2041);
  v6 = v4;
  (*(v0 + 8 * (v2 + 31067060)))(&v5);
  return (v1 - 1906281716);
}

uint64_t sub_196998B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, uint64_t a55)
{
  HIDWORD(a14) = a54 - ((2 * a54) & 0x40) + 34;
  v59 = *(a55 + 12);
  *(v58 - 164) = (v56 - 1999279834) ^ (753662761 * ((~(v58 - 168) & 0xF6C00013 | (v58 - 168) & 0x93FFFEC) ^ 0x93DAFB58));
  *(v58 - 168) = 41 * ((~(v58 + 88) & 0x13 | (v58 + 88) & 0xEC) ^ 0x58) + ((((BYTE4(a14) + ((v56 - v55 + 74) & 0xE9) - 43) ^ 0xF7) + 9) ^ (((BYTE4(a14) + ((v56 - v55 + 74) & 0xE9) - 43) ^ 0x1B) - 27) ^ (((BYTE4(a14) + ((v56 - v55 + 74) & 0xE9) - 43) ^ 0xCC) + 52)) + 98;
  *(v58 - 160) = 41 * ((~(v58 + 88) & 0x13 | (v58 + 88) & 0xEC) ^ 0x58) + (v59 ^ 0xBF) + 2 * (v59 & 0x3F) + 109;
  (*(v57 + 8 * (v56 ^ 0x197C)))(v58 - 168, a2, a3, a4, a5, a6, a7, a8);
  return (*(v57 + 8 * ((2303 * (*(v58 - 156) == 1906281716)) ^ v56)))(*(v58 - 156), v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_196998C3C@<X0>(int a1@<W1>, unint64_t a2@<X8>)
{
  v5 = v2 + (a1 ^ 0xBC7u) - 1680;
  v6 = a2 + v2 + 1 < v3;
  if (v3 < a2 != v5 > ((a1 - 1829139161) & 0x6D0667DF ^ 0xFFFFFFFFFDF64B6DLL))
  {
    v6 = v3 < a2;
  }

  return (*(v4 + 8 * ((227 * v6) ^ a1)))();
}

void sub_196998D40(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  a5 = (v6 + 12) ^ (1283153057 * (&a3 ^ 0x4FD80337));
  a3 = v7;
  a4 = a1;
  (*(v5 + 8 * (v6 + 2905)))(&a3);
  JUMPOUT(0x1968E8C10);
}

void fp_dh_c2f988c77f6c0a144b8c8950a4fd4a23(_DWORD *a1)
{
  v1 = 489239129 * (((a1 | 0x10399225) - a1 + (a1 & 0xEFC66DDA)) ^ 0xA911B113);
  v2 = a1[6] - v1;
  v3 = *a1;
  v4 = a1[2] ^ v1;
  v5 = (8 * (((v4 ^ 0x90A2A564) + 123794147) ^ v4 ^ ((v4 ^ 0x1AFB1C3A) + 221858749) ^ ((v4 ^ 0x1DD36ED8) + 168900959) ^ ((v4 ^ 0x1FB77FFF) + 141895802))) ^ 0x41ED43C8;
  v6 = (v4 ^ 0x87E107D6) & (2 * (v4 & 0x97C25787)) ^ v4 & 0x97C25787;
  v7 = ((2 * (v4 ^ 0x86E586DE)) ^ 0x224FA2B2) & (v4 ^ 0x86E586DE) ^ (2 * (v4 ^ 0x86E586DE)) & 0x1127D158;
  v8 = v7 ^ 0x11205149;
  v9 = (v7 ^ 0x238150) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0x449F4564) & v8 ^ (4 * v8) & 0x1127D158;
  v11 = *(*a1 + 16);
  v12 = *(*a1 + 20);
  v13 = v9 ^ 0x1127D159 ^ (v10 ^ 0x74140) & (16 * v9);
  v14 = (16 * (v10 ^ 0x11209019)) & 0x1127D150 ^ 0x102C049 ^ ((16 * (v10 ^ 0x11209019)) ^ 0x127D1590) & (v10 ^ 0x11209019);
  *(v3 + 16) = v5 + v11;
  *(v3 + 20) = v12 + __CFADD__(v5, v11) + (((v4 ^ (2 * ((((v14 << 8) ^ 0x27D10000) & v14 ^ (v14 << 8) & 0x11270000) & (((v13 << 8) & 0x1127D100 ^ v13 ^ ((v13 << 8) ^ 0x27D15900) & v14) << 16) ^ (v13 << 8) & 0x1127D100 ^ v13 ^ ((v13 << 8) ^ 0x27D15900) & v14))) >> 29) ^ 5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_196999068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  *(v25 - 136) = v23 + ((((2 * (v25 - 144)) | 0x7F1D7C8C) - (v25 - 144) + 1081164218) ^ 0xF056BD71) * v20 + 2958;
  *(v25 - 144) = &a14;
  *(v25 - 112) = &a20;
  *(v25 - 104) = a12;
  *(v25 - 128) = v22;
  *(v25 - 120) = &a14;
  (*(v21 + 8 * (v23 + 5613)))(v25 - 144, a2, a3, a4, a5, a6, a7, a8);
  return (*(v21 + 8 * ((247 * (v24 + ((v23 - 1714612771) & 0x6632FF9F) + ((v23 - 1090913699) & 0x41060FCEu) - 1516664616 > 0x7FFFFFFE)) ^ (v23 - 565))))();
}

uint64_t sub_196999138(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v12 = *(a4 + v7 + 72);
  v13 = (a7 & (2 * v7)) + (v7 ^ a6) + a1;
  *(a2 + v13) = v12 ^ 0x87;
  v14 = (v12 >> (((v10 + 29) | v9) ^ 0x3F)) ^ 7;
  *(a2 + v13 + 1) = v14 - ((2 * v14) & 0xD8) - 20;
  *(a2 + v13 + 2) = (BYTE2(v12) ^ 0x47) - ((2 * (BYTE2(v12) ^ 0x47)) & 0xD8) - 20;
  *(a2 + v13 + 3) = (HIBYTE(v12) ^ 0x7C) - 2 * ((HIBYTE(v12) ^ 0x7C) & 0x6D ^ HIBYTE(v12) & 1) - 20;
  return (*(v11 + 8 * (((v7 + 4 >= v8) * a3) ^ v10)))();
}

uint64_t sub_1969991F4()
{
  *(v5 - 224) = v3 + ((2 * ((v5 - 224) & 0x5A1BDD58) - (v5 - 224) + 635708064) ^ 0xA14DAA4C) * v2 + v1;
  v6 = (*(v4 + 8 * (v1 ^ 0x104D)))(v5 - 224);
  return (*(v4 + 8 * ((493 * (((*(v5 - 220) == v0) ^ ((v1 ^ 0xFC) - 122 - 35 * (v1 ^ 0xFC) + 1)) & 1)) ^ v1)))(v6);
}

uint64_t sub_196999290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, int a13, char a14, __int16 a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char *a20, char *a21)
{
  a19 = a17;
  a20 = &a16;
  a21 = &a14;
  LODWORD(a18) = (v21 + 184) ^ (1575331711 * ((664028354 - (&a18 | 0x279444C2) + (&a18 | 0xD86BBB3D)) ^ 0xB4302E3F));
  (*(v22 + 8 * (v21 ^ 0x161Eu)))(&a18, a2, a3, a4, a5, a6, a7, a8);
  LODWORD(a18) = v21 - 1575331711 * (((&a18 | 0x1ED0C1ED) - &a18 + (&a18 & 0xE12F3E10)) ^ 0x728B54EF) - 959;
  a19 = a17;
  a20 = &a11;
  (*(v22 + 8 * (v21 + 3630)))(&a18);
  HIDWORD(a19) = v21 - 489239129 * (((&a18 | 0x199BC1FB) - &a18 + (&a18 & 0xE6643E00)) ^ 0xA0B3E2CD) - 2295;
  a18 = a17;
  v23 = (*(v22 + 8 * (v21 ^ 0x1630u)))(&a18);
  return (*(v22 + 8 * (((a19 == 1906281716) * ((v21 ^ 0xBA8) - 863)) ^ v21)))(v23);
}

uint64_t sub_1969993F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x658]) = v6;
  v10 = *(v7 + 8 * (a6 - 5710));
  STACK[0x278] = *(v8 + 8 * (a6 - 5614));
  STACK[0x270] = v9 + 4;
  return v10(a1, a2, a3, a4, a5);
}

uint64_t sub_196999418(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v11 = -v8;
  v13.val[0].i64[0] = (v7 + v11 - 1) & 0xF;
  v13.val[0].i64[1] = (v7 + v11 + 14) & 0xF;
  v13.val[1].i64[0] = (v7 + a4 + 56 + 56 + v11) & 0xF;
  v13.val[1].i64[1] = (v7 + v11 + 12) & 0xF;
  v13.val[2].i64[0] = (v7 + v11 + 11) & 0xF;
  v13.val[2].i64[1] = (v7 + v11 + 10) & 0xF;
  v13.val[3].i64[0] = (v7 + v11 + 9) & 0xF;
  v13.val[3].i64[1] = (v7 + v11) & 0xF ^ 8;
  *(v7 + v10 - 8 + v11) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(v7 + v10 - 8 + v11), *(v6 + v13.val[0].i64[0] - 7)), veor_s8(*(v4 + v13.val[0].i64[0] + 1 - 7), *(v5 + v13.val[0].i64[0] + 1 - 7)))), 0xECECECECECECECECLL), vmul_s8(*&vqtbl4q_s8(v13, xmmword_196EBFAE0), 0x4343434343434343)));
  return (*(v9 + 8 * ((167 * (8 - (v7 & 0x18) == v11)) ^ (a4 + 4281))))(xmmword_196EBFAE0);
}

uint64_t sub_196999624@<X0>(int a1@<W8>)
{
  (*(v3 + 8 * (a1 + 5990)))();
  *v2 = 0;
  *v1 = 0;
  return (v4 - 1906281716);
}

void sub_196999688()
{
  (*(v1 + 8 * (v0 + 3109)))();
  *(v2 + 24) = 0;
  sub_1969713A4();
}

uint64_t sub_1969996F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (v6 - 114 + v7 - 24) & 0xF;
  LODWORD(STACK[0x7D4]) = 1001618603 - v8;
  return (*(a6 + 8 * ((41 * ((16 - v8) + v6 < 0xFFFFFFF6)) | v7)))(a1, a2, a3, a4, a5);
}

uint64_t sub_196999750()
{
  if (STACK[0x678])
  {
    v2 = STACK[0x508] == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  return (*(v0 + 8 * ((v3 * (((v1 - 1886793757) & 0x70762F13) + 507)) ^ (v1 - 2159))))();
}

uint64_t sub_196999770()
{
  v2 = STACK[0x970];
  STACK[0x660] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (((v2 != 0) * (((2 * (v0 ^ 0x37A)) ^ 0x6B0) - 119)) ^ (2 * (v0 ^ 0x37A)))))();
}

uint64_t sub_19699993C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x5CC]) = v6;
  v8 = STACK[0x524];
  LODWORD(STACK[0x644]) = STACK[0x524];
  return (*(v7 + 8 * ((248 * ((v8 >> 4) & 1)) ^ (a6 - 147))))(a1, a2, a3, a4, a5);
}

uint64_t sub_196999968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, int a12, unsigned int a13)
{
  a11 = *(v15 + 5) - -63 * ((((2 * &a11) | 0x34) - &a11 - 26) ^ 0x83) + 125;
  a13 = (v13 + 1062313610) ^ (1621291457 * ((((2 * &a11) | 0xF120CA34) - &a11 + 124754662) ^ 0xCE87E483));
  v17 = (*(v14 + 8 * (v13 + 6234)))(&a11, a2, a3, a4, a5, a6, a7, a8);
  return (*(v14 + 8 * ((6444 * (a12 == v16)) ^ v13)))(v17);
}

void fp_dh_8fed7da4912a531f4f24b5a278040255(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 16) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = v2 || *(a1 + 8) == 0;
  v1 = *a1 - 1068996913 * ((2 * (a1 & 0x1EFC138A) - a1 - 519836555) ^ 0x34ED0DE4);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_196999CCC()
{
  v6 = (v2 - 1585);
  *v5 = (((v2 - 2207) ^ 0x940FA410) & v6) + v5[623] - ((-((~v6 + v0) ^ (v4 - v6)) | (~v6 + v0)) >= 0);
  v7 = v2 - 2207 + v3 + ~(v6 ^ 0x26E) != ((v2 - 1550122074) & 0x5C64F3B9);
  return (*(v1 + 8 * (v7 | (4 * v7) | (((v2 - 128) | 0x80) - 413) ^ (v2 - 2207))))();
}

uint64_t sub_196999D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t (*a23)(void), uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  *v38 = *(a28[291] + v29);
  v38[4] = *(a28[299] + v35);
  v38[8] = *(a28[307] + a4);
  v38[12] = *(a28[315] + v36);
  v38[1] = *(a28[301] + a1);
  v38[5] = *(a28[309] + a5);
  v38[9] = *(a28[317] + v32);
  v38[13] = *(a28[293] + v30);
  v38[2] = *(a28[311] + a2);
  v38[10] = *(a28[295] + v31);
  v38[6] = *(a28[319] + a3);
  v38[14] = *(a28[303] + v34);
  v38[15] = *(a28[313] + v37);
  v38[11] = *(a28[305] + v28);
  v38[7] = *(a28[297] + v33);
  v38[3] = *(a28[321] + a6);
  return a23();
}

uint64_t sub_196999E60()
{
  v7 = v5 + v4;
  v8 = (v4 - 1) & 0xF;
  v9 = v3 - v4 + v8 + 1;
  v10 = v3 + v8 + 1;
  v11 = v8 + v1 + 7;
  v12 = v2 - v4 + v8 + 6;
  v13 = v2 + v8 + ((((v0 - 2075) | 0x80u) + 1223) ^ 0x1567);
  v15 = v10 > v5 && v9 < v7;
  if (v11 > v5 && v11 - v4 < v7)
  {
    v15 = 1;
  }

  v18 = v12 < v7 && v13 > v5 || v15;
  return (*(v6 + 8 * ((81 * (v18 ^ 1)) ^ v0)))(v4);
}

uint64_t sub_196999EF8@<X0>(uint64_t a1@<X8>)
{
  STACK[0x7F8] = 0;
  STACK[0x7D0] = 0;
  STACK[0x4D0] = *(v3 + 8 * v2);
  LODWORD(STACK[0xB64]) = 1815181637;
  STACK[0xB68] = &STACK[0x7F8];
  return (*(v3 + 8 * (((((a1 == 0) ^ (v2 - 41)) & 1) * (((v2 - 366) | 0xE14) - 3562)) ^ (v2 + 2008))))();
}

uint64_t sub_196999F1C@<X0>(int a1@<W8>)
{
  v4 = a1 + 4397;
  v5 = LODWORD(STACK[0x454])++;
  *STACK[0x308] = v5 + 1;
  v6 = *STACK[0x310];
  v7 = 1283153057 * (((v1 | 0x9AEEB90BBD1074A5) - (v1 & 0x9AEEB90BBD1074A5)) ^ 0x33032ABCF2C87792);
  *(v3 - 184) = v7;
  *(v3 - 176) = v4 - 1388085483 - v7 - 67;
  *(v3 - 172) = (v4 - 84372101) ^ v7;
  *(v3 - 200) = v7 ^ 0x13FF;
  *(v3 - 192) = v6 - v7;
  *(v3 - 208) = v7 + v4 - 1388085483 - 578;
  *(v3 - 204) = (v4 - 1388085483) ^ v7;
  v8 = (*(v2 + 8 * (v4 + 721)))(v3 - 208);
  return (*(v2 + 8 * *(v3 - 180)))(v8);
}

uint64_t sub_196999F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _DWORD *a23, uint64_t _70, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, int *a29)
{
  *a23 = v30 + v31 - 2502;
  v32 = v29 ^ (v29 >> 11) ^ 0xC777EC99 ^ ((v29 ^ (v29 >> 11)) << 7) & 0x9D2C5680;
  return sub_19699A01C(SHIDWORD(a21), 2038, 951, (((((HIDWORD(a10) & 0xC0ECE3D5) + 1599) | 0x1B2) + 1686239246) ^ (v32 << 15)) & 0xEFC60000 ^ v32 ^ (((((((HIDWORD(a10) & 0xC0ECE3D5) + 1599) | 0x1B2) + 1686239246) ^ (v32 << 15)) & 0xEFC60000 ^ v32) >> 18) ^ 0x45B1FDF5, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a23, _70, a24, a25, a26, a27, a28, a29);
}

uint64_t sub_19699A01C@<X0>(int a1@<W2>, int a2@<W6>, int a3@<W7>, unsigned int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, int *a25)
{
  v32 = (v27 + (((v26 ^ a2) * a3) ^ 0x81F943AF) + a1);
  v33 = -1555358357 * ((v32 ^ *(*a24 + (*a25 & 0xFFFFFFFFA90660A8))) & 0x7FFFFFFF);
  v34 = -1555358357 * (v33 ^ HIWORD(v33));
  v35 = *(*(v29 + 8 * (v26 - 1896)) + (v34 >> 24));
  v36 = *(*(v29 + 8 * (v26 - 1525)) + (v34 >> 24) - 2);
  v37 = *(v29 + 8 * (v26 ^ 0x7FC));
  v38 = ((a4 >> v25) - (v31 & (2 * (a4 >> v25))) + 55) ^ v35 ^ v36 ^ *((v34 >> 24) + v37 + 4) ^ v34 ^ (-47 * (v34 >> 24));
  LODWORD(v34) = (((a4 >> v25) - (v31 & (2 * (a4 >> v25))) + 55) ^ v35 ^ v36 ^ *((v34 >> 24) + v37 + 4) ^ v34 ^ (-47 * BYTE3(v34)));
  *v32 = v38 ^ 0x37;
  return (*(v28 + 8 * ((7728 * (a1 - (v34 != 55) == v30)) ^ v26)))();
}

uint64_t sub_19699A15C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11)
{
  v14 = (a1 - 1649891845) & 0x625759F6;
  a10 = **(v11 + 8 * (v14 ^ 0x1178u));
  a11 = v14 + 1790939281 * ((&a10 & 0x8C1E99E0 | ~(&a10 | 0x8C1E99E0)) ^ 0x8B3D465E) - 901;
  v15 = (*(v12 + 8 * (v14 + 2611)))(&a10);
  return (*(v12 + 8 * (((*v13 == 67) * (((v14 - 4162) | 0x1050) - 1550)) ^ v14)))(v15);
}

uint64_t sub_19699A308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  v34 = 1283153057 * ((v33 - 128) ^ 0x4FD80337);
  *(v33 - 128) = v34 + a13 - 236687653;
  *(v33 - 112) = (v32 + 2708) ^ v34;
  *(v33 - 120) = &a22;
  v35 = (*(v31 + 8 * (v32 + 6525)))(v33 - 128, a2, a3, a4, a5, a6, a7, a8);
  v36 = ((((131 * (v32 ^ 0x114) + 347599440) | 0x2803904C) ^ a31 & 0x3F ^ 0x7CFAF6F7) + 134220624) ^ ((a31 & 0x3F ^ 0x4545DCBA) + 218411376) ^ ((a31 & 0x3F ^ 0x504BA20) + 1296422902);
  *(&a22 + (v36 - 1212247510)) = 108;
  return (*(v31 + 8 * ((5655 * ((v36 - 1212247566) < 0xFFFFFFC8)) ^ v32)))(v35);
}

uint64_t sub_19699A45C()
{
  v5 = *(v0 + 16);
  v6 = 1621291457 * ((v4 - 120) ^ 0x36178199);
  *(v4 - 116) = v6 - 1208745047 + v2;
  *(v4 - 112) = (((v3 ^ 0x85717383) + 2056162429) ^ ((v3 ^ 0x52300B7D) - 1378880381) ^ ((v3 ^ 0x1870D04F) - 410046543)) - v6 + 1047420471;
  v7 = (*(v1 + 8 * (v2 + 3347)))(v4 - 120);
  return (*(v1 + 8 * ((240 * ((*v5 >> 7) ^ 1)) ^ (v2 + 1950))))(v7);
}

void sub_19699A544()
{
  LODWORD(STACK[0x368]) = 86;
  LODWORD(STACK[0x34C]) = 1;
  JUMPOUT(0x19699A560);
}

uint64_t sub_19699A6F8@<X0>(int a1@<W8>)
{
  result = (*(v3 + 8 * (a1 + 1250)))(v2);
  *(v1 + 16) = -1098940267;
  return result;
}

uint64_t sub_19699A758(uint64_t result)
{
  *v2 = result;
  *(v1 + 4) = 1906281716;
  return result;
}

void sub_19699A780()
{
  STACK[0x920] = 0;
  STACK[0x478] = 0;
  STACK[0x4D0] = *(v1 + 8 * v0);
  JUMPOUT(0x196999F10);
}

uint64_t sub_19699A7A4()
{
  v2 = STACK[0x7C8];
  v3 = &STACK[0xB70] + STACK[0x958];
  STACK[0x7B0] = v3;
  STACK[0x838] = (v3 + 16);
  STACK[0x4C0] = 0;
  STACK[0x4A8] = 0;
  LODWORD(STACK[0x480]) = -1720256293;
  STACK[0x510] = 0;
  LODWORD(STACK[0x5BC]) = -1720256293;
  STACK[0x850] = v2;
  return (*(v1 + 8 * (((v2 != 0) * (((v0 - 840) ^ 0x26) - 1810)) ^ v0)))();
}

void sub_19699A80C(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  JUMPOUT(0x1968EA40CLL);
}

void sub_19699A820(uint64_t a1@<X5>, int a2@<W8>)
{
  LODWORD(STACK[0x800]) = v4;
  LODWORD(STACK[0x43C]) = -1720256293;
  LODWORD(STACK[0x48C]) = -1720256293;
  LODWORD(STACK[0x44C]) = v5;
  STACK[0x568] = v2;
  LODWORD(STACK[0x414]) = a2;
  STACK[0x6F8] = *(a1 + 8 * (v3 - 1865));
  JUMPOUT(0x1969CE4D0);
}

uint64_t sub_19699A84C()
{
  v3 = *(v1 + 8);
  STACK[0x6E8] = v3;
  return (*(v2 + 8 * (((v3 == 0) * ((v0 - 2195) ^ 0x1FB3 ^ ((v0 - 1734) | 0x194))) ^ v0)))();
}

uint64_t sub_19699A8CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24)
{
  v27 = a1[1];
  v28 = a1[4];
  v33 = a1[3];
  v29 = v28[1];
  *(v26 - 112) = a2;
  *(v26 - 104) = v27;
  *(v26 - 144) = &a22;
  *(v26 - 136) = v25 + 3523 + 1283153057 * ((v26 + 952228821 - 2 * ((v26 - 144) & 0x38C1DC65)) ^ 0x7719DF52);
  *(v26 - 128) = v28;
  *(v26 - 120) = v29;
  (*(v24 + 8 * (v25 + 6178)))(v26 - 144);
  *(v26 - 120) = v27;
  *(v26 - 112) = &a22;
  *(v26 - 144) = v28;
  *(v26 - 136) = (v25 + 3539) ^ (1575331711 * ((((2 * (v26 - 144)) | 0xB806966) - (v26 - 144) - 96482483) ^ 0x699BA1B1));
  *(v26 - 128) = &a20;
  (*(v24 + 8 * (v25 ^ 0x18BD)))(v26 - 144);
  *(v26 - 136) = v25 + 3523 + 1283153057 * ((2 * ((v26 - 144) & 0x3105AF80) - (v26 - 144) - 822456194) ^ 0x81225349);
  *(v26 - 144) = &a10;
  *(v26 - 112) = &a20;
  *(v26 - 104) = v27;
  *(v26 - 128) = v28;
  *(v26 - 120) = &a22;
  (*(v24 + 8 * (v25 ^ 0x18E2)))(v26 - 144);
  *(v26 - 136) = v25 + 3523 + 1283153057 * ((((v26 - 144) | 0x90F7E01F) - ((v26 - 144) & 0x90F7E01F)) ^ 0xDF2FE328);
  *(v26 - 144) = &a24;
  *(v26 - 112) = &a20;
  *(v26 - 104) = v27;
  *(v26 - 128) = v28;
  *(v26 - 120) = &a10;
  (*(v24 + 8 * (v25 ^ 0x18E2)))(v26 - 144);
  *(v26 - 128) = v28;
  *(v26 - 120) = &a24;
  *(v26 - 144) = &a18;
  *(v26 - 136) = v25 + 3523 + 1283153057 * (((v26 - 144) & 0x2E7C722E | ~((v26 - 144) | 0x2E7C722E)) ^ 0x9E5B8EE6);
  *(v26 - 112) = &a20;
  *(v26 - 104) = v27;
  (*(v24 + 8 * (v25 + 6178)))(v26 - 144);
  *(v26 - 136) = v25 + 3523 + 1283153057 * ((((v26 - 144) | 0x36456323) - ((v26 - 144) & 0x36456323)) ^ 0x799D6014);
  *(v26 - 128) = v28;
  *(v26 - 120) = &a18;
  *(v26 - 112) = &a20;
  *(v26 - 104) = v27;
  *(v26 - 144) = &a12;
  (*(v24 + 8 * (v25 ^ 0x18E2)))(v26 - 144);
  *(v26 - 136) = v25 + 3523 + 1283153057 * ((v26 - 144) ^ 0x4FD80337);
  *(v26 - 112) = &a20;
  *(v26 - 104) = v27;
  *(v26 - 144) = &a16;
  *(v26 - 128) = v28;
  *(v26 - 120) = &a12;
  (*(v24 + 8 * (v25 ^ 0x18E2)))(v26 - 144);
  *(v26 - 136) = v25 + 3523 + 1283153057 * ((((v26 - 144) | 0xAB110685) + (~(v26 - 144) | 0x54EEF97A)) ^ 0xE4C905B3);
  *(v26 - 128) = v28;
  *(v26 - 120) = &a16;
  *(v26 - 144) = &a14;
  *(v26 - 112) = &a20;
  *(v26 - 104) = v27;
  (*(v24 + 8 * (v25 + 6178)))(v26 - 144);
  *(v26 - 136) = v25 + 3523 + 1283153057 * ((v26 + 774774850 - 2 * ((v26 - 144) & 0x2E2E20D2)) ^ 0x61F623E5);
  *(v26 - 112) = &a20;
  *(v26 - 104) = v27;
  *(v26 - 144) = &a20;
  *(v26 - 128) = v28;
  *(v26 - 120) = &a14;
  (*(v24 + 8 * (v25 ^ 0x18E2)))(v26 - 144);
  v30 = *v28;
  *(v26 - 144) = (v25 + 3626) ^ (654144011 * ((((v26 - 144) | 0x42BC333D) + (~(v26 - 144) | 0xBD43CCC2)) ^ 0x6E684EA0));
  *(v26 - 136) = v30;
  *(v26 - 128) = &a8;
  (*(v24 + 8 * (v25 ^ 0x18C2)))(v26 - 144);
  *(v26 - 144) = v33;
  *(v26 - 132) = (v25 + 3577) ^ (1621291457 * ((((2 * (v26 - 144)) | 0xBB4D53B2) - (v26 - 144) + 576280103) ^ 0xEBB12840));
  v31 = (*(v24 + 8 * (v25 ^ 0x197D)))(v26 - 144);
  return (*(v24 + 8 * ((((*(v26 - 136) - 1516654139) > 0x7FFFFFFE) * ((2 * v25) ^ 0x42D)) ^ v25)))(v31);
}

void sub_19699AD98(int a1@<W1>, int a2@<W2>, int a3@<W5>, int a4@<W8>)
{
  LODWORD(STACK[0x4E8]) = a2;
  LODWORD(STACK[0x56C]) = v5;
  LODWORD(STACK[0x608]) = v4;
  LODWORD(STACK[0x3E4]) = a3 + 80;
  v7 = (((v4 ^ 0xA1993F61) + 1583792287) ^ ((v4 ^ 0x416A0F60) - 1097469792) ^ ((v4 ^ 0x9CB4376A) + 1665910934)) + 576118148 + (((((a1 ^ 0x10C8) - 191654187) & 0xB6C77FF) + 1195773676 + (*(STACK[0x6A0] + 88) ^ 0xB8B9D919)) ^ ((*(STACK[0x6A0] + 88) ^ 0xDB4ADB16) + 615851242) ^ ((*(STACK[0x6A0] + 88) ^ 0x1FB40564) - 531891556));
  v8 = (v7 ^ 0xD537A818) & (2 * (v7 & 0xD6373152)) ^ v7 & 0xD6373152;
  v9 = ((2 * (v7 ^ 0xFD53E89C)) ^ 0x56C9B39C) & (v7 ^ 0xFD53E89C) ^ (2 * (v7 ^ 0xFD53E89C)) & 0x2B64D9CE;
  v10 = v9 ^ 0x29244842;
  v11 = (v9 ^ 0x408188) & (4 * v8) ^ v8;
  v12 = ((4 * v10) ^ 0xAD936738) & v10 ^ (4 * v10) & 0x2B64D9CC;
  v13 = (v12 ^ 0x29004100) & (16 * v11) ^ v11;
  v14 = ((16 * (v12 ^ 0x26498C6)) ^ 0xB64D9CE0) & (v12 ^ 0x26498C6) ^ (16 * (v12 ^ 0x26498C6)) & 0x2B64D9C0;
  v15 = v13 ^ 0x2B64D9CE ^ (v14 ^ 0x22449800) & (v13 << 8);
  *(STACK[0x6A0] + 88) = v7 ^ (2 * ((v15 << 16) & 0x2B640000 ^ v15 ^ ((v15 << 16) ^ 0x59CE0000) & (((v14 ^ 0x920410E) << 8) & 0x2B640000 ^ 0xB240000 ^ (((v14 ^ 0x920410E) << 8) ^ 0x64D90000) & (v14 ^ 0x920410E)))) ^ 0xEE3185A5;
  LODWORD(STACK[0x578]) = a4;
  LODWORD(STACK[0x4E4]) = v6;
  JUMPOUT(0x19699AFFCLL);
}

void sub_19699B7CC()
{
  v1 = STACK[0x8D0];
  v2 = STACK[0x8D0] + 4;
  STACK[0x350] = STACK[0x7A8];
  STACK[0x260] = (v2 ^ 0x2DFF72FD5EAFFF3ELL) - 0x9A12090E8BB200 + ((2 * v2) & 0x5BFEE5FABD5FFE7CLL);
  STACK[0x250] = STACK[0x8C8];
  STACK[0x240] = ((STACK[0x8C0] + (((v0 ^ 0x13CAu) + 987) ^ 0x1659)) ^ 0xAF6774F55FACEFBELL) + 0x7DFDEBFEF0775D80 + ((2 * (STACK[0x8C0] + (((v0 ^ 0x13CAu) + 987) ^ 0x1659))) & 0x5ECEE9EABF59DF7CLL);
  STACK[0x230] = ((STACK[0x8B0] + 4) ^ 0xBFEDEEFC70FEFDBFLL) + 0x6D7771F7DF254F7FLL + ((2 * (STACK[0x8B0] + 4)) & 0x7FDBDDF8E1FDFB7ELL);
  STACK[0x220] = ((STACK[0x900] + 4) ^ 0x3DFF6EF47FF4DFFFLL) - 0x109A0E002FD092C1 + ((2 * (STACK[0x900] + 4)) & 0x7BFEDDE8FFE9BFFELL);
  STACK[0x210] = ((STACK[0x920] + 4) ^ 0xEF6D74F5576FEFFFLL) + 0x3DF7EBFEF8B45D3FLL + ((2 * (STACK[0x920] + 4)) & 0xDEDAE9EAAEDFDFFELL);
  STACK[0x200] = ((STACK[0x8A0] + 4) ^ 0x2FFD72F4DDB7DF3ELL) - 0x29812008D939200 + ((2 * (STACK[0x8A0] + 4)) & 0x5FFAE5E9BB6FBE7CLL);
  STACK[0x270] = v1 + 10;
  STACK[0x2B0] = STACK[0x628];
  STACK[0x2A0] = STACK[0x600];
  STACK[0x2D0] = STACK[0x7C0];
  STACK[0x2C0] = STACK[0x598];
  STACK[0x290] = STACK[0x5B0];
  STACK[0x320] = STACK[0x4C0];
  STACK[0x300] = STACK[0x4A8];
  STACK[0x280] = STACK[0x468];
  STACK[0x2F0] = STACK[0x3B0];
  LODWORD(STACK[0x2E0]) = LOWORD(STACK[0x87A]);
  LODWORD(STACK[0x340]) = LOWORD(STACK[0x85E]);
  LODWORD(STACK[0x330]) = LOWORD(STACK[0x84E]);
  LODWORD(STACK[0x310]) = LOWORD(STACK[0x82E]);
  JUMPOUT(0x1969D15C0);
}

uint64_t sub_19699BC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x36C];
  LODWORD(STACK[0x87C]) = v6;
  v8 = (v6 ^ 0x9976F8DB) + STACK[0x270];
  STACK[0x880] = v8;
  return (*(a6 + 8 * ((v7 - 4633) ^ ((4 * (v8 > STACK[0x250])) | (16 * (v8 > STACK[0x250]))))))(a1);
}

uint64_t sub_19699BCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 7 * (v3 ^ 0x1B48);
  v6 = (v5 ^ 0x1B51u) - 5433 + v2;
  v7 = *(a2 + v6 - 15);
  v8 = *(a2 + v6 - 31);
  v9 = a1 + v6;
  *(v9 - 15) = v7;
  *(v9 - 31) = v8;
  return (*(v4 + 8 * ((230 * (((v5 - 3721) & v2) != 32)) ^ v5)))();
}

uint64_t sub_19699BD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t *a20, uint64_t a21, uint64_t a22, uint64_t *a23)
{
  v28 = *a23;
  *(v27 - 216) = v24 + (((~(v27 - 224) & 0x2CAC859C) - (~(v27 - 224) | 0x2CAC859D)) ^ 0xD470A5DC) * v26 - 2843;
  *(v27 - 224) = v28;
  v29 = (*(v23 + 8 * (v24 + 669)))(v27 - 224, a2, a3, a4, a5, a6, a7, a8);
  v30 = STACK[0x370];
  v31 = *a20;
  STACK[0x450] = &STACK[0x9C0];
  STACK[0x568] = 80;
  STACK[0x6A0] = v25;
  STACK[0x5A0] = 0;
  STACK[0x5F0] = 0;
  STACK[0x710] = v31;
  return (*(v30 + 8 * (((v31 != 0) * (((v24 - 5564) | 0xC0) - 676)) ^ v24)))(v29);
}

uint64_t sub_19699BFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unsigned int a35)
{
  v39 = 646 * (HIDWORD(a20) ^ 0xE2Bu);
  v87 = *(v36 + 8 * (v35 - 3391));
  v40 = *(a8 + 80);
  v41 = *(a8 + 84);
  v42 = (*(a8 + 96) - ((2 * *(a8 + 96)) & 0x94) + 81);
  if (v42 == 79)
  {
    return sub_19699C170(a1, v40, &a35);
  }

  if (v42 == 82)
  {
    v43 = (a8 + v37 + 1323261421);
    v44 = *v43 ^ 0xEC;
    LODWORD(v43) = ((v43[2] ^ 0xEC) << 16) | ((v43[3] ^ 0xEC) << 24) | v44 | ((*(a8 + (v39 ^ (v37 + 883)) + 1323261421) ^ 0xEC) << 8);
    a35 = v43 + v38 - 2 * (v43 & (v38 + 16) ^ v44 & 0x10);
    v45 = *(v36 + 8 * (((2 * ((v37 + 1323261425) < 0x40)) | (4 * ((v37 + 1323261425) < 0x40))) ^ (HIDWORD(a20) - 1686)));
    LODWORD(v86) = HIDWORD(a20) - 1205342133;
    HIDWORD(v86) = HIDWORD(a20) ^ 0xE3F;
    LODWORD(a20) = (HIDWORD(a20) ^ 0x1A1) + 97896992;
    return v45(v45, v40, &a35, 92, 0, v41, v39, a8, a9, a10, a11, a12, a2, a14, v86, a16, a17, a18, v87, a20, a21, a22, a23, a24, a25, a26);
  }

  else
  {
    v46 = (((*(a8 + 72) ^ 0x1237DDD0) - 305651152) ^ ((*(a8 + 72) ^ 0xB9E6DA95) + 1176053099) ^ ((*(a8 + 72) ^ 0xD796002E) + 678035410)) + (((*(a8 + 72) ^ 0xF64F6927) + 162567897) ^ ((*(a8 + 72) ^ 0x3B0A7311) - 990540561) ^ ((*(a8 + 72) ^ 0xB1021D5D) + 1325261475)) + 18178896;
    v47 = (v46 ^ 0xE77C0377) & (2 * (v46 & 0xF778AB86)) ^ v46 & 0xF778AB86;
    v48 = ((2 * (v46 ^ 0xC54D0777)) ^ 0x646B59E2) & (v46 ^ 0xC54D0777) ^ (2 * (v46 ^ 0xC54D0777)) & 0x3235ACF0;
    v49 = v48 ^ 0x1214A411;
    v50 = (v48 ^ 0x20210820) & (4 * v47) ^ v47;
    v51 = ((4 * v49) ^ 0xC8D6B3C4) & v49 ^ (4 * v49) & 0x3235ACF0;
    v52 = (v51 ^ 0x14A0C0) & (16 * v50) ^ v50;
    v53 = ((16 * (v51 ^ 0x32210C31)) ^ 0x235ACF10) & (v51 ^ 0x32210C31) ^ (16 * (v51 ^ 0x32210C31)) & 0x3235ACF0;
    v54 = v52 ^ 0x3235ACF1 ^ (v53 ^ 0x22108C00) & (v52 << 8);
    v55 = v46 ^ (2 * ((v54 << 16) & 0x32350000 ^ v54 ^ ((v54 << 16) ^ 0x2CF10000) & (((v53 ^ 0x102520E1) << 8) & 0x32350000 ^ 0x2110000 ^ (((v53 ^ 0x102520E1) << 8) ^ 0x35AC0000) & (v53 ^ 0x102520E1))));
    v56 = (((*(a8 + 76) ^ 0x7C31D54B) - 2083640651) ^ ((*(a8 + 76) ^ 0x289AAB43) - 681225027) ^ ((*(a8 + 76) ^ 0x28EC7963) - 686586211)) + (((*(a8 + 76) ^ 0x1596BD44) - 362200388) ^ ((*(a8 + 76) ^ 0x18DA0A57) - 416942679) ^ ((*(a8 + 76) ^ 0x710BB078) - 1896591480)) + 1655082419;
    v57 = (v56 ^ 0x1D7D533) & (2 * (v56 & 0x95E78123)) ^ v56 & 0x95E78123;
    v58 = ((2 * (v56 ^ 0xB9BD773)) ^ 0x3CF8ACA0) & (v56 ^ 0xB9BD773) ^ (2 * (v56 ^ 0xB9BD773)) & 0x9E7C5650;
    v59 = v58 ^ 0x82045250;
    v60 = (v58 ^ 0x1C380400) & (4 * v57) ^ v57;
    v61 = ((4 * v59) ^ 0x79F15940) & v59 ^ (4 * v59) & 0x9E7C5650;
    v62 = (v61 ^ 0x18705040) & (16 * v60) ^ v60;
    v63 = ((16 * (v61 ^ 0x860C0610)) ^ 0xE7C56500) & (v61 ^ 0x860C0610) ^ (16 * (v61 ^ 0x860C0610)) & 0x9E7C5650;
    v64 = v62 ^ 0x9E7C5650 ^ (v63 ^ 0x86444400) & (v62 << 8);
    *(a8 + 72) = v55 ^ 0xAF36F50F;
    *(a8 + 76) = v56 ^ (2 * ((v64 << 16) & 0x1E7C0000 ^ v64 ^ ((v64 << 16) ^ 0x56500000) & (((v63 ^ 0x18381250) << 8) & 0x1E7C0000 ^ 0x2280000 ^ (((v63 ^ 0x18381250) << 8) ^ 0x7C560000) & (v63 ^ 0x18381250)))) ^ 0xF9F82AE8;
    v65 = (((v40 ^ 0xA253433C) + 1571601604) ^ ((v40 ^ 0x6EA791B9) - 1856475577) ^ ((v40 ^ 0xB0B3D5EE) + 1330391570)) + (((*(a8 + 80) ^ 0x2EE24C84) - 786582660) ^ ((*(a8 + 80) ^ 0xF49435F6) + 191613450) ^ ((*(a8 + 80) ^ 0xA6317E19) + 1506705895)) + 1651020750;
    v66 = (v65 ^ 0x4525730C) & (2 * (v65 & 0x96257B08)) ^ v65 & 0x96257B08;
    v67 = ((2 * (v65 ^ 0x4D6D011C)) ^ 0xB690F428) & (v65 ^ 0x4D6D011C) ^ (2 * (v65 ^ 0x4D6D011C)) & 0xDB487A14;
    v68 = v67 ^ 0x49480A14;
    v69 = (v67 ^ 0x90007000) & (4 * v66) ^ v66;
    v70 = ((4 * v68) ^ 0x6D21E850) & v68 ^ (4 * v68) & 0xDB487A14;
    v71 = (v70 ^ 0x49006800) & (16 * v69) ^ v69;
    v72 = ((16 * (v70 ^ 0x92481204)) ^ 0xB487A140) & (v70 ^ 0x92481204) ^ (16 * (v70 ^ 0x92481204)) & 0xDB487A10;
    v73 = v71 ^ 0xDB487A14 ^ (v72 ^ 0x90002000) & (v71 << 8);
    v74 = v65 ^ (2 * ((v73 << 16) & 0x5B480000 ^ v73 ^ ((v73 << 16) ^ 0x7A140000) & (((v72 ^ 0x4B485A14) << 8) & 0x5B480000 ^ 0x13000000 ^ (((v72 ^ 0x4B485A14) << 8) ^ 0x487A0000) & (v72 ^ 0x4B485A14))));
    v75 = (((v41 ^ 0x1769004) - 24547332) ^ ((v41 ^ 0xE5C0F29D) + 440339811) ^ ((v41 ^ 0x98F165F2) + 1729010190)) + (((*(a8 + 84) ^ 0xC0FB6C4) - 202356420) ^ ((*(a8 + 84) ^ 0xDC334BD8) + 600618024) ^ ((*(a8 + 84) ^ 0xAC7BFA77) + 1401161097)) + 1640189362;
    v76 = (v75 ^ 0x1480FCA7) & (2 * (v75 & 0x96CAC124)) ^ v75 & 0x96CAC124;
    v77 = ((2 * (v75 ^ 0x3085FEA7)) ^ 0x4C9E7F06) & (v75 ^ 0x3085FEA7) ^ (2 * (v75 ^ 0x3085FEA7)) & 0xA64F3F82;
    v78 = v77 ^ 0xA2410081;
    v79 = (v77 ^ 0x40E0D00) & (4 * v76) ^ v76;
    v80 = ((4 * v78) ^ 0x993CFE0C) & v78 ^ (4 * v78) & 0xA64F3F80;
    v81 = (v80 ^ 0x800C3E00) & (16 * v79) ^ v79;
    v82 = ((16 * (v80 ^ 0x26430183)) ^ 0x64F3F830) & (v80 ^ 0x26430183) ^ (16 * (v80 ^ 0x26430183)) & 0xA64F3F80;
    v83 = v81 ^ 0xA64F3F83 ^ (v82 ^ 0x24433800) & (v81 << 8);
    *(a8 + 80) = v74 ^ 0xE8F2884B;
    *(a8 + 84) = v75 ^ (2 * ((v83 << 16) & 0x264F0000 ^ v83 ^ ((v83 << 16) ^ 0x3F830000) & (((v82 ^ 0x820C0783) << 8) & 0x264F0000 ^ 0x20400000 ^ (((v82 ^ 0x820C0783) << 8) ^ 0x4F3F0000) & (v82 ^ 0x820C0783)))) ^ 0xEA15B949;
    return v87(642711552, v40, &a35, 92, 842334208, v41, v39, a8, a9, a10, a11);
  }
}

uint64_t sub_19699C170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (v6 + v5 + v8);
  v11 = ((*v10 ^ v4) << 24) | ((v10[1] ^ v4) << 16) | ((v10[2] ^ v4) << 8);
  *(a3 + 4 * (((((v5 ^ 0xD17552E8) + 1616244987) ^ v5 ^ ((v5 ^ 0x2B1122DC) - 1708031793) ^ ((v5 ^ 0x4B05C226) - 98213835) ^ ((v5 ^ 0xFFBEEFFE) + 1318997486)) >> 2) ^ 0x13B7D77BLL)) = (v11 | v10[3] ^ v4) + v9 - 2 * ((v11 | v10[3] ^ v4) & (v9 + 4) ^ (v10[3] ^ v4) & 4);
  return (*(v7 + 8 * ((75 * ((v5 + 4 + v8) < 0x40)) ^ v3)))();
}

uint64_t sub_19699C304()
{
  v5 = (v3 - 3012) | 0xBA8;
  v6 = (v5 + 884);
  *(v0 + v2 + v6 - 3885) = *(v1 + v2 + v6 - 3885) ^ 0xEC;
  return (*(v4 + 8 * ((108 * (v2 + v6 != 3885)) ^ v5)))();
}

uint64_t fp_dh_1f1b854fc3e8acc327f6a7e2a75b8d05(uint64_t result)
{
  v1 = 489239129 * ((-2 - ((~result | 0xB9C0C11391ED6431) + (result | 0x463F3EEC6E129BCELL))) ^ 0x78C2619028C54707);
  v2 = *(result + 32) - v1;
  v3 = *(result + 8) - v1;
  v4 = *result + v1;
  v5 = *(result + 36) ^ v1;
  v6 = *(result + 12) - v1;
  v7 = *(result + 24) - v1;
  v8 = v4 > v7;
  v9 = v4 == v7;
  v10 = v8;
  if (v3)
  {
    v9 = v10;
  }

  if (v9)
  {
    v11 = v2;
  }

  else
  {
    v11 = v5;
  }

  *(result + 16) = v11 ^ v6;
  return result;
}

uint64_t sub_19699C43C@<X0>(uint64_t a1@<X1>, char a2@<W3>, unsigned int a3@<W8>)
{
  v8 = *(v6 - 220 + 4 * (a3 >> ((v4 - v7) ^ (a2 + 2))) + 72);
  v9 = ((2 * a3) & 0xDFEFB678) + (a3 ^ 0xEFF7DB3F) + v3;
  *(a1 + v9) = (HIBYTE(v8) ^ 0x7C) - ((2 * (HIBYTE(v8) ^ 0x7C)) & 0xD8) - 20;
  *(a1 + v9 + 1) = (BYTE2(v8) ^ 0x47) - ((2 * (BYTE2(v8) ^ 0x47)) & 0xD8) - 20;
  *(a1 + v9 + 2) = (BYTE1(v8) ^ 7) - ((2 * (BYTE1(v8) ^ 7)) & 0xD8) - 20;
  *(a1 + v9 + 3) = v8 ^ 0x87;
  v10 = a3 + 4 >= *(v6 - 128);
  return (*(v5 + 8 * (v10 | (32 * v10) | v4)))();
}

uint64_t sub_19699C4FC()
{
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[398];
  v9 = *(v5 - 184 + 4 * (v7 & 1));
  *v4 = v4[397] ^ v2 ^ ((v6 & (v1 ^ 0x328 ^ (v3 + 951)) | *v4 & 0x80000000) >> 1) ^ *(v5 - 184 + 4 * (v6 & 1));
  v4[1] = v8 ^ v2 ^ ((v7 & 0x7FFFFFFE | v6 & 0x80000000) >> 1) ^ v9;
  return (*(v0 + 8 * (v1 + 736)))();
}

uint64_t fp_dh_d6edb13b6e8099ac9b2aa6209507dca6(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1 - 1575331711 * ((-2 - ((a1 | 0xA4605341) + (~a1 | 0x5B9FACBE))) ^ 0x37C439BC);
  v4 = *(a1 + 8);
  v3 = v1 + 998242381 * ((2 * (&v3 & 0x432A4270) - &v3 - 1126842999) ^ 0x16BA255F) + 1108787607;
  return (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 - 26632287) + 8 * (v1 ^ 0x1967847) - 4))(&v3);
}

uint64_t fp_dh_91befe83e123936f94a603bd6abe64d0(uint64_t a1)
{
  v1 = 489239129 * (((a1 ^ 0xCC4EB600 | 0xC6B5FBBA) - ((a1 ^ 0xCC4EB600) & 0xC6B5FBBA)) ^ 0xB3D36E8C);
  v2 = *a1 ^ v1;
  v3 = v1 + *(a1 + 16);
  v5 = v3 - 752790304;
  v4 = v3 - 752790304 < 0;
  v6 = 752790304 - v3;
  if (!v4)
  {
    v6 = v5;
  }

  v7 = *(*(a1 + 8) + 4);
  v8 = v7 - 676339932;
  v4 = v7 - 676339932 < 0;
  v9 = 676339932 - v7;
  if (!v4)
  {
    v9 = v8;
  }

  return (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v2 - 2859) + 8 * ((7271 * ((v6 >> 5) < v9)) ^ v2) - 4))();
}

uint64_t sub_19699C6E8@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  v11 = a1 + 1069050996 < a9 + 305446904;
  if (a9 + 305446904 < ((v10 - 1164380756) & 0x4566FF9Fu) + 1069050966 != a1 > 0xC047938B)
  {
    v11 = a9 + 305446904 < ((v10 - 1164380756) & 0x4566FF9Fu) + 1069050966;
  }

  return (*(v9 + 8 * (v10 ^ (4 * v11))))();
}

void fp_dh_083caf067a5319068adc63c25af2bb77(uint64_t a1)
{
  v1 = *(a1 + 16) + 1068996913 * ((((2 * a1) | 0x97DEAC56) - a1 + 873507285) ^ 0x1E01B7BA);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_19699C968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, uint64_t a16)
{
  v20 = 1621291457 * ((&a13 - 841347754 - 2 * (&a13 & 0xCDDA0D56)) ^ 0xFBCD8CCF);
  v21 = (((v19 - 1145663814) & 0x4449738E) + 1122297523 * *v16 + 296294990) ^ v20;
  a14 = v20 + v19 - 3052;
  a15 = v21;
  a16 = a11;
  v22 = (*(v17 + 8 * (v19 ^ 0xA74)))(&a13, a2, a3, a4, a5, a6, a7, a8);
  return (*(v17 + 8 * ((2443 * (a13 == v18)) ^ v19)))(v22);
}

uint64_t sub_19699D66C@<X0>(uint64_t a1@<X8>)
{
  STACK[0x800] = *(v3 + 8 * v2);
  LODWORD(STACK[0x410]) = v4 - 3580;
  LODWORD(STACK[0x400]) = v4 - 3374;
  return (*(v3 + 8 * (((a1 == -8) * ((((((v2 + 3979) | 0x120) + 831) ^ 0xEF4) - 2745) ^ (((v2 + 3979) | 0x120) - 856))) ^ (((v2 + 3979) | 0x120) + 831))))();
}

uint64_t sub_19699D6A8(uint64_t a1)
{
  v2 = *(STACK[0x608] + 24);
  STACK[0x598] = v2;
  return (*(STACK[0x248] + 8 * (((v2 == 0) * ((1204 * ((v1 + 419) ^ 0xFBC)) ^ 0xE46)) ^ (v1 + 419))))(a1, 1906239693);
}

uint64_t sub_19699D6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(STACK[0x788] + 24);
  STACK[0x598] = v7;
  return (*(a6 + 8 * ((101 * ((v6 ^ 0x79 ^ (v7 == 0)) & 1)) ^ v6)))(a1, a2, a3, a4, a5);
}

uint64_t sub_19699D744(uint64_t a1, int a2)
{
  v7 = a1 - 1;
  *(v5 + v7) ^= *(v3 + (v7 & 0xF)) ^ *((v7 & 0xF) + v4 + 4) ^ (69 * (v7 & 0xF)) ^ *((v7 & 0xF) + v2 + 2);
  return (*(v6 + 8 * ((1646 * (v7 == 0)) ^ (a2 - 1864))))();
}

uint64_t sub_19699D81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _BYTE *a29)
{
  a29[128] = v29[12];
  a29[129] = v29[4];
  a29[131] = v29[13];
  v32 = (*(v30 + 8 * (v31 + 1321)))(142, 0x10000403E1C8BA9, a3, a4, a5, a6, a7, a8) == 0;
  return (*(v30 + 8 * ((v32 * (((v31 - 1344) ^ 4) - 4101)) | v31)))();
}

uint64_t sub_19699D8CC@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unint64_t a37)
{
  v39 = STACK[0x228] - 478;
  v40 = (v37 ^ a2) + STACK[0x290];
  STACK[0x9E0] = v40;
  return (*(v38 + 8 * (v39 ^ ((8 * (v40 > a37)) | ((v40 > a37) << 7)))))(a1, LODWORD(STACK[0x410]));
}

uint64_t sub_19699D920(int8x16_t a1, int8x8_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v15 = a6 - 8;
  v17.val[0].i64[0] = (v11 + v15 - 1) & 0xF;
  v17.val[0].i64[1] = (v11 + v15 + 14) & 0xF;
  v17.val[1].i64[0] = (v11 + v15 + 13) & 0xF;
  v17.val[1].i64[1] = (v11 + v15 + 12) & 0xF;
  v17.val[2].i64[0] = (v11 + v15 + 11) & 0xF;
  v17.val[2].i64[1] = (v11 + v15 + (v13 ^ 0xFB)) & 0xF;
  v17.val[3].i64[0] = (v11 + v15 + 9) & 0xF;
  v17.val[3].i64[1] = (v11 + v15) & 0xF ^ 8;
  *(a7 + v15) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a7 + v15), *(v9 + v17.val[0].i64[0] - 7)), veor_s8(*(v17.val[0].i64[0] + v10 - 2), *(v17.val[0].i64[0] + v8 - 4)))), a3), vmul_s8(*&vqtbl4q_s8(v17, a1), a2)));
  return (*(v14 + 8 * (((a5 == v15) * a8) ^ (v12 + 70))))(a4);
}

uint64_t sub_19699D928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v17 = v10 + a8;
  v18 = v10 - 1;
  v19 = (__ROR8__((v8 + v18) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v20 = (25 * (v14 ^ 0x22Fu)) ^ v19 ^ 0x4DE9423B6F16F18FLL;
  v19 ^= 0xE5AFA7ACF6E0968ELL;
  v21 = __ROR8__(v20, 8);
  v22 = ((v15 & (2 * (v21 + v19))) - (v21 + v19) + v16) ^ 0xE2E635010CECF8FFLL;
  v23 = v22 ^ __ROR8__(v19, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (v24 + v23 - ((2 * (v24 + v23)) & 0x256A7876A89AD72) - 0x7ED4AC3C4ABB2947) ^ 0x7489A27A009464B0;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0x5963B6C555D97F1FLL;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (v9 - ((v29 + v28) | v9) + ((v29 + v28) | 0x31F3CBC2A36B396CLL)) ^ 0x50B656E853741D9BLL;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8) + v31;
  v33 = __ROR8__((v17 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  v34 = ((0x6AF7234D0CC131D4 - v33) & 0xC351D2FA9AB1B69CLL) + v33 - 0x6AF7234D0CC131D5 - ((v33 - 0x6AF7234D0CC131D5) & 0xC751D2FA9AB1B69CLL);
  v35 = v34 ^ 0x8EB890C1F5A7514ELL;
  v34 ^= 0x26FE75566C512012uLL;
  v36 = __ROR8__(v35, 8);
  v37 = (((2 * v32) | 0xBF58159D2FFB2386) - v32 + 0x2053F53168026E3DLL) ^ 0xBB6F16CCE7794FAFLL;
  v38 = v37 ^ __ROR8__(v31, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x1A2AEBE44253AF03;
  v40 = (v36 + v34 - ((2 * (v36 + v34)) & 0xDCED4F79D683836ALL) - 0x1189584314BE3E4BLL) ^ v11;
  v41 = v40 ^ __ROR8__(v34, 61);
  v42 = __ROR8__(v40, 8);
  v43 = __ROR8__(v39, 8) + (v39 ^ __ROR8__(v38, 61));
  v44 = ((v12 | (2 * (v42 + v41))) - (v42 + v41) + v13) ^ a1;
  v45 = v44 ^ __ROR8__(v41, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0x5963B6C555D97F1FLL;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  v49 = ((a2 | (2 * (v48 + v47))) - (v48 + v47) + a3) ^ a4;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0x64C31C027084DE6CLL;
  v52 = __ROR8__(v51, 8);
  v53 = v51 ^ __ROR8__(v50, 61);
  v54 = ((a5 | (2 * (v52 + v53))) - (v52 + v53) + a6) ^ a7;
  *(v17 + 9) = (((((2 * v43) & 0xFAA19CB27FF500D8) - v43 + 0x2AF31A6C0057F93) ^ 0xA99F7374E88223D2) >> (8 * ((v8 + v18) & 7))) ^ (((__ROR8__(v54, 8) + (v54 ^ __ROR8__(v53, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v17 + 9) & 7))) ^ *(v8 + v18);
  return (*(STACK[0x370] + 8 * ((5225 * (v18 == 0)) ^ v14)))();
}

uint64_t sub_19699DCB8@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14)
{
  *(&a14 + a1) = -20;
  v16 = ((v14 + 1018922900) ^ 0x3CBB906CLL) + a1 == 56;
  return (*(v15 + 8 * ((v16 | (2 * v16)) ^ v14)))();
}

uint64_t fp_dh_ac8b380baf0bf0ca926b0e34adc42df4()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * (fp_dh_74f0a2a4ec3a78af6e36ab2202e2099d ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * (fp_dh_74f0a2a4ec3a78af6e36ab2202e2099d ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d))] ^ 0xE1]) + 340);
  v1 = *(v0 - 4);
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0BE30 + (*(off_1F0B0CCB0 + (-91 * (v1 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55)) - 4) ^ 0x5Cu)) ^ (-91 * (v1 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55))) + 471);
  v3 = 810526117 * ((*(v2 - 4) + v1) ^ &v5 ^ 0xC67C1AE5E193E855);
  *(v0 - 4) = v3;
  *(v2 - 4) = v3;
  v7 = 750 - 654144011 * (((v6 | 0xF1FBBBDF) + (~v6 | 0xE044420)) ^ 0xDD2FC642);
  LOBYTE(v3) = -91 * ((*(v2 - 4) + *(v0 - 4)) ^ 0x55);
  v8 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0C8F0 + (*(off_1F0B0CD68 + v3 - 4) ^ 0xD2u) - 4) ^ v3) + 72);
  LODWORD(v0) = 810526117 * ((*(v2 - 4) + *(v0 - 4)) ^ 0xE193E855);
  return (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_74f0a2a4ec3a78af6e36ab2202e2099d) ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_74f0a2a4ec3a78af6e36ab2202e2099d) ^ 0x55))] ^ 0x76]) + 626) + 8 * (*(off_1F0B0C738 + (*(off_1F0B0CB48 + v0 - 4) ^ 0xA7u) - 8) ^ v0) + 53548))(v6);
}

void fp_dh_30eb421b6c61fe78b15eea6a340ddb2c(uint64_t a1)
{
  v1 = *a1 ^ (654144011 * ((a1 & 0xB6FF3820 | ~(a1 | 0xB6FF3820)) ^ 0x65D4BA43));
  v2 = *(a1 + 16) > *(a1 + 24);
  __asm { BRAA            X2, X17 }
}

uint64_t sub_19699E0CC@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0x440];
  v3 = STACK[0x204];
  v4 = *(a1 + 72);
  *v2 = (HIBYTE(v4) ^ 0x7C) - ((2 * (HIBYTE(v4) ^ 0x7C)) & 0xD8) - 20;
  v2[1] = (BYTE2(v4) ^ 0x47) - ((2 * (BYTE2(v4) ^ 0x47)) & 0xD8) - 20;
  v2[2] = (BYTE1(v4) ^ 7) - ((2 * (BYTE1(v4) ^ 7)) & 0xD8) - 20;
  v2[3] = v4 ^ 0x87;
  return (*(v1 + 8 * ((7485 * (*(a1 + 92) > 4u)) ^ v3)))();
}

uint64_t sub_19699E1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16)
{
  LODWORD(a14) = v16 - ((&a14 & 0x9509156 | ~(&a14 | 0x9509156)) ^ 0x9AF4FBAB) * v18 + 601;
  a15 = a12;
  a16 = &a10;
  (*(v19 + 8 * (v16 ^ 0x1CC6)))(&a14, a2, a3, a4, a5, a6, a7, a8);
  a14 = a12;
  HIDWORD(a15) = v16 - 489239129 * (&a14 ^ 0xB9282336) - 735;
  v20 = (*(v19 + 8 * (v16 + 5192)))(&a14);
  return (*(v19 + 8 * ((324 * (a15 == (((v16 + 987) | 0x180) ^ (v17 - 1469)))) ^ v16)))(v20);
}

uint64_t sub_19699E27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, unsigned int a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18)
{
  v21 = 1012216201 * ((((2 * &a13) | 0x87F5B024) - &a13 + 1006970862) ^ 0x475350FE);
  a18 = v21 + v20 - 1795306327;
  a15 = v21 - 1782662392;
  a13 = v21 ^ 0x80F33AA;
  a16 = a10;
  a17 = &a11;
  v22 = (*(v19 + 8 * (v20 + 3724)))(&a13, a2, a3, a4, a5, a6, a7, a8);
  return (*(v19 + 8 * (((a14 != v18) * (((v20 - 22146300) & 0xFF77EFF7) + ((v20 - 2108) ^ 0x1D9F2C1))) ^ (v20 - 109))))(v22);
}

uint64_t sub_19699E450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v58 = STACK[0x228];
  v59 = (2 * STACK[0x228]) ^ 0xDAA;
  v60 = 41 * (STACK[0x228] ^ 0xE1F);
  v61 = STACK[0x228] - 2347;
  v62 = STACK[0x668];
  v63 = STACK[0x888];
  v64 = STACK[0x228] - 2283;
  v65 = 1068996913 * ((((v57 - 224) ^ 0x3B3CF1A2) & 0x3D803937 | ~((v57 - 224) ^ 0x3B3CF1A2 | 0x3D803937)) ^ 0x2CADD6FB);
  *(v57 - 216) = 1230483497 - v65;
  *(v57 - 208) = v63;
  *(v57 - 200) = v64 ^ v65;
  *(v57 - 192) = a57;
  *(v57 - 224) = v62;
  *(v57 - 184) = -1482410158 - v65;
  v66 = STACK[0x248];
  v67 = (*(STACK[0x248] + 8 * (v58 ^ 0x14ED)))(v57 - 224, a2, a3, a4, a5, a6, a7, a8);
  v68 = *(v57 - 180);
  LODWORD(STACK[0x9C0]) = v68;
  return (*(v66 + 8 * ((3540 * (v68 == (v59 ^ 0x719F9DEB) + v60)) ^ v61)))(v67);
}

uint64_t sub_19699E564@<X0>(int a1@<W8>)
{
  v8 = (v6 + 4 * v1);
  v9 = v1 + 1;
  *v8 = v8[397] ^ v4 ^ *(v7 - 184 + 4 * (*(v6 + 4 * v9) & 1)) ^ ((*(v6 + 4 * v9) & 0x7FFFFFFE | (((a1 + 1191433297) & 0xB8FC2F67) + v5) & v2) >> 1);
  return (*(v3 + 8 * ((1837 * (v9 == 227)) ^ a1)))();
}

uint64_t sub_19699E624()
{
  v4 = 64 - ((v2 ^ 0x6DFAEEE4u) + v0);
  v5 = (v1 ^ 0x92050565) - v0;
  if (HIDWORD(v4))
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 >= v4;
  }

  v7 = !v6;
  return (*(v3 + 8 * ((502 * v7) ^ v2)))();
}

uint64_t sub_19699E6CC(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_19699E71C@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, unsigned int a41)
{
  v44 = *(&a38 + a2 + 4);
  v45 = (((v42 - 2782) | 0xE0) - 104) ^ HIBYTE(v44);
  v46 = ((2 * a2) & 0xBFECBF78) + (a2 ^ 0xDFF65FBE) + v41;
  *(a1 + v46) = v45 - ((2 * v45) & 0xD8) - 20;
  *(a1 + v46 + 1) = (BYTE2(v44) ^ 0x47) - ((2 * (BYTE2(v44) ^ 0x47)) & 0xD8) - 20;
  *(a1 + v46 + 2) = (BYTE1(v44) ^ 7) - ((2 * (BYTE1(v44) ^ 7)) & 0xD8) - 20;
  *(a1 + v46 + 3) = v44 ^ 0x87;
  return (*(v43 + 8 * ((7 * (a2 + 4 >= a41)) ^ v42)))();
}

uint64_t sub_19699EA0C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, unint64_t a4@<X5>, uint64_t a5@<X6>, _BYTE *a6@<X7>, unint64_t a7@<X8>)
{
  v22 = STACK[0x228] - 3539;
  *a6 = v13;
  *v14 = v15;
  v23 = v16 + v9 - 0x3382B5C2BDF391A5;
  v24 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = ((2 * (v24 + v19)) | 0x9B88ED178DBF3456) - (v24 + v19) + 0x323B8974392065D5;
  v26 = __ROR8__(v25 ^ 0x46AE1D8CB896FABALL, 8);
  v25 ^= 0x2A4CABBBD47F0BCBuLL;
  v27 = (a2 - ((v26 + v25) | a2) + ((v26 + v25) | 0x514449D76ACA0B9BLL)) ^ 0xAAD35D69A0E66372;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v21;
  v30 = __ROR8__(v29, 8);
  v31 = v29 ^ __ROR8__(v28, 61);
  v32 = (a1 - ((v30 + v31) | a1) + ((v30 + v31) | 0x41F5715DB74128EDLL)) ^ 0xBC7E22636E2B6BD9;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ a5;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = __ROR8__((((2 * (v36 + v35)) | 0x5A0CEE07409187E8) - (v36 + v35) - 0x2D067703A048C3F4) ^ 0x4C96D061DE35C88DLL, 8);
  v38 = *(STACK[0x248] + 8 * v22);
  v39 = (((2 * (v36 + v35)) | 0x5A0CEE07409187E8) - (v36 + v35) - 0x2D067703A048C3F4) ^ 0x4C96D061DE35C88DLL ^ __ROR8__(v35, 61);
  v40 = (v37 + v39 - ((2 * (v37 + v39)) & 0x13F4BAF55DAEDB6CLL) - 0x7605A2855128924ALL) ^ 0x7B733B09AEA4AE8;
  *v23 = (((__ROR8__(v40, 8) + (v40 ^ __ROR8__(v39, 61))) ^ a4) >> (8 * (v23 & 7u))) ^ HIBYTE(v17) ^ 0x6F;
  v41 = __ROR8__((v23 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v42 = (v12 - v41) & 0xD94D019A761B3954 | (v41 + v19) & 0x22B2FE6589E4C6ABLL;
  v43 = v42 ^ 0x56276A9D085259C5;
  v42 ^= 0x3AC5DCAA64BBA8B4uLL;
  v44 = __ROR8__(v43, 8);
  v45 = __ROR8__((((2 * (v44 + v42)) | 0x18EF6A3861B429C8) - (v44 + v42) - 0xC77B51C30DA14E4) ^ 0xF7E0A1A2FAF67C0DLL, 8);
  v46 = (((2 * (v44 + v42)) | 0x18EF6A3861B429C8) - (v44 + v42) - 0xC77B51C30DA14E4) ^ 0xF7E0A1A2FAF67C0DLL ^ __ROR8__(v42, 61);
  v47 = (v45 + v46) ^ v21;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (v11 - ((v49 + v48) | v11) + ((v49 + v48) | 0x7799FEBA79E2F88)) ^ 0xFAF2CCD57EF46CBCLL;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ a5;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = __ROR8__(v52, 8);
  v55 = (((2 * (v54 + v53)) | 0xE845661D9F7A9D1ALL) - (v54 + v53) - 0x7422B30ECFBD4E8DLL) ^ 0x15B2146CB1C045F4;
  v56 = v55 ^ __ROR8__(v53, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ a3;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = __ROR8__(v57, 8);
  *(v23 + 1) = (((((v59 + v58) & 0x6956CD47B8C103D1 ^ 0x60144C4190400140) + ((v59 + v58) & 0x96A932B8473EFC2ELL ^ 0x84282288032A600DLL) - 1) ^ 0xB5872FB83C87A764) >> (8 * ((v23 + 1) & 7))) ^ BYTE2(v17) ^ 0x4D;
  v60 = __ROR8__((v23 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v61 = ((v12 - v60) & 0xC10E5D685C5534D4) + v60 + v19 - ((v60 + v19) & 0xC50E5D685C5534D4);
  v62 = v61 ^ 0x4E64366F221C5445;
  v61 ^= 0x228680584EF5A534uLL;
  v63 = (__ROR8__(v62, 8) + v61) ^ v20;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = __ROR8__(v63, 8);
  v66 = __ROR8__((v65 + v64 - ((2 * (v65 + v64)) & 0xD64D8A76A03ED044) - 0x14D93AC4AFE097DELL) ^ 0x56A9B9C64E18FF39, 8);
  v67 = (v65 + v64 - ((2 * (v65 + v64)) & 0xD64D8A76A03ED044) - 0x14D93AC4AFE097DELL) ^ 0x56A9B9C64E18FF39 ^ __ROR8__(v64, 61);
  v68 = (v66 + v67) ^ 0xFD8B533ED96A4334;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = __ROR8__(v68, 8);
  v71 = (v70 + v69 - ((2 * (v70 + v69)) & 0xD3FCED87183E15CELL) - 0x1601893C73E0F519) ^ 0xE339ACC6E8DE896CLL;
  v72 = v71 ^ __ROR8__(v69, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ v18;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ a3;
  *(v23 + 2) = (((__ROR8__(v75, 8) + (v75 ^ __ROR8__(v74, 61))) ^ a4) >> (8 * ((v23 + 2) & 7))) ^ BYTE1(v17) ^ 0x85;
  v76 = __ROR8__((v23 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v77 = ((2 * (v76 + v19)) | 0xC3056805381702A4) - (v76 + v19) + 0x1E7D4BFD63F47EAELL;
  v78 = __ROR8__(v77 ^ 0x6AE8DF05E242E1C3, 8);
  v77 ^= 0x60A69328EAB10B2uLL;
  v79 = (v78 + v77) ^ v20;
  v80 = v79 ^ __ROR8__(v77, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ v21;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = __ROR8__(v81, 8);
  v84 = (((2 * ((v83 + v82) ^ 0x940001BBCD6304CDLL)) & 0x513760C2E89A6D04) - ((v83 + v82) ^ 0x940001BBCD6304CDLL) - 0x289BB061744D3683) ^ 0xBEEF1D1B9FBB8E84;
  v85 = v84 ^ __ROR8__(v82, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ a5;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = (__ROR8__(v86, 8) + v87) ^ v18;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = __ROR8__(v88, 8);
  v91 = (((2 * (v90 + v89)) | 0xEB8D2A5464022CD8) - (v90 + v89) - 0x75C6952A3201166CLL) ^ 0xFB8BFBE0063C3132;
  v92 = __ROR8__(v91, 8) + (v91 ^ __ROR8__(v89, 61));
  *(v23 + 3) = v17 ^ v8 ^ ((((v10 & (2 * v92)) - v92 + v7) ^ a7) >> (8 * ((v16 + v9 + 91 + 3) & 7)));
  return v38();
}

uint64_t sub_19699EFE4()
{
  v4 = (*(v2 + 8 * (v1 + 582)))();
  LODWORD(STACK[0x380]) = v0;
  return (*(v2 + 8 * (((38 * (v1 ^ 0x17C1) - 1999) * v3) ^ (v1 - 5559))))(LODWORD(STACK[0x340]), 1906281716, 48, 1906239693, 4356, STACK[0x338], 95, 6138, v4, 0);
}

uint64_t sub_19699F068(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = 24 * (a3 ^ 0x1077);
  v26.val[1].i64[0] = (v20 + 13) & 0xF;
  v26.val[1].i64[1] = (v20 + 12) & 0xF;
  v26.val[2].i64[0] = (v20 + 11) & 0xF;
  v26.val[2].i64[1] = (v20 + 10) & 0xF;
  v26.val[3].i64[0] = (v20 + 9) & 0xF;
  v26.val[3].i64[1] = v20 & 0xF ^ 8;
  v27.val[0].i64[0] = (v20 + 7) & 0xF;
  v27.val[0].i64[1] = (v20 + 6) & 0xF;
  v27.val[1].i64[0] = (v20 + 5) & 0xF;
  v27.val[1].i64[1] = (v20 + 4) & 0xF;
  v27.val[2].i64[0] = (v20 + 3) & 0xF;
  v27.val[2].i64[1] = (v20 + 2) & 0xF;
  v27.val[3].i64[0] = (v20 + 1) & 0xF;
  v27.val[3].i64[1] = v20 & 0xF;
  v23 = vqtbl4q_s8(v27, xmmword_196EBFA60).u64[0];
  v24.i64[0] = 0xCFCFCFCFCFCFCFCFLL;
  v24.i64[1] = 0xCFCFCFCFCFCFCFCFLL;
  v26.val[0].i64[0] = (((v22 - 2840) | 0x1002u) ^ 0x110DLL) & v21;
  v26.val[0].i64[1] = (v20 + 14) & 0xF;
  v27.val[3].i64[0] = vqtbl4q_s8(v26, xmmword_196EBFA60).u64[0];
  v27.val[3].i64[1] = v23;
  v27.val[0] = vrev64q_s8(vmulq_s8(v27.val[3], v24));
  *(v20 + a17 - 16) = veorq_s8(veorq_s8(veorq_s8(*(v19 + v26.val[0].i64[0] - 15), *(v20 + a17 - 16)), veorq_s8(*(v26.val[0].i64[0] + v18 - 14), *(v17 + v26.val[0].i64[0] - 15))), vextq_s8(v27.val[0], v27.val[0], 8uLL));
  return (*(a16 + 8 * ((8004 * ((v20 & 0x10) == 16)) ^ v22)))();
}

uint64_t sub_19699F1CC@<X0>(uint64_t a1@<X5>, char a2@<W8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = (a2 ^ 0xBA) * (a2 + 17);
  return (*(v4 + 8 * (((v5 == 0) * (((v3 + 1164) | 8) - 4086)) ^ v3)))();
}

uint64_t sub_19699F27C()
{
  v6 = (v2 + 32);
  v7 = (v3 + 32);
  v8 = *v6;
  *(v7 - 1) = *(v6 - 1);
  *v7 = v8;
  return (*(v5 + 8 * ((115 * ((((v1 - 233) ^ (v0 + v4 - 32 == 0)) & 1) == 0)) ^ v1)))();
}

uint64_t sub_19699F41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char *a18, unsigned int a19)
{
  a18 = &a12;
  a19 = 1498 - 1825732043 * ((1923405969 - (&a17 | 0x72A4D891) + (&a17 | 0x8D5B276E)) ^ 0x8DCD7459);
  v22 = (*(v19 + 53584))(&a17, a2, a3, a4, a5, a6, a7, a8);
  return (*(v19 + 8 * ((4310 * (a17 == v21)) ^ v20)))(v22);
}

void fp_dh_b889d120b89ca3f8d35055c16dbb88e0(uint64_t a1)
{
  v1 = *(a1 + 24) - 1012216201 * ((2 * (a1 & 0xCE20D12) - a1 + 1931342573) ^ 0xF7B47A01);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_19699F5E8@<X0>(int a1@<W8>)
{
  STACK[0x6F0] = STACK[0x960];
  LODWORD(STACK[0x8E4]) = STACK[0x5F4];
  LODWORD(STACK[0x63C]) = 1906281716;
  STACK[0x800] = *(v2 + 8 * (a1 - 4380));
  LODWORD(STACK[0x410]) = v3 - 3580;
  LODWORD(STACK[0x400]) = v3 - 3374;
  return (*(v2 + 8 * (((&STACK[0x970] == 0) * ((((a1 + 677) ^ 0xEF4) - 2745) ^ (a1 - 1010))) ^ (a1 + 677))))();
}

uint64_t sub_19699F74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t *a14, unsigned int a15)
{
  a15 = 1498 - 1825732043 * ((2 * (&a13 & 0x241FCAE8) - &a13 + 1541420307) ^ 0x5B766624);
  a14 = &a9;
  v17 = (*(v15 + 53584))(&a13, a2, a3, a4, a5, a6, a7, a8);
  return (*(v15 + 8 * ((8026 * (a13 == v16)) ^ 0xF66u)))(v17);
}

uint64_t sub_19699F7D4(unint64_t a1)
{
  STACK[0x530] = a1;
  *a1 = 5;
  *(a1 + 4) = 0;
  v3 = (*(v2 + 8 * (v1 + 3717)))(120, 0x1000040F604211FLL);
  STACK[0x4C8] = v3;
  return (*(v2 + 8 * (((v3 == 0) * (((v1 + 471184246) & 0xE3EA4E9D) - 3528)) | v1)))();
}

uint64_t sub_19699F854()
{
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 - 2167);
  *(v4 + 108) = 0;
  *(v4 + 116) = 0;
  *(v3 - 224) = (v1 - 1023112470) ^ (489239129 * ((((2 * (v3 - 224)) | 0x46D28AA8) - (v3 - 224) + 1553382060) ^ 0x1A416662));
  v5 = (*(v2 + 8 * (v1 + 4739)))(v3 - 224);
  return (*(v2 + 8 * ((*(v3 - 220) == ((v1 + 1426) ^ (v0 + 1) ^ (v1 + 2136102580) & 0x80ADAEDD)) | v1)))(v5);
}

uint64_t sub_19699F91C()
{
  v2 = STACK[0x970];
  STACK[0x430] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (((v2 == 0) * ((((97 * (v0 ^ 0x15B) - 826) | 0xC08) - 3263) ^ 0x166)) ^ (97 * (v0 ^ 0x15B)))))();
}

void fp_dh_a4afc954cdcf18082bb3d88dc18870ee(uint64_t a1)
{
  v1 = 654144011 * ((((2 * a1) | 0x138A8922) - a1 + 1983560559) ^ 0xA511390D);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_19699FA44()
{
  *(v2 - 224) = (v0 - 1144381231) ^ (654144011 * ((((v2 - 224) ^ 0x5FAD7731 | 0x721A705C) - ((v2 - 224) ^ 0x5FAD7731) + (((v2 - 224) ^ 0x5FAD7731) & 0x8DE58FA1)) ^ 0x1637AF1));
  *(v2 - 216) = 0;
  v3 = (*(v1 + 8 * (v0 ^ 0x11EE)))(v2 - 224);
  return (*(v1 + 8 * (((*(v2 - 208) == 1906281716) * ((2 * v0) ^ 0xDAB)) ^ v0)))(v3);
}

uint64_t sub_19699FB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  *a5 = 0;
  *a6 = 0;
  a15 = 1575331711 * ((&a15 - 2135672926 - 2 * (&a15 & 0x80B437A2)) ^ 0xECEFA2A0) + 1655634431;
  v17 = (*(v16 + 54592))(&a15);
  return (*(v16 + 8 * ((612 * (a16 == 1906281716)) ^ 0xD9Fu)))(v17);
}

uint64_t sub_19699FBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char *a20, unsigned int a21)
{
  a21 = v21 - 1825732043 * (((&a19 | 0xCD0B758E) - (&a19 & 0xCD0B758E)) ^ 0xCD9D26B9) - 2330;
  a20 = &a15;
  v24 = (*(v23 + 8 * (v21 ^ 0x14DE)))(&a19, a2, a3, a4, a5, a6, a7, a8);
  return (*(v23 + 8 * ((6217 * (a19 == v21 + v22 + ((24 * (v21 ^ 0xEB2)) ^ 0xFFE434D2))) ^ v21)))(v24);
}

uint64_t sub_19699FCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(v6 + 8);
  STACK[0x5D0] = v8;
  return (*(a6 + 8 * (((((v8 == 0) ^ v7) & 1) * (((v7 + 1178) | 0x2E2) - 1794)) ^ (v7 + 1681))))(a1, a2, a3, a4, a5);
}

uint64_t sub_19699FD90@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v2 = *(STACK[0x588] + 24);
  STACK[0x628] = v2;
  return (*(a1 + 8 * ((v2 == 0) ^ a2)))();
}

uint64_t sub_19699FDC4()
{
  v5 = ((1922915867 - (v1 | 0x729D5E1B) + (v1 | 0x8D62A1E4)) ^ 0x344A82D2) * v3;
  *(v4 - 176) = v5 + 483267742;
  *(v4 - 192) = (v0 + 2441) ^ v5;
  *(v4 - 184) = 0;
  *(v4 - 200) = &STACK[0x418];
  *(v4 - 208) = &STACK[0x44C];
  v6 = (*(v2 + 8 * (v0 ^ 0x1F90u)))(v4 - 208);
  return (*(v2 + 8 * (((*(v4 - 172) != 26 * (v0 ^ 0x525) + 1906280910) * (((v0 - 785300947) & 0x2ECEBBBE) - 732)) ^ v0)))(v6);
}

uint64_t sub_19699FF0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v18 = v5 - 1;
  v19 = __ROR8__((v4 + v18) & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = (v8 - v19) & v9 | (v19 + v15) & 0x3AEE81B944E09FB0;
  v21 = (v11 + 2687) ^ 0x888A2F91047AD30FLL ^ v20;
  v22 = v20 ^ v10;
  v23 = (__ROR8__(v21, 8) + v22) ^ a1;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = ((a2 | (2 * (v25 + v24))) - (v25 + v24) + 0x24D8912177D70596) ^ 0x82D0DE87C71DD9F3 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(((a2 | (2 * (v25 + v24))) - (v25 + v24) + 0x24D8912177D70596) ^ 0x82D0DE87C71DD9F3, 8) + v26) ^ 0xA6F455365512A6E1;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (((2 * (v29 + v28)) & 0xD2F19E5B011E36EELL) - (v29 + v28) - 0x6978CF2D808F1B78) ^ 0x7378066E86DAB11DLL;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = v32 + v31 - ((2 * (v32 + v31)) & 0x2EAA180CCDADE282) - 0x68AAF3F999290EBFLL;
  v34 = __ROR8__((a4 + v18) & 0xFFFFFFFFFFFFFFF8, 8);
  v33 ^= 0xC67D2DBDAC7FC91DLL;
  v35 = ((v34 + v14) | 0x9AD5F752899AD369) - ((v34 + v14) | v6) + v6;
  v36 = v35 ^ 0xD33CB569E68C34BBLL;
  v35 ^= 0x7B7A50FE7F7A45E7uLL;
  v37 = v33 ^ __ROR8__(v31, 61);
  v38 = (__ROR8__(v36, 8) + v35) ^ v13;
  v39 = v38 ^ __ROR8__(v35, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v16;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ v7;
  v43 = (__ROR8__(v33, 8) + v37) ^ 0xCDE7FE8E73F8F117;
  v44 = v42 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v42, 8) + v44) ^ 0x61459D2AF01F24F7;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ v12;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = __ROR8__(v47, 8);
  v50 = __ROR8__(v43, 8) + (v43 ^ __ROR8__(v37, 61));
  v51 = (v49 + v48 - ((2 * (v49 + v48)) & 0x3B0800F1971F3628) + 0x1D840078CB8F9B14) ^ 0x7AEEB9C89DC3417;
  *(a4 + v18) = ((v50 ^ 0xAC1351F25BD82AF2) >> (8 * ((v4 + v18) & 7))) ^ (((__ROR8__(v51, 8) + (v51 ^ __ROR8__(v48, 61))) ^ v17) >> (8 * ((a4 + v18) & 7))) ^ *(v4 + v18);
  return (*(a3 + 8 * ((82 * (v18 != 0)) ^ v11)))();
}

uint64_t fp_dh_6e0217914d918b1ca2e0ae5317190cb2(_DWORD *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = 489239129 * (((a1 | 0x71B7E873) - a1 + (a1 & 0x8E48178C)) ^ 0xC89FCB45);
  v3 = a1[13] ^ v2;
  v4 = a1[8] ^ v2;
  v9 = v3 + 1283153057 * ((-1311722940 - (&v9 | 0xB1D0B244) + (&v9 | 0x4E2F4DBB)) ^ 0x1F74E8C) - 1648366288;
  v5 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v3 ^ 0x67EB88C8)) - 4;
  result = (*&v5[8 * v3 - 0x33F5B7E48])(&v9);
  if (v4 <= 597849042)
  {
    switch(v4)
    {
      case 597849040:
        v7 = 0;
        break;
      case 597849041:
        v7 = 2;
        break;
      case 597849042:
        v7 = 1;
        break;
      default:
        goto LABEL_18;
    }

LABEL_17:
    v8 = *&v5[8 * ((((*&v5[8 * (v3 ^ 0x67EB903D)])((*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v3 ^ 0x67EB88A3)) + 6 * v7 + 4) - 763604091), 0x100004077774924) == 0) * (((v3 - 1743488431) | 0x1004) - 5328)) ^ (v3 - 1743483153))];
    __asm { BRAA            X8, X17 }
  }

  if (v4 > 597849045)
  {
    if (v4 == 597849046)
    {
      v7 = 4;
    }

    else
    {
      if (v4 != 883061717)
      {
        goto LABEL_18;
      }

      v7 = 6;
    }

    goto LABEL_17;
  }

  if (v4 == 597849043)
  {
    v7 = 3;
    goto LABEL_17;
  }

  if (v4 == 597849045)
  {
    v7 = 5;
    goto LABEL_17;
  }

LABEL_18:
  a1[12] = 1906239664;
  return result;
}

uint64_t sub_1969A055C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, char *a14, char *a15, unsigned int a16, unsigned int a17, uint64_t a18)
{
  v21 = 1283153057 * (((&a14 | 0x81CBEF5) + (~&a14 | 0xF7E3410A)) ^ 0x47C4BDC3);
  a18 = v18;
  a16 = 1315196658 - v21;
  a17 = v21 + v20 - 2700;
  a14 = &a11;
  a15 = &a13;
  v22 = (*(v19 + 8 * (v20 + 3048)))(&a14, a2, a3, a4, a5, a6, a7, a8);
  return (*(v19 + 8 * ((6494 * (*(v18 + 24) == ((5 * (v20 ^ 0xC38) + 1906276726) ^ (v20 - 2814)))) ^ v20)))(v22);
}

void sub_1969A0614()
{
  v1 = 13 * (*(v0 - 176) ^ 0x1773);
  v2 = *(v0 - 184);
  *(v0 - 152) = *(v0 - 180) ^ 0xB4AE3017;
  *(v0 - 148) = v2 ^ v1 ^ 0xFAC956D9;
  v3 = *(v0 - 192);
  *(v0 - 144) = *(v0 - 188) ^ 0x279A31A7;
  *(v0 - 140) = v3 ^ 0x6A738874;
  JUMPOUT(0x1968FC1ECLL);
}

uint64_t sub_1969A06D0@<X0>(unint64_t a1@<X8>)
{
  v6 = LOWORD(STACK[0x996]);
  if (v6 == 26075)
  {
    v7 = STACK[0x818];
    STACK[0x690] = a1;
    LODWORD(STACK[0x92C]) = v1;
    STACK[0x6D0] = v7 + v2;
    v3 = 1906281716;
  }

  else if (v6 == 45445 || v6 == 41591)
  {
    STACK[0x690] = a1;
    LODWORD(STACK[0x92C]) = v1;
    v3 = 1906239355;
  }

  if (v3 == 1906239664)
  {
    return (*(v4 + 8 * (((*(STACK[0x580] + 97) == 67) * (((v5 - 3608) | 0x360) ^ 0x1DE)) ^ (v5 - 2297))))();
  }

  if (v3 != 1906281716)
  {
    JUMPOUT(0x1969A09F0);
  }

  v8 = STACK[0x580];
  v9 = *(STACK[0x580] + 20);
  if (v9 == 1)
  {
    LODWORD(STACK[0x3F0]) = (8 * v5) ^ 0x66D0;
    LODWORD(STACK[0x400]) = v5 - 2626;
    v13 = *v8;
    v14 = STACK[0x248];
    STACK[0x5A0] = *(STACK[0x248] + 8 * (v5 - 3296));
    return (*(v14 + 8 * (((v13 == 0) * (((1261 * (v5 ^ 0xE1E) - 1986) ^ 0xFFFFF7DD) + ((1261 * (v5 ^ 0xE1E) - 1986) | 0xC04))) ^ (1261 * (v5 ^ 0xE1E) + 1005))))();
  }

  else
  {
    v10 = 1906239667;
    if (!v9)
    {
      if (*(v8 + 97) == 67)
      {
        v10 = 1906239514;
      }

      else
      {
        v10 = 1906239667;
      }
    }

    LODWORD(STACK[0x824]) = v10;
    v12 = STACK[0x248];
    STACK[0x5C0] = STACK[0x580];
    STACK[0x740] = *(v12 + 8 * (v5 - 3600));
    STACK[0x590] = &STACK[0x5C0];
    v15 = STACK[0x5C0];
    STACK[0x880] = STACK[0x5C0];
    return (*(v12 + 8 * (((v15 == 0) * (((v5 + 495) | 0x854) ^ 0x1896 ^ ((((v5 + 495) | 0x854) - 3651) | 0x400) ^ 0xEE0)) ^ ((v5 + 495) | 0x854))))();
  }
}

uint64_t sub_1969A0884@<X0>(unint64_t a1@<X8>)
{
  v4 = LOWORD(STACK[0x9BE]);
  if (v4 != 26075)
  {
    if (v4 == 45445 || v4 == 41591)
    {
      STACK[0x498] = a1;
      JUMPOUT(0x1969A0830);
    }

    JUMPOUT(0x1969A0834);
  }

  v5 = STACK[0x4F0];
  STACK[0x498] = a1;
  STACK[0x5B0] = v5 + v2;
  return (*(STACK[0x248] + 8 * ((((v3 + 1294262722) & 0xB2DB15FD ^ 0x717) * (v1 == -1720256261)) ^ (v3 + 1671))))();
}

uint64_t sub_1969A0A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *v7;
  STACK[0x7B8] = 0;
  STACK[0x7F8] = 0;
  return (*(a6 + 8 * ((((((v6 + 1546175211) & 0xA3D73E5F) - 5388) ^ 0x154) * (v8 == 0)) ^ v6)))(a1, a2, a3, a4, a5);
}

uint64_t fp_dh_ef826c7230a7370dea279509832e7cd4(uint64_t a1)
{
  v1 = (*a1 - 489239129 * ((-2 - ((a1 | 0xD0B2FFEB) + (~a1 | 0x2F4D0014))) ^ 0x96652322)) ^ 0xE15;
  v2 = v1 + *(*(a1 + 8) + 4);
  v4 = v2 - 676342670;
  v3 = v2 - 676342670 < 0;
  v5 = 676342670 - v2;
  if (!v3)
  {
    v5 = v4;
  }

  return (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 - 2106) + 8 * ((405 * (v5 <= ((v1 - 1547) ^ ((v1 + 114) | 3) ^ 0xF80))) ^ v1) - 4))();
}

void sub_1969A0CB0(int a1@<W8>)
{
  if (a1 > 364443024)
  {
    if (a1 == 364443025)
    {
      v7 = (v8 | (v1 << 8)) != ((v8 | (v1 << 8)) & 0x66CF ^ v8 & 4) << ((v5 + 61) ^ 0xFE);
      __asm { BRAA            X10, X17 }
    }

    v6 = -2669;
  }

  else
  {
    if (a1 == 364443022)
    {
      goto LABEL_7;
    }

    v6 = -2672;
  }

  if (a1 == (v6 | 0x15B80000))
  {
LABEL_7:
    __asm { BRAA            X8, X17 }
  }

  *(v3 + 24) = (((v2 ^ 0x28289671) + 1957632565) ^ ((v2 ^ 0xD870AF4B) - 2064178417) ^ ((v2 ^ 0x1F6B13C0) + 1139580806)) - 1108679116;
}

uint64_t sub_1969A0EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v7 - 1) = v10;
  *v7 = v10;
  return (*(v9 + 8 * (((v6 == 0) * a6) ^ v8)))(a1, a2, a3, a4, a5);
}

uint64_t sub_1969A12B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, int a13, char *a14, unsigned int a15)
{
  a14 = &a10;
  a15 = 1498 - 1825732043 * ((2 * (&a13 & 0x3B7A0A08) - &a13 - 997853707) ^ 0xC413A6C2);
  v18 = (*(v16 + 53584))(&a13, a2, a3, a4, a5, a6, a7, a8);
  return (*(v16 + 8 * ((5502 * (a13 == v15)) ^ v17)))(v18);
}

uint64_t sub_1969A1354@<X0>(uint64_t a1@<X8>)
{
  v5 = (((v2 - 3853) | 0xC20u) ^ 0xFFFFFFFFFFFFF1D7) + v1;
  *(a1 + v5) = *(v4 + v5);
  return (*(v3 + 8 * ((1601 * (v5 == 0)) ^ v2)))();
}

void sub_1969A1394()
{
  STACK[0x19D8] = 0xAFCC11CD4CDFF4D3;
  STACK[0x19D0] = 0xA005C2CA39410838;
  JUMPOUT(0x1968BB580);
}

void hZZRqgZwI(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969A15D0()
{
  v3 = (v1 + 554) | 1;
  v4 = *(v2 + 8 * (v1 + 5729));
  v5 = v0;
  v6 = v4();
  LODWORD(STACK[0xB24]) = v5;
  STACK[0x958] = (v3 - 1483) + STACK[0x958] - 96;
  return (*(v2 + 8 * (((v3 ^ 0x1509) * (v5 == 1906281716)) ^ v3)))(v6);
}

uint64_t fp_dh_b40e40725eb9262eaa8af935664653cd(uint64_t result)
{
  v1 = (*(result + 8) - 119 * ((2 * (result & 0x6D) - result + 18) ^ 0xFE));
  if (v1 == 119 || v1 == 116)
  {
    v3 = 1906281716;
  }

  else
  {
    v3 = 1906238819;
  }

  *(result + 4) = v3;
  return result;
}

void fp_dh_3195c1e905d8e67be4820d5ed7295b92(uint64_t a1)
{
  v1 = *(a1 + 36) - 1790939281 * (((a1 | 0xF019699) - (a1 & 0xF019699)) ^ 0xF7DDB6D8);
  __asm { BRAA            X8, X17 }
}

void sub_1969A1954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  LODWORD(STACK[0x250]) = 0;
  LODWORD(STACK[0x244]) = 0;
  LODWORD(STACK[0x238]) = a63 ^ 0x88888888;
  LODWORD(STACK[0x240]) = (v65 - 2004319135) ^ a62;
  LODWORD(STACK[0x248]) = a65 ^ 0x88888888;
  LODWORD(STACK[0x260]) = a61;
  LODWORD(STACK[0x254]) = a58;
  LODWORD(STACK[0x234]) = 1920699167;
  LODWORD(STACK[0x258]) = a59;
  LODWORD(STACK[0x25C]) = a60;
  LODWORD(STACK[0x23C]) = a64;
  JUMPOUT(0x1969911D8);
}

uint64_t sub_1969A19D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x784]) = a65;
  STACK[0x570] = v66;
  STACK[0x740] = *(v67 + 8 * (v65 - 3597));
  STACK[0x590] = &STACK[0x570];
  v68 = STACK[0x570];
  STACK[0x880] = STACK[0x570];
  return (*(v67 + 8 * (((v68 == 0) * ((v65 + 2627) ^ 0x1896 ^ ((v65 - 1024) | 0x400) ^ 0xEE0)) ^ (v65 + 2627))))();
}

uint64_t sub_1969A19EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(STACK[0x390] + 24);
  STACK[0x4C0] = v7;
  return (*(a6 + 8 * (((v7 == 0) * (((v6 - 1403877176) & 0x53AD7E7F ^ 0xFFFFE4F9) + ((v6 + 265584297) & 0xF02B7FD9))) ^ v6)))(a1, a2, a3, a4, a5);
}

uint64_t sub_1969A1AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  STACK[0x530] = 0;
  v9 = STACK[0x644];
  STACK[0x3C0] = 0;
  STACK[0x568] -= 32;
  return (*(a6 + 8 * ((4257 * (v9 == ((953 * (a8 ^ 0x165E)) ^ (v8 - 1301)))) ^ (a8 - 3611))))(a1, a2, a3, a4, a5);
}

uint64_t sub_1969A1BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v14 = a5 - 2100;
  v15 = a11 + ((a5 - 2100) ^ (v12 + 747));
  v16 = -83 * ((a5 - 52) ^ 2);
  v17 = v15 + v13 + 2048668558;
  v18 = v15 > ((307 * (v14 ^ 0x31C)) ^ 0x586012C7u);
  if (v18 == v17 < 0xA79FE009)
  {
    LOBYTE(v18) = v15 - 1482694647 > v17;
  }

  return (*(v11 + 8 * (((16 * ((v16 ^ v18) & 1)) & 0xBF | (((v16 ^ v18) & 1) << 6)) ^ v14)))(a1);
}

uint64_t sub_1969A1C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v15 = 1825732043 * ((v14 - 136) ^ 0x965337);
  *v10 = v13;
  *(v14 - 116) = 1765068451 - v15;
  *(v14 - 124) = (a9 + 1370) ^ v15;
  *(v14 - 120) = v15 ^ 0x5663F206;
  v16 = (*(v12 + 8 * (a9 ^ 0x184Du)))(v14 - 136, a2, a3, a4, a5, a6, a7, a8);
  return (*(v12 + 8 * (((*(v14 - 128) == v9) * ((a9 + 1469348883) ^ (v11 + 529))) ^ a9)))(v16);
}

void sub_1969A1D34(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (((v8 ^ 0x9F4E9D29) + 1622237911) ^ ((v8 ^ 0x1502BD4E) - 352501070) ^ ((a1 ^ 0x9F4DFE9) + (v8 ^ 0xF60B270C))) + 1250514671 + (((*(a8 + 88) ^ 0x6BE0803F) - 1809875007) ^ ((*(a8 + 88) ^ 0x24294CDB) - 606686427) ^ ((*(a8 + 88) ^ 0x338ECB8F) - 864996239));
  v10 = (v9 ^ 0xF3027D6) & (2 * (v9 & 0xAE04B7E7)) ^ v9 & 0xAE04B7E7;
  v11 = ((2 * (v9 ^ 0xF304290)) ^ 0x4269EAEE) & (v9 ^ 0xF304290) ^ (2 * (v9 ^ 0xF304290)) & 0xA134F576;
  v12 = v11 ^ 0xA1141511;
  v13 = (v11 ^ 0x20E024) & (4 * v10) ^ v10;
  v14 = ((4 * v12) ^ 0x84D3D5DC) & v12 ^ (4 * v12) & 0xA134F574;
  v15 = (v14 ^ 0x8010D550) & (16 * v13) ^ v13;
  v16 = ((16 * (v14 ^ 0x21242023)) ^ 0x134F5770) & (v14 ^ 0x21242023) ^ (16 * (v14 ^ 0x21242023)) & 0xA134F570;
  v17 = v15 ^ 0xA134F577 ^ (v16 ^ 0x1045500) & (v15 << 8);
  *(a8 + 88) = v9 ^ (2 * ((v17 << 16) & 0x21340000 ^ v17 ^ ((v17 << 16) ^ 0x75770000) & (((v16 ^ 0xA030A007) << 8) & 0x21340000 ^ (((v16 ^ 0xA030A007) << 8) ^ 0x34F50000) & (v16 ^ 0xA030A007) ^ 0x1000000))) ^ 0xD2425A62;
  JUMPOUT(0x1969A1F34);
}

uint64_t sub_1969A271C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16)
{
  LODWORD(a14) = v16 - ((1591523750 - (&a14 | 0x5EDCB9A6) + (&a14 | 0xA1234659)) ^ 0xCD78D35B) * v18 - 214;
  a15 = a10;
  a16 = &a12;
  (*(v17 + 8 * (v16 + 4375)))(&a14, a2, a3, a4, a5, a6, a7, a8);
  a14 = a10;
  HIDWORD(a15) = v16 - 489239129 * ((&a14 - 551514713 - 2 * (&a14 & 0xDF208DA7)) ^ 0x6608AE91) - 1550;
  v20 = (*(v17 + 8 * (v16 ^ 0x1327u)))(&a14);
  return (*(v17 + 8 * (((a15 == v19) * (v16 - 1135)) ^ v16)))(v20);
}

uint64_t sub_1969A2804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v65 = *(v28 + 8 * (v23 - 3));
  v61 = *(a4 + 80);
  v60 = *(a4 + 84);
  v62 = (*(a4 + 96) - ((2 * *(a4 + 96)) & 0x56) - 81);
  if (v62 == 173)
  {
    return sub_1969CE9E4((v27 + 141496098) ^ 0xB5u, 506760871);
  }

  if (v62 == 174)
  {
    v63 = (a4 + v25 + 506760871);
    v64 = *v63 ^ v26;
    LODWORD(v63) = (((v27 + 99) ^ 0x76 ^ v63[2]) << 16) | ((v63[3] ^ v26) << 24) | v64 | ((v63[1] ^ v26) << 8);
    *v29 = v63 + v24 - 2 * (v63 & (v24 + 16) ^ v64 & 0x10);
    return (*(v28 + 8 * ((4891 * ((v25 + 506760875) < 0x40)) ^ (v27 + 1535))))(4891, 2019625056, 506760871, 4294967057, 3412474604, 1214253153, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
  }

  else
  {
    v30 = (((*(a4 + 72) ^ 0xADB9AFC0) + 1380339776) ^ ((*(a4 + 72) ^ 0xA2E02A88) + 1562367352) ^ ((*(a4 + 72) ^ 0x731E8223) - 1931379235)) + (((*(a4 + 72) ^ 0x7C2C694F) - 2083285327) ^ ((*(a4 + 72) ^ 0x89D36A59) + 1982633383) ^ ((*(a4 + 72) ^ 0x89B8047D) + 1984428931)) - 1781955;
    v31 = (v30 ^ 0xF489BF90) & (2 * (v30 & 0xF8A93F99)) ^ v30 & 0xF8A93F99;
    v32 = ((2 * (v30 ^ 0x149BA182)) ^ 0xD8653C36) & (v30 ^ 0x149BA182) ^ (2 * (v30 ^ 0x149BA182)) & 0xEC329E1A;
    v33 = v32 ^ 0x24128209;
    v34 = (v32 ^ 0xC0201C00) & (4 * v31) ^ v31;
    v35 = ((4 * v33) ^ 0xB0CA786C) & v33 ^ (4 * v33) & 0xEC329E18;
    v36 = (v35 ^ 0xA0021800) & (16 * v34) ^ v34;
    v37 = ((16 * (v35 ^ 0x4C308613)) ^ 0xC329E1B0) & (v35 ^ 0x4C308613) ^ (16 * (v35 ^ 0x4C308613)) & 0xEC329E10;
    v38 = v36 ^ 0xEC329E1B ^ (v37 ^ 0xC0208000) & (v36 << 8);
    v39 = v30 ^ (2 * ((v38 << 16) & 0x6C320000 ^ v38 ^ ((v38 << 16) ^ 0x1E1B0000) & (((v37 ^ 0x2C121E0B) << 8) & 0x6C320000 ^ 0x4C200000 ^ (((v37 ^ 0x2C121E0B) << 8) ^ 0x329E0000) & (v37 ^ 0x2C121E0B))));
    v40 = (((*(a4 + 76) ^ 0xBB6E2F81) + 1150406783) ^ ((*(a4 + 76) ^ 0x98836981) + 1736218239) ^ ((*(a4 + 76) ^ 0x5FAA416B) - 1604993387)) + (((*(a4 + 76) ^ 0x23810DCD) - 595660237) ^ ((*(a4 + 76) ^ 0xEF6EAE3B) + 277959109) ^ ((*(a4 + 76) ^ 0xB0A8A49D) + 1331125091)) + 401383994;
    v41 = (v40 ^ 0xFE956CDB) & (2 * (v40 & 0xE0A16C9C)) ^ v40 & 0xE0A16C9C;
    v42 = ((2 * (v40 ^ 0x7E9775E3)) ^ 0x3C6C32FE) & (v40 ^ 0x7E9775E3) ^ (2 * (v40 ^ 0x7E9775E3)) & 0x9E36197E;
    v43 = v42 ^ 0x82120901;
    v44 = (v42 ^ 0x4041070) & (4 * v41) ^ v41;
    v45 = ((4 * v43) ^ 0x78D865FC) & v43 ^ (4 * v43) & 0x9E36197C;
    v46 = (v45 ^ 0x18100160) & (16 * v44) ^ v44;
    v47 = ((16 * (v45 ^ 0x86261803)) ^ 0xE36197F0) & (v45 ^ 0x86261803) ^ (16 * (v45 ^ 0x86261803)) & 0x9E361970;
    v48 = v46 ^ 0x9E36197F ^ (v47 ^ 0x82201100) & (v46 << 8);
    *(a4 + 72) = v39 ^ 0x44AF04C4;
    *(a4 + 76) = v40 ^ (2 * ((v48 << 16) & 0x1E360000 ^ v48 ^ ((v48 << 16) ^ 0x197F0000) & (((v47 ^ 0x1C16080F) << 8) & 0x1E360000 ^ 0x8260000 ^ (((v47 ^ 0x1C16080F) << 8) ^ 0x36190000) & (v47 ^ 0x1C16080F)))) ^ 0x90E65909;
    v49 = (((v61 ^ 0xFDDA573A) + 36022470) ^ ((v61 ^ 0xE1797A50) + 512132528) ^ ((v61 ^ 0x60E42A01) - 1625565697)) + (((*(a4 + 80) ^ 0xB41245CE) + 1273870898) ^ ((*(a4 + 80) ^ 0x99245CE1) + 1725670175) ^ ((*(a4 + 80) ^ 0x51711E44) - 1366367812)) + 1920680965;
    v50 = (v49 ^ 0xA4428085) & (2 * (v49 & 0x8612CAD1)) ^ v49 & 0x8612CAD1;
    v51 = ((2 * (v49 ^ 0xA0478025)) ^ 0x4CAA95E8) & (v49 ^ 0xA0478025) ^ (2 * (v49 ^ 0xA0478025)) & 0x26554AF4;
    v52 = v51 ^ 0x22554A14;
    v53 = (v51 ^ 0xC0) & (4 * v50) ^ v50;
    v54 = ((4 * v52) ^ 0x99552BD0) & v52 ^ (4 * v52) & 0x26554AF4;
    v55 = (v54 ^ 0x550AD0) & (16 * v53) ^ v53;
    v56 = ((16 * (v54 ^ 0x26004024)) ^ 0x6554AF40) & (v54 ^ 0x26004024) ^ (16 * (v54 ^ 0x26004024)) & 0x26554AF0;
    v57 = v55 ^ 0x26554AF4 ^ (v56 ^ 0x24540A00) & (v55 << 8);
    v58 = (((v60 ^ 0xF0C9CD28) + 255210200) ^ ((v60 ^ 0x8B75BDEB) + 1955217941) ^ ((v60 ^ 0x7FB77A8) - 133920680)) + (((*(a4 + 84) ^ 0xE702D03C) + 419246020) ^ ((*(a4 + 84) ^ 0xA2362FF8) + 1573507080) ^ ((*(a4 + 84) ^ 0x3973F8AF) - 963901615)) + 482918553;
    *(a4 + 80) = v49 ^ (2 * ((v57 << 16) & 0x26550000 ^ v57 ^ ((v57 << 16) ^ 0x4AF40000) & (((v56 ^ 0x20140B4) << 8) & 0x26550000 ^ 0x22150000 ^ (((v56 ^ 0x20140B4) << 8) ^ 0x554A0000) & (v56 ^ 0x20140B4)))) ^ 0xB2575852;
    *(a4 + 84) = v58 ^ ((v58 ^ 0xD226D2BE) + 165911683) ^ ((v58 ^ 0x3A43158B) - 511288392) ^ ((v58 ^ 0xB3A0A90A) + 1751508791) ^ ((v58 ^ 0x7FFFDFFC) - 1539665471) ^ 0x587DB6A8;
    return v65(506855424, 1815216128, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
  }
}

uint64_t sub_1969A280C@<X0>(uint64_t a1@<X8>)
{
  v6 = (v3 - 131450507) & 0x7D5C677;
  v7 = (((v6 - 200) - 924) ^ v2) + v1;
  *(v4 - 7 + v7) = *(a1 - 7 + v7);
  return (*(v5 + 8 * ((21 * (((v6 - 1131) & v1) - 8 != v2)) ^ v6)))();
}

uint64_t sub_1969A2A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, unsigned int a59, uint64_t a60, uint64_t a61, char a62)
{
  *(v65 - 152) = v62 + 1283153057 * (((v65 - 168) & 0x7BF3E942 | ~((v65 - 168) | 0x7BF3E942)) ^ 0xCBD4158A) + 1903;
  *(v65 - 144) = v63 + a59;
  *(v65 - 128) = &a62;
  *(v65 - 168) = &STACK[0x2DC];
  *(v65 - 160) = a53;
  (*(v64 + 8 * (v62 ^ 0x1D35)))(v65 - 168, a2, a3, a4, a5, a6, a7, a8);
  return (*(v64 + 8 * ((2893 * (*(v65 - 136) == ((v62 - 1875773403) | 0x60491860) - 2128317300)) ^ v62)))();
}

uint64_t sub_1969A2B24()
{
  v4 = *(v0 + 40 * v1 + 28);
  switch(v4)
  {
    case 1:
      v7 = STACK[0x658];
      STACK[0x660] = *(v2 + 8 * (v3 - 3432));
      return (*(v2 + 8 * (((v7 != 0) * (((v3 - 686835453) & 0x28F03EEE ^ 0x6B0) - 119)) ^ (v3 - 686835453) & 0x28F03EEE)))();
    case 3:
      v6 = *(v0 + 40 * v1 + 16);
      return (*(v2 + 8 * ((v3 + 652) ^ (2 * ((((((v3 - 3577) | 0x79Cu) - 1606) ^ 0xFFF7F307EADFFE9ALL) & (2 * v6)) + (v6 ^ 0x7FFBF983F56FFFF1) != 0x7FFBF983F56FFFF1)))))();
    case 2:
      return (*(v2 + 8 * (((STACK[0x658] == 0) * (v3 ^ 0xE0C)) ^ (v3 + 2250))))();
    default:
      return (STACK[0x7A8])();
  }
}

uint64_t sub_1969A2CB0@<X0>(int a1@<W8>)
{
  STACK[0x628] = v1;
  LODWORD(STACK[0x5CC]) = STACK[0x5C8];
  return (*(v2 + 8 * (((STACK[0x938] == 0) * ((a1 + 1226344245) & 0xB6E77EBC ^ 0xF20 ^ ((a1 - 2005) | 0x100))) ^ a1)))();
}

uint64_t sub_1969A2D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = v7 | 0x1040;
  LODWORD(STACK[0x7F4]) = v6 - v8 + 26;
  v10 = (*(a6 + 8 * ((v7 | 0x1040) ^ 0xAF1)))();
  v11 = STACK[0x370];
  STACK[0x408] = v10;
  return (*(v11 + 8 * (((((v9 + 1) ^ (v10 == 0)) & 1) * ((v9 ^ 0x1404) - 949)) ^ v9)))();
}

uint64_t sub_1969A2D9C()
{
  STACK[0x63C] = 0x3EF091B5A6B1843BLL;
  STACK[0x634] = 0x14FEFD934070CA28;
  STACK[0x62C] = 0x9F7551E6CE5252BDLL;
  STACK[0x6B8] = 0x4CC089407A99689;
  STACK[0x6B0] = 0x92BD272BEBD593C5;
  v2 = ((v0 + 576) ^ 0x1D6C) - 2009212831 * (LODWORD(STACK[0x2B4]) ^ 0xDFDBE097) - 75031379;
  STACK[0x6C0] = 0x9C92BEE5A585895;
  STACK[0x6C8] = 0xEF074F6F56CA4DFDLL;
  v3 = -2009212831 * (LODWORD(STACK[0x2B0]) ^ 0xDFDBE097) - 75026750;
  LODWORD(STACK[0x5C8]) = v2;
  LODWORD(STACK[0x5CC]) = v3;
  v4 = -2009212831 * (((2 * LODWORD(STACK[0x2DC])) & 0xC6487C04 ^ 0x481400) + (LODWORD(STACK[0x2DC]) ^ 0xE319B532));
  LODWORD(STACK[0x5E8]) = -2009212831 * (LODWORD(STACK[0x2CC]) ^ 0x803D8B30) - 75026750;
  LODWORD(STACK[0x5EC]) = v4;
  v5 = -2009212831 * (LODWORD(STACK[0x2D4]) ^ 0x84E96D69) - 75026750;
  LODWORD(STACK[0x5A8]) = -2009212831 * (LODWORD(STACK[0x2D0]) ^ 0x84E96D69) - 75026750;
  LODWORD(STACK[0x5AC]) = v5;
  v6 = -2009212831 * (LODWORD(STACK[0x298]) ^ 0x5B48DCD2) - 75026750;
  LODWORD(STACK[0x608]) = -2009212831 * (LODWORD(STACK[0x2B8]) ^ 0x5B48DCD2) - 75026750;
  LODWORD(STACK[0x60C]) = v6;
  v7 = -2009212831 * (LODWORD(STACK[0x29C]) ^ 0x5B48DCD2) - 75026750;
  LODWORD(STACK[0x614]) = -2009212831 * (LODWORD(STACK[0x2C4]) ^ 0x5B48DCD2) - 75026750;
  LODWORD(STACK[0x610]) = v7;
  v8 = -2009212831 * (LODWORD(STACK[0x304]) ^ 0x84E96D69) - 75026750;
  LODWORD(STACK[0x5B0]) = -2009212831 * (((2 * LODWORD(STACK[0x2A4])) & 0xC6487C04 ^ 0x405800) + (LODWORD(STACK[0x2A4]) ^ 0xE7CD536B));
  LODWORD(STACK[0x5B4]) = v8;
  v9 = -2009212831 * (LODWORD(STACK[0x2E0]) ^ 0xDFDBE097) - 75026750;
  LODWORD(STACK[0x5D0]) = -2009212831 * (LODWORD(STACK[0x2D8]) ^ 0xDFDBE097) - 75026750;
  LODWORD(STACK[0x5D4]) = v9;
  v10 = -2009212831 * (LODWORD(STACK[0x2AC]) ^ 0x803D8B30) - 75026750;
  LODWORD(STACK[0x5F0]) = -2009212831 * (LODWORD(STACK[0x308]) ^ 0x803D8B30) - 75026750;
  LODWORD(STACK[0x5F4]) = v10;
  v11 = -2009212831 * (LODWORD(STACK[0x2E4]) ^ 0xDFDBE097) - 75026750;
  LODWORD(STACK[0x5D8]) = -2009212831 * (LODWORD(STACK[0x2C8]) ^ 0xDFDBE097) - 75026750;
  LODWORD(STACK[0x5DC]) = v11;
  v12 = -2009212831 * (LODWORD(STACK[0x310]) ^ 0x84E96D69) - 75026750;
  LODWORD(STACK[0x5B8]) = -2009212831 * (LODWORD(STACK[0x30C]) ^ 0x84E96D69) - 75026750;
  v13 = LODWORD(STACK[0x2A0]) ^ 0x5B48DCD2;
  v14 = LODWORD(STACK[0x2E8]) ^ 0x5B48DCD2;
  v15 = LODWORD(STACK[0x320]) ^ 0x84E96D69;
  LODWORD(STACK[0x5BC]) = v12;
  v16 = -2009212831 * v15;
  v17 = -2009212831 * v15 - 75026750;
  LODWORD(STACK[0x618]) = -2009212831 * v13 - 75026750;
  LODWORD(STACK[0x61C]) = -2009212831 * v14 - 75026750;
  v18 = -2009212831 * (LODWORD(STACK[0x318]) ^ 0x803D8B30) - 75026750;
  LODWORD(STACK[0x5F8]) = -2009212831 * (LODWORD(STACK[0x330]) ^ 0x803D8B30) - 75026750;
  LODWORD(STACK[0x5FC]) = v18;
  v19 = LODWORD(STACK[0x324]) ^ 0x803D8B30;
  v20 = ((v17 & 0x803D8B30) + ((75026749 - v16) & 0x803D8B30)) ^ LODWORD(STACK[0x338]);
  v21 = LODWORD(STACK[0x334]) ^ 0x84E96D69;
  v22 = -2009212831 * (LODWORD(STACK[0x2F0]) ^ 0x5B48DCD2) - 75026750;
  LODWORD(STACK[0x620]) = -2009212831 * (LODWORD(STACK[0x300]) ^ 0x5B48DCD2) - 75026750;
  v23 = LODWORD(STACK[0x2EC]) ^ 0xDFDBE097;
  v24 = LODWORD(STACK[0x2A8]) ^ 0xDFDBE097;
  LODWORD(STACK[0x6A8]) = 383329099;
  LODWORD(STACK[0x5C0]) = v17;
  LODWORD(STACK[0x5C4]) = -2009212831 * v21 - 75026750;
  LODWORD(STACK[0x6AC]) = 257011705;
  LODWORD(STACK[0x600]) = -2009212831 * v20 - 75026750;
  LODWORD(STACK[0x604]) = -2009212831 * v19 - 75026750;
  v24 *= -2009212831;
  LODWORD(STACK[0x5E0]) = -2009212831 * v23 - 75026750;
  LODWORD(STACK[0x5E4]) = v24 - 75026750;
  LODWORD(STACK[0x624]) = v22;
  STACK[0x680] = 0x96E97F4E0E5ED553;
  STACK[0x668] = 0xB31E18C74A8CD21ALL;
  STACK[0x670] = 0x3335D09AD8880B48;
  LODWORD(STACK[0x678]) = 171452789;
  LODWORD(STACK[0x67C]) = 118556489;
  STACK[0x690] = 0x876719C17540D3A9;
  LODWORD(STACK[0x68C]) = 1975774152;
  LODWORD(STACK[0x688]) = 504652092;
  LODWORD(STACK[0x650]) = 1010317895;
  LODWORD(STACK[0x654]) = 752711107;
  LODWORD(STACK[0x648]) = -767829222;
  v25 = *(STACK[0x328] + 8);
  LODWORD(STACK[0x64C]) = 290476794;
  LODWORD(STACK[0x658]) = ((75026749 - v24) & 0xC5A6E05) + ((v24 - 75026750) & 0xC5A6E05);
  LODWORD(STACK[0x65C]) = 972532772;
  LODWORD(STACK[0x6A4]) = -968200765;
  LODWORD(STACK[0x6A0]) = 214314725;
  LODWORD(STACK[0x628]) = -462022084;
  LODWORD(STACK[0x644]) = -1576322188;
  LODWORD(STACK[0x698]) = -215356189;
  LODWORD(STACK[0x69C]) = -1192694114;
  LODWORD(STACK[0x664]) = -1586626111;
  LODWORD(STACK[0x660]) = -1012147197;
  return (*(v1 + 8 * ((115 * (*v25 == 0)) ^ v0)))();
}

void h5eRUOOOhxuaBmELCqQZZEcx()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_a482864f755e13eece0a3091a52d5825) ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_a482864f755e13eece0a3091a52d5825) ^ 0x55))] ^ 0xE1]) + 32);
  v1 = *(v0 - 4);
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0CB90 + (*(off_1F0B0C400 + (-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + v1) ^ 0x55))) ^ 0xCu)) ^ (-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + v1) ^ 0x55))) + 349);
  v3 = (*(v2 - 4) - v1) ^ &v5;
  *(v0 - 4) = 810526117 * v3 + 0x528FD8C35B4E87C9;
  *(v2 - 4) = 810526117 * (v3 ^ 0xC67C1AE5E193E855);
  v6[0] = 1575331711 * ((-2030128486 - (v6 | 0x86FEB29A) + (v6 | 0x79014D65)) ^ 0x155AD867) + 1655634431;
  LOBYTE(v2) = -91 * ((*(v2 - 4) + *(v0 - 4)) ^ 0x55);
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_a482864f755e13eece0a3091a52d5825) ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_a482864f755e13eece0a3091a52d5825) ^ 0x55))] ^ 0x1D]) + 418) - 4;
  (*&v4[8 * (*(off_1F0B0CAE8 + (*(off_1F0B0CC80 + v2) ^ 0xDCu) - 8) ^ v2) + 53856])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969A3A0C@<X0>(uint64_t a1@<X5>, int a2@<W7>, unint64_t *a3@<X8>)
{
  v3 = *a3;
  STACK[0x718] = *a3;
  return (*(a1 + 8 * (((v3 == 0) * (((a2 - 263158450) & 0xFAF77F5) - 4686 + 102 * ((a2 - 263158450) & 0xFAF77F5 ^ 0x138A) - 4698)) ^ (a2 - 263158450) & 0xFAF77F5)))();
}

uint64_t sub_1969A3B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, __n128 a6@<Q1>, int8x16_t a7@<Q4>, uint64_t a8@<D5>, int8x16_t a9@<Q6>, int8x16_t a10@<Q7>)
{
  v19 = a1 + 16;
  v20 = (v19 ^ a4 ^ a2) + v16;
  v21 = v20 & 0xF;
  v22 = v12;
  v23.i64[0] = vqtbl4q_s8(*(&a6 - 1), a7).u64[0];
  v23.i64[1] = a8;
  v24 = vrev64q_s8(veorq_s8(veorq_s8(*(a5 + v20), *(v15 + v21 - 15)), veorq_s8(*(v13 + v21 + 1 - 15), *(v14 + v21 + 1 - 15))));
  v25 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v24, v24, 8uLL), a10), vmulq_s8(v23, a9)));
  *(a5 + v20) = vextq_s8(v25, v25, 8uLL);
  return (*(v18 + 8 * (v17 ^ (2 * (a3 == v19)))))();
}

uint64_t sub_1969A3B10(uint64_t a1)
{
  v5 = *(v4 + 56);
  *(v4 + 56) = ((v1 + 1906233555) ^ (v2 + 2)) + v5;
  return (*(v3 + 8 * ((6055 * ((v5 - 1135080785) < 0xFFFFFFFA)) ^ (v1 - 5740))))(a1, 0);
}

uint64_t sub_1969A3BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(v20 - 176) = *v19;
  *(v20 - 175) = v19[1];
  *(v20 - 174) = v19[2];
  *(v20 - 173) = v19[3];
  *(v20 - 172) = v19[4];
  *(v20 - 171) = v19[5];
  *(v20 - 170) = v19[6];
  *(v20 - 169) = v19[7];
  *(v20 - 168) = v19[8];
  *(v20 - 167) = v19[9];
  *(v20 - 166) = v19[10];
  *(v20 - 165) = v19[11];
  *(v20 - 164) = v19[12];
  *(v20 - 163) = v19[13];
  *(v20 - 162) = v19[14];
  *(v20 - 161) = v19[15];
  if (a18)
  {
    v21 = v20 == 176;
  }

  else
  {
    v21 = 1;
  }

  v23 = v21 || *(a1 + 16) == 0;
  return (*(a2 + 8 * ((203 * ((v23 ^ ((v18 ^ 0x62) - 20)) & 1)) ^ v18 ^ 0x1462)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t fp_dh_47ad5cf20aca4256dd23c1a20ecc095f(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 24);
  return 0;
}

uint64_t sub_1969A3DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19)
{
  a17 = a12;
  a19 = v19 - (((&a17 | 0xF62C1C52) - (&a17 & 0xF62C1C52)) ^ 0x4F043F64) * v20 + 69;
  v22 = (*(v21 + 8 * (v19 + 5996)))(&a17, a2, a3, a4, a5, a6, a7, a8);
  return (*(v21 + 8 * (((a18 == 1906281716) * (((v19 + 3522) | 1) ^ 0x1FF0)) ^ v19)))(v22);
}

uint64_t fp_dh_c947480b8a7807332999d0fdf576b53a(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = *(a2 + 4);
  *(a1 + 32) = *(a2 + 8);
  return 0;
}

uint64_t fp_dh_a8b9c6a4c9fb4ba891beae77321d8399(uint64_t a1)
{
  result = (**(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((1825732043 * (((a1 ^ 0xEDACF85F) & 0xBD1E1038 | ~(a1 ^ 0xEDACF85F | 0xBD1E1038)) ^ 0xAFDB44AF)) ^ *(a1 + 12) ^ 0xE803D691)))(*a1);
  *(a1 + 8) = (result ^ 0x7FBFCCF4) - 236994560 + ((2 * result) & 0xFF7F99E8);
  return result;
}

void sub_1969A3F54(int a1@<W8>)
{
  v6 = (v5 - 128);
  v7 = *(v2 + 16);
  if (v1 == 186)
  {
    goto LABEL_4;
  }

  if (v1 == 89)
  {
    v12 = 449 * (v4 ^ 0xFAD);
    *v6 = v4 - 1575331711 * ((((v5 - 128) ^ 0xFA52B75F | 0xC40EFDA0) - (((v5 - 128) ^ 0xFA52B75F) & 0xC40EFDA0)) ^ 0x5207DFFD) - 1915867180;
    *(v5 - 120) = v21;
    (*(v3 + 8 * (v4 ^ 0x156B)))(v5 - 128);
    v13 = 753662761 * ((((2 * (v5 - 128)) | 0x44DADEB2) - (v5 - 128) - 577597273) ^ 0x47779412);
    *v6 = v13 ^ 0x7383F52B;
    *(v5 - 124) = v4 + 1869825025 + v13;
    *(v5 - 120) = &v19;
    *(v5 - 112) = v21;
    (*(v3 + 8 * (v4 ^ 0x14B7)))(v5 - 128);
    v14 = 753662761 * ((1713559524 - ((v5 - 128) | 0x6622D7E4) + ((v5 - 128) | 0x99DD281B)) ^ 0xFCC7D350);
    *(v5 - 120) = &v18;
    *(v5 - 112) = v21;
    *v6 = v14 ^ 0x7383F52B;
    *(v5 - 124) = v4 + 1869825025 + v14;
    (*(v3 + 8 * (v4 + 2927)))(v5 - 128);
    v15 = &v7[56 * *v7];
    *(v5 - 129) = v15[43] ^ 0xEC;
    *(v5 - 130) = v15[42] ^ (v12 + 35);
    *(v5 - 131) = v15[41] ^ 0xEC;
    *(v5 - 132) = v15[40] ^ 0xEC;
    *(v5 - 133) = v15[39] ^ 0xEC;
    *(v5 - 134) = v15[38] ^ 0xEC;
    *(v5 - 135) = v15[37] ^ 0xEC;
    *(v5 - 136) = v15[36] ^ 0xEC;
    *(v5 - 137) = v15[35] ^ 0xEC;
    *(v5 - 138) = v15[34] ^ 0xEC;
    *(v5 - 139) = v15[33] ^ 0xEC;
    *(v5 - 140) = v15[32] ^ 0xEC;
    *(v5 - 141) = v15[31] ^ 0xEC;
    *(v5 - 142) = v15[30] ^ 0xEC;
    *(v5 - 143) = v15[29] ^ 0xEC;
    *(v5 - 144) = v15[28] ^ 0xEC;
    *(v5 - 145) = v15[27] ^ 0xEC;
    *(v5 - 146) = v15[26] ^ 0xEC;
    *(v5 - 147) = v15[25] ^ 0xEC;
    *(v5 - 148) = v15[24] ^ 0xEC;
    *v6 = &v22;
    *(v5 - 120) = v21;
    *(v5 - 112) = v5 - 148;
    *(v5 - 104) = v4 + 455395931 * (((~(v5 - 128) & 0xB265712E) - (~(v5 - 128) | 0xB265712F)) ^ 0xC4942FE3) + 1684;
    (*(v3 + 8 * (v4 ^ 0x1516)))(v5 - 128);
    v16.i64[0] = 0xD8D8D8D8D8D8D8D8;
    v16.i64[1] = 0xD8D8D8D8D8D8D8D8;
    v17.i64[0] = 0xECECECECECECECECLL;
    v17.i64[1] = 0xECECECECECECECECLL;
    *&v20[4] = vaddq_s8(vsubq_s8(v23, vandq_s8(vaddq_s8(v23, v23), v16)), v17);
    __asm { BRAA            X13, X17 }
  }

  if (v1 == 88)
  {
LABEL_4:
    v8 = &v7[56 * *v7 + 24];
    v9 = 753662761 * ((((v5 - 128) | 0x33645F13) - (v5 - 128) + ((v5 - 128) & 0xCC9BA0E8)) ^ 0x567EA458);
    *(v5 - 104) = v24;
    *(v5 - 112) = v9 + 1904658650;
    *(v5 - 108) = v4 - v9 - 380;
    *(v5 - 128) = v9 ^ 0x6298;
    *(v5 - 120) = v8;
    (*(v3 + 8 * (v4 + 2863)))(v5 - 128);
    v10 = 998242381 * ((v5 + 1592753010 - 2 * ((v5 - 128) & 0x5EEF7BF2)) ^ 0xF480E324);
    *(v5 - 120) = v24;
    *(v5 - 112) = &v19;
    *v6 = (v4 - 453) ^ v10;
    *(v5 - 124) = v10 + 2125716558;
    (*(v3 + 8 * (v4 ^ 0x148A)))(v5 - 128);
    v11 = 998242381 * ((((v5 - 128) | 0xE479F1B7) - (v5 - 128) + ((v5 - 128) & 0x1B860E48)) ^ 0x4E166961);
    *(v5 - 120) = v24;
    *(v5 - 112) = &v18;
    *v6 = (v4 - 453) ^ v11;
    *(v5 - 124) = v11 + 2125716558;
    (*(v3 + 8 * (v4 + 2954)))(v5 - 128);
    *v6 = (v4 - 3744) ^ (1575331711 * ((-270880255 - ((v5 - 128) | 0xEFDAB201) + ((v5 - 128) | 0x10254DFE)) ^ 0x7C7ED8FC));
    *(v5 - 120) = v20;
    *(v5 - 112) = v24;
    (*(v3 + 8 * (v4 ^ 0x1507)))(v5 - 128);
    __asm { BRAA            X11, X17 }
  }

  *(v2 + 28) = a1;
}

void fp_dh_17d981ba61c6bda7b706de35b842ffea(_DWORD *a1)
{
  v1 = a1[4] ^ (1790939281 * (a1 ^ 0xF8DC2041));
  v2 = (*(*a1 + 16) >> 3) & 0x3F;
  *(*a1 + 24 + v2) = 0x80;
  __asm { BRAA            X12, X17 }
}

uint64_t sub_1969A46D8@<X0>(uint64_t a1@<X8>)
{
  v8 = *(v1 + a1 + 40);
  v9 = v6 + a1;
  *(v9 + 24) = *(v1 + a1 + 24);
  *(v9 + 40) = v8;
  return (*(v7 + 8 * (((a1 + v4 + ((v5 + 571) | v3) == 64) * v2) ^ v5)))();
}

void sub_1969A4720()
{
  v3 = v5[3] ^ 0xEC;
  v4 = ((*v5 ^ 0xEC) << 24) | ((v5[1] ^ 0xEC) << 16) | ((v5[2] ^ 0xEC) << 8) | v3;
  **(v0 + 16) = (v4 + v1 - 2 * (v4 & (v1 + 4) ^ v3 & 4)) ^ v1;
  *(v0 + 4) = *(v2 + 24);
}

uint64_t sub_1969A47CC()
{
  v2 = v0 + 2421;
  v3 = (v0 + 2421) ^ 0x18B0;
  v4 = v0 + 4098;
  v5 = (*(v1 + 8 * (v0 + 5303)))(1576, 0x105004009637391);
  STACK[0x560] = v5;
  return (*(v1 + 8 * (((v5 != 0) * (v3 ^ v4 ^ 0x2C8)) ^ v2)))();
}

uint64_t sub_1969A4810()
{
  v4 = (*(v3 + 8 * (v2 ^ v1)))();
  STACK[0x590] += (35 * (v2 ^ 0x179Du)) ^ 0xFFFFFFFFFFFFF202;
  return (*(v3 + 8 * ((v2 - 2569) | (8 * (v0 == 1906281716)))))(v4);
}

uint64_t sub_1969A4A94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31)
{
  v491 = 16 - (v31 & 0xFFFFFFF0);
  v40 = STACK[0x350] + a17 + a1 + a25 + v31;
  v41 = STACK[0x340] + v31;
  v496 = *(v41 - 16);
  v42.i64[0] = v41 - 5;
  v42.i64[1] = v41 - 6;
  v43.i64[0] = v41 - 7;
  v43.i64[1] = v41 - 8;
  v44.i64[0] = v40 - 5;
  v44.i64[1] = v40 - 6;
  v45.i64[0] = v40 - 7;
  v45.i64[1] = v40 - 8;
  v46 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v47 = vandq_s8(v43, v46);
  v48 = vandq_s8(v42, v46);
  v49 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x250] = v49;
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v49);
  v51 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v49);
  v52 = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  v53 = veorq_s8(v51, v52);
  v54 = veorq_s8(v50, v52);
  v55 = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  v56 = veorq_s8(v50, v55);
  v57 = veorq_s8(v51, v55);
  v58 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v59 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v56), v58);
  v60 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v57), v58);
  v61 = v58;
  v62 = vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL);
  v63 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v64 = veorq_s8(v59, v62);
  v65 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v64);
  v67 = vaddq_s64(v65, v63);
  v68 = vdupq_n_s64(0xD3E2C6F73124A4A2);
  *&STACK[0x240] = v68;
  v69 = vdupq_n_s64(a7);
  v497 = vdupq_n_s64(0x2640374E84F416ABuLL);
  v70 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v66, v68), vorrq_s8(v66, v69)), v69), v497);
  v71 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v67, v68), vorrq_s8(v67, v69)), v69), v497);
  v72 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v73 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v74 = vdupq_n_s64(v36);
  *&STACK[0x300] = v74;
  v75 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v72), v74);
  v76 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v73), v74);
  v77 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v78 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v79 = veorq_s8(v75, v77);
  v80 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v79);
  v82 = vaddq_s64(v80, v78);
  v83 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  *&STACK[0x230] = v83;
  v84 = veorq_s8(v82, v83);
  v85 = veorq_s8(v81, v83);
  v86 = vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL);
  v87 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v88 = veorq_s8(v84, v86);
  v89 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v88);
  v91 = vaddq_s64(v89, v87);
  v92 = vdupq_n_s64(0x96E1782549DF8832);
  *&STACK[0x2F0] = v92;
  v93 = vdupq_n_s64(a5);
  v94 = vdupq_n_s64(0xF2226427395B565ELL);
  v95 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v90, v92), vorrq_s8(v90, v93)), v93), v94);
  v96 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v91, v92), vorrq_s8(v91, v93)), v93), v94);
  v97 = vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL);
  v98 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v99 = veorq_s8(v95, v97);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v99);
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v98);
  v102 = vdupq_n_s64(0x25FD83206EC49CC2uLL);
  v103 = vdupq_n_s64(0xED013E6FC89DB19FLL);
  *&STACK[0x210] = v103;
  v104 = vdupq_n_s64(0x8D42A747531E162uLL);
  v105 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v101, v101), v102), v101), v103), v104);
  v106 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v100, v100), v102), v100), v103), v104);
  v107 = vdupq_n_s64(0xAB3042D228875C41);
  v108 = vdupq_n_s64(0x38uLL);
  v109 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL))), v107), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), v108)));
  v110 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL))), v107), vnegq_s64(vandq_s8(vshlq_n_s64(v43, 3uLL), v108)));
  v111 = vandq_s8(v45, v46);
  v112 = vandq_s8(v44, v46);
  v113 = vdupq_n_s64(v32);
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v113);
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113);
  v116 = vdupq_n_s64(0x315FDBFEB957105EuLL);
  v117 = veorq_s8(v115, v116);
  v118 = veorq_s8(v114, v116);
  v119 = vdupq_n_s64(0x85215C3045409F44);
  v120 = veorq_s8(v114, v119);
  v121 = veorq_s8(v115, v119);
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v121);
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v120);
  v124 = vdupq_n_s64(0x387A58471D908FDEuLL);
  v125 = vdupq_n_s64(0xE3C2D3DC7137B810);
  v126 = vdupq_n_s64(0x62B6E3931000AC23uLL);
  v127 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v122, v122), v124), v122), v125), v126);
  *&STACK[0x220] = v126;
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v129 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v123, v123), v124), v123), v125), v126);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130);
  v132 = vdupq_n_s64(v37);
  *&STACK[0x200] = v132;
  v133 = vdupq_n_s64(a4);
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128);
  v135 = vdupq_n_s64(0xD46C6E1ABEDC938uLL);
  v136 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v134, v132), vorrq_s8(v134, v133)), v133), v135);
  v137 = v135;
  *&STACK[0x2C0] = v135;
  v138 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v139 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v140 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v131, v132), vorrq_s8(v131, v133)), v133), v137);
  v141 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v142 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v143 = vaddq_s64(v139, v138);
  v144 = vdupq_n_s64(a8);
  *&STACK[0x2B0] = v144;
  v145 = vaddq_s64(v142, v141);
  v146 = vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL);
  v147 = vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL);
  v148 = vdupq_n_s64(v33);
  v499 = vdupq_n_s64(v38);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v145, v145), v144), v145), v499), v148);
  *&STACK[0x2A0] = v148;
  v150 = veorq_s8(v149, v147);
  v151 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v152 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v143, v143), v144), v143), v499), v148);
  v153 = veorq_s8(v152, v146);
  v154 = vdupq_n_s64(v35);
  v155 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v153);
  *&STACK[0x2D0] = v154;
  v156 = vdupq_n_s64(v34);
  v157 = vsubq_s64(vorrq_s8(v155, v154), vorrq_s8(v155, v156));
  v158 = vaddq_s64(v151, v150);
  v159 = vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL);
  v160 = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v161 = vaddq_s64(vsubq_s64(vorrq_s8(v158, v154), vorrq_s8(v158, v156)), v156);
  v162 = vdupq_n_s64(v39);
  v163 = veorq_s8(v161, v162);
  v164 = v162;
  *&STACK[0x260] = v156;
  *&STACK[0x270] = v162;
  v165 = veorq_s8(v163, v160);
  v166 = vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL);
  v167 = veorq_s8(vaddq_s64(v157, v156), v164);
  v168 = veorq_s8(v167, v159);
  v169 = vaddq_s64(v166, v165);
  v170 = vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL);
  v171 = vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL);
  v172 = vdupq_n_s64(0xB9BEF0CD865D21FDLL);
  v173 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168), v172);
  *&STACK[0x290] = v172;
  v174 = veorq_s8(v173, v171);
  v175 = vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL);
  v176 = veorq_s8(v169, v172);
  v177 = veorq_s8(v176, v170);
  v178 = vaddq_s64(v175, v174);
  v179 = vdupq_n_s64(0x787E07DA35E0BFF0uLL);
  *&STACK[0x280] = v179;
  v180 = vsubq_s64(vandq_s8(vaddq_s64(v178, v178), v179), v178);
  v181 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177);
  v182 = vsubq_s64(vandq_s8(vaddq_s64(v181, v181), v179), v181);
  v183 = vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL);
  v184 = vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL);
  v185 = vdupq_n_s64(0x43C0FC12E50FA007uLL);
  v186 = vdupq_n_s64(0x2DDEE5CF5633123DuLL);
  *&STACK[0x2E0] = v185;
  v187 = veorq_s8(vaddq_s64(v182, v185), v186);
  v188 = veorq_s8(v187, v184);
  v189 = vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL);
  v190 = veorq_s8(vaddq_s64(v180, v185), v186);
  v191 = vdupq_n_s64(0x3532CD90FD5B1622uLL);
  *&STACK[0x310] = v191;
  *&STACK[0x320] = v186;
  v192 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), veorq_s8(v190, v183)), v191), vnegq_s64(vandq_s8(vshlq_n_s64(v44, 3uLL), v108)));
  v183.i64[0] = v41 - 3;
  v183.i64[1] = v41 - 4;
  v501.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v189, v188), v191), vnegq_s64(vandq_s8(vshlq_n_s64(v45, 3uLL), v108))), v110);
  v501.val[2] = veorq_s8(v192, v109);
  v193 = vandq_s8(v183, v46);
  v194 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), *&STACK[0x250]);
  v195 = veorq_s8(v194, v52);
  v196 = veorq_s8(v194, v55);
  v197 = vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL);
  v198 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v196), v61);
  v199 = veorq_s8(v198, v197);
  v200 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v199);
  v494 = v69;
  v201 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v200, *&STACK[0x240]), vorrq_s8(v200, v69)), v69), v497);
  v202 = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL));
  v203 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), v202), *&STACK[0x300]);
  v204 = veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL));
  v205 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), v204), *&STACK[0x230]);
  v206 = veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL));
  v207 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL), v206);
  v493 = v93;
  v208 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v207, *&STACK[0x2F0]), vorrq_s8(v207, v93)), v93), v94);
  v209 = veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL));
  v210 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), v209);
  v211 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v210, v210), v102), v210), *&STACK[0x210]), v104);
  v212 = v107;
  v498 = v107;
  v213 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL), veorq_s8(v211, vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL))), v107), vnegq_s64(vandq_s8(vshlq_n_s64(v183, 3uLL), v108)));
  v107.i64[0] = v40 - 3;
  v107.i64[1] = v40 - 4;
  v214 = vandq_s8(v107, v46);
  v215 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), v113);
  v216 = veorq_s8(v215, v116);
  v217 = veorq_s8(v215, v119);
  v218 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v216, 0x38uLL), v216, 8uLL), v217);
  v219 = vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL);
  v220 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v218, v218), v124), v218), v125), *&STACK[0x220]);
  v221 = veorq_s8(v220, v219);
  v222 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v221);
  v492 = v133;
  v223 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v222, *&STACK[0x200]), vorrq_s8(v222, v133)), v133), *&STACK[0x2C0]);
  v224 = veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL));
  v225 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v224);
  v226 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v225, v225), *&STACK[0x2B0]), v225), v499), *&STACK[0x2A0]);
  v227 = veorq_s8(v226, vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL));
  v228 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), v227);
  v229 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v228, *&STACK[0x2D0]), vorrq_s8(v228, *&STACK[0x260])), *&STACK[0x260]), *&STACK[0x270]);
  v230 = veorq_s8(v229, vsraq_n_u64(vshlq_n_s64(v227, 3uLL), v227, 0x3DuLL));
  v231 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), v230), *&STACK[0x290]);
  v232 = veorq_s8(v231, vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL));
  v233 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL), v232);
  v234 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v233, v233), *&STACK[0x280]), v233), *&STACK[0x2E0]), *&STACK[0x320]);
  v501.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), veorq_s8(v234, vsraq_n_u64(vshlq_n_s64(v232, 3uLL), v232, 0x3DuLL))), *&STACK[0x310]), vnegq_s64(vandq_s8(vshlq_n_s64(v107, 3uLL), v108))), v213);
  v235 = (a31 - 3423);
  v213.i64[0] = v41 - 1;
  v213.i64[1] = v41 + (v235 ^ 0xFFFFFFFFFFFFF700);
  v236 = vandq_s8(v213, v46);
  v237 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL), *&STACK[0x250]);
  v238 = veorq_s8(v237, v52);
  v239 = veorq_s8(v237, v55);
  v240 = vsraq_n_u64(vshlq_n_s64(v239, 3uLL), v239, 0x3DuLL);
  v241 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v238, 0x38uLL), v238, 8uLL), v239), v61);
  v242 = veorq_s8(v241, v240);
  v243 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), v242);
  v244 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v243, *&STACK[0x240]), vorrq_s8(v243, v494)), v494), v497);
  v245 = veorq_s8(v244, vsraq_n_u64(vshlq_n_s64(v242, 3uLL), v242, 0x3DuLL));
  v246 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), v245), *&STACK[0x300]);
  v247 = veorq_s8(v246, vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL));
  v248 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL), v247), *&STACK[0x230]);
  v249 = veorq_s8(v248, vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL));
  v250 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v248, 0x38uLL), v248, 8uLL), v249);
  v251 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v250, *&STACK[0x2F0]), vorrq_s8(v250, v93)), v93), v94);
  v252 = veorq_s8(v251, vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL));
  v253 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251, 0x38uLL), v251, 8uLL), v252);
  v254 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v253, v253), v102), v253), *&STACK[0x210]), v104);
  v255 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v254, 0x38uLL), v254, 8uLL), veorq_s8(v254, vsraq_n_u64(vshlq_n_s64(v252, 3uLL), v252, 0x3DuLL))), v212), vnegq_s64(vandq_s8(vshlq_n_s64(v213, 3uLL), v108)));
  v107.i64[0] = v40 - 1;
  v107.i64[1] = v40 + (v235 ^ 0xFFFFFFFFFFFFF700);
  v256 = vandq_s8(v107, v46);
  v257 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v256, 0x38uLL), v256, 8uLL), v113);
  v258 = veorq_s8(v257, v116);
  v259 = veorq_s8(v257, v119);
  v260 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v258, 0x38uLL), v258, 8uLL), v259);
  v261 = vsraq_n_u64(vshlq_n_s64(v259, 3uLL), v259, 0x3DuLL);
  v262 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v260, v260), v124), v260), v125), *&STACK[0x220]);
  v263 = veorq_s8(v262, v261);
  v264 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL), v263);
  v265 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v264, *&STACK[0x200]), vorrq_s8(v264, v133)), v133), *&STACK[0x2C0]);
  v266 = veorq_s8(v265, vsraq_n_u64(vshlq_n_s64(v263, 3uLL), v263, 0x3DuLL));
  v267 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL), v266);
  v268 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v267, v267), *&STACK[0x2B0]), v267), v499), *&STACK[0x2A0]);
  v269 = veorq_s8(v268, vsraq_n_u64(vshlq_n_s64(v266, 3uLL), v266, 0x3DuLL));
  v270 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL), v269);
  v271 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v270, *&STACK[0x2D0]), vorrq_s8(v270, *&STACK[0x260])), *&STACK[0x260]), *&STACK[0x270]);
  v272 = veorq_s8(v271, vsraq_n_u64(vshlq_n_s64(v269, 3uLL), v269, 0x3DuLL));
  v273 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v271, 0x38uLL), v271, 8uLL), v272), *&STACK[0x290]);
  v274 = veorq_s8(v273, vsraq_n_u64(vshlq_n_s64(v272, 3uLL), v272, 0x3DuLL));
  v275 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v273, 0x38uLL), v273, 8uLL), v274);
  v276 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v275, v275), *&STACK[0x280]), v275), *&STACK[0x2E0]), *&STACK[0x320]);
  v501.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v276, 0x38uLL), v276, 8uLL), veorq_s8(v276, vsraq_n_u64(vshlq_n_s64(v274, 3uLL), v274, 0x3DuLL))), *&STACK[0x310]), vnegq_s64(vandq_s8(vshlq_n_s64(v107, 3uLL), v108))), v255);
  v495 = vqtbl4q_s8(v501, xmmword_196EBFA60).u64[0];
  v190.i64[0] = v41 - 13;
  v190.i64[1] = v41 - 14;
  v188.i64[0] = v41 - 15;
  v188.i64[1] = v41 - 16;
  v277 = vandq_s8(v190, v46);
  v278 = vsraq_n_u64(vshlq_n_s64(v277, 0x38uLL), v277, 8uLL);
  v279 = vandq_s8(v188, v46);
  v280 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v279, 0x38uLL), v279, 8uLL), *&STACK[0x250]);
  v281 = veorq_s8(v280, v52);
  v282 = vsraq_n_u64(vshlq_n_s64(v281, 0x38uLL), v281, 8uLL);
  v283 = vaddq_s64(v278, *&STACK[0x250]);
  v284 = veorq_s8(v283, v52);
  v285 = vsraq_n_u64(vshlq_n_s64(v284, 0x38uLL), v284, 8uLL);
  v286 = veorq_s8(v280, v55);
  v287 = vaddq_s64(v282, v286);
  v288 = vsraq_n_u64(vshlq_n_s64(v286, 3uLL), v286, 0x3DuLL);
  v289 = veorq_s8(v283, v55);
  v290 = vaddq_s64(v285, v289);
  v291 = vsraq_n_u64(vshlq_n_s64(v289, 3uLL), v289, 0x3DuLL);
  v292 = veorq_s8(v290, v61);
  v293 = veorq_s8(v292, v291);
  v294 = vsraq_n_u64(vshlq_n_s64(v292, 0x38uLL), v292, 8uLL);
  v295 = veorq_s8(v287, v61);
  v296 = veorq_s8(v295, v288);
  v297 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v295, 0x38uLL), v295, 8uLL), v296);
  v298 = vaddq_s64(v294, v293);
  v299 = vsraq_n_u64(vshlq_n_s64(v296, 3uLL), v296, 0x3DuLL);
  v300 = vsraq_n_u64(vshlq_n_s64(v293, 3uLL), v293, 0x3DuLL);
  v301 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v298, *&STACK[0x240]), vorrq_s8(v298, v494)), v494), v497);
  v302 = veorq_s8(v301, v300);
  v303 = vsraq_n_u64(vshlq_n_s64(v301, 0x38uLL), v301, 8uLL);
  v304 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v297, *&STACK[0x240]), vorrq_s8(v297, v494)), v494), v497);
  v305 = veorq_s8(v304, v299);
  v306 = vsraq_n_u64(vshlq_n_s64(v304, 0x38uLL), v304, 8uLL);
  v307 = vaddq_s64(v303, v302);
  v308 = vsraq_n_u64(vshlq_n_s64(v302, 3uLL), v302, 0x3DuLL);
  v309 = vaddq_s64(v306, v305);
  v310 = vsraq_n_u64(vshlq_n_s64(v305, 3uLL), v305, 0x3DuLL);
  v311 = veorq_s8(v309, *&STACK[0x300]);
  v312 = veorq_s8(v311, v310);
  v313 = vsraq_n_u64(vshlq_n_s64(v311, 0x38uLL), v311, 8uLL);
  v314 = veorq_s8(v307, *&STACK[0x300]);
  v315 = veorq_s8(v314, v308);
  v316 = vsraq_n_u64(vshlq_n_s64(v314, 0x38uLL), v314, 8uLL);
  v317 = vaddq_s64(v313, v312);
  v318 = vsraq_n_u64(vshlq_n_s64(v312, 3uLL), v312, 0x3DuLL);
  v319 = vaddq_s64(v316, v315);
  v320 = vsraq_n_u64(vshlq_n_s64(v315, 3uLL), v315, 0x3DuLL);
  v321 = veorq_s8(v319, *&STACK[0x230]);
  v322 = veorq_s8(v321, v320);
  v323 = vsraq_n_u64(vshlq_n_s64(v321, 0x38uLL), v321, 8uLL);
  v324 = veorq_s8(v317, *&STACK[0x230]);
  v325 = veorq_s8(v324, v318);
  v326 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v324, 0x38uLL), v324, 8uLL), v325);
  v327 = vaddq_s64(v323, v322);
  v328 = vsraq_n_u64(vshlq_n_s64(v325, 3uLL), v325, 0x3DuLL);
  v329 = vsraq_n_u64(vshlq_n_s64(v322, 3uLL), v322, 0x3DuLL);
  v330 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v327, *&STACK[0x2F0]), vorrq_s8(v327, v493)), v493), v94);
  v331 = veorq_s8(v330, v329);
  v332 = vsraq_n_u64(vshlq_n_s64(v330, 0x38uLL), v330, 8uLL);
  v333 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v326, *&STACK[0x2F0]), vorrq_s8(v326, v493)), v493), v94);
  v334 = veorq_s8(v333, v328);
  v335 = vsraq_n_u64(vshlq_n_s64(v333, 0x38uLL), v333, 8uLL);
  v336 = vaddq_s64(v332, v331);
  v337 = vaddq_s64(v335, v334);
  v338 = vsraq_n_u64(vshlq_n_s64(v331, 3uLL), v331, 0x3DuLL);
  v339 = vsraq_n_u64(vshlq_n_s64(v334, 3uLL), v334, 0x3DuLL);
  v340 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v337, v337), v102), v337), *&STACK[0x210]), v104);
  v341 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v336, v336), v102), v336), *&STACK[0x210]), v104);
  v342 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v340, 0x38uLL), v340, 8uLL), veorq_s8(v340, v339));
  v343 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v341, 0x38uLL), v341, 8uLL), veorq_s8(v341, v338)), v498), vnegq_s64(vandq_s8(vshlq_n_s64(v190, 3uLL), v108)));
  v190.i64[0] = v40 - 13;
  v190.i64[1] = v40 - 14;
  v344 = vshlq_u64(veorq_s8(v342, v498), vnegq_s64(vandq_s8(vshlq_n_s64(v188, 3uLL), v108)));
  v345 = vandq_s8(v190, v46);
  v346 = vsraq_n_u64(vshlq_n_s64(v345, 0x38uLL), v345, 8uLL);
  v345.i64[0] = v40 - 15;
  v345.i64[1] = v40 - 16;
  v347 = vandq_s8(v345, v46);
  v348 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v347, 0x38uLL), v347, 8uLL), v113);
  v349 = veorq_s8(v348, v116);
  v350 = vsraq_n_u64(vshlq_n_s64(v349, 0x38uLL), v349, 8uLL);
  v351 = vaddq_s64(v346, v113);
  v352 = veorq_s8(v351, v116);
  v353 = vsraq_n_u64(vshlq_n_s64(v352, 0x38uLL), v352, 8uLL);
  v354 = veorq_s8(v348, v119);
  v355 = vaddq_s64(v350, v354);
  v356 = veorq_s8(v351, v119);
  v357 = vaddq_s64(v353, v356);
  v358 = vsraq_n_u64(vshlq_n_s64(v354, 3uLL), v354, 0x3DuLL);
  v359 = vsraq_n_u64(vshlq_n_s64(v356, 3uLL), v356, 0x3DuLL);
  v360 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v357, v357), v124), v357), v125), *&STACK[0x220]);
  v361 = veorq_s8(v360, v359);
  v362 = vsraq_n_u64(vshlq_n_s64(v360, 0x38uLL), v360, 8uLL);
  v363 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v355, v355), v124), v355), v125), *&STACK[0x220]);
  v364 = veorq_s8(v363, v358);
  v365 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v363, 0x38uLL), v363, 8uLL), v364);
  v366 = vaddq_s64(v362, v361);
  v367 = vsraq_n_u64(vshlq_n_s64(v364, 3uLL), v364, 0x3DuLL);
  v368 = vsraq_n_u64(vshlq_n_s64(v361, 3uLL), v361, 0x3DuLL);
  v369 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v366, *&STACK[0x200]), vorrq_s8(v366, v133)), v133), *&STACK[0x2C0]);
  v370 = veorq_s8(v369, v368);
  v371 = vsraq_n_u64(vshlq_n_s64(v369, 0x38uLL), v369, 8uLL);
  v372 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v365, *&STACK[0x200]), vorrq_s8(v365, v133)), v133), *&STACK[0x2C0]);
  v373 = veorq_s8(v372, v367);
  v374 = vsraq_n_u64(vshlq_n_s64(v372, 0x38uLL), v372, 8uLL);
  v375 = vaddq_s64(v371, v370);
  v376 = vaddq_s64(v374, v373);
  v377 = vsraq_n_u64(vshlq_n_s64(v370, 3uLL), v370, 0x3DuLL);
  v378 = vsraq_n_u64(vshlq_n_s64(v373, 3uLL), v373, 0x3DuLL);
  v379 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v376, v376), *&STACK[0x2B0]), v376), v499), *&STACK[0x2A0]);
  v380 = veorq_s8(v379, v378);
  v381 = vsraq_n_u64(vshlq_n_s64(v379, 0x38uLL), v379, 8uLL);
  v382 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v375, v375), *&STACK[0x2B0]), v375), v499), *&STACK[0x2A0]);
  v383 = veorq_s8(v382, v377);
  v384 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v382, 0x38uLL), v382, 8uLL), v383);
  v385 = vaddq_s64(v381, v380);
  v386 = vsraq_n_u64(vshlq_n_s64(v383, 3uLL), v383, 0x3DuLL);
  v387 = vsraq_n_u64(vshlq_n_s64(v380, 3uLL), v380, 0x3DuLL);
  v388 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v385, *&STACK[0x2D0]), vorrq_s8(v385, *&STACK[0x260])), *&STACK[0x260]), *&STACK[0x270]);
  v389 = veorq_s8(v388, v387);
  v390 = vsraq_n_u64(vshlq_n_s64(v388, 0x38uLL), v388, 8uLL);
  v391 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v384, *&STACK[0x2D0]), vorrq_s8(v384, *&STACK[0x260])), *&STACK[0x260]), *&STACK[0x270]);
  v392 = veorq_s8(v391, v386);
  v393 = vsraq_n_u64(vshlq_n_s64(v391, 0x38uLL), v391, 8uLL);
  v394 = vaddq_s64(v390, v389);
  v395 = vsraq_n_u64(vshlq_n_s64(v389, 3uLL), v389, 0x3DuLL);
  v396 = veorq_s8(vaddq_s64(v393, v392), *&STACK[0x290]);
  v397 = veorq_s8(v396, vsraq_n_u64(vshlq_n_s64(v392, 3uLL), v392, 0x3DuLL));
  v398 = vsraq_n_u64(vshlq_n_s64(v396, 0x38uLL), v396, 8uLL);
  v399 = veorq_s8(v394, *&STACK[0x290]);
  v400 = veorq_s8(v399, v395);
  v401 = vsraq_n_u64(vshlq_n_s64(v399, 0x38uLL), v399, 8uLL);
  v402 = vaddq_s64(v398, v397);
  v403 = vaddq_s64(v401, v400);
  v404 = vsraq_n_u64(vshlq_n_s64(v397, 3uLL), v397, 0x3DuLL);
  v405 = vsraq_n_u64(vshlq_n_s64(v400, 3uLL), v400, 0x3DuLL);
  v406 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v403, v403), *&STACK[0x280]), v403), *&STACK[0x2E0]), *&STACK[0x320]);
  v407 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v402, v402), *&STACK[0x280]), v402), *&STACK[0x2E0]), *&STACK[0x320]);
  v408 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v407, 0x38uLL), v407, 8uLL), veorq_s8(v407, v404)), *&STACK[0x310]), vnegq_s64(vandq_s8(vshlq_n_s64(v190, 3uLL), v108)));
  v409 = v108;
  v500.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v406, 0x38uLL), v406, 8uLL), veorq_s8(v406, v405)), *&STACK[0x310]), vnegq_s64(vandq_s8(vshlq_n_s64(v345, 3uLL), v108))), v344);
  v500.val[2] = veorq_s8(v408, v343);
  v344.i64[0] = v41 - 11;
  v344.i64[1] = v41 - 12;
  v410 = vandq_s8(v344, v46);
  v411 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v410, 0x38uLL), v410, 8uLL), *&STACK[0x250]);
  v412 = veorq_s8(v411, v52);
  v413 = veorq_s8(v411, v55);
  v414 = vsraq_n_u64(vshlq_n_s64(v413, 3uLL), v413, 0x3DuLL);
  v415 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v412, 0x38uLL), v412, 8uLL), v413), v61);
  v416 = veorq_s8(v415, v414);
  v417 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v415, 0x38uLL), v415, 8uLL), v416);
  v418 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v417, *&STACK[0x240]), vorrq_s8(v417, v494)), v494), v497);
  v419 = veorq_s8(v418, vsraq_n_u64(vshlq_n_s64(v416, 3uLL), v416, 0x3DuLL));
  v420 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v418, 0x38uLL), v418, 8uLL), v419), *&STACK[0x300]);
  v421 = veorq_s8(v420, vsraq_n_u64(vshlq_n_s64(v419, 3uLL), v419, 0x3DuLL));
  v422 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v420, 0x38uLL), v420, 8uLL), v421), *&STACK[0x230]);
  v423 = veorq_s8(v422, vsraq_n_u64(vshlq_n_s64(v421, 3uLL), v421, 0x3DuLL));
  v424 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v422, 0x38uLL), v422, 8uLL), v423);
  v425 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v424, *&STACK[0x2F0]), vorrq_s8(v424, v93)), v93), v94);
  v426 = veorq_s8(v425, vsraq_n_u64(vshlq_n_s64(v423, 3uLL), v423, 0x3DuLL));
  v427 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v425, 0x38uLL), v425, 8uLL), v426);
  v428 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v427, v427), v102), v427), *&STACK[0x210]), v104);
  v429 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v428, 0x38uLL), v428, 8uLL), veorq_s8(v428, vsraq_n_u64(vshlq_n_s64(v426, 3uLL), v426, 0x3DuLL))), v498), vnegq_s64(vandq_s8(vshlq_n_s64(v344, 3uLL), v108)));
  v344.i64[0] = v40 - 11;
  v344.i64[1] = v40 - 12;
  v430 = vandq_s8(v344, v46);
  v431 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v430, 0x38uLL), v430, 8uLL), v113);
  v432 = veorq_s8(v431, v116);
  v433 = veorq_s8(v431, v119);
  v434 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v432, 0x38uLL), v432, 8uLL), v433);
  v435 = vsraq_n_u64(vshlq_n_s64(v433, 3uLL), v433, 0x3DuLL);
  v436 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v434, v434), v124), v434), v125), *&STACK[0x220]);
  v437 = veorq_s8(v436, v435);
  v438 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v436, 0x38uLL), v436, 8uLL), v437);
  v439 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v438, *&STACK[0x200]), vorrq_s8(v438, v492)), v492), *&STACK[0x2C0]);
  v440 = veorq_s8(v439, vsraq_n_u64(vshlq_n_s64(v437, 3uLL), v437, 0x3DuLL));
  v441 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v439, 0x38uLL), v439, 8uLL), v440);
  v442 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v441, v441), *&STACK[0x2B0]), v441), v499), *&STACK[0x2A0]);
  v443 = veorq_s8(v442, vsraq_n_u64(vshlq_n_s64(v440, 3uLL), v440, 0x3DuLL));
  v444 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v442, 0x38uLL), v442, 8uLL), v443);
  v445 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v444, *&STACK[0x2D0]), vorrq_s8(v444, *&STACK[0x260])), *&STACK[0x260]), *&STACK[0x270]);
  v446 = veorq_s8(v445, vsraq_n_u64(vshlq_n_s64(v443, 3uLL), v443, 0x3DuLL));
  v447 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v445, 0x38uLL), v445, 8uLL), v446), *&STACK[0x290]);
  v448 = veorq_s8(v447, vsraq_n_u64(vshlq_n_s64(v446, 3uLL), v446, 0x3DuLL));
  v449 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v447, 0x38uLL), v447, 8uLL), v448);
  v450 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v449, v449), *&STACK[0x280]), v449), *&STACK[0x2E0]), *&STACK[0x320]);
  v500.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v450, 0x38uLL), v450, 8uLL), veorq_s8(v450, vsraq_n_u64(vshlq_n_s64(v448, 3uLL), v448, 0x3DuLL))), *&STACK[0x310]), vnegq_s64(vandq_s8(vshlq_n_s64(v344, 3uLL), v409))), v429);
  v344.i64[0] = v41 - 9;
  v344.i64[1] = v41 - 10;
  v451 = vandq_s8(v344, v46);
  v452 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v451, 0x38uLL), v451, 8uLL), *&STACK[0x250]);
  v453 = veorq_s8(v452, v52);
  v454 = veorq_s8(v452, v55);
  v455 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v453, 0x38uLL), v453, 8uLL), v454), v61);
  v456 = veorq_s8(v455, vsraq_n_u64(vshlq_n_s64(v454, 3uLL), v454, 0x3DuLL));
  v457 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v455, 0x38uLL), v455, 8uLL), v456);
  v458 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v457, *&STACK[0x240]), vorrq_s8(v457, v494)), v494), v497);
  v459 = veorq_s8(v458, vsraq_n_u64(vshlq_n_s64(v456, 3uLL), v456, 0x3DuLL));
  v460 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v458, 0x38uLL), v458, 8uLL), v459), *&STACK[0x300]);
  v461 = veorq_s8(v460, vsraq_n_u64(vshlq_n_s64(v459, 3uLL), v459, 0x3DuLL));
  v462 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v460, 0x38uLL), v460, 8uLL), v461), *&STACK[0x230]);
  v463 = veorq_s8(v462, vsraq_n_u64(vshlq_n_s64(v461, 3uLL), v461, 0x3DuLL));
  v464 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v462, 0x38uLL), v462, 8uLL), v463);
  v465 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v464, *&STACK[0x2F0]), vorrq_s8(v464, v493)), v493), v94);
  v466 = veorq_s8(v465, vsraq_n_u64(vshlq_n_s64(v463, 3uLL), v463, 0x3DuLL));
  v467 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v465, 0x38uLL), v465, 8uLL), v466);
  v468 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v467, v467), v102), v467), *&STACK[0x210]), v104);
  v343.i64[0] = v40 - 9;
  v343.i64[1] = v40 - 10;
  v501.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v468, 0x38uLL), v468, 8uLL), veorq_s8(v468, vsraq_n_u64(vshlq_n_s64(v466, 3uLL), v466, 0x3DuLL))), v498), vnegq_s64(vandq_s8(vshlq_n_s64(v344, 3uLL), v409)));
  v469 = vandq_s8(v343, v46);
  v470 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v469, 0x38uLL), v469, 8uLL), v113);
  v471 = veorq_s8(v470, v116);
  v472 = veorq_s8(v470, v119);
  v473 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v471, 0x38uLL), v471, 8uLL), v472);
  v474 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v473, v473), v124), v473), v125), *&STACK[0x220]);
  v475 = veorq_s8(v474, vsraq_n_u64(vshlq_n_s64(v472, 3uLL), v472, 0x3DuLL));
  v476 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v474, 0x38uLL), v474, 8uLL), v475);
  v477 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v476, *&STACK[0x200]), vorrq_s8(v476, v492)), v492), *&STACK[0x2C0]);
  v478 = veorq_s8(v477, vsraq_n_u64(vshlq_n_s64(v475, 3uLL), v475, 0x3DuLL));
  v479 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v477, 0x38uLL), v477, 8uLL), v478);
  v480 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v479, v479), *&STACK[0x2B0]), v479), v499), *&STACK[0x2A0]);
  v481 = veorq_s8(v480, vsraq_n_u64(vshlq_n_s64(v478, 3uLL), v478, 0x3DuLL));
  v482 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v480, 0x38uLL), v480, 8uLL), v481);
  v483 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v482, *&STACK[0x2D0]), vorrq_s8(v482, *&STACK[0x260])), *&STACK[0x260]), *&STACK[0x270]);
  v484 = veorq_s8(v483, vsraq_n_u64(vshlq_n_s64(v481, 3uLL), v481, 0x3DuLL));
  v485 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v483, 0x38uLL), v483, 8uLL), v484), *&STACK[0x290]);
  v486 = veorq_s8(v485, vsraq_n_u64(vshlq_n_s64(v484, 3uLL), v484, 0x3DuLL));
  v487 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v485, 0x38uLL), v485, 8uLL), v486);
  v488 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v487, v487), *&STACK[0x280]), v487), *&STACK[0x2E0]), *&STACK[0x320]);
  v500.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v488, 0x38uLL), v488, 8uLL), veorq_s8(v488, vsraq_n_u64(vshlq_n_s64(v486, 3uLL), v486, 0x3DuLL))), *&STACK[0x310]), vnegq_s64(vandq_s8(vshlq_n_s64(v343, 3uLL), v409))), v501.val[2]);
  v488.i64[0] = v495;
  v488.i64[1] = vqtbl4q_s8(v500, xmmword_196EBFA60).u64[0];
  v489 = vrev64q_s8(v488);
  *(v40 - 16) = veorq_s8(vextq_s8(v489, v489, 8uLL), v496);
  return (*(STACK[0x370] + 8 * ((39 * (v491 == 0)) ^ (a31 - 4286))))(0x8D42A747531E162, 0xE3C2D3DC7137B810);
}

uint64_t sub_1969A66E8()
{
  v4 = STACK[0x510];
  v5 = STACK[0x838];
  STACK[0xB18] = &STACK[0xB70] + v0;
  STACK[0x958] = v1;
  STACK[0x5E8] = v4;
  STACK[0x808] = v5;
  v6 = (*(v3 + 8 * (v2 + 884)))();
  STACK[0x6B0] = 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  return (*(v3 + 8 * ((v8 * ((((v2 + 705492868) & 0xD5F2F70B) + 1650) ^ 0xC8A)) ^ v2)))(v6);
}

void qdrn6()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_14397e8cf855551474952bbfc32ae2b2) ^ 0x55)) ^ fp_dh_9f3a64ae35be94ec7344ce35efe855d0[fp_dh_6f808fec9028d604a6d723482abcf3ae[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_14397e8cf855551474952bbfc32ae2b2) ^ 0x55))] ^ 0xA7]) + 269);
  v1 = *(v0 - 4);
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0C738 + (*(off_1F0B0CB48 + (-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + v1) ^ 0x55)) - 4) ^ 0xA7u) - 8) ^ (-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + v1) ^ 0x55))) + 416);
  v3 = &v5[*(v2 - 4) - v1];
  *(v0 - 4) = (810526117 * v3) ^ 0xC67C1AE5E193E855;
  *(v2 - 4) = 810526117 * (v3 ^ 0xC67C1AE5E193E855);
  v6[0] = 1575331711 * (((v6 ^ 0x20401710 | 0x86BAE08B) + (v6 ^ 0x82182003 | 0x79451F74)) ^ 0xCE03A210) + 1655634431;
  LOBYTE(v2) = -91 * ((*(v2 - 4) - *(v0 - 4)) ^ 0x55);
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * (fp_dh_14397e8cf855551474952bbfc32ae2b2 ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d)) ^ fp_dh_6bb4c8a2c0a94389f7d3484ce1392143[fp_dh_a638abeab64ef8dd834670971c7b9d6d[(-91 * (fp_dh_14397e8cf855551474952bbfc32ae2b2 ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d))] ^ 0x4E]) + 437) - 4;
  (*&v4[8 * (*(off_1F0B0BE30 + (*(off_1F0B0CCB0 + v2 - 4) ^ 0x5Cu)) ^ v2) + 53568])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969A69E0@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = *v1;
  *(a1 + 88) = *(v1 + 72);
  *(a1 + 92) = *(v1 + 76);
  *(a1 + 96) = *(v1 + 80);
  *(a1 + 97) = *(v1 + 81);
  *(a1 + 120) = *(v1 + 104);
  *(a1 + 100) = *(v1 + 84);
  v4 = (v2 - 1299) | 0x448;
  *(a1 + 124) = *(v1 + 108) & 1;
  *(a1 + 24 + v4 - 3113) = *(v1 + 8 + v4 - 3113) ^ *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v2 ^ 0xD78)) + ((v4 - 3113) & 0xF) - 12) ^ *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v2 - 3135)) + ((v4 - 3113) & 0xF) - 7) ^ (-79 * ((v4 - 41) & 0xF)) ^ *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v2 - 3282)) + ((v4 - 3113) & 0xF) - 11) ^ 0xEC;
  return (*(v3 + 8 * (((v4 == 3113) | (4 * (v4 == 3113))) ^ v2)))();
}

uint64_t sub_1969A6ACC@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v3 + v5) - ((2 * *(v3 + v5)) & 0xD8) - 20;
  return (*(v4 + 8 * ((5200 * (v5 == ((v2 + 1987) ^ 0x15D7))) ^ v2)))();
}

uint64_t sub_1969A6C50()
{
  v7 = v6 + v3;
  v8 = (v3 - 1) & 0xF;
  v9 = v8 + ((v4 + 2080) ^ 0xB11) - v3;
  v10 = v2 + v9;
  v11 = v2 + v8 + 1;
  v12 = v0 + v9;
  v13 = v0 + v8 + 1;
  v14 = v8 + v1 + 5;
  v16 = v11 > v6 && v10 < v7;
  v18 = v13 > v6 && v12 < v7 || v16;
  if (v14 <= v6 || v14 - v3 >= v7)
  {
    v20 = v18;
  }

  else
  {
    v20 = 1;
  }

  return (*(v5 + 8 * ((506 * v20) ^ v4)))();
}

uint64_t sub_1969A6D9C@<X0>(uint64_t a1@<X1>, char a2@<W8>)
{
  v8 = v2 - 1;
  STACK[0x4C8] = v8;
  *(a1 + v8) = ((a2 + 1) ^ v4) * (a2 + 18);
  return (*(v7 + 8 * (((v8 == v5) * v6) ^ v3)))();
}

uint64_t sub_1969A6E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  v42 = &a33 + a32;
  v43 = (*(a5 + 96) - ((2 * *(a5 + 96)) & 0x20) + 19);
  if (v43 == 21)
  {
    v49 = (v33 + v37 + 1493276708);
    v50 = ((*v49 ^ v36) << 24) | ((v49[1] ^ (v39 - 79)) << 16) | ((v49[2] ^ v36) << 8);
    LODWORD(v49) = (v50 | v49[3] ^ v36) + v35 - 2 * ((v50 | v49[3] ^ v36) & (v35 + 4) ^ (v49[3] ^ v36) & 4);
    v51 = (2 * (v38 & 0x59019824)) & 0x30 ^ v38 & 0x59019824 ^ ((2 * (v38 & 0x24)) & 0x8C | 0x633CF340);
    v52 = (4 * v51) & 0xB2540170 ^ v51 ^ ((4 * v51) ^ 0x2EE2C400) & 0x4D28F684;
    v53 = (v41 + 4) & 0x34A3DA10 ^ 0x7DABFEA4;
    v54 = v52 ^ (16 * v52) & v41 ^ ((16 * v52) ^ 0x36CF2400) & v53 ^ 0x637CFB34;
    v55 = (16 * v53) & v41 ^ 0x92870834 ^ ((16 * v53) ^ 0x2D709740) & v53;
    v56 = (v54 << 8) & (v41 - 112) ^ v54 ^ ((v54 << 8) ^ 0xD7097400) & v55;
    v57 = (v56 << 16) ^ 0x9740000;
    *&v42[4 * ((((2 * ((v56 << 16) & 0x32D70000 ^ v56 ^ v57 & ((v55 << 8) & (v41 - 2416) ^ 0x20D60000 ^ ((v55 << 8) ^ 0x57090000) & v55))) ^ 0x59019824) >> 2) ^ 0x39FE9D4D)] = v49;
    v58 = *(v34 + 8 * ((74 * ((v37 + 1493276712) > 0x3F)) ^ v39));
    return v58(1493276712, v58, (v39 + 54), v40 + 16, v57, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
  }

  else
  {
    if (v43 != 20)
    {
      JUMPOUT(0x1968D599CLL);
    }

    v44 = (a8 + 326);
    v45 = *(v33 + 1493276708 + v44 - 1493282375) ^ v36;
    v46 = ((*(v37 + 1493276708 + v33 + 2) ^ v36) << 16) | ((*(v37 + 1493276708 + v33 + 3) ^ v36) << 24) | v45 | ((*(v37 + 1493276708 + v33 + 1) ^ v36) << 8);
    *v42 = v46 + v35 - 2 * (v46 & (v35 + 16) ^ v45 & 0x10);
    v47 = *(v34 + 8 * ((3842 * ((v37 + 1493276712) < 0x40)) ^ v44));
    return v47(v47, 0, 0, v44, 1493276708, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
  }
}

void sub_1969A6EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  *(v30 - 136) = v28 + 1283153057 * ((((v30 - 144) | 0xF89FB57E) - ((v30 - 144) & 0xF89FB57E)) ^ 0xB747B649) + 3553;
  *(v30 - 128) = v29;
  *(v30 - 120) = &a14;
  *(v30 - 144) = &a14;
  *(v30 - 112) = &a28;
  *(v30 - 104) = a12;
  JUMPOUT(0x1969A6F10);
}

uint64_t sub_1969A7050()
{
  v2 = LODWORD(STACK[0x3A0]);
  if (v2 == 41591)
  {
    return (*(STACK[0x248] + 8 * ((v1 - 2168) ^ (v0 != -1720256289))))();
  }

  if (v2 == 26075)
  {
    STACK[0x8C8] = STACK[0x618] + STACK[0x310];
    JUMPOUT(0x1969A713CLL);
  }

  if (v2 != 45445)
  {
    JUMPOUT(0x1969A7184);
  }

  return (*(STACK[0x248] + 8 * ((((v1 + 1800114571) & 0x94B466DB ^ 0x1941) * (v0 == -1720256301)) ^ (v1 - 1785))))();
}

uint64_t fp_dh_11b645fc146c614bc68e4723aeb05960(uint64_t result)
{
  v1 = 41 * ((((2 * result) | 0x9C) - result + 50) ^ 0x85);
  if ((*(result + 8) - v1) == 46 && ((*result - v1) & 0xFE) == 68)
  {
    v3 = 1906281716;
  }

  else
  {
    v3 = 1906239629;
  }

  *(result + 12) = v3;
  return result;
}

uint64_t fp_dh_bdbc452075bd830a21a1db98625499a2(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 48) = *(a2 + 8);
  return 0;
}

uint64_t sub_1969A7394@<X0>(int a1@<W8>)
{
  v8 = v7 + v4;
  v9 = v5 - v4 + v3 + ((a1 - 28) | 0x10u) - 3281;
  v10 = v5 + v3 + 1;
  v11 = v5 - v4 + ((a1 + 1122746655) & 0xBD143A9F ^ 0x89FLL);
  v12 = v1 + v11;
  v13 = v5 + 2;
  v14 = v1 + v13;
  v15 = v2 + v11;
  v16 = v2 + v13;
  v18 = v10 > v7 && v9 < v8;
  if (v14 > v7 && v12 < v8)
  {
    v18 = 1;
  }

  v21 = v16 > v7 && v15 < v8 || v18;
  return (*(v6 + 8 * ((60 * (v21 ^ 1)) ^ a1)))();
}

uint64_t sub_1969A7468(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *(v1 + 8) = a1;
  v4 = (*(v3 + 8 * (v2 + 5542)))(16, 0x20040A4A59CD2) == 0;
  return (*(v3 + 8 * ((v4 * (25 * (v2 ^ 0x5EC) + ((v2 + 2357) ^ 0xFFFFE988))) ^ v2)))();
}

void sub_1969A753C()
{
  v1 = STACK[0xA80];
  STACK[0x300] = ((STACK[0xA80] + 4) ^ 0xFFEFF4F6D76C7F3FLL) + 0x2D756BFD78B7CDFFLL + ((2 * (STACK[0xA80] + 4)) & 0xFFDFE9EDAED8FE7ELL);
  v2 = STACK[0xAA0] + (((((v0 + 591748238) & 0xDCBAB2DF) - 3201) | 0xA14) ^ 0xE18);
  STACK[0x2F0] = (v2 ^ 0xFD6D66FC757E6FFELL) + 0x2FF7F9F7DAA5DD40 + ((2 * v2) & 0xFADACDF8EAFCDFFCLL);
  STACK[0x2E0] = ((STACK[0xAC0] + 4) ^ 0xBDE566F576ACEF7FLL) + 0x6F7FF9FED9775DBFLL + ((2 * (STACK[0xAC0] + 4)) & 0x7BCACDEAED59DEFELL);
  STACK[0x2D0] = ((STACK[0xAE0] + 4) ^ 0x7D65E2F4FC37EF7FLL) - 0x50008200AC13A241 + ((2 * (STACK[0xAE0] + 4)) & 0xFACBC5E9F86FDEFELL);
  v3 = STACK[0xB00];
  STACK[0x2C0] = ((STACK[0xB00] + 4) ^ 0xBD776FF57F34ED7FLL) + 0x6FEDF0FED0EF5FBFLL + ((2 * (STACK[0xB00] + 4)) & 0x7AEEDFEAFE69DAFELL);
  v4 = STACK[0xB10];
  STACK[0x2A0] = ((STACK[0xB10] + 4) ^ 0xBF7D60FC7E6DCF7FLL) + 0x6DE7FFF7D1B67DBFLL + ((2 * (STACK[0xB10] + 4)) & 0x7EFAC1F8FCDB9EFELL);
  v5 = STACK[0xA50] + 10;
  STACK[0x280] = ((STACK[0xA50] + 4) ^ 0xFD7576FD75347D7ELL) + 0x2FEFE9F6DAEFCFC0 + ((2 * (STACK[0xA50] + 4)) & 0xFAEAEDFAEA68FAFCLL);
  STACK[0x270] = ((STACK[0xA40] + 4) ^ 0x7F77E0FFFD36EFBFLL) - 0x5212800BAD12A281 + ((2 * (STACK[0xA40] + 4)) & 0xFEEFC1FFFA6DDF7ELL);
  STACK[0x260] = ((STACK[0xA30] + 4) ^ 0xED6FFAF7DA267D3ELL) + 0x3FF565FC75FDD000 + ((2 * (STACK[0xA30] + 4)) & 0xDADFF5EFB44CFA7CLL);
  STACK[0x250] = ((STACK[0xA20] + 4) ^ 0x2D6FF0F47CF5EDFELL) - 0xA90002CD1A0C0 + ((2 * (STACK[0xA20] + 4)) & 0x5ADFE1E8F9EBDBFCLL);
  STACK[0x230] = ((STACK[0xA10] + 4) ^ 0x6DFF77FCF464EDFFLL) - 0x409A1708A440A0C1 + ((2 * (STACK[0xA10] + 4)) & 0xDBFEEFF9E8C9DBFELL);
  STACK[0x210] = ((STACK[0xB30] + 4) ^ 0x6F6FE0F6FD37FD7FLL) - 0x420A8002AD13B041 + ((2 * (STACK[0xB30] + 4)) & 0xDEDFC1EDFA6FFAFELL);
  STACK[0x200] = ((v1 + 6) ^ 0x6EED8F765F7CFDB9) - 0x8986425554A811 + ((2 * (v1 + 6)) & 0xDDDB1EECBEF9FB72);
  STACK[0x2B0] = v3 + 10;
  STACK[0x290] = v4 + 10;
  STACK[0x310] = v5;
  STACK[0x390] = STACK[0x8E8];
  STACK[0x380] = STACK[0x6C8];
  STACK[0x370] = STACK[0x7D8];
  STACK[0x360] = STACK[0x748];
  STACK[0x400] = STACK[0x550];
  STACK[0x3E0] = STACK[0x950];
  STACK[0x3C0] = STACK[0x618];
  STACK[0x350] = STACK[0x4F0];
  STACK[0x340] = STACK[0x7A0];
  STACK[0x330] = STACK[0x600];
  STACK[0x320] = STACK[0x818];
  STACK[0x3B0] = STACK[0x598];
  LODWORD(STACK[0x3F0]) = LOWORD(STACK[0x9EE]);
  LODWORD(STACK[0x410]) = LOWORD(STACK[0x9DE]);
  LODWORD(STACK[0x3A0]) = LOWORD(STACK[0x9CA]);
  LODWORD(STACK[0x3D0]) = LOWORD(STACK[0x986]);
  JUMPOUT(0x196A17488);
}

uint64_t fp_dh_208bd91678a6314b3935dcb620708965(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8) ^ (455395931 * ((a1 & 0x40CA521E | ~(a1 | 0x40CA521E)) ^ 0xC9C4F32D));
  v4 = *a1;
  v3 = v1 + 998242381 * ((&v3 - 1558211423 - 2 * (&v3 & 0xA31F94A1)) ^ 0x9700C77) + 690844124;
  return (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 - 444575770) + 8 * v1 - 3556556820))(&v3);
}

uint64_t fp_dh_6a163eaca6022b0c7d84cf46f2165069(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = 33;
  *(a1 + 72) = *(a2 + 4);
  *(a1 + 80) = *(a2 + 8);
  return 0;
}

void fp_dh_7aa89a84ed7d06a0492dd999067b40f7(uint64_t a1)
{
  v1 = *(a1 + 20) - 1283153057 * (((a1 | 0x465660A0) - a1 + (a1 & 0xB9A99F5F)) ^ 0x98E6397);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_1969A77B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = STACK[0x36C];
  v67 = (v65 ^ 0x9976F8DB) + a65;
  STACK[0x850] = v67;
  return (*(a6 + 8 * ((v66 + 1006) ^ ((8 * (v67 <= a35)) | (16 * (v67 <= a35))))))(a1);
}

uint64_t sub_1969A7894@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v8 = v5 - 1;
  *(v7 + v8) = *(v3 + (v8 & 0xF)) ^ *(a2 + v8) ^ *(v4 + (v8 & 0xF)) ^ (43 * (v8 & 0xF)) ^ *((v8 & 0xF) + v2 + 3);
  return (*(v6 + 8 * (((v8 == 0) * (a1 ^ 0x1EA5)) ^ (a1 + 516))))();
}

uint64_t sub_1969A78F8(uint64_t a1, int a2)
{
  v6 = (v4 + 32);
  v7 = (a1 + 32);
  v8 = *v6;
  *(v7 - 1) = *(v6 - 1);
  *v7 = v8;
  return (*(v5 + 8 * (((v3 == 32) * a2) ^ v2)))();
}

uint64_t sub_1969A795C(__n128 a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = (a4 + 4 * v7);
  *v10 = a1;
  v10[1] = a1;
  return (*(v9 + 8 * (((v7 + v6 - 3227 != v8) * a6) ^ a3)))(a2);
}

void sub_1969A7A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x7D0]) = v6;
  STACK[0x460] = *(a6 + 8 * (v7 - 5650));
  JUMPOUT(0x1968C4598);
}

void sub_1969A7B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, int a21, int a22, int a23, unsigned __int8 a24, int a25, unsigned __int8 a26, __int16 a27, unsigned __int8 a28, int a29)
{
  *(v29 - 124) = (a22 ^ 0xBBB82994) & (a24 ^ 0xFFFFFFD4) ^ ((a29 - 1625) ^ 0xF) & a24 ^ 0x664EAFF0;
  *(v29 - 132) = (((a25 ^ 0x8B) << 8) | (a20 << 24) | a26 | ((a28 ^ 0x21) << 16)) ^ 0x12ACAC98;
  *(v29 - 128) = a21 ^ 0x4DB8CB85;
  JUMPOUT(0x1968CE6C0);
}

void sub_1969A7C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  *(v30 - 136) = v29 + ((((v30 - 144) | 0x7D2FD206) - (v30 - 144) + ((v30 - 144) & 0x82D02DF8)) ^ 0x32F7D131) * v26 + 2958;
  *(v30 - 144) = &a14;
  *(v30 - 128) = v28;
  *(v30 - 120) = &a14;
  *(v30 - 112) = &a26;
  *(v30 - 104) = a12;
  (*(v27 + 8 * (v29 ^ 0x1E2D)))(v30 - 144, a2, a3, a4, a5, a6, a7, a8);
  JUMPOUT(0x19699D7ACLL);
}

void sub_1969A7CD8()
{
  v2 = *(STACK[0x578] + 20);
  if (v2)
  {
    if (v2 == 1)
    {
      (*(v0 + 8 * (v1 + 3283)))(STACK[0x4E8], 0, 32);
      JUMPOUT(0x1969A07ECLL);
    }

    JUMPOUT(0x19699F604);
  }

  JUMPOUT(0x1969A7D60);
}

uint64_t sub_1969A7DA0()
{
  if (v0 == 1906281716)
  {
    v4 = STACK[0x680];
    v5 = *(STACK[0x680] + 8);
    v6 = STACK[0x8A0];
    v6[1] = v5;
    *v6 = *v4;
    return (*(v1 + 8 * (((v5 == 0) * (v2 - 8426 + 2662 * (v2 ^ 0xE1E))) ^ (v2 - 828))))();
  }

  else if (v0 == 1906239664)
  {
    return (*(v1 + 8 * (((*(STACK[0x6E8] + 8) == 0) * (((STACK[0x228] - 2316) ^ 0x13C5) - 5720)) ^ (STACK[0x228] + 1696))))();
  }

  else
  {
    return (*(v1 + 8 * (((((v2 - 1) ^ (*(STACK[0x8A0] + 24) == 0)) & 1) * (((v2 + 1253247444) & 0xB54CED1F) - 869)) ^ (v2 - 881))))();
  }
}

uint64_t sub_1969A7EB0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  v54 = *a1;
  if (v53)
  {
    v55 = v54 == 0;
  }

  else
  {
    v55 = 1;
  }

  v56 = v55;
  return (*(a52 + 8 * ((((v52 ^ v56) & 1) * ((283 * (v52 ^ 0xC70)) ^ 0x19CF)) ^ v52)))(v54, a2, a3, a4, a5);
}

void sub_1969A85B8(int a1@<W8>)
{
  v2 = (((a1 ^ 0x61F8754B) - 1643672907) ^ ((a1 ^ 0xE3A91794) + 475457644) ^ ((a1 ^ 0xFE1665B4) + 32086604)) + 1206762995 + (((LODWORD(STACK[0x2F4]) ^ 0x6B20C7D5) - 1797310421) ^ ((LODWORD(STACK[0x2F4]) ^ 0xD7C0B22D) + 675237331) ^ ((v1 ^ 0xC0A766C1 ^ LODWORD(STACK[0x2F4])) + 1062767981));
  LODWORD(STACK[0x2F4]) = v2 ^ ((v2 ^ 0x29E72782) - 1723369631) ^ ((v2 ^ 0x4EABD869) - 32798580) ^ ((v2 ^ 0xF7EDA701) + 1196292068) ^ ((v2 ^ 0xDFFEF7F7) + 1868474134) ^ 0x3318A876;
  JUMPOUT(0x1969A8704);
}

void sub_1969A8DD0()
{
  v0 = STACK[0x548];
  *v0 = 0u;
  v0[1] = 0u;
  JUMPOUT(0x1969A8DECLL);
}

uint64_t sub_1969A8E34@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  STACK[0x888] = v2;
  v3 = STACK[0x7F8];
  STACK[0x890] = STACK[0x7F8];
  return (*(a1 + 8 * (((v2 - v3 > 9) * ((a2 - 208) ^ 0x16E)) ^ a2)))();
}

uint64_t sub_1969A8EBC(uint64_t a1, int a2)
{
  v7 = v2 + 929;
  v8 = *(v3 + 48 * v5 + 36);
  v10 = (v8 + a2) < 0x80000003 && v8 != (((v7 - 849) | 0x901) ^ (v6 - 1711));
  return (*(v4 + 8 * ((v10 * (v7 ^ 0x114C)) ^ v7)))(a1);
}

void sub_1969A8F10(int a1@<W8>)
{
  v7 = v1 - a1;
  *(v6 - 208) = (v1 + 328884062) ^ (((-459827991 - ((v6 - 208) | 0xE49794E9) + ((v6 - 208) | 0x1B686B16)) ^ 0x7E72905D) * v3);
  (*(v5 + 8 * (v1 - 1906232786)))(v6 - 208);
  if (((v2 - v1) | (v1 - v2)) > v7 - 6140)
  {
    v8 = 9;
  }

  else
  {
    v8 = 10;
  }

  LOBYTE(STACK[0x1A90]) = (v8 + (v1 ^ 0xCF)) ^ (127 * ((v6 + 48 - 2 * ((v6 + 48) & 0xF3) - 13) ^ 0xF1));
  *(v6 - 204) = v1 - 1906234314 + 1575331711 * ((v6 - 208 - 2 * ((v6 - 208) & 0x4787E9F3) + 1200089587) ^ 0x2BDC7CF1);
  *(v6 - 200) = &STACK[0x5FC];
  *(v6 - 192) = &STACK[0x524];
  (*(v5 + 8 * (v1 ^ (v4 + 2844))))(v6 - 208);
  JUMPOUT(0x19694B388);
}

uint64_t sub_1969A9024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = ((((v18 - 144) | 0xF8D7078B) - ((v18 - 144) & 0xF8D7078B)) ^ 0x41FF24BD) * v15;
  *(v18 - 128) = ((v13 + v16) ^ 0x7EFFBB27) - v19 + v17 - 5610 - 1377899094 + ((v17 - 33595883) & (2 * (v13 + v16)));
  *(v18 - 136) = a13;
  *(v18 - 144) = (v17 - 2710) ^ v19;
  v20 = (*(v14 + 8 * (v17 + 621)))(v18 - 144, a2, a3, a4, a5, a6, a7, a8);
  return (*(v14 + 8 * ((166 * (*(v18 - 140) == 1573492468)) ^ v17)))(v20);
}

uint64_t sub_1969A90EC(__n128 a1)
{
  v4[-1] = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v1) ^ v2)))();
}

uint64_t sub_1969A9114@<X0>(uint64_t a1@<X2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, unint64_t a32, _BYTE *a33, uint64_t a34)
{
  v37 = a2 + 254;
  v38 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((a2 + 254) ^ 0xC29));
  v39 = *(v38 + (v35[11] ^ 0x1ELL));
  v40 = *(v38 + (v35[3] ^ 0xCCLL));
  v41 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 ^ 0xFE0)) - 12;
  v42 = -109 * v41[v35[10] ^ 0x2CLL] + 46;
  v43 = v42 & 0x83 ^ (v37 - 35);
  v44 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 ^ 0xD4A));
  v45 = *(v44 + (v35[12] ^ 0xD6));
  v46 = (((v42 ^ (2 * ((v42 ^ 0x7E) & (2 * ((v42 ^ 0x7E) & (2 * ((v42 ^ 0x7E) & (2 * ((v42 ^ 0x7E) & (2 * ((v42 ^ 0x7E) & (2 * ((v42 ^ 0x7E) & (2 * v42) ^ v43)) ^ v43)) ^ v43)) ^ v43)) ^ v43)) ^ v43))) << 8) ^ 0xB678D19) & (v39 ^ 0xFFFFF40) | v39 & 0xE6;
  v47 = *(v38 + (v35[15] ^ 0xEDLL));
  v48 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 ^ 0xD00));
  v49 = *(v44 + (v35[8] ^ 0xFLL)) << 24;
  v50 = (v46 ^ 0xB29F386B) & (v49 ^ 0xE3FFFFFF);
  v51 = v49 & 0x46000000;
  LOBYTE(v49) = -109 * v41[v35[6] ^ 0xELL] - 63;
  v52 = v49 & 0x28 ^ 0xA6;
  LOBYTE(v49) = v49 ^ (2 * ((v49 ^ 0x6C) & (2 * ((v49 ^ 0x6C) & (2 * ((v49 ^ 0x6C) & (2 * ((v49 ^ 0x6C) & (2 * ((v49 ^ 0x6C) & (2 * v52) ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ v52));
  v53 = ((v49 << 8) ^ 0xAAFF2017) & ((*(v48 + (v35[5] ^ 0x87)) << 16) ^ 0xAAC57017) | (v49 << 8) & 0x8FFF;
  v54 = -109 * v41[v35[2] ^ 0x8DLL] - 48;
  v55 = v54 & 0xA5 ^ 0x64;
  v56 = (v54 ^ (2 * ((v54 ^ 0x5C) & (2 * ((v54 ^ 0x5C) & (2 * ((v54 ^ 0x5C) & (2 * ((v54 ^ 0x5C) & (2 * ((v54 ^ 0x5C) & (2 * (v54 & (2 * v54) & 0x3A ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55))) << 8;
  v57 = (*(v44 + (*v35 ^ 0x68)) ^ 0x6A) << 24;
  v58 = v57 & 0x47000000 ^ 0x14462AA6 ^ ((v56 & 0x9100 | (v56 ^ 0xD6FF0AFF) & ((((*(v48 + (v35[1] ^ 0xBCLL)) << 16) ^ 0x444308B9) & (v40 | 0x44FF0800) | v40 & 0x46) ^ 0x920266C7)) ^ 0x6E8AA6CF) & (v57 ^ 0xC7FFFFFF);
  v59 = *(v48 + (v35[9] ^ 0xE6)) << 16;
  v60 = (v51 ^ 0xA23E64D2 ^ v50) & (v59 ^ 0xFF5BFFFF);
  v61 = v59 & 0x390000;
  v62 = v35[13] ^ 0xCALL;
  v63 = v60 ^ v61;
  *(v36 - 176) = v60 ^ v61;
  LOBYTE(v60) = *(v48 + v62);
  LOBYTE(v62) = -109 * v41[v35[14] ^ 0x3BLL] - 83;
  LODWORD(v41) = (*(v44 + (v35[4] ^ 0x1BLL)) ^ 0x19) << 24;
  v64 = ((((v60 ^ 0x4A) << 16) | 0x6CAFEBBB) ^ (((((v45 ^ 0x54) << 24) ^ 0xB378CA49) & (v47 ^ 0xFF7EEA7D) | v47 & 0xB6) ^ 0x7AD72176) & ~((v60 ^ 0x4A) << 16)) + (v62 << 8);
  v65 = *(v38 + (v35[7] ^ 0xD3));
  v66 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 ^ 0xDA7));
  LODWORD(v38) = *(v66 + 4 * (v45 ^ 0x6Eu));
  v67 = (v53 ^ 0x5BB229A9) & (v41 ^ 0xFFFFFFBF) ^ (v41 | 0xF1FD56BE) | v65 ^ 0xBE;
  v68 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 - 3400)) - 4;
  v69 = v38 ^ *&v68[4 * (v60 ^ 0x58)] ^ 0xD5EBE623;
  v70 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 - 3038)) - 8;
  v71 = *&v70[4 * (v62 ^ 0xC3)];
  HIDWORD(v72) = v71 ^ 0x22222222;
  LODWORD(v72) = v71 ^ 0x3FE69400;
  v73 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 - 3150));
  v74 = (v69 - ((2 * v69) & 0xC206AA06) + 1627608323) ^ *(v73 + 4 * (v47 ^ 0xCB)) ^ (v72 >> 10);
  v235 = __PAIR64__(v58, v64);
  v75 = v58 ^ (v74 - ((2 * v74) & 0x597FE452) - 1396706775);
  HIDWORD(v234) = v67;
  v76 = v75 ^ v67;
  LODWORD(v38) = ((v75 ^ v67) - ((2 * (v75 ^ v67)) & 0x16C206E8) + 190907252) ^ v63;
  v77 = v38 ^ v64 ^ 0x1E4BDBCC;
  LODWORD(v62) = *&v70[4 * (BYTE1(v77) ^ 0xA4)];
  HIDWORD(v72) = v62 ^ 0x22222222;
  LODWORD(v72) = v62 ^ 0x3FE69400;
  v78 = ((v72 >> 10) - ((2 * (v72 >> 10)) & 0xB5325320) + 1519987088) ^ *&v68[4 * (BYTE2(v77) ^ 0xC7)];
  v79 = (v78 - ((2 * v78) & 0xC206AA06) + 1627608323) ^ *(v73 + 4 * ((v38 ^ v64) ^ 0x92u));
  HIDWORD(v233) = v38 ^ v64 ^ 0x3144AF1D;
  LODWORD(v234) = v75;
  LODWORD(v48) = v75 ^ *(v66 + 4 * (((v38 ^ v64) >> 24) ^ 0x89)) ^ (v79 - ((2 * v79) & 0x1EE59F66) - 1888301133);
  HIDWORD(v232) = v38 ^ 0x44C3A636;
  LODWORD(v233) = v76 ^ 0x5044A9A8;
  v80 = v48 ^ v76 ^ 0x5044A9A8 ^ 0xF864C9F6;
  HIDWORD(v231) = v80 ^ v38 ^ 0x44C3A636;
  LODWORD(v232) = v48 ^ v76 ^ 0x5044A9A8;
  LODWORD(v38) = *&v70[4 * (((WORD2(v231) ^ 0xB1CB ^ WORD2(v233)) >> 8) ^ 0x43)];
  HIDWORD(v72) = v38 ^ 0x22222222;
  LODWORD(v72) = v38 ^ 0x3FE69400;
  LODWORD(v38) = *(v73 + 4 * (BYTE4(v231) ^ 0xCB ^ BYTE4(v233) ^ 0x1Du)) ^ *&v68[4 * (((HIDWORD(v231) ^ 0x88C8B1CB ^ HIDWORD(v233)) >> 16) ^ 0x82)] ^ 0x3B9A7C93 ^ (v72 >> 10);
  HIDWORD(v230) = (v38 - ((2 * v38) & 0x1EE59F66) - 1888301133) ^ *(v66 + 4 * (((HIDWORD(v231) ^ 0x88C8B1CB ^ HIDWORD(v233)) >> 24) ^ 0x6A)) ^ v48;
  LODWORD(v231) = HIDWORD(v231) ^ 0x88C8B1CB ^ HIDWORD(v233);
  LODWORD(v230) = v80 ^ HIDWORD(v230) ^ 0xC3AD36D6;
  HIDWORD(v229) = HIDWORD(v231) ^ 0x88C8B1CB ^ v230;
  v81 = HIDWORD(v229) ^ 0x144DB8F9 ^ v231;
  v82 = *(v73 + 4 * (v81 ^ 0xC4u)) ^ *(v66 + 4 * (HIBYTE(v81) ^ 0xA4));
  LODWORD(v229) = v81;
  v83 = *&v70[4 * (((v81 ^ 0x804B) >> 8) ^ 0xD0)];
  HIDWORD(v72) = v83 ^ 0x22222222;
  LODWORD(v72) = v83 ^ 0x3FE69400;
  v84 = (v72 >> 10) ^ *&v68[4 * (BYTE2(v81) ^ 0x5A)] ^ ((v82 ^ 0xEE719AB0) - 2 * ((v82 ^ 0xEE719AB0) & 0x5A992999 ^ v82 & 9) + 1519987088);
  LODWORD(v62) = v80 ^ v84;
  LODWORD(v228) = HIDWORD(v229) ^ 0x144DB8F9 ^ v80 ^ v84;
  v85 = v81 ^ 0x1C92804B ^ v228;
  v86 = *&v70[4 * (BYTE1(v85) ^ 0xB5)];
  v87 = HIDWORD(v230) ^ 0xC3AD36D6 ^ v84;
  HIDWORD(v72) = v86 ^ 0x22222222;
  LODWORD(v72) = v86 ^ 0x3FE69400;
  v88 = ((v72 >> 10) - ((2 * (v72 >> 10)) & 0x1EE59F66) - 1888301133) ^ *(v66 + 4 * (HIBYTE(v85) ^ 0x49));
  v89 = (v88 - ((2 * v88) & 0xB5325320) + 1519987088) ^ *&v68[4 * (BYTE2(v85) ^ 0xD1)];
  v227 = __PAIR64__(v85, v87);
  v90 = v87 ^ *(v73 + 4 * (v81 ^ 0x4B ^ v228 ^ 0xC1u)) ^ (v89 - ((2 * v89) & 0xC206AA06) + 1627608323);
  v91 = v90 ^ HIDWORD(v229) ^ 0x144DB8F9 ^ v85;
  v92 = *(v73 + 4 * (v91 ^ 0x18u)) ^ *(v66 + 4 * (HIBYTE(v91) ^ 0x90)) ^ 0xEE719AB0;
  HIDWORD(v225) = v91;
  LODWORD(v38) = v91 ^ 0x28C17697;
  LODWORD(v47) = *&v70[4 * (((v91 ^ 0x7697) >> 8) ^ 0xD0)];
  HIDWORD(v72) = v47 ^ 0x22222222;
  LODWORD(v72) = v47 ^ 0x3FE69400;
  v93 = (v92 + 1519987088 + (~(2 * v92) | 0x4ACDACDF) + 1) ^ *&v68[4 * (BYTE2(v91) ^ 9)] ^ (v72 >> 10);
  HIDWORD(v228) = v62;
  LODWORD(v225) = v93 ^ v62;
  v94 = v93 ^ v62 ^ 0x8DF38B2;
  LODWORD(v226) = v90 ^ HIDWORD(v229) ^ 0x144DB8F9;
  HIDWORD(v224) = v226 ^ v94;
  v95 = *&v70[4 * (((v38 ^ v226 ^ v94 ^ 0xAA49) >> 8) ^ 0x69)];
  HIDWORD(v72) = v95 ^ 0x22222222;
  LODWORD(v72) = v95 ^ 0x3FE69400;
  LODWORD(v62) = *&v68[4 * (((v38 ^ HIDWORD(v224) ^ 0x3B3DAA49) >> 16) ^ 0x2D)] ^ *(v73 + 4 * ((v38 ^ BYTE4(v224) ^ 0x49) ^ 0x1Fu)) ^ 0x3B9A7C93 ^ (v72 >> 10);
  HIDWORD(v226) = v90;
  HIDWORD(v223) = v90 ^ v93;
  LODWORD(v224) = v38 ^ v226 ^ v94 ^ 0x3B3DAA49;
  LODWORD(v223) = (v62 - 1888301133 + (~(2 * v62) | 0xE11A6099) + 1) ^ *(v66 + 4 * (BYTE3(v224) ^ 0x21)) ^ v90 ^ v93;
  HIDWORD(v222) = v223 ^ 0xCD000000 ^ v94;
  v96 = HIDWORD(v222) ^ 0x7B000000 ^ v38;
  v97 = *&v70[4 * (((v223 ^ v94 ^ v38) >> 8) ^ 0xD0)];
  HIDWORD(v72) = v97 ^ 0x22222222;
  LODWORD(v72) = v97 ^ 0x3FE69400;
  v98 = *(v73 + 4 * ((v223 ^ v94 ^ v38) ^ 0x8Fu)) ^ *&v68[4 * (BYTE2(v96) ^ 0xC8)] ^ 0x3B9A7C93 ^ (v72 >> 10);
  LODWORD(v38) = v223 ^ 0xCD000000 ^ *(v66 + 4 * (HIBYTE(v96) ^ 0xB8)) ^ (v98 - ((2 * v98) & 0x1EE59F66) - 1888301133);
  v99 = v38 ^ v226 ^ v94 ^ 0x3B3DAA49;
  v100 = v99 ^ v96 ^ 0x5C014EEB;
  v101 = *&v70[4 * (BYTE1(v100) ^ 0x69)];
  HIDWORD(v72) = v101 ^ 0x22222222;
  LODWORD(v72) = v101 ^ 0x3FE69400;
  v102 = *&v68[4 * (BYTE2(v100) ^ 0x32)] ^ *(v73 + 4 * ((v223 ^ *(v66 + 4 * (HIBYTE(v96) ^ 0xB8)) ^ (v98 - ((2 * v98) & 0x66) - 77) ^ v226 ^ v94 ^ 0x49 ^ v96) ^ 0x3Au)) ^ 0x3B9A7C93 ^ (v72 >> 10);
  LODWORD(v221) = v99 ^ v96;
  HIDWORD(v221) = v38;
  v103 = v38 ^ *(v66 + 4 * (((v99 ^ v96) >> 24) ^ 0xCA)) ^ (v102 - ((2 * v102) & 0x1EE59F66) - 1888301133);
  LODWORD(v220) = v38 ^ HIDWORD(v222) ^ 0x7B000000;
  LODWORD(v222) = v96;
  v104 = v103 ^ v220 ^ 0x2D16C792 ^ v96 ^ 0xCED813D9;
  LODWORD(v38) = *&v70[4 * (BYTE1(v104) ^ 0x4A)];
  LODWORD(v219) = v103 ^ v220 ^ 0x2D16C792 ^ v96 ^ 0x8B0889B7;
  HIDWORD(v72) = v38 ^ 0x22222222;
  LODWORD(v72) = v38 ^ 0x3FE69400;
  v105 = ((v72 >> 10) - ((2 * (v72 >> 10)) & 0x1EE59F66) - 1888301133) ^ *(v66 + 4 * (((v103 ^ v220 ^ 0x2D16C792 ^ v96) >> 24) ^ 0x33));
  v106 = (v105 - ((2 * v105) & 0xB5325320) + 1519987088) ^ *&v68[4 * (BYTE2(v104) ^ 0x18)];
  LODWORD(v68) = (v106 - ((2 * v106) & 0xC206AA06) + 1627608323) ^ *(v73 + 4 * ((v103 ^ v220 ^ 0x92 ^ v96) ^ 0x38u));
  v107 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 - 3201)) - 12;
  v108 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 ^ 0xF94)) - 4;
  v109 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 ^ 0xD3E));
  v218 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 - 3263)) - 4;
  v216 = v109;
  v217 = v108;
  v238 = (v108[v34[15] ^ 0x9ELL] ^ 0x3A | ((v107[v34[13] ^ 0xC7] ^ 0x7D) << 16) | ((v218[v34[12] ^ 0x18] ^ 0xA) << 24) | ((*(v109 + (v34[14] ^ 0x8DLL)) ^ 0xE6) << 8)) ^ 0x7C7C7CB5;
  HIDWORD(v215) = (((*(v36 - 164) ^ 0x5E1AF60B) + 167155363) ^ ((*(v36 - 164) ^ 0x83B32E9F) - 731951561) ^ ((*(v36 - 164) ^ 0xE0D07D57) - 1220796929)) - 1439708342;
  LODWORD(v215) = *(v36 - 176) ^ 0xF3292CF3;
  HIDWORD(v214) = v48 ^ 0x9F79C814;
  LODWORD(v214) = HIDWORD(v222) ^ 0x7B000000 ^ v226 ^ v94 ^ 0x3B3DAA49;
  LODWORD(v213) = v99 ^ 0x318B55BD;
  HIDWORD(v213) = v68 ^ v220 ^ 0x2D16C792;
  HIDWORD(v212) = v99 ^ 0x1F6DFFAE;
  HIDWORD(v219) = v103 ^ v220 ^ 0x2D16C792;
  HIDWORD(v211) = HIDWORD(v219) ^ v99 ^ 0xA623E46C ^ HIDWORD(v213);
  LODWORD(v212) = HIDWORD(v219) ^ v99;
  LODWORD(v48) = (v108[v34[11] ^ 0xEALL] ^ 0x6E | ((v107[v34[9] ^ 0xD2] ^ 0xF5) << 16) | ((v218[v34[8] ^ 0x83] ^ 0x47) << 24) | ((*(v109 + (v34[10] ^ 0x56)) ^ 0x5A) << 8)) ^ 0x7C7C7C7C;
  v237 = (v108[v34[7] ^ 0x74] ^ 0x70 | ((v218[v34[4] ^ 6] ^ 0xE) << 24) | ((v107[v34[5] ^ 0x46] ^ 0x13) << 16) | ((*(v109 + (v34[6] ^ 0xCBLL)) ^ 0xCE) << 8)) ^ 0x7C7C7C7C;
  v110 = (v108[v34[3] ^ 0xEALL] ^ 0x6E | ((v218[*v34 ^ 0x1BLL] ^ 7) << 24) | ((*(v109 + (v34[2] ^ 0x13)) ^ 0x50) << 8) | ((v107[v34[1] ^ 0x88] ^ 0x63) << 16)) ^ 0x7C7C7C7C;
  HIDWORD(v220) = v103;
  LODWORD(v211) = v68 ^ v103;
  *(v36 - 164) = 0;
  HIDWORD(a34) = 0;
  LOBYTE(v106) = 8 * (a32 & 7);
  v111 = __ROR8__(a32 & (v37 ^ 0xFFFFFFFFFFFFF25DLL), 8) + ((41 * ((v37 - 204) ^ 0xCFF)) ^ 0x568FD0F9DF82F7F5);
  v112 = v111 ^ 0x315FDBFEB957105ELL;
  v111 ^= 0x85215C3045409F44;
  v113 = (v111 + (v112 >> 8) + (v112 << 56)) ^ 0x8174304F61371433;
  v114 = v113 ^ __ROR8__(v111, 61);
  v115 = (__ROR8__(v113, 8) + v114) ^ 0x48DE3944125A0254;
  v116 = v115 ^ __ROR8__(v114, 61);
  v117 = (__ROR8__(v115, 8) + v116) ^ 0x57D072DFC3A5F657;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = (v118 + __ROR8__(v117, 8)) ^ 0xF2620266DFD8DE82;
  v120 = v119 ^ __ROR8__(v118, 61);
  v121 = (v120 + __ROR8__(v119, 8)) ^ 0xB9BEF0CD865D21FDLL;
  v122 = v121 ^ __ROR8__(v120, 61);
  v123 = (__ROR8__(v121, 8) + v122) ^ 0x6E1E19DDB33CB23ALL;
  v124 = (__ROR8__(v123, 8) + (v123 ^ __ROR8__(v122, 61))) ^ 0x3532CD90FD5B1622;
  v125 = __ROR8__((a32 + 8) & 0xFFFFFFFFFFFFFFF8, 8);
  v126 = (v125 + 0x568FD0F9DF82F1E3) ^ 0x85215C3045409F44;
  v127 = (__ROR8__((v125 + 0x568FD0F9DF82F1E3) ^ 0x315FDBFEB957105ELL, 8) + v126) ^ 0x8174304F61371433;
  v128 = v127 ^ __ROR8__(v126, 61);
  v129 = (v128 + __ROR8__(v127, 8)) ^ 0x48DE3944125A0254;
  v130 = v129 ^ __ROR8__(v128, 61);
  v131 = (__ROR8__(v129, 8) + v130) ^ 0x57D072DFC3A5F657;
  v132 = v131 ^ __ROR8__(v130, 61);
  v133 = (__ROR8__(v131, 8) + v132) ^ 0xF2620266DFD8DE82;
  v134 = v133 ^ __ROR8__(v132, 61);
  v135 = (__ROR8__(v133, 8) + v134) ^ 0xB9BEF0CD865D21FDLL;
  v137 = __ROR8__(v134, 61);
  v136 = v135 ^ v137;
  v138 = ((v135 ^ v137) + (v135 >> 8) + (v135 << 56)) ^ 0x6E1E19DDB33CB23ALL;
  v139 = v124 >> v106;
  v140 = (__ROR8__(v138, 8) + (v138 ^ __ROR8__(v136, 61))) ^ 0x3532CD90FD5B1622;
  v141 = v140 >> v106;
  v142 = v139 + 2 * (v140 << (v106 ^ 0x3F));
  v143 = *a32;
  v144 = (__ROR8__(a32 + 16, 8) & 0xF8FFFFFFFFFFFFFFLL) + 0x568FD0F9DF82F1E3;
  v145 = v144 ^ 0x85215C3045409F44;
  v146 = (__ROR8__(v144 ^ 0x315FDBFEB957105ELL, 8) + (v144 ^ 0x85215C3045409F44)) ^ 0x8174304F61371433;
  v147 = v146 ^ __ROR8__(v145, 61);
  v148 = (v147 + __ROR8__(v146, 8)) ^ 0x48DE3944125A0254;
  v149 = v148 ^ __ROR8__(v147, 61);
  v150 = (v149 + __ROR8__(v148, 8)) ^ 0x57D072DFC3A5F657;
  v151 = v150 ^ __ROR8__(v149, 61);
  v152 = (v151 + __ROR8__(v150, 8)) ^ 0xF2620266DFD8DE82;
  v153 = v152 ^ __ROR8__(v151, 61);
  v154 = (__ROR8__(v152, 8) + v153) ^ 0xB9BEF0CD865D21FDLL;
  v155 = __ROR8__(v154, 8);
  v156 = v154 ^ __ROR8__(v153, 61);
  v157 = v141 + 2 * (((((v156 + v155) ^ 0x6E1E19DDB33CB23ALL ^ __ROR8__(v156, 61)) + __ROR8__((v156 + v155) ^ 0x6E1E19DDB33CB23ALL, 8)) ^ 0x3532CD90FD5B1622) << (v106 ^ 0x3F));
  v158 = ((v218[v139 ^ 0x66] ^ 0xA8) << 24) | ((v107[BYTE1(v142) ^ 0x91] ^ 0x91) << 16) | ((*(v109 + (BYTE2(v142) ^ 0xD9)) ^ 0x75) << 8) | v108[BYTE3(v142) ^ 9] ^ 0xAC;
  v159 = v218[v141 ^ 0xD8];
  LODWORD(v141) = ((v218[BYTE4(v142) ^ 0x67] ^ 0x2F) << 24) | ((v107[BYTE5(v142) ^ 0x70] ^ 0x92) << 16) | ((*(v109 + (BYTE6(v142) ^ 0x8ALL)) ^ 0x9E) << 8) | v108[HIBYTE(v142) ^ 0xFA] ^ 0xA7;
  LODWORD(v139) = ((v107[BYTE1(v157) ^ 0x10] ^ 0xFF) << 16) | ((v159 ^ 0xB) << 24) | ((*(v109 + (BYTE2(v157) ^ 0xC0)) ^ 0x43) << 8) | v108[BYTE3(v157) ^ 0xECLL] ^ 0xA3;
  v160 = *(v109 + (BYTE6(v157) ^ 0xEALL));
  HIDWORD(v137) = v160 ^ 2;
  LODWORD(v137) = (v160 ^ 0x80) << 24;
  LODWORD(v142) = ((v218[BYTE4(v157) ^ 0xCLL] ^ 0x73) << 24) | ((v107[BYTE5(v157) ^ 0x38] ^ 0xE5) << 16) | ((((((v137 >> 26) ^ 0x91) >> 6) | (4 * ((v137 >> 26) ^ 0x91))) ^ 0x7D) << 8);
  LODWORD(v157) = v108[HIBYTE(v157) ^ 0x2F] ^ 0xF1;
  *(v36 - 240) = 7;
  v161 = *(a32 + 7) ^ 0xDLL;
  *(v36 - 248) = 11;
  LODWORD(v161) = v108[v161];
  v162 = *(a32 + 11);
  *(v36 - 184) = 13;
  LODWORD(v155) = v108[v162 ^ 0x8A];
  v163 = *(a32 + 13) ^ 0xCFLL;
  *(v36 - 176) = 2;
  v164 = v142 | v157;
  LODWORD(v157) = v107[v163] ^ 0x8F;
  v165 = *(a32 + 2) ^ 0x77;
  *(v36 - 192) = 15;
  LODWORD(v165) = *(v109 + v165) ^ 0x51;
  *(v36 - 216) = 1;
  LODWORD(v157) = v108[*(a32 + 15) ^ 0xA3] ^ 0x3A | (v157 << 16);
  LODWORD(v165) = (v165 << 8) | ((v107[*(a32 + 1) ^ 0x79] ^ 0x5F) << 16);
  *(v36 - 200) = 12;
  LODWORD(v157) = v157 | ((v218[*(a32 + 12) ^ 0xE8] ^ 0x1B) << 24);
  LODWORD(v142) = *(v109 + (*(a32 + 10) ^ 0xCBLL)) ^ 0xCE;
  LODWORD(v163) = v155 ^ 0x3A;
  *(v36 - 232) = 3;
  LODWORD(v155) = v108[*(a32 + 3) ^ 0xE5];
  *(v36 - 256) = 4;
  v166 = *(a32 + 4);
  *(v36 - 208) = 6;
  LODWORD(v161) = v161 ^ 0x3A | ((v218[v166 ^ 0x81] ^ 0xCD) << 24) | ((*(v216 + (*(a32 + 6) ^ 0xE2)) ^ 0x16) << 8);
  *(v36 - 224) = 14;
  v167 = v155 ^ 0x3A | v165 | ((v218[v143 ^ 0xF6] ^ 0x1F) << 24);
  LODWORD(v165) = v163 | (v142 << 8) | ((v218[*(a32 + 8) ^ 0xF7] ^ 0x98) << 24);
  LODWORD(v142) = v161 | ((v107[*(a32 + 5) ^ 0x5ELL] ^ 0xDE) << 16);
  LODWORD(v165) = v139 ^ v48 ^ (v165 | ((v107[*(a32 + 9) ^ 0xC5] ^ 0xA3) << 16));
  LODWORD(v161) = ((v158 ^ v110 ^ v167) - 1396706775 - ((2 * (v158 ^ v110 ^ v167)) & 0x597FE452)) ^ HIDWORD(v235);
  LODWORD(v163) = v165 + 190907252 - ((2 * v165) & 0x16C206E8);
  v168 = HIDWORD(v234) ^ v237 ^ v142 ^ 0x351AA66E ^ v141;
  LODWORD(v139) = v64 ^ v238 ^ (v157 | ((*(v216 + (*(a32 + 14) ^ 0x99)) ^ 0x9A) << 8)) ^ 0x56506F87 ^ v164;
  v169 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 - 3200)) - 8;
  v170 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((v37 - 204) ^ 0xC11)) - 8;
  v171 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 - 3356)) - 12;
  LODWORD(v142) = *&v171[4 * BYTE2(v139)];
  LODWORD(v141) = *&v170[4 * BYTE1(v139)] ^ *&v169[4 * (v161 ^ 0x1D)];
  HIDWORD(v137) = v142 ^ 0xA;
  LODWORD(v137) = v142 ^ 0x5B31C6C0;
  v172 = v137 >> 6;
  LODWORD(v142) = *&v171[4 * BYTE2(v168)];
  HIDWORD(v137) = v142 ^ 0xA;
  LODWORD(v137) = v142 ^ 0x5B31C6C0;
  LODWORD(v142) = v215 ^ v163;
  LODWORD(v163) = ((v137 >> 6) - 796553185 - ((2 * (v137 >> 6)) & 0xA10B203E)) ^ *&v170[4 * ((v215 ^ v163) >> 8)];
  LODWORD(v155) = *&v171[4 * BYTE2(v142)];
  HIDWORD(v137) = v155 ^ 0xA;
  LODWORD(v137) = v155 ^ 0x5B31C6C0;
  LODWORD(v155) = v137 >> 6;
  v173 = *&v169[4 * v168] ^ (v172 - 2073694472 - ((2 * v172) & 0x8CBDDF0));
  LODWORD(v161) = v161 ^ 0x4848C858;
  v174 = *&v171[4 * BYTE2(v161)];
  HIDWORD(v137) = v174 ^ 0xA;
  LODWORD(v137) = v174 ^ 0x5B31C6C0;
  LODWORD(v157) = *&v169[4 * v142] ^ *&v170[4 * BYTE1(v168)] ^ 0x54E07EE7 ^ (v137 >> 6);
  LODWORD(v163) = (v163 - 2073694472 - ((2 * v163) & 0x8CBDDF0)) ^ *&v169[4 * v139];
  v175 = *&v170[4 * BYTE1(v161)] ^ (v173 - 796553185 - ((2 * v173) & 0xA10B203E));
  v176 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((v37 - 204) ^ 0xEEB)) - 8;
  LODWORD(v141) = *&v176[4 * HIBYTE(v168)] ^ v233 ^ v155 ^ ((v141 ^ 0x54E07EE7) + 1227387403 - 2 * ((v141 ^ 0x54E07EE7) & 0x4928721B ^ v141 & 0x10));
  v177 = *&v176[4 * BYTE3(v161)] ^ v234 ^ (v163 + 1227387403 - ((2 * v163) & 0x9250E416));
  v178 = *&v176[4 * BYTE3(v139)] ^ HIDWORD(v233) ^ (v157 + 1227387403 - ((2 * v157) & 0x9250E416));
  LODWORD(v161) = *&v176[4 * BYTE3(v142)] ^ HIDWORD(v232) ^ (v175 + 1227387403 - ((2 * v175) & 0x9250E416));
  LODWORD(v139) = (((v178 ^ 0x2EAFF13C) - (v178 ^ 0x85D15116)) ^ 0xFFFFFFFC) + (v178 ^ 0x2EAFF13C);
  v179 = *&v171[4 * ((v139 ^ 0x8C0045) >> 16)];
  HIDWORD(v137) = v179 ^ 0xA;
  LODWORD(v137) = v179 ^ 0x5B31C6C0;
  LODWORD(v155) = ((v137 >> 6) - 2073694472 - ((2 * (v137 >> 6)) & 0x8CBDDF0)) ^ *&v169[4 * (v141 ^ 0x43)];
  LODWORD(v166) = *&v176[4 * ((v141 ^ 0x41241443) >> 24)] ^ 0xCD4D9CF3 ^ *&v169[4 * (v177 ^ 0x22)];
  v180 = *&v171[4 * ((v141 ^ 0x41241443) >> 16)];
  HIDWORD(v137) = v180 ^ 0xA;
  LODWORD(v137) = v180 ^ 0x5B31C6C0;
  v181 = v161 ^ 0x571001F;
  LODWORD(v108) = *&v169[4 * (v161 ^ 0x1F)] ^ *&v176[4 * BYTE3(v139)] ^ 0xCD4D9CF3;
  LODWORD(v161) = *&v170[4 * BYTE1(v161)] ^ *&v169[4 * (v139 ^ 0x45)] ^ (v137 >> 6);
  LODWORD(v157) = *&v176[4 * ((v177 ^ 0x870D2C22) >> 24)];
  LODWORD(v161) = (v157 ^ 0x4928720B) + (v161 ^ 0x7A06D4F4) + ((2 * ((v161 ^ 0x7A06D4F4) & (v157 ^ 0x2299873E) ^ v161 & 0x6BB1F535)) ^ 0x2BFE5797);
  LODWORD(v157) = (v155 - 796553185 - ((2 * v155) & 0xA10B203E)) ^ *&v170[4 * ((v177 ^ 0x2C22) >> 8)];
  LODWORD(v142) = *&v171[4 * BYTE2(v181)];
  HIDWORD(v137) = v142 ^ 0xA;
  LODWORD(v137) = v142 ^ 0x5B31C6C0;
  LODWORD(v142) = v137 >> 6;
  LODWORD(v163) = *&v171[4 * (BYTE2(v177) ^ 0x81)];
  HIDWORD(v137) = v163 ^ 0xA;
  LODWORD(v137) = v163 ^ 0x5B31C6C0;
  LODWORD(v108) = (v108 - 796553185 - ((2 * v108) & 0xA10B203E)) ^ v231 ^ *&v170[4 * (BYTE1(v141) ^ 0x93)] ^ (v137 >> 6);
  v182 = v232 ^ *&v170[4 * (BYTE1(v139) ^ 0x87)] ^ (v166 - 796553185 - ((2 * v166) & 0xA10B203E)) ^ 0xA797EBB0 ^ v142;
  LODWORD(v141) = *&v171[4 * (BYTE2(v108) ^ 0x17)];
  HIDWORD(v137) = v141 ^ 0xA;
  LODWORD(v137) = v141 ^ 0x5B31C6C0;
  LODWORD(v141) = v137 >> 6;
  LODWORD(v108) = v108 ^ 0x579B45C1;
  LODWORD(v139) = HIDWORD(v231) ^ *&v176[4 * HIBYTE(v181)] ^ 0xDAE38AD ^ (v157 + 1227387403 - ((2 * v157) & 0x9250E416));
  LODWORD(v166) = *&v170[4 * BYTE1(v108)] ^ *&v176[4 * HIBYTE(v182)] ^ 0x99ADE214;
  v183 = HIDWORD(v214) ^ (v161 + 1);
  LODWORD(v161) = *&v171[4 * BYTE2(v183)];
  HIDWORD(v137) = v161 ^ 0xA;
  LODWORD(v137) = v161 ^ 0x5B31C6C0;
  LODWORD(v155) = v166 - 2073694472 - ((2 * v166) & 0x8CBDDF0);
  LODWORD(v161) = ((v137 >> 6) + 1227387403 - ((2 * (v137 >> 6)) & 0x9250E416)) ^ *&v176[4 * (v108 >> 24)];
  LODWORD(v166) = *&v171[4 * BYTE2(v182)];
  HIDWORD(v137) = v166 ^ 0xA;
  LODWORD(v137) = v166 ^ 0x5B31C6C0;
  LODWORD(v161) = (v161 - 2073694472 - ((2 * v161) & 0x8CBDDF0)) ^ *&v169[4 * v139];
  LODWORD(v141) = *&v176[4 * BYTE3(v139)] ^ (v141 + 1227387403 - ((2 * v141) & 0x9250E416));
  LODWORD(v141) = (v141 - 796553185 - ((2 * v141) & 0xA10B203E)) ^ *&v170[4 * BYTE1(v183)];
  LODWORD(v166) = *&v170[4 * BYTE1(v139)] ^ 0xBEAFA504;
  LODWORD(v108) = *&v176[4 * HIBYTE(v183)] ^ *&v169[4 * v108] ^ (v137 >> 6) ^ 0x8D8103FB;
  LODWORD(v108) = (v166 ^ -v166 ^ (v108 - (v108 ^ v166))) + v108;
  LODWORD(v141) = *&v169[4 * v182] ^ HIDWORD(v229) ^ (v141 - 2073694472 - ((2 * v141) & 0x8CBDDF0));
  LODWORD(v142) = v229 ^ *&v170[4 * BYTE1(v182)] ^ 0x99CF5618 ^ (v161 - 796553185 - ((2 * v161) & 0xA10B203E));
  LODWORD(v161) = *&v171[4 * BYTE2(v142)];
  HIDWORD(v137) = v161 ^ 0xA;
  LODWORD(v137) = v161 ^ 0x5B31C6C0;
  LODWORD(v166) = v137 >> 6;
  LODWORD(v161) = *&v171[4 * ((v141 ^ 0x8DB936D4) >> 16)];
  HIDWORD(v137) = v161 ^ 0xA;
  LODWORD(v137) = v161 ^ 0x5B31C6C0;
  LODWORD(v161) = *&v171[4 * BYTE2(v139)];
  BYTE1(v183) = BYTE1(v108) ^ BYTE5(v230);
  LODWORD(v108) = v108 ^ HIDWORD(v230) ^ 0xBA670131;
  LODWORD(v157) = ((v137 >> 6) - 2073694472 - ((2 * (v137 >> 6)) & 0x8CBDDF0)) ^ *&v169[4 * v108];
  LODWORD(v155) = v230 ^ *&v169[4 * v183] ^ v155 ^ (v161 >> 6) ^ 0x769FE55D;
  LODWORD(v163) = *&v171[4 * BYTE2(v155)];
  HIDWORD(v137) = v163 ^ 0xA;
  LODWORD(v137) = v163 ^ 0x5B31C6C0;
  LODWORD(v163) = ((v137 >> 6) - 2073694472 - ((2 * (v137 >> 6)) & 0x8CBDDF0)) ^ *&v169[4 * v142];
  LODWORD(v139) = *&v171[4 * BYTE2(v108)];
  HIDWORD(v137) = v139 ^ 0xA;
  LODWORD(v137) = v139 ^ 0x5B31C6C0;
  LODWORD(v166) = (v166 + 1227387403 - ((2 * v166) & 0x9250E416)) ^ *&v176[4 * ((v141 ^ 0x8DB936D4) >> 24)];
  LODWORD(v108) = (v163 + 1227387403 - ((2 * v163) & 0x9250E416)) ^ *&v176[4 * (v108 >> 24)];
  LODWORD(v157) = (v157 - 796553185 - ((2 * v157) & 0xA10B203E)) ^ *&v170[4 * BYTE1(v142)];
  LODWORD(v161) = v155 ^ (v161 << 26);
  LODWORD(v166) = (v166 - 2073694472 - ((2 * v166) & 0x8CBDDF0)) ^ *&v169[4 * v161];
  LODWORD(v142) = ((v137 >> 6) + 1227387403 - ((2 * (v137 >> 6)) & 0x9250E416)) ^ *&v176[4 * BYTE3(v142)];
  LODWORD(v163) = (v142 - 2073694472 - ((2 * v142) & 0x8CBDDF0)) ^ *&v169[4 * (v141 ^ 0xD4)];
  LODWORD(v142) = *&v176[4 * BYTE3(v161)] ^ HIDWORD(v228) ^ (v157 + 1227387403 - ((2 * v157) & 0x9250E416));
  LODWORD(v139) = v227 ^ *&v170[4 * (BYTE1(v141) ^ 0xB1)] ^ 0x603254D1 ^ (v108 - 796553185 - ((2 * v108) & 0xA10B203E));
  LODWORD(v108) = *&v170[4 * (BYTE1(v183) ^ 0x86)];
  v184 = HIDWORD(v227) ^ *&v170[4 * BYTE1(v155)] ^ 0x7444B31D ^ (v163 - 796553185 - ((2 * v163) & 0xA10B203E));
  LODWORD(v141) = v228 ^ v108 ^ 0xA6357FBA ^ (v166 - 796553185 - ((2 * v166) & 0xA10B203E));
  LODWORD(v161) = *&v171[4 * (BYTE2(v142) ^ 0xED)];
  HIDWORD(v137) = v161 ^ 0xA;
  LODWORD(v137) = v161 ^ 0x5B31C6C0;
  LODWORD(v166) = *&v169[4 * ((v228 ^ v108) ^ 0xBA ^ (v166 + 31 - ((2 * v166) & 0x3E)))] ^ *&v170[4 * (BYTE1(v142) ^ 0x6C)];
  LODWORD(v108) = *&v169[4 * (v142 ^ 0x63)] ^ *&v176[4 * BYTE3(v141)] ^ (*&v171[4 * BYTE2(v184)] << 26) ^ (*&v171[4 * BYTE2(v184)] >> 6) ^ 0xE4215BE8;
  v185 = v108 - 796553185 - ((2 * v108) & 0xA10B203E);
  LODWORD(v155) = (v166 ^ 0x54E07EE7) + 1227387403 - 2 * ((v166 ^ 0x54E07EE7) & 0x4928721B ^ v166 & 0x10);
  LODWORD(v161) = *&v176[4 * BYTE3(v139)] ^ ((v137 >> 6) + 1227387403 - ((2 * (v137 >> 6)) & 0x9250E416));
  LODWORD(v161) = (v161 - 2073694472 - ((2 * v161) & 0x8CBDDF0)) ^ *&v169[4 * v184];
  LODWORD(v108) = *&v170[4 * BYTE1(v184)] ^ 0x99ADE214 ^ *&v176[4 * (BYTE3(v142) ^ 0x68)];
  LODWORD(v166) = *&v171[4 * BYTE2(v139)];
  HIDWORD(v137) = v166 ^ 0xA;
  LODWORD(v137) = v166 ^ 0x5B31C6C0;
  LODWORD(v166) = v137 >> 6;
  LODWORD(v157) = v161 - 796553185 - ((2 * v161) & 0xA10B203E);
  LODWORD(v142) = *&v171[4 * BYTE2(v141)];
  HIDWORD(v137) = v142 ^ 0xA;
  LODWORD(v137) = v142 ^ 0x5B31C6C0;
  LODWORD(v161) = HIDWORD(v226) ^ HIDWORD(v228) ^ *&v169[4 * v139] ^ (v137 >> 6) ^ (v108 - 2073694472 - ((2 * v108) & 0x8CBDDF0));
  LODWORD(v139) = v226 ^ *&v170[4 * BYTE1(v139)] ^ 0x8EF4092D ^ v185;
  v186 = HIDWORD(v225) ^ *&v176[4 * HIBYTE(v184)] ^ v166 ^ 0xAD9CA0C4 ^ v155;
  LODWORD(v108) = *&v171[4 * BYTE2(v186)];
  HIDWORD(v137) = v108 ^ 0xA;
  LODWORD(v137) = v108 ^ 0x5B31C6C0;
  LODWORD(v141) = *&v170[4 * BYTE1(v141)] ^ HIDWORD(v226) ^ v157;
  LODWORD(v166) = *&v176[4 * (BYTE3(v141) ^ 0x40)] ^ *&v169[4 * v186] ^ 0xCD4D9CF3;
  LODWORD(v108) = ((v137 >> 6) - 796553185 - ((2 * (v137 >> 6)) & 0xA10B203E)) ^ *&v170[4 * (BYTE1(v141) ^ 0x1A)];
  LODWORD(v155) = v166 - 796553185 - ((2 * v166) & 0xA10B203E);
  LOWORD(v142) = v161 ^ 0x6C63;
  LODWORD(v166) = *&v169[4 * (v141 ^ 0xF4)] ^ *&v176[4 * ((v161 ^ 0x7F616C63) >> 24)] ^ 0xCD4D9CF3;
  LODWORD(v141) = *&v171[4 * (BYTE2(v141) ^ 0x2C)];
  HIDWORD(v137) = v141 ^ 0xA;
  LODWORD(v137) = v141 ^ 0x5B31C6C0;
  LODWORD(v141) = ((v137 >> 6) + 1227387403 - ((2 * (v137 >> 6)) & 0x9250E416)) ^ *&v176[4 * HIBYTE(v186)];
  LODWORD(v161) = *&v171[4 * (BYTE2(v161) ^ 0xED)];
  HIDWORD(v137) = v161 ^ 0xA;
  LODWORD(v137) = v161 ^ 0x5B31C6C0;
  LODWORD(v161) = v137 >> 6;
  LODWORD(v108) = (v108 + 1227387403 - ((2 * v108) & 0x9250E416)) ^ *&v176[4 * BYTE3(v139)];
  LODWORD(v141) = (v141 - 2073694472 - ((2 * v141) & 0x8CBDDF0)) ^ *&v169[4 * v139];
  LODWORD(v157) = *&v171[4 * BYTE2(v139)];
  HIDWORD(v137) = v157 ^ 0xA;
  LODWORD(v137) = v157 ^ 0x5B31C6C0;
  LODWORD(v163) = v141 - 796553185 - ((2 * v141) & 0xA10B203E);
  LODWORD(v141) = *&v169[4 * v142] ^ v226 ^ v94 ^ (v108 - 2073694472 - ((2 * v108) & 0x8CBDDF0));
  LODWORD(v161) = *&v170[4 * BYTE1(v139)] ^ HIDWORD(v223) ^ v161;
  LODWORD(v139) = v225 ^ *&v170[4 * BYTE1(v186)] ^ (v137 >> 6) ^ 0x24F32246 ^ (v166 - 796553185 - ((2 * v166) & 0xA10B203E));
  v187 = *&v171[4 * BYTE2(v139)];
  HIDWORD(v137) = v187 ^ 0xA;
  LODWORD(v137) = v187 ^ 0x5B31C6C0;
  v188 = v161 ^ v155;
  LODWORD(v155) = v224 ^ *&v170[4 * BYTE1(v142)] ^ 0x1CB86FC3 ^ v163;
  LODWORD(v161) = ((v137 >> 6) - 2073694472 - ((2 * (v137 >> 6)) & 0x8CBDDF0)) ^ *&v169[4 * ((v224 ^ v170[4 * BYTE1(v142)]) ^ 0xC3 ^ v163)];
  LODWORD(v166) = *&v171[4 * BYTE2(v155)];
  LODWORD(v108) = (v161 + 1227387403 - ((2 * v161) & 0x9250E416)) ^ *&v176[4 * (HIBYTE(v188) ^ 0xC)];
  HIDWORD(v137) = v166 ^ 0xA;
  LODWORD(v137) = v166 ^ 0x5B31C6C0;
  LODWORD(v166) = v137 >> 6;
  LOBYTE(v161) = v141 ^ 0x2D;
  LODWORD(v142) = *&v171[4 * ((v141 ^ 0xF5F48E2D) >> 16)];
  HIDWORD(v137) = v142 ^ 0xA;
  LODWORD(v137) = v142 ^ 0x5B31C6C0;
  LODWORD(v166) = *&v176[4 * ((v141 ^ 0xF5F48E2D) >> 24)] ^ *&v169[4 * v139] ^ 0xCD4D9CF3 ^ v166;
  LODWORD(v157) = *&v176[4 * BYTE3(v139)] ^ (v137 >> 6) ^ *&v170[4 * BYTE1(v155)];
  LODWORD(v142) = *&v171[4 * (BYTE2(v188) ^ 0x32)];
  HIDWORD(v137) = v142 ^ 0xA;
  LODWORD(v137) = v142 ^ 0x5B31C6C0;
  LODWORD(v166) = v214 ^ *&v170[4 * (BYTE1(v188) ^ 0x54)] ^ (v166 - 796553185 - ((2 * v166) & 0xA10B203E));
  LODWORD(v141) = v223 ^ *&v170[4 * (BYTE1(v141) ^ 9)] ^ 0x9A2C1AF4 ^ (v108 - 796553185 - ((2 * v108) & 0xA10B203E));
  LODWORD(v161) = v96 ^ *&v170[4 * BYTE1(v139)] ^ *&v169[4 * v161] ^ ((v137 >> 6) - 2073694472 - ((2 * (v137 >> 6)) & 0x8CBDDF0)) ^ 0x1CF03447 ^ *&v176[4 * BYTE3(v155)];
  v189 = HIDWORD(v222) ^ *&v169[4 * (v188 ^ 0xD1)] ^ 0x2C2C1AF4 ^ ((v157 ^ 0x99ADE214) - 2073694472 - 2 * ((v157 ^ 0x99ADE214) & 0x465EEFA ^ v157 & 2));
  LOWORD(v142) = v166 ^ 0xA364;
  LODWORD(v157) = *&v169[4 * v189] ^ 0xCD4D9CF3 ^ *&v176[4 * ((v166 ^ 0xCE45A364) >> 24)];
  LODWORD(v166) = *&v171[4 * (BYTE2(v166) ^ 0xC9)];
  HIDWORD(v137) = v166 ^ 0xA;
  LODWORD(v137) = v166 ^ 0x5B31C6C0;
  LODWORD(v108) = *&v176[4 * HIBYTE(v189)] ^ *&v170[4 * BYTE1(v161)] ^ (v137 >> 6);
  LODWORD(v166) = *&v171[4 * BYTE2(v141)];
  HIDWORD(v137) = v166 ^ 0xA;
  LODWORD(v137) = v166 ^ 0x5B31C6C0;
  LODWORD(v166) = *&v169[4 * v142] ^ *&v176[4 * BYTE3(v161)] ^ 0xCD4D9CF3 ^ (v137 >> 6);
  LODWORD(v163) = *&v171[4 * BYTE2(v161)];
  HIDWORD(v137) = v163 ^ 0xA;
  LODWORD(v137) = v163 ^ 0x5B31C6C0;
  LODWORD(v157) = *&v170[4 * BYTE1(v141)] ^ (v137 >> 6) ^ (v157 - 796553185 - ((2 * v157) & 0xA10B203E));
  LODWORD(v163) = *&v171[4 * BYTE2(v189)];
  HIDWORD(v137) = v163 ^ 0xA;
  LODWORD(v137) = v163 ^ 0x5B31C6C0;
  LODWORD(v161) = ((v137 >> 6) - 2073694472 - ((2 * (v137 >> 6)) & 0x8CBDDF0)) ^ *&v169[4 * v161];
  LODWORD(v161) = (v161 + 1227387403 - ((2 * v161) & 0x9250E416)) ^ *&v176[4 * BYTE3(v141)];
  LODWORD(v142) = *&v170[4 * BYTE1(v142)] ^ HIDWORD(v221) ^ (v161 - 796553185 - ((2 * v161) & 0xA10B203E));
  LODWORD(v161) = *&v170[4 * BYTE1(v189)];
  v190 = v220 ^ *&v169[4 * v141] ^ 0xBC3254D1 ^ ((v108 ^ 0x99ADE214) - 2073694472 - 2 * ((v108 ^ 0x99ADE214) & 0x465EEF9 ^ v108 & 1));
  BYTE2(v141) = BYTE2(v142) ^ 0x32;
  LODWORD(v161) = v221 ^ v161 ^ 0xF7A621E6 ^ (v166 - 796553185 - ((2 * v166) & 0xA10B203E));
  LODWORD(v163) = *&v171[4 * BYTE2(v190)];
  HIDWORD(v137) = v163 ^ 0xA;
  LODWORD(v137) = v163 ^ 0x5B31C6C0;
  LODWORD(v166) = ((v137 >> 6) + 1227387403 - ((2 * (v137 >> 6)) & 0x9250E416)) ^ *&v176[4 * ((v142 ^ 0xBC32D3D1) >> 24)];
  LODWORD(v157) = ((v157 ^ 0x2EE6AA13 ^ -(v157 ^ 0x2EE6AA13) ^ (v213 - (HIDWORD(v212) ^ v157))) + v213) ^ 0x3ABA12EF;
  LODWORD(v163) = *&v171[4 * BYTE2(v157)];
  HIDWORD(v137) = v163 ^ 0xA;
  LODWORD(v137) = v163 ^ 0x5B31C6C0;
  LODWORD(v139) = *&v170[4 * BYTE1(v161)] ^ *&v169[4 * (v142 ^ 0xD1)] ^ (v137 >> 6);
  LODWORD(v108) = *&v169[4 * ((v220 ^ v169[4 * v141]) ^ 0xD1 ^ ((v108 ^ 0x14) - 8 - 2 * ((v108 ^ 0x14) & 0xF9 ^ v108 & 1)))] ^ 0xCD4D9CF3 ^ *&v176[4 * BYTE3(v157)];
  LODWORD(v163) = *&v176[4 * BYTE3(v161)] ^ *&v170[4 * BYTE1(v190)];
  LODWORD(v155) = *&v169[4 * v157];
  LODWORD(v169) = *&v169[4 * v161];
  LODWORD(v161) = *&v171[4 * BYTE2(v161)];
  HIDWORD(v137) = v161 ^ 0xA;
  LODWORD(v137) = v161 ^ 0x5B31C6C0;
  LODWORD(v161) = v137 >> 6;
  LODWORD(v169) = (v166 - 2073694472 - ((2 * v166) & 0x8CBDDF0)) ^ v169;
  LODWORD(v166) = *&v170[4 * (BYTE1(v142) ^ 0x54)];
  LODWORD(v142) = v169 - 796553185 - ((2 * v169) & 0xA10B203E);
  LODWORD(v141) = *&v171[4 * BYTE2(v141)];
  HIDWORD(v137) = v141 ^ 0xA;
  LODWORD(v137) = v141 ^ 0x5B31C6C0;
  LODWORD(v169) = v155 ^ v219 ^ ((v163 ^ 0x99ADE214) - 2073694472 - 2 * ((v163 ^ 0x99ADE214) & 0x465EEFB ^ v163 & 3)) ^ (v137 >> 6);
  LODWORD(v171) = *&v170[4 * BYTE1(v157)] ^ HIDWORD(v220) ^ v142;
  LODWORD(v141) = ((v139 ^ 0x54E07EE7) + 1227387403 - 2 * ((v139 ^ 0x54E07EE7) & 0x4928721B ^ v139 & 0x10)) ^ HIDWORD(v219) ^ *&v176[4 * HIBYTE(v190)];
  LODWORD(v166) = v212 ^ v166 ^ (v108 - 796553185 - ((2 * v108) & 0xA10B203E)) ^ v161 ^ 0xC7FB326B;
  v191 = v141 ^ 0xB500C5DE;
  v192 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 - 3334)) - 12;
  v193 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((v37 - 204) ^ 0xC39)) - 8;
  LODWORD(v108) = *&v193[4 * BYTE3(v166)] ^ *&v192[4 * (v141 ^ 0xDE)];
  v194 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((v37 - 204) ^ 0xE96)) - 12;
  v195 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((v37 - 204) ^ 0xEC0)) - 8;
  LODWORD(v163) = (*&v194[4 * BYTE1(v166)] - ((2 * *&v194[4 * BYTE1(v166)] + 1440418946) & 0x7F0EEF6A) + 1786052086) ^ *&v195[4 * BYTE2(v141)];
  LODWORD(v155) = v171 ^ 0x73081B69;
  LODWORD(v141) = *&v195[4 * ((v171 ^ 0x73081B69) >> 16)];
  v196 = *&v195[4 * (BYTE2(v169) ^ 0x79)];
  LODWORD(v195) = *&v195[4 * BYTE2(v166)] ^ (*&v194[4 * (BYTE1(v169) ^ 0x80)] + 720209473) ^ *&v192[4 * (v171 ^ 0x69)];
  LODWORD(v166) = *&v192[4 * v166];
  LODWORD(v192) = (v163 - ((2 * v163) & 0x74E87E7E) - 1166786753) ^ *&v192[4 * (v169 ^ 0xCE)];
  LODWORD(v171) = *&v194[4 * (BYTE1(v171) ^ 0x4C)];
  LODWORD(v170) = *&v194[4 * BYTE1(v191)];
  LODWORD(v194) = (v195 ^ 0x85F3488A) - 1319659030 - 2 * ((v195 ^ 0x85F3488A) & 0x315799FE ^ v195 & 0x14);
  LODWORD(v195) = *&v193[4 * ((v169 >> 24) ^ 0xEC)];
  v197 = *&v193[4 * HIBYTE(v191)];
  LODWORD(v193) = *&v193[4 * BYTE3(v155)];
  v198 = v196 ^ HIDWORD(v211) ^ (v171 + 720209473) ^ ((v108 ^ 0xB23A6D5) + 1065842613 - 2 * ((v108 ^ 0xB23A6D5) & 0x3F8777B7 ^ v108 & 2));
  v199 = ((v196 ^ WORD2(v211) ^ (v171 - 31167) ^ ((v108 ^ 0xA6D5) + 30645 - 2 * ((v108 ^ 0xA6D5) & 0x77B7 ^ v108 & 2))) >> 8) ^ 0x21;
  v200 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((v37 - 204) ^ 0xC23)) - 4;
  a33[10] = v200[v199] ^ 0xAE;
  v201 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 - 3123)) - 12;
  HIDWORD(v137) = v201[BYTE3(v198) ^ 0x4BLL];
  LODWORD(v137) = (HIDWORD(v137) ^ 0x30) << 24;
  a33[8] = (v137 >> 28) ^ 0x46;
  v202 = v197 ^ HIDWORD(v213) ^ v194;
  v203 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((v37 - 204) ^ 0xC4F)) - 4;
  a33[*(v36 - 248)] = (27 * v203[v198 ^ 0x84] - 112) ^ 0xE3;
  a33[*(v36 - 240)] = (27 * v203[v202 ^ 0x83] - 112) ^ 0xBD;
  v204 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 - 3129)) - 12;
  a33[9] = ((BYTE2(v198) ^ 0x92) + v204[BYTE2(v198) ^ 0x53] - 65) ^ 0x94;
  HIDWORD(v137) = v201[HIBYTE(v202) ^ 0x41];
  LODWORD(v137) = (HIDWORD(v137) ^ 0x30) << 24;
  v205 = v211 ^ v193 ^ (v192 - 1319659030 - ((2 * v192) & 0x62AF33D4));
  LODWORD(v192) = *(v36 - 164);
  a33[*(v36 - 256)] = (v137 >> 28) ^ 0x30;
  a33[5] = ((BYTE2(v202) ^ 0xFB) + v204[BYTE2(v202) ^ 0x3ALL] - 65) ^ 0x25;
  a33[*(v36 - 216)] = ((BYTE2(v205) ^ 0xF1) + v204[BYTE2(v205) ^ 0x30] - 65) ^ 0x4E;
  a33[*(v36 - 232)] = (27 * v203[v205 ^ 0x92] - 112) ^ 0x54;
  HIDWORD(v137) = v201[BYTE3(v205) ^ 0xD3];
  LODWORD(v137) = (HIDWORD(v137) ^ 0x30) << 24;
  *a33 = (v137 >> 28) ^ 0xD7;
  LODWORD(v141) = HIDWORD(v211) ^ v219 ^ v195 ^ (v170 + 720209473) ^ ((v141 ^ v166 ^ 0x85F3488A) - 1319659030 - ((2 * (v141 ^ v166 ^ 0x85F3488A)) & 0x62AF33D4));
  a33[*(v36 - 224)] = v200[BYTE1(v141) ^ 0x59] ^ 0x8E;
  HIDWORD(v137) = v201[BYTE3(v141) ^ 0x87];
  LODWORD(v137) = (HIDWORD(v137) ^ 0x30) << 24;
  a33[*(v36 - 200)] = (v137 >> 28) ^ 0x43;
  a33[*(v36 - 208)] = v200[BYTE1(v202) ^ 0xE8] ^ 0x21;
  a33[*(v36 - 192)] = (27 * v203[v141 ^ 0xD1] - 112) ^ 0x5D;
  v206 = *(v36 - 176);
  a33[*(v36 - 184)] = ((BYTE2(v141) ^ 0x36) + v204[BYTE2(v141) ^ 0xF7] - 65) ^ 0xCF;
  v207 = HIDWORD(v215) < 0x14C590B5;
  a33[v206] = v200[BYTE1(v205) ^ 0xF5] ^ 0xBC;
  v208 = v207 ^ ((v192 + 348491973) < 0x14C590B5);
  v209 = (v192 + 348491973) < HIDWORD(v215);
  if (v208)
  {
    v209 = HIDWORD(v215) < 0x14C590B5;
  }

  return (*(a1 + 8 * ((7736 * v209) ^ (v37 - 204))))(v198, v207, v208, 2975308266, 27, v205, v200, HIDWORD(v211), a3, a4, v211, v212, v213, v214, v215, v216, v217, v107, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, a1, a32, a33, a34);
}

uint64_t sub_1969ABB14(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + v4 + 72);
  v9 = ((((a1 + 1117931560) & 0xBD5DAFF7) - 537094591) & (2 * v4)) + (v4 ^ 0x6FFE4B3F) + v6;
  *(a2 + v9) = (HIBYTE(v8) ^ 0x7C) - ((2 * (HIBYTE(v8) ^ 0x7C)) & 0xD8) - 20;
  *(a2 + v9 + 1) = (BYTE2(v8) ^ 0x47) - ((2 * (BYTE2(v8) ^ 0x47)) & 0xD8) - 20;
  *(a2 + v9 + 2) = (BYTE1(v8) ^ 7) - ((2 * (BYTE1(v8) ^ 7)) & 0xD8) - 20;
  *(a2 + v9 + 3) = v8 ^ 0x87;
  return (*(v7 + 8 * (((v4 + 4 >= v5) | (8 * (v4 + 4 >= v5))) ^ a1)))();
}

uint64_t sub_1969ABBE0@<X0>(unint64_t a1@<X3>, int a2@<W8>)
{
  v3 = (a2 + 160);
  v4 = ((v3 - 0x106180081000CD25) ^ STACK[0x310]) + ((2 * STACK[0x310]) & 0xDF3CFFEFDFFE73FCLL) + STACK[0x618] + 0x106180081000C602;
  v5 = __ROR8__(v4 & 0xFFFFFFFFFFFFFFF8, 8);
  v6 = (0x6AF7234D0CC131D4 - v5) & 0xC294CCCCC1BD3E84 | (v5 + 0x1508DCB2F33ECE2BLL) & 0x3D6B33333E42C17BLL;
  v7 = v6 ^ 0x8B7D8EF7AEABD956;
  v6 ^= 0x233B6B60375DA80AuLL;
  v8 = __ROR8__(v7, 8);
  v9 = (((2 * (v8 + v6)) | 0x5BFA3CD3E9B03CB6) - (v8 + v6) + 0x5202E1960B27E1A5) ^ 0x496069B673E5A125;
  v10 = v9 ^ __ROR8__(v6, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0xF5A2F1B9B5D0B209;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0x5963B6C555D97F1FLL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (v15 + v14 - ((2 * (v15 + v14)) & 0x46F63B55781E90A8) - 0x5C84E25543F0B7ACLL) ^ 0xC23E80804C106CA3;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((2 * ((v18 + v17) ^ 0xD84FE1C754F18840)) | 0x1F76449AB97A7CAELL) - ((v18 + v17) ^ 0xD84FE1C754F18840) - 0xFBB224D5CBD3E57) ^ 0xB337DF8878C8687BLL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (((2 * (v21 + v20)) & 0xA52DD7AC0D92506) - (v21 + v20) + 0x7AD691429F936D7CLL) ^ 0x60FC7AA6DDC0C27FLL;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (((((2 * ((v24 + v23) ^ 0x3DE289E964841133)) & 0x8A2A2A1882F7B950) - ((v24 + v23) ^ 0x3DE289E964841133) + 0x3AEAEAF3BE842357) ^ 0xAC3821C8F2876E25) >> (8 * (v4 & 7u))) ^ *v4;
  v26 = __ROR8__((v4 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v27 = v26 - ((2 * v26 + 0xA11B965E67D9C56) & 0x113C3EC95292F7F4) - 0x625903E86377B5DBLL;
  v28 = v27 ^ 0x41775D5FC65F9C28;
  v27 ^= 0xE931B8C85FA9ED74;
  v29 = (__ROR8__(v28, 8) + v27) ^ 0xE49D77DF873DBF7ELL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0xF5A2F1B9B5D0B209;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (((v33 + v32) & 0x3F5E63FE9BD0AB63 ^ 0x1B1E005E8B00AA23) + ((v33 + v32) & 0xC0A19C01642F549CLL ^ 0x11000242C5009) - 1) ^ 0x427CA69BFAF58534;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (((2 * (v36 + v35)) & 0x8C768DD787872606) - (v36 + v35) - 0x463B46EBC3C39304) ^ 0xD881243ECC23480BLL;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x64C31C027084DE6CLL;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0x1A2AEBE44253AF03;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (((((((v43 + v42) & 0x3DFD5293D9D7E6C9 ^ 0x28901201905122C9) + ((v43 + v42) ^ 0x156DECB64B86CD14) - (((v43 + v42) ^ 0x156DECB64B86CD14) & 0x3DFD5293D9D7E6C9)) ^ 0x83A0FCF7BAD6779CLL) >> (8 * ((v4 + 1) & 7))) ^ *(v4 + 1)) << 48) | (v25 << 56);
  v45 = __ROR8__((v4 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v46 = -2 - (((0x6AF7234D0CC131D4 - v45) | 0xBC5A4E518562A624) + ((v45 - 0x6AF7234D0CC131D5) | 0x43A5B1AE7A9D59DBLL));
  v47 = v46 ^ 0xF5B30C6AEA7441F6;
  v46 ^= 0x5DF5E9FD738230AAuLL;
  v48 = __ROR8__(v47, 8);
  v49 = (((v48 + v46) | 0x1FBB99B7550EA3FLL) - ((v48 + v46) | 0xFE0446648AAF15C0) - 0x1FBB99B7550EA40) ^ 0xE566CE44F26D5541;
  v50 = v49 ^ __ROR8__(v46, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (v51 + v50 - ((2 * (v51 + v50)) & 0x9E05AE14AEBCA70ELL) - 0x30FD28F5A8A1AC79) ^ 0x3AA026B3E28EE18ELL;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0x5963B6C555D97F1FLL;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0x61459D2AF01F24F7;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = __ROR8__(v56, 8);
  v59 = (((2 * (v58 + v57)) & 0xF0FE260FF4DFE482) - (v58 + v57) + 0x780ECF805900DBELL) ^ 0x6343F0FA7514D3D2;
  v60 = v59 ^ __ROR8__(v57, 61);
  v61 = __ROR8__(v59, 8);
  v62 = v44 | (((((__ROR8__((v61 + v60 - ((2 * (v61 + v60)) & 0x93868746793C3E3ELL) + 0x49C343A33C9E1F1FLL) ^ 0x53E9A8477ECDB01CLL, 8) + ((v61 + v60 - ((2 * (v61 + v60)) & 0x93868746793C3E3ELL) + 0x49C343A33C9E1F1FLL) ^ 0x53E9A8477ECDB01CLL ^ __ROR8__(v60, 61))) ^ a1) >> (8 * ((v4 + 2) & 7))) ^ *(v4 + 2)) << 40);
  v63 = __ROR8__((v4 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v64 = (0x6AF7234D0CC131D4 - v63) & 0xCAF13B63757397BCLL | (v63 + 0x1508DCB2F33ECE2BLL) & 0x310EC49C8A8C6843;
  v65 = v64 ^ 0x871879581A65706ELL;
  v64 ^= 0x2F5E9CCF83930132uLL;
  v66 = (__ROR8__(v65, 8) + v64) ^ 0xE49D77DF873DBF7ELL;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = __ROR8__(v66, 8);
  v69 = __ROR8__((((2 * (v68 + v67)) | 0xA42226C60A16CE78) - (v68 + v67) - 0x52111363050B673CLL) ^ 0xA7B3E2DAB0DBD535, 8);
  v70 = (((2 * (v68 + v67)) | 0xA42226C60A16CE78) - (v68 + v67) - 0x52111363050B673CLL) ^ 0xA7B3E2DAB0DBD535 ^ __ROR8__(v67, 61);
  v71 = (((2 * (v69 + v70)) | 0x4C8DB7A6C794D120) - (v69 + v70) + 0x59B9242C9C359770) ^ 0xFF256D163613178FLL;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0x61459D2AF01F24F7;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0x64C31C027084DE6CLL;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = __ROR8__(v75, 8);
  v78 = (((v77 + v76) | 0x850583D99A474AC0) - ((v77 + v76) | 0x7AFA7C2665B8B53FLL) + 0x7AFA7C2665B8B53FLL) ^ 0x9F2F683DD814E5C3;
  v79 = v62 | (((((__ROR8__(v78, 8) + (v78 ^ __ROR8__(v76, 61))) ^ a1) >> (8 * ((v4 + 3) & 7))) ^ *(v4 + 3)) << 32);
  v80 = __ROR8__((v4 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v81 = ((v80 - 0x6AF7234D0CC131D5) | 0x5FD555A5ED19C75BLL) - ((v80 - 0x6AF7234D0CC131D5) | 0xA02AAA5A12E638A4) - 0x5FD555A5ED19C75CLL;
  v82 = v81 ^ 0x163C179E820F2089;
  v81 ^= 0xBE7AF2091BF951D5;
  v83 = (__ROR8__(v82, 8) + v81) ^ 0xE49D77DF873DBF7ELL;
  v84 = v83 ^ __ROR8__(v81, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ 0xF5A2F1B9B5D0B209;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = (__ROR8__(v85, 8) + v86) ^ 0x5963B6C555D97F1FLL;
  v88 = v87 ^ __ROR8__(v86, 61);
  v89 = __ROR8__(v87, 8);
  v90 = (((v89 + v88) ^ 0xFE7A176D67236552) - ((2 * ((v89 + v88) ^ 0xFE7A176D67236552)) & 0xA2FCF994B45D1B44) - 0x2E818335A5D1725ELL) ^ 0x4E41F68DCD12CC07;
  v91 = v90 ^ __ROR8__(v88, 61);
  v92 = __ROR8__(v90, 8);
  v93 = (((2 * (v92 + v91)) | 0xF496B0A45C18BC8ALL) - (v92 + v91) - 0x7A4B58522E0C5E45) ^ 0x1E8844505E888029;
  v94 = v93 ^ __ROR8__(v91, 61);
  v95 = (__ROR8__(v93, 8) + v94) ^ 0x1A2AEBE44253AF03;
  v96 = v79 & 0xFFFFFFFF00FFFFFFLL | (((((__ROR8__(v95, 8) + (v95 ^ __ROR8__(v94, 61))) ^ a1) >> (8 * ((v4 + 4) & 7))) ^ *(v4 + 4)) << 24);
  v97 = __ROR8__((v4 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v98 = ((2 * (v97 - 0x6AF7234D0CC131D5)) | 0x399F821F9A7FA07ELL) - (v97 - 0x6AF7234D0CC131D5) - 0x1CCFC10FCD3FD03FLL;
  v99 = v98 ^ 0x55268334A22937EDLL;
  v98 ^= 0xFD6066A33BDF46B1;
  v100 = __ROR8__(v99, 8);
  v101 = __ROR8__((v100 + v98 - ((2 * (v100 + v98)) & 0x39EF620FDA9685DALL) - 0x63084EF812B4BD13) ^ 0x786AC6D86A76FD93, 8);
  v102 = (v100 + v98 - ((2 * (v100 + v98)) & 0x39EF620FDA9685DALL) - 0x63084EF812B4BD13) ^ 0x786AC6D86A76FD93 ^ __ROR8__(v98, 61);
  v103 = (v101 + v102) ^ 0xF5A2F1B9B5D0B209;
  v104 = v103 ^ __ROR8__(v102, 61);
  v105 = (__ROR8__(v103, 8) + v104) ^ 0x5963B6C555D97F1FLL;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = (__ROR8__(v105, 8) + v106) ^ 0x61459D2AF01F24F7;
  v108 = v107 ^ __ROR8__(v106, 61);
  v109 = __ROR8__(v107, 8);
  v110 = (((2 * (v109 + v108)) | 0x4D9D0F408A595028) - (v109 + v108) - 0x26CE87A0452CA814) ^ 0x420D9BA235A87678;
  v111 = v110 ^ __ROR8__(v108, 61);
  v112 = __ROR8__(v110, 8);
  v113 = (((v112 + v111) | 0x7DB961569F911255) - ((v112 + v111) | 0x82469EA9606EEDAALL) - 0x7DB961569F911256) ^ 0x67938AB2DDC2BD56;
  v114 = v113 ^ __ROR8__(v111, 61);
  v115 = __ROR8__(v113, 8);
  v116 = v96 & 0xFFFFFFFFFF00FFFFLL | (((((v115 + v114 - ((2 * (v115 + v114)) & 0x6935DF41F332A4FALL) + 0x349AEFA0F999527DLL) ^ 0x9FAAAD72D11E0E3CLL) >> (8 * ((v4 + 5) & 7))) ^ *(v4 + 5)) << 16);
  v117 = __ROR8__((v4 + 6) & 0xFFFFFFFFFFFFFFF8, 8);
  v118 = -2 - (((0x6AF7234D0CC131D4 - v117) | 0x66EECEE507CABA21) + ((v117 + 0x1508DCB2F33ECE2BLL) | 0x9911311AF83545DELL));
  v119 = v118 ^ 0x2F078CDE68DC5DF3;
  v118 ^= 0x87416949F12A2CAFLL;
  v120 = __ROR8__(v119, 8);
  v121 = (((v120 + v118) & 0x625061C6F646BF2FLL ^ 0x424000C2C2042C27) + ((v120 + v118) ^ 0xA4B4F52C356B9308) - (((v120 + v118) ^ 0xA4B4F52C356B9308) & 0x625061C6F646BF2FLL)) ^ 0x2279E33544109359;
  v122 = v121 ^ __ROR8__(v118, 61);
  v123 = (__ROR8__(v121, 8) + v122) ^ 0xF5A2F1B9B5D0B209;
  v124 = v123 ^ __ROR8__(v122, 61);
  v125 = (__ROR8__(v123, 8) + v124) ^ 0x5963B6C555D97F1FLL;
  v126 = v125 ^ __ROR8__(v124, 61);
  v127 = (__ROR8__(v125, 8) + v126) ^ 0x61459D2AF01F24F7;
  v128 = v127 ^ __ROR8__(v126, 61);
  v129 = (__ROR8__(v127, 8) + v128) ^ 0x64C31C027084DE6CLL;
  v130 = v129 ^ __ROR8__(v128, 61);
  v131 = (__ROR8__(v129, 8) + v130) ^ 0x1A2AEBE44253AF03;
  v132 = v131 ^ __ROR8__(v130, 61);
  v133 = __ROR8__(v131, 8);
  v134 = v116 & 0xFFFFFFFFFFFF00FFLL | (((((v133 + v132 - ((2 * (v133 + v132)) & 0x3A0F8FAC9ED9A79ELL) + 0x1D07C7D64F6CD3CFLL) ^ 0xB637850467EB8F8ELL) >> (8 * ((v4 + 6) & 7))) ^ *(v4 + 6)) << 8);
  v135 = *(v4 + 7);
  v4 += 7;
  v136 = __ROR8__(v4 & 0xFFFFFFFFFFFFFFF8, 8);
  v137 = ((0x6AF7234D0CC131D4 - v136) & 0xC8B006C559D2B160) + v136 - 0x6AF7234D0CC131D5 - ((v136 - 0x6AF7234D0CC131D5) & 0xCCB006C559D2B160);
  v138 = v137 ^ 0x855944FE36C456B2;
  v137 ^= 0x2D1FA169AF3227EEuLL;
  v139 = __ROR8__(v138, 8);
  v140 = (((v139 + v137) | 0x2BFF81EF10D2B39FLL) - ((v139 + v137) | 0xD4007E10EF2D4C60) - 0x2BFF81EF10D2B3A0) ^ 0xCF62F63097EF0CE1;
  v141 = v140 ^ __ROR8__(v137, 61);
  v142 = __ROR8__(v140, 8);
  v143 = (v142 + v141 - ((2 * (v142 + v141)) & 0x208C17187339CEB2) - 0x6FB9F473C66318A7) ^ 0x65E4FA358C4C5550;
  v144 = v143 ^ __ROR8__(v141, 61);
  v145 = __ROR8__(v143, 8);
  v146 = (((v145 + v144) | 0x507EB7600E7DB331) - ((v145 + v144) | 0xAF81489FF1824CCELL) - 0x507EB7600E7DB332) ^ 0x91D01A55BA4CC2ELL;
  v147 = v146 ^ __ROR8__(v144, 61);
  v148 = (__ROR8__(v146, 8) + v147) ^ 0x61459D2AF01F24F7;
  v149 = v148 ^ __ROR8__(v147, 61);
  v150 = (__ROR8__(v148, 8) + v149) ^ 0x64C31C027084DE6CLL;
  v151 = __ROR8__(v150, 8);
  v152 = v150 ^ __ROR8__(v149, 61);
  v153 = v151 + v152 - ((2 * (v151 + v152)) & 0x86464A6D5ED8A3FELL) + 0x43232536AF6C51FFLL;
  v154 = v134 | ((((__ROR8__(v153 ^ 0x5909CED2ED3FFEFCLL, 8) + (v153 ^ 0x5909CED2ED3FFEFCLL ^ __ROR8__(v152, 61))) ^ a1) >> (8 * (v4 & 7u))) ^ v135);
  STACK[0x868] = v154 + 0x3378E7DAD334F2CBLL - ((2 * v154) & 0x66F1CFB5A669E596);
  STACK[0x930] = STACK[0x9D0];
  LODWORD(STACK[0x484]) = STACK[0x9C4];
  LOWORD(STACK[0x4E6]) = STACK[0x9CA];
  LODWORD(STACK[0x724]) = STACK[0x9CC];
  return (*(STACK[0x248] + 8 * ((((v3 - 2115704836) & 0x7E1B1EFC ^ 0x1A5F) + 1143) ^ (((v3 - 2115704836) & 0x7E1B1EFC) + 404))))();
}

uint64_t sub_1969ACB60@<X0>(uint64_t a1@<X8>)
{
  v6 = STACK[0x3D0];
  v7 = STACK[0x38C];
  LODWORD(STACK[0x340]) = v1;
  v8 = 1283153057 * (((v3 | 0x69A2C101) + (~v3 | 0x965D3EFE)) ^ 0x267AC237);
  *(v5 - 208) = STACK[0x240];
  *(v5 - 196) = ((v1 ^ 0x7F587EF3) + 2 * v1 - 688400403) ^ v8;
  *(v5 - 192) = STACK[0x270];
  *(v5 - 184) = a1;
  *(v5 - 168) = v6;
  *(v5 - 160) = v2 - v8 - 1899586479;
  *(v5 - 176) = (v7 ^ 0x7FFE9F5F) - v8 - 151782925 + ((v7 << (v2 + 88)) & 0xFFFD3EBE);
  v9 = (*(v4 + 8 * (v2 ^ 0x1D99)))(v5 - 208);
  v10 = *(v5 - 200);
  LODWORD(STACK[0x450]) = v10;
  return (*(v4 + 8 * ((2235 * (v10 == 1906281716)) ^ v2)))(v9);
}

void fp_dh_4aa4fda84372403a2ed9ee8068daecc2(uint64_t a1)
{
  v1 = *(a1 + 8) - 1068996913 * ((a1 - 2094557862 - 2 * (a1 & 0x8327955A)) ^ 0x56C974CB);
  __asm { BRAA            X1, X17 }
}

uint64_t sub_1969ACF00@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 + a1;
  v6.i64[0] = 0xECECECECECECECECLL;
  v6.i64[1] = 0xECECECECECECECECLL;
  v7 = veorq_s8(*(v1 + a1 + 16), v6);
  *(v5 + 24) = veorq_s8(*(v1 + a1), v6);
  *(v5 + 40) = v7;
  return (*(v3 + 8 * ((3511 * (a1 + 32 == ((4 * v4) ^ 0x5E24))) ^ v4)))();
}

uint64_t sub_1969ACFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, unsigned int a17, int a18, unint64_t a19, unint64_t a20, unint64_t a21)
{
  v27 = 1621291457 * (v25 ^ 0x36178199);
  a20 = a16;
  a18 = v27 + v26 - 1267;
  LODWORD(a19) = v27 ^ (1122297523 * v23 + 296299868);
  (*(v24 + 8 * (v26 ^ 0x137D)))(&a17, a2, a3, a4, a5, a6, a7, a8);
  v28 = 1068996913 * ((~v25 & 0xBECC0CA71619FB90 | v25 & 0x4133F358E9E6046FLL) ^ 0x2AAD3834C3F71A01);
  a19 = (((2 * v22) & 0xFDEDFF7F8CFDD7E6) + 0x7D1FB573BF979EDDLL + ((((v26 - 1347) | 0x200u) - 0x109004039811A96) ^ v22)) ^ v28;
  LODWORD(a20) = v26 - v28 + 3857;
  a21 = a16;
  (*(v24 + 8 * (v26 ^ 0x136C)))(&a17);
  v29 = *(v21 + 8);
  v30 = 753662761 * ((2 * (v25 & 0x77BE2788) - v25 + 138532977) ^ 0x6D5B233A);
  a17 = (*v21 ^ 0x56BE7B92) - v30 + ((2 * *v21) & 0xAD7CF724) - 8941826;
  a18 = (v26 + 3083) ^ v30;
  a19 = a16;
  a20 = v29;
  (*(v24 + 8 * (v26 + 4271)))(&a17);
  v31 = *(v21 + 24);
  v32 = 753662761 * ((-1608042404 - (v25 | 0xA027385C) + (v25 | 0x5FD8C7A3)) ^ 0x3AC23CE8);
  v33 = (*(v21 + 16) ^ 0x57B6DBBF) - v32 + ((2 * *(v21 + 16)) & 0xAF6DB77E) - 25219375;
  a19 = a16;
  a20 = v31;
  a17 = v33;
  a18 = (v26 + 3083) ^ v32;
  (*(v24 + 8 * (v26 ^ 0x13B7)))(&a17);
  v34 = *(v21 + 40);
  v35 = 753662761 * (v25 ^ 0x651AFB4B);
  a17 = (*(v21 + 32) ^ 0x767E7AB5) - v35 + ((2 * *(v21 + 32)) & 0xECFCF56A) - 541618213;
  a18 = (v26 + 3083) ^ v35;
  a19 = a16;
  a20 = v34;
  v36 = (*(v24 + 8 * (v26 ^ 0x13B7)))(&a17);
  return (*(v24 + 8 * ((49 * (a21 != 1906281716)) | v26)))(v36);
}

uint64_t sub_1969AD2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  *(v20 - 104) = v18 + ((~((v20 - 120) | v17) + ((v20 - 120) & v17)) ^ 0xCB5A1C2C) * v19 - 359;
  *(v20 - 120) = &a16;
  *(v20 - 112) = &a14;
  v21 = (*(v16 + 8 * (v18 + 4179)))(v20 - 120, a2, a3, a4, a5, a6, a7, a8);
  return (*(v16 + 8 * ((4110 * (*(v20 - 100) - 1478011820 < ((v18 + 2366) ^ 0xBC2E43BD))) ^ v18)))(v21);
}

uint64_t sub_1969AD378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, int a34, unsigned __int8 a35, uint64_t a36, uint64_t a37, unsigned __int8 a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  v61 = a5 ^ a1;
  v56 = ~(((*(a52 + (a38 ^ 0xEDLL)) - 16) ^ (*(a52 + ((((a8 ^ 0x66) & (v55 ^ 0xB7 ^ a22) ^ 0x8E) & ((v55 ^ 0xB7 ^ a22) & 0xA8 ^ 0xF7) | (v55 ^ 0xB7 ^ a22) & 0x20u) ^ 0xB4)) - 16)) << 16);
  v57 = a33 & 7 ^ 0x47D91F52;
  v58 = (a35 >> 3) ^ 0xC;
  v59 = v61 ^ 0x1DEB35D7313B19A0 ^ (0x8A4684D08B30C16DLL * *(v53 + 8 * ((v57 & 0xFFFFFFF7 | 8) ^ 0x47D91F29)));
  *(v54 + 8 * v58) = v61 ^ 0x1DEB35D7313B19A0 ^ (0x8A4684D08B30C16DLL * *(v53 + 8 * (((((a8 ^ 0x640) - 889120632) & 0x34FEEF9F) - 2970) & v57 ^ 0x47D91F29u)));
  *(v54 + 8 * (v58 ^ 1)) = v59;
  return (*(a53 + 8 * (a8 ^ 0x640)))(v56);
}

uint64_t sub_1969ADA74@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v10.val[0].i64[0] = (v7 - v3 - 1) & 0xF;
  v10.val[0].i64[1] = (v7 - v3 + 14) & 0xF;
  v10.val[1].i64[0] = (v7 - v3 + 13) & 0xF;
  v10.val[1].i64[1] = (v7 - v3 + 12) & 0xF;
  v10.val[2].i64[0] = (v7 - v3 + 11) & 0xF;
  v10.val[2].i64[1] = (v7 - v3 + 10) & 0xF;
  v10.val[3].i64[0] = (v7 - v3 + ~(a1 - 58)) & 0xF;
  v10.val[3].i64[1] = (v7 - v3) & 0xF ^ 8;
  *(a2 + -8 - v3 + v7) = veor_s8(veor_s8(veor_s8(*(v5 + v10.val[0].i64[0] - 7), *(v2 + -8 - v3 + v7)), veor_s8(*(v4 + v10.val[0].i64[0] - 7), *(v10.val[0].i64[0] + v6 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v10, xmmword_196EBFAE0), 0xBFBFBFBFBFBFBFBFLL)));
  return (*(v8 + 8 * ((706 * (8 - (v7 & 0x18) == -v3)) ^ a1)))(xmmword_196EBFAE0);
}

uint64_t sub_1969ADD18@<X0>(uint64_t a1@<X1>, int a2@<W5>, unsigned int a3@<W8>, uint64_t x0_0@<X0>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, __int128 a45, uint64_t a46, int a47, int a48, int a49)
{
  LOBYTE(STACK[0x5E7]) = (a3 & 0x20) == 0;
  if ((a3 & 0x20) != 0)
  {
    v55 = 5;
  }

  else
  {
    v55 = 2;
  }

  LODWORD(STACK[0x600]) = v55;
  if (v51 > -775894753)
  {
    if (v51 > -197643048)
    {
      if (v51 <= 449447345)
      {
        if (v51 <= -27334919)
        {
          if (v51 != -197643047)
          {
            v56 = -175427814;
            goto LABEL_50;
          }

LABEL_55:
          *&STACK[0x6C0] = a45;
          return (*(v54 + 8 * ((((a49 ^ 0x190) + (a2 ^ 0x1790)) * ((a3 & 0x20) == 0)) ^ a48)))(x0_0, a1);
        }

        if (v51 == -27334918)
        {
          goto LABEL_55;
        }

        v56 = 150147849;
LABEL_50:
        if (v51 == v56)
        {
          goto LABEL_51;
        }

        goto LABEL_10;
      }

      if (v51 > 938730045)
      {
        if (v51 == 938730046)
        {
          goto LABEL_55;
        }

        v59 = 1394293849;
      }

      else
      {
        if (v51 == 449447346)
        {
          goto LABEL_55;
        }

        v59 = 637514092;
      }

      goto LABEL_54;
    }

    if (v51 > -570371206)
    {
      if (v51 > -562447252)
      {
        if (v51 == -562447251)
        {
          goto LABEL_55;
        }

        v59 = -211682881;
      }

      else
      {
        if (v51 == -570371205)
        {
          goto LABEL_55;
        }

        v59 = -568324246;
      }

      goto LABEL_54;
    }

    if (v51 != -775894752)
    {
      if (v51 == -680849487)
      {
        goto LABEL_55;
      }

      v59 = -661254964;
      goto LABEL_54;
    }

LABEL_51:
    STACK[0x248] = v52;
    *&STACK[0x6C0] = a20;
    return (*(v54 + 8 * ((((a2 ^ 0x1790) + (a19 ^ 0x1790) - 165) * ((a3 >> 5) & 1)) ^ (a2 + 219))))(x0_0, a1);
  }

  if (v51 <= -1339387636)
  {
    if (v51 > -1726328168)
    {
      if (v51 > -1583646148)
      {
        if (v51 == -1583646147)
        {
          goto LABEL_55;
        }

        v59 = -1339387638;
      }

      else
      {
        if (v51 == -1726328167)
        {
          goto LABEL_55;
        }

        v59 = -1654668468;
      }

      goto LABEL_54;
    }

    if (v51 != -1858280026)
    {
      if (v51 == -1833473448)
      {
        goto LABEL_55;
      }

      v59 = -1773392752;
      goto LABEL_54;
    }

    goto LABEL_51;
  }

  if (v51 > -1128264427)
  {
    if (v51 > -944222610)
    {
      if (v51 == -944222609)
      {
        goto LABEL_55;
      }

      v56 = -824026084;
    }

    else
    {
      if (v51 == -1128264426)
      {
        goto LABEL_55;
      }

      v56 = -1091214549;
    }

    goto LABEL_50;
  }

  if (v51 == -1339387635 || v51 == -1248410757)
  {
    goto LABEL_55;
  }

  v59 = -1181095620;
LABEL_54:
  if (v51 == v59)
  {
    goto LABEL_55;
  }

LABEL_10:
  STACK[0x240] = v53;
  STACK[0x248] = v52;
  if ((a3 & 0x40) != 0)
  {
    v57 = 6;
  }

  else
  {
    v57 = 2;
  }

  if ((a3 & 2) != 0)
  {
    v58 = 1;
  }

  else
  {
    v58 = v57;
  }

  LODWORD(STACK[0x42C]) = v58;
  LODWORD(STACK[0x424]) = 0;
  LODWORD(STACK[0x58C]) = 0;
  return (*(v54 + 8 * (((LODWORD(STACK[0x450]) == a1) * (((a2 - 4965) | 0x200) ^ 0x6C0)) ^ (a2 - 3815))))();
}

uint64_t sub_1969AE05C()
{
  v1 = STACK[0x228] - 3353;
  LODWORD(STACK[0x9C4]) = v0;
  return (*(STACK[0x248] + 8 * v1))();
}

uint64_t sub_1969AE604()
{
  v4 = (*(v1 + 8 * (v3 ^ 0xCE5u)))(*v2, *(v0 + 8 * (v3 ^ 0x1717u)) - 4);
  **(v0 + 8 * (v3 - 5590)) = v4;
  return (*(v1 + 8 * (((v4 != 0) * (((v3 - 1665595345) & 0x6346F7AA) - 5659)) | v3)))();
}

uint64_t sub_1969AE718@<X0>(int a1@<W8>)
{
  STACK[0x4C0] = STACK[0x580];
  STACK[0x958] += (95 * ((a1 - 520) ^ 0x600u)) ^ 0xFFFFFFFFFFFFFBF5;
  return (*(v1 + 8 * ((a1 - 520) ^ 0x1430)))();
}

uint64_t sub_1969AE8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  a9 = v13 + (((&a9 | 0x966197E7) - (&a9 & 0x966197E7)) ^ 0x12C81F0B) * v11 + v12;
  v14 = (*(v10 + 8 * (v12 + 1641)))(&a9, a2, a3, a4, a5, a6, a7, a8);
  return (*(v10 + 8 * (((a10 != ((v12 + 2107589062) ^ 0x25872D69)) * (((v12 - 138) ^ 0x7C7) - 3134)) ^ (v12 - 138))))(v14);
}

uint64_t sub_1969AE958(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, _DWORD *a53, uint64_t a54, int a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t (*a59)(uint64_t, uint64_t))
{
  *a3 = a5;
  *a53 = a55;
  return a59(a1, a2);
}

uint64_t sub_1969AE980@<X0>(uint64_t a1@<X8>)
{
  STACK[0x4D0] = *(v3 + 8 * v2);
  LODWORD(STACK[0xB64]) = -984423831;
  STACK[0xB68] = &STACK[0x650];
  return (*(v3 + 8 * (((((a1 == 0) ^ (v2 - 49)) & 1) * (((v2 - 374) | 0xE14) - 3562)) ^ (v2 + 2000))))();
}

uint64_t sub_1969AE99C@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v5 = (v4 + v2 - 16);
  v6 = (a2 + v2 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(a1 + 8 * ((((v2 & 0xFFFFFFE0) == 32) * (((v3 - 222) | 0x280) + 4288)) ^ v3)))();
}

uint64_t sub_1969AEE48@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v8 = 489239129 * (((((v7 - 224) | 0x43A787DC) ^ 0xFFFFFFFE) - (~(v7 - 224) | 0xBC587823)) ^ 0x5705B15);
  *(v7 - 192) = v6;
  *(v7 - 216) = v2;
  *(v7 - 208) = v3;
  *(v7 - 224) = a2 - v8;
  *(v7 - 220) = (v5 - 147) ^ v8;
  *(v7 - 200) = 1731776710 - v8;
  *(v7 - 196) = ((v5 ^ 0x142C) + 1110691397 * v4 + 1927430823) ^ v8;
  v9 = (*(a1 + 8 * (v5 ^ 0x1939)))(v7 - 224);
  return (STACK[0x750])(v9);
}

uint64_t sub_1969AEF00@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>)
{
  v23 = v11 - 1;
  v24 = __ROR8__((v10 + v23) & (v12 ^ v21 ^ a2), 8);
  v25 = -2 - (((0x21570CEECDB5FF2 - v24) | 0xEE1CC31C6ADDB643) + ((v24 + a6) | 0x11E33CE3952249BCLL));
  v26 = v25 ^ 0xFB4034E7BA0CF9A0;
  v25 ^= 0x14144D6F2329F9CCuLL;
  v27 = __ROR8__(v26, 8);
  v28 = (((2 * (v27 + v25)) | 0x65F07EF7DE7FB17CLL) - (v27 + v25) + a5) ^ a8;
  v29 = v28 ^ __ROR8__(v25, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (v13 - ((v30 + v29) | v13) + ((v30 + v29) | a4)) ^ v19;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  v34 = ((a7 & (2 * (v33 + v32))) - (v33 + v32) + v18) ^ v22;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = __ROR8__(v34, 8);
  v37 = ((v14 | (2 * (v36 + v35))) - (v36 + v35) + v20) ^ v15;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ v17;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0xBB5B6BF4C59B502;
  *(v10 + v23) = *(v9 + v23) ^ a3 ^ (((__ROR8__(v41, 8) + (v41 ^ __ROR8__(v40, 61))) ^ a1) >> (8 * ((v10 + v23) & 7)));
  return (*(v16 + 8 * (((v23 == 0) * a9) ^ v12)))();
}

uint64_t sub_1969AF07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19)
{
  a19 = v19 - 489239129 * ((2 * (&a17 & 0x605047C8) - &a17 - 1615873994) ^ 0x26879B00) + 69;
  a17 = a12;
  v21 = (*(v20 + 8 * (v19 ^ 0x19F4)))(&a17, a2, a3, a4, a5, a6, a7, a8);
  return (*(v20 + 8 * ((4011 * (a18 == v19 + 1906275934 + (v19 ^ 0x1016))) ^ v19)))(v21);
}

void sub_1969AF188(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  (*(a1 + 8 * (v2 + 3494)))(a2);
  v3 = STACK[0x370];
  v4 = STACK[0x3F8];
  *(STACK[0x3F8] + 24) = 0;
  sub_1969AF1AC(v4, v5, v6, v7, v8, v3);
}

void sub_1969AF1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a6 + 8 * (v6 ^ 0x13BD)))(a1, a2, a3, a4, a5);
  STACK[0x3F8] = 0;
  JUMPOUT(0x1968BB064);
}

uint64_t sub_1969AF208(uint64_t a1, int a2)
{
  v5 = (a2 ^ 0xC39) + v3 + 1282619933;
  v6 = *(v2 + 4) + 1282620797;
  v7 = v5 < -188522919;
  v8 = v5 > v6;
  if (v7 != v6 < -188522919)
  {
    v8 = v7;
  }

  return (*(v4 + 8 * ((v8 * (a2 - 3685)) ^ a2)))(a1);
}

uint64_t sub_1969AF2A0(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 26;
  v4 = (*(v2 + 8 * (v1 + 3161)))(26, 0x100004077774924);
  *(a1 + 24) = v4;
  return (*(v2 + 8 * ((15 * ((((((v1 + 494) ^ 0x1E3E) - 2316) ^ (v4 == 0)) & 1) == 0)) ^ (v1 + 494))))();
}

uint64_t sub_1969AF31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v65 = *(a6 + 8 * (LODWORD(STACK[0x36C]) - 5588));
  v66 = STACK[0x320] + a65 - 0x2D6560F450244D3ELL;
  v67 = (__ROR8__(v66 & 0xFFFFFFFFFFFFFFF8, 8) + v107) & 0xFBFFFFFFFFFFFFFFLL;
  v68 = v67 ^ 0x4DE9423B6F16E7D2;
  v67 ^= 0xE5AFA7ACF6E0968ELL;
  v69 = __ROR8__(v68, 8);
  v70 = __ROR8__((v69 + v67 - ((2 * (v69 + v67)) & 0x5C9AA91F802DA82ELL) + 0x2E4D548FC016D417) ^ 0xCAD02350472B6B69, 8);
  v71 = (v69 + v67 - ((2 * (v69 + v67)) & 0x5C9AA91F802DA82ELL) + 0x2E4D548FC016D417) ^ 0xCAD02350472B6B69 ^ __ROR8__(v67, 61);
  v72 = (v70 + v71) ^ 0xF5A2F1B9B5D0B209;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = __ROR8__(v72, 8);
  v75 = (((2 * (v74 + v73)) | 0xB8A665E197C7F47ELL) - (v74 + v73) - 0x5C5332F0CBE3FA3FLL) ^ 0x53084359E3A8520;
  v76 = v75 ^ __ROR8__(v73, 61);
  v77 = __ROR8__(v75, 8);
  v78 = (0x1D3A72000429358 - ((v77 + v76) | 0x1D3A72000429358) + ((v77 + v76) | 0xFE2C58DFFFBD6CA7)) ^ 0x9F69C5F50FA24850;
  v79 = v78 ^ __ROR8__(v76, 61);
  v80 = __ROR8__(v78, 8);
  v81 = (0x25583E6B392D1AC8 - ((v80 + v79) | 0x25583E6B392D1AC8) + ((v80 + v79) | 0xDAA7C194C6D2E537)) ^ 0xBE64DD96B6563B5BLL;
  v82 = v81 ^ __ROR8__(v79, 61);
  v83 = __ROR8__(v81, 8);
  v84 = (0x272BFFDC1C3FC546 - ((v83 + v82) | 0x272BFFDC1C3FC546) + ((v83 + v82) | 0xD8D40023E3C03AB9)) ^ 0xC2FEEBC7A19395BALL;
  v85 = v84 ^ __ROR8__(v82, 61);
  v86 = __ROR8__(v84, 8);
  v87 = (((((2 * (v86 + v85)) | 0xC355F3281D11914) - (v86 + v85) - 0x61AAF9940E88C8ALL) ^ 0xAD2AED4B686FD0CBLL) >> (8 * (v66 & 7u))) ^ *v66;
  v88 = *++v66;
  v89 = __ROR8__(v66 & 0xFFFFFFFFFFFFFFF8, 8);
  v90 = -2 - (((0x6AF7234D0CC131D4 - v89) | 0x1A41569DA1CC8FFALL) + ((v89 + 0x1508DCB2F33ECE2BLL) | 0xE5BEA9625E337005));
  v91 = v90 ^ 0x53A814A6CEDA6828;
  v90 ^= 0xFBEEF131572C1974;
  v92 = __ROR8__(v91, 8);
  v93 = (((2 * (v92 + v90)) & 0xF2BD014CC6D06D4ALL) - (v92 + v90) + 0x6A17F599C97C95ALL) ^ 0xE23C08861BAA7624;
  v94 = v93 ^ __ROR8__(v90, 61);
  v95 = (__ROR8__(v93, 8) + v94) ^ 0xF5A2F1B9B5D0B209;
  v96 = __ROR8__(v95, 8);
  v97 = v95 ^ __ROR8__(v94, 61);
  v98 = (0xFF7817662BD390FALL - ((v96 + v97) | 0xFF7817662BD390FALL) + ((v96 + v97) | 0x87E899D42C6F05)) ^ 0x59E45E5C81F5101ALL;
  v99 = v98 ^ __ROR8__(v97, 61);
  v100 = (__ROR8__(v98, 8) + v99) ^ 0x61459D2AF01F24F7;
  v101 = v100 ^ __ROR8__(v99, 61);
  v102 = (__ROR8__(v100, 8) + v101) ^ 0x64C31C027084DE6CLL;
  v103 = v102 ^ __ROR8__(v101, 61);
  v104 = __ROR8__(v102, 8);
  v105 = (0xD96EC6C1FDF6D5E3 - ((v104 + v103) | 0xD96EC6C1FDF6D5E3) + ((v104 + v103) | 0x2691393E02092A1CLL)) ^ 0x3CBBD2DA405A851FLL;
  LOBYTE(v103) = (((__ROR8__(v105, 8) + (v105 ^ __ROR8__(v103, 61))) ^ 0xAB3042D228875C41) >> (8 * (v66 & 7u))) ^ v88;
  return v65(a1, (v103 | (v87 << 8)) - 2 * ((v103 & 5 | (v87 << 8) & 0x3505) ^ v103 & 5) + 13568, a3, a4, a5);
}

void sub_1969AF35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x788] = 0;
  STACK[0x708] = 0;
  STACK[0x440] = *(a6 + 8 * v6);
  JUMPOUT(0x1969AF374);
}

void sub_1969AF494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x5F8] = STACK[0x688];
  LODWORD(STACK[0x4FC]) = STACK[0x57C];
  sub_1969A7A9C(a1, a2, a3, a4, a5, a6);
}

void fp_dh_76d4596cbd6288e46289774bc3c93bc0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8) - 489239129 * ((-2 - ((~a1 | 0xDCE3A4A9) + (a1 | 0x231C5B56))) ^ 0x65CB879F);
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 - 3541) - 4;
  (*&v2[8 * v1 + 21840])(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 - 3549) - 12, v7, 21);
  (*&v2[8 * (v1 ^ 0xABA)])(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v1 ^ 0x1261)) - 8, v3, 35);
  v4 = 0x18CC46F853C65F96;
  v5 = 0x22ECD738F8B2BEDFLL;
  v6 = -1893674749;
  __asm { BRAA            X14, X17 }
}

uint64_t sub_1969AF864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = (((*(v7 + 16) ^ 0x989BE79B) + 1574664780) ^ (((v8 + 774024055) & 0xD1DD57DD ^ 0xAB0D6C77 ^ *(v7 + 16)) + 1850599419) ^ ((*(v7 + 16) ^ 0xCC69624E) + 153747359)) + 99354976;
  v10 = (((v8 - 4840) | 0x252) ^ 0x40AB69E2) + v6 > v9;
  v11 = (v6 > 0xBF54946F) ^ (v9 < 0x40AB6B90);
  v12 = v10;
  if (v11)
  {
    v13 = v6 > 0xBF54946F;
  }

  else
  {
    v13 = v12;
  }

  return (*(a6 + 8 * ((26 * !v13) ^ v8)))(a1, a2, a3, a4, a5);
}

uint64_t sub_1969AF954()
{
  v4 = (v0 - 1436) | 0x800;
  v5 = (*(v1 + 8 * (v0 ^ 0x1375)))(*v3);
  v6 = *v2 == (((v4 ^ 0x1A85) - 5027) ^ 0x2EB);
  return (*(v1 + 8 * ((v6 | (16 * v6)) ^ v4)))(v5);
}

uint64_t sub_1969AF9E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  *a4 = 0;
  *a5 = 0;
  a15 = 1575331711 * ((-1386267699 - (&a15 | 0xAD5F3BCD) + (&a15 | 0x52A0C432)) ^ 0x3EFB5130) + 1655634431;
  v17 = (*(v16 + 54592))(&a15);
  return (*(v16 + 8 * ((5011 * (a16 == 1906281716)) ^ 0x1DAu)))(v17);
}

uint64_t sub_1969AFAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = (*(a6 + 8 * (v6 ^ 0x1522)))(32, 0x103004054B5FA7DLL, a3, a4, a5);
  v8 = STACK[0x370];
  STACK[0x650] = v7;
  return (*(v8 + 8 * (((v7 == 0) * (((v6 + 670074702) & 0xD80F7F5F ^ 0xFFFFE68A) + 304 * (v6 ^ 0xFA2))) ^ v6)))();
}

uint64_t sub_1969AFB84(__n128 a1)
{
  v4[-1] = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_1969AFD04(uint64_t a1, int a2)
{
  v6 = (v4 - 32);
  v7 = (a1 - 32);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * (((v3 == 32) * a2) ^ (v2 + 1172))))();
}

uint64_t sub_1969AFD14(uint64_t result)
{
  v9 = *(v6 + 8);
  v10 = (*(v9 + 4 * (v8 - 1)) ^ v2) >> v4;
  *(v9 + 4 * v5) = v10 + v2 - ((v10 << (result + 62)) & v3);
  if (*(*(v6 + 8) + 4 * v5) == v2)
  {
    v11 = -1426344226;
  }

  else
  {
    v11 = -1426344225;
  }

  v12 = v11 + v1;
  if ((*(v6 + 4) + v7) >= 0x7FFFFFFF)
  {
    v12 = 1352679864 - v12;
  }

  *(v6 + 4) = v12;
  return result;
}

uint64_t sub_1969AFDB8()
{
  v3 = *(v1 + 8);
  STACK[0x6C0] = v2;
  STACK[0x438] = 0;
  LODWORD(STACK[0x494]) = -1720256293;
  STACK[0x778] = 0;
  return (*(STACK[0x248] + 8 * ((15 * (((v3 == 0) ^ (21 * (v0 ^ 0xED) + v0 + 17 + 1)) & 1)) ^ v0)))();
}

void sub_1969AFE1C(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4)
{
  a4 = (v4 - 825) ^ (1621291457 * ((((2 * &a3) | 0xB13025C0) - &a3 - 1486361312) ^ 0x6E8F9379));
  a3 = a1;
  (*(v5 + 8 * (v4 + 4505)))(&a3);
  JUMPOUT(0x1969AFE84);
}

void sub_1969AFF1C(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  JUMPOUT(0x196A073BCLL);
}

uint64_t sub_1969AFF34@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40)
{
  v42 = -733136081 * (*(a9 + 16) + a7) - 1780279441;
  v43 = v42 ^ 0xEFFD7FFF;
  v44 = ((v40 ^ v42 ^ 0xC962B7F1) + 199551964) ^ v42 ^ ((v42 ^ 0xC9507F97) + 198583724) ^ ((v42 ^ 0xD2B6144C) + 271601265) ^ (v43 + 763045316);
  *(v41 - 164) = v44;
  v46 = v44 == 1031382467 || (((((v40 ^ v42 ^ 0xF1) - 36) ^ v42 ^ ((v42 ^ 0x97) - 84)) ^ (((v42 ^ 0x4C) + 113) ^ (-v42 - 61))) & 0xF) != (((a40 - 1540) | 0x604) ^ 0x615);
  return (*(a1 + 8 * ((v46 * (a40 - 1432)) ^ (a40 + 1681))))(v43, 763045316, a1, a2, a3, a4, a5, a6, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_1969B0030()
{
  v2 = 68 * (v1 ^ 0xE1B);
  v3 = STACK[0x580];
  v4 = STACK[0x870];
  v5 = STACK[0x454];
  STACK[0x500] = *(v0 + 8 * (v1 - 3431));
  STACK[0x828] = v3;
  LODWORD(STACK[0x68C]) = v5;
  STACK[0x560] = v4;
  STACK[0x918] = 0;
  LODWORD(STACK[0x85C]) = -1720256293;
  STACK[0x448] = 0x25B2F1AA6CA5FEE2;
  STACK[0x568] = 0;
  v6 = (*(v0 + 8 * (v2 ^ 0x1B51)))(16, 0x20040A4A59CD2);
  STACK[0x5D8] = v6;
  return (*(v0 + 8 * (((v6 == 0) * ((((v2 - 413598701) & 0x18A71778) - 1835) ^ (v2 + 1480961153) & 0xA7BA5FBE)) | v2)))();
}

uint64_t sub_1969B0060()
{
  *(v5 - 128) = (v2 ^ 0x37FD61FB) - 1790939281 * ((v5 + 1955510372 - 2 * ((v5 - 136) & 0x748EB8EC)) ^ 0x8C5298AD) + 2019668688;
  *v1 = v0;
  (*(v3 + 8 * (v2 ^ 0x37FD61FB ^ (v4 + 1354))))(v5 - 136);
  return (v7 ^ 0x7FBFBDFC) - 236990728 + ((v7 << (v2 ^ 0xFB ^ (v4 + 1))) & 0xFF7F7BF8) - 1906281716;
}

uint64_t sub_1969B01AC@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v3 = a2 + 795;
  v4 = a2 - 114;
  *(v2 + 108) = 0;
  v5 = STACK[0x6E0];
  *(v2 + 104) = 16;
  *(v2 + 103) = v5[23];
  *(v2 + 102) = v5[22];
  *(v2 + 101) = v5[21];
  *(v2 + 100) = v5[20];
  *(v2 + 99) = v5[19];
  *(v2 + 98) = v5[18];
  *(v2 + 97) = v5[17];
  *(v2 + 96) = v5[16];
  *(v2 + 95) = v5[15];
  *(v2 + 94) = v5[14];
  *(v2 + 93) = v5[13];
  *(v2 + 92) = v5[12];
  *(v2 + 91) = v5[11];
  *(v2 + 90) = v5[10];
  *(v2 + 89) = v5[9];
  *(v2 + 88) = v5[8];
  return (*(a1 + 8 * ((394 * (v5[4] != (v4 ^ 0x60))) ^ v3)))();
}

uint64_t sub_1969B03F0@<X0>(int a1@<W8>)
{
  v7 = 489239129 * ((((2 * (v6 - 144)) | 0xAC57B362) - (v6 - 144) + 701769295) ^ 0x6F03FA87);
  *(v6 - 128) = (v1 ^ 0x7FFEFFB0) - v7 + (a1 & 0xFFFDFF60) + ((v5 - 704) ^ 0xACDFAFD2);
  *(v6 - 136) = v4;
  *(v6 - 144) = (v5 + 1601) ^ v7;
  v8 = (*(v2 + 8 * (v5 + 4932)))(v6 - 144);
  return (*(v2 + 8 * (v5 ^ (8 * (*(v6 - 140) != v3)))))(v8);
}

uint64_t sub_1969B04AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22)
{
  v25 = 1012216201 * (((&a17 | 0xB0965368) - &a17 + (&a17 & 0x4F69AC90)) ^ 0x343FDB84);
  a22 = v25 + v24 - 1795305072;
  a17 = v25 ^ 0x80F33AA;
  a19 = v25 + 1674889175;
  a20 = a12;
  a21 = &a13;
  v26 = (*(v23 + 8 * (v24 ^ 0x1D93)))(&a17, a2, a3, a4, a5, a6, a7, a8);
  return (*(v23 + 8 * (((a18 == v22 + ((v24 + 228845787) & 0xF25C1515) - 1285) * (((v24 - 1266) | 0xD1) + 4620)) ^ v24)))(v26);
}

uint64_t sub_1969B0598()
{
  v4 = 64 - v2;
  v6 = (((v1 ^ 0x641) + 1092497844) & 0xBEE1CEFD) - v0 + 763048545 < v4 || v4 > ((v1 ^ 0x641u) - 447) + 4294964296u;
  return (*(v3 + 8 * (v6 | (8 * v6) | v1 ^ 0x641)))();
}

void fp_dh_4d52abaa756a279f203f467c7eedf5a3(uint64_t a1)
{
  v1 = *(a1 + 16) + 1068996913 * (((a1 | 0xFC2075CD) - (a1 | 0x3DF8A32) + 64981554) ^ 0x29CE945C);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1969B0740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  *(v19 - 128) = &a14;
  *(v19 - 120) = v18;
  *(v19 - 136) = (v14 - 2527) ^ (1575331711 * ((~((v19 - 144) ^ 0x435ED052 | 0x7AF5C96D) + (((v19 - 144) ^ 0x435ED052) & 0x7AF5C96D)) ^ 0xAA0F73C2));
  *(v19 - 144) = v17;
  *(v19 - 112) = &a14;
  (*(v16 + 8 * (v14 ^ 0xCF)))(v19 - 144, a2, a3, a4, a5, a6, a7, a8);
  v20 = 489239129 * ((((2 * ((v19 - 144) ^ 0x2A9323F)) | 0x5BFA5408) - ((v19 - 144) ^ 0x2A9323F) - 771566084) ^ 0x967C3B0D);
  *(v19 - 128) = v15 - v20 + (((v14 - 6527) | 0x402) ^ 0xD2785847);
  *(v19 - 144) = (v14 - 3196) ^ v20;
  *(v19 - 136) = a13;
  v21 = (*(v16 + 8 * (v14 ^ 0xB9)))(v19 - 144);
  return (*(v16 + 8 * ((51 * (*(v19 - 140) == ((v14 - 1503) | 0x23) + 1573487249)) ^ v14)))(v21);
}

uint64_t sub_1969B0898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17)
{
  v20 = v17 ^ 0x1264;
  a16 = v20 + 4625 - 1790939281 * ((2 * (&a16 & 0x17040A98) - &a16 - 386140825) ^ 0x1027D526);
  a17 = a13;
  (*(v18 + 8 * (v20 ^ 0x1F6F)))(&a16, a2, a3, a4, a5, a6, a7, a8);
  a16 = v20 + 4625 - 1790939281 * ((2028206075 - (&a16 | 0x78E3F7FB) + (&a16 | 0x871C0804)) ^ 0x7FC02845);
  a17 = a14;
  v21 = (*(v18 + 8 * (v20 + 5351)))(&a16);
  return (*(v18 + 8 * (((((v20 + 2044696370) ^ a12) - 138416130 + ((2 * a12) & 0xF3BF39EC) == v19) * (v20 ^ 0x1406)) ^ v20)))(v21);
}

uint64_t fp_dh_74a2cda5f8386b1b561e662a5fb7d346(uint64_t a1)
{
  v2 = 489239129 * ((2 * (a1 & 0x269C9162) - a1 + 1499688605) ^ 0xE04B4DAB);
  result = (**(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(a1 + 8) ^ v2) - 1604995659))((-588197691 * (*(a1 + 40) + v2) + 2049608045), *(a1 + 16), *(a1 + 32), (91572673 * (*(a1 + 24) - v2) - 1295271212), *a1, *(a1 + 48));
  *(a1 + 56) = (result ^ 0x7DFFCDF5) - 207634689 + ((2 * result) & 0xFBFF9BEA);
  return result;
}

uint64_t sub_1969B09F8@<X0>(uint64_t a1@<X8>)
{
  v4 = *v2;
  *v2 = v2[3];
  v2[3] = v4;
  v5 = v2[1];
  v2[1] = v2[2];
  v2[2] = v5;
  return (*(a1 + 8 * ((4350 * (v1 - 1 == (((v3 - 988) | 0x1014) ^ 0x546BAAD8))) ^ v3)))();
}

uint64_t fp_dh_230b7a195b93e236f3bfdeddf828d8eb(uint64_t result)
{
  v1 = (*(result + 8) - 77 * (((result | 0x43) - result + (result & 0xBC)) ^ 0x95));
  v2 = v1 > 0x1E;
  v3 = (1 << v1) & 0x41400000;
  if (v2 || v3 == 0)
  {
    v5 = 1906238819;
  }

  else
  {
    v5 = 1906281716;
  }

  *(result + 4) = v5;
  return result;
}

uint64_t sub_1969B0B40@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = (a2 - 3168) | 0x708;
  *v4 = a1;
  *v8 = v3;
  v11 = v7 - (&v11 ^ 0xF8DC2041) * v6 + 4269;
  v12 = v10;
  (*(v5 + 8 * (v7 ^ 0x1D83)))(&v11);
  v11 = v7 - 1358 - ((2 * (&v11 & 0x67E2ED90) - &v11 + 404558446) ^ 0xE0C1322F) * v6 + 5627;
  v12 = v9;
  (*(v5 + 8 * (v7 + 4995)))(&v11);
  return 0;
}

uint64_t sub_1969B0B64@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, char a10)
{
  v12 = a1 - 1475;
  a9 = a1 - 489239129 * ((2 * (&a9 & 0x64898B68) - &a9 + 460747927) ^ 0xA25E57A1) + 2491;
  a10 = 89 * ((2 * (&a9 & 0x68) - &a9 - 105) ^ 0xA1) + 13;
  v13 = (*(v10 + 8 * (a1 + 3661)))(&a9);
  return (*(v10 + 8 * (((**(v11 + 8 * (v12 - 1478)) == ((1076 * (v12 ^ 0x715)) ^ 0x1504)) * (((v12 + 407007358) & 0xE7BD8F77) + 1400)) ^ v12)))(v13);
}

void TBGzuU3p5n1n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1969B0C68@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, __int16 a11, char a12, int a13, unsigned int a14, uint64_t a15, int *a16, char *a17)
{
  a14 = ((v17 ^ 0xA0B) + 2250) ^ ((&a14 ^ v18) * v20);
  a15 = a1;
  a16 = &a12;
  a17 = &a10;
  (*(v19 + 8 * (v17 ^ 0x14FB)))(&a14);
  a14 = (v17 ^ 0xA0B) - ((2 * (&a14 & 0x44EF7878) - &a14 + 990939015) ^ 0x574B1285) * v20 + 1107;
  a15 = a6;
  a16 = &a5;
  v21 = (*(v19 + 8 * (v17 ^ 0x14CB)))(&a14);
  return (*(v19 + 8 * ((231 * (a5 == (((v17 ^ 0xA0B) + 1424530137) & 0xAB1763FC ^ 0x344))) ^ v17 ^ 0xA0B)))(v21);
}

uint64_t sub_1969B0D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = ((((v17 - 144) | 0x82BF091E) - (v17 - 144) + ((v17 - 144) & 0x7D40F6E0)) ^ 0x3B972A28) * v15;
  *(v17 - 128) = -763867404 - v18 + v13 + 3566;
  *(v17 - 144) = (v16 - 1854) ^ v18;
  *(v17 - 136) = a13;
  v19 = (*(v14 + 8 * (v16 + 1477)))(v17 - 144, a2, a3, a4, a5, a6, a7, a8);
  return (*(v14 + 8 * ((19 * (*(v17 - 140) == (v16 ^ 0x232) + 1573483649 + ((v16 - 2913) | 0x220))) ^ v16)))(v19);
}

uint64_t sub_1969B0E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  a15 = 1575331711 * (((&a15 | 0x97842E61) + (~&a15 | 0x687BD19E)) ^ 0xFBDFBB62) + 1655634431;
  v18 = (*(v16 + 54592))(&a15, a2, a3, a4, a5, a6, a7, a8);
  return (*(v16 + 8 * ((193 * (a16 == 1906281716)) ^ v17)))(v18);
}

uint64_t sub_1969B0F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = *(v18 + 8 * (v17 + v14));
  v20 = (v9 + 4 + v8);
  *(v12 + v20) = ((v9 + 4 + v8) * v11) ^ HIBYTE(v10) ^ *(a8 + v20) ^ *(v15 + v20 + 1) ^ *(v20 + v16 + 6) ^ 0x7F;
  *(v12 + (v20 + 1)) = (v20 * v11 + 53) ^ BYTE2(v10) ^ *(a8 + (v20 + 1)) ^ *((v20 + 1) + v15 + 1) ^ *((v20 + 1) + v16 + 6) ^ 0x1C;
  *(v12 + (v20 + 2)) = (v20 * v11 + 106) ^ BYTE1(v10) ^ *(a8 + (v20 + 2)) ^ *(v15 + (v20 + 2) + 1) ^ *((v20 + 2) + v16 + 6) ^ v13;
  *(v12 + (v20 + 3)) = v10 ^ ((v9 + 4 + v8) * v11 - 97) ^ *(a8 + (v20 + 3)) ^ *((v20 + 3) + v15 + 1) ^ *((v20 + 3) + v16 + 6) ^ 0x9F;
  return v19();
}

uint64_t sub_1969B1058(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned int a5)
{
  v7 = ((((a4 ^ 0x6F) + 108) ^ a4 ^ ((v6 ^ 5) + 2)) ^ (((((a5 ^ 0x60) + 45) ^ v6) + 104) ^ (((a5 - 100) ^ a4) + 119))) & 0x7F;
  v9 = v7 != 123 && (v7 ^ 0x7Bu) < 5;
  return (*(v5 + 8 * ((3677 * v9) ^ a5)))(a1, a5 ^ 0xE60, 1906239698);
}

uint64_t sub_1969B10E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41)
{
  v45 = (*(v43 + 96) - ((2 * *(v43 + 96)) & 0x10) + 15);
  if (v45 == 16)
  {
    v52 = *(v43 + 64);
    v51 = *(v43 + 68);
    v47 = (a6 - 4084) | 0x1200;
    *(v43 + 56) = (8 * (v51 - ((2 * v51) & 8)) + 32) ^ 0xCC;
    *(v43 + 57) = (v51 >> ((a6 + 12) ^ 2)) ^ 0xEC;
    *(v43 + 58) = (v51 >> 13) ^ 0xEC;
    *(v43 + 59) = (v51 >> 21) ^ 0xEC;
    *(v43 + 60) = ((__PAIR64__(v52, v51) >> 29) - ((2 * (__PAIR64__(v52, v51) >> 29)) & 0x96) - 53) ^ 0x27;
    *(v43 + 61) = (v52 >> 5) ^ 0xEC;
    *(v43 + 62) = (v52 >> 13) ^ 0xEC;
    v50 = (v52 >> 21) ^ 0xFFFFFFEC;
  }

  else
  {
    v46 = a6;
    if (v45 != 17)
    {
      goto LABEL_6;
    }

    v47 = a41 & 0xB7F41A57;
    v48 = *(v43 + 64);
    v49 = *(v43 + 68);
    *(v43 + 56) = (v48 >> (a41 & 0x57 ^ 0x12)) ^ 0xEC;
    *(v43 + 57) = (v48 >> 13) ^ 0xEC;
    *(v43 + 58) = (v48 >> 5) ^ 0xEC;
    *(v43 + 59) = ((__PAIR64__(v48, v49) >> 29) - ((2 * (__PAIR64__(v48, v49) >> 29)) & 0x12) - 119) ^ 0x65;
    *(v43 + 60) = (v49 >> 21) ^ 0xEC;
    *(v43 + 61) = (v49 >> 13) ^ 0xEC;
    *(v43 + 62) = (v49 >> 5) ^ 0xEC;
    LOBYTE(v50) = (-8 * v49 + 120) ^ 0x94;
  }

  v46 = v47 - 524;
  *(v43 + 63) = v50;
LABEL_6:
  STACK[0x3A0] = *(v44 + 8 * (v46 - 6093));
  STACK[0x6A0] = v43;
  STACK[0x6A8] = v43;
  v53 = STACK[0x590];
  v54 = (&STACK[0x6E0] + STACK[0x590]);
  STACK[0x6B0] = v54;
  STACK[0x590] = v53 + 320;
  LODWORD(STACK[0x578]) = *(v43 + 72);
  LODWORD(STACK[0x4E4]) = *(v43 + 76);
  LODWORD(STACK[0x4E8]) = *(v43 + 80);
  LODWORD(STACK[0x56C]) = *(v43 + 84);
  v55 = (*(v43 + 96) - ((2 * *(v43 + 96)) & 0xB4) + 94);
  if (v55 == 92)
  {
    LODWORD(STACK[0x608]) = *(v43 + 88);
    JUMPOUT(0x196A065D4);
  }

  if (v55 != 95)
  {
    JUMPOUT(0x19699B000);
  }

  v56 = *(v43 + (v41 + 1901804226)) ^ 0xEC;
  v57 = ((*(v43 + ((a6 - 4043) ^ 0x8EA4CD70) + 1901804226) ^ 0xEC) << 16) | ((*(v43 + (v41 + 1901804229)) ^ 0xEC) << 24) | v56 | ((*(v43 + (v41 + 1901804227)) ^ 0xEC) << 8);
  *v54 = v57 + v42 - 2 * (v57 & (v42 + 16) ^ v56 & 0x10);
  return (*(v44 + 8 * ((1549 * ((v41 + 1901804230) < 0x40)) ^ (a6 - 3989))))(1901804226);
}

uint64_t sub_1969B1434@<X0>(int a1@<W8>)
{
  (*(v1 + 8 * (a1 + 3304)))(v2);
  STACK[0x6B0] = 0;
  return sub_19698E230();
}

void fp_dh_627090bdea074a6260d19fb0b461717b(uint64_t a1)
{
  v1 = *(a1 + 16) + 1283153057 * ((~a1 & 0xC969B117 | a1 & 0x36964EE8) ^ 0x86B1B220);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969B15DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  v21 = (a3 - 1950013104) & 0x743AC9B7;
  v22 = ((a12 + 782921536) ^ 0x32D90F0) & (2 * ((v21 - 2085612940) & (a12 + 782921536))) ^ (v21 - 2085612940) & (a12 + 782921536);
  v23 = ((((a12 + 782921536) ^ 0x34DB454) << (a20 + 16)) ^ 0x1FB5D5C) & ((a12 + 782921536) ^ 0x34DB454) ^ (((a12 + 782921536) ^ 0x34DB454) << (a20 + 16)) & 0x80FDAEAE;
  v24 = v23 ^ 0x8004A2A2;
  v25 = (v23 ^ 0x80C40C0A) & (4 * v22) ^ v22;
  v26 = ((4 * v24) ^ 0x3F6BAB8) & v24 ^ (4 * v24) & 0x80FDAEAC;
  v27 = (v26 ^ 0xF4AAA0) & (16 * v25) ^ v25;
  v28 = ((16 * (v26 ^ 0x80090406)) ^ 0xFDAEAE0) & (v26 ^ 0x80090406) ^ (16 * (v26 ^ 0x80090406)) & 0x80FDAEA0;
  v29 = v27 ^ 0x80FDAEAE ^ (v28 ^ 0xD8AA00) & (v27 << 8);
  v30 = (a12 + 782921536) ^ (2 * ((v29 << 16) & 0xFD0000 ^ v29 ^ ((v29 << 16) ^ 0x2EAE0000) & (((v28 ^ 0x8025040E) << 8) & 0xFD0000 ^ 0x510000 ^ (((v28 ^ 0x8025040E) << 8) ^ 0x7DAE0000) & (v28 ^ 0x8025040E))));
  v32 = v30 != -2095888474 && (v30 & 0xF) == 6;
  return (*(v20 + 8 * ((((2787 * (v21 ^ 0x884)) ^ 0x15F3) * v32) ^ v21)))(a1, a2);
}

uint64_t sub_1969B17A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = STACK[0x36C];
  v67 = (v65 ^ 0x9976F8DB) + a65;
  STACK[0x860] = v67;
  return (*(a6 + 8 * ((v66 - 614) ^ (2016 * (v67 <= a37)))))(a1);
}

uint64_t fp_dh_65331e514793e9e9b603cb6e7d72cc7b(uint64_t result)
{
  v1 = 1283153057 * ((result - 2 * (result & 0xA8533773894A16A2) - 0x57ACC88C76B5E95ELL) ^ 0x1BEA4C4C6921595);
  v2 = *(result + 32) + v1;
  v3 = *(result + 24) - v1;
  v4 = *(result + 16) + v1;
  v5 = *(result + 4) ^ v1;
  v6 = *(result + 8) ^ v1;
  v7 = *result - v1;
  v8 = v6 < v4;
  v9 = v6 < v4;
  v10 = v8;
  if (v3)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    v7 = v5;
  }

  *(result + 28) = v7 ^ v2;
  return result;
}

uint64_t fp_dh_908238bbd7f06e666bbd960f7d0ed966(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = 1825732043 * (((a1 | 0xDE792425) - (a1 & 0xDE792425)) ^ 0xDEEF7712);
  v3 = *(a1 + 8) ^ v2;
  v9 = v3 - 489239129 * ((&v8 & 0x797C0BB0 | ~(&v8 | 0x797C0BB0)) ^ 0x3FABD779) + 1406619934;
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v3 - 2131677852) - 4;
  (*&v4[8 * v3 - 0x3F875D1A8])(&v8);
  v5 = 1621291457 * ((-1987747629 - (&v8 | 0x898560D3) + (&v8 | 0x767A9F2C)) ^ 0x406D1EB5);
  v9 = v3 + v5 + 954547310;
  v10 = 1866249606 - v5;
  result = (*&v4[8 * (v3 ^ 0x7F0ECFF8)])(&v8);
  if (v8 == 364443027 || v8 == 364443024)
  {
    v7 = 654144011 * ((&v8 & 0x277CBD66 | ~(&v8 | 0x277CBD66)) ^ 0xF4573F05);
    v10 = v7 ^ (*(a1 + 12) + v2) ^ 0x4055D47 ^ (11 * (v3 ^ 0x7F0ED55B));
    v8 = v3 - v7 - 1320977906;
    (*&v4[8 * (v3 ^ 0x7F0ECE75)])(&v8);
    __asm { BRAA            X8, X17 }
  }

  return result;
}

uint64_t sub_1969B1C9C(int a1)
{
  v7 = v4 - 1;
  *(v6 + v7) ^= *(v3 + (v7 & 0xF)) ^ *(v1 + (v7 & 0xF) + 1) ^ (67 * (v7 & 0xF)) ^ *(v2 + (v7 & 0xF) + 1) ^ 0xEC;
  return (*(v5 + 8 * ((21 * (v7 == 0)) ^ (a1 + 741))))();
}

uint64_t sub_1969B1CFC()
{
  if (v0 == 1906239664)
  {
    v3 = STACK[0x580];
    LODWORD(STACK[0x51C]) = *(STACK[0x580] + 16) ^ 0xE21DBE9;
  }

  else
  {
    if (v0 != 1906281716)
    {
      LODWORD(STACK[0x824]) = v0;
      STACK[0x5C0] = STACK[0x580];
      STACK[0x740] = *(v1 + 8 * (v2 ^ 0xE10));
      JUMPOUT(0x1969BE438);
    }

    v3 = STACK[0x580];
  }

  v4 = *v3;
  STACK[0x8C0] = 0;
  STACK[0x6F8] = 0;
  return (*(v1 + 8 * (((v4 != 0) * (v2 - 3115)) ^ (v2 + 2784))))();
}

uint64_t sub_1969B1E24@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v4 = a2 - v2 + 1206365924;
  v5 = (v4 ^ 0xB31D0CA6) & (2 * ((((v3 - 434231829) & 0x19E1CFF7) - 1206369937) & v4)) ^ (((v3 - 434231829) & 0x19E1CFF7) - 1206369937) & v4;
  v6 = ((2 * (v4 ^ 0xE33D2E82)) ^ 0xB64AFF68) & (v4 ^ 0xE33D2E82) ^ (2 * (v4 ^ 0xE33D2E82)) & 0x5B257FB4;
  v7 = v6 ^ 0x49250094;
  v8 = (v6 ^ 0x9044D24) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0x6C95FED0) & v7 ^ (4 * v7) & 0x5B257FB4;
  v10 = (v9 ^ 0x48057E84) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x13200124)) ^ 0xB257FB40) & (v9 ^ 0x13200124) ^ (16 * (v9 ^ 0x13200124)) & 0x5B257FB0;
  v12 = v10 ^ 0x5B257FB4 ^ (v11 ^ 0x12057BB4) & (v10 << 8);
  v13 = v4 ^ (2 * ((v12 << 16) & 0x5B250000 ^ v12 ^ ((v12 << 16) ^ 0x7FB40000) & (((v11 ^ 0x492004B4) << 8) & 0x5B250000 ^ 0x5A000000 ^ (((v11 ^ 0x492004B4) << 8) ^ 0x257F0000) & (v11 ^ 0x492004B4))));
  LODWORD(STACK[0x724]) = v13 ^ 0x216C5685;
  v14 = (*(a1 + 8 * (v3 ^ 0x369)))(v13 ^ 0xB81AAE5E, 0x100004077774924);
  v15 = STACK[0x370];
  STACK[0x490] = v14;
  return (*(v15 + 8 * ((22 * (v14 != 0)) ^ v3)))();
}

void fp_dh_c51a983adf7d6d2ac14dd410385d2470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  if (*(v3 + 24))
  {
    v5 = *v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  v4 = *(v3 + 12) - 998242381 * ((~v3 & 0x41B0881 | v3 & 0xFBE4F77E) ^ 0xAE749057);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969B2174()
{
  v6 = ((((2 * *(v3 + 4)) & 0xE7) + (*(v3 + 4) ^ 0xF3)) ^ 0x80) - -119 * (((v5 | 0x96) - (v5 | 0x69) + 105) ^ 0x7A);
  v5[0] = 1012216201 * (((v5 | 0xA2703E96) - (v5 | 0x5D8FC169) + 1569702249) ^ 0x26D9B67A) + 1484531117 + v1;
  result = (*(v2 + 8 * (v1 + 6157)))(v5);
  *(v0 + 8) = v5[1];
  return result;
}

uint64_t sub_1969B2288()
{
  v8 = v6;
  v7 = v3 - (&v7 ^ 0xF8DC2041) * v1 + 3476;
  (*(v0 + 8 * (v3 ^ 0x10EA)))(&v7);
  v7 = v3 - 419 - (((&v7 | 0x6AA55BFD) - (&v7 & 0x6AA55BFD)) ^ 0x92797BBC) * v1 + 3895;
  v8 = v5;
  (*(v0 + 8 * (v3 + 4202)))(&v7);
  return (v2 - 1906281716);
}

void sub_1969B2368()
{
  if (v0 == 1487589567)
  {
    v2 = 1906281716;
  }

  else
  {
    v2 = 1906239692;
  }

  *(v1 + 36) = v2;
}

void sub_1969B2404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18)
{
  v23 = ((v22 - 1945755628 - 2 * ((v22 - 144) & 0x8C0620A4)) ^ 0xE05DB5A6) * v18;
  *(v22 - 144) = (v20 + a18 + 568553288) ^ v23;
  *(v22 - 120) = (v20 + 3985) ^ v23;
  *(v22 - 136) = v21;
  *(v22 - 128) = a9;
  (*(v19 + 8 * (v20 + 6201)))(v22 - 144, a2, a3, a4, a5, a6, a7, a8);
  JUMPOUT(0x1969B247CLL);
}

uint64_t sub_1969B24D0@<X0>(int a1@<W8>)
{
  v3 = (*(v2 + 8 * (a1 ^ 0x12DB)))();
  STACK[0x530] = 0;
  return v1(v3);
}

uint64_t sub_1969B24F4(int8x16_t a1, int8x8_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v26 = a7 - 8;
  v28.val[0].i64[0] = (v25 + v26 + v21) & 0xF;
  v28.val[0].i64[1] = (v25 + v26 + 14) & 0xF;
  v28.val[1].i64[0] = (v25 + v26 + 13) & 0xF;
  v28.val[1].i64[1] = (v25 + v26 + 12) & 0xF;
  v28.val[2].i64[0] = (v25 + v26 + 11) & 0xF;
  v28.val[2].i64[1] = (v25 + v26 + 10) & 0xF;
  v28.val[3].i64[0] = (v25 + v26 + 9) & 0xF;
  v28.val[3].i64[1] = (v25 + v26) & 0xF ^ 8;
  *(a8 - 8 + v25 + v21) = veor_s8(veor_s8(veor_s8(*(v24 + v28.val[0].i64[0] - 7), *(a9 - 8 + v25 + v21)), veor_s8(*(v28.val[0].i64[0] + v23 - 6), *(v22 + v28.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v28, a1), a2)));
  return (*(a21 + 8 * ((2 * (a6 + v26 != 0)) | (4 * (a6 + v26 != 0)) | a5)))(a3, a4);
}

uint64_t sub_1969B2504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, unsigned __int8 *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned __int8 *a23, uint64_t a24)
{
  v28 = 1790939281 * (((&a19 | 0xEC3DE5AA) - &a19 + (&a19 & 0x13C21A50)) ^ 0x14E1C5EB);
  a20 = v26;
  a21 = v24;
  LOBYTE(a22) = 48 - v28;
  a23 = a15;
  LODWORD(a24) = (v27 - 3063) ^ v28;
  HIDWORD(a24) = a11 - v28 - 309786070;
  a19 = v26 + 36;
  (*(v25 + 8 * (v27 + 544)))(&a19, a2, a3, a4, a5, a6, a7, a8);
  v29 = (a12 ^ 0x3D919D09) & (2 * (a12 & 0xB9A5DE09)) ^ a12 & 0xB9A5DE09;
  v30 = (((a12 ^ 0x5DDA250B) << ((43 * ((v27 - 71) & 0xDC ^ 0x51)) ^ 0x5A)) ^ 0xC8FFF604) & (a12 ^ 0x5DDA250B) ^ ((a12 ^ 0x5DDA250B) << ((43 * ((v27 - 71) & 0xDC ^ 0x51)) ^ 0x5A)) & 0xE47FFB02;
  v31 = v30 ^ 0x24000902;
  v32 = (v30 ^ 0xC03FF000) & (4 * v29) ^ v29;
  v33 = ((4 * v31) ^ 0x91FFEC08) & v31 ^ (4 * v31) & 0xE47FFB00;
  v34 = (v33 ^ 0x807FE800) & (16 * v32) ^ v32;
  v35 = ((16 * (v33 ^ 0x64001302)) ^ 0x47FFB020) & (v33 ^ 0x64001302) ^ (16 * (v33 ^ 0x64001302)) & 0xE47FFB00;
  v36 = v34 ^ 0xE47FFB02 ^ (v35 ^ 0x447FB000) & (v34 << 8);
  v37 = a12 ^ (2 * ((v36 << 16) & 0x647F0000 ^ v36 ^ ((v36 << 16) ^ 0x7B020000) & (((v35 ^ 0xA0004B02) << 8) & 0x647F0000 ^ (((v35 ^ 0xA0004B02) << 8) ^ 0x7FFB0000) & (v35 ^ 0xA0004B02) ^ 0x40000)));
  v38 = 753662761 * ((-999329021 - (&a19 | 0xC46F7303) + (&a19 | 0x3B908CFC)) ^ 0x5E8A77B7);
  a23 = &a15[56 * *a15 + 8];
  a24 = v24;
  a19 = v24;
  a22 = a13;
  HIDWORD(a20) = v38 + v27 - 5957;
  LODWORD(a21) = v38 + (v37 & 0xFFFFFFF0 ^ 0xF6E9DEEE) + ((2 * v37) & 0x8F6FEDC0 ^ 0x22C4000) - 1074140192;
  v39 = (*(v25 + 8 * (v27 + 434)))(&a19);
  return (*(v25 + 8 * ((7 * (a20 != 1906281716)) ^ v27)))(v39);
}

uint64_t sub_1969B27F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v24 = *(a23 + 96);
  if (v24 == 2)
  {
    return (*(v23 + 8 * ((29 * (*(a23 + 92) == a12)) ^ (a8 - 1458))))(a13);
  }

  if (v24 != 1)
  {
    JUMPOUT(0x1969B28ECLL);
  }

  return (*(v23 + 8 * (((*(a23 + 92) == 0) * (a17 - 3641)) ^ (a8 - 734))))();
}

uint64_t sub_1969B2A24@<X0>(uint64_t a1@<X5>, _BYTE *a2@<X8>)
{
  v4 = (v2 + 311084523) & 0xED753FF3;
  *(v3 + 72) = 32;
  *(v3 + 39) = a2[55];
  *(v3 + 38) = a2[54];
  *(v3 + 37) = a2[53];
  *(v3 + 36) = a2[52];
  *(v3 + 35) = a2[51];
  *(v3 + 34) = a2[50];
  *(v3 + 33) = a2[49];
  *(v3 + 32) = a2[48];
  *(v3 + 31) = a2[47];
  *(v3 + 30) = a2[46];
  *(v3 + 29) = a2[45];
  *(v3 + 28) = a2[44];
  *(v3 + 27) = a2[43];
  *(v3 + 26) = a2[42];
  *(v3 + 25) = a2[41];
  *(v3 + 24) = a2[40];
  *(v3 + 23) = a2[39];
  *(v3 + 22) = a2[38];
  *(v3 + 21) = a2[37];
  *(v3 + 20) = a2[36];
  *(v3 + 19) = a2[35];
  *(v3 + 18) = a2[34];
  *(v3 + 17) = a2[33];
  *(v3 + 16) = a2[32];
  *(v3 + 15) = a2[31];
  *(v3 + 14) = a2[30];
  *(v3 + 13) = a2[29];
  *(v3 + 12) = a2[28];
  *(v3 + 11) = a2[27];
  *(v3 + 10) = a2[26];
  *(v3 + 9) = a2[25];
  *(v3 + 8) = a2[24];
  v5 = STACK[0x710];
  v6 = STACK[0x450];
  *v6 = 0x25B2F1AA6CA5FEE2;
  *(v6 + 8) = *(v5 + 108) - 1720256293 - ((*(v5 + 108) << (4 * (v4 ^ 0x69) + 89)) & 0x32EDF1B6);
  *(v6 + 16) = 0;
  *(v6 + 24) = 0x163F5B9C9;
  *(v6 + 32) = -1720256289;
  *(v6 + 36) = 1738668895;
  STACK[0x478] = v6;
  LODWORD(STACK[0x55C]) = 0;
  STACK[0x7C8] = 0;
  v7 = (*(a1 + 8 * (v4 ^ 0xDCE)))(128, 0x10800400FED9166);
  v8 = STACK[0x370];
  STACK[0x3D8] = v7;
  return (*(v8 + 8 * ((41 * (v7 != 0)) ^ v4)))();
}

uint64_t sub_1969B2B54@<X0>(uint64_t a1@<X8>)
{
  STACK[0xAD8] = v2;
  v4 = STACK[0x7D0];
  STACK[0xAE0] = STACK[0x7D0];
  return (*(v3 + 8 * (((v2 - v4 > (a1 ^ 0xE15uLL)) * ((v1 - 887) ^ 0x12D)) ^ v1)))();
}

uint64_t sub_1969B2C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, unsigned int a18, unint64_t a19, uint64_t a20, unint64_t a21)
{
  v27 = 1068996913 * (v26 ^ 0x94613493D5EEE191);
  a19 = v27 ^ ((v24 ^ 0x7CD6B7FBCE96CBD0) - 0xC002C848804100 + ((2 * v24) & 0xF9AD6FF79D2D97A0));
  a21 = a14;
  LODWORD(a20) = v21 - v27 + 1419;
  (*(v25 + 8 * (v21 ^ 0x9F2)))(&a17, a2, a3, a4, a5, a6, a7, a8);
  v28 = 753662761 * (((v26 | 0xA1442DE9) - v26 + (v26 & 0x5EBBD210)) ^ 0xC45ED6A2);
  a19 = a14;
  a20 = v22;
  a17 = (v23 ^ 0x76761E98) - v28 + ((v23 << ((v21 - 6) ^ 0x4D)) & 0xECEC3D30) - 541070344;
  a18 = (v21 + 645) ^ v28;
  v29 = (*(v25 + 8 * (v21 ^ 0x929)))(&a17);
  return (*(v25 + 8 * ((2406 * (a21 == 1906281716)) ^ v21)))(v29);
}

uint64_t sub_1969B2DF0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t a4@<X4>, unint64_t a5@<X5>, unint64_t a6@<X6>, unint64_t a7@<X7>, unint64_t a8@<X8>, int8x16_t a9@<Q6>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v80 = v72 - 8;
  v81 = v73 - 8;
  v82.i64[0] = v81 + v71 + v74;
  v82.i64[1] = v81 + v71 - 2;
  v83.i64[0] = v81 + v71 - 3;
  v83.i64[1] = v81 + v71 - 4;
  v84.i64[0] = v81 + v71 - 5;
  v84.i64[1] = v81 + v71 - 6;
  v85.i64[0] = v81 + v71 - 7;
  v85.i64[1] = v81 + v71 - 8;
  v86.i64[0] = v80 + v71 - 3;
  v86.i64[1] = v80 + v71 - 4;
  *&STACK[0x3E0] = v86;
  v87.i64[0] = v80 + v71 - 5;
  v87.i64[1] = v80 + v71 - 6;
  v88.i64[0] = v80 + v71 - 7;
  v88.i64[1] = v80 + v71 - 8;
  v89 = vandq_s8(v85, *&STACK[0x410]);
  v90 = vandq_s8(v84, *&STACK[0x410]);
  v91 = vandq_s8(v83, *&STACK[0x410]);
  v92 = vandq_s8(v82, *&STACK[0x410]);
  v93 = *&STACK[0x410];
  v94 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v95 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v96 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v97 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v98 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x3B0], v97), *&STACK[0x3A0]), vorrq_s8(vaddq_s64(v97, *&STACK[0x3D0]), *&STACK[0x3C0]));
  v99 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x3B0], v96), *&STACK[0x3A0]), vorrq_s8(vaddq_s64(v96, *&STACK[0x3D0]), *&STACK[0x3C0]));
  v100 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x3B0], v95), *&STACK[0x3A0]), vorrq_s8(vaddq_s64(v95, *&STACK[0x3D0]), *&STACK[0x3C0]));
  v101 = vsubq_s64(v79, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x3B0], v94), *&STACK[0x3A0]), vorrq_s8(vaddq_s64(v94, *&STACK[0x3D0]), *&STACK[0x3C0])));
  v102 = vsubq_s64(v79, v100);
  v103 = vsubq_s64(v79, v99);
  v104 = vsubq_s64(v79, v98);
  v105 = veorq_s8(v104, *&STACK[0x390]);
  v106 = veorq_s8(v103, *&STACK[0x390]);
  v107 = veorq_s8(v102, *&STACK[0x390]);
  v108 = veorq_s8(v101, *&STACK[0x390]);
  v109 = veorq_s8(v101, *&STACK[0x380]);
  v110 = veorq_s8(v102, *&STACK[0x380]);
  v111 = veorq_s8(v103, *&STACK[0x380]);
  v112 = veorq_s8(v104, *&STACK[0x380]);
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v112);
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v111);
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v110);
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v116, v116), *&STACK[0x370]), v116), *&STACK[0x360]), *&STACK[0x350]);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v115, v115), *&STACK[0x370]), v115), *&STACK[0x360]), *&STACK[0x350]);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v114, v114), *&STACK[0x370]), v114), *&STACK[0x360]), *&STACK[0x350]);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v113, v113), *&STACK[0x370]), v113), *&STACK[0x360]), *&STACK[0x350]);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v122 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v123 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v124 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v125 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL);
  v127 = vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL);
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v124);
  v129 = vaddq_s64(v127, v123);
  v130 = vaddq_s64(v126, v122);
  v131 = vaddq_s64(v125, v121);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v131, v131), *&STACK[0x340]), v131), *&STACK[0x330]), *&STACK[0x320]);
  v133 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v130, v130), *&STACK[0x340]), v130), *&STACK[0x330]), *&STACK[0x320]);
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v129, v129), *&STACK[0x340]), v129), *&STACK[0x330]), *&STACK[0x320]);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v128, v128), *&STACK[0x340]), v128), *&STACK[0x330]), *&STACK[0x320]);
  v136 = vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL);
  v137 = vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL);
  v139 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v140 = veorq_s8(v134, v138);
  v141 = veorq_s8(v133, v137);
  v142 = veorq_s8(v132, v136);
  v143 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v144 = vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL);
  v145 = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v142);
  v147 = vaddq_s64(v145, v141);
  v148 = vaddq_s64(v144, v140);
  v149 = vaddq_s64(v143, v139);
  v150 = veorq_s8(vaddq_s64(vsubq_s64(v149, vandq_s8(vaddq_s64(v149, v149), *&STACK[0x310])), *&STACK[0x300]), *&STACK[0x2F0]);
  v151 = veorq_s8(vaddq_s64(vsubq_s64(v148, vandq_s8(vaddq_s64(v148, v148), *&STACK[0x310])), *&STACK[0x300]), *&STACK[0x2F0]);
  v152 = veorq_s8(vaddq_s64(vsubq_s64(v147, vandq_s8(vaddq_s64(v147, v147), *&STACK[0x310])), *&STACK[0x300]), *&STACK[0x2F0]);
  v153 = veorq_s8(vaddq_s64(vsubq_s64(v146, vandq_s8(vaddq_s64(v146, v146), *&STACK[0x310])), *&STACK[0x300]), *&STACK[0x2F0]);
  v154 = vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL);
  v155 = vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL);
  v156 = vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL);
  v157 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v158 = veorq_s8(v152, v156);
  v159 = veorq_s8(v151, v155);
  v160 = veorq_s8(v150, v154);
  v161 = vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL);
  v162 = vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL);
  v163 = vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL);
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v160);
  v165 = vaddq_s64(v163, v159);
  v166 = vaddq_s64(v162, v158);
  v167 = vaddq_s64(v161, v157);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v164, *&STACK[0x2E0]), vorrq_s8(v164, *&STACK[0x200])), *&STACK[0x200]), *&STACK[0x2D0]);
  v169 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v165, *&STACK[0x2E0]), vorrq_s8(v165, *&STACK[0x200])), *&STACK[0x200]), *&STACK[0x2D0]);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v166, *&STACK[0x2E0]), vorrq_s8(v166, *&STACK[0x200])), *&STACK[0x200]), *&STACK[0x2D0]);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v167, *&STACK[0x2E0]), vorrq_s8(v167, *&STACK[0x200])), *&STACK[0x200]), *&STACK[0x2D0]);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v173 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v174 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v175 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v176 = vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL);
  v177 = vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL);
  v178 = vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL);
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v175);
  v180 = vaddq_s64(v177, v173);
  v181 = veorq_s8(vaddq_s64(v176, v172), *&STACK[0x2C0]);
  v182 = veorq_s8(v180, *&STACK[0x2C0]);
  v183 = veorq_s8(vaddq_s64(v178, v174), *&STACK[0x2C0]);
  v184 = veorq_s8(v179, *&STACK[0x2C0]);
  v185 = vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL);
  v186 = vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL);
  v187 = vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL);
  v188 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v189 = veorq_s8(v183, v187);
  v190 = veorq_s8(v182, v186);
  v191 = veorq_s8(v181, v185);
  v192 = vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL);
  v193 = vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL);
  v194 = vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL);
  v195 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v191);
  v196 = vaddq_s64(v194, v190);
  v197 = vaddq_s64(v193, v189);
  v198 = vaddq_s64(v192, v188);
  v199 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v198, v198), *&STACK[0x2B0]), v198), *&STACK[0x2A0]), *&STACK[0x290]);
  v200 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v197, v197), *&STACK[0x2B0]), v197), *&STACK[0x2A0]), *&STACK[0x290]);
  v201 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v196, v196), *&STACK[0x2B0]), v196), *&STACK[0x2A0]), *&STACK[0x290]);
  v202 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v195, v195), *&STACK[0x2B0]), v195), *&STACK[0x2A0]), *&STACK[0x290]);
  v203 = vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL);
  v204 = vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL);
  v205 = vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL);
  v206 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL), veorq_s8(v202, vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL))), *&STACK[0x280]);
  v207 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), veorq_s8(v201, v205)), *&STACK[0x280]);
  v208 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), veorq_s8(v200, v204)), *&STACK[0x280]);
  *&STACK[0x400] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), veorq_s8(v199, v203)), *&STACK[0x280]), vnegq_s64(vandq_s8(vshlq_n_s64(v82, 3uLL), a9)));
  *&STACK[0x3F0] = vshlq_u64(v208, vnegq_s64(vandq_s8(vshlq_n_s64(v83, 3uLL), a9)));
  v209 = vshlq_u64(v207, vnegq_s64(vandq_s8(vshlq_n_s64(v84, 3uLL), a9)));
  v210 = vshlq_u64(v206, vnegq_s64(vandq_s8(vshlq_n_s64(v85, 3uLL), a9)));
  v211 = vandq_s8(v88, v93);
  v212 = vandq_s8(v87, v93);
  v213 = vandq_s8(v86, v93);
  v214 = vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL);
  v215 = vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL);
  v216 = vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL);
  v217 = vaddq_s64(vorrq_s8(vsubq_s64(v78, v216), a67), vorrq_s8(vaddq_s64(v216, *&STACK[0x270]), *&STACK[0x260]));
  v218 = vsubq_s64(v79, vaddq_s64(vorrq_s8(vsubq_s64(v78, v214), a67), vorrq_s8(vaddq_s64(v214, *&STACK[0x270]), *&STACK[0x260])));
  v219 = vsubq_s64(v79, vaddq_s64(vorrq_s8(vsubq_s64(v78, v215), a67), vorrq_s8(vaddq_s64(v215, *&STACK[0x270]), *&STACK[0x260])));
  v220 = vsubq_s64(v79, v217);
  v221 = veorq_s8(v220, a66);
  v222 = veorq_s8(v219, a66);
  v223 = vdupq_n_s64(a2);
  v224 = veorq_s8(v219, v223);
  v225 = veorq_s8(v220, v223);
  v226 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL), v225);
  v227 = vdupq_n_s64(a3);
  v228 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL), v224), v227);
  v229 = veorq_s8(v226, v227);
  v230 = vdupq_n_s64(a4);
  v231 = vsubq_s64(v228, vandq_s8(vaddq_s64(v228, v228), v230));
  v232 = vdupq_n_s64(a5);
  v233 = vaddq_s64(vsubq_s64(v229, vandq_s8(vaddq_s64(v229, v229), v230)), v232);
  v234 = vdupq_n_s64(a6);
  v235 = veorq_s8(v233, v234);
  v236 = veorq_s8(vaddq_s64(v231, v232), v234);
  v237 = vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL);
  v238 = veorq_s8(v236, vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL));
  v239 = veorq_s8(v235, v237);
  v240 = vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL);
  v241 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL), v239);
  v242 = vaddq_s64(v240, v238);
  v243 = vdupq_n_s64(a7);
  v244 = veorq_s8(v242, v243);
  v245 = veorq_s8(v241, v243);
  v246 = veorq_s8(v245, vsraq_n_u64(vshlq_n_s64(v239, 3uLL), v239, 0x3DuLL));
  v247 = veorq_s8(v244, vsraq_n_u64(vshlq_n_s64(v238, 3uLL), v238, 0x3DuLL));
  v248 = vsraq_n_u64(vshlq_n_s64(v245, 0x38uLL), v245, 8uLL);
  v249 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), v247);
  v250 = vaddq_s64(v248, v246);
  v251 = vdupq_n_s64(v76);
  v252 = veorq_s8(v250, v251);
  v253 = veorq_s8(v249, v251);
  v254 = veorq_s8(v253, vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL));
  v255 = veorq_s8(v252, vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL));
  v256 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v252, 0x38uLL), v252, 8uLL), v255);
  v257 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v253, 0x38uLL), v253, 8uLL), v254);
  v258 = vdupq_n_s64(v77);
  v259 = vsubq_s64(v256, vandq_s8(vaddq_s64(v256, v256), v258));
  v260 = vdupq_n_s64(v67);
  v261 = vaddq_s64(vsubq_s64(v257, vandq_s8(vaddq_s64(v257, v257), v258)), v260);
  v262 = vdupq_n_s64(v68);
  v263 = veorq_s8(v261, v262);
  v264 = veorq_s8(vaddq_s64(v259, v260), v262);
  v265 = veorq_s8(v264, vsraq_n_u64(vshlq_n_s64(v255, 3uLL), v255, 0x3DuLL));
  v266 = veorq_s8(v263, vsraq_n_u64(vshlq_n_s64(v254, 3uLL), v254, 0x3DuLL));
  v267 = vsraq_n_u64(vshlq_n_s64(v264, 0x38uLL), v264, 8uLL);
  v268 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL), v266);
  v269 = vaddq_s64(v267, v265);
  v270 = vdupq_n_s64(0x60B83CEF67356D1BuLL);
  v271 = veorq_s8(v269, v270);
  v272 = veorq_s8(v268, v270);
  v273 = veorq_s8(v272, vsraq_n_u64(vshlq_n_s64(v266, 3uLL), v266, 0x3DuLL));
  v274 = veorq_s8(v271, vsraq_n_u64(vshlq_n_s64(v265, 3uLL), v265, 0x3DuLL));
  v275 = vsraq_n_u64(vshlq_n_s64(v272, 0x38uLL), v272, 8uLL);
  v276 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v271, 0x38uLL), v271, 8uLL), v274);
  v277 = vaddq_s64(v275, v273);
  v278 = vdupq_n_s64(v69);
  v279 = vsubq_s64(v276, vandq_s8(vaddq_s64(v276, v276), v278));
  v280 = vdupq_n_s64(a8);
  v281 = vaddq_s64(vsubq_s64(v277, vandq_s8(vaddq_s64(v277, v277), v278)), v280);
  v282 = vdupq_n_s64(0x7AEF220226ADDE8CuLL);
  v283 = veorq_s8(v281, v282);
  v284 = veorq_s8(vaddq_s64(v279, v280), v282);
  v285 = vsraq_n_u64(vshlq_n_s64(v273, 3uLL), v273, 0x3DuLL);
  v286 = veorq_s8(v284, vsraq_n_u64(vshlq_n_s64(v274, 3uLL), v274, 0x3DuLL));
  v287 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v283, 0x38uLL), v283, 8uLL), veorq_s8(v283, v285));
  v288 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v284, 0x38uLL), v284, 8uLL), v286);
  v289 = vdupq_n_s64(0xEF0989440325BE54);
  v290 = vsubq_s64(v287, vandq_s8(vaddq_s64(v287, v287), v289));
  v291 = vdupq_n_s64(0xF784C4A20192DF2ALL);
  v292 = vaddq_s64(vsubq_s64(v288, vandq_s8(vaddq_s64(v288, v288), v289)), v291);
  v293 = vdupq_n_s64(0x4EED5A497390D0E3uLL);
  v333.val[3] = veorq_s8(v210, vshlq_u64(veorq_s8(v292, v293), vnegq_s64(vandq_s8(vshlq_n_s64(v88, 3uLL), a9))));
  v333.val[2] = veorq_s8(v209, vshlq_u64(veorq_s8(vaddq_s64(v290, v291), v293), vnegq_s64(vandq_s8(vshlq_n_s64(v87, 3uLL), a9))));
  v294 = veorq_s8(v218, a66);
  v295 = veorq_s8(v218, v223);
  v296 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v294, 0x38uLL), v294, 8uLL), v295), v227);
  v297 = veorq_s8(vaddq_s64(vsubq_s64(v296, vandq_s8(vaddq_s64(v296, v296), v230)), v232), v234);
  v298 = veorq_s8(v297, vsraq_n_u64(vshlq_n_s64(v295, 3uLL), v295, 0x3DuLL));
  v299 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v297, 0x38uLL), v297, 8uLL), v298), v243);
  v300 = veorq_s8(v299, vsraq_n_u64(vshlq_n_s64(v298, 3uLL), v298, 0x3DuLL));
  v301 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v299, 0x38uLL), v299, 8uLL), v300), v251);
  v302 = veorq_s8(v301, vsraq_n_u64(vshlq_n_s64(v300, 3uLL), v300, 0x3DuLL));
  v303 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v301, 0x38uLL), v301, 8uLL), v302);
  v304 = veorq_s8(vaddq_s64(vsubq_s64(v303, vandq_s8(vaddq_s64(v303, v303), v258)), v260), v262);
  v305 = veorq_s8(v304, vsraq_n_u64(vshlq_n_s64(v302, 3uLL), v302, 0x3DuLL));
  v306 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v304, 0x38uLL), v304, 8uLL), v305), v270);
  v307 = veorq_s8(v306, vsraq_n_u64(vshlq_n_s64(v305, 3uLL), v305, 0x3DuLL));
  v308 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v306, 0x38uLL), v306, 8uLL), v307);
  v309 = veorq_s8(vaddq_s64(vsubq_s64(v308, vandq_s8(vaddq_s64(v308, v308), v278)), v280), v282);
  v310 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v309, 0x38uLL), v309, 8uLL), veorq_s8(v309, vsraq_n_u64(vshlq_n_s64(v307, 3uLL), v307, 0x3DuLL)));
  v311 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v310, vandq_s8(vaddq_s64(v310, v310), v289)), v291), v293), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3E0], 3uLL), a9)));
  v310.i64[0] = v80 + v71 + v74;
  v310.i64[1] = v80 + v71 - 2;
  v333.val[1] = veorq_s8(*&STACK[0x3F0], v311);
  v312 = vandq_s8(v310, *&STACK[0x410]);
  v313 = vsraq_n_u64(vshlq_n_s64(v312, 0x38uLL), v312, 8uLL);
  v314 = vsubq_s64(v79, vaddq_s64(vorrq_s8(vsubq_s64(v78, v313), a67), vorrq_s8(vaddq_s64(v313, *&STACK[0x270]), *&STACK[0x260])));
  v315 = veorq_s8(v314, a66);
  v316 = veorq_s8(v314, v223);
  v317 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v315, 0x38uLL), v315, 8uLL), v316), v227);
  v318 = veorq_s8(vaddq_s64(vsubq_s64(v317, vandq_s8(vaddq_s64(v317, v317), v230)), v232), v234);
  v319 = veorq_s8(v318, vsraq_n_u64(vshlq_n_s64(v316, 3uLL), v316, 0x3DuLL));
  v320 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v318, 0x38uLL), v318, 8uLL), v319), v243);
  v321 = veorq_s8(v320, vsraq_n_u64(vshlq_n_s64(v319, 3uLL), v319, 0x3DuLL));
  v322 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v320, 0x38uLL), v320, 8uLL), v321), v251);
  v323 = veorq_s8(v322, vsraq_n_u64(vshlq_n_s64(v321, 3uLL), v321, 0x3DuLL));
  v324 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v322, 0x38uLL), v322, 8uLL), v323);
  v325 = veorq_s8(vaddq_s64(vsubq_s64(v324, vandq_s8(vaddq_s64(v324, v324), v258)), v260), v262);
  v326 = veorq_s8(v325, vsraq_n_u64(vshlq_n_s64(v323, 3uLL), v323, 0x3DuLL));
  v327 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v325, 0x38uLL), v325, 8uLL), v326), v270);
  v328 = veorq_s8(v327, vsraq_n_u64(vshlq_n_s64(v326, 3uLL), v326, 0x3DuLL));
  v329 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v327, 0x38uLL), v327, 8uLL), v328);
  v330 = veorq_s8(vaddq_s64(vsubq_s64(v329, vandq_s8(vaddq_s64(v329, v329), v278)), v280), v282);
  v331 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v330, 0x38uLL), v330, 8uLL), veorq_s8(v330, vsraq_n_u64(vshlq_n_s64(v328, 3uLL), v328, 0x3DuLL)));
  v333.val[0] = veorq_s8(*&STACK[0x400], vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v331, vandq_s8(vaddq_s64(v331, v331), v289)), v291), v293), vnegq_s64(vandq_s8(vshlq_n_s64(v310, 3uLL), a9))));
  *(v80 + v71 + v74 - 7) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v333, a65)), *(v81 + v71 + v74 - 7));
  return (*(STACK[0x248] + 8 * (((v71 != a1 + 8) * v75) ^ v70)))();
}

uint64_t sub_1969B2F2C()
{
  v5 = v2 - 1;
  *(v0 + v5) = *(v4 + v5) - ((2 * *(v4 + v5)) & 0xD8) - 20;
  return (*(v3 + 8 * (((v5 == 0) * ((643 * (v1 ^ 0x25C)) ^ 0xA88)) ^ v1)))();
}

uint64_t sub_1969B3048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, int a18, unint64_t a19, uint64_t a20, unint64_t a21)
{
  v27 = 1068996913 * (((v21 ^ 0x1040983946B0208 | 0x3EFBD2746A94A175) + (v21 ^ 0x34C090346A908145 | 0xC1042D8B956B5E8ALL)) ^ 0xA1A5AD242B1562DDLL);
  a21 = a12;
  a19 = v27 ^ ((v24 ^ 0x7DD6FFB3B65FAFFALL) - 0x1C04A803049252ALL + ((2 * v24) & 0xFBADFF676CBF5FF4));
  LODWORD(a20) = 6365 - v27;
  (*(v25 + 54528))(&a17, a2, a3, a4, a5, a6, a7, a8);
  v28 = *(v23 + 8);
  v29 = *v23 ^ 0xDF377A9A;
  v30 = (2 * *v23) & 0xBE6EF534;
  v31 = 753662761 * ((2 * (v21 & 0x7DBBF090) - v21 - 2109468820) ^ 0xE75EF427);
  a19 = a12;
  a20 = v28;
  a17 = v29 - v31 + v30 + 1996394486;
  a18 = v31 ^ 0x15D7;
  (*(v25 + 54232))(&a17);
  v32 = *(v23 + 24);
  v33 = 753662761 * ((2 * (v21 & 0x59933A0) - v21 + 2053557339) ^ 0x1F7C3710);
  a17 = (*(v23 + 16) ^ 0xF637BEFD) - v33 + ((2 * *(v23 + 16)) & 0xEC6F7DFA) + 1610501011;
  a18 = v33 ^ 0x15D7;
  a19 = a12;
  a20 = v32;
  (*(v25 + 54232))(&a17);
  v34 = 753662761 * (v21 ^ 0x651AFB4B);
  a17 = (v22 ^ 0x7FB6FF9F) + ((2 * v22) & 0xFF6DFF3E) - v34 - 696317199;
  a18 = v34 ^ 0x15D7;
  a19 = a12;
  a20 = v26;
  v35 = (*(v25 + 54232))(&a17);
  return (*(v25 + 8 * ((488 * (a21 != 1906281716)) ^ 0x6FCu)))(v35);
}

uint64_t sub_1969B330C@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W8>)
{
  v10 = a1 < v9;
  v11 = *(v4 + v7);
  v12 = v7 + 1;
  *(v5 + v6) = v11 - ((a3 + 114) & (2 * v11)) - 20;
  if (v10 == v12 > v8)
  {
    v10 = v12 + v9 < a1;
  }

  return (*(v3 + 8 * ((!v10 * a2) ^ a3)))();
}

uint64_t sub_1969B33A0@<X0>(int a1@<W8>)
{
  v5 = ((v3 & (v4 + 1)) << (a1 ^ 0xC3)) & (v3 ^ 0xC1C27107) ^ v3 & (v4 + 1);
  v6 = ((2 * (v3 ^ 0xC9C2312B)) ^ 0x1B84A878) & (v3 ^ 0xC9C2312B) ^ (2 * (v3 ^ 0xC9C2312B)) & 0xDC2543C;
  v7 = (v6 ^ 0x4404038) & (4 * v5) ^ v5;
  v8 = ((4 * (v6 ^ 0x4425404)) ^ 0x370950F0) & (v6 ^ 0x4425404) ^ (4 * (v6 ^ 0x4425404)) & 0xDC2543C;
  v9 = (v8 ^ 0x500503C) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x8C2040C)) ^ 0xDC2543C0) & (v8 ^ 0x8C2040C) ^ (16 * (v8 ^ 0x8C2040C)) & 0xDC25430;
  v11 = v9 ^ 0xDC2543C ^ (v10 ^ 0xC00403C) & (v9 << 8);
  v12 = v3 ^ (2 * ((v11 << 16) & 0xDC20000 ^ v11 ^ ((v11 << 16) ^ 0x543C0000) & (((v10 ^ 0x1C2143C) << 8) & 0xDC20000 ^ 0xD820000 ^ (((v10 ^ 0x1C2143C) << 8) ^ 0x42540000) & (v10 ^ 0x1C2143C)))) ^ 0xBCF22A0E;
  v13 = 1825732043 * (((&v15 | 0xF5932BE9) + (~&v15 | 0xA6CD416)) ^ 0xF50578DF);
  v15 = v1;
  v16 = v12 - v13;
  v17 = v13 + a1 - 1198;
  return (*(v2 + 8 * (a1 + 3170)))(&v15);
}

uint64_t sub_1969B3570@<X0>(uint64_t a1@<X3>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  v7 = *(a2 + v4 + 16);
  v8 = (a1 + a3);
  *v8 = *(a2 + v4);
  v8[1] = v7;
  return (*(v6 + 8 * ((((((v5 - 23) ^ 0xFFFFFFFFFFFFEBB6) & v3) != 32) * (((2 * (v5 - 23)) ^ 0x206A) - 2187)) ^ (v5 - 23))))(a3);
}

uint64_t sub_1969B35C8()
{
  (*(v1 + 8 * (v3 ^ 0x19BB)))(v2);
  *v0 = 0;
  return (STACK[0x800])(LODWORD(STACK[0x400]), 23);
}

uint64_t sub_1969B3648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = v8 - 1;
  v19 = __ROR8__((v13 + v18) & ((5 * (v10 ^ 0x14AEu)) ^ 0xFFFFFFFFFFFFE9A5), 8);
  v20 = ((0x6AF7234D0CC131D4 - v19) & a3) + v19 + v12 - ((v19 + v12) & v14);
  v21 = v20 ^ v17;
  v22 = v20 ^ a5;
  v23 = (__ROR8__(v21, 8) + v22) ^ v16;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ a2;
  v26 = __ROR8__(v25, 8);
  v27 = v25 ^ __ROR8__(v24, 61);
  v28 = (v9 - ((v26 + v27) ^ a6 | v9) + ((v26 + v27) ^ a6 | a7)) ^ a8;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = __ROR8__((((2 * (v30 + v29)) & 0x408B64F38B169598) - (v30 + v29) - 0x2045B279C58B4ACDLL) ^ 0xBEFFD0ACCA6B91C4, 8);
  v32 = (((2 * (v30 + v29)) & 0x408B64F38B169598) - (v30 + v29) - 0x2045B279C58B4ACDLL) ^ 0xBEFFD0ACCA6B91C4 ^ __ROR8__(v29, 61);
  v33 = (((2 * (v31 + v32)) | 0xE86939D20CCACD96) - (v31 + v32) - 0x74349CE9066566CBLL) ^ 0x10F780EB76E1B8A7;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x1A2AEBE44253AF03;
  *(a1 + v18) = *(v13 + v18) ^ 0xEC ^ (((__ROR8__(v35, 8) + (v35 ^ __ROR8__(v34, 61))) ^ v15) >> (8 * ((v13 + v18) & 7)));
  return (*(v11 + 8 * ((363 * (v18 == 0)) ^ v10)))();
}

uint64_t sub_1969B37E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, int a21, int a22, int a23)
{
  v26 = (a23 - 3485) | 0x112;
  v173 = a20 ^ v26 ^ 0x3EFC20F;
  v174 = a4 + 16;
  v172 = *(v24 - 116) < 0xB896830C;
  v27 = (a16 + (a4 + 16));
  v28 = *(a14 + (((a23 + 99) | 0x12) ^ 0x41 ^ v27[6] ^ 0xFCu)) << 8;
  v29 = *(a14 + (v27[2] ^ 0xF0)) << 8;
  v30 = v27[11];
  v31 = *(a15 + (v30 ^ 0x14));
  v32 = v31 ^ v30;
  v33 = (v31 ^ ~v30 | 0xFFFFFF0F) & ((*(a14 + (v27[10] ^ 0x1ALL)) << 8) ^ 0x2DA33050) | (v31 ^ v30) & 0xAF;
  v34 = ((v27[9] ^ 0xC6) + (v27[9] ^ 0x3B) + *(a12 + (v27[9] ^ 0x50)) + 1);
  v35 = ((((v34 << 16) ^ 0xFFDFFFFF) & ((*(a13 + (v27[8] ^ 0x89)) << 24) ^ 0xFEE0B3D1) & 0xFFE0FFFF | ((v34 & 0x1F) << 16)) ^ 0x6BED9969) & (v33 ^ 0xD25C69EE) ^ v33 & 0x8A3D547;
  v36 = *(a13 + (v27[12] ^ 0xA7)) ^ 0xB8;
  v37 = ((((v27[1] ^ 0xF9) - (v27[1] ^ 0xFB) + *(a12 + (v27[1] ^ 0x92))) << 16) ^ 0x8FE3AE7D) & (v29 ^ 0x8FFF017D) | v29 & 0x5100;
  v38 = (*(a15 + (v27[7] ^ 0x7FLL)) - ((2 * *(a15 + (v27[7] ^ 0x7FLL))) & 0x22) - 31215) ^ ((v28 ^ 0x36EB) & 0x200 | v28 & 0x1800) ^ ((v27[7] ^ 0x7E81) & 0x7EFF ^ 0x9B66) & (((v28 ^ 0x36EB) & 0x6AB | v28 & 0xF9FF) ^ 0xA854);
  v39 = *(a13 + (((*v27 ^ 0xDB) - (*v27 ^ 0xB4)) ^ 0xFFFFFFFE) + (*v27 ^ 0xDB));
  v40 = ((v27[13] ^ 0x3B) + (v27[13] ^ 0xC6) + *(a12 + (v27[13] ^ 0xADLL)) + 1) << 16;
  v41 = (v40 ^ 0xFFC0FFFF) & ((((v36 << 24) ^ 0x267BFF19) & ((*(a14 + (v27[14] ^ 0x9CLL)) << 8) ^ 0x3F7B2C19) & 0x3FFFFFFF | ((v36 >> 6) << 30)) ^ 0xBEE33174);
  v42 = v40 & 0x670000;
  LOBYTE(v36) = *(a15 + (v27[3] ^ 0x81)) ^ v27[3];
  v43 = (((v39 ^ 0x62) << 24) ^ 0xEEB7A6E5) & (v37 ^ 0x70E85988) ^ v37 & 0xE485910;
  v44 = v43 >> 8;
  v45 = *(a15 + (v27[15] ^ 0x3CLL)) & 0x1F ^ v27[15] ^ (v42 ^ 0x93F768D ^ v41) & ~*(a15 + (v27[15] ^ 0x3CLL));
  v46 = *(v23 + 8 * (v26 - 2446)) - 8;
  v47 = *(v23 + 8 * (v26 ^ 0xB3D));
  v48 = ((v35 ^ 0x3BF4) >> 8);
  v49 = *(v23 + 8 * (v26 - 2894)) - 4;
  v50 = *(v23 + 8 * (v26 - 2677)) - 12;
  v51 = *(v47 + 4 * ((v45 ^ 0x4A1D3ED1u) >> 16)) ^ *(v46 + 4 * (v39 ^ 0x64u)) ^ (((v48 - (v48 ^ 0x76072D4)) ^ 0xFFFFFFF8) + v48) ^ *(v50 + 4 * (v48 ^ 0x70u)) ^ (*(v49 + 4 * (v38 ^ 0x57u)) - (((v38 ^ 0xDF) + v25) ^ v38 ^ 0xDF));
  v52 = *(v46 + 4 * ((v35 ^ 0x4D243BF4) >> 24)) ^ 0x89DFE440;
  v53 = *(v46 + 4 * (*(a13 + (v27[4] ^ 0xAC) - ((2 * (v27[4] ^ 0xAC)) & 0xDEu) + 111) ^ 2)) ^ ((v45 ^ 0x3ED1) >> 8) ^ *(v47 + 4 * (((v27[1] ^ 0xF9) - (v27[1] ^ 0xFB) + *(a12 + (v27[1] ^ 0x92))) ^ 0xD5u)) ^ (*(v49 + 4 * (v32 ^ 0x84u)) - (((v35 ^ 0xF4) + v25) ^ v35 ^ 0xF4)) ^ *(v50 + 4 * (((v45 ^ 0x3ED1) >> 8) ^ 0x70u));
  LODWORD(v30) = *(v50 + 4 * (BYTE1(v43) ^ 0xBDu)) ^ *(v47 + 4 * (((v27[5] ^ 0xC5) - (v27[5] ^ 0xC7) + *(a12 + ((((a23 + 99) | 0x12) - 117) ^ 0x7Au ^ v27[5]))) ^ 0xA6u)) ^ (*(v49 + 4 * (v45 ^ 0x59u)) - (((v45 ^ 0xD1) + v25) ^ v45 ^ 0xD1)) ^ (v52 - ((2 * v52) & 0x1D0359A6) - 1904104237);
  v171 = (v43 ^ 0x14) & (v36 ^ 0x59) ^ v36 & 0x1E;
  v54 = v53 ^ 0x76CA9CA0;
  v55 = *(v47 + 4 * ((v35 ^ 0x4D243BF4) >> 16)) ^ *(v46 + 4 * ((v45 ^ 0x4A1D3ED1u) >> 24)) ^ (*(v49 + 4 * (v36 ^ 0xC4u)) - (((v171 ^ 0xD) + v25) ^ v171 ^ 0xD)) ^ *(v50 + 4 * (HIBYTE(v38) ^ 0x3Du));
  v56 = (v53 ^ 0x76CA9CA0u) >> 24;
  v57 = *(v47 + 4 * (BYTE2(v55) ^ 0x49u)) ^ *(v46 + 4 * ((v51 ^ 0xD00EB55E) >> 24)) ^ (*(v49 + 4 * (v53 ^ 0x28u)) - (((v53 ^ 0xA0) + v25) ^ v53 ^ 0xA0)) ^ *(v50 + 4 * (BYTE1(v30) ^ 0x9Au));
  v58 = *(v47 + 4 * (BYTE2(v51) ^ 6u)) ^ *(v46 + 4 * v56) ^ *(v50 + 4 * (BYTE1(v55) ^ 0xC6u)) ^ (*(v49 + 4 * ((v30 ^ v44) ^ 0xB7u)) - ((((v30 ^ v44) ^ 0x3F) + v25) ^ (v30 ^ v44) ^ 0x3F));
  v59 = v54 >> 8;
  LOBYTE(v44) = v57 ^ BYTE1(v30);
  v60 = *(v50 + 4 * (BYTE1(v54) ^ 0x70u));
  v61 = *(v47 + 4 * BYTE2(v54)) ^ *(v46 + 4 * (BYTE3(v30) ^ 0xE7)) ^ (*(v49 + 4 * ((v55 ^ HIBYTE(v38)) ^ 0xF8u)) - ((((v55 ^ HIBYTE(v38)) ^ 0x70) + v25) ^ (v55 ^ HIBYTE(v38)) ^ 0x70)) ^ *(v50 + 4 * ((-((v51 ^ 0xB55E) >> 8) ^ 0x7EC74417 ^ (112 - (((v51 ^ 0xB55E) >> 8) ^ 0x70)) ^ (((v51 ^ 0xB55E) >> 8) + 2126988311 - (((v51 ^ 0xD00EB55E) >> 7) & 0x2E))) + 112));
  LODWORD(v30) = *(v47 + 4 * (BYTE2(v30) ^ 0x30u)) ^ *(v46 + 4 * (HIBYTE(v55) ^ 0xFA)) ^ v60 ^ (*(v49 + 4 * (v51 ^ 0xD6u)) - (((v51 ^ 0x5E) + v25) ^ v51 ^ 0x5E));
  v62 = *(v46 + 4 * (HIBYTE(v57) ^ 0x3D)) ^ BYTE1(v61) ^ *(v47 + 4 * (BYTE2(v30) ^ 0xBDu)) ^ *(v50 + 4 * (BYTE1(v61) ^ 0xC8u)) ^ (*(v49 + 4 * ((v58 ^ BYTE1(v55)) ^ 0xFBu)) - ((((v58 ^ BYTE1(v55)) ^ 0x73) + v25) ^ (v58 ^ BYTE1(v55)) ^ 0x73));
  v63 = *(v46 + 4 * (HIBYTE(v61) ^ 0x63));
  v64 = *(v47 + 4 * (BYTE2(v57) ^ 0xDu)) ^ *(v50 + 4 * (BYTE1(v30) ^ 0xE2u)) ^ *(v46 + 4 * (HIBYTE(v58) ^ 0x54)) ^ (*(v49 + 4 * ((v61 ^ ((v51 ^ 0xB55E) >> 8)) ^ 0xA6u)) - ((((v61 ^ ((v51 ^ 0xB55E) >> 8)) ^ 0x2E) + v25) ^ (v61 ^ ((v51 ^ 0xB55E) >> 8)) ^ 0x2E));
  v65 = *(v49 + 4 * ((v30 ^ v59) ^ 0x3Bu)) - ((((v30 ^ v59) ^ 0xB3) + v25) ^ (v30 ^ v59) ^ 0xB3);
  v66 = BYTE1(v57);
  v67 = *(v50 + 4 * (v66 ^ 8u));
  v68 = v64 ^ BYTE1(v30);
  v69 = *(v47 + 4 * (BYTE2(v61) ^ 0x3Eu)) ^ *(v46 + 4 * (BYTE3(v30) ^ 0xEF)) ^ *(v50 + 4 * (BYTE1(v58) ^ 0xADu)) ^ (*(v49 + 4 * (v44 ^ 0xDFu)) - (((v44 ^ 0x57) + v25) ^ v44 ^ 0x57));
  LODWORD(v30) = v66 ^ *(v47 + 4 * (BYTE2(v58) ^ 0x36u));
  LOBYTE(v44) = v69 ^ BYTE1(v58);
  v70 = v30 ^ v63 ^ v67 ^ v65 ^ 0xC292E37C;
  v71 = *(v47 + 4 * ((BYTE2(v69) ^ 0x11) - ((v69 >> 15) & 0x10) + 8)) ^ *(v46 + 4 * ((v62 ^ 0xD91DAD9u) >> 24)) ^ *(v50 + 4 * (BYTE1(v70) ^ 0x70u)) ^ (*(v49 + 4 * (v68 ^ 0x8Du)) - (((v68 ^ 5) + v25) ^ v68 ^ 5));
  LODWORD(v30) = (v30 ^ v63 ^ v67 ^ v65 ^ 0x7C);
  LODWORD(v30) = *(v47 + 4 * ((v62 ^ 0xD91DAD9u) >> 16)) ^ *(v50 + 4 * (BYTE1(v69) ^ 0xDCu)) ^ (*(v49 + 4 * (v30 ^ 0x88)) - ((v30 + v25) ^ v30)) ^ *(v46 + 4 * ((v68 ^ 0x9CA92305) >> 24));
  LOBYTE(v64) = v71 ^ BYTE1(v70);
  LOBYTE(v67) = v30 ^ BYTE1(v69);
  v72 = *(v47 + 4 * (BYTE2(v64) ^ 0xA1u)) ^ *(v46 + 4 * HIBYTE(v70)) ^ *(v50 + 4 * (((v62 ^ 0xDAD9) >> 8) ^ 0x70u)) ^ (*(v49 + 4 * (v44 ^ 0x27u)) - (((v44 ^ 0xAF) + v25) ^ v44 ^ 0xAF));
  LOBYTE(v39) = v72 ^ ((v62 ^ 0xDAD9) >> 8);
  v73 = *(v47 + 4 * BYTE2(v70)) ^ *(v46 + 4 * (HIBYTE(v69) ^ 0x79)) ^ (*(v49 + 4 * (v62 ^ 0x51u)) - (((v62 ^ 0xD9) + v25) ^ v62 ^ 0xD9)) ^ *(v50 + 4 * (((v68 ^ 0x2305) >> 8) ^ 0x70u));
  v74 = v71 >> 8;
  v75 = *(v46 + 4 * (HIBYTE(v71) ^ 0x42)) ^ BYTE1(v72) ^ *(v47 + 4 * (BYTE2(v73) ^ 0x11u)) ^ *(v50 + 4 * (BYTE1(v72) ^ 0x36u)) ^ (*(v49 + 4 * (v67 ^ 0x3Du)) - (((v67 ^ 0xB5) + v25) ^ v67 ^ 0xB5));
  v76 = *(v49 + 4 * (v39 ^ 0xF4u)) - (((v39 ^ 0x7C) + v25) ^ v39 ^ 0x7C);
  v77 = (BYTE1(v73) | 0xC4BB8E00) ^ *(v46 + 4 * (BYTE3(v30) ^ 0x64)) ^ *(v47 + 4 * (BYTE2(v71) ^ 0xBu)) ^ *(v50 + 4 * (BYTE1(v73) ^ 0xB9u)) ^ (v76 - ((2 * v76) & 0xD0348BCA) - 400931355);
  v78 = *(v50 + 4 * (BYTE1(v71) ^ 0x4Cu));
  v79 = *(v47 + 4 * (BYTE2(v30) ^ 0xAAu)) ^ *(v46 + 4 * (HIBYTE(v72) ^ 0xAB));
  v80 = v30 >> 8;
  v81 = v77 ^ 0x2CA1CB2C;
  v82 = (-v78 ^ 0x23FC8884 ^ (v78 + 603752580 - ((2 * v78) & 0x47F91108)) ^ ((v79 ^ 0x71DB5A23) - ((((v78 ^ v79) & 0x24AA6DED ^ 0x55A2C6DF) & ((v78 ^ v79) & 0xDB559212 ^ 0x2EEBEDFD) | (v78 ^ v79) & 0x8A551000) ^ 0x75799EFE))) + (v79 ^ 0x71DB5A23);
  v83 = BYTE2(v72) ^ 0xA9;
  v84 = v82 ^ (*(v49 + 4 * ((v73 ^ ((v68 ^ 0x2305) >> 8)) ^ 0x11u)) - ((((v73 ^ ((v68 ^ 0x2305) >> 8)) ^ 0x99) + v25) ^ (v73 ^ ((v68 ^ 0x2305) >> 8)) ^ 0x99));
  v77 ^= 0xFF920EA4;
  LODWORD(v30) = *(v47 + 4 * v83) ^ *(v46 + 4 * (HIBYTE(v73) ^ 0x4E)) ^ *(v50 + 4 * (BYTE1(v30) ^ 0xFu)) ^ (*(v49 + 4 * (v64 ^ 0xF6u)) - (((v64 ^ 0x7E) + v25) ^ v64 ^ 0x7E));
  LOBYTE(v83) = v30 ^ v80;
  v85 = *(v47 + 4 * (BYTE2(v30) ^ 0x22u)) ^ *(v46 + 4 * ((v75 ^ 0x517CE293u) >> 24)) ^ (*(v49 + 4 * v81) - ((v77 + v25) ^ v77)) ^ BYTE1(v84) ^ *(v50 + 4 * (BYTE1(v84) ^ 0x95u));
  v86 = *(v47 + 4 * ((v75 ^ 0x517CE293u) >> 16)) ^ *(v50 + 4 * (BYTE1(v30) ^ 0x79u)) ^ *(v46 + 4 * HIBYTE(v77)) ^ (*(v49 + 4 * ((v84 ^ v74) ^ 0x1Du)) - ((((v84 ^ v74) ^ 0x95) + v25) ^ (v84 ^ v74) ^ 0x95));
  v87 = ((v75 ^ 0xE293) >> 8);
  LOBYTE(v80) = v86 ^ BYTE1(v30);
  v88 = *(v47 + 4 * (BYTE2(v81) ^ 0x3Bu)) ^ *(v50 + 4 * (v87 ^ 0x70u)) ^ (*(v49 + 4 * (v83 ^ 0xFDu)) - (((v83 ^ 0x75) + v25) ^ v83 ^ 0x75)) ^ *(v46 + 4 * (HIBYTE(v84) ^ 0x4B));
  LOBYTE(v84) = *(v47 + 4 * (BYTE2(v81) ^ 0x3Bu)) ^ *(v50 + 4 * (v87 ^ 0x70u)) ^ (*(v49 + 4 * (v83 ^ 0xFDu)) - (((v83 ^ 0x75) + v25) ^ v83 ^ 0x75)) ^ *(v46 + 4 * (HIBYTE(v84) ^ 0x4B)) ^ v87;
  v89 = BYTE1(v77);
  LODWORD(v30) = (*(v49 + 4 * (v75 ^ 0x1Bu)) - (((v75 ^ 0x93) + v25) ^ v75 ^ 0x93)) ^ *(v46 + 4 * (BYTE3(v30) ^ 0x10)) ^ *(v50 + 4 * (v89 ^ 0x70u)) ^ *(v47 + 4 * (BYTE2(v84) ^ 0x42u));
  HIDWORD(v90) = v30 ^ v89;
  LODWORD(v90) = v30;
  HIDWORD(v90) = (v90 >> 14) ^ 0x3DEA050;
  LODWORD(v90) = HIDWORD(v90);
  v91 = ((v90 >> 18) & 0x2000 | 0x2ACB8535) ^ (v90 >> 18) & 0xFFFFDFFF;
  v92 = *(v47 + 4 * ((v91 ^ 0x5DFEB5ADu) >> 16)) ^ *(v46 + 4 * ((v85 ^ 0xF27376AB) >> 24)) ^ *(v50 + 4 * (BYTE1(v88) ^ 0x8Cu)) ^ (*(v49 + 4 * (v80 ^ 0x33u)) - (((v80 ^ 0xBB) + v25) ^ v80 ^ 0xBB));
  LOWORD(v30) = v92 ^ BYTE1(v88);
  v93 = *(v47 + 4 * ((v85 ^ 0xF27376AB) >> 16)) ^ *(v46 + 4 * (HIBYTE(v86) ^ 0x77)) ^ (*(v49 + 4 * (v84 ^ 0x65u)) - (((v84 ^ 0xED) + v25) ^ v84 ^ 0xED)) ^ *(v50 + 4 * (((v91 ^ 0xB5AD) >> 8) ^ 0x70u));
  v94 = *(v46 + 4 * (((v88 ^ v87 ^ 0x5630FCEDu) >> ((v88 ^ v87) & 0x18 ^ 8) >> ((v88 ^ v87) & 0x18 ^ 0x10)) ^ 0x4Au)) ^ __ROR4__(__ROR4__(((v85 ^ 0x76AB) >> 8) ^ 0xF89F8D2B, 2) ^ 0x53A11C91, 30) ^ *(v47 + 4 * (BYTE2(v86) ^ 0xDDu)) ^ *(v50 + 4 * (((v85 ^ 0x76AB) >> 8) ^ 0x70u)) ^ (*(v49 + 4 * ((v90 >> 18) ^ 0x10u)) - ((((v90 >> 18) ^ 0x98) + v25) ^ (v90 >> 18) ^ 0x98));
  v95 = v85 ^ 0xAB;
  BYTE1(v74) = BYTE1(v93) ^ 0x51;
  v96 = *(v46 + 4 * ((v91 ^ 0x5DFEB5ADu) >> 24)) ^ BYTE1(v86) ^ *(v47 + 4 * (BYTE2(v88) ^ 0x38u)) ^ *(v50 + 4 * (BYTE1(v86) ^ 0xD1u)) ^ (*(v49 + 4 * (((v95 - (v85 ^ 0x23)) ^ 0xFFFFFFF0) + v95)) - ((v95 + v25) ^ v95));
  v97 = v93 ^ 0x13 ^ ((v91 ^ 0xB5AD) >> 8);
  v98 = ((v94 ^ 0x24DE) >> 8);
  v99 = *(v47 + 4 * ((v96 ^ 0x7C834ACCu) >> 16)) ^ *(v46 + 4 * (HIBYTE(v92) ^ 0x19)) ^ *(v50 + 4 * (v98 ^ 0x70u)) ^ (*(v49 + 4 * ((((v97 ^ 0xB902AA44) - (v97 ^ 0x88)) ^ 0xFFFFFFF8) + (v97 ^ 0xB902AA44))) - ((v97 + v25) ^ v97));
  v100 = v99 ^ v98;
  v101 = *(v47 + 4 * (BYTE2(v92) ^ 0xC5u)) ^ ((v96 ^ 0x4ACC) >> 8) ^ *(v46 + 4 * (HIBYTE(v93) ^ 0x70)) ^ *(v50 + 4 * (((v96 ^ 0x4ACC) >> 8) ^ 0x70u)) ^ (*(v49 + 4 * (v94 ^ 0x56u)) - (((v94 ^ 0xDE) + v25) ^ v94 ^ 0xDE));
  v102 = *(v46 + 4 * ((v94 ^ 0x286424DEu) >> 24)) ^ ((v30 ^ 0x9C84) >> 8) ^ *(v47 + 4 * (BYTE2(v93) ^ 0x34u)) ^ *(v50 + 4 * (((v30 ^ 0x9C84) >> 8) ^ 0x70u)) ^ (*(v49 + 4 * (v96 ^ 0x44u)) - (((v96 ^ 0xCC) + v25) ^ v96 ^ 0xCC));
  v103 = BYTE1(v74);
  v104 = *(v50 + 4 * (BYTE1(v74) ^ 0x70u));
  v105 = v101 ^ 0xD66B4B84;
  v106 = BYTE1(v100) ^ 0xB5;
  HIDWORD(v90) = v103 ^ *(v46 + 4 * (((v96 ^ 0x7C834ACCu) >> 24) ^ 0x4A)) ^ *(v47 + 4 * ((v94 ^ 0x286424DEu) >> 16)) ^ v104 ^ (*(v49 + 4 * (v30 ^ 0xCu)) - (((v30 ^ 0x84) + v25) ^ v30 ^ 0x84)) ^ 0x76BB28F7;
  LODWORD(v90) = HIDWORD(v90);
  LODWORD(v30) = v90 >> 4;
  BYTE2(v91) = BYTE2(v102) ^ 0xD9;
  HIDWORD(v90) = v30 ^ 0x3279B1F6;
  LODWORD(v90) = v30 ^ 0x3279B1F6;
  v107 = (v90 >> 28) & 0xFFFF7FFF ^ ((((v30 >> 11) & 1) << 15) | 0x464E20A6);
  v108 = ((v102 ^ 0xC4C) >> 8);
  v109 = *(v47 + 4 * (BYTE2(v107) ^ 8u)) ^ *(v46 + 4 * (HIBYTE(v99) ^ 0x40)) ^ *(v50 + 4 * (v108 ^ 0x70u)) ^ (*(v49 + 4 * (v101 ^ 0xCu)) - (((v101 ^ 0x84) + v25) ^ v101 ^ 0x84));
  v110 = *(v47 + 4 * ((v100 ^ 0xA52B5D5u) >> 16)) ^ *(v46 + 4 * (HIBYTE(v101) ^ 0x9C)) ^ (*(v49 + 4 * (v102 ^ 0xC4u)) - (((v102 ^ 0x4C) + v25) ^ v102 ^ 0x4C)) ^ BYTE1(v107) ^ *(v50 + 4 * (BYTE1(v107) ^ 0x70u));
  v111 = *(v47 + 4 * BYTE2(v105)) ^ *(v46 + 4 * ((v102 ^ 0x1BD90C4Cu) >> 24)) ^ *(v50 + 4 * (((v100 ^ 0xB5D5) >> 8) ^ 0x70u)) ^ (*(v49 + 4 * (v107 ^ 0x88u)) - ((v107 + v25) ^ v107));
  v112 = BYTE1(v105);
  v113 = *(v50 + 4 * (v112 ^ 0x70u));
  v114 = *(v47 + 4 * (BYTE2(v91) ^ 8u)) ^ *(v46 + 4 * (HIBYTE(v107) ^ 0x4A));
  v115 = v114 ^ 0x71DB5A23;
  if ((v113 & 0x40 & v114) != 0)
  {
    v116 = -(v113 & 0x40);
  }

  else
  {
    v116 = v113 & 0x40;
  }

  v117 = v116 + v115;
  v118 = v110 ^ 0xD18E8A5E;
  v119 = v112 ^ v113 & 0xFFFFFFBF ^ (*(v49 + 4 * (v100 ^ 0x5Du)) - (((v100 ^ 0xD5) + v25) ^ v100 ^ 0xD5)) ^ 0x3ADB3575 ^ v117;
  v120 = *(v23 + 8 * (v26 ^ 0xACB)) - 4;
  v121 = *(v120 + 4 * (HIBYTE(v109) ^ 0xC6)) ^ 0xAF93E01D;
  v122 = *(v23 + 8 * (v26 ^ 0xB9D)) - 4;
  v123 = -1731498383 * *(v122 + 4 * BYTE2(v119));
  v124 = *(v23 + 8 * (v26 - 2699)) - 8;
  HIDWORD(v126) = *(v124 + 4 * (BYTE1(v111) ^ 0x33u));
  LODWORD(v126) = HIDWORD(v126);
  v125 = v126 >> 19;
  v127 = *(v23 + 8 * (v26 ^ 0xB22));
  v128 = (v123 >> 3) & 0x1DF94769 ^ (32 * v121) ^ *(v127 + 4 * (v110 ^ 0x79u)) ^ (16 * v125 - 676508976);
  HIDWORD(v126) = *(v124 + 4 * BYTE1(v119));
  LODWORD(v126) = HIDWORD(v126);
  v129 = v126 >> 19;
  v130 = *(v120 + 4 * (HIBYTE(v111) ^ 0x8A)) ^ 0xAF93E01D;
  v131 = -1731498383 * *(v122 + 4 * ((v110 ^ 0xD18E8A5E) >> 16));
  v132 = v130 ^ (32 * v130) ^ v131 ^ (v131 >> 3) & 0x1DF94769;
  v133 = v108 ^ 0xD5E51CAA ^ v109;
  HIDWORD(v126) = *(v124 + 4 * (BYTE1(v109) ^ 0x69u));
  LODWORD(v126) = HIDWORD(v126);
  v134 = (16 * (v126 >> 19) - 676508976) ^ (v126 >> 19);
  v135 = v132 & 0x8000000;
  if ((v132 & 0x8000000 & v134) != 0)
  {
    v135 = -v135;
  }

  v136 = v135 + v134;
  v137 = *(v120 + 4 * HIBYTE(v118));
  v138 = *(v120 + 4 * HIBYTE(v119));
  v139 = *(v122 + 4 * BYTE2(v133));
  v140 = v111 ^ v106;
  v141 = *(v122 + 4 * (BYTE2(v111) ^ 0xDu));
  v142 = *(v124 + 4 * BYTE1(v118));
  v143 = *(v127 + 4 * (v140 ^ 0xE0u));
  v144 = v132 & 0xF7FFFFFF ^ *(v127 + 4 * v119) ^ v136;
  HIDWORD(v146) = v142;
  LODWORD(v146) = v142;
  v145 = v146 >> 19;
  v147 = *(v127 + 4 * v133);
  v148 = v147 ^ (32 * (v138 ^ 0xAF93E01D)) ^ (16 * v145 - 676508976);
  v149 = v128 - ((2 * v128) & 0x2B08AE74);
  v150 = v121 ^ v173 ^ v125;
  v151 = v148 + 1240434955 - 2 * (v148 & 0x49EF890F ^ v147 & 4);
  v152 = v138 ^ 0xAF93E01D ^ a19 ^ 0x757A455F ^ (-1731498383 * v141) ^ v145 ^ ((-1731498383 * v141) >> 3) & 0x1DF94769;
  v153 = v137 ^ 0xAF93E01D ^ a21 ^ 0xBA1B044 ^ (32 * (v137 ^ 0xAF93E01D)) ^ (-1731498383 * v139) ^ v143 ^ v129 ^ ((-1731498383 * v139) >> 3) & 0x1DF94769 ^ (16 * (((2 * v129) & 0xAF5A95A) + (v129 ^ 0xD7AD4AD)));
  v154 = (v144 - ((2 * v144) & 0x978FCBFA) - 876091907) ^ a22 ^ 0xE2C953AE;
  v155 = *(v23 + 8 * (v26 - 2785)) - 4;
  v156 = *(v155 + (HIBYTE(v153) ^ 0x41));
  v27[4] = v156 ^ (v156 >> 4) ^ 0x5F;
  v157 = *(v155 + (HIBYTE(v154) ^ 0xE3));
  v158 = v152 ^ v151;
  v27[8] = v157 ^ (v157 >> 4) ^ 0x23;
  v159 = *(v23 + 8 * (v26 - 2555)) - 12;
  LOBYTE(v151) = *(v159 + ((v152 ^ v151) ^ 0x48));
  v160 = v150 ^ v123;
  v27[15] = v151 ^ 0x78;
  v161 = *(v23 + 8 * (v26 - 2845)) - 4;
  v162 = *(v161 + (BYTE1(v153) ^ 0x3D) - ((2 * (BYTE1(v153) ^ 0x3D)) & 0x18u) + 12);
  v27[6] = ((v162 >> 3) | (32 * v162)) ^ 0x90 ^ (((v162 >> 3) | (32 * v162)) >> 3) & 0x15;
  v163 = *(v23 + 8 * (v26 ^ 0xA66)) - 12;
  v27[9] = (*(v163 + (BYTE2(v154) ^ 0x57)) - 54) ^ 0x7B;
  v164 = *(v161 + (BYTE1(v158) ^ 0x81));
  v27[14] = ((v164 >> 3) | (32 * v164)) ^ 0x1A ^ (((v164 >> 3) | (32 * v164)) >> 3) & 0x15;
  v165 = *(v155 + (HIBYTE(v158) ^ 0x52));
  v27[12] = v165 ^ (v165 >> 4) ^ 0x23;
  v27[7] = *(v159 + (v153 ^ 0xE5)) ^ 0x35;
  v166 = v160 ^ (v149 - 1786489030);
  v27[13] = (*(v163 + (BYTE2(v158) ^ 0xAELL)) - 54) ^ 0x71;
  v167 = *(v161 + (BYTE1(v154) ^ 0xA6));
  v27[10] = ((v167 >> 3) | (32 * v167)) ^ 9 ^ (((v167 >> 3) | (32 * v167)) >> 3) & 0x15;
  v27[3] = *(v159 + (v166 ^ 0x5CLL)) ^ 0xA6;
  LODWORD(v155) = *(v155 + (HIBYTE(v166) ^ 0xB3));
  *v27 = v155 ^ (v155 >> 4) ^ 0x7D;
  v27[11] = *(v159 + (v154 ^ 0x3ELL)) ^ 7;
  v168 = *(v161 + (BYTE1(v166) ^ 0xD9));
  v27[2] = ((v168 >> 3) | (32 * v168)) ^ 0x9D ^ (((v168 >> 3) | (32 * v168)) >> 3) & 0x15;
  v27[1] = (*(v163 + (BYTE2(v166) ^ 0x7ELL)) - 54) ^ 0xA8;
  v27[5] = (*(v163 + (BYTE2(v153) ^ 0x44)) - 54) ^ 0x5B;
  v169 = v174 - 1198095588 < *(v24 - 116);
  if (v172 != v174 - 1198095588 < 0xB896830C)
  {
    v169 = v172;
  }

  return (*(a17 + 8 * ((4698 * v169) ^ v26)))(9, 166, 35, v174, 21, 1240434955, v137, v138, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_1969B3848@<X0>(uint64_t a1@<X5>, _DWORD *a2@<X8>)
{
  v4 = (2 * (v2 ^ 0x1AE3) + 3053) | 0x654;
  *(v3 + 80) = 1;
  v5 = (v4 - 447670590) & 0x1AAED7FF;
  v6 = v4 - 914;
  *(v3 + 84) = *a2;
  v7 = STACK[0x568];
  STACK[0x4F0] = &STACK[0x9A0] + STACK[0x568];
  STACK[0x568] = v7 + ((v4 - 376592027) & 0x1672487F ^ 0x862);
  v8 = STACK[0x7B0];
  STACK[0x500] = STACK[0x7B0];
  STACK[0x6A8] = 0;
  STACK[0x698] = 0;
  STACK[0x790] = 0;
  LODWORD(STACK[0x51C]) = 0;
  STACK[0x760] = 0;
  STACK[0x418] = 0;
  v9 = (*(a1 + 8 * (v4 ^ 0xCB2)))();
  if (v8)
  {
    v10 = LODWORD(STACK[0x448]) == v5 - 1311;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  return (*(STACK[0x370] + 8 * ((25 * v11) ^ v6)))(v9);
}

uint64_t sub_1969B3870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (v9 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = -v9;
  }

  v13 = v8 + v7;
  if (v13 >= 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = -v13;
  }

  return (*(v11 + 8 * ((((v10 ^ 0xDF3) - 4251 + 37 * (v10 ^ 0xDF3)) * (v12 > v14)) ^ v10)))(a1);
}

void sub_1969B38C0(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  v25 = ((2 * ((v24 - 144) & 0x4FECF0F0) - (v24 - 144) - 1340928246) ^ 0x65FDEE9B) * v23;
  *(v24 - 144) = v20 - v25 + 2750;
  *(v24 - 120) = v25 + v21 + 568546849 + ((v20 - 2361) | 0x818);
  *(v24 - 136) = &a20;
  *(v24 - 128) = a1;
  (*(v22 + 8 * (v20 ^ 0x13C4)))(v24 - 144);
  JUMPOUT(0x1969B3944);
}

uint64_t sub_1969B3F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, uint64_t a20)
{
  a20 = a14;
  a19 = v20 + 5463 - 1790939281 * (((&a19 | 0x58E553A2) - &a19 + (&a19 & 0xA71AAC58)) ^ 0xA03973E3);
  (*(v23 + 8 * (v20 + 6189)))(&a19, a2, a3, a4, a5, a6, a7, a8);
  a19 = v20 + 5463 - 1790939281 * ((&a19 + 1960594741 - 2 * (&a19 & 0x74DC4D35)) ^ 0x8C006D74);
  a20 = a16;
  v24 = (*(v23 + 8 * (v20 + 6189)))(&a19);
  return (*(v23 + 8 * (((v21 == v22) * (((v20 - 88179327) & 0x9D6BBA7D) + 1742068269)) ^ v20)))(v24);
}

uint64_t sub_1969B4068(double a1, double a2, double a3, double a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v78 = v67 - 16;
  *&v79 = v65 + v78 + 11;
  *(&v79 + 1) = v65 + v78 + 10;
  *&STACK[0x330] = v79;
  *&v79 = v65 + v78 + 13;
  *(&v79 + 1) = v65 + v78 + 12;
  *&STACK[0x320] = v79;
  v80.i64[0] = v65 + v78 + 21;
  v80.i64[1] = v65 + v78 + 20;
  v81.i64[0] = v65 + v78 + 23;
  v81.i64[1] = v65 + v78 + 22;
  v82.i64[0] = v65 + v78 + 25;
  v82.i64[1] = v65 + v78 + 24;
  v83.i64[0] = v65 + v78 + v69 + 16;
  v83.i64[1] = v65 + v78 + 18;
  v84 = *&STACK[0x2F0];
  v85 = vandq_s8(v83, *&STACK[0x2F0]);
  v86 = vandq_s8(v82, *&STACK[0x2F0]);
  v87 = vandq_s8(v81, *&STACK[0x2F0]);
  v88 = vandq_s8(v80, *&STACK[0x2F0]);
  v89 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v90 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v91 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v92 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v93 = *&STACK[0x2D0];
  v94 = vbslq_s8(v72, vsubq_s64(*&STACK[0x2D0], v89), vaddq_s64(v89, *&STACK[0x350]));
  v95 = vbslq_s8(v72, vsubq_s64(*&STACK[0x2D0], v90), vaddq_s64(v90, *&STACK[0x350]));
  v96 = vbslq_s8(v72, vsubq_s64(*&STACK[0x2D0], v91), vaddq_s64(v91, *&STACK[0x350]));
  v97 = vbslq_s8(v72, vsubq_s64(*&STACK[0x2D0], v92), vaddq_s64(v92, *&STACK[0x350]));
  v98 = veorq_s8(v95, v76);
  v99 = veorq_s8(v94, v76);
  v100 = veorq_s8(v94, a6);
  v101 = veorq_s8(v95, a6);
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100), a7);
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v101), a7);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v105 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v105);
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v106, a8), vorrq_s8(v106, a65)), a65), v71);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v107, a8), vorrq_s8(v107, a65)), a65), v71);
  v110 = vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL);
  v111 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v112 = veorq_s8(v108, v110);
  v113 = vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL);
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v112);
  v115 = vaddq_s64(v113, v111);
  v117 = *&STACK[0x240];
  v116 = *&STACK[0x250];
  v118 = veorq_s8(vaddq_s64(vsubq_s64(v115, vandq_s8(vaddq_s64(v115, v115), v73)), *&STACK[0x250]), *&STACK[0x240]);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(v114, vandq_s8(vaddq_s64(v114, v114), v73)), *&STACK[0x250]), *&STACK[0x240]);
  v120 = vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL);
  v121 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v122 = veorq_s8(v118, v120);
  v123 = vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL);
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v122);
  v125 = vaddq_s64(v123, v121);
  v126 = *&STACK[0x340];
  v127 = *&STACK[0x220];
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v125, v125), a5), v125), *&STACK[0x340]), *&STACK[0x220]);
  v129 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v124, v124), a5), v124), *&STACK[0x340]), *&STACK[0x220]);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v131 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v132 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v131);
  v134 = veorq_s8(vaddq_s64(v132, v130), v75);
  v135 = veorq_s8(v133, v75);
  v136 = vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL);
  v137 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v138 = veorq_s8(v134, v136);
  v139 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v138);
  v141 = veorq_s8(vaddq_s64(v139, v137), v77);
  v142 = veorq_s8(v140, v77);
  v143.i64[0] = v65 + v78 + 15;
  v143.i64[1] = v65 + v78 + 14;
  v144 = *&STACK[0x2E0];
  v234.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL))), v74), vnegq_s64(vandq_s8(vshlq_n_s64(v80, 3uLL), *&STACK[0x2E0])));
  v234.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL))), v74), vnegq_s64(vandq_s8(vshlq_n_s64(v81, 3uLL), *&STACK[0x2E0])));
  v145 = veorq_s8(v96, v76);
  v146 = veorq_s8(v96, a6);
  v147 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v146), a7);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v148);
  v150 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v149, a8), vorrq_s8(v149, a65)), a65), v71);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v152 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151);
  v153 = veorq_s8(vaddq_s64(vsubq_s64(v152, vandq_s8(vaddq_s64(v152, v152), v73)), *&STACK[0x250]), *&STACK[0x240]);
  v154 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v155 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v154);
  v156 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v155, v155), a5), v155), *&STACK[0x340]), *&STACK[0x220]);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157), v75);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v160 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159), v77);
  v161 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v162 = vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL);
  v160.i64[0] = v65 + v78 + 17;
  v160.i64[1] = v65 + v78 + 16;
  *&STACK[0x310] = v160;
  v163 = vaddq_s64(v162, v161);
  v164 = vandq_s8(v160, v84);
  v234.val[0] = vshlq_u64(veorq_s8(v163, v74), vnegq_s64(vandq_s8(vshlq_n_s64(v82, 3uLL), v144)));
  v165 = veorq_s8(v97, v76);
  v166 = veorq_s8(v97, a6);
  v167 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166), a7);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v169, a8), vorrq_s8(v169, a65)), a65), v71);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171);
  v173 = veorq_s8(vaddq_s64(vsubq_s64(v172, vandq_s8(vaddq_s64(v172, v172), v73)), v116), v117);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v175, v175), a5), v175), v126), v127);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v178 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177), v75);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v180 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179), v77);
  v181 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v182 = vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL);
  v183 = vandq_s8(v143, v84);
  v184 = vaddq_s64(v182, v181);
  v185 = vandq_s8(*&STACK[0x320], v84);
  v234.val[3] = vshlq_u64(veorq_s8(v184, v74), vnegq_s64(vandq_s8(vshlq_n_s64(v83, 3uLL), v144)));
  v186 = vandq_s8(*&STACK[0x330], v84);
  v187 = vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL);
  v188 = vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL);
  v189 = vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL);
  v190 = vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL);
  v191 = vbslq_s8(v72, vsubq_s64(v93, v187), vaddq_s64(v187, *&STACK[0x350]));
  v192 = vbslq_s8(v72, vsubq_s64(v93, v188), vaddq_s64(v188, *&STACK[0x350]));
  v193 = vbslq_s8(v72, vsubq_s64(v93, v189), vaddq_s64(v189, *&STACK[0x350]));
  v194 = vbslq_s8(v72, vsubq_s64(v93, v190), vaddq_s64(v190, *&STACK[0x350]));
  v188.i64[0] = vqtbl4q_s8(v234, *&STACK[0x300]).u64[0];
  v234.val[2] = veorq_s8(v192, v76);
  v234.val[3] = veorq_s8(v191, v76);
  v234.val[0] = veorq_s8(v191, a6);
  v195 = veorq_s8(v192, a6);
  v234.val[3] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234.val[3], 0x38uLL), v234.val[3], 8uLL), v234.val[0]), a7);
  v234.val[2] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234.val[2], 0x38uLL), v234.val[2], 8uLL), v195), a7);
  v196 = veorq_s8(v234.val[2], vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL));
  v234.val[0] = veorq_s8(v234.val[3], vsraq_n_u64(vshlq_n_s64(v234.val[0], 3uLL), v234.val[0], 0x3DuLL));
  v234.val[1] = vsraq_n_u64(vshlq_n_s64(v234.val[2], 0x38uLL), v234.val[2], 8uLL);
  v234.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234.val[3], 0x38uLL), v234.val[3], 8uLL), v234.val[0]);
  v234.val[3] = vaddq_s64(v234.val[1], v196);
  v234.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v234.val[2], a8), vorrq_s8(v234.val[2], a65)), a65), v71);
  v234.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v234.val[3], a8), vorrq_s8(v234.val[3], a65)), a65), v71);
  v197 = veorq_s8(v234.val[3], vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL));
  v234.val[0] = veorq_s8(v234.val[2], vsraq_n_u64(vshlq_n_s64(v234.val[0], 3uLL), v234.val[0], 0x3DuLL));
  v234.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234.val[2], 0x38uLL), v234.val[2], 8uLL), v234.val[0]);
  v234.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234.val[3], 0x38uLL), v234.val[3], 8uLL), v197);
  v234.val[3] = veorq_s8(vaddq_s64(vsubq_s64(v234.val[3], vandq_s8(vaddq_s64(v234.val[3], v234.val[3]), v73)), v116), v117);
  v234.val[2] = veorq_s8(vaddq_s64(vsubq_s64(v234.val[2], vandq_s8(vaddq_s64(v234.val[2], v234.val[2]), v73)), v116), v117);
  v234.val[1] = vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL);
  v198 = veorq_s8(v234.val[2], vsraq_n_u64(vshlq_n_s64(v234.val[0], 3uLL), v234.val[0], 0x3DuLL));
  v234.val[0] = veorq_s8(v234.val[3], v234.val[1]);
  v234.val[1] = vsraq_n_u64(vshlq_n_s64(v234.val[2], 0x38uLL), v234.val[2], 8uLL);
  v234.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234.val[3], 0x38uLL), v234.val[3], 8uLL), v234.val[0]);
  v234.val[3] = vaddq_s64(v234.val[1], v198);
  v234.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v234.val[3], v234.val[3]), a5), v234.val[3]), *&STACK[0x340]), v127);
  v234.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v234.val[2], v234.val[2]), a5), v234.val[2]), *&STACK[0x340]), v127);
  v234.val[1] = vsraq_n_u64(vshlq_n_s64(v198, 3uLL), v198, 0x3DuLL);
  v199 = veorq_s8(v234.val[2], vsraq_n_u64(vshlq_n_s64(v234.val[0], 3uLL), v234.val[0], 0x3DuLL));
  v234.val[0] = veorq_s8(v234.val[3], v234.val[1]);
  v234.val[1] = vsraq_n_u64(vshlq_n_s64(v234.val[2], 0x38uLL), v234.val[2], 8uLL);
  v234.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234.val[3], 0x38uLL), v234.val[3], 8uLL), v234.val[0]);
  v234.val[3] = veorq_s8(vaddq_s64(v234.val[1], v199), v75);
  v234.val[2] = veorq_s8(v234.val[2], v75);
  v234.val[1] = vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL);
  v200 = veorq_s8(v234.val[2], vsraq_n_u64(vshlq_n_s64(v234.val[0], 3uLL), v234.val[0], 0x3DuLL));
  v234.val[0] = veorq_s8(v234.val[3], v234.val[1]);
  v234.val[1] = vsraq_n_u64(vshlq_n_s64(v234.val[2], 0x38uLL), v234.val[2], 8uLL);
  v234.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234.val[3], 0x38uLL), v234.val[3], 8uLL), v234.val[0]);
  v234.val[3] = veorq_s8(vaddq_s64(v234.val[1], v200), v77);
  v234.val[2] = veorq_s8(v234.val[2], v77);
  v234.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234.val[3], 0x38uLL), v234.val[3], 8uLL), veorq_s8(v234.val[3], vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL))), v74), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x330], 3uLL), v144)));
  v234.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234.val[2], 0x38uLL), v234.val[2], 8uLL), veorq_s8(v234.val[2], vsraq_n_u64(vshlq_n_s64(v234.val[0], 3uLL), v234.val[0], 0x3DuLL))), v74), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x320], 3uLL), v144)));
  v201 = veorq_s8(v193, v76);
  v202 = veorq_s8(v193, a6);
  v203 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), v202), a7);
  v204 = veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL));
  v205 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), v204);
  v206 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v205, a8), vorrq_s8(v205, a65)), a65), v71);
  v207 = veorq_s8(v206, vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL));
  v208 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL), v207);
  v209 = veorq_s8(vaddq_s64(vsubq_s64(v208, vandq_s8(vaddq_s64(v208, v208), v73)), v116), v117);
  v210 = veorq_s8(v209, vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL));
  v211 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL), v210);
  v212 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v211, v211), a5), v211), *&STACK[0x340]), v127);
  v213 = veorq_s8(v212, vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL));
  v214 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL), v213), v75);
  v215 = veorq_s8(v214, vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL));
  v216 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), v215), v77);
  v234.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v216, 0x38uLL), v216, 8uLL), veorq_s8(v216, vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL))), v74), vnegq_s64(vandq_s8(vshlq_n_s64(v143, 3uLL), v144)));
  v217 = veorq_s8(v194, v76);
  v218 = veorq_s8(v194, a6);
  v219 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v218), a7);
  v220 = veorq_s8(v219, vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL));
  v221 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL), v220);
  v222 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v221, a8), vorrq_s8(v221, a65)), a65), v71);
  v223 = veorq_s8(v222, vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL));
  v224 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL), v223);
  v225 = veorq_s8(vaddq_s64(vsubq_s64(v224, vandq_s8(vaddq_s64(v224, v224), v73)), v116), v117);
  v226 = veorq_s8(v225, vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL));
  v227 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL), v226);
  v228 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v227, v227), a5), v227), *&STACK[0x340]), v127);
  v229 = veorq_s8(v228, vsraq_n_u64(vshlq_n_s64(v226, 3uLL), v226, 0x3DuLL));
  v230 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL), v229), v75);
  v231 = veorq_s8(v230, vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL));
  v232 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL), v231), v77);
  v234.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), veorq_s8(v232, vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL))), v74), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x310], 3uLL), v144)));
  v188.i64[1] = vqtbl4q_s8(v234, *&STACK[0x300]).u64[0];
  v234.val[2] = vrev64q_s8(*(v66 + v78));
  v234.val[3].i64[0] = 0xECECECECECECECECLL;
  v234.val[3].i64[1] = 0xECECECECECECECECLL;
  v234.val[2] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v234.val[2], v234.val[2], 8uLL), v234.val[3]), v188));
  *(v65 + v78 + 10) = vextq_s8(v234.val[2], v234.val[2], 8uLL);
  return (*(STACK[0x370] + 8 * (((a15 != v78) * v70) ^ v68)))(a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1969B4070(int a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = (v13 + 4 * v10);
  v15 = v9 & 0x80000000;
  v16 = v10 + 1;
  v17 = *(v13 + 4 * v16);
  v18 = v14[397] ^ ((v17 & 0x7FFFFFFE | v15) >> 1);
  *v14 = (v18 + a1 - (a5 & (2 * v18))) ^ *(v11 + 4 * (v17 & ((v8 - v12 - 1694) ^ (a3 - 1))));
  return (*(a2 + 8 * (((v16 == 227) * a8) ^ v8)))();
}

uint64_t sub_1969B4150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char *a16, unsigned int a17)
{
  a16 = &a11;
  a17 = 1498 - 1825732043 * ((((2 * &a15) | 0x429361C2) - &a15 - 558477537) ^ 0x21DFE3D6);
  v19 = (*(v17 + 53584))(&a15, a2, a3, a4, a5, a6, a7, a8);
  return (*(v17 + 8 * ((2185 * (a15 == ((v18 + 3045) ^ 0x142D))) ^ 0x11AFu)))(v19);
}

uint64_t sub_1969B4210()
{
  *(v6 - 184) = v4;
  *(v6 - 180) = 340188880;
  v7 = ((v6 - 176 + v1 - 2 * ((v6 - 176) & v1)) ^ 0xCC6C6B9920596851) * v3;
  v8 = v6 - 176;
  *(v8 + 24) = **(v5 + 8 * (v0 - 1839)) + v7;
  *(v8 + 32) = v7;
  v9 = v0 + 813653830 + v7;
  *(v6 - 168) = v9;
  *(v6 - 164) = v9 + 1;
  *(v6 - 160) = v0 - v7 - 1918690463;
  *(v6 - 176) = ((v0 + 813653830) ^ 0x1ED) + v7;
  *(v6 - 172) = v7;
  v10 = (*(v2 + 8 * (v0 + 4703)))(v6 - 176);
  return (*(v2 + 8 * *(v6 - 136)))(v10);
}

uint64_t sub_1969B42E8()
{
  *(v3 + 4) = v0;
  *(v5 - 144) = (v1 + 457) ^ (((v5 - 144) ^ 0x2CD47D9C) * v2);
  *(v5 - 136) = &v7;
  *(v5 - 128) = v3;
  return (*(v4 + 8 * ((v1 - 2604) ^ 0x1E0D)))(v5 - 144);
}

uint64_t sub_1969B42F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, int a15, int *a16, unsigned int a17, unsigned int a18, int *a19, unsigned int a20, unsigned int a21)
{
  v29 = (((&a16 | 0x9313FFF) - &a16 + (&a16 & 0xF6CEC000)) ^ 0x9A76CC8) * v24;
  a16 = v28;
  a17 = v25 + v29 + 12;
  a18 = (v23 + 1630) ^ v29;
  (*(v22 + 8 * (v23 + 2838)))(&a16, a2, a3, a4, a5, a6, a7, a8);
  v30 = 489239129 * (((&a16 | 0xF08EC506) - (&a16 & 0xF08EC506)) ^ 0x49A6E630);
  a19 = v28;
  a20 = v30 + 426488402;
  a21 = v30 ^ 0x99603FFC;
  a16 = &a12;
  a17 = v30 + v23 + 171;
  (*(v22 + 8 * (v23 + 2854)))(&a16);
  v31 = *(v21 + 4);
  *v21 += a12;
  *(v21 + 4) = v31 + a13;
  v32 = *(v21 + 12);
  *(v21 + 8) += a14;
  *(v21 + 12) = v32 + a15;
  a16 = v28;
  a17 = v27 + (&a16 ^ 0xD5EEE191) * v26 + v23 - 2588;
  a19 = v21;
  v33 = (*(v22 + 8 * (v23 + 2826)))(&a16);
  *(v21 + 24) = 0u;
  return (*(v22 + 8 * v23))(v33);
}

uint64_t sub_1969B4494@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, unsigned int a8, int a9, char a10)
{
  v15 = (((~&a5 | 0xFD214666) + (&a5 | 0x2DEB999)) ^ 0x248EAAF) * a2;
  a5 = v12 + 12;
  a8 = v13 - v15 - 2039;
  a6 = (v10 ^ 0x7D) - v15 + ((v10 << (((v13 - 123) | 0x89) + (v13 ^ 0xC3))) ^ 4) + 87;
  a10 = 123 - v15;
  a7 = v14;
  (*(v11 + 8 * (v13 + 954)))(&a5);
  return (*(v11 + 8 * ((4009 * (a9 == 1906281716)) ^ v13)))(a1);
}

uint64_t sub_1969B4568@<X0>(int a1@<W8>)
{
  v3 = (a1 + 1440410743) & 0xFBFF3FDD;
  *v1 = v10;
  v1[1] = v9;
  v1[2] = v8;
  v1[3] = v6;
  v11 = v3 - 1373251396 - 1790939281 * (((&v11 | 0x89E2072) - &v11 + (&v11 & 0xF761DF88)) ^ 0xF0420033);
  v12 = v7;
  (*(v2 + 8 * (v3 - 1373250670)))(&v11);
  v12 = v5;
  v11 = -1373251396 - 1790939281 * (((&v11 | 0xF09A84C1) + (~&v11 | 0xF657B3E)) ^ 0x846A481) + v3;
  (*(v2 + 8 * (v3 ^ 0x51DA25B2)))(&v11);
  return 0;
}

uint64_t sub_1969B46B8@<X0>(int a1@<W8>)
{
  (*(v2 + 8 * (a1 + 2342)))();
  *(v1 + 24) = 0;
  return sub_19698E278();
}

uint64_t sub_1969B4748(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = v16 - 8;
  v25 = v24 + ((v14 + 1148935222) & 0xBB84A5EF ^ 0xFFFFFFFFFFFFFB31);
  v26.i64[0] = v23 + v24 - 3;
  v26.i64[1] = v23 + v25;
  v27.i64[0] = v23 + v24 - 1;
  v27.i64[1] = v23 + v24 - 2;
  v28.i64[0] = v23 + v24 - 5;
  v28.i64[1] = v23 + v24 - 6;
  v29.i64[0] = v23 + v24 - 7;
  v29.i64[1] = v23 + v24 - 8;
  v30.i64[0] = v22 + v24;
  v30.i64[1] = v17 + v24;
  v31.i64[0] = a8 + v24;
  v31.i64[1] = a7 + v24;
  v32.i64[0] = v18 + v24;
  v33.i64[0] = a6 + v24;
  v32.i64[1] = STACK[0x3F0] + v24;
  v33.i64[1] = v15 + v25;
  v34 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v35 = vandq_s8(v29, v34);
  v36 = vandq_s8(v28, v34);
  v37 = vandq_s8(v27, v34);
  v38 = vandq_s8(v26, v34);
  v39 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v40 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v43 = vdupq_n_s64(0x38uLL);
  v44 = vdupq_n_s64(v20);
  v45 = vaddq_s64(v42, v44);
  v46 = vaddq_s64(v41, v44);
  v47 = vaddq_s64(v40, v44);
  v48 = vaddq_s64(v39, v44);
  v49 = vdupq_n_s64(0xAAF773659F930324);
  v50 = vdupq_n_s64(v13);
  v51 = vaddq_s64(vsubq_s64(vorrq_s8(v48, v49), vorrq_s8(v48, v50)), v50);
  v52 = vaddq_s64(vsubq_s64(vorrq_s8(v47, v49), vorrq_s8(v47, v50)), v50);
  v53 = vaddq_s64(vsubq_s64(vorrq_s8(v46, v49), vorrq_s8(v46, v50)), v50);
  v54 = vaddq_s64(vsubq_s64(vorrq_s8(v45, v49), vorrq_s8(v45, v50)), v50);
  v55 = vdupq_n_s64(v8);
  v56 = veorq_s8(v54, v55);
  v57 = veorq_s8(v53, v55);
  v58 = veorq_s8(v52, v55);
  v59 = veorq_s8(v51, v55);
  v60 = vdupq_n_s64(a4);
  v61 = veorq_s8(v51, v60);
  v62 = veorq_s8(v52, v60);
  v63 = veorq_s8(v53, v60);
  v64 = veorq_s8(v54, v60);
  v65 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v62);
  v67 = vaddq_s64(v65, v61);
  v68 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v69 = veorq_s8(v67, v68);
  v70 = veorq_s8(v66, v68);
  v71 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v63), v68);
  v72 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v64), v68);
  v73 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v74 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v75 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v76 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v77 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v78 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v79 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v80 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v76);
  v81 = vaddq_s64(v77, v73);
  v82 = vdupq_n_s64(a1);
  v83 = veorq_s8(v81, v82);
  v84 = veorq_s8(vaddq_s64(v78, v74), v82);
  v85 = veorq_s8(vaddq_s64(v79, v75), v82);
  v86 = veorq_s8(v80, v82);
  v87 = vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL);
  v88 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v89 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v90 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v91 = veorq_s8(v85, v89);
  v92 = veorq_s8(v84, v88);
  v93 = veorq_s8(v83, v87);
  v94 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v95 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v96 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v93);
  v98 = vaddq_s64(v96, v92);
  v99 = vaddq_s64(v95, v91);
  v100 = vaddq_s64(v94, v90);
  v101 = vdupq_n_s64(v9);
  v102 = vdupq_n_s64(a2);
  v103 = vaddq_s64(vsubq_s64(v97, vandq_s8(vaddq_s64(v97, v97), v101)), v102);
  v104 = vaddq_s64(vsubq_s64(v98, vandq_s8(vaddq_s64(v98, v98), v101)), v102);
  v105 = vaddq_s64(vsubq_s64(v99, vandq_s8(vaddq_s64(v99, v99), v101)), v102);
  v106 = vaddq_s64(vsubq_s64(v100, vandq_s8(vaddq_s64(v100, v100), v101)), v102);
  v107 = vdupq_n_s64(v10);
  v108 = veorq_s8(v106, v107);
  v109 = veorq_s8(v105, v107);
  v110 = veorq_s8(v104, v107);
  v111 = veorq_s8(v103, v107);
  v112 = vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL);
  v113 = vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL);
  v114 = vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL);
  v115 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v116 = veorq_s8(v110, v114);
  v117 = veorq_s8(v109, v113);
  v118 = veorq_s8(v108, v112);
  v119 = vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL);
  v120 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v121 = vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL);
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v118);
  v123 = vaddq_s64(v119, v115);
  v124 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  v125 = veorq_s8(v123, v124);
  v126 = veorq_s8(vaddq_s64(v120, v116), v124);
  v127 = veorq_s8(vaddq_s64(v121, v117), v124);
  v128 = veorq_s8(v122, v124);
  v129 = vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL);
  v131 = vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL);
  v132 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v133 = veorq_s8(v127, v131);
  v134 = veorq_s8(v126, v130);
  v135 = veorq_s8(v125, v129);
  v136 = vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL);
  v137 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL);
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v135);
  v140 = vaddq_s64(v138, v134);
  v141 = vaddq_s64(v137, v133);
  v142 = vaddq_s64(v136, v132);
  v143 = vdupq_n_s64(v21);
  v144 = vdupq_n_s64(v11);
  v145 = vaddq_s64(vsubq_s64(vorrq_s8(v142, v143), vorrq_s8(v142, v144)), v144);
  v146 = vaddq_s64(vsubq_s64(vorrq_s8(v141, v143), vorrq_s8(v141, v144)), v144);
  v147 = vaddq_s64(vsubq_s64(vorrq_s8(v140, v143), vorrq_s8(v140, v144)), v144);
  v148 = vaddq_s64(vsubq_s64(vorrq_s8(v139, v143), vorrq_s8(v139, v144)), v144);
  v149 = vdupq_n_s64(a3);
  v150 = veorq_s8(v148, v149);
  v151 = veorq_s8(v147, v149);
  v152 = veorq_s8(v146, v149);
  v153 = veorq_s8(v145, v149);
  v154 = vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL);
  v155 = vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL);
  v156 = vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL);
  v157 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v158 = veorq_s8(v152, v156);
  v159 = veorq_s8(v151, v155);
  v160 = veorq_s8(v150, v154);
  v161 = vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL);
  v162 = vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL);
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v159);
  v164 = vaddq_s64(v162, v158);
  v165 = vaddq_s64(v161, v157);
  v166 = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  v167 = veorq_s8(v165, v166);
  v168 = veorq_s8(v164, v166);
  v169 = veorq_s8(v163, v166);
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v160), v166);
  v171 = vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL);
  v172 = vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL);
  v173 = vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL);
  v174 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), veorq_s8(v167, v171));
  v176 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), veorq_s8(v168, v172));
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), veorq_s8(v169, v173));
  v178 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v174);
  v179 = vdupq_n_s64(0xBE1EC949B5D0EDD2);
  v180 = vdupq_n_s64(0xA0F09B5B25178916);
  v181 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v175, v175), v179), v175), v180);
  v182 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v176, v176), v179), v176), v180);
  v183 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v177, v177), v179), v177), v180);
  v184 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v178, v178), v179), v178), v180);
  v185 = vdupq_n_s64(0xBC0D9890D90D557uLL);
  v186 = vshlq_u64(veorq_s8(v181, v185), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v43)));
  v187 = vshlq_u64(veorq_s8(v182, v185), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v43)));
  v188 = vshlq_u64(veorq_s8(v183, v185), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v43)));
  v189 = vshlq_u64(veorq_s8(v184, v185), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v43)));
  v190 = vandq_s8(v33, v34);
  v191 = vandq_s8(v31, v34);
  v192 = vandq_s8(v30, v34);
  v193 = vandq_s8(v32, v34);
  v194 = vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL);
  v195 = vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL);
  v196 = vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL);
  v197 = vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL);
  v198 = vdupq_n_s64(0x2D9C56C6ED9D3E2EuLL);
  v199 = vaddq_s64(v197, v198);
  v200 = vaddq_s64(v196, v198);
  v201 = vaddq_s64(v195, v198);
  v202 = vaddq_s64(v194, v198);
  v203 = vdupq_n_s64(0x2DC8F1952FF42167uLL);
  v204 = vdupq_n_s64(v12);
  v205 = vaddq_s64(vsubq_s64(vorrq_s8(v202, v203), vorrq_s8(v202, v204)), v204);
  v206 = vaddq_s64(vsubq_s64(vorrq_s8(v201, v203), vorrq_s8(v201, v204)), v204);
  v207 = vaddq_s64(vsubq_s64(vorrq_s8(v200, v203), vorrq_s8(v200, v204)), v204);
  v208 = vaddq_s64(vsubq_s64(vorrq_s8(v199, v203), vorrq_s8(v199, v204)), v204);
  v209 = vdupq_n_s64(0xA6A29A9251BD41F6);
  v210 = veorq_s8(v208, v209);
  v211 = veorq_s8(v207, v209);
  v212 = veorq_s8(v206, v209);
  v213 = veorq_s8(v205, v209);
  v214 = vdupq_n_s64(0xCA402CA53D54B087);
  v215 = veorq_s8(v205, v214);
  v216 = veorq_s8(v206, v214);
  v217 = veorq_s8(v207, v214);
  v218 = veorq_s8(v208, v214);
  v219 = vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL);
  v220 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL), v216);
  v221 = vaddq_s64(v219, v215);
  v222 = vdupq_n_s64(0xFB9714BECA2C68E9);
  v223 = veorq_s8(v221, v222);
  v224 = veorq_s8(v220, v222);
  v225 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL), v217), v222);
  v226 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL), v218), v222);
  v227 = vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL);
  v228 = vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL);
  v229 = veorq_s8(v226, vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL));
  v230 = veorq_s8(v225, vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL));
  v231 = veorq_s8(v224, v228);
  v232 = veorq_s8(v223, v227);
  v233 = vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL);
  v234 = vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL);
  v235 = vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL);
  v236 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v232);
  v237 = vaddq_s64(v235, v231);
  v238 = vaddq_s64(v234, v230);
  v239 = vaddq_s64(v233, v229);
  v240 = vdupq_n_s64(0x5104AEDE8DC1A9F6uLL);
  v241 = vdupq_n_s64(0xA882576F46E0D4FBLL);
  v242 = vaddq_s64(vsubq_s64(v236, vandq_s8(vaddq_s64(v236, v236), v240)), v241);
  v243 = vaddq_s64(vsubq_s64(v237, vandq_s8(vaddq_s64(v237, v237), v240)), v241);
  v244 = vaddq_s64(vsubq_s64(v238, vandq_s8(vaddq_s64(v238, v238), v240)), v241);
  v245 = vaddq_s64(vsubq_s64(v239, vandq_s8(vaddq_s64(v239, v239), v240)), v241);
  v246 = vdupq_n_s64(0x150D2B9258E743E0uLL);
  v247 = veorq_s8(v245, v246);
  v248 = veorq_s8(v244, v246);
  v249 = veorq_s8(v243, v246);
  v250 = veorq_s8(v242, v246);
  v251 = vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL);
  v252 = vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL);
  v253 = vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL);
  v254 = veorq_s8(v250, vsraq_n_u64(vshlq_n_s64(v232, 3uLL), v232, 0x3DuLL));
  v255 = veorq_s8(v249, v253);
  v256 = veorq_s8(v248, v252);
  v257 = veorq_s8(v247, v251);
  v258 = vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL);
  v259 = vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL);
  v260 = vsraq_n_u64(vshlq_n_s64(v248, 0x38uLL), v248, 8uLL);
  v261 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), v257);
  v262 = vaddq_s64(v260, v256);
  v263 = vaddq_s64(v259, v255);
  v264 = vaddq_s64(v258, v254);
  v265 = vdupq_n_s64(0x961131FD6C4BA1E6);
  v266 = vdupq_n_s64(0xB4F7670149DA2F0CLL);
  v267 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v261, v261), v265), v261), v266);
  v268 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v262, v262), v265), v262), v266);
  v269 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v263, v263), v265), v263), v266);
  v270 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v264, v264), v265), v264), v266);
  v271 = vdupq_n_s64(0x497C343F90B06C38uLL);
  v272 = veorq_s8(v270, v271);
  v273 = veorq_s8(v269, v271);
  v274 = veorq_s8(v268, v271);
  v275 = veorq_s8(v267, v271);
  v276 = vsraq_n_u64(vshlq_n_s64(v254, 3uLL), v254, 0x3DuLL);
  v277 = vsraq_n_u64(vshlq_n_s64(v255, 3uLL), v255, 0x3DuLL);
  v278 = vsraq_n_u64(vshlq_n_s64(v256, 3uLL), v256, 0x3DuLL);
  v279 = veorq_s8(v275, vsraq_n_u64(vshlq_n_s64(v257, 3uLL), v257, 0x3DuLL));
  v280 = veorq_s8(v274, v278);
  v281 = veorq_s8(v273, v277);
  v282 = veorq_s8(v272, v276);
  v283 = vsraq_n_u64(vshlq_n_s64(v275, 0x38uLL), v275, 8uLL);
  v284 = vsraq_n_u64(vshlq_n_s64(v274, 0x38uLL), v274, 8uLL);
  v285 = vsraq_n_u64(vshlq_n_s64(v273, 0x38uLL), v273, 8uLL);
  v286 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v272, 0x38uLL), v272, 8uLL), v282);
  v287 = vaddq_s64(v285, v281);
  v288 = vaddq_s64(v284, v280);
  v289 = vaddq_s64(v283, v279);
  v290 = vdupq_n_s64(0x4EE1F510E21A30FAuLL);
  v291 = vdupq_n_s64(0x588F05778EF2E782uLL);
  v292 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v286, v286), v290), v286), v291);
  v293 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v287, v287), v290), v287), v291);
  v294 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v288, v288), v290), v288), v291);
  v295 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v289, v289), v290), v289), v291);
  v296 = vdupq_n_s64(0x5248DF72EA336409uLL);
  v297 = veorq_s8(v295, v296);
  v298 = veorq_s8(v294, v296);
  v299 = veorq_s8(v293, v296);
  v300 = veorq_s8(v292, v296);
  v301 = vsraq_n_u64(vshlq_n_s64(v279, 3uLL), v279, 0x3DuLL);
  v302 = vsraq_n_u64(vshlq_n_s64(v280, 3uLL), v280, 0x3DuLL);
  v303 = vsraq_n_u64(vshlq_n_s64(v281, 3uLL), v281, 0x3DuLL);
  v304 = veorq_s8(v300, vsraq_n_u64(vshlq_n_s64(v282, 3uLL), v282, 0x3DuLL));
  v305 = veorq_s8(v299, v303);
  v306 = veorq_s8(v298, v302);
  v307 = veorq_s8(v297, v301);
  v308 = vsraq_n_u64(vshlq_n_s64(v300, 0x38uLL), v300, 8uLL);
  v309 = vsraq_n_u64(vshlq_n_s64(v299, 0x38uLL), v299, 8uLL);
  v310 = vsraq_n_u64(vshlq_n_s64(v298, 0x38uLL), v298, 8uLL);
  v311 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v297, 0x38uLL), v297, 8uLL), v307);
  v312 = vaddq_s64(v308, v304);
  v313 = vdupq_n_s64(0x6190A7627E7D0B79uLL);
  v314 = veorq_s8(v312, v313);
  v315 = veorq_s8(vaddq_s64(v309, v305), v313);
  v316 = veorq_s8(vaddq_s64(v310, v306), v313);
  v317 = veorq_s8(v311, v313);
  v318 = vsraq_n_u64(vshlq_n_s64(v304, 3uLL), v304, 0x3DuLL);
  v319 = vsraq_n_u64(vshlq_n_s64(v305, 3uLL), v305, 0x3DuLL);
  v320 = vsraq_n_u64(vshlq_n_s64(v306, 3uLL), v306, 0x3DuLL);
  v321 = veorq_s8(v317, vsraq_n_u64(vshlq_n_s64(v307, 3uLL), v307, 0x3DuLL));
  v322 = veorq_s8(v316, v320);
  v323 = veorq_s8(v315, v319);
  v324 = veorq_s8(v314, v318);
  v325 = vsraq_n_u64(vshlq_n_s64(v317, 0x38uLL), v317, 8uLL);
  v326 = vsraq_n_u64(vshlq_n_s64(v316, 0x38uLL), v316, 8uLL);
  v327 = vsraq_n_u64(vshlq_n_s64(v315, 0x38uLL), v315, 8uLL);
  v328 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v314, 0x38uLL), v314, 8uLL), v324);
  v329 = vaddq_s64(v327, v323);
  v330 = vaddq_s64(v326, v322);
  v331 = vaddq_s64(v325, v321);
  v332 = vdupq_n_s64(0x87548A189F8CC3D8);
  v333 = vdupq_n_s64(0x3C55BAF3B0399E14uLL);
  v334 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v328, v328), v332), v328), v333);
  v335 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v329, v329), v332), v329), v333);
  v336 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v330, v330), v332), v330), v333);
  v337 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v331, v331), v332), v331), v333);
  v338 = vdupq_n_s64(0x4DE72BC67BFB46B2uLL);
  v339 = veorq_s8(v337, v338);
  v340 = veorq_s8(v336, v338);
  v341 = veorq_s8(v335, v338);
  v342 = veorq_s8(v334, v338);
  v343 = vsraq_n_u64(vshlq_n_s64(v321, 3uLL), v321, 0x3DuLL);
  v344 = vsraq_n_u64(vshlq_n_s64(v322, 3uLL), v322, 0x3DuLL);
  v345 = vsraq_n_u64(vshlq_n_s64(v323, 3uLL), v323, 0x3DuLL);
  v346 = veorq_s8(v342, vsraq_n_u64(vshlq_n_s64(v324, 3uLL), v324, 0x3DuLL));
  v347 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v339, 0x38uLL), v339, 8uLL), veorq_s8(v339, v343));
  v348 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v340, 0x38uLL), v340, 8uLL), veorq_s8(v340, v344));
  v349 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v341, 0x38uLL), v341, 8uLL), veorq_s8(v341, v345));
  v350 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v342, 0x38uLL), v342, 8uLL), v346);
  v351 = vdupq_n_s64(0xEB1F931E35D5B2D0);
  v352 = vdupq_n_s64(0x758FC98F1AEAD968uLL);
  v353 = vaddq_s64(vsubq_s64(v347, vandq_s8(vaddq_s64(v347, v347), v351)), v352);
  v354 = vaddq_s64(vsubq_s64(v348, vandq_s8(vaddq_s64(v348, v348), v351)), v352);
  v355 = vaddq_s64(vsubq_s64(v349, vandq_s8(vaddq_s64(v349, v349), v351)), v352);
  v356 = vaddq_s64(vsubq_s64(v350, vandq_s8(vaddq_s64(v350, v350), v351)), v352);
  v357 = vdupq_n_s64(0x243488FEB5071F40uLL);
  v358 = vshlq_u64(veorq_s8(v354, v357), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), v43)));
  v360.val[3] = veorq_s8(vshlq_u64(veorq_s8(v356, v357), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), v43))), v189);
  v360.val[2] = veorq_s8(vshlq_u64(veorq_s8(v355, v357), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v43))), v188);
  v360.val[0] = veorq_s8(v358, v187);
  v360.val[1] = veorq_s8(vshlq_u64(veorq_s8(v353, v357), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), v43))), v186);
  *v32.i64[1] = veor_s8(vrev64_s8(*&vqtbl4q_s8(v360, xmmword_196EBFAE0)), *(v23 + v24 - 8));
  return (*(STACK[0x248] + 8 * ((5394 * (v19 == v24)) ^ v14)))();
}

uint64_t sub_1969B4750@<X0>(uint64_t a1@<X8>)
{
  *&v13 = v2 + v1 - 15;
  *(&v13 + 1) = v2 + v1 - 16;
  *&STACK[0x3B0] = v13;
  *&v13 = v2 + v1 - 13;
  *(&v13 + 1) = v2 + v1 - 14;
  *&STACK[0x3A0] = v13;
  v14.i64[0] = v2 + v1 - 5;
  v14.i64[1] = v2 + v1 - 6;
  v15.i64[0] = v2 + v1 - 3;
  v15.i64[1] = v2 + v1 - 4;
  v16.i64[0] = v1 + v2 - 1;
  v16.i64[1] = v2 + v1 - 2;
  v17.i64[0] = v2 + v1 - 7;
  v17.i64[1] = v2 + v1 + ((3 * (v5 ^ 0x87Au)) ^ v3);
  v18 = *&STACK[0x370];
  v19 = vandq_s8(v17, *&STACK[0x370]);
  v20 = vandq_s8(v16, *&STACK[0x370]);
  v21 = vandq_s8(v15, *&STACK[0x370]);
  v22 = vandq_s8(v14, *&STACK[0x370]);
  v23 = vsraq_n_u64(vshlq_n_s64(v22, 0x38uLL), v22, 8uLL);
  v24 = vsraq_n_u64(vshlq_n_s64(v21, 0x38uLL), v21, 8uLL);
  v25 = vsraq_n_u64(vshlq_n_s64(v20, 0x38uLL), v20, 8uLL);
  v26 = vsraq_n_u64(vshlq_n_s64(v19, 0x38uLL), v19, 8uLL);
  v27 = vaddq_s64(v26, *&STACK[0x410]);
  v28 = vaddq_s64(v25, *&STACK[0x410]);
  v29 = vaddq_s64(v24, *&STACK[0x410]);
  v30 = *&STACK[0x350];
  v31 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x350], v26), *&STACK[0x400]), v27), vandq_s8(v27, *&STACK[0x3F0]));
  v32 = vaddq_s64(v23, *&STACK[0x410]);
  v33 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x350], v25), *&STACK[0x400]), v28), vandq_s8(v28, *&STACK[0x3F0]));
  v34 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x350], v24), *&STACK[0x400]), v29), vandq_s8(v29, *&STACK[0x3F0]));
  v35 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x350], v23), *&STACK[0x400]), v32), vandq_s8(v32, *&STACK[0x3F0]));
  v36 = veorq_s8(v35, *&STACK[0x340]);
  v37 = veorq_s8(v34, *&STACK[0x340]);
  v38 = *&STACK[0x340];
  v39 = veorq_s8(v34, v7);
  v40 = veorq_s8(v35, v7);
  v41 = *&STACK[0x320];
  v42 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL), v39), *&STACK[0x320]);
  v43 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL), v40), *&STACK[0x320]);
  v44 = veorq_s8(v43, vsraq_n_u64(vshlq_n_s64(v40, 3uLL), v40, 0x3DuLL));
  v45 = veorq_s8(v42, vsraq_n_u64(vshlq_n_s64(v39, 3uLL), v39, 0x3DuLL));
  v46 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v47 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v45);
  v48 = veorq_s8(vaddq_s64(v46, v44), *&STACK[0x3E0]);
  v49 = veorq_s8(v47, *&STACK[0x3E0]);
  v50 = veorq_s8(v49, vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL));
  v51 = veorq_s8(v48, vsraq_n_u64(vshlq_n_s64(v44, 3uLL), v44, 0x3DuLL));
  v53 = *&STACK[0x300];
  v52 = *&STACK[0x310];
  v54 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v50), *&STACK[0x310]);
  v55 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v51), *&STACK[0x310]);
  v56 = *&STACK[0x270];
  v57 = *&STACK[0x2E0];
  v58 = *&STACK[0x2F0];
  v59 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v54, *&STACK[0x300]), vorrq_s8(v54, *&STACK[0x270])), *&STACK[0x270]), *&STACK[0x2F0]);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v55, *&STACK[0x300]), vorrq_s8(v55, *&STACK[0x270])), *&STACK[0x270]), *&STACK[0x2F0]);
  v61 = vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL);
  v62 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v63 = veorq_s8(v59, v61);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v63);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v62);
  v66 = *&STACK[0x3C0];
  v67 = *&STACK[0x3D0];
  v68 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v65, v65), *&STACK[0x2E0]), v65), *&STACK[0x3D0]), *&STACK[0x3C0]);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v64, v64), *&STACK[0x2E0]), v64), *&STACK[0x3D0]), *&STACK[0x3C0]);
  v70 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v71 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v72 = veorq_s8(v68, v70);
  v73 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v72);
  v75 = vaddq_s64(v73, v71);
  v76 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v75, v75), v9), v75), v10), v11);
  v77 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v74, v74), v9), v74), v10), v11);
  v78 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v79 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v80 = vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v79);
  v82 = veorq_s8(vaddq_s64(v80, v78), v12);
  v83 = veorq_s8(v81, v12);
  v84 = vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL);
  v85 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v86.i64[0] = v2 + v1 - 11;
  v86.i64[1] = v2 + v1 - 12;
  *&STACK[0x380] = v86;
  v187.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), veorq_s8(v82, v84)), v8), vnegq_s64(vandq_s8(vshlq_n_s64(v14, 3uLL), v6)));
  v187.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v85), v8), vnegq_s64(vandq_s8(vshlq_n_s64(v15, 3uLL), v6)));
  v87 = veorq_s8(v33, v38);
  v88 = veorq_s8(v33, v7);
  v89 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v88), v41);
  v90 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v91 = *&STACK[0x3E0];
  v92 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v90), *&STACK[0x3E0]);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v94 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93), v52);
  v95 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v94, v53), vorrq_s8(v94, v56)), v56), v58);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96);
  v98 = v57;
  v99 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v97, v97), v57), v97), v67), v66);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100);
  v102 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v101, v101), v9), v101), v10), v11);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), v12);
  v57.i64[0] = v2 + v1 - 9;
  v57.i64[1] = v2 + v1 - 10;
  *&STACK[0x390] = v57;
  v105 = vandq_s8(v57, v18);
  v187.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL))), v8), vnegq_s64(vandq_s8(vshlq_n_s64(v16, 3uLL), v6)));
  v106 = veorq_s8(v31, v38);
  v107 = veorq_s8(v31, v7);
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), v41);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), v91);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), v52);
  v113 = v52;
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v112, v53), vorrq_s8(v112, v56)), v56), v58);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v116, v116), v98), v116), v67), v66);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v119, v119), v9), v119), v10), v11);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v12);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v124 = vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL);
  v125 = vandq_s8(v86, v18);
  v126 = vaddq_s64(v124, v123);
  v127 = vandq_s8(*&STACK[0x3A0], v18);
  v187.val[3] = vshlq_u64(veorq_s8(v126, v8), vnegq_s64(vandq_s8(vshlq_n_s64(v17, 3uLL), v6)));
  v128 = vandq_s8(*&STACK[0x3B0], v18);
  v129 = vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v131 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v132 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v133 = vaddq_s64(v132, *&STACK[0x410]);
  v134 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v30, v132), *&STACK[0x400]), v133), vandq_s8(v133, *&STACK[0x3F0]));
  v135 = vaddq_s64(v131, *&STACK[0x410]);
  v136 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v30, v131), *&STACK[0x400]), v135), vandq_s8(v135, *&STACK[0x3F0]));
  v137 = vaddq_s64(v130, *&STACK[0x410]);
  v138 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v30, v130), *&STACK[0x400]), v137), vandq_s8(v137, *&STACK[0x3F0]));
  v139 = vaddq_s64(v129, *&STACK[0x410]);
  v140 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v30, v129), *&STACK[0x400]), v139), vandq_s8(v139, *&STACK[0x3F0]));
  v139.i64[0] = vqtbl4q_s8(v187, *&STACK[0x280]).u64[0];
  v187.val[1] = veorq_s8(v140, v38);
  v187.val[2] = veorq_s8(v138, v38);
  v187.val[3] = veorq_s8(v138, v7);
  v187.val[0] = veorq_s8(v140, v7);
  v187.val[2] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187.val[2], 0x38uLL), v187.val[2], 8uLL), v187.val[3]), v41);
  v187.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187.val[1], 0x38uLL), v187.val[1], 8uLL), v187.val[0]), v41);
  v141 = vsraq_n_u64(vshlq_n_s64(v187.val[3], 3uLL), v187.val[3], 0x3DuLL);
  v187.val[3] = veorq_s8(v187.val[1], vsraq_n_u64(vshlq_n_s64(v187.val[0], 3uLL), v187.val[0], 0x3DuLL));
  v187.val[0] = veorq_s8(v187.val[2], v141);
  v142 = vsraq_n_u64(vshlq_n_s64(v187.val[1], 0x38uLL), v187.val[1], 8uLL);
  v187.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187.val[2], 0x38uLL), v187.val[2], 8uLL), v187.val[0]);
  v187.val[2] = veorq_s8(vaddq_s64(v142, v187.val[3]), v91);
  v187.val[1] = veorq_s8(v187.val[1], v91);
  v143 = vsraq_n_u64(vshlq_n_s64(v187.val[3], 3uLL), v187.val[3], 0x3DuLL);
  v187.val[3] = veorq_s8(v187.val[1], vsraq_n_u64(vshlq_n_s64(v187.val[0], 3uLL), v187.val[0], 0x3DuLL));
  v187.val[0] = veorq_s8(v187.val[2], v143);
  v144 = vsraq_n_u64(vshlq_n_s64(v187.val[1], 0x38uLL), v187.val[1], 8uLL);
  v187.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187.val[2], 0x38uLL), v187.val[2], 8uLL), v187.val[0]);
  v187.val[2] = veorq_s8(vaddq_s64(v144, v187.val[3]), v113);
  v187.val[1] = veorq_s8(v187.val[1], v113);
  v187.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v187.val[2], v53), vorrq_s8(v187.val[2], v56)), v56), v58);
  v187.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v187.val[1], v53), vorrq_s8(v187.val[1], v56)), v56), v58);
  v145 = vsraq_n_u64(vshlq_n_s64(v187.val[3], 3uLL), v187.val[3], 0x3DuLL);
  v187.val[3] = veorq_s8(v187.val[1], vsraq_n_u64(vshlq_n_s64(v187.val[0], 3uLL), v187.val[0], 0x3DuLL));
  v187.val[0] = veorq_s8(v187.val[2], v145);
  v146 = vsraq_n_u64(vshlq_n_s64(v187.val[1], 0x38uLL), v187.val[1], 8uLL);
  v187.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187.val[2], 0x38uLL), v187.val[2], 8uLL), v187.val[0]);
  v187.val[2] = vaddq_s64(v146, v187.val[3]);
  v147 = v98;
  v187.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v187.val[2], v187.val[2]), v98), v187.val[2]), *&STACK[0x3D0]), *&STACK[0x3C0]);
  v187.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v187.val[1], v187.val[1]), v98), v187.val[1]), *&STACK[0x3D0]), *&STACK[0x3C0]);
  v148 = vsraq_n_u64(vshlq_n_s64(v187.val[3], 3uLL), v187.val[3], 0x3DuLL);
  v187.val[3] = veorq_s8(v187.val[1], vsraq_n_u64(vshlq_n_s64(v187.val[0], 3uLL), v187.val[0], 0x3DuLL));
  v187.val[0] = veorq_s8(v187.val[2], v148);
  v149 = vsraq_n_u64(vshlq_n_s64(v187.val[1], 0x38uLL), v187.val[1], 8uLL);
  v187.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187.val[2], 0x38uLL), v187.val[2], 8uLL), v187.val[0]);
  v187.val[2] = vaddq_s64(v149, v187.val[3]);
  v187.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v187.val[2], v187.val[2]), v9), v187.val[2]), v10), v11);
  v187.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v187.val[1], v187.val[1]), v9), v187.val[1]), v10), v11);
  v150 = vsraq_n_u64(vshlq_n_s64(v187.val[3], 3uLL), v187.val[3], 0x3DuLL);
  v187.val[3] = veorq_s8(v187.val[1], vsraq_n_u64(vshlq_n_s64(v187.val[0], 3uLL), v187.val[0], 0x3DuLL));
  v187.val[0] = veorq_s8(v187.val[2], v150);
  v151 = vsraq_n_u64(vshlq_n_s64(v187.val[1], 0x38uLL), v187.val[1], 8uLL);
  v187.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187.val[2], 0x38uLL), v187.val[2], 8uLL), v187.val[0]);
  v187.val[2] = veorq_s8(vaddq_s64(v151, v187.val[3]), v12);
  v187.val[1] = veorq_s8(v187.val[1], v12);
  v152 = vsraq_n_u64(vshlq_n_s64(v187.val[3], 3uLL), v187.val[3], 0x3DuLL);
  v187.val[3] = veorq_s8(v187.val[1], vsraq_n_u64(vshlq_n_s64(v187.val[0], 3uLL), v187.val[0], 0x3DuLL));
  v187.val[0] = veorq_s8(v187.val[2], v152);
  v153 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187.val[1], 0x38uLL), v187.val[1], 8uLL), v187.val[3]), v8);
  v187.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187.val[2], 0x38uLL), v187.val[2], 8uLL), v187.val[0]), v8), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3B0], 3uLL), v6)));
  v187.val[2] = vshlq_u64(v153, vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3A0], 3uLL), v6)));
  v154 = veorq_s8(v136, v38);
  v155 = veorq_s8(v136, v7);
  v156 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155), v41);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157), v91);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v160 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159), v113);
  v161 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v160, v53), vorrq_s8(v160, v56)), v56), v58);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162);
  v164 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v163, v163), v98), v163), *&STACK[0x3D0]), *&STACK[0x3C0]);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v166, v166), v9), v166), v10), v11);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v169 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168), v12);
  v187.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL))), v8), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x380], 3uLL), v6)));
  v170 = veorq_s8(v134, v38);
  v171 = veorq_s8(v134, v7);
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171), v41);
  v173 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v174 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173), v91);
  v175 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v176 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175), v113);
  v177 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v176, v53), vorrq_s8(v176, v56)), v56), v58);
  v178 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178);
  v180 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v179, v179), v147), v179), *&STACK[0x3D0]), *&STACK[0x3C0]);
  v181 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v182 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v181);
  v183 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v182, v182), v9), v182), v10), v11);
  v184 = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v185 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), v184), v12);
  v187.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), veorq_s8(v185, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL))), v8), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x390], 3uLL), v6)));
  v139.i64[1] = vqtbl4q_s8(v187, *&STACK[0x280]).u64[0];
  v187.val[1] = vrev64q_s8(*(v1 + v2 - 1 - 15));
  v187.val[2].i64[0] = 0xECECECECECECECECLL;
  v187.val[2].i64[1] = 0xECECECECECECECECLL;
  v187.val[1] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v187.val[1], v187.val[1], 8uLL), v187.val[2]), v139));
  *(a1 - 15 + v2 - 1) = vextq_s8(v187.val[1], v187.val[1], 8uLL);
  return (*(STACK[0x248] + 8 * (((v2 == 16) * v4) ^ v5)))();
}

uint64_t sub_1969B5220()
{
  *&STACK[0x330] = vdupq_n_s64(0x7B0E7BDAC39050F6uLL);
  *&STACK[0x340] = vdupq_n_s64(v0);
  *&STACK[0x320] = vdupq_n_s64(0xE81C96B255F67EuLL);
  *&STACK[0x240] = vdupq_n_s64(0xFF17E3694DAA0981);
  *&STACK[0x2A0] = vdupq_n_s64(0x9A49C0E087253006);
  *&STACK[0x2B0] = vdupq_n_s64(0x320F25771ED3415AuLL);
  *&STACK[0x280] = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  *&STACK[0x290] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x260] = vdupq_n_s64(0x495277C57CB43DB7uLL);
  *&STACK[0x270] = vdupq_n_s64(0x1031C100296D42A8uLL);
  *&STACK[0x220] = vdupq_n_s64(0x7E3B4F6C9B27BABFuLL);
  *&STACK[0x230] = vdupq_n_s64(0xEFCE3EFFD692BD57);
  *&STACK[0x300] = vdupq_n_s64(0xE0812DB994C761B7);
  *&STACK[0x310] = vdupq_n_s64(0x81C4B09364D84540);
  *&STACK[0x2E0] = vdupq_n_s64(0x2284C6370AD74C78uLL);
  *&STACK[0x2F0] = vdupq_n_s64(0x4647DA357A539214uLL);
  *&STACK[0x250] = vdupq_n_s64(0x93D6231FC69D7080);
  *&STACK[0x200] = vdupq_n_s64(0x3614EE701CB147BFuLL);
  *&STACK[0x210] = vdupq_n_s64(0xB9B825CA85AC6DEBLL);
  return sub_19692C074(0x93D6231FC69D7080, -1658681108);
}

uint64_t sub_1969B549C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>)
{
  v23 = a5 - 1;
  v24 = (a7 + v23);
  v25 = a1 + v23 + a6;
  v26 = __ROR8__((a7 + v23) & 0xFFFFFFFFFFFFFFF8, 8);
  v27 = ((v26 + v19) | a3) - ((v26 + v19) | v13) + v13;
  v28 = v27 ^ 0xE31E315EF085E4F6;
  v27 ^= 0x4B58D4C9697395AAuLL;
  v29 = (__ROR8__(v28, 8) + v27) ^ v16;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v18;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (v33 + v32 - (a2 & (2 * (v33 + v32))) + v10) ^ 0xC3B707E0F6E3CF25;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x61459D2AF01F24F7;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8) + v37;
  v39 = __ROR8__(v25 & 0xFFFFFFFFFFFFFFF8, 8);
  v40 = ((v39 + v20) | 0x2DC8F1952FF42167) - ((v39 + v20) | v12) + v12;
  v41 = v40 ^ 0xA6A29A9251BD41F6;
  v40 ^= 0xCA402CA53D54B087;
  v42 = (__ROR8__(v41, 8) + v40) ^ 0xFB9714BECA2C68E9;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (v11 - (v38 | v11) + (v38 | 0x2A5B041CB8105979)) ^ 0x4E98181EC8948715;
  v46 = v45 ^ __ROR8__(v37, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0x1A2AEBE44253AF03;
  v48 = (v44 + v43 - ((2 * (v44 + v43)) & 0x5104AEDE8DC1A9F6) - 0x577DA890B91F2B05) ^ 0x150D2B9258E743E0;
  v49 = v48 ^ __ROR8__(v43, 61);
  v50 = __ROR8__(v47, 8) + (v47 ^ __ROR8__(v46, 61));
  v51 = __ROR8__(v48, 8);
  v52 = (((2 * (v51 + v49)) & 0x961131FD6C4BA1E6) - (v51 + v49) - 0x4B0898FEB625D0F4) ^ 0x497C343F90B06C38;
  v53 = v52 ^ __ROR8__(v49, 61);
  v54 = __ROR8__(v52, 8);
  v55 = (((2 * (v54 + v53)) & 0x4EE1F510E21A30FALL) - (v54 + v53) + 0x588F05778EF2E782) ^ v22;
  v56 = v55 ^ __ROR8__(v53, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0x6190A7627E7D0B79;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = __ROR8__(v57, 8);
  v60 = ((v21 | (2 * (v59 + v58))) - (v59 + v58) + v14) ^ v15;
  v61 = __ROR8__(v60, 8);
  v62 = __ROR8__(v58, 61);
  v63 = ((v61 + (v60 ^ v62) - (a4 & (2 * (v61 + (v60 ^ v62)))) + a8) ^ v9) >> (8 * (v25 & 7u));
  v64 = STACK[0x410];
  *v25 = v63 ^ (((((2 * v50) & 0xBE1EC949B5D0EDD2) - v50 - 0x5F0F64A4DAE876EALL) ^ 0xBC0D9890D90D557) >> (8 * (v24 & 7u))) ^ *v24;
  return (*(v17 + 8 * ((v23 != 0) ^ (a9 - 2814))))(v64);
}

uint64_t sub_1969B5858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35)
{
  v40 = (v35 - 123404896) & 0x75B0DBB;
  v41 = v35;
  *(v39 - 112) = (v35 + 5034) ^ (998242381 * ((v39 - 144) ^ 0xAA6F98D6));
  *(v39 - 128) = &a35;
  *(v39 - 144) = a28;
  *(v39 - 120) = v36 + 12;
  (*(v37 + 8 * (v35 ^ 0x1B08)))(v39 - 144, a2, a3, a4, a5, a6, a7, a8);
  return (*(v37 + 8 * ((2716 * (*(v39 - 136) == (v40 ^ (v38 - 2821)))) ^ v41)))(a32);
}

void sub_1969B5904(uint64_t a1@<X0>, uint64_t a2@<X8>, unsigned int a3, uint64_t a4)
{
  a4 = a1;
  a3 = (753662761 * (((&a3 | 0x6292C9CB) - (&a3 & 0x6292C9CB)) ^ 0x7883280)) ^ 0x73E;
  (*(a2 + 55824))(&a3);
  JUMPOUT(0x1969B5970);
}

uint64_t sub_1969B59C4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = (v9 + a8 + 16);
  v13 = v10[1];
  *(v12 - 1) = *v10;
  *v12 = v13;
  return (*(v11 + 8 * ((((a2 & 0x60) == 32) * ((v8 + 3255) ^ 0x3D3)) ^ v8)))();
}

uint64_t sub_1969B6190@<X0>(uint64_t a1@<X1>, int a2@<W3>, uint64_t a3@<X8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q3>)
{
  v10 = (v7 + (a3 + v5));
  v11 = *v10;
  v12 = v10[1];
  v13 = (a1 + a3);
  *v13 = vaddq_s8(vsubq_s8(v11, vandq_s8(vaddq_s8(v11, v11), a5)), a4);
  v13[1] = vaddq_s8(vsubq_s8(v12, vandq_s8(vaddq_s8(v12, v12), a5)), a4);
  return (*(v8 + 8 * ((56 * (a3 + 32 != (v6 - a2 + 115) - 51)) ^ (v9 + v6 + 649))))();
}

uint64_t sub_1969B61FC(uint64_t a1, uint64_t a2, int a3)
{
  v10 = v3 - 1;
  *(v9 + v10) = *(v7 + (v10 & 0xF)) ^ *(v4 + v10) ^ *(v5 + (v10 & 0xF) + 2) ^ ((v10 & 0xF) * ((a3 + 40) ^ 0xD1)) ^ *(v6 + (v10 & 0xF) + 2);
  return (*(v8 + 8 * ((44 * (v10 == 0)) ^ (a3 + 2466))))();
}

uint64_t sub_1969B62AC@<X0>(int a1@<W1>, unsigned int a2@<W2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, int a6@<W7>, unsigned int a7@<W8>)
{
  v15 = (a5 + 4 * v14);
  v16 = (a3 ^ HIDWORD(v13) ^ a4) + (*v15 ^ a7) + a2 * (*(v8 + 4 * v14) ^ a7);
  *(v15 - 1) = (v16 + v10 - (v9 & (2 * v16))) ^ a6;
  return (*(v12 + 8 * (((v14 + 1 == v7) * v11) ^ a1)))();
}

uint64_t sub_1969B63E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>)
{
  v9 = v7 + a1;
  v10 = vaddq_s8(vsubq_s8(*(v6 + v9 + 16), vandq_s8(vaddq_s8(*(v6 + v9 + 16), *(v6 + v9 + 16)), a4)), a5);
  v11 = (a2 + v9);
  *v11 = vaddq_s8(vsubq_s8(*(v6 + v9), vandq_s8(vaddq_s8(*(v6 + v9), *(v6 + v9)), a4)), a5);
  v11[1] = v10;
  return (*(v5 + 8 * (((8 * (v8 == v9)) | ((v8 == v9) << 6)) ^ (a3 + 2345))))();
}

uint64_t sub_1969B6FF4@<X0>(int a1@<W8>)
{
  v8 = v1 - 2;
  v9 = v2 + 2;
  *(v8 + 91) = (v9 ^ v5) * (v9 + 17);
  *(v8 + v4) = (v9 ^ 0xBB) * (v9 + 18);
  return (*(v7 + 8 * (((v3 == 2) * v6) ^ (a1 + 636))))();
}

uint64_t sub_1969B7004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, char a14, int a15, int a16, char a17, uint64_t a18, char *a19, char *a20, char *a21)
{
  a21 = a13;
  a19 = &a14;
  LODWORD(a20) = (v21 + 2479) ^ (1825732043 * ((&a19 & 0x554DCF21 | ~(&a19 | 0x554DCF21)) ^ 0xAA2463E9));
  (*(v23 + 8 * (v21 + 6102)))(&a19, a2, a3, a4, a5, a6, a7, a8);
  a20 = a13;
  a21 = &a17;
  LODWORD(a19) = v21 - 1575331711 * (((&a19 | 0x7778312B) - &a19 + (&a19 & 0x8887CED0)) ^ 0x1B23A429) + 1486;
  (*(v23 + 8 * (v21 + 6075)))(&a19);
  a19 = a13;
  HIDWORD(a20) = v21 - 489239129 * (&a19 ^ 0xB9282336) + 150;
  v24 = (*(v23 + 8 * (v21 ^ 0x1843)))(&a19);
  return (*(v23 + 8 * ((495 * ((((v21 ^ 0xC7) + 1) ^ (a20 == v22 + v21 + 41 - 796)) & 1)) ^ v21)))(v24);
}

uint64_t sub_1969B72F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W8>)
{
  v9 = v7[5];
  v10 = v7[6] + 75;
  v11 = (v7[4] ^ 0x3F) + 2 * (v7[4] & 0x3F) - 7;
  v12 = v10 & 0xA0 | 0x1D;
  v13 = 654144011 * ((v8 - 144) ^ 0x2CD47D9C);
  *(v8 - 128) = a3;
  *(v8 - 136) = v11 ^ (11 * ((v8 + 112) ^ 0x9C));
  *(v8 - 144) = a2;
  *(v8 - 135) = 11 * ((v8 + 112) ^ 0x9C) + v9 - (((a4 - 87) & 0xB6 ^ 0xF4) & (2 * v9)) - 77;
  *(v8 - 116) = (v6 ^ ((v6 ^ 0x3044DC7A) - 1104892046) ^ ((v6 ^ 0x12860442) - 1662617782) ^ ((v6 ^ 0xA8A2AB31) + 650303547) ^ ((v6 ^ 0xFBFFFFFD) + 1973390583) ^ 0xE6B4FC2E) + v13;
  *(v8 - 112) = (a4 + 4319) ^ v13;
  *(v8 - 120) = (11 * ((v8 + 112) ^ 0x9C)) ^ v10 ^ (2 * ((v10 ^ 0x36) & (2 * ((v10 ^ 0x36) & (2 * ((v10 ^ 0x36) & (2 * ((v10 ^ 0x36) & (2 * ((v10 ^ 0x36) & (2 * ((v10 ^ 0x36) & 0x16 ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ 0xED;
  (*(v5 + 8 * (a4 + 6119)))(v8 - 144);
  result = a1;
  *v4 = -1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1969B7518@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v5 = (a1 + v3);
  *&v6 = 0xECECECECECECECECLL;
  *(&v6 + 1) = 0xECECECECECECECECLL;
  *v5 = v6;
  v5[1] = v6;
  return (*(v4 + 8 * ((8015 * (((v2 - 1905527053) & 0x71941FDF ^ 0x17F7) == (a2 & 0xFFFFFFFFFFFFFFE0))) ^ (v2 + 2851))))();
}

uint64_t sub_1969B75D0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a7 + v9 + 16);
  v13 = (a5 + v8 + 16);
  *(v13 - 1) = *(a7 + v9);
  *v13 = v12;
  return (*(v11 + 8 * ((4579 * ((v7 & 0xFFFFFFFFFFFFFFE0) - (a1 - 317) == -2166)) ^ v10)))();
}

void sub_1969B762C()
{
  v0 = STACK[0xA80];
  STACK[0x300] = ((STACK[0xA80] + 4) ^ 0xFFEFF4F6D76C7F3FLL) + 0x2D756BFD78B7CDFFLL + ((2 * (STACK[0xA80] + 4)) & 0xFFDFE9EDAED8FE7ELL);
  v1 = STACK[0xAA0] + (((((v5 + 1136671068) & 0xBC3FD5FD) - 3201) | 0xA14) ^ 0xE18);
  STACK[0x2F0] = (v1 ^ 0xFD6D66FC757E6FFELL) + 0x2FF7F9F7DAA5DD40 + ((2 * v1) & 0xFADACDF8EAFCDFFCLL);
  STACK[0x2E0] = ((STACK[0xAC0] + 4) ^ 0xBDE566F576ACEF7FLL) + 0x6F7FF9FED9775DBFLL + ((2 * (STACK[0xAC0] + 4)) & 0x7BCACDEAED59DEFELL);
  STACK[0x2D0] = ((STACK[0xAE0] + 4) ^ 0x7D65E2F4FC37EF7FLL) - 0x50008200AC13A241 + ((2 * (STACK[0xAE0] + 4)) & 0xFACBC5E9F86FDEFELL);
  v2 = STACK[0xB00];
  STACK[0x2C0] = ((STACK[0xB00] + 4) ^ 0xBD776FF57F34ED7FLL) + 0x6FEDF0FED0EF5FBFLL + ((2 * (STACK[0xB00] + 4)) & 0x7AEEDFEAFE69DAFELL);
  v3 = STACK[0xB10];
  STACK[0x2A0] = ((STACK[0xB10] + 4) ^ 0xBF7D60FC7E6DCF7FLL) + 0x6DE7FFF7D1B67DBFLL + ((2 * (STACK[0xB10] + 4)) & 0x7EFAC1F8FCDB9EFELL);
  v4 = STACK[0xA50] + 10;
  STACK[0x280] = ((STACK[0xA50] + 4) ^ 0xFD7576FD75347D7ELL) + 0x2FEFE9F6DAEFCFC0 + ((2 * (STACK[0xA50] + 4)) & 0xFAEAEDFAEA68FAFCLL);
  STACK[0x270] = ((STACK[0xA40] + 4) ^ 0x7F77E0FFFD36EFBFLL) - 0x5212800BAD12A281 + ((2 * (STACK[0xA40] + 4)) & 0xFEEFC1FFFA6DDF7ELL);
  STACK[0x260] = ((STACK[0xA30] + 4) ^ 0xED6FFAF7DA267D3ELL) + 0x3FF565FC75FDD000 + ((2 * (STACK[0xA30] + 4)) & 0xDADFF5EFB44CFA7CLL);
  STACK[0x250] = ((STACK[0xA20] + 4) ^ 0x2D6FF0F47CF5EDFELL) - 0xA90002CD1A0C0 + ((2 * (STACK[0xA20] + 4)) & 0x5ADFE1E8F9EBDBFCLL);
  STACK[0x230] = ((STACK[0xA10] + 4) ^ 0x6DFF77FCF464EDFFLL) - 0x409A1708A440A0C1 + ((2 * (STACK[0xA10] + 4)) & 0xDBFEEFF9E8C9DBFELL);
  STACK[0x210] = ((STACK[0xB30] + 4) ^ 0x6F6FE0F6FD37FD7FLL) - 0x420A8002AD13B041 + ((2 * (STACK[0xB30] + 4)) & 0xDEDFC1EDFA6FFAFELL);
  STACK[0x200] = ((v0 + 6) ^ 0x6EED8F765F7CFDB9) - 0x8986425554A811 + ((2 * (v0 + 6)) & 0xDDDB1EECBEF9FB72);
  STACK[0x2B0] = v2 + 10;
  STACK[0x290] = v3 + 10;
  STACK[0x310] = v4;
  STACK[0x390] = STACK[0x8E8];
  STACK[0x380] = STACK[0x6C8];
  STACK[0x370] = STACK[0x7D8];
  STACK[0x360] = STACK[0x748];
  STACK[0x400] = STACK[0x550];
  STACK[0x3E0] = STACK[0x950];
  STACK[0x3C0] = STACK[0x618];
  STACK[0x350] = STACK[0x4F0];
  STACK[0x340] = STACK[0x7A0];
  STACK[0x330] = STACK[0x600];
  STACK[0x320] = STACK[0x818];
  STACK[0x3B0] = STACK[0x598];
  LODWORD(STACK[0x3F0]) = LOWORD(STACK[0x9EE]);
  LODWORD(STACK[0x410]) = LOWORD(STACK[0x9DE]);
  LODWORD(STACK[0x3A0]) = LOWORD(STACK[0x9CA]);
  LODWORD(STACK[0x3D0]) = LOWORD(STACK[0x986]);
  JUMPOUT(0x196A17488);
}

uint64_t sub_1969B779C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  *(v18 - 136) = v16 + 1283153057 * ((-853122155 - ((v18 - 144) | 0xCD266395) + ((v18 - 144) | 0x32D99C6A)) ^ 0x7D019F5D) + 2333;
  *(v18 - 112) = &a13;
  *(v18 - 104) = v14;
  *(v18 - 128) = v13;
  *(v18 - 120) = &a11;
  *(v18 - 144) = &a11;
  v19 = (*(v17 + 8 * (v16 + 4988)))(v18 - 144, a2, a3, a4, a5, a6, a7, a8);
  return (*(v17 + 8 * ((97 * (((269 * (v16 ^ 0x71E) - 1694) ^ 0xA599B6CF) + v15 < 0x7FFFFFFF)) ^ (269 * (v16 ^ 0x71E)))))(v19);
}

uint64_t sub_1969B7C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v35 = *(v32 + 40);
  v36 = *(v32 + 8);
  *(v33 - 196) = (v30 + 4782) ^ 0x189C;
  v37 = veorq_s8(*v35, xmmword_196EBFA80);
  *(v33 - 128) = veorq_s8(*v36, xmmword_196EBFA90);
  *(v33 - 112) = v37;
  v38 = *(v31 + 8 * (v30 ^ (35 * (v34 == 0))));
  *(v33 - 200) = -42900;
  return v38(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v32);
}

uint64_t sub_1969B7D44@<X0>(unsigned __int16 a1@<W8>)
{
  v4 = ((((v2 ^ 0x656A) - 25962) ^ ((v2 ^ 0x9DFA) + 25094) ^ (v1 - 9641 + (v2 ^ (6 * (v1 ^ 0x67B)) ^ 0x1965))) + 22649);
  v5 = v4 < 0x71AE;
  v6 = v4 > (a1 + 29102);
  if (a1 > 0x8E51u != v5)
  {
    v6 = v5;
  }

  return (*(v3 + 8 * ((2278 * v6) ^ v1)))();
}

uint64_t sub_1969B7E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = v67 - 16;
  v74.i64[0] = v70 + v73 - 7;
  v74.i64[1] = v70 + v73 - 8;
  *&STACK[0x330] = v74;
  v74.i64[0] = v70 + v73 - 5;
  v74.i64[1] = v70 + v73 - 6;
  *&STACK[0x3E0] = v74;
  v75.i64[0] = v70 + v73 + 3;
  v75.i64[1] = v70 + v73 + 2;
  v76.i64[0] = v70 + v73 + 5;
  v76.i64[1] = v70 + v73 + 4;
  v77.i64[0] = v70 + v73 + 7;
  v77.i64[1] = v70 + v73 + 6;
  *&STACK[0x300] = v77;
  v74.i64[0] = v70 + v73 + ((v68 + 1217) ^ v66) + 8;
  v74.i64[1] = v70 + v73;
  *&STACK[0x320] = v74;
  v78 = vandq_s8(v74, *&STACK[0x3C0]);
  v79 = vandq_s8(v77, *&STACK[0x3C0]);
  v80 = vandq_s8(v76, *&STACK[0x3C0]);
  v81 = vandq_s8(v75, *&STACK[0x3C0]);
  v82 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  *&STACK[0x310] = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v83 = *&STACK[0x2C0];
  v84 = *&STACK[0x2D0];
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), *&STACK[0x2D0]);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), *&STACK[0x2D0]);
  v87 = veorq_s8(v86, *&STACK[0x410]);
  v88 = veorq_s8(v85, *&STACK[0x410]);
  v89 = veorq_s8(v85, *&STACK[0x400]);
  v90 = veorq_s8(v86, *&STACK[0x400]);
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v90);
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v89);
  v93 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v91, *&STACK[0x2C0]), vorrq_s8(v91, a65)), a65), *&STACK[0x2B0]);
  v94 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v92, *&STACK[0x2C0]), vorrq_s8(v92, a65)), a65), *&STACK[0x2B0]);
  v95 = *&STACK[0x2B0];
  v96 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v97 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v98 = *&STACK[0x290];
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v96), *&STACK[0x2A0]);
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v97), *&STACK[0x2A0]);
  v101 = *&STACK[0x2A0];
  v102 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v103 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v104 = vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL);
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v103);
  v106 = vaddq_s64(v104, v102);
  v107 = *&STACK[0x280];
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v106, v106), *&STACK[0x290]), v106), *&STACK[0x3F0]), *&STACK[0x280]);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v105, v105), *&STACK[0x290]), v105), *&STACK[0x3F0]), *&STACK[0x280]);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v111 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v112 = vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL);
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v111);
  v114 = vaddq_s64(v112, v110);
  v116 = *&STACK[0x390];
  v115 = *&STACK[0x3A0];
  v117 = *&STACK[0x340];
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v113, *&STACK[0x3A0]), vorrq_s8(v113, *&STACK[0x340])), *&STACK[0x340]), *&STACK[0x390]);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v114, *&STACK[0x3A0]), vorrq_s8(v114, *&STACK[0x340])), *&STACK[0x340]), *&STACK[0x390]);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v121 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), v71);
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v121), v71);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v125 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v126 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v125);
  v128 = vaddq_s64(v126, v124);
  v129 = *&STACK[0x370];
  v130 = *&STACK[0x380];
  v131 = *&STACK[0x360];
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v128, v128), *&STACK[0x380]), v128), *&STACK[0x370]), *&STACK[0x360]);
  v133 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v127, v127), *&STACK[0x380]), v127), *&STACK[0x370]), *&STACK[0x360]);
  v134 = vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL);
  v135 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v136 = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  v125.i64[0] = v70 + v73 - 3;
  v125.i64[1] = v70 + v73 - 4;
  *&STACK[0x3D0] = v125;
  v137 = vaddq_s64(v82, v84);
  v138 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), veorq_s8(v132, v134));
  v139 = vaddq_s64(v136, v135);
  v141 = *&STACK[0x250];
  v140 = *&STACK[0x260];
  v142 = *&STACK[0x230];
  v125.i64[0] = -1;
  v125.i64[1] = -1;
  v143 = *&STACK[0x200];
  v144 = *&STACK[0x3B0];
  v254.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v138, *&STACK[0x260]), *&STACK[0x250]), veorq_s8(vandq_s8(v138, *&STACK[0x230]), v72)), v125), *&STACK[0x200]), vnegq_s64(vandq_s8(vshlq_n_s64(v75, 3uLL), *&STACK[0x3B0])));
  v254.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v139, *&STACK[0x260]), *&STACK[0x250]), veorq_s8(vandq_s8(v139, *&STACK[0x230]), v72)), v125), *&STACK[0x200]), vnegq_s64(vandq_s8(vshlq_n_s64(v76, 3uLL), *&STACK[0x3B0])));
  v145 = *&STACK[0x410];
  v146 = veorq_s8(v137, *&STACK[0x410]);
  v147 = *&STACK[0x400];
  v148 = veorq_s8(v137, *&STACK[0x400]);
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v148);
  v150 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v149, v83), vorrq_s8(v149, a65)), a65), v95);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v152 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151), v101);
  v153 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v154 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v153);
  v155 = *&STACK[0x3F0];
  v156 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v154, v154), v98), v154), *&STACK[0x3F0]), v107);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v158 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157);
  v159 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v158, v115), vorrq_s8(v158, v117)), v117), v116);
  v160 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v161 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160), v71);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162);
  v164 = v130;
  v165 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v163, v163), v130), v163), v129), v131);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v162.i64[0] = v70 + v73 - 1;
  v162.i64[1] = v70 + v73 - 2;
  *&STACK[0x2F0] = v162;
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166);
  v168 = vaddq_s64(veorq_s8(vandq_s8(v167, v140), v141), veorq_s8(vandq_s8(v167, v142), v72));
  v169 = *&STACK[0x3C0];
  *&STACK[0x2E0] = vandq_s8(v162, *&STACK[0x3C0]);
  v170 = v84;
  v171 = vaddq_s64(*&STACK[0x310], v84);
  v84.i64[0] = -1;
  v84.i64[1] = -1;
  v172 = vaddq_s64(v168, v84);
  v173 = v143;
  v254.val[0] = vshlq_u64(veorq_s8(v172, v143), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x300], 3uLL), v144)));
  v174 = veorq_s8(v171, v145);
  v175 = veorq_s8(v171, v147);
  v176 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175);
  v177 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v176, v83), vorrq_s8(v176, a65)), a65), v95);
  v178 = v95;
  v179 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v180 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v179), v101);
  v181 = v101;
  v182 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v182);
  v184 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v183, v183), v98), v183), v155), v107);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185);
  v187 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v186, v115), vorrq_s8(v186, v117)), v117), v116);
  v188 = veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v189 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v188), v71);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v191 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v190);
  v192 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v191, v191), v164), v191), v129), v131);
  v193 = veorq_s8(v192, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v194 = vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL);
  v195 = vandq_s8(*&STACK[0x3D0], v169);
  v196 = vaddq_s64(v194, v193);
  v197 = vandq_s8(*&STACK[0x3E0], v169);
  v155.i64[0] = -1;
  v155.i64[1] = -1;
  v254.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v196, v140), v141), veorq_s8(vandq_s8(v196, v142), v72)), v155), v173), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x320], 3uLL), v144)));
  v198 = *&STACK[0x330];
  v199 = vandq_s8(*&STACK[0x330], v169);
  v200 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v201 = vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL);
  v202 = vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL);
  v203 = vsraq_n_u64(vshlq_n_s64(*&STACK[0x2E0], 0x38uLL), *&STACK[0x2E0], 8uLL);
  v204 = vaddq_s64(v201, v170);
  v205 = vaddq_s64(v200, v170);
  *&STACK[0x320] = vqtbl4q_s8(v254, *&STACK[0x350]);
  v254.val[0] = veorq_s8(v205, v145);
  v254.val[1] = veorq_s8(v204, v145);
  v254.val[2] = veorq_s8(v204, v147);
  v254.val[3] = veorq_s8(v205, v147);
  v254.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v254.val[0], 0x38uLL), v254.val[0], 8uLL), v254.val[3]);
  v254.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v254.val[1], 0x38uLL), v254.val[1], 8uLL), v254.val[2]);
  v254.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v254.val[0], v83), vorrq_s8(v254.val[0], a65)), a65), v178);
  v254.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v254.val[1], v83), vorrq_s8(v254.val[1], a65)), a65), v178);
  v254.val[2] = veorq_s8(v254.val[1], vsraq_n_u64(vshlq_n_s64(v254.val[2], 3uLL), v254.val[2], 0x3DuLL));
  v254.val[3] = veorq_s8(v254.val[0], vsraq_n_u64(vshlq_n_s64(v254.val[3], 3uLL), v254.val[3], 0x3DuLL));
  v254.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v254.val[1], 0x38uLL), v254.val[1], 8uLL), v254.val[2]), v181);
  v254.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v254.val[0], 0x38uLL), v254.val[0], 8uLL), v254.val[3]), v181);
  v206 = vsraq_n_u64(vshlq_n_s64(v254.val[2], 3uLL), v254.val[2], 0x3DuLL);
  v254.val[2] = veorq_s8(v254.val[0], vsraq_n_u64(vshlq_n_s64(v254.val[3], 3uLL), v254.val[3], 0x3DuLL));
  v254.val[3] = veorq_s8(v254.val[1], v206);
  v207 = vsraq_n_u64(vshlq_n_s64(v254.val[0], 0x38uLL), v254.val[0], 8uLL);
  v254.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v254.val[1], 0x38uLL), v254.val[1], 8uLL), v254.val[3]);
  v254.val[1] = vaddq_s64(v207, v254.val[2]);
  v254.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v254.val[1], v254.val[1]), v98), v254.val[1]), *&STACK[0x3F0]), v107);
  v254.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v254.val[0], v254.val[0]), v98), v254.val[0]), *&STACK[0x3F0]), v107);
  v208 = vsraq_n_u64(vshlq_n_s64(v254.val[2], 3uLL), v254.val[2], 0x3DuLL);
  v254.val[2] = veorq_s8(v254.val[0], vsraq_n_u64(vshlq_n_s64(v254.val[3], 3uLL), v254.val[3], 0x3DuLL));
  v254.val[3] = veorq_s8(v254.val[1], v208);
  v209 = vsraq_n_u64(vshlq_n_s64(v254.val[0], 0x38uLL), v254.val[0], 8uLL);
  v254.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v254.val[1], 0x38uLL), v254.val[1], 8uLL), v254.val[3]);
  v254.val[1] = vaddq_s64(v209, v254.val[2]);
  v254.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v254.val[0], *&STACK[0x3A0]), vorrq_s8(v254.val[0], *&STACK[0x340])), *&STACK[0x340]), *&STACK[0x390]);
  v254.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v254.val[1], *&STACK[0x3A0]), vorrq_s8(v254.val[1], *&STACK[0x340])), *&STACK[0x340]), *&STACK[0x390]);
  v254.val[2] = veorq_s8(v254.val[1], vsraq_n_u64(vshlq_n_s64(v254.val[2], 3uLL), v254.val[2], 0x3DuLL));
  v254.val[3] = veorq_s8(v254.val[0], vsraq_n_u64(vshlq_n_s64(v254.val[3], 3uLL), v254.val[3], 0x3DuLL));
  v254.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v254.val[1], 0x38uLL), v254.val[1], 8uLL), v254.val[2]), v71);
  v254.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v254.val[0], 0x38uLL), v254.val[0], 8uLL), v254.val[3]), v71);
  v210 = vsraq_n_u64(vshlq_n_s64(v254.val[2], 3uLL), v254.val[2], 0x3DuLL);
  v254.val[2] = veorq_s8(v254.val[0], vsraq_n_u64(vshlq_n_s64(v254.val[3], 3uLL), v254.val[3], 0x3DuLL));
  v254.val[3] = veorq_s8(v254.val[1], v210);
  v211 = vsraq_n_u64(vshlq_n_s64(v254.val[0], 0x38uLL), v254.val[0], 8uLL);
  v254.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v254.val[1], 0x38uLL), v254.val[1], 8uLL), v254.val[3]);
  v254.val[1] = vaddq_s64(v211, v254.val[2]);
  v254.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v254.val[1], v254.val[1]), *&STACK[0x380]), v254.val[1]), *&STACK[0x370]), *&STACK[0x360]);
  v254.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v254.val[0], v254.val[0]), *&STACK[0x380]), v254.val[0]), *&STACK[0x370]), *&STACK[0x360]);
  v212 = vsraq_n_u64(vshlq_n_s64(v254.val[2], 3uLL), v254.val[2], 0x3DuLL);
  v254.val[2] = veorq_s8(v254.val[0], vsraq_n_u64(vshlq_n_s64(v254.val[3], 3uLL), v254.val[3], 0x3DuLL));
  v254.val[3] = veorq_s8(v254.val[1], v212);
  v213 = vsraq_n_u64(vshlq_n_s64(v254.val[0], 0x38uLL), v254.val[0], 8uLL);
  v214 = vaddq_s64(v202, v170);
  v254.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v254.val[1], 0x38uLL), v254.val[1], 8uLL), v254.val[3]);
  v254.val[1] = vaddq_s64(v213, v254.val[2]);
  v254.val[2].i64[0] = -1;
  v254.val[2].i64[1] = -1;
  v202.i64[0] = -1;
  v202.i64[1] = -1;
  v254.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v254.val[0], v140), v141), veorq_s8(vandq_s8(v254.val[0], v142), v72)), v254.val[2]), v173), vnegq_s64(vandq_s8(vshlq_n_s64(v198, 3uLL), *&STACK[0x3B0])));
  v254.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v254.val[1], v140), v141), veorq_s8(vandq_s8(v254.val[1], v142), v72)), v254.val[2]), v173), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3E0], 3uLL), *&STACK[0x3B0])));
  v215 = veorq_s8(v214, *&STACK[0x410]);
  v216 = veorq_s8(v214, *&STACK[0x400]);
  v217 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL), v216);
  v218 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v217, v83), vorrq_s8(v217, a65)), a65), v178);
  v219 = veorq_s8(v218, vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL));
  v220 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), v219), v181);
  v221 = veorq_s8(v220, vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL));
  v222 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v221);
  v223 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v222, v222), v98), v222), *&STACK[0x3F0]), v107);
  v224 = veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL));
  v225 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v224);
  v226 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v225, *&STACK[0x3A0]), vorrq_s8(v225, *&STACK[0x340])), *&STACK[0x340]), *&STACK[0x390]);
  v227 = veorq_s8(v226, vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL));
  v228 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), v227), v71);
  v229 = veorq_s8(v228, vsraq_n_u64(vshlq_n_s64(v227, 3uLL), v227, 0x3DuLL));
  v230 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL), v229);
  v231 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v230, v230), *&STACK[0x380]), v230), *&STACK[0x370]), *&STACK[0x360]);
  v232 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL), veorq_s8(v231, vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL)));
  v233 = vaddq_s64(v203, v170);
  v254.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v232, v140), v141), veorq_s8(vandq_s8(v232, v142), v72)), v202), v173), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3D0], 3uLL), *&STACK[0x3B0])));
  v234 = veorq_s8(v233, *&STACK[0x410]);
  v235 = veorq_s8(v233, *&STACK[0x400]);
  v236 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), v235);
  v237 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v236, v83), vorrq_s8(v236, a65)), a65), v178);
  v238 = veorq_s8(v237, vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL));
  v239 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v237, 0x38uLL), v237, 8uLL), v238), v181);
  v240 = veorq_s8(v239, vsraq_n_u64(vshlq_n_s64(v238, 3uLL), v238, 0x3DuLL));
  v241 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL), v240);
  v242 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v241, v241), v98), v241), *&STACK[0x3F0]), v107);
  v243 = veorq_s8(v242, vsraq_n_u64(vshlq_n_s64(v240, 3uLL), v240, 0x3DuLL));
  v244 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL), v243);
  v245 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v244, *&STACK[0x3A0]), vorrq_s8(v244, *&STACK[0x340])), *&STACK[0x340]), *&STACK[0x390]);
  v246 = veorq_s8(v245, vsraq_n_u64(vshlq_n_s64(v243, 3uLL), v243, 0x3DuLL));
  v247 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v245, 0x38uLL), v245, 8uLL), v246), v71);
  v248 = veorq_s8(v247, vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL));
  v249 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), v248);
  v250 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v249, v249), *&STACK[0x380]), v249), *&STACK[0x370]), *&STACK[0x360]);
  v251 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL), veorq_s8(v250, vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL)));
  v254.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v251, v140), v141), veorq_s8(vandq_s8(v251, v142), v72)), v202), v173), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2F0], 3uLL), *&STACK[0x3B0])));
  v251.i64[0] = vqtbl4q_s8(v254, *&STACK[0x350]).u64[0];
  v254.val[0] = *&STACK[0x320];
  v254.val[0].i64[1] = v251.i64[0];
  v252 = vrev64q_s8(v254.val[0]);
  *(v70 + v73 - 8) = vextq_s8(v252, v252, 8uLL);
  return (*(STACK[0x248] + 8 * (((v69 == v73) * v65) ^ v68)))();
}

uint64_t sub_1969B7E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, unsigned int a39)
{
  v44 = v43[396] ^ ((*v43 & 0x7FFFFFFE | v43[623] & 0x80000000) >> 1);
  v43[623] = (v44 + (v39 ^ v40 ^ 0xF3CC13A2) - ((v44 << (((v39 - 107) | 0x15) ^ v42)) & a5)) ^ *(v41 + 4 * (*v43 & 1));
  return (*(a2 + 8 * ((1978 * (a39 > 0x26F)) ^ v39)))(a1);
}

uint64_t sub_1969B8010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v21 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v17 - 4715) - 4;
  v22 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v17 ^ 0x131Bu)) - 12;
  v23 = v22[*(v19 - 111) ^ 0x40] - 78;
  v24 = v23 & 0xA8 ^ 0xE8;
  v25 = v23 ^ (2 * ((v23 ^ 0x58) & (2 * ((v23 ^ 0x58) & (2 * ((v23 ^ 0x58) & (2 * ((v23 ^ 0x58) & (2 * v24) ^ v24)) ^ v24)) ^ v24)) ^ v24));
  v26 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v17 - 4172) - 8;
  v27 = (v26[*(v19 - 100) ^ 0xC7] ^ 0xB7) << 24;
  v28 = v26[*(v19 - 108) ^ 0xFLL];
  v29 = v28 - (((v28 ^ 0x53) + 103) ^ ((v28 ^ 0xFFFFFFDC) - 22) ^ ((v28 ^ 0x32) + 8));
  v30 = v29 - 32;
  v31 = v29 & 0x13;
  v32 = v30 ^ (2 * ((v30 ^ 0x28) & (2 * ((v30 ^ 0x28) & (2 * ((v30 ^ 0x28) & (2 * ((v30 ^ 0x28) & (2 * ((v30 ^ 0x28) & (2 * (((2 * v31) ^ 0x3A) & (v30 ^ 0x28) ^ v31 ^ 0x75)) ^ v31 ^ 0x75)) ^ v31 ^ 0x75)) ^ v31 ^ 0x75)) ^ v31 ^ 0x75)) ^ v31 ^ 0x75));
  v33 = v28 + (((v32 ^ 0x5C) - 59) ^ ((v32 ^ 0x38) - 95) ^ ((v32 ^ 0xFFFFFF89) + 18)) - 49;
  v34 = v33 & 0x41 ^ 0xFFFFFFC7;
  v35 = (((v33 ^ 0x3A) & (2 * ((v33 ^ 0x3A) & (2 * ((v33 ^ 0x3A) & (2 * ((v33 ^ 0x3A) & (2 * ((v33 ^ 0x3A) & (2 * (((2 * v33) & 0x76 ^ 0x7A) & (v33 ^ 0x3A) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34) << 25) ^ (v33 << 24);
  LOBYTE(v32) = v22[*(v19 - 103) ^ 0xB9] - 85;
  LOBYTE(v34) = v32 & 0x35 ^ 0xBF;
  LOBYTE(v32) = v32 ^ (2 * ((v32 ^ 0x5E) & (2 * ((v32 ^ 0x5E) & (2 * ((v32 ^ 0x5E) & (2 * ((v32 ^ 0x5E) & (2 * ((v32 ^ 0x5E) & (2 * (((2 * (v32 & 0x1F)) ^ 0x6A) & (v32 ^ 0x5E) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34));
  LOBYTE(v34) = v22[*(v19 - 99) ^ 0x51] - 19;
  v36 = v34 & 0x2F ^ 0x49;
  LOBYTE(v34) = v34 ^ (2 * ((v34 ^ 0x1C) & (2 * ((v34 ^ 0x1C) & (2 * ((v34 ^ 0x1C) & (2 * ((v34 ^ 0x1C) & (2 * ((v34 ^ 0x1C) & (2 * (((2 * v34) & 0x3A ^ 0x32) & v34 ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36));
  v37 = v22[*(v19 - 107) ^ 0xFCLL] - 80;
  v38 = v37 & 0x6A ^ 0x48;
  v39 = v25 << 16;
  v40 = ((v32 << 16) ^ 0x8F88FF8F) & (((v21[*(v19 - 102) ^ 0x9ELL] ^ *(v19 - 102)) << (v17 ^ 0xA9)) ^ 0x8F98688F) | (v32 << 16) & 0x670000;
  v41 = (v35 ^ 0x3FFFFFFC) & (((v37 ^ (2 * ((v37 ^ 0x58) & (2 * ((v37 ^ 0x58) & (2 * ((v37 ^ 0x58) & (2 * ((v37 ^ 0x58) & (2 * ((v37 ^ 0x58) & (2 * v38) ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38))) << 16) ^ 0x688E9D3C) | v35 & 0x97000000;
  v42 = (v39 | 0xFF00FFFF) & ((v26[*(v19 - 112) ^ 0xBDLL] << 24) ^ 0x48935AB4) | v39 & 0x6C0000;
  v251 = v26;
  v43 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v17 - 4340) - 12;
  v44 = v43[*(v19 - 97) ^ 0xD8];
  v45 = ((2 * ((v44 >> 1) | (v44 << 7))) & 0xFFFFFF9F) + (((v44 >> 1) | (v44 << 7)) ^ 0xFFFFFFCF);
  v46 = v45 & 0x3C ^ 0xAE;
  LOBYTE(v45) = v45 + 64;
  v47 = v46 ^ v45 & 0xF1;
  LOBYTE(v45) = v45 ^ (2 * ((v45 ^ 0x70) & (2 * ((v45 ^ 0x70) & (2 * ((v45 ^ 0x70) & (2 * ((v45 ^ 0x70) & (2 * ((v45 ^ 0x70) & (2 * ((v45 ^ 0x70) & (2 * (v45 & 0xF1)) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ v47));
  v48 = (v45 ^ 0xFFFFFF30) & ((v34 << 16) & 0x650000 ^ 0x5F54034D ^ ((v34 << 16) ^ 0xFFB1FF30) & (((((v21[*(v19 - 98) ^ 0xFCLL] ^ *(v19 - 98)) << 8) ^ 0x73273754) & (v27 ^ 0x60E7FFFC) | v27 & 0x8C000000) ^ 0x56BD0864));
  v49 = v43[*(v19 - 105) ^ 0xAALL];
  v50 = (((v49 >> 1) | (v49 << 7)) ^ 0xFFFFFFFB) + ((2 * ((v49 >> 1) | (v49 << 7))) & 0xFFFFFFF7) + 104;
  LOBYTE(v39) = v50 & 0x81 | 0x12;
  LOBYTE(v50) = v50 ^ (2 * ((v50 ^ 0x1C) & (2 * ((v50 ^ 0x1C) & (2 * ((v50 ^ 0x1C) & (2 * ((v50 ^ 0x1C) & (2 * ((v50 ^ 0x1C) & (2 * ((v50 ^ 0x1C) & (2 * (v50 & 0x81)) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39));
  v51 = v43[*(v19 - 101) ^ 0x75];
  v52 = ((2 * ((v51 >> 1) | (v51 << 7))) & 0xFF9C) + (((v51 >> 1) | (v51 << 7)) ^ 0x4E);
  v250 = v43;
  v53 = (v43[*(v19 - 109) ^ 0x56] >> 1) | (v43[*(v19 - 109) ^ 0x56] << 7);
  LOBYTE(v53) = ((2 * v53) & 0xBA) + (v53 ^ 0xDD);
  LOBYTE(v39) = v52 & 0xC6 ^ 0x8A;
  LOBYTE(v52) = v52 ^ (2 * ((v52 ^ 0x30) & (2 * ((v52 ^ 0x30) & (2 * ((v52 ^ 0x30) & (2 * ((v52 ^ 0x30) & (2 * ((v52 ^ 0x30) & (2 * v39) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39));
  v54 = (v52 & 0xFE ^ 0xFFFFFF38) & (v40 & 0x223DB02 ^ 0x8F55766C ^ (v40 ^ 0x70002450) & ((v26[*(v19 - 104) ^ 0xE7] << 24) ^ 0xA9DC24DC));
  LOBYTE(v34) = v53 & 0x6F ^ 0xE6;
  LOBYTE(v34) = v53 ^ (2 * ((v53 ^ 0x22) & (2 * ((v53 ^ 0x22) & (2 * ((v53 ^ 0x22) & (2 * ((v53 ^ 0x22) & (2 * ((v53 ^ 0x22) & (2 * ((v53 ^ 2) & (2 * v53) & 0x46 ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34));
  v55 = (v34 | 0xFFFFFF00) & (((v42 ^ 0x4A20A540) & (((v21[*(v19 - 110) ^ 9] ^ *(v19 - 110)) << 8) ^ 0xCE20A2E4) | v42 & 0x31DF0000) ^ 0x12B56166);
  v252 = v21;
  v56 = (v50 & 0x79 | (v41 ^ 0x507801BA) & (v50 ^ 0xFFFFBF2E)) ^ 0x8DEB3EE;
  v57 = (v21[*(v19 - 106) ^ 0xE3] ^ *(v19 - 106)) << 8;
  *(v19 - 124) = v57 & 0xD000 ^ 0xF7F3BBAC ^ v56 & (v57 ^ 0xFFFFECFF);
  *(v19 - 128) = v52 & 0x4D ^ 0x798EEAE7 ^ v54;
  v257 = v34 & 0x7D ^ 0xD6E01527 ^ v55;
  *(v19 - 132) = (v45 & 0x82 | v48) ^ 0x24F7C9BD;
  HIDWORD(a11) = (((v18 ^ 0x8559D43D) + 460920127) ^ ((v18 ^ 0x883394B4) + 370365880) ^ ((v18 ^ 0x7B29576) - 1718463370)) + 2108363480;
  v58 = v17 ^ 0x1EA6;
  v253 = v20;
  *(v19 - 120) = 0;
  v59 = v20;
  v60 = v43[v20[7] ^ 0x71];
  v61 = v22[v20[9] ^ 7] + 3;
  LOBYTE(v57) = v61 & 0x91 ^ 0x8D;
  LOBYTE(v57) = v61 ^ (2 * ((v61 ^ 6) & (2 * ((v61 ^ 6) & (2 * ((v61 ^ 6) & (2 * ((v61 ^ 6) & (2 * ((v61 ^ 6) & (2 * (((2 * (v61 & 7)) ^ 0x16) & (v61 ^ 6) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57));
  v256 = (19 * (v58 ^ 0xCFC)) ^ 0x12AA;
  v62 = v43[v20[v256] ^ 0xB1];
  v63 = (v62 >> 1) | (v62 << 7);
  v64 = v43[v20[15] ^ 0xFALL];
  v65 = (((v64 >> 1) | (v64 << 7)) ^ 0xFFFFFFAF) + (v64 & 0x5E) + 116;
  v66 = v65 & 0xFFFFFFB3 ^ 0x7B;
  v67 = v65 ^ (2 * ((v65 ^ 0x5C) & (2 * ((v65 ^ 0x5C) & (2 * ((v65 ^ 0x5C) & (2 * ((v65 ^ 0x5C) & (2 * ((v65 ^ 0x5C) & (2 * (((2 * v65) & 0x3A ^ 0x6E) & (v65 ^ 0x5C) ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ v66));
  v68 = v26[*v20 ^ 0x21];
  v69 = ((v60 >> 1) | (v60 << 7)) - (v60 & 0x4A) + 37;
  v70 = ((v57 << 16) ^ 0xF83FFFFF) & (((v21[v59[10] ^ 0x37] ^ v59[10]) << 8) ^ 0x28424B98) | (v57 << 16) & 0xBD0000;
  v255 = v63 - ((2 * v63) & 0xE4);
  v71 = (v67 & 0xFE ^ 0xFFFFFFFD) & (((v21[v59[14] ^ 0x2BLL] ^ v59[14]) << 8) ^ 0xB68F3946) | v67 & 0xB9;
  v72 = v26[v20[8] ^ 0xAELL] << 24;
  v73 = v70 ^ 0x429BF210;
  v74 = (v70 ^ 0x429BF210) & (v72 ^ 0xFDFFFF9D) ^ v72 & 0x95000000;
  LOBYTE(v70) = v22[v59[1] ^ 0xF0] - 69;
  LOBYTE(v55) = v70 & 0x25 ^ 0xBF;
  LOBYTE(v21) = v70 ^ (2 * ((v70 ^ 0x4E) & (2 * ((v70 ^ 0x4E) & (2 * ((v70 ^ 0x4E) & (2 * ((v70 ^ 0x4E) & (2 * ((v70 ^ 0x4E) & (2 * (((2 * (v70 & 0xF)) ^ 0x6A) & (v70 ^ 0x4E) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55));
  *(v19 - 116) = v252[v59[6] ^ 0x9ELL] ^ v59[6];
  v75 = v59[4] - ((2 * v59[4]) & 0xCC) + 312473190;
  v76 = 270468338 - (((v75 ^ 0xDEFE686E) + 1445074801) ^ ((v75 ^ 0x4E1D3B84) - 960412517) ^ ((v75 ^ 0x827CA5EA) + 178313973));
  v77 = ((2 * (v76 & 0x8A248493)) & 0x4400920 | v76 & 0x8A248493) ^ (2 * (v76 & 0x8A248493)) & (v76 ^ 0x8E76ABAA);
  v78 = ((2 * (v76 ^ 0x8E76ABAA)) ^ 0x8A45E72) & (v76 ^ 0x8E76ABAA) ^ (2 * (v76 ^ 0x8E76ABAA)) & 0x4522F38;
  v79 = v78 ^ 0x4522109;
  v80 = (v78 ^ 0x4400711) & (4 * v77) ^ v77;
  v81 = ((4 * v79) ^ 0x1148BCE4) & v79 ^ (4 * v79) & 0x4522F38;
  v82 = (v81 ^ 0x402C29) & (16 * v80) ^ v80;
  v83 = ((16 * (v81 ^ 0x4120319)) ^ 0x4522F390) & (v81 ^ 0x4120319) ^ (16 * (v81 ^ 0x4120319)) & 0x4522F30;
  v84 = v82 ^ 0x4522F39 ^ (v83 ^ 0x4022300) & (v82 << 8);
  v85 = 1358650696 - (((v75 ^ 0x3EAAB436) - 1051374646) ^ ((v75 ^ 0xF04EA5DA) + 263281190) ^ ((v75 ^ 0xDC7BE78A) + 595859574));
  v86 = (v85 ^ 0x1B660A59) & (2 * (v85 & 0x9C64AC52)) ^ v85 & 0x9C64AC52;
  v87 = ((2 * (v85 ^ 0x23661AFD)) ^ 0x7E056D5E) & (v85 ^ 0x23661AFD) ^ (2 * (v85 ^ 0x23661AFD)) & 0xBF02B6AE;
  v88 = v87 ^ 0x810292A1;
  v89 = (v87 ^ 0x32002008) & (4 * v86) ^ v86;
  v90 = ((4 * v88) ^ 0xFC0ADABC) & v88 ^ (4 * v88) & 0xBF02B6AC;
  v91 = (v90 ^ 0xBC0292A0) & (16 * v89) ^ v89;
  v92 = ((16 * (v90 ^ 0x3002403)) ^ 0xF02B6AF0) & (v90 ^ 0x3002403) ^ (16 * (v90 ^ 0x3002403)) & 0xBF02B6A0;
  v93 = v91 ^ 0xBF02B6AF ^ (v92 ^ 0xB0022200) & (v91 << 8);
  v94 = v85 ^ v75 ^ v76 ^ (2 * (v93 ^ v84 ^ (v84 << 16) & 0x4520000 ^ (v93 << 16) & 0x3F020000 ^ ((v93 << 16) ^ 0x36AF0000) & (((v92 ^ 0xF00940F) << 8) & 0xBF020000 ^ 0x3D000000 ^ (((v92 ^ 0xF00940F) << 8) ^ 0x2B60000) & (v92 ^ 0xF00940F)) ^ ((v84 << 16) ^ 0x2F390000) & (((v83 ^ 0x500C29) << 8) & 0x4520000 ^ 0x4500000 ^ (((v83 ^ 0x500C29) << 8) ^ 0x522F0000) & (v83 ^ 0x500C29))));
  v95 = (((v94 ^ 0x939534AD) + 499388165) ^ ((v94 ^ 0x5B269046) - 713577488) ^ ((v94 ^ 0xDEE94960) + 1354265290)) - 1303577940;
  v96 = (v95 ^ 0x35270F06) & (2 * (v95 & 0xB5A72F97)) ^ v95 & 0xB5A72F97;
  v97 = ((2 * (v95 ^ 0x762D132E)) ^ 0x87147972) & (v95 ^ 0x762D132E) ^ (2 * (v95 ^ 0x762D132E)) & 0xC38A3CB8;
  v98 = v97 ^ 0x408A0489;
  v99 = (v97 ^ 0x83003830) & (4 * v96) ^ v96;
  v100 = ((4 * v98) ^ 0xE28F2E4) & v98 ^ (4 * v98) & 0xC38A3CB8;
  v101 = (v100 ^ 0x20830A0) & (16 * v99) ^ v99;
  v102 = ((16 * (v100 ^ 0xC1820C19)) ^ 0x38A3CB90) & (v100 ^ 0xC1820C19) ^ (16 * (v100 ^ 0xC1820C19)) & 0xC38A3CB0;
  v103 = v101 ^ 0xC38A3CB9 ^ (v102 ^ 0x820800) & (v101 << 8);
  v104 = v26[v95 ^ (2 * ((v103 << 16) & 0x438A0000 ^ v103 ^ ((v103 << 16) ^ 0x3CB90000) & (((v102 ^ 0xC3083429) << 8) & 0x438A0000 ^ 0x41820000 ^ (((v102 ^ 0xC3083429) << 8) ^ 0xA3C0000) & (v102 ^ 0xC3083429)))) ^ 0x33A3562D];
  LOBYTE(v95) = v22[v59[5] ^ 0xFLL] - 82;
  v105 = v95 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v95 ^ 0x1C)) | 0x24) & (v95 ^ 0x1C))) | 0x24) & (v95 ^ 0x1C))) ^ 0x24) & (v95 ^ 0x1C))) ^ 0x64) & (v95 ^ 0x5C)));
  LOBYTE(v103) = v22[v59[13] ^ 0x1ELL] - 17;
  LOBYTE(v102) = v103 & 0x47 ^ 0x76;
  v106 = (v26[v59[12] ^ 0xA2] ^ 0xBD) << 24;
  v254 = (((((v103 ^ (2 * ((v103 ^ 0x1A) & (2 * ((v103 ^ 0x1A) & (2 * ((v103 ^ 0x1A) & (2 * ((v103 ^ 0x1A) & (2 * ((v103 ^ 0x1A) & (2 * ((v103 ^ 0x1A) & (2 * v103) & 0x36 ^ v102)) ^ v102)) ^ v102)) ^ v102)) ^ v102)) ^ v102))) << 16) ^ 0x788CA6E2) & (v106 ^ 0x68FFEEEA) | v106 & 0x87FFFFFF) ^ 0xA1A24A6E) & (v71 ^ 0x4970FF09) ^ v71 & 0xA0001373;
  v107 = (v250[v59[3] ^ 0xB8] >> 1) | (v250[v59[3] ^ 0xB8] << 7);
  LOBYTE(v92) = v107 - ((2 * v107) & 0xA0);
  v108 = v59[2];
  LOBYTE(v103) = ((v108 ^ 0x54) + 50) ^ ((v108 ^ 0xF8) - 98) ^ ((v108 ^ 0x88) - 18);
  v109 = v108 ^ 0xB3;
  LOBYTE(v108) = v103 - (((v108 ^ 0x92) + 41) ^ ((v108 ^ 0x32) - 119) ^ ((v108 ^ 0x37) - 114));
  LOBYTE(v98) = v108 + 70;
  LOBYTE(v108) = (v108 - 58) & 0xA6 | (v108 + 70) & 0x10 | 8;
  LOBYTE(v108) = v98 ^ (2 * ((v98 ^ 0x24) & (2 * ((v98 ^ 0x24) & (2 * ((v98 ^ 0x24) & (2 * ((v98 ^ 0x24) & (2 * ((v98 ^ 0x24) & (2 * v108) ^ v108)) ^ v108)) ^ v108)) ^ v108)) ^ v108));
  LOBYTE(v108) = v103 + (((v108 ^ 0x3B) + 35) ^ ((v108 ^ 0x5B) + 67) ^ ((v108 ^ 0x28) + 50)) - 101;
  LOBYTE(v103) = v108 & 0x6F ^ 0xCF;
  v110 = __PAIR64__(v67, v254 ^ 0x383835A0) >> 5;
  LOBYTE(v98) = v108 ^ v252[v109] ^ (2 * ((v108 ^ 0x50) & (2 * ((v108 ^ 0x50) & (2 * ((v108 ^ 0x50) & (2 * ((v108 ^ 0x50) & (2 * ((v108 ^ 0x50) & (2 * (((2 * v108) & 0x22 ^ 0x3E) & v108 ^ v103)) ^ v103)) ^ v103)) ^ v103)) ^ v103)) ^ v103));
  LODWORD(v108) = v110 >> 27;
  v111 = (v110 ^ 0x824DCED9) << ((v98 & 1) == 0) << (~v98 & 4) << (v98 & 5);
  v112 = (((v108 ^ 0x86905D1C) + 1214104474) ^ ((v108 ^ 0x817B5103) + 1337380743) ^ ((v108 ^ 0x7EB0C0F) - 920218997)) - 359940300 + (((v111 ^ 0x500C3FD3) - 712773582) ^ ((v111 ^ 0xB71BD19F) + 848567934) ^ ((v111 ^ 0xE717EE4C) + 1654137263));
  v113 = ((v112 ^ 0x23DC21CA) - 490015847) ^ v112 ^ ((v112 ^ 0x161CECE3) - 687194446) ^ ((v112 ^ 0xB4F69F5B) + 1977634058) ^ ((v112 ^ 0xBFDF7FDF) + 2127146382);
  v114 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v58 ^ 0xE08)) - 4;
  v115 = *&v114[4 * (v68 ^ 0x72)];
  v116 = ((((2 * v68) ^ 0x1C08C290) - 1086930822) ^ (((2 * v68) ^ 0x5A98C0EF) - 106511865) ^ (((2 * v68) ^ 0x469002CB) - 441581533)) - 1066262138;
  v117 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v58 ^ 0xCB3)) - 4;
  HIDWORD(v118) = *&v117[4 * (v69 ^ 0x14)];
  LODWORD(v118) = HIDWORD(v118);
  v119 = (v116 ^ 0x1FFFDFDF) - 610067115;
  LODWORD(v108) = ((v116 ^ 0x990F8A54) + 1565739232) ^ v116;
  LODWORD(v109) = ((v116 ^ 0xE03324A1) + 611313195) ^ ((v116 ^ 0x5D604C5E) - 1724084522);
  v120 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v58 ^ 0xD1C)) - 8;
  v121 = *&v120[4 * (BYTE2(v113) ^ 0x59)] ^ 0x792BF8D4;
  LODWORD(v108) = v108 ^ v109;
  v122 = v119 ^ v115;
  v123 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v58 ^ 0xDF8));
  LODWORD(v109) = -1644244649 * *(v123 + 4 * (BYTE1(v73) ^ 0x7Fu)) + 603614807;
  LODWORD(v108) = v108 ^ v122 ^ v121 ^ (16 * v121) ^ v109 ^ ((v109 ^ 0x4226AB1D) - 1641858378) ^ ((v109 ^ 0x66F6A19E) - 1158467529) ^ ((v109 ^ 0x7AD59A2B) - 1496315004) ^ ((v109 ^ 0x7DFFFEFF) - 1577423016) ^ ((v118 >> 1) - ((2 * (v118 >> 1)) & 0xE2B19A94) - 245838518);
  v124 = ((((2 * v104) ^ 0xB620DF79) + 1898138452) ^ (((2 * v104) ^ 0x5730556F) - 1875656378) ^ (((2 * v104) ^ 0xE1108AEA) + 638787265)) - 1224804366;
  v125 = (v124 ^ 0xA94959A7) & (2 * (v124 & 0xAA0A59A7)) ^ v124 & 0xAA0A59A7;
  LODWORD(v109) = ((2 * (v124 ^ 0xBD5DFAE7)) ^ 0x2EAF4680) & (v124 ^ 0xBD5DFAE7) ^ (2 * (v124 ^ 0xBD5DFAE7)) & 0x1757A340;
  v126 = v109 ^ 0x1150A140;
  LODWORD(v109) = (v109 ^ 0x30200) & (4 * v125) ^ v125;
  v127 = ((4 * v126) ^ 0x5D5E8D00) & v126 ^ (4 * v126) & 0x1757A340;
  LODWORD(v109) = v109 ^ 0x1757A340 ^ (v127 ^ 0x15568100) & (16 * v109);
  v128 = (16 * (v127 ^ 0x2012240)) & 0x1757A340 ^ 0x2058340 ^ ((16 * (v127 ^ 0x2012240)) ^ 0x757A3400) & (v127 ^ 0x2012240);
  LODWORD(v109) = (v109 << 8) & 0x1757A300 ^ v109 ^ ((v109 << 8) ^ 0x57A34000) & v128;
  LODWORD(v109) = (v109 << 16) & 0x17570000 ^ v109 ^ ((v109 << 16) ^ 0x23400000) & ((v128 << 8) & 0x17570000 ^ 0x540000 ^ ((v128 << 8) ^ 0x57A30000) & v128);
  v129 = -1644244649 * *(v123 + 4 * (BYTE1(v113) ^ 0x4Cu)) - 1992518157;
  v130 = (v129 ^ 0x6692496C) & (2 * (v129 & 0x76C36A0D)) ^ v129 & 0x76C36A0D;
  LODWORD(v26) = ((2 * (v129 ^ 0xCB961974)) ^ 0x7AAAE6F2) & (v129 ^ 0xCB961974) ^ (2 * (v129 ^ 0xCB961974)) & 0xBD557378;
  v131 = (v26 ^ 0x38406170) & (4 * v130) ^ v130;
  LODWORD(v26) = ((4 * (v26 ^ 0x85551109)) ^ 0xF555CDE4) & (v26 ^ 0x85551109) ^ (4 * (v26 ^ 0x85551109)) & 0xBD557378;
  v132 = (v26 ^ 0xB5554160) & (16 * v131) ^ v131;
  LODWORD(v26) = ((16 * (v26 ^ 0x8003219)) ^ 0xD5573790) & (v26 ^ 0x8003219) ^ (16 * (v26 ^ 0x8003219)) & 0xBD557370;
  v133 = v132 ^ 0xBD557379 ^ (v26 ^ 0x95553300) & (v132 << 8);
  HIDWORD(v118) = *&v117[4 * ((v255 - 14) ^ 0x16)];
  LODWORD(v118) = HIDWORD(v118);
  v134 = *&v120[4 * (v21 ^ 0x2D)] ^ 0xDEF608A0;
  v135 = *&v114[4 * (v104 ^ 0x56)] ^ v124 ^ v134 ^ (16 * v134) ^ v129 ^ ((v118 >> 1) - ((2 * (v118 >> 1)) & 0x2010D8E4) - 1878496142) ^ (2 * (v109 ^ (v133 << 16) & 0x3D550000 ^ v133 ^ ((v133 << 16) ^ 0x73790000) & (((v26 ^ 0x28004069) << 8) & 0xBD550000 ^ 0x28040000 ^ (((v26 ^ 0x28004069) << 8) ^ 0x55730000) & (v26 ^ 0x28004069))));
  v136 = ((((2 * HIBYTE(v74)) ^ 0x315AB14A) - 412221241) ^ (((2 * HIBYTE(v74)) ^ 0xE3EC6969) + 903403750) ^ (((2 * HIBYTE(v74)) ^ 0xD2B6D829) + 75655590)) + 1548221274;
  v137 = v136 ^ *&v114[4 * (HIBYTE(v74) ^ 0x2D)] ^ ((v136 ^ 0x875B0CD) - 35288764) ^ ((v136 ^ 0x6984436A) - 1676379419) ^ ((v136 ^ 0x9C61EB29) + 1777455784) ^ ((v136 ^ 0xF7FFDEFF) + 40888178);
  LODWORD(v109) = *&v120[4 * (v105 ^ 0xEA)] ^ 0x8EAE9C72;
  LODWORD(v26) = v109 ^ (16 * v109);
  LODWORD(v109) = v26 ^ 0xA5289BC3;
  v138 = (((v137 ^ 0xB13D5DC4) + 1677184735) ^ ((v137 ^ 0x5A8C53C) - 681421273) ^ ((v137 ^ 0xBEFA5E89) + 1815137684)) - (((v137 ^ v26 ^ 0xA5289BC3 ^ 0xC069CE4C) + 312696151) ^ ((v137 ^ v26 ^ 0xA5289BC3 ^ 0xD319C10E) + 30626325) ^ ((v137 ^ v26 ^ 0xA5289BC3 ^ 0x261369A0) - 187041093));
  v139 = 432067733 - (((v26 ^ 0x6C15FC5) + 1544961018) ^ ((v26 ^ 0x6D6AED70) + 935168333) ^ ((v26 ^ 0xF18F89E5) - 1420235302));
  LODWORD(v26) = (v139 ^ 0x27288892) & (2 * (v139 & 0xA7328AD8)) ^ v139 & 0xA7328AD8;
  v140 = ((2 * (v139 ^ 0x65498D22)) ^ 0x84F60FF4) & (v139 ^ 0x65498D22) ^ (2 * (v139 ^ 0x65498D22)) & 0xC27B07FA;
  LODWORD(v26) = (v140 ^ 0x805207E0) & (4 * v26) ^ v26;
  v141 = ((4 * (v140 ^ 0x4209000A)) ^ 0x9EC1FE8) & (v140 ^ 0x4209000A) ^ (4 * (v140 ^ 0x4209000A)) & 0xC27B07F8;
  LODWORD(v26) = (v141 ^ 0x6807E0) & (16 * v26) ^ v26;
  v142 = ((16 * (v141 ^ 0xC2130012)) ^ 0x27B07FA0) & (v141 ^ 0xC2130012) ^ (16 * (v141 ^ 0xC2130012)) & 0xC27B07F0;
  LODWORD(v26) = v26 ^ 0xC27B07FA ^ (v142 ^ 0x2300700) & (v26 << 8);
  LODWORD(v109) = v139 ^ v109 ^ (v138 - 2099736679) ^ (((v138 - 2099736679) ^ 0x60E9ACC5) - 322585545) ^ (((v138 - 2099736679) ^ 0x1A727131) - 1772199485) ^ (((v138 - 2099736679) ^ 0xD2B74947) + 1587239349) ^ (((v138 - 2099736679) ^ 0xDBFF7BBF) + 1473473357) ^ (2 * ((v26 << 16) & 0x427B0000 ^ v26 ^ ((v26 << 16) ^ 0x7FA0000) & (((v142 ^ 0xC04B005A) << 8) & 0xC27B0000 ^ (((v142 ^ 0xC04B005A) << 8) ^ 0x7B070000) & (v142 ^ 0xC04B005A) ^ 0x780000)));
  LODWORD(v109) = (((v137 ^ 0x5DB66717) - 1887636466) ^ ((v137 ^ 0x5356A89) - 671090284) ^ ((v137 ^ 0x52ECCBEF) - 2144970506)) - 587238440 + (((v109 ^ 0xA7BAD974) + 1398854607) ^ ((v109 ^ 0x72DF66F8) - 2046464957) ^ ((v109 ^ 0xBE8A753F) + 1246789510));
  HIDWORD(v118) = *&v117[4 * (v113 ^ 0xB3)];
  LODWORD(v118) = HIDWORD(v118);
  v143 = -1644244649 * *(v123 + 4 * (v98 ^ 0x77u)) - 1537963774;
  v144 = ((v143 ^ 0x3BD6B4A7) + 1618854491) ^ v143 ^ ((v143 ^ 0xC90A09D2) - 1834909904) ^ ((v143 ^ 0xA973CD8A) - 220677256) ^ ((v143 ^ 0xFFFBF9FD) - 1538224383) ^ v109 ^ ((v109 ^ 0xB52F9723) + 504029587) ^ ((v109 ^ 0x6C095725) - 953409131) ^ ((v109 ^ 0x7023BAB7) - 620311545);
  v145 = HIBYTE(v113);
  v146 = v144 ^ ((v109 ^ 0xFDDFF3FF) + 1459258703) ^ ((v118 >> 1) - ((2 * (v118 >> 1)) & 0x61DC0326) + 820904339);
  v147 = (((2 * v145) ^ 0xAF25B7E) - 1105378231) ^ (((2 * v145) ^ 0x436AF1FE) - 142217527) ^ (((2 * v145) ^ 0x4998AA18) - 42486481);
  LODWORD(v109) = (((v135 ^ 0xF99A7189) + 1306839200) ^ ((v135 ^ 0x83513643) + 925863766) ^ ((v135 ^ 0xE7DE5AC2) + 1403053013)) - ((((2 * v135) & 0x862D0F64 ^ 0xA3ADBF72) + 391506244) ^ (((2 * v135) & 0x862D0F64 ^ 0x5DE3483C) - 384098802) ^ (((2 * v135) & 0x862D0F64 ^ 0xFC66FD4E) + 1218358144)) - 1540738485;
  v148 = (v109 ^ 0xAB0D4C7A) & (2 * (v109 & 0xAC510D7A)) ^ v109 & 0xAC510D7A;
  v149 = ((2 * (v109 ^ 0xFB8F445A)) ^ 0xAFBC9240) & (v109 ^ 0xFB8F445A) ^ (2 * (v109 ^ 0xFB8F445A)) & 0x57DE4920;
  v150 = (v149 ^ 0x38C0000) & (4 * v148) ^ v148;
  v151 = ((4 * (v149 ^ 0x50424920)) ^ 0x5F792480) & (v149 ^ 0x50424920) ^ (4 * (v149 ^ 0x50424920)) & 0x57DE4920;
  v152 = v150 ^ 0x57DE4920 ^ (v151 ^ 0x57580000) & (16 * v150);
  v153 = (16 * (v151 ^ 0x864920)) & 0x57DE4920 ^ 0x21A4920 ^ ((16 * (v151 ^ 0x864920)) ^ 0x7DE49200) & (v151 ^ 0x864920);
  v154 = (v152 << 8) & 0x57DE4900 ^ v152 ^ ((v152 << 8) ^ 0xDE492000) & v153;
  LODWORD(v109) = v109 ^ (2 * ((v154 << 16) & 0x57DE0000 ^ v154 ^ ((v154 << 16) ^ 0x49200000) & ((v153 << 8) & 0x57DE0000 ^ 0x1960000 ^ ((v153 << 8) ^ 0xDE490000) & v153)));
  HIDWORD(v118) = *&v117[4 * ((v92 + 80) ^ 0x2D)];
  LODWORD(v118) = HIDWORD(v118);
  v155 = *&v120[4 * (BYTE2(v73) ^ 0x3C)] ^ 0x7333A229;
  v156 = v155 ^ *&v114[4 * (v145 ^ 0x64)] ^ (16 * v155);
  v157 = -1644244649 * *(v123 + 4 * (*(v19 - 116) ^ 0x5Eu)) + 651649481;
  v147 -= 450178144;
  v158 = v156 ^ v157 ^ ((v157 ^ 0x9B4C1DB9) + 1113883536) ^ ((v157 ^ 0xEF6BF2C8) + 910388479) ^ ((v157 ^ 0x6D07315F) - 1271943318) ^ ((v157 ^ 0x3FF7BFE7) - 421584430) ^ ((v118 >> 1) - ((2 * (v118 >> 1)) & 0x98627336) + 1278294427) ^ v147 ^ ((v147 ^ 0x6E8CB8E9) - 478262326) ^ ((v147 ^ 0xC49DE794) + 1232016565) ^ ((v147 ^ 0xAFE3E49D) + 571545534) ^ ((v147 ^ 0x77FFB73F) - 99793888);
  v159 = *&v120[4 * (BYTE2(v108) ^ 0xA5)] ^ 0x8E2D6529;
  v160 = v159 ^ *&v114[4 * (BYTE3(v109) ^ 5)] ^ (16 * v159) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v158) ^ 0x42u))) ^ __ROR4__(*&v117[4 * (v146 ^ 0x14)], 1) ^ (((2 * BYTE3(v109)) ^ 0x5A) + 671934064);
  LODWORD(v26) = *&v120[4 * (BYTE2(v109) ^ 0x8A)] ^ 0x8B5C84CE;
  v161 = v26 ^ *&v114[4 * (HIBYTE(v146) ^ 0xC1)] ^ (16 * v26) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v108) ^ 4u))) ^ __ROR4__(*&v117[4 * (v158 ^ 5)], 1) ^ (((2 * HIBYTE(v146)) ^ 0x1D2) + 671934064);
  LODWORD(v26) = *&v120[4 * (BYTE2(v158) ^ 0x1E)] ^ 0xBAA010EF;
  v162 = ((((2 * BYTE3(v108)) ^ 0xA448E2DE) + 1710598861) ^ (((2 * BYTE3(v108)) ^ 0x6D35EE1E) - 1400330739) ^ (((2 * BYTE3(v108)) ^ 0xC97D0CEA) + 146818297)) - 1163125564;
  v163 = *&v114[4 * (BYTE3(v108) ^ 0x3D)] ^ v26 ^ (16 * v26) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v146) ^ 0x4Cu))) ^ __ROR4__(*&v117[4 * (v109 ^ 0xB5)], 1) ^ v162 ^ ((v162 ^ 0x2B28303F) - 2138328754) ^ ((v162 ^ 0xCB961AEA) + 1614125977) ^ ((v162 ^ 0x5B59ABA7) - 252040490) ^ ((v162 ^ 0xEFBBFFFF) + 1142455950) ^ 0x74574972;
  v164 = *&v120[4 * (BYTE2(v146) ^ 0xF4)] ^ 0x9928880A;
  LODWORD(v109) = v164 ^ *&v114[4 * (HIBYTE(v158) ^ 0xDE)] ^ (16 * v164) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v109) ^ 0x81u))) ^ __ROR4__(*&v117[4 * (v108 ^ 0x40)], 1) ^ (((2 * HIBYTE(v158)) ^ 0x1EC) + 671934064);
  v165 = *&v120[4 * (BYTE2(v109) ^ 0x5D)] ^ 0x64B55FE1;
  LODWORD(v108) = (2 * HIBYTE(v163) + 671934064) ^ *&v114[4 * (HIBYTE(v163) ^ 0x28)] ^ v165 ^ (16 * v165) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v161) ^ 0x6Fu))) ^ __ROR4__(*&v117[4 * (v160 ^ 4)], 1);
  v166 = *&v120[4 * BYTE2(v163)] ^ 0x128F94BD;
  v167 = v166 ^ *&v114[4 * (HIBYTE(v160) ^ 0x85)] ^ (16 * v166) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v109) ^ 0xC0u))) ^ __ROR4__(*&v117[4 * (v161 ^ 0xE7)], 1) ^ (((2 * HIBYTE(v160)) ^ 0x15A) + 671934064);
  v168 = *&v120[4 * (BYTE2(v160) ^ 0xBF)] ^ 0xE3F9C856;
  v169 = v168 ^ *&v114[4 * (HIBYTE(v161) ^ 0x17)] ^ (16 * v168) ^ (-1644244649 * *(v123 + 4 * BYTE1(v163))) ^ __ROR4__(*&v117[4 * (v109 ^ 0x6D)], 1) ^ (((2 * HIBYTE(v161)) ^ 0x7E) + 671934064);
  v170 = *&v120[4 * (BYTE2(v161) ^ 0x17)] ^ 0x88733E4C;
  v171 = *&v117[4 * v163];
  v172 = v170 ^ *&v114[4 * (BYTE3(v109) ^ 0xB1)] ^ (16 * v170) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v160) ^ 0x52u))) ^ (v171 >> 1) & 0x32E946CC ^ (((2 * BYTE3(v109)) ^ 0x132) + 671934064) ^ ((v171 << ((16 * v170) & 0x10) << ((16 * v170) & 0x10 ^ 0x14) << 11) ^ 0xCD16B933) & ((v171 >> 1) ^ 0xFFFFFBBF);
  v173 = *&v120[4 * (BYTE2(v172) ^ 0xDE)];
  LODWORD(v109) = *&v114[4 * (BYTE3(v108) ^ 0xA6)] ^ ((BYTE3(v108) ^ 0x8E) + (BYTE3(v108) ^ 0x280CE6FE) + ((v108 >> 23) & 0xE0)) ^ (16 * v173) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v169) ^ 0xFCu))) ^ __ROR4__(*&v117[4 * (v167 ^ 0xF)], 1);
  v174 = (v109 ^ 0xF1742220) + 2054395500 - 2 * ((v109 ^ 0xF1742220) & 0x7A73966F ^ v109 & 3);
  LODWORD(v26) = *&v120[4 * (BYTE2(v108) ^ 0xCA)] ^ 0xF174222;
  LODWORD(v109) = v26 ^ *&v114[4 * (HIBYTE(v167) ^ 8)] ^ (16 * v26) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v172) ^ 0x7Fu))) ^ __ROR4__(*&v117[4 * (v169 ^ 0x7D)], 1) ^ (((2 * HIBYTE(v167)) ^ 0x40) + 671934064);
  v175 = *&v120[4 * (BYTE2(v167) ^ 0x6E)] ^ 0xF174222;
  v176 = v175 ^ *&v114[4 * (HIBYTE(v169) ^ 0xDF)] ^ (16 * v175) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v108) ^ 0xD5u))) ^ (((2 * HIBYTE(v169)) ^ 0x1EE) + 671934064);
  v172 ^= 0xBA29618E;
  HIDWORD(v118) = *&v117[4 * v172];
  LODWORD(v118) = HIDWORD(v118);
  LODWORD(v26) = v118 >> 1;
  v177 = v176 + v26;
  v178 = v176 & v26;
  LODWORD(v26) = HIBYTE(v172);
  v179 = *&v114[4 * (HIBYTE(v172) ^ 0x28)];
  v180 = v177 - 2 * v178;
  v181 = *&v120[4 * (BYTE2(v169) ^ 0x54)] ^ 0xF174222;
  v182 = v181 ^ v179 ^ (16 * v181) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v167) ^ 0xE0u))) ^ __ROR4__(*&v117[4 * (v108 ^ 0x3D)], 1) ^ (2 * v26 + 671934064);
  v183 = v173 ^ 0x21EAD72A ^ v174;
  v184 = *&v120[4 * (BYTE2(v182) ^ 0x2C)] ^ 0xF174222;
  v185 = *&v114[4 * (HIBYTE(v183) ^ 0x28)] ^ (2 * HIBYTE(v183) + 671934064) ^ v184 ^ (16 * v184) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v180) ^ 0x9Du))) ^ __ROR4__(*&v117[4 * (v109 ^ 0x93)], 1);
  v186 = *&v120[4 * BYTE2(v183)] ^ 0xF174222;
  LODWORD(v108) = v186 ^ *&v114[4 * (((v109 ^ 0xAEA74693) >> 24) ^ 0x28)] ^ (16 * v186) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v182) ^ 0xBEu))) ^ __ROR4__(*&v117[4 * (v180 ^ 0x14)], 1) ^ (2 * ((v109 ^ 0xAEA74693) >> 24) + 671934064);
  v187 = *&v120[4 * ((v109 ^ 0xAEA74693) >> 16)] ^ 0xF174222;
  v188 = v187 ^ *&v114[4 * (HIBYTE(v180) ^ 0xC)] ^ (-1644244649 * *(v123 + 4 * (((BYTE1(v183) - (BYTE1(v183) ^ 0x1E)) ^ 0xFFFFFFFC) + BYTE1(v183)))) ^ (16 * v187) ^ __ROR4__(*&v117[4 * (v182 ^ 0x47)], 1) ^ (((2 * HIBYTE(v180)) ^ 0x48) + 671934064);
  v189 = (((2 * HIBYTE(v182)) ^ 0x8C) + 671934064) ^ *&v114[4 * (HIBYTE(v182) ^ 0x6E)];
  v190 = *&v120[4 * (BYTE2(v180) ^ 0xBC)] ^ 0xF174222;
  v191 = (v189 ^ -v189 ^ ((v190 ^ (16 * v190)) - (v189 ^ v190 ^ (16 * v190)))) + (v190 ^ (16 * v190));
  LOWORD(v190) = v185 ^ 0xE175;
  v192 = (-1644244649 * *(v123 + 4 * (BYTE1(v109) ^ 0x58u))) ^ __ROR4__(*&v117[4 * v183], 1) ^ v191;
  v193 = *&v120[4 * (BYTE2(v192) ^ 5)] ^ 0xF174222;
  LODWORD(v109) = *&v114[4 * (((v185 ^ 0x8D6BE175) >> 24) - ((2 * ((v185 ^ 0x8D6BE175) >> 24)) & 0x50)) + 160] ^ (2 * ((v185 ^ 0x8D6BE175) >> 24) + 671934064) ^ v193 ^ (16 * v193) ^ (-1644244649 * *(v123 + 4 * ((v188 ^ 0xD635) >> 8))) ^ __ROR4__(*&v117[4 * (v108 ^ 0xCA)], 1);
  v194 = *&v120[4 * (BYTE2(v185) ^ 0x9C)] ^ 0xF174222;
  v192 ^= 0x77F22E6Eu;
  v195 = v194 ^ *&v114[4 * (BYTE3(v108) ^ 0xC7)] ^ (16 * v194) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v192) ^ 0x1Eu))) ^ __ROR4__(*&v117[4 * (v188 ^ 0xBA)], 1) ^ (((2 * BYTE3(v108)) ^ 0x1DE) + 671934064);
  LODWORD(v26) = *&v120[4 * (BYTE2(v108) ^ 0xBC)] ^ 0xF174222;
  v196 = *&v120[4 * (BYTE2(v188) ^ 0x8E)];
  v197 = (2 * ((v188 ^ 0x9F8ED635) >> 24) + 671934064) ^ v26 ^ *&v114[4 * (((v188 ^ 0x9F8ED635) >> 24) ^ 0x28)] ^ (16 * v26) ^ (-1644244649 * *(v123 + 4 * BYTE1(v190))) ^ __ROR4__(*&v117[4 * v192], 1);
  v198 = v109 ^ 0x2A4104EA;
  v199 = v196 ^ 0xF174222 ^ *&v114[4 * (HIBYTE(v192) ^ 0x28)] ^ (16 * (v196 ^ 0xF174222)) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v108) ^ 0x56u))) ^ __ROR4__(*&v117[4 * v190], 1) ^ (2 * HIBYTE(v192) + 671934064);
  HIDWORD(v118) = *&v120[4 * ((v109 ^ 0x2A4104EA) >> 16)] ^ 0xF174222;
  LODWORD(v118) = HIDWORD(v118);
  LODWORD(v108) = (-1644244649 * *(v123 + 4 * (BYTE1(v199) ^ 0xF5u))) ^ *&v114[4 * (((v195 ^ 0x7742BA0D) >> 24) ^ 0x28)] ^ __ROR4__(*&v117[4 * (v197 ^ 0x4D)], 1) ^ (2 * ((v195 ^ 0x7742BA0D) >> 24) + 671934064) ^ __ROR4__((v118 >> 22) & 0xFFFFFC3F ^ __ROR4__(HIDWORD(v118), 26) ^ 0x133A6B71, 6);
  v200 = *&v120[4 * ((((v195 ^ 0x7742BA0D) >> 16) - (((v195 ^ 0x7742BA0D) >> 16) ^ 0xF7)) ^ 0xFFFFFFFE) + 4 * ((v195 ^ 0x7742BA0D) >> 16)] ^ 0xF174222;
  LODWORD(v109) = *&v114[4 * (HIBYTE(v197) ^ 0x4D)] ^ (((2 * HIBYTE(v197)) ^ 0xCA) + 671934064) ^ v200 ^ (16 * v200) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v109) ^ 0x1Au))) ^ __ROR4__(*&v117[4 * (v199 ^ 0xE9)], 1);
  v201 = *&v120[4 * (BYTE2(v199) ^ 0x1E)] ^ 0xF174222;
  v202 = (2 * HIBYTE(v198) + 671934064) ^ *&v114[4 * (HIBYTE(v198) ^ 0x28)] ^ v201 ^ (16 * v201) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v197) ^ 0x93u))) ^ __ROR4__(*&v117[4 * (v195 ^ 0x82)], 1);
  v203 = *&v120[4 * (BYTE2(v197) ^ 0xA7)] ^ 0xF174222;
  v204 = *&v114[4 * (HIBYTE(v199) ^ 0xD5)] ^ v203 ^ (16 * v203) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v195) ^ 0xA4u))) ^ __ROR4__(*&v117[4 * v198], 1) ^ (((2 * HIBYTE(v199)) ^ 0x1FA) + 671934064) ^ 0x8DDB7599;
  v205 = v109 ^ 0x787247D;
  v206 = *&v120[4 * (BYTE2(v204) - ((v204 >> 15) & 0x1EE)) + 988] ^ 0xF174222;
  v207 = *&v114[4 * (((v202 ^ 0xE792864A) >> 24) ^ 0x28)] ^ (2 * ((v202 ^ 0xE792864A) >> 24) + 671934064) ^ v206 ^ (16 * v206) ^ (-1644244649 * *(v123 + 4 * ((v109 ^ 0x247D) >> 8))) ^ __ROR4__(*&v117[4 * (v108 ^ 0xF8)], 1);
  v208 = (v108 ^ 0x8CDA44F7) >> 24;
  v209 = *&v120[4 * (BYTE2(v202) ^ 0x65)] ^ 0xF174222;
  v210 = (((v208 + 671934064) ^ v208) + 2 * ((v208 + 671934064) & v208)) ^ v209 ^ *&v114[4 * (v208 ^ 0x28)] ^ (16 * v209) ^ (-1644244649 * *(v123 + 4 * BYTE1(v204))) ^ __ROR4__(*&v117[4 * (v109 ^ 0xF2)], 1);
  LODWORD(v109) = *&v120[4 * ((v109 ^ 0x787247D) >> 16)] ^ 0xF174222;
  LODWORD(v109) = v109 ^ *&v114[4 * (HIBYTE(v204) ^ 0x28)] ^ (16 * v109) ^ (-1644244649 * *(v123 + 4 * ((v108 ^ 0x44F7) >> 8))) ^ __ROR4__(*&v117[4 * (v202 ^ 0x4A)], 1) ^ (2 * HIBYTE(v204) + 671934064);
  LODWORD(v108) = *&v120[4 * (BYTE2(v108) ^ 0x2D)] ^ 0xF174222;
  LOBYTE(v199) = v207 ^ 0x1B;
  v211 = (2 * HIBYTE(v205) + 671934064) ^ *&v114[4 * (HIBYTE(v205) ^ 0x28)] ^ v108 ^ (16 * v108) ^ (-1644244649 * *(v123 + 4 * ((v202 ^ 0x864A) >> 8))) ^ __ROR4__(*&v117[4 * v204], 1);
  v212 = (v207 ^ 0xD78B9A1B) >> 24;
  v213 = ((2 * ((v212 + 671934064) & v212)) ^ (v212 + 671934064) ^ v212) + 2 * ((2 * ((v212 + 671934064) & v212)) & ((v212 + 671934064) ^ v212));
  LODWORD(v108) = v210 ^ 0xBA913822;
  v214 = (v210 ^ 0xBA913822) >> 24;
  v215 = ((v214 + 671934064) ^ v214) + 2 * ((v214 + 671934064) & v214);
  v211 ^= 0x5A739A9Au;
  v216 = *&v120[4 * BYTE2(v108)] ^ 0xF174222;
  LODWORD(v26) = *&v114[4 * (HIBYTE(v211) ^ 0x28)] ^ (2 * HIBYTE(v211) + 671934064) ^ v216 ^ (16 * v216);
  v217 = *&v114[4 * (v212 ^ 0x28)];
  v218 = *&v114[4 * (v214 ^ 0x28)];
  LODWORD(v26) = v26 ^ (-1644244649 * *(v123 + 4 * ((v207 ^ 0x9A1B) >> 8)));
  v219 = v109 ^ 0x9FC95C56;
  v220 = *&v114[4 * (((v109 ^ 0x9FC95C56) >> 24) ^ 0x28)];
  LODWORD(v114) = *&v120[4 * (BYTE2(v109) ^ 0x3E)];
  LODWORD(v43) = *&v120[4 * (BYTE2(v207) ^ 0x7C)];
  v221 = *(v123 + 4 * BYTE1(v211));
  LODWORD(v109) = *(v123 + 4 * (BYTE1(v109) ^ 0x42u));
  LODWORD(v123) = *(v123 + 4 * BYTE1(v108));
  v222 = v26 ^ __ROR4__(*&v117[4 * v219], 1);
  LODWORD(v108) = v213 ^ v217 ^ v114 ^ 0xF174222 ^ (-1644244649 * v221) ^ (16 * (v114 ^ 0xF174222)) ^ __ROR4__(*&v117[4 * v108], 1);
  v223 = *&v117[4 * v199];
  v224 = v215 ^ v43 ^ 0xF174222 ^ v218;
  v225 = *&v120[4 * BYTE2(v211)] ^ 0xF174222;
  LODWORD(v120) = v108 ^ 0x7D72E1E0;
  v226 = v224 ^ (16 * (v43 ^ 0xF174222));
  v227 = (v108 ^ 0x7D72E1E0) >> 24;
  v228 = v226 ^ (-1644244649 * v109) ^ __ROR4__(*&v117[4 * v211], 1);
  v229 = v222 ^ 0xDEB175C3;
  LODWORD(v109) = v220 ^ (2 * HIBYTE(v219) + 671934064) ^ v225 ^ (16 * v225) ^ (-1644244649 * v123) ^ __ROR4__(v223, 1);
  LODWORD(v108) = v109 ^ 0xFB1E1DB7;
  v230 = ((v109 ^ 0xFB1E1DB7) >> 16);
  v231 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v58 ^ 0xC10)) - 12;
  v232 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v58 - 2866);
  LODWORD(v123) = *(v232 + 4 * (v227 ^ 0xDB)) ^ ((v227 ^ 0x475EEC5F) + v227) ^ *&v231[4 * (v230 ^ 0x1C)];
  v233 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v58 ^ 0xDD7));
  LODWORD(v114) = v228 ^ 0x53BE754F;
  v234 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v58 ^ 0xDDC));
  LODWORD(v123) = v123 ^ __ROR4__(*(v233 + 4 * ((v222 ^ 0x75C3) >> 8)), 3) ^ (*(v234 + 4 * (v228 ^ 0x4Fu)) - 1485941076) ^ (v230 - 716732276);
  v235 = (BYTE2(v120) - 716732276) ^ BYTE2(v120) ^ (((v114 >> 24) ^ 0x475EEC5F) + (v114 >> 24)) ^ *(v232 + 4 * ((v114 >> 24) ^ 0xDB)) ^ *&v231[4 * (BYTE2(v120) ^ 0x1C)] ^ __ROR4__(*(v233 + 4 * (BYTE1(v109) ^ 0xFu)), 3) ^ (*(v234 + 4 * (v222 ^ 0xCEu)) - 1485941076);
  LODWORD(v109) = (BYTE2(v114) - 716732276) ^ BYTE2(v114) ^ (((v229 >> 23) & 0x140) + 1197403231) ^ *(v232 + 4 * (HIBYTE(v229) ^ 0xDB)) ^ *&v231[4 * (BYTE2(v114) ^ 0x1C)] ^ __ROR4__(*(v233 + 4 * BYTE1(v120)), 3) ^ (*(v234 + 4 * (v109 ^ 0xBAu)) - 1485941076);
  v236 = (BYTE2(v229) - 716732276) ^ BYTE2(v229) ^ (((BYTE3(v108) - (BYTE3(v108) ^ 0x475EEC5F)) ^ 0xFFFFFFFE) + 2 * BYTE3(v108)) ^ *(v232 + 4 * (BYTE3(v108) ^ 0xDB)) ^ *&v231[4 * (BYTE2(v229) ^ 0x1C)] ^ __ROR4__(*(v233 + 4 * ((v228 ^ 0x754F) >> 8)), 3) ^ (*(v234 + 4 * v120) - 1485941076);
  LODWORD(v120) = (v123 - ((2 * v123) & 0x77557950) + 1001045160) ^ v257;
  LOBYTE(v231) = (v123 - ((2 * v123) & 0x50) - 88) ^ v257 ^ BYTE2(v108);
  v237 = (v235 - ((2 * v235) & 0x8C3D095C) - 971078482) ^ *(v19 - 124);
  LODWORD(v109) = (v109 - 651822535 + (~(2 * v109) | 0x4DB40B8F)) ^ *(v19 - 128);
  LODWORD(v108) = (v236 - ((2 * v236) & 0xBCFA962A) + 1585269525) ^ *(v19 - 132);
  v238 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v58 - 2701);
  v253[v256] = *(v238 + (v109 ^ 0xA3)) ^ ((*(v238 + (v109 ^ 0xA3)) ^ 0xB7) >> 4) ^ ((*(v238 + (v109 ^ 0xA3)) ^ 0xB7) >> 3) ^ 0x14;
  v59[3] = *(v238 + (v231 ^ 0xBFLL)) ^ ((*(v238 + (v231 ^ 0xBFLL)) ^ 0xB7) >> 4) ^ ((*(v238 + (v231 ^ 0xBFLL)) ^ 0xB7) >> 3) ^ 6;
  v239 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v58 ^ 0xE4C)) - 8;
  v59[6] = (119 * v239[BYTE1(v237) ^ 0xD0]) ^ 0xB;
  v59[14] = (119 * v239[BYTE1(v108) ^ 0x97]) ^ 0x16;
  v59[7] = *(v238 + (v237 ^ 0x5FLL)) ^ ((*(v238 + (v237 ^ 0x5FLL)) ^ 0xB7) >> 4) ^ ((*(v238 + (v237 ^ 0x5FLL)) ^ 0xB7) >> 3) ^ 0x34;
  v240 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v58 ^ 0xC0B));
  v241 = -19 * *(v240 + (BYTE2(v109) ^ 0xB3));
  v59[9] = v241 ^ 0xC9 ^ (v241 >> 3) & 6;
  v59[2] = (119 * v239[(((v123 - ((2 * v123) & 0x7950) - 17240) ^ v257) >> 8) ^ 0xACLL]) ^ 0x49;
  v242 = -19 * *(v240 + ((((v108 ^ 0x2254426B) >> 16) - (((v108 ^ 0x2254426B) >> 15) & 0x194) + 202) ^ 0x15));
  v59[13] = v242 ^ 0xBC ^ (v242 >> 3) & 6;
  v243 = -19 * *(v240 + (BYTE2(v237) ^ 0x15));
  v59[5] = ((v243 >> 3) & 6) + (v243 ^ 0x3E) - 2 * ((v243 >> 3) & 6 & (v243 ^ 0x3E));
  v244 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v58 - 2670) - 4;
  v245 = BYTE3(v109) ^ 0x2A ^ v244[BYTE3(v109) ^ 0x86];
  v59[8] = (((((v245 >> 3) | (32 * v245)) ^ 0x53) >> 5) | (8 * (((v245 >> 3) | (32 * v245)) ^ 0x53))) ^ 0xA0;
  v59[4] = HIBYTE(v237) ^ v244[HIBYTE(v237) ^ 0x19] ^ 0xE0;
  *v59 = BYTE3(v120) ^ v244[(v120 >> 24) ^ 0x7FLL] ^ 0xF3;
  v59[10] = (119 * v239[BYTE1(v109) ^ 0xB2]) ^ 0x42;
  LOBYTE(v237) = v244[((v108 ^ 0x2254426B) >> 24) ^ 0x77];
  v246 = *(v19 - 120);
  v59[12] = ((v108 ^ 0x2254426B) >> 24) ^ v237 ^ 0x7E;
  v247 = -19 * *(v240 + (BYTE2(v120) ^ 0xEELL));
  v59[1] = v247 ^ 0xE6 ^ (v247 >> 3) & 6;
  v59[15] = *(v238 + (v108 ^ 0xECLL)) ^ ((*(v238 + (v108 ^ 0xECLL)) ^ 0xB7) >> 4) ^ ((*(v238 + (v108 ^ 0xECLL)) ^ 0xB7) >> 3) ^ 0x18;
  v248 = (v246 + 312682469) < HIDWORD(a11);
  if (HIDWORD(a11) < 0x12A327D5 != (v246 + 312682469) < 0x12A327D5)
  {
    v248 = HIDWORD(a11) < 0x12A327D5;
  }

  return (*(a17 + 8 * ((26 * !v248) ^ v58)))(119, 4294967277, v240, 2650722647, 160, v246, 66, 183, a9, a10, a11, v250, v251, v22, v252, v253, a17);
}

uint64_t sub_1969BB5C4(uint64_t a1, signed int a2, int a3)
{
  v6 = v4 - a3;
  if (a2 > v6)
  {
    v6 = a2;
  }

  return (*(v5 + 8 * ((((8 * (((v3 - 1736) | 0x40) ^ 0x1248)) ^ 0x1060) * (v6 < 0x7FFFFFFF)) | v3)))(a1);
}

uint64_t sub_1969BB660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(STACK[0x778] + 24);
  STACK[0x3B0] = v7;
  return (*(a6 + 8 * (((4 * (((v7 == 0) ^ (113 * (((v6 - 17) | 0x58) ^ 0x76))) & 1)) & 0xF7 | (8 * (((v7 == 0) ^ (113 * (((v6 - 529) | 0x58) ^ 0x1676))) & 1))) ^ v6)))(a1, a2, a3, a4, a5);
}

void sub_1969BB808()
{
  ++LODWORD(STACK[0x59C]);
  LODWORD(STACK[0x598]) += 2;
  JUMPOUT(0x19696C0A0);
}

uint64_t sub_1969BB8B4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16)
{
  v19 = &a16 + v17 + 16;
  *&v20 = 0xECECECECECECECECLL;
  *(&v20 + 1) = 0xECECECECECECECECLL;
  *(v19 - 1) = v20;
  *v19 = v20;
  return (*(v18 + 8 * ((((a1 & 0xFFFFFFFFFFFFFFE0) == 32) * (v16 + 735)) ^ (v16 - 2625))))();
}

uint64_t sub_1969BB974()
{
  v9 = *(v0 + 16);
  v10 = 1621291457 * (((v6 | 0xFED77BF959A4AF21) - v6 + (v6 & 0x1288406A65B50D8)) ^ 0x83A121146FB32EB8);
  *(v8 - 128) = v7 ^ v10;
  *(v8 - 120) = v5;
  *(v8 - 104) = v10 + v4 + v9 - ((2 * v9) & 0x8889B80CB23BF32ELL);
  v11 = (*(v1 + 8 * (v2 + 5665)))(v8 - 128);
  return (*(v1 + 8 * ((5128 * (*(v8 - 112) == v3)) ^ v2)))(v11);
}

void sub_1969BBA34(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  JUMPOUT(0x1969BBA54);
}

uint64_t sub_1969BBA64@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *(a1 + 24);
  *a2 = 0;
  return (*(v2 + 8 * (((*(v4 + 17) == 1) * (((v3 - 1245289977) & 0x4A399DDB) - 2777)) ^ v3)))();
}

uint64_t sub_1969BBBB0(void *a1)
{
  if (a1[2])
  {
    v3 = (a1[6] | a1[3]) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(v2 + 8 * ((56 * ((((v1 ^ 0xD9) + 22 + (v1 ^ 0xD9) + 1) ^ v4) & 1)) ^ v1)))();
}

uint64_t sub_1969BBC04@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>)
{
  v22 = v11 - 1;
  v23 = STACK[0x340] + v22;
  v24 = STACK[0x350] + v22 + STACK[0x330];
  v25 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = (v25 + v19) ^ 0xE1AFA7ACF6E0968ELL;
  v27 = (__ROR8__((v25 + v19) ^ 0x49E9423B6F16E7D2, 8) + v26) ^ 0xE49D77DF873DBF7ELL;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (a6 - ((v29 + v28) | a6) + ((v29 + v28) | 0xD3E2C6F73124A4A2)) ^ 0x2640374E84F416ABLL;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v14;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x61459D2AF01F24F7;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (v36 + v35) | 0x96E1782549DF8832;
  v38 = (v36 + v35) | a4;
  v39 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v40 = (v39 + v8) ^ 0x85215C3045409F44;
  v41 = __ROR8__((v39 + v8) ^ a1, 8);
  v42 = a4 - v38 + v37;
  v43 = __ROR8__((((2 * (v41 + v40)) & 0x387A58471D908FDELL) - (v41 + v40) - 0x1C3D2C238EC847F0) ^ a2, 8);
  v44 = (((2 * (v41 + v40)) & 0x387A58471D908FDELL) - (v41 + v40) - 0x1C3D2C238EC847F0) ^ a2 ^ __ROR8__(v40, 61);
  v42 ^= 0xF2226427395B565ELL;
  v45 = (a3 - ((v43 + v44) | a3) + ((v43 + v44) | v15)) ^ 0xD46C6E1ABEDC938;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v45, 8);
  v48 = v42 ^ __ROR8__(v35, 61);
  v49 = __ROR8__(v42, 8);
  v50 = ((a7 | (2 * (v47 + v46))) - (v47 + v46) + v16) ^ v9;
  v51 = v50 ^ __ROR8__(v46, 61);
  v52 = __ROR8__(v50, 8);
  v53 = ((v21 | (2 * (v49 + v48))) - (v49 + v48) - 0x12FEC19037624E61) ^ 0x8D42A747531E162;
  v54 = __ROR8__(v53, 8) + (v53 ^ __ROR8__(v48, 61));
  v55 = (v10 - ((v52 + v51) | v10) + ((v52 + v51) | v12)) ^ v20;
  v56 = v55 ^ __ROR8__(v51, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0xB9BEF0CD865D21FDLL;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = __ROR8__(v57, 8);
  v60 = ((a5 & (2 * (v59 + v58))) - (v59 + v58) + v18) ^ v17;
  *v24 = (((__ROR8__(v60, 8) + (v60 ^ __ROR8__(v58, 61))) ^ 0x3532CD90FD5B1622uLL) >> (8 * (v24 & 7u))) ^ ((v54 ^ 0xAB3042D228875C41) >> (8 * (v23 & 7u))) ^ *v23;
  return (*(v13 + 8 * ((35 * (v22 == 0)) ^ (a8 - 3454))))();
}

uint64_t sub_1969BCDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, unsigned int a14)
{
  v18 = 1068996913 * (((&a11 | 0x93BC6BA0) - &a11 + (&a11 & 0x6C439458)) ^ 0x46528A31);
  a13 = 1706097493 - v18;
  a14 = v15 - v18 - 845;
  a11 = v17;
  v19 = (*(v14 + 8 * (v15 + 5376)))(&a11, a2, a3, a4, a5, a6, a7, a8);
  return (*(v14 + 8 * (((a12 == v16) * (v15 ^ 0x78E)) ^ v15)))(v19);
}

void sub_1969BCF50()
{
  *&STACK[0x310] = vdupq_n_s64(0x4DE9423B6F16E7D2uLL);
  *&STACK[0x320] = vdupq_n_s64(0xFBFFFFFFFFFFFFFFLL);
  *&STACK[0x2F0] = vdupq_n_s64(v0);
  *&STACK[0x300] = vdupq_n_s64(0xE5AFA7ACF6E0968ELL);
  *&STACK[0x2D0] = vdupq_n_s64(0xE2E635010CECF8FFLL);
  *&STACK[0x2E0] = vdupq_n_s64(v1);
  *&STACK[0x2B0] = vdupq_n_s64(0x812B53C3B544D6B9);
  *&STACK[0x2C0] = vdupq_n_s64(0x256A7876A89AD72uLL);
  *&STACK[0x290] = vdupq_n_s64(0x31F3CBC2A36B396CuLL);
  *&STACK[0x2A0] = vdupq_n_s64(0x7489A27A009464B0uLL);
  *&STACK[0x270] = vdupq_n_s64(0xBF58159D2FFB2386);
  *&STACK[0x280] = vdupq_n_s64(0x50B656E853741D9BuLL);
  *&STACK[0x250] = vdupq_n_s64(0xBB6F16CCE7794FAFLL);
  *&STACK[0x260] = vdupq_n_s64(0x2053F53168026E3DuLL);
  *&STACK[0x230] = vdupq_n_s64(0xFAA19CB27FF500D8);
  *&STACK[0x240] = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  *&STACK[0x210] = vdupq_n_s64(0xA99F7374E88223D2);
  *&STACK[0x220] = vdupq_n_s64(0x2AF31A6C0057F93uLL);
  *&STACK[0x200] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  JUMPOUT(0x1969BD200);
}

uint64_t sub_1969BDD1C@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  STACK[0x590] = 0;
  v2 = *(STACK[0x738] + 8);
  STACK[0x490] = 0;
  LODWORD(STACK[0x578]) = 0;
  LODWORD(STACK[0x724]) = -1720256293;
  return (*(a1 + 8 * (((v2 == 0) * (((a2 - 2682) | 0x1029) ^ (a2 + 1642))) ^ a2)))();
}

uint64_t sub_1969BDDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = STACK[0x390] - (a5 & 0xFFFFFFF8) + 8;
  v70 = a7 + a5 - STACK[0x390];
  v71 = (a47 + a65 + a66 + a5 - STACK[0x390]);
  STACK[0x390] = *(v70 - 8);
  v72.i64[0] = v70 - 3;
  v72.i64[1] = v70 + (((v66 - 955) | 0xB00u) ^ 0xFFFFFFFFFFFFF43CLL);
  v73.i64[0] = v70 - 1;
  v73.i64[1] = v70 - 2;
  v74.i64[0] = v70 - 5;
  v74.i64[1] = v70 - 6;
  v75.i64[0] = v70 - 7;
  v75.i64[1] = v70 - 8;
  v76 = vandq_s8(v75, v67);
  v77 = vandq_s8(v74, v67);
  v78 = vandq_s8(v73, v67);
  v79 = vandq_s8(v72, v67);
  v80 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), *&STACK[0x400]), *&STACK[0x3F0]);
  v81 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), *&STACK[0x400]), *&STACK[0x3F0]);
  v82 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), *&STACK[0x400]), *&STACK[0x3F0]);
  v83 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), *&STACK[0x400]), *&STACK[0x3F0]);
  v84 = vsubq_s64(vorrq_s8(v80, *&STACK[0x3E0]), vorrq_s8(v80, *&STACK[0x300]));
  v85 = vsubq_s64(vorrq_s8(v81, *&STACK[0x3E0]), vorrq_s8(v81, *&STACK[0x300]));
  v86 = vaddq_s64(vsubq_s64(vorrq_s8(v83, *&STACK[0x3E0]), vorrq_s8(v83, *&STACK[0x300])), *&STACK[0x300]);
  v87 = vaddq_s64(vsubq_s64(vorrq_s8(v82, *&STACK[0x3E0]), vorrq_s8(v82, *&STACK[0x300])), *&STACK[0x300]);
  v88 = veorq_s8(v87, *&STACK[0x370]);
  v89 = veorq_s8(v86, *&STACK[0x370]);
  v90 = veorq_s8(v86, *&STACK[0x360]);
  v91 = veorq_s8(v87, *&STACK[0x360]);
  v92 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v90), *&STACK[0x350]);
  v93 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v91), *&STACK[0x350]);
  v94 = vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL);
  v95 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v96 = veorq_s8(v92, v94);
  v97 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v96);
  v99 = veorq_s8(vaddq_s64(v97, v95), *&STACK[0x340]);
  v100 = veorq_s8(v98, *&STACK[0x340]);
  v101 = vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL);
  v102 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v103 = veorq_s8(v99, v101);
  v104 = vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL);
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v103);
  v106 = vaddq_s64(v104, v102);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v105, *&STACK[0x330]), vorrq_s8(v105, *&STACK[0x2F0])), *&STACK[0x2F0]), *&STACK[0x320]);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v106, *&STACK[0x330]), vorrq_s8(v106, *&STACK[0x2F0])), *&STACK[0x2F0]), *&STACK[0x320]);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v110 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v110);
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v111, *&STACK[0x3D0]), vorrq_s8(v111, *&STACK[0x2E0])), *&STACK[0x2E0]), *&STACK[0x3C0]);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v112, *&STACK[0x3D0]), vorrq_s8(v112, *&STACK[0x2E0])), *&STACK[0x2E0]), *&STACK[0x3C0]);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v116 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v116);
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v117, *&STACK[0x3B0]), vorrq_s8(v117, *&STACK[0x2D0])), *&STACK[0x2D0]), *&STACK[0x3A0]);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v118, *&STACK[0x3B0]), vorrq_s8(v118, *&STACK[0x2D0])), *&STACK[0x2D0]), *&STACK[0x3A0]);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v122 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v122);
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v124, v124), *&STACK[0x310]), v124), *&STACK[0x2C0]), *&STACK[0x2B0]);
  v126 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v123, v123), *&STACK[0x310]), v123), *&STACK[0x2C0]), *&STACK[0x2B0]);
  v127 = vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL);
  v128 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v129 = veorq_s8(v125, v127);
  v130 = vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL);
  v131 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v132 = vaddq_s64(v85, *&STACK[0x300]);
  v170.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v131, v129), *&STACK[0x2A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v75, 3uLL), v68)));
  v170.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v130, v128), *&STACK[0x2A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v74, 3uLL), v68)));
  v133 = veorq_s8(v132, *&STACK[0x370]);
  v134 = veorq_s8(v132, *&STACK[0x360]);
  v135 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v134), *&STACK[0x350]);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v137 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136), *&STACK[0x340]);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138);
  v140 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v139, *&STACK[0x330]), vorrq_s8(v139, *&STACK[0x2F0])), *&STACK[0x2F0]), *&STACK[0x320]);
  v141 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v142 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v141);
  v143 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v142, *&STACK[0x3D0]), vorrq_s8(v142, *&STACK[0x2E0])), *&STACK[0x2E0]), *&STACK[0x3C0]);
  v144 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL));
  v145 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v144);
  v146 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v145, *&STACK[0x3B0]), vorrq_s8(v145, *&STACK[0x2D0])), *&STACK[0x2D0]), *&STACK[0x3A0]);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v148, v148), *&STACK[0x310]), v148), *&STACK[0x2C0]), *&STACK[0x2B0]);
  v150 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL)));
  v151 = vaddq_s64(v84, *&STACK[0x300]);
  v170.val[0] = vshlq_u64(veorq_s8(v150, *&STACK[0x2A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v73, 3uLL), v68)));
  v152 = veorq_s8(v151, *&STACK[0x370]);
  v153 = veorq_s8(v151, *&STACK[0x360]);
  v154 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v153), *&STACK[0x350]);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v156 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155), *&STACK[0x340]);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v158 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157);
  v159 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v158, *&STACK[0x330]), vorrq_s8(v158, *&STACK[0x2F0])), *&STACK[0x2F0]), *&STACK[0x320]);
  v160 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v161 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160);
  v162 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v161, *&STACK[0x3D0]), vorrq_s8(v161, *&STACK[0x2E0])), *&STACK[0x2E0]), *&STACK[0x3C0]);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163);
  v165 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v164, *&STACK[0x3B0]), vorrq_s8(v164, *&STACK[0x2D0])), *&STACK[0x2D0]), *&STACK[0x3A0]);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v167, v167), *&STACK[0x310]), v167), *&STACK[0x2C0]), *&STACK[0x2B0]);
  v170.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL))), *&STACK[0x2A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v72, 3uLL), v68)));
  *v71 = veor_s8(vrev64_s8(*&vqtbl4q_s8(v170, *&STACK[0x230])), STACK[0x390]);
  return (*(STACK[0x248] + 8 * ((5363 * (v69 == 0)) ^ v66)))(a1, a2, a3, a4);
}

void sub_1969BE3CC()
{
  LODWORD(STACK[0xB24]) = 1906239693;
  STACK[0x958] = v0;
  LODWORD(STACK[0x58C]) = 1906239693;
  STACK[0x740] = *(v2 + 8 * (v1 - 1483));
  JUMPOUT(0x1969BE438);
}

uint64_t sub_1969BE480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unint64_t a37)
{
  v39 = STACK[0x228] - 1679;
  LODWORD(STACK[0x9CC]) = v37;
  v40 = (v37 ^ a4) + STACK[0x310];
  STACK[0x9D0] = v40;
  return (*(v38 + 8 * (v39 ^ (76 * (v40 > a37)))))(a1, a2, a3, 0xAB3042D228875C41);
}

uint64_t sub_1969BE7D8()
{
  v2 = STACK[0x970];
  STACK[0x430] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (((v2 == 0) * (((((v0 ^ 0x4CE) - 826) | 0xC08) - 3263) ^ 0x166)) ^ v0 ^ 0x4CE)))();
}

uint64_t sub_1969BE808@<X0>(int a1@<W8>)
{
  STACK[0xA38] = v1;
  v2 = STACK[0x498];
  STACK[0xA40] = STACK[0x498];
  return (*(STACK[0x248] + 8 * (((v1 - v2 > ((a1 - 852) | 0x122u) - 297) * ((1806 * (a1 ^ 0x366)) ^ 0x1D40)) ^ a1)))();
}

uint64_t sub_1969BE8C8()
{
  v1 = *(STACK[0x438] + 24);
  STACK[0x550] = v1;
  return (*(STACK[0x248] + 8 * (((v1 == 0) * (((((v0 ^ 0x1EEC) - 4308) | 0xE00) ^ 0xFFFFFCDE) + (v0 ^ 0x1EEC) - 943)) ^ v0 ^ 0x1EEC)))();
}

void sub_1969BE9F0(int a1@<W8>)
{
  v6 = ((v2 ^ 0xB22) + 1073740604) | v1;
  v7 = *(v3 + 4) + a1;
  v8 = *v3;
  *(*v3 + v7) = (HIBYTE(v6) ^ 0x8C) - ((2 * (HIBYTE(v6) ^ 0x8C)) & 0xD8) - 20;
  *(v8 + v7 + 1) = (BYTE2(v6) ^ 0xE6) - ((2 * (BYTE2(v6) ^ 0xE6)) & 0xD8) - 20;
  *(v8 + v7 + 2) = (BYTE1(v6) ^ 0x1C) - 2 * ((BYTE1(v6) ^ 0x1C) & 0xEF ^ BYTE1(v6) & 3) - 20;
  *(v8 + v7 + 3) = v6 ^ 0xD1;
  v9 = *v3;
  v10 = ((v5 ^ 0xEF730D67) + 158548287) ^ v5 ^ ((v5 ^ 0x4AD6BEEB) - 1395199309) ^ ((v5 ^ 0x4BA5FF47) - 1381649633) ^ ((v5 ^ 0xF7FFFF6D) + 301970229);
  v11 = ((2 * (a1 + *(v3 + 4) + 4)) & 0x9F6CB67E) + ((a1 + *(v3 + 4) + 4) ^ 0x4FB65B3F) - 1337350975;
  *(*v3 + v11) = (HIBYTE(v10) ^ 0x19) - ((2 * (HIBYTE(v10) ^ 0x19)) & 0xD8) - 20;
  *(v9 + v11 + 1) = ((2 * (BYTE2(v10) & 0xEE ^ (~BYTE2(v10) | 0xFD))) ^ 0xD9) - BYTE2(v10) - 20;
  *(v9 + v11 + 2) = (BYTE1(v10) ^ 0xB3) - ((2 * (BYTE1(v10) ^ 0xB3)) & 0xD8) - 20;
  *(v9 + v11 + 3) = ((v5 ^ 0x67) + 63) ^ v5 ^ ((v5 ^ 0xEB) - 77) ^ ((v5 ^ 0x47) + 31) ^ ((v5 ^ 0x6D) + 53) ^ 0x4A;
  *(v3 + 4) = v4;
  JUMPOUT(0x1969BEB9CLL);
}

uint64_t sub_1969BEBE8()
{
  v2 = STACK[0x4B8];
  LODWORD(STACK[0x454]) = STACK[0x444];
  return (*(v1 + 8 * (((523 * ((v0 + 277198447) & 0xEF7A3B7D ^ 0xB70) - 2048) * (v2 != 0)) ^ v0)))();
}

uint64_t sub_1969BED00@<X0>(uint64_t a1@<X8>)
{
  v9 = 3 * (v6 ^ 0x2A5);
  v10 = *(v7 - 216);
  v14.val[1].i64[0] = (v4 + 13) & 0xF;
  v14.val[1].i64[1] = (v4 + 12) & 0xF;
  v14.val[2].i64[0] = (v4 + 11) & 0xF;
  v14.val[2].i64[1] = (v4 + 10) & 0xF;
  v14.val[3].i64[0] = (v4 + 9) & 0xF;
  v14.val[3].i64[1] = v5 & 0xF ^ 0xBLL;
  v15.val[0].i64[0] = (v4 + v9 + 116) & 0xF;
  v15.val[0].i64[1] = (v4 + 6) & 0xF;
  v15.val[1].i64[0] = (v4 + 5) & 0xF;
  v15.val[1].i64[1] = (v4 + 4) & 0xF;
  v15.val[2].i64[0] = (v4 + 3) & 0xF;
  v15.val[2].i64[1] = (v4 + 2) & 0xF;
  v15.val[3].i64[0] = (v4 + 1) & 0xF;
  v15.val[3].i64[1] = v4 & 0xF;
  v11 = vqtbl4q_s8(v15, xmmword_196EBFA60).u64[0];
  v12.i64[0] = 0xB0B0B0B0B0B0B0BLL;
  v12.i64[1] = 0xB0B0B0B0B0B0B0BLL;
  v14.val[0].i64[0] = (v4 - 17) & 0xF;
  v14.val[0].i64[1] = (v4 + 14) & 0xF;
  v15.val[2].i64[0] = vqtbl4q_s8(v14, xmmword_196EBFA60).u64[0];
  v15.val[2].i64[1] = v11;
  v15.val[0] = vrev64q_s8(vmulq_s8(v15.val[2], v12));
  *(v8 + v4 - 16) = veorq_s8(veorq_s8(veorq_s8(veorq_s8(*(v1 + v14.val[0].i64[0] - 15), *(a1 + v4 - 16)), *(v2 + v14.val[0].i64[0] - 15)), *(748 * (v9 ^ 0x391u) + v14.val[0].i64[0] + v3 - 1507)), vextq_s8(v15.val[0], v15.val[0], 8uLL));
  return (*(v10 + 8 * ((7 * ((v5 & 0x10) != 16)) ^ v9)))();
}

uint64_t sub_1969BEE6C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  *(a10 + 141) = (&a29 ^ 0xBA) * (&a29 + 17);
  *(a10 - 1284 + ((a1 - 1199) | 0x410)) = (&a29 ^ 0xBB) * (&a29 + 18);
  return (*(v29 + 8 * a1))();
}

uint64_t sub_1969BF020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  *(v61 - 112) = (v59 + 5442) ^ (998242381 * ((((v61 - 144) | 0x72647B69) - (v61 - 144) + ((v61 - 144) & 0x8D9B8490)) ^ 0xD80BE3BF));
  *(v61 - 128) = &a38;
  *(v61 - 120) = v60 + 12;
  *(v61 - 144) = &a58;
  (*(v58 + 8 * (v59 + 6800)))(v61 - 144, a2, a3, a4, a5, a6, a7, a8);
  return (*(v58 + 8 * (((*(v61 - 136) == ((606 * (v59 ^ 0x20)) ^ 0x719F9C66)) * ((v59 ^ 0x20) + 3286)) ^ v59)))(a1);
}

uint64_t sub_1969BF0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v22 - 120) = v21 + a15 * v20 + 1298;
  *(v22 - 136) = &a18;
  *(v22 - 128) = v18;
  v23 = (*(v19 + 8 * (v21 ^ 0x1954)))(v22 - 136, a2, a3, a4, a5, a6, a7, a8);
  return (*(v19 + 8 * ((((v21 ^ 0x607u) - 1478011821 + *(v22 - 116) - 1473 < 0xCD469F77) * ((v21 ^ 6) + 2637)) ^ v21)))(v23);
}

uint64_t sub_1969BF250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W5>, unsigned int a4@<W6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v24 = a6 - 1;
  v25 = STACK[0x350] + v24;
  v26 = __ROR8__(v25 & 0xFFFFFFFFFFFFFFF8, 8);
  v27 = ((v26 - 0x6AF7234D0CC131D5) ^ v17 | v18) - ((v26 - 0x6AF7234D0CC131D5) ^ v17 | ((v8 ^ a4) + v15)) + v12;
  v28 = __ROR8__(v27 ^ v11, 8);
  v27 ^= 0x9A49C0E087253006;
  v29 = (v28 + v27) ^ 0xE49D77DF873DBF7ELL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ a5;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = __ROR8__((v9 - ((v33 + v32) | v9) + ((v33 + v32) | 0x1031C100296D42A8)) ^ v16, 8);
  v35 = (v9 - ((v33 + v32) | v9) + ((v33 + v32) | 0x1031C100296D42A8)) ^ v16 ^ __ROR8__(v32, 61);
  v36 = (v10 - ((v34 + v35) | v10) + ((v34 + v35) | v13)) ^ v23;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = __ROR8__((v14 - ((v38 + v37) | v14) + ((v38 + v37) | a2)) ^ v7, 8);
  v40 = (v14 - ((v38 + v37) | v14) + ((v38 + v37) | a2)) ^ v7 ^ __ROR8__(v37, 61);
  v41 = ((v22 & (2 * (v39 + v40))) - (v39 + v40) + v19) ^ v20;
  *(a1 + v24 + v21) = (((__ROR8__(v41, 8) + (v41 ^ __ROR8__(v40, 61))) ^ v6) >> (8 * (v25 & 7u))) ^ *v25;
  return (*(STACK[0x370] + 8 * (((v24 == 0) * a3) ^ v8)))();
}

void sub_1969BF4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, int *a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v37 = 4 * (v34 - v35);
  v38 = ((*(*a30 + (*a31 & 0xFFFFFFFFF6ED2EA4)) ^ (a33 + v37)) & 0x7FFFFFFF) * ((1607 * (v36 ^ (v36 - 2))) ^ 0xA34B11E5);
  v39 = v38 ^ HIWORD(v38);
  v40 = -1555358357 * v39;
  *(a34 + v37) ^= *(a33 + v37) ^ *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v36 ^ (v36 - 181))) + HIBYTE(v40) - 3) ^ *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v36 ^ (v36 - 326))) + HIBYTE(v40)) ^ *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v36 ^ (v36 - 564))) + HIBYTE(v40) - 2) ^ (493551616 * v39) ^ v40 ^ (1071499755 * HIBYTE(v40));
  JUMPOUT(0x1969BF5F4);
}

uint64_t sub_1969BF71C(uint64_t a1)
{
  *(v2 + 1) = 5;
  *v1 = 0;
  return sub_1969BF760(a1, 1435);
}

uint64_t sub_1969BF760(uint64_t a1, int a2)
{
  v11 = v3 - v2 + v9;
  *(v11 - 1) = ((v2 + v5) ^ v6) * (v2 + v5 + 17);
  *(v11 - 2) = ((v2 + v5) ^ 0xBB) * (v2 + v5 + 18);
  return (*(v8 + 8 * (((v7 + v2 == v4) * a2) ^ v10)))(a1);
}

uint64_t sub_1969BF800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, int a13, char *a14, unsigned int a15)
{
  a15 = 1498 - 1825732043 * (((&a13 | 0xC56C3955) + (~&a13 | 0x3A93C6AA)) ^ 0xC5FA6A63);
  a14 = &a10;
  v18 = (*(v16 + 53584))(&a13, a2, a3, a4, a5, a6, a7, a8);
  return (*(v16 + 8 * ((94 * (a13 == v15)) ^ v17)))(v18);
}

void sub_1969BFB04(uint64_t a1@<X8>, uint64_t a2, unsigned int a3, uint64_t a4)
{
  a3 = (v5 + 226) ^ (654144011 * (((&a3 | 0x5B10C7D9) - (&a3 & 0x5B10C7D9)) ^ 0x77C4BA45));
  a4 = a1;
  (*(v4 + 8 * (v5 + 2810)))(&a3);
  *(v6 + 4) = 1352679864 - *(v6 + 4);
  JUMPOUT(0x1968E8C10);
}

void sub_1969BFB78()
{
  v3 = v0 ^ 0x1796;
  v4 = v1;
  v5 = (*(v1 + 8 * ((v0 ^ 0x1796) + 2138)))(23);
  v6 = *(v2 + 8 * (v3 - 4190));
  *v6 = v5;
  (*(v4 + 8 * (v3 + 2255)))();
  *(v5 + 12) = 0;
  v7 = *(v2 + 8 * (v3 ^ 0x12A2));
  *(v7 - 4) = 0;
  v8 = *(v2 + 8 * (v3 - 4364));
  v9 = *v6;
  *(v8 + 34) = 117;
  *v7 = 47;
  **(v2 + 8 * (v3 - 4470)) = 1;
  *(v8 + 3) = 90;
  v9[8] = 79;
  **(v2 + 8 * (v3 ^ 0x1376)) = -2;
  *(v8 + 5) = 10;
  *(v7 + 3) = 96;
  v9[21] = 119;
  *(v7 - 10) = 80;
  *(v8 + 14) = 87;
  v9[2] = -22;
  v9[22] = 3;
  *(v7 + 6) = -122;
  **(v2 + 8 * (v3 ^ 0x1232)) = -127;
  *(v7 - 11) = 80;
  *(v7 - 9) = 83;
  *(v8 + 29) = -24;
  *(v8 + 27) = -42;
  v9[17] = -121;
  v9[3] = -34;
  *v9 = 54;
  *(v8 + 15) = 9;
  *(v7 - 8) = -77;
  *(v8 + 4) = -49;
  **(v2 + 8 * (v3 - 4334)) = 51;
  *(v8 + 28) = -57;
  *(v7 - 6) = -11;
  *(v8 + 38) = 112;
  *(v8 + 26) = 90;
  *(v8 + 16) = -30;
  v9[7] = -52;
  *(v7 - 5) = 17;
  *(v7 + 7) = 23;
  **(v2 + 8 * (v3 - 4285)) = -109;
  *(v7 - 12) = 34;
  *(v8 + 24) = -85;
  *(v8 + 35) = -93;
  *(v8 + 8) = -100;
  *(v8 + 6) = 40;
  v10 = *v6;
  v10[4] = 45;
  v10[9] = 36;
  *(v8 + 10) = 39;
  *(v7 - 7) = 31;
  *(v7 + 4) = -21647;
  *(v8 + 11) = -52;
  v10[16] = -87;
  *(v7 + 1) = -90;
  *(v8 + 23) = 28;
  *(v8 + 39) = 86;
  *(v7 + 2) = -39;
  *(v8 + 31) = 92;
  v10[1] = -39;
  *(v8 + 9) = -73;
  *(v8 + 25) = -31;
  *(v8 + 7) = 94;
  *(v10 + 19) = -3656;
  v10[6] = -16;
  *(v8 + 22) = 81;
  *(v8 + 30) = 91;
  *(v8 + 18) = 122;
  *(v8 + 12) = 51;
  v10[18] = -116;
  *(v8 + 19) = -124;
  *(v8 + 13) = -30;
  *(v8 + 21) = 49;
  *(v8 + 1) = 90;
  *(v8 + 32) = 27433;
  *(v8 + 36) = 7906;
  *(v10 + 5) = -24918;
  *v8 = -108;
  *(v8 + 20) = -102;
  v10[5] = -105;
  *(v8 + 17) = -4;
  *(v8 + 2) = 51;
  JUMPOUT(0x1969C2944);
}

void sub_1969C2E90(int a1@<W8>, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v8 = 455395931 * ((((2 * &a3) | 0xEC500034) - &a3 - 1982332954) ^ 0xD95ED6);
  a5 = v5;
  a3 = v8 + a1 + 2167;
  a4 = (1787679718 - v7 - ((((a1 + 909) ^ 0x77FF279D) - 2 * v7) & 0x5D1C71FA)) ^ v8;
  (*(v6 + 8 * (a1 ^ 0x1587)))(&a3);
  JUMPOUT(0x1969B3548);
}

uint64_t sub_1969C2F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, unsigned int a14, int a15, unsigned int a16, uint64_t a17, char *a18, int a19)
{
  v24 = (&a14 ^ 0x84A988EC) * v21;
  a19 = v24 - 1795307754 + v23;
  a16 = v24 - 143680479;
  a14 = v24 ^ 0x80F33AA;
  a17 = a11;
  a18 = &a12;
  v25 = (*(v19 + 8 * (v23 + 2297)))(&a14, a2, a3, a4, a5, a6, a7, a8);
  return (*(v19 + 8 * (((a15 == (v22 ^ (v20 - 2883))) * ((v23 - 3694) ^ 0x74A)) ^ v23)))(v25);
}

uint64_t sub_1969C30F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = STACK[0x4F0];
  *v8 = 0u;
  v8[1] = 0u;
  v9 = *v6;
  STACK[0x750] = *(a6 + 8 * (v7 ^ 0x16D1));
  return (*(a6 + 8 * (((v9 != 0) * (((((v7 ^ 0x16D1) + 4895) ^ 0x5F6) - 5100) ^ 0x238)) ^ ((v7 ^ 0x16D1) + 4895))))(a1, a2, a3, a4, a5);
}

uint64_t sub_1969C3160(uint64_t a1)
{
  LODWORD(STACK[0x7BC]) = v1;
  v3 = STACK[0x986];
  v4 = STACK[0x228];
  v5 = STACK[0x228] - 2574;
  STACK[0x5D0] = STACK[0x988];
  return (*(v2 + 8 * ((v3 == ((v4 - 2574) ^ 0xA679)) ^ v5)))(a1, 1906239355);
}

void sub_1969C31C8()
{
  v0 = STACK[0xA80];
  STACK[0x300] = ((STACK[0xA80] + 4) ^ 0xFFEFF4F6D76C7F3FLL) + 0x2D756BFD78B7CDFFLL + ((2 * (STACK[0xA80] + 4)) & 0xFFDFE9EDAED8FE7ELL);
  v1 = STACK[0xAA0] + (((v5 + 709) | 0xA14u) ^ 0xE18);
  STACK[0x2F0] = (v1 ^ 0xFD6D66FC757E6FFELL) + 0x2FF7F9F7DAA5DD40 + ((2 * v1) & 0xFADACDF8EAFCDFFCLL);
  STACK[0x2E0] = ((STACK[0xAC0] + 4) ^ 0xBDE566F576ACEF7FLL) + 0x6F7FF9FED9775DBFLL + ((2 * (STACK[0xAC0] + 4)) & 0x7BCACDEAED59DEFELL);
  STACK[0x2D0] = ((STACK[0xAE0] + 4) ^ 0x7D65E2F4FC37EF7FLL) - 0x50008200AC13A241 + ((2 * (STACK[0xAE0] + 4)) & 0xFACBC5E9F86FDEFELL);
  v2 = STACK[0xB00];
  STACK[0x2C0] = ((STACK[0xB00] + 4) ^ 0xBD776FF57F34ED7FLL) + 0x6FEDF0FED0EF5FBFLL + ((2 * (STACK[0xB00] + 4)) & 0x7AEEDFEAFE69DAFELL);
  v3 = STACK[0xB10];
  STACK[0x2A0] = ((STACK[0xB10] + 4) ^ 0xBF7D60FC7E6DCF7FLL) + 0x6DE7FFF7D1B67DBFLL + ((2 * (STACK[0xB10] + 4)) & 0x7EFAC1F8FCDB9EFELL);
  v4 = STACK[0xA50] + 10;
  STACK[0x280] = ((STACK[0xA50] + 4) ^ 0xFD7576FD75347D7ELL) + 0x2FEFE9F6DAEFCFC0 + ((2 * (STACK[0xA50] + 4)) & 0xFAEAEDFAEA68FAFCLL);
  STACK[0x270] = ((STACK[0xA40] + 4) ^ 0x7F77E0FFFD36EFBFLL) - 0x5212800BAD12A281 + ((2 * (STACK[0xA40] + 4)) & 0xFEEFC1FFFA6DDF7ELL);
  STACK[0x260] = ((STACK[0xA30] + 4) ^ 0xED6FFAF7DA267D3ELL) + 0x3FF565FC75FDD000 + ((2 * (STACK[0xA30] + 4)) & 0xDADFF5EFB44CFA7CLL);
  STACK[0x250] = ((STACK[0xA20] + 4) ^ 0x2D6FF0F47CF5EDFELL) - 0xA90002CD1A0C0 + ((2 * (STACK[0xA20] + 4)) & 0x5ADFE1E8F9EBDBFCLL);
  STACK[0x230] = ((STACK[0xA10] + 4) ^ 0x6DFF77FCF464EDFFLL) - 0x409A1708A440A0C1 + ((2 * (STACK[0xA10] + 4)) & 0xDBFEEFF9E8C9DBFELL);
  STACK[0x210] = ((STACK[0xB30] + 4) ^ 0x6F6FE0F6FD37FD7FLL) - 0x420A8002AD13B041 + ((2 * (STACK[0xB30] + 4)) & 0xDEDFC1EDFA6FFAFELL);
  STACK[0x200] = ((v0 + 6) ^ 0x6EED8F765F7CFDB9) - 0x8986425554A811 + ((2 * (v0 + 6)) & 0xDDDB1EECBEF9FB72);
  STACK[0x2B0] = v2 + 10;
  STACK[0x290] = v3 + 10;
  STACK[0x310] = v4;
  STACK[0x390] = STACK[0x8E8];
  STACK[0x380] = STACK[0x6C8];
  STACK[0x370] = STACK[0x7D8];
  STACK[0x360] = STACK[0x748];
  STACK[0x400] = STACK[0x550];
  STACK[0x3E0] = STACK[0x950];
  STACK[0x3C0] = STACK[0x618];
  STACK[0x350] = STACK[0x4F0];
  STACK[0x340] = STACK[0x7A0];
  STACK[0x330] = STACK[0x600];
  STACK[0x320] = STACK[0x818];
  STACK[0x3B0] = STACK[0x598];
  LODWORD(STACK[0x3F0]) = LOWORD(STACK[0x9EE]);
  LODWORD(STACK[0x410]) = LOWORD(STACK[0x9DE]);
  LODWORD(STACK[0x3A0]) = LOWORD(STACK[0x9CA]);
  LODWORD(STACK[0x3D0]) = LOWORD(STACK[0x986]);
  JUMPOUT(0x196A17488);
}

void sub_1969C3214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v14 = (*(a5 + 96) - ((2 * *(a5 + 96)) & 0x1C) - 112);
  if (v14 == 145)
  {
    v18 = *(a5 + 64);
    v17 = *(a5 + 68);
    *(a5 + 56) = (((v17 - ((2 * v17) & 0x1C) + 22) << ((a8 + 77) ^ 0x29)) - 64) ^ 0x9C;
    *(a5 + 57) = v13 ^ (v17 >> 5);
    *(a5 + 58) = v13 ^ (v17 >> 13);
    *(a5 + 59) = v13 ^ (v17 >> 21);
    *(a5 + 60) = ((__PAIR64__(v18, v17) >> 29) - 2 * ((__PAIR64__(v18, v17) >> 29) & 0x3F) - 65) ^ 0x53;
    *(a5 + 61) = v13 ^ (v18 >> 5);
    *(a5 + 62) = v13 ^ (v18 >> 13);
    v16 = (v18 >> 21) ^ 0xFFFFFFEC;
  }

  else
  {
    if (v14 != 142)
    {
      goto LABEL_6;
    }

    v15 = *(a5 + 64);
    v16 = *(a5 + 68);
    *(a5 + 56) = v13 ^ (v15 >> 21);
    *(a5 + 57) = (v15 >> a13) ^ v13;
    *(a5 + 58) = v13 ^ (v15 >> 5);
    *(a5 + 59) = ((__PAIR64__(v15, v16) >> 29) - ((2 * (__PAIR64__(v15, v16) >> 29)) & 0x90) + 72) ^ 0xA4;
    *(a5 + 60) = v13 ^ (v16 >> 21);
    *(a5 + 61) = v13 ^ (v16 >> 13);
    *(a5 + 62) = v13 ^ (v16 >> 5);
    LOBYTE(v16) = (8 * (v16 - 2 * (v16 & 1)) - 120) ^ 0x64;
  }

  *(a5 + 63) = v16;
LABEL_6:
  JUMPOUT(0x1969B0D58);
}

void sub_1969C3368()
{
  LODWORD(STACK[0x800]) = STACK[0x320];
  LODWORD(STACK[0x43C]) = STACK[0x330];
  LODWORD(STACK[0x48C]) = STACK[0x340];
  LODWORD(STACK[0x44C]) = v0;
  JUMPOUT(0x196996EE4);
}

uint64_t sub_1969C338C(uint64_t a1, int a2)
{
  v5 = ((a2 - 621014587) & 0x2503F7EB ^ 0x703A3322) + v2;
  v6 = v4 + 1616035832 > v5;
  if ((v4 + 1616035832) < 0xAE0F2F61 != v5 < ((a2 - 272) | 0x110u) - 1374739920)
  {
    v6 = (v4 + 1616035832) < 0xAE0F2F61;
  }

  return (*(v3 + 8 * ((11 * !v6) ^ (a2 - 2139))))(a1);
}

uint64_t sub_1969C357C(unsigned int a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v27.val[1].i64[0] = (v23 + 13) & 0xF;
  v27.val[1].i64[1] = (v23 + 12) & 0xF;
  v27.val[2].i64[0] = (v23 + 11) & 0xF;
  v27.val[2].i64[1] = (v23 + 10) & 0xF;
  v27.val[3].i64[0] = (v23 + 9) & 0xF;
  v27.val[3].i64[1] = a2 & 0xF ^ 4;
  v28.val[0].i64[0] = (v23 + 7) & 0xF;
  v28.val[0].i64[1] = (v23 + 6) & 0xF;
  v28.val[1].i64[0] = (v23 + 5) & 0xF;
  v28.val[1].i64[1] = (v23 + 4) & 0xF;
  v28.val[2].i64[0] = (v23 + 3) & 0xF;
  v28.val[2].i64[1] = (v23 + 2) & 0xF;
  v28.val[3].i64[0] = (v23 + 1) & 0xF;
  v28.val[3].i64[1] = v23 & 0xF;
  v24 = vqtbl4q_s8(v28, xmmword_196EBFA60).u64[0];
  v25.i64[0] = 0x4D4D4D4D4D4D4D4DLL;
  v25.i64[1] = 0x4D4D4D4D4D4D4D4DLL;
  v27.val[0].i64[0] = ((a1 ^ 0x1BFB) - 5106) & (a3 + 15);
  v27.val[0].i64[1] = (v23 + 14) & 0xF;
  v28.val[3].i64[0] = vqtbl4q_s8(v27, xmmword_196EBFA60).u64[0];
  v28.val[3].i64[1] = v24;
  v28.val[0] = vrev64q_s8(vmulq_s8(v28.val[3], v25));
  *(a18 + a3) = veorq_s8(veorq_s8(veorq_s8(*(v22 + v27.val[0].i64[0] - 15), *(v19 + a3)), veorq_s8(*(v27.val[0].i64[0] + v21 - 14), *(v20 + v27.val[0].i64[0] - 15))), vextq_s8(v28.val[0], v28.val[0], 8uLL));
  return (*(a19 + 8 * ((6615 * ((v23 & 0x10) == 16)) ^ a1)))();
}

uint64_t sub_1969C373C()
{
  v4 = (v3 + 725) | 0xC4;
  v5 = (v4 - 3511) | 0x1000;
  v11 = v7;
  v10 = v4 - ((&v10 - 42668815 - 2 * (&v10 & 0xFD74ECF1)) ^ 0x5A8CCB0) * v2 + 1808;
  (*(v1 + 8 * (v4 ^ 0xA6E)))(&v10);
  v10 = v5 - (((&v10 | 0x36FFC601) + (~&v10 | 0xC90039FE)) ^ 0xCE23E641) * v2 + 1223;
  v11 = v8;
  result = (*(v1 + 8 * (v5 + 1949)))(&v10);
  *(v0 + 12) = (v4 ^ 0xFBBFEE32) + (v9 ^ 0x75DF8DFD) + ((2 * v9) & 0xEBBF1BFA);
  return result;
}

uint64_t sub_1969C3858()
{
  v0 = (LODWORD(STACK[0x90C]) ^ 0xFE5FFD5B) + (((STACK[0x228] ^ 0x636) + 2982) ^ 0x6DBBBC75) + ((2 * LODWORD(STACK[0x90C])) & 0xFCBFFAB6);
  v1 = (v0 ^ 0xDBE61ADB) & (2 * (v0 & 0x93E45300)) ^ v0 & 0x93E45300;
  v2 = ((2 * (v0 ^ 0xFB6E98DB)) ^ 0xD11597B6) & (v0 ^ 0xFB6E98DB) ^ (2 * (v0 ^ 0xFB6E98DB)) & 0x688ACBDA;
  v3 = v2 ^ 0x288A4849;
  v4 = (v2 ^ 0x40008000) & (4 * v1) ^ v1;
  v5 = ((4 * v3) ^ 0xA22B2F6C) & v3 ^ (4 * v3) & 0x688ACBD8;
  v6 = (v5 ^ 0x200A0B40) & (16 * v4) ^ v4;
  v7 = ((16 * (v5 ^ 0x4880C093)) ^ 0x88ACBDB0) & (v5 ^ 0x4880C093) ^ (16 * (v5 ^ 0x4880C093)) & 0x688ACBD0;
  return (*(STACK[0x248] + 8 * ((51 * ((v0 ^ (2 * ((((v7 ^ 0x6002424B) << 8) & 0x688ACB00 ^ 0x88A0000 ^ (((v7 ^ 0x6002424B) << 8) ^ 0x8ACB0000) & (v7 ^ 0x6002424B)) & (((v7 ^ 0x8888900) & (v6 << 8) ^ v6) << 16) ^ (v7 ^ 0x8888900) & (v6 << 8) ^ v6))) != 2481214208)) ^ (STACK[0x228] - 389))))();
}

uint64_t sub_1969C3AD8@<X0>(uint64_t a1@<X8>)
{
  v5 = v4 + 127 - a1;
  v6 = *(v5 - 31);
  v7 = v3 + 127 - a1;
  v8.i64[0] = 0xD8D8D8D8D8D8D8D8;
  v8.i64[1] = 0xD8D8D8D8D8D8D8D8;
  v9.i64[0] = 0xECECECECECECECECLL;
  v9.i64[1] = 0xECECECECECECECECLL;
  *(v7 - 15) = vaddq_s8(vsubq_s8(*(v5 - 15), vandq_s8(vaddq_s8(*(v5 - 15), *(v5 - 15)), v8)), v9);
  *(v7 - 31) = vaddq_s8(vsubq_s8(v6, vandq_s8(vaddq_s8(v6, v6), v8)), v9);
  return (*(v1 + 8 * ((19 * (a1 + 32 != ((6 * (v2 ^ 0x1BDu)) ^ 0x175CLL))) ^ v2)))();
}

uint64_t sub_1969C3C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, unsigned int a13, int a14, unsigned int a15, uint64_t a16, char *a17, int a18)
{
  v21 = 1012216201 * (&a13 ^ 0x84A988EC);
  a15 = v21 - 40011094;
  a13 = v21 ^ 0x80F33AA;
  a16 = a11;
  a17 = &a10;
  a18 = v21 - 1795307553 + v19;
  v22 = (*(v18 + 8 * (v19 ^ 0xA42)))(&a13, a2, a3, a4, a5, a6, a7, a8);
  return (*(v18 + 8 * (((a14 == v20 + ((v19 + 1371934328) & 0xAE39EDEE) + 921) * (((v19 - 193) | 0x30A) ^ 0x199E)) ^ v19)))(v22);
}