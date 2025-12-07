uint64_t rijndaelKeySetupEnc(unsigned int *a1, unsigned int *a2, int a3)
{
  v3 = bswap32(*a2);
  *a1 = v3;
  v4 = bswap32(a2[1]);
  a1[1] = v4;
  v5 = bswap32(a2[2]);
  a1[2] = v5;
  v6 = bswap32(a2[3]);
  a1[3] = v6;
  if (a3 == 128)
  {
    v7 = 0;
    v8 = a1 + 4;
    do
    {
      v9 = *(v8 - 1);
      v3 ^= (Te4[4 * BYTE2(v9) + 3] << 24) ^ (Te4[4 * BYTE1(v9) + 2] << 16) ^ (Te4[4 * v9 + 1] << 8) ^ Te4[(v9 >> 22) & 0x3FC] ^ rcon[v7];
      v10 = *(v8 - 2);
      v11 = *(v8 - 3) ^ v3;
      *v8 = v3;
      v8[1] = v11;
      v12 = v10 ^ v11;
      v8[2] = v12;
      v8[3] = v12 ^ v9;
      ++v7;
      v8 += 4;
    }

    while (v7 != 10);
    return 10;
  }

  else
  {
    a1[4] = bswap32(a2[4]);
    v14 = bswap32(a2[5]);
    a1[5] = v14;
    if (a3 == 192)
    {
      v15 = 0;
      for (i = a1 + 11; ; i += 6)
      {
        v3 ^= (Te4[4 * BYTE2(v14) + 3] << 24) ^ (Te4[4 * BYTE1(v14) + 2] << 16) ^ (Te4[4 * v14 + 1] << 8) ^ Te4[4 * HIBYTE(v14)] ^ rcon[v15];
        v4 ^= v3;
        *(i - 5) = v3;
        *(i - 4) = v4;
        v5 ^= v4;
        v6 ^= v5;
        *(i - 3) = v5;
        *(i - 2) = v6;
        if (v15 == 7)
        {
          break;
        }

        v17 = *(i - 7) ^ v6;
        v14 ^= v17;
        *(i - 1) = v17;
        *i = v14;
        ++v15;
      }

      return 12;
    }

    else
    {
      a1[6] = bswap32(a2[6]);
      v18 = bswap32(a2[7]);
      a1[7] = v18;
      if (a3 == 256)
      {
        v19 = 0;
        for (j = a1 + 8; ; j += 8)
        {
          v3 ^= (Te4[4 * BYTE2(v18) + 3] << 24) ^ (Te4[4 * BYTE1(v18) + 2] << 16) ^ (Te4[4 * v18 + 1] << 8) ^ Te4[4 * HIBYTE(v18)] ^ rcon[v19];
          v4 ^= v3;
          *j = v3;
          j[1] = v4;
          v5 ^= v4;
          v6 ^= v5;
          j[2] = v5;
          j[3] = v6;
          if (v19 == 6)
          {
            break;
          }

          v21 = *(j - 4) ^ (Te4[4 * HIBYTE(v6) + 3] << 24) ^ (Te4[4 * BYTE2(v6) + 2] << 16) ^ (Te4[4 * BYTE1(v6) + 1] << 8) ^ Te4[4 * v6];
          v22 = *(j - 3) ^ v21;
          j[4] = v21;
          j[5] = v22;
          v23 = *(j - 2) ^ v22;
          v18 ^= v23;
          j[6] = v23;
          j[7] = v18;
          ++v19;
        }

        return 14;
      }

      else
      {
        return 0;
      }
    }
  }
}

_DWORD *rijndaelEncrypt(_DWORD *result, int a2, unsigned int *a3, _DWORD *a4)
{
  v4 = bswap32(*a3) ^ *result;
  v5 = bswap32(a3[1]) ^ result[1];
  v6 = a3[3];
  v7 = bswap32(a3[2]) ^ result[2];
  v8 = bswap32(v6) ^ result[3];
  v9 = result + 6;
  for (i = (a2 >> 1) - 1; ; --i)
  {
    v11 = Te1[BYTE2(v5)] ^ Te0[HIBYTE(v4)] ^ Te2[BYTE1(v7)] ^ Te3[v8] ^ *(v9 - 2);
    v12 = Te1[BYTE2(v7)] ^ Te0[HIBYTE(v5)] ^ Te2[BYTE1(v8)] ^ Te3[v4] ^ *(v9 - 1);
    v13 = Te1[BYTE2(v8)] ^ Te0[HIBYTE(v7)] ^ Te2[BYTE1(v4)] ^ Te3[v5] ^ *v9;
    v14 = Te1[BYTE2(v4)] ^ Te0[HIBYTE(v8)] ^ Te2[BYTE1(v5)] ^ Te3[v7] ^ v9[1];
    v15 = HIBYTE(v11);
    v16 = HIBYTE(v12);
    v17 = BYTE1(v14);
    v18 = HIBYTE(v13);
    v19 = BYTE2(v14);
    v20 = BYTE1(v11);
    v21 = HIBYTE(v14);
    v22 = BYTE2(v11);
    if (!i)
    {
      break;
    }

    v23 = Te1[BYTE2(v12)] ^ Te0[v15] ^ Te2[BYTE1(v13)] ^ Te3[v14];
    v24 = v9[2];
    v25 = v9[3];
    v26 = v9[4];
    v27 = v9[5];
    v9 += 8;
    v4 = v23 ^ v24;
    v5 = Te1[BYTE2(v13)] ^ Te0[v16] ^ Te2[v17] ^ Te3[v11] ^ v25;
    v28 = Te0[v21];
    v29 = Te1[v22];
    v7 = Te1[v19] ^ Te0[v18] ^ Te2[v20] ^ Te3[v12] ^ v26;
    v8 = v29 ^ v28 ^ Te2[BYTE1(v12)] ^ Te3[v13] ^ v27;
  }

  v30 = &result[8 * ((a2 >> 1) - 1)];
  *a4 = bswap32(((Te4[4 * v15 + 3] << 24) | (Te4[4 * BYTE2(v12) + 2] << 16) | (Te4[4 * BYTE1(v13) + 1] << 8) | Te4[4 * v14]) ^ v30[8]);
  a4[1] = bswap32(((Te4[4 * v16 + 3] << 24) | (Te4[4 * BYTE2(v13) + 2] << 16) | (Te4[4 * BYTE1(v14) + 1] << 8) | Te4[4 * v11]) ^ v30[9]);
  a4[2] = bswap32(((Te4[4 * v18 + 3] << 24) | (Te4[4 * BYTE2(v14) + 2] << 16) | (Te4[4 * BYTE1(v11) + 1] << 8) | Te4[4 * v12]) ^ v30[10]);
  a4[3] = bswap32(((Te4[4 * v21 + 3] << 24) | (Te4[4 * BYTE2(v11) + 2] << 16) | (Te4[4 * BYTE1(v12) + 1] << 8) | Te4[4 * v13]) ^ v30[11]);
  return result;
}

_DWORD *kdf(_DWORD *result, unsigned __int8 (*a2)[4][4], char a3, int a4)
{
  v4 = a4;
  v6 = result;
  v13 = *MEMORY[0x277D85DE8];
  *(&__src + 1) = 0xAAAAAAAAAAAAAAAALL;
  memset(v11, 0, sizeof(v11));
  *&__src = 0xAAAAAAAAAAAAAAAALL;
  v11[7] = a3;
  v12 = 1;
  if (a4 < 16)
  {
    v8 = a4;
    if (!a4)
    {
      return result;
    }

    goto LABEL_5;
  }

  v7 = 2;
  do
  {
    result = rijndaelEncrypt(a2, 10, v11, &__src);
    v8 = v4 - 16;
    *v6++ = __src;
    v12 = v7++;
    v9 = v4 > 0x1F;
    v4 -= 16;
  }

  while (v9);
  if (v8)
  {
LABEL_5:
    rijndaelEncrypt(a2, 10, v11, &__src);
    return memcpy(v6, &__src, v8);
  }

  return result;
}

unint64_t poly_hash(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = (a1 + 1208);
  do
  {
    v4 = *(a2 + v2);
    v5 = *(v3 - 4);
    v6 = HIDWORD(*v3);
    v7 = v5 * v6 + HIDWORD(v5) * *v3;
    v8 = v5 * *v3 + 59 * (HIDWORD(v7) + HIDWORD(v5) * v6);
    result = v8 + 59;
    if (v8 < v7 << 32)
    {
      v8 += 59;
    }

    if (v4 < 0xFFFFFFFF00000000)
    {
      v17 = v8 + v4;
      if (__CFADD__(v8, v4))
      {
        v17 = v8 + v4 + 59;
      }
    }

    else
    {
      if (v8 > 0x3B)
      {
        v10 = -1;
      }

      else
      {
        v10 = -60;
      }

      v11 = v10 + v8;
      *v3 = v11;
      v12 = *(a2 + v2);
      result = v12 - 59;
      v13 = HIDWORD(v11) * v5 + v11 * HIDWORD(v5);
      v14 = v11 * v5 + 59 * (HIDWORD(v13) + HIDWORD(v11) * HIDWORD(v5));
      if (v14 < v13 << 32)
      {
        v14 += 59;
      }

      v15 = __CFADD__(v14, result);
      v16 = v14 + result;
      v17 = v14 + v12;
      if (!v15)
      {
        v17 = v16;
      }
    }

    *v3++ = v17;
    v2 += 8;
  }

  while (v2 != 32);
  return result;
}

uint64_t ip_long(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = result + 1208;
  v4 = (result + 1264);
  do
  {
    v5 = *(v3 + 8 * v2);
    if (v5 >= 0xFFFFFFFFFFFFFFC5)
    {
      v5 += 59;
      *(v3 + 8 * v2) = v5;
    }

    v6 = *(v4 - 3) * HIWORD(v5) + *(v4 - 2) * WORD2(v5) + *(v4 - 1) * WORD1(v5) + *v4 * v5;
    v7 = v6 - 0xFFFFFFFFBLL * (v6 >> 36);
    if (v7 > 0xFFFFFFFFALL)
    {
      LODWORD(v7) = v7 + 5;
    }

    *(a2 + 4 * v2) = bswap32(*(result + 4 * v2 + 1368) ^ v7);
    ++v2;
    v4 += 4;
  }

  while (v2 != 4);
  return result;
}

uint64_t ip_short(uint64_t result, void *a2, _DWORD *a3)
{
  v3 = a2[1];
  v4 = *(result + 1240) * HIWORD(*a2) + *(result + 1248) * WORD2(*a2) + *(result + 1256) * WORD1(*a2) + *(result + 1264) * *a2;
  v5 = v4 - 0xFFFFFFFFBLL * (v4 >> 36);
  if (v5 > 0xFFFFFFFFALL)
  {
    LODWORD(v5) = v5 + 5;
  }

  *a3 = bswap32(*(result + 1368) ^ v5);
  v6 = *(result + 1272) * HIWORD(v3) + *(result + 1280) * WORD2(v3) + *(result + 1288) * WORD1(v3) + *(result + 1296) * v3;
  v7 = v6 - 0xFFFFFFFFBLL * (v6 >> 36);
  if (v7 > 0xFFFFFFFFALL)
  {
    LODWORD(v7) = v7 + 5;
  }

  a3[1] = bswap32(*(result + 1372) ^ v7);
  v8 = a2[3];
  v9 = *(result + 1304) * HIWORD(a2[2]) + *(result + 1312) * WORD2(a2[2]) + *(result + 1320) * WORD1(a2[2]) + *(result + 1328) * a2[2];
  v10 = v9 - 0xFFFFFFFFBLL * (v9 >> 36);
  if (v10 > 0xFFFFFFFFALL)
  {
    LODWORD(v10) = v10 + 5;
  }

  a3[2] = bswap32(*(result + 1376) ^ v10);
  v11 = *(result + 1336) * HIWORD(v8) + *(result + 1344) * WORD2(v8) + *(result + 1352) * WORD1(v8) + *(result + 1360) * v8;
  v12 = v11 - 0xFFFFFFFFBLL * (v11 >> 36);
  if (v12 > 0xFFFFFFFFALL)
  {
    LODWORD(v12) = v12 + 5;
  }

  a3[3] = bswap32(*(result + 1380) ^ v12);
  return result;
}

uint64_t uhash(int64x2_t *a1, unsigned __int8 *a2, uint64_t a3, _DWORD *a4)
{
  v5 = a3;
  v6 = a2;
  v19 = *MEMORY[0x277D85DE8];
  v8.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v8.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v17 = v8;
  v18 = v8;
  if (a3 >= 1025)
  {
    v10 = (a3 & 0xFFFFFC00) - 1024;
    v11 = a3 + 1024;
    v12 = 8 * a3;
    v13 = a3 - (((a3 & 0x3FF) + 31) & 0x7E0);
    v14 = &a2[a3 & 0x80000000000003FFLL];
    v16 = vdupq_n_s64(0x2000uLL);
    do
    {
      v17 = v16;
      v18 = v16;
      nh_aux(a1->i32, v6, v17.i64, 0x400u);
      poly_hash(a1, &v17);
      v6 += 1024;
      v11 -= 1024;
      v12 -= 0x2000;
      v13 -= 1024;
      v14 += 1024;
    }

    while (v11 > 0x7FF);
    if (v11 != 1024)
    {
      zero_pad(v14, -v13);
      v17.i64[0] = v12 & 0xFFFFFFF8;
      v17.i64[1] = v17.i64[0];
      v18.i64[0] = v17.i64[0];
      v18.i64[1] = v17.i64[0];
      nh_aux(a1->i32, v6, v17.i64, (v5 - v10 - 993) & 0xFFFFFFE0);
      poly_hash(a1, &v17);
    }

    ip_long(a1, a4);
  }

  else
  {
    if (a3)
    {
      v9 = (a3 + 31) & 0xFFFFFFE0;
    }

    else
    {
      v9 = 32;
    }

    zero_pad(&a2[a3], v9 - a3);
    v17.i64[0] = 8 * (v5 & 0x1FFFFFFF);
    v17.i64[1] = v17.i64[0];
    v18.i64[0] = v17.i64[0];
    v18.i64[1] = v17.i64[0];
    nh_aux(a1->i32, v6, v17.i64, v9);
    ip_short(a1, &v17, a4);
  }

  a1[73].i64[0] = 0;
  a1[72] = 0u;
  a1[71] = 0u;
  a1[86].i32[2] = 0;
  a1[75].i64[1] = 1;
  a1[76] = vdupq_n_s64(1uLL);
  a1[77].i64[0] = 1;
  return 1;
}

void zero_pad(unsigned __int8 *a1, int a2)
{
  v2 = a2;
  v3 = a1;
  if (a2 >= 8)
  {
    if ((a1 & 7) == 0 || (v4 = (~a1 & 7) + 1, bzero(a1, v4), v2 += v3 | 0xFFFFFFF8, v3 += v4, v2 >= 8))
    {
      v5 = v2 - 15;
      if (v2 < 0xF)
      {
        v5 = 0;
      }

      v6 = (v5 + 7) & 0xFFFFFFF8;
      bzero(v3, v6 + 8);
      v2 = v2 - v6 - 8;
      v3 += v6 + 8;
    }
  }

  if (v2)
  {

    bzero(v3, v2);
  }
}

void **umac_new(unsigned int *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = malloc_type_malloc(0x658uLL, 0x1020040B23A9D2DuLL);
  v3 = v2;
  if (v2)
  {
    *v2 = (((v2 + 1) & 0xFFFFFFFFFFFFFFF0) + 16);
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v20[9] = v4;
    v20[10] = v4;
    v20[7] = v4;
    v20[8] = v4;
    v20[5] = v4;
    v20[6] = v4;
    v20[3] = v4;
    v20[4] = v4;
    v20[1] = v4;
    v20[2] = v4;
    v20[0] = v4;
    rijndaelKeySetupEnc(v20, a1, 128);
    v5 = *v3;
    *&v21[0] = 0xAAAAAAAAAAAAAAAALL;
    *(&v21[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
    kdf(v21, v20, 0, 16);
    rijndaelKeySetupEnc(v5 + 356, v21, 128);
    *(v5 + 88) = 0u;
    rijndaelEncrypt(v5 + 356, 10, v5 + 352, v5 + 348);
    v6 = *v3;
    bzero(*v3, 0x570uLL);
    kdf(v6, v20, 1, 1072);
    for (i = 0; i != 1072; i += 16)
    {
      *&v6[i] = vrev32q_s8(*&v6[i]);
    }

    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v21[16] = v8;
    v21[17] = v8;
    v21[14] = v8;
    v21[15] = v8;
    v21[12] = v8;
    v21[13] = v8;
    v21[10] = v8;
    v21[11] = v8;
    v21[8] = v8;
    v21[9] = v8;
    v21[6] = v8;
    v21[7] = v8;
    v21[4] = v8;
    v21[5] = v8;
    v21[2] = v8;
    v21[3] = v8;
    v21[0] = v8;
    v21[1] = v8;
    *(v6 + 146) = 0;
    *(v6 + 72) = 0u;
    *(v6 + 71) = 0u;
    kdf(v21, v20, 2, 288);
    v9 = 0;
    v10 = v6 + 1176;
    do
    {
      v11 = bswap32(*(v21 + v9));
      *v10 = bswap32(*(v21 + v9 + 4));
      *(v10 + 1) = v11;
      *v10 &= 0x1FFFFFF01FFFFFFuLL;
      *(v10 + 4) = 1;
      v9 += 24;
      v10 += 8;
    }

    while (v9 != 96);
    kdf(v21, v20, 3, 288);
    v12 = v6 + 1240;
    v13 = 2;
    v14 = v6 + 1240;
    do
    {
      *v14 = v21[v13];
      v14[1] = v21[v13 + 1];
      v13 += 4;
      v14 += 2;
    }

    while (v13 != 18);
    for (j = 0; j != 128; j += 32)
    {
      v16 = &v12[j];
      v23 = vld2q_f32(v16);
      v24.val[0] = vrev32q_s8(v23.val[1]);
      v24.val[1] = vrev32q_s8(v23.val[0]);
      vst2q_f32(v16, v24);
    }

    for (k = 0; k != 128; k += 8)
    {
      *&v12[k] %= 0xFFFFFFFFBuLL;
    }

    v18 = (v6 + 1368);
    kdf(v18, v20, 4, 16);
    *v18 = vrev32q_s8(*v18);
  }

  return v3;
}

_DWORD *pdf_gen_xor(_DWORD *result, int *a2, void *a3)
{
  v4 = result;
  v5 = a2[1];
  if (*a2 != *(result + 2))
  {
    result[4] = *a2;
    result[5] = v5;
    result = rijndaelEncrypt(result + 8, 10, result + 4, result);
  }

  v6 = a3[1];
  *a3 ^= *v4;
  a3[1] = v6 ^ v4[1];
  return result;
}

uint64_t umac(int64x2_t **a1, unsigned __int8 *a2, uint64_t a3, _DWORD *a4, int *a5)
{
  uhash(*a1, a2, a3, a4);
  pdf_gen_xor((*a1)[87].i32, a5, a4);
  return 1;
}

uint64_t nh_aux(int *a1, _DWORD *a2, uint64_t *a3, unsigned int a4)
{
  v5 = *a3;
  v4 = a3[1];
  v6 = a4 >> 5;
  v8 = a3[2];
  v7 = a3[3];
  v10 = *a1;
  v9 = a1[1];
  v12 = a1[2];
  v11 = a1[3];
  v14 = a1[4];
  v13 = a1[5];
  v15 = a1 + 10;
  v16 = a1 + 10;
  v17 = a1[6];
  v18 = a1[7];
  do
  {
    v19 = a2[1];
    v21 = a2[4];
    v20 = a2[5];
    v22 = *a2 + v10;
    v23 = v19 + v9;
    v10 = *(v15 - 2);
    v9 = *(v15 - 1);
    v24 = v5 + (v21 + v14) * v22;
    v25 = *a2 + v14;
    v14 = v15[2];
    result = v15[3];
    v27 = v4 + (v10 + v21) * v25;
    v28 = v8 + (v14 + v21) * (v10 + *a2);
    v29 = v7 + (v15[6] + v21) * (v14 + *a2);
    v30 = a2[2];
    v31 = a2[3];
    v32 = v24 + (v20 + v13) * v23;
    v33 = v27 + (v9 + v20) * (v19 + v13);
    v34 = v28 + (result + v20) * (v9 + v19);
    v35 = a2[6];
    v36 = a2[7];
    v37 = *v15;
    v38 = v15[1];
    v39 = v29 + (v15[7] + v20) * (result + v19);
    v40 = v32 + (v35 + v17) * (v30 + v12);
    v41 = v30 + v17;
    v17 = v15[4];
    v42 = v15[5];
    v43 = v16[8];
    v16 += 8;
    v5 = v40 + (v36 + v18) * (v31 + v11);
    v4 = v33 + (*v15 + v35) * v41 + (v38 + v36) * (v31 + v18);
    v8 = v34 + (v17 + v35) * (*v15 + v30) + (v42 + v36) * (v38 + v31);
    v7 = v39 + (v43 + v35) * (v17 + v30) + (v15[9] + v36) * (v42 + v31);
    a2 += 8;
    v15 = v16;
    v12 = v37;
    v11 = v38;
    v13 = result;
    v18 = v42;
    --v6;
  }

  while (v6);
  *a3 = v5;
  a3[1] = v4;
  a3[2] = v8;
  a3[3] = v7;
  return result;
}

void CDX_SCDynamicStoreCallBack(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if ((a3[129] & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315650;
        v7 = v4;
        v8 = 2080;
        v9 = "CDX_SCDynamicStoreCallBack";
        v10 = 1024;
        v11 = 1090;
        _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, "CDXClient [%s] %s:%d network-did-change", &v6, 0x1Cu);
      }
    }

    a3[129] = 1;
    [a3 performSelector:sel_networkDidChange withObject:0 afterDelay:1.5];
  }
}

void OUTLINED_FUNCTION_9(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x26u);
}

BOOL OUTLINED_FUNCTION_13()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
}

BOOL OUTLINED_FUNCTION_14()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
}

void OUTLINED_FUNCTION_19(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0x1Cu);
}

uint64_t OUTLINED_FUNCTION_22@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  *(v2 - 24) = a2;

  return objc_msgSend_description(a1);
}

_DWORD *CDXVendorCreate(unsigned int *a1, int a2, unsigned int *a3)
{
  v6 = malloc_type_calloc(0x200uLL, 1uLL, 0x1020040B111F699uLL);
  v7 = v6;
  if (v6)
  {
    v6[126] = rijndaelKeySetupEnc(v6 + 4, a1, 128);
    rijndaelKeySetupEnc(v7 + 64, a3, 128);
    *v7 = umac_new(a1);
    *(v7 + 1) = umac_new(a3);
    *(v7 + 62) = a2;
  }

  return v7;
}

void CDXVendorRelease(void **a1)
{
  umac_delete(*a1);
  umac_delete(a1[1]);

  free(a1);
}

uint64_t CDXVendorCreateTicket(uint64_t a1, _BYTE *a2, size_t *a3, void *a4, const void *a5, size_t a6, unsigned int a7, unsigned int a8, uint64_t a9, char a10)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v18 = time(0);
  if (a3)
  {
    v19 = *a3;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_10:
    v20 = *MEMORY[0x277D85DF8];
    v21 = 102;
    goto LABEL_22;
  }

  v19 = 0;
  if (!a1)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (!a2)
  {
    v20 = *MEMORY[0x277D85DF8];
    v21 = 103;
    goto LABEL_22;
  }

  if (!a3)
  {
    v20 = *MEMORY[0x277D85DF8];
    v21 = 104;
    goto LABEL_22;
  }

  if (!a4)
  {
    v20 = *MEMORY[0x277D85DF8];
    v21 = 105;
    goto LABEL_22;
  }

  if (!a5 && a6)
  {
    v20 = *MEMORY[0x277D85DF8];
    v21 = 106;
LABEL_22:
    fprintf(v20, "/Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/CDX/cdxticketgen.c:%d: Assert Failed (%s)\n", v21, "");
    return 4294967294;
  }

  if (a8 >= a7)
  {
    v20 = *MEMORY[0x277D85DF8];
    v21 = 107;
    goto LABEL_22;
  }

  if ((a10 & 4) != 0)
  {
    v22 = 0;
  }

  else
  {
    v22 = v18;
  }

  v23 = a6 + 15;
  v24 = ((a6 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  *a3 = v24;
  if (v24 >= 0x500 && (a10 & 2) == 0)
  {
    fprintf(*MEMORY[0x277D85DF8], "/Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/CDX/cdxticketgen.c:%d: Assert Failed (%s)\n", 116, "");
    return 4294967291;
  }

  if (v24 >= v19)
  {
    fprintf(*MEMORY[0x277D85DF8], "/Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/CDX/cdxticketgen.c:%d: Assert Failed (%s)\n", 119, "");
    return 4294967293;
  }

  v26 = v22 + a9;
  bzero(a2, v19);
  *a2 = 0;
  a2[1] = a7;
  a2[2] = a8;
  *(a2 + 3) = bswap32(v26);
  a2[3] = v23 >> 4;
  *(a2 + 4) = *a4;
  v27 = *(a1 + 496);
  v28 = v26 < v27;
  v29 = v26 >= v27;
  LODWORD(v23) = (v23 >> 4);
  if (v28)
  {
    v30 = 16;
  }

  else
  {
    v30 = 256;
  }

  v31 = *(a1 + 8 * v29);
  memcpy(a2 + 16, a5, a6);
  if (a10)
  {
    if ((a6 & 0xF) != 0)
    {
      fprintf(*MEMORY[0x277D85DF8], "/Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/CDX/cdxticketgen.c:%d: Assert Failed (%s)\n", 150, "");
      return 4294967292;
    }
  }

  else if (v23)
  {
    v32 = 0;
    v33 = (a2 + 4);
    v34 = vld1q_dup_f64(v33);
    v35 = (a2 + 16);
    do
    {
      v36 = *(a1 + 504);
      *v35 = veorq_s8(*v35, v34);
      rijndaelEncrypt((a1 + v30), v36, v35, v35);
      v37 = *v35++;
      v34 = v37;
      ++v32;
      v23 = a2[3];
    }

    while (v32 < v23);
    LOBYTE(a8) = a2[2];
  }

  v38[0] = *(a2 + 4);
  LOBYTE(v38[0]) = a8;
  umac(v31, a2, 16 * v23 + 16, &a2[16 * v23 + 16], v38);
  return 0;
}

unsigned __int8 *CDXGetPreblobLength(unsigned __int8 *result)
{
  if (result)
  {
    v1 = *result;
    if (v1 < 7 && ((0x53u >> v1) & 1) != 0)
    {
      return qword_24E590678[v1];
    }

    else if ((v1 & 0x80) != 0)
    {
      return (v1 - 127);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL CDXVerifyPreblob(unsigned __int8 *a1, uint64_t a2)
{
  result = 0;
  if (a1 && (a2 - 1) <= 0x1F)
  {
    v4 = *a1;
    if (v4 < 2)
    {
      return a2 == 1;
    }

    if (v4 == 4)
    {
      return a2 == 7;
    }

    if (v4 == 6)
    {
      return a2 == 19;
    }

    result = 0;
    if (v4 < 0 && (v4 - 127) == a2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t AGPSendingSetElement::buffer(AGPSendingSetElement *this, unsigned __int8 *a2, __int32 a3, unsigned int a4, unsigned int a5, char a6)
{
  v48 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((this + 32));
  can_buffer = AGPAssociationSetElement::can_buffer(this, 1);
  if (!a2 || (a3 - 1) > 0x5DB || !can_buffer || a4 > a5)
  {
LABEL_5:
    if ((AGPAssociationSetElement::can_buffer(this, 1) & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        v37 = *(this + 27);
        v38 = 136316418;
        v39 = v13;
        v40 = 2080;
        v41 = "buffer";
        v42 = 1024;
        v43 = 744;
        v44 = 1024;
        *v45 = v37;
        *&v45[4] = 1024;
        *&v45[6] = a4;
        *v46 = 1024;
        *&v46[2] = a5;
        _os_log_error_impl(&dword_24E50C000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d buffer: CAN'T BUFFER (%08X:%02d:%02d)...", &v38, 0x2Eu);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        v36 = *(this + 27);
        v38 = 136316418;
        v39 = v15;
        v40 = 2080;
        v41 = "buffer";
        v42 = 1024;
        v43 = 746;
        v44 = 1024;
        *v45 = v36;
        *&v45[4] = 1024;
        *&v45[6] = a4;
        *v46 = 1024;
        *&v46[2] = a5;
        _os_log_error_impl(&dword_24E50C000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d buffer: FAILED TO BUFFER A RELIABLE PACKET SERIALNUMBER (%08X:%02d:%02d)...", &v38, 0x2Eu);
      }
    }

    v17 = 0xFFFFFFFFLL;
    goto LABEL_13;
  }

  v19 = *(this + 699);
  if (v19 > 0x3F)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v35 = *(this + 27);
        v38 = 136316418;
        v39 = v33;
        v40 = 2080;
        v41 = "buffer";
        v42 = 1024;
        v43 = 738;
        v44 = 1024;
        *v45 = v35;
        *&v45[4] = 1024;
        *&v45[6] = a4;
        *v46 = 1024;
        *&v46[2] = a5;
        _os_log_impl(&dword_24E50C000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d buffer: MAXIMUM PACKET WINDOW COUNT USED (%08X:%02d:%02d)...", &v38, 0x2Eu);
      }
    }

    goto LABEL_5;
  }

  *(this + 699) = v19 + 1;
  v17 = *(this + 697);
  *(this + 697) = (v17 + 1) & 0x3F;
  v20 = this + 8 * v17;
  *(*(v20 + 15) + 8) = *(*(v20 + 15) + 8) & 0xFFFFFFFE | AGPAssociationSetElement::can_buffer(this, 1) ^ 1;
  *(*(v20 + 15) + 8) |= 2u;
  *(*(v20 + 15) + 8) = *(*(v20 + 15) + 8) & 0xFFFFC0FF | ((v17 & 0x3F) << 8);
  *(*(v20 + 15) + 8) = *(*(v20 + 15) + 8) & 0xFFFFFF03 | (4 * (*(this + 698) & 0x3F));
  *(*(v20 + 15) + 8) = *(*(v20 + 15) + 8) & 0x3FFFFFF | (*(this + 697) << 26);
  *(*(v20 + 15) + 8) = *(*(v20 + 15) + 8) & 0xFFFFC0FF | ((v17 & 0x3F) << 8);
  *(*(v20 + 15) + 8) = *(*(v20 + 15) + 8) & 0xFFF03FFF | ((a4 & 0x3F) << 14);
  *(*(v20 + 15) + 8) = *(*(v20 + 15) + 8) & 0xFC0FFFFF | ((a5 & 0x3F) << 20);
  v21 = *(this + 27);
  *(this + 27) = v21 + 1;
  **(v20 + 15) = v21;
  v22 = CAGP::current_timestamp(*(this + 1));
  v23 = *(v20 + 15);
  *(v23 + 4) = v22;
  *(v23 + 12) = a3;
  *(this + v17 + 632) = a6;
  memcpy((*(v20 + 15) + 16), a2, a3);
  v24 = v17 - 32;
  if (v17 < 0x20)
  {
    v24 = v17;
  }

  v25 = 1 << v24;
  v26 = 100;
  if (v17 < 0x20)
  {
    v26 = 96;
  }

  *(this + v26) |= v25;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v27 = VRTraceErrorLogLevelToCSTR();
    v28 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(this + 1);
      v31 = *(this + 24);
      v30 = *(this + 25);
      v38 = 136316418;
      v39 = v27;
      v40 = 2080;
      v41 = "buffer";
      v42 = 1024;
      v43 = 734;
      v44 = 2048;
      *v45 = v29;
      *&v45[8] = 1024;
      *v46 = v30;
      *&v46[4] = 1024;
      v47 = v31;
      _os_log_impl(&dword_24E50C000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p buffer: send bitmap == %08X%08X", &v38, 0x32u);
    }
  }

  v32.i32[0] = 1;
  v32.i32[1] = a3;
  *(*(this + 1) + 368) = vadd_s32(*(*(this + 1) + 368), v32);
LABEL_13:
  pthread_mutex_unlock((this + 32));
  return v17;
}

uint64_t AGPAssociationSetElement::can_buffer(AGPAssociationSetElement *this, int a2)
{
  v30 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((this + 32));
  v4 = *(this + 698);
  v5 = *(this + 696);
  if (v4 == v5)
  {
    v6 = 0;
    if (!a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = ((((v5 - v4) & ~((v5 - v4) >> 31)) + v4 - v5 + 63) & 0xFFFFFFC0) + v5 - v4;
    if (!a2)
    {
      goto LABEL_6;
    }
  }

  if (64 - v6 - *(this + 699) >= a2)
  {
    v9 = 1;
    goto LABEL_11;
  }

LABEL_6:
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      v11 = *(this + 699);
      v12 = *(this + 696);
      v13 = *(this + 698);
      v14 = 136316930;
      v15 = v7;
      v16 = 2080;
      v17 = "can_buffer";
      v18 = 1024;
      v19 = 434;
      v20 = 1024;
      v21 = a2;
      v22 = 1024;
      v23 = v11;
      v24 = 1024;
      v25 = v12;
      v26 = 1024;
      v27 = v13;
      v28 = 1024;
      v29 = v6;
      _os_log_error_impl(&dword_24E50C000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d CAN'T BUFFER: num_packets == %d, used == %d, head == %d base == %d reserved == %d", &v14, 0x3Au);
    }
  }

  v9 = 0;
LABEL_11:
  pthread_mutex_unlock((this + 32));
  return v9;
}

uint64_t CAGP::current_timestamp(CAGP *this)
{
  v2 = *(this + 52);
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v6.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  if (!gettimeofday(&v6, 0))
  {
    v3 = (v6.tv_usec / 1000 + 1000 * (SLODWORD(v6.tv_sec) % 604800)) % 0x240C8400u;
    v2 = *(this + 52);
    if (v2 == -1 || (v2 > v3 ? (v4 = (v2 - v3) >= 0x12064201) : (v4 = 1), v4))
    {
      *(this + 52) = v3;
      return v3;
    }
  }

  return v2;
}

uint64_t AGPSendingSetElement::search(AGPSendingSetElement *this, int a2)
{
  pthread_mutex_lock((this + 32));
  v4 = *(this + 699);
  if (*(this + 699))
  {
    v5 = *(this + 696);
    while (**(this + v5 + 15) != a2)
    {
      v5 = (v5 + 1) & 0x3FLL;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v5 = 0xFFFFFFFFLL;
  }

  pthread_mutex_unlock((this + 32));
  return v5;
}

uint64_t AGPSendingSetElement::remove(AGPSendingSetElement *this, unsigned int a2)
{
  v52 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((this + 32));
  if (a2 > 0x3F || (v4 = this + 120, v5 = *(this + a2 + 15), (v6 = v5[3]) == 0))
  {
    v12 = 0;
    goto LABEL_38;
  }

  v7 = v5[379];
  v8 = *(this + 1);
  *(v8 + 94) += v7;
  *(v8 + 95) += v7 * v6;
  v5[3] = 0;
  if (v5[1] != -1)
  {
    v9 = CAGP::current_timestamp(v8) - *(*&v4[8 * a2] + 4);
    if (v9 < 0)
    {
      if (v9 >= 0xEDF9BE01)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v10 = VRTraceErrorLogLevelToCSTR();
          v11 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            AGPSendingSetElement::remove(v10, v11);
          }
        }

        goto LABEL_13;
      }

      v9 += 604800000;
    }

    if (v9 >= 1)
    {
      pthread_mutex_lock((this + 32));
      UpdateRTO(this + 175, v9);
      pthread_mutex_unlock((this + 32));
    }
  }

LABEL_13:
  *(*&v4[8 * a2] + 1516) = 0;
  *(this + a2 + 632) = 0x80;
  *(*&v4[8 * a2] + 4) = -1;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(this + 1);
      v18 = *(this + 24);
      v17 = *(this + 25);
      *buf = 136316418;
      v41 = v14;
      v42 = 2080;
      v43 = "remove";
      v44 = 1024;
      v45 = 817;
      v46 = 2048;
      v47 = v16;
      v48 = 1024;
      v49 = v17;
      v50 = 1024;
      v51 = v18;
      _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p remove: send bitmap == %08X%08X", buf, 0x32u);
    }
  }

  v19 = a2 - 32;
  if (a2 < 0x20)
  {
    v19 = a2;
  }

  v20 = 1 << v19;
  v21 = 100;
  if (a2 < 0x20)
  {
    v21 = 96;
  }

  *(this + v21) &= ~v20;
  if (*(this + 699))
  {
    v22 = *(this + 696);
    *&v13 = 136316418;
LABEL_22:
    if (*(this + 696) == v22)
    {
      v23 = *&v4[8 * v22];
      if (!*(v23 + 12))
      {
        v24 = ((*(v23 + 8) >> 20) & 0x3F) + 1;
        v25 = v22;
        v26 = v24;
        while (1)
        {
          v27 = *&v4[8 * v25];
          if (*(v27 + 12) || (*(v27 + 8) & 2) == 0)
          {
            break;
          }

          v25 = (v25 + 1) & 0x3F;
          if (!--v26)
          {
            v39 = v13;
            do
            {
              --v24;
              --*(this + 699);
              *(*&v4[8 * v22] + 8) &= ~2u;
              v22 = (*(this + 696) + 1) & 0x3F;
              *(this + 696) = v22;
            }

            while (v24);
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v28 = VRTraceErrorLogLevelToCSTR();
              v29 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                v30 = *(this + 1);
                v31 = *(this + 696);
                v32 = *(this + 26);
                *buf = v39;
                v41 = v28;
                v42 = 2080;
                v43 = "remove";
                v44 = 1024;
                v45 = 858;
                v46 = 2048;
                v47 = v30;
                v48 = 1024;
                v49 = v31;
                v50 = 1024;
                v51 = v32;
                _os_log_impl(&dword_24E50C000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p remove: SET HEAD (%02d) FOR (%08X)...", buf, 0x32u);
              }
            }

            v13 = v39;
            if (*(this + 699))
            {
              goto LABEL_22;
            }

            break;
          }
        }
      }
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v33 = VRTraceErrorLogLevelToCSTR();
    v34 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(this + 1);
      v37 = *(this + 24);
      v36 = *(this + 25);
      *buf = 136316418;
      v41 = v33;
      v42 = 2080;
      v43 = "remove";
      v44 = 1024;
      v45 = 861;
      v46 = 2048;
      v47 = v35;
      v48 = 1024;
      v49 = v36;
      v50 = 1024;
      v51 = v37;
      _os_log_impl(&dword_24E50C000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p remove: done bitmap == %08X%08X", buf, 0x32u);
    }
  }

  v12 = 1;
LABEL_38:
  pthread_mutex_unlock((this + 32));
  return v12;
}

void releaseAssociationSetElement(const __CFAllocator *a1, void *a2)
{
  v2 = a2[1];
  a2[2] = *(v2 + 200);
  *(v2 + 200) = a2;
}

uint64_t checkSendingSet(char *a1, pthread_mutex_t *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(a2 + 1);
  pthread_mutex_lock((a1 + 32));
  for (i = 0; i != 64; ++i)
  {
    v5 = (i + a1[698]) & 0x3FLL;
    v6 = *&a1[8 * v5 + 120];
    if (v6 && *(v6 + 3) && (v6[8] & 2) != 0 && *(v6 + 1) != -1)
    {
      v7 = CAGP::current_timestamp(a2);
      v8 = v7 - *(v6 + 1);
      if (v8 < 0)
      {
        if (v8 < 0xEDF9BE01)
        {
          v8 += 604800000;
        }

        else if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v19 = VRTraceErrorLogLevelToCSTR();
          v9 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v35 = v19;
            LOWORD(v36[0]) = 2080;
            *(v36 + 2) = "checkSendingSet";
            HIWORD(v36[2]) = 1024;
            v36[3] = 926;
            _os_log_error_impl(&dword_24E50C000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d ERROR: CAN'T RESEND (BAD TIMESTAMP) !!!!!!!!!!!!", buf, 0x1Cu);
          }
        }
      }

      v10 = *(a1 + 178);
      if (v10 && v8 > 3 * v10)
      {
        memset(v36, 170, 0x5D0uLL);
        buf[0] = 5;
        buf[1] = a1[v5 + 632];
        *&buf[2] = 0;
        v11 = *(a1 + 26);
        LODWORD(v35) = *&a2->__opaque[8];
        HIDWORD(v35) = v11;
        v36[0] = *v6;
        v36[1] = *(v6 + 2) & 0x3FFFF03 | (4 * (a1[698] & 0x3F)) | (a1[697] << 26);
        *(v6 + 1) = v7;
        ++*(v6 + 379);
        memcpy(&v36[2], v6 + 16, *(v6 + 3));
        *&buf[2] = agp_control::generate_checksum(buf, v6 + 16, *(v6 + 3));
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v12 = VRTraceErrorLogLevelToCSTR();
          v13 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v14 = *v6;
            v15 = *(a1 + 26);
            *v20 = 136316674;
            v21 = v12;
            v22 = 2080;
            v23 = "checkSendingSet";
            v24 = 1024;
            v25 = 957;
            v26 = 2048;
            v27 = a2;
            v28 = 1024;
            v29 = v14;
            v30 = 1024;
            v31 = v15;
            v32 = 1024;
            v33 = v5;
            _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p check: RESEND serial number %08X to destination %08X INDEX %d", v20, 0x38u);
          }
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v16 = VRTraceErrorLogLevelToCSTR();
          v17 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *v20 = 136316162;
            v21 = v16;
            v22 = 2080;
            v23 = "checkSendingSet";
            v24 = 1024;
            v25 = 959;
            v26 = 2048;
            v27 = a2;
            v28 = 1024;
            v29 = v5;
            _os_log_impl(&dword_24E50C000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p check: RESEND INDEX %d", v20, 0x2Cu);
          }
        }

        GCKSessionSendTo(*&a2->__opaque[16], (a1 + 104), 1, buf, (*(v6 + 3) + 20), 0, 64, 0, 0, 0, 0);
      }
    }
  }

  pthread_mutex_unlock((a1 + 32));
  return pthread_mutex_unlock(a2 + 1);
}

uint64_t agp_control::generate_checksum(agp_control *this, unsigned __int8 *a2, int a3)
{
  if (*this)
  {
    v3 = 0;
    v4 = 2 * *this;
    do
    {
      v5 = *this;
      this = (this + 2);
      v3 += v5;
      --v4;
    }

    while (v4);
    if (!a2)
    {
      return ~v3;
    }
  }

  else
  {
    v3 = 0;
    if (!a2)
    {
      return ~v3;
    }
  }

  v6 = a3 >> 1;
  if (a3 >> 1 >= 1)
  {
    v7 = a2;
    do
    {
      v8 = *v7;
      v7 += 2;
      v3 += v8;
      --v6;
    }

    while (v6);
    a2 += 2 * ((a3 >> 1) - 1) + 2;
  }

  if (a3)
  {
    v3 += *a2;
  }

  return ~v3;
}

void *CAGP::sendingSetElement(pthread_mutex_t *this, int a2)
{
  pthread_mutex_lock(this + 1);
  v4 = *&this->__opaque[32];
  v5 = *&this->__opaque[40];
  v5[26] = a2;
  value = 0;
  if (!CFSetGetValueIfPresent(v4, v5, &value))
  {
    operator new();
  }

  pthread_mutex_unlock(this + 1);
  return value;
}

uint64_t AGPDataQueue::disconnect(AGPDataQueue *this, unsigned int *a2, int a3)
{
  pthread_mutex_lock((this + 8));
  if (a3 >= 1)
  {
    v6 = 0;
    v7 = *this;
    do
    {
      if (v7)
      {
        v8 = a2[v6];
        v9 = v7;
        do
        {
          v10 = *(v9 + 18);
          if (v10 >= 1)
          {
            v11 = 0;
            v12 = v9 + 3;
            while (*(v9 + v11 + 2) != v8)
            {
              ++v11;
              ++v12;
              if (v10 == v11)
              {
                goto LABEL_13;
              }
            }

            LODWORD(v10) = v10 - 1;
            if (v10 > v11)
            {
              do
              {
                ++v11;
                *(v12 - 1) = *v12;
                v10 = *(v9 + 18) - 1;
                ++v12;
              }

              while (v11 < v10);
            }

            *(v9 + 18) = v10;
          }

LABEL_13:
          v9 = *v9;
        }

        while (v9);
      }

      ++v6;
    }

    while (v6 != a3);
  }

  return pthread_mutex_unlock((this + 8));
}

uint64_t AGPSessionSendTo(uint64_t a1, _DWORD *a2, uint64_t a3, UInt8 *a4, int a5, uint64_t a6, int a7, int a8)
{
  if (a3 >= 1 && a4 && a5 >= 1)
  {
    CheckInHandleDebug();
  }

  return 0;
}

void AGPSessionRelease(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v1 = VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315650;
      v4 = v1;
      v5 = 2080;
      v6 = "AGPSessionRelease";
      v7 = 1024;
      v8 = 1193;
      _os_log_impl(&dword_24E50C000, v2, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d agpsessionrelease: entering...", &v3, 0x1Cu);
    }
  }

  CheckInHandleDebug();
}

uint64_t AGPDataQueue::add_tail(uint64_t a1, void *a2)
{
  pthread_mutex_lock((a1 + 8));
  v4 = *a1;
  if (*a1)
  {
    do
    {
      v5 = v4;
      if (v4 == a2)
      {
        a2 = 0;
      }

      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    v5 = a1;
  }

  *v5 = a2;

  return pthread_mutex_unlock((a1 + 8));
}

uint64_t AGPSessionRecvFrom(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = 0;
  v234 = *MEMORY[0x277D85DE8];
  v225 = a2;
  if (!a1 || !a3)
  {
    return v3;
  }

  if (!*(a3 + 8) || (*(a3 + 16) - 1) > 0x5DB)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 128));
  v7 = CAGP::receiveSetElement(a1, a2);
  v8 = *(a3 + 8);
  v9 = 4 * *v8;
  v10 = *(a3 + 16);
  if (v10 < v9 || v7 == 0)
  {
    goto LABEL_10;
  }

  v12 = v7;
  v13 = *(v8 + 1);
  *(v8 + 1) = 0;
  checksum = agp_control::generate_checksum(v8, &v8[v9], v10 - v9);
  if (v13 != checksum)
  {
    v16 = checksum;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v231 = 136316162;
        v232 = v17;
        LOWORD(v233[0]) = 2080;
        *(v233 + 2) = "AGPSessionRecvFrom";
        HIWORD(v233[2]) = 1024;
        v233[3] = 1461;
        LOWORD(v233[4]) = 2048;
        *(&v233[4] + 2) = a1;
        HIWORD(v233[6]) = 1024;
        v233[7] = v13;
        _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p recv: packet checksum == (%04x)...", &v231, 0x2Cu);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_10;
    }

    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v231 = 136316162;
    v232 = v19;
    LOWORD(v233[0]) = 2080;
    *(v233 + 2) = "AGPSessionRecvFrom";
    HIWORD(v233[2]) = 1024;
    v233[3] = 1462;
    LOWORD(v233[4]) = 2048;
    *(&v233[4] + 2) = a1;
    HIWORD(v233[6]) = 1024;
    v233[7] = v16;
    v21 = " [%s] %s:%d %p recv: calculated checksum == (%04x)...";
    goto LABEL_23;
  }

  v15 = v8[1];
  if (v15 >= 2 && v15 != 11)
  {
    if (v15 == 2)
    {
      *(a3 + 8) += v9;
      *(a3 + 16) -= v9;
      v3 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v3 = 0;
LABEL_11:
    pthread_mutex_unlock((a1 + 128));
    return v3;
  }

  v24 = (v8 + 8);
  v25 = 12;
  do
  {
    if (v25 + 8 > v9)
    {
      goto LABEL_10;
    }

    v26 = v24 + 3;
    v27 = *v24;
    v25 += 12;
    v24 += 3;
  }

  while (v27 != *(a1 + 16));
  *(a3 + 8) += v9;
  *(a3 + 16) -= v9;
  if (v15 < 2)
  {
    v39 = *(v26 - 2);
    v40 = v12[27];
    if (v39 < v40 && v12[28] != -1)
    {
      v41 = CAGP::current_timestamp(a1) - v12[28];
      if (v41 <= -302400000)
      {
        v42 = v41 + 604800000;
      }

      else
      {
        v42 = v41;
      }

      if (v42 > 1000)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v43 = VRTraceErrorLogLevelToCSTR();
          v44 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v231 = 136316418;
            v232 = v43;
            LOWORD(v233[0]) = 2080;
            *(v233 + 2) = "AGPSessionRecvFrom";
            HIWORD(v233[2]) = 1024;
            v233[3] = 1500;
            LOWORD(v233[4]) = 2048;
            *(&v233[4] + 2) = a1;
            HIWORD(v233[6]) = 1024;
            v233[7] = v42;
            LOWORD(v233[8]) = 1024;
            *(&v233[8] + 2) = a2;
            v45 = " [%s] %s:%d %p recv: FORCE ACK ONLY for timeout %08X from remoteID %08X";
            v46 = v44;
LABEL_43:
            _os_log_impl(&dword_24E50C000, v46, OS_LOG_TYPE_DEFAULT, v45, &v231, 0x32u);
            goto LABEL_212;
          }
        }

        goto LABEL_212;
      }

      v39 = *(v26 - 2);
      v40 = v12[27];
    }

    if (v39 < v40)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_10;
      }

      v87 = VRTraceErrorLogLevelToCSTR();
      v88 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      v89 = *(v26 - 2);
      v90 = v12[27];
      v231 = 136316162;
      v232 = v87;
      LOWORD(v233[0]) = 2080;
      *(v233 + 2) = "AGPSessionRecvFrom";
      HIWORD(v233[2]) = 1024;
      v233[3] = 1787;
      LOWORD(v233[4]) = 1024;
      *(&v233[4] + 2) = v89;
      HIWORD(v233[5]) = 1024;
      v233[6] = v90;
      v21 = " [%s] %s:%d recv: SERIAL NUMBER MISMATCH (%08X:%08X)...";
      v22 = v88;
      v23 = 40;
      goto LABEL_24;
    }

    v91 = (*(v26 - 1) >> 8) & 0x3F;
    *&v222 = v12 + 30;
    v92 = *&v12[2 * v91 + 30];
    if (v92)
    {
      if (!v92[3])
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v224 = VRTraceErrorLogLevelToCSTR();
          v103 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v104 = *(v26 - 2);
            v231 = 136316674;
            v232 = v224;
            LOWORD(v233[0]) = 2080;
            *(v233 + 2) = "AGPSessionRecvFrom";
            HIWORD(v233[2]) = 1024;
            v233[3] = 1521;
            LOWORD(v233[4]) = 2048;
            *(&v233[4] + 2) = a1;
            HIWORD(v233[6]) = 1024;
            v233[7] = v91;
            LOWORD(v233[8]) = 1024;
            *(&v233[8] + 2) = v104;
            HIWORD(v233[9]) = 1024;
            v233[10] = a2;
            _os_log_impl(&dword_24E50C000, v103, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p recv: INCOMING BUFFER %d for packet serial_number %08X from remoteID %08X", &v231, 0x38u);
          }
        }

        v105 = v8[1];
        v216 = (v12 + 158);
        *(v12 + v91 + 632) = v105;
        memcpy(v92 + 4, *(a3 + 8), *(a3 + 16));
        *v92 = *(v26 - 2);
        v92[2] = *(v26 - 1);
        v92[3] = *(a3 + 16);
        v106 = *(v26 - 1);
        v107 = v106 >> 14;
        v108 = (v106 >> 14) & 0x3F;
        LODWORD(v220) = *(v26 - 2) - v108;
        LODWORD(v221) = v106;
        *&v223 = ((v106 >> 8) & 0x3F) - v108;
        *&v109 = 136316930;
        v213 = v109;
        *&v109 = 136316418;
        v219 = v109;
        *&v109 = 136316674;
        v218 = v109;
        *&v109 = 136316162;
        v212 = v109;
        while (1)
        {
          ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
          LODWORD(v215) = (v221 >> 20) & 0x3F;
          LODWORD(v224) = v215 + 1;
          if (ErrorLogLevelForModule >= 7)
          {
            v111 = VRTraceErrorLogLevelToCSTR();
            v112 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v113 = *(v26 - 2);
              v114 = (*(v26 - 1) >> 8) & 0x3F;
              v231 = v213;
              v232 = v111;
              LOWORD(v233[0]) = 2080;
              *(v233 + 2) = "AGPSessionRecvFrom";
              HIWORD(v233[2]) = 1024;
              v233[3] = 1555;
              LOWORD(v233[4]) = 2048;
              *(&v233[4] + 2) = a1;
              HIWORD(v233[6]) = 1024;
              v233[7] = (v107 & 0x3F) + 1;
              LOWORD(v233[8]) = 1024;
              *(&v233[8] + 2) = v224;
              HIWORD(v233[9]) = 1024;
              v233[10] = v113;
              LOWORD(v233[11]) = 1024;
              *(&v233[11] + 2) = v114;
              _os_log_impl(&dword_24E50C000, v112, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p recv: got chunk segment %d of %d segments (%08X) @index %d", &v231, 0x3Eu);
            }
          }

          v115 = 0;
          v116 = 1;
          LODWORD(v217) = 1;
          do
          {
            v117 = (v223 + v115) & 0x3F;
            v118 = *(v222 + 8 * v117);
            if (v118 && v118[3] && (v119 = v118[2], ((v119 ^ v221) & 0x3F00000) == 0) && v220 + v115 == *v118)
            {
              if (v115 != ((v119 >> 14) & 0x3F) && VRTraceGetErrorLogLevelForModule() >= 3)
              {
                v120 = VRTraceErrorLogLevelToCSTR();
                v214 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(v214, OS_LOG_TYPE_ERROR))
                {
                  v124 = *v118;
                  v125 = (v118[2] >> 14) & 0x3F;
                  v231 = v218;
                  v232 = v120;
                  LOWORD(v233[0]) = 2080;
                  *(v233 + 2) = "AGPSessionRecvFrom";
                  HIWORD(v233[2]) = 1024;
                  v233[3] = 1569;
                  LOWORD(v233[4]) = 1024;
                  *(&v233[4] + 2) = v117;
                  HIWORD(v233[5]) = 1024;
                  v233[6] = v124;
                  LOWORD(v233[7]) = 1024;
                  *(&v233[7] + 2) = v125;
                  HIWORD(v233[8]) = 1024;
                  v233[9] = v115;
                  _os_log_error_impl(&dword_24E50C000, v214, OS_LOG_TYPE_ERROR, " [%s] %s:%d FAIL: message fragment @index %d ser %08X seg_idx %d should be %d", &v231, 0x34u);
                }
              }

              LODWORD(v217) = (v216[v117] != 1) & v217;
            }

            else
            {
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                v121 = VRTraceErrorLogLevelToCSTR();
                v122 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                {
                  if (v118)
                  {
                    v123 = *v118;
                  }

                  else
                  {
                    v123 = 0;
                  }

                  v231 = v219;
                  v232 = v121;
                  LOWORD(v233[0]) = 2080;
                  *(v233 + 2) = "AGPSessionRecvFrom";
                  HIWORD(v233[2]) = 1024;
                  v233[3] = 1565;
                  LOWORD(v233[4]) = 1024;
                  *(&v233[4] + 2) = v117;
                  HIWORD(v233[5]) = 1024;
                  v233[6] = v123;
                  LOWORD(v233[7]) = 1024;
                  *(&v233[7] + 2) = v220 + v115;
                  _os_log_error_impl(&dword_24E50C000, v122, OS_LOG_TYPE_ERROR, " [%s] %s:%d fail: message fragment @index %d ser %08X should be %08X", &v231, 0x2Eu);
                }
              }

              v116 = 0;
            }

            ++v115;
          }

          while (v224 != v115);
          if ((v116 & 1) == 0)
          {
            goto LABEL_212;
          }

          v126 = v223;
          if (v223 != *(v12 + 696) && VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v127 = VRTraceErrorLogLevelToCSTR();
            v128 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v129 = *(v12 + 696);
              v231 = v212;
              v232 = v127;
              LOWORD(v233[0]) = 2080;
              *(v233 + 2) = "AGPSessionRecvFrom";
              HIWORD(v233[2]) = 1024;
              v233[3] = 1580;
              LOWORD(v233[4]) = 1024;
              *(&v233[4] + 2) = v126;
              HIWORD(v233[5]) = 1024;
              v233[6] = v129;
              _os_log_impl(&dword_24E50C000, v128, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d START %d != HEAD %d", &v231, 0x28u);
            }
          }

          if (v220 != v12[27])
          {
            break;
          }

          v130 = AGPDataQueue::peek_head_for_participant((a1 + 288), v225);
          v214 = &v212;
          if (v215)
          {
            v131 = 0;
          }

          else
          {
            v131 = v130 == 0;
          }

          v132 = v131;
          *v226 = *a3;
          *&v226[16] = *(a3 + 16);
          MEMORY[0x28223BE20](v130);
          v134 = &v212 - v133;
          memset(&v212 - v133, 170, v135);
          v136 = 0;
          LODWORD(v221) = v132 & v217;
          v220 = v134;
          v215 = v134;
          do
          {
            v137 = *(v222 + 8 * ((v223 + v136) & 0x3F));
            *(v12 + 696) = (*(v12 + 696) + 1) & 0x3F;
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v138 = VRTraceErrorLogLevelToCSTR();
              v139 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                v140 = *v137;
                v141 = v137[2];
                v231 = v218;
                v232 = v138;
                LOWORD(v233[0]) = 2080;
                *(v233 + 2) = "AGPSessionRecvFrom";
                HIWORD(v233[2]) = 1024;
                v233[3] = 1615;
                LOWORD(v233[4]) = 1024;
                *(&v233[4] + 2) = v140;
                HIWORD(v233[5]) = 1024;
                v233[6] = (v141 >> 14) & 0x3F;
                LOWORD(v233[7]) = 1024;
                *(&v233[7] + 2) = (v141 >> 20) & 0x3F;
                HIWORD(v233[8]) = 1024;
                v233[9] = v225;
                _os_log_impl(&dword_24E50C000, v139, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d recv : deliver (%08X:%02d:%02d) from remoteID %08X...", &v231, 0x34u);
              }
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v142 = VRTraceErrorLogLevelToCSTR();
              v143 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                v144 = *v137;
                v145 = v137[2];
                v231 = v219;
                v232 = v142;
                LOWORD(v233[0]) = 2080;
                *(v233 + 2) = "AGPSessionRecvFrom";
                HIWORD(v233[2]) = 1024;
                v233[3] = 1617;
                LOWORD(v233[4]) = 1024;
                *(&v233[4] + 2) = v144;
                HIWORD(v233[5]) = 1024;
                v233[6] = (v145 >> 14) & 0x3F;
                LOWORD(v233[7]) = 1024;
                *(&v233[7] + 2) = (v145 >> 20) & 0x3F;
                _os_log_impl(&dword_24E50C000, v143, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d recv : deliver (%08X:%02d:%02d)...", &v231, 0x2Eu);
              }
            }

            ++v12[27];
            if (v221)
            {
              v220 = (v137 + 4);
            }

            else
            {
              memcpy(v134, v137 + 4, v137[3]);
            }

            v134 += v137[3];
            *v137 = 0;
            *(v137 + 1) = 0;
            ++v136;
          }

          while (v224 != v136);
          *&v226[8] = v220;
          *&v226[16] = v134 - v215;
          if ((v221 & 1) == 0)
          {
            operator new();
          }

          (*a1)(*(a1 + 8), v225, v226);
          if ((v221 & 1) == 0)
          {
            CFRelease(0);
          }

          *&v223 = *(v12 + 696);
          v146 = *(v222 + 8 * v223);
          if (!v146 || !v146[3] || *v146 != v12[27])
          {
            goto LABEL_212;
          }

          LODWORD(v220) = *v146;
          LODWORD(v221) = v146[2];
          v107 = v221 >> 14;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v209 = VRTraceErrorLogLevelToCSTR();
          v210 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v211 = v12[27];
            v231 = v219;
            v232 = v209;
            LOWORD(v233[0]) = 2080;
            *(v233 + 2) = "AGPSessionRecvFrom";
            HIWORD(v233[2]) = 1024;
            v233[3] = 1687;
            LOWORD(v233[4]) = 2048;
            *(&v233[4] + 2) = a1;
            HIWORD(v233[6]) = 1024;
            v233[7] = v220;
            LOWORD(v233[8]) = 1024;
            *(&v233[8] + 2) = v211;
            v45 = " [%s] %s:%d %p recv: MESSAGE SERIAL_NUMBASE %08X ARRIVED OUT-OF-SEQUENCE %08X";
            v46 = v210;
            goto LABEL_43;
          }
        }

LABEL_212:
        *&v226[20] = 0;
        v184 = *(a1 + 16);
        *v226 = 2823;
        *&v226[4] = v184;
        *&v226[8] = v225;
        *&v226[12] = *(v26 - 2);
        *&v226[16] = *(v26 - 1) & 0xFFFFFF03 | (4 * (v12[174] & 0x3F));
        v185 = *(v26 - 1);
        v186 = v185 >> 2;
        if (v185)
        {
          v188 = v186 == v185 >> 26;
          v189 = VRTraceGetErrorLogLevelForModule();
          if (v188)
          {
            if (v189 >= 7)
            {
              v190 = VRTraceErrorLogLevelToCSTR();
              v191 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                v231 = 136316162;
                v232 = v190;
                LOWORD(v233[0]) = 2080;
                *(v233 + 2) = "AGPSessionRecvFrom";
                HIWORD(v233[2]) = 1024;
                v233[3] = 1716;
                LOWORD(v233[4]) = 2048;
                *(&v233[4] + 2) = a1;
                HIWORD(v233[6]) = 1024;
                v233[7] = v186;
                _os_log_impl(&dword_24E50C000, v191, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p recv: FORCE FULL BUFFER INDEX %d", &v231, 0x2Cu);
              }
            }

            v187 = 1;
LABEL_219:
            v192 = 0;
            if (v187)
            {
              goto LABEL_221;
            }

            while (1)
            {
              if (v186 == *(v26 - 1) >> 26)
              {
                v198 = *&v226[20];
                v199 = *&v226[24];
                if (*&v226[20])
                {
                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                  {
                    v200 = VRTraceErrorLogLevelToCSTR();
                    v201 = *MEMORY[0x277CE5818];
                    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                    {
                      v231 = 136316418;
                      v232 = v200;
                      LOWORD(v233[0]) = 2080;
                      *(v233 + 2) = "AGPSessionRecvFrom";
                      HIWORD(v233[2]) = 1024;
                      v233[3] = 1765;
                      LOWORD(v233[4]) = 2048;
                      *(&v233[4] + 2) = a1;
                      HIWORD(v233[6]) = 1024;
                      v233[7] = v199;
                      LOWORD(v233[8]) = 1024;
                      *(&v233[8] + 2) = v198;
                      _os_log_impl(&dword_24E50C000, v201, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p data: sack bitmap == %08X%08X", &v231, 0x32u);
                    }
                  }
                }

                v202 = 0;
                v203 = 0;
                do
                {
                  v203 += *&v226[v202];
                  v202 += 2;
                }

                while (v202 != 28);
                *&v226[2] = ~v203;
                *(a1 + 384) = vadd_s32(*(a1 + 384), 0x1C00000001);
                v12[28] = CAGP::current_timestamp(a1);
                pthread_mutex_unlock((a1 + 128));
                GCKSessionSendTo(*(a1 + 24), &v225, 1, v226, 28, 0, 64, 0, 0, 0, *a3 == 6);
              }

LABEL_221:
              v192 |= (v186 == *(v12 + 696)) & (v187 ^ 1);
              if (v192)
              {
                v193 = *&v12[2 * v186 + 30];
                if (v193)
                {
                  v194 = v186 - 32;
                  if (v186 < 0x20)
                  {
                    v194 = v186;
                  }

                  v195 = 1 << v194;
                  if (v186 >= 0x20)
                  {
                    v196 = 24;
                  }

                  else
                  {
                    v196 = 20;
                  }

                  if (*(v193 + 12) || (*(v193 + 8) & 2) != 0)
                  {
                    v197 = *&v226[v196] & ~v195;
                  }

                  else
                  {
                    v197 = *&v226[v196] | v195;
                  }

                  *&v226[v196] = v197;
                }
              }

              v187 = 0;
              v186 = (v186 + 1) & 0x3F;
            }
          }

          if (v189 >= 3)
          {
            v204 = VRTraceErrorLogLevelToCSTR();
            v205 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              v231 = 136316162;
              v232 = v204;
              LOWORD(v233[0]) = 2080;
              *(v233 + 2) = "AGPSessionRecvFrom";
              HIWORD(v233[2]) = 1024;
              v233[3] = 1719;
              LOWORD(v233[4]) = 2048;
              *(&v233[4] + 2) = a1;
              HIWORD(v233[6]) = 1024;
              v233[7] = v186;
              _os_log_error_impl(&dword_24E50C000, v205, OS_LOG_TYPE_ERROR, " [%s] %s:%d %p recv: ERROR FULL BUFFER INDEX MISMATCH %d", &v231, 0x2Cu);
            }
          }
        }

        v187 = 0;
        goto LABEL_219;
      }

      if (v39 == *v92)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v93 = VRTraceErrorLogLevelToCSTR();
          v94 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v95 = *(v26 - 2);
            v231 = 136316674;
            v232 = v93;
            LOWORD(v233[0]) = 2080;
            *(v233 + 2) = "AGPSessionRecvFrom";
            HIWORD(v233[2]) = 1024;
            v233[3] = 1530;
            LOWORD(v233[4]) = 2048;
            *(&v233[4] + 2) = a1;
            HIWORD(v233[6]) = 1024;
            v233[7] = v91;
            LOWORD(v233[8]) = 1024;
            *(&v233[8] + 2) = v95;
            HIWORD(v233[9]) = 1024;
            v233[10] = a2;
            _os_log_impl(&dword_24E50C000, v94, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p recv: DISCARD DUPLICATE %d for packet serial_number %08X from remoteID %08X", &v231, 0x38u);
          }
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_10;
        }

        v96 = VRTraceErrorLogLevelToCSTR();
        v97 = *MEMORY[0x277CE5818];
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_10;
        }

        v98 = *(v26 - 2);
        v231 = 136316418;
        v232 = v96;
        LOWORD(v233[0]) = 2080;
        *(v233 + 2) = "AGPSessionRecvFrom";
        HIWORD(v233[2]) = 1024;
        v233[3] = 1532;
        LOWORD(v233[4]) = 2048;
        *(&v233[4] + 2) = a1;
        HIWORD(v233[6]) = 1024;
        v233[7] = v91;
        LOWORD(v233[8]) = 1024;
        *(&v233[8] + 2) = v98;
        v21 = " [%s] %s:%d %p recv: ERROR DUPLICATE %d for packet serial_number %08X";
        v22 = v97;
        v23 = 50;
        goto LABEL_24;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v99 = VRTraceErrorLogLevelToCSTR();
      v100 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v101 = *(v26 - 2);
        v231 = 136316674;
        v232 = v99;
        LOWORD(v233[0]) = 2080;
        *(v233 + 2) = "AGPSessionRecvFrom";
        HIWORD(v233[2]) = 1024;
        v233[3] = 1534;
        LOWORD(v233[4]) = 2048;
        *(&v233[4] + 2) = a1;
        HIWORD(v233[6]) = 1024;
        v233[7] = v91;
        LOWORD(v233[8]) = 1024;
        *(&v233[8] + 2) = v101;
        HIWORD(v233[9]) = 1024;
        v233[10] = a2;
        _os_log_impl(&dword_24E50C000, v100, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p recv: DISCARD NO BUFFER AVAILABLE %d for packet serial_number %08X from remoteID %08X", &v231, 0x38u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_10;
    }

    v102 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v231 = 136316162;
    v232 = v102;
    LOWORD(v233[0]) = 2080;
    *(v233 + 2) = "AGPSessionRecvFrom";
    HIWORD(v233[2]) = 1024;
    v233[3] = 1536;
    LOWORD(v233[4]) = 2048;
    *(&v233[4] + 2) = a1;
    HIWORD(v233[6]) = 1024;
    v233[7] = v91;
    v21 = " [%s] %s:%d %p recv: ERROR NO BUFFER %d";
LABEL_23:
    v22 = v20;
    v23 = 44;
LABEL_24:
    _os_log_impl(&dword_24E50C000, v22, OS_LOG_TYPE_DEFAULT, v21, &v231, v23);
    goto LABEL_10;
  }

  pthread_mutex_unlock((a1 + 128));
  pthread_mutex_lock((a1 + 64));
  v28 = CAGP::sendingSetElement(a1, a2);
  pthread_mutex_lock((v28 + 32));
  v29 = v28 + 120;
  v30 = v28[696];
  if (!v28[699])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v47 = VRTraceErrorLogLevelToCSTR();
      v36 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v48 = *(v26 - 2);
        v49 = **&v29[8 * ((v30 - 1) & 0x3F)] + 1;
        v231 = 136316418;
        v232 = v47;
        LOWORD(v233[0]) = 2080;
        *(v233 + 2) = "AGPSessionRecvFrom";
        HIWORD(v233[2]) = 1024;
        v233[3] = 1970;
        LOWORD(v233[4]) = 2048;
        *(&v233[4] + 2) = a1;
        HIWORD(v233[6]) = 1024;
        v233[7] = v48;
        LOWORD(v233[8]) = 1024;
        *(&v233[8] + 2) = v49;
        v38 = " [%s] %s:%d %p sack: RECEIVED SACK WITH LOWER SERIAL NUMBER [%08X] THAN NEXT [%08X], SKIPPING";
        goto LABEL_247;
      }
    }

    goto LABEL_248;
  }

  v224 = (v28 + 120);
  v31 = **&v29[8 * v30];
  v32 = *(v26 - 2);
  v33 = VRTraceGetErrorLogLevelForModule();
  if (v32 < v31)
  {
    if (v33 >= 7)
    {
      v35 = VRTraceErrorLogLevelToCSTR();
      v36 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v37 = *(v26 - 2);
        v231 = 136316418;
        v232 = v35;
        LOWORD(v233[0]) = 2080;
        *(v233 + 2) = "AGPSessionRecvFrom";
        HIWORD(v233[2]) = 1024;
        v233[3] = 1966;
        LOWORD(v233[4]) = 2048;
        *(&v233[4] + 2) = a1;
        HIWORD(v233[6]) = 1024;
        v233[7] = v37;
        LOWORD(v233[8]) = 1024;
        *(&v233[8] + 2) = v31;
        v38 = " [%s] %s:%d %p sack: RECEIVED SACK WITH LOWER SERIAL NUMBER [%08X] THAN HEAD [%08X], SKIPPING";
        goto LABEL_247;
      }
    }

    goto LABEL_248;
  }

  if (v33 >= 7)
  {
    v50 = VRTraceErrorLogLevelToCSTR();
    v51 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v231 = 136316162;
      v232 = v50;
      LOWORD(v233[0]) = 2080;
      *(v233 + 2) = "AGPSessionRecvFrom";
      HIWORD(v233[2]) = 1024;
      v233[3] = 1820;
      LOWORD(v233[4]) = 2048;
      *(&v233[4] + 2) = a1;
      HIWORD(v233[6]) = 1024;
      v233[7] = a2;
      _os_log_impl(&dword_24E50C000, v51, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p sack: PROCESS SACK PACKET FROM (%08X)...", &v231, 0x2Cu);
    }
  }

  v52 = v26[1];
  *&v223 = v26 + 1;
  if (v52 || *v26)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v53 = VRTraceErrorLogLevelToCSTR();
      v54 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v56 = *v26;
        v55 = v26[1];
        v231 = 136316418;
        v232 = v53;
        LOWORD(v233[0]) = 2080;
        *(v233 + 2) = "AGPSessionRecvFrom";
        HIWORD(v233[2]) = 1024;
        v233[3] = 1824;
        LOWORD(v233[4]) = 2048;
        *(&v233[4] + 2) = a1;
        HIWORD(v233[6]) = 1024;
        v233[7] = v55;
        LOWORD(v233[8]) = 1024;
        *(&v233[8] + 2) = v56;
        _os_log_impl(&dword_24E50C000, v54, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p sack: sack bitmap == %08X%08X", &v231, 0x32u);
      }
    }

    if (v26[1] || *v26)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v57 = VRTraceErrorLogLevelToCSTR();
        v58 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v59 = v28[698];
          v60 = v28[696];
          v61 = v28[697];
          v62 = v28[699];
          v231 = 136316930;
          v232 = v57;
          LOWORD(v233[0]) = 2080;
          *(v233 + 2) = "AGPSessionRecvFrom";
          HIWORD(v233[2]) = 1024;
          v233[3] = 1832;
          LOWORD(v233[4]) = 2048;
          *(&v233[4] + 2) = a1;
          HIWORD(v233[6]) = 1024;
          v233[7] = v59;
          LOWORD(v233[8]) = 1024;
          *(&v233[8] + 2) = v60;
          HIWORD(v233[9]) = 1024;
          v233[10] = v61;
          LOWORD(v233[11]) = 1024;
          *(&v233[11] + 2) = v62;
          _os_log_impl(&dword_24E50C000, v58, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p sack: RECEIVER CLAIMS TO BE MISSING PACKETS (sender base %02d head %02d tail %02d used %02d", &v231, 0x3Eu);
        }
      }

      v63 = 0;
      v220 = v28 + 632;
      *&v34 = 136316674;
      v222 = v34;
      *&v34 = 136316162;
      v221 = v34;
      *&v34 = 136315650;
      v219 = v34;
      do
      {
        v64 = (v63 + v28[698]) & 0x3F;
        v65 = v64 - 32;
        if (v64 < 0x20)
        {
          v65 = (v63 + v28[698]) & 0x3F;
        }

        v66 = v223;
        if (v64 < 0x20)
        {
          v66 = v26;
        }

        if (((*v66 >> v65) & 1) == 0)
        {
          goto LABEL_91;
        }

        v67 = *(v224 + 8 * v64);
        if (!v67)
        {
          goto LABEL_91;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v68 = VRTraceErrorLogLevelToCSTR();
          v69 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v70 = *(v67 + 3);
            v71 = (*(v67 + 2) >> 1) & 1;
            v231 = v222;
            v232 = v68;
            LOWORD(v233[0]) = 2080;
            *(v233 + 2) = "AGPSessionRecvFrom";
            HIWORD(v233[2]) = 1024;
            v233[3] = 1851;
            LOWORD(v233[4]) = 2048;
            *(&v233[4] + 2) = a1;
            HIWORD(v233[6]) = 1024;
            v233[7] = v64;
            LOWORD(v233[8]) = 1024;
            *(&v233[8] + 2) = v70;
            HIWORD(v233[9]) = 1024;
            v233[10] = v71;
            _os_log_impl(&dword_24E50C000, v69, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p sack: TEST INDEX %d len == %d ack_pending = %01d ", &v231, 0x38u);
          }
        }

        if (*(v67 + 3) && (v67[8] & 2) != 0 && *(v67 + 1) != -1)
        {
          v72 = CAGP::current_timestamp(a1);
          v73 = v72 - *(v67 + 1);
          if (v73 < 0)
          {
            if (v73 <= 0xEDF9BE00)
            {
              v73 += 604800000;
            }

            else if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              *&v218 = VRTraceErrorLogLevelToCSTR();
              v217 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(v217, OS_LOG_TYPE_ERROR))
              {
                v231 = v219;
                v232 = v218;
                LOWORD(v233[0]) = 2080;
                *(v233 + 2) = "AGPSessionRecvFrom";
                HIWORD(v233[2]) = 1024;
                v233[3] = 1859;
                _os_log_error_impl(&dword_24E50C000, v217, OS_LOG_TYPE_ERROR, " [%s] %s:%d ERROR: CAN'T RESEND (BAD TIMESTAMP) !!!!!!!!!!!!", &v231, 0x1Cu);
              }
            }
          }

          if (v73 > *(v28 + 178))
          {
            memset(v233, 170, 0x5D0uLL);
            LOBYTE(v231) = 5;
            BYTE1(v231) = v220[v64];
            HIWORD(v231) = 0;
            LODWORD(v232) = *(a1 + 16);
            HIDWORD(v232) = v225;
            v233[0] = *v67;
            v233[1] = *(v67 + 2) & 0x3FFFF03 | (4 * (v28[698] & 0x3F)) | (v28[697] << 26);
            *(v67 + 1) = v72;
            ++*(v67 + 379);
            memcpy(&v233[2], v67 + 16, *(v67 + 3));
            HIWORD(v231) = agp_control::generate_checksum(&v231, v67 + 16, *(v67 + 3));
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v79 = VRTraceErrorLogLevelToCSTR();
              v80 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                *v226 = v221;
                *&v226[4] = v79;
                *&v226[12] = 2080;
                *&v226[14] = "AGPSessionRecvFrom";
                *&v226[22] = 1024;
                *&v226[24] = 1891;
                v227 = 2048;
                v228 = a1;
                v229 = 1024;
                v230 = v64;
                _os_log_impl(&dword_24E50C000, v80, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p sack: RESEND INDEX %d", v226, 0x2Cu);
              }
            }

            GCKSessionSendTo(*(a1 + 24), &v225, 1, &v231, (*(v67 + 3) + 20), 0, 64, 0, 0, 0, *a3 == 6);
          }

          v81 = v73;
          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            goto LABEL_91;
          }

          v82 = VRTraceErrorLogLevelToCSTR();
          v83 = *MEMORY[0x277CE5818];
          if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_91;
          }

          v84 = *(v28 + 178);
          v231 = v222;
          v232 = v82;
          LOWORD(v233[0]) = 2080;
          *(v233 + 2) = "AGPSessionRecvFrom";
          HIWORD(v233[2]) = 1024;
          v233[3] = 1897;
          LOWORD(v233[4]) = 2048;
          *(&v233[4] + 2) = a1;
          HIWORD(v233[6]) = 1024;
          v233[7] = v64;
          LOWORD(v233[8]) = 1024;
          *(&v233[8] + 2) = v81;
          HIWORD(v233[9]) = 1024;
          v233[10] = v84;
          v76 = v83;
          v77 = " [%s] %s:%d %p sack: RESEND ABORT %d ELAPSED_TIME (%04d) < RTO (%04d)";
          v78 = 56;
        }

        else
        {
          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            goto LABEL_91;
          }

          v74 = VRTraceErrorLogLevelToCSTR();
          v75 = *MEMORY[0x277CE5818];
          if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_91;
          }

          v231 = v221;
          v232 = v74;
          LOWORD(v233[0]) = 2080;
          *(v233 + 2) = "AGPSessionRecvFrom";
          HIWORD(v233[2]) = 1024;
          v233[3] = 1900;
          LOWORD(v233[4]) = 2048;
          *(&v233[4] + 2) = a1;
          HIWORD(v233[6]) = 1024;
          v233[7] = v64;
          v76 = v75;
          v77 = " [%s] %s:%d %p sack: CAN'T RESEND INDEX %d";
          v78 = 44;
        }

        _os_log_impl(&dword_24E50C000, v76, OS_LOG_TYPE_DEFAULT, v77, &v231, v78);
LABEL_91:
        ++v63;
      }

      while (v63 != 64);
    }
  }

  v85 = v28[698];
  if (*(v26 - 1) >> 2 == v85)
  {
    v86 = 1;
    goto LABEL_200;
  }

  LODWORD(v222) = 0;
  v147 = MEMORY[0x277CE5818];
  *&v34 = 136316418;
  v223 = v34;
  v148 = v224;
  do
  {
    v149 = *(v148 + 8 * v85);
    if (!v149)
    {
      break;
    }

    if (!*(v149 + 12) || (*(v149 + 8) & 2) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_192;
      }

      v150 = VRTraceErrorLogLevelToCSTR();
      v151 = *v147;
      if (!os_log_type_enabled(*v147, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_192;
      }

      v152 = *v149;
      v231 = v223;
      v232 = v150;
      LOWORD(v233[0]) = 2080;
      *(v233 + 2) = "AGPSessionRecvFrom";
      HIWORD(v233[2]) = 1024;
      v233[3] = 1933;
      LOWORD(v233[4]) = 2048;
      *(&v233[4] + 2) = a1;
      HIWORD(v233[6]) = 1024;
      v233[7] = v152;
      LOWORD(v233[8]) = 1024;
      *(&v233[8] + 2) = v225;
      v153 = v151;
      v154 = " [%s] %s:%d %p sack: BUFFER MISSING SERIAL NUMBER (%08X) FROM (%08X)...";
      goto LABEL_179;
    }

    v155 = AGPSendingSetElement::search(v28, *v149);
    if (v155 < 0)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_192;
      }

      v161 = VRTraceErrorLogLevelToCSTR();
      v162 = *v147;
      if (!os_log_type_enabled(*v147, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_192;
      }

      v163 = *v149;
      v231 = v223;
      v232 = v161;
      LOWORD(v233[0]) = 2080;
      *(v233 + 2) = "AGPSessionRecvFrom";
      HIWORD(v233[2]) = 1024;
      v233[3] = 1929;
      LOWORD(v233[4]) = 2048;
      *(&v233[4] + 2) = a1;
      HIWORD(v233[6]) = 1024;
      v233[7] = v163;
      LOWORD(v233[8]) = 1024;
      *(&v233[8] + 2) = v225;
      v153 = v162;
      v154 = " [%s] %s:%d %p sack: SEARCH FAILURE SERIAL NUMBER (%08X) FROM (%08X)...";
      goto LABEL_179;
    }

    v156 = AGPSendingSetElement::remove(v28, v155);
    v157 = VRTraceGetErrorLogLevelForModule();
    if (v156)
    {
      if (v157 >= 7)
      {
        v158 = VRTraceErrorLogLevelToCSTR();
        v159 = *v147;
        if (os_log_type_enabled(*v147, OS_LOG_TYPE_DEFAULT))
        {
          v160 = *v149;
          v231 = v223;
          v232 = v158;
          LOWORD(v233[0]) = 2080;
          *(v233 + 2) = "AGPSessionRecvFrom";
          HIWORD(v233[2]) = 1024;
          v233[3] = 1924;
          LOWORD(v233[4]) = 2048;
          *(&v233[4] + 2) = a1;
          HIWORD(v233[6]) = 1024;
          v233[7] = v160;
          LOWORD(v233[8]) = 1024;
          *(&v233[8] + 2) = v225;
          _os_log_impl(&dword_24E50C000, v159, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p sack: REMOVED PACKET SERIAL NUMBER (%08X) FROM (%08X)...", &v231, 0x32u);
        }
      }

      LODWORD(v222) = 1;
      goto LABEL_192;
    }

    if (v157 >= 7)
    {
      v164 = VRTraceErrorLogLevelToCSTR();
      v165 = *v147;
      if (os_log_type_enabled(*v147, OS_LOG_TYPE_DEFAULT))
      {
        v166 = *v149;
        v231 = v223;
        v232 = v164;
        LOWORD(v233[0]) = 2080;
        *(v233 + 2) = "AGPSessionRecvFrom";
        HIWORD(v233[2]) = 1024;
        v233[3] = 1926;
        LOWORD(v233[4]) = 2048;
        *(&v233[4] + 2) = a1;
        HIWORD(v233[6]) = 1024;
        v233[7] = v166;
        LOWORD(v233[8]) = 1024;
        *(&v233[8] + 2) = v225;
        v153 = v165;
        v154 = " [%s] %s:%d %p sack: REMOVE FAILURE SERIAL NUMBER (%08X) FROM (%08X)...";
LABEL_179:
        _os_log_impl(&dword_24E50C000, v153, OS_LOG_TYPE_DEFAULT, v154, &v231, 0x32u);
      }
    }

LABEL_192:
    v148 = v224;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v167 = VRTraceErrorLogLevelToCSTR();
      v168 = *v147;
      v148 = v224;
      if (os_log_type_enabled(*v147, OS_LOG_TYPE_DEFAULT))
      {
        v169 = v28[698];
        v231 = v223;
        v232 = v167;
        LOWORD(v233[0]) = 2080;
        *(v233 + 2) = "AGPSessionRecvFrom";
        HIWORD(v233[2]) = 1024;
        v233[3] = 1937;
        LOWORD(v233[4]) = 2048;
        *(&v233[4] + 2) = a1;
        HIWORD(v233[6]) = 1024;
        v233[7] = v169;
        LOWORD(v233[8]) = 1024;
        *(&v233[8] + 2) = v225;
        _os_log_impl(&dword_24E50C000, v168, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p sack: INC BASE (%02d) FOR (%08X)...", &v231, 0x32u);
      }
    }

    v85 = (v28[698] + 1) & 0x3F;
    v28[698] = v85;
  }

  while (*(v26 - 1) >> 2 != v85);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v170 = VRTraceErrorLogLevelToCSTR();
    v171 = *v147;
    if (os_log_type_enabled(*v147, OS_LOG_TYPE_DEFAULT))
    {
      v172 = v28[698];
      v231 = v223;
      v232 = v170;
      LOWORD(v233[0]) = 2080;
      *(v233 + 2) = "AGPSessionRecvFrom";
      HIWORD(v233[2]) = 1024;
      v233[3] = 1942;
      LOWORD(v233[4]) = 2048;
      *(&v233[4] + 2) = a1;
      HIWORD(v233[6]) = 1024;
      v233[7] = v172;
      LOWORD(v233[8]) = 1024;
      *(&v233[8] + 2) = v225;
      _os_log_impl(&dword_24E50C000, v171, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p sack: SET BASE (%02d) FOR (%08X)...", &v231, 0x32u);
    }
  }

  v86 = v222 == 0;
LABEL_200:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v173 = VRTraceErrorLogLevelToCSTR();
    v174 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v175 = v28[698];
      v231 = 136316418;
      v232 = v173;
      LOWORD(v233[0]) = 2080;
      *(v233 + 2) = "AGPSessionRecvFrom";
      HIWORD(v233[2]) = 1024;
      v233[3] = 1945;
      LOWORD(v233[4]) = 2048;
      *(&v233[4] + 2) = a1;
      HIWORD(v233[6]) = 1024;
      v233[7] = v175;
      LOWORD(v233[8]) = 1024;
      *(&v233[8] + 2) = v225;
      _os_log_impl(&dword_24E50C000, v174, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p sack: CUR BASE (%02d) FOR (%08X)...", &v231, 0x32u);
    }
  }

  v176 = AGPSendingSetElement::search(v28, *(v26 - 2));
  if (v176 < 0)
  {
    if (v86 && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v181 = VRTraceErrorLogLevelToCSTR();
      v182 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        v183 = *(v26 - 2);
        v231 = 136316418;
        v232 = v181;
        LOWORD(v233[0]) = 2080;
        *(v233 + 2) = "AGPSessionRecvFrom";
        HIWORD(v233[2]) = 1024;
        v233[3] = 1960;
        LOWORD(v233[4]) = 2048;
        *(&v233[4] + 2) = a1;
        HIWORD(v233[6]) = 1024;
        v233[7] = v183;
        LOWORD(v233[8]) = 1024;
        *(&v233[8] + 2) = v225;
        _os_log_error_impl(&dword_24E50C000, v182, OS_LOG_TYPE_ERROR, " [%s] %s:%d %p sack: SEARCH FAILURE SERIAL NUMBER (%08X) FROM (%08X)...", &v231, 0x32u);
      }
    }
  }

  else
  {
    v177 = AGPSendingSetElement::remove(v28, v176);
    v178 = VRTraceGetErrorLogLevelForModule();
    if (v177)
    {
      if (v178 >= 7)
      {
        v179 = VRTraceErrorLogLevelToCSTR();
        v36 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v180 = *(v26 - 2);
          v231 = 136316418;
          v232 = v179;
          LOWORD(v233[0]) = 2080;
          *(v233 + 2) = "AGPSessionRecvFrom";
          HIWORD(v233[2]) = 1024;
          v233[3] = 1953;
          LOWORD(v233[4]) = 2048;
          *(&v233[4] + 2) = a1;
          HIWORD(v233[6]) = 1024;
          v233[7] = v180;
          LOWORD(v233[8]) = 1024;
          *(&v233[8] + 2) = v225;
          v38 = " [%s] %s:%d %p sack: REMOVED PACKET SERIAL NUMBER (%08X) FROM (%08X)...";
          goto LABEL_247;
        }
      }
    }

    else if (v178 >= 7)
    {
      v206 = VRTraceErrorLogLevelToCSTR();
      v36 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v207 = *(v26 - 2);
        v231 = 136316418;
        v232 = v206;
        LOWORD(v233[0]) = 2080;
        *(v233 + 2) = "AGPSessionRecvFrom";
        HIWORD(v233[2]) = 1024;
        v233[3] = 1955;
        LOWORD(v233[4]) = 2048;
        *(&v233[4] + 2) = a1;
        HIWORD(v233[6]) = 1024;
        v233[7] = v207;
        LOWORD(v233[8]) = 1024;
        *(&v233[8] + 2) = v225;
        v38 = " [%s] %s:%d %p sack: REMOVE FAILURE SERIAL NUMBER (%08X) FROM (%08X)...";
LABEL_247:
        _os_log_impl(&dword_24E50C000, v36, OS_LOG_TYPE_DEFAULT, v38, &v231, 0x32u);
      }
    }
  }

LABEL_248:
  pthread_mutex_unlock((v28 + 32));
  pthread_mutex_unlock((a1 + 64));
  return 0;
}

void *CAGP::receiveSetElement(CAGP *this, int a2)
{
  pthread_mutex_lock(this + 2);
  v4 = *(this + 7);
  v4[26] = a2;
  value = 0;
  if (!CFSetGetValueIfPresent(*(this + 4), v4, &value))
  {
    operator new();
  }

  pthread_mutex_unlock(this + 2);
  return value;
}

uint64_t *AGPDataQueue::peek_head_for_participant(AGPDataQueue *this, int a2)
{
  pthread_mutex_lock((this + 8));
  v4 = *this;
  if (*this)
  {
    do
    {
      if (*(v4 + 18) == 1 && *(v4 + 2) == a2)
      {
        break;
      }

      v4 = *v4;
    }

    while (v4);
  }

  pthread_mutex_unlock((this + 8));
  return v4;
}

AGPDataQueue *AGPDataQueue::pop_head_for_participant(AGPDataQueue *this, int a2)
{
  pthread_mutex_lock((this + 8));
  v4 = *this;
  if (*this)
  {
    v5 = 0;
    v6 = *this;
    while (1)
    {
      v7 = v6;
      if (*(v6 + 18) == 1 && *(v6 + 2) == a2)
      {
        break;
      }

      v6 = *v6;
      v5 = v7;
      if (!*v7)
      {
        goto LABEL_6;
      }
    }

    if (v5)
    {
      v4 = v6;
    }

    else
    {
      v5 = this;
    }

    *v5 = *v4;
  }

  else
  {
LABEL_6:
    v7 = 0;
  }

  pthread_mutex_unlock((this + 8));
  return v7;
}

void monitorSendingSet(_DWORD *a1, _DWORD *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[26];
      v8 = 136316162;
      v9 = v4;
      v10 = 2080;
      v11 = "monitorSendingSet";
      v12 = 1024;
      v13 = 2112;
      v14 = 2048;
      v15 = a2;
      v16 = 1024;
      v17 = v6;
      _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p monitor: participant (%08X)...", &v8, 0x2Cu);
    }
  }

  v7 = a1[175];
  a2[98] += v7;
  a2[99] += a1[178] * v7;
}

void AGPAssociationSetElement::AGPAssociationSetElement(AGPAssociationSetElement *this, CAGP *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 12) = 0;
  *this = &unk_286195108;
  *(this + 1) = a2;
  *(this + 27) = 0;
  *(this + 696) = 0u;
  *(this + 178) = 0;
  pthread_mutex_lock((this + 32));
  UpdateRTO(this + 175, 250);
  pthread_mutex_unlock((this + 32));
  *(this + 28) = -1;
  v3.__sig = 0xAAAAAAAAAAAAAAAALL;
  *v3.__opaque = 0xAAAAAAAAAAAAAAAALL;
  if (!pthread_mutexattr_init(&v3))
  {
    pthread_mutexattr_settype(&v3, 2);
    pthread_mutex_init((this + 32), &v3);
    pthread_mutexattr_destroy(&v3);
  }

  operator new();
}

void AGPAssociationSetElement::~AGPAssociationSetElement(AGPAssociationSetElement *this)
{
  v2 = 0;
  *this = &unk_286195108;
  do
  {
    *(this + v2 + 632) = 0x80;
    v3 = *(this + v2 + 15);
    if (v3)
    {
      MEMORY[0x253042880](v3, 0x1000C40D24D2377);
    }

    ++v2;
  }

  while (v2 != 64);
  pthread_mutex_destroy((this + 32));
}

{
  AGPAssociationSetElement::~AGPAssociationSetElement(this);

  JUMPOUT(0x253042880);
}

void AGPSendingSetElement::~AGPSendingSetElement(AGPSendingSetElement *this)
{
  AGPSendingSetElement::~AGPSendingSetElement(this);

  JUMPOUT(0x253042880);
}

{
  v13 = *MEMORY[0x277D85DE8];
  *this = &unk_2861950A8;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(this + 26);
      v5 = 136315906;
      v6 = v2;
      v7 = 2080;
      v8 = "~AGPSendingSetElement";
      v9 = 1024;
      v10 = 505;
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d DELETING sending set element %08X", &v5, 0x22u);
    }
  }

  AGPAssociationSetElement::~AGPAssociationSetElement(this);
}

void CAGP::CAGP(CAGP *this)
{
  v2 = *MEMORY[0x277D85DE8];
  AGPDataQueue::AGPDataQueue((this + 216));
  AGPDataQueue::AGPDataQueue((this + 288));
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 4) = CFSetCreateMutable(0, 0, &associationSetCallBacks);
  *(this + 5) = CFSetCreateMutable(0, 0, &associationSetCallBacks);
  operator new();
}

void sub_24E5194E8(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x253042880](v3, 0x10A1C404616C3E8);
  AGPDataQueue::~AGPDataQueue((v1 + 288));
  AGPDataQueue::~AGPDataQueue((v1 + 216));
  _Unwind_Resume(a1);
}

void AGPDataQueue::AGPDataQueue(AGPDataQueue *this)
{
  v3 = *MEMORY[0x277D85DE8];
  *this = 0;
  v2.__sig = 0xAAAAAAAAAAAAAAAALL;
  *v2.__opaque = 0xAAAAAAAAAAAAAAAALL;
  if (!pthread_mutexattr_init(&v2))
  {
    pthread_mutexattr_settype(&v2, 2);
    pthread_mutex_init((this + 8), &v2);
    pthread_mutexattr_destroy(&v2);
  }
}

void AGPReceiveSetElement::~AGPReceiveSetElement(AGPReceiveSetElement *this)
{
  AGPReceiveSetElement::~AGPReceiveSetElement(this);

  JUMPOUT(0x253042880);
}

{
  v13 = *MEMORY[0x277D85DE8];
  *this = &unk_286195128;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(this + 26);
      v5 = 136315906;
      v6 = v2;
      v7 = 2080;
      v8 = "~AGPReceiveSetElement";
      v9 = 1024;
      v10 = 520;
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d DELETING receive set element %08X", &v5, 0x22u);
    }
  }

  AGPAssociationSetElement::~AGPAssociationSetElement(this);
}

void AGPDataQueue::~AGPDataQueue(AGPDataQueue *this)
{
  for (i = *this; *this; i = *this)
  {
    *this = *i;
    v3 = i[10];
    if (v3)
    {
      CFRelease(v3);
      i[10] = 0;
    }

    MEMORY[0x253042880](i, 0x1060C40E2738600);
  }

  pthread_mutex_destroy((this + 8));
}

void CAGP::~CAGP(pthread_mutex_t *this)
{
  v2 = *&this->__opaque[32];
  if (v2)
  {
    CFRelease(v2);
    *&this->__opaque[32] = 0;
  }

  v3 = *&this->__opaque[24];
  if (v3)
  {
    CFRelease(v3);
    *&this->__opaque[24] = 0;
  }

  while (1)
  {
    sig = this[3].__sig;
    if (!sig)
    {
      break;
    }

    v5 = sig[3];
    this[3].__sig = sig[2];
    CFSetRemoveValue(v5, sig);
  }

  while (1)
  {
    v6 = *this[3].__opaque;
    if (!v6)
    {
      break;
    }

    *this[3].__opaque = v6[2];
    (*(*v6 + 8))(v6);
  }

  pthread_mutex_destroy(this + 1);
  pthread_mutex_destroy(this + 2);
  v7 = *&this->__opaque[40];
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *&this->__opaque[48];
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  AGPDataQueue::~AGPDataQueue(&this[4].__opaque[24]);
  AGPDataQueue::~AGPDataQueue(&this[3].__opaque[16]);
}

uint64_t PostEventCallback(uint64_t a1, int a2, int a3, const void *a4, int a5, int a6)
{
  v6 = 2149187587;
  if (a1)
  {
    pthread_mutex_lock((a1 + 48));
    if (*(a1 + 4))
    {
      v6 = 2149187606;
LABEL_14:
      pthread_mutex_unlock((a1 + 48));
      return v6;
    }

    if (a4 && a5)
    {
      v13 = malloc_type_malloc(a5 + 48, 0x103004055E16862uLL);
      if (!v13)
      {
        goto LABEL_14;
      }

      v14 = v13;
      *v13 = a2;
      v13[2] = a3;
      v15 = v13 + 12;
      *(v14 + 2) = v15;
      v14[6] = a5;
      v14[7] = a6;
      memcpy(v15, a4, a5);
    }

    else
    {
      v16 = malloc_type_malloc(0x30uLL, 0x103004055E16862uLL);
      if (!v16)
      {
        goto LABEL_14;
      }

      v14 = v16;
      *v16 = a2;
      v16[2] = a3;
      *(v16 + 2) = 0;
      v16[6] = 0;
      v16[7] = a6;
    }

    *(v14 + 5) = 0;
    v17 = a1;
    do
    {
      v18 = v17;
      v17 = *(v17 + 40);
    }

    while (v17);
    *(v18 + 40) = v14;
    pthread_cond_signal((a1 + 112));
    v6 = 0;
    goto LABEL_14;
  }

  return 2149187585;
}

uint64_t WaitEventCallback(uint64_t a1, int a2, int a3, const void *a4, int a5, int a6, double a7)
{
  v7 = 2149187587;
  if (a1)
  {
    pthread_mutex_lock((a1 + 248));
    pthread_mutex_lock((a1 + 48));
    if (*(a1 + 4))
    {
      v7 = 2149187606;
LABEL_19:
      pthread_mutex_unlock((a1 + 48));
      pthread_mutex_unlock((a1 + 248));
      return v7;
    }

    if (a4 && a5)
    {
      v15 = malloc_type_malloc(a5 + 48, 0x103004055E16862uLL);
      if (!v15)
      {
        goto LABEL_19;
      }

      v16 = v15;
      v15[4] = a7;
      *v15 = a2;
      *(v15 + 2) = a3;
      v17 = v15 + 6;
      *(v16 + 2) = v17;
      *(v16 + 6) = a5;
      *(v16 + 7) = a6;
      memcpy(v17, a4, a5);
    }

    else
    {
      v18 = malloc_type_malloc(0x30uLL, 0x103004055E16862uLL);
      if (!v18)
      {
        goto LABEL_19;
      }

      v16 = v18;
      v18[4] = a7;
      *v18 = a2;
      *(v18 + 2) = a3;
      v18[2] = 0.0;
      *(v18 + 6) = 0;
      *(v18 + 7) = a6;
    }

    v16[5] = 0.0;
    v20 = (a1 + 240);
    v19 = *(a1 + 240);
    if (v19)
    {
      if (*(v19 + 32) > a7)
      {
LABEL_16:
        *(v16 + 5) = v19;
      }

      else
      {
        while (1)
        {
          v21 = v19;
          v19 = *(v19 + 40);
          if (!v19)
          {
            break;
          }

          if (*(v19 + 32) > a7)
          {
            v20 = (v21 + 40);
            goto LABEL_16;
          }
        }

        v20 = (v21 + 40);
      }
    }

    v7 = 0;
    *v20 = v16;
    goto LABEL_19;
  }

  return 2149187585;
}

uint64_t ServiceWaitEventCallbacks(uint64_t a1, double a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = 2149187606;
  if (!a1)
  {
    return 2149187585;
  }

  pthread_mutex_lock((a1 + 248));
  pthread_mutex_lock((a1 + 48));
  if (*(a1 + 4))
  {
LABEL_3:
    pthread_mutex_unlock((a1 + 48));
    pthread_mutex_unlock((a1 + 248));
  }

  else
  {
    v6 = (a1 + 240);
    v5 = *(a1 + 240);
    if (v5)
    {
      v7 = MEMORY[0x277CE5818];
      do
      {
        v8 = (v5 + 40);
        if (*(v5 + 32) <= a2)
        {
          *v6 = *v8;
          *v8 = 0;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v9 = VRTraceErrorLogLevelToCSTR();
            v10 = *v7;
            if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
            {
              v11 = *(v5 + 8);
              v12 = *v5;
              *buf = 136316162;
              v15 = v9;
              v16 = 2080;
              v17 = "ServiceWaitEventCallbacks";
              v18 = 1024;
              v19 = 197;
              v20 = 1024;
              v21 = v11;
              v22 = 1024;
              v23 = v12;
              _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ServiceWaitEventCallbacks: post delayed event of type %d to participant %08X", buf, 0x28u);
            }
          }

          pthread_mutex_unlock((a1 + 48));
          PostEventCallback(a1, *v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 28));
          pthread_mutex_lock((a1 + 48));
          free(v5);
          if (*(a1 + 4))
          {
            goto LABEL_3;
          }
        }

        else
        {
          v6 = (v5 + 40);
        }

        v5 = *v6;
      }

      while (*v6);
    }

    pthread_mutex_unlock((a1 + 48));
    pthread_mutex_unlock((a1 + 248));
    return 0;
  }

  return v2;
}

uint64_t StartEventCallbackThread(_DWORD *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 2149187585;
  }

  pthread_mutex_lock((a1 + 12));
  if (*a1)
  {
    pthread_mutex_unlock((a1 + 12));
    return 0;
  }

  else
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v5.__opaque[24] = v3;
    *&v5.__opaque[40] = v3;
    *&v5.__sig = v3;
    *&v5.__opaque[8] = v3;
    pthread_attr_init(&v5);
    pthread_attr_setdetachstate(&v5, 2);
    v2 = pthread_create(a1 + 20, 0, EventCBProc, a1);
    pthread_attr_destroy(&v5);
    if (v2)
    {
      v2 = v2 | 0xC01A0000;
    }

    else
    {
      *a1 = 1;
    }

    pthread_mutex_unlock((a1 + 12));
  }

  return v2;
}

uint64_t EventCBProc(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  pthread_setname_np("com.apple.gamekitservices.eventcallback.eventcbproc");
  while (1)
  {
    pthread_mutex_lock((a1 + 48));
    while (1)
    {
      v2 = *(a1 + 40);
      if (v2)
      {
        break;
      }

      if (*(a1 + 4))
      {
        goto LABEL_8;
      }

      pthread_cond_wait((a1 + 112), (a1 + 48));
    }

    if (*(a1 + 4))
    {
      break;
    }

    *(a1 + 40) = v2[5];
    pthread_mutex_unlock((a1 + 48));
    (*(a1 + 8))(*(a1 + 16), *v2, v2 + 1);
    free(v2);
  }

LABEL_8:
  pthread_mutex_unlock((a1 + 48));
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = v3;
      v8 = 2080;
      v9 = "EventCBProc";
      v10 = 1024;
      v11 = 38;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d EventCallbackThread ends.", &v6, 0x1Cu);
    }
  }

  return 0;
}

uint64_t StopEventCallbackThread(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 2149187585;
  }

  pthread_mutex_lock((a1 + 48));
  *(a1 + 4) = 1;
  pthread_cond_signal((a1 + 112));
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      v3 = v2[5];
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  *(a1 + 40) = 0;
  pthread_mutex_unlock((a1 + 48));
  pthread_join(*(a1 + 160), 0);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = v4;
      v10 = 2080;
      v11 = "CleanupWaitEventCallbacks";
      v12 = 1024;
      v13 = 226;
      _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d CleanupWaitEventCallbacks", &v8, 0x1Cu);
    }
  }

  pthread_mutex_lock((a1 + 248));
  while (1)
  {
    v6 = *(a1 + 240);
    if (!v6)
    {
      break;
    }

    *(a1 + 240) = v6[5];
    free(v6);
  }

  pthread_mutex_unlock((a1 + 248));
  pthread_mutex_destroy((a1 + 48));
  pthread_mutex_destroy((a1 + 248));
  pthread_cond_destroy((a1 + 112));
  free(a1);
  return 0;
}

void *GCKSessionDecodeChannelStatisticsInternal(char *a1, unsigned int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x98uLL, 0x102004012D539F1uLL);
  if (v4)
  {
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v8.x_public = v5;
    *&v8.x_base = v5;
    *&v8.x_op = v5;
    xdrmem_create(&v8, a1, a2, XDR_DECODE);
    if (!xdr_chanstat_node(&v8, v4))
    {
      free(v4);
      v4 = 0;
    }

    x_destroy = v8.x_ops->x_destroy;
    if (x_destroy)
    {
      (x_destroy)(&v8);
    }
  }

  return v4;
}

int *TracePrintChanStats(int *a1)
{
  v61 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    v4 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *a1;
        v6 = a1[1];
        v7 = a1[16];
        *buf = 136316418;
        v54 = v2;
        v55 = 2080;
        v56 = "TracePrintChanStats";
        v57 = 1024;
        v58 = 74;
        v59 = 1024;
        *v60 = v5;
        *&v60[4] = 1024;
        *&v60[6] = v6;
        *&v60[10] = 1024;
        *&v60[12] = v7;
        _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====> report (hostID %08X iIFIndex %d chanID %d)", buf, 0x2Eu);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      TracePrintChanStats_cold_1();
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    v10 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = a1[17];
        v12 = *(a1 + 4);
        v13 = *(a1 + 5);
        *buf = 136316418;
        v54 = v8;
        v55 = 2080;
        v56 = "TracePrintChanStats";
        v57 = 1024;
        v58 = 75;
        v59 = 1024;
        *v60 = v11;
        *&v60[4] = 1024;
        *&v60[6] = v12;
        *&v60[10] = 1024;
        *&v60[12] = v13;
        _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====>        (peerID %08X type %d rsvd %d)", buf, 0x2Eu);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      TracePrintChanStats_cold_2();
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x277CE5818];
    v16 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = a1[3];
        v18 = *(a1 + 2);
        v19 = *(a1 + 3);
        *buf = 136316418;
        v54 = v14;
        v55 = 2080;
        v56 = "TracePrintChanStats";
        v57 = 1024;
        v58 = 76;
        v59 = 1024;
        *v60 = v17;
        *&v60[4] = 2048;
        *&v60[6] = v18;
        *&v60[14] = 2048;
        *&v60[16] = v19;
        _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====>        (rtt %d recv %ld send %ld)", buf, 0x36u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      TracePrintChanStats_cold_3();
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x277CE5818];
    v22 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = a1[8];
        v24 = a1[9];
        *buf = 136316162;
        v54 = v20;
        v55 = 2080;
        v56 = "TracePrintChanStats";
        v57 = 1024;
        v58 = 78;
        v59 = 1024;
        *v60 = v23;
        *&v60[4] = 1024;
        *&v60[6] = v24;
        _os_log_impl(&dword_24E50C000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====>        (rbw %d sbw %d)", buf, 0x28u);
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      TracePrintChanStats_cold_4();
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v25 = VRTraceErrorLogLevelToCSTR();
    v26 = *MEMORY[0x277CE5818];
    v27 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 10);
        v29 = *(a1 + 11);
        v30 = *(a1 + 12);
        *buf = 136316418;
        v54 = v25;
        v55 = 2080;
        v56 = "TracePrintChanStats";
        v57 = 1024;
        v58 = 79;
        v59 = 2048;
        *v60 = v28;
        *&v60[8] = 2048;
        *&v60[10] = v29;
        *&v60[18] = 2048;
        *&v60[20] = v30;
        _os_log_impl(&dword_24E50C000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====>        (up %f irate %f orate %f)", buf, 0x3Au);
      }
    }

    else if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      TracePrintChanStats_cold_5();
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v31 = VRTraceErrorLogLevelToCSTR();
    v32 = *MEMORY[0x277CE5818];
    v33 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *(a1 + 13);
        v35 = *(a1 + 14);
        *buf = 136316162;
        v54 = v31;
        v55 = 2080;
        v56 = "TracePrintChanStats";
        v57 = 1024;
        v58 = 80;
        v59 = 2048;
        *v60 = v34;
        *&v60[8] = 2048;
        *&v60[10] = v35;
        _os_log_impl(&dword_24E50C000, v32, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====>        (iloss %f oloss %f)", buf, 0x30u);
      }
    }

    else if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      TracePrintChanStats_cold_6();
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v36 = VRTraceErrorLogLevelToCSTR();
    v37 = *MEMORY[0x277CE5818];
    v38 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = a1[18];
        *buf = 136315906;
        v54 = v36;
        v55 = 2080;
        v56 = "TracePrintChanStats";
        v57 = 1024;
        v58 = 81;
        v59 = 1024;
        *v60 = v39;
        _os_log_impl(&dword_24E50C000, v37, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====>        (ndst %d)", buf, 0x22u);
      }
    }

    else if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      TracePrintChanStats_cold_7();
    }
  }

  if (a1[18] >= 1)
  {
    v40 = 0;
    v41 = a1 + 19;
    do
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v42 = VRTraceErrorLogLevelToCSTR();
        v43 = *MEMORY[0x277CE5818];
        v44 = *MEMORY[0x277CE5818];
        if (*MEMORY[0x277CE5808] == 1)
        {
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = v41[v40];
            *buf = 136316162;
            v54 = v42;
            v55 = 2080;
            v56 = "TracePrintChanStats";
            v57 = 1024;
            v58 = 83;
            v59 = 1024;
            *v60 = v40;
            *&v60[4] = 1024;
            *&v60[6] = v45;
            _os_log_impl(&dword_24E50C000, v43, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====>         (dstID %d %08X)", buf, 0x28u);
          }
        }

        else if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          v46 = v41[v40];
          *buf = 136316162;
          v54 = v42;
          v55 = 2080;
          v56 = "TracePrintChanStats";
          v57 = 1024;
          v58 = 83;
          v59 = 1024;
          *v60 = v40;
          *&v60[4] = 1024;
          *&v60[6] = v46;
          _os_log_debug_impl(&dword_24E50C000, v43, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ====>         (dstID %d %08X)", buf, 0x28u);
        }
      }

      ++v40;
    }

    while (v40 < a1[18]);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v47 = VRTraceErrorLogLevelToCSTR();
    v48 = *MEMORY[0x277CE5818];
    v49 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = *(a1 + 18);
        *buf = 136315906;
        if (v50)
        {
          v51 = "YES";
        }

        else
        {
          v51 = "NO";
        }

        v54 = v47;
        v55 = 2080;
        v56 = "TracePrintChanStats";
        v57 = 1024;
        v58 = 85;
        v59 = 2080;
        *v60 = v51;
        _os_log_impl(&dword_24E50C000, v48, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====>        (next == %s)", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      TracePrintChanStats_cold_8();
    }
  }

  result = *(a1 + 18);
  if (result)
  {
    return TracePrintChanStats(result);
  }

  return result;
}

void GCKSession_TrimLocalInterfaceList(uint64_t *a1, int *a2, int a3)
{
  v40 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v28 = 0;
    if (a1 && a2 && (v8 = *a1) != 0)
    {
      v27 = 0;
      if (*a2 < 1)
      {
        v11 = 0;
        v10 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = v8 + 4;
        v13 = MEMORY[0x277CE5808];
        while (1)
        {
          if (*(v8 + 4) == 101 && !((*(v8 + 5) != 110) | v10 & 1))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v18 = VRTraceErrorLogLevelToCSTR();
              v19 = *MEMORY[0x277CE5818];
              v20 = *MEMORY[0x277CE5818];
              if (*v13 == 1)
              {
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                {
                  v21 = *v8;
                  *buf = 136316162;
                  v31 = v18;
                  v32 = 2080;
                  v33 = "GCKSession_TrimLocalInterfaceList";
                  v34 = 1024;
                  v35 = 320;
                  v36 = 1024;
                  v37 = v21;
                  v38 = 2080;
                  v39 = v12;
                  _os_log_impl(&dword_24E50C000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d InterfaceFilter found an en IPPort. Try to use it as first enIPPort. iFlags=(%02X)\tszIfName=%s", buf, 0x2Cu);
                }
              }

              else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                v23 = *v8;
                *buf = 136316162;
                v31 = v18;
                v32 = 2080;
                v33 = "GCKSession_TrimLocalInterfaceList";
                v34 = 1024;
                v35 = 320;
                v36 = 1024;
                v37 = v23;
                v38 = 2080;
                v39 = v12;
                _os_log_debug_impl(&dword_24E50C000, v19, OS_LOG_TYPE_DEBUG, " [%s] %s:%d InterfaceFilter found an en IPPort. Try to use it as first enIPPort. iFlags=(%02X)\tszIfName=%s", buf, 0x2Cu);
              }
            }

            v10 = _GCKSession_AddOneIPPortToInterfaceList(&v28, v8, &v27);
          }

          else if (!(((*v8 & 4) == 0) | v11 & 1))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v14 = VRTraceErrorLogLevelToCSTR();
              v15 = *MEMORY[0x277CE5818];
              v16 = *MEMORY[0x277CE5818];
              if (*v13 == 1)
              {
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  v17 = *v8;
                  *buf = 136316162;
                  v31 = v14;
                  v32 = 2080;
                  v33 = "GCKSession_TrimLocalInterfaceList";
                  v34 = 1024;
                  v35 = 323;
                  v36 = 1024;
                  v37 = v17;
                  v38 = 2080;
                  v39 = v12;
                  _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d InterfaceFilter found an carrier IPPort. Try to use it as first pdpIPPort. iFlags=(%02X)\tszIfName=%s", buf, 0x2Cu);
                }
              }

              else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                v22 = *v8;
                *buf = 136316162;
                v31 = v14;
                v32 = 2080;
                v33 = "GCKSession_TrimLocalInterfaceList";
                v34 = 1024;
                v35 = 323;
                v36 = 1024;
                v37 = v22;
                v38 = 2080;
                v39 = v12;
                _os_log_debug_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEBUG, " [%s] %s:%d InterfaceFilter found an carrier IPPort. Try to use it as first pdpIPPort. iFlags=(%02X)\tszIfName=%s", buf, 0x2Cu);
              }
            }

            v11 = _GCKSession_AddOneIPPortToInterfaceList(&v28, v8, &v27);
          }

          if (v27 >= 2)
          {
            break;
          }

          ++v9;
          v8 += 40;
          v12 += 40;
          if (v9 >= *a2)
          {
            goto LABEL_40;
          }
        }

        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v24 = VRTraceErrorLogLevelToCSTR();
          v25 = *MEMORY[0x277CE5818];
          v26 = *MEMORY[0x277CE5818];
          if (*v13 == 1)
          {
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v31 = v24;
              v32 = 2080;
              v33 = "GCKSession_TrimLocalInterfaceList";
              v34 = 1024;
              v35 = 327;
              _os_log_impl(&dword_24E50C000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d InterfaceFilter got 2 or more interfaces already. skip the rest of the list.", buf, 0x1Cu);
            }
          }

          else if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            GCKSession_TrimLocalInterfaceList_cold_1();
          }
        }
      }

LABEL_40:
      if ((v27 - 3) > 0xFFFFFFFD)
      {
        if ((v10 & 1) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_47;
      }

      GCKSession_TrimLocalInterfaceList_cold_2(v11 & 1, v10 & 1, &v29, buf);
    }

    else
    {
      GCKSession_TrimLocalInterfaceList_cold_3(&v29, buf);
    }

    v11 = v29;
    if ((buf[0] & 1) == 0)
    {
LABEL_42:
      if ((v11 & 1) == 0)
      {
        FreeLocalInterfaceList();
        return;
      }
    }

LABEL_47:
    *a2 = v27;
    FreeLocalInterfaceList();
    *a1 = v28;
    return;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    v5 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v31 = v3;
        v32 = 2080;
        v33 = "GCKSession_TrimLocalInterfaceList";
        v34 = 1024;
        v35 = 306;
        _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d InterfaceFilter not trimming interfaces for local gaming.", buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      GCKSession_TrimLocalInterfaceList_cold_4();
    }
  }
}

uint64_t _GCKSession_AddOneIPPortToInterfaceList(char **a1, __int128 *a2, unsigned int *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    _GCKSession_AddOneIPPortToInterfaceList_cold_7();
    return v17;
  }

  if (!a3)
  {
    _GCKSession_AddOneIPPortToInterfaceList_cold_6();
    return v17;
  }

  if (!a1)
  {
    _GCKSession_AddOneIPPortToInterfaceList_cold_5();
    return v17;
  }

  if (*a3 >= 2)
  {
    _GCKSession_AddOneIPPortToInterfaceList_cold_4();
    return v17;
  }

  v6 = *a3 + 1;
  v7 = *a1;
  if (!*a1)
  {
    v8 = malloc_type_calloc(1uLL, 0x28uLL, 0x100004053E81896uLL);
    v9 = v8;
    if (v8)
    {
      goto LABEL_9;
    }

    _GCKSession_AddOneIPPortToInterfaceList_cold_3();
    return v17;
  }

  v8 = malloc_type_realloc(v7, (40 * v6), 0x100004053E81896uLL);
  if (!v8)
  {
    _GCKSession_AddOneIPPortToInterfaceList_cold_1();
    return v17;
  }

  v9 = v8 + 40;
LABEL_9:
  v10 = *a2;
  v11 = a2[1];
  *(v9 + 4) = *(a2 + 4);
  *v9 = v10;
  *(v9 + 1) = v11;
  *a3 = v6;
  *a1 = v8;
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x277CE5818];
    v14 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *a2;
        v17 = 136316162;
        v18 = v12;
        v19 = 2080;
        v20 = "_GCKSession_AddOneIPPortToInterfaceList";
        v21 = 1024;
        v22 = 297;
        v23 = 1024;
        v24 = v15;
        v25 = 2080;
        v26 = a2 + 4;
        _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Successfully added an IPPort to ipPortList. Added IPPort:\tflag(%02X)\tszIfName=%s", &v17, 0x2Cu);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      _GCKSession_AddOneIPPortToInterfaceList_cold_2();
    }
  }

  return 1;
}

uint64_t UpdateRTO(unsigned int *a1, int a2)
{
  if (a2 >= 1)
  {
    v3 = *a1;
    v2 = a1[1];
    v4 = *a1 + 1;
    *a1 = v4;
    if (v3 <= 0x3F)
    {
      v5 = v2 + a2;
      v6 = (v2 + a2) / v4;
      v7 = a2 - v6;
      if ((a2 - v6) < 0)
      {
        v7 = v6 - a2;
      }

      v8 = a1[2] - (a1[2] >> 5) + v7;
      a1[1] = v5;
      a1[2] = v8;
      goto LABEL_11;
    }

    v9 = a2 - (v2 >> 6);
    if (v9 >= 0)
    {
      v10 = a2 - (v2 >> 6);
    }

    else
    {
      v10 = (v2 >> 6) - a2;
    }

    v11 = a1[2];
    if (v10 < (3 * v11) >> 5)
    {
      v12 = v9 + v2;
      v13 = v10 - (v11 >> 5) + v11;
      a1[1] = v12;
      a1[2] = v13;
      v6 = (v13 >> 5) + (v12 >> 6);
LABEL_11:
      a1[3] = v6;
    }
  }

  return a1[3];
}

uint64_t GCKSessionCreate(int a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v18 = *MEMORY[0x277D85DE8];
  if ((GCKSessionCreate_s_fInit & 1) == 0)
  {
    GCKSessionCreate_s_fInit = 1;
    if (a1 == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          buf[0] = 136315650;
          *&buf[1] = v8;
          v14 = 2080;
          v15 = "GCKSessionCreate";
          v16 = 1024;
          v17 = 6416;
          v7 = " [%s] %s:%d localscopelaunch";
          goto LABEL_10;
        }
      }
    }

    else if (!a1 && VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        buf[0] = 136315650;
        *&buf[1] = v5;
        v14 = 2080;
        v15 = "GCKSessionCreate";
        v16 = 1024;
        v17 = 6413;
        v7 = " [%s] %s:%d globalscopelaunch";
LABEL_10:
        _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 0x1Cu);
      }
    }
  }

  v9 = malloc_type_calloc(1uLL, 0x2138uLL, 0x10E004096A975A5uLL);
  if (v9)
  {
    v10 = v9;
    v11 = malloc_type_calloc(1uLL, 0x138uLL, 0x10A00406F2D52ADuLL);
    v10[12] = v11;
    if (v11)
    {
      CreateHandle();
    }

    free(v10);
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        GCKSessionCreate_cold_5();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      GCKSessionCreate_cold_6();
    }
  }

  return 2149187587;
}

void GCKSessionRelease(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v1 = VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = v1;
      v5 = 2080;
      v6 = "GCKSessionRelease";
      v7 = 1024;
      v8 = 6571;
      _os_log_impl(&dword_24E50C000, v2, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gcksession-released", buf, 0x1Cu);
    }
  }

  v3 = xmmword_24E5907B0;
  DWORD2(v3) = 50000;
  CheckInHandleDebug();
}

void gckSessionRecvProc(uint64_t a1)
{
  v2 = *MEMORY[0x277D85DE8];
  memset(v1, 170, sizeof(v1));
  pthread_setname_np("com.apple.gamekitservices.gcksession.recvproc");
  CheckInHandleDebug();
}

void gckSessionSendProc(uint64_t a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v1.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v1.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  pthread_setname_np("com.apple.gamekitservices.gcksession.sendproc");
  CheckInHandleDebug();
}

uint64_t gckSessionDisposeAllConnections(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  pthread_rwlock_wrlock((a1 + 7904));
  pthread_mutex_lock((a1 + 7800));
  memcpy(__dst, (a1 + 116), sizeof(__dst));
  __dst[71] = 0;
  ++LOWORD(__dst[68]);
  __dst[69] = 1;
  gckSessionSendLSA(a1, 1, __dst, -1, 1);
  *(a1 + 400) = 0;
  *(a1 + 388) = __dst[68];
  gckSessionFindShortestPath(*(a1 + 112), (a1 + 116));
  gckSessionCleanupNodes(a1, -1, 0);
  pthread_mutex_unlock((a1 + 7800));
  return pthread_rwlock_unlock((a1 + 7904));
}

uint64_t BWE_CloseObject(uint64_t result)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(result + 736) != 0xFFFFFFFFLL)
  {
    v1 = result;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x277CE5818];
      v4 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v5 = *(v1 + 736);
          v6 = *(v1 + 116);
          v7 = *(v1 + 744);
          v11 = 136316418;
          v12 = v2;
          v13 = 2080;
          v14 = "BWE_CloseObject";
          v15 = 1024;
          v16 = 8800;
          v17 = 2048;
          v18 = v5;
          v19 = 1024;
          v20 = v6;
          v21 = 1024;
          v22 = v7;
          _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d **Deleted BWE %p for node %d (wProbeSeqId %d)", &v11, 0x32u);
        }
      }

      else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(v1 + 736);
        v9 = *(v1 + 116);
        v10 = *(v1 + 744);
        v11 = 136316418;
        v12 = v2;
        v13 = 2080;
        v14 = "BWE_CloseObject";
        v15 = 1024;
        v16 = 8800;
        v17 = 2048;
        v18 = v8;
        v19 = 1024;
        v20 = v9;
        v21 = 1024;
        v22 = v10;
        _os_log_debug_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEBUG, " [%s] %s:%d **Deleted BWE %p for node %d (wProbeSeqId %d)", &v11, 0x32u);
      }
    }

    GCK_BWE_CloseHandle(*(v1 + 736));
  }

  return result;
}

uint64_t GCKSessionSetLocalName(uint64_t a1, const void *a2, unsigned int a3)
{
  if (a2 && (a3 & 0x80000000) == 0)
  {
    CheckInHandleDebug();
  }

  return 2149187586;
}

uint64_t gckSessionAddNode(uint64_t a1, int a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 400);
  if (v3 <= 15)
  {
    if (v3 < 1)
    {
      LODWORD(v7) = 0;
    }

    else
    {
      v7 = 0;
      v8 = (a1 + 412);
      while (*(v8 - 2) != a2)
      {
        ++v7;
        v8 += 3;
        if (v3 == v7)
        {
          goto LABEL_13;
        }
      }

      *v8 |= a3;
    }

    if (v7 == v3)
    {
LABEL_13:
      v4 = 0;
      v9 = (a1 + 12 * v3);
      v9[101] = a2;
      v9[102] = -1;
      v9[103] = a3;
      *(a1 + 400) = v3 + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v4 = 2149187603;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315650;
        v12 = v5;
        v13 = 2080;
        v14 = "gckSessionAddNode";
        v15 = 1024;
        v16 = 1021;
        _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Max # of nodes reached", &v11, 0x1Cu);
      }
    }
  }

  return v4;
}

uint64_t gckSessionLocalClientProc(double *a1)
{
  pthread_setname_np("com.apple.gamekitservices.gcksession.localclientproc");
  if (a1)
  {
    CheckInHandleDebug();
  }

  return -2145779711;
}

uint64_t gckSessionDeleteNode(uint64_t a1, int a2, int a3)
{
  v27 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315906;
      v20 = v6;
      v21 = 2080;
      v22 = "gckSessionDeleteNode";
      v23 = 1024;
      v24 = 1229;
      v25 = 1024;
      v26 = a2;
      _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Deleting a node %08X", &v19, 0x22u);
    }
  }

  result = 2149187606;
  v9 = *(a1 + 400);
  if (v9 < 1)
  {
    LODWORD(v10) = 0;
  }

  else
  {
    v10 = 0;
    v11 = (a1 + 404);
    while (1)
    {
      v12 = *v11;
      v11 += 3;
      if (v12 == a2)
      {
        break;
      }

      if (v9 == ++v10)
      {
        return result;
      }
    }
  }

  if (v10 != v9)
  {
    v13 = (a1 + 404 + 12 * v10);
    v14 = v13[1];
    memmove(v13, v13 + 3, 12 * (v9 + ~v10));
    --*(a1 + 400);
    if (v14 != -1 || a3 != 0)
    {
      ++*(a1 + 388);
      *(a1 + 392) = 1;
      v16 = *(a1 + 112);
      if (a3 && v16 > 0)
      {
        v17 = 0;
        v18 = a1;
        while (*(v18 + 116) != a2)
        {
          ++v17;
          v18 += 480;
          if (v16 == v17)
          {
            goto LABEL_22;
          }
        }

        memmove((v18 + 116), (v18 + 596), 480 * (~v17 + v16));
        v16 = (*(a1 + 112) - 1);
        *(a1 + 112) = v16;
      }

LABEL_22:
      gckSessionFindShortestPath(v16, (a1 + 116));
    }

    return 0;
  }

  return result;
}

uint64_t gckSessionDisconnectNeighbor(uint64_t a1, int a2, int a3)
{
  v29 = *MEMORY[0x277D85DE8];
  pthread_rwlock_wrlock((a1 + 7904));
  pthread_mutex_lock((a1 + 7800));
  memcpy(__dst, (a1 + 116), sizeof(__dst));
  v6 = __dst[71];
  if (__dst[71] < 1)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = 0;
    v8 = &__dst[72];
    while (1)
    {
      v9 = *v8;
      v8 += 3;
      if (v9 == a2)
      {
        break;
      }

      if (__dst[71] == ++v7)
      {
        goto LABEL_8;
      }
    }
  }

  if (v7 == __dst[71])
  {
    goto LABEL_8;
  }

  v16 = a1 + 12 * v7;
  v17 = (*(v16 + 412) & ~a3) == 0;
  *(v16 + 412) &= ~a3;
  if (v17)
  {
    v18 = &__dst[3 * v7 + 72];
    v19 = v18[1];
    memmove(v18, v18 + 3, 12 * (v6 + ~v7));
    --__dst[71];
    if (v19 == -1)
    {
      memcpy((a1 + 116), __dst, 0x1E0uLL);
      *(a1 + 392) = 0;
    }

    else
    {
      ++LOWORD(__dst[68]);
      __dst[69] = 1;
      gckSessionSendLSA(a1, 1, __dst, -1, 1);
      memcpy((a1 + 116), __dst, 0x1E0uLL);
      *(a1 + 392) = 0;
      gckSessionFindShortestPath(*(a1 + 112), (a1 + 116));
    }

LABEL_8:
    pthread_mutex_unlock((a1 + 7800));
    v10 = *(a1 + 7888);
    if (v10)
    {
      v11 = MEMORY[0x277CE5818];
      do
      {
        if (*(v10 + 116) == a2)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v12 = VRTraceErrorLogLevelToCSTR();
            v13 = *v11;
            if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
            {
              v14 = *(v10 + 116);
              *buf = 136315906;
              v21 = v12;
              v22 = 2080;
              v23 = "gckSessionDisconnectNeighbor";
              v24 = 1024;
              v25 = 3131;
              v26 = 1024;
              v27 = v14;
              _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gckSessionDisconnectNeighbor closing (%d)", buf, 0x22u);
            }
          }

          *(v10 + 84) = 1;
        }

        v10 = *(v10 + 728);
      }

      while (v10);
    }

    return pthread_rwlock_unlock((a1 + 7904));
  }

  pthread_mutex_unlock((a1 + 7800));

  return pthread_rwlock_unlock((a1 + 7904));
}

uint64_t gckSessionSendDD(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v38 = *MEMORY[0x277D85DE8];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26 = v6;
  v27 = v6;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v9 = " back";
      *buf = 136316162;
      if (a3)
      {
        v9 = "";
      }

      v29 = v7;
      v30 = 2080;
      v31 = "gckSessionSendDD";
      v32 = 1024;
      v33 = 1718;
      v34 = 2080;
      v35 = v9;
      v36 = 1024;
      v37 = v4;
      _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sending DD%s to [%08X]", buf, 0x2Cu);
    }
  }

  v10 = 2149187606;
  pthread_mutex_lock((a1 + 7800));
  v11 = *(a1 + 112);
  HIDWORD(v26) = v11;
  *&v27 = a1 + 116;
  v12 = *(a1 + 7888);
  if (!v12)
  {
LABEL_9:
    pthread_mutex_unlock((a1 + 7800));
    return v10;
  }

  while (*(v12 + 116) != v4)
  {
    v12 = *(v12 + 728);
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  if (!*(v12 + 88))
  {
    ++*(a1 + 388);
    *(a1 + 392) = 1;
  }

  TracePrintNodes(v11, a1 + 116);
  v14 = OSPFMakeDD(&v25, &v26, 0, *(a1 + 108), v4, *(v12 + 48));
  *(v12 + 88) = 1;
  pthread_mutex_unlock((a1 + 7800));
  if ((v14 & 0x80000000) != 0)
  {
    return 2149187618;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v29 = v15;
      v30 = 2080;
      v31 = "gckSessionSendDD";
      v32 = 1024;
      v33 = 1753;
      v34 = 1024;
      LODWORD(v35) = v14;
      _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Made DD of %d bytes", buf, 0x22u);
    }
  }

  if (!a3)
  {
    v10 = SendUDPPacketToParticipantChannelID(a1, v25, v14, v4, 0, -1, 0);
LABEL_26:
    free(v25);
    return v10;
  }

  v17 = *(a1 + 7888);
  if (!v17)
  {
LABEL_21:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        gckSessionSendDD_cold_1();
      }
    }

    goto LABEL_26;
  }

  while (*(v17 + 116) != v4)
  {
    v17 = *(v17 + 728);
    if (!v17)
    {
      goto LABEL_21;
    }
  }

  pthread_mutex_lock((v17 + 664));
  v18 = *(v17 + 496);
  if (v18)
  {
    while (1)
    {
      v19 = v18;
      if (*v18 == 2)
      {
        break;
      }

      v18 = *(v18 + 64);
      if (!v18)
      {
        v20 = (v19 + 64);
        goto LABEL_32;
      }
    }

    *(v18 + 8) = xmmword_24E5907C0;
    *(v18 + 32) = 0x4082BFEB851EB852;
    v23 = *(v18 + 40);
    if (v23)
    {
      free(v23);
    }

    *(v19 + 40) = v25;
    *(v19 + 48) = v14;
    *(v19 + 52) = v4;
  }

  else
  {
    v20 = (v17 + 496);
LABEL_32:
    v21 = malloc_type_calloc(1uLL, 0x48uLL, 0x10200409EACE7F9uLL);
    *v21 = 2;
    *(v21 + 8) = xmmword_24E5907C0;
    v22 = v25;
    *(v21 + 4) = 0x4082BFEB851EB852;
    *(v21 + 5) = v22;
    *(v21 + 12) = v14;
    *(v21 + 13) = v4;
    *v20 = v21;
  }

  pthread_mutex_unlock((v17 + 664));
  v24 = *(a1 + 12);
  if (v24 != -1)
  {
    *(a1 + 12) = -1;
    close(v24);
  }

  return 0;
}

void GCKSessionPrepareConnectionWithRelayInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = 0;
  CheckInHandleDebug();
}

uint64_t gckSessionCreateSocketAndBind(__int128 *a1, int a2, int a3, int **a4)
{
  v65 = *MEMORY[0x277D85DE8];
  *&v8.sa_len = 0xAAAAAAAAAAAAAAAALL;
  *&v8.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
  v64[3] = v8;
  v64[4] = v8;
  v64[2] = v8;
  *(v64 + 14) = 0xAAAAAAAAAAAAAAAALL;
  v63 = v8;
  v64[0] = v8;
  v62 = v8;
  v38 = -1431655766;
  memset(v39, 170, 6);
  v61 = 0xAAAAAAAAAAAAAAAALL;
  v59 = v8;
  v60 = v8;
  *&v37.ai_addrlen = v8;
  *&v37.ai_addr = v8;
  *&v37.ai_flags = v8;
  v36 = 0xAAAAAAAAAAAAAAAALL;
  v57 = v8;
  v58 = v8;
  v55 = v8;
  v56 = v8;
  v53 = v8;
  v54 = v8;
  v51 = v8;
  v52 = v8;
  v9 = malloc_type_calloc(1uLL, 0x300uLL, 0x10200408D2C4DCCuLL);
  if (!v9)
  {
    v16 = 2149187587;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        gckSessionCreateSocketAndBind_cold_7();
      }
    }

    return v16;
  }

  v10 = v9;
  *(v9 + 29) = a2;
  *(v9 + 25) = a3;
  *(v9 + 108) = -1;
  *(v9 + 102) = 0;
  v11 = *a1;
  v12 = a1[1];
  *(v9 + 444) = *(a1 + 4);
  *(v9 + 412) = v11;
  *(v9 + 428) = v12;
  v13 = *a1;
  if (*a1)
  {
    ai_family = 30;
  }

  else
  {
    ai_family = 2;
  }

  memset(&v37.ai_socktype, 0, 40);
  v37.ai_flags = 5;
  v37.ai_family = ai_family;
  v37.ai_socktype = 2;
  if (v13)
  {
    if (*(a1 + 20) != *MEMORY[0x277D85EE8] || *(a1 + 28) != *(MEMORY[0x277D85EE8] + 8))
    {
      goto LABEL_7;
    }

LABEL_16:
    v15 = 0;
    goto LABEL_17;
  }

  if (!*(a1 + 5))
  {
    goto LABEL_16;
  }

LABEL_7:
  v15 = IPToString();
LABEL_17:
  __sprintf_chk(v39, 0, 6uLL, "%u", *(a1 + 18));
  v18 = getaddrinfo(v15, v39, &v37, &v36);
  if (v18)
  {
    v16 = v18 | 0xB01A0000;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        gckSessionCreateSocketAndBind_cold_1();
      }
    }

LABEL_62:
    free(v10);
    return v16;
  }

  v19 = v36;
  if (v36)
  {
    v20 = v36;
    while (v20->ai_family != ai_family)
    {
      v20 = v20->ai_next;
      if (!v20)
      {
        ai_family = v36->ai_family;
        goto LABEL_30;
      }
    }

    v19 = v20;
LABEL_30:
    v10[18] = -1;
    v21 = socket(ai_family, v19->ai_socktype, v19->ai_protocol);
    *v10 = v21;
    if (v21 == -1)
    {
      v16 = *__error() | 0xC00F0000;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          gckSessionCreateSocketAndBind_cold_5();
        }
      }

      freeaddrinfo(v36);
      goto LABEL_62;
    }

    v35 = 1;
    if (v13)
    {
      setsockopt(v21, 41, 27, &v35, 4u);
      if (*(a1 + 1))
      {
        *buf = 1;
        setsockopt(*v10, 0xFFFF, 4356, buf, 4u);
      }

      v22 = *v10;
      v23 = 41;
      v24 = 61;
    }

    else
    {
      *buf = if_nametoindex(a1 + 4);
      setsockopt(*v10, 0, 25, buf, 4u);
      setsockopt(*v10, 0, 7, &v35, 4u);
      v22 = *v10;
      v23 = 0;
      v24 = 20;
    }

    setsockopt(v22, v23, v24, &v35, 4u);
    v34 = 1;
    setsockopt(*v10, 0xFFFF, 4130, &v34, 4u);
    v33 = 500;
    setsockopt(*v10, 0xFFFF, 4230, &v33, 4u);
    ai_addr = v19->ai_addr;
    v26 = 16402;
    do
    {
      *ai_addr->sa_data = bswap32(v26) >> 16;
      if (!bind(*v10, v19->ai_addr, v19->ai_addrlen))
      {
        freeaddrinfo(v36);
        goto LABEL_48;
      }

      --v26;
    }

    while (v26 >= 0x4000u);
    *ai_addr->sa_data = 0;
    v27 = bind(*v10, v19->ai_addr, v19->ai_addrlen);
    freeaddrinfo(v36);
    if (v27)
    {
      v16 = *__error() | 0xC00F0000;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          gckSessionCreateSocketAndBind_cold_2();
        }
      }

LABEL_61:
      close(*v10);
      goto LABEL_62;
    }

LABEL_48:
    v38 = 128;
    if (getsockname(*v10, &v51, &v38) == -1)
    {
      v16 = *__error() | 0xC01A0000;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          gckSessionCreateSocketAndBind_cold_4();
        }
      }

      goto LABEL_61;
    }

    SAToIPPORT();
    *(v10 + 224) = WORD2(v61);
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v30 = IPPORTToStringWithSize();
        v31 = *v10;
        *buf = 136316674;
        *&buf[4] = v28;
        *&buf[12] = 2080;
        *&buf[14] = "gckSessionCreateSocketAndBind";
        v41 = 1024;
        v42 = 982;
        v43 = 1024;
        v44 = a2;
        v45 = 2080;
        v46 = v30;
        v47 = 2080;
        v48 = v10 + 104;
        v49 = 1024;
        v50 = v31;
        _os_log_impl(&dword_24E50C000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d For remoteID[%08X]: Start listening on %s(%s) sock %d\n", buf, 0x3Cu);
      }
    }

    *(v10 + 50) = 0;
    memset(buf, 170, 16);
    if (!pthread_mutexattr_init(buf))
    {
      pthread_mutexattr_settype(buf, 2);
      pthread_mutex_init((v10 + 166), buf);
      pthread_mutexattr_destroy(buf);
      v16 = 0;
      *(v10 + 92) = 0xFFFFFFFFLL;
      *(v10 + 372) = 0;
      *(v10 + 187) = 0;
      *a4 = v10;
      return v16;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        gckSessionCreateSocketAndBind_cold_3();
      }
    }

    close(*v10);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      gckSessionCreateSocketAndBind_cold_6();
    }
  }

  free(v10);
  return 2149187588;
}

char *GCKGetNAT64Prefix(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8496);
  if (v4)
  {
    v5 = *a2 & 1;
    do
    {
      if ((*v4 & 1) == v5)
      {
        if (v5)
        {
          if (*(v4 + 20) == *(a2 + 20) && *(v4 + 28) == *(a2 + 28))
          {
LABEL_12:
            if (*(v4 + 18) == *(a2 + 36))
            {
              return v4 + 40;
            }
          }
        }

        else if (*(v4 + 5) == *(a2 + 20))
        {
          goto LABEL_12;
        }
      }

      v4 = *(v4 + 7);
      *(a1 + 8496) = v4;
    }

    while (v4);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    v9 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        *buf = 136316162;
        v31 = v7;
        v32 = 2080;
        v33 = "GCKGetNAT64Prefix";
        v34 = 1024;
        v35 = 447;
        v36 = 2080;
        v37 = (a2 + 4);
        v38 = 2048;
        v39 = micro(v10, v11);
        _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKGetNAT64Prefix: start NAT64 prefix resolution for %s at %f", buf, 0x30u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      GCKGetNAT64Prefix_cold_1(v7, a2);
    }
  }

  v4 = malloc_type_calloc(1uLL, 0x40uLL, 0x10200406CABA15FuLL);
  *(a1 + 8496) = v4;
  v12 = *(a2 + 32);
  v13 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 1) = v13;
  *(v4 + 4) = v12;
  v14 = (a2 + 4);
  if_nametoindex(v14);
  v15 = nw_nat64_copy_prefixes();
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v15 < 1)
  {
    if (ErrorLogLevelForModule >= 8)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x277CE5818];
      v25 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        if (v26)
        {
          v28 = micro(v26, v27);
          *buf = 136316162;
          v31 = v23;
          v32 = 2080;
          v33 = "GCKGetNAT64Prefix";
          v34 = 1024;
          v35 = 458;
          v36 = 2080;
          v37 = v14;
          v38 = 2048;
          v39 = v28;
          _os_log_impl(&dword_24E50C000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKGetNAT64Prefix: no NAT64 prefix discovered for %s at %f", buf, 0x30u);
        }
      }

      else if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        GCKGetNAT64Prefix_cold_2(v23, v14);
      }
    }
  }

  else
  {
    if (ErrorLogLevelForModule >= 8)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x277CE5818];
      v19 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
        if (v20)
        {
          v22 = micro(v20, v21);
          *buf = 136316162;
          v31 = v17;
          v32 = 2080;
          v33 = "GCKGetNAT64Prefix";
          v34 = 1024;
          v35 = 454;
          v36 = 2080;
          v37 = v14;
          v38 = 2048;
          v39 = v22;
          _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKGetNAT64Prefix: NAT64 prefix resolved for %s at %f", buf, 0x30u);
        }
      }

      else if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        GCKGetNAT64Prefix_cold_3(v17, v14);
      }
    }

    *(v4 + 40) = MEMORY[0];
    free(0);
  }

  return v4 + 40;
}

uint64_t gckSessionChangeState(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3;
  pthread_rwlock_rdlock((a1 + 7904));
  for (i = *(a1 + 7888); i; i = *(i + 728))
  {
    if (*(i + 116) == a2)
    {
      pthread_mutex_lock((i + 664));
      gckSessionChangeStateCList(a1, i, v3);
      pthread_mutex_unlock((i + 664));
    }
  }

  return pthread_rwlock_unlock((a1 + 7904));
}

uint64_t xdr_chanstat_node(XDR *a1, uint64_t a2)
{
  if (xdr_u_int32_t(a1, a2) && xdr_u_int32_t(a1, (a2 + 4)) && xdr_u_int16_t(a1, (a2 + 8)) && xdr_u_int16_t(a1, (a2 + 10)) && xdr_u_int32_t(a1, (a2 + 12)) && xdr_u_int64_t(a1, (a2 + 16)) && xdr_u_int64_t(a1, (a2 + 24)) && xdr_u_int32_t(a1, (a2 + 32)) && xdr_u_int32_t(a1, (a2 + 36)) && xdr_float(a1, (a2 + 40)) && xdr_float(a1, (a2 + 44)) && xdr_float(a1, (a2 + 48)) && xdr_float(a1, (a2 + 52)) && xdr_float(a1, (a2 + 56)) && xdr_u_int32_t(a1, (a2 + 64)) && xdr_u_int32_t(a1, (a2 + 68)) && xdr_u_int32_t(a1, (a2 + 72)))
  {
    v4 = (a2 + 76);
    v5 = 16;
    while (xdr_u_int32_t(a1, v4))
    {
      ++v4;
      if (!--v5)
      {

        return xdr_pointer(a1, (a2 + 144), 0x98u, xdr_chanstat_node);
      }
    }
  }

  return 0;
}

uint64_t GCKSessionPrepareRetryICE(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v72 = *MEMORY[0x277D85DE8];
  v60 = 0;
  v61 = 0xAAAAAAAAAAAAAAAALL;
  LocalInterfaceListWithOptions = GetLocalInterfaceListWithOptions();
  if (!LocalInterfaceListWithOptions)
  {
    v47 = 2149187606;
    FreeLocalInterfaceList();
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        GCKSessionPrepareRetryICE_cold_1();
      }
    }

    v48 = 0;
    goto LABEL_79;
  }

  v7 = LocalInterfaceListWithOptions;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v63 = v8;
      v64 = 2080;
      v65 = "GCKSessionPrepareRetryICE";
      v66 = 1024;
      v67 = 2001;
      v68 = 1024;
      v69 = v4;
      v70 = 1024;
      v71 = v7;
      _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d For remoteID[%08X]: %d interfaces found.\n", buf, 0x28u);
    }
  }

  if (v7 < 1)
  {
    v56 = 0;
    goto LABEL_72;
  }

  v10 = 0;
  v56 = 0;
  v11 = (a1 + 7888);
  v57 = v7;
  v12 = 1;
  v58 = v4;
LABEL_7:
  v55 = v12;
  do
  {
    v13 = if_nametoindex((v61 + 40 * v10 + 4));
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v63 = v14;
        v64 = 2080;
        v65 = "GCKSessionPrepareRetryICE";
        v66 = 1024;
        v67 = 2006;
        v68 = 1024;
        v69 = v10;
        v70 = 1024;
        v71 = v13;
        _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d check %d iIFIndex %d", buf, 0x28u);
      }
    }

    v59 = 0;
    pthread_rwlock_wrlock((a1 + 7904));
    v16 = *v11;
    v60 = v16;
    if (!v16)
    {
      pthread_rwlock_unlock((a1 + 7904));
      v60 = 0;
      v4 = v58;
      goto LABEL_48;
    }

    v17 = 0;
    v18 = 0;
    v4 = v58;
    do
    {
      if (v16[26] != v13 || v16[29] != v4)
      {
        goto LABEL_23;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v21 = v16[25];
          *buf = 136316162;
          v63 = v19;
          v64 = 2080;
          v65 = "GCKSessionPrepareRetryICE";
          v66 = 1024;
          v67 = 2019;
          v68 = 1024;
          v69 = v21;
          v70 = 1024;
          v71 = v13;
          _os_log_impl(&dword_24E50C000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d found channel %d iIFIndex %d", buf, 0x28u);
        }
      }

      v22 = v16[27];
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if ((v22 & 0x80000000) == 0)
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v24 = VRTraceErrorLogLevelToCSTR();
          v25 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v26 = v16[27];
            *buf = 136316162;
            v63 = v24;
            v64 = 2080;
            v65 = "GCKSessionPrepareRetryICE";
            v66 = 1024;
            v67 = 2022;
            v68 = 1024;
            v69 = v26;
            v70 = 1024;
            v71 = v13;
            _os_log_impl(&dword_24E50C000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d channel priority %d iIFIndex %d", buf, 0x28u);
          }
        }

        v18 = 1;
        v4 = v58;
LABEL_23:
        v11 = (v16 + 182);
        goto LABEL_24;
      }

      if (ErrorLogLevelForModule >= 7)
      {
        v27 = VRTraceErrorLogLevelToCSTR();
        v28 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v29 = v16[28];
          *buf = 136316162;
          v63 = v27;
          v64 = 2080;
          v65 = "GCKSessionPrepareRetryICE";
          v66 = 1024;
          v67 = 2025;
          v68 = 1024;
          v69 = v29;
          v70 = 1024;
          v71 = v13;
          _os_log_impl(&dword_24E50C000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d remove original %d iIFIndex %d", buf, 0x28u);
        }
      }

      *v11 = *(v16 + 91);
      v17 = v60;
      *(v60 + 91) = v59;
      v59 = v17;
      v4 = v58;
LABEL_24:
      v16 = *v11;
      v60 = v16;
    }

    while (v16);
    pthread_rwlock_unlock((a1 + 7904));
    if (v17)
    {
      do
      {
        v30 = v17;
        v59 = *(v17 + 91);
        if (*v17 != -1)
        {
          close(*v17);
          *v17 = -1;
        }

        v31 = v17[18];
        if (v31 != -1)
        {
          close(v31);
          v17[18] = -1;
        }

        ICERemoveOneInterface();
        v32 = &v59;
        do
        {
          v33 = v32;
          v34 = *v32;
          v32 = (*v32 + 182);
          if (v34)
          {
            v35 = v34 == v17;
          }

          else
          {
            v35 = 1;
          }
        }

        while (!v35);
        if (v34)
        {
          *v33 = *(v34 + 91);
          *(v34 + 91) = *(a1 + 7896);
          *(a1 + 7896) = v34;
        }

        v17 = v59;
      }

      while (v59);
    }

    else
    {
      v30 = 0;
    }

    v60 = v30;
    v11 = (a1 + 7888);
    if (!v18)
    {
LABEL_48:
      if ((gckSessionCreateSocketAndBind((v61 + 40 * v10), v4, *(a1 + 88), &v60) & 0x80000000) != 0)
      {
        goto LABEL_54;
      }

      v36 = v60;
      *(v60 + 49) = 0x404DFEB851EB851FLL;
      *(v36 + 48) = *(a1 + 24);
      v36[26] = v13;
      v37 = ICEAddOneInterface();
      v38 = VRTraceGetErrorLogLevelForModule();
      if (v37 < 0)
      {
        if (v38 >= 3)
        {
          v39 = VRTraceErrorLogLevelToCSTR();
          v40 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v63 = v39;
            v64 = 2080;
            v65 = "GCKSessionPrepareRetryICE";
            v66 = 1024;
            v67 = 2059;
            v68 = 1024;
            v69 = v58;
            v70 = 1024;
            v71 = 6;
            _os_log_error_impl(&dword_24E50C000, v40, OS_LOG_TYPE_ERROR, " [%s] %s:%d GCKSessionPrepareRetryICE: FAILURE adding interface for remoteID[%08X]: proto %d", buf, 0x28u);
          }
        }

        close(*v36);
        freeOptionsList(v36 + 64);
        freeOptionsList(v36 + 65);
        pthread_mutex_destroy((v36 + 166));
        BWE_CloseObject(v36);
        free(v36);
        v4 = v58;
        goto LABEL_54;
      }

      if (v38 >= 7)
      {
        v41 = VRTraceErrorLogLevelToCSTR();
        v42 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v63 = v41;
          v64 = 2080;
          v65 = "GCKSessionPrepareRetryICE";
          v66 = 1024;
          v67 = 2069;
          v68 = 1024;
          v69 = v58;
          v70 = 1024;
          v71 = 6;
          _os_log_impl(&dword_24E50C000, v42, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionPrepareRetryICE: SUCCESS adding interface for remoteID[%08X]: proto %d", buf, 0x28u);
        }
      }

      *(v36 + 34) = 0u;
      *(v36 + 284) = 1;
      *(v36 + 309) = 0;
      *(v36 + 570) = 0u;
      *(v36 + 586) = 0u;
      *(v36 + 602) = 0u;
      pthread_rwlock_wrlock((a1 + 7904));
      v43 = v11;
      do
      {
        v44 = v43;
        v45 = *v43;
        v43 = (*v43 + 182);
      }

      while (v45);
      *v44 = v36;
      pthread_rwlock_unlock((a1 + 7904));
      v12 = 0;
      ++*(a1 + 88);
      ++v56;
      ++v10;
      v4 = v58;
      if (v10 == v57)
      {
LABEL_64:
        pthread_rwlock_rdlock((a1 + 7904));
        v46 = *(a1 + 12);
        if (v46 != -1)
        {
          *(a1 + 12) = -1;
          close(v46);
        }

        pthread_rwlock_unlock((a1 + 7904));
        goto LABEL_72;
      }

      goto LABEL_7;
    }

LABEL_54:
    ++v10;
  }

  while (v10 != v57);
  if ((v55 & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_72:
  FreeLocalInterfaceList();
  v48 = v56;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v49 = VRTraceErrorLogLevelToCSTR();
    v50 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v63 = v49;
      v64 = 2080;
      v65 = "GCKSessionPrepareRetryICE";
      v66 = 1024;
      v67 = 2112;
      v68 = 1024;
      v69 = v4;
      v70 = 1024;
      v71 = v56;
      _os_log_impl(&dword_24E50C000, v50, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d For remoteID[%08X]: %d valid interfaces found.\n", buf, 0x28u);
    }
  }

  if (!v56)
  {
    v47 = 2149187606;
LABEL_79:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v52 = VRTraceErrorLogLevelToCSTR();
      v53 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v63 = v52;
        v64 = 2080;
        v65 = "GCKSessionPrepareRetryICE";
        v66 = 1024;
        v67 = 2130;
        v68 = 1024;
        v69 = v4;
        v70 = 1024;
        v71 = v48;
        _os_log_error_impl(&dword_24E50C000, v53, OS_LOG_TYPE_ERROR, " [%s] %s:%d remoteID[%08X]: %d valid interfaces found", buf, 0x28u);
      }
    }

    return v47;
  }

  v51 = ICEGetCandidates();
  v47 = 0;
  if ((v51 & 0x80000000) != 0)
  {
    v47 = v51;
    goto LABEL_79;
  }

  return v47;
}

void GCKSessionSendDOOB(uint64_t a1, int a2, const UInt8 *a3, int a4, unsigned int a5, double a6)
{
  *bytes = __rev16(a5);
  Mutable = CFDataCreateMutable(0, 0);
  CFDataAppendBytes(Mutable, bytes, 2);
  if (a3 && a4)
  {
    CFDataAppendBytes(Mutable, a3, a4);
  }

  v12 = *(a1 + 96);
  if (*(a1 + 108) == a2)
  {
    v13 = 8;
  }

  else
  {
    v13 = 7;
  }

  BytePtr = CFDataGetBytePtr(Mutable);
  Length = CFDataGetLength(Mutable);
  v17 = Length;
  if (a6 <= 0.0)
  {
    PostEventCallback(v12, a2, v13, BytePtr, Length, 1);
  }

  else
  {
    v18 = micro(Length, v16);
    WaitEventCallback(v12, a2, v13, BytePtr, v17, 1, v18 + a6);
  }

  CFRelease(Mutable);
}

uint64_t gckSessionChangeStateCList(uint64_t a1, uint64_t a2, int a3)
{
  v66 = *MEMORY[0x277D85DE8];
  v6 = 2149187628;
  v7 = *(a2 + 408);
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 != 1 && a3 != 2)
      {
        return v6;
      }

      if (v7 == 1)
      {
        v8 = 2;
      }

      else
      {
        v8 = *(a2 + 408);
      }
    }

    else if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = *(a2 + 408);
    }

    goto LABEL_31;
  }

  if (a3 > 4)
  {
    if (a3 != 5 && a3 != 11)
    {
      return v6;
    }

    v9 = *(a1 + 104);
    if (v9 == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_30;
      }

      v13 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      v52 = 136315650;
      v53 = v13;
      v54 = 2080;
      v55 = "gckSessionChangeStateCList";
      v56 = 1024;
      v57 = 2225;
      v12 = " [%s] %s:%d localscopeDisconnectedForced";
    }

    else
    {
      if (v9)
      {
        goto LABEL_30;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_30;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      v52 = 136315650;
      v53 = v10;
      v54 = 2080;
      v55 = "gckSessionChangeStateCList";
      v56 = 1024;
      v57 = 2221;
      v12 = " [%s] %s:%d globalscopeDisconnectedForced";
    }

    _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, v12, &v52, 0x1Cu);
LABEL_30:
    v8 = 4;
    goto LABEL_31;
  }

  if (a3 == 3)
  {
    if (v7 <= 3)
    {
      v8 = 3;
    }

    else
    {
      v8 = *(a2 + 408);
    }

LABEL_31:
    if (v7 != v8)
    {
      goto LABEL_32;
    }

    return v6;
  }

  if (v7 <= 3 && v7 != 1)
  {
    v8 = 4;
LABEL_32:
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a2 + 116);
        v52 = 136316674;
        v53 = v14;
        v54 = 2080;
        v55 = "gckSessionChangeStateCList";
        v56 = 1024;
        v57 = 2232;
        v58 = 1024;
        v59 = v16;
        v60 = 1024;
        v61 = a3;
        v62 = 1024;
        v63 = v7;
        v64 = 1024;
        v65 = v8;
        _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%08X] State Change with event %d: %d -> %d", &v52, 0x34u);
      }
    }

    if (v8 != 4)
    {
      goto LABEL_94;
    }

    pthread_mutex_lock((a1 + 7800));
    if (a3 == 4)
    {
      v17 = *(a1 + 104);
      if (v17 != 1 && v7 == 3)
      {
        if (*(a2 + 400) != 0.0)
        {
          goto LABEL_63;
        }

        v18 = *(a1 + 400);
        if (v18 < 1)
        {
          LODWORD(v19) = 0;
        }

        else
        {
          v19 = 0;
          v20 = (a1 + 404);
          while (1)
          {
            v21 = *v20;
            v20 += 3;
            if (v21 == *(a2 + 116))
            {
              break;
            }

            if (v18 == ++v19)
            {
              goto LABEL_61;
            }
          }
        }

        if (v19 != v18)
        {
          v22 = a1 + 404 + 12 * v19;
          v24 = *(v22 + 4);
          v23 = (v22 + 4);
          if (v24 != -1)
          {
            *v23 = -1;
            gckSessionFindShortestPath(*(a1 + 112), (a1 + 116));
            v27 = *(a1 + 112);
            if (v27 >= 1)
            {
              v28 = (a2 + 116);
              v29 = (a1 + 120);
              while (*(v29 - 1) != *(a2 + 116))
              {
                v29 += 120;
                if (!--v27)
                {
                  goto LABEL_61;
                }
              }

              if (*v29 != -1)
              {
                *(a2 + 400) = micro(v25, v26);
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v30 = VRTraceErrorLogLevelToCSTR();
                  v31 = *MEMORY[0x277CE5818];
                  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                  {
                    v32 = *v28;
                    v52 = 136315906;
                    v53 = v30;
                    v54 = 2080;
                    v55 = "gckSessionChangeStateCList";
                    v56 = 1024;
                    v57 = 2281;
                    v58 = 1024;
                    v59 = v32;
                    _os_log_impl(&dword_24E50C000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====== remain connected to peer (%08X) =====", &v52, 0x22u);
                  }
                }

                gckSessionSendLSA(a1, *(a1 + 112), (a1 + 116), *v28, 0);
                gckSessionCleanupNodes(a1, -1, 0);
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v33 = VRTraceErrorLogLevelToCSTR();
                  v34 = *MEMORY[0x277CE5818];
                  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                  {
                    v35 = *v28;
                    v52 = 136315906;
                    v53 = v33;
                    v54 = 2080;
                    v55 = "gckSessionChangeStateCList";
                    v56 = 1024;
                    v57 = 2286;
                    v58 = 1024;
                    v59 = v35;
                    _os_log_impl(&dword_24E50C000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====== async validate viability (%08X) =====", &v52, 0x22u);
                  }
                }

                GCKSessionSendDOOB(a1, *v28, 0, 0, 6u, 10.0);
                GCKSessionSendDOOB(a1, *(a1 + 108), (a2 + 116), 4, 8u, 17.0);
                v8 = 3;
LABEL_93:
                pthread_mutex_unlock((a1 + 7800));
LABEL_94:
                v6 = 0;
                *(a2 + 408) = v8;
                return v6;
              }
            }
          }
        }
      }
    }

LABEL_61:
    if (a3 != 4)
    {
      goto LABEL_72;
    }

    v17 = *(a1 + 104);
LABEL_63:
    if (v17 == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v39 = VRTraceErrorLogLevelToCSTR();
        v37 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v52 = 136315650;
          v53 = v39;
          v54 = 2080;
          v55 = "gckSessionChangeStateCList";
          v56 = 1024;
          v57 = 2301;
          v38 = " [%s] %s:%d localscopeDisconnectedTimeout";
          goto LABEL_71;
        }
      }
    }

    else if (!v17 && VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v36 = VRTraceErrorLogLevelToCSTR();
      v37 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v52 = 136315650;
        v53 = v36;
        v54 = 2080;
        v55 = "gckSessionChangeStateCList";
        v56 = 1024;
        v57 = 2297;
        v38 = " [%s] %s:%d globalscopeDisconnectedTimeout";
LABEL_71:
        _os_log_impl(&dword_24E50C000, v37, OS_LOG_TYPE_DEFAULT, v38, &v52, 0x1Cu);
      }
    }

LABEL_72:
    if (VRTraceGetErrorLogLevelForModule() > 6)
    {
      v40 = VRTraceErrorLogLevelToCSTR();
      v41 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v42 = *(a2 + 116);
        v52 = 136315906;
        v53 = v40;
        v54 = 2080;
        v55 = "gckSessionChangeStateCList";
        v56 = 1024;
        v57 = 2306;
        v58 = 1024;
        v59 = v42;
        _os_log_impl(&dword_24E50C000, v41, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====== disconnected from a peer (%08X) =====", &v52, 0x22u);
      }
    }

    if (!*(a1 + 48) && !*(a1 + 104))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v43 = VRTraceErrorLogLevelToCSTR();
        v44 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v45 = *(a2 + 116);
          v52 = 136315906;
          v53 = v43;
          v54 = 2080;
          v55 = "gckSessionChangeStateCList";
          v56 = 1024;
          v57 = 2308;
          v58 = 1024;
          v59 = v45;
          _os_log_impl(&dword_24E50C000, v44, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d XX: STOP ICE check with peer %08X", &v52, 0x22u);
        }
      }

      ICEStopConnectivityCheck();
      ICEStopConnectivityCheck();
    }

    v46 = a3 == 11 || a3 == 4;
    v47 = gckSessionDeleteNode(a1, *(a2 + 116), a3 == 11);
    gckSessionSendLSA(a1, *(a1 + 112), (a1 + 116), *(a2 + 116), 0);
    gckSessionCleanupNodes(a1, *(a2 + 116), v46);
    v8 = 4;
    if (a3 == 4 && v47 == -2145779690)
    {
      v48 = *(a1 + 112);
      if (v48 >= 1)
      {
        v49 = v48 - 1;
        v50 = a1;
        while (*(v50 + 116) != *(a2 + 116))
        {
          v50 += 480;
          --v49;
          if (!--v48)
          {
            goto LABEL_92;
          }
        }

        memmove((v50 + 116), (v50 + 596), 480 * v49);
        --*(a1 + 112);
LABEL_92:
        v8 = 4;
      }
    }

    goto LABEL_93;
  }

  return v6;
}

void gckHandleRetryICEResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  CheckInHandleDebug();
}

void gckHandleRetryICERequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  CheckInHandleDebug();
}

void gckHandleRetryICEEnforced(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  CheckInHandleDebug();
}

void gckHandleRetryICEForce(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  CheckInHandleDebug();
}

uint64_t GCKSessionReceiveDOOB(uint64_t a1, uint64_t a2, char *a3, int a4)
{
  v96 = *MEMORY[0x277D85DE8];
  v4 = 2149187618;
  if (!a3)
  {
    return v4;
  }

  v5 = (a4 - 2);
  if (a4 < 2)
  {
    return v4;
  }

  v7 = bswap32(*a3) >> 16;
  if ((v7 - 1) > 9)
  {
    return v4;
  }

  v84 = 0;
  v85 = &v84;
  v86 = 0x2000000000;
  v87 = 0;
  v80 = 0;
  v81 = &v80;
  v82 = 0x2000000000;
  v83 = a4 - 2;
  if (v7 > 0xA)
  {
    goto LABEL_115;
  }

  if (((1 << v7) & 0x614) != 0)
  {
    goto LABEL_6;
  }

  if (v7 != 1)
  {
LABEL_115:
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v29 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v89 = v29;
        v90 = 2080;
        v91 = "GCKSessionReceiveDOOB";
        v92 = 1024;
        v93 = 8167;
        _os_log_impl(&dword_24E50C000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: SYNCHRONOUS EVENT HANDLER...", buf, 0x1Cu);
      }
    }

    if (v7 <= 6)
    {
      if (v7 <= 4)
      {
        if (v7 == 3)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v31 = VRTraceErrorLogLevelToCSTR();
            v32 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v89 = v31;
              v90 = 2080;
              v91 = "GCKSessionReceiveDOOB";
              v92 = 1024;
              v93 = 8182;
              _os_log_impl(&dword_24E50C000, v32, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE response...", buf, 0x1Cu);
            }
          }

          gckHandleRetryICEResponse(a1, a2, (a3 + 2), v5);
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v52 = VRTraceErrorLogLevelToCSTR();
          v53 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v89 = v52;
            v90 = 2080;
            v91 = "GCKSessionReceiveDOOB";
            v92 = 1024;
            v93 = 8188;
            _os_log_impl(&dword_24E50C000, v53, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE force...", buf, 0x1Cu);
          }
        }

        gckHandleRetryICEForce(a1, a2, (a3 + 2), v5);
      }

      if (v7 == 5)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v48 = VRTraceErrorLogLevelToCSTR();
          v49 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v89 = v48;
            v90 = 2080;
            v91 = "GCKSessionReceiveDOOB";
            v92 = 1024;
            v93 = 8194;
            _os_log_impl(&dword_24E50C000, v49, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE enforced...", buf, 0x1Cu);
          }
        }

        gckHandleRetryICEEnforced(a1, a2, (a3 + 2), v5);
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v56 = VRTraceErrorLogLevelToCSTR();
        v57 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v89 = v56;
          v90 = 2080;
          v91 = "GCKSessionReceiveDOOB";
          v92 = 1024;
          v93 = 8200;
          _os_log_impl(&dword_24E50C000, v57, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE validate...", buf, 0x1Cu);
        }
      }

      gckHandleRetryICEValidate(a1, a2);
    }

    if (v7 <= 8)
    {
      if (v7 == 7)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v46 = VRTraceErrorLogLevelToCSTR();
          v47 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v89 = v46;
            v90 = 2080;
            v91 = "GCKSessionReceiveDOOB";
            v92 = 1024;
            v93 = 8205;
            _os_log_impl(&dword_24E50C000, v47, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE viable...", buf, 0x1Cu);
          }
        }

        gckHandleRetryICEViable(a1, a2);
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v54 = VRTraceErrorLogLevelToCSTR();
        v55 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v89 = v54;
          v90 = 2080;
          v91 = "GCKSessionReceiveDOOB";
          v92 = 1024;
          v93 = 8210;
          _os_log_impl(&dword_24E50C000, v55, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE validation check timeout...", buf, 0x1Cu);
        }
      }

      gckHandleRetryICEValidationTimeout(a1, a2, (a3 + 2), v5);
    }

    if (v7 == 9)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v50 = VRTraceErrorLogLevelToCSTR();
        v51 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v89 = v50;
          v90 = 2080;
          v91 = "GCKSessionReceiveDOOB";
          v92 = 1024;
          v93 = 8216;
          _os_log_impl(&dword_24E50C000, v51, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE prepare...", buf, 0x1Cu);
        }
      }

      gckHandleRetryICEPreparation(a1, a2, (a3 + 2), v5);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v58 = VRTraceErrorLogLevelToCSTR();
      v59 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v89 = v58;
        v90 = 2080;
        v91 = "GCKSessionReceiveDOOB";
        v92 = 1024;
        v93 = 8222;
        _os_log_impl(&dword_24E50C000, v59, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE report...", buf, 0x1Cu);
      }
    }

    gckHandleRetryICEReport(a1, a2, a3 + 2, v5);
  }

  v83 = 0;
LABEL_6:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(v81 + 6);
      *buf = 136315906;
      v89 = v10;
      v90 = 2080;
      v91 = "GCKSessionReceiveDOOB";
      v92 = 1024;
      v93 = 8032;
      v94 = 1024;
      v95 = v12;
      _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: dispatch -- DataSize == %d...", buf, 0x22u);
    }
  }

  v13 = *(v81 + 6);
  if (v13 && v13 <= 2000)
  {
    v14 = malloc_type_malloc(v13, 0x3A44E52FuLL);
    v85[3] = v14;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v89 = v15;
      v90 = 2080;
      v91 = "GCKSessionReceiveDOOB";
      v92 = 1024;
      v93 = 8042;
      _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: ASYNCHRONOUS EVENT HANDLER...", buf, 0x1Cu);
    }
  }

  v17 = *(v81 + 6);
  if (v17)
  {
    v18 = v85[3];
    if (v18)
    {
      memcpy(v18, a3 + 2, v17);
    }
  }

  if (v7 > 5)
  {
    if (v7 <= 7)
    {
      if (v7 == 6)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v27 = VRTraceErrorLogLevelToCSTR();
          v28 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v89 = v27;
            v90 = 2080;
            v91 = "GCKSessionReceiveDOOB";
            v92 = 1024;
            v93 = 8105;
            _os_log_impl(&dword_24E50C000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE validate...", buf, 0x1Cu);
          }
        }

        global_queue = dispatch_get_global_queue(0, 0);
        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 0x40000000;
        v68[2] = __GCKSessionReceiveDOOB_block_invoke_17;
        v68[3] = &unk_279682D08;
        v69 = a2;
        v68[4] = &v84;
        v68[5] = a1;
        v22 = v68;
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v43 = VRTraceErrorLogLevelToCSTR();
          v44 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v89 = v43;
            v90 = 2080;
            v91 = "GCKSessionReceiveDOOB";
            v92 = 1024;
            v93 = 8116;
            _os_log_impl(&dword_24E50C000, v44, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE viable...", buf, 0x1Cu);
          }
        }

        global_queue = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __GCKSessionReceiveDOOB_block_invoke_19;
        block[3] = &unk_279682D30;
        v67 = a2;
        block[4] = &v84;
        block[5] = a1;
        v22 = block;
      }
    }

    else if (v7 == 8)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v35 = VRTraceErrorLogLevelToCSTR();
        v36 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v89 = v35;
          v90 = 2080;
          v91 = "GCKSessionReceiveDOOB";
          v92 = 1024;
          v93 = 8127;
          _os_log_impl(&dword_24E50C000, v36, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE validation check timeout...", buf, 0x1Cu);
        }
      }

      global_queue = dispatch_get_global_queue(0, 0);
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 0x40000000;
      v64[2] = __GCKSessionReceiveDOOB_block_invoke_21;
      v64[3] = &unk_279682D58;
      v65 = a2;
      v64[4] = &v84;
      v64[5] = &v80;
      v64[6] = a1;
      v22 = v64;
    }

    else if (v7 == 9)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v23 = VRTraceErrorLogLevelToCSTR();
        v24 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v89 = v23;
          v90 = 2080;
          v91 = "GCKSessionReceiveDOOB";
          v92 = 1024;
          v93 = 8138;
          _os_log_impl(&dword_24E50C000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE prepare...", buf, 0x1Cu);
        }
      }

      global_queue = dispatch_get_global_queue(0, 0);
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 0x40000000;
      v62[2] = __GCKSessionReceiveDOOB_block_invoke_23;
      v62[3] = &unk_279682D80;
      v63 = a2;
      v62[4] = &v84;
      v62[5] = &v80;
      v62[6] = a1;
      v22 = v62;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v39 = VRTraceErrorLogLevelToCSTR();
        v40 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v89 = v39;
          v90 = 2080;
          v91 = "GCKSessionReceiveDOOB";
          v92 = 1024;
          v93 = 8149;
          _os_log_impl(&dword_24E50C000, v40, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE report...", buf, 0x1Cu);
        }
      }

      global_queue = dispatch_get_global_queue(0, 0);
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 0x40000000;
      v60[2] = __GCKSessionReceiveDOOB_block_invoke_25;
      v60[3] = &unk_279682DA8;
      v61 = a2;
      v60[4] = &v84;
      v60[5] = &v80;
      v60[6] = a1;
      v22 = v60;
    }
  }

  else if (v7 <= 2)
  {
    if (v7 == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v89 = v25;
          v90 = 2080;
          v91 = "GCKSessionReceiveDOOB";
          v92 = 1024;
          v93 = 8050;
          _os_log_impl(&dword_24E50C000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE init...", buf, 0x1Cu);
        }
      }

      global_queue = dispatch_get_global_queue(0, 0);
      v78[0] = MEMORY[0x277D85DD0];
      v78[1] = 0x40000000;
      v78[2] = __GCKSessionReceiveDOOB_block_invoke;
      v78[3] = &unk_279682C40;
      v79 = a2;
      v78[4] = &v84;
      v78[5] = a1;
      v22 = v78;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v41 = VRTraceErrorLogLevelToCSTR();
        v42 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v89 = v41;
          v90 = 2080;
          v91 = "GCKSessionReceiveDOOB";
          v92 = 1024;
          v93 = 8061;
          _os_log_impl(&dword_24E50C000, v42, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE request...", buf, 0x1Cu);
        }
      }

      global_queue = dispatch_get_global_queue(0, 0);
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 0x40000000;
      v76[2] = __GCKSessionReceiveDOOB_block_invoke_9;
      v76[3] = &unk_279682C68;
      v76[6] = a1;
      v77 = a2;
      v76[4] = &v84;
      v76[5] = &v80;
      v22 = v76;
    }
  }

  else if (v7 == 3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v89 = v33;
        v90 = 2080;
        v91 = "GCKSessionReceiveDOOB";
        v92 = 1024;
        v93 = 8072;
        _os_log_impl(&dword_24E50C000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE response...", buf, 0x1Cu);
      }
    }

    global_queue = dispatch_get_global_queue(0, 0);
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 0x40000000;
    v74[2] = __GCKSessionReceiveDOOB_block_invoke_11;
    v74[3] = &unk_279682C90;
    v75 = a2;
    v74[4] = &v84;
    v74[5] = &v80;
    v74[6] = a1;
    v22 = v74;
  }

  else if (v7 == 4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v89 = v19;
        v90 = 2080;
        v91 = "GCKSessionReceiveDOOB";
        v92 = 1024;
        v93 = 8083;
        _os_log_impl(&dword_24E50C000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE force...", buf, 0x1Cu);
      }
    }

    global_queue = dispatch_get_global_queue(0, 0);
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 0x40000000;
    v72[2] = __GCKSessionReceiveDOOB_block_invoke_13;
    v72[3] = &unk_279682CB8;
    v73 = a2;
    v72[4] = &v84;
    v72[5] = &v80;
    v72[6] = a1;
    v22 = v72;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v37 = VRTraceErrorLogLevelToCSTR();
      v38 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v89 = v37;
        v90 = 2080;
        v91 = "GCKSessionReceiveDOOB";
        v92 = 1024;
        v93 = 8094;
        _os_log_impl(&dword_24E50C000, v38, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE enforced...", buf, 0x1Cu);
      }
    }

    global_queue = dispatch_get_global_queue(0, 0);
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 0x40000000;
    v70[2] = __GCKSessionReceiveDOOB_block_invoke_15;
    v70[3] = &unk_279682CE0;
    v71 = a2;
    v70[4] = &v84;
    v70[5] = &v80;
    v70[6] = a1;
    v22 = v70;
  }

  dispatch_async(global_queue, v22);
  v4 = 0;
  _Block_object_dispose(&v80, 8);
  _Block_object_dispose(&v84, 8);
  return v4;
}

void GCKSessionSendTo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, int a10, unsigned int a11)
{
  v11 = MEMORY[0x28223BE20](a1);
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v27 = *MEMORY[0x277D85DE8];
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = v15;
  v25 = v15;
  MEMORY[0x28223BE20](v11);
  v23 = v17;
  if (v18)
  {
    memset(&v19 - v16, 170, 4 * v17);
  }

  memset(v26, 170, sizeof(v26));
  CheckInHandleDebug();
}

uint64_t gckSessionFindNextHop(uint64_t a1, int a2)
{
  pthread_mutex_lock((a1 + 7800));
  v4 = *(a1 + 112);
  if (v4 < 1)
  {
LABEL_5:
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = (a1 + 120);
    while (*(v5 - 1) != a2)
    {
      v5 += 120;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    v6 = *v5;
  }

  pthread_mutex_unlock((a1 + 7800));
  return v6;
}

void GCKSessionSendAudioTo(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v8[6] = v2;
  v12 = *MEMORY[0x277D85DE8];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v3;
  v10 = v3;
  MEMORY[0x28223BE20](v1);
  v6 = v8 - v4;
  v8[9] = v5;
  if (v7)
  {
    memset(v8 - v4, 170, 4 * v5);
  }

  v8[5] = v6;
  memset(v11, 170, sizeof(v11));
  CheckInHandleDebug();
}

uint64_t gckSessionUpdateNode(uint64_t a1, int a2, int a3, int *a4)
{
  pthread_mutex_lock((a1 + 7800));
  v8 = *(a1 + 400);
  if (v8 < 1)
  {
    LODWORD(v9) = 0;
    v11 = 0;
    if (a4)
    {
LABEL_8:
      v13 = v9 == v8 && v8 > 0 || v11;
      *a4 = v13;
    }
  }

  else
  {
    v9 = 0;
    v10 = (a1 + 408);
    while (*(v10 - 1) != a2)
    {
      ++v9;
      v10 += 3;
      if (v8 == v9)
      {
        v11 = 0;
        LODWORD(v9) = *(a1 + 400);
        if (a4)
        {
          goto LABEL_8;
        }

        goto LABEL_15;
      }
    }

    *v10 = a3;
    v11 = v8 != 1;
    if (a4)
    {
      goto LABEL_8;
    }
  }

LABEL_15:

  return pthread_mutex_unlock((a1 + 7800));
}

uint64_t gckSessionSetupChannelCList(uint64_t a1, int a2, uint64_t a3)
{
  v5 = a1;
  v83 = *MEMORY[0x277D85DE8];
  v6 = (a1 + 7904);
  pthread_rwlock_wrlock((a1 + 7904));
  v7 = (v5 + 7888);
  v8 = *(v5 + 7888);
  if (v8)
  {
    v9 = 0;
    do
    {
      if (*(v8 + 116) == a2)
      {
        v10 = *(v8 + 108);
        if (v10 >= v9)
        {
          v9 = v10 + 1;
        }
      }

      v8 = *(v8 + 728);
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  pthread_rwlock_unlock(v6);
  v11 = 0;
  do
  {
    if (*(a3 + 16) != 6 || *a3 != a2)
    {
      goto LABEL_31;
    }

    pthread_rwlock_wrlock(v6);
    v12 = *v7;
    if (!*v7)
    {
LABEL_26:
      pthread_rwlock_unlock(v6);
      if (!v11)
      {
        *&v82[46] = 0xAAAAAAAAAAAAAAAALL;
        *&v14 = 0xAAAAAAAAAAAAAAAALL;
        *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v82[16] = v14;
        *&v82[32] = v14;
        *v82 = v14;
        *(v81 + 14) = 0xAAAAAAAAAAAAAAAALL;
        v80 = v14;
        v81[0] = v14;
        v79 = v14;
        *(v78 + 14) = 0xAAAAAAAAAAAAAAAALL;
        v77 = v14;
        v78[0] = v14;
        v76 = v14;
        *(v75 + 14) = 0xAAAAAAAAAAAAAAAALL;
        v74 = v14;
        v75[0] = v14;
        v73 = v14;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v15 = VRTraceErrorLogLevelToCSTR();
          v16 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v59 = IPPORTToStringWithSize();
            v17 = v5;
            v18 = v7;
            v19 = IPPORTToStringWithSize();
            v20 = IPPORTToStringWithSize();
            v21 = IPPORTToStringWithSize();
            *buf = 136317442;
            *&buf[4] = v15;
            *&buf[12] = 2080;
            *&buf[14] = "gckSessionSetupChannelCList";
            *&buf[22] = 1024;
            *&buf[24] = 5450;
            *&buf[28] = 1024;
            *&buf[30] = -1;
            *&buf[34] = 1024;
            *&buf[36] = a2;
            *&buf[40] = 1024;
            *&buf[42] = v9;
            *&buf[46] = 2080;
            *&buf[48] = v59;
            v64 = 2080;
            v65 = v19;
            v7 = v18;
            v5 = v17;
            v66 = 2080;
            v67 = v20;
            v68 = 2080;
            v69 = v21;
            _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d failed to setup channel %d with %08X: priority %d local[%s], src[%s] <-> dst[%s], remote[%s]\n", buf, 0x56u);
          }
        }

        v11 = 0;
        *(a3 + 312) = -1;
      }

      goto LABEL_31;
    }

    while (1)
    {
      if ((*(v12 + 112) & 0x80000000) == 0 || *(v12 + 116) != a2 || (*(a3 + 28) & 1) != (*(v12 + 412) & 1))
      {
        goto LABEL_25;
      }

      if (*(a3 + 28))
      {
        if (*(a3 + 48) != *(v12 + 432) || *(a3 + 56) != *(v12 + 440))
        {
          goto LABEL_25;
        }
      }

      else if (*(a3 + 48) != *(v12 + 432))
      {
        goto LABEL_25;
      }

      if (*(a3 + 64) == *(v12 + 448))
      {
        break;
      }

LABEL_25:
      v12 = *(v12 + 728);
      if (!v12)
      {
        goto LABEL_26;
      }
    }

    *(v81 + 14) = 0xAAAAAAAAAAAAAAAALL;
    *&v22 = 0xAAAAAAAAAAAAAAAALL;
    *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v80 = v22;
    v81[0] = v22;
    v79 = v22;
    *(v78 + 14) = 0xAAAAAAAAAAAAAAAALL;
    v77 = v22;
    v78[0] = v22;
    v76 = v22;
    *(v75 + 14) = 0xAAAAAAAAAAAAAAAALL;
    v74 = v22;
    v75[0] = v22;
    v73 = v22;
    *(v72 + 14) = 0xAAAAAAAAAAAAAAAALL;
    v71 = v22;
    v72[0] = v22;
    v70 = v22;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v56 = *(v12 + 100);
        v55 = IPPORTToStringWithSize();
        v60 = v7;
        v25 = IPPORTToStringWithSize();
        v26 = IPPORTToStringWithSize();
        v27 = IPPORTToStringWithSize();
        *buf = 136317442;
        *&buf[4] = v23;
        *&buf[12] = 2080;
        *&buf[14] = "gckSessionSetupChannelCList";
        *&buf[22] = 1024;
        *&buf[24] = 5414;
        *&buf[28] = 1024;
        *&buf[30] = v56;
        *&buf[34] = 1024;
        *&buf[36] = a2;
        *&buf[40] = 1024;
        *&buf[42] = v9;
        *&buf[46] = 2080;
        *&buf[48] = v55;
        v64 = 2080;
        v65 = v25;
        v7 = v60;
        v66 = 2080;
        v67 = v26;
        v68 = 2080;
        v69 = v27;
        _os_log_impl(&dword_24E50C000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d setup channel %d with %08X: priority %d local[%s], src[%s] <-> dst[%s], remote[%s]\n", buf, 0x56u);
      }
    }

    v28 = *(a3 + 148);
    v29 = *(a3 + 164);
    *(v12 + 484) = *(a3 + 180);
    *(v12 + 452) = v28;
    *(v12 + 468) = v29;
    *(v12 + 108) = v9;
    *(v12 + 112) = v9;
    *(v12 + 4) = *(a3 + 20);
    *(v12 + 560) = *(a3 + 268);
    *(v12 + 8) = *(a3 + 26);
    Handle = GCK_BWE_CreateHandle((v12 + 736), *(v12 + 116), 1238);
    *&buf[46] = 0xAAAAAAAAAAAAAAAALL;
    *&v31 = 0xAAAAAAAAAAAAAAAALL;
    *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&buf[16] = v31;
    *&buf[32] = v31;
    *buf = v31;
    if (VRTraceGetErrorLogLevelForModule() > 7)
    {
      v32 = VRTraceErrorLogLevelToCSTR();
      v33 = *MEMORY[0x277CE5818];
      v34 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v61 = v5;
          v35 = v7;
          v36 = *(v12 + 736);
          v57 = *(v12 + 116);
          v37 = IPPORTToStringWithSize();
          *v82 = 136316418;
          *&v82[4] = v32;
          *&v82[12] = 2080;
          *&v82[14] = "BWE_CreateObject";
          *&v82[22] = 1024;
          *&v82[24] = 8785;
          *&v82[28] = 2048;
          *&v82[30] = v36;
          v7 = v35;
          v5 = v61;
          *&v82[38] = 1024;
          *&v82[40] = v57;
          *&v82[44] = 2080;
          *&v82[46] = v37;
          _os_log_impl(&dword_24E50C000, v33, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d **Created BWE %p for node %d %s ", v82, 0x36u);
        }
      }

      else if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        v62 = v5;
        v43 = v7;
        v44 = *(v12 + 736);
        v58 = *(v12 + 116);
        v45 = IPPORTToStringWithSize();
        *v82 = 136316418;
        *&v82[4] = v32;
        *&v82[12] = 2080;
        *&v82[14] = "BWE_CreateObject";
        *&v82[22] = 1024;
        *&v82[24] = 8785;
        *&v82[28] = 2048;
        *&v82[30] = v44;
        v7 = v43;
        v5 = v62;
        *&v82[38] = 1024;
        *&v82[40] = v58;
        *&v82[44] = 2080;
        *&v82[46] = v45;
        _os_log_debug_impl(&dword_24E50C000, v33, OS_LOG_TYPE_DEBUG, " [%s] %s:%d **Created BWE %p for node %d %s ", v82, 0x36u);
      }
    }

    *(v12 + 744) = 0;
    if (Handle)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v38 = VRTraceErrorLogLevelToCSTR();
        v39 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          *v82 = 136315906;
          *&v82[4] = v38;
          *&v82[12] = 2080;
          *&v82[14] = "BWE_CreateObject";
          *&v82[22] = 1024;
          *&v82[24] = 8791;
          *&v82[28] = 1024;
          *&v82[30] = Handle;
          _os_log_error_impl(&dword_24E50C000, v39, OS_LOG_TYPE_ERROR, " [%s] %s:%d GCK_BWE_CreateHandle failed (%08X)", v82, 0x22u);
        }
      }
    }

    *(a3 + 312) = *(v12 + 100);
    v40 = *(v12 + 96);
    if ((v40 & 1) == 0)
    {
      *(v12 + 96) = v40 | 1;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v41 = VRTraceErrorLogLevelToCSTR();
        v42 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v41;
          *&buf[12] = 2080;
          *&buf[14] = "gckSessionSetupChannelCList";
          *&buf[22] = 1024;
          *&buf[24] = 5428;
          _os_log_impl(&dword_24E50C000, v42, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d retryICE: setting fGotICEResultAlready", buf, 0x1Cu);
        }
      }
    }

    ++v9;
    pthread_rwlock_unlock(v6);
    v11 = 1;
LABEL_31:
    a3 = *(a3 + 304);
  }

  while (a3);
  pthread_rwlock_wrlock(v6);
  v46 = *v7;
  if (!*v7)
  {
    return pthread_rwlock_unlock(v6);
  }

  v47 = 0;
  while (2)
  {
    while (*(v46 + 116) == a2 && (*(v46 + 108) & 0x80000000) != 0)
    {
      if (*v46 != -1)
      {
        close(*v46);
        *v46 = -1;
      }

      v48 = *(v46 + 72);
      if (v48 != -1)
      {
        close(v48);
        *(v46 + 72) = -1;
      }

      v49 = v7;
      do
      {
        v50 = v49;
        v51 = *v49;
        v49 = (*v49 + 728);
        if (v51)
        {
          v52 = v51 == v46;
        }

        else
        {
          v52 = 1;
        }
      }

      while (!v52);
      if (!v51)
      {
        v47 = 1;
        break;
      }

      *v50 = *(v51 + 728);
      *(v51 + 728) = *(v5 + 7896);
      *(v5 + 7896) = v51;
      v46 = *(v5 + 7888);
      v47 = 1;
      if (!v46)
      {
        goto LABEL_72;
      }
    }

    v46 = *(v46 + 728);
    if (v46)
    {
      continue;
    }

    break;
  }

  if (!v47)
  {
    return pthread_rwlock_unlock(v6);
  }

LABEL_72:
  v53 = *(v5 + 12);
  if (v53 != -1)
  {
    *(v5 + 12) = -1;
    close(v53);
  }

  return pthread_rwlock_unlock(v6);
}

uint64_t gckSessionSendHello(uint64_t a1, uint64_t a2, int a3, uint64_t a4, __int16 a5, uint64_t a6)
{
  v6 = a6;
  v8 = a4;
  v10 = a2;
  v45 = *MEMORY[0x277D85DE8];
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33 = v12;
  v34 = v12;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v15 = " back";
      *buf = 136316162;
      if (a3)
      {
        v15 = "";
      }

      v36 = v13;
      v37 = 2080;
      v38 = "gckSessionSendHello";
      v39 = 1024;
      v40 = 1551;
      v41 = 2080;
      v42 = v15;
      v43 = 1024;
      v44 = v10;
      _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sending HELLO%s to [%08X]", buf, 0x2Cu);
    }
  }

  WORD6(v33) = a5;
  *&v34 = 0x8000000000000402;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v36 = v16;
      v37 = 2080;
      v38 = "gckSessionSendHello";
      v39 = 1024;
      v40 = 1554;
      v41 = 2048;
      v42 = v34;
      _os_log_impl(&dword_24E50C000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d before MakeHello: %llX", buf, 0x26u);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v36 = v18;
      v37 = 2080;
      v38 = "gckSessionSendHello";
      v39 = 1024;
      v40 = 1556;
      v41 = 1024;
      LODWORD(v42) = v6;
      _os_log_impl(&dword_24E50C000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gckSessionSendHello: channel %d", buf, 0x22u);
    }
  }

  v20 = 2149187606;
  v21 = OSPFMakeHello(&v32, &v33, *(a1 + 108), v10);
  if ((v21 & 0x80000000) != 0)
  {
    return 2149187618;
  }

  v22 = v21;
  if (!a3)
  {
    v20 = SendUDPPacketToParticipantChannelID(a1, v32, v21, v10, v8, v6, 0);
    goto LABEL_31;
  }

  if (v8)
  {
    pthread_rwlock_rdlock((a1 + 7904));
  }

  v23 = *(a1 + 7888);
  if (!v23)
  {
LABEL_23:
    v24 = 1;
    if (!v8)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  while (1)
  {
    if (*(v23 + 116) != v10)
    {
      goto LABEL_22;
    }

    if (v6 < 0)
    {
      break;
    }

    if (*(v23 + 100) == v6)
    {
      goto LABEL_34;
    }

LABEL_22:
    v23 = *(v23 + 728);
    if (!v23)
    {
      goto LABEL_23;
    }
  }

  if (*(v23 + 108))
  {
    goto LABEL_22;
  }

LABEL_34:
  pthread_mutex_lock((v23 + 664));
  v26 = *(v23 + 496);
  if (v26)
  {
    while (1)
    {
      v27 = v26;
      if (*v26 == 1)
      {
        break;
      }

      v26 = *(v26 + 64);
      if (!v26)
      {
        v28 = (v27 + 64);
        goto LABEL_39;
      }
    }

    *(v26 + 8) = xmmword_24E5907D0;
    *(v26 + 32) = *(a1 + 32);
    *(v26 + 24) = 1;
    v30 = *(v26 + 40);
    if (v30)
    {
      free(v30);
    }

    *(v27 + 40) = v32;
    *(v27 + 48) = v22;
    *(v27 + 52) = v10;
  }

  else
  {
    v28 = (v23 + 496);
LABEL_39:
    v29 = malloc_type_calloc(1uLL, 0x48uLL, 0x10200409EACE7F9uLL);
    *v29 = 1;
    *(v29 + 8) = xmmword_24E5907D0;
    *(v29 + 4) = *(a1 + 32);
    *(v29 + 5) = v32;
    *(v29 + 12) = v22;
    *(v29 + 13) = v10;
    *v28 = v29;
  }

  pthread_mutex_unlock((v23 + 664));
  v31 = *(a1 + 12);
  if (v31 != -1)
  {
    *(a1 + 12) = -1;
    close(v31);
  }

  v24 = 0;
  if (v8)
  {
LABEL_24:
    pthread_rwlock_unlock((a1 + 7904));
  }

LABEL_25:
  if (!v24)
  {
    return 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      gckSessionSendHello_cold_1();
    }
  }

LABEL_31:
  free(v32);
  return v20;
}

uint64_t gckSessionWaitForHello(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v29 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136316162;
      v20 = v6;
      v21 = 2080;
      v22 = "gckSessionWaitForHello";
      v23 = 1024;
      v24 = 1638;
      v25 = 1024;
      v26 = v4;
      v27 = 1024;
      v28 = 10;
      _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Waiting for HELLO from [%08X] for %d seconds", &v19, 0x28u);
    }
  }

  pthread_rwlock_rdlock((a1 + 7904));
  v8 = *(a1 + 7888);
  if (!v8)
  {
LABEL_11:
    v9 = 2149187606;
    pthread_rwlock_unlock((a1 + 7904));
    if (VRTraceGetErrorLogLevelForModule() > 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        gckSessionWaitForHello_cold_1();
      }
    }

    return v9;
  }

  while (1)
  {
    if (*(v8 + 116) != v4)
    {
      goto LABEL_10;
    }

    if (a3 < 0)
    {
      break;
    }

    if (*(v8 + 100) == a3)
    {
      goto LABEL_14;
    }

LABEL_10:
    v8 = *(v8 + 728);
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  if (*(v8 + 108))
  {
    goto LABEL_10;
  }

LABEL_14:
  v10 = pthread_mutex_lock((v8 + 664));
  v12 = micro(v10, v11);
  v13 = *(v8 + 496);
  if (v13)
  {
    while (1)
    {
      v14 = v13;
      if (*v13 == 1)
      {
        break;
      }

      v13 = *(v13 + 64);
      if (!v13)
      {
        v15 = (v14 + 64);
        goto LABEL_19;
      }
    }
  }

  else
  {
    v15 = (v8 + 496);
LABEL_19:
    v16 = malloc_type_calloc(1uLL, 0x48uLL, 0x10200409EACE7F9uLL);
    *v16 = 1;
    v16[1] = 0.065;
    v16[2] = v12 + 10.0;
    v16[4] = v12 + 10.0;
    v16[5] = 0.0;
    *(v16 + 12) = 0;
    *(v16 + 13) = v4;
    *v15 = v16;
    v17 = *(a1 + 12);
    if (v17 != -1)
    {
      *(a1 + 12) = -1;
      close(v17);
    }
  }

  pthread_mutex_unlock((v8 + 664));
  pthread_rwlock_unlock((a1 + 7904));
  return 0;
}

void gckSessionCheckPendingConnections(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    pthread_rwlock_rdlock((a1 + 7904));
  }

  pthread_mutex_lock((a1 + 7800));
  v4 = *(a1 + 112);
  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = (a1 + 120);
    do
    {
      if (*v6 == -1)
      {
        ++v5;
      }

      v6 += 120;
      --v4;
    }

    while (v4);
  }

  pthread_mutex_unlock((a1 + 7800));
  v7 = *(a1 + 7888);
  if (v7)
  {
    v8 = 0;
    v9 = *(a1 + 7888);
    do
    {
      v8 += (*(v9 + 96) & 1) == 0;
      v9 = *(v9 + 728);
    }

    while (v9);
    v10 = 0;
    do
    {
      if (!*(v7 + 92))
      {
        ++v10;
      }

      v7 = *(v7 + 728);
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3 && (v11 = VRTraceErrorLogLevelToCSTR(), v12 = *MEMORY[0x277CE5818], os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR)))
  {
    v13 = 136316418;
    v14 = v11;
    v15 = 2080;
    v16 = "gckSessionCheckPendingConnections";
    v17 = 1024;
    v18 = 1527;
    v19 = 1024;
    v20 = v8;
    v21 = 1024;
    v22 = v5;
    v23 = 1024;
    v24 = v10;
    _os_log_error_impl(&dword_24E50C000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d gckSessionCheckPendingConnections: iICEChecksLeft=%d, iUnconnectedNodeCount=%d, iDDsExpected=%d", &v13, 0x2Eu);
    if (v8)
    {
      goto LABEL_25;
    }
  }

  else if (v8)
  {
    goto LABEL_25;
  }

  if (!v5 && !v10)
  {
    PostEventCallback(*(a1 + 96), 0, 11, 0, 0, 0);
  }

LABEL_25:
  if (a2)
  {
    pthread_rwlock_unlock((a1 + 7904));
  }
}

uint64_t SendUDPPacketToParticipantChannelID(uint64_t a1, _WORD *a2, unint64_t a3, int a4, int a5, int a6, int a7)
{
  v7 = 0;
  v29 = *MEMORY[0x277D85DE8];
  if (a2 && a3)
  {
    v14 = a1;
    if (a5)
    {
      a1 = pthread_rwlock_rdlock((a1 + 7904));
    }

    v7 = 2149187606;
    for (i = *(v14 + 7888); i; i = *(i + 728))
    {
      if (*(i + 116) == a4)
      {
        if (a6 < 0)
        {
          if (*(i + 108))
          {
            continue;
          }
        }

        else if (*(i + 100) != a6)
        {
          continue;
        }

        if ((*(i + 408) & 0xFFFFFFFE) == 2)
        {
          v17 = micro(a1, a2);
          if (a7 && (*(v14 + 8320) || v17 <= *(i + 40)))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v19 = VRTraceErrorLogLevelToCSTR();
              v20 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                v21 = 136315906;
                v22 = v19;
                v23 = 2080;
                v24 = "SendUDPPacketToParticipantChannelID";
                v25 = 1024;
                v26 = 647;
                v27 = 1024;
                v28 = a4;
                _os_log_impl(&dword_24E50C000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %08X: DROP", &v21, 0x22u);
              }
            }
          }

          else
          {
            v18 = SendUDPPacketCList(v14, i, a2, a3, 0, 1);
            if (v18 == -1072037876)
            {
              *(i + 40) = v17 + 3.0;
            }

            if (v18 == -1072037856)
            {
              v7 = 2149187626;
            }

            else
            {
              v7 = v18;
            }
          }

          break;
        }
      }
    }

    if (a5)
    {
      pthread_rwlock_unlock((v14 + 7904));
    }
  }

  return v7;
}

uint64_t SendUDPPacketCList(uint64_t a1, uint64_t a2, _WORD *a3, unint64_t a4, uint64_t a5, int a6)
{
  v7 = a5;
  v40 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2000000000;
  v35 = -2145779690;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2000000000;
  v31 = 0;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  v39 = 0xAAAAAAAAAAAAAAAALL;
  memset(v28, 170, sizeof(v28));
  v27 = 0xAAAAAAAAAAAAAAAALL;
  if (a5)
  {
    goto LABEL_2;
  }

  v7 = a2 + 452;
  if (*(a2 + 452))
  {
    if (*(a2 + 472) != *MEMORY[0x277D85EE8] || *(a2 + 480) != *(MEMORY[0x277D85EE8] + 8))
    {
      goto LABEL_2;
    }

LABEL_34:
    v21 = 0;
    goto LABEL_28;
  }

  if (!*(a2 + 472))
  {
    goto LABEL_34;
  }

LABEL_2:
  if ((*(a2 + 412) & 1) != 0 && (*v7 & 1) == 0)
  {
    v12 = GCKGetNAT64Prefix(a1, a2 + 412);
    if (*v12)
    {
      v37 = *(v7 + 32);
      v13 = *(v7 + 16);
      *&v36[1] = *v7;
      *&v36[5] = v13;
      synthesizeIPPORTv6FromIPv4(v7, &v36[6], WORD2(v37), v12);
    }
  }

  if (*(a2 + 412))
  {
    v29 = 28;
    v14 = IPPORTToSA6();
  }

  else
  {
    v29 = 16;
    v14 = IPPORTToSA();
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 0x40000000;
  v24[2] = __SendUDPPacketCList_block_invoke;
  v24[3] = &unk_279682DD0;
  v24[6] = v14;
  v24[7] = a2;
  v24[4] = v30;
  v24[5] = &v32;
  v25 = v29;
  v26 = a4;
  pthread_mutex_lock((a2 + 664));
  if (g_iBWEstLogLevel_gck >= 6)
  {
    SendUDPPacketCList_cold_1(a4, v15);
  }

  memset(&v36[1], 170, 24);
  if (*(a2 + 504))
  {
    v16 = *(a2 + 736);
    if (v16 != 0xFFFFFFFFLL)
    {
      v36[0] = 0;
      GCK_BWE_GetProbeSeqSize(v16, *(a2 + 748), v36);
    }
  }

  pthread_mutex_lock((a1 + 8400));
  if (*(a2 + 504))
  {
    v17 = (a2 + 512);
  }

  else
  {
    v17 = 0;
  }

  if (a6)
  {
    v18 = *(a2 + 4) != 0;
  }

  else
  {
    v18 = 0;
  }

  v19 = OSPFAddDynamicOptions(v17, a3, a4, v18, *(a2 + 8), (a2 + 624), 0, v24);
  pthread_mutex_unlock((a1 + 8400));
  pthread_mutex_unlock((a2 + 664));
  if (v19)
  {
    do
    {
      v20 = *(v19 + 8);
      if (*v19)
      {
        free(*v19);
      }

      free(v19);
      v19 = v20;
    }

    while (v20);
  }

  v21 = *(v33 + 6);
LABEL_28:
  _Block_object_dispose(v30, 8);
  _Block_object_dispose(&v32, 8);
  return v21;
}

uint64_t synthesizeIPPORTv6FromIPv4(uint64_t a1, unsigned int *a2, unsigned int a3, uint64_t a4)
{
  result = nw_nat64_synthesize_v6();
  if (result)
  {
    return SAToIPPORT();
  }

  return result;
}

BOOL __SendUDPPacketCList_block_invoke(uint64_t a1, msghdr *a2)
{
  a2->msg_name = *(a1 + 48);
  a2->msg_namelen = *(a1 + 64);
  v3 = sendmsg(**(a1 + 56), a2, 0);
  *(*(*(a1 + 32) + 8) + 24) = v3;
  *(*(a1 + 56) + 608) = *(*(a1 + 56) + 608) + 1.0;
  if (*(*(*(a1 + 32) + 8) + 24) == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        __SendUDPPacketCList_block_invoke_cold_1(v7, v8);
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = *__error() | 0xC01A0000;
    *(*(a1 + 56) + 616) = *(*(a1 + 56) + 616) + 1.0;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v5 = micro(v3, v4);
    v6 = *(a1 + 56);
    *(v6 + 64) = v5;
    *(v6 + 584) += *(a1 + 68);
  }

  return *(*(*(a1 + 40) + 8) + 24) >= 0;
}

uint64_t SendUDPPacket(uint64_t a1, _WORD *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  if (!a2 || !a3 || !a4 || !a5)
  {
    return v5;
  }

  v5 = 2149187606;
  pthread_rwlock_rdlock((a1 + 7904));
  v11 = *(a1 + 7888);
  if (!v11)
  {
    goto LABEL_30;
  }

  v12 = *a4 & 1;
  while ((*(v11 + 412) & 1) != v12)
  {
LABEL_18:
    if (*(v11 + 412))
    {
      goto LABEL_21;
    }

    if (!*(v11 + 432))
    {
      goto LABEL_26;
    }

LABEL_27:
    v11 = *(v11 + 728);
    if (!v11)
    {
      goto LABEL_30;
    }
  }

  if (!v12)
  {
    v13 = *(v11 + 432);
    if (v13 != *(a4 + 20))
    {
      if (!v13)
      {
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    goto LABEL_17;
  }

  if (*(v11 + 432) == *(a4 + 20) && *(v11 + 440) == *(a4 + 28))
  {
LABEL_17:
    if (*(v11 + 448) == *(a4 + 36))
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

LABEL_21:
  if (*(v11 + 432) != *MEMORY[0x277D85EE8] || *(v11 + 440) != *(MEMORY[0x277D85EE8] + 8))
  {
    goto LABEL_27;
  }

LABEL_26:
  if (*(v11 + 448) != *(a4 + 36))
  {
    goto LABEL_27;
  }

LABEL_29:
  v5 = SendUDPPacketCList(a1, v11, a2, a3, a5, 0);
LABEL_30:
  pthread_rwlock_unlock((a1 + 7904));
  return v5;
}

uint64_t __gckSessionRecvProc_block_invoke(uint64_t a1)
{
  pthread_rwlock_rdlock((*(a1 + 32) + 7904));
  v2 = *(a1 + 32);
  v3 = *(v2 + 12);
  if (v3 != -1)
  {
    *(v2 + 12) = -1;
    close(v3);
    v2 = *(a1 + 32);
  }

  return pthread_rwlock_unlock((v2 + 7904));
}

void TracePrintNodesX(int a1, uint64_t a2)
{
  v50 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v29 = v3;
      v30 = 2080;
      v31 = "TracePrintNodesX";
      v32 = 1024;
      v33 = 2400;
      v34 = 1024;
      *v35 = a1;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ------ Report %d nodes ------", buf, 0x22u);
    }
  }

  if (a1 >= 1)
  {
    v5 = 0;
    v6 = (a2 + 292);
    do
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v9 = (a2 + 480 * v5);
          v10 = *v9;
          v11 = v9[1];
          v12 = v9[67];
          v13 = *(v9 + 136);
          v14 = *(v9 + 137);
          v15 = v9[69];
          v16 = v9[70];
          v17 = v9[71];
          *buf = 136318210;
          v29 = v7;
          v30 = 2080;
          v31 = "TracePrintNodesX";
          v32 = 1024;
          v33 = 2406;
          v34 = 1024;
          *v35 = v5;
          *&v35[4] = 1024;
          *&v35[6] = v10;
          LOWORD(v36) = 1024;
          *(&v36 + 2) = v11;
          HIWORD(v36) = 1024;
          v37 = v12;
          v38 = 1024;
          v39 = v13;
          v40 = 1024;
          v41 = v14;
          v42 = 1024;
          v43 = v15;
          v44 = 1024;
          v45 = v16;
          v46 = 1024;
          v47 = v17;
          v48 = 2080;
          v49 = v9 + 9;
          _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %d: %08X Next[%08X], dist[%u], SN[%u], LSASN[%u], New[%d], From[%08X], #NEIGHBOR[%d] %s", buf, 0x5Cu);
        }
      }

      v18 = a2 + 480 * v5;
      if (*(v18 + 284) >= 1)
      {
        v19 = 0;
        v20 = v6;
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v21 = VRTraceErrorLogLevelToCSTR();
            v22 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v23 = *(v20 - 1);
              v24 = *v20;
              *buf = 136316162;
              v29 = v21;
              v30 = 2080;
              v31 = "TracePrintNodesX";
              v32 = 1024;
              v33 = 2409;
              v34 = 1024;
              *v35 = v23;
              *&v35[4] = 1024;
              *&v35[6] = v24;
              _os_log_impl(&dword_24E50C000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d     %08X, R[%u]", buf, 0x28u);
            }
          }

          ++v19;
          v20 += 3;
        }

        while (v19 < *(v18 + 284));
      }

      ++v5;
      v6 += 120;
    }

    while (v5 != a1);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v25 = VRTraceErrorLogLevelToCSTR();
    v26 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v29 = v25;
      v30 = 2080;
      v31 = "TracePrintNodesX";
      v32 = 1024;
      v33 = 2412;
      v34 = 2080;
      *v35 = "Oct 11 2025";
      *&v35[8] = 2080;
      v36 = "00:26:33";
      _os_log_impl(&dword_24E50C000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [GKS: %s] ------", buf, 0x30u);
    }
  }
}

void gckSessionSendHBs(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 7888); i; i = *(i + 728))
  {
    if (*(i + 4))
    {
      v3 = micro(a1, a2);
      if (v3 - *(i + 16) > 27.0)
      {
        a1 = ICERefreshRelayBinding();
        *(i + 16) = v3;
      }
    }
  }
}

void attempt_failover(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(a2 + 108))
  {
LABEL_2:
    *(a2 + 108) = -1;
    *(a2 + 544) = 0u;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a2 + 100);
        v7 = *(a2 + 112);
        v6 = *(a2 + 116);
        v16 = 136316418;
        v17 = v3;
        v18 = 2080;
        v19 = "attempt_failover";
        v20 = 1024;
        v21 = 4489;
        v22 = 1024;
        v23 = v5;
        v24 = 1024;
        v25 = v6;
        v26 = 1024;
        v27 = v7;
        _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d demoted channel %d for %08X to inactive state: original priority %d", &v16, 0x2Eu);
      }
    }

    return;
  }

  v9 = *(a1 + 7888);
  if (v9)
  {
    v10 = 0;
    do
    {
      if (v9 != a2 && *(v9 + 116) == *(a2 + 116) && *(v9 + 108) >= 0)
      {
        v10 = v9;
      }

      v9 = *(v9 + 728);
    }

    while (v9);
    if (v10)
    {
      if (v10 != a2)
      {
        v10[27] = 0;
        gckSessionUpdateNode(a1, v10[29], v10[140], 0);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v13 = v10[25];
            v15 = v10[28];
            v14 = v10[29];
            v16 = 136316418;
            v17 = v11;
            v18 = 2080;
            v19 = "attempt_failover";
            v20 = 1024;
            v21 = 4482;
            v22 = 1024;
            v23 = v13;
            v24 = 1024;
            v25 = v14;
            v26 = 1024;
            v27 = v15;
            _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d promoted channel %d for %08X to active status: original priority %d\n", &v16, 0x2Eu);
          }
        }
      }

      goto LABEL_2;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      attempt_failover_cold_1();
    }
  }

  if (*(a2 + 408) != 6)
  {
    gckSessionChangeStateCList(a1, a2, 4);
  }
}

void gckSessionLocalServerProc(void *a1)
{
  pthread_setname_np("com.apple.gamekitservices.gcksession.localserverproc");
  free(a1);
  CheckInHandleDebug();
}

uint64_t gckSessionRecvMessage(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v153 = v1;
  v178 = *MEMORY[0x277D85DE8];
  memset(v174, 170, 0x1001uLL);
  *&v173[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v172 = v8;
  *v173 = v8;
  v171 = 0xAAAAAAAAAAAAAAAALL;
  v169 = v8;
  v170 = v8;
  v168[6] = v8;
  v168[7] = v8;
  v168[4] = v8;
  v168[5] = v8;
  v168[2] = v8;
  v168[3] = v8;
  v168[0] = v8;
  v168[1] = v8;
  *&v161.msg_iovlen = 0xAAAAAAAA00000001;
  v167[0] = v8;
  v167[1] = v8;
  v166[0] = v174;
  v166[1] = 4096;
  v161.msg_name = v168;
  *&v161.msg_namelen = 0xAAAAAAAA00000080;
  v161.msg_iov = v166;
  v161.msg_control = v167;
  *&v161.msg_controllen = 32;
  v9 = recvmsg(*v7, &v161, 0);
  v10 = v9;
  if (v9 == -1)
  {
    v14 = *__error() | 0xC01A0000;
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      return v14;
    }

    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      return v14;
    }

    v17 = *v7;
    v162[0] = 136316418;
    *&v162[1] = v15;
    LOWORD(v162[3]) = 2080;
    *(&v162[3] + 2) = "gckSessionRecvMessage";
    HIWORD(v162[5]) = 1024;
    v162[6] = 3334;
    LOWORD(v162[7]) = 1024;
    *(&v162[7] + 2) = 3334;
    HIWORD(v162[8]) = 1024;
    v162[9] = v17;
    LOWORD(v162[10]) = 1024;
    *(&v162[10] + 2) = v14;
    v18 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GCKSession.c:%d: recvmsg(%d) failed(%X)";
    v19 = v16;
LABEL_9:
    _os_log_impl(&dword_24E50C000, v19, OS_LOG_TYPE_DEFAULT, v18, v162, 0x2Eu);
    return v14;
  }

  if (!v9)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v13 = *v7;
        v162[0] = 136316162;
        *&v162[1] = v11;
        LOWORD(v162[3]) = 2080;
        *(&v162[3] + 2) = "gckSessionRecvMessage";
        HIWORD(v162[5]) = 1024;
        v162[6] = 3330;
        LOWORD(v162[7]) = 1024;
        *(&v162[7] + 2) = 3330;
        HIWORD(v162[8]) = 1024;
        v162[9] = v13;
        _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GCKSession.c:%d: recvmsg(%d) returned 0: empty message", v162, 0x28u);
      }
    }

    return 0;
  }

  pthread_mutex_lock((v7 + 664));
  *(v7 + 576) += v10;
  pthread_mutex_unlock((v7 + 664));
  v20 = *(v7 + 428);
  v172 = *(v7 + 412);
  *v173 = v20;
  *&v173[16] = *(v7 + 444);
  if (v161.msg_controllen >= 0xC)
  {
    msg_control = v161.msg_control;
    if (v161.msg_control)
    {
      while (msg_control[1] != 41 || msg_control[2] != 46)
      {
        msg_control = (msg_control + ((*msg_control + 3) & 0x1FFFFFFFCLL));
        if ((msg_control + 3) > v161.msg_control + v161.msg_controllen)
        {
          goto LABEL_21;
        }
      }

      if (msg_control[3] || msg_control[4] || msg_control[5] != -65536)
      {
        LODWORD(v172) = 1;
        *&v173[4] = *(msg_control + 3);
      }

      else
      {
        v22 = bswap32(msg_control[6]);
        LODWORD(v172) = v172 & 0xFFFFFFFE;
        *&v173[4] = v22;
      }
    }
  }

LABEL_21:
  SAToIPPORT();
  v159 = 0;
  v160 = 0xAAAAAAAAAAAAAAAALL;
  v158 = 0;
  v156[0] = MEMORY[0x277D85DD0];
  v156[1] = 0x40000000;
  v156[2] = __gckSessionRecvMessage_block_invoke;
  v156[3] = &__block_descriptor_tmp_43;
  v156[4] = v7;
  v156[5] = v3;
  v156[6] = &v157;
  v157 = 0;
  if (*(v7 + 504))
  {
    v23 = v156;
  }

  else
  {
    v23 = 0;
  }

  ErrorLogLevelForModule = OSPFParse(&v160, &v159, v174, v10, 0, v23);
  if (ErrorLogLevelForModule > 0 || (v174[0] & 0xC0) == 0x40 && (v36 = bswap32(v174[1]), v10 - 4 == HIWORD(v36)) && ((v10 = HIWORD(v36), __memmove_chk(), *(v7 + 504)) ? (v37 = v156) : (v37 = 0), ErrorLogLevelForModule = OSPFParse(&v160, &v159, v174, v10, 0, v37), ErrorLogLevelForModule >= 1))
  {
    v25 = v160;
    v26 = *(v160 + 1);
    *(v7 + 32) = v5;
    *(v7 + 760) = 0;
    v27 = v153;
    v148 = v26;
    if (v26 != 6)
    {
      if (v26 == 1 && (v25[1] & 1) != 0)
      {
        *(v7 + 48) = 1;
      }

      *&v177[14] = 0xAAAAAAAAAAAAAAAALL;
      *&v28 = 0xAAAAAAAAAAAAAAAALL;
      *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v176 = v28;
      *v177 = v28;
      v175 = v28;
      *(v165 + 14) = 0xAAAAAAAAAAAAAAAALL;
      v164 = v28;
      v165[0] = v28;
      v163 = v28;
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (ErrorLogLevelForModule >= 8)
      {
        v29 = VRTraceErrorLogLevelToCSTR();
        v30 = *MEMORY[0x277CE5818];
        v31 = *MEMORY[0x277CE5818];
        if (*MEMORY[0x277CE5808] == 1)
        {
          ErrorLogLevelForModule = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
          if (ErrorLogLevelForModule)
          {
            v32 = IPPORTToStringWithSize();
            v33 = v160[3];
            v34 = IPPORTToStringWithSize();
            v35 = v160[2];
            v162[0] = 136317186;
            *&v162[1] = v29;
            LOWORD(v162[3]) = 2080;
            *(&v162[3] + 2) = "gckSessionRecvMessage";
            HIWORD(v162[5]) = 1024;
            v162[6] = 3520;
            LOWORD(v162[7]) = 2080;
            *(&v162[7] + 2) = v32;
            v27 = v153;
            HIWORD(v162[9]) = 1024;
            v162[10] = v33;
            LOWORD(v162[11]) = 2080;
            *(&v162[11] + 2) = v34;
            HIWORD(v162[13]) = 1024;
            v162[14] = v35;
            LOWORD(v162[15]) = 1024;
            *(&v162[15] + 2) = v10;
            HIWORD(v162[16]) = 1024;
            v162[17] = v148;
            _os_log_impl(&dword_24E50C000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%s] %08X <= [%s] %08X: %d bytes(%d)", v162, 0x48u);
          }
        }

        else
        {
          ErrorLogLevelForModule = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);
          if (ErrorLogLevelForModule)
          {
            v125 = IPPORTToStringWithSize();
            v126 = v160[3];
            v127 = IPPORTToStringWithSize();
            v128 = v160[2];
            v162[0] = 136317186;
            *&v162[1] = v29;
            LOWORD(v162[3]) = 2080;
            *(&v162[3] + 2) = "gckSessionRecvMessage";
            HIWORD(v162[5]) = 1024;
            v162[6] = 3520;
            LOWORD(v162[7]) = 2080;
            *(&v162[7] + 2) = v125;
            v27 = v153;
            HIWORD(v162[9]) = 1024;
            v162[10] = v126;
            LOWORD(v162[11]) = 2080;
            *(&v162[11] + 2) = v127;
            HIWORD(v162[13]) = 1024;
            v162[14] = v128;
            LOWORD(v162[15]) = 1024;
            *(&v162[15] + 2) = v10;
            HIWORD(v162[16]) = 1024;
            v162[17] = v148;
            _os_log_debug_impl(&dword_24E50C000, v30, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%s] %08X <= [%s] %08X: %d bytes(%d)", v162, 0x48u);
          }
        }
      }

      v25 = v160;
      v26 = v148;
    }

    v146 = &v144;
    v48 = v25 + 3;
    v49 = *v25 & 0xF;
    MEMORY[0x28223BE20](ErrorLogLevelForModule);
    v52 = &v144 - v51;
    if (!v49)
    {
      goto LABEL_91;
    }

    v144 = v10;
    v151 = v50;
    memset(&v144 - v51, 170, v50);
    v149 = 0;
    v154 = v49;
    v53 = (v25 + 3);
    v54 = v52;
    do
    {
      v56 = *v53++;
      v55 = v56;
      if (v56 == *(v27 + 108))
      {
        v149 = 1;
        NextHop = 0xFFFFFFFFLL;
      }

      else
      {
        NextHop = gckSessionFindNextHop(v27, v55);
      }

      *v54++ = NextHop;
      --v49;
    }

    while (v49);
    v145 = v7;
    v58 = 0;
    v147 = v26 == 7;
    v59 = v25 + 4;
    v60 = v52 + 4;
    v61 = v154;
    v62 = v154 - 1;
    v152 = v48;
    v150 = v52;
    while (1)
    {
      v63 = *&v52[4 * v58];
      if (v63 != -1)
      {
        break;
      }

      ++v58;
LABEL_76:
      ++v59;
      v60 += 4;
      --v62;
      if (v58 == v61)
      {
        LODWORD(v10) = v144;
        v7 = v145;
        v27 = v153;
        if (v149)
        {
          switch(v26)
          {
            case 7:
              goto LABEL_81;
            case 6:
              v72 = *(v153 + 96);
              v73 = v160[2];
              v75 = *v159;
              v76 = v159[2];
              v74 = 5;
              goto LABEL_89;
            case 5:
LABEL_81:
              v72 = *(v153 + 96);
              v73 = v160[2];
              if (v26 == 7)
              {
                v74 = 6;
              }

              else
              {
                v74 = 4;
              }

              v75 = *v159;
              v76 = v159[2];
LABEL_89:
              PostEventCallback(v72, v73, v74, v75, v76, 0);
              break;
            default:
              gckSessionProcessOSPFPacket(v153, v145, v160, v159);
              break;
          }
        }

LABEL_91:
        v79 = v27 + 0x2000;
        if ((v157 & 1) == 0)
        {
          if (*(v79 + 272))
          {
            v81 = v10;
            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v87 = VRTraceErrorLogLevelToCSTR();
              v88 = *MEMORY[0x277CE5818];
              v89 = *MEMORY[0x277CE5818];
              if (*MEMORY[0x277CE5808] == 1)
              {
                if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                {
                  v90 = *(v153 + 8468);
                  v91 = *(v153 + 8472);
                  v92 = *(v79 + 284);
                  v93 = *(v7 + 116);
                  v94 = *(v7 + 100);
                  v162[0] = 136317186;
                  *&v162[1] = v87;
                  LOWORD(v162[3]) = 2080;
                  *(&v162[3] + 2) = "BWE_TrackSeqInterruption";
                  HIWORD(v162[5]) = 1024;
                  v162[6] = 9053;
                  LOWORD(v162[7]) = 1024;
                  *(&v162[7] + 2) = v90;
                  HIWORD(v162[8]) = 1024;
                  v162[9] = v91;
                  LOWORD(v162[10]) = 1024;
                  *(&v162[10] + 2) = v92;
                  HIWORD(v162[11]) = 1024;
                  v162[12] = v93;
                  LOWORD(v162[13]) = 1024;
                  *(&v162[13] + 2) = v94;
                  HIWORD(v162[14]) = 2048;
                  *&v162[15] = v5;
                  _os_log_impl(&dword_24E50C000, v88, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ******* BWE_RCV: SEQ CUT (%d/%d, %d) with a non-probe pkt from %d/%d  @%.3f ", v162, 0x44u);
                }
              }

              else if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
              {
                v134 = *(v153 + 8468);
                v135 = *(v153 + 8472);
                v136 = *(v79 + 284);
                v137 = *(v7 + 116);
                v138 = *(v7 + 100);
                v162[0] = 136317186;
                *&v162[1] = v87;
                LOWORD(v162[3]) = 2080;
                *(&v162[3] + 2) = "BWE_TrackSeqInterruption";
                HIWORD(v162[5]) = 1024;
                v162[6] = 9053;
                LOWORD(v162[7]) = 1024;
                *(&v162[7] + 2) = v134;
                HIWORD(v162[8]) = 1024;
                v162[9] = v135;
                LOWORD(v162[10]) = 1024;
                *(&v162[10] + 2) = v136;
                HIWORD(v162[11]) = 1024;
                v162[12] = v137;
                LOWORD(v162[13]) = 1024;
                *(&v162[13] + 2) = v138;
                HIWORD(v162[14]) = 2048;
                *&v162[15] = v5;
                _os_log_debug_impl(&dword_24E50C000, v88, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ******* BWE_RCV: SEQ CUT (%d/%d, %d) with a non-probe pkt from %d/%d  @%.3f ", v162, 0x44u);
              }
            }

            v109 = v153;
            BWE_EndCurrentSequence(v153, v5);
            ++*(v109 + 8488);
            goto LABEL_122;
          }

          goto LABEL_134;
        }

        v80 = WORD1(v157);
        if (*(v79 + 272) == 1)
        {
          if (*(v7 + 116) == *(v153 + 8468) && *(v7 + 100) == *(v153 + 8472) && WORD1(v157) == *(v79 + 284))
          {
            v81 = v10;
            if (WORD2(v157) < 0x1000u)
            {
              if (VRTraceGetErrorLogLevelForModule() < 8)
              {
                goto LABEL_122;
              }

              v82 = VRTraceErrorLogLevelToCSTR();
              v83 = *MEMORY[0x277CE5818];
              v84 = *MEMORY[0x277CE5818];
              if (*MEMORY[0x277CE5808] == 1)
              {
                if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
                {
                  v85 = *(v7 + 116);
                  v162[0] = 136316418;
                  *&v162[1] = v82;
                  LOWORD(v162[3]) = 2080;
                  *(&v162[3] + 2) = "BWE_TrackSeqInterruption";
                  HIWORD(v162[5]) = 1024;
                  v162[6] = 9006;
                  LOWORD(v162[7]) = 1024;
                  *(&v162[7] + 2) = v85;
                  HIWORD(v162[8]) = 1024;
                  v162[9] = v80;
                  LOWORD(v162[10]) = 2048;
                  *(&v162[10] + 2) = v5;
                  v86 = " [%s] %s:%d ******* BWE_RCV: continuing the existing seq (%d): %d   @%.3f ";
                  goto LABEL_146;
                }

                goto LABEL_122;
              }

              if (!os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_122;
              }

              v131 = *(v7 + 116);
              v162[0] = 136316418;
              *&v162[1] = v82;
              LOWORD(v162[3]) = 2080;
              *(&v162[3] + 2) = "BWE_TrackSeqInterruption";
              HIWORD(v162[5]) = 1024;
              v162[6] = 9006;
              LOWORD(v162[7]) = 1024;
              *(&v162[7] + 2) = v131;
              HIWORD(v162[8]) = 1024;
              v162[9] = v80;
              LOWORD(v162[10]) = 2048;
              *(&v162[10] + 2) = v5;
              v132 = " [%s] %s:%d ******* BWE_RCV: continuing the existing seq (%d): %d   @%.3f ";
LABEL_151:
              _os_log_debug_impl(&dword_24E50C000, v83, OS_LOG_TYPE_DEBUG, v132, v162, 0x32u);
              goto LABEL_122;
            }

            *(v79 + 272) = 0;
            if (VRTraceGetErrorLogLevelForModule() < 8)
            {
              goto LABEL_122;
            }

            v122 = VRTraceErrorLogLevelToCSTR();
            v83 = *MEMORY[0x277CE5818];
            v123 = *MEMORY[0x277CE5818];
            if (*MEMORY[0x277CE5808] != 1)
            {
              if (!os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_122;
              }

              v133 = *(v7 + 116);
              v162[0] = 136316418;
              *&v162[1] = v122;
              LOWORD(v162[3]) = 2080;
              *(&v162[3] + 2) = "BWE_TrackSeqInterruption";
              HIWORD(v162[5]) = 1024;
              v162[6] = 9001;
              LOWORD(v162[7]) = 1024;
              *(&v162[7] + 2) = v133;
              HIWORD(v162[8]) = 1024;
              v162[9] = v80;
              LOWORD(v162[10]) = 2048;
              *(&v162[10] + 2) = v5;
              v132 = " [%s] %s:%d ******* BWE_RCV: last pkt of the existing seq (%d): %d   @%.3f ";
              goto LABEL_151;
            }

            if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
            {
              v124 = *(v7 + 116);
              v162[0] = 136316418;
              *&v162[1] = v122;
              LOWORD(v162[3]) = 2080;
              *(&v162[3] + 2) = "BWE_TrackSeqInterruption";
              HIWORD(v162[5]) = 1024;
              v162[6] = 9001;
              LOWORD(v162[7]) = 1024;
              *(&v162[7] + 2) = v124;
              HIWORD(v162[8]) = 1024;
              v162[9] = v80;
              LOWORD(v162[10]) = 2048;
              *(&v162[10] + 2) = v5;
              v86 = " [%s] %s:%d ******* BWE_RCV: last pkt of the existing seq (%d): %d   @%.3f ";
LABEL_146:
              _os_log_impl(&dword_24E50C000, v83, OS_LOG_TYPE_DEFAULT, v86, v162, 0x32u);
            }

LABEL_122:
            if (v157 == 1)
            {
              v110 = HIWORD(v157);
              *(v7 + 748) = HIWORD(v157);
              *(v7 + 596) = 125 * v110;
              *&v177[14] = 0xAAAAAAAAAAAAAAAALL;
              *&v111 = 0xAAAAAAAAAAAAAAAALL;
              *(&v111 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v176 = v111;
              *v177 = v111;
              v175 = v111;
              IPPORTToStringWithSize();
              if (VRTraceGetErrorLogLevelForModule() >= 8)
              {
                v112 = VRTraceErrorLogLevelToCSTR();
                v113 = *MEMORY[0x277CE5818];
                v114 = *MEMORY[0x277CE5818];
                if (*MEMORY[0x277CE5808] == 1)
                {
                  if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
                  {
                    v115 = *(v7 + 116);
                    v116 = *(v7 + 748);
                    v162[0] = 136317442;
                    *&v162[1] = v112;
                    LOWORD(v162[3]) = 2080;
                    *(&v162[3] + 2) = "BWE_UpdateEstimate";
                    HIWORD(v162[5]) = 1024;
                    v162[6] = 8874;
                    LOWORD(v162[7]) = 1024;
                    *(&v162[7] + 2) = v115;
                    HIWORD(v162[8]) = 2080;
                    *&v162[9] = &v175;
                    LOWORD(v162[11]) = 1024;
                    *(&v162[11] + 2) = v81;
                    HIWORD(v162[12]) = 2048;
                    *&v162[13] = v5;
                    LOWORD(v162[15]) = 1024;
                    *(&v162[15] + 2) = WORD1(v157);
                    HIWORD(v162[16]) = 1024;
                    v162[17] = WORD2(v157);
                    LOWORD(v162[18]) = 1024;
                    *(&v162[18] + 2) = v116;
                    _os_log_impl(&dword_24E50C000, v113, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ****************************************************\npBwOption (from %d %s): %d   @%.3f (%d %x) upstream BW: %d kbps\n****************************************************\n", v162, 0x4Eu);
                  }
                }

                else if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
                {
                  v129 = *(v7 + 116);
                  v130 = *(v7 + 748);
                  v162[0] = 136317442;
                  *&v162[1] = v112;
                  LOWORD(v162[3]) = 2080;
                  *(&v162[3] + 2) = "BWE_UpdateEstimate";
                  HIWORD(v162[5]) = 1024;
                  v162[6] = 8874;
                  LOWORD(v162[7]) = 1024;
                  *(&v162[7] + 2) = v129;
                  HIWORD(v162[8]) = 2080;
                  *&v162[9] = &v175;
                  LOWORD(v162[11]) = 1024;
                  *(&v162[11] + 2) = v81;
                  HIWORD(v162[12]) = 2048;
                  *&v162[13] = v5;
                  LOWORD(v162[15]) = 1024;
                  *(&v162[15] + 2) = WORD1(v157);
                  HIWORD(v162[16]) = 1024;
                  v162[17] = WORD2(v157);
                  LOWORD(v162[18]) = 1024;
                  *(&v162[18] + 2) = v130;
                  _os_log_debug_impl(&dword_24E50C000, v113, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ****************************************************\npBwOption (from %d %s): %d   @%.3f (%d %x) upstream BW: %d kbps\n****************************************************\n", v162, 0x4Eu);
                }
              }

              v117 = *(v7 + 736);
              if (v117 != 0xFFFFFFFFLL)
              {
                if (*(v7 + 412))
                {
                  v118 = 48;
                }

                else
                {
                  v118 = 28;
                }

                GCK_BWE_CalcRxEstimate(v117, WORD2(v157) != 0, WORD1(v157), WORD2(v157) & 0xFFF | (16 * WORD1(v157)), v118 + v81, 1, WORD1(v157), WORD2(v157) > 0xFFFu, v5, (v7 + 752));
              }
            }

LABEL_134:
            if (v160)
            {
              free(v160);
            }

            v47 = v159;
            if (v159)
            {
LABEL_137:
              free(v47);
            }

            return 0;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v101 = VRTraceErrorLogLevelToCSTR();
            v102 = *MEMORY[0x277CE5818];
            v103 = *MEMORY[0x277CE5818];
            if (*MEMORY[0x277CE5808] == 1)
            {
              if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
              {
                v104 = *(v153 + 8468);
                v105 = *(v153 + 8472);
                v106 = *(v79 + 284);
                v107 = *(v7 + 116);
                v108 = *(v7 + 100);
                v162[0] = 136317442;
                *&v162[1] = v101;
                LOWORD(v162[3]) = 2080;
                *(&v162[3] + 2) = "BWE_TrackSeqInterruption";
                HIWORD(v162[5]) = 1024;
                v162[6] = 9012;
                LOWORD(v162[7]) = 1024;
                *(&v162[7] + 2) = v104;
                HIWORD(v162[8]) = 1024;
                v162[9] = v105;
                LOWORD(v162[10]) = 1024;
                *(&v162[10] + 2) = v106;
                HIWORD(v162[11]) = 1024;
                v162[12] = v107;
                LOWORD(v162[13]) = 1024;
                *(&v162[13] + 2) = v108;
                HIWORD(v162[14]) = 1024;
                v162[15] = v80;
                LOWORD(v162[16]) = 2048;
                *(&v162[16] + 2) = v5;
                _os_log_impl(&dword_24E50C000, v102, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ******* BWE_RCV: SEQ OVERRIDE (%d/%d, %d) --> (%d/%d, %d)   @%.3f ", v162, 0x4Au);
              }
            }

            else if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
            {
              v139 = *(v153 + 8468);
              v140 = *(v153 + 8472);
              v141 = *(v79 + 284);
              v142 = *(v7 + 116);
              v143 = *(v7 + 100);
              v162[0] = 136317442;
              *&v162[1] = v101;
              LOWORD(v162[3]) = 2080;
              *(&v162[3] + 2) = "BWE_TrackSeqInterruption";
              HIWORD(v162[5]) = 1024;
              v162[6] = 9012;
              LOWORD(v162[7]) = 1024;
              *(&v162[7] + 2) = v139;
              HIWORD(v162[8]) = 1024;
              v162[9] = v140;
              LOWORD(v162[10]) = 1024;
              *(&v162[10] + 2) = v141;
              HIWORD(v162[11]) = 1024;
              v162[12] = v142;
              LOWORD(v162[13]) = 1024;
              *(&v162[13] + 2) = v143;
              HIWORD(v162[14]) = 1024;
              v162[15] = v80;
              LOWORD(v162[16]) = 2048;
              *(&v162[16] + 2) = v5;
              _os_log_debug_impl(&dword_24E50C000, v102, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ******* BWE_RCV: SEQ OVERRIDE (%d/%d, %d) --> (%d/%d, %d)   @%.3f ", v162, 0x4Au);
            }
          }

          v81 = v10;
          v95 = v153;
          BWE_EndCurrentSequence(v153, v5);
          v95[1060] = vadd_s32(v95[1060], 0x100000001);
        }

        else
        {
          v81 = v10;
          if (WORD2(v157) > 0xFFFu)
          {
            goto LABEL_122;
          }

          v95 = v153;
          ++*(v153 + 8480);
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v96 = VRTraceErrorLogLevelToCSTR();
            v97 = *MEMORY[0x277CE5818];
            v98 = *MEMORY[0x277CE5818];
            if (*MEMORY[0x277CE5808] == 1)
            {
              v99 = os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT);
              v95 = v153;
              if (v99)
              {
                v100 = *(v7 + 116);
                v162[0] = 136316418;
                *&v162[1] = v96;
                LOWORD(v162[3]) = 2080;
                *(&v162[3] + 2) = "BWE_TrackSeqInterruption";
                HIWORD(v162[5]) = 1024;
                v162[6] = 9035;
                LOWORD(v162[7]) = 1024;
                *(&v162[7] + 2) = v100;
                HIWORD(v162[8]) = 1024;
                v162[9] = v80;
                LOWORD(v162[10]) = 2048;
                *(&v162[10] + 2) = v5;
                _os_log_impl(&dword_24E50C000, v97, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ******* BWE_RCV: NEW SEQ (%d, %d) @%.3f ", v162, 0x32u);
              }
            }

            else
            {
              v120 = os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG);
              v95 = v153;
              if (v120)
              {
                v121 = *(v7 + 116);
                v162[0] = 136316418;
                *&v162[1] = v96;
                LOWORD(v162[3]) = 2080;
                *(&v162[3] + 2) = "BWE_TrackSeqInterruption";
                HIWORD(v162[5]) = 1024;
                v162[6] = 9035;
                LOWORD(v162[7]) = 1024;
                *(&v162[7] + 2) = v121;
                HIWORD(v162[8]) = 1024;
                v162[9] = v80;
                LOWORD(v162[10]) = 2048;
                *(&v162[10] + 2) = v5;
                _os_log_debug_impl(&dword_24E50C000, v97, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ******* BWE_RCV: NEW SEQ (%d, %d) @%.3f ", v162, 0x32u);
              }
            }
          }
        }

        *(v79 + 272) = 1;
        v95[1058].i32[1] = *(v7 + 116);
        v95[1059].i32[0] = *(v7 + 100);
        *(v79 + 284) = v80;
        goto LABEL_122;
      }
    }

    v155 = &v144;
    MEMORY[0x28223BE20](NextHop);
    v65 = (&v144 - v64);
    NextHop = memset(&v144 - v64, 170, v66);
    v61 = v154;
    *v65 = v48[v58++];
    v67 = 1;
    if (v58 < v61)
    {
      v68 = v62;
      v69 = v60;
      v70 = v59;
      do
      {
        if (*v69 == v63)
        {
          v65[v67] = *v70;
          v67 = (v67 + 1);
          *v69 = -1;
        }

        ++v70;
        v69 += 4;
        --v68;
      }

      while (v68);
    }

    if (v26 != 7)
    {
      if (v26 == 6)
      {
        memset(v162, 170, sizeof(v162));
        NextHop = OSPFMakeAudio(v162, 4096, v159, 0, v160[2], v65, v67);
        if (NextHop >= 1)
        {
          NextHop = SendUDPPacketToParticipantChannelID(v153, v162, NextHop, v63, 0, -1, 2);
        }

        goto LABEL_74;
      }

      if (v26 != 5)
      {
LABEL_75:
        v48 = v152;
        v52 = v150;
        goto LABEL_76;
      }
    }

    memset(v162, 170, sizeof(v162));
    v71 = v153;
    NextHop = OSPFMakeData(v162, 4096, v159, 0, v147, v160[2], v65, v67, *(*(v153 + 96) + 24), *(*(v153 + 96) + 32), 0x40u, 0, 0);
    if (NextHop >= 1)
    {
      NextHop = SendUDPPacketToParticipantChannelID(v71, v162, NextHop, v63, 0, -1, 1);
    }

    v26 = v148;
LABEL_74:
    v61 = v154;
    goto LABEL_75;
  }

  if (!ErrorLogLevelForModule)
  {
    v46 = v160;
    if (*(v160 + 1) != 1 || (gckSessionProcessHello(v153, v7, v159, 0), (v46 = v160) != 0))
    {
      free(v46);
    }

    v47 = v159;
    if (v159)
    {
      goto LABEL_137;
    }

    return 0;
  }

  v38 = malloc_type_calloc(1uLL, 0x1070uLL, 0x10200407CC26935uLL);
  if (v38)
  {
    v39 = v38;
    v38[1026] = *(v7 + 116);
    __memcpy_chk();
    v39[1025] = v10;
    v40 = *v173;
    *(v39 + 1027) = v172;
    *(v39 + 1031) = v40;
    *(v39 + 1035) = *&v173[16];
    v41 = v170;
    *(v39 + 1037) = v169;
    *(v39 + 1041) = v41;
    *(v39 + 1045) = v171;
    *(v39 + 524) = v5;
    v42 = v153;
    pthread_mutex_lock((v153 + 8112));
    v43 = (v153 + 8104);
    do
    {
      v44 = v43;
      v45 = *v43;
      v43 = (*v43 + 4200);
    }

    while (v45);
    *v44 = v39;
    pthread_cond_broadcast((v42 + 8176));
    pthread_mutex_unlock((v42 + 8112));
    return 0;
  }

  v14 = 2149187587;
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v77 = VRTraceErrorLogLevelToCSTR();
    v78 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v162[0] = 136316418;
      *&v162[1] = v77;
      LOWORD(v162[3]) = 2080;
      *(&v162[3] + 2) = "gckSessionRecvMessage";
      HIWORD(v162[5]) = 1024;
      v162[6] = 3633;
      LOWORD(v162[7]) = 1024;
      *(&v162[7] + 2) = 3633;
      HIWORD(v162[8]) = 1024;
      v162[9] = 4208;
      LOWORD(v162[10]) = 1024;
      *(&v162[10] + 2) = -2145779709;
      v18 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GCKSession.c:%d: calloc(%d) failed(%X)";
      v19 = v78;
      goto LABEL_9;
    }
  }

  return v14;
}