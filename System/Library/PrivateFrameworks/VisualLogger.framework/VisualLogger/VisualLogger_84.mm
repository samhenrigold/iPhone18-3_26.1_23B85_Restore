double sub_2717BE698@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  v5 = 4 * (v4 != 0);
  LODWORD(v6) = v5 * v4;
  *v25 = 4;
  *&v25[4] = v4;
  v7 = *v25;
  v8 = HIDWORD(v4);
  if (HIDWORD(*v25))
  {
    v9 = *v25 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v8)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v11 = v5 & 0x3FFFFFFFFLL | ((v6 >> 2) << 34);
  *v25 = 1;
  *&v25[4] = v11;
  v12 = *v25;
  *v25 = v7;
  *&v25[8] = HIDWORD(v4);
  *&v25[12] = v12;
  *&v25[20] = v6;
  *&v25[24] = v4;
  *&v26 = v11;
  BYTE8(v26) = 0;
  BYTE4(v27) = 0;
  v23 = v12;
  v24 = v6;
  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v21 = v14;
  if (v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v22 = v15;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v6;
  }

  sub_2717D5BBC(v28, &v21, &v23, 1, 0, 0, v16);
  v17 = *&v25[16];
  *(a2 + 8) = *v25;
  *a2 = &unk_288113018;
  *(a2 + 24) = v17;
  *(a2 + 40) = v26;
  v18 = v28[0];
  *(a2 + 56) = v27;
  *(a2 + 64) = v18;
  v19 = v28[2];
  *(a2 + 72) = v28[1];
  *(a2 + 80) = v19;
  *(a2 + 104) = v30;
  result = *&v29;
  *(a2 + 88) = v29;
  return result;
}

void sub_2717BE83C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 4 * (v13 * HIDWORD(v5));
  v15 = 3;
  if (((4 * v10) & (4 * v10 - 1)) == 0)
  {
    v15 = 4 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v24 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 4 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v24;
    v14 = 4 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288112F98;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (4 * v9) & 0xFFFFFFFCFFFFFFFCLL;
  *(a2 + 108) = 4 * HIDWORD(v5);
}

double sub_2717BEA14@<D0>(_DWORD *a1@<X1>, __int32 *a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v5 = *a1 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *a1;
  }

  v7 = 4 * (v6 != 0);
  LODWORD(v8) = v7 * v6;
  *v27 = 4;
  *&v27[4] = v6;
  v9 = *v27;
  v10 = HIDWORD(v6);
  if (HIDWORD(*v27))
  {
    v11 = *v27 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v10)
  {
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  v13 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
  *v27 = 1;
  *&v27[4] = v13;
  v14 = *v27;
  *v27 = v9;
  *&v27[8] = HIDWORD(v6);
  *&v27[12] = v14;
  *&v27[20] = v8;
  *&v27[24] = v6;
  *&v28 = v13;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v14;
  v26 = v8;
  if (v10)
  {
    v15 = v12;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v23 = v16;
  if (v12)
  {
    v17 = 0;
  }

  else
  {
    v17 = v10;
  }

  v24 = v17;
  if (((4 * v8) & (4 * v8 - 1)) != 0)
  {
    v18 = 4;
  }

  else
  {
    v18 = 4 * v8;
  }

  sub_2717D6318(v30, &v23, &v25, 1, a2, 1, v18, a4);
  v19 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288112F98;
  *(a3 + 24) = v19;
  *(a3 + 40) = v28;
  v20 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v20;
  v21 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v21;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  return result;
}

void sub_2717BEBB4(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 3;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = v10 - 1;
  v15 = (v13 * HIDWORD(v5));
  if ((v10 & (v10 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    v24 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * HIDWORD(v5)), 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v24;
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_288112F18;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v9;
  *(a2 + 108) = HIDWORD(v5);
}

double sub_2717BED70@<D0>(_DWORD *a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  *v26 = 3;
  *&v26[4] = v5;
  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  LODWORD(v7) = v6 * v5;
  *v26 = 3;
  *&v26[4] = v5;
  v8 = *v26;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v26))
  {
    v10 = *v26 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 | (v7 << 32);
  *v26 = 1;
  *&v26[4] = v12;
  v13 = *v26;
  *v26 = v8;
  *&v26[8] = HIDWORD(v5);
  *&v26[12] = v13;
  *&v26[20] = v7;
  *&v26[24] = v5;
  *&v27 = v12;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v13;
  v25 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v22 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v23 = v16;
  if ((v7 & (v7 - 1)) != 0)
  {
    v17 = 1;
  }

  else
  {
    v17 = v7;
  }

  sub_2717D4B20(v29, &v22, &v24, 1, a2, 1, v17);
  v18 = *&v26[16];
  *(a3 + 8) = *v26;
  *a3 = &unk_288112F18;
  *(a3 + 24) = v18;
  *(a3 + 40) = v27;
  v19 = v29[0];
  *(a3 + 56) = v28;
  *(a3 + 64) = v19;
  v20 = v29[2];
  *(a3 + 72) = v29[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v31;
  result = *&v30;
  *(a3 + 88) = v30;
  return result;
}

void sub_2717BEF04(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 3;
  *&memptr[4] = v4;
  v5 = v4;
  if (v4)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  v7 = HIDWORD(*&memptr[4]);
  if (HIDWORD(*&memptr[4]))
  {
    v8 = (v6 * *&memptr[4]);
  }

  else
  {
    v8 = 0;
  }

  v9 = v6 | (v8 << 32);
  v10 = __PAIR64__(*&memptr[4], 3);
  *memptr = 1;
  *&memptr[4] = v9;
  v11 = *memptr;
  v12 = __PAIR64__(v5, 3) >> 32 == 0;
  if (__PAIR64__(v5, 3) >> 32)
  {
    v13 = v7;
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - 1;
  v15 = (v13 * v8);
  if ((v8 & (v8 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * v8), 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, (v13 * v8));
    }

    v21 = *memptr;
    v12 = __PAIR64__(v5, 3) >> 32 == 0;
  }

  else
  {
    v21 = 0;
  }

  if (v7)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_288112F18;
  *(a2 + 8) = v10;
  *(a2 + 16) = v7;
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10;
  }

  *(a2 + 20) = v11;
  *(a2 + 28) = v8;
  *(a2 + 32) = v5;
  *(a2 + 40) = v9;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v11;
  *(a2 + 108) = v8;
}

void sub_2717BF0D4(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 3;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 2 * (v13 * HIDWORD(v5));
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v24 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 2 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v24;
    v14 = 2 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288112E98;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (2 * v9) & 0xFFFFFFFEFFFFFFFELL;
  *(a2 + 108) = 2 * HIDWORD(v5);
}

double sub_2717BF2A8@<D0>(_DWORD *a1@<X1>, unsigned __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  *v26 = 3;
  *&v26[4] = v5;
  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  LODWORD(v7) = v6 * v5;
  *v26 = 3;
  *&v26[4] = v5;
  v8 = *v26;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v26))
  {
    v10 = *v26 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 | (v7 << 32);
  *v26 = 1;
  *&v26[4] = v12;
  v13 = *v26;
  *v26 = v8;
  *&v26[8] = HIDWORD(v5);
  *&v26[12] = v13;
  *&v26[20] = v7;
  *&v26[24] = v5;
  *&v27 = v12;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v13;
  v25 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v22 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v23 = v16;
  if (((2 * v7) & (2 * v7 - 1)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * v7;
  }

  sub_2717D5090(v29, &v22, &v24, 1, a2, 1, v17);
  v18 = *&v26[16];
  *(a3 + 8) = *v26;
  *a3 = &unk_288112E98;
  *(a3 + 24) = v18;
  *(a3 + 40) = v27;
  v19 = v29[0];
  *(a3 + 56) = v28;
  *(a3 + 64) = v19;
  v20 = v29[2];
  *(a3 + 72) = v29[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v31;
  result = *&v30;
  *(a3 + 88) = v30;
  return result;
}

double sub_2717BF444@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = 0;
  }

  *&v24[4] = v5;
  v6 = HIDWORD(v4);
  *v24 = 3;
  v7 = *v24;
  v8 = HIDWORD(v5);
  *v24 = 1;
  *&v24[4] = v4;
  v9 = *v24;
  *v24 = v7;
  *&v24[12] = v9;
  *&v24[20] = HIDWORD(v4);
  *&v24[24] = v5;
  *&v25 = v4;
  BYTE8(v25) = 0;
  BYTE4(v26) = 0;
  v22 = v9;
  v23 = HIDWORD(v4);
  if (HIDWORD(v7))
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v7;
  }

  v20 = v13;
  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = v8;
  }

  v21 = v14;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = 2 * v6;
  }

  sub_2717D5BBC(v27, &v20, &v22, 1, 0, 0, v15);
  v16 = *&v24[16];
  *(a2 + 8) = *v24;
  *a2 = &unk_288112E18;
  *(a2 + 24) = v16;
  *(a2 + 40) = v25;
  v17 = v27[0];
  *(a2 + 56) = v26;
  *(a2 + 64) = v17;
  v18 = v27[2];
  *(a2 + 72) = v27[1];
  *(a2 + 80) = v18;
  *(a2 + 104) = v29;
  result = *&v28;
  *(a2 + 88) = v28;
  return result;
}

double sub_2717BF5D0@<D0>(_DWORD *a1@<X1>, __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  *v26 = 3;
  *&v26[4] = v5;
  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  LODWORD(v7) = v6 * v5;
  *v26 = 3;
  *&v26[4] = v5;
  v8 = *v26;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v26))
  {
    v10 = *v26 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 | (v7 << 32);
  *v26 = 1;
  *&v26[4] = v12;
  v13 = *v26;
  *v26 = v8;
  *&v26[8] = HIDWORD(v5);
  *&v26[12] = v13;
  *&v26[20] = v7;
  *&v26[24] = v5;
  *&v27 = v12;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v13;
  v25 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v22 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v23 = v16;
  if (((2 * v7) & (2 * v7 - 1)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * v7;
  }

  sub_2717D5BBC(v29, &v22, &v24, 1, a2, 1, v17);
  v18 = *&v26[16];
  *(a3 + 8) = *v26;
  *a3 = &unk_288112E18;
  *(a3 + 24) = v18;
  *(a3 + 40) = v27;
  v19 = v29[0];
  *(a3 + 56) = v28;
  *(a3 + 64) = v19;
  v20 = v29[2];
  *(a3 + 72) = v29[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v31;
  result = *&v30;
  *(a3 + 88) = v30;
  return result;
}

double sub_2717BF76C@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *v25 = 3;
  *&v25[4] = v4;
  if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  LODWORD(v6) = v5 * v4;
  *v25 = 3;
  *&v25[4] = v4;
  v7 = *v25;
  v8 = HIDWORD(v4);
  if (HIDWORD(*v25))
  {
    v9 = *v25 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v8)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v11 = v5 | (v6 << 32);
  *v25 = 1;
  *&v25[4] = v11;
  v12 = *v25;
  *v25 = v7;
  *&v25[8] = HIDWORD(v4);
  *&v25[12] = v12;
  *&v25[20] = v6;
  *&v25[24] = v4;
  *&v26 = v11;
  BYTE8(v26) = 0;
  BYTE4(v27) = 0;
  v23 = v12;
  v24 = v6;
  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v21 = v14;
  if (v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v22 = v15;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v6;
  }

  sub_2717D5BBC(v28, &v21, &v23, 1, 0, 0, v16);
  v17 = *&v25[16];
  *(a2 + 8) = *v25;
  *a2 = &unk_288112E18;
  *(a2 + 24) = v17;
  *(a2 + 40) = v26;
  v18 = v28[0];
  *(a2 + 56) = v27;
  *(a2 + 64) = v18;
  v19 = v28[2];
  *(a2 + 72) = v28[1];
  *(a2 + 80) = v19;
  *(a2 + 104) = v30;
  result = *&v29;
  *(a2 + 88) = v29;
  return result;
}

void sub_2717BF908(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 3;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 4 * (v13 * HIDWORD(v5));
  if (((4 * v10) & (4 * v10 - 1)) != 0)
  {
    v15 = 3;
  }

  else
  {
    v15 = 4 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v24 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 4 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v24;
    v14 = 4 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288112D18;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (4 * v9) & 0xFFFFFFFCFFFFFFFCLL;
  *(a2 + 108) = 4 * HIDWORD(v5);
}

double sub_2717BFADC@<D0>(_DWORD *a1@<X1>, __int32 *a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v5 = *a1 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = *a1;
  if (v5)
  {
    v6 = 0;
  }

  *v27 = 3;
  *&v27[4] = v6;
  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  LODWORD(v8) = v7 * v6;
  *v27 = 3;
  *&v27[4] = v6;
  v9 = *v27;
  v10 = HIDWORD(v6);
  if (HIDWORD(*v27))
  {
    v11 = *v27 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v10)
  {
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  v13 = v7 | (v8 << 32);
  *v27 = 1;
  *&v27[4] = v13;
  v14 = *v27;
  *v27 = v9;
  *&v27[8] = HIDWORD(v6);
  *&v27[12] = v14;
  *&v27[20] = v8;
  *&v27[24] = v6;
  *&v28 = v13;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v14;
  v26 = v8;
  if (v10)
  {
    v15 = v12;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v23 = v16;
  if (v12)
  {
    v17 = 0;
  }

  else
  {
    v17 = v10;
  }

  v24 = v17;
  if (((4 * v8) & (4 * v8 - 1)) != 0)
  {
    v18 = 4;
  }

  else
  {
    v18 = 4 * v8;
  }

  sub_2717D6318(v30, &v23, &v25, 1, a2, 1, v18, a4);
  v19 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288112D18;
  *(a3 + 24) = v19;
  *(a3 + 40) = v28;
  v20 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v20;
  v21 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v21;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  return result;
}

void sub_2717BFC78(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 3;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = v10 - 1;
  v15 = (v13 * HIDWORD(v5));
  if ((v10 & (v10 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    v24 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * HIDWORD(v5)), 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v24;
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_288112C98;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v9;
  *(a2 + 108) = HIDWORD(v5);
}

double sub_2717BFE34@<D0>(_DWORD *a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  *v26 = 3;
  *&v26[4] = v5;
  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  LODWORD(v7) = v6 * v5;
  *v26 = 3;
  *&v26[4] = v5;
  v8 = *v26;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v26))
  {
    v10 = *v26 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 | (v7 << 32);
  *v26 = 1;
  *&v26[4] = v12;
  v13 = *v26;
  *v26 = v8;
  *&v26[8] = HIDWORD(v5);
  *&v26[12] = v13;
  *&v26[20] = v7;
  *&v26[24] = v5;
  *&v27 = v12;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v13;
  v25 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v22 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v23 = v16;
  if ((v7 & (v7 - 1)) != 0)
  {
    v17 = 1;
  }

  else
  {
    v17 = v7;
  }

  sub_2717D4B20(v29, &v22, &v24, 1, a2, 1, v17);
  v18 = *&v26[16];
  *(a3 + 8) = *v26;
  *a3 = &unk_288112C98;
  *(a3 + 24) = v18;
  *(a3 + 40) = v27;
  v19 = v29[0];
  *(a3 + 56) = v28;
  *(a3 + 64) = v19;
  v20 = v29[2];
  *(a3 + 72) = v29[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v31;
  result = *&v30;
  *(a3 + 88) = v30;
  return result;
}

void sub_2717BFFC8(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 3;
  *&memptr[4] = v4;
  v5 = v4;
  if (v4)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  v7 = HIDWORD(*&memptr[4]);
  if (HIDWORD(*&memptr[4]))
  {
    v8 = (v6 * *&memptr[4]);
  }

  else
  {
    v8 = 0;
  }

  v9 = v6 | (v8 << 32);
  v10 = __PAIR64__(*&memptr[4], 3);
  *memptr = 1;
  *&memptr[4] = v9;
  v11 = *memptr;
  v12 = __PAIR64__(v5, 3) >> 32 == 0;
  if (__PAIR64__(v5, 3) >> 32)
  {
    v13 = v7;
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - 1;
  v15 = (v13 * v8);
  if ((v8 & (v8 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * v8), 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, (v13 * v8));
    }

    v21 = *memptr;
    v12 = __PAIR64__(v5, 3) >> 32 == 0;
  }

  else
  {
    v21 = 0;
  }

  if (v7)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_288112C98;
  *(a2 + 8) = v10;
  *(a2 + 16) = v7;
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10;
  }

  *(a2 + 20) = v11;
  *(a2 + 28) = v8;
  *(a2 + 32) = v5;
  *(a2 + 40) = v9;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v11;
  *(a2 + 108) = v8;
}

void sub_2717C0198(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 3;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 2 * (v13 * HIDWORD(v5));
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v24 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 2 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v24;
    v14 = 2 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288112C18;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (2 * v9) & 0xFFFFFFFEFFFFFFFELL;
  *(a2 + 108) = 2 * HIDWORD(v5);
}

double sub_2717C036C@<D0>(_DWORD *a1@<X1>, unsigned __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  *v26 = 3;
  *&v26[4] = v5;
  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  LODWORD(v7) = v6 * v5;
  *v26 = 3;
  *&v26[4] = v5;
  v8 = *v26;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v26))
  {
    v10 = *v26 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 | (v7 << 32);
  *v26 = 1;
  *&v26[4] = v12;
  v13 = *v26;
  *v26 = v8;
  *&v26[8] = HIDWORD(v5);
  *&v26[12] = v13;
  *&v26[20] = v7;
  *&v26[24] = v5;
  *&v27 = v12;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v13;
  v25 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v22 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v23 = v16;
  if (((2 * v7) & (2 * v7 - 1)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * v7;
  }

  sub_2717D5090(v29, &v22, &v24, 1, a2, 1, v17);
  v18 = *&v26[16];
  *(a3 + 8) = *v26;
  *a3 = &unk_288112C18;
  *(a3 + 24) = v18;
  *(a3 + 40) = v27;
  v19 = v29[0];
  *(a3 + 56) = v28;
  *(a3 + 64) = v19;
  v20 = v29[2];
  *(a3 + 72) = v29[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v31;
  result = *&v30;
  *(a3 + 88) = v30;
  return result;
}

double sub_2717C0508@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = 0;
  }

  *&v24[4] = v5;
  v6 = HIDWORD(v4);
  *v24 = 3;
  v7 = *v24;
  v8 = HIDWORD(v5);
  *v24 = 1;
  *&v24[4] = v4;
  v9 = *v24;
  *v24 = v7;
  *&v24[12] = v9;
  *&v24[20] = HIDWORD(v4);
  *&v24[24] = v5;
  *&v25 = v4;
  BYTE8(v25) = 0;
  BYTE4(v26) = 0;
  v22 = v9;
  v23 = HIDWORD(v4);
  if (HIDWORD(v7))
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v7;
  }

  v20 = v13;
  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = v8;
  }

  v21 = v14;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = 2 * v6;
  }

  sub_2717D5BBC(v27, &v20, &v22, 1, 0, 0, v15);
  v16 = *&v24[16];
  *(a2 + 8) = *v24;
  *a2 = &unk_288112B98;
  *(a2 + 24) = v16;
  *(a2 + 40) = v25;
  v17 = v27[0];
  *(a2 + 56) = v26;
  *(a2 + 64) = v17;
  v18 = v27[2];
  *(a2 + 72) = v27[1];
  *(a2 + 80) = v18;
  *(a2 + 104) = v29;
  result = *&v28;
  *(a2 + 88) = v28;
  return result;
}

double sub_2717C0694@<D0>(_DWORD *a1@<X1>, __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  *v26 = 3;
  *&v26[4] = v5;
  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  LODWORD(v7) = v6 * v5;
  *v26 = 3;
  *&v26[4] = v5;
  v8 = *v26;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v26))
  {
    v10 = *v26 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 | (v7 << 32);
  *v26 = 1;
  *&v26[4] = v12;
  v13 = *v26;
  *v26 = v8;
  *&v26[8] = HIDWORD(v5);
  *&v26[12] = v13;
  *&v26[20] = v7;
  *&v26[24] = v5;
  *&v27 = v12;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v13;
  v25 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v22 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v23 = v16;
  if (((2 * v7) & (2 * v7 - 1)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * v7;
  }

  sub_2717D5BBC(v29, &v22, &v24, 1, a2, 1, v17);
  v18 = *&v26[16];
  *(a3 + 8) = *v26;
  *a3 = &unk_288112B98;
  *(a3 + 24) = v18;
  *(a3 + 40) = v27;
  v19 = v29[0];
  *(a3 + 56) = v28;
  *(a3 + 64) = v19;
  v20 = v29[2];
  *(a3 + 72) = v29[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v31;
  result = *&v30;
  *(a3 + 88) = v30;
  return result;
}

double sub_2717C0830@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *v25 = 3;
  *&v25[4] = v4;
  if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  LODWORD(v6) = v5 * v4;
  *v25 = 3;
  *&v25[4] = v4;
  v7 = *v25;
  v8 = HIDWORD(v4);
  if (HIDWORD(*v25))
  {
    v9 = *v25 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v8)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v11 = v5 | (v6 << 32);
  *v25 = 1;
  *&v25[4] = v11;
  v12 = *v25;
  *v25 = v7;
  *&v25[8] = HIDWORD(v4);
  *&v25[12] = v12;
  *&v25[20] = v6;
  *&v25[24] = v4;
  *&v26 = v11;
  BYTE8(v26) = 0;
  BYTE4(v27) = 0;
  v23 = v12;
  v24 = v6;
  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v21 = v14;
  if (v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v22 = v15;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v6;
  }

  sub_2717D5BBC(v28, &v21, &v23, 1, 0, 0, v16);
  v17 = *&v25[16];
  *(a2 + 8) = *v25;
  *a2 = &unk_288112B98;
  *(a2 + 24) = v17;
  *(a2 + 40) = v26;
  v18 = v28[0];
  *(a2 + 56) = v27;
  *(a2 + 64) = v18;
  v19 = v28[2];
  *(a2 + 72) = v28[1];
  *(a2 + 80) = v19;
  *(a2 + 104) = v30;
  result = *&v29;
  *(a2 + 88) = v29;
  return result;
}

void sub_2717C09CC(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 3;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 4 * (v13 * HIDWORD(v5));
  if (((4 * v10) & (4 * v10 - 1)) != 0)
  {
    v15 = 3;
  }

  else
  {
    v15 = 4 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v24 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 4 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v24;
    v14 = 4 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288112B18;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (4 * v9) & 0xFFFFFFFCFFFFFFFCLL;
  *(a2 + 108) = 4 * HIDWORD(v5);
}

double sub_2717C0BA0@<D0>(_DWORD *a1@<X1>, __int32 *a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v5 = *a1 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = *a1;
  if (v5)
  {
    v6 = 0;
  }

  *v27 = 3;
  *&v27[4] = v6;
  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  LODWORD(v8) = v7 * v6;
  *v27 = 3;
  *&v27[4] = v6;
  v9 = *v27;
  v10 = HIDWORD(v6);
  if (HIDWORD(*v27))
  {
    v11 = *v27 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v10)
  {
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  v13 = v7 | (v8 << 32);
  *v27 = 1;
  *&v27[4] = v13;
  v14 = *v27;
  *v27 = v9;
  *&v27[8] = HIDWORD(v6);
  *&v27[12] = v14;
  *&v27[20] = v8;
  *&v27[24] = v6;
  *&v28 = v13;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v14;
  v26 = v8;
  if (v10)
  {
    v15 = v12;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v23 = v16;
  if (v12)
  {
    v17 = 0;
  }

  else
  {
    v17 = v10;
  }

  v24 = v17;
  if (((4 * v8) & (4 * v8 - 1)) != 0)
  {
    v18 = 4;
  }

  else
  {
    v18 = 4 * v8;
  }

  sub_2717D6318(v30, &v23, &v25, 1, a2, 1, v18, a4);
  v19 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288112B18;
  *(a3 + 24) = v19;
  *(a3 + 40) = v28;
  v20 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v20;
  v21 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v21;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  return result;
}

void sub_2717C0D3C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = v10 - 1;
  v15 = (v13 * HIDWORD(v5));
  if ((v10 & (v10 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    v24 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * HIDWORD(v5)), 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v24;
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_288112A98;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v9;
  *(a2 + 108) = HIDWORD(v5);
}

double sub_2717C0EF8@<D0>(_DWORD *a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 4 * (v5 != 0);
  LODWORD(v7) = v6 * v5;
  *v26 = 4;
  *&v26[4] = v5;
  v8 = *v26;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v26))
  {
    v10 = *v26 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  *v26 = 1;
  *&v26[4] = v12;
  v13 = *v26;
  *v26 = v8;
  *&v26[8] = HIDWORD(v5);
  *&v26[12] = v13;
  *&v26[20] = v7;
  *&v26[24] = v5;
  *&v27 = v12;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v13;
  v25 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v22 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v23 = v16;
  if ((v7 & (v7 - 1)) != 0)
  {
    v17 = 1;
  }

  else
  {
    v17 = v7;
  }

  sub_2717D4B20(v29, &v22, &v24, 1, a2, 1, v17);
  v18 = *&v26[16];
  *(a3 + 8) = *v26;
  *a3 = &unk_288112A98;
  *(a3 + 24) = v18;
  *(a3 + 40) = v27;
  v19 = v29[0];
  *(a3 + 56) = v28;
  *(a3 + 64) = v19;
  v20 = v29[2];
  *(a3 + 72) = v29[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v31;
  result = *&v30;
  *(a3 + 88) = v30;
  return result;
}

void sub_2717C1094(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v5 = v4;
  v6 = 4 * (v4 != 0);
  v7 = v6 * v4;
  if (HIDWORD(v5))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v6 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
  v10 = __PAIR64__(*&memptr[4], 4);
  *memptr = 1;
  *&memptr[4] = v9;
  v11 = *memptr;
  v12 = __PAIR64__(v5, 4) >> 32 == 0;
  if (__PAIR64__(v5, 4) >> 32)
  {
    v13 = HIDWORD(v5);
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - 1;
  v15 = (v13 * v8);
  if ((v8 & (v8 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * v8), 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, (v13 * v8));
    }

    v21 = *memptr;
    v12 = __PAIR64__(v5, 4) >> 32 == 0;
  }

  else
  {
    v21 = 0;
  }

  if (HIDWORD(v5))
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_288112A98;
  *(a2 + 8) = v10;
  *(a2 + 16) = HIDWORD(v5);
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10;
  }

  *(a2 + 20) = v11;
  *(a2 + 28) = v8;
  *(a2 + 32) = v5;
  *(a2 + 40) = v9;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v11;
  *(a2 + 108) = v8;
}

void sub_2717C126C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 2 * (v13 * HIDWORD(v5));
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v24 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 2 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v24;
    v14 = 2 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288112A18;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (2 * v9) & 0xFFFFFFFEFFFFFFFELL;
  *(a2 + 108) = 2 * HIDWORD(v5);
}

double sub_2717C1440@<D0>(_DWORD *a1@<X1>, unsigned __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 4 * (v5 != 0);
  LODWORD(v7) = v6 * v5;
  *v26 = 4;
  *&v26[4] = v5;
  v8 = *v26;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v26))
  {
    v10 = *v26 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  *v26 = 1;
  *&v26[4] = v12;
  v13 = *v26;
  *v26 = v8;
  *&v26[8] = HIDWORD(v5);
  *&v26[12] = v13;
  *&v26[20] = v7;
  *&v26[24] = v5;
  *&v27 = v12;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v13;
  v25 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v22 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v23 = v16;
  if (((2 * v7) & (2 * v7 - 1)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * v7;
  }

  sub_2717D5090(v29, &v22, &v24, 1, a2, 1, v17);
  v18 = *&v26[16];
  *(a3 + 8) = *v26;
  *a3 = &unk_288112A18;
  *(a3 + 24) = v18;
  *(a3 + 40) = v27;
  v19 = v29[0];
  *(a3 + 56) = v28;
  *(a3 + 64) = v19;
  v20 = v29[2];
  *(a3 + 72) = v29[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v31;
  result = *&v30;
  *(a3 + 88) = v30;
  return result;
}

double sub_2717C15E4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = 0;
  }

  *&v24[4] = v5;
  v6 = HIDWORD(v4);
  *v24 = 4;
  v7 = *v24;
  v8 = HIDWORD(v5);
  *v24 = 1;
  *&v24[4] = v4;
  v9 = *v24;
  *v24 = v7;
  *&v24[12] = v9;
  *&v24[20] = HIDWORD(v4);
  *&v24[24] = v5;
  *&v25 = v4;
  BYTE8(v25) = 0;
  BYTE4(v26) = 0;
  v22 = v9;
  v23 = HIDWORD(v4);
  if (HIDWORD(v7))
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v7;
  }

  v20 = v13;
  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = v8;
  }

  v21 = v14;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = 2 * v6;
  }

  sub_2717D5BBC(v27, &v20, &v22, 1, 0, 0, v15);
  v16 = *&v24[16];
  *(a2 + 8) = *v24;
  *a2 = &unk_288112998;
  *(a2 + 24) = v16;
  *(a2 + 40) = v25;
  v17 = v27[0];
  *(a2 + 56) = v26;
  *(a2 + 64) = v17;
  v18 = v27[2];
  *(a2 + 72) = v27[1];
  *(a2 + 80) = v18;
  *(a2 + 104) = v29;
  result = *&v28;
  *(a2 + 88) = v28;
  return result;
}

double sub_2717C1770@<D0>(_DWORD *a1@<X1>, __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 4 * (v5 != 0);
  LODWORD(v7) = v6 * v5;
  *v26 = 4;
  *&v26[4] = v5;
  v8 = *v26;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v26))
  {
    v10 = *v26 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  *v26 = 1;
  *&v26[4] = v12;
  v13 = *v26;
  *v26 = v8;
  *&v26[8] = HIDWORD(v5);
  *&v26[12] = v13;
  *&v26[20] = v7;
  *&v26[24] = v5;
  *&v27 = v12;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v13;
  v25 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v22 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v23 = v16;
  if (((2 * v7) & (2 * v7 - 1)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * v7;
  }

  sub_2717D5BBC(v29, &v22, &v24, 1, a2, 1, v17);
  v18 = *&v26[16];
  *(a3 + 8) = *v26;
  *a3 = &unk_288112998;
  *(a3 + 24) = v18;
  *(a3 + 40) = v27;
  v19 = v29[0];
  *(a3 + 56) = v28;
  *(a3 + 64) = v19;
  v20 = v29[2];
  *(a3 + 72) = v29[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v31;
  result = *&v30;
  *(a3 + 88) = v30;
  return result;
}

double sub_2717C1914@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  v5 = 4 * (v4 != 0);
  LODWORD(v6) = v5 * v4;
  *v25 = 4;
  *&v25[4] = v4;
  v7 = *v25;
  v8 = HIDWORD(v4);
  if (HIDWORD(*v25))
  {
    v9 = *v25 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v8)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v11 = v5 & 0x3FFFFFFFFLL | ((v6 >> 2) << 34);
  *v25 = 1;
  *&v25[4] = v11;
  v12 = *v25;
  *v25 = v7;
  *&v25[8] = HIDWORD(v4);
  *&v25[12] = v12;
  *&v25[20] = v6;
  *&v25[24] = v4;
  *&v26 = v11;
  BYTE8(v26) = 0;
  BYTE4(v27) = 0;
  v23 = v12;
  v24 = v6;
  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v21 = v14;
  if (v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v22 = v15;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v6;
  }

  sub_2717D5BBC(v28, &v21, &v23, 1, 0, 0, v16);
  v17 = *&v25[16];
  *(a2 + 8) = *v25;
  *a2 = &unk_288112998;
  *(a2 + 24) = v17;
  *(a2 + 40) = v26;
  v18 = v28[0];
  *(a2 + 56) = v27;
  *(a2 + 64) = v18;
  v19 = v28[2];
  *(a2 + 72) = v28[1];
  *(a2 + 80) = v19;
  *(a2 + 104) = v30;
  result = *&v29;
  *(a2 + 88) = v29;
  return result;
}

void sub_2717C1AB8(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 4 * (v13 * HIDWORD(v5));
  v15 = 3;
  if (((4 * v10) & (4 * v10 - 1)) == 0)
  {
    v15 = 4 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v24 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 4 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v24;
    v14 = 4 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288112918;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (4 * v9) & 0xFFFFFFFCFFFFFFFCLL;
  *(a2 + 108) = 4 * HIDWORD(v5);
}

double sub_2717C1C90@<D0>(_DWORD *a1@<X1>, __int32 *a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v5 = *a1 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *a1;
  }

  v7 = 4 * (v6 != 0);
  LODWORD(v8) = v7 * v6;
  *v27 = 4;
  *&v27[4] = v6;
  v9 = *v27;
  v10 = HIDWORD(v6);
  if (HIDWORD(*v27))
  {
    v11 = *v27 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v10)
  {
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  v13 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
  *v27 = 1;
  *&v27[4] = v13;
  v14 = *v27;
  *v27 = v9;
  *&v27[8] = HIDWORD(v6);
  *&v27[12] = v14;
  *&v27[20] = v8;
  *&v27[24] = v6;
  *&v28 = v13;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v14;
  v26 = v8;
  if (v10)
  {
    v15 = v12;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v23 = v16;
  if (v12)
  {
    v17 = 0;
  }

  else
  {
    v17 = v10;
  }

  v24 = v17;
  if (((4 * v8) & (4 * v8 - 1)) != 0)
  {
    v18 = 4;
  }

  else
  {
    v18 = 4 * v8;
  }

  sub_2717D6318(v30, &v23, &v25, 1, a2, 1, v18, a4);
  v19 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288112918;
  *(a3 + 24) = v19;
  *(a3 + 40) = v28;
  v20 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v20;
  v21 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v21;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  return result;
}

void sub_2717C1E30(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = v10 - 1;
  v15 = (v13 * HIDWORD(v5));
  if ((v10 & (v10 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    v24 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * HIDWORD(v5)), 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v24;
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_288112898;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v9;
  *(a2 + 108) = HIDWORD(v5);
}

double sub_2717C1FEC@<D0>(_DWORD *a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 4 * (v5 != 0);
  LODWORD(v7) = v6 * v5;
  *v26 = 4;
  *&v26[4] = v5;
  v8 = *v26;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v26))
  {
    v10 = *v26 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  *v26 = 1;
  *&v26[4] = v12;
  v13 = *v26;
  *v26 = v8;
  *&v26[8] = HIDWORD(v5);
  *&v26[12] = v13;
  *&v26[20] = v7;
  *&v26[24] = v5;
  *&v27 = v12;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v13;
  v25 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v22 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v23 = v16;
  if ((v7 & (v7 - 1)) != 0)
  {
    v17 = 1;
  }

  else
  {
    v17 = v7;
  }

  sub_2717D4B20(v29, &v22, &v24, 1, a2, 1, v17);
  v18 = *&v26[16];
  *(a3 + 8) = *v26;
  *a3 = &unk_288112898;
  *(a3 + 24) = v18;
  *(a3 + 40) = v27;
  v19 = v29[0];
  *(a3 + 56) = v28;
  *(a3 + 64) = v19;
  v20 = v29[2];
  *(a3 + 72) = v29[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v31;
  result = *&v30;
  *(a3 + 88) = v30;
  return result;
}

void sub_2717C2188(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v5 = v4;
  v6 = 4 * (v4 != 0);
  v7 = v6 * v4;
  if (HIDWORD(v5))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v6 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
  v10 = __PAIR64__(*&memptr[4], 4);
  *memptr = 1;
  *&memptr[4] = v9;
  v11 = *memptr;
  v12 = __PAIR64__(v5, 4) >> 32 == 0;
  if (__PAIR64__(v5, 4) >> 32)
  {
    v13 = HIDWORD(v5);
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - 1;
  v15 = (v13 * v8);
  if ((v8 & (v8 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * v8), 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, (v13 * v8));
    }

    v21 = *memptr;
    v12 = __PAIR64__(v5, 4) >> 32 == 0;
  }

  else
  {
    v21 = 0;
  }

  if (HIDWORD(v5))
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_288112898;
  *(a2 + 8) = v10;
  *(a2 + 16) = HIDWORD(v5);
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10;
  }

  *(a2 + 20) = v11;
  *(a2 + 28) = v8;
  *(a2 + 32) = v5;
  *(a2 + 40) = v9;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v11;
  *(a2 + 108) = v8;
}

void sub_2717C2360(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 2 * (v13 * HIDWORD(v5));
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v24 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 2 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v24;
    v14 = 2 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288112798;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (2 * v9) & 0xFFFFFFFEFFFFFFFELL;
  *(a2 + 108) = 2 * HIDWORD(v5);
}

double sub_2717C2534@<D0>(_DWORD *a1@<X1>, unsigned __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 4 * (v5 != 0);
  LODWORD(v7) = v6 * v5;
  *v26 = 4;
  *&v26[4] = v5;
  v8 = *v26;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v26))
  {
    v10 = *v26 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  *v26 = 1;
  *&v26[4] = v12;
  v13 = *v26;
  *v26 = v8;
  *&v26[8] = HIDWORD(v5);
  *&v26[12] = v13;
  *&v26[20] = v7;
  *&v26[24] = v5;
  *&v27 = v12;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v13;
  v25 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v22 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v23 = v16;
  if (((2 * v7) & (2 * v7 - 1)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * v7;
  }

  sub_2717D5090(v29, &v22, &v24, 1, a2, 1, v17);
  v18 = *&v26[16];
  *(a3 + 8) = *v26;
  *a3 = &unk_288112798;
  *(a3 + 24) = v18;
  *(a3 + 40) = v27;
  v19 = v29[0];
  *(a3 + 56) = v28;
  *(a3 + 64) = v19;
  v20 = v29[2];
  *(a3 + 72) = v29[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v31;
  result = *&v30;
  *(a3 + 88) = v30;
  return result;
}

double sub_2717C26D8@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = 0;
  }

  *&v24[4] = v5;
  v6 = HIDWORD(v4);
  *v24 = 4;
  v7 = *v24;
  v8 = HIDWORD(v5);
  *v24 = 1;
  *&v24[4] = v4;
  v9 = *v24;
  *v24 = v7;
  *&v24[12] = v9;
  *&v24[20] = HIDWORD(v4);
  *&v24[24] = v5;
  *&v25 = v4;
  BYTE8(v25) = 0;
  BYTE4(v26) = 0;
  v22 = v9;
  v23 = HIDWORD(v4);
  if (HIDWORD(v7))
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v7;
  }

  v20 = v13;
  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = v8;
  }

  v21 = v14;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = 2 * v6;
  }

  sub_2717D5BBC(v27, &v20, &v22, 1, 0, 0, v15);
  v16 = *&v24[16];
  *(a2 + 8) = *v24;
  *a2 = &unk_288112718;
  *(a2 + 24) = v16;
  *(a2 + 40) = v25;
  v17 = v27[0];
  *(a2 + 56) = v26;
  *(a2 + 64) = v17;
  v18 = v27[2];
  *(a2 + 72) = v27[1];
  *(a2 + 80) = v18;
  *(a2 + 104) = v29;
  result = *&v28;
  *(a2 + 88) = v28;
  return result;
}

double sub_2717C2864@<D0>(_DWORD *a1@<X1>, __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 4 * (v5 != 0);
  LODWORD(v7) = v6 * v5;
  *v26 = 4;
  *&v26[4] = v5;
  v8 = *v26;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v26))
  {
    v10 = *v26 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  *v26 = 1;
  *&v26[4] = v12;
  v13 = *v26;
  *v26 = v8;
  *&v26[8] = HIDWORD(v5);
  *&v26[12] = v13;
  *&v26[20] = v7;
  *&v26[24] = v5;
  *&v27 = v12;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v13;
  v25 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v22 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v23 = v16;
  if (((2 * v7) & (2 * v7 - 1)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * v7;
  }

  sub_2717D5BBC(v29, &v22, &v24, 1, a2, 1, v17);
  v18 = *&v26[16];
  *(a3 + 8) = *v26;
  *a3 = &unk_288112718;
  *(a3 + 24) = v18;
  *(a3 + 40) = v27;
  v19 = v29[0];
  *(a3 + 56) = v28;
  *(a3 + 64) = v19;
  v20 = v29[2];
  *(a3 + 72) = v29[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v31;
  result = *&v30;
  *(a3 + 88) = v30;
  return result;
}

double sub_2717C2A08@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  v5 = 4 * (v4 != 0);
  LODWORD(v6) = v5 * v4;
  *v25 = 4;
  *&v25[4] = v4;
  v7 = *v25;
  v8 = HIDWORD(v4);
  if (HIDWORD(*v25))
  {
    v9 = *v25 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v8)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v11 = v5 & 0x3FFFFFFFFLL | ((v6 >> 2) << 34);
  *v25 = 1;
  *&v25[4] = v11;
  v12 = *v25;
  *v25 = v7;
  *&v25[8] = HIDWORD(v4);
  *&v25[12] = v12;
  *&v25[20] = v6;
  *&v25[24] = v4;
  *&v26 = v11;
  BYTE8(v26) = 0;
  BYTE4(v27) = 0;
  v23 = v12;
  v24 = v6;
  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v21 = v14;
  if (v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v22 = v15;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v6;
  }

  sub_2717D5BBC(v28, &v21, &v23, 1, 0, 0, v16);
  v17 = *&v25[16];
  *(a2 + 8) = *v25;
  *a2 = &unk_288112718;
  *(a2 + 24) = v17;
  *(a2 + 40) = v26;
  v18 = v28[0];
  *(a2 + 56) = v27;
  *(a2 + 64) = v18;
  v19 = v28[2];
  *(a2 + 72) = v28[1];
  *(a2 + 80) = v19;
  *(a2 + 104) = v30;
  result = *&v29;
  *(a2 + 88) = v29;
  return result;
}

void sub_2717C2BAC(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 4 * (v13 * HIDWORD(v5));
  v15 = 3;
  if (((4 * v10) & (4 * v10 - 1)) == 0)
  {
    v15 = 4 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v24 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 4 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v24;
    v14 = 4 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288112698;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (4 * v9) & 0xFFFFFFFCFFFFFFFCLL;
  *(a2 + 108) = 4 * HIDWORD(v5);
}

double sub_2717C2D84@<D0>(_DWORD *a1@<X1>, __int32 *a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v5 = *a1 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *a1;
  }

  v7 = 4 * (v6 != 0);
  LODWORD(v8) = v7 * v6;
  *v27 = 4;
  *&v27[4] = v6;
  v9 = *v27;
  v10 = HIDWORD(v6);
  if (HIDWORD(*v27))
  {
    v11 = *v27 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v10)
  {
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  v13 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
  *v27 = 1;
  *&v27[4] = v13;
  v14 = *v27;
  *v27 = v9;
  *&v27[8] = HIDWORD(v6);
  *&v27[12] = v14;
  *&v27[20] = v8;
  *&v27[24] = v6;
  *&v28 = v13;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v14;
  v26 = v8;
  if (v10)
  {
    v15 = v12;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v23 = v16;
  if (v12)
  {
    v17 = 0;
  }

  else
  {
    v17 = v10;
  }

  v24 = v17;
  if (((4 * v8) & (4 * v8 - 1)) != 0)
  {
    v18 = 4;
  }

  else
  {
    v18 = 4 * v8;
  }

  sub_2717D6318(v30, &v23, &v25, 1, a2, 1, v18, a4);
  v19 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288112698;
  *(a3 + 24) = v19;
  *(a3 + 40) = v28;
  v20 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v20;
  v21 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v21;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  return result;
}

void sub_2717C2F24(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = v10 - 1;
  v15 = (v13 * HIDWORD(v5));
  if ((v10 & (v10 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    v24 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * HIDWORD(v5)), 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v24;
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_288112618;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v9;
  *(a2 + 108) = HIDWORD(v5);
}

double sub_2717C30E0@<D0>(_DWORD *a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 4 * (v5 != 0);
  LODWORD(v7) = v6 * v5;
  *v26 = 4;
  *&v26[4] = v5;
  v8 = *v26;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v26))
  {
    v10 = *v26 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  *v26 = 1;
  *&v26[4] = v12;
  v13 = *v26;
  *v26 = v8;
  *&v26[8] = HIDWORD(v5);
  *&v26[12] = v13;
  *&v26[20] = v7;
  *&v26[24] = v5;
  *&v27 = v12;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v13;
  v25 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v22 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v23 = v16;
  if ((v7 & (v7 - 1)) != 0)
  {
    v17 = 1;
  }

  else
  {
    v17 = v7;
  }

  sub_2717D4B20(v29, &v22, &v24, 1, a2, 1, v17);
  v18 = *&v26[16];
  *(a3 + 8) = *v26;
  *a3 = &unk_288112618;
  *(a3 + 24) = v18;
  *(a3 + 40) = v27;
  v19 = v29[0];
  *(a3 + 56) = v28;
  *(a3 + 64) = v19;
  v20 = v29[2];
  *(a3 + 72) = v29[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v31;
  result = *&v30;
  *(a3 + 88) = v30;
  return result;
}

void sub_2717C327C(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v5 = v4;
  v6 = 4 * (v4 != 0);
  v7 = v6 * v4;
  if (HIDWORD(v5))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v6 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
  v10 = __PAIR64__(*&memptr[4], 4);
  *memptr = 1;
  *&memptr[4] = v9;
  v11 = *memptr;
  v12 = __PAIR64__(v5, 4) >> 32 == 0;
  if (__PAIR64__(v5, 4) >> 32)
  {
    v13 = HIDWORD(v5);
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - 1;
  v15 = (v13 * v8);
  if ((v8 & (v8 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * v8), 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, (v13 * v8));
    }

    v21 = *memptr;
    v12 = __PAIR64__(v5, 4) >> 32 == 0;
  }

  else
  {
    v21 = 0;
  }

  if (HIDWORD(v5))
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_288112618;
  *(a2 + 8) = v10;
  *(a2 + 16) = HIDWORD(v5);
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10;
  }

  *(a2 + 20) = v11;
  *(a2 + 28) = v8;
  *(a2 + 32) = v5;
  *(a2 + 40) = v9;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v11;
  *(a2 + 108) = v8;
}

void sub_2717C3454(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 2 * (v13 * HIDWORD(v5));
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v24 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 2 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v24;
    v14 = 2 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288112598;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (2 * v9) & 0xFFFFFFFEFFFFFFFELL;
  *(a2 + 108) = 2 * HIDWORD(v5);
}

double sub_2717C3628@<D0>(_DWORD *a1@<X1>, unsigned __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 4 * (v5 != 0);
  LODWORD(v7) = v6 * v5;
  *v26 = 4;
  *&v26[4] = v5;
  v8 = *v26;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v26))
  {
    v10 = *v26 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  *v26 = 1;
  *&v26[4] = v12;
  v13 = *v26;
  *v26 = v8;
  *&v26[8] = HIDWORD(v5);
  *&v26[12] = v13;
  *&v26[20] = v7;
  *&v26[24] = v5;
  *&v27 = v12;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v13;
  v25 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v22 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v23 = v16;
  if (((2 * v7) & (2 * v7 - 1)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * v7;
  }

  sub_2717D5090(v29, &v22, &v24, 1, a2, 1, v17);
  v18 = *&v26[16];
  *(a3 + 8) = *v26;
  *a3 = &unk_288112598;
  *(a3 + 24) = v18;
  *(a3 + 40) = v27;
  v19 = v29[0];
  *(a3 + 56) = v28;
  *(a3 + 64) = v19;
  v20 = v29[2];
  *(a3 + 72) = v29[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v31;
  result = *&v30;
  *(a3 + 88) = v30;
  return result;
}

double sub_2717C37CC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = 0;
  }

  *&v24[4] = v5;
  v6 = HIDWORD(v4);
  *v24 = 4;
  v7 = *v24;
  v8 = HIDWORD(v5);
  *v24 = 1;
  *&v24[4] = v4;
  v9 = *v24;
  *v24 = v7;
  *&v24[12] = v9;
  *&v24[20] = HIDWORD(v4);
  *&v24[24] = v5;
  *&v25 = v4;
  BYTE8(v25) = 0;
  BYTE4(v26) = 0;
  v22 = v9;
  v23 = HIDWORD(v4);
  if (HIDWORD(v7))
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v7;
  }

  v20 = v13;
  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = v8;
  }

  v21 = v14;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = 2 * v6;
  }

  sub_2717D5BBC(v27, &v20, &v22, 1, 0, 0, v15);
  v16 = *&v24[16];
  *(a2 + 8) = *v24;
  *a2 = &unk_288112518;
  *(a2 + 24) = v16;
  *(a2 + 40) = v25;
  v17 = v27[0];
  *(a2 + 56) = v26;
  *(a2 + 64) = v17;
  v18 = v27[2];
  *(a2 + 72) = v27[1];
  *(a2 + 80) = v18;
  *(a2 + 104) = v29;
  result = *&v28;
  *(a2 + 88) = v28;
  return result;
}

double sub_2717C3958@<D0>(_DWORD *a1@<X1>, __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 4 * (v5 != 0);
  LODWORD(v7) = v6 * v5;
  *v26 = 4;
  *&v26[4] = v5;
  v8 = *v26;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v26))
  {
    v10 = *v26 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  *v26 = 1;
  *&v26[4] = v12;
  v13 = *v26;
  *v26 = v8;
  *&v26[8] = HIDWORD(v5);
  *&v26[12] = v13;
  *&v26[20] = v7;
  *&v26[24] = v5;
  *&v27 = v12;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v13;
  v25 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v22 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v23 = v16;
  if (((2 * v7) & (2 * v7 - 1)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * v7;
  }

  sub_2717D5BBC(v29, &v22, &v24, 1, a2, 1, v17);
  v18 = *&v26[16];
  *(a3 + 8) = *v26;
  *a3 = &unk_288112518;
  *(a3 + 24) = v18;
  *(a3 + 40) = v27;
  v19 = v29[0];
  *(a3 + 56) = v28;
  *(a3 + 64) = v19;
  v20 = v29[2];
  *(a3 + 72) = v29[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v31;
  result = *&v30;
  *(a3 + 88) = v30;
  return result;
}

double sub_2717C3AFC@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  v5 = 4 * (v4 != 0);
  LODWORD(v6) = v5 * v4;
  *v25 = 4;
  *&v25[4] = v4;
  v7 = *v25;
  v8 = HIDWORD(v4);
  if (HIDWORD(*v25))
  {
    v9 = *v25 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v8)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v11 = v5 & 0x3FFFFFFFFLL | ((v6 >> 2) << 34);
  *v25 = 1;
  *&v25[4] = v11;
  v12 = *v25;
  *v25 = v7;
  *&v25[8] = HIDWORD(v4);
  *&v25[12] = v12;
  *&v25[20] = v6;
  *&v25[24] = v4;
  *&v26 = v11;
  BYTE8(v26) = 0;
  BYTE4(v27) = 0;
  v23 = v12;
  v24 = v6;
  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v21 = v14;
  if (v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v22 = v15;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v6;
  }

  sub_2717D5BBC(v28, &v21, &v23, 1, 0, 0, v16);
  v17 = *&v25[16];
  *(a2 + 8) = *v25;
  *a2 = &unk_288112518;
  *(a2 + 24) = v17;
  *(a2 + 40) = v26;
  v18 = v28[0];
  *(a2 + 56) = v27;
  *(a2 + 64) = v18;
  v19 = v28[2];
  *(a2 + 72) = v28[1];
  *(a2 + 80) = v19;
  *(a2 + 104) = v30;
  result = *&v29;
  *(a2 + 88) = v29;
  return result;
}

void sub_2717C3CA0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 4 * (v13 * HIDWORD(v5));
  v15 = 3;
  if (((4 * v10) & (4 * v10 - 1)) == 0)
  {
    v15 = 4 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v24 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 4 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v24;
    v14 = 4 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288112498;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (4 * v9) & 0xFFFFFFFCFFFFFFFCLL;
  *(a2 + 108) = 4 * HIDWORD(v5);
}

double sub_2717C3E78@<D0>(_DWORD *a1@<X1>, __int32 *a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v5 = *a1 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *a1;
  }

  v7 = 4 * (v6 != 0);
  LODWORD(v8) = v7 * v6;
  *v27 = 4;
  *&v27[4] = v6;
  v9 = *v27;
  v10 = HIDWORD(v6);
  if (HIDWORD(*v27))
  {
    v11 = *v27 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v10)
  {
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  v13 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
  *v27 = 1;
  *&v27[4] = v13;
  v14 = *v27;
  *v27 = v9;
  *&v27[8] = HIDWORD(v6);
  *&v27[12] = v14;
  *&v27[20] = v8;
  *&v27[24] = v6;
  *&v28 = v13;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v14;
  v26 = v8;
  if (v10)
  {
    v15 = v12;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v23 = v16;
  if (v12)
  {
    v17 = 0;
  }

  else
  {
    v17 = v10;
  }

  v24 = v17;
  if (((4 * v8) & (4 * v8 - 1)) != 0)
  {
    v18 = 4;
  }

  else
  {
    v18 = 4 * v8;
  }

  sub_2717D6318(v30, &v23, &v25, 1, a2, 1, v18, a4);
  v19 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288112498;
  *(a3 + 24) = v19;
  *(a3 + 40) = v28;
  v20 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v20;
  v21 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v21;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  return result;
}

void sub_2717C4018(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = v10 - 1;
  v15 = (v13 * HIDWORD(v5));
  if ((v10 & (v10 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    v24 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * HIDWORD(v5)), 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v24;
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_288112418;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v9;
  *(a2 + 108) = HIDWORD(v5);
}

double sub_2717C41D4@<D0>(_DWORD *a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 4 * (v5 != 0);
  LODWORD(v7) = v6 * v5;
  *v26 = 4;
  *&v26[4] = v5;
  v8 = *v26;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v26))
  {
    v10 = *v26 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  *v26 = 1;
  *&v26[4] = v12;
  v13 = *v26;
  *v26 = v8;
  *&v26[8] = HIDWORD(v5);
  *&v26[12] = v13;
  *&v26[20] = v7;
  *&v26[24] = v5;
  *&v27 = v12;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v13;
  v25 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v22 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v23 = v16;
  if ((v7 & (v7 - 1)) != 0)
  {
    v17 = 1;
  }

  else
  {
    v17 = v7;
  }

  sub_2717D4B20(v29, &v22, &v24, 1, a2, 1, v17);
  v18 = *&v26[16];
  *(a3 + 8) = *v26;
  *a3 = &unk_288112418;
  *(a3 + 24) = v18;
  *(a3 + 40) = v27;
  v19 = v29[0];
  *(a3 + 56) = v28;
  *(a3 + 64) = v19;
  v20 = v29[2];
  *(a3 + 72) = v29[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v31;
  result = *&v30;
  *(a3 + 88) = v30;
  return result;
}

void sub_2717C4370(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v5 = v4;
  v6 = 4 * (v4 != 0);
  v7 = v6 * v4;
  if (HIDWORD(v5))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v6 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
  v10 = __PAIR64__(*&memptr[4], 4);
  *memptr = 1;
  *&memptr[4] = v9;
  v11 = *memptr;
  v12 = __PAIR64__(v5, 4) >> 32 == 0;
  if (__PAIR64__(v5, 4) >> 32)
  {
    v13 = HIDWORD(v5);
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - 1;
  v15 = (v13 * v8);
  if ((v8 & (v8 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * v8), 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, (v13 * v8));
    }

    v21 = *memptr;
    v12 = __PAIR64__(v5, 4) >> 32 == 0;
  }

  else
  {
    v21 = 0;
  }

  if (HIDWORD(v5))
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_288112418;
  *(a2 + 8) = v10;
  *(a2 + 16) = HIDWORD(v5);
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10;
  }

  *(a2 + 20) = v11;
  *(a2 + 28) = v8;
  *(a2 + 32) = v5;
  *(a2 + 40) = v9;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v11;
  *(a2 + 108) = v8;
}

void sub_2717C4548(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 2 * (v13 * HIDWORD(v5));
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v24 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 2 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v24;
    v14 = 2 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288112398;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (2 * v9) & 0xFFFFFFFEFFFFFFFELL;
  *(a2 + 108) = 2 * HIDWORD(v5);
}

double sub_2717C471C@<D0>(_DWORD *a1@<X1>, unsigned __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 4 * (v5 != 0);
  LODWORD(v7) = v6 * v5;
  *v26 = 4;
  *&v26[4] = v5;
  v8 = *v26;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v26))
  {
    v10 = *v26 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  *v26 = 1;
  *&v26[4] = v12;
  v13 = *v26;
  *v26 = v8;
  *&v26[8] = HIDWORD(v5);
  *&v26[12] = v13;
  *&v26[20] = v7;
  *&v26[24] = v5;
  *&v27 = v12;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v13;
  v25 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v22 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v23 = v16;
  if (((2 * v7) & (2 * v7 - 1)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * v7;
  }

  sub_2717D5090(v29, &v22, &v24, 1, a2, 1, v17);
  v18 = *&v26[16];
  *(a3 + 8) = *v26;
  *a3 = &unk_288112398;
  *(a3 + 24) = v18;
  *(a3 + 40) = v27;
  v19 = v29[0];
  *(a3 + 56) = v28;
  *(a3 + 64) = v19;
  v20 = v29[2];
  *(a3 + 72) = v29[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v31;
  result = *&v30;
  *(a3 + 88) = v30;
  return result;
}

double sub_2717C48C0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = 0;
  }

  *&v24[4] = v5;
  v6 = HIDWORD(v4);
  *v24 = 4;
  v7 = *v24;
  v8 = HIDWORD(v5);
  *v24 = 1;
  *&v24[4] = v4;
  v9 = *v24;
  *v24 = v7;
  *&v24[12] = v9;
  *&v24[20] = HIDWORD(v4);
  *&v24[24] = v5;
  *&v25 = v4;
  BYTE8(v25) = 0;
  BYTE4(v26) = 0;
  v22 = v9;
  v23 = HIDWORD(v4);
  if (HIDWORD(v7))
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v7;
  }

  v20 = v13;
  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = v8;
  }

  v21 = v14;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = 2 * v6;
  }

  sub_2717D5BBC(v27, &v20, &v22, 1, 0, 0, v15);
  v16 = *&v24[16];
  *(a2 + 8) = *v24;
  *a2 = &unk_288112318;
  *(a2 + 24) = v16;
  *(a2 + 40) = v25;
  v17 = v27[0];
  *(a2 + 56) = v26;
  *(a2 + 64) = v17;
  v18 = v27[2];
  *(a2 + 72) = v27[1];
  *(a2 + 80) = v18;
  *(a2 + 104) = v29;
  result = *&v28;
  *(a2 + 88) = v28;
  return result;
}

double sub_2717C4A4C@<D0>(_DWORD *a1@<X1>, __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 4 * (v5 != 0);
  LODWORD(v7) = v6 * v5;
  *v26 = 4;
  *&v26[4] = v5;
  v8 = *v26;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v26))
  {
    v10 = *v26 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  *v26 = 1;
  *&v26[4] = v12;
  v13 = *v26;
  *v26 = v8;
  *&v26[8] = HIDWORD(v5);
  *&v26[12] = v13;
  *&v26[20] = v7;
  *&v26[24] = v5;
  *&v27 = v12;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v13;
  v25 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v22 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v23 = v16;
  if (((2 * v7) & (2 * v7 - 1)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * v7;
  }

  sub_2717D5BBC(v29, &v22, &v24, 1, a2, 1, v17);
  v18 = *&v26[16];
  *(a3 + 8) = *v26;
  *a3 = &unk_288112318;
  *(a3 + 24) = v18;
  *(a3 + 40) = v27;
  v19 = v29[0];
  *(a3 + 56) = v28;
  *(a3 + 64) = v19;
  v20 = v29[2];
  *(a3 + 72) = v29[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v31;
  result = *&v30;
  *(a3 + 88) = v30;
  return result;
}

double sub_2717C4BF0@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  v5 = 4 * (v4 != 0);
  LODWORD(v6) = v5 * v4;
  *v25 = 4;
  *&v25[4] = v4;
  v7 = *v25;
  v8 = HIDWORD(v4);
  if (HIDWORD(*v25))
  {
    v9 = *v25 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v8)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v11 = v5 & 0x3FFFFFFFFLL | ((v6 >> 2) << 34);
  *v25 = 1;
  *&v25[4] = v11;
  v12 = *v25;
  *v25 = v7;
  *&v25[8] = HIDWORD(v4);
  *&v25[12] = v12;
  *&v25[20] = v6;
  *&v25[24] = v4;
  *&v26 = v11;
  BYTE8(v26) = 0;
  BYTE4(v27) = 0;
  v23 = v12;
  v24 = v6;
  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v21 = v14;
  if (v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v22 = v15;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v6;
  }

  sub_2717D5BBC(v28, &v21, &v23, 1, 0, 0, v16);
  v17 = *&v25[16];
  *(a2 + 8) = *v25;
  *a2 = &unk_288112318;
  *(a2 + 24) = v17;
  *(a2 + 40) = v26;
  v18 = v28[0];
  *(a2 + 56) = v27;
  *(a2 + 64) = v18;
  v19 = v28[2];
  *(a2 + 72) = v28[1];
  *(a2 + 80) = v19;
  *(a2 + 104) = v30;
  result = *&v29;
  *(a2 + 88) = v29;
  return result;
}

void sub_2717C4D94(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 4 * (v13 * HIDWORD(v5));
  v15 = 3;
  if (((4 * v10) & (4 * v10 - 1)) == 0)
  {
    v15 = 4 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v24 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 4 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v24;
    v14 = 4 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288112218;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (4 * v9) & 0xFFFFFFFCFFFFFFFCLL;
  *(a2 + 108) = 4 * HIDWORD(v5);
}

double sub_2717C4F6C@<D0>(_DWORD *a1@<X1>, __int32 *a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v5 = *a1 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *a1;
  }

  v7 = 4 * (v6 != 0);
  LODWORD(v8) = v7 * v6;
  *v27 = 4;
  *&v27[4] = v6;
  v9 = *v27;
  v10 = HIDWORD(v6);
  if (HIDWORD(*v27))
  {
    v11 = *v27 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v10)
  {
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  v13 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
  *v27 = 1;
  *&v27[4] = v13;
  v14 = *v27;
  *v27 = v9;
  *&v27[8] = HIDWORD(v6);
  *&v27[12] = v14;
  *&v27[20] = v8;
  *&v27[24] = v6;
  *&v28 = v13;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v14;
  v26 = v8;
  if (v10)
  {
    v15 = v12;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v23 = v16;
  if (v12)
  {
    v17 = 0;
  }

  else
  {
    v17 = v10;
  }

  v24 = v17;
  if (((4 * v8) & (4 * v8 - 1)) != 0)
  {
    v18 = 4;
  }

  else
  {
    v18 = 4 * v8;
  }

  sub_2717D6318(v30, &v23, &v25, 1, a2, 1, v18, a4);
  v19 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288112218;
  *(a3 + 24) = v19;
  *(a3 + 40) = v28;
  v20 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v20;
  v21 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v21;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  return result;
}

uint64_t sub_2717C510C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_18;
  }

  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 28);
  }

  if (v4 * (*(a1 + 32) >> 33) != -1)
  {
    goto LABEL_17;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_16;
    }

    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_19;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
LABEL_19:
    abort();
  }

LABEL_16:
  qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 8);
  if (v2)
  {
LABEL_17:
    free(v2);
  }

LABEL_18:
  *(a1 + 8) = 0;
  return a1;
}

uint64_t sub_2717C5270(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 44) >> 1) != -1)
  {
    goto LABEL_16;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_18;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 8);
  if (v2)
  {
LABEL_16:
    free(v2);
  }

LABEL_17:
  *(a1 + 8) = 0;
  return a1;
}

void sub_2717C53D8(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  switch(a1)
  {
    case 1:
      v5 = *(a2 + 8);
      v585 = &unk_28810E1F8;
      sub_2715EF504(v5, &v586, a4);
      v6 = v586;
      if (v586)
      {
        v7 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v6 = v586;
          v8 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v9 = v6;
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
              v6 = v9;
            }
          }
        }

        (*(*v6 + 32))(&v607);
        v10 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        v546 = 1;
        sub_2717F1B04(&v609, &v588, 2, v589, 2, 1);
        goto LABEL_645;
      }

      v593 = &unk_28810F638;
      sub_271304970(&v585, &v594);
      v439 = v594;
      v438 = v595;
      if (v595)
      {
        atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v607 = v439;
      v608 = v438;
      v609 = 0;
      v610 = 0;
      v440 = v597;
      v441 = v596;
      sub_2717F1B04(&v605, &v599, 2, &v600, 2, 1);
      v442 = v441 | 0x100000000;
      v443 = v601;
      if (!v440)
      {
        v442 = 0;
      }

      *a3 = v439;
      *(a3 + 8) = v438;
      v444 = v605;
      *(a3 + 16) = v442;
      *(a3 + 24) = v444;
      *(a3 + 32) = v606;
      v250 = v595;
      *(a3 + 40) = v598;
      *(a3 + 48) = 1;
      *(a3 + 52) = v443;
      if (!v250)
      {
        goto LABEL_658;
      }

      goto LABEL_569;
    case 2:
      v178 = *(a2 + 8);
      v585 = &unk_28810DB78;
      sub_2715EFA94(v178, &v586, a4);
      v179 = v586;
      if (v586)
      {
        v180 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v180->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v180->__on_zero_shared)(v180);
            std::__shared_weak_count::__release_weak(v180);
          }

          v179 = v586;
          v181 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v181->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v182 = v179;
              (v181->__on_zero_shared)(v181);
              std::__shared_weak_count::__release_weak(v181);
              v179 = v182;
            }
          }
        }

        (*(*v179 + 32))(&v607);
        v10 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        v546 = 2;
        sub_2717F1B04(&v609, &v588, 2, v589, 2, 2);
        goto LABEL_645;
      }

      v593 = &unk_28810F138;
      sub_271305898(&v585, &v594);
      v356 = v594;
      v355 = v595;
      if (v595)
      {
        atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v607 = v356;
      v608 = v355;
      v609 = 0;
      v610 = 0;
      v357 = v597;
      v435 = v596;
      v359 = 2;
      sub_2717F1B04(&v605, &v599, 2, &v600, 2, 2);
      v360 = v601;
      v361 = 2 * v435;
      goto LABEL_523;
    case 3:
      v172 = *(a2 + 8);
      v585 = &unk_28810D4B8;
      sub_271683A48(v172, &v586, a4);
      v173 = v586;
      if (v586)
      {
        v174 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v174->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v174->__on_zero_shared)(v174);
            std::__shared_weak_count::__release_weak(v174);
          }

          v173 = v586;
          v175 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v175->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v176 = v173;
              (v175->__on_zero_shared)(v175);
              std::__shared_weak_count::__release_weak(v175);
              v173 = v176;
            }
          }
        }

        (*(*v173 + 32))(&v607);
        v177 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 2, v589, 2, 2);
        v563 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v564 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v564;
        *(a3 + 32) = v610;
        *(a3 + 40) = v177;
        *(a3 + 48) = 3;
        *(a3 + 52) = v563;
        v516 = v607;
        v607 = 0;
        if (v516)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v593 = &unk_28810EBB8;
        sub_271306780(&v585, &v594);
        v429 = v594;
        v428 = v595;
        if (v595)
        {
          atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v607 = v429;
        v608 = v428;
        v609 = 0;
        v610 = 0;
        v430 = v597;
        v431 = v596;
        sub_2717F1B04(&v605, &v599, 2, &v600, 2, 2);
        v432 = v601;
        v433 = (2 * v431) | 0x100000000;
        if (!v430)
        {
          v433 = 0;
        }

        *a3 = v429;
        *(a3 + 8) = v428;
        v434 = v605;
        *(a3 + 16) = v433;
        *(a3 + 24) = v434;
        *(a3 + 32) = v606;
        v250 = v595;
        *(a3 + 40) = v598;
        *(a3 + 48) = 3;
        *(a3 + 52) = v432;
        if (v250)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 4:
      v107 = *(a2 + 8);
      v585 = &unk_28810D378;
      sub_271683F50(v107, &v586, a4);
      v108 = v586;
      if (v586)
      {
        v109 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v109->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v109->__on_zero_shared)(v109);
            std::__shared_weak_count::__release_weak(v109);
          }

          v108 = v586;
          v110 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v110->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v111 = v108;
              (v110->__on_zero_shared)(v110);
              std::__shared_weak_count::__release_weak(v110);
              v108 = v111;
            }
          }
        }

        (*(*v108 + 32))(&v607);
        v10 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        v546 = 4;
        sub_2717F1B04(&v609, &v588, 2, v589, 2, 4);
LABEL_645:
        v565 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v566 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v566;
        *(a3 + 32) = v610;
        *(a3 + 40) = v10;
        *(a3 + 48) = v546;
        *(a3 + 52) = v565;
        v516 = v607;
        v607 = 0;
        if (v516)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v593 = &unk_28810EAB8;
        sub_271307678(&v585, &v594);
        v356 = v594;
        v355 = v595;
        if (v595)
        {
          atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v607 = v356;
        v608 = v355;
        v609 = 0;
        v610 = 0;
        v357 = v597;
        v358 = v596;
        v359 = 4;
        sub_2717F1B04(&v605, &v599, 2, &v600, 2, 4);
        v360 = v601;
        v361 = 4 * v358;
LABEL_523:
        v436 = v361 | 0x100000000;
        if (!v357)
        {
          v436 = 0;
        }

        *a3 = v356;
        *(a3 + 8) = v355;
        v437 = v605;
        *(a3 + 16) = v436;
        *(a3 + 24) = v437;
        *(a3 + 32) = v606;
        v250 = v595;
        *(a3 + 40) = v598;
        *(a3 + 48) = v359;
        *(a3 + 52) = v360;
        if (v250)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 5:
      v154 = *(a2 + 8);
      v585 = &unk_28810D2B8;
      sub_271684458(v154, &v586, a4);
      v155 = v586;
      if (v586)
      {
        v156 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v156->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v156->__on_zero_shared)(v156);
            std::__shared_weak_count::__release_weak(v156);
          }

          v155 = v586;
          v157 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v157->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v158 = v155;
              (v157->__on_zero_shared)(v157);
              std::__shared_weak_count::__release_weak(v157);
              v155 = v158;
            }
          }
        }

        (*(*v155 + 32))(&v607);
        v159 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 1);
        v557 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v558 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v558;
        *(a3 + 32) = v610;
        *(a3 + 40) = v159;
        *(a3 + 48) = 5;
        *(a3 + 52) = v557;
        v516 = v607;
        v607 = 0;
        if (v516)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v593 = &unk_28810E9F8;
        sub_2713085EC(&v585, &v594);
        v408 = v594;
        v407 = v595;
        if (v595)
        {
          atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v607 = v408;
        v608 = v407;
        v609 = 0;
        v610 = 0;
        v409 = v597;
        v410 = v596;
        sub_2717F1B04(&v605, v602, 3, v603, 3, 1);
        v411 = v410 | 0x100000000;
        v412 = v604;
        if (!v409)
        {
          v411 = 0;
        }

        *a3 = v408;
        *(a3 + 8) = v407;
        v413 = v605;
        *(a3 + 16) = v411;
        *(a3 + 24) = v413;
        *(a3 + 32) = v606;
        v250 = v595;
        *(a3 + 40) = v598;
        *(a3 + 48) = 5;
        *(a3 + 52) = v412;
        if (v250)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 6:
      v101 = *(a2 + 8);
      v585 = &unk_28810D238;
      sub_2716849F0(v101, &v586, a4);
      v102 = v586;
      if (v586)
      {
        v103 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v103->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v103->__on_zero_shared)(v103);
            std::__shared_weak_count::__release_weak(v103);
          }

          v102 = v586;
          v104 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v104->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v105 = v102;
              (v104->__on_zero_shared)(v104);
              std::__shared_weak_count::__release_weak(v104);
              v102 = v105;
            }
          }
        }

        (*(*v102 + 32))(&v607);
        v106 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 2);
        v544 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v545 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v545;
        *(a3 + 32) = v610;
        *(a3 + 40) = v106;
        *(a3 + 48) = 6;
        *(a3 + 52) = v544;
        v516 = v607;
        v607 = 0;
        if (v516)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v593 = &unk_28810E9B8;
        sub_27130938C(&v585, &v594);
        v349 = v594;
        v348 = v595;
        if (v595)
        {
          atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v607 = v349;
        v608 = v348;
        v609 = 0;
        v610 = 0;
        v350 = v597;
        v351 = v596;
        sub_2717F1B04(&v605, v602, 3, v603, 3, 2);
        v352 = v604;
        v353 = (2 * v351) | 0x100000000;
        if (!v350)
        {
          v353 = 0;
        }

        *a3 = v349;
        *(a3 + 8) = v348;
        v354 = v605;
        *(a3 + 16) = v353;
        *(a3 + 24) = v354;
        *(a3 + 32) = v606;
        v250 = v595;
        *(a3 + 40) = v598;
        *(a3 + 48) = 6;
        *(a3 + 52) = v352;
        if (v250)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 7:
      v71 = *(a2 + 8);
      v585 = &unk_28810D178;
      sub_271684F8C(v71, &v586, a4);
      v72 = v586;
      if (v586)
      {
        v73 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v73->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v73->__on_zero_shared)(v73);
            std::__shared_weak_count::__release_weak(v73);
          }

          v72 = v586;
          v74 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v74->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v75 = v72;
              (v74->__on_zero_shared)(v74);
              std::__shared_weak_count::__release_weak(v74);
              v72 = v75;
            }
          }
        }

        (*(*v72 + 32))(&v607);
        v76 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 2);
        v536 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v537 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v537;
        *(a3 + 32) = v610;
        *(a3 + 40) = v76;
        *(a3 + 48) = 7;
        *(a3 + 52) = v536;
        v516 = v607;
        v607 = 0;
        if (v516)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v593 = &unk_28810E8F8;
        sub_27130A390(&v585, &v594);
        v316 = v594;
        v315 = v595;
        if (v595)
        {
          atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v607 = v316;
        v608 = v315;
        v609 = 0;
        v610 = 0;
        v317 = v597;
        v318 = v596;
        sub_2717F1B04(&v605, v602, 3, v603, 3, 2);
        v319 = v604;
        v320 = (2 * v318) | 0x100000000;
        if (!v317)
        {
          v320 = 0;
        }

        *a3 = v316;
        *(a3 + 8) = v315;
        v321 = v605;
        *(a3 + 16) = v320;
        *(a3 + 24) = v321;
        *(a3 + 32) = v606;
        v250 = v595;
        *(a3 + 40) = v598;
        *(a3 + 48) = 7;
        *(a3 + 52) = v319;
        if (v250)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 8:
      v166 = *(a2 + 8);
      v585 = &unk_28810D0B8;
      sub_271685528(v166, &v586, a4);
      v167 = v586;
      if (v586)
      {
        v168 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v168->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v168->__on_zero_shared)(v168);
            std::__shared_weak_count::__release_weak(v168);
          }

          v167 = v586;
          v169 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v169->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v170 = v167;
              (v169->__on_zero_shared)(v169);
              std::__shared_weak_count::__release_weak(v169);
              v167 = v170;
            }
          }
        }

        (*(*v167 + 32))(&v607);
        v171 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 4);
        v561 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v562 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v562;
        *(a3 + 32) = v610;
        *(a3 + 40) = v171;
        *(a3 + 48) = 8;
        *(a3 + 52) = v561;
        v516 = v607;
        v607 = 0;
        if (v516)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v593 = &unk_28810E838;
        sub_27130B360(&v585, &v594);
        v422 = v594;
        v421 = v595;
        if (v595)
        {
          atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v607 = v422;
        v608 = v421;
        v609 = 0;
        v610 = 0;
        v423 = v597;
        v424 = v596;
        sub_2717F1B04(&v605, v602, 3, v603, 3, 4);
        v425 = v604;
        v426 = (4 * v424) | 0x100000000;
        if (!v423)
        {
          v426 = 0;
        }

        *a3 = v422;
        *(a3 + 8) = v421;
        v427 = v605;
        *(a3 + 16) = v426;
        *(a3 + 24) = v427;
        *(a3 + 32) = v606;
        v250 = v595;
        *(a3 + 40) = v598;
        *(a3 + 48) = 8;
        *(a3 + 52) = v425;
        if (v250)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 9:
      v148 = *(a2 + 8);
      v585 = &unk_28810D038;
      sub_271685AC4(v148, &v586, a4);
      v149 = v586;
      if (v586)
      {
        v150 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v150->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v150->__on_zero_shared)(v150);
            std::__shared_weak_count::__release_weak(v150);
          }

          v149 = v586;
          v151 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v151->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v152 = v149;
              (v151->__on_zero_shared)(v151);
              std::__shared_weak_count::__release_weak(v151);
              v149 = v152;
            }
          }
        }

        (*(*v149 + 32))(&v607);
        v153 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 1);
        v555 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v556 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v556;
        *(a3 + 32) = v610;
        *(a3 + 40) = v153;
        *(a3 + 48) = 9;
        *(a3 + 52) = v555;
        v516 = v607;
        v607 = 0;
        if (v516)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v593 = &unk_28810E7F8;
        sub_27130C108(&v585, &v594);
        v401 = v594;
        v400 = v595;
        if (v595)
        {
          atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v607 = v401;
        v608 = v400;
        v609 = 0;
        v610 = 0;
        v402 = v597;
        v403 = v596;
        sub_2717F1B04(&v605, v602, 3, v603, 3, 1);
        v404 = v403 | 0x100000000;
        v405 = v604;
        if (!v402)
        {
          v404 = 0;
        }

        *a3 = v401;
        *(a3 + 8) = v400;
        v406 = v605;
        *(a3 + 16) = v404;
        *(a3 + 24) = v406;
        *(a3 + 32) = v606;
        v250 = v595;
        *(a3 + 40) = v598;
        *(a3 + 48) = 9;
        *(a3 + 52) = v405;
        if (v250)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 10:
      v195 = *(a2 + 8);
      v585 = &unk_28810E738;
      sub_27168605C(v195, &v586, a4);
      v196 = v586;
      if (v586)
      {
        v197 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v197->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v197->__on_zero_shared)(v197);
            std::__shared_weak_count::__release_weak(v197);
          }

          v196 = v586;
          v198 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v198->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v199 = v196;
              (v198->__on_zero_shared)(v198);
              std::__shared_weak_count::__release_weak(v198);
              v196 = v199;
            }
          }
        }

        (*(*v196 + 32))(&v607);
        v200 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 2);
        v570 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v571 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v571;
        *(a3 + 32) = v610;
        *(a3 + 40) = v200;
        *(a3 + 48) = 10;
        *(a3 + 52) = v570;
        v516 = v607;
        v607 = 0;
        if (v516)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v593 = &unk_28810F978;
        sub_27130CE50(&v585, &v594);
        v461 = v594;
        v460 = v595;
        if (v595)
        {
          atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v607 = v461;
        v608 = v460;
        v609 = 0;
        v610 = 0;
        v462 = v597;
        v463 = v596;
        sub_2717F1B04(&v605, v602, 3, v603, 3, 2);
        v464 = v604;
        v465 = (2 * v463) | 0x100000000;
        if (!v462)
        {
          v465 = 0;
        }

        *a3 = v461;
        *(a3 + 8) = v460;
        v466 = v605;
        *(a3 + 16) = v465;
        *(a3 + 24) = v466;
        *(a3 + 32) = v606;
        v250 = v595;
        *(a3 + 40) = v598;
        *(a3 + 48) = 10;
        *(a3 + 52) = v464;
        if (v250)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 11:
      v189 = *(a2 + 8);
      v585 = &unk_28810E6B8;
      sub_2716865F8(v189, &v586, a4);
      v190 = v586;
      if (v586)
      {
        v191 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v191->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v191->__on_zero_shared)(v191);
            std::__shared_weak_count::__release_weak(v191);
          }

          v190 = v586;
          v192 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v192->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v193 = v190;
              (v192->__on_zero_shared)(v192);
              std::__shared_weak_count::__release_weak(v192);
              v190 = v193;
            }
          }
        }

        (*(*v190 + 32))(&v607);
        v194 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 2);
        v568 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v569 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v569;
        *(a3 + 32) = v610;
        *(a3 + 40) = v194;
        *(a3 + 48) = 11;
        *(a3 + 52) = v568;
        v516 = v607;
        v607 = 0;
        if (v516)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v593 = &unk_28810F938;
        sub_27130DBF8(&v585, &v594);
        v454 = v594;
        v453 = v595;
        if (v595)
        {
          atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v607 = v454;
        v608 = v453;
        v609 = 0;
        v610 = 0;
        v455 = v597;
        v456 = v596;
        sub_2717F1B04(&v605, v602, 3, v603, 3, 2);
        v457 = v604;
        v458 = (2 * v456) | 0x100000000;
        if (!v455)
        {
          v458 = 0;
        }

        *a3 = v454;
        *(a3 + 8) = v453;
        v459 = v605;
        *(a3 + 16) = v458;
        *(a3 + 24) = v459;
        *(a3 + 32) = v606;
        v250 = v595;
        *(a3 + 40) = v598;
        *(a3 + 48) = 11;
        *(a3 + 52) = v457;
        if (v250)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 12:
      v29 = *(a2 + 8);
      v585 = &unk_28810E638;
      sub_271686B94(v29, &v586, a4);
      v30 = v586;
      if (v586)
      {
        v31 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v31->__on_zero_shared)(v31);
            std::__shared_weak_count::__release_weak(v31);
          }

          v30 = v586;
          v32 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v33 = v30;
              (v32->__on_zero_shared)(v32);
              std::__shared_weak_count::__release_weak(v32);
              v30 = v33;
            }
          }
        }

        (*(*v30 + 32))(&v607);
        v34 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 4);
        v521 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v522 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v522;
        *(a3 + 32) = v610;
        *(a3 + 40) = v34;
        *(a3 + 48) = 12;
        *(a3 + 52) = v521;
        v516 = v607;
        v607 = 0;
        if (v516)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v593 = &unk_28810F8F8;
        sub_27130E96C(&v585, &v594);
        v266 = v594;
        v265 = v595;
        if (v595)
        {
          atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v607 = v266;
        v608 = v265;
        v609 = 0;
        v610 = 0;
        v267 = v597;
        v268 = v596;
        sub_2717F1B04(&v605, v602, 3, v603, 3, 4);
        v269 = v604;
        v270 = (4 * v268) | 0x100000000;
        if (!v267)
        {
          v270 = 0;
        }

        *a3 = v266;
        *(a3 + 8) = v265;
        v271 = v605;
        *(a3 + 16) = v270;
        *(a3 + 24) = v271;
        *(a3 + 32) = v606;
        v250 = v595;
        *(a3 + 40) = v598;
        *(a3 + 48) = 12;
        *(a3 + 52) = v269;
        if (v250)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 13:
      v53 = *(a2 + 8);
      v585 = &unk_28810E5B8;
      sub_271687130(v53, &v586, a4);
      v54 = v586;
      if (v586)
      {
        v55 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v55->__on_zero_shared)(v55);
            std::__shared_weak_count::__release_weak(v55);
          }

          v54 = v586;
          v56 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v57 = v54;
              (v56->__on_zero_shared)(v56);
              std::__shared_weak_count::__release_weak(v56);
              v54 = v57;
            }
          }
        }

        (*(*v54 + 32))(&v607);
        v58 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 1);
        v529 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v530 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v530;
        *(a3 + 32) = v610;
        *(a3 + 40) = v58;
        *(a3 + 48) = 13;
        *(a3 + 52) = v529;
        v516 = v607;
        v607 = 0;
        if (v516)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v593 = &unk_28810F8B8;
        sub_27130F714(&v585, &v594);
        v294 = v594;
        v293 = v595;
        if (v595)
        {
          atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v607 = v294;
        v608 = v293;
        v609 = 0;
        v610 = 0;
        v295 = v597;
        v296 = v596;
        sub_2717F1B04(&v605, v602, 3, v603, 3, 1);
        v297 = v296 | 0x100000000;
        v298 = v604;
        if (!v295)
        {
          v297 = 0;
        }

        *a3 = v294;
        *(a3 + 8) = v293;
        v299 = v605;
        *(a3 + 16) = v297;
        *(a3 + 24) = v299;
        *(a3 + 32) = v606;
        v250 = v595;
        *(a3 + 40) = v598;
        *(a3 + 48) = 13;
        *(a3 + 52) = v298;
        if (v250)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 14:
      v47 = *(a2 + 8);
      v585 = &unk_28810E538;
      sub_2716876C8(v47, &v586, a4);
      v48 = v586;
      if (v586)
      {
        v49 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v49->__on_zero_shared)(v49);
            std::__shared_weak_count::__release_weak(v49);
          }

          v48 = v586;
          v50 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v51 = v48;
              (v50->__on_zero_shared)(v50);
              std::__shared_weak_count::__release_weak(v50);
              v48 = v51;
            }
          }
        }

        (*(*v48 + 32))(&v607);
        v52 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 2);
        v527 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v528 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v528;
        *(a3 + 32) = v610;
        *(a3 + 40) = v52;
        *(a3 + 48) = 14;
        *(a3 + 52) = v527;
        v516 = v607;
        v607 = 0;
        if (v516)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v593 = &unk_28810F878;
        sub_27131045C(&v585, &v594);
        v287 = v594;
        v286 = v595;
        if (v595)
        {
          atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v607 = v287;
        v608 = v286;
        v609 = 0;
        v610 = 0;
        v288 = v597;
        v289 = v596;
        sub_2717F1B04(&v605, v602, 3, v603, 3, 2);
        v290 = v604;
        v291 = (2 * v289) | 0x100000000;
        if (!v288)
        {
          v291 = 0;
        }

        *a3 = v287;
        *(a3 + 8) = v286;
        v292 = v605;
        *(a3 + 16) = v291;
        *(a3 + 24) = v292;
        *(a3 + 32) = v606;
        v250 = v595;
        *(a3 + 40) = v598;
        *(a3 + 48) = 14;
        *(a3 + 52) = v290;
        if (v250)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 15:
      v219 = *(a2 + 8);
      v585 = &unk_28810E4B8;
      sub_271687C64(v219, &v586, a4);
      v220 = v586;
      if (v586)
      {
        v221 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v221->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v221->__on_zero_shared)(v221);
            std::__shared_weak_count::__release_weak(v221);
          }

          v220 = v586;
          v222 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v222->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v223 = v220;
              (v222->__on_zero_shared)(v222);
              std::__shared_weak_count::__release_weak(v222);
              v220 = v223;
            }
          }
        }

        (*(*v220 + 32))(&v607);
        v224 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 2);
        v577 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v578 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v578;
        *(a3 + 32) = v610;
        *(a3 + 40) = v224;
        *(a3 + 48) = 15;
        *(a3 + 52) = v577;
        v516 = v607;
        v607 = 0;
        if (v516)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v593 = &unk_28810F838;
        sub_271311204(&v585, &v594);
        v487 = v594;
        v486 = v595;
        if (v595)
        {
          atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v607 = v487;
        v608 = v486;
        v609 = 0;
        v610 = 0;
        v488 = v597;
        v489 = v596;
        sub_2717F1B04(&v605, v602, 3, v603, 3, 2);
        v490 = v604;
        v491 = (2 * v489) | 0x100000000;
        if (!v488)
        {
          v491 = 0;
        }

        *a3 = v487;
        *(a3 + 8) = v486;
        v492 = v605;
        *(a3 + 16) = v491;
        *(a3 + 24) = v492;
        *(a3 + 32) = v606;
        v250 = v595;
        *(a3 + 40) = v598;
        *(a3 + 48) = 15;
        *(a3 + 52) = v490;
        if (v250)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 16:
      v160 = *(a2 + 8);
      v585 = &unk_28810E438;
      sub_271688200(v160, &v586, a4);
      v161 = v586;
      if (v586)
      {
        v162 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v162->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v162->__on_zero_shared)(v162);
            std::__shared_weak_count::__release_weak(v162);
          }

          v161 = v586;
          v163 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v163->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v164 = v161;
              (v163->__on_zero_shared)(v163);
              std::__shared_weak_count::__release_weak(v163);
              v161 = v164;
            }
          }
        }

        (*(*v161 + 32))(&v607);
        v165 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 4);
        v559 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v560 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v560;
        *(a3 + 32) = v610;
        *(a3 + 40) = v165;
        *(a3 + 48) = 16;
        *(a3 + 52) = v559;
        v516 = v607;
        v607 = 0;
        if (v516)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v593 = &unk_28810F7F8;
        sub_271311F78(&v585, &v594);
        v415 = v594;
        v414 = v595;
        if (v595)
        {
          atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v607 = v415;
        v608 = v414;
        v609 = 0;
        v610 = 0;
        v416 = v597;
        v417 = v596;
        sub_2717F1B04(&v605, v602, 3, v603, 3, 4);
        v418 = v604;
        v419 = (4 * v417) | 0x100000000;
        if (!v416)
        {
          v419 = 0;
        }

        *a3 = v415;
        *(a3 + 8) = v414;
        v420 = v605;
        *(a3 + 16) = v419;
        *(a3 + 24) = v420;
        *(a3 + 32) = v606;
        v250 = v595;
        *(a3 + 40) = v598;
        *(a3 + 48) = 16;
        *(a3 + 52) = v418;
        if (v250)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 17:
      v225 = *(a2 + 8);
      v585 = &unk_28810E3B8;
      sub_27168879C(v225, &v586, a4);
      v226 = v586;
      if (v586)
      {
        v227 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v227->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v227->__on_zero_shared)(v227);
            std::__shared_weak_count::__release_weak(v227);
          }

          v226 = v586;
          v228 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v228->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v229 = v226;
              (v228->__on_zero_shared)(v228);
              std::__shared_weak_count::__release_weak(v228);
              v226 = v229;
            }
          }
        }

        (*(*v226 + 32))(&v607);
        v230 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 1);
        v579 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v580 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v580;
        *(a3 + 32) = v610;
        *(a3 + 40) = v230;
        *(a3 + 48) = 17;
        *(a3 + 52) = v579;
        v516 = v607;
        v607 = 0;
        if (v516)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v593 = &unk_28810F778;
        sub_271312D20(&v585, &v594);
        v494 = v594;
        v493 = v595;
        if (v595)
        {
          atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v607 = v494;
        v608 = v493;
        v609 = 0;
        v610 = 0;
        v495 = v597;
        v496 = v596;
        sub_2717F1B04(&v605, v602, 3, v603, 3, 1);
        v497 = v496 | 0x100000000;
        v498 = v604;
        if (!v495)
        {
          v497 = 0;
        }

        *a3 = v494;
        *(a3 + 8) = v493;
        v499 = v605;
        *(a3 + 16) = v497;
        *(a3 + 24) = v499;
        *(a3 + 32) = v606;
        v250 = v595;
        *(a3 + 40) = v598;
        *(a3 + 48) = 17;
        *(a3 + 52) = v498;
        if (v250)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 18:
      v65 = *(a2 + 8);
      v585 = &unk_28810E338;
      sub_271688D34(v65, &v586, a4);
      v66 = v586;
      if (v586)
      {
        v67 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v67->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v67->__on_zero_shared)(v67);
            std::__shared_weak_count::__release_weak(v67);
          }

          v66 = v586;
          v68 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v69 = v66;
              (v68->__on_zero_shared)(v68);
              std::__shared_weak_count::__release_weak(v68);
              v66 = v69;
            }
          }
        }

        (*(*v66 + 32))(&v607);
        v70 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 2);
        v534 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v535 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v535;
        *(a3 + 32) = v610;
        *(a3 + 40) = v70;
        *(a3 + 48) = 18;
        *(a3 + 52) = v534;
        v516 = v607;
        v607 = 0;
        if (v516)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v593 = &unk_28810F738;
        sub_271313A68(&v585, &v594);
        v309 = v594;
        v308 = v595;
        if (v595)
        {
          atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v607 = v309;
        v608 = v308;
        v609 = 0;
        v610 = 0;
        v310 = v597;
        v311 = v596;
        sub_2717F1B04(&v605, v602, 3, v603, 3, 2);
        v312 = v604;
        v313 = (2 * v311) | 0x100000000;
        if (!v310)
        {
          v313 = 0;
        }

        *a3 = v309;
        *(a3 + 8) = v308;
        v314 = v605;
        *(a3 + 16) = v313;
        *(a3 + 24) = v314;
        *(a3 + 32) = v606;
        v250 = v595;
        *(a3 + 40) = v598;
        *(a3 + 48) = 18;
        *(a3 + 52) = v312;
        if (v250)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 19:
      v17 = *(a2 + 8);
      v585 = &unk_28810E2B8;
      sub_2716892D0(v17, &v586, a4);
      v18 = v586;
      if (v586)
      {
        v19 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v19->__on_zero_shared)(v19);
            std::__shared_weak_count::__release_weak(v19);
          }

          v18 = v586;
          v20 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v21 = v18;
              (v20->__on_zero_shared)(v20);
              std::__shared_weak_count::__release_weak(v20);
              v18 = v21;
            }
          }
        }

        (*(*v18 + 32))(&v607);
        v22 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 2);
        v517 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v518 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v518;
        *(a3 + 32) = v610;
        *(a3 + 40) = v22;
        *(a3 + 48) = 19;
        *(a3 + 52) = v517;
        v516 = v607;
        v607 = 0;
        if (v516)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v593 = &unk_28810F6F8;
        sub_271314810(&v585, &v594);
        v252 = v594;
        v251 = v595;
        if (v595)
        {
          atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v607 = v252;
        v608 = v251;
        v609 = 0;
        v610 = 0;
        v253 = v597;
        v254 = v596;
        sub_2717F1B04(&v605, v602, 3, v603, 3, 2);
        v255 = v604;
        v256 = (2 * v254) | 0x100000000;
        if (!v253)
        {
          v256 = 0;
        }

        *a3 = v252;
        *(a3 + 8) = v251;
        v257 = v605;
        *(a3 + 16) = v256;
        *(a3 + 24) = v257;
        *(a3 + 32) = v606;
        v250 = v595;
        *(a3 + 40) = v598;
        *(a3 + 48) = 19;
        *(a3 + 52) = v255;
        if (v250)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 20:
      v207 = *(a2 + 8);
      v585 = &unk_28810E178;
      sub_27168986C(v207, &v586, a4);
      v208 = v586;
      if (v586)
      {
        v209 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v209->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v209->__on_zero_shared)(v209);
            std::__shared_weak_count::__release_weak(v209);
          }

          v208 = v586;
          v210 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v210->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v211 = v208;
              (v210->__on_zero_shared)(v210);
              std::__shared_weak_count::__release_weak(v210);
              v208 = v211;
            }
          }
        }

        (*(*v208 + 32))(&v607);
        v212 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 4);
        v573 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v574 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v574;
        *(a3 + 32) = v610;
        *(a3 + 40) = v212;
        *(a3 + 48) = 20;
        *(a3 + 52) = v573;
        v516 = v607;
        v607 = 0;
        if (v516)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v593 = &unk_28810F5F8;
        sub_271315584(&v585, &v594);
        v474 = v594;
        v473 = v595;
        if (v595)
        {
          atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v607 = v474;
        v608 = v473;
        v609 = 0;
        v610 = 0;
        v475 = v597;
        v476 = v596;
        sub_2717F1B04(&v605, v602, 3, v603, 3, 4);
        v477 = v604;
        v478 = (4 * v476) | 0x100000000;
        if (!v475)
        {
          v478 = 0;
        }

        *a3 = v474;
        *(a3 + 8) = v473;
        v479 = v605;
        *(a3 + 16) = v478;
        *(a3 + 24) = v479;
        *(a3 + 32) = v606;
        v250 = v595;
        *(a3 + 40) = v598;
        *(a3 + 48) = 20;
        *(a3 + 52) = v477;
        if (v250)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 21:
      v237 = *(a2 + 8);
      v585 = &unk_28810E0B8;
      sub_2715EFF9C(v237, &v586, a4);
      v238 = v586;
      if (v586)
      {
        v239 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v239->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v239->__on_zero_shared)(v239);
            std::__shared_weak_count::__release_weak(v239);
          }

          v238 = v586;
          v240 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v240->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v241 = v238;
              (v240->__on_zero_shared)(v240);
              std::__shared_weak_count::__release_weak(v240);
              v238 = v241;
            }
          }
        }

        (*(*v238 + 32))(&v607);
        v242 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 1);
        v583 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v584 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v584;
        *(a3 + 32) = v610;
        *(a3 + 40) = v242;
        *(a3 + 48) = 21;
        *(a3 + 52) = v583;
        v516 = v607;
        v607 = 0;
        if (v516)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v593 = &unk_28810F538;
        sub_271316588(&v585, &v594);
        v508 = v594;
        v507 = v595;
        if (v595)
        {
          atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v607 = v508;
        v608 = v507;
        v609 = 0;
        v610 = 0;
        v509 = v597;
        v510 = v596;
        sub_2717F1B04(&v605, v602, 3, v603, 3, 1);
        v511 = v510 | 0x100000000;
        v512 = v604;
        if (!v509)
        {
          v511 = 0;
        }

        *a3 = v508;
        *(a3 + 8) = v507;
        v513 = v605;
        *(a3 + 16) = v511;
        *(a3 + 24) = v513;
        *(a3 + 32) = v606;
        v250 = v595;
        *(a3 + 40) = v598;
        *(a3 + 48) = 21;
        *(a3 + 52) = v512;
        if (v250)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 22:
      v83 = *(a2 + 8);
      v585 = &unk_28810DFF8;
      sub_271689E08(v83, &v586, a4);
      v84 = v586;
      if (v586)
      {
        v85 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v85->__on_zero_shared)(v85);
            std::__shared_weak_count::__release_weak(v85);
          }

          v84 = v586;
          v86 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v86->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v87 = v84;
              (v86->__on_zero_shared)(v86);
              std::__shared_weak_count::__release_weak(v86);
              v84 = v87;
            }
          }
        }

        (*(*v84 + 32))(&v607);
        v88 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 2);
        v539 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v540 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v540;
        *(a3 + 32) = v610;
        *(a3 + 40) = v88;
        *(a3 + 48) = 22;
        *(a3 + 52) = v539;
        v516 = v607;
        v607 = 0;
        if (v516)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v593 = &unk_28810F478;
        sub_27131752C(&v585, &v594);
        v329 = v594;
        v328 = v595;
        if (v595)
        {
          atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v607 = v329;
        v608 = v328;
        v609 = 0;
        v610 = 0;
        v330 = v597;
        v331 = v596;
        sub_2717F1B04(&v605, v602, 3, v603, 3, 2);
        v332 = v604;
        v333 = (2 * v331) | 0x100000000;
        if (!v330)
        {
          v333 = 0;
        }

        *a3 = v329;
        *(a3 + 8) = v328;
        v334 = v605;
        *(a3 + 16) = v333;
        *(a3 + 24) = v334;
        *(a3 + 32) = v606;
        v250 = v595;
        *(a3 + 40) = v598;
        *(a3 + 48) = 22;
        *(a3 + 52) = v332;
        if (v250)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 23:
      v231 = *(a2 + 8);
      v585 = &unk_28810DF78;
      sub_27168A3A4(v231, &v586, a4);
      v232 = v586;
      if (v586)
      {
        v233 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v233->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v233->__on_zero_shared)(v233);
            std::__shared_weak_count::__release_weak(v233);
          }

          v232 = v586;
          v234 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v234->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v235 = v232;
              (v234->__on_zero_shared)(v234);
              std::__shared_weak_count::__release_weak(v234);
              v232 = v235;
            }
          }
        }

        (*(*v232 + 32))(&v607);
        v236 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 2);
        v581 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v582 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v582;
        *(a3 + 32) = v610;
        *(a3 + 40) = v236;
        *(a3 + 48) = 23;
        *(a3 + 52) = v581;
        v516 = v607;
        v607 = 0;
        if (v516)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v593 = &unk_28810F438;
        sub_2713182D4(&v585, &v594);
        v501 = v594;
        v500 = v595;
        if (v595)
        {
          atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v607 = v501;
        v608 = v500;
        v609 = 0;
        v610 = 0;
        v502 = v597;
        v503 = v596;
        sub_2717F1B04(&v605, v602, 3, v603, 3, 2);
        v504 = v604;
        v505 = (2 * v503) | 0x100000000;
        if (!v502)
        {
          v505 = 0;
        }

        *a3 = v501;
        *(a3 + 8) = v500;
        v506 = v605;
        *(a3 + 16) = v505;
        *(a3 + 24) = v506;
        *(a3 + 32) = v606;
        v250 = v595;
        *(a3 + 40) = v598;
        *(a3 + 48) = 23;
        *(a3 + 52) = v504;
        if (v250)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 24:
      v41 = *(a2 + 8);
      v585 = &unk_28810DEF8;
      sub_27168A940(v41, &v586, a4);
      v42 = v586;
      if (v586)
      {
        v43 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v43->__on_zero_shared)(v43);
            std::__shared_weak_count::__release_weak(v43);
          }

          v42 = v586;
          v44 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v45 = v42;
              (v44->__on_zero_shared)(v44);
              std::__shared_weak_count::__release_weak(v44);
              v42 = v45;
            }
          }
        }

        (*(*v42 + 32))(&v607);
        v46 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 4);
        v525 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v526 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v526;
        *(a3 + 32) = v610;
        *(a3 + 40) = v46;
        *(a3 + 48) = 24;
        *(a3 + 52) = v525;
        v516 = v607;
        v607 = 0;
        if (v516)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v593 = &unk_28810F3F8;
        sub_271319048(&v585, &v594);
        v280 = v594;
        v279 = v595;
        if (v595)
        {
          atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v607 = v280;
        v608 = v279;
        v609 = 0;
        v610 = 0;
        v281 = v597;
        v282 = v596;
        sub_2717F1B04(&v605, v602, 3, v603, 3, 4);
        v283 = v604;
        v284 = (4 * v282) | 0x100000000;
        if (!v281)
        {
          v284 = 0;
        }

        *a3 = v280;
        *(a3 + 8) = v279;
        v285 = v605;
        *(a3 + 16) = v284;
        *(a3 + 24) = v285;
        *(a3 + 32) = v606;
        v250 = v595;
        *(a3 + 40) = v598;
        *(a3 + 48) = 24;
        *(a3 + 52) = v283;
        if (v250)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 25:
      v23 = *(a2 + 8);
      v585 = &unk_28810DE38;
      sub_27168AEDC(v23, &v586, a4);
      v24 = v586;
      if (v586)
      {
        v25 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v25->__on_zero_shared)(v25);
            std::__shared_weak_count::__release_weak(v25);
          }

          v24 = v586;
          v26 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v27 = v24;
              (v26->__on_zero_shared)(v26);
              std::__shared_weak_count::__release_weak(v26);
              v24 = v27;
            }
          }
        }

        (*(*v24 + 32))(&v607);
        v28 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 1);
        v519 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v520 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v520;
        *(a3 + 32) = v610;
        *(a3 + 40) = v28;
        *(a3 + 48) = 25;
        *(a3 + 52) = v519;
        v516 = v607;
        v607 = 0;
        if (v516)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v593 = &unk_28810F338;
        sub_27131A04C(&v585, &v594);
        v259 = v594;
        v258 = v595;
        if (v595)
        {
          atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v607 = v259;
        v608 = v258;
        v609 = 0;
        v610 = 0;
        v260 = v597;
        v261 = v596;
        sub_2717F1B04(&v605, v602, 3, v603, 3, 1);
        v262 = v261 | 0x100000000;
        v263 = v604;
        if (!v260)
        {
          v262 = 0;
        }

        *a3 = v259;
        *(a3 + 8) = v258;
        v264 = v605;
        *(a3 + 16) = v262;
        *(a3 + 24) = v264;
        *(a3 + 32) = v606;
        v250 = v595;
        *(a3 + 40) = v598;
        *(a3 + 48) = 25;
        *(a3 + 52) = v263;
        if (v250)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 26:
      v89 = *(a2 + 8);
      v585 = &unk_28810DDB8;
      sub_27168B474(v89, &v586, a4);
      v90 = v586;
      if (v586)
      {
        v91 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v91->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v91->__on_zero_shared)(v91);
            std::__shared_weak_count::__release_weak(v91);
          }

          v90 = v586;
          v92 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v92->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v93 = v90;
              (v92->__on_zero_shared)(v92);
              std::__shared_weak_count::__release_weak(v92);
              v90 = v93;
            }
          }
        }

        (*(*v90 + 32))(&v607);
        v94 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 2);
        v541 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v542 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v542;
        *(a3 + 32) = v610;
        *(a3 + 40) = v94;
        *(a3 + 48) = 26;
        *(a3 + 52) = v541;
        v516 = v607;
        v607 = 0;
        if (v516)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v593 = &unk_28810F2F8;
        sub_27131AD94(&v585, &v594);
        v336 = v594;
        v335 = v595;
        if (v595)
        {
          atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v607 = v336;
        v608 = v335;
        v609 = 0;
        v610 = 0;
        v337 = v597;
        v338 = v596;
        sub_2717F1B04(&v605, v602, 3, v603, 3, 2);
        v339 = v604;
        v340 = (2 * v338) | 0x100000000;
        if (!v337)
        {
          v340 = 0;
        }

        *a3 = v336;
        *(a3 + 8) = v335;
        v341 = v605;
        *(a3 + 16) = v340;
        *(a3 + 24) = v341;
        *(a3 + 32) = v606;
        v250 = v595;
        *(a3 + 40) = v598;
        *(a3 + 48) = 26;
        *(a3 + 52) = v339;
        if (v250)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 27:
      v11 = *(a2 + 8);
      v585 = &unk_28810DD38;
      sub_27168BA10(v11, &v586, a4);
      v12 = v586;
      if (v586)
      {
        v13 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v13->__on_zero_shared)(v13);
            std::__shared_weak_count::__release_weak(v13);
          }

          v12 = v586;
          v14 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v15 = v12;
              (v14->__on_zero_shared)(v14);
              std::__shared_weak_count::__release_weak(v14);
              v12 = v15;
            }
          }
        }

        (*(*v12 + 32))(&v607);
        v16 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 2);
        v514 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v515 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v515;
        *(a3 + 32) = v610;
        *(a3 + 40) = v16;
        *(a3 + 48) = 27;
        *(a3 + 52) = v514;
        v516 = v607;
        v607 = 0;
        if (v516)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v593 = &unk_28810F2B8;
        sub_27131BB3C(&v585, &v594);
        v244 = v594;
        v243 = v595;
        if (v595)
        {
          atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v607 = v244;
        v608 = v243;
        v609 = 0;
        v610 = 0;
        v245 = v597;
        v246 = v596;
        sub_2717F1B04(&v605, v602, 3, v603, 3, 2);
        v247 = v604;
        v248 = (2 * v246) | 0x100000000;
        if (!v245)
        {
          v248 = 0;
        }

        *a3 = v244;
        *(a3 + 8) = v243;
        v249 = v605;
        *(a3 + 16) = v248;
        *(a3 + 24) = v249;
        *(a3 + 32) = v606;
        v250 = v595;
        *(a3 + 40) = v598;
        *(a3 + 48) = 27;
        *(a3 + 52) = v247;
        if (v250)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 28:
      v112 = *(a2 + 8);
      v585 = &unk_28810DCB8;
      sub_27168BFAC(v112, &v586, a4);
      v113 = v586;
      if (v586)
      {
        v114 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v114->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v114->__on_zero_shared)(v114);
            std::__shared_weak_count::__release_weak(v114);
          }

          v113 = v586;
          v115 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v115->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v116 = v113;
              (v115->__on_zero_shared)(v115);
              std::__shared_weak_count::__release_weak(v115);
              v113 = v116;
            }
          }
        }

        (*(*v113 + 32))(&v607);
        v117 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 4);
        v547 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v548 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v548;
        *(a3 + 32) = v610;
        *(a3 + 40) = v117;
        *(a3 + 48) = 28;
        *(a3 + 52) = v547;
        v516 = v607;
        v607 = 0;
        if (v516)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v593 = &unk_28810F278;
        sub_27131C8B0(&v585, &v594);
        v363 = v594;
        v362 = v595;
        if (v595)
        {
          atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v607 = v363;
        v608 = v362;
        v609 = 0;
        v610 = 0;
        v364 = v597;
        v365 = v596;
        sub_2717F1B04(&v605, v602, 3, v603, 3, 4);
        v366 = v604;
        v367 = (4 * v365) | 0x100000000;
        if (!v364)
        {
          v367 = 0;
        }

        *a3 = v363;
        *(a3 + 8) = v362;
        v368 = v605;
        *(a3 + 16) = v367;
        *(a3 + 24) = v368;
        *(a3 + 32) = v606;
        v250 = v595;
        *(a3 + 40) = v598;
        *(a3 + 48) = 28;
        *(a3 + 52) = v366;
        if (v250)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 29:
      v35 = *(a2 + 8);
      v585 = &unk_28810DC38;
      sub_27168C548(v35, &v586, a4);
      v36 = v586;
      if (v586)
      {
        v37 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v37->__on_zero_shared)(v37);
            std::__shared_weak_count::__release_weak(v37);
          }

          v36 = v586;
          v38 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v39 = v36;
              (v38->__on_zero_shared)(v38);
              std::__shared_weak_count::__release_weak(v38);
              v36 = v39;
            }
          }
        }

        (*(*v36 + 32))(&v607);
        v40 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 1);
        v523 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v524 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v524;
        *(a3 + 32) = v610;
        *(a3 + 40) = v40;
        *(a3 + 48) = 29;
        *(a3 + 52) = v523;
        v516 = v607;
        v607 = 0;
        if (v516)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v593 = &unk_28810F1F8;
        sub_27131D658(&v585, &v594);
        v273 = v594;
        v272 = v595;
        if (v595)
        {
          atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v607 = v273;
        v608 = v272;
        v609 = 0;
        v610 = 0;
        v274 = v597;
        v275 = v596;
        sub_2717F1B04(&v605, v602, 3, v603, 3, 1);
        v276 = v275 | 0x100000000;
        v277 = v604;
        if (!v274)
        {
          v276 = 0;
        }

        *a3 = v273;
        *(a3 + 8) = v272;
        v278 = v605;
        *(a3 + 16) = v276;
        *(a3 + 24) = v278;
        *(a3 + 32) = v606;
        v250 = v595;
        *(a3 + 40) = v598;
        *(a3 + 48) = 29;
        *(a3 + 52) = v277;
        if (v250)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 30:
      v130 = *(a2 + 8);
      v585 = &unk_28810DAF8;
      sub_27168CAE0(v130, &v586, a4);
      v131 = v586;
      if (v586)
      {
        v132 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v132->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v132->__on_zero_shared)(v132);
            std::__shared_weak_count::__release_weak(v132);
          }

          v131 = v586;
          v133 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v133->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v134 = v131;
              (v133->__on_zero_shared)(v133);
              std::__shared_weak_count::__release_weak(v133);
              v131 = v134;
            }
          }
        }

        (*(*v131 + 32))(&v607);
        v135 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 2);
        v551 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v552 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v552;
        *(a3 + 32) = v610;
        *(a3 + 40) = v135;
        *(a3 + 48) = 30;
        *(a3 + 52) = v551;
        v516 = v607;
        v607 = 0;
        if (v516)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v593 = &unk_28810F0F8;
        sub_27131E3A0(&v585, &v594);
        v382 = v594;
        v381 = v595;
        if (v595)
        {
          atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v607 = v382;
        v608 = v381;
        v609 = 0;
        v610 = 0;
        v383 = v597;
        v384 = v596;
        sub_2717F1B04(&v605, v602, 3, v603, 3, 2);
        v385 = v604;
        v386 = (2 * v384) | 0x100000000;
        if (!v383)
        {
          v386 = 0;
        }

        *a3 = v382;
        *(a3 + 8) = v381;
        v387 = v605;
        *(a3 + 16) = v386;
        *(a3 + 24) = v387;
        *(a3 + 32) = v606;
        v250 = v595;
        *(a3 + 40) = v598;
        *(a3 + 48) = 30;
        *(a3 + 52) = v385;
        if (v250)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 31:
      v95 = *(a2 + 8);
      v585 = &unk_28810DA38;
      sub_27168D07C(v95, &v586, a4);
      v96 = v586;
      if (v586)
      {
        v97 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v97->__on_zero_shared)(v97);
            std::__shared_weak_count::__release_weak(v97);
          }

          v96 = v586;
          v98 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v98->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v99 = v96;
              (v98->__on_zero_shared)(v98);
              std::__shared_weak_count::__release_weak(v98);
              v96 = v99;
            }
          }
        }

        (*(*v96 + 32))(&v607);
        v100 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 2);
        v531 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v543 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v543;
        *(a3 + 32) = v610;
        *(a3 + 40) = v100;
        v533 = 31;
        goto LABEL_656;
      }

      v593 = &unk_28810F038;
      sub_27131F3A4(&v585, &v594);
      v343 = v594;
      v342 = v595;
      if (v595)
      {
        atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v607 = v343;
      v608 = v342;
      v609 = 0;
      v610 = 0;
      v344 = v597;
      v345 = v596;
      sub_2717F1B04(&v605, v602, 3, v603, 3, 2);
      v304 = v604;
      v346 = (2 * v345) | 0x100000000;
      if (!v344)
      {
        v346 = 0;
      }

      *a3 = v343;
      *(a3 + 8) = v342;
      v347 = v605;
      *(a3 + 16) = v346;
      *(a3 + 24) = v347;
      *(a3 + 32) = v606;
      v250 = v595;
      *(a3 + 40) = v598;
      v307 = 31;
      goto LABEL_568;
    case 32:
      v142 = *(a2 + 8);
      v585 = &unk_28810D978;
      sub_27168D618(v142, &v586, a4);
      v143 = v586;
      if (v586)
      {
        v144 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v144->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v144->__on_zero_shared)(v144);
            std::__shared_weak_count::__release_weak(v144);
          }

          v143 = v586;
          v145 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v145->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v146 = v143;
              (v145->__on_zero_shared)(v145);
              std::__shared_weak_count::__release_weak(v145);
              v143 = v146;
            }
          }
        }

        (*(*v143 + 32))(&v607);
        v147 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 4);
        v531 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v554 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v554;
        *(a3 + 32) = v610;
        *(a3 + 40) = v147;
        v533 = 32;
        goto LABEL_656;
      }

      v593 = &unk_28810EF78;
      sub_271320374(&v585, &v594);
      v395 = v594;
      v394 = v595;
      if (v595)
      {
        atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v607 = v395;
      v608 = v394;
      v609 = 0;
      v610 = 0;
      v396 = v597;
      v397 = v596;
      sub_2717F1B04(&v605, v602, 3, v603, 3, 4);
      v304 = v604;
      v398 = (4 * v397) | 0x100000000;
      if (!v396)
      {
        v398 = 0;
      }

      *a3 = v395;
      *(a3 + 8) = v394;
      v399 = v605;
      *(a3 + 16) = v398;
      *(a3 + 24) = v399;
      *(a3 + 32) = v606;
      v250 = v595;
      *(a3 + 40) = v598;
      v307 = 32;
      goto LABEL_568;
    case 33:
      v201 = *(a2 + 8);
      v585 = &unk_28810D8F8;
      sub_27168DBB4(v201, &v586, a4);
      v202 = v586;
      if (v586)
      {
        v203 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v203->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v203->__on_zero_shared)(v203);
            std::__shared_weak_count::__release_weak(v203);
          }

          v202 = v586;
          v204 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v204->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v205 = v202;
              (v204->__on_zero_shared)(v204);
              std::__shared_weak_count::__release_weak(v204);
              v202 = v205;
            }
          }
        }

        (*(*v202 + 32))(&v607);
        v206 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 1);
        v531 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v572 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v572;
        *(a3 + 32) = v610;
        *(a3 + 40) = v206;
        v533 = 33;
        goto LABEL_656;
      }

      v593 = &unk_28810EEF8;
      sub_27132111C(&v585, &v594);
      v468 = v594;
      v467 = v595;
      if (v595)
      {
        atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v607 = v468;
      v608 = v467;
      v609 = 0;
      v610 = 0;
      v469 = v597;
      v470 = v596;
      sub_2717F1B04(&v605, v602, 3, v603, 3, 1);
      v471 = v470 | 0x100000000;
      v450 = v604;
      if (!v469)
      {
        v471 = 0;
      }

      *a3 = v468;
      *(a3 + 8) = v467;
      v472 = v605;
      *(a3 + 16) = v471;
      *(a3 + 24) = v472;
      *(a3 + 32) = v606;
      v250 = v595;
      *(a3 + 40) = v598;
      v452 = 33;
      goto LABEL_555;
    case 34:
      v136 = *(a2 + 8);
      v585 = &unk_28810D878;
      sub_27168E14C(v136, &v586, a4);
      v137 = v586;
      if (v586)
      {
        v138 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v138->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v138->__on_zero_shared)(v138);
            std::__shared_weak_count::__release_weak(v138);
          }

          v137 = v586;
          v139 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v139->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v140 = v137;
              (v139->__on_zero_shared)(v139);
              std::__shared_weak_count::__release_weak(v139);
              v137 = v140;
            }
          }
        }

        (*(*v137 + 32))(&v607);
        v141 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 2);
        v531 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v553 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v553;
        *(a3 + 32) = v610;
        *(a3 + 40) = v141;
        v533 = 34;
        goto LABEL_656;
      }

      v593 = &unk_28810EEB8;
      sub_271321E64(&v585, &v594);
      v389 = v594;
      v388 = v595;
      if (v595)
      {
        atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v607 = v389;
      v608 = v388;
      v609 = 0;
      v610 = 0;
      v390 = v597;
      v391 = v596;
      sub_2717F1B04(&v605, v602, 3, v603, 3, 2);
      v304 = v604;
      v392 = (2 * v391) | 0x100000000;
      if (!v390)
      {
        v392 = 0;
      }

      *a3 = v389;
      *(a3 + 8) = v388;
      v393 = v605;
      *(a3 + 16) = v392;
      *(a3 + 24) = v393;
      *(a3 + 32) = v606;
      v250 = v595;
      *(a3 + 40) = v598;
      v307 = 34;
      goto LABEL_568;
    case 35:
      v124 = *(a2 + 8);
      v585 = &unk_28810D7F8;
      sub_27168E6E8(v124, &v586, a4);
      v125 = v586;
      if (v586)
      {
        v126 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v126->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v126->__on_zero_shared)(v126);
            std::__shared_weak_count::__release_weak(v126);
          }

          v125 = v586;
          v127 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v127->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v128 = v125;
              (v127->__on_zero_shared)(v127);
              std::__shared_weak_count::__release_weak(v127);
              v125 = v128;
            }
          }
        }

        (*(*v125 + 32))(&v607);
        v129 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 2);
        v531 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v550 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v550;
        *(a3 + 32) = v610;
        *(a3 + 40) = v129;
        v533 = 35;
        goto LABEL_656;
      }

      v593 = &unk_28810EE78;
      sub_271322C0C(&v585, &v594);
      v376 = v594;
      v375 = v595;
      if (v595)
      {
        atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v607 = v376;
      v608 = v375;
      v609 = 0;
      v610 = 0;
      v377 = v597;
      v378 = v596;
      sub_2717F1B04(&v605, v602, 3, v603, 3, 2);
      v304 = v604;
      v379 = (2 * v378) | 0x100000000;
      if (!v377)
      {
        v379 = 0;
      }

      *a3 = v376;
      *(a3 + 8) = v375;
      v380 = v605;
      *(a3 + 16) = v379;
      *(a3 + 24) = v380;
      *(a3 + 32) = v606;
      v250 = v595;
      *(a3 + 40) = v598;
      v307 = 35;
      goto LABEL_568;
    case 36:
      v118 = *(a2 + 8);
      v585 = &unk_28810D778;
      sub_27168EC84(v118, &v586, a4);
      v119 = v586;
      if (v586)
      {
        v120 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v120->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v120->__on_zero_shared)(v120);
            std::__shared_weak_count::__release_weak(v120);
          }

          v119 = v586;
          v121 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v121->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v122 = v119;
              (v121->__on_zero_shared)(v121);
              std::__shared_weak_count::__release_weak(v121);
              v119 = v122;
            }
          }
        }

        (*(*v119 + 32))(&v607);
        v123 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 4);
        v531 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v549 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v549;
        *(a3 + 32) = v610;
        *(a3 + 40) = v123;
        v533 = 36;
        goto LABEL_656;
      }

      v593 = &unk_28810EE38;
      sub_271323980(&v585, &v594);
      v370 = v594;
      v369 = v595;
      if (v595)
      {
        atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v607 = v370;
      v608 = v369;
      v609 = 0;
      v610 = 0;
      v371 = v597;
      v372 = v596;
      sub_2717F1B04(&v605, v602, 3, v603, 3, 4);
      v304 = v604;
      v373 = (4 * v372) | 0x100000000;
      if (!v371)
      {
        v373 = 0;
      }

      *a3 = v370;
      *(a3 + 8) = v369;
      v374 = v605;
      *(a3 + 16) = v373;
      *(a3 + 24) = v374;
      *(a3 + 32) = v606;
      v250 = v595;
      *(a3 + 40) = v598;
      v307 = 36;
      goto LABEL_568;
    case 37:
      v183 = *(a2 + 8);
      v585 = &unk_28810D6B8;
      sub_27168F220(v183, &v586, a4);
      v184 = v586;
      if (v586)
      {
        v185 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v185->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v185->__on_zero_shared)(v185);
            std::__shared_weak_count::__release_weak(v185);
          }

          v184 = v586;
          v186 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v186->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v187 = v184;
              (v186->__on_zero_shared)(v186);
              std::__shared_weak_count::__release_weak(v186);
              v184 = v187;
            }
          }
        }

        (*(*v184 + 32))(&v607);
        v188 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 1);
        v531 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v567 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v567;
        *(a3 + 32) = v610;
        *(a3 + 40) = v188;
        v533 = 37;
        goto LABEL_656;
      }

      v593 = &unk_28810ED78;
      sub_271324984(&v585, &v594);
      v446 = v594;
      v445 = v595;
      if (v595)
      {
        atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v607 = v446;
      v608 = v445;
      v609 = 0;
      v610 = 0;
      v447 = v597;
      v448 = v596;
      sub_2717F1B04(&v605, v602, 3, v603, 3, 1);
      v449 = v448 | 0x100000000;
      v450 = v604;
      if (!v447)
      {
        v449 = 0;
      }

      *a3 = v446;
      *(a3 + 8) = v445;
      v451 = v605;
      *(a3 + 16) = v449;
      *(a3 + 24) = v451;
      *(a3 + 32) = v606;
      v250 = v595;
      *(a3 + 40) = v598;
      v452 = 37;
LABEL_555:
      *(a3 + 48) = v452;
      *(a3 + 52) = v450;
      if (!v250)
      {
        goto LABEL_658;
      }

      goto LABEL_569;
    case 38:
      v213 = *(a2 + 8);
      v585 = &unk_28810D5F8;
      sub_27168F7B8(v213, &v586, a4);
      v214 = v586;
      if (v586)
      {
        v215 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v215->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v215->__on_zero_shared)(v215);
            std::__shared_weak_count::__release_weak(v215);
          }

          v214 = v586;
          v216 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v216->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v217 = v214;
              (v216->__on_zero_shared)(v216);
              std::__shared_weak_count::__release_weak(v216);
              v214 = v217;
            }
          }
        }

        (*(*v214 + 32))(&v607);
        v218 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 2);
        v531 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v575 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v575;
        *(a3 + 32) = v610;
        *(a3 + 40) = v218;
        v533 = 38;
        goto LABEL_656;
      }

      v593 = &unk_28810ECB8;
      sub_271325928(&v585, &v594);
      v481 = v594;
      v480 = v595;
      if (v595)
      {
        atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v607 = v481;
      v608 = v480;
      v609 = 0;
      v610 = 0;
      v482 = v597;
      v483 = v596;
      sub_2717F1B04(&v605, v602, 3, v603, 3, 2);
      v304 = v604;
      v484 = (2 * v483) | 0x100000000;
      if (!v482)
      {
        v484 = 0;
      }

      *a3 = v481;
      *(a3 + 8) = v480;
      v485 = v605;
      *(a3 + 16) = v484;
      *(a3 + 24) = v485;
      *(a3 + 32) = v606;
      v250 = v595;
      *(a3 + 40) = v598;
      v307 = 38;
      goto LABEL_568;
    case 39:
      v77 = *(a2 + 8);
      v585 = &unk_28810D578;
      sub_27168FD54(v77, &v586, a4);
      v78 = v586;
      if (v586)
      {
        v79 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v79->__on_zero_shared)(v79);
            std::__shared_weak_count::__release_weak(v79);
          }

          v78 = v586;
          v80 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v81 = v78;
              (v80->__on_zero_shared)(v80);
              std::__shared_weak_count::__release_weak(v80);
              v78 = v81;
            }
          }
        }

        (*(*v78 + 32))(&v607);
        v82 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 2);
        v531 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v538 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v538;
        *(a3 + 32) = v610;
        *(a3 + 40) = v82;
        v533 = 39;
        goto LABEL_656;
      }

      v593 = &unk_28810EC78;
      sub_2713266D0(&v585, &v594);
      v323 = v594;
      v322 = v595;
      if (v595)
      {
        atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v607 = v323;
      v608 = v322;
      v609 = 0;
      v610 = 0;
      v324 = v597;
      v325 = v596;
      sub_2717F1B04(&v605, v602, 3, v603, 3, 2);
      v304 = v604;
      v326 = (2 * v325) | 0x100000000;
      if (!v324)
      {
        v326 = 0;
      }

      *a3 = v323;
      *(a3 + 8) = v322;
      v327 = v605;
      *(a3 + 16) = v326;
      *(a3 + 24) = v327;
      *(a3 + 32) = v606;
      v250 = v595;
      *(a3 + 40) = v598;
      v307 = 39;
      goto LABEL_568;
    case 40:
      v59 = *(a2 + 8);
      v585 = &unk_28810D438;
      sub_2716902F0(v59, &v586, a4);
      v60 = v586;
      if (v586)
      {
        v61 = v587;
        if (v587)
        {
          atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v61->__on_zero_shared)(v61);
            std::__shared_weak_count::__release_weak(v61);
          }

          v60 = v586;
          v62 = v587;
          if (v587)
          {
            atomic_fetch_add_explicit(&v587->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v63 = v60;
              (v62->__on_zero_shared)(v62);
              std::__shared_weak_count::__release_weak(v62);
              v60 = v63;
            }
          }
        }

        (*(*v60 + 32))(&v607);
        v64 = (*(*v607 + 48))(v607);
        v593 = v607;
        if (v607)
        {
          operator new();
        }

        v594 = 0;
        v607 = 0;
        sub_2717F1B04(&v609, &v588, 3, v590, 3, 4);
        v531 = v592;
        *a3 = 0;
        *(a3 + 8) = 0;
        v532 = v609;
        *(a3 + 16) = 0;
        *(a3 + 24) = v532;
        *(a3 + 32) = v610;
        *(a3 + 40) = v64;
        v533 = 40;
LABEL_656:
        *(a3 + 48) = v533;
        *(a3 + 52) = v531;
        v516 = v607;
        v607 = 0;
        if (v516)
        {
LABEL_657:
          (*(*v516 + 8))(v516);
        }
      }

      else
      {
        v593 = &unk_28810EB78;
        sub_271327444(&v585, &v594);
        v301 = v594;
        v300 = v595;
        if (v595)
        {
          atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v607 = v301;
        v608 = v300;
        v609 = 0;
        v610 = 0;
        v302 = v597;
        v303 = v596;
        sub_2717F1B04(&v605, v602, 3, v603, 3, 4);
        v304 = v604;
        v305 = (4 * v303) | 0x100000000;
        if (!v302)
        {
          v305 = 0;
        }

        *a3 = v301;
        *(a3 + 8) = v300;
        v306 = v605;
        *(a3 + 16) = v305;
        *(a3 + 24) = v306;
        *(a3 + 32) = v606;
        v250 = v595;
        *(a3 + 40) = v598;
        v307 = 40;
LABEL_568:
        *(a3 + 48) = v307;
        *(a3 + 52) = v304;
        if (v250)
        {
LABEL_569:
          if (!atomic_fetch_add(&v250->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v250->__on_zero_shared)(v250);
            std::__shared_weak_count::__release_weak(v250);
          }
        }
      }

LABEL_658:
      v576 = v587;
      if (v587)
      {
        if (!atomic_fetch_add(&v587->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v576->__on_zero_shared)(v576);
          std::__shared_weak_count::__release_weak(v576);
        }
      }

      return;
    default:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
  }
}