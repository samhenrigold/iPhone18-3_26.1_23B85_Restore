uint64_t sub_265C3D4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, _DWORD *a17, uint64_t a18, int a19, int a20, uint64_t a21, uint64_t a22, uint64_t *a23)
{
  v25 = *a23;
  v26 = a20 + 989737029 - ((2 * a20) & 0x75FC608A);
  v27 = ((((v23 + 129425154) & 0xF8491FB7) + ((v23 - 735235326) & 0x2BD2BCFA) - 356628850) ^ *a17) + ((2 * *a17) & 0xD57CBBBE) + 356622881;
  *(*a23 + v27) = HIBYTE(v26) ^ 0x3A;
  *(v25 + v27 + 1) = BYTE2(v26) ^ 0xFE;
  *(v25 + v27 + 2) = BYTE1(v26) ^ 0x30;
  *(v25 + v27 + 3) = v26 ^ 0x45;
  v28 = (*a17 + 4);
  *a17 = v28;
  return (*(v24 + 8 * ((23 * (a15 > *a23 + ((2 * v28) & 0x1CF3AD7FELL) + (v28 ^ 0x1B3FFFBDE79D6BFFuLL) - 0x1B3FFFBDE79D6BFFLL)) ^ v23)))();
}

uint64_t sub_265C3D7E4@<X0>(uint64_t *a1@<X4>, _DWORD *a2@<X5>, uint64_t (*a3)(void)@<X6>, int a4@<W8>)
{
  v5 = *a1;
  v6 = v4 - ((a4 & 0xF50207CF ^ 0x75FC65C0) & (2 * v4)) + 989737029;
  v7 = ((2 * *a2) & 0xDF77BA9E) + (*a2 ^ 0x6FBBDD4F) - 1874582863;
  *(*a1 + v7) = HIBYTE(v6) ^ 0x3A;
  *(v5 + v7 + 1) = BYTE2(v6) ^ 0xFE;
  *(v5 + v7 + 2) = BYTE1(v6) ^ 0x30;
  *(v5 + v7 + 3) = v6 ^ 0x45;
  *a2 += 4;
  return a3();
}

uint64_t sub_265C3D898@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v7 = v2 - 1;
  *(a1 + v7) = *(v5 + v7);
  return (*(v6 + 8 * (((v7 != v3 - 1222) * v4) ^ a2)))();
}

uint64_t sub_265C3D8C4@<X0>(unsigned int a1@<W0>, unsigned int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, char a6@<W5>, char a7@<W6>, int a8@<W8>)
{
  v19 = a2 < a1;
  v20 = *v18;
  v21 = *(*(v10 + 8) + 4 * (v8 + v11));
  v22 = v21 + a5 - (a4 & (2 * v21));
  v23 = ((v9 << (a8 ^ v13)) & v15) + (v9 ^ v12) + a3;
  *(*v18 + v23) = a6 ^ HIBYTE(v22);
  *(v20 + v23 + 1) = BYTE2(v22) ^ 0xFE;
  *(v20 + v23 + 2) = BYTE1(v22) ^ 0x30;
  *(v20 + v23 + 3) = v22 ^ a7;
  *v16 += 4;
  if (v19 == v8 + v17 < a1)
  {
    v19 = v8 + v17 < a2;
  }

  return (*(v14 + 8 * (v19 ^ a8)))();
}

uint64_t sub_265C3D9A4@<X0>(uint64_t a1@<X8>)
{
  v5 = ((v3 - 3263) ^ 0xFFFFFFFFFFFFFE8DLL) + v2;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((15 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_265C3DAE8@<X0>(int a1@<W8>)
{
  v4 = a1 ^ 0x12C7;
  (*(v3 + 8 * (a1 + 4856)))();
  *v1 = 0;
  *v1 = 0;
  v1[1] = 0;
  v5 = (*(v3 + 8 * (v4 ^ 0xDCF)))(v1);
  return v2(v5);
}

uint64_t sub_265C3DB0C()
{
  v6 = *v4;
  *(v2 - 1) = *(v4 - 1);
  *v2 = v6;
  return (*(v5 + 8 * (((v3 == 0) * v1) ^ v0)))();
}

uint64_t sub_265C3DB3C@<X0>(int a1@<W7>, int a2@<W8>)
{
  v2 = (a2 + a1);
  v3 = *(v10 - 192);
  v4 = (~*(v3 + 12) + v2) ^ (~*(v3 + 12) + v2);
  return (*(v9 + 8 * ((((v4 - 1) & ~v4) >> ((a2 + v8) ^ v6)) & 1 | v2 ^ v7)))(*(v9 + 8 * (a2 - 4607)), v3 + 12, 1369802606);
}

uint64_t sub_265C3DBDC@<X0>(uint64_t (*a1)(void)@<X8>)
{
  v5 = ((((v3 + 1562593748) & 0xA2DCABFD) - 207910942) ^ v2) + ((2 * v2) & 0xE73721DE) + 207908625;
  v6 = (*(*v4 + v5) << 24) | (*(*v4 + v5 + 1) << 16) | (*(*v4 + v5 + 2) << 8) | *(*v4 + v5 + 3);
  *v1 = (v6 ^ 0xDDEFFB67) + 1808940734 + ((2 * v6) & 0xBBDFF6CE);
  *(v4 + 12) += 4;
  return a1();
}

uint64_t sub_265C3DD0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 5 * (v2 ^ 0xBD5);
  (*(v4 + 8 * (v2 | 0x1062)))(a2);
  *a1 = 0;
  *a1 = 0;
  a1[1] = 0;
  v7 = (*(v4 + 8 * (v5 + 3665)))();
  return v3(v7);
}

uint64_t sub_265C3DD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, unsigned int a24)
{
  v28 = (v24 - 706805935) & 0x6F7B94FF;
  *(v25 + 8) = a24;
  *(v25 + 12) = 0;
  v29 = (*(v27 + 8 * (v28 ^ 0x455A8D24)))(*(&off_28778E150)[v28 ^ 0x455A94F6], a21, a24, a4, a5, a6, a7, a8);
  return (*(v27 + 8 * ((v28 - 1163563225) ^ (v26 + v28 - 905))))(v29);
}

uint64_t sub_265C3E094(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t (*a17)(uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t), uint64_t a18, int a19, unsigned int a20)
{
  (*(v24 + 8 * (v20 ^ (a2 + 2027))))(*v23);
  *v23 = v22;
  *(v23 + 8) = v21;
  return a17(3311047929, 7487, 4324, 4294964708, a20, a16, a15, a18);
}

uint64_t sub_265C3E61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v39 = *(v38 - 200);
  LODWORD(a30) = 2088148909;
  v34 = (*(v39 + 12) ^ 0x5F7FFD9AABDFFBF7) + 8 + ((2 * *(v39 + 12)) & 0x157BFF7EELL) - 0x5F7FFD9AABDFFBF7;
  return (*(v37 + 8 * ((4101 * (((v34 - (v36 - 5493)) & ~v34) >> 63)) ^ (v36 - 5493) & 0x35A)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v38 - 152, 8, v39 + 12, a30, a31, a32, a33, a34, v39, *(v37 + 8 * (v36 - 5465)));
}

uint64_t sub_265C3E788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v36 = *(a31 + 72);
  **(a31 + 80) = v33;
  *v36 = *(v35 - 160) + (v31 ^ 0xB63DC128);
  return (*(v34 + 8 * (((v32 != 0) * ((56 * (v31 ^ 0x4F9)) ^ ((v31 ^ 0x837) + 2046905147) & 0x85FEBF56 ^ 0x1572)) ^ v31 ^ 0x837)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_265C3E81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = (*(v18 + 8 * ((v16 + 217) ^ 0x1FC0)))(a1, a16, a3, a4, a5, a6, a7, a8);
  *v17 = v19;
  return (*(v18 + 8 * (((v19 == 0) * (((v16 - 1332) | 0x534) ^ 0x1B04)) ^ (v16 + 217))))(v19, v20, v21, v22, v23, v24, v25, v26, a9);
}

uint64_t sub_265C3E8C4@<X0>(uint64_t a1@<X8>)
{
  v7 = v3 - 1;
  *(a1 + v7 + v1) = *(v5 + v7);
  return (*(v6 + 8 * (((v7 != 0) * v4) ^ v2)))();
}

uint64_t sub_265C3E998()
{
  v5 = 912648571 * ((((v4 - 144) | 0xA25A9D9E) - ((v4 - 144) & 0xA25A9D9E)) ^ 0x7E97D1AB);
  *(v4 - 128) = v1 - v5;
  *(v4 - 144) = (v0 + 610488674) ^ v5;
  *(v4 - 136) = v8;
  (*(v3 + 8 * (v0 - 707984454)))(v4 - 144);
  (*(v3 + 8 * (v0 - 707984521)))(v7, v2, 0, (&off_28778E150)[v0 ^ 0x2A3316A7], v8, 8);
  return v1;
}

uint64_t sub_265C3EA8C@<X0>(uint64_t (*a1)(void)@<X4>, _DWORD *a2@<X5>, uint64_t *a3@<X6>, char a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  v9 = *a3;
  v10 = a9 - ((2 * a9) & 0x75FC608A) + 989737029;
  v11 = ((*a2 << ((a4 ^ 0x2A) - 115)) & 0xF7FDBE9E) + (*a2 ^ 0x7BFEDF4F) - 2080300879;
  *(*a3 + v11) = HIBYTE(v10) ^ 0x3A;
  *(v9 + v11 + 1) = BYTE2(v10) ^ 0xFE;
  *(v9 + v11 + 2) = BYTE1(v10) ^ 0x30;
  *(v9 + v11 + 3) = v10 ^ 0x45;
  *a2 += 4;
  return a1();
}

uint64_t sub_265C3EBE4@<X0>(int a1@<W8>)
{
  v3 = a1 - 1273;
  v4 = (a1 - 2937);
  v5 = *(v2 + 8) - 4 + ((4 << ((a1 + 7) ^ 0x7Eu)) & 0x16F87ABFCLL);
  return (*(v1 + 8 * ((467 * ((((v5 | v4) - v5) | (v5 - v4) & ~v5) >> 63)) ^ v3)))();
}

uint64_t sub_265C3EC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *v8;
  v13 = v8[2];
  *(v11 - 160) = 0;
  *(v11 - 188) = v7;
  if (v12)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  return (*(v10 + 8 * ((v15 * ((((2 * (v9 - 1873)) ^ 0xB9C) - 21) ^ v9)) ^ (v9 - 1873))))(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_265C3ED70@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (a1 + 458904446) & 0xE4A5BBDF;
  *(v9 - 160) = 0;
  v11 = (*(v8 + 8 * (v10 + 2159)))(16, 3886098504);
  return (*(v8 + 8 * ((((((v10 + 1) ^ (v11 == 0)) & 1) == 0) * (((2 * v10) ^ 0x310C) - 4995)) ^ v10)))(v11, v12, v13, v14, v15, v16, v17, v18, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_265C3EE74@<X0>(int a1@<W2>, int a2@<W3>, uint64_t a3@<X8>)
{
  v7 = v3 - 1;
  *(v5 + v7) = *(a3 + v7);
  return (*(v6 + 8 * (((v7 == 0) * (((v4 + a1) & a2) - 2874)) | v4)))();
}

uint64_t sub_265C3EEA4@<X0>(uint64_t (*a1)(void)@<X2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, _DWORD *a10, uint64_t a11, uint64_t *a12)
{
  v12 = *a12;
  v13 = a8 - ((2 * a8) & 0x75FC608A) + 989737029;
  v14 = ((((a2 - 774877918) & 0x2E2FBDFF) - 713774481) & (2 * *a10)) + (*a10 ^ 0x6ABA5D7F) - 1790598527;
  *(*a12 + v14) = HIBYTE(v13) ^ 0x3A;
  *(v12 + v14 + 1) = BYTE2(v13) ^ 0xFE;
  *(v12 + v14 + 2) = BYTE1(v13) ^ 0x30;
  *(v12 + v14 + 3) = v13 ^ 0x45;
  *a10 += 4;
  return a1();
}

uint64_t sub_265C3EFA8@<X0>(int a1@<W2>, int a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v7 = v4 - 1;
  *(a3 + v7) = *(a4 + v7);
  return (*(v6 + 8 * (((v7 == 0) * (5 * (v5 ^ a1) + a2)) ^ v5)))();
}

uint64_t sub_265C3EFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = v10 - 1;
  *(a7 + v13) = *(v7 + v13);
  return (*(v12 + 8 * (((((v13 == 0) ^ v11) & 1) * v8) ^ v9)))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_265C3F004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, uint64_t a24, uint64_t a25, _DWORD *a26, uint64_t a27, int a28, int a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t (*a36)(uint64_t))
{
  *(v37 - 208) = a5;
  v38 = (*(v36 + 8 * a23))(*a32, a2, a3, a4);
  *a32 = a30;
  *a26 = a29;
  *(v37 - 216) = *(v37 - 216);
  return a36(v38);
}

uint64_t sub_265C3F04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a37)
{
  HIDWORD(a37) = -207002435;
  v38 = *(v37 - 192);
  v39 = *(v36 + 8 * (*(v37 - 196) - 5743));
  *(v37 - 216) = v38;
  return (*(v36 + 8 * (((*(v38 + 12) > 0xFFFFFFFAuLL) * HIDWORD(a35)) ^ a37)))(v39, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a37, v38 + 12);
}

uint64_t sub_265C3F064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v6 + 8) = 4096;
  *v5 = v6;
  return v4(10638718, 1042, a3, a4, 3222675024);
}

uint64_t sub_265C3F134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = (*(v11 + 52864))(v13, a11, a3, a4, a5, a6, a7, a8);
  *v12 = v14;
  return (*(v11 + 8 * ((447 * (v14 != 0)) ^ 0x2B9u)))();
}

uint64_t sub_265C3F470()
{
  v6 = (*(v4 + 8 * (v0 ^ 0x11BA)))(v1, v2);
  *v5 = v6;
  return (*(v4 + 8 * ((237 * (((v3 + v0) ^ (v6 == 0)) & 1)) ^ v0)))();
}

uint64_t sub_265C3F4C0(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = 1427277979 * (((a1 | 0xFE9C6E5FA082862DLL) - (a1 & 0xFE9C6E5FA082862DLL)) ^ 0xD8F6A9E9F0D3CB45);
  v3 = *(a1 + 8);
  v4 = *(a1 + 40) - v2;
  v5 = *a1 + v2;
  v6 = *(a1 + 80) + v2;
  v7 = *(a1 + 48) ^ v2;
  v8 = *(a1 + 16) - v2;
  v9 = *(a1 + 44) - v2;
  v10 = *(a1 + 64);
  v11 = *(a1 + 68) + v2;
  v12 = *(a1 + 32) + v2;
  v13 = *(a1 + 72) - v2;
  result = *(a1 + 76) ^ v2;
  *v1 = 68160514;
  *(v1 + 4) = v4;
  *(v1 + 8) = 2096;
  *(v1 + 10) = v5;
  *(v1 + 18) = 1024;
  *(v1 + 20) = v6;
  *(v1 + 24) = 1040;
  *(v1 + 26) = v7;
  *(v1 + 30) = 2096;
  *(v1 + 32) = v8;
  *(v1 + 40) = 1024;
  *(v1 + 42) = v9;
  *(v1 + 46) = 1040;
  *(v1 + 48) = v11;
  *(v1 + 52) = 2096;
  *(v1 + 54) = v12;
  *(v1 + 62) = 1024;
  *(v1 + 64) = v13;
  *(v1 + 68) = 1040;
  *(v1 + 70) = result;
  *(v1 + 74) = 2096;
  *(v1 + 76) = v3 + v2;
  *(v1 + 84) = 1024;
  *(v1 + 86) = v10 - v2;
  return result;
}

uint64_t sub_265C3F654(uint64_t a1)
{
  v1 = 912648571 * ((((2 * a1) | 0x83619D517929AC3CLL) - a1 + 0x3E4F3157436B29E2) ^ 0x8113DC2060599A2BLL);
  v2 = *(a1 + 88) ^ v1;
  v3 = *(a1 + 64) - v1;
  v4 = *(a1 + 104) ^ v1;
  v5 = *(a1 + 20) - v1;
  v6 = *(a1 + 40) - v1;
  v7 = *(a1 + 96) + v1;
  v8 = *(a1 + 16) ^ v1;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56) + v1;
  v11 = *(a1 + 68) + v1;
  v12 = *(a1 + 80) - v1;
  v13 = *(a1 + 32) + v1;
  v14 = *(a1 + 8) - v1;
  v15 = *(a1 + 72) ^ v1;
  v16 = *(a1 + 12) - v1;
  v17 = *(a1 + 24) + v1;
  v18 = *(a1 + 100) + v1;
  LODWORD(v1) = *a1 ^ v1;
  result = 134222082;
  *v9 = 134222082;
  *(v9 + 4) = v2;
  *(v9 + 12) = 1040;
  *(v9 + 14) = v3;
  *(v9 + 18) = 2096;
  *(v9 + 20) = v4;
  *(v9 + 28) = 1024;
  *(v9 + 30) = v5;
  *(v9 + 34) = 1024;
  *(v9 + 36) = v6;
  *(v9 + 40) = 1024;
  *(v9 + 42) = v7;
  *(v9 + 46) = 1040;
  *(v9 + 48) = v8;
  *(v9 + 52) = 2096;
  *(v9 + 54) = v10;
  *(v9 + 62) = 1024;
  *(v9 + 64) = v11;
  *(v9 + 68) = 1040;
  *(v9 + 70) = v12;
  *(v9 + 74) = 2096;
  *(v9 + 76) = v13;
  *(v9 + 84) = 1024;
  *(v9 + 86) = v14;
  *(v9 + 90) = 2048;
  *(v9 + 92) = v15;
  *(v9 + 100) = 1040;
  *(v9 + 102) = v16;
  *(v9 + 106) = 2096;
  *(v9 + 108) = v17;
  *(v9 + 116) = 1024;
  *(v9 + 118) = v18;
  *(v9 + 122) = 1024;
  *(v9 + 124) = v1;
  return result;
}

uint64_t sub_265C3F7C0(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 24);
  v3 = *(result + 20);
  v5 = *(result + 8);
  v4 = *(result + 12);
  *v1 = 134218752;
  v6 = 1466156297 * ((((2 * result) | 0xB4462B15C40CE2F6) - result + 0x25DCEA751DF98E85) ^ 0x50E6604131B1F12ALL);
  *(v1 + 4) = v2 + v6;
  *(v1 + 12) = 1024;
  *(v1 + 14) = v4 ^ v6;
  *(v1 + 18) = 1024;
  *(v1 + 20) = v3 + v6;
  *(v1 + 24) = 1024;
  *(v1 + 26) = v5 + v6;
  return result;
}

uint64_t sub_265C3FA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = (*(v14 + 8 * (v12 ^ 0x1DF7)))(a12, a11, a3, a4, a5, a6, a7, a8);
  *v13 = v15;
  return (*(v14 + 8 * (((v15 == 0) * (((v12 + 2078797766) ^ 0x7BE7FD82) + ((v12 + 2078797766) & 0xBF3A9D97) - 992117634)) ^ v12)))();
}

void lqtZaLGdmGda()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = (&off_28778E150)[(*(off_28778E268 + (*(off_28778E6F0 + (91 * (qword_28003EDB0 ^ 0x30 ^ dword_28003EDD8)) - 8) ^ 0xE3u) - 8) ^ (91 * (qword_28003EDB0 ^ 0x30 ^ dword_28003EDD8))) - 48];
  v1 = (*(v0 - 4) ^ qword_28003EDB0) - &v4;
  v2 = 636859739 * v1 - 0x1D38D65F7E9650D0;
  v3 = 636859739 * (v1 ^ 0xE2C729A08169AF30);
  qword_28003EDB0 = v2;
  *(v0 - 4) = v3;
  __asm { BRAA            X8, X17 }
}

void Rr2gWoCJX(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_265C3FD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  v33 = (v26 - 4767) | 0x1002;
  v34 = 912648571 * ((-2 - ((~(v32 - 144) | 0xCF9A23BB698A813) + ((v32 - 144) | 0xF3065DC4496757ECLL))) ^ 0x4C5AB0B36A55E426);
  *(v32 - 144) = v27 - v34;
  *(v32 - 128) = va;
  *(v32 - 136) = (v26 - 715640598) ^ v34;
  (*(v30 + 8 * (v26 + 1638)))(v32 - 144, a2, a3, a4, a5, a6, a7, a8);
  (*(v30 + 8 * (v26 + 1625)))(v29, v28, 0, *(v31 + 8 * (v26 ^ 0x13A5u)) - 12, va, 12);
  *(v32 - 144) = v33 - 891395573 * ((-1972678116 - ((v32 - 144) | 0x8A6B521C) + ((v32 - 144) | 0x7594ADE3)) ^ 0x4FB9B258) + 105;
  v35 = (*(v30 + 8 * (v33 ^ 0x96D)))(v32 - 144);
  return (*(v30 + 8 * ((125 * (*(v32 - 140) == 1163564281)) ^ v33)))(v35);
}

uint64_t sub_265C4026C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v6 - 232) = a2;
  *(v6 - 224) = a1;
  return (*(v5 + 8 * ((1761 * ((a3 ^ 0xE7B6FBB67BB9FF77) + 0x184904498446008DLL + (((v3 + 4900) ^ 0xF773EA8ALL) & (2 * a3)) > *(v4 + 8))) ^ v3)))(2919858395);
}

uint64_t sub_265C40338@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = (((v4 - 369841859) | 0x404u) ^ 0xFFFFFFFFFFFFF9D8) + v3;
  v8 = *(a3 + v7 - 15);
  v9 = *(a3 + v7 - 31);
  v10 = v5 + v7;
  *(v10 - 15) = v8;
  *(v10 - 31) = v9;
  return (*(v6 + 8 * ((v4 - 369839626) | (2 * ((((v4 - 369839626) + 4294964484) & v3) == 32)))))(1028, a1, a2, -1576);
}

uint64_t sub_265C4042C()
{
  v4 = 912648571 * ((&v8 & 0xDD7A2D61 | ~(&v8 | 0xDD7A2D61)) ^ 0xFE489EAB);
  v10 = -42847 - v4;
  v8 = (v0 + 1318477962) ^ v4;
  v9 = v7;
  (*(v3 + 8 * (v0 + 4834)))(&v8);
  (*(v3 + 8 * (v0 ^ 0x1EA1)))(v6, v1, 0, *(v2 + 8 * (v0 - 1576)) - 4, v7, 8);
  return 4294924449;
}

uint64_t sub_265C406A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 + v2 - 1 - 31);
  v6 = a1 + v2 - 1;
  *(v6 - 15) = *(a2 + v2 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((500 * (((v3 - 412857167) & 0x189BAF53) - 3827 != (((v3 - 20) ^ 0xFFFFED1ALL) & v2))) ^ (v3 - 20))))();
}

uint64_t sub_265C407CC@<X0>(int a1@<W8>)
{
  v4 = a1 - 3090;
  (*(v3 + 8 * (a1 + 391)))();
  *v2 = 0;
  *v2 = 0;
  v2[1] = 0;
  v5 = (*(v3 + 8 * (v4 ^ 0x15AB)))(v2);
  return v1(v5);
}

uint64_t sub_265C4081C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, int a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42)
{
  v48 = v42 ^ 0x1850;
  if (a17 >= 0x40)
  {
    v49 = 64;
  }

  else
  {
    v49 = a17;
  }

  v50 = 1311869473 * ((&a36 - 2 * (&a36 & 0x7C1BA32E93979C85) + 0x7C1BA32E93979C85) ^ 0xCFB4747B78788629);
  v47[4] = a19 + v50;
  a42 = a17 ^ v50;
  a37 = (v42 + 2118004970) ^ v50;
  a38 = v49 - v50;
  v47[2] = a18 ^ v50;
  v47[3] = &a20;
  a36 = v43 - v50 - 1237471465 + v48;
  (*(v45 + 8 * (v42 + 2867)))(&a36, a2, a3, a4, a5, a6, a7, a8);
  v51 = (*(v45 + 8 * (v42 ^ 0x173C)))(a11, v44, 0, (&off_28778E150)[v42 ^ 0xEF1] - 4, &a20, 40);
  return (*(v45 + 8 * ((3820 * (v43 == (v48 ^ (v46 + 1703) ^ (v48 + 2019502903)))) ^ v48)))(v51);
}

uint64_t sub_265C40990@<X0>(unsigned int a1@<W0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t *a4@<X3>, int a5@<W4>, int a6@<W8>)
{
  v19 = a1 < a2;
  v20 = *(*v16 + 4 * (a6 + v9));
  v21 = *a4;
  v22 = v20 - ((v6 ^ v12) & (2 * v20)) + v13;
  v23 = (v11 & (2 * v8)) + (v8 ^ v10) + a3;
  *(*a4 + v23) = v14 ^ HIBYTE(v22);
  *(v21 + v23 + 1) = BYTE2(v22) ^ 0xFE;
  *(v21 + v23 + 2) = BYTE1(v22) ^ 0x30;
  *(v21 + v23 + 3) = v22 ^ v17;
  *v18 += 4;
  if (v19 == a6 + a5 < a2)
  {
    v19 = a6 + a5 < a1;
  }

  return (*(v15 + 8 * (v7 ^ (8 * v19))))();
}

uint64_t sub_265C40BF8()
{
  v4 = (*(v2 + 52864))(v0, v1);
  *v3 = v4;
  return (*(v2 + 8 * ((15 * (v4 != 0)) ^ 0x1276u)))();
}

uint64_t sub_265C40C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + v4) = *(a2 + v4);
  v7 = ((v4 + 13 * (v3 ^ 0x1827u) - 1650) ^ v5) != v2;
  return (*(v6 + 8 * ((v7 | (4 * v7)) ^ v3)))();
}

uint64_t sub_265C40CD0()
{
  (*(v4 + 8 * (v1 ^ 0x1AA5)))(v2);
  *v3 = 0;
  return v0(3191, -4936, 5180);
}

uint64_t sub_265C40D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = (*(v13 + 8 * (v14 + 4784)))(a12, a11, a3, a4, a5, a6, a7, a8);
  *v12 = v15;
  return (*(v13 + 8 * (((v15 == 0) * (((v14 - 390694713) & 0x1749905B) + 1950)) ^ v14)))();
}

uint64_t sub_265C40E50@<X0>(uint64_t a1@<X0>, int a2@<W4>, uint64_t a3@<X8>)
{
  v10 = v6 + 32;
  v11 = ((v5 - 2432) ^ v10) + v3;
  v12 = *(a3 + v11 - 15);
  v13 = *(a3 + v11 - 31);
  v14 = a1 + v4 + v11;
  *(v14 - 15) = v12;
  *(v14 - 31) = v13;
  return (*(v9 + 8 * (((v8 == v10) * a2) ^ v7)))();
}

uint64_t sub_265C40E98@<X0>(uint64_t a1@<X8>)
{
  v7 = v3 - 1;
  *(a1 + v7) = *(v1 + v7);
  return (*(v6 + 8 * (((v7 != (v4 ^ 0xD0)) * v5) ^ v2)))();
}

uint64_t sub_265C41204()
{
  *(v3 - 208) = 0;
  *(v1 + 8) = *(v3 - 184);
  *(v1 + 12) = 0;
  *(v3 - 220) = 1237465637;
  v4 = (v0 + 5435) ^ 0x162C;
  v5 = (*(v2 + 8 * (v0 + 6082)))(*(&off_28778E150)[(v0 + 5435) ^ 0x1759], *(v3 - 168), *(v3 - 184));
  return (*(v2 + 8 * ((((((v4 + 5324) | 0x110) ^ 0x49C22D73) == 1237465637) * ((v4 ^ 0x162C) - 1439)) ^ v4)))(v5);
}

uint64_t sub_265C41440()
{
  (*(v2 + 8 * (v4 + 5379)))(v0);
  v6 = *v1;
  v7 = *v3;
  v8 = 1311869473 * ((v5 - 379658331 - 2 * ((v5 - 144) & 0xE95EE035)) ^ 0x2B1FA99);
  *(v5 - 144) = (*(v3 + 3) + 599664785 - ((*(v3 + 3) << (35 * (v4 ^ 0xCA) - 104)) & 0x477C5122)) ^ v8;
  *(v5 - 120) = v5 - 184;
  *(v5 - 136) = v7;
  *(v5 - 128) = v5 - 176;
  *(v5 - 112) = v8 + v4 + 4411;
  *(v5 - 104) = 563297187 - v8 + 622816387 * v6;
  (*(v2 + 8 * (v4 + 5419)))(v5 - 144);
  v9 = *(v5 - 108);
  v10 = (*(v2 + 8 * (v4 + 5377)))(v0);
  return (*(v2 + 8 * (((v9 == ((582 * (v4 ^ 0x4CA)) ^ 0x60DCAF52)) * ((291 * (v4 ^ 0x4CA) + 1399) ^ 0x1E62)) ^ (291 * (v4 ^ 0x4CA)))))(v10);
}

uint64_t sub_265C41598(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 + 227)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 != 0) * ((114 * (v1 ^ 0x18CD)) ^ 0x1108)) ^ v1)))();
}

uint64_t sub_265C415F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v14 = ((2 * v12) & 0x1E8BD7FF6) + (v12 ^ (a12 + 5825) ^ 0x3D7FF52AF45EA8ECLL) - 0x3D7FF52A89DBFD66;
  v16 = v14 < 0x6A82C291 || v14 > *(a4 + 8) + 1786954385;
  return (*(v13 + 8 * ((v16 * a11) ^ a12)))(a1, a2, a3);
}

uint64_t sub_265C4167C()
{
  v4 = (v1 | ((v1 < 0x49C23A25) << 32)) + *(v2 + 12) + 267745725;
  v6 = v4 < 0x59B7B3E2 || v4 > (v0 ^ 0x59B7A5A6) + *(v2 + 8);
  return (*(v3 + 8 * ((22 * (((v0 - 109) ^ v6) & 1)) ^ v0)))();
}

uint64_t sub_265C4172C@<X0>(uint64_t a1@<X8>)
{
  v6 = 15 * (v1 ^ 0x171Fu);
  v7 = (a1 - 16 + v3);
  v9 = *(v7 - 1);
  v8 = *v7;
  v10 = (v4 - 16 + v3);
  *(v10 - 1) = v9;
  *v10 = v8;
  LODWORD(v10) = ((v6 - 5744) & v2) + (v6 - 1243) - 4500 != v3;
  return (*(v5 + 8 * ((v10 | (16 * v10)) ^ v6)))();
}

uint64_t sub_265C4179C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, _DWORD *a21, int a22, int a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t *a32)
{
  v32 = *a32;
  v33 = a23 - ((2 * a23) & 0x75FC608A) + 989737029;
  v34 = ((a1 ^ 0xF7F4AB59) & (2 * *a21)) + (*a21 ^ 0x7BFA5D5F) - 2080005471;
  *(*a32 + v34) = HIBYTE(v33) ^ 0x3A;
  *(v32 + v34 + 1) = BYTE2(v33) ^ 0xFE;
  *(v32 + v34 + 2) = BYTE1(v33) ^ 0x30;
  *(v32 + v34 + 3) = v33 ^ 0x45;
  *a21 += 4;
  return sub_265C1F7CC();
}

void sub_265C4189C(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32) ^ (583883621 * (a1 ^ 0xA133DCAF));
  v3[0] = v1 - 891395573 * (((v3 | 0xD1BE2507) - (v3 & 0xD1BE2507)) ^ 0xEB933ABC) - 2068;
  v2 = (&off_28778E150)[v1 - 6339] - 8;
  (*&v2[8 * v1 + 1408])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_265C419AC()
{
  v7 = *v3;
  v8 = 912648571 * ((((v6 - 144) | 0x515A94E4D1DC6A89) - (v6 - 144) + ((v6 - 144) & 0xAEA56B1B2E239570)) ^ 0x11F9866C0D1126BCLL);
  *(v6 - 136) = (v1 - 715638798) ^ v8;
  *(v6 - 128) = v10;
  *(v6 - 144) = v7 - v8;
  (*(v5 + 8 * (v1 + 3438)))(v6 - 144);
  (*(v5 + 8 * (v1 + 3425)))(v4, v2, 0, (&off_28778E150)[v1 - 2900] - 12, v10, 12);
  return (v0 - 1237465637);
}

uint64_t sub_265C41BC8@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v7 = v3 + v4 - 2823;
  *(v6 + v7) = *(a2 + v7);
  return (*(v5 + 8 * (((v7 != 0) * a1) ^ v2)))();
}

uint64_t sub_265C41C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a37)
{
  HIDWORD(a37) = HIDWORD(a11);
  v38 = *(v37 - 192);
  v39 = *(v36 + 8 * (*(v37 - 196) - 5687));
  *(v37 - 216) = v38;
  return (*(v36 + 8 * (((*(v38 + 12) > 0xFFFFFFFAuLL) * HIDWORD(a35)) ^ a37)))(v39, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a37, v38 + 12);
}

uint64_t sub_265C41D28@<X0>(uint64_t a1@<X8>)
{
  v6 = (v4 + 1651377989) & 0x39D4EFEE;
  v7 = (v3 ^ 0xFFFFFFFFFFFFEF1CLL ^ (393 * (v6 ^ 0xF67u))) + v2;
  *(a1 - 7 + v7) = *(v1 - 7 + v7);
  return (*(v5 + 8 * ((6196 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v6)))();
}

uint64_t sub_265C420CC(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 + 1602)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((((v1 - 1) ^ (v4 == 0)) & 1) * (v1 - 4939)) | v1)))();
}

uint64_t sub_265C42160@<X0>(uint64_t a1@<X8>)
{
  v6 = v2 - 1;
  *(v4 + v6) = *(a1 + v6);
  return (*(v5 + 8 * (((v6 != 0) * v3) ^ v1)))();
}

uint64_t sub_265C421F4()
{
  v3 = (*(v1 + 12) ^ 0xF647CFFFBFCEEB5FLL) + ((2 * *(v1 + 12)) & 0x17F9DD6BELL) + 0x9B83000A23E2062;
  v5 = v3 >= 0x620D0BBD && v3 <= ((9 * (v0 ^ 0x594u)) ^ 0x620D0A04) + *(v1 + 8);
  return (*(v2 + 8 * ((114 * v5) ^ v0)))();
}

uint64_t sub_265C422E0()
{
  v5 = (*(v2 + 8 * (v4 + 1710)))(v0, v1);
  *v3 = v5;
  return (*(v2 + 8 * (((v5 == 0) * (v4 - 1574056656 + ((v4 + 206566687) | 0x51821782))) ^ v4)))();
}

uint64_t sub_265C42514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, unsigned int a12)
{
  v19 = v17 + v12 + 28;
  a10 = v13;
  a12 = v17 + v12 + 583883621 * ((((2 * &a10) | 0x5D7C0550) - &a10 + 1363279192) ^ 0xF8DDE07) + 1119;
  v20 = (*(v14 + 8 * (v12 ^ v18)))(&a10, a2, a3, a4, a5, a6, a7, a8);
  return (*(v14 + 8 * ((59 * ((((v16 + 1 == v15) ^ (v19 - 74)) ^ (9 * (v19 ^ 0x25))) & 1)) ^ v19)))(v20);
}

uint64_t sub_265C42614()
{
  v5 = *(v2 + 8 * (((*v3 == 0) * (274 * (((v0 - 3405) | 0x8A0) ^ 0x9FD) - 3227)) ^ v0));
  *(v4 - 208) = v1;
  return v5();
}

uint64_t sub_265C426F8@<X0>(uint64_t a1@<X8>)
{
  v5 = (a1 + v2 - 16);
  v6 = *(v1 + v2 - 16);
  *(v5 - 1) = *(v1 + v2 - 16 - 16);
  *v5 = v6;
  return (*(v4 + 8 * ((((v2 & 0xFFFFFFE0) == 32) * (((v3 - 5178) | 0x1700) - 5705)) ^ v3)))();
}

uint64_t sub_265C4274C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = (*(v14 + 8 * (v13 + 2242)))(a12, a11, a3, a4, a5, a6, a7, a8);
  *v12 = v15;
  return (*(v14 + 8 * (((v15 == 0) * ((479 * (v13 ^ 0x1109)) ^ 0xBD2)) ^ v13)))();
}

uint64_t sub_265C42844()
{
  v7 = *v13;
  if (*v13 >= 0x40)
  {
    v8 = 64;
  }

  else
  {
    v8 = *v13;
  }

  v9 = *v5;
  v10 = 1466156297 * (((&v15 | 0xE7324CD85A2F7B0CLL) - &v15 + (&v15 & 0x18CDB327A5D084F0)) ^ 0x6DF739138998FB5DLL);
  v20 = v4 - v10 + (v6 ^ v3) - 1854292540;
  v18 = v7 + v10;
  v19 = v8 + v10;
  v16 = v10 + v6 + 1747998242;
  v15 = v14;
  v17 = v9 + v10;
  (*(v1 + 8 * (v6 + 4798)))(&v15);
  (*(v1 + 8 * (v6 ^ 0x1ECC)))(v12, v2, 0, *(v0 + 8 * (v6 ^ 0x7B2)) - 12, v14, 30);
  return (v4 - 1237465637);
}

uint64_t sub_265C42994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, unsigned int a23)
{
  v29 = (*(v28 + 8 * (v23 ^ 0x1594)))(*v24, a2, a3, a4, a5, a6, a7, a8);
  *v24 = v26;
  *(v24 + 8) = v25;
  return v27(v29, a23, 2894113844, 1807080954);
}

uint64_t sub_265C42A74@<X0>(uint64_t *a1@<X2>, _DWORD *a2@<X3>, uint64_t (*a3)(void)@<X4>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v11 = *a1;
  v12 = a11 - ((3 * (a4 ^ 0xDB5) + 1979470032) & (2 * a11)) + 989737029;
  v13 = ((2 * *a2) & 0xD77FBE9E) + (*a2 ^ 0xEBBFDF4F) + 339746993;
  *(*a1 + v13) = HIBYTE(v12) ^ 0x3A;
  *(v11 + v13 + 1) = BYTE2(v12) ^ 0xFE;
  *(v11 + v13 + 2) = BYTE1(v12) ^ 0x30;
  *(v11 + v13 + 3) = v12 ^ 0x45;
  *a2 += 4;
  return a3();
}

uint64_t sub_265C42BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = (*(v11 + 8 * (v12 + 1914)))(a11, a10, a3, a4, a5, a6, a7, a8);
  *v13 = v14;
  return (*(v11 + 8 * (((((v12 + 1) ^ (v14 == 0)) & 1) * (((v12 - 2133) | 0x464) - 3674)) ^ v12)))();
}

uint64_t sub_265C42C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  HIDWORD(a19) = a5;
  LODWORD(a12) = v22;
  v23 = (*(v21 + 8 * (v20 + 1514)))(v19, 3886098504, a3, a4);
  return (*(v21 + 8 * (((v23 == 0) ^ (v20 - 81)) & 1 | (8 * (((v23 == 0) ^ (v20 - 81)) & 1)) | v20)))(3311047929, 7487, 4324, 4294964708, HIDWORD(a19), a6, a7, a8, a9, a10, a11, a12, a13, a14, a7, a6, a17, a8, a19);
}

uint64_t sub_265C42DA0@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(a1 + 12) ^ 0xBAEEC3FFDE57DFFFLL) + ((((v1 & 0xC2C7FDFF) + 2484) ^ 0x1BCAFB0D9) & (2 * *(a1 + 12))) + 0x45113C010DEC11AFLL;
  v5 = v3 >= 0xEC43F1AA && v3 <= *(a1 + 8) + 3963875754u;
  return (*(v2 + 8 * ((7 * v5) ^ v1 & 0xC2C7FDFF)))();
}

uint64_t sub_265C42E28@<X0>(__int16 a1@<W5>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned __int8 a18, unsigned __int8 a19, unsigned __int8 a20, unsigned __int8 a21, unsigned __int8 a22, unsigned __int8 a23, unsigned __int8 a24, unsigned __int8 a25)
{
  v33 = (a19 << (((v26 + 1) ^ 0x5Au) + 89)) | (a18 << 56) | (a20 << 40) | (a21 << 32) | (a22 << 24) | (a23 << 16) | (a24 << 8);
  v34 = a25 + v32 - (a1 & (2 * a25));
  v35 = ((v33 + v30 - (v31 & (2 * v33))) ^ a2) & (v34 ^ v29) ^ v34 & v25;
  v37 = v27 == 0x4BFDCFDE2F3CFFDDLL || v27 != v35;
  return (*(v28 + 8 * (v37 | v26)))();
}

uint64_t sub_265C42ED8@<X0>(unsigned int a1@<W1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned int a20)
{
  v22 = (a20 | ((a20 < a1) << 32)) + *(v20 + 12) + 550249877;
  v24 = v22 < 0x6A8E5FBA || v22 > *(v20 + 8) + 1787715514;
  return (*(v21 + 8 * ((v24 * (((a2 - 1046) ^ 0x440) - 4083)) | a2)))();
}

uint64_t sub_265C42F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = (*(v14 + 8 * (v15 + 4397)))(a14, a13, a3, a4, a5, a6, a7, a8);
  *v16 = v17;
  return (*(v14 + 8 * ((21 * (v17 == 0)) ^ v15)))();
}

uint64_t sub_265C42FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, unsigned int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  (*(v24 + 8 * (v19 ^ 0x1E7C)))(*v20, a2, a3, a4, a5, a6, a7, a8);
  *v20 = v23;
  *(v20 + 8) = v22;
  return v21(4857, 4294962794, a19, a18, a12);
}

uint64_t sub_265C4302C(int a1)
{
  v6 = (v2 - 32);
  v7 = (v4 - 32);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * (((v3 == 32) * a1) ^ (v1 - 1163559230))))();
}

uint64_t sub_265C4303C@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t *a19)
{
  v27 = (v20 + 602924591) & 0xDC101ABD;
  v28 = (a2 + v21 + v22);
  v28[6] = v26[7];
  *(v21 + v22 + v27 + a2 - 2232) = v26[6];
  v28[4] = v26[5];
  v28[3] = v26[4];
  v28[2] = v26[3];
  v28[1] = v26[2];
  *v28 = v26[1];
  *v19 = *v26;
  *a1 += 8;
  v29 = a19;
  a15 = 0;
  a17 = 0;
  v30 = *(v24 + 8 * (v27 ^ 0x8EF)) - 8;
  (*(v23 + 8 * (v27 + 4367)))(v30);
  v31 = **(v24 + 8 * (v27 ^ 0x88A));
  v32 = *v29;
  v33 = *(v29 + 3) + 599664785 - ((2 * *(v29 + 3)) & 0x477C5122);
  v34 = 1311869473 * ((((v25 - 144) | 0x59515E16) - ((v25 - 144) & 0x59515E16)) ^ 0xB2BE44BA);
  *(v25 - 120) = &a17;
  *(v25 - 136) = v32;
  *(v25 - 128) = &a15;
  *(v25 - 112) = v34 + v27 + 3399;
  *(v25 - 104) = 563297187 - v34 + v31 * (150 * (v27 ^ 0x8AE) + 622813537);
  *(v25 - 144) = v33 ^ v34;
  (*(v23 + 8 * (v27 + 4407)))(v25 - 144);
  v35 = *(v25 - 108);
  v36 = (*(v23 + 8 * (v27 + 4365)))(v30);
  return (*(v23 + 8 * ((120 * (v35 != 1893509507)) ^ v27)))(v36);
}

uint64_t sub_265C4320C@<X0>(int a1@<W8>)
{
  v4 = a1 - 577187352;
  (*(v3 + 8 * (a1 - 577184778)))();
  *v2 = 0;
  *v2 = 0;
  v2[1] = 0;
  v5 = (*(v3 + 8 * (v4 + 2574)))(v2);
  return v1(v5);
}

uint64_t sub_265C4331C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unsigned int a8)
{
  v10 = (a2 ^ 0x7FFFFFDBFFBF2DE6) + ((a2 << (a8 ^ (v9 + 22) ^ 0xA8)) & 0x1FF7E5BCCLL) - 0x7FFFFFDBD16DBD6DLL;
  v12 = v10 < 0x2E517075 || v10 > *(a1 + 8) + 777089141;
  return (*(v8 + 8 * ((4775 * v12) ^ a8)))();
}

uint64_t sub_265C4349C@<X0>(int a1@<W8>)
{
  v4 = (a1 + 931785716) & 0xFA7FAF59;
  (*(v3 + 8 * (a1 ^ 0xDE5)))();
  *v2 = 0;
  *v2 = 0;
  v2[1] = 0;
  v5 = (*(v3 + 8 * (v4 ^ 0x3209B6B7)))(v2);
  return v1(v5);
}

uint64_t sub_265C43580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v26 = *(a20 + 32);
  if (v26 >= 0x40)
  {
    v27 = 64;
  }

  else
  {
    v27 = *(a20 + 32);
  }

  v28 = *(a20 + 24);
  v29 = 1468321087 * ((v25 - 144) ^ 0x55CBE96FD4EF416ELL);
  *(v25 - 136) = v27 - v29;
  *(v25 - 132) = v20 - v29 - 2003492249;
  *(v25 - 144) = v28 ^ v29;
  *(v25 - 128) = v26 - v29;
  *(v25 - 120) = v25 - 176;
  (*(v24 + 8 * (v20 - 967764261)))(v25 - 144, a2, a3, a4, a5, a6, a7, a8);
  v30 = (*(v24 + 8 * (v20 - 967764331)))(v21, v22, 0, *(v23 + 8 * (v20 - 967770755)) - 12, v25 - 176, 24);
  return (*(v24 + 8 * (((*(a20 + 24) == 0) * (((v20 - 967769859) | 0x841) ^ (((v20 - 967769129) ^ 0x4A5) + 2886))) ^ (v20 - 967769129))))(v30);
}

uint64_t sub_265C43698(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 + 66)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 != 0) * (((v1 - 224) ^ 0x148E) - 3081)) ^ (v1 - 224))))();
}

uint64_t sub_265C43780()
{
  *v2 = 0;
  v2[1] = 0;
  v4 = (*(v3 + 8 * (v0 + 3920)))(v2);
  return v1(v4);
}

uint64_t sub_265C437E0(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 ^ 0x109F)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 != 0) * ((v1 - 1164) ^ (v1 - 1168))) | v1)))();
}

uint64_t sub_265C4386C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34, int a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39)
{
  v45 = (v39 + 2044472094) & 0x8623CC7A;
  if (a15 >= 0x40)
  {
    v46 = 64;
  }

  else
  {
    v46 = a15;
  }

  v47 = 1311869473 * ((&a33 - 2 * (&a33 & 0x3D7E629A70CDFE2) + 0x3D7E629A70CDFE2) ^ 0xB078317C4CE3C54ELL);
  v43[4] = a16 + v47;
  a33 = v41 - v47 + v44 + v45;
  a34 = (v39 + 2118004413) ^ v47;
  v43[2] = a17 ^ v47;
  v43[3] = &a18;
  a39 = a15 ^ v47;
  a35 = v46 - v47;
  (*(v42 + 8 * (v39 ^ 0x906)))(&a33, a2, a3, a4, a5, a6, a7, a8);
  v48 = (*(v42 + 8 * (v39 + 2279)))(a10, v40, 0, (&off_28778E150)[v39 - 4210] - 12, &a18, 40);
  return (*(v42 + 8 * (((v44 == ((v45 + 1167554404) & 0xBA68965B ^ 0x49C22C3F)) * (v45 ^ 0xFDB)) ^ v45)))(v48);
}

void sub_265C439F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *(v9 - 196) = a8;
  *(v9 - 216) = 1237465637;
  *(v9 - 212) = v8;
  JUMPOUT(0x265C1C45CLL);
}

uint64_t sub_265C43BC8@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((878 * (v5 == (v3 - 3397) - 168)) ^ v3)))();
}

uint64_t sub_265C43BFC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  HIDWORD(v31) = (v19 - 5828) | 0x80;
  HIDWORD(v35) = HIDWORD(v31) + 4732;
  HIDWORD(a13) = v19 ^ 0x103D;
  LODWORD(v33) = (v19 - 361259529) & 0x15884BBF;
  HIDWORD(v32) = v19 - 5284;
  LODWORD(v32) = v19 - 5251;
  HIDWORD(v33) = v19 - 5276;
  HIDWORD(v34) = v19 - 5244;
  LODWORD(v34) = v19 - 5429;
  LODWORD(v31) = v19 - 5437;
  v20 = a1 - 3763;
  v21 = a1 - 2287;
  v22 = (*(v18 + 8 * (a1 ^ 0xEC6)))(16, 3886098504);
  LODWORD(v35) = 1237422985;
  return (*(v18 + 8 * (((v22 == 0) * (v20 ^ 0x86D)) ^ v21)))(v22, v23, v24, v25, v26, v27, v28, v29, 0x8CCDC3342F170D7ALL, a3, a4, a5, v31, v32, v33, a9, a10, v34, a12, a13, v35, a15, a16, a17, a18);
}

uint64_t sub_265C43D6C()
{
  *(v6 - 136) = (v2 + 1311672899) ^ (1468321087 * ((v4 + 1111662382 - 2 * (v4 & 0x42429F2E)) ^ 0x96ADDE40));
  *(v6 - 144) = v0;
  (*(v3 + 8 * (v2 + 2784)))(v6 - 144);
  v7 = (*(v3 + 8 * (v2 + 2743)))(**(v5 + 8 * (v2 ^ 0xE78)), *(v5 + 8 * (v2 ^ 0xE10)) - 4, v1);
  v8 = ((2 * v7) & 0xD3F7F7EE) + (v7 ^ 0xE9FBFBF7);
  *(v6 - 136) = (v2 - 50587403) ^ (912648571 * (((v4 ^ 0x48441 | 0x15AA6A8E) + (v4 ^ 0xA0020C | 0xEA559571)) ^ 0xDC69CA79));
  *(v6 - 144) = v0;
  v9 = (*(v3 + 8 * (v2 + 2814)))(v6 - 144);
  return (*(v3 + 8 * ((5650 * (v8 == 2 * (((v2 + 155211367) | 0x400009A) ^ 0xD406787) - 369363139)) ^ v2)))(v9);
}

uint64_t sub_265C43F58()
{
  v6 = (v1 - 32);
  v7 = (v3 - 32);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * (((v2 == 32) * v4) ^ v0)))();
}

uint64_t sub_265C43FBC@<X0>(int a1@<W8>)
{
  v3 = a1 ^ 0x8B9CC995;
  v4 = v2 + a1 - 119;
  v5 = (*(v1 + 8 * (a1 + 1952664620)))(16, 3886098504) == 0;
  return (*(v1 + 8 * ((v5 * (v3 - 1022)) ^ v4)))();
}

uint64_t sub_265C4405C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v10 = v6 + 32;
  v11 = (v10 ^ a1 ^ v7) + v4;
  v12 = *(v3 + v11 - 15);
  v13 = *(v3 + v11 - 31);
  v14 = a3 + v11;
  *(v14 - 15) = v12;
  *(v14 - 31) = v13;
  return (*(v9 + 8 * (((v8 == v10) * a2) ^ v5)))();
}

uint64_t sub_265C44064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = (*(v14 + 8 * (v12 + 5978)))(a11, a12, a3, a4, a5, a6, a7, a8);
  *v13 = v15;
  return (*(v14 + 8 * (((v15 == 0) * (v12 ^ 0x537F5794 ^ (((v12 + 654) | 0x878) + 1400851820))) ^ v12)))();
}

uint64_t sub_265C4420C()
{
  v6 = (*(v2 + 8 * (v5 + 5894)))(v0, v1);
  *v4 = v6;
  return (*(v2 + 8 * (((v6 == 0) * (((v5 + v3) ^ 0xBDD41D75) - 4962)) | v5)))(0);
}

uint64_t sub_265C44324(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 48);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 72);
  v7 = 566710099 * ((-2 - ((~a1 | 0x76C17038629E613BLL) + (a1 | 0x893E8FC79D619EC4))) ^ 0x89499EEAEEDB39B7);
  v8 = *(a1 + 64);
  v9 = *(a1 + 56);
  v10 = *(a1 + 32);
  result = *(a1 + 40);
  *v1 = 134220034;
  *(v1 + 4) = v2 + v7;
  *(v1 + 12) = 1024;
  *(v1 + 14) = v3 + v7;
  *(v1 + 18) = 1040;
  *(v1 + 20) = v4 + v7;
  *(v1 + 24) = 2096;
  *(v1 + 26) = v5 + v7;
  *(v1 + 34) = 1024;
  *(v1 + 36) = v6 ^ v7;
  *(v1 + 40) = 1040;
  *(v1 + 42) = v8 + v7;
  *(v1 + 46) = 2096;
  *(v1 + 48) = v9 ^ v7;
  *(v1 + 56) = 1024;
  *(v1 + 58) = v10 + v7;
  *(v1 + 62) = 2048;
  *(v1 + 64) = result ^ v7;
  return result;
}

uint64_t sub_265C44424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unsigned int a30)
{
  v33 = 149 * (v30 ^ 0x343);
  *(a17 + 32) = (a30 | ((a30 < (v33 ^ 0x49C23C42u)) << 32)) - 1237465637;
  return (*(v32 + 8 * (((2 * (((v31 == 0) ^ (v33 + 6)) & 1)) & 0xF7 | (8 * (((v31 == 0) ^ (v33 - 1516650234)) & 1))) ^ v33)))(a1, a2, a3, 1807080954, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

void Li197SADabUVzZISmm()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = (&off_28778E150)[(*(off_28778E490 + (*(off_28778E720 + (91 * ((dword_28003EDD8 - qword_28003EBB8) ^ 0x30)) - 4) ^ 0x1Du) - 12) ^ (91 * ((dword_28003EDD8 - qword_28003EBB8) ^ 0x30))) - 103];
  v1 = *(v0 - 4) - qword_28003EBB8 - &v2;
  qword_28003EBB8 = 636859739 * v1 + 0x1D38D65F7E9650D0;
  *(v0 - 4) = 636859739 * (v1 ^ 0xE2C729A08169AF30);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_265C44714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  v17 = (*(v15 + 53216))(va, 0, 192, a4, a5, a6, a7, a8);
  return (*(v15 + 8 * ((29 * (*(a1 + 8) < 8)) ^ 0xB4D)))(v17);
}

uint64_t sub_265C44890@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v3 = (a2 - 4761) | 0x904;
  v4 = (*(v2 + 8 * (a2 + 1910)))(a1, 0);
  return (*(v2 + 8 * (((((v4 < 12) ^ (v3 - 38)) & 1) * ((607 * (v3 ^ 0x936)) ^ 0x153A)) ^ v3)))();
}

uint64_t sub_265C44944()
{
  *(v6 - 144) = (v0 + 1311672210) ^ (1468321087 * ((~(v5 | 0x733341BF) + (v5 & 0x733341BF)) ^ 0x5823FF2E));
  *(v6 - 152) = v1;
  (*(v4 + 8 * (v0 + 2095)))(v6 - 152);
  v7 = (*(v4 + 8 * (v0 ^ 0x81A)))(**(v3 + 8 * (v0 - 4329)), *(v3 + 8 * (v0 - 4289)) - 4, v2);
  v8 = ((((v0 - 774523411) & 0x2E2A3BDF) - 1813122669) & (2 * v7)) + (v7 ^ 0xC9F6FA75);
  *(v6 - 144) = (v0 - 50588092) ^ (912648571 * ((~(v5 | 0xF7A044E8) + (v5 & 0xF7A044E8)) ^ 0xD492F722));
  *(v6 - 152) = v1;
  v9 = (*(v4 + 8 * (v0 + 2125)))(v6 - 152);
  return (*(v4 + 8 * ((1122 * (v8 == -906560907)) ^ v0)))(v9);
}

void cPeaf6n8Mhpzlmx()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = (&off_28778E150)[(*(off_28778E370 + (*(off_28778E440 + (91 * (qword_28003EDC8 ^ 0x30 ^ dword_28003EDD8)) - 8) ^ 0x5Du) - 8) ^ (91 * (qword_28003EDC8 ^ 0x30 ^ dword_28003EDD8))) + 43];
  qword_28003EDC8 = 636859739 * ((*(v0 - 4) + qword_28003EDC8) ^ &v2 ^ 0xE2C729A08169AF30);
  *(v0 - 4) = qword_28003EDC8;
  v1 = 91 * (qword_28003EDC8 ^ 0x30 ^ *(v0 - 1));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_265C44E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, int a23, char a24, uint64_t a25, unsigned int a26, uint64_t a27, char *a28, char *a29, unsigned int a30, int a31, unsigned int a32)
{
  (*(v36 + 8 * (v34 + 3352)))(v32, a2, a3, a4, a5, a6, a7, a8);
  v37 = *a17;
  v38 = *v35;
  v39 = *(v35 + 12) + 599664785 - ((*(v35 + 12) << (5 * ((v34 + 5) ^ 0x6C) - 40)) & 0x477C5122);
  v40 = 1311869473 * ((1516285165 - (v33 | 0x5A60ACED) + (v33 | 0xA59F5312)) ^ 0x4E7049BE);
  a29 = &a24;
  a27 = v38;
  a28 = &a21;
  a26 = v39 ^ v40;
  a32 = -1311869473 * ((1516285165 - (v33 | 0x5A60ACED) + (v33 | 0xA59F5312)) ^ 0x4E7049BE) + 622816387 * v37 + 563297187;
  a30 = v40 + v34 + 5 + 2379;
  (*(v36 + 8 * ((v34 + 5) ^ 0x154D)))(&a26);
  v41 = a31;
  v42 = (*(v36 + 8 * (v34 + 3350)))(v32);
  return (*(v36 + 8 * ((2373 * (v41 == ((5 * ((v34 + 5) ^ 0xC6C) + 1271731153) & 0xB432E8A5) + 1625073888)) ^ (5 * ((v34 + 5) ^ 0xC6C)))))(v42);
}

void sub_265C44F78(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16) ^ (1864678469 * ((-2 - ((a1 | 0xF3544C2F) + (~a1 | 0xCABB3D0))) ^ 0x3FDBA439));
  v2 = (&off_28778E150)[v1 ^ 0x1F5] - 8;
  (*&v2[8 * (v1 ^ 0x1865)])(v3, 0, 192);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_265C45358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v24 = 346387183 * ((2 * ((v23 - 184) & 0x448EB180) - (v23 - 184) + 997281401) ^ 0xBE199BA9);
  *(v23 - 136) = a15;
  *(v23 - 168) = &STACK[0x230];
  *(v23 - 160) = a19;
  *(v23 - 152) = &STACK[0x2D0];
  *(v23 - 144) = v24 + (a16 ^ 0x6F7FF597) + ((2 * a16) & 0xDEFFEB2E) - 72221702;
  *(v23 - 180) = v20 - v24 - 2360;
  *(v23 - 176) = -17 * ((2 * ((v23 + 72) & 0x80) - (v23 + 72) + 121) ^ 0xA9) + v20 + 71 + ((v20 - 105) ^ 0x4D) * v19 - 26;
  v25 = (*(v22 + 8 * (v20 ^ 0x16FF)))(v23 - 184, a2, a3, a4, a5, a6, a7, a8);
  return (*(v22 + 8 * ((7946 * (*(v23 - 184) == v21)) ^ v20)))(v25);
}

uint64_t sub_265C45540@<X0>(int a1@<W0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v8 = v4 - 1;
  *(a3 + v8 + v3) = *(a2 + v8);
  return (*(v7 + 8 * (((v8 == 0) * ((a1 + v5) ^ v6)) ^ a1)))();
}

uint64_t sub_265C455BC()
{
  v5 = *(v3 + 8 * ((((v2 - 985) ^ 0x12B5) * v0) ^ (v2 - 2026)));
  *(v4 - 200) = v1;
  return v5();
}

uint64_t sub_265C4562C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = (*(v13 + 52864))(a12, a11, a3, a4, a5, a6, a7, a8);
  *v12 = v14;
  return (*(v13 + 8 * ((7219 * (v14 == 0)) ^ 0xF7Cu)))();
}

uint64_t sub_265C4576C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v3 - 1;
  *(a1 + v7) = *(a2 + v7);
  return (*(v6 + 8 * (((v7 == v4 - 2192) * v5) ^ v2)))();
}

uint64_t sub_265C4579C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, char *a17)
{
  v23 = 912648571 * (((&a15 | 0x259A7314898E53BCLL) - (&a15 & 0x259A7314898E53BCLL)) ^ 0x6539619C55431F89);
  a17 = &a13;
  a15 = v17 - v23;
  LODWORD(a16) = (v22 - 715639205) ^ v23;
  (*(v20 + 8 * (v22 + 3031)))(&a15, a2, a3, a4, a5, a6, a7, a8);
  (*(v20 + 8 * (v22 ^ 0x1476u)))(a9, v18, 0, *(v19 + 8 * (v22 & 0x2FD)) - 4, &a13, 12);
  LODWORD(a17) = (v22 - 3141) ^ (1864678469 * ((((2 * &a15) | 0xC58BD0C2) - &a15 + 490346399) ^ 0xD1B5FF88));
  a16 = v17;
  v24 = (*(v20 + 8 * ((v22 + 1348) ^ 0x92Du)))(&a15);
  return (*(v20 + 8 * (((*v21 == 0) * (((v22 + 1348) ^ 0x1C3B) - 2222)) ^ (v22 + 1348))))(v24);
}

uint64_t sub_265C4597C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = (*(v11 + 52864))(a11, a10, a3, a4, a5, a6, a7, a8);
  *v12 = v13;
  return (*(v11 + 8 * ((41 * (v13 == 0)) ^ 0x84Au)))();
}

uint64_t sub_265C45A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *a18, int a19, int a20, uint64_t a21, unsigned int a22, uint64_t a23, uint64_t *a24, int *a25, unsigned int a26, int a27, unsigned int a28)
{
  v32 = a18;
  a17 = 0;
  a20 = 0;
  v33 = *(v31 + 8 * (v28 - 3874)) - 8;
  (*(v30 + 8 * (v28 + 2648)))(v33, a2, a3, a4, a5, a6, a7, a8);
  v34 = **(v31 + 8 * (v28 - 3901));
  v35 = *v32;
  v36 = *(v32 + 3) + 599664785 - ((*(v32 + 3) << (((v28 + 46) ^ 0x20) + v28 + 11)) & 0x477C5122);
  v37 = 1311869473 * (v29 ^ 0xEBEF1AAC);
  a25 = &a20;
  a22 = v36 ^ v37;
  a23 = v35;
  a24 = &a17;
  a28 = 563297187 - v37 + 622816387 * v34;
  a26 = v37 + v28 - 2258 + 3938;
  (*(v30 + 8 * (v28 + 2688)))(&a22);
  v38 = a27;
  v39 = (*(v30 + 8 * (v28 + 2646)))(v33);
  return (*(v30 + 8 * ((2829 * (v38 == 1893509507)) ^ (v28 - 2258))))(v39);
}

uint64_t sub_265C45BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = (*(v14 + 8 * (v13 + 4102)))(a12, a11, a3, a4, a5, a6, a7, a8);
  *v12 = v15;
  return (*(v14 + 8 * ((56 * (((v15 == 0) ^ (v13 - 83)) & 1)) ^ v13)))();
}

uint64_t sub_265C45E84()
{
  *(v5 - 136) = (v4 + 1311674680) ^ (1468321087 * ((2 * ((v5 - 144) & 0x4F2477C0) - (v5 - 144) - 1327790020) ^ 0x6434C952));
  *(v5 - 144) = v2;
  (*(v3 + 8 * (v4 + 4565)))(v5 - 144);
  v6 = (*(v3 + 8 * (v4 ^ 0x1E74)))(**(v1 + 8 * (v4 - 1859)), *(v1 + 8 * (v4 - 1819)) - 4, v0);
  v7 = ((2 * v6) & 0x9FF7F4EA) + (v6 ^ (67 * (v4 ^ 0x785) - 805576430));
  *(v5 - 136) = (v4 - 50585622) ^ (912648571 * ((((v5 - 144) | 0xFB67EC49) - ((v5 - 144) & 0xFB67EC49)) ^ 0x27AAA07C));
  *(v5 - 144) = v2;
  v8 = (*(v3 + 8 * (v4 + 4595)))(v5 - 144);
  return (*(v3 + 8 * (((v7 == -805569931) * ((v4 + 1791723227) & 0x15347FF7 ^ 0xEA8)) ^ v4)))(v8);
}

uint64_t sub_265C46014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v16 = (v12 ^ a6) * a7;
  *(v15 - 208) = *v11 + v10;
  *(v11 + 12) = v10 + v13 + (v16 ^ a8);
  return (*(v14 + 8 * (((v8 & ~((v16 + 1) ^ (v11 == 0))) * (v16 + v9)) ^ v16)))(a1, a2, a3, a4, a5);
}

void sub_265C46088(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 28) + 891395573 * ((2 * (a1 & 0x43E730C) - a1 - 71201549) ^ 0xC1EC9348);
  v3[0] = v1 - 891395573 * ((v3 & 0xE7F2A3BC | ~(v3 | 0xE7F2A3BC)) ^ 0x222043F8) + 500;
  v2 = (&off_28778E150)[v1 ^ 0xF4B] - 8;
  (*&v2[8 * v1 + 21952])(v3);
  __asm { BRAA            X8, X17 }
}

_DWORD *sub_265C461C8@<X0>(_DWORD *result@<X0>, int a2@<W8>)
{
  v4 = a2 - 8;
  v5 = a2 - 1;
  if (v2 == ((v3 + 3920) ^ 0x1856))
  {
    v5 = v4;
  }

  *result = v5;
  return result;
}

uint64_t sub_265C46260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = (*(v14 + 8 * (v15 + 5760)))(a14, a13, a3, a4, a5, a6, a7, a8);
  *v16 = v17;
  return (*(v14 + 8 * (((v17 == 0) * (((v15 - 1743473633) & 0x67EB4DFF) + ((v15 - 272) | 0x591) - 231)) ^ v15)))();
}

uint64_t sub_265C46310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = (*(v13 + 8 * (v12 + 4811)))(a11, a10, a3, a4, a5, a6, a7, a8);
  *v11 = v14;
  return (*(v13 + 8 * (((v14 != 0) * (((v12 + 2121267362) & 0xC997B9FB) - 1208465807)) ^ v12)))();
}

uint64_t sub_265C463B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a2 - 16 + v3);
  v7 = (a1 + v2 - 0x36388D39C04C845DLL + v3);
  *v7 = *(a2 - 16 + v3 - 16);
  v7[1] = v6;
  return (*(v5 + 8 * (((4 * ((((v4 - 4294) ^ (((32 - (v3 & 0xFFFFFFE0)) | ((v3 & 0xFFFFFFE0) - 32)) >> 63)) & 1) == 0)) & 0xDF | (32 * (((v4 + 58) ^ ~(((32 - (v3 & 0xFFFFFFE0)) | ((v3 & 0xFFFFFFE0) - 32)) < 0)) & 1))) ^ v4)))(a1);
}

uint64_t sub_265C4646C()
{
  v4 = ((2 * *(v1 + 12)) & 0x7F706FE6) + (*(v1 + 12) ^ 0x5CFE7A7E3FB837F3) + ((((v0 - 2285) | 0x24u) - v3 - 2172) ^ 0xA301858255CCD4DBLL);
  v6 = v4 < 0xAB8A51FB || v4 > *(v1 + 8) + 2877968891u;
  return (*(v2 + 8 * ((v6 | (16 * v6)) ^ v0)))();
}

uint64_t sub_265C464F0()
{
  *(v2 - 208) = 0;
  *(v2 - 220) = v1;
  return v0();
}

uint64_t sub_265C4651C()
{
  v5 = (*(v4 - 192) | ((*(v4 - 192) < v3) << 32)) + *(v1 + 12) + 1902941451;
  v7 = v5 >= 0xBB2ECF30 && v5 <= *(v1 + 8) + 3140407088u;
  return (*(v2 + 8 * ((v7 * ((v0 - 5889) ^ 0xB4)) | v0)))();
}

uint64_t sub_265C46584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, char a60, char a61, char a62, char a63)
{
  v82 = (v74 + 3147) | 0x426;
  v83 = *(v80 + 4);
  if (v83 >= 0x40)
  {
    v84 = 64;
  }

  else
  {
    v84 = *(v80 + 4);
  }

  v85 = *v80;
  v86 = v80[1];
  v87 = *(v80 + 10);
  if (v87 >= 0x40)
  {
    v88 = 64;
  }

  else
  {
    v88 = *(v80 + 10);
  }

  v89 = v80[3];
  v90 = v80[4];
  v91 = *(v80 + 14);
  if (v91 >= 0x40)
  {
    v92 = 64;
  }

  else
  {
    v92 = *(v80 + 14);
  }

  v93 = v80[6];
  v94 = 1864678469 * ((v81 - 192) ^ 0x78F03F33337017E9);
  *(v81 - 128) = v87 ^ v94;
  *(v81 - 124) = v88 + v94;
  v77[5] = v90 + v94;
  v77[10] = v86 - v94;
  v77[7] = v89 + v94;
  *v77 = v93 - v94;
  v77[1] = &a47;
  v77[3] = v85 - v94;
  *(v81 - 120) = v84 ^ v94;
  *(v81 - 160) = v92 + v94;
  *(v81 - 144) = v74 - v94 + 703427462;
  *(v81 - 176) = v83 ^ v94;
  *(v81 - 172) = v91 ^ v94;
  (*(v78 + 8 * (v74 ^ 0x1FEF)))(v81 - 192);
  (*(v78 + 8 * (v74 ^ 0x1FAE)))(v79, v75, 0, *(v76 + 8 * (v74 ^ 0x6A6)) - 12, &a47, 88);
  v95 = v80[3] - ((2 * v80[3]) & 0x8B9C9957098AC4EALL) + 0x45CE4CAB84C56275;
  a67 = ((v82 - 118) | 8) ^ 0x4C ^ HIBYTE(v95);
  a68 = (v82 - 120) & 0xFD ^ BYTE6(v95) ^ 0x33;
  a69 = BYTE5(v95) ^ 0x4C;
  a70 = BYTE4(v95) ^ 0xAB;
  a71 = BYTE3(v95) ^ 0x84;
  a72 = BYTE2(v95) ^ 0xC5;
  a73 = BYTE1(v95) ^ 0x62;
  a74 = v95 ^ 0x75;
  v96 = *v80 - ((2 * *v80) & 0x8B9C9957098AC4EALL) + 0x45CE4CAB84C56275;
  a59 = HIBYTE(v96) ^ 0x45;
  a60 = BYTE6(v96) ^ 0xCE;
  a61 = BYTE5(v96) ^ 0x4C;
  a62 = BYTE4(v96) ^ 0xAB;
  a63 = BYTE3(v96) ^ 0x84;
  a64 = BYTE2(v96) ^ 0xC5;
  a65 = BYTE1(v96) ^ 0x62;
  a66 = v96 ^ 0x75;
  *(v81 - 192) = v82 - 891395573 * ((2 * ((v81 - 192) & 0x30D7D268) - (v81 - 192) + 1328033175) ^ 0x7505322C) - 1372;
  v97 = (*(v78 + 8 * (v82 + 872)))(v81 - 192);
  return (*(v78 + 8 * ((243 * (*(v81 - 188) != 1163564281)) ^ v82)))(v97);
}

uint64_t sub_265C468A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  HIDWORD(a18) = a6;
  v22 = *(v20 + 8 * ((((*(v20 + 8 * (v19 ^ 0x1E03)))(v18, 3886098504, a3, a4, a5) != 0) * ((((v19 ^ 0x513) + 4090) ^ 0x1689) + 4 * (v19 ^ 0x513))) ^ v19));
  return v22(2147482676, 8033, 896366627, 3398600701, 5680, HIDWORD(a18), a7, a8, a9, a10, a11, a12, a13, a14, v21, a7, a8, a18);
}

uint64_t sub_265C469D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  v32 = 1311869473 * ((v31 - 120) ^ 0xEBEF1AAC);
  *(v31 - 104) = 1695316532 - v32;
  *(v31 - 112) = &a28;
  *(v31 - 120) = v32 + v28 + 4880;
  v33 = (*(v30 + 8 * (v28 ^ 0x1D1C)))(v31 - 120, a2, a3, a4);
  return (*(v30 + 8 * (((*(v31 - 116) == -1237727293) * (((v28 - 1138) ^ (v29 - 53)) + 1071960703)) ^ v28)))(v33);
}

uint64_t sub_265C46B20@<X0>(_DWORD *a1@<X8>)
{
  v5 = ((2 * v2) & 0x65B71CDE) + (v2 ^ 0x32DB8E6F);
  v6 = (*(*v4 + (v5 - 853249647)) << 24) | (*(*v4 + (v5 - 853249646)) << 16) | (*(*v4 + ((v3 - 4617) ^ 0xCD2474A7) + v5) << 8) | *(*v4 + (v5 - 853249644));
  *a1 = (v6 ^ 0xDDEFFB67) + 1808940734 + ((2 * v6) & 0xBBDFF6CE);
  *(v4 + 12) = v2 + 4;
  return v1();
}

uint64_t sub_265C46D24()
{
  v5 = 912648571 * ((2 * (((v4 - 144) ^ 0x5225CC14C197C32ELL) & 0x34B5DFF8C24D03DELL) - ((v4 - 144) ^ 0x5225CC14C197C32ELL) + 0x4B4A20073DB2FC20) ^ 0x59CCFE9B20E8733BLL);
  *(v4 - 136) = v5 ^ 0xD5584439;
  *(v4 - 128) = v4 - 160;
  *(v4 - 144) = v1 - v5;
  (*(v3 + 52648))(v4 - 144);
  (*(v3 + 52544))(v0, v2, 0, off_28778E8E0, v4 - 160, 12);
  *(v4 - 144) = 4379 - 891395573 * ((((2 * (v4 - 144)) | 0x36DA2A8) - (v4 - 144) + 2118725292) ^ 0xBB9BCEEF);
  v6 = (*(v3 + 52984))(v4 - 144);
  return (*(v3 + 8 * ((61 * (*(v4 - 140) == 1163564281)) ^ 0x60Cu)))(v6);
}

uint64_t sub_265C46FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unint64_t a25, uint64_t *a26, unint64_t a27, unint64_t a28, char *a29, int a30, int a31, int a32, int a33, int a34, int a35)
{
  v42 = v37 ^ 0xA17;
  v43 = *v36;
  v44 = *(v36 + 8);
  if (v44 >= 0x40)
  {
    v45 = 64;
  }

  else
  {
    v45 = *(v36 + 8);
  }

  v46 = *(v36 + 16);
  v47 = *(v36 + 24);
  if (v47 >= 0x40)
  {
    v48 = 64;
  }

  else
  {
    v48 = *(v36 + 24);
  }

  v49 = *(v36 + 32);
  v50 = 1384597421 * ((~&a25 & 0x5FCD8ABD5D973853 | &a25 & 0xA0327542A268C7ACLL) ^ 0x29B052D2BF59612ALL);
  a29 = &a13;
  a32 = v48 + v50;
  a33 = v50 + v37 + 25534614;
  a34 = v44 - v50;
  a35 = v47 + v50;
  a27 = a11 - v50;
  a28 = v46 ^ v50;
  a25 = v49 ^ v50;
  a26 = (v43 - v50);
  a30 = v35 - v50;
  a31 = v45 - v50;
  (*(v40 + 8 * (v37 + 6001)))(&a25, a2, a3, a4, a5, a6, a7, a8);
  (*(v40 + 8 * (v37 + 5912)))(a10, v38, 0, *(v39 + 8 * (v37 - 589)) - 8, &a13, 72);
  v51 = 891395573 * ((&a25 - 1697872638 - 2 * (&a25 & 0x9ACC8502)) ^ 0xA0E19AB9);
  a28 = a11;
  LODWORD(a27) = (v42 - 544302498) ^ v51;
  a26 = v36;
  LODWORD(a29) = v35 - ((2 * v35) & 0xAD56FD3C) + ((v42 - 1888901769) & 0x5A6B) - 693406156 + v51;
  v52 = (*(v40 + 8 * (v42 + 4496)))(&a25);
  return (*(v40 + 8 * ((7250 * (*v41 == 0)) ^ v42)))(v52);
}

uint64_t sub_265C47358@<X0>(int a1@<W8>)
{
  v4 = a1 - 1913;
  (*(v3 + 8 * (a1 ^ 0x14BC)))();
  *v2 = 0;
  *v2 = 0;
  v2[1] = 0;
  v5 = (*(v3 + 8 * (v4 + 5125)))(v2);
  return v1(v5);
}

uint64_t sub_265C4741C@<X0>(uint64_t a1@<X8>)
{
  v6 = (v2 ^ 0xFFFFFFFFFFFFF660 ^ (v3 - 3100)) + v1;
  *(v4 - 7 + v6) = *(a1 - 7 + v6);
  return (*(v5 + 8 * ((3334 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

uint64_t sub_265C47470@<X0>(uint64_t a1@<X8>)
{
  v5 = (((v3 - 3428) | 0x280u) ^ 0xFFFFFFFFFFFFF91FLL) + v2;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((v3 - 4548) ^ 0x11C4 ^ (31 * (((v5 - (v3 - 4548)) | ((v3 - 4548) - v5)) >= 0)))))();
}

uint64_t sub_265C47634(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v1 + 8 * (v2 ^ 0x1DF9)))(4096, 3886098504);
  *a1 = v4;
  return (*(v1 + 8 * (((((v2 + 50) ^ (v4 == 0)) & 1) * (((v2 - 54) | 0x268) - 1534)) ^ v2)))();
}

uint64_t sub_265C477BC@<X0>(uint64_t a1@<X6>, uint64_t a2@<X7>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unint64_t *a22)
{
  v30 = v24 - 2878;
  v31 = (*v29 << 56) | (v29[1] << 48) | (v29[2] << 40) | (v29[3] << 32) | (v29[4] << 24) | (v29[5] << 16) | (v29[6] << 8);
  v32 = v29[7] - (v27 & (2 * v29[7])) + v25;
  *a22 = v32 & v22 ^ v23 ^ ((v31 - ((v31 << (v30 + 40)) & 0xFFFAD6776E1550FCLL) - 0x294C448F557BALL) ^ a1) & (v32 ^ a2);
  return (*(v28 + 8 * (((((v30 + 2739) ^ a3) - 3898) * (v26 != 0)) | (v30 + 2739))))(0);
}

uint64_t sub_265C478E8()
{
  (*(v5 + 8 * (v3 ^ 0x1D76)))(v1);
  v7 = *v0;
  v8 = *(v0 + 3) + 599664785 - ((*(v0 + 3) << ((-13 * (v3 ^ 0xB9)) ^ 0xD8)) & 0x477C5122);
  v9 = 1311869473 * ((2 * (v4 & 0x607C87B8) - v4 - 1618773948) ^ 0x746C62E8);
  v10 = 563293386 - v9 + 622816387 * *v2 + 3801;
  *(v6 - 112) = v9 + v3 + 4426;
  *(v6 - 104) = v10;
  *(v6 - 144) = v8 ^ v9;
  *(v6 - 136) = v7;
  *(v6 - 128) = v6 - 168;
  *(v6 - 120) = v6 - 184;
  (*(v5 + 8 * (v3 + 5434)))(v6 - 144);
  v11 = *(v6 - 108);
  v12 = (*(v5 + 8 * (v3 ^ 0x1D70)))(v1);
  return (*(v5 + 8 * ((46 * (v11 == ((1267 * (v3 ^ 0x4B9) - 1912492236) & 0x71FE41F6) + ((1267 * (v3 ^ 0x4B9) + 222320385) ^ 0x6D9CCCA6))) ^ (1267 * (v3 ^ 0x4B9)))))(v12);
}

uint64_t sub_265C47B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v32 = *(a28 + 40);
  *v32 = (*(v29 + 8 * (v30 + 5427)))(*(v31 - 180) + v30 + 2477 + (((v30 - 1101) | 0xA0) ^ 0xB63DB77D), 3886098504, a3, a4, a5, a6, a7, a8);
  return (*(v29 + 8 * (v30 ^ (53 * (v28 != 0)))))();
}

uint64_t sub_265C47BC0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a1 + 3052;
  v12 = v7 + v11 + (v11 ^ 0x7AB ^ (v10 - 733));
  v13 = (*(v8 + 8 * (a1 + 6608)))(a5, a7);
  *v9 = v13;
  return (*(v8 + 8 * (((v13 == 0) * (v12 - 3052)) ^ v11)))(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_265C47DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19)
{
  *(v19 + 8) = 4096;
  *v20 = v19;
  return v21(2147482676, 8033, 896366627, 3398600701, 5680, a19, a7, a17);
}

uint64_t sub_265C47E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t *a21, uint64_t a22, uint64_t a23, unsigned int a24, uint64_t a25, uint64_t *a26, int *a27, unsigned int a28, int a29, unsigned int a30)
{
  v32 = a21;
  a22 = 0;
  v33 = *(v31 + 8 * (v30 - 1893502903));
  a20 = 0;
  v34 = (&off_28778E150)[v30 ^ 0x70DCA9D1] - 8;
  v33(v34, a2, a3, a4, a5, a6, a7, a8);
  v35 = *(&off_28778E150)[v30 ^ 0x70DCA9B4];
  v36 = *(v32 + 3) + 599662308 - ((2 * *(v32 + 3)) & 0x477C5122) + 2477;
  v37 = 1311869473 * (((&a24 | 0xF43FEEE1) + (~&a24 | 0xBC0111E)) ^ 0x1FD0F44C);
  a25 = *v32;
  a26 = &a22;
  a27 = &a20;
  a24 = v36 ^ v37;
  a30 = (((v30 - 1893509339) | 0x905) ^ 0x2193320E) - v37 + 622816387 * v35;
  a28 = v30 - 1893503871 + v37;
  (*(v31 + 8 * (v30 - 1893502863)))(&a24);
  v38 = a29;
  v39 = (*(v31 + 8 * (v30 - 1893502905)))(v34);
  return (*(v31 + 8 * (v30 ^ 0x70DCA2A3 ^ (30 * ((((v38 - v30) | (v30 - v38)) >> (((v30 + 106) & 0xBF) + 114)) & 1)))))(v39);
}

uint64_t sub_265C47FD4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v21 = *v5;
  v10 = a1 - 1237470533 + v7 + 30 + ((v7 + 334493240) & 0xEC0FF7FB);
  *(v5 + 3) = v10 + v6;
  v11 = (*(v8 + 8 * (v7 ^ 0xBA9)))(v10, 3886098504);
  *a5 = v11;
  v12 = *(v8 + 8 * ((19 * (v11 == 0)) ^ v7));
  *(v9 - 208) = v5;
  return v12(v11, v13, v14, v15, v16, v17, v18, v19, a2, v21, a4);
}

uint64_t sub_265C48070()
{
  v5 = (*(v2 + 52864))(v0, v1);
  *v3 = v5;
  return (*(v2 + 8 * ((13 * (v5 == 0)) ^ v4)))();
}

uint64_t sub_265C481B0()
{
  (*(v4 + 8 * (v5 ^ 0x116B)))(v1);
  v7 = *(v0 + 12) + ((v5 + 1625071833) ^ 0x43628111) - ((2 * *(v0 + 12)) & 0x477C5122);
  v8 = 1311869473 * ((~(v3 | 0xB5E49AB) + (v3 & 0xB5E49AB)) ^ 0x1F4EACF8);
  v9 = 563297187 - v8 + 622816387 * *v2;
  *(v6 - 136) = *v0;
  *(v6 - 128) = v6 - 184;
  *(v6 - 120) = v6 - 204;
  *(v6 - 104) = v9;
  *(v6 - 112) = v8 + v5 + 3421;
  *(v6 - 144) = v7 ^ v8;
  (*(v4 + 8 * (v5 + 4429)))(v6 - 144);
  v10 = *(v6 - 108);
  v11 = (*(v4 + 8 * (v5 + 4387)))(v1);
  return (*(v4 + 8 * ((1278 * (((((v10 - (v5 + 1625071833)) | (v5 + 1625071833 - v10)) >> (((v5 + 88) & 0x79) - 90)) & 1) == 0)) ^ (v5 + 2012))))(v11);
}

uint64_t sub_265C482B4()
{
  v6 = v0 < v2;
  v7 = (((v1 ^ 0xE764ACB4205A097FLL) + 0x471AE371505306A9) ^ ((v1 ^ 0xD368145B0B1A8630) + 0x73165B9E7B1389E8) ^ ((v1 ^ 0x7FF17731047C7092) - 0x2070C70B8B8A80BALL)) + 0x147C7FE4A715B23ELL;
  v8 = v6 ^ (v7 < (((v5 & 0xD9E9FF37) - v4 + 449) ^ (v2 + 319)));
  v9 = v7 < v0;
  if (!v8)
  {
    v6 = v9;
  }

  return (*(v3 + 8 * ((2093 * v6) ^ 0x292u)))();
}

uint64_t sub_265C483AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v30 = *(v29 - 160);
  *(v29 - 196) = a8;
  v32 = ((((a9 & 0xE9A545FB) + 345) | 0x81) + 615543884) & 0xDB4F9F1F;
  return (*(v28 + 8 * (((((v32 - 1641) | 0x101) ^ 0x1208 ^ ((v32 - 5628) | 0x290)) * (v30 != 0)) ^ v32)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_265C48484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, unsigned int a35)
{
  *(v37 + 8) = a35;
  *(v37 + 12) = 0;
  v38 = v35 - 1952660835;
  (*(v36 + 8 * ((v35 + 764191592) ^ 0x2D8CB7B0)))(*(&off_28778E150)[v35 - 2806], a33, a35, a4, a5, a6, a7, a8);
  return (*(v36 + 8 * ((76 * ((((v38 + 1952658049) | 0x200) ^ 0x49C23806) != 1237465637)) ^ (v38 + 1952660214))))(1237465637);
}

uint64_t sub_265C48540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v18 + 8) = 4096;
  *v19 = v18;
  return v17(a1, a2, a3, a4, a5, a6, a17, a8);
}

uint64_t sub_265C485A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v24 = (v21 - 2123) | 0x297;
  LODWORD(v37) = *(a17 + 8);
  v38 = *(a17 + 56);
  if (v38)
  {
    v25 = 2;
  }

  else
  {
    v25 = 1;
  }

  HIDWORD(v37) = v25;
  v26 = v24 + 5877;
  v27 = v24 + 2530;
  v28 = (*(v22 + 8 * ((v24 + 1163563618) ^ (v23 - 1960))))(16, 3886098504, a3, a4, a5, a6, a7, a8);
  LODWORD(a16) = 1237422985;
  return (*(v22 + 8 * (((v28 == 0) * (v26 - 6289)) ^ v27)))(v28, v29, v30, v31, v32, v33, v34, v35, a9, v37, a11, a12, a13, a14, v38, a16, a17, a18, a19, a20, a21);
}

void sub_265C486A4()
{
  *(v0 - 192) = 0;
  *(v0 - 172) = 1237465637;
  *(v0 - 156) = 1237465637;
  *(v0 - 200) = 1237465637;
  JUMPOUT(0x265C48930);
}

uint64_t sub_265C489AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, int a23, int a24, uint64_t a25, uint64_t a26, int a27, char *a28)
{
  if (v29 >= 0x40)
  {
    v35 = 64;
  }

  else
  {
    v35 = v29;
  }

  if (v31 >= 0x40)
  {
    v36 = 64;
  }

  else
  {
    v36 = v31;
  }

  v37 = 1427277979 * ((-2 - ((~&a21 | 0xD399ABDBB3C8B485) + (&a21 | 0x2C6654244C374B7ALL))) ^ 0xF5F36C6DE399F9EDLL);
  a28 = &a15;
  a23 = v37 + v35;
  a24 = v37 + v31;
  a25 = v37 + a9;
  a26 = v37 + a10;
  a27 = v37 ^ v36;
  a21 = v37 + v32 - 1741103854;
  a22 = v37 + v29;
  (*(v34 + 8 * (v32 ^ 0x1D69u)))(&a21, a2, a3, a4, a5, a6, a7, a8);
  v38 = (*(v34 + 8 * (v32 ^ 0x1ED0u)))(a11, v28, 0, *(v33 + 8 * (v32 - 1800)) - 8, &a15, 46);
  return (*(v34 + 8 * (((*v30 == 0) * (2 * (v32 - 111) + 2219)) ^ v32)))(v38);
}

uint64_t sub_265C48AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned int a23, int a24, uint64_t a25, uint64_t a26, unint64_t a27, uint64_t a28, char *a29)
{
  if (v34 >= 0x40)
  {
    v37 = 64;
  }

  else
  {
    v37 = v34;
  }

  if (v33 >= 0x40)
  {
    v38 = 64;
  }

  else
  {
    v38 = v33;
  }

  v39 = 1427277979 * ((~&a23 & 0xB804A4E62973ED77 | &a23 & 0x47FB5B19D68C1288) ^ 0x9E6E63507922A01FLL);
  a23 = v39 - 1741101942;
  a24 = v39 + v34;
  LODWORD(a28) = v39 ^ v38;
  a29 = &a13;
  LODWORD(a25) = v39 + v37;
  HIDWORD(a25) = v39 + v33;
  a26 = v39 + v31;
  a27 = v39 + v32;
  (*(v30 + 53384))(&a23, a2, a3, a4, a5, a6, a7, a8);
  (*(v30 + 52544))(a9, v36, 0, qword_28778E628 - 8, &a13, 46);
  v40 = 891395573 * (&a23 ^ 0x3A2D1FBB);
  a28 = v29;
  a25 = v32;
  a26 = v31;
  LODWORD(a27) = v40 ^ (v33 - ((2 * v33) & 0x125A8E90) - 1993521336);
  HIDWORD(a27) = v35 - v40 - 927;
  a23 = (v34 ^ 0x56D7EE7F) - v40 - 1073973349 + ((((19 * (v35 ^ 0x1281) + 1082464969) | 0x20000040) ^ 0xCD2AFCB0) & (2 * v34));
  v41 = (*(v30 + 8 * (v35 ^ 0x88Bu)))(&a23);
  return (*(v30 + 8 * (v35 ^ (13 * (v29 != 0)))))(v41);
}

uint64_t sub_265C48CC8()
{
  v5 = (*(v3 + 8 * (v0 + 3875)))(v1, v2);
  *v4 = v5;
  return (*(v3 + 8 * (((v5 != 0) * (v0 ^ 0xAC4)) ^ v0)))();
}

uint64_t sub_265C48E00@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = v4 + v3 + ((a2 + 25162106) | 0x20040760u);
  *(a1 + v6) = *(a3 + v6);
  return (*(v5 + 8 * ((7946 * (v6 == 0)) ^ a2)))();
}

void sub_265C48E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11)
{
  v14 = (v13 - 1538757245) | 0x8200206;
  a11 = (v13 - 2961) ^ (583883621 * ((&a10 & 0xD528E25E | ~(&a10 | 0xD528E25E)) ^ 0x8BE4C10E));
  a10 = 0;
  (*(v11 + 8 * (v13 + 1619)))(&a10, a2, a3, a4, a5, a6, a7, a8);
  a10 = *v12;
  a11 = (v14 + 1351853216) ^ (912648571 * ((((&a10 | 0xCC45EBB2) ^ 0xFFFFFFFE) - (~&a10 | 0x33BA144D)) ^ 0xEF775878));
  (*(v11 + 8 * (v14 + 1402443433)))(&a10);
  JUMPOUT(0x265C7D2BCLL);
}

uint64_t sub_265C49144@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  v18 = a1 != 0;
  if (a16 - 1237465654 < ((v17 + 1673) ^ 0xFFFFE9AC))
  {
    v18 = 0;
  }

  return (*(v16 + 8 * ((v18 * ((v17 + 1673) ^ 0x1662)) ^ (v17 + 1673))))();
}

uint64_t sub_265C491A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char a20, __int16 a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unsigned int a27, uint64_t a28, char *a29, char *a30, unsigned int a31, int a32, unsigned int a33)
{
  v38 = (v33 - 2259) | 0x430;
  (*(v36 + 8 * (v33 + 4341)))(v35, a2, a3, a4, a5, a6, a7, a8);
  v39 = *v34;
  v40 = *v37;
  v41 = 1311869473 * ((258098213 - (&a27 | 0xF624425) + (&a27 | 0xF09DBBDA)) ^ 0x1B72A176);
  a27 = (*(v37 + 12) + 599664785 - ((v38 ^ 0x477C5516) & (2 * *(v37 + 12)))) ^ v41;
  a30 = &a20;
  a33 = 563297187 - v41 + 622816387 * v39;
  a31 = v41 + v33 + 3373;
  a28 = v40;
  a29 = &a22;
  (*(v36 + 8 * (v33 ^ 0x1123)))(&a27);
  v42 = a32;
  v43 = (*(v36 + 8 * (v33 ^ 0x111D)))(v35);
  return (*(v36 + 8 * ((115 * (v42 == ((v38 - 1020) | 0xF82) + 1625070022)) ^ v38)))(v43);
}

uint64_t sub_265C492F8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v6 = (v3 - 3617) | 0xE02;
  v7 = (v6 + 1187368880) & 0xB93A277F;
  *(v5 + (v7 ^ a1) + v2) = *(a2 + (v7 ^ a1) + v2);
  return (*(v4 + 8 * ((((v7 ^ a1) + v2 != 0) | (32 * ((v7 ^ a1) + v2 != 0))) ^ v6)))();
}

uint64_t sub_265C49348@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18)
{
  v19 = (a2 - 1166270884) & 0x4583DF16;
  v20 = (*(v18 + 8 * (a2 + 2080)))(a1, 3, &a18);
  return (*(v18 + 8 * (((((v19 - 1758793546) & 0x68D50E73 ^ 0xFFFFFF88) + ((v19 - 1238) | 0x400)) * (((v19 - 763991864) & (2 * a18)) + (a18 ^ 0x693B3BEF) < 1765489654)) | v19)))(v20);
}

uint64_t sub_265C49450()
{
  v5 = 912648571 * (&v9 ^ 0xDCCD4C35);
  v11 = v1 - v5 + (v2 ^ 0x509F57B3) + 1704880333;
  v10 = v8;
  v9 = (v2 + 1318477014) ^ v5;
  (*(v4 + 8 * (v2 ^ 0x1356)))(&v9);
  (*(v4 + 8 * (v2 + 3819)))(v7, v0, 0, *(v3 + 8 * (v2 ^ 0xAE9)) - 12, v8, 8);
  return (v1 - 1237465637);
}

uint64_t sub_265C49540()
{
  *(v5 - 144) = v2;
  *(v5 - 136) = (v1 + 1311671373) ^ (1468321087 * ((v5 - 144) ^ 0xD4EF416E));
  (*(v4 + 8 * (v1 + 1258)))(v5 - 144);
  v6 = (*(v4 + 8 * (v1 + 1217)))(**(v0 + 8 * (v1 ^ 0x146E)), *(v0 + 8 * (v1 & 0xBBEA22F9)) - 4, v3);
  v7 = ((((v1 - 2068162001) & 0x7B459FF7) - 608803084) & (2 * v6)) + (v1 ^ 0xEDDB2E3A ^ v6);
  *(v5 - 136) = (v1 - 50588929) ^ (912648571 * ((947862065 - ((v5 - 144) | 0x387F3A31) + ((v5 - 144) | 0xC780C5CE)) ^ 0x1B4D89FB));
  *(v5 - 144) = v2;
  v8 = (*(v4 + 8 * (v1 + 1288)))(v5 - 144);
  return (*(v4 + 8 * ((52 * (v7 == -304399627)) ^ v1)))(v8);
}

uint64_t sub_265C496B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t (*a14)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), int a15, unsigned int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  (*(v28 + 8 * (v24 + 4550)))(*v25, a2, a3, a4, a5, a6, a7, a8);
  *v25 = v27;
  *(v25 + 8) = v26;
  return a14(a16, 2147482831, 7480, 825, 867, a24, a23, a22);
}

uint64_t sub_265C4971C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29, uint64_t a30, uint64_t a31, uint64_t a32, _DWORD *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39)
{
  v41 = (*(v39 + 8 * (a6 + 183)))(*a39, a2, a3, a4, a5);
  *a39 = a30;
  *a33 = a29;
  *(v40 - 236) = *(v40 - 236);
  return (*(v40 - 248))(v41);
}

uint64_t sub_265C49874(__int128 *a1)
{
  v6 = *a1;
  *(v3 - 1) = *(a1 - 1);
  *v3 = v6;
  return (*(v5 + 8 * (((v4 == 0) * v2) ^ v1)))(a1 - 2);
}

uint64_t sub_265C498A4@<X0>(int a1@<W2>, uint64_t (*a2)(void)@<X3>, int a3@<W5>, int a4@<W8>)
{
  v7 = ((2 * a4) & 0xF5F390FE) + (a4 ^ 0x7AF9C87F);
  v8 = (*(*v6 + v7 - 2063190143) << 24) | (*(*v6 + v7 - 2063190142) << 16) | (*(*v6 + ((a1 - 769600561) & 0x2DDF35F9 ^ 0x850622F3) + v7) << 8) | *(*v6 + v7 - 2063190140);
  *v4 = (v8 ^ 0xDDEFFB67) + a3 + (v5 & (2 * v8));
  *(v6 + 12) += 4;
  return a2();
}

uint64_t sub_265C499CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _DWORD *a16, uint64_t a17, uint64_t a18, unint64_t a19)
{
  v22 = *a8;
  v23 = ((2 * *a16) & 0xFDF5BFFE) + (*a16 ^ 0x7EFADFFF) - 2130370559;
  *(*a8 + v23) = 0;
  *(v22 + v23 + 1) = 0;
  *(v22 + v23 + 2) = 0;
  *(v22 + v23 + 3) = 8;
  v24 = *a16 + (((v19 - 4333) | 0x811) ^ 0x831u);
  *a16 = v24;
  return (*(v21 + 8 * ((88 * (a19 <= v20 + *a8 + ((2 * v24) & 0x1EE765474) + (v24 ^ 0x43FDA7F7F73B2A3AuLL) - 3)) ^ v19)))(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_265C49ACC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  LODWORD(a18) = 4490;
  v24 = a3 + v22 + 1400849726 + 1896;
  v25 = (*(v23 + 8 * (v22 + 2346)))(16, 3886098504);
  LODWORD(a19) = 1237422985;
  return (*(v23 + 8 * (((v25 == 0) * ((v22 + 1940) ^ 0x18CE)) ^ v24)))(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, 0x19CA00001604, 0x19CC000019F4, 0x49C23A250000118ALL, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_265C49BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  **(a3 + 8) = v15;
  *a12 = (v12 ^ 0xA0Eu) - 1237469421 + *(v16 - 188);
  return (*(v13 + 8 * (((v14 == 0) * (((v12 ^ 0xA0E) - 3279) ^ ((v12 ^ 0xA0E) + 1704) ^ 0xB3C)) ^ v12 ^ 0xA0E)))(a1, a2);
}

uint64_t sub_265C49C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v17 = *(v16 - 208);
  v8 = (v17 + a8);
  v9 = *(v16 - 192);
  v10 = (~*(v9 + 12) + v8) ^ (~*(v9 + 12) + v8);
  return (*(v15 + 8 * ((((v10 - 1) & ~v10) >> ((v17 + v14) ^ v12)) & 1 | v8 ^ v13)))(*(v15 + 8 * (v17 - 4620)), v9 + 12, 1369802614, a4, a5, a6, a7);
}

uint64_t sub_265C49CA4()
{
  *(v6 - 144) = v1;
  *(v6 - 136) = (v2 + 1311675889) ^ (1468321087 * (((v0 | 0x28C79BDF) + (~v0 | 0xD7386420)) ^ 0xFC28DAB0));
  (*(v3 + 8 * (v2 + 5774)))(v6 - 144);
  v7 = (*(v3 + 8 * (v2 ^ 0x1ABB)))(**(v5 + 8 * (v2 - 650)), *(v5 + 8 * (v2 - 610)) - 4, v4);
  v8 = (((v2 - 466) ^ 0x97ACFC17) & (2 * v7)) + (v7 ^ 0xCBD67EA7);
  *(v6 - 144) = v1;
  *(v6 - 136) = (v2 - 50584413) ^ (912648571 * ((v0 - 2075483927 - 2 * (v0 & 0x844AA0E9)) ^ 0x5887ECDC));
  v9 = (*(v3 + 8 * (v2 + 5804)))(v6 - 144);
  return (*(v3 + 8 * (((v8 == -875135321) * (((v2 - 235) | 0x1B9) ^ 0x79C)) ^ v2)))(v9);
}

uint64_t sub_265C49E3C@<X0>(_BYTE *a1@<X6>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t *a22)
{
  v29 = v22 ^ 0x5D9u;
  *v23 = *a1;
  v30 = (a2 + v24 + v25);
  *v30 = a1[1];
  *(a2 + (v29 ^ (v25 + 672)) + v24) = a1[2];
  v30[2] = a1[3];
  v30[3] = a1[4];
  v30[4] = a1[5];
  v30[5] = a1[6];
  v30[6] = a1[7];
  v31 = v22 ^ 0x24;
  *v26 += 8;
  v32 = a22;
  a19 = 0;
  a21 = 0;
  v33 = (&off_28778E150)[v22 ^ 0x328] - 8;
  (*(v27 + 8 * (v22 ^ 0x1AB6)))(v33);
  v34 = *v32;
  v35 = *(v32 + 3) - ((*(v32 + 3) << (v31 - 93)) & 0x477C5122) + 599664785;
  v36 = 1311869473 * ((2 * ((v28 - 144) & 0x2AB65C50) - (v28 - 144) - 716594264) ^ 0x3EA6B904);
  *(v28 - 104) = 563297187 - v36 + 622816387 * *(&off_28778E150)[v29 - 1644];
  *(v28 - 112) = v36 + v29 + 3937;
  *(v28 - 120) = &a21;
  *(v28 - 136) = v34;
  *(v28 - 128) = &a19;
  *(v28 - 144) = v35 ^ v36;
  (*(v27 + 8 * (v29 ^ 0x1F57)))(v28 - 144);
  v37 = *(v28 - 108);
  v38 = (*(v27 + 8 * (v29 + 4903)))(v33);
  return (*(v27 + 8 * (((v37 == 1893509507) * (((v29 - 1611) | 0x1506) - 1042)) | v29)))(v38);
}

uint64_t sub_265C49EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, __int16 a16, char a17, __int16 a18, char a19, __int16 a20, char a21)
{
  v24 = *a4;
  v25 = ((2 * *v23) & 0xF7F7BABE) + (*v23 ^ 0xFBFBDD5F);
  *(*a4 + v25 + 67379873) = a21;
  *(v24 + v25 + 67379874) = a19;
  *(v24 + v25 + ((v21 + 4666) ^ 0x40437D3)) = a17;
  *(v24 + v25 + 67379876) = a15;
  *v23 += 4;
  return (*(v22 + 8 * (v21 + 8 * (a14 != 2072352569))))();
}

void sWBoEyhXQd6FTiLw()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = (&off_28778E150)[(*(off_28778E490 + (*(off_28778E720 + (91 * (qword_28003EBE0 ^ 0x30 ^ dword_28003EDD8)) - 4) ^ 0x1Du) - 12) ^ (91 * (qword_28003EBE0 ^ 0x30 ^ dword_28003EDD8))) - 103];
  v1 = 636859739 * (&v2[*(v0 - 4) ^ qword_28003EBE0] ^ 0xE2C729A08169AF30);
  qword_28003EBE0 = v1;
  *(v0 - 4) = v1;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_265C4A134()
{
  result = v0(1, (v3 + *(v1 + 16) - 1228223172), v2);
  *(v1 + 4) = result + (v5 ^ (v4 + 1157)) - ((2 * result) & 0x6C738F86);
  return result;
}

uint64_t sub_265C4A214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = (*(v13 + 8 * (v12 + 1801)))(a12, a11, a3, a4, a5, a6, a7, a8);
  *v14 = v15;
  return (*(v13 + 8 * (((v15 == 0) * (((v12 ^ 0x1C62) - 394) ^ 0xD15)) ^ v12)))();
}

uint64_t sub_265C4A2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = (*(v12 + 52864))(a11, v11, a3, a4, a5, a6, a7, a8);
  *v13 = v14;
  return (*(v12 + 8 * ((1174 * (v14 == 0)) ^ 0x95B)))();
}

uint64_t sub_265C4A390()
{
  v5 = *(v3 + 8 * (((v2 == v0 + 1237464639) * ((v0 + 3743) ^ 0x1ABC)) ^ v0));
  *(v4 - 208) = v1;
  return v5();
}

uint64_t sub_265C4A400@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, int a12, int a13)
{
  v14 = *v13;
  v15 = a13 + 989737029 - ((2 * a13) & 0x75FC608A);
  v16 = (((a1 + 165) ^ 0xFDF6B366) & (2 * *a11)) + (*a11 ^ 0xFEFB5FFF) + 17080321;
  *(*v13 + v16) = HIBYTE(v15) ^ 0x3A;
  *(v14 + v16 + 1) = BYTE2(v15) ^ 0xFE;
  *(v14 + v16 + 2) = BYTE1(v15) ^ 0x30;
  *(v14 + v16 + 3) = v15 ^ 0x45;
  *a11 += 4;
  return sub_265C49C9C();
}

uint64_t sub_265C4A4B0()
{
  *v2 = 0;
  *v1 = 0;
  *(v4 - 144) = v0 - 891395573 * ((497062946 - ((v4 - 144) | 0x1DA09422) + ((v4 - 144) | 0xE25F6BDD)) ^ 0xD8727466) - 652;
  v5 = (*(v3 + 8 * (v0 ^ 0xA78)))(v4 - 144);
  return (*(v3 + 8 * ((1975 * (((v0 - 20) ^ (*(v4 - 140) == v0 + 1163559250)) & 1)) ^ v0)))(v5);
}

uint64_t sub_265C4A588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, char a34, char a35, int a36, int a37, int a38, uint64_t a39, int a40, uint64_t a41, int a42, uint64_t a43, int a44, int a45, int a46, uint64_t a47, uint64_t a48, int a49, uint64_t a50, uint64_t a51, int a52, int a53)
{
  v59 = *v54;
  v60 = v54[6];
  if (v60 >= 0x40)
  {
    v61 = 64;
  }

  else
  {
    v61 = v54[6];
  }

  v62 = *(v54 + 1);
  v63 = *(v54 + 2);
  v64 = v54[10];
  if (v64 >= 0x40)
  {
    v65 = 64;
  }

  else
  {
    v65 = v54[10];
  }

  v66 = *(v54 + 4);
  v67 = *(v54 + 6);
  v68 = 566710099 * (((&a33 | 0x73FBFD39A9893FC4) - &a33 + (&a33 & 0x8C0402C65676C038)) ^ 0x8C7313EB25CC6748);
  a44 = v65 - v68;
  a45 = (v53 + 2137912802) ^ v68;
  a42 = v59 - v68;
  v58[7] = v66 ^ v68;
  a40 = v64 - v68;
  a38 = v61 - v68;
  v58[5] = v67 ^ v68;
  a46 = v60 ^ v68;
  *v58 = v62 - v68;
  v58[1] = &a24;
  v58[3] = v63 - v68;
  (*(v56 + 8 * (v53 ^ 0x14D4)))(&a33);
  (*(v56 + 8 * (v53 ^ 0x1486)))(a10, v55, 0, (&off_28778E150)[v53 ^ 0xDC9] - 8, &a24, 72);
  v70 = *(v54 + 1);
  v69 = *(v54 + 2);
  v71 = *(v54 + 4);
  v72 = v54[10];
  v73 = *(v54 + 6);
  v74 = (v54[6] ^ 0x7BCFF7F2) - 25428544 + ((2 * v54[6]) & 0xF79FEFE4);
  v75 = *v54 ^ 0x57ADD76E;
  v76 = (2 * *v54) & 0xAF5BAEDC;
  v77 = 1427277979 * (((&a33 | 0xBEBC6AA17F9EA513) - (&a33 | 0x4143955E80615AECLL) + 0x4143955E80615AECLL) ^ 0x98D6AD172FCFE87BLL);
  a33 = v77 + v57 + 467;
  v58[9] = 0x54799400B27E420BLL;
  v58[10] = &a16;
  v58[7] = &a17;
  a49 = -457199637 - v77;
  a52 = v77 + 2051798450;
  a53 = v77 + (v72 ^ 0x7FDFF7BE) + ((2 * v72) & 0xFFBFEF7C) - 93585932;
  v58[11] = 0;
  v58[2] = v73;
  v58[3] = 0;
  a34 = v77 + 9;
  v58[5] = v69;
  v58[6] = v77 + ((v57 + 107439561) & 0xF9988FFE ^ 0x56E9EE0FB6C654E7) * v70 + 0x706969559327EE78;
  a35 = v77 ^ 6;
  a36 = v74 ^ v77;
  a40 = v77 + v75 + v76 - 101208064;
  v58[13] = v71;
  v58[14] = &a15;
  v78 = (*(v56 + 8 * (v57 ^ 0xB33)))(&a33);
  if (a17)
  {
    v79 = a15 == 0;
  }

  else
  {
    v79 = 1;
  }

  v81 = !v79 && a16 != 0;
  return (*(v56 + 8 * (((2 * v81) | (32 * v81)) ^ v57)))(v78);
}

uint64_t sub_265C4A8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFF4B8 ^ (v4 - 22) ^ 0x1835u) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * ((250 * ((v2 & 0xFFFFFFF8) - 8 != v3)) ^ (v4 - 22))))();
}

uint64_t sub_265C4A974@<X0>(int a1@<W8>)
{
  v4 = a1 + 2368;
  (*(v3 + 8 * (a1 + 4634)))();
  *v1 = 0;
  *v1 = 0;
  v1[1] = 0;
  v5 = (*(v3 + 8 * (v4 + 2266)))(v1);
  return v2(v5);
}

uint64_t sub_265C4AAD0(uint64_t result)
{
  v1 = *(result + 24);
  v2 = 566710099 * (result ^ 0xFF88EED28C45588CLL);
  v3 = *(result + 32) - v2;
  v4 = *(result + 8) + v2;
  v5 = *(result + 16) - v2;
  LODWORD(v2) = *(result + 4) + v2;
  *v1 = 134218754;
  *(v1 + 4) = v3;
  *(v1 + 12) = 1040;
  *(v1 + 14) = v4;
  *(v1 + 18) = 2096;
  *(v1 + 20) = v5;
  *(v1 + 28) = 1024;
  *(v1 + 30) = v2;
  return result;
}

uint64_t sub_265C4AB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 8) = 4096;
  *v5 = v6;
  return v7(a1, a2, a3, a4, a5, 2411919072, 1883048697, 2177);
}

uint64_t sub_265C4ABEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20)
{
  v22 = ((2 * v20) & 0x1D337FDB6) + ((((2 * a20) ^ 0x17B6u) - 0x9124181664158DLL) ^ v20) + 0x9124185EC41E39;
  v24 = v22 < ((a20 + 4729) ^ 0x48600978uLL) || v22 > *(a3 + 8) + 1214258448;
  return (*(v21 + 8 * ((2030 * v24) ^ a20)))(a1, a2);
}

uint64_t sub_265C4ACC4(uint64_t result)
{
  v1 = 1311869473 * (result ^ 0xB3AFD755EBEF1AACLL);
  v2 = *(result + 40) ^ v1;
  v3 = *(result + 8) + v1;
  v4 = *(result + 56) ^ v1;
  v5 = *(result + 24);
  v6 = *(result + 32) - v1;
  v7 = *(result + 16) + v1;
  v8 = *(result + 48) ^ v1;
  *v5 = 67110402;
  *(v5 + 4) = v2;
  *(v5 + 8) = 2048;
  *(v5 + 10) = v3;
  *(v5 + 18) = 1040;
  *(v5 + 20) = v4;
  *(v5 + 24) = 2096;
  *(v5 + 26) = v6;
  *(v5 + 34) = 1024;
  *(v5 + 36) = v7;
  *(v5 + 40) = 2048;
  *(v5 + 42) = v8;
  return result;
}

uint64_t sub_265C4AD5C(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  v3 = *(result + 28);
  v4 = *(result + 16);
  v5 = 652747349 * ((2 * (result & 0x49929D06F17A414ELL) - result - 0x49929D06F17A414FLL) ^ 0xECDBC9054C768024);
  v6 = *(result + 8);
  v7 = *result;
  *v1 = 134219010;
  *(v1 + 4) = v2 ^ v5;
  *(v1 + 12) = 1040;
  *(v1 + 14) = v3 + 652747349 * ((2 * (result & 0xF17A414E) - result + 243646129) ^ 0x4C768024);
  *(v1 + 18) = 2096;
  *(v1 + 20) = v4 - v5;
  *(v1 + 28) = 1024;
  *(v1 + 30) = v6 ^ (652747349 * ((2 * (result & 0xF17A414E) - result + 243646129) ^ 0x4C768024));
  *(v1 + 34) = 2048;
  *(v1 + 36) = v7 - v5;
  return result;
}

void jomCL4mkolcRMRSf()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = (&off_28778E150)[(*(off_28778E2C0 + (*(off_28778E198 + (91 * ((dword_28003EDD8 - qword_28003EDB8) ^ 0x30)) - 8) ^ 0x45u) - 4) ^ (91 * ((dword_28003EDD8 - qword_28003EDB8) ^ 0x30))) + 98];
  v1 = qword_28003EDB8 - &v4 + *(v0 - 4);
  v2 = (636859739 * v1) ^ 0xE2C729A08169AF30;
  v3 = 636859739 * (v1 ^ 0xE2C729A08169AF30);
  qword_28003EDB8 = v2;
  *(v0 - 4) = v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_265C4AF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  v29 = *(v28 - 160);
  *(v28 - 168) = 0;
  *(v28 - 172) = 0;
  v30 = (&off_28778E150)[a27 - 1649] - 8;
  (*(v27 + 8 * (a27 + 4873)))(v30, a2, a3, a4, a5, a6, a7, a8);
  v31 = *(&off_28778E150)[a27 - 1676];
  v32 = *v29;
  v33 = 1311869473 * ((((v28 - 144) | 0x4C0D5FF7) - (v28 - 144) + ((v28 - 144) & 0xB3F2A008)) ^ 0xA7E2455B);
  *(v28 - 144) = (*(v29 + 3) + 599664785 - (((a27 + 1596265270) & 0xA0DAE76E ^ 0x477C504A) & (2 * *(v29 + 3)))) ^ v33;
  *(v28 - 120) = v28 - 172;
  *(v28 - 112) = v33 + a27 + 3905;
  *(v28 - 104) = 563297187 - v33 + 622816387 * v31;
  *(v28 - 136) = v32;
  *(v28 - 128) = v28 - 168;
  (*(v27 + 8 * (a27 + 4913)))(v28 - 144);
  LODWORD(v29) = *(v28 - 108);
  v34 = (*(v27 + 8 * (a27 ^ 0x1F09)))(v30);
  return (*(v27 + 8 * ((2571 * (v29 == ((a27 - 833817726) & 0x31B317FB) + 1893504834)) ^ a27)))(v34);
}

uint64_t sub_265C4B114()
{
  v7 = (v3 - 32);
  v8 = v5 - 32;
  v9 = *(v8 + v1);
  *(v7 - 1) = *(v8 + v1 - 16);
  *v7 = v9;
  return (*(v6 + 8 * (((v4 == 32) * (v2 + 2265)) ^ v0)))();
}

uint64_t sub_265C4B178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, int a3@<W5>, uint64_t a4@<X8>)
{
  v11 = v6 + 32;
  v12 = (v11 ^ a2 ^ v7 ^ 0x4BD17259u) + v5;
  v13 = *(v8 + v12 - 15);
  v14 = *(v8 + v12 - 31);
  v15 = a4 + v12 + v4;
  *(v15 - 15) = v13;
  *(v15 - 31) = v14;
  return (*(v10 + 8 * (((a1 == v11) * a3) ^ (v9 + v7 + 3464))))();
}

uint64_t sub_265C4B1BC@<X0>(uint64_t a1@<X8>)
{
  v6 = 2006 * (v4 ^ 0x1780);
  v7 = (((v6 - 1726) - 4293) ^ v3) + v2;
  *(a1 - 7 + v7) = *(v1 - 7 + v7);
  return (*(v5 + 8 * ((((v6 - 6026) & v2) - 8 != v3) ^ v6)))();
}

uint64_t sub_265C4B220@<X0>(int a1@<W8>)
{
  v3 = 5 * (a1 ^ 0x1B6);
  (*(v2 + 8 * (a1 ^ 0x1A6F)))();
  *v1 = 0;
  *v1 = 0;
  v1[1] = 0;
  (*(v2 + 8 * (v3 + 3755)))(v1);
  return (*(v2 + 8 * (((((855 * (v3 ^ 0xB3C) + 613009434) & 0xDB762BBF) - 2862) * (*v1 == 0)) ^ (855 * (v3 ^ 0xB3C)))))();
}

uint64_t sub_265C4B438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v70 = (v68 + 1536538375) & 0xA46A3EE6;
  v71 = 912648571 * (((((v69 - 184) | 0x9C895584) ^ 0xFFFFFFFE) - (~(v69 - 184) | 0x6376AA7B)) ^ 0xBFBBE64E);
  *(v69 - 176) = &a65;
  *(v69 - 168) = v66 - v71 + (v70 ^ 0xB63DC77D);
  *(v69 - 184) = (v68 + 1318476507) ^ v71;
  (*(v67 + 8 * (v68 + 3379)))(v69 - 184, a2, a3, a4, a5, a6, a7, a8);
  v72 = (*(v67 + 8 * (v68 + 3312)))(a12, v65, 0, (&off_28778E150)[v68 - 3228] - 8, &a65, 8);
  return (*(v67 + 8 * ((4602 * (v66 == ((141 * (v70 ^ 0x2A3) + 1237464192) ^ (v70 + 2750)))) ^ v70)))(v72);
}

uint64_t sub_265C4B55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unint64_t a27, uint64_t a28, _DWORD *a29, int a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t *a35)
{
  *(v37 - 216) = a1;
  v38 = *a35;
  v39 = ((a30 ^ 0xF7BF2DAB) + 1949715954) ^ a30 ^ ((a30 ^ 0x7E7FF9FF) - 34170458) ^ ((a30 ^ 0x354F7841) - 1228535875 + (v35 ^ 0x301AF996)) ^ ((a30 ^ 0xC0F93F2D ^ (v35 - 807066924)) + 1131434987);
  v40 = ((2 * *a29) & 0xD7F6BF9E) + (*a29 ^ 0xEBFB5FCF) + 335847473;
  *(*a35 + v40) = HIBYTE(v39) ^ 0x7C;
  *(v38 + v40 + 1) = BYTE2(v39) ^ 0x76;
  *(v38 + v40 + 2) = ((((a30 ^ 0x2DAB) + 19954) ^ a30 ^ ((a30 ^ 0xF9FF) - 26202) ^ ((a30 ^ 0x7841) + 1981 + (v35 ^ 0xF996)) ^ ((a30 ^ 0x3F2D ^ (v35 + 8916)) + 21483)) >> 8) ^ 0x9F;
  *(v38 + v40 + 3) = ((a30 ^ 0xAB) - 14) ^ a30 ^ (-a30 - 91) ^ ((a30 ^ 0x41) - 67 + (v35 ^ 0x96)) ^ ((a30 ^ 0x2D ^ (v35 - 44)) - 21) ^ 0xA5;
  v41 = (*a29 + 4);
  *a29 = v41;
  v42 = a27 <= *a35 + ((2 * v41) & 0x1F73DFBFCLL) + (v41 ^ 0xBF5FDFEAFB9EFDFELL) + 0x40A0201504610202;
  return (*(v36 + 8 * (v42 | (4 * v42) | (v35 - 807065273))))();
}

uint64_t sub_265C4B750(uint64_t result)
{
  v1 = 583883621 * ((~result & 0xC3BBD378D65CAD9DLL | result & 0x3C442C8729A35262) ^ 0x3810A5C2776F7132);
  v2 = *(result + 16);
  v3 = *(result + 8) ^ v1;
  LODWORD(v1) = *(result + 4) + v1;
  *v2 = 134218240;
  *(v2 + 4) = v3;
  *(v2 + 12) = 1024;
  *(v2 + 14) = v1;
  return result;
}

void sub_265C4B7C0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 4) - 1427277979 * ((a1 & 0x2848FEFE | ~(a1 | 0x2848FEFE)) ^ 0x87E64C69);
  v3[0] = v1 - 891395573 * (v3 ^ 0x3A2D1FBB) - 1532;
  v2 = (&off_28778E150)[v1 ^ 0x177B] - 8;
  (*&v2[8 * v1 + 5696])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_265C4B8CC@<X0>(uint64_t a1@<X8>)
{
  v6 = (((v3 - 762) - 2199) ^ v2) + v1;
  *(v4 - 7 + v6) = *(a1 - 7 + v6);
  return (*(v5 + 8 * (((v1 & 0xFFFFFFF8) - 8 == v2) | v3)))();
}

uint64_t sub_265C4BA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v41 = *(v37 + 28) ^ a25;
  v42 = *(v39 + 8 * (v38 - 5260));
  v43 = *(v40 - 160);
  *(v40 - 224) = v43;
  *(v40 - 216) = v42;
  HIDWORD(a37) = v41;
  return (*(v39 + 8 * ((2341 * ((v41 - 1780315270) + (*(v43 + 12) ^ 0x4DDFB7F4A6BB6FFBLL) + ((2 * *(v43 + 12)) & 0x14D76DFF6uLL) - 0x4DDFB7F4A6BB6FFBLL < ((v38 - 5443) ^ 0xFFFFFF28uLL))) ^ HIDWORD(a27))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a13, (v41 - 1780315270), a32, a33, a34, a35, v43 + 12, a37);
}

uint64_t sub_265C4BA20()
{
  v3 = (*(v1 + 12) ^ 0x5F5DE73BAED3BEFBLL) + (((v0 + 1516311173) & 0xA59EE947 ^ 0x15DA775B6) & (2 * *(v1 + 12))) - 0x5F5DE73B6A18EB42;
  v5 = v3 >= 0x44BAD3B5 && v3 <= *(v1 + 8) + 1153094581;
  return (*(v2 + 8 * ((v5 * ((v0 ^ 0xCD4) + 90)) ^ v0)))();
}

uint64_t sub_265C4BBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v25 - 136) = (v20 + 1311675441) ^ (1468321087 * ((1079111360 - (v22 | 0x4051EEC0) + (v22 | 0xBFAE113F)) ^ 0x6B415051));
  *(v25 - 144) = v21;
  (*(v24 + 8 * (v20 ^ 0x1D52)))(v25 - 144, a2, a3, a4, a5, a6, a7, a8);
  v26 = (*(v24 + 8 * (v20 + 5285)))(**(v23 + 8 * (v20 - 1098)), *(v23 + 8 * (v20 & 0xAA8DD1C9)) - 4, a20);
  v27 = ((2 * v26) & 0xFBC67F7A) + (v26 ^ 0xFDE33FBD);
  *(v25 - 136) = (v20 - 50584861) ^ (912648571 * ((-1976490465 - (v22 | 0x8A31261F) + (v22 | 0x75CED9E0)) ^ 0xA90395D5));
  *(v25 - 144) = v21;
  v28 = (*(v24 + 8 * (v20 + 5356)))(v25 - 144);
  return (*(v24 + 8 * (((v27 == -35438659) * (((v20 - 1169) ^ 0xD58) - 2439)) ^ v20)))(v28);
}

uint64_t sub_265C4BD40@<X0>(int a1@<W8>)
{
  v5 = a1 + 15;
  v6 = (a1 - 877505026) & 0x344DADFE;
  v7 = (*(v3 + 8 * ((a1 + 15) ^ 0x13D8)))(v1, v2);
  *v4 = v7;
  return (*(v3 + 8 * (((v7 == 0) * (v6 - 1528)) ^ v5)))();
}

uint64_t sub_265C4BDA0@<X0>(int a1@<W8>)
{
  v1 = (a1 - 5226);
  v2 = *(v7 - 192);
  v3 = (~*(v2 + 12) + v1) ^ (~*(v2 + 12) + v1);
  return (*(v6 + 8 * ((((v3 - 1) & ~v3) >> ((a1 + v5) ^ 0x7Eu)) & 1 | v1 ^ 0xFFFFF509)))(*(v6 + 8 * (a1 - 4604)), v2 + 12, 1369802606);
}

uint64_t sub_265C4BE64(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 ^ 0x1C3Du)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 == 0) * ((((v1 - 1499) | 0x1000) - 636) ^ (v1 + 1956))) ^ v1)))();
}

uint64_t sub_265C4BEF8(int a1)
{
  v5 = *v3 + v2;
  *(v3 + 12) = v2 - 4265 + (a1 ^ 0x1522);
  return (*(v4 + 8 * (((v5 == 0) * (((a1 ^ 0x1522 ^ v1) - 619) ^ 0x3F)) ^ a1 ^ 0x1522)))();
}

void sub_265C4BF88(uint64_t a1)
{
  v3 = v1 & 0x5F96DF7B;
  v4 = *(v2 + 8 * (v1 & 0x5F96DF7B ^ 0x157Bu));
  v4();
  (*(v2 + 8 * (v3 + 2687)))(a1);
  JUMPOUT(0x265C3E46CLL);
}

uint64_t sub_265C4BFF0(uint64_t a1)
{
  v5 = v2 - 3541;
  v6 = ((v2 + 244976283) & 0xF165F3F6) - 1075;
  v7 = v1 ^ a1;
  v9 = v3 < 0x20 || v7 < 8;
  return (*(v4 + 8 * (((v6 ^ 0xFAE) * v9) ^ v5)))();
}

uint64_t sub_265C4C040()
{
  v5 = *(v2 + 8 * (((*v1 == 0) * (v0 ^ 0x8BB ^ (215 * (v0 ^ 0xD15)))) ^ v0));
  *(v4 - 220) = v3;
  return v5();
}

uint64_t sub_265C4C094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v6 < v10;
  v12 = (((v7 ^ 0x974B7D3224544F1) - 0x56F507E9ADB3B4D9) ^ ((v7 ^ 0xE0C3A82BEFAA7690) + 0x40BDE7EE9FA37948) ^ ((v7 ^ ((v8 ^ 0x1D4u) - 327) ^ 0xA24AD026E2D3CDEELL) + 0x2349FE392DAC26CLL)) + a6;
  v13 = v11 ^ (v12 < v10);
  v14 = v12 < v6;
  if (!v13)
  {
    v11 = v14;
  }

  return (*(v9 + 8 * ((2679 * v11) ^ v8)))();
}

uint64_t sub_265C4C1A0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, unsigned int a33, uint64_t a34)
{
  v37 = v34 - a4 + 214;
  *(v35 + 8) = a33;
  *(v35 + 12) = 0;
  v38 = (*(v36 + 8 * (v37 ^ 0x4BD17A74)))(*(&off_28778E150)[v34 - a4 - 1272013508], a34, a33);
  return (*(v36 + 8 * ((v37 - 1272013471) ^ 0x1105)))(v38);
}

uint64_t sub_265C4C3AC()
{
  v4 = *(v3 - 160);
  *(v3 - 176) = 0;
  *(v3 - 168) = 0;
  v5 = *(v2 + 8 * (v1 ^ 0x6A0)) - 8;
  (*(v0 + 8 * (v1 ^ 0x1F3E)))(v5);
  v6 = **(v2 + 8 * (v1 - 1723));
  v7 = *v4;
  v8 = 1311869473 * ((v3 + 688761516 - 2 * ((v3 - 144) & 0x290DAB3C)) ^ 0xC2E2B190);
  *(v3 - 144) = (*(v4 + 3) + ((v1 - 969912385) & 0x39CFADDE ^ 0x23BE2C01) - ((2 * *(v4 + 3)) & 0x477C5122)) ^ v8;
  *(v3 - 136) = v7;
  *(v3 - 128) = v3 - 176;
  *(v3 - 120) = v3 - 168;
  *(v3 - 112) = v8 + v1 + 3858;
  *(v3 - 104) = 563297187 - v8 + v6 * (((v1 - 626) | 0x10) + 622815219);
  (*(v0 + 8 * (v1 + 4866)))(v3 - 144);
  v9 = *(v3 - 108);
  v10 = (*(v0 + 8 * (v1 ^ 0x1F38)))(v5);
  return (*(v0 + 8 * ((2094 * (v9 == 1893509507)) ^ v1)))(v10);
}

uint64_t sub_265C4C51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned int a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = v66 ^ 0x8B;
  if (a29 >= 0x40)
  {
    v72 = 64;
  }

  else
  {
    v72 = a29;
  }

  v73 = 1311869473 * ((((2 * (v70 - 224)) | 0x23F10CEDD693B700) - (v70 - 224) - 0x11F88676EB49DB80) ^ 0xA257512300A6C12CLL);
  *(v70 - 184) = a29 ^ (1311869473 * ((((2 * (v70 - 224)) | 0xD693B700) - (v70 - 224) + 347481216) ^ 0xA6C12C));
  *(v70 - 224) = v67 - 1311869473 * ((((2 * (v70 - 224)) | 0xD693B700) - (v70 - 224) + 347481216) ^ 0xA6C12C) + (v66 ^ 0xB63DC885);
  *(v70 - 220) = (v66 + 2118005280) ^ (1311869473 * ((((2 * (v70 - 224)) | 0xD693B700) - (v70 - 224) + 347481216) ^ 0xA6C12C));
  *(v70 - 200) = &a65;
  *(v70 - 192) = a30 + v73;
  *(v70 - 216) = v72 - 1311869473 * ((((2 * (v70 - 224)) | 0xD693B700) - (v70 - 224) + 347481216) ^ 0xA6C12C);
  *(v70 - 208) = a26 ^ v73;
  (*(v68 + 8 * (v66 ^ 0x1499)))(v70 - 224, a2, a3, a4, a5, a6, a7, a8);
  v74 = (*(v68 + 8 * (v66 ^ 0x14F6)))(a15, v65, 0, (&off_28778E150)[v66 - 3405] - 8, &a65, 40);
  v77 = v67 != v69 || a24 != ((v71 - 1362) ^ 0xE30) - 1700 || a10 == 0;
  return (*(v68 + 8 * ((975 * v77) ^ v71)))(v74);
}

uint64_t sub_265C4C748@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1 ^ 0x10CBB624;
  v10 = (*(v8 + 8 * (a1 ^ 0x1946)))(16, 3886098504);
  return (*(v8 + 8 * (((v10 != 0) * ((v9 + 1433438546) & 0x99C3D4DF ^ 0x14C9)) ^ (v9 - 281783232))))(v10, v11, v12, v13, 1237422985, v14, v15, v16, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_265C4C770@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  v5 = (a1 + v2 - 16);
  v6 = *(a2 + v2 - 16);
  *(v5 - 1) = *(a2 + v2 - 32);
  *v5 = v6;
  return (*(v4 + 8 * ((v3 - 4) | (4 * (((((v3 - 3575) & v2) == 32) ^ (v3 + 70)) & 1)))))();
}

uint64_t sub_265C4C92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v35 = (*(v33 + 8 * (v29 ^ 0x14E1)))(v30, a2, a3, a4, a5, a6, a7, a8);
  *(v34 - 208) = *(a29 + 32);
  *v31 = 0;
  return v32(v35);
}

uint64_t sub_265C4CA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, int a19, char a20, uint64_t a21, unsigned int a22, uint64_t a23, char *a24, char *a25, unsigned int a26, int a27, unsigned int a28)
{
  (*(v31 + 8 * (v30 ^ 0x14BE)))(v29, a2, a3, a4, a5, a6, a7, a8);
  v33 = *a12;
  v34 = *v28;
  v35 = 1311869473 * (((v32 ^ 0x28553475 | 0x64284686) - ((v32 ^ 0x28553475) & 0x64284686)) ^ 0xA792685F);
  a22 = (v30 + 599661343 + *(v28 + 12) - ((2 * *(v28 + 12)) & 0x477C5122)) ^ v35;
  a23 = v34;
  a24 = &a17;
  a25 = &a20;
  a28 = 563297187 - v35 + 622816387 * v33;
  a26 = v35 + v30 + 2194;
  (*(v31 + 8 * (v30 + 3202)))(&a22);
  v36 = a27;
  v37 = (*(v31 + 8 * (v30 + 3160)))(v29);
  return (*(v31 + 8 * (((v36 == 1625074048) * ((((v30 - 2361) << 6) ^ 0x11ED8) + ((v30 - 2361) ^ 0x6BD))) ^ (v30 - 2361))))(v37);
}

uint64_t sub_265C4CB4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (v2 - 2835) | 0x850;
  (*(v4 + 8 * (v2 ^ 0x15D3)))(a2);
  *a1 = 0;
  *a1 = 0;
  a1[1] = 0;
  v7 = (*(v4 + 8 * (v5 ^ 0x1094)))();
  return v3(v7);
}

uint64_t sub_265C4CC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned int a28)
{
  a27 = v30;
  a28 = (v29 + 1311672697) ^ (1468321087 * ((((2 * (&a27 ^ 0x5FA6AB71)) | 0x15C9DA20) - (&a27 ^ 0x5FA6AB71) + 1964708592) ^ 0x1AD070F));
  (*(v32 + 8 * (v29 ^ 0x161A)))(&a27, a2, a3, a4, a5, a6, a7, a8);
  v33 = (*(v32 + 8 * (v29 + 2541)))(**(v28 + 8 * (v29 & 0x5A54D0A9)), *(v28 + 8 * (v29 - 3802)) - 4, v31);
  v34 = ((v33 << ((v29 - 40) & 0xFE ^ 0x7B)) & 0xBFAFF6DE) + (v33 ^ 0x5FD7FB6F);
  a28 = (v29 - 50587605) ^ (912648571 * ((~(&a27 | 0xC9A6FD26) + (&a27 & 0xC9A6FD26)) ^ 0xEA944EEC));
  a27 = v30;
  v35 = (*(v32 + 8 * (v29 + 2612)))(&a27);
  return (*(v32 + 8 * ((115 * (v34 != 1607990127)) ^ v29)))(v35);
}

uint64_t sub_265C4CED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  v35 = 583883621 * ((((2 * (v34 - 144)) | 0x31DE5084CAE4F466) - (v34 - 144) - 0x18EF284265727A33) ^ 0xE3445EF8C441A69CLL);
  *(v34 - 136) = v35 ^ a17;
  *(v34 - 128) = &a28;
  *(v34 - 144) = (v29 + 273734856) ^ v35;
  *(v34 - 140) = a16 - v35;
  (*(v33 + 8 * (v29 + 3769)))(v34 - 144, a2, a3, a4, a5, a6, a7, a8);
  (*(v33 + 8 * (v29 + 3700)))(v32, v30, 0, *(v31 + 8 * (v29 ^ 0xBAAu)) - 4, &a28, 18);
  *(v34 - 144) = v28 - 891395573 * ((v34 - 144) ^ 0x3A2D1FBB) - 1631;
  v36 = (*(v33 + 8 * (v28 + 613)))(v34 - 144);
  return (*(v33 + 8 * (((*(v34 - 140) != 1163564281) * (v28 - 5726 + ((v28 - 5349) | 0xC00) - 3780)) ^ v28)))(v36);
}

uint64_t sub_265C4D090@<X0>(int a1@<W8>)
{
  v4 = (a1 ^ 0x349) * v1;
  *(v3 - 184) = 0;
  v5 = v4 - 823;
  v6 = v4;
  v7 = (*(v2 + 8 * (v4 ^ 0xFD8)))(16, 3886098504);
  return (*(v2 + 8 * (((v7 != 0) * (v6 - 5187)) ^ v5)))(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_265C4D158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = ((v8 - 0xA2D44008213003) ^ v7) + ((((v8 - 3371) ^ 0xD3D) + 0x1EFBDAF6ELL) & (2 * v7)) + 0xA2D44015665CA6;
  v12 = v10 < 0xD453C13 || v10 > *(a7 + 8) + 222641171;
  return (*(v9 + 8 * ((1150 * v12) ^ (v8 - 3371))))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_265C4D234()
{
  v7 = *v6;
  if (*v6 >= 0x40)
  {
    v8 = 64;
  }

  else
  {
    v8 = *v6;
  }

  v9 = *v5;
  v10 = 1311869473 * ((-2 - ((~v15 | 0x8757EA40D7B231D9) + (v15 | 0x78A815BF284DCE26))) ^ 0x34F83D153C5D2B75);
  v18 = *v13 + v10;
  v15[0] = v3 - v10 + ((v1 - 715068503) & 0xFFDF2773 ^ 0x637DE0A8);
  v15[1] = (v1 + 2118004008) ^ v10;
  v15[2] = v8 - v10;
  v19 = v7 ^ v10;
  v16 = v9 ^ v10;
  v17 = v14;
  (*(v0 + 8 * (v1 ^ 0xB91u)))(v15);
  (*(v0 + 8 * (v1 ^ 0xBFEu)))(v12, v2, 0, *(v4 + 8 * (v1 ^ 0x1268u)) - 8, v14, 40);
  return (v3 - 1237465637);
}

uint64_t sub_265C4D424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v17 = (*(v14 + 8 * (v13 ^ 0x1A2D)))(a12, a13, a3, a4, a5, a6, a7, a8);
  *v15 = v17;
  return (*(v14 + 8 * ((((((v13 ^ 0x7B) + 119) ^ (v17 == 0)) & 1) * (v16 + (((v13 ^ 0x157B) - 656693129) & 0x37EFF7AE) - 208)) ^ v13 ^ 0x157B)))(v17, v18, v19, v20, v21, v22);
}

uint64_t sub_265C4D548(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v3 + 8 * (v1 ^ 0x1463)))();
  return v2(v4);
}

uint64_t sub_265C4D8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v23 = (*(v21 + 8 * (v20 + 5078)))(a20, a19, a3, a4, a5, a6, a7, a8);
  *v22 = v23;
  return (*(v21 + 8 * (((v23 == 0) * (((v20 ^ 0x5E3) + 2483) ^ (31 * (v20 ^ 0x5E3)))) ^ v20)))();
}

uint64_t sub_265C4D900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, int a42)
{
  *(a40 + 72) = a42 - 1237465637;
  HIDWORD(a34) = HIDWORD(a16);
  return (*(v43 + 8 * (((HIDWORD(a16) == ((a22 - 20419732) ^ 0x49C23A26)) * (a22 & HIDWORD(a21) ^ 0xBF2)) ^ (v44 + v42 + 1310))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_265C4DC3C@<X0>(uint64_t (*a1)(void)@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, _DWORD *a32)
{
  v33 = **(v32 - 216);
  v34 = ((a31 ^ 0x7C4F9741) - 744981727) ^ a31 ^ ((a31 ^ 0xAA41B5F1) + 93739409) ^ ((a31 ^ 0x79BBFFFF) - 697560161) ^ ((a31 ^ 0xFF9DD987 ^ (a2 + 4401)) + 1347035825);
  v35 = ((2 * *a32) & 0xDDFFBBBE) + (*a32 ^ 0x6EFFDDDF) - 1862262239;
  *(v33 + v35) = HIBYTE(v34) ^ 0x50;
  *(v33 + v35 + 1) = BYTE2(v34) ^ 0x28;
  *(v33 + v35 + 2) = BYTE1(v34) ^ 0x13;
  *(v33 + v35 + 3) = v34 ^ 0x9E;
  *a32 += 4;
  return sub_265C27CA0(a1);
}

uint64_t sub_265C4DD6C@<X0>(uint64_t a1@<X8>)
{
  v9 = (((v5 + 3349) - 4282) ^ v4) + v2;
  *(a1 - 7 + v9 + v1) = *(v8 - 7 + v9);
  return (*(v7 + 8 * (((v2 - (v3 & 7) - 8 == v4) * v6) ^ v5)))();
}

uint64_t sub_265C4DEBC@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v10 = ~v5 + v2;
  v11 = *(a2 + v10 - 15);
  v12 = *(a2 + v10 - 31);
  v13 = v8 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v9 + 8 * ((((v6 ^ v7) + v5 == v3) * a1) ^ v4)))();
}

uint64_t sub_265C4E050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  v23 = 1311869473 * ((2 * ((v22 - 120) & 0x75EDA630) - (v22 - 120) + 168974795) ^ 0xE1FD4367);
  *(v22 - 104) = 1172980518 - v23;
  *(v22 - 120) = v23 + v20 + 5357;
  *(v22 - 112) = &a20;
  v24 = (*(v21 + 8 * (v20 + 5873)))(v22 - 120, a2, a3);
  return (*(v21 + 8 * ((503 * (*(v22 - 116) == ((v20 - 690144591) & 0x2922C3FD) - 1237727293 + ((v20 - 594) | 0x101) - 818)) ^ v20)))(v24);
}

uint64_t sub_265C4E22C@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  v6 = v5 == ((92 * (v3 ^ 0x33Cu)) ^ 0x228);
  return (*(v4 + 8 * (((4 * v6) | (v6 << 12)) ^ v3)))();
}

uint64_t sub_265C4E2A8@<X0>(int a1@<W4>, uint64_t (*a2)(void)@<X5>, _DWORD *a3@<X6>, char a4@<W8>)
{
  v5 = *v4;
  v6 = ((*a3 << (((a4 - 9) & 0xF1) + 33)) & 0xDFFEBFFE) + (*a3 ^ 0xEFFF5FFF) + 268476417;
  *(*v4 + v6) = HIBYTE(a1) ^ 0x24;
  *(v5 + v6 + 1) = BYTE2(a1) ^ 0x24;
  *(v5 + v6 + 2) = BYTE1(a1) ^ 0xE4;
  *(v5 + v6 + 3) = a1 ^ 0xB4;
  *a3 += 4;
  return a2();
}

uint64_t sub_265C4E34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21, int a22, uint64_t a23, uint64_t a24, _DWORD *a25)
{
  v29 = *v28;
  v30 = (v26 ^ 0xCA8FDF15) & (2 * (v26 & 0xD3081F54)) ^ v26 & 0xD3081F54;
  v31 = ((2 * (v26 ^ 0x4C9FEF95)) ^ 0x3F2FE182) & (v26 ^ 0x4C9FEF95) ^ (2 * (v26 ^ 0x4C9FEF95)) & 0x9F97F0C0;
  v32 = v31 ^ 0x80901041;
  v33 = (v31 ^ 0x1C90E080) & (4 * v30) ^ v30;
  v34 = ((4 * v32) ^ 0x7E5FC304) & v32 ^ (4 * v32) & 0x9F97F0C0;
  v35 = (v34 ^ 0x1E17C000) & (16 * v33) ^ v33;
  v36 = ((16 * (v34 ^ 0x818030C1)) ^ 0xF97F0C10) & (v34 ^ 0x818030C1) ^ (16 * (v34 ^ 0x818030C1)) & 0x9F97F0C0;
  v37 = v35 ^ 0x9F97F0C1 ^ (v36 ^ 0x99170000) & (v35 << 8);
  v38 = v26 ^ (2 * ((v37 << 16) & 0x1F970000 ^ v37 ^ ((v37 << 16) ^ 0x70C10000) & (((v36 ^ 0x680F0C1) << 8) & 0x1F970000 ^ 0x8070000 ^ (((v36 ^ 0x680F0C1) << 8) ^ 0x17F00000) & (v36 ^ 0x680F0C1))));
  v39 = ((((v25 ^ 0xBD) + 293) ^ 0xDF7FB5E1) & (2 * *a25)) + (*a25 ^ 0x6FBFDD7F) - 1874845055;
  *(*v28 + v39) = HIBYTE(v38) ^ 0xCD;
  *(v29 + v39 + 1) = BYTE2(v38) ^ 0x25;
  *(v29 + v39 + 2) = BYTE1(v38) ^ 0xFE;
  *(v29 + v39 + 3) = v38 ^ 0xD6;
  v40 = (*a25 + 4);
  *a25 = v40;
  return (*(v27 + 8 * ((13 * (a19 <= *v28 + ((2 * v40) & 0x1FF2E6CF6) + (v40 ^ 0xDF27FF7BFF97367BLL) + 0x20D800840068C985)) ^ v25)))(a22 + 807070153 - ((2 * a22) & 0x6035D392u));
}

uint64_t sub_265C4E5C8@<X0>(uint64_t a1@<X8>)
{
  v5 = *(a1 + v1 - 16);
  *(v3 + v1 - 32) = *(a1 + v1 - 32);
  *(v3 + v1 - 16) = v5;
  return (*(v4 + 8 * ((43 * (((v2 - 113) ^ ((((v2 - 3104) ^ 0xFFFFF334) & v1) == 32)) & 1)) ^ (v2 - 3104))))();
}

uint64_t sub_265C4E730@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 + (v3 - 3095) - 489;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((7398 * (v5 == 0)) ^ v3)))();
}

void sub_265C4E7A8(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 72) + 1864678469 * ((-2 - ((~a1 | 0x12558AE6) + (a1 | 0xEDAA7519))) ^ 0x21259D0F);
  v3[0] = v1 - 891395573 * (v3 ^ 0x3A2D1FBB) + 1155;
  v2 = (&off_28778E150)[v1 ^ 0xCF4] - 8;
  (*&v2[8 * v1 + 27192])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_265C4E9D8@<X0>(_DWORD *a1@<X8>)
{
  v5 = v3 - 47;
  v6 = ((2 * v2) & 0x6D3B29DE) + (v2 ^ 0x369D94EF) - 916296943;
  v7 = (*(*v4 + v6 + 1) << (v5 ^ 0xC1)) | (*(*v4 + v6) << 24) | (*(*v4 + v6 + 2) << 8) | *(*v4 + v6 + 3);
  *a1 = (v7 ^ 0xDDEFFB67) + 1808940734 + ((2 * v7) & 0xBBDFF6CE);
  *(v4 + 12) = v2 + 4;
  return v1();
}

uint64_t sub_265C4EB44()
{
  v5 = (*(v4 - 192) | ((*(v4 - 192) < v3) << 32)) + *(v0 + 12) + 1546583543;
  v7 = v5 < 0xA5F1381C || v5 > *(v0 + 8) + 2784049180u;
  return (*(v2 + 8 * ((13 * (((v1 - 1) ^ v7) & 1)) ^ v1)))();
}

uint64_t sub_265C4EBC8@<X0>(uint64_t a1@<X8>)
{
  *(v6 + v4) = *(a1 + v4);
  v8 = ((v4 + 1) ^ v2) != v5 + v3 - 1500;
  return (*(v7 + 8 * (v8 | (8 * v8) | v1)))();
}

uint64_t sub_265C4EC04@<X0>(uint64_t a1@<X8>)
{
  v5 = *(a1 + v1 - 16);
  *(v3 + v1 - 32) = *(a1 + v1 - 32);
  *(v3 + v1 - 16) = v5;
  return (*(v4 + 8 * ((((v1 & 0xFFFFFFE0) == 32) * ((v2 - 819277547) & 0x30D536DF ^ 0xE4F)) ^ v2)))();
}

uint64_t sub_265C4EDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, _DWORD *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t *a31)
{
  v34 = *a31;
  v35 = ((v32 ^ 0xBA3BC0D9) + 1107048677) ^ v32 ^ ((v32 ^ 0x4836F92E) - 1276051180) ^ ((v32 ^ 0xFEBBBFFB) + 92030919) ^ (((((v31 - 5789) | 0x5C5) + 143555593) ^ v32) - 213288460);
  v36 = ((*a26 << (v31 ^ 0x9C)) & 0xF5FCFABE) + (*a26 ^ 0x7AFE7D5F) - 2063498591;
  *(*a31 + v36) = HIBYTE(v35) ^ 4;
  *(v34 + v36 + 1) = BYTE2(v35) ^ 0x38;
  *(v34 + v36 + 2) = ((((v32 ^ 0xC0D9) + 14565) ^ v32 ^ ((v32 ^ 0xF92E) + 276) ^ ((v32 ^ 0xBFFB) + 18375) ^ (((((v31 - 5789) | 0x5C5) + 31753) ^ v32) + 31220)) >> 8) ^ 7;
  *(v34 + v36 + 3) = ((v32 ^ 0xD9) - 27) ^ v32 ^ ((v32 ^ 0x2E) + 20) ^ ((v32 ^ 0xFB) - 57) ^ (((((v31 + 99) | 0xC5) + 9) ^ v32) - 12) ^ 0xC2;
  v37 = (*a26 + 4);
  *a26 = v37;
  return (*(v33 + 8 * ((62 * (a22 <= *a31 + ((2 * v37) & 0x1EAF5B7FELL) + (v37 ^ 0xCBFDFF5DF57ADBFFLL) + 0x340200A20A852401)) ^ v31)))();
}

uint64_t sub_265C4EF38(uint64_t *a1)
{
  v5 = 2 * (v2 ^ (v1 + 1480));
  *a1 = 0;
  a1[1] = 0;
  v6 = (*(v3 + 8 * (v5 ^ 0xC7E)))(4096, 3886098504);
  *a1 = v6;
  return (*(v3 + 8 * (((v6 == 0) * (v5 - 3444 + 1054 * (v5 ^ 0x15B2) - 4114)) ^ v5)))();
}

uint64_t sub_265C4F018()
{
  v5 = (*(v2 + 8 * (v4 ^ 0x1B51)))(v0, v1);
  *v3 = v5;
  return (*(v2 + 8 * (((v5 != 0) * (v4 - 634)) ^ v4)))();
}

uint64_t sub_265C4F05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 8) = 4096;
  *v6 = v7;
  return v8(2919858395, a2, a3, 2147483649, a5, a6, 3216);
}

uint64_t sub_265C4F0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, int a23, uint64_t a24, char *a25, uint64_t a26)
{
  v34 = 2039 * (v29 ^ 0xA20);
  if (v27 >= 0x40)
  {
    v35 = 64;
  }

  else
  {
    v35 = v27;
  }

  v36 = 566710099 * ((~&a21 & 0x1806EECCC2049630 | &a21 & 0xE7F911333DFB69CFLL) ^ 0xE78E001E4E41CEBCLL);
  a23 = v35 - v36;
  a24 = v36 + v26;
  a25 = &a15;
  a26 = v36 + v28;
  a21 = v36 + v29 + 576630899;
  a22 = v27 - v36;
  (*(v32 + 8 * (v29 ^ 0x102Fu)))(&a21, a2, a3, a4, a5, a6, a7, a8);
  (*(v32 + 8 * (v29 ^ 0x138Bu)))(a9, v30, 0, *(v31 + 8 * (v29 - 2515)), &a15, 34);
  v37 = 1311869473 * (((&a21 | 0x65735AC58C024AF0) - &a21 + (&a21 & 0x9A8CA53A73FDB508)) ^ 0xD6DC8D9067ED505CLL);
  a21 = (v27 ^ 0xFBFC7A52) - v37 + ((v34 - 5460) | 0x82C) + ((((v34 - 1570) | 0x610) ^ 0xF7F8E376) & (2 * v27)) + 505648449;
  a22 = v34 - v37 - 343;
  a24 = v26;
  a25 = (v37 ^ ((v28 ^ 0xEED7EBFBFFF9EEFBLL) + 0x5FED757FF3FEFD06 + ((2 * v28) & 0xDDAFD7F7FFF3DDF6)));
  v38 = (*(v32 + 8 * (v34 ^ 0xD85u)))(&a21);
  return (*(v32 + 8 * ((3754 * (*v33 == 0)) ^ v34)))(v38);
}

uint64_t sub_265C4F330@<X0>(uint64_t a1@<X8>)
{
  v5 = ((2 * v3) & 0x7FFF567E) + (v3 ^ 0xBFFFAB3F);
  v6 = (*(*a1 + v5 + 1073763521) << 24) | (*(*a1 + v5 + 1073763522) << 16) | (*(*a1 + ((22 * (v4 ^ 0x379)) ^ 0x40005B79) + v5) << 8) | *(*a1 + v5 + 1073763524);
  *v1 = (v6 ^ 0xDDEFFB67) + 1808940734 + ((2 * v6) & 0xBBDFF6CE);
  *(a1 + 12) = v3 + 4;
  return v2();
}

uint64_t sub_265C4F988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, _DWORD *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t (*a25)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v26 = *v24;
  v27 = HIDWORD(a19) - ((2 * HIDWORD(a19)) & 0x75FC608A) + 989737029;
  v28 = ((*a21 << ((a9 + 6) ^ (v25 + 25))) & 0xD777FEDE) + (*a21 ^ 0xEBBBFF6F) + 340000913;
  *(*v24 + v28) = HIBYTE(v27) ^ 0x3A;
  *(v26 + v28 + 1) = BYTE2(v27) ^ 0xFE;
  *(v26 + v28 + 2) = BYTE1(v27) ^ 0x30;
  *(v26 + v28 + 3) = v27 ^ 0x45;
  *a21 += 4;
  return (a25)(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a21, a22, a23, v24);
}

uint64_t sub_265C4FC78@<X0>(int a1@<W3>, uint64_t a2@<X8>)
{
  v6 = v2 - 1;
  *(v4 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (((v6 == 0) * ((v3 + 763) ^ a1)) ^ v3)))();
}

uint64_t sub_265C500D0@<X0>(uint64_t a1@<X4>, int a2@<W5>, uint64_t a3@<X8>)
{
  v8 = (v4 ^ a1) + v5;
  *(v6 + v8) = *(a3 + v8);
  return (*(v7 + 8 * (((v8 == 0) * a2) ^ v3)))();
}

uint64_t sub_265C500FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  v19 = (*(v18 + 8 * (v17 + 4715)))(v16, @"lK1", a3, a4, a5, a6, a7, a8);
  (*(v18 + 8 * (v17 ^ 0x1E8E)))(v19, 4, va);
  v20 = (*(v18 + 8 * (v17 + 4729)))(v16, @"DhpWkh3rnR");
  return (*(v18 + 8 * ((v17 - 1868) ^ 0x62E ^ (87 * ((((v20 - (v17 - 1868)) | (v17 - 1868 - v20)) & 0x80) == 0)))))();
}

uint64_t sub_265C50180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
{
  v37 = (*(v35 + 8 * (v33 + 4902)))(v34, a2, a3, a4, a5, a6, a7, a8);
  *a33 = 0;
  return v36(v37);
}

uint64_t sub_265C501D4@<X0>(int a1@<W8>)
{
  v4 = 5 * (a1 ^ 0x3F2);
  (*(v3 + 8 * (a1 ^ 0x1AD5)))();
  *v2 = 0;
  *v2 = 0;
  v2[1] = 0;
  v5 = (*(v3 + 8 * (v4 + 5665)))(v2);
  return v1(v5);
}

uint64_t sub_265C50334(int a1)
{
  v6 = 227 * (v4 ^ 0xD04u) + (*(v3 + 12) ^ 0xEF7D4FAF7F7EFAEALL) + (v1 & (2 * *(v3 + 12))) + v2;
  v8 = v6 >= 0xD861FC10 && v6 <= *(v3 + 8) + 3630300176u;
  return (*(v5 + 8 * ((v8 * a1) ^ v4)))();
}

uint64_t sub_265C503A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, int a25, char a26, uint64_t a27, unsigned int a28, uint64_t a29, char *a30, char *a31, unsigned int a32, int a33, unsigned int a34)
{
  v40 = v34 + 1317417508;
  v41 = (v40 - 1317421594) | 0x1000;
  (*(v38 + 8 * (v40 - 1317415374)))(v35, a2, a3, a4, a5, a6, a7, a8);
  v42 = *v39;
  v43 = *(v37 + 12) - ((2 * *(v37 + 12)) & 0x477C5122) + 599664785;
  v44 = 1311869473 * (((v36 | 0x795874F7) - (v36 & 0x795874F7)) ^ 0x92B76E5B);
  a29 = *v37;
  a30 = &a23;
  a31 = &a26;
  a28 = v43 ^ v44;
  a34 = 563297187 - v44 + v42 * (v41 + 622811907);
  a32 = v40 - 1317416342 + v44;
  (*(v38 + 8 * (v40 - 1317415334)))(&a28);
  v45 = a33;
  v46 = (*(v38 + 8 * (v40 ^ 0x4E865A50)))(v35);
  return (*(v38 + 8 * ((76 * (v45 == ((v41 - 4163) ^ (v41 + 1431) ^ 0x60DCBFAA))) ^ v41)))(v46);
}

uint64_t sub_265C50554()
{
  v5 = (*(v3 + 52864))(v1, v2);
  *v4 = v5;
  return (*(v3 + 8 * ((45 * (v5 == 0)) ^ v0)))();
}

void sub_265C50598(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  *(v35 + 12) = v34 - 1237465637 + a1 + 460 - 1187 + v33;
  *(a33 + 80) = (*(v36 + 8 * (a1 + 5879)))();
  JUMPOUT(0x265C393F0);
}

uint64_t sub_265C50650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  (*(v14 + 8 * (v12 ^ a10)))(v10, a2, a3, a4, a5, a6, a7, a8);
  *v11 = 0;
  return v13(2147477622, 1217, 5103);
}

uint64_t sub_265C50708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int *a19)
{
  (*(v20 + 8 * (a11 + 4873)))(v19, a2, a3, a4, a5, a6, a7, a8);
  v22 = *a19;
  v23 = *a12;
  v24 = 1311869473 * ((v21 - 144) ^ 0xEBEF1AAC);
  *(v21 - 144) = (*(a12 + 3) + 599664785 - ((*(a12 + 3) << (a11 ^ 0x82)) & 0x477C5122)) ^ v24;
  *(v21 - 136) = v23;
  *(v21 - 128) = v21 - 168;
  *(v21 - 120) = v21 - 172;
  *(v21 - 104) = 563297187 - v24 + 622816387 * v22;
  *(v21 - 112) = v24 + a11 + 3905;
  (*(v20 + 8 * (a11 ^ 0x1F37)))(v21 - 144);
  v25 = *(v21 - 108);
  v26 = (*(v20 + 8 * (a11 + 4871)))(v19);
  return (*(v20 + 8 * (((v25 == 1625074048) * (((a11 ^ 0x1482) - 4089) ^ ((a11 ^ 0x1482) + 981) ^ 0x14B7)) ^ a11 ^ 0x1482)))(v26);
}

uint64_t sub_265C5098C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  (*(v24 + 8 * (v19 + 5655)))(*v23, a2, a3, a4, a5, a6, a7, a8);
  *v23 = v22;
  *(v23 + 8) = v21;
  return v20(2147477622, 1217, 5103, a19, a18, a17);
}

void sub_265C50A20(int a1@<W8>)
{
  (*(v2 + 8 * (a1 + 2125)))();
  *v1 = 0;
  JUMPOUT(0x265C1C9DCLL);
}

uint64_t sub_265C50BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v37 = *(a34 + 40);
  v38 = (4 * v34) ^ 0x4168;
  *(v36 - 216) = v38;
  v39 = (v38 + 560) | 0x6C0;
  v40 = (*(v35 + 8 * (v34 ^ 0x8E2)))((*(v36 - 180) - 1237465637), 3886098504, a3, a4, a5, a6, a7, a8);
  *v37 = v40;
  return (*(v35 + 8 * (((v40 == 0) * (v39 - 3781)) ^ v34)))();
}

uint64_t sub_265C50D74@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v11 = ~v7 + v3;
  v12 = *(v9 + v11 - 15);
  v13 = *(v9 + v11 - 31);
  v14 = a2 + v11 + v2;
  *(v14 - 15) = v12;
  *(v14 - 31) = v13;
  return (*(v10 + 8 * (((v7 + a1 + v4 == v6) * v8) ^ v5)))();
}

uint64_t sub_265C512F0()
{
  v5 = (*(v3 + 8 * (v0 ^ 0x1A14)))(v2, v4);
  *v1 = v5;
  return (*(v3 + 8 * ((2010 * (((v0 ^ (v5 == 0)) & 1) == 0)) ^ v0)))();
}

uint64_t sub_265C51348()
{
  v6 = *v4;
  *(v2 - 1) = *(v4 - 1);
  *v2 = v6;
  return (*(v5 + 8 * (((v3 == 0) * v1) ^ v0)))();
}

uint64_t sub_265C513B0@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11)
{
  v12 = (a2 ^ 0xD98D19FF3F2D7E69) + ((a11 ^ 0x7E5AFDC6) & (2 * a2)) + 0x2672E600FAB878A0;
  v14 = v12 < 0x39E5F705 || v12 > *(a1 + 8) + 971372293;
  return (*(v11 + 8 * ((2171 * v14) ^ a11)))();
}

uint64_t sub_265C5143C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t (*a16)(uint64_t))
{
  v21 = (*(v20 + 8 * (v16 + 960)))(*v19, a2, a3, a4, a5, a6, a7, a8);
  *v19 = v18;
  *(v19 + 8) = v17;
  return a16(v21);
}

uint64_t sub_265C516F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v17 = *(v16 - 208);
  v8 = (v17 + a8);
  v9 = *(v16 - 192);
  v10 = (~*(v9 + 12) + v8) ^ (~*(v9 + 12) + v8);
  return (*(v15 + 8 * ((((v10 - 1) & ~v10) >> ((v17 + v14) ^ v12)) & 1 | v8 ^ v13)))(*(v15 + 8 * (v17 - 4639)), v9 + 12, 1369802607, a4, a5, a6, a7);
}

uint64_t sub_265C51714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = (*(v14 + 8 * ((v13 + 48) ^ 0xD8D)))(a12, a11, a3, a4, a5, a6, a7, a8);
  *v12 = v15;
  return (*(v14 + 8 * (((v15 == 0) * ((v13 - 25603174) ^ (v13 - 25602367))) ^ (v13 + 48))))();
}

uint64_t sub_265C51778()
{
  v5 = v1 ^ v0;
  v7 = v3 < 0x20 || v5 < 8;
  return (*(v4 + 8 * ((((341 * (v2 ^ 0xA04) + 77157712) & 0xFB66AF7E ^ 0xB4B) * v7) ^ v2)))();
}

uint64_t sub_265C51B78()
{
  v4 = (v0 - 390079478) & 0x17403777;
  *(v2 + 8) = *(v3 - 184);
  *(v2 + 12) = 0;
  *(v3 - 208) = 1237465637;
  v5 = (*(v1 + 8 * (v4 + 1133)))(*(&off_28778E150)[v4 ^ 0x157F], *(v3 - 176), *(v3 - 184));
  return (*(v1 + 8 * ((183 * (((5488 - v4) | (v4 - 5488)) >= 0)) ^ (v4 - 257))))(v5);
}

uint64_t sub_265C51E94()
{
  v5 = (*(v4 + 8 * (v3 ^ 0x15C4)))(v1);
  *v2 = 0;
  return v0(v5);
}

uint64_t sub_265C52084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, int a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  v68 = a32;
  if (v61 >= 0x40)
  {
    v69 = 64;
  }

  else
  {
    v69 = v61;
  }

  if (a17 >= 0x40)
  {
    v70 = 64;
  }

  else
  {
    v70 = a17;
  }

  v71 = 1427277979 * ((((v67 - 184) ^ 0xD948E14CE9D18232 | 0x9B3E6AFEA5E51462) - (((v67 - 184) ^ 0xD948E14CE9D18232) & 0x9B3E6AFEA5E51462)) ^ 0x641C4C041C65DB38);
  *(v67 - 176) = v60 + v71;
  *(v67 - 168) = a9 - v71;
  *(v67 - 148) = (v63 + 417139640) ^ v71;
  *(v67 - 144) = v69 + v71;
  *(v67 - 160) = v68 - v71;
  *(v67 - 152) = v61 ^ v71;
  *(v67 - 184) = a17 ^ v71;
  *(v67 - 180) = v70 + v71;
  *(v67 - 136) = &a60;
  (*(v64 + 8 * (v63 + 4280)))(v67 - 184, a2, a3, a4, a5, a6, a7, a8);
  (*(v64 + 8 * (v63 + 4221)))(a12, v62, 0, (&off_28778E150)[v63 - 2317], &a60, 56);
  v72 = a32 - (((v63 - 346) - 0x113FAE7653D3B211) & (2 * a32)) - 0x89FD73B29E9D520;
  *(v67 - 144) = 912648571 * ((((v67 - 184) | 0x4F85BB4D) - ((v67 - 184) | 0xB07A44B2) - 1334164302) ^ 0x9348F778) + (a17 ^ 0xE398FDB) + ((2 * a17) & 0x1C731FB6) - 167872537;
  *(v67 - 120) = (v61 ^ 0xF6794FDF) - 912648571 * ((((v67 - 184) | 0x4F85BB4D) - ((v67 - 184) | 0xB07A44B2) - 1334164302) ^ 0x9348F778) + ((2 * v61) & 0xECF29FBE) + 230602723;
  *(v67 - 184) = v60;
  *(v67 - 168) = &a31;
  *(v67 - 160) = (v63 + 3549) ^ (912648571 * ((((v67 - 184) | 0x4F85BB4D) - ((v67 - 184) | 0xB07A44B2) - 1334164302) ^ 0x9348F778));
  *(v67 - 152) = &a23;
  *(v67 - 116) = (v66 - 86) ^ (123 * ((((v67 + 72) | 0x4D) - ((v67 + 72) | 0xB2) - 78) ^ 0x78));
  *(v67 - 136) = &a25;
  *(v67 - 128) = v72 ^ (912648571 * ((((v67 - 184) | 0x8FE3B60D4F85BB4DLL) - ((v67 - 184) | 0x701C49F2B07A44B2) + 0x701C49F2B07A44B2) ^ 0xCF40A4859348F778));
  *(v67 - 112) = a9;
  v73 = (*(v64 + 8 * (v63 + 4302)))(v67 - 184);
  return (*(v64 + 8 * ((*v65 == 0) | (2 * (*v65 == 0)) | (v63 - 1499))))(v73);
}

uint64_t sub_265C523F4@<X0>(uint64_t a1@<X8>)
{
  v9 = v3 + 32;
  v10 = ((((v4 + 1340) | 0x180u) + v6) ^ v9) + v2;
  v11 = *(v1 + v10 - 15);
  v12 = *(v1 + v10 - 31);
  v13 = a1 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v8 + 8 * (((v5 == v9) * v7) ^ v4)))();
}

uint64_t sub_265C52410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _DWORD *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v39 = ((2 * v36) & 0x67F753FE) + (v36 ^ 0x33FBA9FF);
  v40 = (*(*v38 + (v37 ^ 0xCC045514) + v39) << 24) | (*(*v38 + (v39 - 872131070)) << 16) | (*(*v38 + (v39 - 872131069)) << 8) | *(*v38 + (v39 - 872131068));
  *a9 = (v40 ^ 0xDDEFFB67) + 1808940734 + ((2 * v40) & 0xBBDFF6CE);
  *(v38 + 12) = v36 + 4;
  HIDWORD(a35) = a2;
  return v35(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_265C524F0()
{
  (*(v4 + 8 * (v1 ^ 0x13DE)))(v2);
  *v3 = 0;
  return v0(1042206423);
}

uint64_t sub_265C52880(uint64_t a1, uint64_t a2)
{
  *(v2 + 8) = 4096;
  *v3 = v2;
  return v4(a1, a2, 711498875, 3583466996, 4127, *(v5 - 220), 586, 2147478764);
}

uint64_t sub_265C52A38@<X0>(uint64_t a1@<X8>, uint64_t a2, unint64_t a3)
{
  v7 = *a1 + v4;
  *(a1 + 12) = v3 - 1237465654 + v4 + 17;
  return (*(v6 + 8 * ((92 * (v7 > a3)) ^ v5)))((((v3 - 1170678464) ^ 0xADAC997F) + 1369993702) ^ (v3 - 1170678464) ^ (((v3 - 1170678464) ^ 0x757412D) - 78403144) ^ (((v3 - 1170678464) ^ 0xF7FDB9FB) + 200888674) ^ (((v5 + 4460) ^ (v5 + 4577) ^ 0xA2F99ECA) + ((v3 - 1170678464) ^ 0x5EFD76CC)));
}

uint64_t sub_265C52B5C@<X0>(int a1@<W8>)
{
  v4 = (a1 + 219694318) & 0xF2E7BDF8;
  (*(v2 + 8 * (a1 + 4085)))();
  *v3 = 0;
  *v3 = 0;
  v3[1] = 0;
  v5 = (*(v2 + 8 * (v4 ^ 0x153E)))(v3);
  return v1(v5);
}

uint64_t sub_265C52C38@<X0>(uint64_t a1@<X8>)
{
  v6 = v1 + -8 - v3;
  *(a1 + -8 - v3 + v2) = *(v6 + v2);
  return (*(v5 + 8 * (((v3 - (v2 & 0xFFFFFFF8) == -8) * (v4 - 1775)) ^ v4)))(v6 - 8, v3 - (v2 & 0xFFFFFFF8) + 16);
}

uint64_t sub_265C52D60@<X0>(uint64_t a1@<X8>)
{
  *(v6 + v2) = *(a1 + v2);
  v8 = ((v2 + 1) ^ v3) == ((9 * (v1 ^ v5)) ^ (v4 + 2994));
  return (*(v7 + 8 * (((2 * v8) | (8 * v8)) ^ v1)))();
}

uint64_t sub_265C52ED8@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (38 * (v3 ^ 0xFAF) - 486)) | v3)))();
}

uint64_t sub_265C52F10()
{
  *(v6 - 136) = (v4 + 1311673958) ^ (1468321087 * (v0 ^ 0xD4EF416E));
  *(v6 - 144) = v2;
  (*(v5 + 8 * (v4 + 3843)))(v6 - 144);
  v7 = (*(v5 + 8 * (v4 ^ 0x1326)))(**(v1 + 8 * (v4 - 2581)), *(v1 + 8 * (v4 - 2541)) - 4, v3);
  v8 = ((v7 << (29 * (v4 ^ 0x87) + 116)) & 0xD7BDF4DE) + (v7 ^ 0xEBDEFA6F);
  *(v6 - 144) = v2;
  *(v6 - 136) = (v4 - 50586344) ^ (912648571 * ((~((v6 - 144) | 0x641F3957) + ((v6 - 144) & 0x641F3957)) ^ 0x472D8A9D));
  v9 = (*(v5 + 8 * (v4 ^ 0x1361)))(v6 - 144);
  return (*(v5 + 8 * ((467 * (v8 == -337708433)) ^ v4)))(v9);
}

uint64_t sub_265C5327C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (v4 ^ ((((v6 - v2) | (v2 - v6)) >= 0) * (((v2 + 1555) | 0x60) - 1606)))))();
}

uint64_t sub_265C53420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  v35 = v30 + 1797;
  v36 = *(a20 + 4);
  if (v36 >= 0x40)
  {
    v37 = 64;
  }

  else
  {
    v37 = *(a20 + 4);
  }

  v38 = *a20;
  v39 = a20[1];
  v40 = 652747349 * ((((v34 - 152) | 0x2A96BBE0412599FFLL) - ((v34 - 152) & 0x2A96BBE0412599FFLL)) ^ 0x7020101C03D6A76ALL);
  *(v34 - 152) = a20[3] + v40;
  *(v34 - 124) = v37 - v40;
  v41 = v38 ^ v40;
  *(v34 - 144) = v36 ^ v40;
  *(v34 - 128) = v40 + v30 - 1708671308;
  v42 = (v34 - 152);
  v42[4] = va;
  v42[5] = v41;
  v42[2] = v39 + v40;
  (*(v33 + 8 * (v30 | 0x9A8)))(v34 - 152, a2, a3, a4, a5, a6, a7, a8);
  (*(v33 + 8 * (v30 + 2404)))(v31, v32, 0, (&off_28778E150)[v30 - 4079] - 8, va, 44);
  v43 = *a20 + ((v30 + 1797) ^ 0x16DDu) - ((((v30 + 1121427351) & 0xBD285E2E) - 0x746366A8F6754920) & (2 * *a20)) + 0x45CE4CAB84C560E1;
  *(v34 - 160) = HIBYTE(v43) ^ 0x45;
  *(v34 - 159) = BYTE6(v43) ^ 0xCE;
  *(v34 - 158) = BYTE5(v43) ^ 0x4C;
  *(v34 - 157) = BYTE4(v43) ^ 0xAB;
  *(v34 - 156) = BYTE3(v43) ^ 0x84;
  *(v34 - 155) = BYTE2(v43) ^ 0xC5;
  *(v34 - 154) = BYTE1(v43) ^ 0x62;
  *(v34 - 153) = v43 ^ 0x75;
  *(v34 - 152) = v35 - 891395573 * ((1493567444 - ((v34 - 152) | 0x590607D4) + ((v34 - 152) | 0xA6F9F82B)) ^ 0x9CD4E790) - 1582;
  v44 = (*(v33 + 8 * (v30 + 2459)))(v34 - 152);
  return (*(v33 + 8 * ((28 * (*(v34 - 148) != 1163564281)) ^ v35)))(v44);
}

uint64_t sub_265C536C8(uint64_t a1)
{
  (*(v2 + 8 * (v1 + 1834)))();
  v5 = (*(v2 + 8 * (v1 + 1812)))(a1);
  return (*(v2 + 8 * (((((v1 - 4762) | 0x318) + 1947) * v3) ^ v1)))(v5);
}

uint64_t sub_265C53724()
{
  v4 = ((v1 << ((v0 + 63) ^ 0xEF)) & 0x67BF41F6) + (v1 ^ 0x33DFA0FB);
  v5 = (*(*v2 + v4 + ((v0 + 2797) ^ 0xCC204F99)) << 24) | (*(*v2 + (v4 - 870293754)) << 16) | (*(*v2 + (v4 - 870293753)) << 8) | *(*v2 + (v4 - 870293752));
  *(v2 + 12) = v1 + 4;
  return (*(v3 + 8 * ((26 * ((v5 ^ 0xDDEFFB67) + 1808940734 + ((2 * v5) & 0xBBDFF6CE) == 1237465637)) ^ v0)))();
}

uint64_t sub_265C537F0()
{
  *v1 = 0;
  v1[1] = 0;
  v4 = (*(v3 + 8 * (v2 ^ 0x1CE4)))(v1);
  return v0(v4);
}

uint64_t sub_265C53850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23, uint64_t a24, char a25)
{
  (*(v28 + 8 * (v29 + 5183)))(v26, a2, a3, a4, a5, a6, a7, a8);
  v31 = *v27;
  v32 = *v25;
  v33 = 1311869473 * ((v30 + 1703500089 - 2 * ((v30 - 144) & 0x658959C9)) ^ 0x8E664365);
  *(v30 - 144) = (*(v25 + 3) + 599664785 - ((2 * *(v25 + 3)) & 0x477C5122)) ^ v33;
  *(v30 - 104) = 563297187 - v33 + v31 * (v29 ^ 0x251F690E);
  *(v30 - 112) = v33 + 4215 + v29;
  *(v30 - 136) = v32;
  *(v30 - 128) = &a25;
  *(v30 - 120) = &a23;
  (*(v28 + 8 * (v29 ^ 0x1C79)))(v30 - 144);
  v34 = *(v30 - 108);
  v35 = (*(v28 + 8 * (v29 ^ 0x1C47)))(v26);
  return (*(v28 + 8 * ((6877 * (v34 == (((v29 ^ 0xF3B) - 1436432666) ^ 0xCABD781C))) ^ v29 ^ 0xF3B)))(v35);
}

uint64_t sub_265C53990()
{
  v6 = (*(v3 + 8 * (v0 ^ 0x1B2E)))(*v4);
  *v4 = v2;
  *(v4 + 8) = v1;
  return v5(v6);
}

uint64_t sub_265C539FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, int a15, uint64_t a16)
{
  v18 = (v16 + 1063815048) & 0xC0977C7A;
  v19 = (*(v17 + 8 * (v18 ^ 0x1CB)))(0, 3, &a15, a4, a5, a6, a7, a8);
  v20 = (*(v17 + 8 * (v18 ^ 0x1A6)))(*(&off_28778E150)[v18 ^ 0x1891], a16, a14);
  if (v19)
  {
    v21 = v20 == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = !v21;
  return (*(v17 + 8 * ((v22 * ((v18 - 1027) ^ 0x1471)) ^ v18)))(v20);
}

uint64_t sub_265C53B64()
{
  v5 = *(v3 + 8 * (((((v2 - 1574) | 0x1000) - 190) * v0) ^ (v2 - 2770)));
  *(v4 - 208) = v1;
  return v5();
}

uint64_t sub_265C53BDC()
{
  v6 = (*(v4 + 8 * (v0 ^ 0x120B)))(*v5);
  *v5 = v3;
  *(v5 + 8) = v2;
  return v1(v6);
}

uint64_t sub_265C53F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v41 = (v38 ^ 0xF6B7E8FFFDFFBCBFLL) + ((((v39 - 422125151) & 0x19291E5E) + 0x1FBFF6368) & (2 * v38)) + 0x94817007258F04FLL;
  v43 = v41 < 0x7058AD0A || v41 > *(a38 + 8) + 1884859658;
  return (*(v40 + 8 * ((4158 * v43) ^ (v39 - 5412))))(a1, a2, a3, a4, a5, a6, a7, a8);
}

void pduR7VAgOpwwTZi6E()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = (&off_28778E150)[(*(off_28778E480 + (*(off_28778E8C0 + (91 * ((dword_28003EDD8 - qword_28003F080) ^ 0x30))) ^ 0xB9u) - 12) ^ (91 * ((dword_28003EDD8 - qword_28003F080) ^ 0x30))) - 29];
  v1 = *(v0 - 4) - qword_28003F080 - &v4;
  v2 = (636859739 * v1) ^ 0xE2C729A08169AF30;
  v3 = 636859739 * (v1 ^ 0xE2C729A08169AF30);
  qword_28003F080 = v2;
  *(v0 - 4) = v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_265C543E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = (*(v15 + 8 * (v12 + 2875)))(a12, a11, a3, a4, a5, a6, a7, a8);
  *v13 = v16;
  return (*(v15 + 8 * (((v16 == 0) * (((v12 + 1076572728) | 0x3D041C10) ^ (v14 + v12 - 1324 + 2893))) ^ v12)))();
}

uint64_t sub_265C54448@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v6 = v2 - 1;
  *(v5 + v6) = *(a2 + v6);
  return (*(v4 + 8 * (((v6 == 0) * ((v3 ^ a1) - 1218)) ^ v3)))();
}

uint64_t sub_265C54474@<X0>(int a1@<W8>)
{
  v4 = a1 ^ 0x1B3E;
  (*(v3 + 8 * (a1 ^ 0xA8B)))();
  *v2 = 0;
  *v2 = 0;
  v2[1] = 0;
  v5 = (*(v3 + 8 * (v4 + 4499)))(v2);
  return v1(v5);
}

uint64_t sub_265C544C8(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 32);
  v3 = *result;
  v4 = *(result + 8);
  v5 = 652747349 * (((result | 0xD4D8C1C88CCFF753) - (result | 0x2B273E37733008ACLL) + 0x2B273E37733008ACLL) ^ 0x8E6E6A34CE3CC9C6);
  v6 = *(result + 16) + v5;
  *v1 = 68158466;
  *(v1 + 4) = v6;
  *(v1 + 8) = 2096;
  *(v1 + 10) = v3 + v5;
  *(v1 + 18) = 1024;
  *(v1 + 20) = v2 ^ v5;
  *(v1 + 24) = 2048;
  *(v1 + 26) = v4 ^ v5;
  return result;
}

uint64_t sub_265C5456C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  LODWORD(a10) = v37;
  HIDWORD(a35) = 224714957;
  return (*(v38 + 8 * (((*v36 == 0) * (((a9 ^ 0x2D0) + 5145) ^ (a9 - 12))) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, v39, a12, v35, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, 0, a30, a31, a32, 0, a34, a35);
}

uint64_t sub_265C545D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, int a23, char a24)
{
  (*(v28 + 8 * (v29 + 1558)))(v26, a2, a3, a4, a5, a6, a7, a8);
  v31 = *v24;
  v32 = 1311869473 * ((((v30 - 144) | 0xEF7CDC93) - (v30 - 144) + ((v30 - 144) & 0x10832368)) ^ 0x493C63F);
  v33 = -1311869473 * ((((v30 - 144) | 0xEF7CDC93) - (v30 - 144) + ((v30 - 144) & 0x10832368)) ^ 0x493C63F) + 622816387 * *v27 + 563297187;
  *(v30 - 144) = (*(v24 + 3) + 599664785 - ((*(v24 + 3) << (v29 ^ 0xB7)) & 0x477C5122)) ^ v32;
  *(v30 - 136) = v31;
  *(v30 - 128) = &a22;
  *(v30 - 120) = &a24;
  *(v30 - 104) = v33;
  *(v30 - 112) = v32 + v29 + 590;
  (*(v28 + 8 * (v29 ^ 0xA42u)))(v30 - 144);
  v34 = *(v30 - 108);
  v35 = (*(v28 + 8 * (v29 + 1556)))(v26);
  return (*(v28 + 8 * (((v34 == (v29 ^ 0x7DD) + 1625068821) * (v25 + (((v29 ^ 0x7DD) - 563090924) & 0x2BFF298F) + 143)) ^ v29 ^ 0x7DD)))(v35);
}

uint64_t sub_265C54728(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = 1864678469 * ((a1 - 2 * (a1 & 0x584957F830067B0FLL) + 0x584957F830067B0FLL) ^ 0x20B968CB03766CE6);
  v3 = *(a1 + 32) ^ v2;
  v4 = *(a1 + 4) ^ v2;
  v5 = *(a1 + 72) + v2;
  v6 = *(a1 + 44) - v2;
  v7 = *(a1 + 88) - v2;
  v8 = *(a1 + 20) ^ v2;
  v9 = *(a1 + 40) - v2;
  v10 = *(a1 + 64) + v2;
  v11 = *(a1 + 24) - v2;
  v12 = *(a1 + 48) + v2;
  v13 = *(a1 + 56) - v2;
  v14 = *(a1 + 16) ^ v2;
  v15 = *(a1 + 8) + v2;
  result = 134221058;
  *v1 = 134221058;
  *(v1 + 4) = v3;
  *(v1 + 12) = 1024;
  *(v1 + 14) = v4;
  *(v1 + 18) = 1024;
  *(v1 + 20) = v5;
  *(v1 + 24) = 1040;
  *(v1 + 26) = v6;
  *(v1 + 30) = 2096;
  *(v1 + 32) = v7;
  *(v1 + 40) = 1024;
  *(v1 + 42) = v8;
  *(v1 + 46) = 1040;
  *(v1 + 48) = v9;
  *(v1 + 52) = 2096;
  *(v1 + 54) = v10;
  *(v1 + 62) = 1024;
  *(v1 + 64) = v11;
  *(v1 + 68) = 1040;
  *(v1 + 70) = v12;
  *(v1 + 74) = 2096;
  *(v1 + 76) = v13;
  *(v1 + 84) = 1024;
  *(v1 + 86) = v14;
  *(v1 + 90) = 2048;
  *(v1 + 92) = v15;
  return result;
}

void GW9oysOw9zb8E8sQxGyy()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = (&off_28778E150)[(*(off_28778E480 + (*(off_28778E8C0 + (91 * ((dword_28003EDD8 + qword_28003F078) ^ 0x30))) ^ 0xE9u) - 12) ^ (91 * ((dword_28003EDD8 + qword_28003F078) ^ 0x30))) - 139];
  v1 = 636859739 * (&v2[*(v0 - 4) - qword_28003F078] ^ 0xE2C729A08169AF30);
  qword_28003F078 = v1;
  *(v0 - 4) = v1;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_265C54A54()
{
  *(v6 - 144) = v3;
  *(v6 - 136) = (v0 + 1311671473) ^ (1468321087 * (((v2 | 0x5D62A985) + (~v2 | 0xA29D567A)) ^ 0x898DE8EA));
  (*(v5 + 8 * (v0 ^ 0xDD2)))(v6 - 144);
  v7 = (*(v5 + 8 * (v0 + 1317)))(**(v1 + 8 * (v0 ^ 0x14CA)), *(v1 + 8 * (v0 - 5026)) - 4, v4);
  *(v6 - 136) = (v0 - 50588829) ^ (912648571 * ((~(v2 | 0xB37458C9) + (v2 & 0xB37458C9)) ^ 0x9046EB03));
  *(v6 - 144) = v3;
  v8 = (*(v5 + 8 * (v0 ^ 0xDBC)))(v6 - 144);
  return (*(v5 + 8 * (((v7 == v0 - 5227) * ((v0 - 1544632492) & 0x5C1137F6 ^ 0x101F)) ^ v0)))(v8);
}

uint64_t sub_265C54D00@<X0>(int a1@<W8>)
{
  v4 = (*(v3 - 156) | ((*(v3 - 156) < 0x49C23A25u) << 32)) + (a1 - 4243) + *(v1 + 12) + 856971676;
  v6 = v4 < ((9 * (a1 ^ 0x12ECu)) ^ 0x7CD6964EuLL) || v4 > *(v1 + 8) + 2094437908;
  return (*(v2 + 8 * ((23 * v6) ^ a1)))();
}

uint64_t sub_265C54D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v32 = v27 ^ 0x1B42;
  *(v29 + 12) = v30 - 1237467723 + (((v27 ^ 0x1B42) + 884195304) & 0xCB4C2F76) + v28;
  v33 = (*(v31 + 8 * ((v27 ^ 0x1B42) + 263)))();
  *(a27 + 24) = v33;
  return (*(v31 + 8 * (((8 * (v33 == 0)) | (16 * (v33 == 0))) ^ v32)))(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_265C550EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned int a28)
{
  v33 = v28 - 1444;
  v34 = ((v28 - 42479932) & 0x2883BCD) - 2706;
  a28 = (v28 + 1311674473) ^ (1468321087 * (((&a27 | 0xC66CE3CF) - &a27 + (&a27 & 0x39931C30)) ^ 0x1283A2A1));
  a27 = v29;
  (*(v32 + 8 * (v28 + 4358)))(&a27, a2, a3, a4, a5, a6, a7, a8);
  v35 = (*(v32 + 8 * (v33 + 5761)))(**(v31 + 8 * (v33 - 622)), *(v31 + 8 * (v33 ^ 0x3C6)) - 4, v30);
  v36 = ((v34 ^ 0xF3F77C4D) & (2 * v35)) + (v35 ^ 0xF9FBBA7F);
  a27 = v29;
  a28 = (v33 - 50584385) ^ (912648571 * (((&a27 | 0xB89A856A) - (&a27 & 0xB89A856A)) ^ 0x6457C95F));
  v37 = (*(v32 + 8 * (v33 ^ 0x1AD8)))(&a27);
  return (*(v32 + 8 * ((30 * (v36 != -100943233)) ^ v33)))(v37);
}

uint64_t sub_265C552BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  (*(v35 + 8 * (v34 + 3342)))(v32, a2, a3, a4, a5, a6, a7, a8);
  v37 = *v33;
  v38 = 1311869473 * ((~((v36 - 152) | 0xE8AAA470) + ((v36 - 152) & 0xE8AAA470)) ^ 0xFCBA4123);
  v39 = (*(v31 + 12) + 599664785 - ((*(v31 + 12) << (((v34 + 74) | 0x47) ^ 0x4E)) & 0x477C5122)) ^ v38;
  v40 = (v36 - 152);
  v40[1] = *v31;
  v40[2] = &a31;
  v40[3] = &a27;
  *(v36 - 112) = 563297187 - v38 + 622816387 * v37;
  *(v36 - 152) = v39;
  *(v36 - 120) = v38 + v34 + 2374;
  (*(v35 + 8 * (v34 + 3382)))(v36 - 152);
  v41 = *(v36 - 116);
  v42 = (*(v35 + 8 * (v34 ^ 0x1574u)))(v32);
  return (*(v35 + 8 * (((v41 == ((((v34 - 3254) | 0x347) + 1042205576) ^ 0x5EC26757)) * (((((v34 - 3254) | 0x347) + 1063181456) & 0xFEBFEEF7) - 1042206401)) ^ ((v34 - 3254) | 0x347))))(v42);
}

uint64_t sub_265C553C4@<X0>(uint64_t a1@<X8>)
{
  v8 = v4 + 32;
  v9 = ((v3 + 1692 - 4046) ^ v8) + v2;
  v10 = *(v1 + v9 - 15);
  v11 = *(v1 + v9 - 31);
  v12 = a1 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v7 + 8 * (((v5 == v8) * v6) ^ v3)))();
}

void LNrThVmoRTuqGf()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = (&off_28778E150)[(*(off_28778E268 + (*(off_28778E6F0 + (91 * (qword_28003EDC0 ^ 0x30 ^ dword_28003EDD8)) - 8) ^ 0x6Fu) - 8) ^ (91 * (qword_28003EDC0 ^ 0x30 ^ dword_28003EDD8))) - 10];
  v1 = &v4[*(v0 - 4) - qword_28003EDC0];
  v2 = 636859739 * v1 + 0x768A6804525E3610;
  v3 = 636859739 * (v1 ^ 0xE2C729A08169AF30);
  qword_28003EDC0 = v2;
  *(v0 - 4) = v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_265C555A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, unsigned int a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, int a22, int a23, uint64_t a24, unsigned int a25, uint64_t a26, char a27, uint64_t a28, int a29, int a30, char a31, int a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  v63 = a34;
  v64 = a30;
  if (a17 >= 0x40)
  {
    v65 = 64;
  }

  else
  {
    v65 = a17;
  }

  if (a25 >= 0x40)
  {
    v66 = 64;
  }

  else
  {
    v66 = a25;
  }

  v67 = 912648571 * ((~(v62 - 224) & 0x1C6D794011C8B516 | (v62 - 224) & 0xE39286BFEE374AE9) ^ 0x5CCE6BC8CD05F923);
  *(v62 - 152) = a28 ^ v67;
  *(v62 - 184) = v64 + v67;
  *(v62 - 144) = v66 + v67;
  *(v62 - 128) = a23 - v67;
  *(v62 - 124) = (a14 ^ 0x37040185) - v67;
  *(v62 - 120) = a11 ^ v67;
  *(v62 - 176) = &a55;
  *(v62 - 168) = a18 - v67;
  *(v62 - 224) = (a19 - 81) ^ v67;
  *(v62 - 220) = v67 - 901501157 + v56;
  *(v62 - 208) = v65 ^ v67;
  *(v62 - 204) = (v58 ^ 0xC4B5694D) + v67;
  *(v62 - 200) = a15 - v67;
  *(v62 - 192) = v60 - v67;
  if ((((v58 ^ 0xC350EACC) + 1018107188) ^ ((v58 ^ 0x783033F4) - 2016424948) ^ ((v55 ^ 0x802A590A) + (v58 ^ 0x7FD5B075))) - 994744052 >= 0xFFFFFFBF)
  {
    v68 = v58 ^ 0xC4B5694D;
  }

  else
  {
    v68 = 64;
  }

  if ((((a14 ^ 0x43FA2D69) - 1140469097) ^ ((a14 ^ 0xBC9E02) - 12361218) ^ ((a14 ^ 0x7442B2EEu) - 1950528238)) + 923009348 >= 0xFFFFFFBF)
  {
    v69 = a14 ^ 0x37040185;
  }

  else
  {
    v69 = 64;
  }

  *(v62 - 216) = a25 + v67;
  *(v62 - 212) = v69 + v67;
  *(v62 - 136) = v63 ^ v67;
  *(v62 - 160) = v68 + v67;
  *(v62 - 156) = a17 - v67;
  (*(v59 + 8 * (v56 ^ 0x1145)))(v62 - 224);
  (*(v59 + 8 * (v56 ^ 0x1160)))(a16, v57, 0, (&off_28778E150)[v56 ^ 0x859] - 4, &a55, 128);
  v70 = a34;
  v71 = a28;
  v72 = a30 ^ 0x77A7F76E;
  v73 = (2 * a30) & 0xEF4FEEDC;
  v74 = 1427277979 * ((~(v62 - 224) & 0x181FE86E3E6B429BLL | (v62 - 224) & 0xE7E01791C194BD64) ^ 0x3E752FD86E3A0FF3);
  *(v62 - 120) = a18;
  *(v62 - 112) = &a31;
  *(v62 - 220) = -101 * ((~(v62 + 32) & 0x9B | (v62 + 32) & 0x64) ^ 0xF3) + 83 * a19 - 58;
  *(v62 - 224) = v74 + v55 - 540;
  *(v62 - 192) = v74 + v72 + v73 - 637693952;
  *(v62 - 176) = v74 + 0x56E9EE0FB6C65CBDLL * v70 + ((2 * (v55 ^ 0x102Eu)) ^ 0x706969559327E326);
  *(v62 - 168) = &a27;
  *(v62 - 152) = 0x54799400B27E420BLL;
  *(v62 - 184) = a11;
  *(v62 - 128) = a25 - v74 - ((2 * a25) & 0xC97F5FD6) - 457199637;
  *(v62 - 216) = ((((v58 ^ 0xA19A50BA) + 1583722310) ^ ((v58 ^ 0xE5D175E1) + 439257631) ^ ((v58 ^ 0x80FE5A8C ^ ((v55 ^ 0x102E) + 4075)) + 2130818026)) + 1057054463) ^ v74;
  *(v62 - 219) = ((a23 ^ 0x3F) + 2 * a23 - 57) ^ (-101 * ((~(v62 + 32) & 0x9B | (v62 + 32) & 0x64) ^ 0xF3));
  *(v62 - 144) = &a33;
  *(v62 - 136) = a15;
  *(v62 - 104) = v74 + (((a14 ^ 0x9E5E6E5A) + 1637978534) ^ ((a14 ^ 0xCD8DB99) - 215538585) ^ ((a14 ^ 0xA582B446) + 1518160826)) - 1320159433;
  *(v62 - 100) = v74 + (a17 ^ 0xFFDFFFF3) + ((2 * a17) & 0xFFBFFFE6) + 2053895615;
  *(v62 - 208) = v71;
  *(v62 - 200) = v60;
  v75 = (*(v59 + 8 * (v55 + 800)))(v62 - 224);
  return (*(v59 + 8 * ((27 * (*v61 != 0)) ^ v55)))(v75);
}

uint64_t sub_265C55A9C(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  v9 = (*(v8 - 156) | ((*(v8 - 156) < 0x49C23A25u) << 32)) + *(v5 + 12) + a3;
  v11 = v9 < 0xF72383C4 || v9 > *(v5 + 8) + 4146299324 + (((v4 + v6) | a2) + 373);
  return (*(v7 + 8 * ((v11 * a4) ^ v4)))(a1);
}

void sub_265C55C34(uint64_t a1)
{
  v1 = *(a1 + 16) - 1864678469 * (((a1 | 0xB68E10F7) - a1 + (a1 & 0x4971EF08)) ^ 0x85FE071E);
  __asm { BRAA            X9, X17 }
}

void sub_265C55CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned int a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a28 >= 0x40)
  {
    v49 = 64;
  }

  else
  {
    v49 = a28;
  }

  v50 = 1311869473 * ((v48 - 224) ^ 0xB3AFD755EBEF1AACLL);
  *(v48 - 216) = v49 - v50;
  *(v48 - 192) = a29 + v50;
  *(v48 - 184) = a28 ^ v50;
  *(v48 - 208) = a25 ^ v50;
  *(v48 - 200) = &a45;
  *(v48 - 224) = v46 - v50 - 1237465637;
  *(v48 - 220) = (v45 + 2118006523) ^ v50;
  (*(v47 + 8 * (v45 + 4420)))(v48 - 224, a2, a3, a4, a5, a6, a7, a8);
  JUMPOUT(0x265C55DBCLL);
}

uint64_t sub_265C55EDC()
{
  v4 = v0 - 3154;
  (*(v3 + 8 * (v0 ^ 0xAAA)))();
  *v2 = 0;
  *v2 = 0;
  v2[1] = 0;
  v5 = (*(v3 + 8 * (v4 + 4844)))(v2);
  return v1(v5);
}

void i2DzSgbBIIe95gyG0gW()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = (&off_28778E150)[(*(off_28778E490 + (*(off_28778E720 + (91 * (qword_28003EEC0 ^ 0x30 ^ dword_28003EDD8)) - 4) ^ 0x1Du) - 12) ^ (91 * (qword_28003EEC0 ^ 0x30 ^ dword_28003EDD8))) - 103];
  v1 = &v4[*(v0 - 4) - qword_28003EEC0];
  v2 = 636859739 * (v1 + 0x1D38D65F7E9650D0);
  v3 = 636859739 * (v1 ^ 0xE2C729A08169AF30);
  qword_28003EEC0 = v2;
  *(v0 - 4) = v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_265C56184@<X0>(int a1@<W8>)
{
  v3 = (a1 + 2418) | 0x4A8;
  v4 = ((2 * *(v1 + 12)) & 0x1BF2B9FD2) + ((1049 * (v3 ^ 0x16BEu) - 0x14208A00206A3849) ^ *(v1 + 12)) + 0x14208A011A058427;
  v6 = v4 < 0xF99B540C || v4 > *(v1 + 8) + 4187706380u;
  return (*(v2 + 8 * ((v6 * (((v3 + 436094786) & 0xE601A3A5) - 311)) ^ v3)))();
}

uint64_t sub_265C56314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22)
{
  v24 = (*(v23 + 8 * (v22 + 5625)))(a20, a19, a3, a4, a5, a6, a7, a8);
  *a22 = v24;
  return (*(v23 + 8 * (((v24 == 0) * ((v22 + 1873) ^ 0x8FF ^ ((v22 + 105) | 0x80))) ^ v22)))();
}

uint64_t sub_265C56434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13)
{
  v14 = (*(v13 + 52864))(a12, a11, a3, a4, a5, a6, a7, a8);
  *a13 = v14;
  return (*(v13 + 8 * ((57 * (v14 != 0)) ^ 0xBD7u)))();
}

uint64_t sub_265C564BC(int a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = ((2 * a1) & 0x7FFF55D6) + (a1 ^ 0xBFFFAAEB);
  v9 = (*(*v6 + v8 + 1073763605) << 24) | (*(*v6 + v8 + 1073763606) << 16) | (*(*v6 + ((a4 + 98 * ((v7 - 1086642495) & 0x6EDDDBA7 ^ 0xAE191BBC) + 966) ^ 0xEE194EB0) + v8) << 8) | *(*v6 + v8 + 1073763608);
  *v4 = (v9 ^ 0xDDEFFB67) + 1808940734 + ((2 * v9) & 0xBBDFF6CE);
  *(v6 + 12) += 4;
  return v5();
}

uint64_t sub_265C565B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7 + v2) = *(a2 + v7);
  return (*(v6 + 8 * ((63 * (((v7 == 0) ^ v5) & 1)) ^ v3)))();
}

uint64_t sub_265C56614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(v22 - 208) = 0;
  HIDWORD(a19) = 1237422987;
  return (*(v21 + 8 * (((((v19 + 289524612) & 0xEEBE3DFD) + ((v19 + 714450729) & 0xD56A5BDD) - 10896) * (v20 == 0)) ^ v19)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

void juogUSaOZerv4A()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = (&off_28778E150)[(*(off_28778E480 + (*(off_28778E8C0 + (91 * ((dword_28003EDD8 + qword_28003EDD0) ^ 0x30))) ^ 0x30u) - 12) ^ (91 * ((dword_28003EDD8 + qword_28003EDD0) ^ 0x30))) + 26];
  v1 = &v4[*(v0 - 4) ^ qword_28003EDD0];
  v2 = 636859739 * v1 + 0x768A6804525E3610;
  v3 = 636859739 * (v1 ^ 0xE2C729A08169AF30);
  qword_28003EDD0 = v2;
  *(v0 - 4) = v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_265C568B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, unint64_t a21, char *a22)
{
  v29 = 583883621 * ((~&a19 & 0x3EF681C511B61ADLL | &a19 & 0xFC1097E3AEE49E52) ^ 0xF8441EA6F028BD02);
  v30 = (*(v25 + 4) - v22) * (v24 - 1712263671) - v29 - 659276843;
  a21 = *(v25 + 8) ^ v29;
  a22 = &a13;
  a19 = (v24 + 273733054) ^ v29;
  a20 = v30;
  (*(v27 + 8 * (v24 + 1967)))(&a19, a2, a3, a4, a5, a6, a7, a8);
  v31 = (*(v27 + 8 * (v24 + 1898)))(a10, v23, 0, *(v26 + 8 * (v24 - 4434)) - 12, &a13, 18);
  return (*(v27 + 8 * (((*v28 != 0) * (3 * (v24 ^ 0x1422) - 4586)) ^ v24)))(v31);
}

void sub_265C56A9C(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(a10 + 24) ^ a7;
  v12 = (v11 ^ 0x303A5E81E98703FFLL) & (2 * (v11 & 0xB13A9E840C0713FFLL)) ^ v11 & 0xB13A9E840C0713FFLL;
  v13 = ((2 * (v11 ^ 0x727E6389F98B06C1)) ^ 0x8689FA1BEB182A7CLL) & (v11 ^ 0x727E6389F98B06C1) ^ (2 * (v11 ^ 0x727E6389F98B06C1)) & ((a1 + 4048) ^ 0xC344FD0DF58C0461);
  v14 = v13 ^ 0x4144050414841502;
  v15 = (v13 ^ 0x8000F8006008003CLL) & (4 * v12) ^ v12;
  v16 = ((4 * v14) ^ 0xD13F437D63054F8) & v14 ^ (4 * v14) & 0xC344FD0DF58C153CLL;
  v17 = (v16 ^ 0x100F405D4001430) & (16 * v15) ^ v15;
  v18 = ((16 * (v16 ^ 0xC2440908218C0106)) ^ 0x344FD0DF58C153E0) & (v16 ^ 0xC2440908218C0106) ^ (16 * (v16 ^ 0xC2440908218C0106)) & 0xC344FD0DF58C1530;
  v19 = (v18 ^ 0x44D00D50801100) & (v17 << 8) ^ v17;
  v20 = (((v18 ^ 0xC3002D00A50C041ELL) << 8) ^ 0x44FD0DF58C153E00) & (v18 ^ 0xC3002D00A50C041ELL) ^ ((v18 ^ 0xC3002D00A50C041ELL) << 8) & 0xC344FD0DF58C1500;
  v21 = v19 ^ 0xC344FD0DF58C153ELL ^ (v20 ^ 0x40440D0584040000) & (v19 << 16);
  v22 = v11 ^ (2 * ((v21 << 32) & 0x4344FD0D00000000 ^ v21 ^ ((v21 << 32) ^ 0x758C153E00000000) & (((v20 ^ 0x8300F0087188013ELL) << 16) & 0x4344FD0D00000000 ^ 0x240080100000000 ^ (((v20 ^ 0x8300F0087188013ELL) << 16) ^ 0x7D0DF58C00000000) & (v20 ^ 0x8300F0087188013ELL))));
  *(v10 - 152) = HIBYTE(v22) ^ 0xB5;
  *(v10 - 151) = BYTE6(v22) ^ 0xBB;
  *(v10 - 150) = BYTE5(v22) ^ 0x4E;
  *(v10 - 149) = BYTE4(v22) ^ 0x87;
  *(v10 - 148) = BYTE3(v22) ^ 0xE7;
  *(v10 - 147) = BYTE2(v22) ^ 0x1F;
  *(v10 - 146) = BYTE1(v22) ^ 0x39;
  *(v10 - 145) = v22 ^ 0x83;
  JUMPOUT(0x265C56DF8);
}

uint64_t sub_265C56F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = (*(v14 + 8 * (v15 ^ 0x1372)))(a13, a12, a3, a4, a5, a6, a7, a8);
  *v13 = v16;
  return (*(v14 + 8 * (((v16 == 0) * (((6 * (v15 ^ 0x8CC)) ^ 0xFFFFE3E6) + ((v15 + 1954) | 0x480))) ^ v15)))();
}

uint64_t sub_265C56FD4@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W2>, unsigned int a4@<W3>, int a5@<W4>, char a6@<W5>, char a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  v19 = a1 < a4;
  v20 = *v16;
  v21 = *(*(v11 + 8) + 4 * (v9 + v12));
  v22 = v21 + a3 - (a2 & (2 * v21));
  v23 = (((a9 - 3169) ^ v14) & (2 * v10)) + (v10 ^ v13) + a5;
  *(*v16 + v23) = a6 ^ HIBYTE(v22);
  *(v20 + v23 + 1) = BYTE2(v22) ^ 0xFE;
  *(v20 + v23 + 2) = BYTE1(v22) ^ 0x30;
  *(v20 + v23 + 3) = v22 ^ a7;
  *v18 += 4;
  if (v19 == v9 + v15 < a4)
  {
    v19 = v9 + v15 < a1;
  }

  return (*(v17 + 8 * ((!v19 * a8) ^ a9)))();
}

uint64_t sub_265C5708C@<X0>(int a1@<W8>, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v25 = 10 * (v21 ^ 0x7C2);
  v26 = 891395573 * ((1591045974 - ((v24 - 224) | 0x5ED56F56) + ((v24 - 224) | 0xA12A90A9)) ^ 0x9B078F12);
  *(v24 - 224) = a1 - v26 - ((2 * a1) & 0x4849C968) + 606397620;
  *(v24 - 220) = v21 - v26 + 645;
  *(v24 - 216) = ((((v23 ^ 0x8E304637) + 1909438921) ^ ((v23 ^ 0xC1F3DBC1) + 1040983103) ^ ((v23 ^ v25 ^ 0x835A4164) + 2091233634)) - 75193928) ^ v26;
  *(v24 - 208) = a2;
  *(v24 - 200) = &a21;
  *(v24 - 192) = &a18;
  v27 = (*(v22 + 8 * (v21 ^ 0x1FBF)))(v24 - 224);
  return (*(v22 + 8 * (((*(v24 - 184) == 1237465637) * (v25 - 2375 + ((v25 + 121761125) & 0xF8BE0EA8) + 3365)) ^ v25)))(v27, a3);
}

uint64_t sub_265C57200(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  (*(v24 + 8 * (v20 + a3)))(*v21, a2);
  *v21 = v23;
  *(v21 + 8) = v22;
  return v25(4423, a20, a19);
}

uint64_t sub_265C57380@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = (a1 + 1183772602) & 0xB9711EEF;
  *(v17 - 200) = 0;
  v19 = (*(v16 + 8 * (v18 ^ 0x922)))(16, 3886098504);
  return (*(v16 + 8 * (((v19 != 0) * (v18 - 10220 + ((v18 - 2244) | 0x10C3))) ^ v18)))(v19, v20, v21, v22, v23, v24, v25, v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_265C5743C()
{
  v6 = *(v13 + 32);
  if (v6 >= 0x40)
  {
    v7 = 64;
  }

  else
  {
    v7 = *(v13 + 32);
  }

  v8 = 912648571 * ((((v5 - 152) | 0xF94C89B691E8811DLL) - (v5 - 152) + ((v5 - 152) & 0x6B376496E177EE0)) ^ 0xB9EF9B3E4D25CD28);
  v9 = *(v13 + 24) ^ v8;
  v10 = (v5 - 152);
  v10[2] = *v13 - v8;
  v10[3] = v9;
  *(v5 - 144) = (v1 - 1476600002) ^ v8;
  *(v5 - 140) = v6 - v8;
  v10[4] = v14;
  *(v5 - 152) = v0 - v8 + ((v1 + 1272009947) ^ 0xFDECA672);
  *(v5 - 148) = v7 + v8;
  (*(v4 + 8 * (v1 + 2851)))(v5 - 152);
  (*(v4 + 8 * (v1 ^ 0x1766)))(v12, v3, 0, (&off_28778E150)[v1 ^ 0xE59] - 12, v14, 40);
  return (v2 + v0 + 2086);
}

uint64_t sub_265C57678()
{
  v4 = (*(v2 + 52864))(v0, v1);
  *v3 = v4;
  return (*(v2 + 8 * ((1853 * (v4 == 0)) ^ 0x854)))();
}

uint64_t sub_265C577E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  (*(v26 + 8 * (v22 + 5389)))(*v23, a2, a3, a4, a5, a6, a7, a8);
  *v23 = v27;
  *(v23 + 8) = v24;
  return v25(1503803381, 1237465637, 2147482379, 5982, 1256, 197, 957, a22);
}

uint64_t sub_265C57858()
{
  v3 = (*(v1 + 12) ^ 0xCFF3FDDDDDBDF7DFLL) + ((*(v1 + 12) << (((v0 + 1) & 0xFBu) + 48)) & 0x1BB7BEFBELL) + 0x300C0223032B7B13;
  v5 = v3 < 0xE0E972EE || v3 > ((v0 - 309909266) & 0x1278D73D ^ 0xE0E966EELL) + *(v1 + 8);
  return (*(v2 + 8 * ((2004 * v5) ^ v0)))();
}

uint64_t sub_265C579F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, uint64_t a4@<X8>)
{
  v10 = ~a2 + v4;
  v11 = *(a4 + v10 - 15);
  v12 = *(a4 + v10 - 31);
  v13 = a1 + v10 + v5;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v9 + 8 * (((a2 + v7 - 3844 != v6) * a3) ^ v8)))();
}

uint64_t sub_265C57A50@<X0>(uint64_t a1@<X8>)
{
  v5 = (a1 + v2 - 16);
  v6 = (v1 + v2 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v4 + 8 * ((((v2 & 0xFFFFFFE0) == 32) * (v3 + 5068)) ^ v3)))();
}

uint64_t sub_265C57C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, int a19)
{
  if (v20)
  {
    v23 = a19 == -1998276698;
  }

  else
  {
    v23 = 1;
  }

  v25 = !v23 && v21 == a2;
  return (*(v19 + 8 * ((v25 * a17) ^ (*(v22 - 196) + 508))))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_265C57D64()
{
  v4 = (v0 - 1104300741) & 0x41D25F68;
  *(v1 + 8) = *(v3 - 180);
  *(v1 + 12) = 0;
  v5 = (*(v2 + 8 * (v4 ^ 0xED5)))(*(&off_28778E150)[v4 ^ 0x1707], *(v3 - 192), *(v3 - 180));
  return (*(v2 + 8 * ((v4 - 5663 + 9 * (v4 ^ 0x16D6) + 2817) ^ (v4 - 4710))))(v5);
}

uint64_t sub_265C57E24@<X0>(uint64_t a1@<X8>)
{
  v10 = v4 + v6 + (v3 & v5);
  *(a1 + v10 + v1) = *(v8 + v10);
  return (*(v9 + 8 * (((v10 != 0) * v7) ^ v2)))();
}

uint64_t sub_265C57F20(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 + 1564)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * ((v4 == 0) | v1)))();
}

uint64_t sub_265C57F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  *(v51 - 160) = BYTE4(a24);
  *(v51 - 159) = a24;
  *(v51 - 158) = BYTE4(a23);
  *(v51 - 157) = a16;
  *(v51 - 156) = a23;
  *(v51 - 155) = BYTE4(a22);
  *(v51 - 154) = a22;
  *(v51 - 153) = BYTE4(a21);
  HIDWORD(a45) = 800366813;
  return (*(v50 + 8 * ((((*(*(v51 - 216) + 12) ^ 0x5CFFFEFEBDF8FFFFLL) + 8 + ((2 * *(*(v51 - 216) + 12)) & 0x17BF1FFFEuLL) - 0x5CFFFEFEBDF8FFFFLL < 0xFFFFFFFB) * (((v49 - 9) | 1) + 3129)) ^ (v49 + 650))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, v51 - 160, 8, a38, a39, *(v51 - 216) + 12, a41, a42, a43, a44, a45, a46, a47, *(v50 + 8 * v49), a49, *(v51 - 216));
}

uint64_t sub_265C57FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(void, uint64_t, uint64_t, uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17)
{
  (*(v21 + 8 * (v17 + 4804)))(*v18, a2, a3, a4, a5, a6, a7, a8);
  *v18 = v20;
  *(v18 + 8) = v19;
  return a12(a17, a14, a13, a15);
}

uint64_t sub_265C58034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = ((v10 << 56) + (a2 << 48) + (a3 << (((v11 + 77) & 0x9E) + ((v11 + 115) | 0xACu) - 35)) + (a4 << 32) + (a5 << 24) + (a7 << 16)) | (a8 << 8);
  v17 = ((v16 - 0x294C448F557BALL - (v14 & (2 * v16))) ^ v13) & ((v9 + v15 - (a6 & (2 * v9))) ^ 0xE4EB862DE0E1062BLL) ^ (v9 + v15 - (a6 & (2 * v9))) & 0x1040990000021F2;
  return (*(v12 + 8 * ((3723 * ((((v17 ^ 0xA3804071715A453CLL) + 0x3FE0FB401534AECLL) ^ ((v17 ^ 0x514D46669B412A1ELL) - 0xECCF65C14B7DA36) ^ ((v17 ^ 0xB930C9C9C52790FFLL) + 0x194E860CB52E9F29)) + 0x147C7FE4A0CA0FF5 < 0x16)) ^ (v11 + 1079))))(((a9 - ((2 * a9) & 0x8B9C9957098AC4EALL) + 0x45CE4CAB84C56275) >> 16) ^ 0xFFFFFFC5, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_265C581E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = (v13 - v12 - 3101) ^ 0x4BD16D67;
  v17 = (*(v15 + 8 * (v13 + 3241)))(a12, a11, a3, a4, a5, a6, a7, a8);
  *v14 = v17;
  return (*(v15 + 8 * (((v17 == 0) * (v16 - 3133)) ^ v13)))();
}

uint64_t sub_265C582E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, int a32, char *a33, int *a34, unint64_t a35, int a36, uint64_t *a37, char *a38, unint64_t a39, int *a40)
{
  v47 = v40 ^ 0x1C76;
  if (v42 >= 0x40)
  {
    v48 = 64;
  }

  else
  {
    v48 = v42;
  }

  v49 = 1468321087 * (((&a31 | 0x2E4F32C55154D13CLL) - (&a31 & 0x2E4F32C55154D13CLL)) ^ 0x7B84DBAA85BB9052);
  a37 = (a17 - v49);
  a38 = &v41[v49];
  a33 = &a24;
  a34 = (a18 ^ v49);
  a36 = (v45 - 1547552730 + v47) ^ v49;
  LODWORD(a35) = v46 - v49;
  HIDWORD(a35) = v42 ^ v49;
  a31 = v48 ^ v49;
  a32 = v40 - v49 + 1813856635;
  (*(v44 + 8 * (v40 ^ 0x12DCu)))(&a31, a2, a3, a4, a5, a6, a7, a8);
  (*(v44 + 8 * (v40 + 4373)))(a10, v43, 0, (&off_28778E150)[v40 ^ 0x834u] - 12, &a24, 56);
  v50 = 583883621 * ((&a31 - 2 * (&a31 & 0x5C63619420163236) + 0x5C63619420163236) ^ 0xA7C8172E8125EE99);
  LODWORD(a38) = (v42 ^ 0xAFB5ECFD) - v50 + ((2 * v42) & 0x5F6BD9FA) + ((31 * (v40 ^ 0x83A)) ^ 0x7FFEA7AF);
  a37 = &a16;
  a33 = v41;
  a34 = &a14;
  a31 = (v45 - 117725124) ^ v50;
  a32 = (v46 ^ 0x75F97F75) - v50 + (v40 ^ 0xDF3FD32D);
  a35 = v50 + a18 - ((2 * a18) & 0x426537F0F2C82FC4) - 0x5ECD6407869BE81ELL;
  a39 = (a17 ^ 0x7ED79FF0DF6FC9BBLL) - v50 + ((2 * a17) & 0xFDAF3FE1BEDF9376) - 0x1A8304F000284800;
  a40 = &a15;
  a36 = (v47 + 1098) ^ v50;
  v51 = (*(v44 + 8 * (v40 ^ 0x1293)))(&a31);
  if (a16)
  {
    v52 = a14 == 0;
  }

  else
  {
    v52 = 1;
  }

  v54 = v52 || a15 == 0;
  return (*(v44 + 8 * ((485 * v54) ^ v47)))(v51);
}

uint64_t sub_265C5858C()
{
  v4 = *(v2 + 12) + v1 + ((v0 - 191) ^ 0xFFFFFFFFC65A3C00) + ((v1 < 252 * (v0 ^ 0x5AEu) + 1237464377) << 32);
  v6 = v4 < 0x101C7311 || v4 > *(v2 + 8) + 270299921;
  return (*(v3 + 8 * ((67 * v6) ^ v0)))();
}

uint64_t sub_265C58604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  v35 = (*(v34 + 8 * (v33 + 5902)))(v32, a2, a3, a4, a5, a6, a7, a8);
  *a31 = 0;
  return v31(v35);
}

uint64_t sub_265C58648(uint64_t a1)
{
  v5 = v2 | 0x11A0;
  v6 = (v2 | 0x11A0) - 2632;
  v7 = *(v3 + 8 * ((v2 | 0x11A0) ^ 0xE57));
  v7(v4, @"sPJ8AGu5PT", a1);
  (*(v3 + 8 * (v5 + 550)))(a1);
  v9 = *(v3 + 8 * ((((*(v3 + 8 * (v5 + 560)))(v1, &STACK[0x230], 16) == 0) * (v5 - 9457 + v6)) ^ v5));
  return v9();
}

uint64_t sub_265C586DC@<X0>(int a1@<W2>, int a2@<W3>, int a3@<W4>, uint64_t a4@<X8>)
{
  v8 = v4 - 1;
  *(v6 + v8) = *(a4 + v8);
  return (*(v7 + 8 * (((v8 == 0) * ((v5 + a1) & a2 ^ a3)) ^ v5)))();
}

uint64_t sub_265C58718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = (*(v13 + 52864))(a12, a11, a3, a4, a5, a6, a7, a8);
  *v14 = v15;
  return (*(v13 + 8 * ((7149 * (v15 == 0)) ^ v12)))();
}

uint64_t sub_265C58758(int a1)
{
  v5 = v2 ^ v1;
  v7 = v3 < 0x20 || v5 < (a1 + 1819) - 5819;
  return (*(v4 + 8 * ((85 * ((a1 ^ 0xD3 ^ v7) & 1)) | a1)))();
}

uint64_t sub_265C587D4@<X0>(uint64_t a1@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v1 + v6);
  return (*(v5 + 8 * ((15 * (v6 != v4 - 555)) ^ v2)))();
}

uint64_t sub_265C58948(uint64_t a1)
{
  (*(v2 + 8 * (v1 + 4934)))();
  v4 = (*(v2 + 8 * (v1 ^ 0x1F30)))(a1);
  return (*(v2 + 8 * (((*((&off_28778E150)[((v1 + 719271715) & 0xD520CA7B) - 1972] - 4) == 0) * (((v1 + 719271715) & 0xD520CA7B) - 534)) ^ (v1 + 719271715) & 0xD520CA7B)))(v4, v5, v6, v7);
}

uint64_t sub_265C589BC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v26 = *(a21 + 40);
  v27 = (v23 ^ 0xB63DC603) + a1;
  *(v21 + 12) = v27 + v22;
  v28 = (*(v24 + 8 * (v23 + 5622)))(v27, 3886098504);
  *v26 = v28;
  v29 = *(v24 + 8 * (((v28 == 0) * ((v23 ^ 0x115D) - 4679)) ^ v23));
  *(v25 - 208) = v21;
  return v29(v28, v30, v31, v32, v33, v34);
}

uint64_t sub_265C58D20()
{
  v3 = (*(v1 + 12) ^ 0xFEDEFAFFEFEBEF7DLL) + ((*(v1 + 12) << (v0 ^ 0xE9u)) & 0x1DFD7DEFALL) + 0x1210500F81DA251;
  v5 = v3 >= (v0 - 2152) + 3892940362u && v3 <= *(v1 + 8) + 3892941258u;
  return (*(v2 + 8 * (v0 ^ (16 * v5))))();
}

void sub_265C58DE4(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 12) ^ (1864678469 * ((((2 * a1) | 0x17D2237A) - a1 - 199823805) ^ 0x38990654));
  v4 = v1 - 1427277979 * ((((&v3 | 0xB32EE74A) ^ 0xFFFFFFFE) - (~&v3 | 0x4CD118B5)) ^ 0x1C8055DD) - 112;
  v3 = 0;
  v2 = (&off_28778E150)[v1 ^ 0xAC3] - 8;
  (*&v2[8 * v1 + 31024])(&v3);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_265C59060@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((5249 * (v5 == ((32 * v3) ^ 0x1A620))) ^ v3)))();
}

uint64_t sub_265C590A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  (*(v3 + 8 * (v2 + 4127)))(a2);
  *a1 = 0;
  return sub_265C4D548(a1);
}

uint64_t sub_265C591FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned int a28)
{
  (*(v29 + 8 * (v28 ^ 0x1D7)))(a12, @"ag9jz", a1, a4, a5, a6, a7, a8);
  (*(v29 + 8 * (v28 ^ 0x1FE)))(a1);
  v31 = (*(v29 + 8 * (v28 ^ 0x1F0)))(*(&off_28778E150)[v28 ^ 0x18C7], a25, a28) == 0;
  return (*(v29 + 8 * ((v31 * ((245 * (v28 ^ 0x182B) + 56) ^ (v28 - 4473))) ^ v28)))();
}

uint64_t sub_265C592A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _DWORD *a30)
{
  v35 = *(a5 + 80);
  v36 = (v30 - 1019) | 0x129E;
  *a30 = v31;
  *v35 = (v36 + *(v34 - 200) - 1237471459);
  return (*(v33 + 8 * (((v32 == 0) * ((((v36 - 1739135719) & 0x67A904BB) + 5022) ^ (v36 - 601))) ^ v36)))(a1, a2, a3, a4);
}

uint64_t sub_265C595A0()
{
  result = (*(v3 + 8 * (v1 ^ 0x1F55)))();
  *(v0 + 16) = v2;
  return result;
}

uint64_t sub_265C59928@<X0>(uint64_t a1@<X8>)
{
  v4 = a1 != 0;
  if (*(v3 - 180) != ((v1 - 4376) ^ 0x49C23C34))
  {
    v4 = 0;
  }

  return (*(v2 + 8 * ((7 * v4) ^ v1)))();
}

uint64_t sub_265C59A24()
{
  v5 = *(v3 + 8 * (((*v1 == 0) * (v0 - 8716 + ((v0 + 29) | 0x12))) ^ v0));
  *(v4 - 204) = v2;
  return v5();
}

uint64_t sub_265C59A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  HIDWORD(v21) = v9 - 5004;
  LODWORD(v21) = v9 - 5022;
  LODWORD(v20) = v9 ^ 0x1644;
  HIDWORD(v20) = v9 ^ 0xD3;
  HIDWORD(a9) = (v9 ^ 0x1644) - 1466076099;
  v11 = (*(v10 + 8 * (v9 ^ 0xDA6)))(16, 3886098504, a3, a4, a5, a6, a7, a8);
  return (*(v10 + 8 * (((v11 == 0) * ((v9 + 1100) ^ 0x18B7)) ^ (v9 - 1360))))(v11, v12, v13, v14, v15, v16, v17, v18, a9, v20, v21);
}

uint64_t sub_265C59B58@<X0>(uint64_t a1@<X8>)
{
  v10 = ~v5 + v2;
  v11 = *(v1 + v10 - 15);
  v12 = *(v1 + v10 - 31);
  v13 = a1 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v9 + 8 * (((v5 + v7 + v4 == v3) * v8) ^ v6)))();
}

uint64_t sub_265C59BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  (*(v27 + 8 * (v28 + 4875)))(a11, @"DD04WvpO", v26, a4, a5, a6, a7, a8);
  v29 = (*(v27 + 8 * (v28 + 4834)))(v26);
  return (*(v27 + 8 * (((a26 == 0) * ((v28 - 1162770674) & 0x454E7F65 ^ ((v28 - 1765) | 0x1440) ^ 0x1921)) | v28)))(v29);
}

uint64_t sub_265C59E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unint64_t a34, uint64_t a35, _DWORD *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t *a41)
{
  v44 = (v41 - 3105) | 0x1081;
  v45 = *a41;
  v46 = ((v43 ^ 0x6077967B) - 440165321) ^ v43 ^ ((v43 ^ 0x6F34CEDB) - 360659817) ^ ((v43 ^ 0xAAD772FD) + 795048113) ^ ((v43 ^ 0xDFDFDFEF) + 1517016483);
  v47 = (*a36 ^ 0xEAFA7439 ^ ((v44 - 6001) | 0x802)) + ((2 * *a36) & 0xD5F4FADE) + 352682641;
  *(*a41 + v47) = HIBYTE(v46) ^ 0x7A;
  *(v45 + v47 + 1) = BYTE2(v46) ^ 0x4B;
  *(v45 + v47 + 2) = ((((v43 ^ 0x967B) - 25545) ^ v43 ^ ((v43 ^ 0xCEDB) - 15209) ^ ((v43 ^ 0x72FD) + 30897) ^ ((v43 ^ 0xDFEF) - 10845)) >> 8) ^ 0xF5;
  *(v45 + v47 + 3) = ((v43 ^ 0x7B) + 55) ^ v43 ^ ((v43 ^ 0xDB) - 105) ^ ((v43 ^ 0xFD) - 79) ^ ((v43 ^ 0xEF) - 93) ^ 0xB2;
  v48 = (*a36 + 4);
  *a36 = v48;
  return (*(v42 + 8 * ((417 * (a34 > *a41 + ((2 * v48) & 0xE7D576F6) + (v48 ^ 0xBFFFF7FD73EABB7BLL) + 0x400008028C154485)) ^ v44)))();
}

uint64_t sub_265C5A06C()
{
  (*(v2 + 8 * (v0 ^ 0xF95)))();
  *v1 = 0;
  return sub_265C5A094();
}

uint64_t sub_265C5A094()
{
  *v0 = 0;
  v0[1] = 0;
  v4 = (*(v3 + 8 * (v2 ^ 0x1FC8)))(v0);
  return v1(v4);
}

uint64_t sub_265C5A114()
{
  v5 = (*(v2 + 8 * (v0 + 4423)))(v3, v4);
  *v1 = v5;
  return (*(v2 + 8 * (((v5 != 0) * (((v0 + 262571378) & 0x1F5D) - 3414)) ^ v0)))();
}

uint64_t sub_265C5A1B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 + 644;
  (*(v4 + 8 * (v2 ^ 0x17C3)))(a2);
  *a1 = 0;
  *a1 = 0;
  a1[1] = 0;
  v7 = (*(v4 + 8 * (v5 ^ 0x94F)))();
  return v3(v7);
}

uint64_t sub_265C5A2F4@<X0>(uint64_t a1@<X8>)
{
  v5 = ((v3 - 848) ^ 0xFFFFFFFFFFFFF2BBLL) + v2;
  v6 = *(v1 + v5 - 15);
  v7 = *(v1 + v5 - 31);
  v8 = a1 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((2137 * ((v2 & 0xFFFFFFE0) == 32)) ^ (v3 - 3436))))();
}

uint64_t sub_265C5A350()
{
  (*(v4 + 8 * ((v2 ^ 0x1144) + 2459)))(v0);
  v6 = *v1;
  v7 = *v3;
  v8 = 1311869473 * ((((v5 - 144) | 0x66AD4CF8) - ((v5 - 144) & 0x66AD4CF8)) ^ 0x8D425654);
  *(v5 - 144) = (*(v3 + 3) + 599664785 - ((2 * *(v3 + 3)) & 0x477C5122)) ^ v8;
  *(v5 - 120) = v5 - 196;
  *(v5 - 136) = v7;
  *(v5 - 128) = v5 - 176;
  *(v5 - 112) = v8 + (v2 ^ 0x1144) + 1491;
  *(v5 - 104) = 563296814 - v8 + v2 + 622816387 * v6;
  (*(v4 + 8 * (v2 ^ 0x1881)))(v5 - 144);
  v9 = *(v5 - 108);
  v10 = (*(v4 + 8 * ((v2 ^ 0x1144) + 2457)))(v0);
  return (*(v4 + 8 * (((v9 == 1625074048) * ((v2 ^ 0xFCD) + 1796)) ^ v2)))(v10);
}

uint64_t sub_265C5A4C8()
{
  v5 = v1 - 656;
  v7 = v2 < 0x20 || (v0 ^ v3) < 8;
  return (*(v4 + 8 * ((((v5 + 1808) ^ 0xE22) * v7) | v5)))();
}

uint64_t sub_265C5A5C8()
{
  (*(v4 + 8 * (v1 ^ 0x15B0)))(v2);
  *v3 = 0;
  return v0(107, 2994, 4753, 4504);
}

uint64_t sub_265C5A614(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v19 = v15 ^ 0xB11;
  HIDWORD(a15) = a1;
  v22 = v16;
  v20 = (*(v18 + 8 * ((v15 ^ 0xB11) + 4526)))(v17, 3886098504, a3, a4, a5);
  return (*(v18 + 8 * (((((v19 ^ (v20 == 0)) & 1) == 0) | (16 * (((v19 ^ (v20 == 0)) & 1) == 0))) ^ v19)))(HIDWORD(a15), 2147482831, 7480, 825, 867, a6, a7, a8, a9, a10, a11, a12, a13, v22, a15);
}

uint64_t sub_265C5A6D0@<X0>(int a1@<W1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v8 = v4 - 1;
  *(v6 + v8) = *(a4 + v8);
  return (*(v7 + 8 * (((v8 == (v5 - a1 - 3710) + a2) * a3) ^ v5)))();
}

uint64_t sub_265C5A758@<X0>(uint64_t a1@<X8>)
{
  v11 = v3 + 32;
  v12 = ((v4 + v7) ^ v11) + v2;
  v13 = *(v9 + v12 - 15);
  v14 = *(v9 + v12 - 31);
  v15 = a1 + v1 + v12;
  *(v15 - 15) = v13;
  *(v15 - 31) = v14;
  return (*(v10 + 8 * (((v6 != v11) * v8) ^ v5)))();
}

uint64_t sub_265C5A840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v31 = v25 - 1318;
  v32 = (((2 * v26) & 0x1375D36ECLL) + (v26 ^ 0x8A7FDFF79BAE9B76) + v27 + 0x758020086451610ALL);
  v33 = (v32[v25 - 1318] << 56) | (*(((2 * v26) & 0x1375D36ECLL) + (v26 ^ 0x8A7FDFF79BAE9B76) + v27 + 0x758020086451648BLL) << 48) | (v32[898] << 40) | (v32[899] << 32) | (v32[900] << 24) | (v32[901] << 16) | (v32[902] << 8);
  v34 = v32[903] - ((2 * v32[903]) & 0x1A8) + 0x1B1479D21F1EF9D4;
  *a13 = v34 & 0x1F2 ^ 0x4AF9C64E2F3CDFDDLL ^ ((v33 - ((2 * v33) & 0xFFFAD6776E1550FCLL) - 0x294C448F557BALL) ^ 0xB504AD759836764BLL) & (v34 ^ 0xE4EB862DE0E1062BLL);
  *(v28 + 12) += 8;
  return (*(v29 + 8 * (((a25 == 0) * ((((v31 - 2113860204) | 0x2860C088) ^ 0xFFFFFFE2) + v31 - v30 + 2881)) ^ v31)))();
}

void sub_265C5A97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29)
{
  a29 = 0;
  (*(v30 + 8 * (v29 ^ 0x1249)))(a1, 3, &a29, a4, a5, a6, a7, a8);
  JUMPOUT(0x265C5A9B8);
}

uint64_t sub_265C5AA0C@<X0>(uint64_t *a1@<X3>, uint64_t (*a2)(void)@<X4>, char a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, _DWORD *a17)
{
  v18 = *a1;
  v19 = a11 + 989737029 - ((2 * a11) & 0x75FC608A);
  v20 = ((2 * *a17) & 0xD7F4FAFE) + (*a17 ^ 0x6BFA7D7F) - 1811578239;
  *(*a1 + v20) = (v19 >> ((v17 + a3 - 123) ^ (v17 + 8))) ^ 0x3A;
  *(v18 + v20 + 1) = BYTE2(v19) ^ 0xFE;
  *(v18 + v20 + 2) = BYTE1(v19) ^ 0x30;
  *(v18 + v20 + 3) = (a11 + 69 - ((2 * a11) & 0x8A)) ^ 0x45;
  *a17 += 4;
  return a2();
}

uint64_t sub_265C5AB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, _DWORD *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t (*a35)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v38 = (*(v36 + 8 * (v35 ^ 0xFF0)))(*a24, a2, a3, a4, a5, a6, a7, a8);
  *a24 = a19;
  *a21 = a18;
  *(v37 - 236) = *(v37 - 236);
  return a35(v38, 4294962800, 3169, 4612, 0x36388D39C04C843DLL, 0x2FBB29FF301AE9C9, 2563, 22);
}

uint64_t sub_265C5ABAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char a20, uint64_t a21, char a22, uint64_t a23, unsigned int a24, uint64_t a25, char *a26, char *a27, unsigned int a28, int a29, unsigned int a30)
{
  (*(v32 + 8 * (v30 + 3726)))(v31, a2, a3, a4, a5, a6, a7, a8);
  v35 = *a14;
  v36 = *v33;
  v37 = 1311869473 * (v34 ^ 0xEBEF1AAC);
  a24 = (v30 + 599661907 + *(v33 + 12) - ((2 * *(v33 + 12)) & 0x477C5122)) ^ v37;
  a28 = v37 + v30 + 2758;
  a30 = 563294734 - v37 + 622816387 * v35 + 2453;
  a27 = &a20;
  a25 = v36;
  a26 = &a22;
  (*(v32 + 8 * (v30 + 3766)))(&a24);
  v38 = a29;
  v39 = (*(v32 + 8 * (v30 + 3724)))(v31);
  return (*(v32 + 8 * ((6471 * (v38 == ((v30 - 1005751110) & 0x3BF28F2F ^ 0x60DCA6A8))) ^ (v30 - 401))))(v39);
}

uint64_t sub_265C5AEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  *(v25 - 180) = v23 - 652747349 * ((-1560421585 - ((v25 - 184) | 0xA2FDDB2F) + ((v25 - 184) | 0x5D0224D0)) ^ 0x1FF11A45) + 4255;
  *(v25 - 168) = v22;
  *(v25 - 160) = &a22;
  *(v25 - 176) = 0x23DAE559894B1A91;
  v26 = (*(v24 + 8 * (v23 + 5905)))(v25 - 184, a2, a3, a4, a5, a6, a7, a8);
  return (*(v24 + 8 * (((*(v25 - 184) == v23 + 1237464959) * (v23 - 667)) ^ v23)))(v26);
}

uint64_t sub_265C5AF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (*(v8 + 8 * (v5 ^ 0x1F91)))(*v9, a2, a3, a4);
  *v9 = a5;
  *(v9 + 8) = v6;
  return v7(v11);
}

uint64_t sub_265C5B14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = (a1 + v11);
  v15 = *v14;
  v16 = (v9 + v11 + v8);
  *v16 = *(v14 - 1);
  v16[1] = v15;
  return (*(v13 + 8 * (((v12 + a2 + v11 != -32) * a8) ^ v10)))();
}

uint64_t sub_265C5B250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = 9 * ((v20 - 1106) ^ 0xF6);
  HIDWORD(a18) = (v20 + 1073947756) & 0xBFFCD6F7;
  HIDWORD(a12) = v20 ^ 0x4D2;
  HIDWORD(a14) = v20;
  v23 = v22 + 1096;
  v24 = (*(v21 + 8 * (v22 + 5373)))(16, 3886098504, a3, a4, a5, a6, a7, a8);
  HIDWORD(a15) = 1237422985;
  return (*(v21 + 8 * ((70 * (((((9 * ((v20 - 82) ^ 0xF6)) ^ 0xB5) + 1) ^ (v24 == 0)) & 1)) | v23)))(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_265C5B5EC@<X0>(uint64_t a1@<X8>)
{
  v6 = (((v4 ^ 0xCFBu) - 896) ^ v3) + v2;
  *(a1 - 7 + v6) = *(v1 - 7 + v6);
  return (*(v5 + 8 * ((7237 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_265C5B668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char *a35, uint64_t a36, uint64_t a37, int a38, uint64_t a39, uint64_t a40, unint64_t a41, int a42, int a43, uint64_t a44, uint64_t a45, int a46, uint64_t a47)
{
  v55 = 6 * (v50 ^ 0xA3C);
  if (v49 >= 0x40)
  {
    v56 = 64;
  }

  else
  {
    v56 = v49;
  }

  if (v53 >= 0x40)
  {
    v57 = 64;
  }

  else
  {
    v57 = v53;
  }

  v58 = 566710099 * (((~&a34 | 0x34008E9426BBB9A2) + (&a34 | 0xCBFF716BD944465DLL)) ^ 0x34779FB955011ED0);
  a37 = a16 - v58;
  LODWORD(a40) = v54 - v58;
  LODWORD(a44) = v58 ^ v49;
  LODWORD(a36) = v56 - v58;
  a41 = v58 ^ a15;
  a38 = v53 - v58;
  a39 = v58 ^ a17;
  a43 = (v50 + 2137914029) ^ v58;
  a42 = v57 - v58;
  a34 = v48 - v58;
  a35 = &a19;
  (*(v47 + 8 * (v50 ^ 0x1199u)))(&a34, a2, a3, a4, a5, a6, a7, a8);
  (*(v47 + 8 * (v50 + 4421)))(a9, v51, 0, *(v52 + 8 * (v50 - 1940)) - 8, &a19, 72);
  v59 = 652747349 * (&a34 ^ 0x5AB6ABFC42F33E95);
  a43 = v55 - v59 + 2332;
  LOBYTE(a42) = v59 + 84;
  a38 = -1998276698 - v59;
  LODWORD(a39) = (v53 ^ 0x2EFEFF07) + ((2 * v53) & 0x5DFDFE0E) - v59 - 167772166;
  a47 = a15;
  a34 = a16;
  a36 = a13;
  a37 = a17;
  a40 = 0;
  a41 = (((2 * v48) & 0xFFB73FFF3D07C968) - 0x76CB00A092014400 + ((((v55 + 20005446) | 0x10880064u) - 297354414 + 0x7FDB9FFF9E83D87ELL) ^ v48)) ^ v59;
  a44 = a12;
  a45 = a14;
  LODWORD(a35) = v59 + 1344803742;
  HIDWORD(a35) = (v54 ^ 0x51FC93BE) + ((2 * v54) & 0xA3F9277C) - v59 - 30703648;
  a46 = (v49 ^ 0x6FFEFFBB) + ((2 * v49) & 0xDFFDFF76) - 1258291386 + v59;
  v60 = (*(v47 + 8 * (v55 ^ 0x142Au)))(&a34);
  if (a13)
  {
    v61 = a14 == 0;
  }

  else
  {
    v61 = 1;
  }

  v63 = v61 || a12 == 0;
  return (*(v47 + 8 * (v55 ^ (7 * v63))))(v60);
}

uint64_t sub_265C5BAA4@<X0>(int a1@<W4>, unsigned int a2@<W5>, unint64_t a3@<X6>, int a4@<W7>, uint64_t a5@<X8>)
{
  v9 = (((v6 + a1) | a2) ^ a3) + v5;
  *(v7 + v9) = *(a5 + v9);
  return (*(v8 + 8 * (((v9 == 0) * a4) ^ v6)))();
}

uint64_t sub_265C5BB44@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, _DWORD *a26, uint64_t a27, uint64_t a28)
{
  v29 = a7 - 1884;
  v30 = *(a28 + 64);
  v31 = *a25;
  v32 = ((2 * *a26) & 0xD77EFBFE) + (*a26 ^ ((v29 ^ 0x47B) + 1807710261)) - 1807711743;
  *(*a25 + v32) = BYTE4(a15);
  *(v31 + v32 + 1) = a15;
  *(v31 + v32 + 2) = BYTE4(a14);
  *(v31 + v32 + 3) = a14;
  v33 = (*a26 + 4);
  *a26 = v33;
  return (*(v28 + 8 * (((v30 > *a25 + (v33 ^ 0xB67AAFBFCE6FADFDLL) + 0x7FBDDD79F1DCD640 + ((2 * v33) & 0x19CDF5BFALL) - 0x36388D39C04C843DLL) * ((4 * (((v29 ^ 0x47B) + 396949025) & 0xE85707B7 ^ 0x346)) ^ 0x38E)) ^ v29 ^ 0x47B)))(*a25, a1, 807070153, a2, a3, a4, a5, a6, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_265C5BE80()
{
  v6 = *v0;
  v7 = 1864678469 * (((&v11 | 0x4521B443114EAC84) - (&v11 & 0x4521B443114EAC84)) ^ 0x3DD18B70223EBB6DLL);
  v14 = v10;
  v11 = (v5 + 634665166) ^ v7;
  v12 = v6 ^ v7;
  v13 = v2 - v7 + ((v5 + 199207062) & 0xFDEBF3FF) - 1401805986;
  (*(v4 + 8 * (v5 ^ 0x1FE9)))(&v11);
  (*(v4 + 8 * (v5 + 5057)))(v9, v1, 0, *(v3 + 8 * (v5 ^ 0x5E3)) - 4, v10, 18);
  return (v2 - 1237465637);
}

uint64_t sub_265C5C0A8@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v10 = ~v5 + v3;
  v11 = *(a1 + v10 - 15);
  v12 = *(a1 + v10 - 31);
  v13 = a2 + v10 + v2;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v9 + 8 * (((((v4 - 1033) ^ v7) + v5 == v6) * v8) ^ v4)))();
}

uint64_t sub_265C5C13C()
{
  v5 = v1 ^ (v0 - 2486) ^ (v2 - 1260);
  v7 = v3 < 0x20 || v5 < 8;
  return (*(v4 + 8 * ((v7 * (v2 - 3752)) ^ v2)))();
}

uint64_t sub_265C5C1A4()
{
  v3 = ((2 * *(v1 + 12)) & 0x1E575FF86) + (*(v1 + 12) ^ ((v0 - 5136) | 0x200u) ^ 0xFF6FADF7F2BAFD03) + 0x9052080D72CA34;
  v5 = v3 >= 0x2DC9F3 && v3 <= *(v1 + 8) + 3000819;
  return (*(v2 + 8 * (v0 | (32 * v5))))(v1);
}

uint64_t sub_265C5C2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, uint64_t *a20, uint64_t a21, unsigned int a22, uint64_t a23, uint64_t *a24, int *a25, unsigned int a26, int a27, int a28)
{
  v30 = a20;
  a17 = 0;
  a19 = 0;
  v31 = *(a4 + 8 * (v29 ^ 0x6E2)) - 8;
  (*(v28 + 8 * (v29 + 4892)))(v31, a2, a3);
  v33 = *(v30 + 3) + 599664785 - ((2 * *(v30 + 3)) & 0x477C5122);
  v34 = 1311869473 * (((&a22 | 0xB021417A) - (&a22 & 0xB021417A)) ^ 0x5BCE5BD6);
  v35 = 563297187 - v34 + 622816387 * **(a4 + 8 * (v29 - 1657));
  a23 = *v30;
  a24 = &a17;
  a22 = v33 ^ v34;
  a25 = &a19;
  a28 = v35;
  a26 = v34 + v29 + 3924;
  (*(v28 + 8 * (v29 + 4932)))(&a22);
  v36 = a27;
  v37 = (*(v28 + 8 * (v29 + 4890)))(v31);
  return (*(v28 + 8 * (((v36 == ((v29 + 429701379) & 0xE663496E) + 1893507169) * ((v29 + 429701379) ^ 0x199CBFB5)) | v29)))(v37);
}

uint64_t sub_265C5C460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, unsigned int a26)
{
  v29 = 157 * (v26 ^ 0x166);
  *(v27 + 8) = a26;
  v30 = (*(v28 + 8 * (v29 + 2382)))(*(&off_28778E150)[v29 - 4224], a22, a26, a4, a5, a6, a7, a8);
  return (*(v28 + 8 * ((3776 * ((((v29 ^ 0x6DA) + 265) ^ 0x49C22D7B) == 1237465637)) ^ (v29 + 1743))))(v30);
}

uint64_t sub_265C5C554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24, uint64_t a25, uint64_t *a26, unsigned int a27, uint64_t a28, uint64_t *a29, int *a30, unsigned int a31, int a32, unsigned int a33)
{
  v35 = a26;
  a22 = 0;
  a24 = 0;
  v36 = *(v33 + 8 * (a14 - 4852)) - 8;
  v37 = v33;
  (*(v34 + 8 * (a14 ^ 0xA8A)))(v36, a2, a3, a4, a5, a6, a7, a8);
  v38 = **(v37 + 8 * (a14 - 4879));
  v39 = *v35;
  v40 = 1311869473 * ((2 * (&a27 & 0x43D458D0) - &a27 + 1009493800) ^ 0xD7C4BD84);
  a27 = (*(v35 + 3) + 599664469 - (((a14 - 898) ^ 0x477C5EE6) & (2 * *(v35 + 3))) + 316) ^ v40;
  a28 = v39;
  a29 = &a22;
  a33 = 563297187 - v40 + 622816387 * v38;
  a31 = v40 + a14 + 702;
  a30 = &a24;
  (*(v34 + 8 * (a14 + 1710)))(&a27);
  v41 = a32;
  v42 = (*(v34 + 8 * (a14 + 1668)))(v36);
  return (*(v34 + 8 * (((v41 != 1893509507) * ((a14 + 1225370750) & 0xB6F64FFF ^ 0xFD2)) ^ a14)))(v42);
}

uint64_t sub_265C5C734@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 ^ 0x19D0;
  (*(v4 + 8 * (v2 + 3243)))(a2);
  *a1 = 0;
  *a1 = 0;
  a1[1] = 0;
  v7 = (*(v4 + 8 * (v5 + 1275)))();
  return v3(v7);
}

uint64_t sub_265C5C79C(uint64_t a1)
{
  v5 = v2 + 2179;
  v6 = *(v3 + 8 * (v2 + 5946));
  v6(v4, @"sPJ8AGu5PT", a1);
  (*(v3 + 8 * (v5 + 3726)))(a1);
  v8 = (*(v3 + 8 * (v5 ^ 0x1298)))(v1, &STACK[0x280], 16) == 0;
  return (*(v3 + 8 * ((30 * (((v5 ^ v8) & 1) == 0)) ^ v5)))();
}

uint64_t sub_265C5C824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v23 = (*(v21 + 8 * (v19 | 0x140)))(*(v22 - 192) - 1237465637 + ((v19 - 5752) | 0x49) + ((v19 - 1109673683) & 0x42242EF4u) - 783, 3886098504, a3, a4, a5, a6, a7, a8);
  v24 = *(v22 - 220);
  *v20 = v23;
  return (*(v21 + 8 * ((393 * (v23 == 0)) ^ v19)))(v23, v25, 711498875, 3583466996, 4127, v24, 586, 2147478764, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_265C5C8FC()
{
  v5 = v2 | 0x472;
  v6 = v1 ^ (v0 + 772) ^ ((v5 - 4607) | 4u);
  v8 = v3 < 0x20 || v6 < 8;
  return (*(v4 + 8 * ((436 * (((v5 + 2) ^ v8) & 1)) ^ v5)))();
}

uint64_t sub_265C5C9EC()
{
  v5[1] = 0;
  v6 = (v2 - 3471) ^ (1864678469 * ((v5 - 401602258 - 2 * (v5 & 0xE810092E)) ^ 0xDB601EC7));
  result = (*(v0 + 8 * (v2 + 2791)))(v5);
  *v4 = v1;
  return result;
}

uint64_t sub_265C5CAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  v17 = (*(v16 + 8 * (v15 + 4715)))(v14, @"DhpWkh3rnR", a3, a4, a5, a6, a7);
  (*(v16 + 8 * (v15 + 4726)))(v17, 4, va);
  v18 = (*(v16 + 8 * (v15 ^ 0x1E8B)))(v14, @"gaX8gT7e");
  return (*(v16 + 8 * ((699 * (v18 == (((v15 - 98) & 0xD6) + 63))) ^ (v15 + 3760))))(v18, v19, v20, v21, v22);
}

uint64_t sub_265C5CB1C(uint64_t result)
{
  v2 = *(result + 16);
  v1 = *(result + 24);
  v3 = *(result + 40);
  v4 = *(result + 48);
  v6 = *result;
  v5 = *(result + 4);
  v7 = 891395573 * ((-2 - ((~result | 0x705282A9EE12A5A4) + (result | 0x8FAD7D5611ED5A5BLL))) ^ 0x4E560ED2D43FBA1FLL);
  v8 = *(result + 8);
  *v3 = 134219266;
  *(v3 + 4) = v1 - v7;
  *(v3 + 12) = 2048;
  *(v3 + 14) = v8 - v7;
  *(v3 + 22) = 1040;
  *(v3 + 24) = v5 + v7;
  *(v3 + 28) = 2096;
  *(v3 + 30) = v4 ^ v7;
  *(v3 + 38) = 1024;
  *(v3 + 40) = v6 ^ v7;
  *(v3 + 44) = 2048;
  *(v3 + 46) = v2 ^ v7;
  return result;
}

void wnFx1xLULXLA()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = off_28778E8C0;
  v1 = off_28778E480 - 12;
  v2 = (&off_28778E150)[(*(off_28778E480 + (*(off_28778E8C0 + (91 * ((dword_28003EDD8 + qword_28003EBC8) ^ 0x30))) ^ 0xB9u) - 12) ^ (91 * ((dword_28003EDD8 + qword_28003EBC8) ^ 0x30))) - 29];
  v3 = qword_28003EBC8 ^ &v7 ^ *(v2 - 4);
  v4 = 636859739 * v3 - 0x1D38D65F7E9650D0;
  v5 = 636859739 * (v3 ^ 0xE2C729A08169AF30);
  qword_28003EBC8 = v4;
  *(v2 - 4) = v5;
  v6 = *((&off_28778E150)[((91 * (qword_28003EBC8 ^ 0x30 ^ v5)) ^ v1[v0[(91 * (qword_28003EBC8 ^ 0x30 ^ v5))] ^ 0xB9]) + 37] - 4) != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_265C5CD74@<X0>(uint64_t a1@<X8>)
{
  v6 = v1 + -8 - v3;
  *(a1 + -8 - v3 + v2) = *(v6 + v2);
  return (*(v5 + 8 * (((v3 - (v2 & 0xFFFFFFF8) == -8) * ((v4 ^ 0x336) + 1565)) ^ v4)))(v6 - 8, v3 - (v2 & 0xFFFFFFF8) + 16);
}

uint64_t sub_265C5CE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned int a24, uint64_t a25)
{
  *(v26 + 8) = a24;
  *(v26 + 12) = 0;
  v29 = v25 + 5379;
  (*(v27 + 8 * ((v25 + 1060) | 0x1159)))(*(&off_28778E150)[(v25 + 1060) ^ 0x88B], a25, a24, a4, a5, a6, a7, a8);
  return (*(v27 + 8 * ((2889 * (v28 == 1237465637)) ^ (v29 - 6067))))(1237465637);
}

uint64_t sub_265C5CEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char *a20, char *a21, unsigned int a22, int a23)
{
  v29 = (v23 + 250) | 0x1342;
  a20 = v24;
  a22 = v23 + 346387183 * (((~&a20 & 0xC9460EB4) - (~&a20 | 0xC9460EB5)) ^ 0x4C2EDB65) - 1626119795;
  (*(v27 + 8 * (v23 + 5791)))(&a20, a2, a3, a4, a5, a6, a7, a8);
  v30 = 583883621 * (((&a20 ^ 0xCC61089EA19DEFF0 | 0xE1EEB37B86264A4FLL) - ((&a20 ^ 0xCC61089EA19DEFF0) & 0xE1EEB37B86264A4FLL)) ^ 0xD624CD5F86887910);
  a22 = v23 - v30 + 739741406;
  a23 = a12 - v30;
  a20 = &a21[v30];
  a21 = &a14;
  (*(v27 + 8 * (v23 ^ 0x1988u)))(&a20);
  (*(v27 + 8 * (v23 ^ 0x1A3Eu)))(a10, v25, 0, *(v26 + 8 * (v23 - 679)) - 8, &a14, 18);
  v31 = 583883621 * (((~&a20 & 0x252CD120) - (~&a20 | 0x252CD121)) ^ 0x841F0D8E);
  a21 = v24;
  HIDWORD(a20) = (v29 - 80083197) ^ v31;
  a22 = v31 + (((v29 - 4930) | 0x946) ^ 0x433286A7) * a12 + 1849019517;
  v32 = (*(v27 + 8 * (v29 + 624)))(&a20);
  return (*(v27 + 8 * ((51 * (*v28 == 0)) ^ v29)))(v32);
}

uint64_t sub_265C5D0D4(uint64_t a1)
{
  v1 = *a1;
  v2 = 1466156297 * ((-2 - ((~a1 | 0xB0ECE021B5893087) + (a1 | 0x4F131FDE4A76CF78))) ^ 0x3A2995EA663EB0D6);
  v3 = *(a1 + 32) + v2;
  v4 = *(a1 + 20) ^ v2;
  v5 = *(a1 + 88) ^ v2;
  v6 = *(a1 + 16) ^ v2;
  v7 = *(a1 + 64) + v2;
  v8 = *(a1 + 56);
  v9 = *(a1 + 48) + v2;
  v10 = *(a1 + 72);
  v11 = *(a1 + 76) + v2;
  v12 = *(a1 + 68) - v2;
  v13 = *(a1 + 24) + v2;
  v14 = *(a1 + 40);
  v15 = *(a1 + 44) ^ v2;
  v16 = *(a1 + 12) + v2;
  result = (*(a1 + 8) - v2);
  *v1 = 134221570;
  *(v1 + 4) = v3;
  *(v1 + 12) = 1040;
  *(v1 + 14) = v4;
  *(v1 + 18) = 2096;
  *(v1 + 20) = v5;
  *(v1 + 28) = 1024;
  *(v1 + 30) = v6;
  *(v1 + 34) = 1040;
  *(v1 + 36) = v7;
  *(v1 + 40) = 2096;
  *(v1 + 42) = v9;
  *(v1 + 50) = 1024;
  *(v1 + 52) = v11;
  *(v1 + 56) = 1040;
  *(v1 + 58) = v12;
  *(v1 + 62) = 2096;
  *(v1 + 64) = v13;
  *(v1 + 72) = 1024;
  *(v1 + 74) = v15;
  *(v1 + 78) = 1024;
  *(v1 + 80) = v16;
  *(v1 + 84) = 1024;
  *(v1 + 86) = result;
  *(v1 + 90) = 1040;
  *(v1 + 92) = v14 + v2;
  *(v1 + 96) = 2096;
  *(v1 + 98) = v8 - v2;
  *(v1 + 106) = 1024;
  *(v1 + 108) = v10 ^ v2;
  return result;
}

uint64_t sub_265C5D2B0(uint64_t a1, uint64_t a2)
{
  *(v5 + 8) = 4096;
  *v3 = v5;
  return v2(a1, a2, v4);
}

void sub_265C5D394(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 4) + 652747349 * ((a1 & 0xEE60CDD0 | ~(a1 | 0xEE60CDD0)) ^ 0x536C0CBA);
  v3[0] = v1 - 891395573 * ((((2 * v3) | 0x4BCBBFEE) - v3 - 635822071) ^ 0x1FC8C04C) - 554;
  v2 = (&off_28778E150)[v1 ^ 0x1329] - 8;
  (*&v2[8 * (v1 ^ 0xA9A)])(v3);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_265C5D68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int a22)
{
  v27 = 2 * &a21;
  a21 = v22;
  a22 = (v24 + 1311672989) ^ (1468321087 * (((v27 | 0x6189462C) - &a21 - 818193174) ^ 0xE42BE278));
  (*(v25 + 8 * (v24 ^ 0x17C6)))(&a21, a2, a3, a4, a5, a6, a7, a8);
  v28 = (*(v25 + 8 * (v24 ^ 0x17EF)))(**(v26 + 8 * (v24 ^ 0xEDE)), *(v26 + 8 * (v24 - 3510)) - 4, v23);
  v29 = ((2 * v28) & 0xBBAF77CE) + ((6 * (v24 ^ 0xF64)) ^ 0xDDD7BD45 ^ v28);
  a21 = v22;
  a22 = (v24 - 50587313) ^ (912648571 * (((v27 | 0x6B89E114) - &a21 + 1245384566) ^ 0x6909BCBF));
  v30 = (*(v25 + 8 * (v24 + 2904)))(&a21);
  return (*(v25 + 8 * ((7474 * (v29 == -573064217)) ^ v24)))(v30);
}

uint64_t sub_265C5D8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  (*(v27 + 8 * (v22 ^ 0x1F6A)))(*v26, a2, a3, a4, a5, a6, a7, a8);
  *v26 = v24;
  *(v26 + 8) = v23;
  return v25(3191, -4936, 5180, a22, a21, a20, a19);
}

uint64_t sub_265C5D9B8@<X0>(int a1@<W4>, uint64_t (*a2)(void)@<X5>, uint64_t *a3@<X6>, _DWORD *a4@<X7>, char a5@<W8>)
{
  v5 = *a3;
  v6 = ((2 * *a4) & 0xD5F6FB9E) + (*a4 ^ 0x6AFB7DCF) - 1794866639;
  *(*a3 + v6) = HIBYTE(a1) ^ 0x9B;
  *(v5 + v6 + 1) = (a5 - 90) ^ BYTE2(a1);
  *(v5 + v6 + 2) = BYTE1(a1) ^ 0x5E;
  *(v5 + v6 + 3) = a1 ^ 0x41;
  *a4 += 4;
  return a2();
}

uint64_t sub_265C5DAC0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v10 = v5 + 32;
  v11 = (v10 ^ v8 ^ v6) + v3;
  v12 = *(v2 + v11 - 15);
  v13 = *(v2 + v11 - 31);
  v14 = a2 + v11;
  *(v14 - 15) = v12;
  *(v14 - 31) = v13;
  return (*(v9 + 8 * (((v7 == v10) * a1) ^ v4)))();
}

uint64_t sub_265C5DB7C@<X0>(_DWORD *a1@<X1>, _BYTE *a2@<X3>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t *a19, int a20, int a21, uint64_t a22, unsigned int a23, uint64_t a24, uint64_t *a25, int *a26, unsigned int a27, int a28, unsigned int a29)
{
  v35 = a3 - v33;
  v36 = (v29 + v31 + v32);
  v36[5] = a2[7];
  v36[4] = a2[6];
  v36[3] = a2[5];
  v36[2] = a2[4];
  v36[1] = a2[3];
  *v36 = a2[2];
  *(v36 - 1) = a2[1];
  *v30 = *a2;
  *a1 += 8;
  v37 = a19;
  a17 = 0;
  a21 = 0;
  v38 = (&off_28778E150)[a3 - v33 - 2067] - 8;
  (*(v34 + 8 * (v35 ^ 0x11A9)))((&off_28778E150)[v35 - 2067] - 8);
  v39 = *(&off_28778E150)[v35 ^ 0x852];
  v40 = *v37;
  v41 = *(v37 + 3) + (v35 ^ 0x23BE20F4) - ((2 * *(v37 + 3)) & 0x477C5122);
  v42 = 1311869473 * (((&a23 | 0x67D00C55) - &a23 + (&a23 & 0x982FF3A8)) ^ 0x8C3F16F9);
  a26 = &a21;
  a24 = v40;
  a25 = &a17;
  a23 = v41 ^ v42;
  a27 = v42 + v35 + 3487;
  a29 = 563295754 - v42 + (v35 ^ 0xDFC) + 622816387 * v39;
  (*(v34 + 8 * (v35 ^ 0x1191)))(&a23);
  v43 = a28;
  v44 = (*(v34 + 8 * (v35 + 4453)))(v38);
  return (*(v34 + 8 * ((8100 * (v43 == 1893509507)) ^ v35)))(v44);
}

uint64_t sub_265C5DDD0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v29 = v26 + 559;
  v30 = (v25 ^ 0x6FF67DFBA7DA7F7DLL) + (((a1 + v29 - 599) ^ (v29 - v28 - 559) ^ 0x14FB4FEFALL) & (2 * v25)) - 0x6FF67DFB05227DAFLL;
  v32 = v30 < 0xA2B801CA || v30 > *(a25 + 8) + 2729968074u;
  return (*(v27 + 8 * ((1749 * v32) ^ v29)))();
}

uint64_t sub_265C5E07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = (*(v10 + 52864))(a10, v13, a3, a4, a5, a6, a7, a8);
  *v11 = v14;
  return (*(v10 + 8 * ((7758 * (v14 == 0)) ^ v12)))();
}

uint64_t sub_265C5E128()
{
  v5 = (*(v3 + 52864))(v1, v2);
  *v4 = v5;
  return (*(v3 + 8 * ((957 * (v5 == 0)) ^ v0)))();
}

uint64_t sub_265C5E210()
{
  *(v6 - 144) = v2;
  *(v6 - 136) = (v0 + 1311674057) ^ (1468321087 * ((258843528 - (v5 | 0xF6DA388) + (v5 | 0xF0925C77)) ^ 0x247D1D19));
  (*(v4 + 8 * ((v0 + 100) ^ 0x130E)))(v6 - 144);
  v7 = (*(v4 + 8 * ((v0 + 100) ^ 0x1327)))(**(v1 + 8 * (v0 - 2482)), *(v1 + 8 * (v0 - 2442)) - 4, v3);
  v8 = ((2 * v7) & 0xFBDF7FFE) + ((3 * ((v0 + 100) ^ 0x9C6) - 1080429148) & 0xEE7F1BAF ^ 0x53F6A458 ^ v7);
  *(v6 - 136) = (v0 - 50586245) ^ (912648571 * ((~(v5 | 0x1E2277A0) + (v5 & 0x1E2277A0)) ^ 0x3D10C46A));
  *(v6 - 144) = v2;
  v9 = (*(v4 + 8 * (v0 + 3972)))(v6 - 144);
  return (*(v4 + 8 * ((124 * (v8 != -34619393)) ^ (v0 + 100))))(v9);
}

uint64_t sub_265C5E45C()
{
  v4 = 912648571 * ((((2 * &v8) | 0xFDBAACE) - &v8 - 133027175) ^ 0xDB209952);
  v10 = -42847 - v4;
  v9 = v7;
  v8 = (v1 + 1318477609) ^ v4;
  (*(v3 + 8 * (v1 + 4481)))(&v8);
  (*(v3 + 8 * (v1 + 4414)))(v6, v0, 0, *(v2 + 8 * (v1 ^ 0x853u)), v7, 8);
  return 4294924449;
}

uint64_t sub_265C5E708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, _DWORD *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, uint64_t a34)
{
  *a8 += a7;
  a34 = 0;
  a33 = 0;
  v39 = *(v36 + 8 * (v35 ^ 0xDC1)) - 8;
  (*(v37 + 8 * (v35 ^ 0x145F)))(v39, a2, a3, a4, a5, a6);
  v40 = **(v36 + 8 * (v35 - 3420));
  v41 = *(a31 + 12) - ((2 * *(a31 + 12)) & 0x477C5122) + 599664785;
  v42 = 1311869473 * (v34 ^ 0xEBEF1AAC);
  v43 = (v38 - 152);
  v43[1] = *a31;
  v43[2] = &a34;
  v43[3] = &a33;
  *(v38 - 112) = v35 + 1200 - v42 + 11 * (v35 ^ 0xC3A) + 622816387 * v40 + 563287837;
  *(v38 - 120) = v42 + v35 + 2161;
  *(v38 - 152) = v41 ^ v42;
  (*(v37 + 8 * (v35 ^ 0x1467)))(v38 - 152);
  v44 = *(v38 - 116);
  v45 = (*(v37 + 8 * (v35 + 3127)))(v39);
  return (*(v37 + 8 * ((6549 * (v44 == 1893509507)) ^ v35)))(v45);
}

uint64_t sub_265C5E978(uint64_t a1, unint64_t a2)
{
  v5 = (*(v3 + 12) ^ 0xDA4FF7B5F6FDFFFFLL) + ((*(v3 + 12) << (v2 ^ 0x67u)) & 0x1EDFBFFFELL) + 0x25B0084A67D63A1BLL;
  v7 = v5 < a2 || v5 > *(v3 + 8) + a2;
  return (*(v4 + 8 * (((4 * (((v2 - 103) ^ v7) & 1)) & 0xEF | (16 * (((v2 + 1181284505) ^ v7) & 1))) ^ v2)))(a1);
}

uint64_t sub_265C5EA38@<X0>(int a1@<W8>)
{
  v1 = a1 - 1272013471;
  v2 = (a1 - 41) | 8;
  v3 = (a1 - 1272013738);
  v4 = (v6 ^ 0x1F2B0371FFBDFD8FLL) + *(v7 + 8) + ((2 * v6) & 0x1FF7BFB1ELL) - 0x1F2B0371FFBDFD8FLL;
  return (*(v8 + 8 * ((7096 * (((v3 & ~v4 | (v4 ^ ~v3) & (v4 - v3)) >> (v2 - 73)) & 1)) ^ (v1 + 638))))();
}

uint64_t sub_265C5ECF8()
{
  *v1 = 0;
  v1[1] = 0;
  v4 = (*(v3 + 8 * ((v0 + 2914) ^ 0x1B6)))(v1);
  return v2(v4);
}

uint64_t sub_265C5ED30()
{
  v5 = (*(v2 + 8 * (v4 ^ 0x1460)))(v0, v1);
  *v3 = v5;
  return (*(v2 + 8 * (((v5 == 0) * ((16 * v4) ^ 0xDB60)) ^ v4)))();
}

uint64_t sub_265C5EDEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  LODWORD(a17) = 277;
  v19 = a3 + v17 - 1374086664 + 1529;
  v20 = (*(v18 + 8 * ((v17 - 1374086664) ^ 0xAE190269)))(16, 3886098504);
  LODWORD(a14) = 1237422985;
  return (*(v18 + 8 * ((983 * (((41 * ((v17 - 8) ^ 0x22)) ^ (v20 == 0)) & 1)) ^ v19)))(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_265C5EFA0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a1 ^ 0x1B03;
  *(v8 - 176) = 0;
  v10 = (*(v7 + 8 * (a1 ^ 0x1BD4)))(16, 3886098504);
  return (*(v7 + 8 * (((v10 == 0) * (v9 ^ 0xA43 ^ ((v9 - 1785) | 0x118))) | v9)))(v10, v11, v12, v13, v14, v15, v16, v17, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_265C5F064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v35 = *(a30 + 64);
  **(a30 + 48) = v32;
  *v35 = *(v34 - 152) + (((v30 - 1581) | 0x12) ^ 0xB63DC581);
  return (*(v33 + 8 * ((((v30 - 1581) | 0x12) + 1558) ^ (4 * (((((v30 - 45) | 0x12) + 62) ^ 0x4F ^ (v31 == 0)) & 1)))))(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_265C5F2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = (*(v16 + 8 * (v15 ^ 0x1674)))(16, 3886098504, a3, a4, a5, a6, a7, a8);
  HIDWORD(a13) = 1237422985;
  return (*(v16 + 8 * (((v17 != 0) * (((v15 - 920057791) & 0x36D6EDF7) - 1414)) ^ (v15 + 94))))(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_265C5F48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, unsigned int a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v42 = 226 * (v38 ^ 0x143F);
  if (a26 >= 0x40)
  {
    v43 = 64;
  }

  else
  {
    v43 = a26;
  }

  if (a21 - 1237465702 >= (v42 - 743))
  {
    v44 = a21 - 1237465637;
  }

  else
  {
    v44 = 64;
  }

  v45 = 1384597421 * ((((v41 - 184) | 0xF134FDB19DB66864) - (v41 - 184) + ((v41 - 184) & 0xECB024E62499798)) ^ 0x874925DE7F78311DLL);
  *(v41 - 168) = a30 ^ v45;
  *(v41 - 160) = &STACK[0x290];
  *(v41 - 176) = a37 + v45;
  *(v41 - 152) = v43 + v45;
  *(v41 - 148) = (v39 - 1237465637) ^ v45;
  *(v41 - 144) = (v38 - 1125750727) ^ v45;
  *(v41 - 140) = a21 - 1237465637 - v45;
  *(v41 - 184) = v44 ^ v45;
  *(v41 - 136) = a26 + v45;
  (*(v40 + 8 * (v38 + 1504)))(v41 - 184, a2, a3, a4, a5, a6, a7, a8);
  v46 = (*(v40 + 8 * (v38 + 1388)))(a12, v37, 0, (&off_28778E150)[v38 - 5170], &STACK[0x290], 52);
  return (*(v40 + 8 * ((((v42 + 4393) ^ 0x1DF6) * (v39 == 1237465637)) ^ v42)))(v46);
}

uint64_t sub_265C5F5F8@<X0>(uint64_t a1@<X8>)
{
  v6 = v3 - 1;
  v7 = (v2 ^ 0xFFFFFFFFFFFFFA98 ^ (3 * (v6 ^ 0x421u))) + v1;
  *(v4 - 7 + v7) = *(a1 - 7 + v7);
  return (*(v5 + 8 * (((v1 & 0xFFFFFFF8) - 8 != v2) ^ v6)))();
}

uint64_t sub_265C5F974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v8 - 240) = v6;
  *(v8 - 208) = 0;
  v9 = (*(v7 + 8 * (a6 + 174)))(*(&off_28778E150)[(a6 - 1805) ^ 0x122D], *(v8 - 176), *(v8 - 184), a4, a5);
  return (*(v8 - 232))(v9);
}

uint64_t sub_265C5FCA4@<X0>(_DWORD *a1@<X8>)
{
  v5 = ((2 * v3) & 0xE57B0C7E) + (v3 ^ 0xF2BD863F);
  v6 = (*(*v4 + v5 + 222460353) << 24) | (*(*v4 + v5 + 222460354) << 16) | (*(*v4 + (v2 ^ 0xD427742) + v5) << 8) | *(*v4 + v5 + 222460356);
  *a1 = (v6 ^ 0xDDEFFB67) + 571475097 + ((2 * v6) & 0xBBDFF6CE);
  *(v4 + 12) += 4;
  return v1();
}

void hYNpsn7dXgySzQR(uint64_t a1)
{
  if (a1)
  {
    v1 = 3613;
  }

  else
  {
    v1 = 3612;
  }

  __asm { BRAA            X8, X17 }
}

uint64_t sub_265C5FDEC@<X0>(uint64_t a1@<X8>)
{
  v7 = 44 * (v4 ^ 0x515B2F24u);
  v8 = (v3 ^ 0xFFFFFFFFFFFFF909 ^ (3 * (v7 ^ 0x876))) + v1;
  *(v5 - 7 + v8) = *(a1 - 7 + v8);
  return (*(v6 + 8 * ((1613 * (v1 - ((v7 - 2589) & v2) - 8 == v3)) ^ v7)))();
}

uint64_t sub_265C5FFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _DWORD *a13)
{
  v16 = v14;
  v17 = v14 + 1456;
  (*(v13 + 8 * (v14 + 4340)))(a10, a2, a3, a4, a5, a6, a7, a8);
  v18 = *(a11 + 12) + 599664785 - ((2 * *(a11 + 12)) & 0x477C5122);
  v19 = 1311869473 * ((2 * ((v15 - 144) & 0x3142A110) - (v15 - 144) - 826450194) ^ 0x25524442);
  v20 = 563293467 - v19 + v14 + 1456 + 622816387 * *a13;
  *(v15 - 136) = *a11;
  *(v15 - 128) = v15 - 168;
  *(v15 - 120) = v15 - 152;
  *(v15 - 144) = v18 ^ v19;
  *(v15 - 104) = v20;
  *(v15 - 112) = v19 + v14 + 3372;
  (*(v13 + 8 * (v14 + 4380)))(v15 - 144);
  v21 = *(v15 - 108);
  v22 = (*(v13 + 8 * (v16 + 4338)))(a10);
  return (*(v13 + 8 * (((v21 == 1625074048) * ((v17 + 1844688108) & 0x920C3EAB ^ (v17 + 4142))) ^ v17)))(v22);
}

uint64_t sub_265C6027C()
{
  v5 = (*(v3 + 8 * (v2 ^ 0x1FD3)))(v1);
  *v0 = 0;
  return v4(v5, 37);
}

uint64_t sub_265C603D4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, _DWORD *a19, uint64_t a20, uint64_t *a21)
{
  v22 = a1 ^ 0x3A7E;
  v23 = *a21;
  v24 = (a18 ^ 0xF59FC5B7) & (2 * (a18 & 0xE5DFE5B0)) ^ a18 & 0xE5DFE5B0;
  v25 = ((2 * (a18 ^ 0x3EAC4ED7)) ^ 0xB6E756CE) & (a18 ^ 0x3EAC4ED7) ^ (2 * (a18 ^ 0x3EAC4ED7)) & 0xDB73AB66;
  v26 = v25 ^ 0x4910A921;
  v27 = (v25 ^ 0xD2630260) & (4 * v24) ^ v24;
  v28 = ((4 * v26) ^ 0x6DCEAD9C) & v26 ^ (4 * v26) & 0xDB73AB64;
  v29 = (v28 ^ 0x4942A900) & (16 * v27) ^ v27;
  v30 = ((16 * (v28 ^ 0x92310263)) ^ 0xB73AB670) & (v28 ^ 0x92310263) ^ (16 * (v28 ^ 0x92310263)) & 0xDB73AB60;
  v31 = v29 ^ 0xDB73AB67 ^ (v30 ^ 0x9332A200) & (v29 << 8);
  v32 = a18 ^ (2 * ((v31 << 16) & 0x5B730000 ^ v31 ^ ((v31 << 16) ^ 0x2B670000) & (((v30 ^ 0x48410907) << 8) & 0x5B730000 ^ 0x8500000 ^ (((v30 ^ 0x48410907) << 8) ^ 0x73AB0000) & (v30 ^ 0x48410907))));
  v33 = ((((v22 - 5906) | 0x5A7) ^ 0xDDF5BB08) & (2 * *a19)) + (*a19 ^ 0xEEFADF7F) + 285548673;
  *(*a21 + v33) = HIBYTE(v32) ^ 0x45;
  *(v23 + v33 + 1) = BYTE2(v32) ^ 0xFE;
  *(v23 + v33 + 2) = BYTE1(v32) ^ 0xB3;
  *(v23 + v33 + 3) = v32 ^ 0x7E;
  v34 = (*a19 + 4);
  *a19 = v34;
  return (*(v21 + 8 * ((a12 > *a21 + ((2 * v34) & 0x19FFE7DBALL) + (v34 ^ 0x1B5E7F51CFFF3EDDuLL) - 0x1B5E7F51CFFF3EDDLL) | v22)))();
}

uint64_t sub_265C60720()
{
  v8 = (v3 - 32);
  v9 = v6 - 32;
  v10 = *(v9 + v2);
  *(v8 - 1) = *(v9 + v2 - 16);
  *v8 = v10;
  return (*(v7 + 8 * (((v0 != v5 + 32) * v4) ^ v1)))();
}

uint64_t sub_265C60870()
{
  *(v5 - 136) = (v4 + 1885314797) ^ (1468321087 * ((2 * (v2 & 0x428925E0) - v2 - 1116284388) ^ 0x69999B72));
  *(v5 - 144) = v0;
  (*(v3 + 8 * (v4 ^ 0xDDCEE396)))(v5 - 144);
  v6 = (*(v3 + 8 * (v4 ^ 0xDDCEE3BF)))(*(&off_28778E150)[v4 + 573638258], (&off_28778E150)[v4 ^ 0xDDCEFAE6] - 4, v1);
  v7 = ((2 * v6) & 0xBB9DF45E) + (v6 ^ 0xDDCEFA2F);
  *(v5 - 144) = v0;
  *(v5 - 136) = (v4 + 523054495) ^ (912648571 * (v2 ^ 0xDCCD4C35));
  v8 = (*(v3 + 8 * (v4 ^ 0xDDCEE3F8)))(v5 - 144);
  return (*(v3 + 8 * (v4 ^ 0xDDCEF8DA ^ (2 * ((v4 - 1588394568) & 0x80DE0F3F ^ 0xD5F)) ^ (8069 * ((((v7 - v4) | (v4 - v7)) & 0x80000000) == 0)))))(v8);
}

uint64_t sub_265C60A9C(uint64_t a1, uint64_t a2)
{
  v8 = a1 - 32;
  v9 = *(v8 + v2);
  v10 = (v5 - 32 + v2);
  *(v10 - 1) = *(v8 + v2 - 16);
  *v10 = v9;
  return (*(v7 + 8 * ((101 * (((v4 == a2 + 32) ^ v3) & 1)) ^ v6)))();
}

uint64_t sub_265C60AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19, uint64_t a20)
{
  a19 = v22 + 652747349 * ((&a18 & 0x9D537EA3 | ~(&a18 | 0x9D537EA3)) ^ 0x205FBFC9) + 2470;
  a20 = v23;
  v24 = (*(v20 + 8 * (v22 + 2998)))(&a18, a2, a3, a4, a5, a6, a7, a8);
  return (*(v20 + 8 * ((28 * (a18 == (v22 ^ 0xEFC) + 604 + v21 + 5 * (v22 ^ 0xEFC))) ^ v22)))(v24);
}

uint64_t sub_265C60C20(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 ^ 0x140B)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 == 0) * (3 * (v1 ^ 0xF31) - 4527 + 54 * (v1 ^ 0xDEF))) ^ v1)))();
}

uint64_t sub_265C60D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = v13;
  v17 = *(v16 + 8 * ((235 * ((((*(v16 + 8 * (v15 ^ 0xBA1)))(v14, 3886098504, a3, a4, a5, a6) == 0) ^ (v15 + v15 - 89)) & 1)) ^ v15));
  return v17(184702973, 2147482772, 1867, &off_28778E150, 4674, -6844, a7, a8, a9, a10, a11, v19, a13, a8, a7);
}

uint64_t sub_265C61524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = (*(v14 + 8 * (v15 + 1193)))(a14, a13, a3, a4, a5, a6, a7, a8);
  *v16 = v17;
  return (*(v14 + 8 * (((((v15 - 61597305) & 0x3ABD3F7) + ((v15 - 65271336) & 0x3E3F796) - 5515) * (v17 == 0)) ^ v15)))();
}

uint64_t sub_265C615D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v6 + ((v5 - 3700) ^ a2) + a3) = *(v4 + ((v5 - 3700) ^ a2) + a3);
  v9 = v7 == a2;
  v10 = a2 + 8;
  v11 = v9;
  return (*(v8 + 8 * ((7 * v11) ^ v3)))(a1, v10);
}

uint64_t sub_265C617E0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W2>, uint64_t a3@<X3>, int a4@<W6>, uint64_t a5@<X8>)
{
  v11 = v7 + 32;
  v12 = (v11 ^ a3 ^ ((v8 - 1063) | a2)) + v6;
  v13 = *(a5 + v12 - 15);
  v14 = *(a5 + v12 - 31);
  v15 = a1 + v12 + v5;
  *(v15 - 15) = v13;
  *(v15 - 31) = v14;
  return (*(v10 + 8 * (((v9 == v11) * a4) ^ v8)))();
}

uint64_t sub_265C61898@<X0>(uint64_t (*a1)(void)@<X4>, uint64_t *a2@<X5>, _DWORD *a3@<X6>, char a4@<W8>)
{
  v5 = *a2;
  v6 = v4 - ((2 * v4) & 0x75FC608A) + 989737029;
  v7 = ((2 * *a3) & 0xF5FFFFDE) + (*a3 ^ 0x7AFFFFEF) - 2063597551;
  *(*a2 + v7) = (((a4 + 90) & 0x7F) + 18) ^ HIBYTE(v6);
  *(v5 + v7 + 1) = BYTE2(v6) ^ 0xFE;
  *(v5 + v7 + 2) = BYTE1(v6) ^ 0x30;
  *(v5 + v7 + 3) = (v4 - ((2 * v4) & 0x8A) + 69) ^ 0x45;
  *a3 += 4;
  return a1();
}

uint64_t sub_265C61A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _DWORD *a22, int a23, int a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t (*a32)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v33 = (*(v32 + 8 * a14))(*a26, a2, a3, a4, a5, a6, a7, a8);
  *a26 = a25;
  *a22 = a24;
  return a32(v33, 5443, 2694, 1);
}

uint64_t sub_265C61B18(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 + 4453)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 != 0) * (((36 * (v1 ^ 0x859) + 14629175) & 0xFF20C6C8) - 1489)) ^ v1)))();
}

uint64_t sub_265C61C3C()
{
  v5 = (v0 + (v2 - 36) - 201) ^ v1 ^ (17 * (v2 ^ 0x179Du));
  v7 = v3 > 0x1F && v5 > 7;
  return (*(v4 + 8 * (v2 ^ (2 * v7))))();
}

uint64_t sub_265C61C7C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = (v15 + a1 + 24) | 0x828;
  v17 = a1 - 1042202217;
  v18 = v17 + 806;
  v19 = (*(v14 + 8 * (v17 + 2400)))(16, 3886098504);
  HIDWORD(a7) = 1237422985;
  return (*(v14 + 8 * (((v19 == 0) * (v16 - 2099)) ^ v18)))(v19, v20, v21, v22, v23, v24, v25, v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_265C61D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, int a32, uint64_t a33, int a34, char *a35, int a36)
{
  v41 = v39 - 2898;
  if (a14 >= 0x40)
  {
    v42 = 64;
  }

  else
  {
    v42 = a14;
  }

  v43 = ((2 * (&a31 & 0x62F10143D0B89CA0) - &a31 - 0x62F10143D0B89CA7) ^ 0x66A588068E74BFF6) * v36;
  a36 = a15 ^ v43;
  a31 = v41 - v43 - 1709473427;
  a32 = a14 + v43;
  a35 = &a20;
  a33 = a16 ^ v43;
  a34 = v42 ^ v43;
  (*(v40 + 8 * (v41 ^ 0x1360)))(&a31, a2, a3, a4, a5, a6, a7, a8);
  v44 = (*(v40 + 8 * (v39 + 1329)))(a10, v37, 0, (&off_28778E150)[(v39 - 2898) ^ 0x97F], &a20, 30);
  if (a16)
  {
    v45 = a14 == 0;
  }

  else
  {
    v45 = 1;
  }

  v47 = !v45 && v38 == 1237465637;
  return (*(v40 + 8 * ((202 * v47) ^ v39)))(v44);
}

uint64_t sub_265C61EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t (*a32)(uint64_t))
{
  v37 = (*(v35 + 8 * (v32 ^ 0x1F09)))(*v36, a2, a3, a4, a5, a6, a7, a8);
  *v36 = v34;
  *(v36 + 8) = v33;
  return a32(v37);
}

uint64_t sub_265C61F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  *(v31 - 216) = v28;
  *(v31 - 224) = v29 + 1427277979 * ((1410942277 - ((v31 - 224) | 0x54194545) + ((v31 - 224) | 0xABE6BABA)) ^ 0xFBB7F7D2) - 1212;
  (*(v30 + 8 * (v29 + 4903)))(v31 - 224, a2, a3, a4, a5, a6, a7, a8);
  v32 = (*(v30 + 8 * (v29 + 4862)))(0, 4, va) == 0;
  return (*(v30 + 8 * ((v32 * (28 * (v29 ^ 0x66E) - 6166)) ^ (v29 + 1871))))();
}

uint64_t sub_265C62070@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v9 = v4 + 32;
  v10 = (v9 ^ v7 ^ (v5 + 2567)) + v3;
  v11 = *(v2 + v10 - 15);
  v12 = *(v2 + v10 - 31);
  v13 = a2 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v8 + 8 * (((v6 == v9) * a1) ^ (v5 + 147))))();
}

uint64_t sub_265C62090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21, uint64_t a22, uint64_t a23)
{
  v26 = (v23 + 1263658885) | 0x892A8;
  *(v24 + 8) = a21;
  *(v24 + 12) = 0;
  v27 = (*(v25 + 8 * (v26 ^ 0x10CBAF71)))(*(&off_28778E150)[v26 ^ 0x10CBB6A3], a23, a21, a4, a5, a6, a7, a8);
  return (*(v25 + 8 * (((((v26 + 91848912) & 0xE9BACEC7 ^ 0x49C23C61) == 1237465637) * ((v26 + 91848912) ^ 0x16452EA6)) ^ (v26 - 281783972))))(v27);
}

uint64_t sub_265C62168@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 + (v3 ^ 0x44Fu) - 332;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((31 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_265C62234()
{
  v5 = (*(v4 - 148) | ((*(v4 - 148) < v2) << 32)) + *(v0 + 12) + 443687314;
  v7 = v5 < ((v1 - 3424) ^ 0x64345AE3uLL) || v5 > *(v0 + 8) + 1681152951;
  return (*(v3 + 8 * ((434 * (((v1 + 11) ^ v7) & 1)) ^ v1)))();
}

uint64_t sub_265C62358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, char a21, __int16 a22, char a23, __int16 a24, char a25, __int16 a26, char a27, uint64_t a28, uint64_t a29, _DWORD *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t *a34)
{
  v36 = *a34;
  v37 = ((2 * *a30) & 0xF776BAFE) + ((((v34 - 1147) | 0x1271) + 2075871756) ^ *a30);
  *(*a34 + v37 - 2075876735) = a27;
  *(v36 + v37 + (v34 ^ 0x8444A7FF)) = a25;
  *(v36 + v37 - 2075876733) = a23;
  *(v36 + v37 - 2075876732) = a21;
  v38 = (*a30 + 4);
  *a30 = v38;
  return (*(v35 + 8 * ((185 * (a19 > *a34 + ((2 * v38) & 0x1A4BD9C7ELL) + (v38 ^ 0x3F3FADFFD25ECE3FuLL) - 0x3F3FADFFD25ECE3FLL)) ^ v34)))(1849);
}

uint64_t sub_265C624D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  v21 = (*(v18 + 8 * (v20 ^ 0x2053)))(a1, 4, va, a4, a5, a6, a7, a8);
  return (*(v18 + 8 * ((((v20 ^ 0x34F4) - 3377) * (v19 >= 1765489651)) ^ ((v20 ^ 0x34F4) - 69))))(v21);
}

uint64_t sub_265C62530(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v11 = ((2 * v6) & 0x7DBBC07E) + (v6 ^ 0xBEDDE03F) + 1092752583;
  v12 = (*(*v8 + v11 + (a6 ^ 0x36A)) << 24) | (*(*v8 + v11 + 2811) << 16) | (*(*v8 + v11 + 2812) << 8) | *(*v8 + v11 + 2813);
  *v9 = (v12 ^ v7) + a2 + (a4 & (2 * v12));
  *(v8 + 12) += 4;
  return v10();
}

uint64_t sub_265C625CC(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *(a1 + a3);
  v8 = (v5 + a3);
  *(v8 - 1) = *(a1 + a3 - 16);
  *v8 = v7;
  return (*(v6 + 8 * (((v4 == a3) * a2) ^ v3)))();
}

uint64_t sub_265C626B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  *(v27 - 144) = v22 + 1384597421 * ((((v27 - 144) | 0xEE412BB8) - (v27 - 144) + ((v27 - 144) & 0x11BED440)) ^ 0xC8F72C1) - 1501086802;
  *(v27 - 136) = va;
  (*(v26 + 8 * (v22 ^ 0x1B3Bu)))(v27 - 144, a2, a3, a4, a5, a6, a7, a8);
  v28 = (*(v26 + 8 * (v22 ^ 0x1B76u)))(v25, v24, 0, (&off_28778E150)[v22 - 671] - 8, va, 2);
  return (*(v26 + 8 * (((((v23 == 0) ^ (-95 * (v22 ^ 0xDC) - 69)) & 1) * (2977 * (v22 ^ 0x2DC) - 5727)) ^ (2977 * (v22 ^ 0x2DC)))))(v28);
}

uint64_t sub_265C628EC(uint64_t a1, int a2)
{
  v9 = (v5 - 32);
  v10 = v7 - 32;
  v11 = *(v10 + v4);
  *(v9 - 1) = *(v10 + v4 - 16);
  *v9 = v11;
  return (*(v8 + 8 * (((((v2 == v6 + 32) ^ (v3 + 36)) & 1) * a2) ^ v3)))();
}

void sub_265C62C9C(int a1@<W8>)
{
  (*(v2 + 8 * (a1 ^ 0x1114)))();
  *v1 = 0;
  JUMPOUT(0x265C12C70);
}

uint64_t sub_265C62CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t *a28)
{
  v31 = a28[2];
  v32 = a28[9];
  v33 = *a28;
  *(v30 - 176) = 0;
  *(v30 - 156) = 1237465637;
  *(v30 - 184) = 1237465637;
  if (v31)
  {
    v34 = v33 == 0;
  }

  else
  {
    v34 = 1;
  }

  v36 = !v34 && v32 != 0;
  return (*(v29 + 8 * ((v36 * (v28 - 8021 + 88 * (v28 ^ 0x8F4))) ^ v28)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, v31, v32, a13, a14, a15, v33);
}

uint64_t sub_265C62E18@<X0>(uint64_t a1@<X8>)
{
  v6 = ((v3 - 1406) ^ 0xFFFFFFFFFFFFF670) + v2;
  v7 = *(v5 + v6 - 15);
  v8 = *(v5 + v6 - 31);
  v9 = a1 + v1 + v6;
  *(v9 - 15) = v7;
  *(v9 - 31) = v8;
  return (*(v4 + 8 * ((44 * ((v2 & 0xFFFFFFE0) == 32)) ^ v3)))();
}

uint64_t sub_265C62E74()
{
  v9 = (*(v6 + 12) ^ v2) + (((v7 - 3502) ^ v3) & (2 * *(v6 + 12))) + v4;
  v11 = v9 >= 0xAEC58DB0 && v9 <= *(v6 + 8) + 2932182448u;
  return (*(v8 + 8 * ((v11 * (v5 + (v7 ^ v0) * v1)) ^ v7)))();
}

uint64_t sub_265C62F28@<X0>(int a1@<W2>, int a2@<W3>, uint64_t a3@<X8>)
{
  v7 = v3 - 1;
  *(v5 + v7) = *(a3 + v7);
  return (*(v6 + 8 * (((v7 == 0) * ((v4 ^ a1) + a2)) ^ v4)))();
}

void cRLCDS4RDykIYKucqwdbVFlu()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = (&off_28778E150)[(*(off_28778E268 + (*(off_28778E6F0 + (91 * ((dword_28003EDD8 + qword_28003EE80) ^ 0x30)) - 8) ^ 0x6Fu) - 8) ^ (91 * ((dword_28003EDD8 + qword_28003EE80) ^ 0x30))) - 10];
  v1 = qword_28003EE80 ^ &v4 ^ *(v0 - 4);
  v2 = (636859739 * v1) ^ 0xE2C729A08169AF30;
  v3 = 636859739 * (v1 ^ 0xE2C729A08169AF30);
  qword_28003EE80 = v2;
  *(v0 - 4) = v3;
  __asm { BRAA            X8, X17 }
}

void sub_265C63260(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 68) + 652747349 * ((-2 - ((~a1 | 0x1337F2BC) + (a1 | 0xECC80D43))) ^ 0x51C4CC29);
  v3[0] = v1 - 891395573 * ((((2 * v3) | 0x275415A6) - v3 - 329910995) ^ 0x29871568) - 1595;
  v2 = (&off_28778E150)[v1 - 5866] - 8;
  (*&v2[8 * v1 + 5192])(v3);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_265C635D8@<X0>(uint64_t a1@<X8>)
{
  v7 = (v4 + v5 - 1278) | 0x69;
  *(a1 + v2 + -8 - v3) = *(v1 + v2 + -8 - v3);
  return (*(v6 + 8 * (((((v7 ^ 0xFFFFF583) & v2) + -8 - v3 == 0) * (((v7 - 1900194880) & 0x7142ABFD) + 3839)) ^ v7)))(((v7 - 1900194880) & 0x7142ABFDu) + 3839, -16 - v3);
}

uint64_t sub_265C636A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = (*(v11 + 52864))(a11, a10, a3, a4, a5, a6, a7, a8);
  *v12 = v13;
  return (*(v11 + 8 * ((5047 * (v13 == 0)) ^ 0x42Bu)))();
}

uint64_t sub_265C63820(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, _DWORD *a20)
{
  v22 = (v20 - 32) | 0x81;
  v23 = *a4;
  v24 = a19 - ((a19 << (v22 ^ (v21 - 1))) & 0x75FC608A) + 989737029;
  v25 = ((2 * *a20) & 0xFD7EFAFE) + (*a20 ^ 0xFEBF7D7F) + 21004929;
  *(*a4 + v25) = HIBYTE(v24) ^ 0x3A;
  *(v23 + v25 + 1) = BYTE2(v24) ^ 0xFE;
  *(v23 + v25 + 2) = BYTE1(v24) ^ 0x30;
  *(v23 + v25 + 3) = v24 ^ 0x45;
  *a20 += 4;
  return a3(a1, a2);
}

uint64_t sub_265C639F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  *(v29 + 8) = 4096;
  *(v32 - 208) = *(a29 + 32);
  *v30 = v29;
  return v31(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_265C63AAC()
{
  v5 = (*(v4 + 8 * (v2 + 5526)))(v1);
  *v0 = 0;
  return v3(v5);
}

uint64_t sub_265C63AF8()
{
  v7 = v0 + 3998;
  *(v6 - 136) = (v7 + 1311671789) ^ (1468321087 * (((v5 | 0x2B1E91F0) - (v5 & 0x2B1E91F0)) ^ 0xFFF1D09E));
  *(v6 - 144) = v1;
  (*(v3 + 8 * (v7 ^ 0xA96)))(v6 - 144);
  v8 = (*(v3 + 8 * (v7 ^ 0xABF)))(**(v4 + 8 * (v7 ^ 0x138E)), *(v4 + 8 * (v7 - 4710)) - 4, v2);
  v9 = ((v7 - 1141511649) & (2 * v8)) + (v8 ^ 0x5DFAFEA7);
  *(v6 - 144) = v1;
  *(v6 - 136) = (v7 - 50588513) ^ (912648571 * ((~(v5 | 0xA786A7C) + (v5 & 0xA786A7C)) ^ 0x294AD9B6));
  v10 = (*(v3 + 8 * (v7 + 1704)))(v6 - 144);
  return (*(v3 + 8 * (((v9 == 1576730279) * (((v7 - 4847) | 0x1530) - 3933)) ^ v7)))(v10);
}

uint64_t sub_265C63DE8()
{
  *(v6 - 144) = v1;
  *(v6 - 136) = (v5 + 1311672178) ^ (1468321087 * (v3 ^ 0xD4EF416E));
  (*(v4 + 8 * (v5 ^ 0x813)))(v6 - 144);
  v7 = (*(v4 + 8 * (v5 + 2022)))(**(v0 + 8 * (v5 - 4361)), *(v0 + 8 * (v5 - 4321)) - 4, v2);
  v8 = ((v7 << ((v5 + 94) ^ 9)) & (((v5 - 4006) | 0x531) - 1210618571)) + (v7 ^ 0xDBEBBA35);
  *(v6 - 136) = (v5 - 50588124) ^ (912648571 * ((((2 * v3) | 0xCA3BF6B6) - v3 - 1696463707) ^ 0xB9D0B76E));
  *(v6 - 144) = v1;
  v9 = (*(v4 + 8 * (v5 + 2093)))(v6 - 144);
  return (*(v4 + 8 * ((1755 * (v8 == -605308363)) ^ v5)))(v9);
}

uint64_t sub_265C63FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = (*(v15 + 8 * (v12 + 4463)))(a12, a11, a3, a4, a5, a6, a7, a8);
  *v13 = v16;
  return (*(v15 + 8 * (((v16 == 0) * ((v14 ^ 0x103A) - 5107)) ^ v12)))();
}

uint64_t sub_265C63FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = v14 ^ 0x9C3;
  v17 = v14 - 2133;
  v18 = (*(v15 + 8 * (v14 ^ 0x12B6)))(16, 3886098504, a3, a4, a5, a6, a7, a8);
  LODWORD(a14) = 1237422985;
  return (*(v15 + 8 * (((v18 != 0) * (v16 - 615)) | v17)))(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_265C64144()
{
  v5 = (*(v4 + 8 * (v0 + 6625)))(v1);
  *v2 = 0;
  return v3(v5, 4294962800, 3169, 4612, 0x36388D39C04C843DLL, 0x2FBB29FF301AE9C9, 2563, 22);
}

uint64_t sub_265C641BC()
{
  *(v2 + 8) = 4096;
  *v0 = v2;
  return v1(4423);
}

uint64_t sub_265C64230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  (*(v24 + 8 * (v20 + 5564)))(*v21, a2, a3, a4, a5, a6, a7, a8);
  *v21 = v23;
  *(v21 + 8) = v22;
  return v25(a20, 37, a19, a18, a16);
}

uint64_t sub_265C642F4(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 ^ 0x165)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 == 0) * ((v1 ^ 0x1BA6) - 762)) ^ v1)))();
}

uint64_t sub_265C645D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  *(a1 + v5 + v6) = *(a5 + v5);
  v11 = ((((v8 + a3) & a4 ^ v9) + v5) ^ v7) != a2;
  return (*(v10 + 8 * (v11 | (2 * v11) | v8)))();
}

uint64_t sub_265C6463C@<X0>(int a1@<W1>, unsigned int a2@<W2>, uint64_t a3@<X8>)
{
  v11 = ~v5 + v4;
  v12 = *(v9 + v11 - 15);
  v13 = *(v9 + v11 - 31);
  v14 = a3 + v3 + v11;
  *(v14 - 15) = v12;
  *(v14 - 31) = v13;
  return (*(v10 + 8 * ((((((v7 + 368) | a2) ^ v8) + v5 != v6) * a1) ^ v7)))();
}

uint64_t sub_265C648CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, unsigned int a29)
{
  v35 = (v29 - 44321283) & 0x47FEDDFD;
  *(v30 + 8) = a29;
  v36 = (*(v32 + 8 * (v35 ^ (v33 - 1979))))(**(v31 + 8 * (v35 ^ (v33 + 23))), *(v34 - 152), a29, a4, a5, a6, a7, a8);
  return (*(v32 + 8 * (((((v35 - 1163563935) ^ 0x49C23B7F) == 1237465637) * ((v35 - 1163557741) ^ 0x1449)) ^ (v35 - 1163558743))))(v36);
}

uint64_t sub_265C64990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, uint64_t a22, int a23, uint64_t a24, uint64_t *a25, uint64_t a26, unsigned int a27, uint64_t a28, uint64_t *a29, int *a30, unsigned int a31, int a32, unsigned int a33)
{
  v35 = a25;
  a22 = 0;
  a23 = 0;
  v36 = (&off_28778E150)[a21 - 2145] - 8;
  (*(v34 + 8 * (v33 + 4377)))(v36, a2, a3, a4, a5, a6, a7, a8);
  v37 = *(&off_28778E150)[a21 ^ 0x884];
  v38 = *v35;
  v39 = 1311869473 * ((~(&a27 | 0x93DFE7BB) + (&a27 & 0x93DFE7BB)) ^ 0x87CF02E8);
  a27 = (*(v35 + 3) + 599664785 - ((2 * *(v35 + 3)) & 0x477C5122)) ^ v39;
  a30 = &a23;
  a28 = v38;
  a29 = &a22;
  a33 = 563297187 - v39 + 622816387 * v37;
  a31 = v39 + a21 + 3409;
  (*(v34 + 8 * (a21 + 4417)))(&a27);
  v40 = a32;
  v41 = (*(v34 + 8 * (a21 ^ 0x1179)))(v36);
  return (*(v34 + 8 * (((v40 == a21 + 1893507280) * (a21 - 2220)) ^ a21)))(v41);
}

uint64_t sub_265C64B04@<X0>(uint64_t a1@<X8>)
{
  v5 = (a1 + v2 - 16);
  v6 = (v1 + v2 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v4 + 8 * ((1945 * (((((v3 ^ 0xFFFFF3F6) & v2) == 32) ^ ((v3 ^ 0x99) + 74)) & 1)) ^ v3 ^ 0x799)))(32);
}

uint64_t sub_265C64B70()
{
  v4 = 912648571 * ((&v8 + 60612042 - 2 * (&v8 & 0x39CDDCA)) ^ 0xDF5191FF);
  v10 = v3 - v4 + (v2 ^ 0x784B2D5) - 1363604110;
  v9 = v7;
  v8 = (v2 + 1318477015) ^ v4;
  (*(v1 + 8 * (v2 ^ 0x1357)))(&v8);
  (*(v1 + 8 * (v2 ^ 0x1314)))(v6, v0, 0, (&off_28778E150)[v2 ^ 0xA24] - 12, v7, 8);
  return (v3 - 1237465637);
}

uint64_t sub_265C64D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = (*(v13 + 52864))(a12, a11, a3, a4, a5, a6, a7, a8);
  *v12 = v14;
  return (*(v13 + 8 * ((6485 * (v14 == 0)) ^ 0xD52u)))();
}

uint64_t sub_265C65088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unsigned int a26)
{
  a26 = (v29 + 1311675624) ^ (1468321087 * ((~(&a25 ^ 0x7DD31764 | 0xC0E4D00D) + ((&a25 ^ 0x7DD31764) & 0xC0E4D00D)) ^ 0x962779F8));
  a25 = v28;
  (*(v30 + 8 * (v29 + 5509)))(&a25, a2, a3, a4, a5, a6, a7, a8);
  v31 = (*(v30 + 8 * (v29 ^ 0x1DA4)))(**(v26 + 8 * (v29 ^ 0x495)), *(v26 + 8 * (v29 ^ 0x4FD)) - 4, v27);
  v32 = ((v29 ^ 0x93AC797A) & (2 * v31)) + (v31 ^ (((v29 - 996) | 0x887) + 1238775248));
  a25 = v28;
  a26 = (v29 - 50584678) ^ (912648571 * ((~(&a25 | 0x7FEE6EF0) + (&a25 & 0x7FEE6EF0)) ^ 0x5CDCDD3A));
  v33 = (*(v30 + 8 * (v29 ^ 0x1DE3)))(&a25);
  return (*(v30 + 8 * ((2490 * (v32 == 1238777511)) ^ v29)))(v33);
}

uint64_t sub_265C65220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23, uint64_t a24, char a25)
{
  (*(v29 + 8 * (v28 + 5586)))(v26, a2, a3, a4, a5, a6, a7, a8);
  v31 = *v27;
  v32 = *v25;
  v33 = *(v25 + 3) - ((*(v25 + 3) << (v28 + 7)) & 0x477C5122) + 599664785;
  v34 = 1311869473 * ((-121680628 - ((v30 - 144) | 0xF8BF4D0C) + ((v30 - 144) | 0x740B2F3)) ^ 0xECAFA85F);
  *(v30 - 120) = &a23;
  *(v30 - 112) = v34 + v28 + 4618;
  *(v30 - 104) = 563297187 - v34 + 622816387 * v31;
  *(v30 - 136) = v32;
  *(v30 - 128) = &a25;
  *(v30 - 144) = v33 ^ v34;
  (*(v29 + 8 * (v28 + 5626)))(v30 - 144);
  v35 = *(v30 - 108);
  v36 = (*(v29 + 8 * (v28 + 5584)))(v26);
  return (*(v29 + 8 * (((v35 == ((2 * (v28 + 4188)) ^ 0x287A) + 1625073834) * (((v28 - 42013) & 0x7D2FFCFF) - 2100255956)) ^ (v28 + 4188))))(v36);
}

uint64_t sub_265C65370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (v3 - 623696987) & 0x3928EBF1;
  v7 = ((((v6 - 831) | 0x651u) - 3700) ^ v2) + a2;
  *(a1 - 7 + v7) = *(v4 - 7 + v7);
  return (*(v5 + 8 * ((7 * ((a2 & 0xFFFFFFF8) - 8 == v2)) ^ v6)))();
}

uint64_t sub_265C65568()
{
  (*(v2 + 8 * (v0 + 5002)))();
  *v1 = 0;
  return sub_265C43780();
}

uint64_t sub_265C65664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22)
{
  v24 = v22 - 3428;
  v25 = (v22 - 3428) ^ (((a22 - (v22 - 3428)) | (v22 - 3428 - a22)) >> (((v22 - 51) | 2) ^ 0x2C));
  return (*(v23 + 8 * (((4 * (v25 & 1)) & 0xEF | (16 * (v25 & 1))) ^ (v24 + 4101))))(a1, a2);
}

uint64_t sub_265C656B8()
{
  v5 = (*(v4 + 8 * ((v0 ^ 0x807) + 2298)))(v1);
  *v2 = 0;
  return v3(v5);
}

uint64_t sub_265C6570C()
{
  v6 = 912648571 * (&v10 ^ 0xDCCD4C35);
  v12 = v3 - v6 + ((v2 + 22115323) | 0x8C89010E) - 411797907;
  v10 = (v2 + 229084462) ^ v6;
  v11 = v9;
  (*(v5 + 8 * (v2 - 1089388666)))(&v10);
  (*(v5 + 8 * (v2 ^ 0x40EEC3CD)))(v8, v0, 0, *(v4 + 8 * (v2 ^ v1)) - 4, v9, 8);
  return (v3 - 1237465637);
}

uint64_t sub_265C65810@<X0>(int a1@<W2>, int a2@<W4>, int a3@<W5>, _DWORD *a4@<X8>)
{
  v7 = ((a1 ^ 0xE5FB7FDC) & (2 * v6)) + (v6 ^ 0xF2FDBD3B) + 218251973;
  v8 = (*(*v4 + v7) << 24) | (*(*v4 + v7 + 1) << 16) | (*(*v4 + v7 + 2) << 8) | *(*v4 + v7 + 3);
  *a4 = (v8 ^ 0xDDEFFB67) + a3 + (a2 & (2 * v8));
  *(v4 + 12) += 4;
  return v5();
}

uint64_t sub_265C65B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, uint64_t *a24, uint64_t a25)
{
  v28 = a24;
  a25 = 0;
  a23 = 0;
  v29 = (&off_28778E150)[v25 ^ 0x3A8] - 8;
  (*(v26 + 8 * (v25 + 5586)))(v29, a2, a3, a4, a5, a6, a7, a8);
  v30 = *v28;
  v31 = 1311869473 * ((-480590463 - ((v27 - 144) | 0xE35AC581) + ((v27 - 144) | 0x1CA53A7E)) ^ 0xF74A20D2);
  v32 = 563297187 - v31 + 622816387 * *(&off_28778E150)[v25 - 963];
  *(v27 - 144) = (((v25 - 998) | 0x1442) + *(v28 + 3) - ((2 * *(v28 + 3)) & 0x477C5122) + 599659579) ^ v31;
  *(v27 - 104) = v32;
  *(v27 - 112) = v31 + v25 + 4618;
  *(v27 - 136) = v30;
  *(v27 - 128) = &a25;
  *(v27 - 120) = &a23;
  (*(v26 + 8 * (v25 ^ 0x1A0E)))(v27 - 144);
  v33 = *(v27 - 108);
  v34 = (*(v26 + 8 * (v25 ^ 0x1A30)))(v29);
  return (*(v26 + 8 * ((7150 * (v33 == 1893509507)) ^ v25)))(v34);
}

uint64_t sub_265C65C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, char a17, __int16 a18, char a19, __int16 a20, char a21, __int16 a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _DWORD *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t *a35)
{
  v37 = *a35;
  v38 = ((2 * *a29) & 0xF57CBEBE) + (*a29 ^ 0xFABE5F5F);
  *(*a35 + v38 + 88183932 + ((v35 - 331824183) & 0x13C72EED)) = a23;
  *(v37 + v38 + ((v35 - 1138565585) & 0x43DD1DF7 ^ 0x541B537)) = a21;
  *(v37 + v38 + 88187043) = a19;
  *(v37 + v38 + 88187044) = a17;
  v39 = (*a29 + 4);
  *a29 = v39;
  return (*(v36 + 8 * ((29 * (a14 <= *a35 + ((2 * v39) & 0x1D2BF397ALL) + (v39 ^ 0xF7B88F3BE95F9CBDLL) + 0x84770C416A06343)) ^ v35)))();
}

uint64_t sub_265C66228@<X0>(unsigned int a1@<W3>, unint64_t a2@<X4>, int a3@<W5>, uint64_t a4@<X8>)
{
  v8 = v4 - 1;
  *(v6 + v8) = *(a4 + v8);
  return (*(v7 + 8 * (((v8 == (v5 ^ a1 ^ a2)) * a3) ^ v5)))();
}

uint64_t sub_265C66258()
{
  v3 = (*(v1 + 12) ^ 0xF8FF0FE94FEEBCF2) + (((v0 - 1135) + 2682086989) & (2 * *(v1 + 12))) + 0x700F01724CCF0CFLL;
  v5 = v3 < 0x74BBADBD || v3 > *(v1 + 8) + 1958456765;
  return (*(v2 + 8 * ((v5 * ((v0 + 955898489) & 0xC7060FB7 ^ 0x23F)) | v0)))();
}

uint64_t sub_265C662E8@<X0>(uint64_t a1@<X8>)
{
  v5 = (((v3 ^ 0x2Eu) - 4385) ^ 0xFFFFFFFFFFFFFE04) + v2;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((46 * (v5 != 0)) ^ v3 ^ 0x2E)))();
}

uint64_t sub_265C66328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27)
{
  v30 = v27 == 0;
  v31 = (*(v28 + 8 * (v29 + 2533)))(a1, 3, &a27, a4, a5, a6, a7, a8);
  v32 = a27 == ((v29 - 2347) ^ 0x6B3) || v30;
  return (*(v28 + 8 * ((v32 * (((v29 - 4046) | 0x64B) ^ 0x67F)) ^ v29)))(v31);
}

uint64_t sub_265C66400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (a1 + a2 - 16);
  v6 = (v3 + a2 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v4 + 8 * ((((a2 & 0xFFFFFFE0) == 32) * (((v2 + 1553) | 0x90) + 550)) ^ v2)))();
}

void sub_265C6647C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t *a29)
{
  v32 = a29[7];
  v33 = *a29;
  *(v31 - 160) = 0;
  *(v31 - 188) = v30;
  *(v31 - 184) = v30;
  if (v33)
  {
    v34 = 3;
  }

  else
  {
    v34 = 2;
  }

  if (v32)
  {
    v34 = 5;
  }

  *(v31 - 196) = v34;
  v35 = 61 * (v29 ^ 0x90A);
  *(v31 - 216) = v35;
  *(v31 - 212) = v35 ^ 0x199B;
  JUMPOUT(0x265C5EFB8);
}

uint64_t sub_265C66688()
{
  v4 = (*(v2 + 52864))(v0, v1);
  *v3 = v4;
  return (*(v2 + 8 * ((2869 * (v4 == 0)) ^ 0x13FFu)))();
}

uint64_t sub_265C666E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17)
{
  (*(v21 + 8 * (v20 ^ 0x122E)))(v18, a2, a3, a4, a5, a6, a7, a8);
  *v17 = 0;
  return v19(a17);
}

uint64_t sub_265C66738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = (*(v12 + 8 * (v15 ^ 0x1E6Eu)))(a12, a11, a3, a4, a5, a6, a7, a8);
  *v13 = v16;
  return (*(v12 + 8 * (((v16 != 0) * ((v15 - v14 - 169) ^ 0xCFC4BAB1 ^ ((v15 + 2629) | 0x448))) ^ v15)))();
}

uint64_t sub_265C6679C@<X0>(uint64_t a1@<X8>)
{
  v8 = a1 + 0x340200A20A8523F9 + v2 + v3 - v4;
  *(v8 + v1) = *(v6 - v4 - 8 + v1);
  return (*(v7 + 8 * (((v4 - (v1 & 0xFFFFFFF8) == -8) * ((v5 + 1767) ^ 0x8E7)) ^ v5)))(v8 - 8, v4 - (v1 & 0xFFFFFFF8) + 16);
}

uint64_t sub_265C66CA8()
{
  v4 = ((2 * v1) & 0x65F3867E) + (v1 ^ 0x32F9C33F) - 855229247;
  v5 = (*(*v2 + v4) << ((v0 + 110) ^ ((v0 + 92) | 0x12) ^ 0x18)) | (*(*v2 + v4 + 1) << 16) | (*(*v2 + v4 + 2) << 8) | *(*v2 + v4 + 3);
  *(v2 + 12) = v1 + 4;
  return (*(v3 + 8 * ((108 * ((v5 ^ 0xDDEFFB67) + 1808940734 + ((2 * v5) & 0xBBDFF6CE) != 1237465637)) ^ (v0 + 1462))))();
}

uint64_t sub_265C66DDC@<X0>(int a1@<W2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v8 = (v4 ^ a2) + v5;
  *(v6 + v8) = *(a3 + v8);
  return (*(v7 + 8 * (((v8 != 0) * a1) ^ v3)))();
}

uint64_t sub_265C66E54@<X0>(_DWORD *a1@<X8>)
{
  v5 = ((2 * v2) & 0x7DBFE5FE) + (v2 ^ 0xBEDFF2FF) + 1092619521;
  v6 = (*(*v4 + v5) << v3) | (*(*v4 + v5 + 1) << 16) | (*(*v4 + v5 + 2) << 8) | *(*v4 + v5 + 3);
  *a1 = (v6 ^ 0xDDEFFB67) + 1808940734 + ((2 * v6) & 0xBBDFF6CE);
  *(v4 + 12) = v2 + 4;
  return v1();
}

uint64_t sub_265C66F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  (*(v22 + 8 * (v17 ^ 0xBE7B3068)))(*v20, a2, a3, a4, a5, a6, a7, a8);
  *v20 = v19;
  *(v20 + 8) = v18;
  return v21(1779929083, 4294959580, a17, a16, a15);
}

uint64_t sub_265C66FF0(uint64_t a1, uint64_t a2)
{
  *(v3 + 8) = 4096;
  *v4 = v3;
  return v2(1503803381, a2, 2147482379, 5982, 1256, 197, 957);
}

uint64_t sub_265C6703C(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 ^ 0x13AA)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 != 0) * ((v1 + 1470149995) & 0xA85F47BD ^ (v1 - 755))) ^ v1)))();
}

uint64_t sub_265C670CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  *(v31 - 208) = *(a29 + 32);
  *v29 = 0;
  return v30(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_265C670E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, int a18, int a19, char a20, uint64_t a21, uint64_t a22, unsigned int a23, uint64_t a24, char *a25, char *a26, unsigned int a27, int a28, unsigned int a29)
{
  (*(v31 + 8 * (v32 ^ 0x1F7C)))(v29, a2, a3, a4, a5, a6, a7, a8);
  v33 = *a13;
  v34 = *v30;
  v35 = *(v30 + 12) + 599664785 - ((*(v30 + 12) << ((v32 + 118) & 0xFB ^ 0x23)) & 0x477C5122);
  v36 = 1311869473 * ((((&a23 ^ 0x421004 | 0x3CA8EFF8) ^ 0xFFFFFFFE) - (&a23 ^ 0xA863C8 | 0xC3571007)) ^ 0x14FA969F);
  a26 = &a20;
  a29 = 563297187 - v36 + 622816387 * v33;
  a27 = v36 + v32 + 3924;
  a23 = v35 ^ v36;
  a24 = v34;
  a25 = &a17;
  (*(v31 + 8 * (v32 ^ 0x1F44)))(&a23);
  v37 = a28;
  v38 = (*(v31 + 8 * (v32 + 4890)))(v29);
  return (*(v31 + 8 * ((14 * (((v37 == 1625074048) ^ (((v32 + 118) & 0xFB) - 105)) & 1)) ^ (v32 - 1258375562) & 0x4B014BFB)))(v38);
}

uint64_t sub_265C67308@<X0>(uint64_t a1@<X8>)
{
  v5 = (v3 + v1 - 16);
  v6 = *(a1 + v1 - 16);
  *(v5 - 1) = *(a1 + v1 - 32);
  *v5 = v6;
  return (*(v4 + 8 * ((((v1 & 0xFFFFFFE0) == 32) * (v2 - 592)) ^ v2)))(a1 + v1 - 48);
}

uint64_t sub_265C67358()
{
  v5 = (*(v4 + 8 * (v3 + 1626)))(v1);
  *v2 = 0;
  return v0(v5);
}

uint64_t sub_265C673B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned int a28, uint64_t a29, char *a30, char *a31, unsigned int a32, int a33, unsigned int a34)
{
  (*(v37 + 8 * (v34 + 2642)))(v35, a2, a3, a4, a5, a6, a7, a8);
  v39 = *v36;
  v40 = *(v38 + 12) + 599664785 - ((*(v38 + 12) << (((v34 - 42) | 0x80) ^ 0xD1)) & 0x477C5122);
  v41 = 1311869473 * ((1830331888 - (&a28 | 0x6D18A5F0) + (&a28 | 0x92E75A0F)) ^ 0x790840A3);
  a29 = *v38;
  a30 = &a23;
  a34 = 563297187 - v41 + 622816387 * v39;
  a32 = v41 + v34 + 1674;
  a28 = v40 ^ v41;
  a31 = &a21;
  (*(v37 + 8 * (v34 + 2682)))(&a28);
  (*(v37 + 8 * (v34 ^ 0x16B0u)))(v35);
  return sub_265C674C4();
}

void WURiUYOOBx4()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = off_28778E6F0 - 8;
  v1 = off_28778E268 - 8;
  v2 = (&off_28778E150)[(*(off_28778E268 + (*(off_28778E6F0 + (91 * ((dword_28003EDD8 + qword_28003EBA8) ^ 0x30)) - 8) ^ 0xE3u) - 8) ^ (91 * ((dword_28003EDD8 + qword_28003EBA8) ^ 0x30))) - 48];
  v3 = &v6[qword_28003EBA8 + *(v2 - 4)];
  v4 = 636859739 * (v3 + 0x1D38D65F7E9650D0);
  v5 = 636859739 * (v3 ^ 0xE2C729A08169AF30);
  qword_28003EBA8 = v4;
  *(v2 - 4) = v5;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_265C677B0@<X0>(uint64_t a1@<X8>)
{
  v5 = *(a1 + v1 - 1 - 31);
  v6 = v3 + v1 - 1;
  *(v6 - 15) = *(a1 + v1 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((504 * (1907 * ((v2 - 24) ^ 0xEF1u) - 3782 != ((v2 - 3883) & v1))) ^ (v2 - 24))))();
}

uint64_t sub_265C6794C(uint64_t a1, uint64_t a2)
{
  v6 = v2 ^ (a2 - 975) ^ ((v4 - 6563) | 0xC20u);
  v8 = v3 < 0x20 || v6 < ((v4 - 495024571) & 0x1D816AFE ^ 0xAF2uLL);
  return (*(v5 + 8 * (((2 * v8) | (8 * v8)) ^ v4)))();
}

uint64_t sub_265C67A68()
{
  v4 = (*(v0 + 52864))(v1, v2);
  *v3 = v4;
  return (*(v0 + 8 * ((46 * (v4 != 0)) ^ 0x15CEu)))();
}

uint64_t sub_265C67B8C@<X0>(uint64_t a1@<X8>)
{
  v6 = v1 + -8 - v3;
  *(a1 + -8 - v3 + v2) = *(v6 + v2);
  return (*(v5 + 8 * (((v3 - (v2 & 0xFFFFFFF8) == -8) * (((v4 - 1735) | 0x130) ^ 0x15B1)) ^ v4)))(v6 - 8, v3 - (v2 & 0xFFFFFFF8) + 16);
}

void sub_265C67C78(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 64) - 566710099 * ((-2 - ((~a1 | 0xD8DAD969) + (a1 | 0x27252696))) ^ 0x549F81E5);
  v3 = v1 - 1163560053 - 891395573 * ((2 * (&v3 & 0x6052B630) - &v3 + 531450318) ^ 0x25805675) + 151;
  v2 = (&off_28778E150)[v1 ^ 0x455A9495] - 8;
  (*&v2[8 * v1 - 0x22AD3D8D0])(&v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_265C67E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  v24 = v22 - 1440;
  v25 = (v22 + 656724521) & 0xD8DB2FFA;
  v26 = *(v23 + 8 * ((v22 - 1440) ^ 0x1DB4));
  v26(a1, a2, a3, a4, a5, a6, a7, a8);
  v36 = (*(v23 + 8 * (v24 ^ 0x1E4E)))(a1);
  return (*(v23 + 8 * (((*a22 == 0) * (v25 ^ 0x1B3A ^ (v25 - 1778110338) & 0x69FBCF79)) ^ v25)))(v36, v28, v29, v30, v31, v32, v33, v34);
}

uint64_t sub_265C6801C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v70 = (v68 - 678) | 0xA6;
  if (a22 >= 0x40)
  {
    v71 = 64;
  }

  else
  {
    v71 = a22;
  }

  if ((a36 - 224715022) >= 0xFFFFFFBF)
  {
    v72 = a36 - 224715635 + v70;
  }

  else
  {
    v72 = 64;
  }

  v73 = 1384597421 * ((~(v69 - 184) & 0x655E650EB557F700 | (v69 - 184) & 0x9AA19AF14AA808FFLL) ^ 0x1323BD615799AE79);
  *(v69 - 184) = v72 ^ v73;
  *(v69 - 144) = (v68 - 1125746737) ^ v73;
  *(v69 - 140) = a36 - 224715635 + v70 - v73;
  *(v69 - 152) = v71 + v73;
  *(v69 - 148) = (v66 - 1237465637) ^ v73;
  *(v69 - 136) = a22 + v73;
  *(v69 - 176) = a33 + v73;
  *(v69 - 168) = a29 ^ v73;
  *(v69 - 160) = &a65;
  (*(v67 + 8 * (v68 + 5494)))(v69 - 184, a2, a3, a4, a5, a6, a7, a8);
  v74 = (*(v67 + 8 * (v68 ^ 0x1D0E)))(a12, v65, 0, (&off_28778E150)[v68 ^ 0x44F], &a65, 52);
  return (*(v67 + 8 * (((((v70 - 549047641) & 0x20B9DFBE) + 2 * (v70 ^ 0x414) - 6189) * (v66 == 1237465637)) ^ v70)))(v74);
}

uint64_t sub_265C681A4@<X0>(uint64_t (*a1)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, int a32, _DWORD *a33)
{
  v34 = ((a32 & 0x98F39C72) << ((a9 ^ 0x59) - 111)) & (a32 ^ 0x9AE39970) ^ a32 & 0x98F39C72;
  v35 = ((2 * (a32 ^ 0xBB45B950)) ^ 0x476C4A44) & (a32 ^ 0xBB45B950) ^ (2 * (a32 ^ 0xBB45B950)) & 0x23B62522;
  v36 = (v35 ^ 0x3040422) & (4 * v34) ^ v34;
  v37 = ((4 * (v35 ^ 0x20922522)) ^ 0x8ED89488) & (v35 ^ 0x20922522) ^ (4 * (v35 ^ 0x20922522)) & 0x23B62520;
  v38 = (v37 ^ 0x2900402) & (16 * v36) ^ v36;
  v39 = *v33;
  v40 = ((16 * (v37 ^ 0x21262122)) ^ 0x3B625220) & (v37 ^ 0x21262122) ^ (16 * (v37 ^ 0x21262122)) & 0x23B62520;
  v41 = v38 ^ 0x23B62522 ^ (v40 ^ 0x23220002) & (v38 << 8);
  v42 = a32 ^ (2 * ((v41 << 16) & 0x23B60000 ^ v41 ^ ((v41 << 16) ^ 0x25220000) & (((v40 ^ 0x942502) << 8) & 0x23B60000 ^ 0x1920000 ^ (((v40 ^ 0x942502) << 8) ^ 0x36250000) & (v40 ^ 0x942502))));
  v43 = ((2 * *a33) & 0xF576BADE) + (*a33 ^ 0x7ABB5D6F) - 2059099503;
  *(*v33 + v43 + 1) = BYTE2(v42) ^ 0xDB;
  *(v39 + v43 + 2) = BYTE1(v42) ^ 0xD6;
  *(v39 + v43) = HIBYTE(v42) ^ 0x9D;
  *(v39 + v43 + 3) = v42 ^ 0x36;
  *a33 += 4;
  return a1(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_265C68414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v16 + 8) = 4096;
  *v15 = v16;
  return v17(184702973, 2147482772, 1867, &off_28778E150, 4674, -6844, a15, a8);
}

uint64_t sub_265C68470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = v68 + 3180;
  if (v66 >= 0x40)
  {
    v74 = 64;
  }

  else
  {
    v74 = v66;
  }

  if (a17 >= 0x40)
  {
    v75 = 64;
  }

  else
  {
    v75 = a17;
  }

  v76 = 1427277979 * (((~(v72 - 184) | 0x120D52F89C7CFB40) + ((v72 - 184) | 0xEDF2AD07638304BFLL)) ^ 0xCB986AB133D249D6);
  *(v72 - 160) = a31 - v76;
  *(v72 - 144) = v74 + v76;
  *(v72 - 184) = a17 ^ v76;
  *(v72 - 180) = v75 + v76;
  *(v72 - 176) = v65 + v76;
  *(v72 - 168) = v70 - v76;
  *(v72 - 152) = v66 ^ v76;
  *(v72 - 148) = (v68 + 417139754) ^ v76;
  *(v72 - 136) = &a43;
  (*(v69 + 8 * (v68 + 4394)))(v72 - 184, a2, a3, a4, a5, a6, a7, a8);
  (*(v69 + 8 * (v68 + 4335)))(a12, v67, 0, (&off_28778E150)[v68 - 2101] - 8, &a43, 56);
  v77 = 652747349 * ((((v72 - 184) | 0x9E4B7DFDFC5DE94ELL) - (v72 - 184) + ((v72 - 184) & 0x61B4820203A216B0)) ^ 0xC4FDD601BEAED7DBLL);
  *(v72 - 184) = v70;
  *(v72 - 176) = (v68 + 3421) ^ v77;
  *(v72 - 168) = v65;
  *(v72 - 136) = &STACK[0x280];
  *(v72 - 172) = (a9 ^ 0xFD) - 85 * ((((v72 + 72) | 0x4E) - (v72 + 72) + ((v72 + 72) & 0xB0)) ^ 0xDB);
  *(v72 - 152) = (a31 - ((2 * a31) & 0x35D89D49462B3EFELL) + (((v68 + 2153) | 0x405u) ^ 0x9AEC4EA4A3158A58)) ^ v77;
  *(v72 - 144) = &a65;
  *(v72 - 160) = ((v66 ^ 0x7F5DFCFE) - 356550776 + ((2 * v66) & 0xFEBBF9FC)) ^ v77;
  *(v72 - 156) = ((a17 ^ 0xEB1D75EE) + 2130706072 + ((2 * a17) & 0xD63AEBDC)) ^ v77;
  v78 = (*(v69 + 8 * (v73 ^ 0xF1F)))(v72 - 184);
  return (*(v69 + 8 * (v73 | (2 * (*v71 != 0)))))(v78);
}

uint64_t sub_265C68820()
{
  *(v0 + 8) = 4096;
  *v1 = v0;
  return v2(2147477622, 1217, 5103);
}

uint64_t sub_265C68AE0()
{
  v3 = v0 + 273;
  v4 = (*(v1 + 12) ^ 0xFFF85BFBF9AF16FFLL) + ((2 * *(v1 + 12)) & 0x1F35E2DFELL) + 0x7A4042CC1A061;
  v6 = v4 >= 0x2670B75C && v4 <= *(v1 + 8) + (v3 ^ 0x2670A66EuLL);
  return (*(v2 + 8 * (v6 | (4 * v6) | v3)))();
}

uint64_t sub_265C68B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  v18 = v16 + 3356;
  v19 = v16 + 48;
  a15 = v16 + 3356 - 891395573 * (((&a15 ^ 0xE8A1071B | 0xAAEB86A8) - ((&a15 ^ 0xE8A1071B) & 0xAAEB86A8)) ^ 0x78679E08) - 1436;
  v20 = (*(v17 + 8 * (v16 + 4164)))(&a15, a2, a3, a4, a5, a6, a7, a8);
  return (*(v17 + 8 * (((a16 != 1163564281) * (v19 ^ 0x9A8)) ^ v18)))(v20);
}

uint64_t sub_265C68C58()
{
  (*(v4 + 8 * (v2 ^ 0x1D27)))(v1);
  *v3 = 0;
  return v0(1155365296, 7553, 896765210, 3398201341, 3346);
}

uint64_t sub_265C68CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t *a34, unint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, unsigned int a39, unsigned int a40)
{
  if (v46 >= 0x40)
  {
    v48 = 64;
  }

  else
  {
    v48 = v46;
  }

  v49 = *v41;
  v50 = 652747349 * ((~&a30 & 0x82C8E43C72C39F23 | &a30 & 0x7D371BC38D3C60DCLL) ^ 0xD87E4FC03030A1B6);
  LODWORD(a31) = v50 ^ v46;
  a32 = v50 + v43;
  a34 = &a23;
  a35 = v50 ^ v44;
  LODWORD(a33) = v50 - 1708667144;
  HIDWORD(a33) = v48 - v50;
  a30 = v49 + v50;
  (*(v45 + 53088))(&a30, a2, a3, a4, a5, a6, a7, a8);
  (*(v45 + 52544))(a11, v47, 0, *(v42 + 1624) - 4, &a23, 44);
  v51 = 891395573 * (&a30 ^ 0x3A2D1FBB);
  LOBYTE(a35) = -69 - -11 * (&a30 ^ 0xBB);
  a33 = 0;
  a34 = &a15;
  a30 = v40;
  a31 = 0;
  a39 = v51 + 2317;
  a40 = (((2 * v46) & 0xDF7FEB7E) + (v46 ^ 0x6FBFF5BF) - 1754300576) ^ v51;
  a36 = 0;
  a37 = 0;
  a32 = v44;
  a38 = v43;
  v52 = (*(v45 + 53264))(&a30);
  *v41 = a15;
  return (*(v45 + 8 * ((247 * (a14 != 0)) ^ 0x1966)))(v52);
}

uint64_t sub_265C68ECC@<X0>(uint64_t a1@<X8>)
{
  v6 = (((v3 + 287) - 1826) ^ v2) + v1;
  *(v4 - 7 + v6) = *(a1 - 7 + v6);
  return (*(v5 + 8 * ((26 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

void sub_265C68F4C(_BYTE *a1@<X6>, uint64_t a2@<X8>)
{
  v6 = (v2 + 294) | 0x203u;
  v7 = (a2 + v4 + v5);
  v7[6] = a1[7];
  *(a2 + (v6 ^ (v5 + 676)) + v4) = a1[6];
  v7[4] = a1[5];
  v7[3] = a1[4];
  v7[2] = a1[3];
  v7[1] = a1[2];
  *v7 = a1[1];
  *v3 = *a1;
  JUMPOUT(0x265C68FACLL);
}

uint64_t sub_265C691B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v15 = v10 + 8;
  v16 = ((((v11 - 1706) | a8) - 2365) ^ v15) + v9;
  *(a2 + v16 + v8) = *(v12 + v16);
  return (*(v14 + 8 * (((a3 == v15) * v13) ^ v11)))(a1);
}

uint64_t sub_265C691C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = (*(v13 + 8 * (v14 + 5755)))(a12, a11, a3, a4, a5, a6, a7, a8);
  *v12 = v15;
  return (*(v13 + 8 * (((v15 == 0) * (((v14 - 209781720) & 0xEFF70FDF) + 478802139)) ^ v14)))();
}

uint64_t sub_265C692AC()
{
  v7 = *v0;
  v8 = 1864678469 * (((&v12 ^ 0x16ABDD972FF5B351 | 0x4033037AD808615DLL) - (&v12 ^ 0x16ABDD972FF5B351) + ((&v12 ^ 0x16ABDD972FF5B351) & 0xBFCCFC8527F79EA0)) ^ 0x2E68E1DEC48DC5E5);
  v12 = (v4 + 634662955) ^ v8;
  v13 = v7 ^ v8;
  v14 = v1 - v8 + ((v4 - v3) ^ 0x82E21436);
  v15 = v11;
  (*(v6 + 8 * (v4 ^ 0x1484)))(&v12);
  (*(v6 + 8 * (v4 ^ 0x1722)))(v10, v2, 0, *(v5 + 8 * (v4 - 3520)) - 4, v11, 18);
  return (v1 - 1237465637);
}

uint64_t sub_265C69440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (a1 + a2 - 16);
  v6 = *(v3 + a2 - 16);
  *(v5 - 1) = *(v3 + a2 - 16 - 16);
  *v5 = v6;
  return (*(v4 + 8 * ((((a2 & 0xFFFFFFE0) == 32) * (((v2 + 567) | 2) + 1171)) ^ v2)))();
}

uint64_t sub_265C6972C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = (*(v12 + 8 * (v13 + 5097)))(a11, v11, a3, a4, a5, a6, a7, a8);
  *v14 = v15;
  return (*(v12 + 8 * (((v15 != 0) * ((v13 - 1344542184) & 0x59EFB27D ^ 0x9CBA273)) ^ (v13 + 556))))();
}

uint64_t sub_265C697D8()
{
  v3 = (*(v1 + 12) ^ 0x71BBF897AFBDDE4CLL) + (((v0 - 321) + (v0 - 1358) + 0x15F7BB693) & (2 * *(v1 + 12))) - 0x71BBF896F9677BE3;
  v5 = v3 < 0xB6566265 || v3 > *(v1 + 8) + 3059114597u;
  return (*(v2 + 8 * (((8 * v5) | (16 * v5)) ^ v0)))();
}

uint64_t sub_265C69950@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v10 = v5 + 32;
  v11 = (v10 ^ v7 ^ v4 ^ (v9 + 2917)) + v3;
  v12 = *(v2 + v11 - 15);
  v13 = *(v2 + v11 - 31);
  v14 = a2 + v11;
  *(v14 - 15) = v12;
  *(v14 - 31) = v13;
  return (*(v8 + 8 * (((v6 == v10) * a1) ^ (v4 - 1272008993))))();
}

uint64_t sub_265C69998@<X0>(_DWORD *a1@<X8>)
{
  v6 = ((2 * v2) & 0xFDF3A75E) + (v2 ^ 0xFEF9D3AF);
  v7 = (*(*v4 + (v3 ^ 0x106299D) + v6) << 24) | (*(*v4 + v6 + 17181778) << 16) | (*(*v4 + v6 + 17181779) << 8) | *(*v4 + v6 + 17181780);
  *a1 = (v7 ^ 0xDDEFFB67) + 1808940734 + ((2 * v7) & 0xBBDFF6CE);
  *(v4 + 12) = v2 + 4;
  *(v5 - 208) = v4;
  return v1();
}

uint64_t sub_265C69C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t (*a17)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  (*(v25 + 8 * (v21 ^ 0x9DC)))(*v24, a2, a3, a4, a5, a6, a7, a8);
  *v24 = v23;
  *(v24 + 8) = v22;
  return a17(3463426671, a21, a20, a19);
}

uint64_t sub_265C69E94@<X0>(_DWORD *a1@<X8>)
{
  v5 = v3 + 1042204211;
  v6 = ((2 * v2) & 0x7733F17E) + (v2 ^ 0xBB99F8BF);
  v7 = (*(*v4 + v6 + 1147537217) << 24) | (*(*v4 + v6 + 1147537218) << 16) | (*(*v4 + (v5 ^ 0x7A78C994) + v6) << 8) | *(*v4 + v6 + 1147537220);
  *a1 = (v7 ^ 0xDDEFFB67) + 1808940734 + ((2 * v7) & 0xBBDFF6CE);
  *(v4 + 12) = v2 + 4;
  return v1();
}

uint64_t sub_265C69F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t *a21, unsigned int a22, uint64_t a23, uint64_t *a24, int *a25, unsigned int a26, int a27, unsigned int a28)
{
  v31 = a21;
  a17 = 0;
  a20 = 0;
  v32 = *(v28 + 8 * (v29 - 3360)) - 8;
  v33 = v28;
  (*(v30 + 8 * (v29 ^ 0x14BE)))(v32, a2, a3, a4, a5, a6, a7, a8);
  v34 = **(v33 + 8 * (v29 ^ 0xD45));
  v35 = *v31;
  v36 = 1311869473 * ((&a22 - 1925448699 - 2 * (&a22 & 0x8D3BFC05)) ^ 0x66D4E6A9);
  a22 = (*(v31 + 3) + 599663704 - ((2 * *(v31 + 3)) & 0x477C5122) + 1081) ^ v36;
  a28 = 563297187 - v36 + 622816387 * v34;
  a26 = v36 + v29 + 2194;
  a25 = &a20;
  a23 = v35;
  a24 = &a17;
  (*(v30 + 8 * (v29 ^ 0x1486)))(&a22);
  v37 = a27;
  v38 = (*(v30 + 8 * (v29 + 3160)))(v32);
  return (*(v30 + 8 * (((v37 == 1893509507) * (((v29 - 2393) | 0x20) + ((v29 - 2361) ^ 0x113C))) ^ v29)))(v38);
}

uint64_t sub_265C6A174(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = ((a1 + 1352372574) & 0xAF6466BF ^ 0xFFFFFFFFFFFFF9C2) + v8;
  v11 = *(v7 + v10 - 15);
  v12 = *(v7 + v10 - 31);
  v13 = a7 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v9 + 8 * ((5666 * ((v8 & 0xFFFFFFE0) == 32)) ^ a1)))();
}

void sub_265C6A1E0(int a1@<W8>, uint64_t a2, ...)
{
  va_start(va, a2);
  (*(v2 + 8 * (a1 + 1027)))(va);
  JUMPOUT(0x265C6A1F8);
}

uint64_t sub_265C6A684@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + 1734135492) & 0x98A333B3;
  v4 = ((2 * *(a1 + 12)) & 0xEEFCAF9ELL) + (*(a1 + 12) ^ (487 * (v3 ^ 0x1230)) ^ 0xBF73FDF7777E5401) + 0x408C0208FC53C395;
  v6 = v4 >= ((122 * (v3 ^ 0x1213)) ^ 0x73D214DAuLL) && v4 <= *(a1 + 8) + 1943149408;
  return (*(v2 + 8 * ((126 * v6) ^ v3)))();
}

uint64_t sub_265C6A890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  (*(v25 + 8 * (v21 + 5548)))(*v22, a2, a3, a4, a5, a6, a7, a8);
  *v22 = v24;
  *(v22 + 8) = v23;
  return v26(10638718, 1042, a21, a20, 3222675024);
}

uint64_t sub_265C6AAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = (*(v11 + 8 * (v12 ^ 0x1E20u)))(a11, a10, a3, a4, a5, a6, a7, a8);
  *v13 = v14;
  return (*(v11 + 8 * (((v14 == 0) * (((v12 - 1545177077) & 0xA51DDC4F ^ 0xA1045BEC) + v12 + 626)) ^ v12)))();
}

uint64_t sub_265C6AB1C()
{
  v8 = *v15;
  if (*v15 >= 0x40)
  {
    v9 = 64;
  }

  else
  {
    v9 = *v15;
  }

  v10 = *v6;
  v11 = *v1;
  v12 = (((v17 | 0x6EFFC1DABD82FD3ALL) - (v17 & 0x6EFFC1DABD82FD3ALL)) ^ 0x9554B7601CB12195) * v7;
  v20 = v16;
  v19 = v9 ^ v12;
  v17[0] = v0 - v12 - 1709472237;
  v17[1] = v8 + v12;
  v18 = v10 ^ v12;
  v21 = v11 ^ v12;
  (*(v3 + 8 * (v0 ^ 0x1E3A)))(v17);
  (*(v3 + 8 * (v0 ^ 0x1DD7)))(v14, v4, 0, *(v2 + 8 * (v0 - 921)), v16, 30);
  return (v5 - 1237465637);
}

uint64_t sub_265C6AC38@<X0>(unsigned int a1@<W2>, uint64_t a2@<X3>, int a3@<W4>, uint64_t a4@<X8>)
{
  v8 = v4 - 1;
  *(v6 + v8) = *(a4 + v8);
  return (*(v7 + 8 * (((v8 == 9 * (v5 ^ a1) + a2) * a3) ^ v5)))();
}

uint64_t sub_265C6ADC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned int a23)
{
  v27 = v23 + 4378;
  *(v24 + 8) = a23;
  *(v24 + 12) = 0;
  v28 = (*(v25 + 8 * (v27 ^ 0xA98)))(*(&off_28778E150)[v27 ^ 0x134A], a22, a23, a4, a5, a6, a7, a8);
  return (*(v25 + 8 * ((2016 * (v26 == 1237465637)) ^ (v27 - 4701))))(v28);
}

uint64_t sub_265C6AEEC(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = (*(v2 + 8 * (v1 + 1745)))(4096, 3886098504);
  *a1 = v5;
  return (*(v2 + 8 * ((472 * ((((v1 ^ v3) - v3) ^ (v5 == 0)) & 1)) ^ v1)))();
}

uint64_t sub_265C6B074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, int a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t *a34, uint64_t a35, char *a36, int a37, uint64_t *a38, unint64_t a39, int a40, char a41, uint64_t a42)
{
  if (v46 >= 0x40)
  {
    v49 = 64;
  }

  else
  {
    v49 = v46;
  }

  if (v45 >= 0x40)
  {
    v50 = 64;
  }

  else
  {
    v50 = v45;
  }

  v51 = 1427277979 * ((((2 * &a32) | 0x4537014C6148D816) - &a32 + 0x5D647F59CF5B93F5) ^ 0x84F1471060F52163);
  LODWORD(a36) = v51 ^ v46;
  HIDWORD(a36) = v51 ^ 0x18DD14E3;
  LODWORD(a32) = v51 ^ v45;
  HIDWORD(a32) = v51 + v50;
  a34 = (a13 - v51);
  a35 = v47 - v51;
  a37 = v51 + v49;
  a33 = v51 + a12;
  a38 = &a20;
  (*(v43 + 53016))(&a32, a2, a3, a4, a5, a6, a7, a8);
  (*(v43 + 52544))(v44, v48, 0, qword_28778E700, &a20, 56);
  v52 = 912648571 * (&a32 ^ 0x40A31288DCCD4C35);
  LODWORD(a35) = (v42 - 163) ^ v52;
  a38 = &a16;
  a39 = (v47 - ((2 * v47) & 0xEEC05189AC2C55C0) + (v42 + 1673836037) - 0x89FD73B8DAEA2D0) ^ v52;
  a37 = ((2 * v45) & 0x8F56FCC) + ((v42 + 75145275) ^ v45) - 4370468 + v52;
  a36 = &a18;
  a34 = &a15;
  a32 = a12;
  a42 = a13;
  a40 = (v46 ^ 0xF6B80FC3) + ((2 * v46) & 0xED701F86) - v52 + 226490367;
  a41 = v52 ^ 8;
  v53 = (*(v43 + 8 * (v42 ^ 0xE52u)))(&a32);
  *a14 = a15;
  return (*(v43 + 8 * (v42 | ((a16 != 0) << 6))))(v53);
}

void MYiCHr2n1RFBPK6tHo()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = (&off_28778E150)[(*(off_28778E480 + (*(off_28778E8C0 + (91 * ((dword_28003EDD8 - qword_28003EE88) ^ 0x30))) ^ 0x30u) - 12) ^ (91 * ((dword_28003EDD8 - qword_28003EE88) ^ 0x30))) + 26];
  v1 = &v4[qword_28003EE88 + *(v0 - 4)];
  v2 = 636859739 * v1 - 0x1D38D65F7E9650D0;
  v3 = 636859739 * (v1 ^ 0xE2C729A08169AF30);
  qword_28003EE88 = v2;
  *(v0 - 4) = v3;
  __asm { BRAA            X8, X17 }
}

void sub_265C6B568(_DWORD *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *a1 ^ (1466156297 * (((a1 | 0x2628B566) - a1 + (a1 & 0xD9D74A99)) ^ 0xF59F3537));
  v3[0] = v1 - 891395573 * (((v3 | 0xB33DEF65) - (v3 & 0xB33DEF65)) ^ 0x8910F0DE) - 845;
  v2 = (&off_28778E150)[v1 - 5116] - 8;
  (*&v2[8 * (v1 + 1399)])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_265C6B6D8()
{
  v7 = *v14;
  if (*v14 >= 0x40)
  {
    v8 = 64;
  }

  else
  {
    v8 = *v14;
  }

  v9 = *v15;
  v10 = *v5;
  v11 = 1311869473 * ((v6 - 224 - 2 * ((v6 - 224) & 0x105280793FB49109) + 0x105280793FB49109) ^ 0xA3FD572CD45B8BA5);
  *(v6 - 216) = v8 - v11;
  *(v6 - 208) = v9 ^ v11;
  *(v6 - 200) = v16;
  *(v6 - 184) = v7 ^ v11;
  *(v6 - 224) = v3 - v11 + (((v2 - 2091909464) | 0x60260D48) ^ 0x554BCA86);
  *(v6 - 220) = (v2 + 2118007825) ^ v11;
  *(v6 - 192) = v10 + v11;
  (*(v1 + 8 * (v2 + 5722)))(v6 - 224);
  (*(v1 + 8 * (v2 + 5691)))(v13, v0, 0, *(v4 + 8 * (v2 - 668)), v16, 40);
  return (v3 - 1237465637);
}

uint64_t sub_265C6B828@<X0>(int a1@<W0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X2>, _DWORD *a4@<X3>, char a5@<W8>)
{
  v5 = *a3;
  v6 = a1 + 989737030 + (~(2 * a1) | 0x8A039F75);
  v7 = (*a4 ^ 0x7FFFFF4F) + 2147483471 + ((2 * *a4) & 0xFFFFFE9E);
  *(*a3 + v7 + 354) = (v6 >> ((a5 ^ 0x39) - 104)) ^ 0x3A;
  *(v5 + v7 + 355) = BYTE2(v6) ^ 0xFE;
  *(v5 + v7 + 356) = BYTE1(v6) ^ 0x30;
  *(v5 + v7 + 357) = (a1 + 70 + (~(2 * a1) | 0x75)) ^ 0x45;
  *a4 += 4;
  return a2();
}

uint64_t sub_265C6B8D4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 1978 * (a1 ^ 0x15C);
  HIDWORD(a2) = (*(a4 + 8) - ((v6 ^ 0x4EAB02AA) & (2 * *(a4 + 8))) + 659916527) ^ 0x275586EF;
  LODWORD(v18) = 311 * (v4 ^ 0xF76);
  HIDWORD(v18) = v18 ^ 0x1B84;
  v7 = v6 + 79;
  v8 = v6 - 1089;
  v9 = (*(v5 + 8 * (v6 ^ 0x16BA)))(16, 3886098504);
  return (*(v5 + 8 * ((118 * ((v7 ^ (v9 == 0)) & 1)) ^ v8)))(v9, v10, v11, v12, v13, v14, v15, v16, a2, v18);
}

uint64_t sub_265C6BA84@<X0>(uint64_t a1@<X8>)
{
  v6 = v2 - 1;
  *(v4 + v6) = *(a1 + v6);
  return (*(v5 + 8 * (((v6 != 0) * v3) ^ v1)))();
}

uint64_t sub_265C6BB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20)
{
  *(v21 + 8) = a20;
  *(v21 + 12) = 0;
  v24 = v20 + 189;
  v25 = 179 * ((v20 + 1944) ^ 0x999);
  v26 = v20 + 216;
  (*(v22 + 8 * ((v20 + 1944) ^ 0x105D)))(*(&off_28778E150)[(v20 + 1944) ^ 0x98F], a17, a20, a4, a5, a6, a7, a8);
  return (*(v22 + 8 * (((v23 + v24 == 1237466314) * (v25 ^ 0x1DEB)) ^ v26)))(v21);
}

uint64_t sub_265C6BC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26, uint64_t *a27, unsigned int a28, uint64_t a29, uint64_t *a30, int *a31, unsigned int a32, int a33, unsigned int a34)
{
  v37 = a27;
  a23 = 0;
  a26 = 0;
  v38 = *(v36 + 8 * (v34 - 1384)) - 8;
  (*(v35 + 8 * (v34 ^ 0x1C76)))(v38, a2, a3, a4, a5, a6, a7, a8);
  v39 = **(v36 + 8 * (v34 - 1411));
  v40 = *v37;
  v41 = 1311869473 * ((&a28 - 121463742 - 2 * (&a28 & 0xF8C29C42)) ^ 0x132D86EE);
  a28 = (*(v37 + 3) + (((v34 - 1174) | 0x1052) ^ 0x23BE39E7) - ((*(v37 + 3) << ((v34 - 58) ^ 0x81)) & 0x477C5122)) ^ v41;
  a32 = v41 + v34 + 4170;
  a34 = 563297187 - v41 + 622816387 * v39;
  a29 = v40;
  a30 = &a23;
  a31 = &a26;
  (*(v35 + 8 * (v34 ^ 0x1C4E)))(&a28);
  v42 = a33;
  v43 = (*(v35 + 8 * (v34 + 5136)))(v38);
  return (*(v35 + 8 * ((5454 * (v42 == 1893509507)) ^ v34)))(v43);
}

uint64_t sub_265C6BE18(uint64_t a1)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v3 + v5);
  return (*(v4 + 8 * ((874 * (v5 == ((v2 - 1866) ^ 0x675))) ^ v2)))();
}

uint64_t sub_265C6BE8C()
{
  v3 = *(v2 - 192);
  *(v2 - 184) = 0;
  *(v2 - 204) = 0;
  v4 = (&off_28778E150)[v1 ^ 0x8F5] - 8;
  (*(v0 + 8 * (v1 ^ 0x116B)))(v4);
  v5 = *v3;
  v6 = 1311869473 * ((146830260 - ((v2 - 144) | 0x8C073B4) + ((v2 - 144) | 0xF73F8C4B)) ^ 0x1CD096E7);
  v7 = 563297187 - v6 + *(&off_28778E150)[v1 ^ 0x890] * ((v1 ^ 0x251F54BC) + v1 + 1985);
  *(v2 - 144) = (*(v3 + 3) - ((2 * *(v3 + 3)) & 0x477C5122) + 599664785) ^ v6;
  *(v2 - 120) = v2 - 204;
  *(v2 - 104) = v7;
  *(v2 - 112) = v6 + v1 + 3421;
  *(v2 - 136) = v5;
  *(v2 - 128) = v2 - 184;
  (*(v0 + 8 * (v1 + 4429)))(v2 - 144);
  v8 = *(v2 - 108);
  v9 = (*(v0 + 8 * (v1 ^ 0x116D)))(v4);
  return (*(v0 + 8 * ((1936 * (v8 == 1893509507)) ^ v1)))(v9);
}

uint64_t sub_265C6C004@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (v3 + 2422)) ^ v3)))();
}

uint64_t sub_265C6C208(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 + 2426)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 == 0) * ((7 * (v1 ^ 0x10B7) + 2859) ^ (v1 + 270))) | v1)))();
}

uint64_t sub_265C6C2A4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v19 - 224) = v17 + 1427277979 * ((v19 - 1577466387 - 2 * ((v19 - 224) & 0xA1F9C6CD)) ^ 0xF1A88BA5) - 1212;
  *(v19 - 216) = a1;
  (*(v18 + 8 * (v17 ^ 0x1F69)))(v19 - 224);
  return (*(v18 + 8 * ((v17 + 2831) ^ (4 * (a17 == 0)))))();
}

uint64_t sub_265C6C380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = *(v9 + 8 * ((228 * ((((v6 ^ 0xE3) + v6 + 42) ^ (v7 == v8)) & 1)) ^ (v6 + 3550)));
  v12 = *(v10 - 208);
  *(v10 - 212) = a6;
  return v11(a1, a2, a3, a4, v12);
}

uint64_t sub_265C6C400@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((3800 * (v5 == ((2 * v3) ^ 0x8F2))) ^ v3)))();
}

uint64_t sub_265C6C43C@<X0>(int a1@<W8>)
{
  v4 = (a1 + 1851663853) & 0x91A1DDEB;
  (*(v3 + 8 * (a1 ^ 0x1C8Cu)))();
  *v1 = 0;
  *v1 = 0;
  v1[1] = 0;
  v5 = (*(v3 + 8 * (v4 ^ 0x10A5)))(v1);
  return v2(v5);
}

uint64_t sub_265C6C4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = (*(v14 + 8 * (v16 + 1024)))(a14, a13, a3, a4, a5, a6, a7, a8);
  *v15 = v17;
  return (*(v14 + 8 * ((57 * (((v17 == 0) ^ (v16 + v16 + 43)) & 1)) ^ v16)))();
}

uint64_t sub_265C6C5DC@<X0>(uint64_t a1@<X8>)
{
  v5 = ((v2 - 3282) ^ 0x1F72u) - 5400 + v1;
  v6 = *(a1 + v5 - 15);
  v7 = *(a1 + v5 - 31);
  v8 = v3 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((7868 * ((v1 & 0xFFFFFFE0) == 32)) ^ (v2 - 3282))))(-5400);
}

uint64_t sub_265C6C774@<X0>(int a1@<W2>, unsigned int a2@<W3>, unint64_t a3@<X4>, int a4@<W5>, uint64_t a5@<X8>)
{
  v9 = v5 - 1;
  *(v7 + v9) = *(a5 + v9);
  return (*(v8 + 8 * (((v9 == (((v6 + a1) | a2) ^ a3)) * a4) ^ v6)))();
}

void sub_265C6C8C8()
{
  (*(v2 + 8 * (v0 ^ 0x1508)))();
  *v1 = 0;
  JUMPOUT(0x265C5ECFCLL);
}

uint64_t sub_265C6CCD8@<X0>(uint64_t a1@<X2>, int a2@<W4>, int a3@<W5>, int a4@<W6>, uint64_t a5@<X8>)
{
  v9 = v7 - 1;
  *(a5 + v9 + v5) = *(a1 + v9);
  return (*(v8 + 8 * (((v9 == 0) * (((v6 ^ a2) * a3) ^ a4)) ^ (v6 - 20))))();
}

uint64_t sub_265C6CD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned int a28)
{
  a28 = (v28 + 1311672230) ^ (1468321087 * ((((2 * v30) | 0xC47557B6) - v30 - 1648012251) ^ 0xB6D5EAB5));
  a27 = v29;
  (*(v31 + 8 * (v28 ^ 0x8CF)))(&a27, a2, a3, a4, a5, a6, a7, a8);
  v33 = (*(v31 + 8 * (v28 + 2074)))(**(v32 + 8 * (v28 - 4309)), *(v32 + 8 * (v28 ^ 0x11BF)) - 4, a17);
  v34 = ((v33 << (v28 ^ 0x77)) & 0xFFEDFF4E) + (v33 ^ 0xFFF6FFA7);
  a28 = (v28 - 50588072) ^ (912648571 * ((((2 * v30) | 0xBDEF9862) - v30 - 1593297969) ^ 0x823A8004));
  a27 = v29;
  v35 = (*(v31 + 8 * (v28 + 2145)))(&a27);
  return (*(v31 + 8 * ((246 * (v34 != v28 - 594383)) ^ v28)))(v35);
}

uint64_t sub_265C6CEE8@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (((v3 - 5539) | 0x203) ^ 0xFD1)) ^ v3)))();
}

uint64_t sub_265C6D278()
{
  v6 = (*(v5 + 8 * (v0 ^ 0x119E)))(v3, v2);
  v7 = (*(v5 + 8 * (v0 + 3602)))(v6, 3, v1 + 4 * v2);
  return (*(v5 + 8 * (((v2 + 1 != v4) * ((v0 - 402) ^ 0xA18)) ^ v0)))(v7);
}

uint64_t sub_265C6D2DC(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 ^ 0x1F6)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 == 0) * (((v1 + 2128209346) & 0x81260B8D) - 2338)) ^ v1)))();
}

uint64_t sub_265C6D6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  (*(v30 + 8 * (v29 + 2352)))(a1, 4, va, a4, a5, a6, a7, a8);
  v32 = (*(v30 + 8 * (v29 ^ 0x92B)))(v31, @"P5h3ZgzLxs") == 0;
  return (*(v30 + 8 * ((v32 * ((((v29 - 3955) | 0x8C7) + 56) ^ 0xA12)) ^ v29)))();
}

uint64_t sub_265C6D76C@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  *(a2 + v4 + v2) = *(a1 + v4);
  v9 = ((v4 + 1) ^ v5) == v7 + v6 - 257;
  return (*(v8 + 8 * (((32 * v9) | (v9 << 6)) ^ v3)))();
}

uint64_t sub_265C6D804()
{
  v6 = (*(v4 + 8 * (v3 ^ (v5 + 2805))))(v1);
  *v2 = 0;
  return v0(v6);
}

uint64_t sub_265C6D8EC()
{
  v3 = *(v2 - 216);
  *(v2 - 232) = *(v1 + 8 * (v0 - 6203));
  *(v2 - 176) = 0;
  *(v2 - 184) = 0;
  v4 = (&off_28778E150)[v0 ^ 0x197D] - 8;
  (*(v1 + 8 * (v0 + 157)))(v4);
  v5 = *(&off_28778E150)[v0 ^ 0x1918];
  v6 = *v3;
  v7 = 11 * (v0 ^ 0x1889) + *(v3 + 3) - ((22 * (v0 ^ 0x19FC) + 1199324928) & (2 * *(v3 + 3))) + 599660143;
  v8 = 1311869473 * ((v2 + 290460427 - 2 * ((v2 - 144) & 0x1150139B)) ^ 0xFABF0937);
  *(v2 - 120) = v2 - 184;
  *(v2 - 136) = v6;
  *(v2 - 128) = v2 - 176;
  *(v2 - 144) = v7 ^ v8;
  *(v2 - 112) = v8 + v0 - 811;
  *(v2 - 104) = 563297187 - v8 + 622816387 * v5;
  (*(v1 + 8 * (v0 + 197)))(v2 - 144);
  v9 = *(v2 - 108);
  v10 = (*(v1 + 8 * (v0 ^ 0xE5)))(v4);
  return (*(v1 + 8 * ((8176 * (v9 == 1893509507)) ^ (v0 - 2512))))(v10);
}

uint64_t sub_265C6DAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = (*(v13 + 52864))(a11, a10, a3, a4, a5, a6, a7, a8);
  *v12 = v14;
  return (*(v13 + 8 * ((121 * (v14 == 0)) ^ v11)))();
}

uint64_t sub_265C6DB98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v11 = v8 + 32;
  v12 = (v11 ^ a2 ^ v6) + v5;
  v13 = *(a4 + v12 - 15);
  v14 = *(a4 + v12 - 31);
  v15 = a1 + v12 + v4;
  *(v15 - 15) = v13;
  *(v15 - 31) = v14;
  return (*(v10 + 8 * (((v9 == v11) * a3) ^ v7)))();
}

uint64_t sub_265C6DC9C(uint64_t result)
{
  v1 = *(result + 40);
  v2 = 1427277979 * (((result ^ 0x7FD45F7C3CAEDB6FLL | 0x9BCEFF06B2DA00FELL) - ((result ^ 0x7FD45F7C3CAEDB6FLL) & 0x9BCEFF06B2DA00FELL)) ^ 0xC27067CCDE2596F9);
  v3 = *(result + 8) - v2;
  v4 = *(result + 16) - v2;
  v5 = *(result + 12);
  v6 = *(result + 4) - v2;
  v7 = *(result + 32) ^ v2;
  v8 = *(result + 24) - v2;
  *v1 = 68158978;
  *(v1 + 4) = v3;
  *(v1 + 8) = 2096;
  *(v1 + 10) = v4;
  *(v1 + 18) = 1024;
  *(v1 + 20) = v6;
  *(v1 + 24) = 1040;
  *(v1 + 26) = v7;
  *(v1 + 30) = 2096;
  *(v1 + 32) = v8;
  *(v1 + 40) = 1024;
  *(v1 + 42) = v5 - v2;
  return result;
}

uint64_t sub_265C6DE18(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = v5 + 8;
  *(a1 + (a3 ^ v9) + v4) = *(v7 + (a3 ^ v9) + v4);
  return (*(v8 + 8 * (((a2 == v9) * a4) ^ v6)))();
}

void sub_265C6DE20(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 16) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(a1 + 8) ^ (1466156297 * ((((2 * a1) | 0x67348E0C) - a1 - 865748742) ^ 0xE02DC757));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_265C6E0CC@<X0>(uint64_t a1@<X8>)
{
  v6 = 98 * (v3 ^ 0xD27);
  v7 = ((((v6 + 599253731) & 0xDC481BB9) - 2978) ^ v2) + v1;
  *(v4 - 7 + v7) = *(a1 - 7 + v7);
  return (*(v5 + 8 * ((((v6 - 3340) & v1) - 8 != v2) ^ v6)))();
}

uint64_t sub_265C6E3AC@<X0>(int a1@<W8>)
{
  v4 = (a1 + 481610745) & 0xE34B2FEE;
  (*(v3 + 8 * (a1 ^ 0x8A6)))();
  *v1 = 0;
  *v1 = 0;
  v1[1] = 0;
  v5 = (*(v3 + 8 * (v4 ^ 0x14CE)))(v1);
  return v2(v5);
}

uint64_t sub_265C6E3E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, _DWORD *a17)
{
  v19 = (v17 - 25) & 0xEE;
  v20 = *a4;
  v21 = a16 - ((2 * a16) & 0x75FC608A) + 989737029;
  v22 = ((*a17 << (v19 ^ (v18 + 1))) & 0xDFFCBFDE) + (*a17 ^ 0xEFFE5FEF) + 268541969;
  *(*a4 + v22) = HIBYTE(v21) ^ 0x3A;
  *(v20 + v22 + 1) = BYTE2(v21) ^ 0xFE;
  *(v20 + v22 + 2) = BYTE1(v21) ^ 0x30;
  *(v20 + v22 + 3) = v21 ^ 0x45;
  *a17 += 4;
  return a3(a1, a2);
}

uint64_t sub_265C6E4B0(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14)
{
  v16 = *a1;
  v17 = (*a14 ^ 0x7AFEFFCF) - 2063534740 + ((2 * *a14) & 0xF5FDFF9E);
  *(*a1 + v17 + 2757) = 0;
  *(v16 + v17 + 2758) = 0;
  *(v16 + v17 + 2759) = 0;
  *(v16 + v17 + v14 + 1149) = 8;
  v18 = (v14 ^ 0x5150DC6Bu) - 1364253212 + *a14;
  *a14 = v18;
  return (*(v15 + 8 * (v14 | (32 * (a4 > *a1 - 0x3F1F5FBA777FEFFALL + ((2 * v18) & 0xEEFFDFF8) + (v18 ^ 0x3F1F5FBA777FEFFCuLL) - 2)))))(a1, a14, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_265C6E96C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, unsigned int a9, char a10, __int16 a11, char a12, __int16 a13, char a14, __int16 a15, char a16)
{
  v19 = a1 + 504;
  v20 = *v18;
  v21 = (*v17 ^ 0xEBFE7DEF) + 335639826 + ((2 * *v17) & 0xD7FCFBDE);
  *(*v18 + v21 + 3327) = a16;
  *(v20 + v21 + 3328) = a14;
  *(v20 + v21 + 3329) = a12;
  *(v20 + v21 + v19 - 398) = a10;
  *v17 += 4;
  return (*(v16 + 8 * (a8 ^ v19 ^ 1)))(1593401552, a9, 2487550625, 1979474058, 989737029, 58, 69, 914);
}

uint64_t sub_265C6EA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, _DWORD *a36, int a37, int a38)
{
  v43 = (v39 ^ 0x1779) - 1679755983;
  v44 = *(v41 - 224);
  v45 = *v44;
  v46 = ((a38 & 0x95E28B7A) << (((v39 ^ 0x79) + 49) ^ 0xA1)) & (a38 ^ 0x85F24B70) ^ a38 & 0x95E28B7A;
  v47 = ((2 * (a38 ^ 0x85F24D64)) ^ 0x20218C3C) & (a38 ^ 0x85F24D64) ^ (2 * (a38 ^ 0x85F24D64)) & 0x1010C61E;
  v48 = v47 ^ 0x10104202;
  v49 = (v47 ^ 0x41A) & (4 * v46) ^ v46;
  v50 = ((4 * v48) ^ 0x40431878) & v48 ^ (4 * v48) & 0x1010C61C;
  v51 = v50 & (16 * v49) ^ v49;
  v52 = ((16 * (v50 ^ 0x1010C606)) ^ 0x10C61E0) & (v50 ^ 0x1010C606) ^ (16 * (v50 ^ 0x1010C606)) & 0x1010C610;
  v53 = v51 ^ 0x1010C61E ^ (v52 ^ 0x401E) & (v51 << 8);
  v54 = a38 ^ (2 * ((v53 << 16) & 0x10101010 ^ v53 ^ ((v53 << 16) ^ 0x461E0000) & (((v52 ^ 0x1010861E) << 8) & 0x10100000 ^ (((v52 ^ 0x1010861E) << 8) ^ 0x10C60000) & (v52 ^ 0x1010861E) ^ 0x100000)));
  v55 = ((2 * *a36) & 0xFD7FFB9E) + (*a36 ^ 0xFEBFFDCF) + 20972081;
  *(*v44 + v55) = HIBYTE(v54) ^ 0xB5;
  *(v45 + v55 + 1) = BYTE2(v54) ^ 0xE3;
  *(v45 + v55 + 2) = BYTE1(v54) ^ 7;
  *(v45 + v55 + 3) = v54 ^ 0x46;
  v56 = (*a36 + 4);
  *a36 = v56;
  return (*(v40 + 8 * ((107 * (a30 <= *v44 + ((((v43 ^ 0x9BE0F1BD) - 1675) | v42) ^ 0xC9C772C63FB37819) + (v56 ^ 0xFADDFEAEEBAFF7FFLL) + 0x3B5A8E8AD49C8C3ELL + ((2 * v56) & 0x1D75FEFFELL))) ^ v43 ^ 0x9BE0F1BD)))(*v44, 2827, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_265C6ECE0@<X0>(unsigned int a1@<W2>, unint64_t a2@<X3>, int a3@<W4>, uint64_t a4@<X8>)
{
  v8 = v4 - 1;
  *(v6 + v8) = *(a4 + v8);
  return (*(v7 + 8 * (((v8 == (v5 ^ a1 ^ a2)) * a3) ^ v5)))();
}

void sub_265C6ED10(uint64_t a1@<X1>, int a2@<W8>)
{
  *(v3 - 176) = a1;
  *(v3 - 184) = a2 + 1427277979 * ((v3 - 184) ^ 0x50514D68) - 2152;
  (*(v2 + 8 * (a2 ^ 0x1385)))(v3 - 184);
  JUMPOUT(0x265C6ED5CLL);
}

uint64_t sub_265C6EE28@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25)
{
  a25 = 583883621 * ((&a23 + 1507249683 - 2 * (&a23 & 0x59D6CE13)) ^ 0xF8E512BC) - 463479423 + v27 + 1280;
  a23 = a1;
  v30 = (*(v26 + 8 * (v27 ^ (v25 + 3398))))(&a23);
  if (v28)
  {
    v31 = v29 == 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = !v31;
  return (*(v26 + 8 * (((v27 - 463482124) * v32) | (v27 - 463475728))))(v30);
}

uint64_t sub_265C6EF54()
{
  v6 = (*(v3 + 12) ^ v0) + (v1 & (2 * *(v3 + 12))) + v2;
  v8 = v6 >= 0xB5D71C9D && v6 <= *(v3 + 8) + 3050773661u;
  return (*(v5 + 8 * ((124 * v8) ^ v4)))();
}

uint64_t sub_265C6F010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  v44 = (v40 - 1199) | 0xC03;
  if (v38 >= 0x40)
  {
    v45 = 64;
  }

  else
  {
    v45 = v38;
  }

  if (a17 >= 0x40)
  {
    v46 = 64;
  }

  else
  {
    v46 = a17;
  }

  v47 = 1427277979 * ((((2 * (v43 - 184)) | 0xDE845C5F2B5B242ALL) - (v43 - 184) - 0x6F422E2F95AD9215) ^ 0x4928E999C5FCDF7DLL);
  *(v43 - 160) = a32 - v47;
  *(v43 - 136) = v43 - 240;
  *(v43 - 184) = a17 ^ (1427277979 * ((((2 * (v43 - 184)) | 0x2B5B242A) - (v43 - 184) + 1783786987) ^ 0xC5FCDF7D));
  *(v43 - 180) = v46 + 1427277979 * ((((2 * (v43 - 184)) | 0x2B5B242A) - (v43 - 184) + 1783786987) ^ 0xC5FCDF7D);
  *(v43 - 176) = v37 + v47;
  *(v43 - 168) = a9 - v47;
  *(v43 - 152) = v38 ^ (1427277979 * ((((2 * (v43 - 184)) | 0x2B5B242A) - (v43 - 184) + 1783786987) ^ 0xC5FCDF7D));
  *(v43 - 148) = (v40 + 417140132) ^ (1427277979 * ((((2 * (v43 - 184)) | 0x2B5B242A) - (v43 - 184) + 1783786987) ^ 0xC5FCDF7D));
  *(v43 - 144) = v45 + 1427277979 * ((((2 * (v43 - 184)) | 0x2B5B242A) - (v43 - 184) + 1783786987) ^ 0xC5FCDF7D);
  (*(v41 + 8 * (v40 ^ 0x1EDC)))(v43 - 184, a2, a3, a4, a5, a6, a7, a8);
  (*(v41 + 8 * (v40 + 4713)))(a12, v39, 0, (&off_28778E150)[v40 ^ 0x780], v43 - 240, 56);
  v48 = 891395573 * ((((v43 - 184) | 0x4CB7B122BEE9C725) - ((v43 - 184) & 0x4CB7B122BEE9C725)) ^ 0x72B33D5984C4D89ELL);
  v49 = (a32 - 0x4A547FB664F66395 + (~(a32 << ((((v40 + 81) | 3) + 43) & 0xFD ^ 0xBDu)) | 0x94A8FF6CC9ECC72BLL)) ^ v48;
  *(v43 - 120) = a9;
  *(v43 - 112) = v37;
  *(v43 - 168) = &a26;
  *(v43 - 160) = &a21;
  *(v43 - 128) = (((2 * v38) & 0xBBFC7EDE) - 135664194 + ((((v44 + 1397) | 0x34) + 1576938291) ^ v38)) ^ v48;
  *(v43 - 152) = v49;
  *(v43 - 144) = &a37;
  *(v43 - 176) = ((a17 ^ 0x77E9EFBF) - 570540690 + ((2 * a17) & 0xEFD3DF7E)) ^ v48;
  *(v43 - 184) = (v44 + 37) ^ v48;
  *(v43 - 136) = &a30;
  v50 = (*(v41 + 8 * (v44 + 2936)))(v43 - 184);
  return (*(v41 + 8 * ((47 * (*v42 != 0)) ^ v44)))(v50);
}

uint64_t sub_265C6F3E4()
{
  (*(v2 + 8 * (v0 + 4113)))();
  *v1 = 0;
  return sub_265C6F40C();
}

uint64_t sub_265C6F40C()
{
  *v2 = 0;
  v2[1] = 0;
  v4 = (*(v3 + 8 * (v1 ^ 0x839)))(v2);
  return v0(v4);
}

uint64_t sub_265C6F5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t *a23, int a24, int a25, uint64_t a26, uint64_t a27)
{
  a27 = 0;
  a25 = 0;
  v30 = (&off_28778E150)[v27 ^ 0xEA4] - 8;
  (*(v28 + 8 * (v27 + 2774)))(v30, a2, a3, a4, a5, a6, a7, a8);
  v31 = *a23;
  v32 = *(a23 + 3) + 599664785 - ((*(a23 + 3) << (-7 * (v27 ^ 0xF1) + 50)) & 0x477C5122);
  v33 = 1311869473 * ((2 * ((v29 - 144) & 0x5B9E7D78) - (v29 - 144) - 1537113472) ^ 0x4F8E982C);
  v34 = 563297187 - v33 + 622816387 * *(&off_28778E150)[v27 ^ 0xEC1];
  *(v29 - 112) = v33 + v27 + 1806;
  *(v29 - 104) = v34;
  *(v29 - 144) = v32 ^ v33;
  *(v29 - 136) = v31;
  *(v29 - 128) = &a27;
  *(v29 - 120) = &a25;
  (*(v28 + 8 * (v27 + 2814)))(v29 - 144);
  v35 = *(v29 - 108);
  v36 = (*(v28 + 8 * (v27 ^ 0x173C)))(v30);
  return (*(v28 + 8 * (((4 * (v35 == 1893509507)) | (8 * (v35 == 1893509507))) ^ v27)))(v36);
}

uint64_t sub_265C6F71C@<X0>(uint64_t a1@<X8>)
{
  v5 = *(a1 + v1 - 1 - 31);
  v6 = v3 + v1 - 1;
  *(v6 - 15) = *(a1 + v1 - 1 - 15);
  *(v6 - 31) = v5;
  LODWORD(v6) = (((v2 - 755) | 0x206u) ^ 0x6B6) == (v1 & 0xFFFFFFE0);
  return (*(v4 + 8 * (((2 * v6) | (16 * v6)) ^ v2)))(1718);
}

void sub_265C6F7AC()
{
  (*(v1 + 8 * (v0 + 5528)))();
  *v2 = 0;
  JUMPOUT(0x265C194ECLL);
}

uint64_t sub_265C6F7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, void *a23, unsigned int a24, int a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30, int a31, char a32, uint64_t a33, char a34)
{
  v43 = a33;
  if (a24 >= 0x40)
  {
    v44 = 64;
  }

  else
  {
    v44 = a24;
  }

  if (v36 >= 0x40)
  {
    v45 = 64;
  }

  else
  {
    v45 = v36;
  }

  if (v41 >= 0x40)
  {
    v46 = 64;
  }

  else
  {
    v46 = v41;
  }

  v47 = 1466156297 * (((~(v42 - 224) | 0x721F9AB73DFDBF2CLL) + ((v42 - 224) | 0x8DE06548C20240D3)) ^ 0x725108311B5C083);
  *(v42 - 160) = v45 - v47;
  *(v42 - 156) = v46 + v47;
  if (v39 >= 0x40)
  {
    v48 = 64;
  }

  else
  {
    v48 = v39;
  }

  *(v42 - 200) = v35 - v47;
  *(v42 - 192) = v43 - v47;
  *(v42 - 184) = v48 - v47;
  *(v42 - 180) = v41 ^ v47;
  *(v42 - 216) = a22 + v47;
  *(v42 - 212) = a25 - v47;
  *(v42 - 208) = a24 ^ v47;
  *(v42 - 204) = v44 ^ v47;
  *(v42 - 136) = a26 ^ v47;
  *(v42 - 148) = v36 - v47;
  *(v42 - 144) = v40 - v47 + 244937435;
  *(v42 - 176) = a16 - v47;
  *(v42 - 168) = a18 + v47;
  *(v42 - 152) = v39 ^ v47;
  *(v42 - 224) = &a34;
  (*(v38 + 8 * (v40 ^ 0x13FE)))(v42 - 224, a2, a3, a4, a5, a6, a7, a8);
  (*(v38 + 8 * (v40 ^ 0x104B)))(a15, v37, 0, (&off_28778E150)[v40 & 0xC369320E], &a34, 112);
  v49 = (a33 ^ 0x7CD6F97ABB55AD67) - 0x45258003941A962 + ((a33 << (v34 + 7)) & 0xF9ADF2F576AB5ACELL);
  v50 = 1384597421 * ((~(v42 - 224) & 0x719E13C2AC2A234DLL | (v42 - 224) & 0x8E61EC3D53D5DCB2) ^ 0x7E3CBAD4EE47A34);
  *(v42 - 136) = ((a22 ^ 0xBF) + 2 * a22 + 96) ^ (-83 * ((~(v42 + 32) & 0x4D | (v42 + 32) & 0xB2) ^ 0x34));
  *(v42 - 200) = v50 + (v39 ^ 0x7D779FFD) + ((2 * v39) & 0xFAEF3FFA) - 16842840;
  *(v42 - 208) = v49 ^ v50;
  *(v42 - 184) = &a27;
  *(v42 - 192) = a18;
  *(v42 - 152) = v50 + a24 - ((2 * a24) & 0x1EAB37A2) - 1890214959;
  *(v42 - 224) = a26;
  *(v42 - 216) = &a30;
  *(v42 - 144) = v35;
  *(v42 - 120) = v50 + (a25 ^ 0xF74EFBDE) + ((2 * a25) & 0x6E9DF7BC) + 1874683824;
  *(v42 - 116) = (v36 ^ 0xFF76FFFF) - v50 + ((2 * v36) & 0xFEEDFFFE) + 2097127334;
  *(v42 - 168) = a16;
  *(v42 - 128) = &a32;
  *(v42 - 160) = v34 - v50 + 3958;
  *(v42 - 156) = v50 + (v41 ^ 0xFF7E9FBD) + ((2 * v41) & 0xFEFD3F7A) + 2096627688;
  v51 = (*(v38 + 8 * (v34 + 5101)))(v42 - 224);
  return (*(v38 + 8 * ((990 * (*a23 == 0)) ^ v34)))(v51);
}

uint64_t sub_265C6FBE8()
{
  *(v5 - 144) = v1;
  *(v5 - 136) = (v0 + 1311671578) ^ (1468321087 * ((2 * ((v5 - 144) & 0x7FD6E1E8) - (v5 - 144) - 2144788972) ^ 0x54C65F7A));
  (*(v3 + 8 * (v0 + 1463)))(v5 - 144);
  v6 = (*(v3 + 8 * (v0 + 1422)))(**(v4 + 8 * (v0 ^ 0x14A3)), *(v4 + 8 * (v0 - 4921)) - 4, v2);
  v7 = ((v6 << ((v0 - 67) & 0x4A ^ 0xB)) & 0xDF9DFD7E) + (v6 ^ (((v0 + 1078493302) | 0x5120081) + 712272326));
  *(v5 - 144) = v1;
  *(v5 - 136) = (v0 - 50588724) ^ (912648571 * (((((v5 - 144) | 0x52FC1082) ^ 0xFFFFFFFE) - (~(v5 - 144) | 0xAD03EF7D)) ^ 0x71CEA348));
  v8 = (*(v3 + 8 * (v0 ^ 0xDD5)))(v5 - 144);
  return (*(v3 + 8 * ((22 * (v7 != 1875836607)) ^ v0)))(v8);
}

uint64_t sub_265C6FD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v20 = (*(v18 + 52864))(v19, a16, a3, a4, a5, a6, a7, a8);
  *v17 = v20;
  return (*(v18 + 8 * ((46 * (v20 == 0)) ^ v16)))();
}

uint64_t sub_265C6FE1C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, uint64_t *a23)
{
  v26 = a1 - 205;
  v27 = a23;
  *(v25 - 152) = 0;
  a22 = 0;
  v28 = (&off_28778E150)[(a1 - 205) ^ 0x958] - 8;
  (*(v24 + 8 * (v26 ^ 0x10C6)))((&off_28778E150)[v26 ^ 0x958] - 8);
  v29 = *(&off_28778E150)[v26 - 2259];
  v30 = *v27;
  v31 = *(v27 + 3) + 599664785 - ((*(v27 + 3) << (v26 ^ v23)) & ((26 * (v26 ^ 0x9CF)) ^ 0x477C4520));
  v32 = 1311869473 * ((((v25 - 144) | 0x716D330E) - (v25 - 144) + ((v25 - 144) & 0x8E92CCF0)) ^ 0x9A8229A2);
  *(v25 - 120) = &a22;
  *(v25 - 144) = v31 ^ v32;
  *(v25 - 136) = v30;
  *(v25 - 128) = v25 - 152;
  *(v25 - 104) = -1311869473 * ((((v25 - 144) | 0x716D330E) - (v25 - 144) + ((v25 - 144) & 0x8E92CCF0)) ^ 0x9A8229A2) + 622816387 * v29 + 563297187;
  *(v25 - 112) = v32 + v26 + 3322;
  (*(v24 + 8 * (v26 ^ 0x10FE)))(v25 - 144);
  v33 = *(v25 - 108);
  v34 = (*(v24 + 8 * (v26 ^ 0x10C0)))(v28);
  return (*(v24 + 8 * ((1081 * (v33 == 1893509507)) ^ v26)))(v34);
}

uint64_t sub_265C70004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int a22)
{
  a21 = v22;
  a22 = (v26 + 1311675619) ^ (1468321087 * (((v23 | 0x56A3C855) + (~v23 | 0xA95C37AA)) ^ 0x824C893A));
  (*(v25 + 8 * (v26 + 5504)))(&a21, a2, a3, a4, a5, a6, a7, a8);
  v27 = (*(v25 + 8 * (v26 ^ 0x1DA9)))(**(v24 + 8 * (v26 - 920)), *(v24 + 8 * (v26 ^ 0x4F0)) - 4, a12);
  v28 = ((v27 << ((v26 - 121) ^ 0xC1)) & 0x9FBD77EE) + (v27 ^ 0xCFDEBBF7);
  a21 = v22;
  a22 = (v26 - 50584683) ^ (912648571 * ((v23 + 975593303 - 2 * (v23 & 0x3A265F57)) ^ 0xE6EB1362));
  v29 = (*(v25 + 8 * (v26 + 5534)))(&a21);
  return (*(v25 + 8 * ((2687 * (v28 == (v26 ^ 0x94B) - 807489915)) ^ v26)))(v29);
}

uint64_t sub_265C70220@<X0>(unint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v6 = ((v3 - 70) ^ a1) + v2;
  *(v4 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (v3 ^ ((v6 == 0) << 11))))();
}

uint64_t sub_265C70344()
{
  (*(v4 + 8 * (v0 ^ 0x1EF9)))(v1);
  v6 = *v3;
  v7 = *(v3 + 3) + 599664785 - ((v0 + 1199327725) & (2 * *(v3 + 3)));
  v8 = 1311869473 * ((((v5 - 144) | 0x8CFC23EF) - (v5 - 144) + ((v5 - 144) & 0x7303DC10)) ^ 0x67133943);
  *(v5 - 104) = 563297187 - v8 + 622816387 * *v2;
  *(v5 - 112) = v8 + v0 + 3791;
  *(v5 - 120) = v5 - 180;
  *(v5 - 136) = v6;
  *(v5 - 128) = v5 - 192;
  *(v5 - 144) = v7 ^ v8;
  (*(v4 + 8 * (v0 + 4799)))(v5 - 144);
  v9 = *(v5 - 108);
  v10 = (*(v4 + 8 * (v0 + 4757)))(v1);
  return (*(v4 + 8 * ((45 * (v9 != ((v0 + 1343977087) & 0xAFE482FF) + 1625073868)) ^ (v0 + 2642))))(v10);
}

uint64_t sub_265C704D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v10 = v5 + 8;
  *(a1 + (v10 ^ a3 ^ v8) + v4) = *(v7 + (v10 ^ a3 ^ v8) + v4);
  return (*(v9 + 8 * (((a2 != v10) * a4) ^ v6)))();
}

uint64_t sub_265C70534(uint64_t result)
{
  v1 = 583883621 * (result ^ 0xA133DCAF);
  v2 = *(result + 16);
  v3 = *(result + 8) + v1;
  v4 = *result + v1;
  v5 = *(result + 12) - v1;
  *v2 = 67109632;
  *(v2 + 4) = v3;
  *(v2 + 8) = 1024;
  *(v2 + 10) = v4;
  *(v2 + 14) = 1024;
  *(v2 + 16) = v5;
  return result;
}

unint64_t sub_265C70594(uint64_t a1)
{
  v1 = 1864678469 * ((~a1 & 0x5E66F742B173A318 | a1 & 0xA19908BD4E8C5CE7) ^ 0x2696C8718203B4F1);
  v2 = *(a1 + 24) + v1;
  v3 = *(a1 + 20);
  v4 = *(a1 + 72) ^ v1;
  v5 = *(a1 + 80) + v1;
  v6 = *(a1 + 16) ^ v1;
  v7 = *(a1 + 56) - v1;
  v8 = *(a1 + 68) - v1;
  v9 = *(a1 + 40) - v1;
  v10 = *(a1 + 64) ^ v1;
  v11 = *(a1 + 32) - v1;
  v12 = *(a1 + 8);
  result = *a1 + v1;
  *v12 = 134220546;
  *(v12 + 4) = v2;
  *(v12 + 12) = 1040;
  *(v12 + 14) = v4;
  *(v12 + 18) = 2096;
  *(v12 + 20) = v5;
  *(v12 + 28) = 1024;
  *(v12 + 30) = v6;
  *(v12 + 34) = 2048;
  *(v12 + 36) = v7;
  *(v12 + 44) = 1040;
  *(v12 + 46) = v8;
  *(v12 + 50) = 2096;
  *(v12 + 52) = v9;
  *(v12 + 60) = 1024;
  *(v12 + 62) = v10;
  *(v12 + 66) = 1040;
  *(v12 + 68) = v11;
  *(v12 + 72) = 2096;
  *(v12 + 74) = result;
  *(v12 + 82) = 1024;
  *(v12 + 84) = v3 ^ v1;
  return result;
}

uint64_t sub_265C70698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, _DWORD *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t *a27, uint64_t a28, uint64_t (*a29)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v30 = v29 ^ 0x984;
  v31 = *a27;
  v32 = a22 - ((2 * a22) & 0x75FC608A) + 2 * v30 + 989731255;
  v33 = ((2 * *a23) & 0xDF7EFA9E) + (*a23 ^ 0xEFBF7D4F) + 272663217;
  *(*a27 + v33) = HIBYTE(v32) ^ 0x3A;
  *(v31 + v33 + 1) = BYTE2(v32) ^ 0xFE;
  *(v31 + v33 + 2) = BYTE1(v32) ^ 0x30;
  *(v31 + v33 + 3) = v32 ^ 0x45;
  *a23 += 4;
  return a29(a1, a2, a3, a4, a5, a6, a7, a8);
}

void sub_265C707C8(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16) + 346387183 * ((a1 + 731491098 - 2 * (a1 & 0x2B99AB1A)) ^ 0xAEF17ECA);
  v3[0] = v1 - 891395573 * ((-160416359 - (v3 | 0xF6703D99) + (v3 | 0x98FC266)) ^ 0x33A2DDDD) + 423;
  v2 = (&off_28778E150)[v1 ^ 0xF18] - 8;
  (*&v2[8 * (v1 ^ 0x16AB)])(v3);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_265C709D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v25 - 144) = (v23 + 1311672025) ^ (1468321087 * ((~(v22 | 0xAB02079B) + (v22 & 0xAB02079B)) ^ 0x8012B90A));
  *(v25 - 152) = v21;
  (*(v24 + 8 * (v23 + 1910)))(v25 - 152, a2, a3, a4, a5, a6, a7, a8);
  v26 = (*(v24 + 8 * (v23 + 1869)))(**(v20 + 8 * (v23 - 4514)), *(v20 + 8 * (v23 - 4474)) - 4, a20);
  v27 = ((2 * v26) & 0xD3CDF47A) + (v26 ^ 0xE9E6FA3D);
  *(v25 - 152) = v21;
  *(v25 - 144) = (v23 - 50588277) ^ (912648571 * ((2 * (v22 & 0x1CBA8460) - v22 + 1665498009) ^ 0xBF8837AC));
  v28 = (*(v24 + 8 * (v23 ^ 0xB94)))(v25 - 152);
  return (*(v24 + 8 * (((v27 == -370738627) * ((v23 - 1200) ^ 0xDB2)) ^ v23)))(v28);
}

uint64_t sub_265C70C60@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, int a5, char a6, __int16 a7, char a8, __int16 a9, char a10, __int16 a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t *a28)
{
  v30 = *a28;
  v31 = ((2 * *v29) & 0xFF7FFEDE) + (a1 ^ 0x7FBFEE79 ^ *v29) - 2143289199;
  *(*a28 + v31) = a12;
  *(v30 + v31 + 1) = a10;
  *(v30 + v31 + 2) = a8;
  *(v30 + v31 + 3) = a6;
  *v29 += 4;
  return (*(v28 + 8 * (a1 ^ (42 * (a5 == 575808395)))))();
}

uint64_t sub_265C70D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, uint64_t *a22, uint64_t a23, uint64_t a24, uint64_t a25, unsigned int a26, uint64_t a27, uint64_t *a28, int *a29, unsigned int a30, int a31, int a32)
{
  v35 = (v32 - 2231) | 0x414;
  v36 = a22;
  a21 = 0;
  a20 = 0;
  v37 = (&off_28778E150)[v32 ^ 0x885] - 8;
  (*(v34 + 8 * (v32 ^ 0x111B)))(v37, a2, a3, a4, a5, a6, a7, a8);
  v38 = *v36;
  v39 = *(v36 + 3) + 599664785 - ((2 * *(v36 + 3)) & 0x477C5122);
  v40 = 1311869473 * ((-603959607 - (v33 | 0xDC004EC9) + (v33 | 0x23FFB136)) ^ 0xC810AB9A);
  v41 = 563297187 - v40 + 622816387 * *(&off_28778E150)[a19 - 2208];
  a30 = v40 + a19 + 3373;
  a32 = v41;
  a27 = v38;
  a28 = &a21;
  a26 = v39 ^ v40;
  a29 = &a20;
  (*(v34 + 8 * (a19 ^ 0x1123)))(&a26);
  v42 = a31;
  v43 = (*(v34 + 8 * (a19 + 4339)))(v37);
  return (*(v34 + 8 * (((4 * (v42 == (v35 ^ 0x70DCADB7))) | (8 * (v42 == (v35 ^ 0x70DCADB7)))) ^ a19)))(v43);
}

uint64_t sub_265C70F5C()
{
  v7 = *v14;
  if (*v14 >= 0x40)
  {
    v8 = 64;
  }

  else
  {
    v8 = *v14;
  }

  v9 = *v13;
  v10 = 1311869473 * ((((v6 - 184) | 0xF4CAD4A8E9687431) - ((v6 - 184) | 0xB352B5716978BCELL) + 0xB352B5716978BCELL) ^ 0x476503FD02876E9DLL);
  *(v6 - 168) = *v4 ^ v10;
  *(v6 - 160) = v15;
  *(v6 - 152) = v9 + v10;
  *(v6 - 144) = v7 ^ v10;
  *(v6 - 184) = v3 - v10 + (v2 ^ 0xB63DC08E);
  *(v6 - 180) = (v2 + 2118007337) ^ v10;
  *(v6 - 176) = v8 - v10;
  (*(v0 + 8 * (v2 ^ 0x1C92)))(v6 - 184);
  (*(v0 + 8 * (v2 + 5203)))(v12, v1, 0, *(v5 + 8 * (v2 ^ 0x573)), v15, 40);
  return (v3 - 1237465637);
}

uint64_t sub_265C71114()
{
  v6 = (*(v3 + 8 * (v5 ^ 0x1E83u)))(v1, v2);
  *v4 = v6;
  return (*(v3 + 8 * (((v6 == 0) * ((v0 + v5 - 2621) ^ v0 ^ 0x712)) ^ v5)))();
}

uint64_t sub_265C71300(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29)
{
  if (v29)
  {
    v31 = a29 == 1237465645;
  }

  else
  {
    v31 = 0;
  }

  v32 = !v31;
  return (*(v30 + 8 * ((((v32 ^ (31 * (a2 ^ a5))) & 1) * ((a2 ^ a6) - 3234)) ^ a2)))();
}

uint64_t sub_265C7134C()
{
  v5 = (*(v3 + 8 * (v0 + 2619)))(v1, v2);
  *v4 = v5;
  return (*(v3 + 8 * (((v5 == 0) * (((v0 - 901) | 0x1A0) ^ ((v0 - 3825) | 0xF58) ^ 0x225)) ^ v0)))();
}

uint64_t sub_265C713E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19)
{
  v22 = v19 ^ 0x93E;
  *(v20 + 8) = a19;
  *(v20 + 12) = 0;
  v23 = 7 * (v19 ^ 0x291);
  v24 = (*(v21 + 8 * (v22 + 4323)))(**(a4 + 8 * (v22 - 2283)), a17, a19);
  return (*(v21 + 8 * ((2886 * (v23 == 5971)) ^ (v22 - 1857))))(v24);
}

uint64_t sub_265C71474()
{
  (*(v4 + 8 * ((v3 ^ 0x10F8) + 5690)))(v1);
  *v2 = 0;
  return v0(3463426671);
}

void sub_265C7153C()
{
  (*(v2 + 8 * (v0 ^ 0x1EE7)))();
  *v1 = 0;
  JUMPOUT(0x265C2D418);
}

uint64_t sub_265C716A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t (*a18)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a19, uint64_t a20, uint64_t a21)
{
  (*(v25 + 8 * (v21 + 4502)))(*v22, a2, a3, a4, a5, a6, a7, a8);
  *v22 = v24;
  *(v22 + 8) = v23;
  return a18(107, 2994, 4753, 4504, a21, a20, a19);
}

uint64_t sub_265C71774(__int128 *a1)
{
  v6 = *a1;
  *(v3 - 1) = *(a1 - 1);
  *v3 = v6;
  return (*(v5 + 8 * (((v4 == 0) * v2) ^ v1)))(a1 - 2);
}

uint64_t sub_265C71A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(v20 + 8) = 4096;
  *v21 = v20;
  return v19(4463, 22, a3, a19, a5, a6, a7, a8);
}

uint64_t sub_265C71A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  (*(v36 + 8 * (v37 ^ 0xA32)))(v38, @"CBQGVxY", a1, a4, a5, a6, a7, a8);
  *(v39 - 176) = a29;
  *(v39 - 184) = v37 + 1427277979 * (((v39 - 184) & 0x8688A395 | ~((v39 - 184) | 0x8688A395)) ^ 0x29261102) - 4562;
  (*(v36 + 8 * (v37 + 1553)))(v39 - 184);
  v41 = (*(v36 + 8 * (v37 ^ 0xA1B)))(a1);
  return (*(v36 + 8 * (((((((v37 - 3777) | 0x1201) - 1452717981) & 0x5696ADF7 ^ 0xFFFFFC77) + ((((v37 - 3777) | 0x1201) - 5129) | 0xC0C)) * (a36 == 0)) ^ ((v37 - 3777) | 0x1201))))(v41);
}

uint64_t sub_265C71C94@<X0>(uint64_t (*a1)(void)@<X4>, uint64_t *a2@<X5>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, _DWORD *a13)
{
  v13 = 370247319 * a11 - 1964018768;
  v14 = ((((a3 & 0x8755CEBF) + 536952691) | 0x908022D5) + 894731287) & v13;
  v15 = ((2 * (v13 ^ 0x3A01E578)) ^ 0xBFA82F28) & (v13 ^ 0x3A01E578) ^ (2 * (v13 ^ 0x3A01E578)) & 0xDFD41794;
  v16 = (v15 ^ 0xDF800704) & (4 * ((v13 ^ 0xF181E0E8) & (2 * v14) ^ v14)) ^ (v13 ^ 0xF181E0E8) & (2 * v14) ^ v14;
  v17 = ((4 * (v15 ^ 0x40541094)) ^ 0x7F505E50) & (v15 ^ 0x40541094) ^ (4 * (v15 ^ 0x40541094)) & 0xDFD41794;
  v18 = (v17 ^ 0x5F501604) & (16 * v16) ^ v16;
  v19 = ((16 * (v17 ^ 0x80840184)) ^ 0xFD417940) & (v17 ^ 0x80840184) ^ (16 * (v17 ^ 0x80840184)) & 0xDFD41790;
  v20 = v18 ^ 0xDFD41794 ^ (v19 ^ 0xDD401194) & (v18 << 8);
  v21 = *a2;
  v22 = v13 ^ (2 * ((v20 << 16) & 0x5FD40000 ^ v20 ^ ((v20 << 16) ^ 0x17940000) & (((v19 ^ 0x2940694) << 8) & 0x5FD40000 ^ 0xBC00000 ^ (((v19 ^ 0x2940694) << 8) ^ 0x54170000) & (v19 ^ 0x2940694))));
  v23 = ((2 * *a13) & 0xDDFEBADE) + (*a13 ^ 0xEEFF5D6F) + 285254289;
  *(*a2 + v23 + 1) = BYTE2(v22) ^ 0x55;
  *(v21 + v23 + 2) = BYTE1(v22) ^ 0xDD;
  *(v21 + v23) = HIBYTE(v22) ^ 0x75;
  *(v21 + v23 + 3) = v22 ^ 0xC4;
  *a13 += 4;
  return a1();
}

uint64_t sub_265C71E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19)
{
  (*(v21 + 8 * (v23 ^ 0x1AC5)))(v19, a2, a3, a4, a5, a6, a7, a8);
  *v20 = 0;
  return v22(2147482676, 8033, 896366627, 3398600701, 5680, a19);
}

uint64_t sub_265C71EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (v6 ^ 0xFFDBFEEFE1BDF837) + ((2 * v6) & 0x1C37BF06ELL) + 0x240110DF6B2CE2;
  v11 = v9 < (v5 - v7) - 959812773 + ((v5 + 604641371) | 0x59254440u) || v9 > *(a5 + 8) + 3240699157u;
  return (*(v8 + 8 * ((3545 * v11) ^ v5)))(a1, a2, a3, a4);
}

uint64_t sub_265C71FA0()
{
  v5 = 652747349 * ((((2 * (v4 - 160)) | 0x44B43114) - (v4 - 160) + 1571153782) ^ 0xE0A9261F);
  *(v4 - 152) = *v8 - v5;
  *(v4 - 144) = v9;
  *(v4 - 160) = v0 - v5 - 138265610;
  *(v4 - 156) = (v2 + 715192377 + ((v0 - 1145112010) & 0xCFDDCDA3)) ^ v5;
  (*(v1 + 8 * (v0 ^ 0x1C22)))(v4 - 160);
  (*(v1 + 8 * (v0 + 5088)))(v7, v3, 0, (&off_28778E150)[v0 & 0xC0E1D2F0] - 12, v9, 14);
  return (v2 - 1237465637);
}

uint64_t sub_265C720DC(uint64_t result)
{
  v1 = 1468321087 * (((result | 0x2E6ECB572ECEEE47) - result + (result & 0xD19134A8D13111B8)) ^ 0x7BA52238FA21AF29);
  v2 = *(result + 24) + v1;
  v3 = *(result + 32) ^ v1;
  v4 = *result ^ v1;
  v5 = *(result + 48) - v1;
  v6 = *(result + 8);
  v7 = *(result + 28) ^ v1;
  v8 = *(result + 16) ^ v1;
  v9 = *(result + 40) + v1;
  *v6 = 67110658;
  *(v6 + 4) = v2;
  *(v6 + 8) = 1024;
  *(v6 + 10) = v3;
  *(v6 + 14) = 1040;
  *(v6 + 16) = v4;
  *(v6 + 20) = 2096;
  *(v6 + 22) = v5;
  *(v6 + 30) = 1024;
  *(v6 + 32) = v7;
  *(v6 + 36) = 2048;
  *(v6 + 38) = v8;
  *(v6 + 46) = 2048;
  *(v6 + 48) = v9;
  return result;
}

uint64_t sub_265C721B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  v34 = 12 * (v30 ^ 0xF42);
  if (v26 >= 0x40)
  {
    v35 = 64;
  }

  else
  {
    v35 = v26;
  }

  if (v32 >= 0x40)
  {
    v36 = 64;
  }

  else
  {
    v36 = v32;
  }

  if (v31 >= 0x40)
  {
    v37 = 64;
  }

  else
  {
    v37 = v31;
  }

  v38 = 1427277979 * ((((2 * (v33 - 200)) | 0xC59C5BC8132FA08ALL) - (v33 - 200) + 0x1D31D21BF6682FBBLL) ^ 0xC4A4EA5259C69D2DLL);
  *(v33 - 176) = v30 - 1427277979 * ((((2 * (v33 - 200)) | 0x132FA08A) - (v33 - 200) - 160944197) ^ 0x59C69D2D) + 1719930497;
  if (v28 >= 0x40)
  {
    v39 = 64;
  }

  else
  {
    v39 = v28;
  }

  *(v33 - 184) = v38 + a18;
  *(v33 - 144) = va;
  *(v33 - 168) = a17 - v38;
  *(v33 - 136) = 1427277979 * ((((2 * (v33 - 200)) | 0x132FA08A) - (v33 - 200) - 160944197) ^ 0x59C69D2D) + v28;
  *(v33 - 132) = v37 - 1427277979 * ((((2 * (v33 - 200)) | 0x132FA08A) - (v33 - 200) - 160944197) ^ 0x59C69D2D);
  *(v33 - 152) = (1427277979 * ((((2 * (v33 - 200)) | 0x132FA08A) - (v33 - 200) - 160944197) ^ 0x59C69D2D)) ^ v36;
  *(v33 - 120) = v26 - 1427277979 * ((((2 * (v33 - 200)) | 0x132FA08A) - (v33 - 200) - 160944197) ^ 0x59C69D2D);
  *(v33 - 160) = 1427277979 * ((((2 * (v33 - 200)) | 0x132FA08A) - (v33 - 200) - 160944197) ^ 0x59C69D2D) + v35;
  *(v33 - 156) = 1427277979 * ((((2 * (v33 - 200)) | 0x132FA08A) - (v33 - 200) - 160944197) ^ 0x59C69D2D) + v32;
  *(v33 - 128) = 1427277979 * ((((2 * (v33 - 200)) | 0x132FA08A) - (v33 - 200) - 160944197) ^ 0x59C69D2D) + v31;
  *(v33 - 124) = (1427277979 * ((((2 * (v33 - 200)) | 0x132FA08A) - (v33 - 200) - 160944197) ^ 0x59C69D2D)) ^ v39;
  *(v33 - 200) = a16 - v38;
  *(v33 - 192) = a19 - v38;
  (*(v27 + 8 * (v30 + 2961)))(v33 - 200, a2, a3, a4, a5, a6, a7, a8);
  (*(v27 + 8 * (v30 ^ 0x1732u)))(a10, v29, 0, (&off_28778E150)[v30 - 3715], va, 90);
  v40 = 1864678469 * ((((v33 - 200) | 0xFFD3B89) - ((v33 - 200) | 0xF002C476) - 268254090) ^ 0x3C8D2C60);
  *(v33 - 200) = a16;
  *(v33 - 192) = a17;
  *(v33 - 144) = 69 * ((((v33 + 56) | 0x89) - ((v33 + 56) | 0x76) + 118) ^ 0x60) - 35;
  *(v33 - 176) = a18;
  *(v33 - 104) = (((671 * (v34 ^ 0x1623) + 771221792) ^ v26) + ((v26 << ((v34 - 103) & 0xDF ^ 0x98)) & 0x5BEFE1FA) - 16781393) ^ v40;
  *(v33 - 184) = v34 - v40 - 2854;
  *(v33 - 120) = (v32 ^ 0xFDF7FEBE) + ((2 * v32) & 0xFBEFFD7C) + 788521454 + v40;
  *(v33 - 112) = a15;
  *(v33 - 168) = v40 ^ (v31 - ((2 * v31) & 0x19E6215E) - 1930227537);
  *(v33 - 140) = (v28 ^ 0xAEF7E5AE) + ((2 * v28) & 0x5DEFCB5C) + 2113927934 + v40;
  *(v33 - 160) = a13;
  *(v33 - 152) = a19;
  *(v33 - 128) = a14;
  v41 = (*(v27 + 8 * (v34 ^ 0xFF4u)))(v33 - 200);
  if (a13)
  {
    v42 = a15 == 0;
  }

  else
  {
    v42 = 1;
  }

  v44 = v42 || a14 == 0;
  return (*(v27 + 8 * (v34 ^ (107 * v44))))(v41);
}

void MpP1bcydEGt61uk5lIIoLR(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_265C725C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char *a26, uint64_t a27, unint64_t a28, unint64_t a29, int a30, uint64_t a31, int a32, unint64_t a33, uint64_t a34)
{
  v41 = v34 ^ 0xF9B;
  if (v38 >= 0x40)
  {
    v42 = 64;
  }

  else
  {
    v42 = v38;
  }

  v43 = 1466156297 * (((&a26 | 0x124740F20D2BED80) - &a26 + (&a26 & 0xEDB8BF0DF2D41278)) ^ 0x98823539DE9C6DD1);
  a30 = v39 - v43;
  a26 = &a17;
  a28 = v43 + v37;
  LODWORD(a27) = v43 + v34 + 1747998200;
  LODWORD(a29) = v43 + v38;
  HIDWORD(a29) = v43 + v42;
  (*(v36 + 8 * (v34 + 4756)))(&a26, a2, a3, a4, a5, a6, a7, a8);
  (*(v36 + 8 * (v34 + 4634)))(a10, v40, 0, *(v35 + 8 * (v34 - 1786)) - 8, &a17, 30);
  v44 = 583883621 * (&a26 ^ 0xFBAB76BAA133DCAFLL);
  a31 = a13;
  a30 = (v41 + 4378) ^ v44;
  a27 = v37;
  a28 = a15;
  a29 = v44 - 0x5ECD6407869BE81ELL;
  LODWORD(a26) = ((v39 ^ 0x7F395FB7) - 704644230 + ((v41 - 26036391) & (2 * v39))) ^ v44;
  HIDWORD(a26) = 1429822260 - v44;
  a32 = ((2 * v38) & 0x5FEBE3BE) - v44 + (((v34 ^ 0x7CED1474) + 856219109) ^ v38) + 2143203062;
  a33 = 0x64549B00DF4781BBLL - v44;
  a34 = a14;
  v45 = (*(v36 + 8 * (v41 + 4587)))(&a26);
  if (a13)
  {
    v46 = a15 == 0;
  }

  else
  {
    v46 = 1;
  }

  v48 = !v46 && a14 != 0;
  return (*(v36 + 8 * (v41 ^ (60 * v48))))(v45);
}

uint64_t sub_265C727F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16)
{
  v18 = (v16 ^ 0x19C7F77AFD7FFDFDLL) + ((2 * v16) & 0x1FAFFFBFALL) - 0x19C7F77A5501170CLL;
  v20 = v18 < 0xA87EE6ED || v18 > *(a6 + 8) + 2826888941u;
  return (*(v17 + 8 * ((v20 * (((a16 + 29) | 0x1820) - 5268)) ^ a16)))(a1, a2, a3, a4, a5);
}

uint64_t sub_265C728E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 338;
  (*(v4 + 8 * (v2 ^ 0x14E8)))(a2);
  *a1 = 0;
  *a1 = 0;
  a1[1] = 0;
  v7 = (*(v4 + 8 * (v5 + 3626)))();
  return v3(v7);
}

uint64_t sub_265C729BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = (*(v11 + 8 * (v14 + 5283)))(a11, a10, a3, a4, a5, a6, a7, a8);
  *v12 = v15;
  return (*(v11 + 8 * (((v15 != 0) * ((v13 + ((v14 + 1641378258) & 0xFEAFA94F) + 1792) ^ (v14 - 1823327831) & 0x6CADD3EF)) ^ v14)))();
}

uint64_t sub_265C72DA0@<X0>(int a1@<W8>)
{
  v5 = 1311869473 * ((2 * ((v4 - 144) & 0x59D09B60) - (v4 - 144) - 1506843489) ^ 0x4DC07E33);
  *(v4 - 128) = 1172980518 - v5;
  *(v4 - 144) = v5 + 1640449566 + a1;
  *(v4 - 136) = &v7;
  result = (*(v3 + 8 * (a1 ^ 0x9E38C862)))(v4 - 144);
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_265C72E68()
{
  v6 = (*(v1 + 8 * (v0 ^ 0x12E0)))(*v3);
  *v3 = v5;
  *(v3 + 8) = v4;
  return v2(v6);
}

uint64_t sub_265C72EC4()
{
  result = (*(v2 + 8 * (v0 ^ 0x18CD)))(v5);
  *(v1 + 36) = v3;
  return result;
}

uint64_t sub_265C72EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  *(v32 + 12) = ((((v31 - 2243) | 0x12A) + 1906) ^ (v31 - 55)) + v30;
  HIDWORD(a30) = 1237465637;
  return (*(v33 + 8 * (v31 ^ (47 * (a10 == 0)))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_265C72FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, unsigned int a33)
{
  *(v34 + 8) = a33;
  v36 = (v33 + 67) ^ 0x537F52C1;
  (*(v35 + 8 * ((v33 + 67) ^ 0x1EFE)))(*(&off_28778E150)[(v33 + 67) ^ 0x72C], a31, a33, a4, a5, a6, a7, a8);
  return (*(v35 + 8 * ((v36 - 1400853452) ^ 0xE17)))(1237465637);
}

uint64_t sub_265C72FB8()
{
  v6 = *v0;
  v7 = 1864678469 * (((&v11 | 0x4D7CBF9EE3E566A0) - &v11 + (&v11 & 0xB28340611C1A9958)) ^ 0x358C80ADD0957149);
  v14 = v10;
  v13 = v3 - v7 + ((v4 + 1610878269) | 0x81004C) + 1438164364;
  v12 = v6 ^ v7;
  v11 = (v4 + 634661871) ^ v7;
  (*(v1 + 8 * (v4 + 1864)))(&v11);
  (*(v1 + 8 * (v4 + 1762)))(v9, v2, 0, *(v5 + 8 * (v4 - 4725)) - 4, v10, 18);
  return (v3 - 1237465637);
}

uint64_t sub_265C732C4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1 - 1255716154;
  v11 = a1 - 1255720531;
  v12 = (*(v9 + 8 * (a1 ^ 0x4AD8D7D8)))(16, 3886098504);
  return (*(v9 + 8 * (((v12 == 0) * (v10 - 6318)) ^ v11)))(v12, v13, v14, v15, v16, v17, v18, v19, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_265C73348@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 + ((v3 + 1214) | 4u) - 2822;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((4679 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_265C7341C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 8) = 4096;
  *v6 = v5;
  return v4(a1, a2, 1360, a4, 3131405534, 1870649319, 3587880957, 3311047139);
}

uint64_t sub_265C73468@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v7 = (a2 ^ 0x3BF7FF6FBCD9F45BLL) + ((((a6 + 2395) | 0x51Au) + 0x179B3D8FCLL) & (2 * a2)) - 0x3BF7FF6EF9B914FALL;
  v9 = v7 < 0xC320DF5D || v7 > *(a1 + 8) + 3273711453u;
  return (*(v6 + 8 * ((3055 * v9) ^ a6)))();
}

uint64_t sub_265C7351C@<X0>(uint64_t a1@<X8>)
{
  v5 = (v1 + v2 - 16);
  v7 = *(v5 - 1);
  v6 = *v5;
  v8 = (a1 + v2 - 16);
  *(v8 - 1) = v7;
  *v8 = v6;
  return (*(v4 + 8 * ((112 * ((v3 + 1216) - (v2 & 0xFFFFFFE0) == 3872)) | v3)))();
}

uint64_t sub_265C73644()
{
  v6 = (*(v5 + 8 * (v0 ^ 0x1D7B)))(*v3);
  *v3 = v2;
  *(v3 + 8) = v1;
  return v4(v6);
}

uint64_t sub_265C73890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v10 + 8 * (v9 ^ 0x174E)))(a1, a2, a3, a4, a5, a6, a7, a8);
  (*(v10 + 8 * (v9 + 3244)))(a1);
  v13 = (*(v10 + 8 * (v9 + 3186)))(v11, @"AAYLwXkf");
  return (*(v10 + 8 * (((v13 != 0) * ((((v9 - 2196) | 0x201) ^ 0xFFFFFF3F) + ((v9 + 135080557) & 0xF7F2CEFF))) ^ v9)))(v13, v14, v15, v16, v17, v18, v19, v20, a9);
}

uint64_t sub_265C7392C()
{
  v5 = v2 - 1;
  *(v0 + v5) = *(v1 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (v3 - 2696)) ^ (v3 - 189))))();
}

uint64_t sub_265C73960()
{
  v4 = v3 ^ 0x1EDA;
  v5 = (*(v1 + 8 * (v4 ^ 0xCC1)))(*v2, *(v0 + 8 * (v4 - 5732)) - 12);
  *(*(v0 + 8 * (v4 ^ 0x161D)) - 4) = v5;
  return (*(v1 + 8 * (((v5 == 0) * ((5 * (v4 ^ 0x177D)) ^ (v4 - 3303))) ^ v4)))();
}

uint64_t sub_265C739D8@<X0>(uint64_t a1@<X8>)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFFAEELL ^ v4 ^ 0x15B3u) + v2;
  *(a1 - 7 + v6) = *(v1 - 7 + v6);
  return (*(v5 + 8 * ((117 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_265C73C34(uint64_t a1)
{
  v4 = (*(v2 + 8 * (v3 + 5687)))(a1, *(v1 + 8 * (v3 - 887)) - 8);
  **(v1 + 8 * (v3 ^ 0x3F7)) = v4;
  return (*(v2 + 8 * (((v4 == 0) * (((v3 + 1052) ^ 0xFFFFF001) + ((v3 + 1052) | 0x10))) ^ v3)))();
}

uint64_t sub_265C73F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (v3 - 3165)) ^ v3)))();
}

uint64_t sub_265C73FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  v20 = *(v24 + 8 * (v23 ^ 0xF94));
  v21 = &a20 + a7 + v25;
  *v21 = HIBYTE(a5) ^ 0x45;
  v21[1] = BYTE6(a5) ^ 0xCE;
  v21[2] = BYTE5(a5) ^ 0x4C;
  v21[3] = BYTE4(a5) ^ 0xAB;
  v21[4] = BYTE3(a5) ^ 0x84;
  v21[5] = BYTE2(a5) ^ 0xC5;
  v21[6] = BYTE1(a5) ^ 0x62;
  v21[7] = a5 ^ 0x75;
  return v20();
}

uint64_t sub_265C74018()
{
  v5 = v0 ^ v1;
  v7 = v3 < 0x20 || v5 < 8;
  return (*(v4 + 8 * ((((v7 ^ (v2 + 65)) & 1) * ((v2 - 357) ^ 0xA81)) ^ v2)))();
}

uint64_t sub_265C74060()
{
  *v0 = 0;
  v0[1] = 0;
  v3 = (*(v2 + 8 * (v1 + 1698)))(4096, 3886098504);
  *v0 = v3;
  return (*(v2 + 8 * ((87 * (((11 * (v1 ^ 0x63) + 10) ^ (v3 == 0)) & 1)) ^ v1)))();
}

uint64_t sub_265C740CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = (*(v10 + 12) ^ v11) + ((*(v10 + 12) << ((a3 ^ v8) - 55)) & a7) + a5;
  v14 = v12 >= 0xB1E327C6 && v12 <= *(v10 + 8) + 2984454086u;
  return (*(v9 + 8 * ((v14 * (a3 + a8)) | a3 ^ v8)))(a1, a2);
}

uint64_t sub_265C744B8()
{
  v5 = (*(v2 + 8 * (v4 ^ 0x1C0F)))(v0, v1);
  *v3 = v5;
  return (*(v2 + 8 * (((v5 == 0) * ((((v4 - 1119) | 0x472) + 92846877) ^ 0x588C122)) ^ v4)))();
}

uint64_t sub_265C74948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(v9 + 8 * (((((v8 - 2454) | 0x15C) - 817) * v6) ^ (v8 - 5294)));
  *(v10 - 200) = v7;
  return v11(a1, a2, 2176, 4294961654, a5, a6, 984);
}

uint64_t sub_265C749D0@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  v6 = v5 == (v3 - 5673) - 140;
  return (*(v4 + 8 * ((v6 | (2 * v6)) ^ v3)))();
}

uint64_t sub_265C74A04()
{
  v3 = *(v2 - 176);
  *(v2 - 192) = 0;
  *(v2 - 180) = 0;
  v4 = (&off_28778E150)[v0 - 1763] - 8;
  (*(v1 + 8 * (v0 + 4759)))(v4);
  v5 = *(&off_28778E150)[v0 ^ 0x702];
  v6 = *(v3 + 12) + 599664785 - ((2 * *(v3 + 12)) & 0x477C5122);
  v7 = 1311869473 * ((((v2 - 144) | 0x7130766E) - ((v2 - 144) & 0x7130766E)) ^ 0x9ADF6CC2);
  *(v2 - 136) = *v3;
  *(v2 - 128) = v2 - 192;
  *(v2 - 104) = 563297187 - v7 + 622816387 * v5;
  *(v2 - 112) = v7 + v0 + 3791;
  *(v2 - 144) = v6 ^ v7;
  *(v2 - 120) = v2 - 180;
  (*(v1 + 8 * (v0 + 4799)))(v2 - 144);
  v8 = *(v2 - 108);
  v9 = (*(v1 + 8 * (v0 + 4757)))(v4);
  return (*(v1 + 8 * (((v8 == 1893509507) * (((v0 ^ 0x16B2) + 35) ^ 0x1E6)) ^ v0)))(v9);
}

uint64_t sub_265C74BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24, _DWORD *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t *a30, uint64_t (*a31)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v32 = v31 + 1872523755;
  v33 = *a30;
  v34 = a24 - ((2 * a24) & 0x75FC608A) + 989737029;
  v35 = ((2 * *a25) & 0xFF7CFBBE) + (v32 ^ 0x7FBE6AD7 ^ *a25) - 2143190495;
  *(*a30 + v35) = HIBYTE(v34) ^ 0x3A;
  *(v33 + v35 + 1) = BYTE2(v34) ^ 0xFE;
  *(v33 + v35 + 2) = BYTE1(v34) ^ 0x30;
  *(v33 + v35 + 3) = (a24 - ((2 * a24) & 0x8A) + 69) ^ 0x45;
  *a25 += 4;
  return a31(a1, a2, a3, a4, a5, a6, a7, a8);
}

void sub_265C74C98(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *v6 = *a4;
  *(v5 + (((v4 - 643) | 0x20u) ^ (v8 + 2138)) + v7) = a4[1];
  v9 = (v5 + v7 + v8);
  *v9 = a4[2];
  v9[1] = a4[3];
  v9[2] = a4[4];
  v9[3] = a4[5];
  v9[4] = a4[6];
  v9[5] = a4[7];
  JUMPOUT(0x265C5DBD0);
}

uint64_t sub_265C74D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, unsigned int a23)
{
  v26 = (a23 | ((a23 < 0x49C23A25) << 32)) + (v23 - 822) + *(v24 + 12) + 1920144444;
  v28 = v26 < (v23 - 5516) + 3157614775u || v26 > *(v24 + 8) + 3157614809u;
  return (*(v25 + 8 * ((100 * v28) ^ v23)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_265C74E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v23 = (*(v20 + 8 * (v21 ^ 0xF4A)))(a20, a19, a3, a4, a5, a6, a7, a8);
  *v22 = v23;
  return (*(v20 + 8 * (((v23 == 0) * (((v21 - 5717) | 0xD90) + 320)) ^ v21)))();
}

uint64_t sub_265C74EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = (*(v10 + 8 * (v12 + 4716)))(a10, v13, a3, a4, a5, a6, a7, a8);
  *v11 = v14;
  return (*(v10 + 8 * (((v14 != 0) * (v12 - 1683)) ^ v12)))();
}

uint64_t sub_265C74F34()
{
  *v0 = 0;
  v0[1] = 0;
  v4 = (*(v2 + 8 * (v1 + 2243)))(v0);
  return v3(v4);
}

void T6TvO7ylTcnDGBFpE()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = (&off_28778E150)[(*(off_28778E480 + (*(off_28778E8C0 + (91 * (qword_28003EED0 ^ 0x30 ^ dword_28003EDD8))) ^ 0x9Au) - 12) ^ (91 * (qword_28003EED0 ^ 0x30 ^ dword_28003EDD8))) - 65];
  v1 = &v5[qword_28003EED0 + *(v0 - 4)];
  v2 = (636859739 * v1) ^ 0xE2C729A08169AF30;
  v3 = 636859739 * (v1 ^ 0xE2C729A08169AF30);
  qword_28003EED0 = v2;
  *(v0 - 4) = v3;
  v4 = *((&off_28778E150)[(*(off_28778E268 + (*(off_28778E6F0 + (91 * ((v3 - qword_28003EED0) ^ 0x30)) - 8) ^ 0xE3u) - 8) ^ (91 * ((v3 - qword_28003EED0) ^ 0x30))) + 18] - 4) != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_265C751E8@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * (((v5 == 0) * ((v3 - 19487965) & 0x12959FE ^ 0x1B14)) ^ v3)))();
}

uint64_t sub_265C752A0()
{
  v5 = v1 ^ v0;
  v7 = v3 < 0x20 || v5 < ((v2 + 729639919) ^ 0x2B7D661Du) + ((v2 + 729639919) & 0xD4828FFB) - 5841;
  return (*(v4 + 8 * (v7 | (32 * v7) | v2)))();
}

uint64_t sub_265C752F4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = v16 - 33;
  v19 = (a1 ^ 0x5FFFF879FF6FDD7ELL) + ((2 * a1) & 0x1FEDFBAFCLL) - 0x5FFFF879C15EF6D1;
  v21 = v19 < (((v18 + 39780907) | 0x512051C2u) ^ 0x6D6FB34BuLL) || v19 > *(a16 + 8) + 1041295017;
  return (*(v17 + 8 * ((3078 * v21) ^ v18)))();
}

uint64_t sub_265C75460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 8) = 4096;
  *v5 = v4;
  return v3(a1, a2, a3, 2808654594);
}

uint64_t sub_265C755AC()
{
  v7 = *v14;
  if (*v14 >= 0x40)
  {
    v8 = 64;
  }

  else
  {
    v8 = *v14;
  }

  v9 = *v5;
  v10 = *v4;
  v11 = 652747349 * (((~(v6 - 200) | 0xC6C6309D7605E866) + ((v6 - 200) | 0x3939CF6289FA1799)) ^ 0x638F649ECB09290DLL);
  *(v6 - 184) = v8 - v11;
  *(v6 - 180) = v3 - v11 + 1173928519;
  *(v6 - 176) = v15;
  *(v6 - 168) = v7 ^ v11;
  *(v6 - 200) = v9 - v11;
  *(v6 - 192) = v10 ^ v11;
  (*(v1 + 8 * (v3 ^ 0x1D8Au)))(v6 - 200);
  (*(v1 + 8 * (v3 ^ 0x1E16u)))(v13, v0, 0, (&off_28778E150)[v3 ^ 0x797u] - 8, v15, 34);
  return (v2 - 1237465637);
}

uint64_t sub_265C756EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v22 + 12) = ((v23 - 4694) ^ 0xB63DC5F9) + v21 + v20;
  v25 = v20;
  v26 = (*(v24 + 8 * (v23 + 1878)))();
  *(a20 + 8) = v26;
  return (*(v24 + 8 * ((229 * ((v23 ^ 0x39 ^ (v26 == 0)) & 1)) ^ v23)))(v26, v27, 1374086239, v28, v25, v29, v30, v31, a9, a10);
}

uint64_t sub_265C7577C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, _DWORD *a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21)
{
  v23 = *a21;
  v24 = ((a17 ^ 0x477CB59) - 535002323) ^ a17 ^ ((a17 ^ 0xA87D57EA) + 1276518304) ^ ((a17 ^ 0x7FBF7FFD) - 1680590967) ^ (((v21 - 937343391) ^ a17) + 743054514);
  v25 = ((2 * *a14) & 0xFD7CFABE) + 21070497 + ((v21 + 2152) ^ *a14 ^ 0xFEBE6B94);
  *(*a21 + v25) = HIBYTE(v24) ^ 0x1B;
  *(v23 + v25 + 1) = BYTE2(v24) ^ 0x94;
  *(v23 + v25 + 2) = ((((a17 ^ 0xCB59) - 31955) ^ a17 ^ ((a17 ^ 0x57EA) + 8096) ^ ((a17 ^ 0x7FFD) + 14217) ^ (((v21 + 18017) ^ a17) + 7346)) >> 8) ^ 0xB7;
  *(v23 + v25 + 3) = ((a17 ^ 0x59) + 45) ^ a17 ^ ((a17 ^ 0xEA) - 96) ^ ((a17 ^ 0xFD) - 119) ^ (((v21 + 97) ^ a17) - 78) ^ 0x8A;
  v26 = (*a14 + 4);
  *a14 = v26;
  return (*(v22 + 8 * ((134 * (a12 <= *a21 + ((2 * v26) & 0x1EF7FFEF6) + (v26 ^ 0x3E7EF7D7F7BFFF7BuLL) - 0x3E7EF7D7F7BFFF7BLL)) ^ v21)))(a1);
}

uint64_t sub_265C7593C@<X0>(unsigned int a1@<W2>, unint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v7 = (((v4 - 1358) | a1) ^ a2) + v3;
  *(v5 + v7) = *(a3 + v7);
  return (*(v6 + 8 * (((8 * (v7 == 0)) | (16 * (v7 == 0))) ^ v4)))();
}

uint64_t sub_265C75970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a37)
{
  HIDWORD(a37) = 1344803743;
  v38 = *(v37 - 192);
  v39 = *(v36 + 8 * (*(v37 - 196) - 5767));
  *(v37 - 216) = v38;
  return (*(v36 + 8 * (((*(v38 + 12) > 0xFFFFFFFAuLL) * HIDWORD(a35)) ^ a37)))(v39, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a37, v38 + 12);
}

uint64_t sub_265C759A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  v58 = v56 - 2760;
  v59 = (v56 - 4096) | 0x1000;
  if ((a29 - 1885819589) >= 0xFFFFFFBF)
  {
    v60 = v59 + a29 - 1885823876;
  }

  else
  {
    v60 = 64;
  }

  if ((a21 - 1237465702) >= 0xFFFFFFBF)
  {
    v61 = a21 - 1237465637;
  }

  else
  {
    v61 = 64;
  }

  v62 = 566710099 * ((((v57 - 184) | 0x8F8D19BF75644967) - ((v57 - 184) & 0x8F8D19BF75644967)) ^ 0x7005F76DF92111EBLL);
  *(v57 - 168) = a37 - v62;
  *(v57 - 152) = &a53;
  *(v57 - 136) = v61 + v62;
  *(v57 - 132) = (v54 - 1237465637) ^ v62;
  *(v57 - 176) = (a21 - 1237465637) ^ v62;
  *(v57 - 144) = (v59 + a29 - 1885823876) ^ v62;
  *(v57 - 140) = v60 ^ v62;
  *(v57 - 184) = a35 + v62;
  *(v57 - 160) = v58 - v62 + 1735944368;
  *(v57 - 128) = a27 - v62;
  (*(v55 + 8 * (v58 ^ 0x1C74)))(v57 - 184, a2, a3, a4, a5, a6, a7, a8);
  v63 = (*(v55 + 8 * (v58 + 4976)))(a12, v53, 0, (&off_28778E150)[v58 - 1584], &a53, 62);
  return (*(v55 + 8 * ((v54 == ((v59 - 3064) ^ 0x49C221F4) + ((v59 - 3064) | 0x1021)) ^ v59)))(v63);
}

uint64_t sub_265C75E10()
{
  (*(v4 + 8 * ((v2 - 3918) ^ 0x1C19)))(v3);
  *v1 = 0;
  return v0(4294960793);
}

uint64_t sub_265C75E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (a1 + v5 - 16);
  v9 = (a5 + v5 - 16);
  v10 = *v9;
  *(v8 - 1) = *(v9 - 1);
  *v8 = v10;
  return (*(v7 + 8 * ((79 * ((((v6 - 985) ^ ((((v6 + 3439) ^ 0xFFFFEC70) & v5) == 32)) & 1) == 0)) | (v6 + 3439))))();
}

uint64_t sub_265C75F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = (*(v13 + 8 * (v14 ^ 0x136B)))(a12, a11, a3, a4, a5, a6, a7, a8);
  *v12 = v15;
  return (*(v13 + 8 * (((17 * (((v14 + 180371269) | 0x40188416) ^ 0x4AD8CE81) - 2447) * (v15 == 0)) ^ v14)))();
}

uint64_t sub_265C75FF4()
{
  v6 = (v0 - 32);
  v7 = (v4 - 32);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * (((v3 == 32) * (v2 + 67)) ^ v1)))();
}

uint64_t sub_265C76004()
{
  *(v1 + 8) = 4096;
  *v2 = v1;
  return v0(1042206423);
}

uint64_t sub_265C7611C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v33 = v27 + 2491;
  v34 = *(a27 + 16);
  if (v34 >= 0x40)
  {
    v35 = 64;
  }

  else
  {
    v35 = *(a27 + 16);
  }

  v36 = *(a27 + 8);
  v37 = 1468321087 * ((v32 - 152 - 2 * ((v32 - 152) & 0x29E3DD1C0B524B70) + 0x29E3DD1C0B524B70) ^ 0x7C283473DFBD0A1ELL);
  *(v32 - 136) = v34 - v37;
  *(v32 - 152) = v36 ^ v37;
  *(v32 - 144) = v35 - v37;
  *(v32 - 140) = v27 - v37 - 1035722383;
  *(v30 + 24) = v32 - 176;
  (*(v31 + 8 * (v27 + 5605)))(v32 - 152, a2, a3, a4, a5, a6, a7, a8);
  (*(v31 + 8 * (v27 ^ 0x1DA1u)))(v28, v29, 0, (&off_28778E150)[v27 - 792] - 8, v32 - 176, 24);
  *(v32 - 152) = v33 - 891395573 * ((2 * ((v32 - 152) & 0x5F5F15A8) - (v32 - 152) - 1600066986) ^ 0x9A8DF5ED) + 855;
  v38 = (*(v31 + 8 * (v27 + 5590)))(v32 - 152);
  v39 = *(v32 - 148) != ((v27 + 244052807) ^ (v27 + 1272012704));
  return (*(v31 + 8 * ((v39 | (2 * v39)) ^ v33)))(v38);
}

uint64_t sub_265C76360(uint64_t a1)
{
  v5 = *(v4 + 8);
  (*(v3 + 8 * (v1 + 1412)))(v5, @"xNJu5eepP", a1);
  v10 = v1 + 583883621 * (((&v9 | 0x42F24A0C) - (&v9 & 0x42F24A0C)) ^ 0xE3C196A3) - 1250;
  v9 = v8;
  (*(v3 + 8 * (v1 + 1351)))(&v9);
  (*(v3 + 8 * (v1 + 1371)))(a1);
  (*(v3 + 8 * (v1 ^ 0xD8C)))(v5, @"rGLU5bt2", v2);
  result = (*(v3 + 8 * (v1 + 1371)))(v2);
  *v4 = 0;
  return result;
}

uint64_t sub_265C764E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v10 + 8 * (v11 ^ 0x12CF)))(a1, a2, a3, a4, a5, a6, a7, a8);
  (*(v10 + 8 * (v11 ^ 0x1135)))(a1);
  return (*(v10 + 8 * (((v11 + 2 * (v11 ^ 0xE75) + 1931) * (v9 == 0)) ^ v11)))(a9);
}

uint64_t sub_265C76558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  v41 = (v36 + 754979481) & 0x1D5FFEC;
  v42 = *a17;
  v43 = a17[1];
  v44 = *(a17 + 6);
  if (v44 >= 0x40)
  {
    v45 = 64;
  }

  else
  {
    v45 = *(a17 + 6);
  }

  v46 = a17[2];
  v47 = a17[4];
  v48 = ((((v40 - 152) | 0x36133A2460F36C20) - (v40 - 152) + ((v40 - 152) & 0xC9ECC5DB9F0C93D8)) ^ 0x817B65F5ADE739BLL) * v34;
  *(v40 - 120) = v48 + v36 - 1515926941;
  *(v40 - 112) = va;
  *(v40 - 104) = v46 ^ v48;
  *(v40 - 128) = v42 + v48;
  *(v40 - 144) = v43 + v48;
  *(v40 - 136) = v47 ^ v48;
  *(v40 - 152) = v44 ^ v48;
  *(v40 - 148) = v45 - v48;
  (*(v39 + 8 * (v36 ^ v35)))(v40 - 152, a2, a3, a4, a5, a6, a7, a8);
  (*(v39 + 8 * (v36 ^ (v35 + 872))))(v38, v37, 0, (&off_28778E150)[v36 ^ 0x129FE2Bu] - 12, va, 54);
  *(v40 - 152) = v41 - (((((v40 - 152) | 0x57AB52B0) ^ 0xFFFFFFFE) - (~(v40 - 152) | 0xA854AD4F)) ^ 0x9279B2F4) * v34 + 119;
  v49 = (*(v39 + 8 * (v41 ^ 0x97Bu)))(v40 - 152);
  return (*(v39 + 8 * (((*(v40 - 148) == 1163564281) | (8 * (*(v40 - 148) == 1163564281))) ^ v41)))(v49);
}

uint64_t sub_265C76894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = v8 < v10;
  v14 = (((v9 ^ (v11 + 636112825) ^ 0xE5A34C3B1A4464CFLL) + 0x45DD03FE4FA73C00) ^ ((v9 ^ 0x802F796D3A577AD9) + 0x205136A84A5E750FLL) ^ ((v9 ^ (v11 + 636112825) & 0xDA15AF5D ^ 0x2E71FA882AC5B169) - 0x71F04AB2A5334104)) + a8;
  v15 = v13 ^ (v14 < v10);
  v16 = v14 < v8;
  if (!v15)
  {
    v13 = v16;
  }

  return (*(v12 + 8 * ((2114 * v13) ^ v11)))();
}

void sub_265C76990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v32 = (v28 - 6159) | 0x282;
  (*(v29 + 8 * (v32 + 5973)))(v30, @"igoeg", a1, a4, a5, a6, a7, a8);
  *(v31 - 184) = v32 + 1427277979 * (((v31 - 184) & 0x7969F6F8 | ~((v31 - 184) | 0x7969F6F8)) ^ 0xD6C7446F) - 175;
  *(v31 - 176) = a28;
  (*(v29 + 8 * (v32 ^ 0x1B7C)))(v31 - 184);
  (*(v29 + 8 * (v32 ^ 0x1B74)))(a1);
  JUMPOUT(0x265C26AA0);
}

uint64_t sub_265C76AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t *a31)
{
  v34 = (*(v32 + 8 * (v31 + 699)))((((v31 - 127) | 0x2A) ^ 0xB63DD365) + *(v33 - 156), 3886098504, a3, a4, a5, a6, a7, a8);
  *a31 = v34;
  return (*(v32 + 8 * (((v34 != 0) * (((v31 - 5904) | 0x6A8) ^ 0x6A5)) ^ v31)))();
}

uint64_t sub_265C76BB8@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  v23 = a1 != 0;
  if (a20 != (v20 ^ 0x1C47 ^ (v22 - 891)))
  {
    v23 = 0;
  }

  return (*(v21 + 8 * ((v23 * ((v20 ^ 0x1BE5) - 2822)) | v20)))();
}

uint64_t sub_265C76CF4@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((707 * (v5 == (v3 - 788) - 612)) ^ v3)))();
}

uint64_t sub_265C76DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 8) = 4096;
  *v5 = v4;
  return v3(a1, a2, a3, 5354, 2147489544, 72, 2162);
}

uint64_t sub_265C76F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = (*(v13 + 8 * (v12 + 3253)))(a12, a11, a3, a4, a5, a6, a7, a8);
  *v14 = v15;
  return (*(v13 + 8 * (((v15 == 0) * (((v12 + 1684204980) & 0x9B9D17F7) + 1856)) ^ v12)))();
}

void D2Zl4GdLl()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = (&off_28778E150)[(*(off_28778E480 + (*(off_28778E8C0 + (91 * ((dword_28003EDD8 - qword_28003EEA8) ^ 0x30))) ^ 0x86u) - 12) ^ (91 * ((dword_28003EDD8 - qword_28003EEA8) ^ 0x30))) + 45];
  v1 = &v4[qword_28003EEA8 + *(v0 - 4)];
  v2 = 636859739 * v1 + 0x1D38D65F7E9650D0;
  v3 = 636859739 * (v1 ^ 0xE2C729A08169AF30);
  qword_28003EEA8 = v2;
  *(v0 - 4) = v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_265C771B0(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 + 282)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 == 0) * (v1 - 10111 + ((v1 - 2738) | 0x119))) ^ v1)))();
}

uint64_t sub_265C77420()
{
  (*(v4 + 8 * (v0 ^ 0x130A)))(v3);
  *v1 = 0;
  return v2(4857, 4294962794);
}

uint64_t sub_265C776F0()
{
  v5 = v1 ^ 0x17B;
  v7 = v2 > 0x1F && ((v3 + ((v5 - 2080797854) & 0x7C0669F7u) + 1406 - 3922) ^ v0) > 7;
  return (*(v4 + 8 * ((214 * v7) ^ v5)))();
}

uint64_t sub_265C77780@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X4>, _DWORD *a3@<X5>, char a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17)
{
  v17 = *a2;
  v18 = a17 - ((2 * a17) & 0x75FC608A) + 989737029;
  v19 = ((*a3 << (((a4 + 81) & 0xC7) - 68)) & 0xFD7FBBFE) + (*a3 ^ 0xFEBFDDFF) + 20980225;
  *(*a2 + v19) = HIBYTE(v18) ^ 0x3A;
  *(v17 + v19 + 1) = BYTE2(v18) ^ 0xFE;
  *(v17 + v19 + 2) = BYTE1(v18) ^ 0x30;
  *(v17 + v19 + 3) = v18 ^ 0x45;
  *a3 += 4;
  return a1();
}

uint64_t sub_265C7784C(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16) + 912648571 * (result ^ 0xDCCD4C35);
  *v1 = 67109120;
  v1[1] = v2;
  return result;
}

uint64_t sub_265C778DC(uint64_t result)
{
  v1 = 1468321087 * (result ^ 0x55CBE96FD4EF416ELL);
  v2 = *(result + 56) ^ v1;
  v3 = *result + v1;
  v4 = *(result + 48) + v1;
  v5 = *(result + 4) ^ v1;
  v6 = *(result + 12) - v1;
  v7 = *(result + 40) + v1;
  v8 = *(result + 32) - v1;
  v9 = *(result + 24);
  v10 = *(result + 16) ^ v1;
  *v9 = 134219778;
  *(v9 + 4) = v2;
  *(v9 + 12) = 1040;
  *(v9 + 14) = v3;
  *(v9 + 18) = 2096;
  *(v9 + 20) = v4;
  *(v9 + 28) = 1024;
  *(v9 + 30) = v5;
  *(v9 + 34) = 1040;
  *(v9 + 36) = v6;
  *(v9 + 40) = 2096;
  *(v9 + 42) = v7;
  *(v9 + 50) = 1024;
  *(v9 + 52) = v8;
  *(v9 + 56) = 2048;
  *(v9 + 58) = v10;
  return result;
}

void sub_265C77990(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(a1 + 24) ^ (1466156297 * (((a1 | 0x809A0FB5) - (a1 & 0x809A0FB5)) ^ 0x532D8FE4));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_265C77B74@<X0>(uint64_t *a1@<X5>, _DWORD *a2@<X6>, uint64_t (*a3)(void)@<X7>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17)
{
  v17 = *a1;
  v18 = a17 - ((((a4 + 1276678860) & 0xB3E7797F) + 1979467559) & (2 * a17)) + 989737029;
  v19 = ((2 * *a2) & 0xD5FCFBDE) + (*a2 ^ 0xEAFE7DEF) + 352420369;
  *(*a1 + v19) = HIBYTE(v18) ^ 0x3A;
  *(v17 + v19 + 1) = BYTE2(v18) ^ 0xFE;
  *(v17 + v19 + 2) = BYTE1(v18) ^ 0x30;
  *(v17 + v19 + 3) = v18 ^ 0x45;
  *a2 += 4;
  return a3();
}

void EKNEpfxz52bXl()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = off_28778E198 - 8;
  v1 = off_28778E2C0 - 4;
  v2 = (&off_28778E150)[(*(off_28778E2C0 + (*(off_28778E198 + (91 * ((dword_28003EDD8 + qword_28003ED98) ^ 0x30)) - 8) ^ 0x45u) - 4) ^ (91 * ((dword_28003EDD8 + qword_28003ED98) ^ 0x30))) + 98];
  v3 = qword_28003ED98 - &v6 + *(v2 - 4);
  v4 = 636859739 * v3 - 0x1D38D65F7E9650D0;
  v5 = 636859739 * (v3 ^ 0xE2C729A08169AF30);
  qword_28003ED98 = v4;
  *(v2 - 4) = v5;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_265C77EE4()
{
  *(v6 - 136) = (v0 + 1311671230) ^ (1468321087 * (((v1 ^ 0x3C86F597 | 0x757DCB32) - (v1 ^ 0x3C86F597) + ((v1 ^ 0x3C86F597) & 0x8A8234CD)) ^ 0x9D147FCB));
  *(v6 - 144) = v2;
  (*(v5 + 8 * (v0 ^ 0xCE7)))(v6 - 144);
  v7 = (*(v5 + 8 * (v0 ^ 0xCCE)))(**(v3 + 8 * (v0 - 5309)), *(v3 + 8 * (v0 - 5269)) - 4, v4);
  v8 = ((2 * v7) & 0xB3DF7DEA) + (v7 ^ 0xD9EFBEF5);
  *(v6 - 144) = v2;
  *(v6 - 136) = (v0 - 50589072) ^ (912648571 * (((v1 | 0x687E3249) - (v1 & 0x687E3249)) ^ 0xB4B37E7C));
  v9 = (*(v5 + 8 * (v0 ^ 0xC89)))(v6 - 144);
  return (*(v5 + 8 * (((v8 == -638599435) * (((v0 ^ 0xB0817B8B) + 1333696462) ^ 0x69A)) ^ v0)))(v9);
}

uint64_t sub_265C78074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, char *a17)
{
  v23 = 912648571 * ((&a15 - 2 * (&a15 & 0x3841332A249E7900) + 0x3841332A249E7900) ^ 0x78E221A2F8533535);
  a17 = &a11;
  LODWORD(a16) = (v22 - 715639310) ^ v23;
  a15 = v17 - v23;
  (*(v20 + 8 * (v22 + 2926)))(&a15, a2, a3, a4, a5, a6, a7, a8);
  (*(v20 + 8 * (v22 ^ 0x17EFu)))(a9, v18, 0, *(v19 + 8 * (v22 ^ 0xEA4u)) - 8, &a11, 12);
  v24 = 346387183 * (((&a15 | 0x8A9FFE92) - &a15 + (&a15 & 0x75600168)) ^ 0xFF72B42);
  LOBYTE(a15) = v24 + 84;
  a16 = v17;
  LODWORD(a17) = v22 + 568 - v24 - 267;
  v25 = (*(v20 + 8 * (v22 + 3010)))(&a15);
  return (*(v20 + 8 * (((*v21 == 0) * (((v22 - 3654) | 0x1080) ^ 0x153F)) ^ (v22 + 568))))(v25);
}

uint64_t sub_265C783AC@<X0>(uint64_t a1@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v1 + v6);
  return (*(v5 + 8 * (((v6 != 0) * v4) ^ v2)))();
}

uint64_t sub_265C78434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, char a27, __int16 a28, char a29)
{
  (*(v33 + 8 * (v34 ^ 0xB21)))(v30, a2, a3, a4, a5, a6, a7, a8);
  v36 = *v29;
  v37 = 1311869473 * ((-565400113 - ((v35 - 144) | 0xDE4CADCF) + ((v35 - 144) | 0x21B35230)) ^ 0xCA5C489C);
  v38 = 563293286 - v37 + 622816387 * *v31 + 3901;
  *(v35 - 144) = (*(v29 + 3) + 599664785 - ((*(v29 + 3) << ((v34 + 123) ^ 0x69)) & 0x477C5122)) ^ v37;
  *(v35 - 104) = v38;
  *(v35 - 112) = v37 + v34 + 791;
  *(v35 - 120) = &a27;
  *(v35 - 136) = v36;
  *(v35 - 128) = &a29;
  (*(v33 + 8 * (v34 ^ 0xB19)))(v35 - 144);
  v39 = *(v35 - 108);
  v40 = (*(v33 + 8 * (v34 + 1757)))(v30);
  return (*(v33 + 8 * (((v39 == ((v34 - 901) ^ 0xBB9) + 1625072815) * (v34 - 901 - v32 - 1454956248)) ^ (v34 - 901))))(v40);
}

uint64_t sub_265C78584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = (*(v11 + 8 * (v13 ^ 0x15E6)))(a11, a10, a3, a4, a5, a6, a7, a8);
  *v12 = v14;
  return (*(v11 + 8 * (((v14 == 0) * ((v13 ^ 0x11B95CD2) - 297357246)) ^ v13)))();
}

uint64_t sub_265C785DC()
{
  v3 = (v1 - 400178945) & 0x17DA3DFD;
  v4 = (*(v2 + 8 * (v3 + 3156)))(v0, @"igoeg");
  return (*(v2 + 8 * (((v4 == 0) * (((v3 - 522424165) & 0x1F238AC7) - 2127)) ^ (v3 + 3035))))(v4, v5, v6, v7, v8);
}

uint64_t sub_265C78758()
{
  *(v0 + 8) = 4096;
  *v1 = v0;
  return v2();
}

uint64_t sub_265C787E0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v10 = ~v5 + v2;
  v11 = *(a2 + v10 - 15);
  v12 = *(a2 + v10 - 31);
  v13 = v8 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v9 + 8 * ((((v6 ^ v7) + v5 == v3) * a1) ^ v4)))();
}

uint64_t sub_265C788B8@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  *(v8 + v3) = *(a2 + v3);
  v9 = ((v3 + 1) ^ v4) != v5 + ((v2 + v6) & a1) - 1663;
  return (*(v7 + 8 * ((v9 | (v9 << 6)) ^ v2)))();
}

uint64_t sub_265C78A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, unsigned int a31)
{
  v34 = (a31 | ((a31 < (v31 ^ 0x49C239A0u)) << 32)) + *(v32 + 12) + 103262599;
  v36 = v34 < 0x4FE9E3AC || v34 > *(v32 + 8) + 1340728236;
  return (*(v33 + 8 * ((v36 * (((v31 - 462951839) & 0x1B981259) - 25)) ^ v31)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_265C78BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v6 = *(v5 - 180) + *(v4 + 12) + ((*(v5 - 180) < ((90 * (a3 ^ 0xEC1)) ^ 0x49C23839u)) << 32) + 2564642703u;
  v8 = v6 < 0xE29F91B4 || v6 > *(v4 + 8) + 3802108340u;
  return (*(v3 + 8 * ((15 * v8) ^ a3)))(a1, a2, a3 ^ 0xF3Eu);
}

uint64_t sub_265C78CE8@<X0>(uint64_t a1@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v1 + v6);
  return (*(v5 + 8 * (((v6 == 0) * v4) ^ v2)))();
}

uint64_t sub_265C78DFC@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (127 * (v3 ^ 0xBB8) + 7147)) ^ v3)))();
}

uint64_t sub_265C78E94(uint64_t result)
{
  v1 = *(result + 24);
  v2 = 1311869473 * ((2 * (result & 0x4D58803E62C6F9A1) - result + 0x32A77FC19D39065ELL) ^ 0x8108A89476D61CF2);
  v3 = *(result + 40);
  v4 = *(result + 32);
  v5 = *result + 1311869473 * ((2 * (result & 0x62C6F9A1) - result - 1657207202) ^ 0x76D61CF2);
  v6 = *(result + 8) + 1311869473 * ((2 * (result & 0x62C6F9A1) - result - 1657207202) ^ 0x76D61CF2);
  v7 = *(result + 16) ^ v2;
  *v1 = 67110146;
  *(v1 + 4) = v5;
  *(v1 + 8) = 1040;
  *(v1 + 10) = v6;
  *(v1 + 14) = 2096;
  *(v1 + 16) = v7;
  *(v1 + 24) = 1024;
  *(v1 + 26) = v3 ^ (1311869473 * ((2 * (result & 0x62C6F9A1) - result - 1657207202) ^ 0x76D61CF2));
  *(v1 + 30) = 2048;
  *(v1 + 32) = v4 - v2;
  return result;
}

void Rm5cU8chw2Q()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = (&off_28778E150)[(*(off_28778E2C0 + (*(off_28778E198 + (91 * ((dword_28003EDD8 + qword_28003ED80) ^ 0x30)) - 8) ^ 0x45u) - 4) ^ (91 * ((dword_28003EDD8 + qword_28003ED80) ^ 0x30))) + 98];
  v1 = &v4[qword_28003ED80 + *(v0 - 4)];
  v2 = 636859739 * v1 + 0x768A6804525E3610;
  v3 = 636859739 * (v1 ^ 0xE2C729A08169AF30);
  qword_28003ED80 = v2;
  *(v0 - 4) = v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_265C79138()
{
  v7 = *v6;
  if (*v6 >= 0x40)
  {
    v8 = 64;
  }

  else
  {
    v8 = *v6;
  }

  v9 = *v4;
  v10 = *v14;
  v11 = 1311869473 * (v16 ^ 0xB3AFD755EBEF1AACLL);
  v16[2] = v8 - v11;
  v19 = v10 + v11;
  v16[0] = v2 - v11 + ((v0 - 86512712) & 0x4D2FBDBF ^ 0xFE3A7C78);
  v16[1] = (v0 + 2118004563) ^ v11;
  v17 = v9 ^ v11;
  v18 = v15;
  v20 = v7 ^ v11;
  (*(v3 + 8 * (v0 + 2460)))(v16);
  (*(v3 + 8 * (v0 ^ 0x983)))(v13, v1, 0, *(v5 + 8 * (v0 - 3949)) - 8, v15, 40);
  return (v2 - 1237465637);
}

uint64_t sub_265C7926C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = (*(v13 + 52864))(a13, a12, a3, a4, a5, a6, a7, a8);
  *v14 = v15;
  return (*(v13 + 8 * ((46 * (v15 != 0)) ^ 0x168Cu)))();
}

uint64_t sub_265C792B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned int a28)
{
  a28 = (v31 + 1311675340) ^ (1468321087 * ((404487979 - (&a27 | 0x181BFF2B) + (&a27 | 0xE7E400D4)) ^ 0x330B41BA));
  a27 = v28;
  (*(v30 + 8 * (v31 ^ 0x1CE9)))(&a27, a2, a3, a4, a5, a6, a7, a8);
  v32 = (*(v30 + 8 * (v31 + 5184)))(**(v29 + 8 * (v31 ^ 0x5F1)), *(v29 + 8 * (v31 ^ 0x599)) - 4, a16);
  v33 = ((2 * v32) & 0xB38F746A) + (v32 ^ 0x59C7BA35);
  a28 = (v31 - 50584962) ^ (912648571 * (((&a27 | 0xF4368A47) - (&a27 & 0xF4368A47)) ^ 0x28FBC672));
  a27 = v28;
  v34 = (*(v30 + 8 * (v31 + 5255)))(&a27);
  return (*(v30 + 8 * (((v33 != 1506261557) * ((v31 - 1702144593) & 0x6574B58F ^ 0x1046)) ^ v31)))(v34);
}

uint64_t sub_265C79428()
{
  v4 = (*(v3 + 52864))(v1, v2);
  *v0 = v4;
  return (*(v3 + 8 * ((139 * (v4 == 0)) ^ 0x1129u)))();
}

uint64_t sub_265C795BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, int a20, char *a21, uint64_t a22)
{
  v29 = 163 * (v25 ^ 0x52C);
  v30 = 912648571 * (((&a19 | 0xDFB29727A43B2044) - &a19 + (&a19 & 0x204D68D85BC4DFB8)) ^ 0x9F1185AF78F66C71);
  a21 = &a13;
  a20 = (v25 - 715636997) ^ v30;
  a19 = v24 - v30;
  (*(v28 + 8 * (v25 ^ 0x1C8Bu)))(&a19, a2, a3, a4, a5, a6, a7, a8);
  (*(v28 + 8 * (v25 ^ 0x1C96u)))(a10, v26, 0, *(v27 + 8 * (v25 ^ 0x5BDu)) - 4, &a13, 12);
  v31 = 1466156297 * ((((2 * &a19) | 0x1E67737D5369067CLL) - &a19 - 0xF33B9BEA9B4833ELL) ^ 0x85F6CC757A03036FLL);
  a21 = v23;
  a22 = v22;
  a19 = (v24 ^ 0xC777DFBF5DDAFCE7) - v31 + ((v24 << ((v29 - 119) & 0xEA ^ 0xEBu)) & 0x8EEFBF7EBBB5F9CELL) + 0x7FA9BED5FFFF7BC0;
  a20 = (v29 - 1701) ^ v31;
  v32 = (*(v28 + 8 * (v29 ^ 0x12AFu)))(&a19);
  if (v22)
  {
    v33 = v23 == 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = v33;
  return (*(v28 + 8 * ((212 * ((v34 ^ (v29 - 109)) & 1)) ^ v29)))(v32);
}

void QThZx0FIkDGwP1(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = (&off_28778E150)[((91 * ((dword_28003EDD8 - dword_28003F018) ^ 0x30)) ^ byte_265D5F010[byte_265D5F810[(91 * ((dword_28003EDD8 - dword_28003F018) ^ 0x30))] ^ 0x1D]) - 149];
  v8 = 91 * ((dword_28003EDD8 - *v7) ^ 0x30);
  v9 = (&off_28778E150)[(*(off_28778E268 + (*(off_28778E6F0 + v8 - 8) ^ 0xE3u) - 8) ^ v8) - 48];
  v10 = &v15[1] + (*(v9 - 4) ^ *v7);
  *v7 = 636859739 * v10 + 0x768A6804525E3610;
  *(v9 - 4) = 636859739 * (v10 ^ 0xE2C729A08169AF30);
  v14 = 0;
  v15[0] = 1237465637;
  v11 = a1 - ((2 * a1) & 0x6B570093361338D4) - 0x4A547FB664F66396;
  v12 = 891395573 * (((~v16 | 0x99CB60674DBD650ELL) + (v16 | 0x66349F98B2429AF1)) ^ 0x583013E3886F854BLL);
  v16[2] = v12 ^ ((a5 ^ 0xFFFABD6D) + 1441624000 + ((2 * a5) & 0xFFF57ADA));
  v16[0] = v12 ^ 0xEB8;
  v19 = v12 ^ v11;
  v20 = &v14;
  v21 = a6;
  v22 = v12 ^ ((a3 ^ 0xFDFBEDEF) + 1475100478 + ((2 * a3) & 0xFBF7DBDE));
  v23 = a4;
  v24 = a2;
  v17 = a7;
  v18 = v15;
  LOBYTE(v7) = 91 * ((*(v9 - 1) + *v7) ^ 0x30);
  v13 = (&off_28778E150)[((91 * ((dword_28003EDD8 + dword_28003F018) ^ 0x30)) ^ byte_265D5FA10[byte_265D5F5E0[(91 * ((dword_28003EDD8 + dword_28003F018) ^ 0x30))] ^ 0x86]) + 46] - 8;
  (*&v13[8 * (*(off_28778E480 + (*(off_28778E8C0 + v7) ^ 0xE9u) - 12) ^ v7) + 51368])(v16);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_265C79C10(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (912648571 * ((2 * (a1 & 0x66FF76C4) - a1 + 419465531) ^ 0xC5CDC50E));
  if (*a1)
  {
    return (*&(&off_28778E150)[v1 + 50583710][8 * v1 + 404721624])(*a1);
  }

  else
  {
    return (*&(&off_28778E150)[v1 + 50583710][8 * v1 + 404721624])((&off_28778E150)[v1 ^ 0xFCFC27B7]);
  }
}

void fcexHpmxKluw()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = (&off_28778E150)[(*(off_28778E480 + (*(off_28778E8C0 + (91 * ((dword_28003EDD8 - qword_28003ED88) ^ 0x30))) ^ 0xE9u) - 12) ^ (91 * ((dword_28003EDD8 - qword_28003ED88) ^ 0x30))) - 139];
  qword_28003ED88 = 636859739 * ((*(v0 - 4) + qword_28003ED88) ^ &v2 ^ 0xE2C729A08169AF30);
  *(v0 - 4) = qword_28003ED88;
  v1 = 91 * ((*(v0 - 1) - qword_28003ED88) ^ 0x30);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_265C79E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int *a29)
{
  v33 = 211 * (a21 ^ 0x60F);
  (*(v31 + 8 * (a21 ^ 0x1FC6)))(v30, a2, a3, a4, a5, a6, a7, a8);
  v34 = *a29;
  v35 = *v29;
  v36 = 1311869473 * ((~((v32 - 144) | 0x9AF6C1F) + ((v32 - 144) & 0x9AF6C1F)) ^ 0x1DBF894C);
  *(v32 - 144) = (*(v29 + 3) + 599664785 - ((2 * *(v29 + 3)) & 0x477C5122)) ^ v36;
  *(v32 - 136) = v35;
  *(v32 - 128) = v32 - 152;
  *(v32 - 120) = v32 - 180;
  *(v32 - 112) = v36 + a21 + 4090;
  *(v32 - 104) = (v33 ^ 0x21933FBC) - v36 + 622816387 * v34;
  (*(v31 + 8 * (a21 ^ 0x1FFE)))(v32 - 144);
  v37 = *(v32 - 108);
  v38 = (*(v31 + 8 * (a21 ^ 0x1FC0)))(v30);
  return (*(v31 + 8 * (((v37 == 1625074048) * ((v33 - 517) ^ 0x986 ^ ((v33 + 1) | 0x200))) ^ v33)))(v38);
}

uint64_t sub_265C79FAC()
{
  v6 = 912648571 * ((-700407324 - (&v10 | 0xD640A1E4) + (&v10 | 0x29BF5E1B)) ^ 0xF572122E);
  v10 = (v5 + 1318475538) ^ v6;
  v11 = v9;
  v12 = v2 - v6 + ((v5 - v0 - 3912) ^ 0x29C42E8C);
  (*(v4 + 8 * (v5 + 2410)))(&v10);
  (*(v4 + 8 * (v5 ^ 0x929)))(v8, v1, 0, *(v3 + 8 * (v5 ^ 0x1031)) - 12, v9, 8);
  return (v2 - 1237465637);
}

uint64_t sub_265C7A0C8@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((3107 * (v5 == ((2 * v3) ^ 0x5E8u) - 254)) ^ v3)))();
}

uint64_t sub_265C7A17C(uint64_t result)
{
  v1 = *(result + 24);
  v2 = 652747349 * ((result - 2 * (result & 0x9A19A7FD99280FA9) - 0x65E6580266D7F057) ^ 0xC0AF0C01DBDB313CLL);
  v3 = *(result + 48) - v2;
  v4 = *(result + 8) - v2;
  v5 = *(result + 40) ^ v2;
  v6 = *(result + 56) ^ v2;
  v7 = *(result + 12) + v2;
  v8 = *(result + 36) - v2;
  v9 = *result ^ v2;
  LODWORD(v2) = *(result + 32) - v2;
  *v1 = 134219778;
  *(v1 + 4) = v3;
  *(v1 + 12) = 1024;
  *(v1 + 14) = v4;
  *(v1 + 18) = 1040;
  *(v1 + 20) = v5;
  *(v1 + 24) = 2096;
  *(v1 + 26) = v6;
  *(v1 + 34) = 1024;
  *(v1 + 36) = v7;
  *(v1 + 40) = 1040;
  *(v1 + 42) = v8;
  *(v1 + 46) = 2096;
  *(v1 + 48) = v9;
  *(v1 + 56) = 1024;
  *(v1 + 58) = v2;
  return result;
}

uint64_t sub_265C7A254@<X0>(uint64_t a1@<X8>)
{
  v6 = 617 * (v3 ^ 0xD573F01);
  v7 = (v2 ^ 0xFFFFFFFFFFFFF6E7 ^ (v6 + 1094)) + v1;
  *(v4 - 7 + v7) = *(a1 - 7 + v7);
  return (*(v5 + 8 * ((2506 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v6)))();
}

void PqUfoAiCUu()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = off_28778E6F0 - 8;
  v1 = off_28778E268 - 8;
  v2 = (&off_28778E150)[(*(off_28778E268 + (*(off_28778E6F0 + (91 * (qword_28003EE98 ^ 0x30 ^ dword_28003EDD8)) - 8) ^ 0x7Du) - 8) ^ (91 * (qword_28003EE98 ^ 0x30 ^ dword_28003EDD8))) + 100];
  v3 = (*(v2 - 4) + qword_28003EE98) ^ &v6;
  v4 = 636859739 * v3 - 0x1D38D65F7E9650D0;
  v5 = 636859739 * (v3 ^ 0xE2C729A08169AF30);
  qword_28003EE98 = v4;
  *(v2 - 4) = v5;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_265C7A418(uint64_t result)
{
  v1 = *(result + 24);
  v2 = 1384597421 * ((-2 - ((~result | 0xE987887C0DB4898ELL) + (result | 0x16787783F24B7671))) ^ 0x9FFA5013EF7AD0F7);
  v3 = *(result + 36) ^ v2;
  v4 = *(result + 32) - v2;
  v5 = *(result + 16) ^ v2;
  v6 = *(result + 44);
  v7 = *(result + 48) - v2;
  v8 = *result ^ v2;
  v9 = *(result + 8) - v2;
  *v1 = 67110658;
  *(v1 + 4) = v3;
  *(v1 + 8) = 1040;
  *(v1 + 10) = v4;
  *(v1 + 14) = 2096;
  *(v1 + 16) = v5;
  *(v1 + 24) = 1024;
  *(v1 + 26) = v7;
  *(v1 + 30) = 1040;
  *(v1 + 32) = v8;
  *(v1 + 36) = 2096;
  *(v1 + 38) = v9;
  *(v1 + 46) = 1024;
  *(v1 + 48) = v6 + v2;
  return result;
}

void sub_265C7A4E8(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 64) + 1384597421 * ((~a1 & 0x97F022C2 | a1 & 0x680FDD3D) ^ 0x753E7BBB);
  v3[0] = v1 - 891395573 * ((((2 * v3) | 0xDA298710) - v3 - 1830077320) ^ 0x5739DC33) - 1109;
  v2 = (&off_28778E150)[v1 ^ 0x151C] - 8;
  (*&v2[8 * (v1 ^ 0xCAF)])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_265C7AD14@<X0>(int a1@<W8>)
{
  v6 = a1 + 2990;
  (*(v4 + 8 * (a1 + 5863)))();
  *v2 = 0;
  *v2 = 0;
  v2[1] = 0;
  v7 = (*(v4 + 8 * (v6 + 2873)))(v2);
  return (*(v4 + 8 * (((v5 < ((((v6 + 1040349524) | 0x1C46D6) - 1042206395) | v1) + 698532534) * (((v6 + 1040349524) | 0x1C46D6) - 1042200380 + v3)) ^ (((v6 + 1040349524) | 0x1C46D6) - 1042202913))))(v7);
}

uint64_t sub_265C7B200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = (((v9 ^ 0xDC66669C739CD7FELL) + 0x7C1829590395D82ALL) ^ ((v9 ^ 0x4AE5AF2E67BB0917) - 0x15641F14E84DF93FLL) ^ (v10 + 0x7D0049A8AF6358D7 + (v9 ^ 0xDD7E066C3B1B2134))) + a7;
  v14 = (v7 < v8) ^ (v13 < v11);
  v15 = v13 < v7;
  if (v14)
  {
    v15 = v7 < v8;
  }

  return (*(v12 + 8 * ((3032 * v15) ^ 0x12Cu)))();
}

uint64_t sub_265C7B2E4()
{
  v3 = v0 - 2103;
  v4 = v2 == (((v0 - 1136) | 0x405) ^ 0x49C22CB8);
  return (*(v1 + 8 * (((v4 << 7) | (v4 << 8)) ^ v3)))();
}

uint64_t sub_265C7B324()
{
  v4 = v0 ^ 0xA5C2A3BCLL;
  v6 = v2 > 0x1F && v4 >= (v1 - 24) - 4377;
  return (*(v3 + 8 * ((v6 * ((v1 + 601156150) & 0xDC2B17B4 ^ 0x1352)) ^ v1)))();
}

uint64_t sub_265C7B380@<X0>(int a1@<W8>)
{
  v4 = a1 + 1611;
  (*(v3 + 8 * (a1 ^ 0x1A39)))();
  *v1 = 0;
  *v1 = 0;
  v1[1] = 0;
  v5 = (*(v3 + 8 * (v4 + 4028)))(v1);
  return v2(v5);
}

uint64_t sub_265C7B4FC@<X0>(unsigned int a1@<W2>, unint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v7 = (((v4 ^ a1) - 4903) ^ a2) + v3;
  *(v5 + v7) = *(a3 + v7);
  return (*(v6 + 8 * (((v7 != 0) * a1) ^ v4 ^ a1)))();
}

uint64_t sub_265C7B5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = (*(v13 + 52864))(a12, a11, a3, a4, a5, a6, a7, a8);
  *v14 = v15;
  return (*(v13 + 8 * ((8135 * (v15 == 0)) ^ v12)))();
}

uint64_t sub_265C7B644()
{
  if (*v14 >= 0x40)
  {
    v8 = 64;
  }

  else
  {
    v8 = *v14;
  }

  v9 = *v7;
  v10 = *v5;
  v11 = 1311869473 * (((v16 | 0x1625F33F54735CC7) - v16 + (v16 & 0xE9DA0CC0AB8CA338)) ^ 0xA58A246ABF9C466BLL);
  v20 = *v14 ^ v11;
  v16[1] = (v2 + 2118007888) ^ v11;
  v16[2] = v8 - v11;
  v16[0] = v4 - v11 + ((v2 + v1) ^ 0x885277B0);
  v19 = v10 + v11;
  v17 = v9 ^ v11;
  v18 = v15;
  (*(v0 + 8 * (v2 ^ 0x1AE9)))(v16);
  (*(v0 + 8 * (v2 + 5754)))(v13, v3, 0, *(v6 + 8 * (v2 - 606)) - 4, v15, 40);
  return (v4 - 1237465637);
}

uint64_t sub_265C7C144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (v3 + 2716)) ^ v3)))();
}

uint64_t sub_265C7C310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t *a22)
{
  v25 = a22;
  a19 = 0;
  a21 = 0;
  v26 = (&off_28778E150)[v23 - 935] - 8;
  (*(v22 + 8 * (v23 ^ 0x1A35)))(v26, a2, a3, a4, a5, a6, a7, a8);
  v27 = *(&off_28778E150)[v23 - 962];
  v28 = *v25;
  v29 = 1311869473 * ((((v24 - 144) ^ 0x9DD36924) - 1442125322 - 2 * (((v24 - 144) ^ 0x9DD36924) & 0xAA0AE9F6)) ^ 0xDC369A7E);
  *(v24 - 144) = (*(v25 + 3) + 599664785 - ((*(v25 + 3) << (((v23 + 10) | 0x28) - 42)) & 0x477C5122)) ^ v29;
  *(v24 - 112) = v29 + v23 + 4619;
  *(v24 - 104) = 563296376 - v29 + 622816387 * v27 + 811;
  *(v24 - 120) = &a21;
  *(v24 - 136) = v28;
  *(v24 - 128) = &a19;
  (*(v22 + 8 * (v23 + 5627)))(v24 - 144);
  v30 = *(v24 - 108);
  v31 = (*(v22 + 8 * (v23 + 5585)))(v26);
  return (*(v22 + 8 * ((2001 * (v30 == 1893509507)) ^ v23)))(v31);
}

uint64_t sub_265C7C474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v20 = (v17 ^ 0x3A58CBF7FEB7FFFFLL) + ((2 * v17) & 0x1FD6FFFFELL) - 0x3A58CBF765B93A0DLL;
  v22 = v20 < (((v18 ^ 0x11C9u) + 3913) ^ 0x98FED561uLL) || v20 > *(a17 + 8) + 2566833646u;
  return (*(v19 + 8 * ((5367 * v22) ^ v18 ^ 0x11C9)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_265C7C500()
{
  v5 = (*(v2 + 8 * (v4 ^ 0xE02)))(v0, v1);
  *v3 = v5;
  return (*(v2 + 8 * (((v5 == 0) * ((v4 ^ 0x1A04) + 237)) ^ v4)))();
}

void ShHwAthFTZpQ05NCik7qQZ9wja()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = off_28778E8C0;
  v1 = off_28778E480 - 12;
  v2 = (&off_28778E150)[(*(off_28778E480 + (*(off_28778E8C0 + (91 * ((dword_28003EDD8 - qword_28003F060) ^ 0x30))) ^ 0xEFu) - 12) ^ (91 * ((dword_28003EDD8 - qword_28003F060) ^ 0x30))) - 120];
  v3 = qword_28003F060 ^ &v6 ^ *(v2 - 4);
  v4 = 636859739 * v3 + 0x1D38D65F7E9650D0;
  v5 = 636859739 * (v3 ^ 0xE2C729A08169AF30);
  qword_28003F060 = v4;
  *(v2 - 4) = v5;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_265C7C748(uint64_t result)
{
  v1 = 1864678469 * (((result | 0x754864357B5A4F0ELL) - result + (result & 0x8AB79BCA84A5B0F1)) ^ 0xDB85B06482A58E7);
  v2 = *(result + 24);
  v3 = *(result + 16) + v1;
  v4 = *(result + 8) ^ v1;
  *v2 = 67109376;
  *(v2 + 4) = v3;
  *(v2 + 8) = 2048;
  *(v2 + 10) = v4;
  return result;
}

uint64_t sub_265C7C830(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *result;
  v3 = *(result + 16);
  v4 = 1468321087 * (((result | 0x1A2E28317D33E51DLL) - result + (result & 0xE5D1D7CE82CC1AE2)) ^ 0x4FE5C15EA9DCA473);
  v5 = *(result + 8) + v4;
  *v1 = 68158210;
  *(v1 + 4) = v5;
  *(v1 + 8) = 2096;
  *(v1 + 10) = v2 ^ v4;
  *(v1 + 18) = 1024;
  *(v1 + 20) = v3 + v4;
  return result;
}

void sub_265C7C8C4(uint64_t a1)
{
  v1 = *(a1 + 4) - 912648571 * (a1 ^ 0xDCCD4C35);
  v2 = (&off_28778E150)[v1 - 1761] - 8;
  v3 = (*&v2[8 * v1 + 37832])(*(a1 + 16), @"lK1");
  v4 = (((2 * v3) & 0x5E) + (v3 ^ 0x2F)) == 48;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_265C7CAE0()
{
  *(v2 + 8) = 4096;
  *v1 = v2;
  return v0(4294962059, 479);
}

void sub_265C7CB68(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, unsigned int a26)
{
  a26 = v29 + 583883621 * (((&a24 | 0x755C3557) - (&a24 & 0x755C3557)) ^ 0xD46FE9F8) + v27 + 1909;
  a24 = a1;
  (*(v26 + 8 * (v27 ^ (v28 + 3323))))(&a24);
  JUMPOUT(0x265C40C84);
}

uint64_t sub_265C7CC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  v32 = (v26 + 559174501) & 0x37F7;
  if (v25 >= 0x40)
  {
    v33 = 64;
  }

  else
  {
    v33 = v25;
  }

  if (v29 >= 0x40)
  {
    v34 = 64;
  }

  else
  {
    v34 = v29;
  }

  if (v27 >= 0x40)
  {
    v35 = 64;
  }

  else
  {
    v35 = v27;
  }

  v36 = 583883621 * ((v31 - 184) ^ 0xFBAB76BAA133DCAFLL);
  *(v31 - 184) = v36 ^ v33;
  *(v31 - 180) = v29 - v36;
  *(v31 - 160) = v36 ^ v27;
  *(v31 - 156) = v36 + v34;
  *(v31 - 128) = v36 + a15;
  *(v31 - 152) = v36 + v26 - 724384862;
  *(v31 - 176) = v35 - v36;
  *(v31 - 172) = v36 ^ v25;
  *(v31 - 168) = a16 - v36;
  *(v31 - 144) = v36 + a17;
  *(v31 - 136) = va;
  (*(v24 + 8 * (v26 ^ 0x1317u)))(v31 - 184, a2, a3, a4, a5, a6, a7, a8);
  (*(v24 + 8 * (v26 + 4175)))(a9, v28, 0, *(v30 + 8 * (v26 ^ 0x994u)), va, 68);
  v37 = 1864678469 * ((((2 * (v31 - 184)) | 0x5DF3F75A) - (v31 - 184) + 1359348819) ^ 0x9D89EC44);
  *(v31 - 128) = (v25 ^ 0xFFB5E9E5) - v37 + ((v25 << (v32 + 75)) & 0xFF6BD3CA) + 805043803;
  *(v31 - 144) = 55 - 69 * ((((2 * (v31 + 72)) | 0x5A) - (v31 + 72) + 83) ^ 0x44);
  *(v31 - 136) = a14;
  *(v31 - 108) = v37 ^ ((v29 ^ 0x3FBFEA61) - 269353505 + ((2 * v29) & 0x7F7FD4C2));
  *(v31 - 104) = v27 - ((2 * v27) & 0x16AA6D56) - v37 - 1957349717;
  *(v31 - 184) = a15;
  *(v31 - 176) = a17;
  *(v31 - 120) = a13;
  *(v31 - 160) = a12;
  *(v31 - 152) = a16;
  *(v31 - 112) = v32 - v37 - 2078;
  v38 = (*(v24 + 8 * (v32 ^ 0xE9Eu)))(v31 - 184);
  if (a12)
  {
    v39 = a14 == 0;
  }

  else
  {
    v39 = 1;
  }

  v41 = !v39 && a13 != 0;
  return (*(v24 + 8 * (v32 ^ (13 * v41))))(v38);
}

uint64_t sub_265C7CEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, int a24, char a25)
{
  v31 = (v26 - 2514) | 0xA4A;
  (*(v29 + 8 * (v26 ^ 0x139F)))(v27, a2, a3, a4, a5, a6, a7, a8);
  v32 = *v28;
  v33 = *v25;
  v34 = 1311869473 * ((((v30 - 144) | 0x89062C7D) - (v30 - 144) + ((v30 - 144) & 0x76F9D380)) ^ 0x62E936D1);
  *(v30 - 144) = (*(v25 + 3) + 599664785 - ((2 * *(v25 + 3)) & 0x477C5122)) ^ v34;
  *(v30 - 120) = &a23;
  *(v30 - 104) = (v31 ^ 0x21933168) - v34 + 622816387 * v32;
  *(v30 - 112) = v34 + v26 + 2993;
  *(v30 - 136) = v33;
  *(v30 - 128) = &a25;
  (*(v29 + 8 * (v26 + 4001)))(v30 - 144);
  v35 = *(v30 - 108);
  v36 = (*(v29 + 8 * (v26 ^ 0x1399)))(v27);
  return (*(v29 + 8 * ((7847 * (v35 == (v31 ^ 0xCEC5B8EC ^ (v31 - 1374088996)))) ^ v31)))(v36);
}

uint64_t sub_265C7CFF4@<X0>(int a1@<W8>)
{
  (*(v2 + 8 * (a1 ^ 0x15E5)))();
  *v1 = 0;
  return sub_265C74F34();
}

uint64_t sub_265C7D014@<X0>(uint64_t a1@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v1 + v6);
  return (*(v5 + 8 * (((v6 != 0) * v4) ^ v2)))();
}

uint64_t sub_265C7D0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v29 = (v27 ^ 0x7ED9FFBCCBDBB6FDLL) + ((v27 << ((a11 - 25) ^ 0x8Fu)) & 0x197B76DFALL) - 0x7ED9FFBC7D0514AELL;
  v31 = v29 < 0x4ED6A24B || v29 > (a11 ^ 0x1729u) + *(a27 + 8) + 1322683325;
  return (*(v28 + 8 * ((2686 * v31) ^ a11)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_265C7D330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = (*(v11 + 52864))(a11, a10, a3, a4, a5, a6, a7, a8);
  *v12 = v13;
  return (*(v11 + 8 * ((25 * (v13 != 0)) ^ 0x46Cu)))();
}

void sub_265C7D374()
{
  *(v1 - 200) = 0;
  *(v1 - 192) = v0 - 4610;
  JUMPOUT(0x265C4D0ACLL);
}

uint64_t sub_265C7D450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, uint64_t a24, uint64_t *a25)
{
  v28 = a25;
  a24 = 0;
  a23 = 0;
  v29 = (&off_28778E150)[v25 & 0x3BCF80D2] - 8;
  (*(v26 + 8 * (v25 ^ 0x139F)))(v29, a2, a3, a4, a5, a6, a7, a8);
  v30 = *(&off_28778E150)[v25 - 2588];
  v31 = *v28;
  v32 = 1311869473 * ((((2 * (v27 - 144)) | 0xB8FB353A) - (v27 - 144) - 1551735453) ^ 0xB7928031);
  *(v27 - 144) = (*(v28 + 3) + 599664785 - ((*(v28 + 3) << (((v25 - 10) | 0x82) ^ 0xCA)) & 0x477C5122)) ^ v32;
  *(v27 - 112) = v32 + v25 + 2993;
  *(v27 - 104) = 563294568 - v32 + 622816387 * v30 + 2619;
  *(v27 - 120) = &a23;
  *(v27 - 136) = v31;
  *(v27 - 128) = &a24;
  (*(v26 + 8 * (v25 + 4001)))(v27 - 144);
  v33 = *(v27 - 108);
  v34 = (*(v26 + 8 * (v25 ^ 0x1399)))(v29);
  return (*(v26 + 8 * (((16 * (v33 == 1893509507)) | (32 * (v33 == 1893509507))) ^ v25)))(v34);
}

void JE2f6WCx()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = (&off_28778E150)[(*(off_28778E480 + (*(off_28778E8C0 + (91 * (qword_28003ED90 ^ 0x30 ^ dword_28003EDD8))) ^ 0xEFu) - 12) ^ (91 * (qword_28003ED90 ^ 0x30 ^ dword_28003EDD8))) - 120];
  v1 = (*(v0 - 4) ^ qword_28003ED90) - &v4;
  v2 = 636859739 * v1 - 0x1D38D65F7E9650D0;
  v3 = 636859739 * (v1 ^ 0xE2C729A08169AF30);
  qword_28003ED90 = v2;
  *(v0 - 4) = v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_265C7DBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, _DWORD *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33)
{
  v33 = (a8 + 237137399) & 0xF1DD8FF5;
  *a11 = (v33 ^ 0xB63DC31A) + a33;
  return sub_265C78F4C(a1, a2, a3, a4, v33, a5, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_265C7DC4C@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v4 = ((2 * v2) & 0x174D83FACLL) + (((a2 + 1918) + 0x7EAAFDC5BA6C1656) ^ v2) - 0x7EAAFDC534954129;
  v6 = v4 < 0x85D6DEA9 || v4 > *(a1 + 8) + 2245451433u;
  return (*(v3 + 8 * ((6750 * v6) ^ a2)))();
}

uint64_t sub_265C7DCD0@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((390 * (v5 == (v3 ^ 0x17D4u) - 437)) ^ v3)))();
}

void sub_265C7DD68(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 72) - 891395573 * ((2 * (a1 & 0xA8E57F07) - a1 + 1461354744) ^ 0x6D379F43);
  v3[0] = v1 - 891395573 * (((v3 | 0xB9CF4313) - (v3 & 0xB9CF4313)) ^ 0x83E25CA8) + 2062;
  v2 = (&off_28778E150)[v1 ^ 0x961] - 8;
  (*&v2[8 * (v1 ^ 0x10D2)])(v3);
  __asm { BRAA            X9, X17 }
}

void sub_265C7DEA4(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  (*(v2 + 8 * (v3 + 5925)))(va);
  JUMPOUT(0x265C7DEBCLL);
}

uint64_t sub_265C7DF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v3 - 1;
  *(a1 + v7 + v2) = *(a2 + v7);
  return (*(v6 + 8 * ((v7 == (v4 + 2381) + v5) | v4)))();
}

uint64_t sub_265C7E08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 8) = 4096;
  *v4 = v5;
  return v6(a1, 37, a3, a4, v7);
}

uint64_t sub_265C7E10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22, int a23, int a24, uint64_t a25, unsigned int a26, uint64_t a27, uint64_t *a28, int *a29, unsigned int a30, int a31, unsigned int a32)
{
  v37 = v35 - v32;
  v38 = a22;
  a21 = 0;
  a24 = 0;
  v39 = *(v33 + 8 * (v35 - 3170)) - 8;
  (*(v36 + 8 * (v35 + 3352)))(v39, a2, a3, a4, a5, a6, a7, a8);
  v40 = *v38;
  v41 = *(v38 + 3) + 599664785 - (((v35 - 2187) ^ 0x477C550B) & (2 * *(v38 + 3)));
  v42 = 1311869473 * ((v34 - 1757463952 - 2 * (v34 & 0x973F3A70)) ^ 0x7CD020DC);
  a32 = v37 - v42 + 622816387 * **(v33 + 8 * (v35 ^ 0xC83)) - 1278148356;
  a30 = v42 + v35 + 2384;
  a27 = v40;
  a28 = &a21;
  a26 = v41 ^ v42;
  a29 = &a24;
  (*(v36 + 8 * (v35 ^ 0x1540)))(&a26);
  v43 = a31;
  v44 = (*(v36 + 8 * (v35 + 3350)))(v39);
  return (*(v36 + 8 * ((13 * (v43 != 1893509507)) ^ v35)))(v44);
}

uint64_t sub_265C7E4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v32 = (v30 ^ 0x3FFE9FCFFEEBBE3FLL) + (a14 ^ 0x17CCu) + ((2948 * (a14 ^ 0xC6u) + 0x1FDD76576) & (2 * v30)) - 0x3FFE9FCFB86F770FLL;
  v34 = v32 < 0x467C5E34 || v32 > *(a30 + 8) + 1182555700;
  return (*(v31 + 8 * ((4555 * v34) ^ a14)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_265C7E684(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, __int16 a16, char a17, __int16 a18, char a19, __int16 a20, char a21)
{
  v26 = *v23;
  v27 = ((2 * *a8) & 0xD57CBFDE) + (*a8 ^ 0xEABE5FEF) + 356622353;
  *(*v23 + v27) = a21;
  *(v26 + v27 + 1) = a19;
  *(v26 + v27 + 2) = a17;
  *(v26 + v27 + 3) = a15;
  *a8 += v21 ^ 0x46F;
  return (*(v24 + 8 * (v21 ^ ((v25 != v22) * a1))))();
}

uint64_t sub_265C7E71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v45 = v42 - 945;
  v46 = v42 ^ 0x307;
  v56 = *v43;
  *(v43 + 3) = v41 + v40 - 1237465637;
  v57 = v42;
  v47 = (*(v44 + 8 * (v42 + 5559)))();
  *(a40 + 64) = v47;
  HIDWORD(a16) = 1237465637;
  return (*(v44 + 8 * ((95 * (((v46 ^ v45 ^ (v47 == 0)) & 1) == 0)) ^ v57)))(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, v56, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_265C7E86C()
{
  v6 = *v9;
  v7 = 912648571 * ((((2 * &v11) | 0x6B899829475E6066) - &v11 + 0x4A3B33EB5C50CFCDLL) ^ 0xF567DE9C7F627C06);
  v12 = (v0 + 1902289469) ^ v7;
  v11 = v6 - v7;
  v13 = v10;
  (*(v5 + 8 * (v0 ^ 0x63F5B849)))(&v11);
  (*(v5 + 8 * (v0 - 1677035604)))(v4, v2, 0, *(v1 + 8 * (v0 - 1677042035)) - 8, v10, 12);
  return (v3 - 1237465637);
}

uint64_t sub_265C7EFA4@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *(v4 - 216) = a1;
  v5 = a2 - 4575;
  v6 = (a2 - 848) | 0x10D;
  v7 = *(v4 - 200);
  *(v4 - 176) = 0;
  *(v4 - 184) = 0;
  v8 = (&off_28778E150)[a2 - 5406] - 8;
  (*(v2 + 8 * (a2 + 1116)))(v8);
  v9 = *(&off_28778E150)[v5 - 858];
  v10 = *v7;
  v11 = 1311869473 * ((2 * (v3 & 0x1A243CC8) - v3 + 1708901175) ^ 0x8E34D99B);
  *(v4 - 144) = (*(v7 + 3) + 599664785 - ((2 * *(v7 + 3)) & 0x477C5122)) ^ v11;
  *(v4 - 112) = v11 + v5 + 4723;
  *(v4 - 104) = 563297187 - v11 + 622816387 * v9;
  *(v4 - 136) = v10;
  *(v4 - 128) = v4 - 176;
  *(v4 - 120) = v4 - 184;
  (*(v2 + 8 * (v5 ^ 0x1A65)))(v4 - 144);
  v12 = *(v4 - 108);
  v13 = (*(v2 + 8 * (v5 ^ 0x1A5B)))(v8);
  return (*(v2 + 8 * (((v12 == 1893509507) * (v6 - 1456)) ^ v5)))(v13);
}

uint64_t sub_265C7F3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21)
{
  v25 = v21 ^ 0xA2E;
  *(v22 + 8) = a21;
  *(v22 + 12) = 0;
  v26 = (*(v23 + 8 * ((v21 ^ 0xA2E) + 3685)))(*(&off_28778E150)[v21 ^ 0x159], a19, a21, a4, a5, a6, a7, a8);
  return (*(v23 + 8 * (((v24 == 1237465637) * (v25 ^ 0x7BF)) ^ (v25 - 2591))))(v26);
}

uint64_t sub_265C7F4D4()
{
  *(v1 + 8) = 4096;
  *v0 = v1;
  return v2(v3, 2147482831, 7480, 825, 867);
}

uint64_t sub_265C7F520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t (*a16)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v25 = (*(v24 + 8 * (v20 + 793765189)))(*v23, a2, a3, a4, a5, a6, a7, a8);
  *v23 = v22;
  *(v23 + 8) = v21;
  return a16(v25, 2367137852, 214723087, 2808654594, a20, a19, a18);
}

uint64_t sub_265C7F744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unsigned int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v32 = (v29 ^ 0xDFBCEBDAFBFECC6FLL) + ((v29 << ((a9 - 15) ^ 0x26)) & 0x1F7FD98DELL) + 0x20431425098C10D7;
  v34 = v32 < 0x58ADD42 || v32 > *(a29 + 8) + 92986690;
  return (*(v31 + 8 * ((3915 * v34) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, v30);
}

uint64_t sub_265C7F964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22, int a23)
{
  a22 = 0;
  a23 = 0;
  v26 = (&off_28778E150)[v24 ^ 0x13E4] - 8;
  (*(v23 + 8 * (v24 ^ 0xA7A)))(v26, a2, a3, a4, a5, a6, a7, a8);
  v27 = *(&off_28778E150)[v24 ^ 0x1381];
  v28 = *a21;
  v29 = 1311869473 * ((((v25 - 144) | 0x58ED1B28) - (v25 - 144) + ((v25 - 144) & 0xA712E4D0)) ^ 0xB3020184);
  *(v25 - 144) = (*(a21 + 3) + 599664785 - ((*(a21 + 3) << (v24 ^ 0xB7)) & 0x477C5122)) ^ v29;
  *(v25 - 136) = v28;
  *(v25 - 128) = &a22;
  *(v25 - 112) = v29 + v24 + 590;
  *(v25 - 104) = v24 + 181 - v29 + 622816387 * v27 + 563291960;
  *(v25 - 120) = &a23;
  (*(v23 + 8 * (v24 ^ 0xA42)))(v25 - 144);
  v30 = *(v25 - 108);
  v31 = (*(v23 + 8 * (v24 + 1556)))(v26);
  return (*(v23 + 8 * ((1243 * (v30 == 1893509507)) ^ v24)))(v31);
}

uint64_t sub_265C7FC6C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a1 ^ 0x11BB;
  LODWORD(a6) = v9 ^ 0xFFFFEF74;
  HIDWORD(a3) = v9 ^ 0x1054;
  HIDWORD(a5) = (v9 ^ 0x1054) + 5455;
  v12 = (1413 * (a1 ^ 0xB0) - 123) | 0x40;
  v13 = (*(v10 + 8 * (a1 ^ 0x197D)))(16, 3886098504);
  return (*(v10 + 8 * (((v13 == 0) * (v12 ^ 0x103E)) ^ v11)))(v13, v14, v15, v16, 1237422985, v17, v18, v19, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_265C7FCDC()
{
  v3 = (*(v1 + 12) ^ 0x5A97EDDFFFB5F6DBLL) + (((v0 | 0x7F0u) + 1255716381 + (((v0 | 0x7F0) - 3449) | 0x401u) + 0x1B493111FLL) & (2 * *(v1 + 12))) - 0x5A97EDDFE88BDA91;
  v5 = v3 < 0x172A1C46 || v3 > *(v1 + 8) + 388635718;
  return (*(v2 + 8 * ((4090 * v5) ^ (v0 | 0x7F0))))();
}

uint64_t sub_265C7FD74()
{
  v5 = v2 | 0x1900;
  v7 = (v1 ^ v0) < 8 || v3 < (((v5 - 5721) | 0x80u) ^ 0x388uLL);
  return (*(v4 + 8 * (v5 ^ (((((v5 + 295969833) ^ v7) & 1) == 0) << 6))))();
}

void sub_265C7FE9C(int a1@<W8>)
{
  (*(v2 + 8 * (a1 ^ 0x831)))();
  *v1 = 0;
  JUMPOUT(0x265C1BEF4);
}

uint64_t sub_265C7FED0()
{
  v6 = (*(v5 + 8 * (v0 + v3 + 1697)))(v2);
  *v1 = 0;
  return v4(v6);
}

uint64_t sub_265C7FF2C()
{
  v3 = *(v2 - 192);
  *(v2 - 168) = 0;
  *(v2 - 184) = 0;
  v4 = (&off_28778E150)[v0 ^ 0x4E8] - 8;
  (*(v1 + 8 * (v0 ^ 0x1D76)))(v4);
  v5 = *(&off_28778E150)[v0 - 1155];
  v6 = *v3;
  v7 = 1311869473 * ((2 * ((v2 - 144) & 0x6E6130C0) - (v2 - 144) - 1851863237) ^ 0x7A71D597);
  *(v2 - 144) = (*(v3 + 3) + 599664785 - ((2 * *(v3 + 3)) & 0x477C5122)) ^ v7;
  *(v2 - 136) = v6;
  *(v2 - 128) = v2 - 168;
  *(v2 - 112) = v7 + v0 + 4426;
  *(v2 - 104) = 563293386 - v7 + ((v0 - 618) | 0xC89) + 622816387 * v5;
  *(v2 - 120) = v2 - 184;
  (*(v1 + 8 * (v0 ^ 0x1D4E)))(v2 - 144);
  v8 = *(v2 - 108);
  v9 = (*(v1 + 8 * (v0 ^ 0x1D70)))(v4);
  return (*(v1 + 8 * (((v8 == 1893509507) * (((v0 + 2102999585) & 0x82A6CFFD) + 1760)) ^ v0)))(v9);
}

void sub_265C80144(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (583883621 * (a1 ^ 0xA133DCAF));
  v2 = (&off_28778E150)[v1 ^ 0x878] - 8;
  v3 = (*&v2[8 * (v1 ^ 0x120E)])((&off_28778E150)[v1 ^ 0x8E4] - 12, 5);
  *((&off_28778E150)[v1 ^ 0x8D8] - 4) = v3;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_265C80218()
{
  v7 = 566710099 * (((v13 | 0x8A1530FD4629097BLL) - (v13 | 0x75EACF02B9D6F684) + 0x75EACF02B9D6F684) ^ 0x759DDE2FCA6C51F7);
  v8 = *v11 - v7;
  v16 = *v0 + v7;
  v13[0] = v7 + v5 + 576630138;
  v13[1] = v8;
  v14 = v7 + v6;
  v15 = v12;
  v13[2] = 16 - v7;
  (*(v4 + 8 * (v5 + 3312)))(v13);
  (*(v4 + 8 * (v5 + 3212)))(v10, v2, 0, *(v1 + 8 * (v5 - 3311)), v12, 34);
  return (v3 - 1237465637);
}

uint64_t sub_265C80510()
{
  *(v6 - 144) = v0;
  *(v6 - 136) = (v2 + 1311676327) ^ (1468321087 * (v3 ^ 0xD4EF416E));
  (*(v5 + 8 * (v2 ^ 0x18CC)))(v6 - 144);
  v7 = (*(v5 + 8 * (v2 + 6171)))(**(v4 + 8 * (v2 - 212)), *(v4 + 8 * (v2 - 172)) - 4, v1);
  v8 = ((3 * (v2 ^ 0x59D) - 3149534) & (2 * v7)) + (v7 ^ 0x7FE7FFED);
  *(v6 - 144) = v0;
  *(v6 - 136) = (v2 - 50583975) ^ (912648571 * (((v3 | 0xE730B282) - (v3 & 0xE730B282)) ^ 0x3BFDFEB7));
  v9 = (*(v5 + 8 * (v2 + 6242)))(v6 - 144);
  return (*(v5 + 8 * (((v8 == 2145910765) * (v2 ^ 0x1744)) ^ v2)))(v9);
}

uint64_t sub_265C80690(unint64_t a1)
{
  v5 = v2 ^ 0x3E4;
  v6 = (((v2 ^ 0x3E4) - 5909) | 0x1094u) ^ 0x10B4;
  v8 = (v1 ^ a1) < 8 || v3 < v6;
  return (*(v4 + 8 * (((2 * v8) | (8 * v8)) ^ v5)))();
}

void sub_265C806E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, _DWORD *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, int a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t *a51)
{
  v52 = *a51;
  v53 = ((a46 ^ 0x3F22A375) - 278266784) ^ a46 ^ ((a46 ^ 0xA88063A7) + 2026585230) ^ ((a46 ^ 0x6F6B9FDC) - 1088372489) ^ ((a46 ^ 0xD77DFFDB) + 121020658);
  v54 = ((2 * *a40) & 0xF7FCFB9E) + ((v51 + 3488) ^ *a40 ^ 0xFBFE6DCC) + 67207729;
  *(*a51 + v54) = HIBYTE(v53) ^ 0x2F;
  *(v52 + v54 + 1) = BYTE2(v53) ^ 0xB4;
  *(v52 + v54 + 2) = ((((a46 ^ 0xA375) - 928) ^ a46 ^ ((a46 ^ 0x63A7) + 15502) ^ ((a46 ^ 0x9FDC) - 16137) ^ ((a46 ^ 0xFFDB) - 24334)) >> 8) ^ 0xA0;
  *(v52 + v54 + 3) = ((a46 ^ 0x75) + 96) ^ a46 ^ ((a46 ^ 0xA7) - 114) ^ ((a46 ^ 0xDC) - 9) ^ ((a46 ^ 0xDB) - 14) ^ 0xD5;
  *a40 += 4;
  JUMPOUT(0x265C2075CLL);
}

uint64_t sub_265C8088C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = v11 + 11;
  v16 = (*(v14 + 8 * (v15 + 3003)))(a11, a10, a3, a4, a5, a6, a7, a8);
  *v12 = v16;
  return (*(v14 + 8 * (((v16 == 0) * ((v15 + 1042202818) ^ (v13 + 899) ^ (3 * (v15 ^ 0xC6F)))) ^ v15)))();
}

void sub_265C809A8(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 24) ^ (912648571 * ((-2 - ((~a1 | 0x8CD022AE) + (a1 | 0x732FDD51))) ^ 0x501D6E9B));
  v3[0] = v1 - 891395573 * ((v3 - 1155932725 - 2 * (v3 & 0xBB19DDCB)) ^ 0x8134C270) - 1517;
  v2 = (&off_28778E150)[v1 - 5788] - 8;
  (*&v2[8 * (v1 ^ 0xED7)])(v3);
  __asm { BRAA            X8, X17 }
}

void sub_265C80E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, char a29)
{
  (*(v32 + 8 * (v31 ^ 0x10C6u)))(v29, a2, a3, a4, a5, a6, a7, a8);
  v35 = *v30;
  v36 = *v33;
  v37 = *(v33 + 3) + 599664785 - ((2 * *(v33 + 3)) & 0x477C5122);
  v38 = 1311869473 * ((((v34 - 144) | 0x3B61F162) - (v34 - 144) + ((v34 - 144) & 0xC49E0E98)) ^ 0xD08EEBCE);
  *(v34 - 120) = &a29;
  *(v34 - 144) = v37 ^ v38;
  *(v34 - 112) = v38 + v31 + 3322;
  *(v34 - 104) = v31 + 2826 - v38 + 622816387 * v35 + 563292047;
  *(v34 - 136) = v36;
  *(v34 - 128) = v34 - 152;
  (*(v32 + 8 * (v31 ^ 0x10FEu)))(v34 - 144);
  (*(v32 + 8 * (v31 | 0x10C0u)))(v29);
  JUMPOUT(0x265C64FA0);
}