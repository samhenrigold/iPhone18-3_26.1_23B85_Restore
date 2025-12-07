void **sub_100165978(void **result)
{
  if ((result[83] & 8) != 0)
  {
    v1 = result;
    result = memcpy(result[15], v1[16], *(v1 + 19));
    *(v1 + 332) &= ~8u;
  }

  return result;
}

void *sub_1001659F8(uint64_t a1, size_t *a2)
{
  if (*a2)
  {
    v3 = *a2;
  }

  else
  {
    v3 = 0x1000000;
  }

  v7 = v3;
  v8 = 0;
  if (*(a1 + 120) && (*(a1 + 116) & 0x80000000) == 0)
  {
    sub_100165978(a1);
    v5 = sub_100162CF8(a1, &v7, &v8, 0, 1);
    if ((v5 & 0xFFFFFFFD) == 1)
    {
      result = v8;
      *a2 = v3 - v7;
      return result;
    }

    if ((v5 & 0x80000000) != 0)
    {
      sub_100162CE4(a1, v5);
    }
  }

  result = 0;
  *a2 = 0;
  return result;
}

BOOL sub_100165AC4(uint64_t a1)
{
  if (*a1 != 26)
  {
    return 0;
  }

  if ((*(a1 + 116) & 0x80000000) != 0 || !*(a1 + 120))
  {
    return 1;
  }

  return *(a1 + 76) - *(a1 + 376) + *(a1 + 368) * *(a1 + 88) == 0;
}

const char *sub_100165B18(int a1)
{
  if ((a1 + 31) > 0x22)
  {
    return "INVALID";
  }

  else
  {
    return off_1004848E8[a1 + 31];
  }
}

uint64_t sub_100165B40(unsigned __int8 *a1, uint64_t a2, _DWORD *a3)
{
  v3 = *(a2 + 8);
  if (v3 == 64)
  {
    if (!*a1)
    {
      goto LABEL_12;
    }

    return 0;
  }

  v4 = 64 - v3;
  v5 = *a2 >> v3;
  a1 += 4 * v5;
  v6 = *a1;
  if (v6 > 8)
  {
    if (v4 < 9)
    {
      return 0;
    }

    a1 += 4 * *(a1 + 1) + 4 * ((v5 & ~(-1 << v6)) >> 8);
    v8 = *a1;
    if (56 - v3 < v8)
    {
      return 0;
    }

    v7 = v3 + v8 + 8;
  }

  else
  {
    if (v4 < v6)
    {
      return 0;
    }

    v7 = v3 + v6;
  }

  *(a2 + 8) = v7;
LABEL_12:
  *a3 = *(a1 + 1);
  return 1;
}

unsigned __int8 *sub_100165BE0(unsigned __int8 *result, unsigned int a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = *(a3 + 384);
  v7 = (a3 + 392);
  *(a3 + 392) = 50462976;
  if ((v6 + 1) > 2)
  {
    v8 = (v6 + 1);
  }

  else
  {
    v8 = 2;
  }

  v9 = (v8 + 2) & 0x1FFFFFFFCLL;
  v10 = vdupq_n_s64(v8 - 2);
  v11 = xmmword_1003E2EF0;
  v12 = a3 + 408;
  v13.i64[0] = 0x404040404040404;
  v13.i64[1] = 0x404040404040404;
  v14.i64[0] = 0x1010101010101010;
  v14.i64[1] = 0x1010101010101010;
  do
  {
    v15 = vdupq_n_s64(v5);
    v16 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v15, xmmword_1003772E0)));
    v17 = vaddq_s32(v11, v13);
    if (vuzp1_s16(v16, *v10.i8).u8[0])
    {
      *(v12 - 12) = v17.i32[0];
    }

    if (vuzp1_s16(v16, *&v10).i8[2])
    {
      *(v12 - 8) = v17.i32[1];
    }

    if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v15, xmmword_10037C710)))).i32[1])
    {
      *(v12 - 4) = v17.i64[1];
    }

    v5 += 4;
    v11 = vaddq_s32(v11, v14);
    v12 += 16;
  }

  while (v9 != v5);
  if (a2)
  {
    v18 = 0;
    v19 = a2;
    do
    {
      v20 = *v4;
      v21 = v7[v20];
      *v4++ = v21;
      *(a3 + 391) = v21;
      result = memmove(v7, (a3 + 391), v20 + 1);
      v18 |= v20;
      --v19;
    }

    while (v19);
    v22 = v18 >> 2;
  }

  else
  {
    v22 = 0;
  }

  *(a3 + 384) = v22;
  return result;
}

uint64_t sub_100165D34(uint64_t a1)
{
  v1 = *(a1 + 288);
  if (v1 < 2)
  {
    return 0;
  }

  v3 = *(a1 + 248);
  v4 = (*(a1 + 240) + 2528);
  v45 = 0;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  if ((v6 - 50) > 0xE)
  {
LABEL_6:
    v16 = v9 >> v10;
    v17 = &v4[4 * (v9 >> v10)];
    v18 = *v17;
    if (v18 >= 9)
    {
      v10 += 8;
      v17 += 4 * (BYTE1(v16) & ~(-1 << (v18 - 8)) & 0x7F) + 4 * *(v17 + 1);
      v18 = *v17;
    }

    *(a1 + 16) = v10 + v18;
    v45 = *(v17 + 1);
  }

  else
  {
    v11 = v7 + 1;
    v12 = v8 - 1;
    v9 = *(a1 + 8);
    v13 = *(a1 + 16);
    while (v12 != -1)
    {
      *(a1 + 8) = v9 >> 8;
      *(&v14 + 1) = *(v11 - 1);
      *&v14 = v9;
      v9 = v14 >> 8;
      *(a1 + 8) = v9;
      v10 = v13 - 8;
      *(a1 + 16) = v13 - 8;
      *(a1 + 24) = v11;
      *(a1 + 32) = v12;
      ++v11;
      --v12;
      v15 = v13 - 58;
      v13 -= 8;
      if (v15 >= 0xF)
      {
        goto LABEL_6;
      }
    }

    if (!sub_100165B40(v4, a1 + 8, &v45))
    {
      return 0;
    }
  }

  v46 = 0;
  if (*(a1 + 660))
  {
    v19 = *(a1 + 268);
  }

  else
  {
    v20 = (v3 + 1584);
    v21 = *(a1 + 16);
    if ((v21 - 50) >= 0xF)
    {
      v25 = *(a1 + 8);
LABEL_19:
      v28 = v25 >> v21;
      v29 = &v20[4 * (v25 >> v21)];
      v30 = *v29;
      if (v30 >= 9)
      {
        v21 += 8;
        v29 += 4 * (BYTE1(v28) & ~(-1 << (v30 - 8)) & 0x7F) + 4 * *(v29 + 1);
        v30 = *v29;
      }

      *(a1 + 16) = v21 + v30;
      v19 = *(v29 + 1);
    }

    else
    {
      v22 = *(a1 + 32) - 1;
      while (v22 != -1)
      {
        v23 = *(a1 + 8);
        *(a1 + 8) = v23 >> 8;
        v24 = *(a1 + 24);
        *(&v26 + 1) = *v24;
        *&v26 = v23;
        v25 = v26 >> 8;
        *(a1 + 8) = v25;
        v27 = v21 - 8;
        *(a1 + 16) = v21 - 8;
        *(a1 + 24) = v24 + 1;
        *(a1 + 32) = v22--;
        LODWORD(v24) = v21 - 58;
        v21 -= 8;
        if (v24 >= 0xF)
        {
          v21 = v27;
          goto LABEL_19;
        }
      }

      if (!sub_100165B40(v20, a1 + 8, &v46))
      {
        goto LABEL_32;
      }

      v19 = v46;
    }
  }

  v31 = (&unk_10037D31E + 4 * v19);
  v32 = *(v31 + 2);
  v33 = *v31;
  v34 = *(a1 + 16);
  v35 = 64 - v34;
  if (64 - v34 < v32)
  {
    v36 = *(a1 + 32) - 1;
    while (v36 != -1)
    {
      v37 = *(a1 + 8);
      *(a1 + 8) = v37 >> 8;
      v38 = *(a1 + 24);
      *(&v40 + 1) = *v38;
      *&v40 = v37;
      v39 = v40 >> 8;
      *(a1 + 8) = v39;
      v34 -= 8;
      *(a1 + 16) = v34;
      *(a1 + 24) = v38 + 1;
      *(a1 + 32) = v36--;
      v35 += 8;
      if (v35 >= v32)
      {
        goto LABEL_28;
      }
    }

    *(a1 + 268) = v19;
LABEL_32:
    *(a1 + 660) = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    return 0;
  }

  v39 = *(a1 + 8);
LABEL_28:
  *(a1 + 16) = v34 + v32;
  *(a1 + 276) = ((v39 >> v34) & ~(-1 << v32)) + v33;
  *(a1 + 660) = 0;
  if (v45)
  {
    if (v45 == 1)
    {
      v41 = *(a1 + 308) + 1;
    }

    else
    {
      v41 = v45 - 2;
    }
  }

  else
  {
    v41 = *(a1 + 304);
  }

  if (v41 >= v1)
  {
    v43 = v1;
  }

  else
  {
    v43 = 0;
  }

  v44 = v41 - v43;
  *(a1 + 304) = *(a1 + 308);
  *(a1 + 308) = v44;
  *(a1 + 136) = *(*(a1 + 192) + 8 * v44);
  return 1;
}

uint64_t sub_10016604C(uint64_t result)
{
  v1 = *(result + 288);
  if (v1 >= 2)
  {
    v2 = *(result + 240) + 2528;
    v3 = *(result + 16);
    v4 = *(result + 8);
    if (v3 >= 0x30)
    {
      *(result + 8) = HIWORD(v4);
      v3 ^= 0x30u;
      *(result + 16) = v3;
      v5 = *(result + 24);
      v6 = *(result + 32);
      *(&v7 + 1) = *v5;
      *&v7 = v4;
      v4 = v7 >> 48;
      *(result + 8) = v4;
      *(result + 24) = v5 + 6;
      *(result + 32) = v6 - 6;
    }

    v8 = v4 >> v3;
    v9 = (v2 + 4 * (v4 >> v3));
    v10 = *v9;
    if (v10 >= 9)
    {
      v3 += 8;
      v9 += 4 * ((v8 >> 8) & ~(-1 << (v10 - 8))) + 4 * *(v9 + 1);
      v10 = *v9;
    }

    v11 = *(result + 248) + 1584;
    v12 = v3 + v10;
    v13 = *(v9 + 1);
    if (v12 >= 0x30)
    {
      *(result + 8) = HIWORD(v4);
      v12 ^= 0x30u;
      v14 = *(result + 24);
      v15 = *(result + 32);
      *(&v16 + 1) = *v14;
      *&v16 = v4;
      v4 = v16 >> 48;
      *(result + 8) = v4;
      *(result + 24) = v14 + 6;
      *(result + 32) = v15 - 6;
    }

    v17 = v4 >> v12;
    v18 = (v11 + 4 * (v4 >> v12));
    v19 = *v18;
    if (v19 >= 9)
    {
      v12 += 8;
      v18 += 4 * ((v17 >> 8) & ~(-1 << (v19 - 8))) + 4 * *(v18 + 1);
      v19 = *v18;
    }

    v20 = v12 + v19;
    v21 = (&unk_10037D31E + 4 * *(v18 + 1));
    v22 = *(v21 + 2);
    v23 = *v21;
    if (v20 >= 0x20)
    {
      v20 ^= 0x20u;
      *(result + 16) = v20;
      v24 = *(result + 24);
      v25 = *(result + 32);
      *(&v26 + 1) = *v24;
      *&v26 = v4;
      v4 = v26 >> 32;
      *(result + 8) = v4;
      *(result + 24) = v24 + 1;
      *(result + 32) = v25 - 4;
    }

    *(result + 16) = v20 + v22;
    *(result + 276) = ((v4 >> v20) & ~(-1 << v22)) + v23;
    if (v13)
    {
      if (v13 == 1)
      {
        v27 = *(result + 308) + 1;
      }

      else
      {
        v27 = v13 - 2;
      }
    }

    else
    {
      v27 = *(result + 304);
    }

    if (v27 < v1)
    {
      v1 = 0;
    }

    v28 = v27 - v1;
    *(result + 304) = *(result + 308);
    *(result + 308) = v28;
    *(result + 136) = *(*(result + 192) + 8 * v28);
  }

  return result;
}

uint64_t sub_1001661FC(uint64_t a1)
{
  v1 = *(a1 + 284);
  if (v1 < 2)
  {
    return 0;
  }

  v3 = *(a1 + 240);
  v4 = *(a1 + 248);
  v46 = 0;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  if ((v6 - 50) > 0xE)
  {
LABEL_6:
    v16 = v9 >> v10;
    v17 = &v3[4 * (v9 >> v10)];
    v18 = *v17;
    if (v18 >= 9)
    {
      v10 += 8;
      v17 += 4 * (BYTE1(v16) & ~(-1 << (v18 - 8)) & 0x7F) + 4 * *(v17 + 1);
      v18 = *v17;
    }

    *(a1 + 16) = v10 + v18;
    v46 = *(v17 + 1);
  }

  else
  {
    v11 = v7 + 1;
    v12 = v8 - 1;
    v9 = *(a1 + 8);
    v13 = *(a1 + 16);
    while (v12 != -1)
    {
      *(a1 + 8) = v9 >> 8;
      *(&v14 + 1) = *(v11 - 1);
      *&v14 = v9;
      v9 = v14 >> 8;
      *(a1 + 8) = v9;
      v10 = v13 - 8;
      *(a1 + 16) = v13 - 8;
      *(a1 + 24) = v11;
      *(a1 + 32) = v12;
      ++v11;
      --v12;
      v15 = v13 - 58;
      v13 -= 8;
      if (v15 >= 0xF)
      {
        goto LABEL_6;
      }
    }

    if (!sub_100165B40(v3, a1 + 8, &v46))
    {
      return 0;
    }
  }

  v47 = 0;
  if (*(a1 + 660))
  {
    v19 = *(a1 + 268);
  }

  else
  {
    v20 = *(a1 + 16);
    if ((v20 - 50) >= 0xF)
    {
      v24 = *(a1 + 8);
LABEL_19:
      v27 = v24 >> v20;
      v28 = &v4[4 * (v24 >> v20)];
      v29 = *v28;
      if (v29 >= 9)
      {
        v20 += 8;
        v28 += 4 * (BYTE1(v27) & ~(-1 << (v29 - 8)) & 0x7F) + 4 * *(v28 + 1);
        v29 = *v28;
      }

      *(a1 + 16) = v20 + v29;
      v19 = *(v28 + 1);
    }

    else
    {
      v21 = *(a1 + 32) - 1;
      while (v21 != -1)
      {
        v22 = *(a1 + 8);
        *(a1 + 8) = v22 >> 8;
        v23 = *(a1 + 24);
        *(&v25 + 1) = *v23;
        *&v25 = v22;
        v24 = v25 >> 8;
        *(a1 + 8) = v24;
        v26 = v20 - 8;
        *(a1 + 16) = v20 - 8;
        *(a1 + 24) = v23 + 1;
        *(a1 + 32) = v21--;
        LODWORD(v23) = v20 - 58;
        v20 -= 8;
        if (v23 >= 0xF)
        {
          v20 = v26;
          goto LABEL_19;
        }
      }

      if (!sub_100165B40(v4, a1 + 8, &v47))
      {
        goto LABEL_32;
      }

      v19 = v47;
    }
  }

  v30 = (&unk_10037D31E + 4 * v19);
  v31 = *(v30 + 2);
  v32 = *v30;
  v33 = *(a1 + 16);
  v34 = 64 - v33;
  if (64 - v33 < v31)
  {
    v35 = *(a1 + 32) - 1;
    while (v35 != -1)
    {
      v36 = *(a1 + 8);
      *(a1 + 8) = v36 >> 8;
      v37 = *(a1 + 24);
      *(&v39 + 1) = *v37;
      *&v39 = v36;
      v38 = v39 >> 8;
      *(a1 + 8) = v38;
      v33 -= 8;
      *(a1 + 16) = v33;
      *(a1 + 24) = v37 + 1;
      *(a1 + 32) = v35--;
      v34 += 8;
      if (v34 >= v31)
      {
        goto LABEL_28;
      }
    }

    *(a1 + 268) = v19;
LABEL_32:
    *(a1 + 660) = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    return 0;
  }

  v38 = *(a1 + 8);
LABEL_28:
  *(a1 + 16) = v33 + v31;
  *(a1 + 272) = ((v38 >> v33) & ~(-1 << v31)) + v32;
  *(a1 + 660) = 0;
  if (v46)
  {
    if (v46 == 1)
    {
      v40 = *(a1 + 300) + 1;
    }

    else
    {
      v40 = v46 - 2;
    }
  }

  else
  {
    v40 = *(a1 + 296);
  }

  if (v40 >= v1)
  {
    v42 = v1;
  }

  else
  {
    v42 = 0;
  }

  v43 = v40 - v42;
  *(a1 + 296) = *(a1 + 300);
  *(a1 + 300) = v43;
  v44 = v43 << 6;
  v45 = *(a1 + 680);
  *(a1 + 152) = v45 + v44;
  *(a1 + 256) = (*(a1 + 4 * (v43 >> 5) + 712) >> v43) & 1;
  *(a1 + 344) = *(*(a1 + 168) + 8 * *(v45 + v44));
  *(a1 + 144) = &byte_1003E3330[512 * (*(*(a1 + 688) + v43) & 3)];
  return 1;
}

uint64_t sub_10016655C(uint64_t result)
{
  v1 = *(result + 284);
  if (v1 >= 2)
  {
    v2 = *(result + 240);
    v3 = *(result + 16);
    v4 = *(result + 8);
    if (v3 >= 0x30)
    {
      *(result + 8) = HIWORD(v4);
      v3 ^= 0x30u;
      *(result + 16) = v3;
      v5 = *(result + 24);
      v6 = *(result + 32);
      *(&v7 + 1) = *v5;
      *&v7 = v4;
      v4 = v7 >> 48;
      *(result + 8) = v4;
      *(result + 24) = v5 + 6;
      *(result + 32) = v6 - 6;
    }

    v8 = v4 >> v3;
    v9 = (v2 + 4 * (v4 >> v3));
    v10 = *v9;
    if (v10 >= 9)
    {
      v3 += 8;
      v9 += 4 * ((v8 >> 8) & ~(-1 << (v10 - 8))) + 4 * *(v9 + 1);
      v10 = *v9;
    }

    v11 = *(result + 248);
    v12 = v3 + v10;
    v13 = *(v9 + 1);
    if (v12 >= 0x30)
    {
      *(result + 8) = HIWORD(v4);
      v12 ^= 0x30u;
      v14 = *(result + 24);
      v15 = *(result + 32);
      *(&v16 + 1) = *v14;
      *&v16 = v4;
      v4 = v16 >> 48;
      *(result + 8) = v4;
      *(result + 24) = v14 + 6;
      *(result + 32) = v15 - 6;
    }

    v17 = v4 >> v12;
    v18 = (v11 + 4 * (v4 >> v12));
    v19 = *v18;
    if (v19 >= 9)
    {
      v12 += 8;
      v18 += 4 * ((v17 >> 8) & ~(-1 << (v19 - 8))) + 4 * *(v18 + 1);
      v19 = *v18;
    }

    v20 = v12 + v19;
    v21 = (&unk_10037D31E + 4 * *(v18 + 1));
    v22 = *(v21 + 2);
    v23 = *v21;
    if (v20 >= 0x20)
    {
      v20 ^= 0x20u;
      *(result + 16) = v20;
      v24 = *(result + 24);
      v25 = *(result + 32);
      *(&v26 + 1) = *v24;
      *&v26 = v4;
      v4 = v26 >> 32;
      *(result + 8) = v4;
      *(result + 24) = v24 + 1;
      *(result + 32) = v25 - 4;
    }

    *(result + 16) = v20 + v22;
    *(result + 272) = ((v4 >> v20) & ~(-1 << v22)) + v23;
    if (v13)
    {
      if (v13 == 1)
      {
        v27 = *(result + 300) + 1;
      }

      else
      {
        v27 = v13 - 2;
      }
    }

    else
    {
      v27 = *(result + 296);
    }

    if (v27 < v1)
    {
      v1 = 0;
    }

    v28 = v27 - v1;
    *(result + 296) = *(result + 300);
    *(result + 300) = v28;
    v29 = v28 << 6;
    v30 = *(result + 680);
    *(result + 152) = v30 + v29;
    *(result + 256) = (*(result + 4 * (v28 >> 5) + 712) >> v28) & 1;
    *(result + 344) = *(*(result + 168) + 8 * *(v30 + v29));
    *(result + 144) = &byte_1003E3330[512 * (*(*(result + 688) + v28) & 3)];
  }

  return result;
}

uint64_t sub_10016674C(uint64_t a1)
{
  v1 = *(a1 + 292);
  if (v1 < 2)
  {
    return 0;
  }

  v3 = *(a1 + 248);
  v4 = (*(a1 + 240) + 5056);
  v46 = 0;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  if ((v6 - 50) > 0xE)
  {
LABEL_6:
    v16 = v9 >> v10;
    v17 = &v4[4 * (v9 >> v10)];
    v18 = *v17;
    if (v18 >= 9)
    {
      v10 += 8;
      v17 += 4 * (BYTE1(v16) & ~(-1 << (v18 - 8)) & 0x7F) + 4 * *(v17 + 1);
      v18 = *v17;
    }

    *(a1 + 16) = v10 + v18;
    v46 = *(v17 + 1);
  }

  else
  {
    v11 = v7 + 1;
    v12 = v8 - 1;
    v9 = *(a1 + 8);
    v13 = *(a1 + 16);
    while (v12 != -1)
    {
      *(a1 + 8) = v9 >> 8;
      *(&v14 + 1) = *(v11 - 1);
      *&v14 = v9;
      v9 = v14 >> 8;
      *(a1 + 8) = v9;
      v10 = v13 - 8;
      *(a1 + 16) = v13 - 8;
      *(a1 + 24) = v11;
      *(a1 + 32) = v12;
      ++v11;
      --v12;
      v15 = v13 - 58;
      v13 -= 8;
      if (v15 >= 0xF)
      {
        goto LABEL_6;
      }
    }

    if (!sub_100165B40(v4, a1 + 8, &v46))
    {
      return 0;
    }
  }

  v47 = 0;
  if (*(a1 + 660))
  {
    v19 = *(a1 + 268);
  }

  else
  {
    v20 = (v3 + 3168);
    v21 = *(a1 + 16);
    if ((v21 - 50) >= 0xF)
    {
      v25 = *(a1 + 8);
LABEL_19:
      v28 = v25 >> v21;
      v29 = &v20[4 * (v25 >> v21)];
      v30 = *v29;
      if (v30 >= 9)
      {
        v21 += 8;
        v29 += 4 * (BYTE1(v28) & ~(-1 << (v30 - 8)) & 0x7F) + 4 * *(v29 + 1);
        v30 = *v29;
      }

      *(a1 + 16) = v21 + v30;
      v19 = *(v29 + 1);
    }

    else
    {
      v22 = *(a1 + 32) - 1;
      while (v22 != -1)
      {
        v23 = *(a1 + 8);
        *(a1 + 8) = v23 >> 8;
        v24 = *(a1 + 24);
        *(&v26 + 1) = *v24;
        *&v26 = v23;
        v25 = v26 >> 8;
        *(a1 + 8) = v25;
        v27 = v21 - 8;
        *(a1 + 16) = v21 - 8;
        *(a1 + 24) = v24 + 1;
        *(a1 + 32) = v22--;
        LODWORD(v24) = v21 - 58;
        v21 -= 8;
        if (v24 >= 0xF)
        {
          v21 = v27;
          goto LABEL_19;
        }
      }

      if (!sub_100165B40(v20, a1 + 8, &v47))
      {
        goto LABEL_32;
      }

      v19 = v47;
    }
  }

  v31 = (&unk_10037D31E + 4 * v19);
  v32 = *(v31 + 2);
  v33 = *v31;
  v34 = *(a1 + 16);
  v35 = 64 - v34;
  if (64 - v34 < v32)
  {
    v36 = *(a1 + 32) - 1;
    while (v36 != -1)
    {
      v37 = *(a1 + 8);
      *(a1 + 8) = v37 >> 8;
      v38 = *(a1 + 24);
      *(&v40 + 1) = *v38;
      *&v40 = v37;
      v39 = v40 >> 8;
      *(a1 + 8) = v39;
      v34 -= 8;
      *(a1 + 16) = v34;
      *(a1 + 24) = v38 + 1;
      *(a1 + 32) = v36--;
      v35 += 8;
      if (v35 >= v32)
      {
        goto LABEL_28;
      }
    }

    *(a1 + 268) = v19;
LABEL_32:
    *(a1 + 660) = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    return 0;
  }

  v39 = *(a1 + 8);
LABEL_28:
  *(a1 + 16) = v34 + v32;
  *(a1 + 280) = ((v39 >> v34) & ~(-1 << v32)) + v33;
  *(a1 + 660) = 0;
  if (v46)
  {
    if (v46 == 1)
    {
      v41 = *(a1 + 316) + 1;
    }

    else
    {
      v41 = v46 - 2;
    }
  }

  else
  {
    v41 = *(a1 + 312);
  }

  if (v41 >= v1)
  {
    v43 = v1;
  }

  else
  {
    v43 = 0;
  }

  v44 = v41 - v43;
  *(a1 + 312) = *(a1 + 316);
  *(a1 + 316) = v44;
  v45 = *(a1 + 336) + 4 * v44;
  *(a1 + 160) = v45;
  *(a1 + 352) = *(v45 + *(a1 + 260));
  return 1;
}

uint64_t sub_100166A78(uint64_t result)
{
  v1 = *(result + 292);
  if (v1 >= 2)
  {
    v2 = *(result + 240) + 5056;
    v3 = *(result + 16);
    v4 = *(result + 8);
    if (v3 >= 0x30)
    {
      *(result + 8) = HIWORD(v4);
      v3 ^= 0x30u;
      *(result + 16) = v3;
      v5 = *(result + 24);
      v6 = *(result + 32);
      *(&v7 + 1) = *v5;
      *&v7 = v4;
      v4 = v7 >> 48;
      *(result + 8) = v4;
      *(result + 24) = v5 + 6;
      *(result + 32) = v6 - 6;
    }

    v8 = v4 >> v3;
    v9 = (v2 + 4 * (v4 >> v3));
    v10 = *v9;
    if (v10 >= 9)
    {
      v3 += 8;
      v9 += 4 * ((v8 >> 8) & ~(-1 << (v10 - 8))) + 4 * *(v9 + 1);
      v10 = *v9;
    }

    v11 = *(result + 248) + 3168;
    v12 = v3 + v10;
    v13 = *(v9 + 1);
    if (v12 >= 0x30)
    {
      *(result + 8) = HIWORD(v4);
      v12 ^= 0x30u;
      v14 = *(result + 24);
      v15 = *(result + 32);
      *(&v16 + 1) = *v14;
      *&v16 = v4;
      v4 = v16 >> 48;
      *(result + 8) = v4;
      *(result + 24) = v14 + 6;
      *(result + 32) = v15 - 6;
    }

    v17 = v4 >> v12;
    v18 = (v11 + 4 * (v4 >> v12));
    v19 = *v18;
    if (v19 >= 9)
    {
      v12 += 8;
      v18 += 4 * ((v17 >> 8) & ~(-1 << (v19 - 8))) + 4 * *(v18 + 1);
      v19 = *v18;
    }

    v20 = v12 + v19;
    v21 = (&unk_10037D31E + 4 * *(v18 + 1));
    v22 = *(v21 + 2);
    v23 = *v21;
    if (v20 >= 0x20)
    {
      v20 ^= 0x20u;
      *(result + 16) = v20;
      v24 = *(result + 24);
      v25 = *(result + 32);
      *(&v26 + 1) = *v24;
      *&v26 = v4;
      v4 = v26 >> 32;
      *(result + 8) = v4;
      *(result + 24) = v24 + 1;
      *(result + 32) = v25 - 4;
    }

    *(result + 16) = v20 + v22;
    *(result + 280) = ((v4 >> v20) & ~(-1 << v22)) + v23;
    if (v13)
    {
      if (v13 == 1)
      {
        v27 = *(result + 316) + 1;
      }

      else
      {
        v27 = v13 - 2;
      }
    }

    else
    {
      v27 = *(result + 312);
    }

    if (v27 < v1)
    {
      v1 = 0;
    }

    v28 = v27 - v1;
    *(result + 312) = *(result + 316);
    *(result + 316) = v28;
    v29 = *(result + 336) + 4 * v28;
    *(result + 160) = v29;
    *(result + 352) = *(v29 + *(result + 260));
  }

  return result;
}

uint64_t sub_100166C3C(uint64_t result, void *(*a2)(int a1, size_t __size), void (*a3)(int a1, void *a2), uint64_t a4)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = sub_100134FA4;
  }

  if (a2)
  {
    v5 = a3;
  }

  else
  {
    v5 = sub_100134FAC;
  }

  *result = v4;
  *(result + 8) = v5;
  if (a2)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0;
  }

  *(result + 16) = v6;
  *(result + 24) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_100166C7C(uint64_t a1)
{
  v2 = (*a1)(*(a1 + 16));
  if (v2)
  {
    v3 = *(a1 + 40);
    if (v3 == 64)
    {
      sub_100166CE8(a1);
      v3 = *(a1 + 40);
    }

    *(a1 + 40) = v3 + 1;
    *(a1 + 8 * v3 + 1080) = v2;
  }

  else
  {
    *(a1 + 24) = 1;
  }

  return v2;
}

uint64_t sub_100166CE8(void *a1)
{
  v2 = a1 + 7;
  sub_100166E6C((a1 + 135), a1[5]);
  sub_100166E6C((a1 + 199), a1[6]);
  result = sub_100166EF4((a1 + 135), a1[5], (a1 + 199), a1[6]);
  v4 = a1[6];
  v5 = a1[5] - result;
  a1[5] = v5;
  a1[6] = v4 - result;
  if (v4 != result)
  {
    result = sub_100166EF4(v2, a1[4], (a1 + 199), v4 - result);
    v5 = a1[5];
    a1[4] -= result;
    a1[6] -= result;
  }

  if (v5)
  {
    memcpy(&v2[a1[4]], a1 + 135, 8 * v5);
    v6 = a1[4] + a1[5];
    a1[4] = v6;
    a1[5] = 0;

    return sub_100166E6C(v2, v6);
  }

  return result;
}

uint64_t sub_100166DB4(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    result = (*(result + 8))(*(result + 16));
    v4 = v3[6];
    if (v4 == 64)
    {
      result = sub_100166CE8(v3);
      v4 = v3[6];
    }

    v3[6] = v4 + 1;
    v3[v4 + 199] = a2;
  }

  return result;
}

uint64_t sub_100166E10(uint64_t a1)
{
  result = sub_100166CE8(a1);
  if (*(a1 + 32))
  {
    v3 = 0;
    do
    {
      result = (*(a1 + 8))(*(a1 + 16), *(a1 + 56 + 8 * v3++));
    }

    while (v3 < *(a1 + 32));
  }

  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_100166E6C(uint64_t result, unint64_t a2)
{
  for (i = 0; i != 4; ++i)
  {
    v3 = qword_1003EA9F8[i];
    if (v3 < a2)
    {
      v4 = result + 8 * v3;
      v5 = result;
      v6 = qword_1003EA9F8[i];
      do
      {
        v7 = *(result + 8 * v6);
        v8 = v6;
        if (v6 >= v3)
        {
          v9 = 0;
          while (1)
          {
            v10 = *(v5 + 8 * v9);
            if (v7 >= v10)
            {
              break;
            }

            *(v4 + 8 * v9) = v10;
            v9 -= v3;
            v8 = v6 + v9;
            if (v6 + v9 < v3)
            {
              goto LABEL_10;
            }
          }

          v8 = v6 + v9;
        }

LABEL_10:
        *(result + 8 * v8) = v7;
        ++v6;
        v4 += 8;
        v5 += 8;
      }

      while (v6 != a2);
    }
  }

  return result;
}

uint64_t sub_100166EF4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  result = 0;
  if (a2 && a4)
  {
    result = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
    do
    {
      v10 = *(a1 + 8 * v5);
      v11 = *(a3 + 8 * v6);
      if (v10 == v11)
      {
        ++v5;
        ++v6;
        ++result;
      }

      else if (v10 >= v11)
      {
        ++v6;
        *(a3 + 8 * v8++) = v11;
      }

      else
      {
        ++v5;
        *(a1 + 8 * v7++) = v10;
      }
    }

    while (v5 < a2 && v6 < a4);
  }

  v12 = a2 - v5;
  if (a2 > v5)
  {
    v13 = (a1 + 8 * v7);
    v14 = (a1 + 8 * v5);
    do
    {
      v15 = *v14++;
      *v13++ = v15;
      --v12;
    }

    while (v12);
  }

  v16 = a4 - v6;
  if (a4 > v6)
  {
    v17 = (a3 + 8 * v8);
    v18 = (a3 + 8 * v6);
    do
    {
      v19 = *v18++;
      *v17++ = v19;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t sub_100166FBC(unint64_t *a1)
{
  v2 = &__dst[16] + 2;
  v3 = (a1 + 401);
  v4 = (a1 + 17);
  v158 = (a1 + 145);
  v159 = (a1 + 81);
  v160 = a1 + 1827;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = *(a1 + 13);
          result = 4294967293;
          if (v5 <= 829978209)
          {
            break;
          }

          if (v5 == 829978210 || v5 == 846755426)
          {
            v8 = a1[2];
            v9 = v8 > *a1;
            v10 = v8 - *a1;
            if (!v9 || v10 < *(a1 + 19))
            {
              return 0xFFFFFFFFLL;
            }

            result = lzfse_decode_lmd(a1);
            if (result)
            {
              return result;
            }

            *(a1 + 13) = 0;
            *a1 += *(a1 + 19);
          }

          else
          {
            if (v5 != 1853388386)
            {
              return result;
            }

            v18 = *(a1 + 15);
            v19 = *a1;
            v20 = a1[2];
            if (v18 && v20 <= v19)
            {
              return 0xFFFFFFFFLL;
            }

            *(&__dst[4] + 8) = 0u;
            *(&__dst[3] + 8) = 0u;
            *(&__dst[2] + 8) = 0u;
            v9 = (v20 - v19) <= v18;
            v21 = v19 + v18;
            if (v9)
            {
              v21 = v20;
            }

            *&__dst[0] = v19;
            *(&__dst[0] + 1) = v21;
            v22 = *(a1 + 3);
            __dst[1] = v22;
            *&__dst[2] = a1[5];
            v23 = *(a1 + 14);
            if (*&__dst[2] - v22 > v23)
            {
              *&__dst[2] = v22 + v23;
            }

            *(&__dst[4] + 1) = *(a1 + 16);
            LODWORD(__dst[5]) = 0;
            result = sub_100129B14(__dst);
            if (result == -3)
            {
              return result;
            }

            v24 = *&__dst[0] - *a1;
            v25 = *(a1 + 15);
            if (v24 > v25)
            {
              return 4294967293;
            }

            v26 = *&__dst[1];
            v27 = *&__dst[1] - a1[3];
            v28 = *(a1 + 14);
            if (v27 > v28)
            {
              return 4294967293;
            }

            *a1 = *&__dst[0];
            a1[3] = v26;
            v29 = DWORD2(__dst[4]);
            v30 = __dst[5];
            v31 = v25 - v24;
            *(a1 + 15) = v31;
            *(a1 + 16) = v29;
            *(a1 + 14) = v28 - v27;
            if (v31)
            {
              if (v30)
              {
                v152 = 1;
              }

              else
              {
                v152 = v28 == v27;
              }

              if (v152)
              {
                return 4294967293;
              }

              else
              {
                return 4294967294;
              }
            }

            result = 4294967293;
            if (v28 != v27 || !v30)
            {
              return result;
            }

LABEL_41:
            *(a1 + 13) = 0;
          }
        }

        if (!v5)
        {
          break;
        }

        if (v5 != 762869346)
        {
          return result;
        }

        v11 = *(a1 + 17);
        if (!v11)
        {
          goto LABEL_41;
        }

        v12 = a1[2];
        v9 = v12 > *a1;
        v13 = v12 - *a1;
        if (!v9)
        {
          return 0xFFFFFFFFLL;
        }

        v14 = a1[5];
        v15 = a1[3];
        v9 = v14 > v15;
        v16 = v14 - v15;
        if (!v9)
        {
          return 4294967294;
        }

        if (v13 >= v11)
        {
          v11 = v11;
        }

        else
        {
          v11 = v13;
        }

        if (v16 >= v11)
        {
          v17 = v11;
        }

        else
        {
          v17 = v16;
        }

        memmove(v15, *a1, v17);
        *a1 += v17;
        a1[3] += v17;
        *(a1 + 17) -= v17;
      }

      v32 = *a1;
      v33 = (*a1 + 4);
      v34 = a1[2];
      if (v33 > v34)
      {
        return 0xFFFFFFFFLL;
      }

      v35 = *v32;
      if (*v32 <= 846755425)
      {
        break;
      }

      if (v35 == 846755426)
      {
LABEL_51:
        v157 = *v32;
        if (v35 == 846755426)
        {
          v155 = v3;
          v36 = (v32 + 8);
          if ((v32 + 8) > v34)
          {
            return 0xFFFFFFFFLL;
          }

          v156 = v4;
          v37 = *(v32 + 3);
          if (v37 < 0x20)
          {
            return result;
          }

          v154 = v2;
          v38 = v32 + v37;
          if (v38 > v34)
          {
            return 0xFFFFFFFFLL;
          }

          v153 = v37;
          bzero(&__dst[3], 0x2D4uLL);
          v39 = *(v32 + 1);
          v40 = *(v32 + 2);
          v41 = v32[1];
          LODWORD(__dst[0]) = 829978210;
          DWORD1(__dst[0]) = v41;
          v42 = v40 >> 30;
          v43 = (v40 >> 40) & 0xFFFFF;
          v44 = (v40 >> 60) & 7;
          LOWORD(v45) = v40;
          WORD1(v45) = v40 >> 10;
          WORD2(v45) = v40 >> 20;
          v46 = (v39 >> 20) & 0xFFFFF;
          LODWORD(v45) = v45 & 0x3FF03FF;
          WORD2(v45) &= 0x3FFu;
          HIWORD(v45) = v42 & 0x3FF;
          *&__dst[2] = v45;
          LODWORD(__dst[1]) = (v39 >> 40) & 0xFFFFF;
          *(&__dst[1] + 4) = __PAIR64__(v43, v46);
          HIDWORD(__dst[1]) = ((v39 >> 60) & 7) - 7;
          DWORD2(__dst[2]) = v44 - 7;
          WORD6(__dst[2]) = WORD2(v37) & 0x3FF;
          HIWORD(__dst[2]) = (v37 >> 42) & 0x3FF;
          LOWORD(__dst[3]) = (v37 >> 52) & 0x3FF;
          DWORD2(__dst[0]) = v43 + v46;
          HIDWORD(__dst[0]) = v39 & 0xFFFFF;
          if (v37 != 32)
          {
            v143 = 0;
            v144 = 0;
            v145 = 0;
            v4 = v156;
            while (1)
            {
              if (v36 >= v38 || v144 > 24)
              {
                v146 = v144;
              }

              else
              {
                do
                {
                  v146 = v144 + 8;
                  v147 = *v36++;
                  v145 |= v147 << v144;
                  if (v36 >= v38)
                  {
                    break;
                  }

                  v9 = v144 < 17;
                  v144 += 8;
                }

                while (v9);
              }

              v148 = byte_1003E27A4[v145 & 0x1F];
              if (v148 == 14)
              {
                v149 = ((v145 >> 4) & 0x3FF) + 24;
              }

              else
              {
                LOWORD(v149) = v148 == 8 ? (v145 >> 4) + 8 : byte_1003E27C4[v145 & 0x1F];
              }

              v150 = v148;
              *(&__dst[3] + v143 + 1) = v149;
              v144 = v146 - v148;
              if (v146 < v150)
              {
                return 4294967293;
              }

              v145 >>= v150;
              if (++v143 == 360)
              {
                v151 = v144 <= 7 && v36 == v38;
                v2 = v154;
                v3 = v155;
                v47 = v153;
                if (v151)
                {
                  goto LABEL_59;
                }

                return 4294967293;
              }
            }
          }

          v47 = 32;
          v2 = v154;
          v3 = v155;
          v4 = v156;
        }

        else
        {
          if ((v32 + 193) > v34)
          {
            return 0xFFFFFFFFLL;
          }

          memcpy(__dst, v32, 0x304uLL);
          v46 = DWORD1(__dst[1]);
          v43 = DWORD2(__dst[1]);
          v47 = 772;
        }

LABEL_59:
        v48 = v32 + v47;
        if (&v48[v46 + v43] > v34)
        {
          return 0xFFFFFFFFLL;
        }

        v49 = 0;
        v50 = __dst[1];
        for (i = 50; i != 90; i += 2)
        {
          v49 += *(__dst + i);
        }

        v52 = 0;
        for (j = 90; j != 130; j += 2)
        {
          v52 += *(__dst + j);
        }

        v54 = 0uLL;
        v55 = 0uLL;
        v56 = 0uLL;
        v57 = 0uLL;
        do
        {
          v58 = *(__dst + j);
          v59 = vmovl_u16(*v58.i8);
          v60 = vmovl_high_u16(v58);
          v57 = vaddw_high_u32(v57, v60);
          v56 = vaddw_u32(v56, *v60.i8);
          v55 = vaddw_high_u32(v55, v59);
          v54 = vaddw_u32(v54, *v59.i8);
          j += 16;
        }

        while (j != 258);
        v61 = vaddvq_s64(vaddq_s64(vaddq_s64(v54, v56), vaddq_s64(v55, v57)));
        v62 = 0uLL;
        v63 = 258;
        v64 = 0uLL;
        v65 = 0uLL;
        v66 = 0uLL;
        do
        {
          v67 = *(__dst + v63);
          v68 = vmovl_u16(*v67.i8);
          v69 = vmovl_high_u16(v67);
          v66 = vaddw_high_u32(v66, v69);
          v65 = vaddw_u32(v65, *v69.i8);
          v64 = vaddw_high_u32(v64, v68);
          v62 = vaddw_u32(v62, *v68.i8);
          v63 += 16;
        }

        while (v63 != 770);
        v70 = vbicq_s8(xmmword_1003E27F0, vmovl_s16(vcgt_u16(0x400040004000400, *&__dst[2])));
        v71 = vorr_s8(*v70.i8, *&vextq_s8(v70, v70, 8uLL));
        v72 = ((vaddvq_s64(vaddq_s64(vaddq_s64(v62, v65), vaddq_s64(v64, v66))) > 0x400) << 13) | ((v61 > 0x100) << 12);
        v73 = ((LOWORD(__dst[3]) > 0xFFu) << 9) | ((HIWORD(__dst[2]) > 0x3Fu) << 8) | ((v52 > 0x40) << 11) | ((v49 > 0x40) << 10);
        if (LODWORD(__dst[0]) == 829978210)
        {
          v74 = v72;
        }

        else
        {
          v74 = v72 + 1;
        }

        if (v71.i32[0] | v71.i32[1] | (2 * (HIDWORD(__dst[0]) > 0x9C40)) | ((WORD6(__dst[2]) > 0x3Fu) << 7) | (4 * (LODWORD(__dst[1]) > 0x2710)) | v73 | v74 || *(a1 + 1826) < HIDWORD(__dst[0]))
        {
          return 4294967293;
        }

        v75 = 0;
        v76 = 0;
        *a1 = v48;
        v77 = v3;
        *(a1 + 18) = v50;
        *(a1 + 19) = v43;
        do
        {
          v78 = *&v2[2 * v75];
          if (*&v2[2 * v75])
          {
            v76 += v78;
            if (v76 > 1024)
            {
              break;
            }

            v79 = 0;
            v80 = __clz(v78);
            v81 = v80 - 21;
            v82 = 0x800u >> (v80 - 21);
            v83 = v82 - v78;
            v84 = v80 - 22;
            v85 = v78 - v82;
            do
            {
              v86 = (v85 + v79) << v84;
              if (v79 < v83)
              {
                v87 = v81;
              }

              else
              {
                v87 = v84;
              }

              if (v79 < v83)
              {
                LOWORD(v86) = ((v78 + v79) << v81) - 1024;
              }

              *v77 = v87;
              *(v77 + 1) = v75;
              *(v77 + 2) = v86;
              v77 += 4;
              ++v79;
            }

            while (v78 != v79);
          }

          ++v75;
        }

        while (v75 != 256);
        v88 = 0;
        v89 = v4;
        do
        {
          v90 = *(&__dst[3] + v88 + 1);
          if (*(&__dst[3] + v88 + 1))
          {
            v91 = 0;
            v92 = __clz(v90);
            v93 = v92 - 25;
            v94 = 0x80u >> (v92 - 25);
            v95 = v94 - v90;
            v96 = byte_1003E259C[v88];
            v97 = dword_1003E25B0[v88];
            v98 = v92 - 26;
            v99 = v90 - v94;
            do
            {
              v100 = (v99 + v91) << v98;
              if (v91 < v95)
              {
                v101 = v93;
              }

              else
              {
                v101 = v98;
              }

              if (v91 < v95)
              {
                LOWORD(v100) = ((v90 + v91) << v93) - 64;
              }

              *v89 = v96 + v101;
              *(v89 + 1) = v96;
              *(v89 + 1) = v100;
              *(v89++ + 1) = v97;
              ++v91;
            }

            while (v90 != v91);
          }

          ++v88;
        }

        while (v88 != 20);
        v102 = 0;
        v103 = v159;
        do
        {
          v104 = *(&__dst[5] + v102 + 5);
          if (*(&__dst[5] + v102 + 5))
          {
            v105 = 0;
            v106 = __clz(v104);
            v107 = v106 - 25;
            v108 = 0x80u >> (v106 - 25);
            v109 = v108 - v104;
            v110 = byte_1003E2600[v102];
            v111 = dword_1003E2614[v102];
            v112 = v106 - 26;
            v113 = v104 - v108;
            do
            {
              v114 = (v113 + v105) << v112;
              if (v105 < v109)
              {
                v115 = v107;
              }

              else
              {
                v115 = v112;
              }

              if (v105 < v109)
              {
                LOWORD(v114) = ((v104 + v105) << v107) - 64;
              }

              *v103 = v110 + v115;
              *(v103 + 1) = v110;
              *(v103 + 1) = v114;
              *(v103++ + 1) = v111;
              ++v105;
            }

            while (v104 != v105);
          }

          ++v102;
        }

        while (v102 != 20);
        v116 = 0;
        v117 = v158;
        do
        {
          v118 = *(&__dst[8] + v116 + 1);
          if (*(&__dst[8] + v116 + 1))
          {
            v119 = 0;
            v120 = __clz(v118);
            v121 = v120 - 23;
            v122 = 0x200u >> (v120 - 23);
            v123 = v122 - v118;
            v124 = byte_1003E2664[v116];
            v125 = dword_1003E26A4[v116];
            v126 = v120 - 24;
            v127 = v118 - v122;
            do
            {
              v128 = (v127 + v119) << v126;
              if (v119 < v123)
              {
                v129 = v121;
              }

              else
              {
                v129 = v126;
              }

              if (v119 < v123)
              {
                LOWORD(v128) = ((v118 + v119) << v121) - 256;
              }

              *v117 = v124 + v129;
              *(v117 + 1) = v124;
              *(v117 + 1) = v128;
              *(v117++ + 1) = v125;
              ++v119;
            }

            while (v118 != v119);
          }

          ++v116;
        }

        while (v116 != 64);
        v162 = 0;
        v163 = 0;
        v130 = a1[1];
        v131 = HIDWORD(__dst[1]);
        v132 = *a1 + DWORD1(__dst[1]);
        *a1 = v132;
        if (v131)
        {
          if (v132 < v130 + 8)
          {
            return 4294967293;
          }

          v161 = (v132 - 8);
          v133 = *(v132 - 8);
          v162 = v133;
          v134 = v131 + 64;
          LODWORD(v163) = v131 + 64;
          if (v131 < 0xFFFFFFF8)
          {
            return 4294967293;
          }
        }

        else
        {
          if (v132 < v130 + 7)
          {
            return 4294967293;
          }

          v161 = (v132 - 7);
          v135 = *(v132 - 7);
          *(&v162 + 3) = *(v132 - 4);
          v134 = 56;
          LODWORD(v162) = v135;
          v133 = v162 & 0xFFFFFFFFFFFFFFLL;
          v162 &= 0xFFFFFFFFFFFFFFuLL;
          LODWORD(v163) = 56;
        }

        if (v133 >> v134 || lzfse_decode_literals(v160, v3, HIDWORD(__dst[0]), &v162, &v161, v130, *&__dst[2]) == -3)
        {
          return 4294967293;
        }

        a1[10] = v160;
        v136 = *a1;
        v137 = *a1 + DWORD2(__dst[1]);
        if (DWORD2(__dst[2]))
        {
          if (DWORD2(__dst[1]) < 8)
          {
            return 4294967293;
          }

          v140 = *(v137 - 8);
          v138 = v137 - 8;
          v139 = v140;
          v141 = DWORD2(__dst[2]) + 64;
        }

        else
        {
          if (DWORD2(__dst[1]) < 7)
          {
            return 4294967293;
          }

          v142 = *(v137 - 7);
          v138 = v137 - 7;
          v139 = v142 | ((*(v138 + 4) | (*(v138 + 6) << 16)) << 32);
          v141 = 56;
        }

        result = 4294967293;
        if ((v141 & 0xFFFFFFF8) != 0x38)
        {
          return result;
        }

        if (v139 >> v141)
        {
          return result;
        }

        *(a1 + 62) = WORD6(__dst[2]);
        *(a1 + 126) = *(&__dst[2] + 14);
        if (v138 < v136)
        {
          return result;
        }

        *(a1 + 29) = 0;
        *(a1 + 30) = v138 - v136;
        a1[11] = 0;
        *(a1 + 24) = -1;
        a1[13] = v139;
        *(a1 + 28) = v141;
        *(a1 + 13) = v157;
      }

      else
      {
        if (v35 != 1853388386)
        {
          return result;
        }

        if ((v32 + 3) > v34)
        {
          return 0xFFFFFFFFLL;
        }

        *(a1 + 14) = v32[1];
        *(a1 + 60) = v32[2];
        *a1 = (v32 + 3);
        *(a1 + 13) = 1853388386;
      }
    }

    if (v35 != 762869346)
    {
      break;
    }

    if ((v32 + 2) > v34)
    {
      return 0xFFFFFFFFLL;
    }

    *(a1 + 17) = *v33;
    *a1 = (v32 + 2);
    *(a1 + 13) = 762869346;
  }

  if (v35 == 829978210)
  {
    goto LABEL_51;
  }

  if (v35 == 611874402)
  {
    result = 0;
    *a1 = v33;
    *(a1 + 12) = 1;
  }

  return result;
}

uint64_t sub_100167AA0(void *a1, unsigned __int8 *a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v8 = a1;
  v9 = a1[5];
  v10 = (506832829 * *a2) >> 17;
  v11 = *(v9 + 2 * v10);
  v12 = a5 + 12;
  v13 = 0;
  if (*(v9 + 2 * v10))
  {
    v14 = a5 + 8;
    v15 = a5 + 16;
    v16 = a5 + 20;
    v232 = a5 + 28;
    v234 = a5 + 4;
    v17 = a1[6];
    v18 = *a1;
    v236 = *a1 + 32;
    do
    {
      v19 = (v17 + 4 * v11);
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v19 + 1);
      v23 = *v19 & 0x1F;
      v24 = *(v18 + v23);
      if (v19[1])
      {
        if (v23 <= a4)
        {
          v25 = (*(v18 + 168) + *(v19 + 1) * (*v19 & 0x1F) + *(v236 + 4 * (*v19 & 0x1F)));
          if (v21 == 10)
          {
            v26 = *v25;
            if ((v26 - 97) > 0x19)
            {
              goto LABEL_209;
            }

            if ((*a2 ^ v26) != 0x20)
            {
              goto LABEL_209;
            }

            v220 = v14;
            v222 = v9;
            v226 = v12;
            v228 = v8;
            v230 = a5;
            v224 = v13;
            v217 = v16;
            v218 = v15;
            v27 = sub_10016906C(v25, v20 & 0x1F, a2 + 1);
            v16 = v217;
            v15 = v218;
            v14 = v220;
            v9 = v222;
            v13 = v224;
            v12 = v226;
            v8 = v228;
            a5 = v230;
            if (!v27)
            {
              goto LABEL_209;
            }

            v28 = 9;
          }

          else
          {
            v56 = a2;
            v57 = v20 & 0x1F;
            if (v23)
            {
              do
              {
                v59 = *v25++;
                v58 = v59;
                v60 = v59 - 97;
                v62 = *v56++;
                v61 = v62;
                if (v60 > 0x19)
                {
                  if (v58 != v61)
                  {
                    goto LABEL_209;
                  }
                }

                else if ((v61 ^ v58) != 0x20)
                {
                  goto LABEL_209;
                }

                --v57;
              }

              while (v57);
            }

            v28 = 44;
          }

          v63 = v23 | (32 * ((v28 << v24) + v22));
          if (*(a5 + 4 * v23) < v63)
          {
            v63 = *(a5 + 4 * v23);
          }

          *(a5 + 4 * v23) = v63;
          v64 = v23 + 1;
          if (v23 + 1 >= a4)
          {
            v13 = 1;
          }

          else
          {
            v65 = &a2[v23];
            v66 = a2[v23];
            v13 = 1;
            if (v66 <= 0x27)
            {
              switch(v66)
              {
                case ' ':
                  v71 = v21 == 10;
                  v55 = 68;
                  v72 = 4;
                  goto LABEL_138;
                case '""':
                  v79 = 87;
                  if (v21 == 10)
                  {
                    v79 = 66;
                  }

                  v80 = v23 | (32 * ((v79 << v24) + v22));
                  if (*(a5 + 4 * v64) < v80)
                  {
                    v80 = *(a5 + 4 * v64);
                  }

                  *(a5 + 4 * v64) = v80;
                  if (v65[1] != 62)
                  {
                    break;
                  }

                  v69 = v21 == 10;
                  v70 = 97;
                  v55 = 69;
                  goto LABEL_203;
                case '\'':
                  v71 = v21 == 10;
                  v55 = 94;
                  v72 = 74;
                  goto LABEL_138;
              }
            }

            else
            {
              if (a2[v23] <= 0x2Du)
              {
                if (v66 != 40)
                {
                  if (v66 != 44)
                  {
                    goto LABEL_209;
                  }

                  v67 = 112;
                  if (v21 == 10)
                  {
                    v67 = 99;
                  }

                  v68 = v23 | (32 * ((v67 << v24) + v22));
                  if (*(a5 + 4 * v64) < v68)
                  {
                    v68 = *(a5 + 4 * v64);
                  }

                  *(a5 + 4 * v64) = v68;
                  if (v65[1] != 32)
                  {
                    goto LABEL_209;
                  }

                  v69 = v21 == 10;
                  v70 = 107;
                  v55 = 58;
                  goto LABEL_203;
                }

                v71 = v21 == 10;
                v55 = 113;
                v72 = 78;
LABEL_138:
                if (v71)
                {
                  v55 = v72;
                }

                v54 = (a5 + 4 * v64);
                goto LABEL_206;
              }

              if (v66 == 46)
              {
                v77 = 101;
                if (v21 == 10)
                {
                  v77 = 79;
                }

                v78 = v23 | (32 * ((v77 << v24) + v22));
                if (*(a5 + 4 * v64) < v78)
                {
                  v78 = *(a5 + 4 * v64);
                }

                *(a5 + 4 * v64) = v78;
                if (v65[1] != 32)
                {
                  goto LABEL_209;
                }

                v69 = v21 == 10;
                v70 = 114;
                v55 = 88;
                goto LABEL_203;
              }

              if (v66 == 61)
              {
                v75 = v65[1];
                if (v75 == 39)
                {
                  v69 = v21 == 10;
                  v70 = 116;
                  v55 = 108;
LABEL_203:
                  if (!v69)
                  {
                    v55 = v70;
                  }

                  goto LABEL_205;
                }

                if (v75 == 34)
                {
                  if (v21 == 10)
                  {
                    v55 = 104;
                  }

                  else
                  {
                    v55 = 105;
                  }

LABEL_205:
                  v54 = (v14 + 4 * v23);
                  goto LABEL_206;
                }
              }
            }
          }
        }
      }

      else
      {
        v29 = *(v18 + 168) + *(v19 + 1) * (*v19 & 0x1F) + *(v236 + 4 * (*v19 & 0x1F));
        if (v23 >= a4)
        {
          v30 = a4;
        }

        else
        {
          v30 = v20 & 0x1F;
        }

        if (v30 < 8)
        {
          v32 = 0;
          v33 = a2;
LABEL_190:
          v88 = v30 & 7;
          if (v88)
          {
            v89 = v32 | v88;
            while (*(v29 + v32) == *v33)
            {
              ++v33;
              ++v32;
              if (!--v88)
              {
                v32 = v89;
                break;
              }
            }
          }
        }

        else
        {
          v31 = 0;
          v32 = v30 & 0x18;
          v33 = &a2[v32];
          while (1)
          {
            v34 = *&a2[v31];
            v35 = *(v29 + v31);
            if (v34 != v35)
            {
              break;
            }

            v31 += 8;
            if ((v30 & 0xFFFFFFFFFFFFFFF8) == v31)
            {
              goto LABEL_190;
            }
          }

          v32 = v31 + (__clz(__rbit64(v35 ^ v34)) >> 3);
        }

        if (v32 == v23)
        {
          v36 = *(a5 + 4 * v23);
          if (v36 >= (v23 | (32 * v22)))
          {
            v36 = v23 | (32 * v22);
          }

          *(a5 + 4 * v23) = v36;
          v13 = 1;
        }

        v37 = v23 - 1;
        if (v32 >= v23 - 1)
        {
          v38 = v23 | (32 * ((12 << v24) + v22));
          if (*(a5 + 4 * v37) < v38)
          {
            v38 = *(a5 + 4 * v37);
          }

          *(a5 + 4 * v37) = v38;
          if (v23 + 2 < a4 && a2[v37] == 105 && a2[v23] == 110 && a2[v23 + 1] == 103 && a2[v23 + 2] == 32)
          {
            v39 = v23 | (32 * ((49 << v24) + v22));
            if (*(v12 + 4 * v23) < v39)
            {
              v39 = *(v12 + 4 * v23);
            }

            *(v12 + 4 * v23) = v39;
          }

          v13 = 1;
        }

        v40 = v23 - 9;
        if (a3 > v23 - 9)
        {
          v40 = a3;
        }

        if (v23 <= 9)
        {
          v41 = a3;
        }

        else
        {
          v41 = v40;
        }

        if (v32 >= v23 - 2)
        {
          v42 = v23 - 2;
        }

        else
        {
          v42 = v32;
        }

        if (v41 <= v42)
        {
          v43 = v8[2];
          v44 = v42 - v41 + 1;
          v45 = 4 * v23 - 4 * v41;
          v46 = 6 * v23 - 6 * v41;
          v47 = (a5 + 4 * v41);
          do
          {
            v48 = v23 | (32 * (((v45 + ((v43 >> v46) & 0x3F)) << v24) + v22));
            if (*v47 < v48)
            {
              v48 = *v47;
            }

            *v47++ = v48;
            v45 -= 4;
            v46 -= 6;
            --v44;
          }

          while (v44);
          v13 = 1;
        }

        if (v32 < v23)
        {
          goto LABEL_209;
        }

        v49 = v23 + 6;
        if (v23 + 6 >= a4)
        {
          goto LABEL_209;
        }

        v50 = &a2[v23];
        v51 = a2[v23];
        if (v51 > 0x3C)
        {
          if (a2[v23] > 0x65u)
          {
            if (a2[v23] > 0x6Bu)
            {
              if (v51 == 108)
              {
                v87 = v50[1];
                if (v87 == 121)
                {
                  if (v50[2] == 32)
                  {
                    v54 = (v12 + 4 * v23);
                    v55 = 61;
                    goto LABEL_206;
                  }
                }

                else if (v87 == 101 && v50[2] == 115 && v50[3] == 115 && v50[4] == 32)
                {
                  v54 = (v16 + 4 * v23);
                  v55 = 93;
                  goto LABEL_206;
                }
              }

              else if (v51 == 111 && v50[1] == 117 && v50[2] == 115 && v50[3] == 32)
              {
                v54 = (v15 + 4 * v23);
                v55 = 106;
                goto LABEL_206;
              }
            }

            else if (v51 == 102)
            {
              if (v50[1] == 117 && v50[2] == 108 && v50[3] == 32)
              {
                v54 = (v15 + 4 * v23);
                v55 = 90;
                goto LABEL_206;
              }
            }

            else if (v51 == 105)
            {
              v74 = v50[1];
              if (v74 == 122)
              {
                if (v50[2] == 101 && v50[3] == 32)
                {
                  v54 = (v15 + 4 * v23);
                  v55 = 100;
                  goto LABEL_206;
                }
              }

              else if (v74 == 118 && v50[2] == 101 && v50[3] == 32)
              {
                v54 = (v15 + 4 * v23);
                v55 = 92;
                goto LABEL_206;
              }
            }
          }

          else if (a2[v23] > 0x60u)
          {
            if (v51 == 97)
            {
              if (v50[1] == 108 && v50[2] == 32)
              {
                v54 = (v12 + 4 * v23);
                v55 = 84;
                goto LABEL_206;
              }
            }

            else if (v51 == 101)
            {
              v76 = v50[1];
              if (v76 == 115)
              {
                if (v50[2] == 116 && v50[3] == 32)
                {
                  v54 = (v15 + 4 * v23);
                  v55 = 95;
                  goto LABEL_206;
                }
              }

              else if (v76 == 114)
              {
                if (v50[2] == 32)
                {
                  v54 = (v12 + 4 * v23);
                  v55 = 82;
                  goto LABEL_206;
                }
              }

              else if (v76 == 100 && v50[2] == 32)
              {
                v54 = (v12 + 4 * v23);
                v55 = 53;
                goto LABEL_206;
              }
            }
          }

          else if (v51 == 61)
          {
            v82 = v50[1];
            if (v82 == 39)
            {
              v54 = (v14 + 4 * v23);
              v55 = 86;
              goto LABEL_206;
            }

            if (v82 == 34)
            {
              v54 = (v14 + 4 * v23);
              v55 = 70;
              goto LABEL_206;
            }
          }

          else if (v51 == 93)
          {
            v54 = (v234 + 4 * v23);
            v55 = 24;
            goto LABEL_206;
          }
        }

        else if (a2[v23] > 0x27u)
        {
          if (a2[v23] <= 0x2Du)
          {
            if (v51 == 40)
            {
              v54 = (v234 + 4 * v23);
              v55 = 57;
            }

            else
            {
              if (v51 != 44)
              {
                goto LABEL_209;
              }

              v73 = v23 | (32 * ((76 << v24) + v22));
              if (*(v234 + 4 * v23) < v73)
              {
                v73 = *(v234 + 4 * v23);
              }

              *(v234 + 4 * v23) = v73;
              if (v50[1] != 32)
              {
                goto LABEL_209;
              }

              v54 = (v14 + 4 * v23);
              v55 = 14;
            }

            goto LABEL_206;
          }

          if (v51 == 46)
          {
            v84 = v23 | (32 * ((20 << v24) + v22));
            if (*(v234 + 4 * v23) < v84)
            {
              v84 = *(v234 + 4 * v23);
            }

            *(v234 + 4 * v23) = v84;
            if (v50[1] != 32)
            {
              goto LABEL_209;
            }

            v85 = v23 | (32 * ((31 << v24) + v22));
            if (*(v14 + 4 * v23) < v85)
            {
              v85 = *(v14 + 4 * v23);
            }

            *(v14 + 4 * v23) = v85;
            if (v50[2] != 84 || v50[3] != 104)
            {
              goto LABEL_209;
            }

            v86 = v50[4];
            if (v86 == 105)
            {
              if (v50[5] == 115 && v50[6] == 32)
              {
                v54 = (v232 + 4 * v23);
                v55 = 75;
                goto LABEL_206;
              }
            }

            else if (v86 == 101 && v50[5] == 32)
            {
              v54 = (a5 + 4 * v49);
              v55 = 43;
              goto LABEL_206;
            }
          }

          else if (v51 == 58)
          {
            v54 = (v234 + 4 * v23);
            v55 = 51;
            goto LABEL_206;
          }
        }

        else if (a2[v23] > 0x21u)
        {
          if (v51 == 34)
          {
            v83 = v23 | (32 * ((19 << v24) + v22));
            if (*(v234 + 4 * v23) < v83)
            {
              v83 = *(v234 + 4 * v23);
            }

            *(v234 + 4 * v23) = v83;
            if (v50[1] != 62)
            {
              goto LABEL_209;
            }

            v54 = (v14 + 4 * v23);
            v55 = 21;
            goto LABEL_206;
          }

          if (v51 == 39)
          {
            v54 = (v234 + 4 * v23);
            v55 = 36;
            goto LABEL_206;
          }
        }

        else
        {
          if (v51 == 10)
          {
            v81 = v23 | (32 * ((22 << v24) + v22));
            if (*(v234 + 4 * v23) < v81)
            {
              v81 = *(v234 + 4 * v23);
            }

            *(v234 + 4 * v23) = v81;
            if (v50[1] != 9)
            {
              goto LABEL_209;
            }

            v54 = (v14 + 4 * v23);
            v55 = 50;
            goto LABEL_206;
          }

          if (v51 == 32)
          {
            v52 = v23 | (32 * ((1 << v24) + v22));
            if (*(v234 + 4 * v23) < v52)
            {
              v52 = *(v234 + 4 * v23);
            }

            *(v234 + 4 * v23) = v52;
            v53 = v50[1];
            if (v53 > 0x6D)
            {
              if (v50[1] > 0x73u)
              {
                if (v53 == 116)
                {
                  v95 = v50[2];
                  if (v95 == 111)
                  {
                    if (v50[3] == 32)
                    {
                      v54 = (v15 + 4 * v23);
                      v55 = 17;
                      goto LABEL_206;
                    }
                  }

                  else if (v95 == 104)
                  {
                    v96 = v50[3];
                    if (v96 == 97)
                    {
                      if (v50[4] == 116 && v50[5] == 32)
                      {
                        v54 = (a5 + 4 * v49);
                        v55 = 29;
                        goto LABEL_206;
                      }
                    }

                    else if (v96 == 101 && v50[4] == 32)
                    {
                      v54 = (v16 + 4 * v23);
                      v55 = 5;
                      goto LABEL_206;
                    }
                  }
                }

                else if (v53 == 119 && v50[2] == 105 && v50[3] == 116 && v50[4] == 104 && v50[5] == 32)
                {
                  v54 = (a5 + 4 * v49);
                  v55 = 35;
                  goto LABEL_206;
                }
              }

              else if (v53 == 110)
              {
                if (v50[2] == 111 && v50[3] == 116 && v50[4] == 32)
                {
                  v54 = (v16 + 4 * v23);
                  v55 = 80;
                  goto LABEL_206;
                }
              }

              else if (v53 == 111)
              {
                v90 = v50[2];
                if (v90 == 110)
                {
                  if (v50[3] == 32)
                  {
                    v54 = (v15 + 4 * v23);
                    v55 = 45;
                    goto LABEL_206;
                  }
                }

                else if (v90 == 102 && v50[3] == 32)
                {
                  v54 = (v15 + 4 * v23);
                  v55 = 8;
                  goto LABEL_206;
                }
              }
            }

            else if (v50[1] > 0x65u)
            {
              if (v53 == 102)
              {
                v94 = v50[2];
                if (v94 == 114)
                {
                  if (v50[3] == 111 && v50[4] == 109 && v50[5] == 32)
                  {
                    v54 = (a5 + 4 * v49);
                    v55 = 37;
                    goto LABEL_206;
                  }
                }

                else if (v94 == 111 && v50[3] == 114 && v50[4] == 32)
                {
                  v54 = (v16 + 4 * v23);
                  v55 = 25;
                  goto LABEL_206;
                }
              }

              else if (v53 == 105)
              {
                v92 = v50[2];
                if (v92 == 115)
                {
                  if (v50[3] == 32)
                  {
                    v54 = (v15 + 4 * v23);
                    v55 = 47;
                    goto LABEL_206;
                  }
                }

                else if (v92 == 110 && v50[3] == 32)
                {
                  v54 = (v15 + 4 * v23);
                  v55 = 16;
                  goto LABEL_206;
                }
              }
            }

            else if (v53 == 97)
            {
              v93 = v50[2];
              if (v93 > 0x72)
              {
                if (v93 == 115)
                {
                  if (v50[3] == 32)
                  {
                    v54 = (v15 + 4 * v23);
                    v55 = 46;
                    goto LABEL_206;
                  }
                }

                else if (v93 == 116 && v50[3] == 32)
                {
                  v54 = (v15 + 4 * v23);
                  v55 = 60;
                  goto LABEL_206;
                }
              }

              else
              {
                if (v93 == 32)
                {
                  v54 = (v12 + 4 * v23);
                  v55 = 28;
                  goto LABEL_206;
                }

                if (v93 == 110 && v50[3] == 100 && v50[4] == 32)
                {
                  v54 = (v16 + 4 * v23);
                  v55 = 10;
                  goto LABEL_206;
                }
              }
            }

            else if (v53 == 98 && v50[2] == 121 && v50[3] == 32)
            {
              v54 = (v15 + 4 * v23);
              v55 = 38;
LABEL_206:
              v91 = v23 | (32 * ((v55 << v24) + v22));
              if (*v54 < v91)
              {
                v91 = *v54;
              }

              *v54 = v91;
            }
          }
        }
      }

LABEL_209:
      ++v11;
    }

    while ((v20 & 0x80) == 0);
  }

  if (a4 < 5)
  {
    return v13;
  }

  v97 = *a2;
  if (v97 == 46 || v97 == 32)
  {
    v98 = a2 + 1;
    v99 = (506832829 * *(a2 + 1)) >> 17;
    v100 = *(v9 + 2 * v99);
    if (*(v9 + 2 * v99))
    {
      v101 = a4 - 1;
      v102 = *v8;
      v103 = *v8 + 32;
      v104 = v8[6];
      if (v97 == 32)
      {
        v105 = 6;
      }

      else
      {
        v105 = 32;
      }

      if (v97 == 32)
      {
        v106 = 89;
      }

      else
      {
        v106 = 67;
      }

      if (v97 == 32)
      {
        v107 = 2;
      }

      else
      {
        v107 = 77;
      }

      while (1)
      {
        v108 = (v104 + 4 * v100);
        v109 = *v108;
        v110 = v108[1];
        v111 = *(v108 + 1);
        v112 = *v108 & 0x1F;
        v113 = *(v102 + v112);
        if (!v108[1])
        {
          break;
        }

        if (v97 != 32 || v101 < v112)
        {
          goto LABEL_363;
        }

        v114 = (*(v102 + 168) + *(v108 + 1) * (*v108 & 0x1F) + *(v103 + 4 * (*v108 & 0x1F)));
        if (v110 == 10)
        {
          v115 = *v114;
          if ((v115 - 97) > 0x19)
          {
            goto LABEL_363;
          }

          if ((*v98 ^ v115) != 0x20)
          {
            goto LABEL_363;
          }

          v235 = v101;
          v237 = v98;
          v227 = v12;
          v229 = v8;
          v231 = a5;
          v225 = v13;
          v233 = v103;
          v221 = v106;
          v223 = v105;
          v219 = v107;
          v116 = sub_10016906C(v114, v109 & 0x1F, a2 + 2);
          v107 = v219;
          v106 = v221;
          v105 = v223;
          v103 = v233;
          v101 = v235;
          v98 = v237;
          v13 = v225;
          v12 = v227;
          v8 = v229;
          a5 = v231;
          if (!v116)
          {
            goto LABEL_363;
          }

          v117 = 30;
        }

        else
        {
          v131 = v98;
          v132 = v109 & 0x1F;
          if (v112)
          {
            do
            {
              v134 = *v114++;
              v133 = v134;
              v135 = v134 - 97;
              v137 = *v131++;
              v136 = v137;
              if (v135 > 0x19)
              {
                if (v133 != v136)
                {
                  goto LABEL_363;
                }
              }

              else if ((v136 ^ v133) != 0x20)
              {
                goto LABEL_363;
              }

              --v132;
            }

            while (v132);
          }

          v117 = 85;
        }

        v138 = v112 + 1;
        v139 = v112 | (32 * ((v117 << v113) + v111));
        if (*(a5 + 4 * (v112 + 1)) < v139)
        {
          v139 = *(a5 + 4 * (v112 + 1));
        }

        *(a5 + 4 * v138) = v139;
        v140 = v112 + 2;
        if (v112 + 2 >= a4)
        {
          goto LABEL_362;
        }

        v141 = &a2[v138];
        v142 = *v141;
        v13 = 1;
        if (v142 <= 0x2D)
        {
          if (v142 == 32)
          {
            v130 = 83;
            if (v110 == 10)
            {
              v130 = 15;
            }

            v129 = (a5 + 4 * v140);
          }

          else
          {
            if (v142 != 44)
            {
              goto LABEL_363;
            }

            if (v110 == 10)
            {
              v143 = v112 | (32 * ((109 << v113) + v111));
              if (*(a5 + 4 * v140) < v143)
              {
                v143 = *(a5 + 4 * v140);
              }

              *(a5 + 4 * v140) = v143;
            }

            if (v141[1] != 32)
            {
              goto LABEL_363;
            }

            v144 = v110 == 10;
            v145 = 111;
            v130 = 65;
LABEL_356:
            if (!v144)
            {
              v130 = v145;
            }

LABEL_358:
            v129 = (v12 + 4 * v112);
          }

LABEL_359:
          v150 = v112 | (32 * ((v130 << v113) + v111));
          if (*v129 < v150)
          {
            v150 = *v129;
          }

          *v129 = v150;
          goto LABEL_362;
        }

        if (v142 == 46)
        {
          v148 = 115;
          if (v110 == 10)
          {
            v148 = 96;
          }

          v149 = v112 | (32 * ((v148 << v113) + v111));
          if (*(a5 + 4 * v140) < v149)
          {
            v149 = *(a5 + 4 * v140);
          }

          *(a5 + 4 * v140) = v149;
          if (v141[1] != 32)
          {
            goto LABEL_363;
          }

          v144 = v110 == 10;
          v145 = 117;
          v130 = 91;
          goto LABEL_356;
        }

        if (v142 == 61)
        {
          v147 = v141[1];
          if (v147 == 39)
          {
            if (v110 == 10)
            {
              v130 = 120;
            }

            else
            {
              v130 = 119;
            }

            goto LABEL_358;
          }

          if (v147 == 34)
          {
            v144 = v110 == 10;
            v145 = 110;
            v130 = 118;
            goto LABEL_356;
          }
        }

LABEL_363:
        ++v100;
        if (v109 < 0)
        {
          goto LABEL_383;
        }
      }

      if (v101 < v112)
      {
        goto LABEL_363;
      }

      v118 = *(v102 + 168) + *(v108 + 1) * (*v108 & 0x1F) + *(v103 + 4 * (*v108 & 0x1F));
      if (v112 < 8)
      {
        v120 = 0;
        v121 = v98;
LABEL_376:
        v153 = v112 & 7;
        if ((v112 & 7) != 0)
        {
          v154 = v120 | v153;
          while (*(v118 + v120) == *v121)
          {
            ++v121;
            ++v120;
            if (!--v153)
            {
              v120 = v154;
              break;
            }
          }
        }
      }

      else
      {
        v119 = 0;
        v120 = v112 & 0x18;
        v121 = &v98[v120];
        while (1)
        {
          v122 = *&v98[v119];
          v123 = *(v118 + v119);
          if (v122 != v123)
          {
            break;
          }

          v119 += 8;
          if (v120 == v119)
          {
            goto LABEL_376;
          }
        }

        v120 = v119 + (__clz(__rbit64(v123 ^ v122)) >> 3);
      }

      if (v120 != v112)
      {
        goto LABEL_363;
      }

      v124 = v112 + 1;
      v125 = v112 | (32 * ((v105 << v113) + v111));
      if (*(a5 + 4 * (v112 + 1)) < v125)
      {
        v125 = *(a5 + 4 * (v112 + 1));
      }

      *(a5 + 4 * v124) = v125;
      v126 = v112 + 2;
      if (v112 + 2 < a4)
      {
        v127 = &a2[v124];
        v128 = *v127;
        if (v128 == 40)
        {
          v129 = (a5 + 4 * v126);
          v130 = v106;
          goto LABEL_359;
        }

        if (v128 == 32)
        {
          v129 = (a5 + 4 * v126);
          v130 = v107;
          goto LABEL_359;
        }

        if (v97 == 32)
        {
          switch(v128)
          {
            case '=':
              v152 = v127[1];
              if (v152 == 39)
              {
                v129 = (v12 + 4 * v112);
                v130 = 98;
                goto LABEL_359;
              }

              if (v152 == 34)
              {
                v129 = (v12 + 4 * v112);
                v130 = 81;
                goto LABEL_359;
              }

              break;
            case '.':
              v151 = v112 | (32 * ((71 << v113) + v111));
              if (*(a5 + 4 * v126) < v151)
              {
                v151 = *(a5 + 4 * v126);
              }

              *(a5 + 4 * v126) = v151;
              if (v127[1] == 32)
              {
                v129 = (v12 + 4 * v112);
                v130 = 52;
                goto LABEL_359;
              }

              break;
            case ',':
              v146 = v112 | (32 * ((103 << v113) + v111));
              if (*(a5 + 4 * v126) < v146)
              {
                v146 = *(a5 + 4 * v126);
              }

              *(a5 + 4 * v126) = v146;
              if (v127[1] == 32)
              {
                v129 = (v12 + 4 * v112);
                v130 = 33;
                goto LABEL_359;
              }

              break;
          }
        }
      }

LABEL_362:
      v13 = 1;
      goto LABEL_363;
    }
  }

LABEL_383:
  if (a4 == 5)
  {
    return v13;
  }

  v155 = a2[1];
  v156 = *a2;
  if (v155 != 32)
  {
    if (v155 != 160 || v156 != 194)
    {
      goto LABEL_427;
    }

    goto LABEL_391;
  }

  if (v156 == 44 || v156 == 101 || v156 == 115)
  {
LABEL_391:
    v157 = v13;
    v158 = a2 + 2;
    v159 = (506832829 * *(a2 + 2)) >> 17;
    v160 = *(v8[5] + 2 * v159);
    if (!*(v8[5] + 2 * v159))
    {
      goto LABEL_428;
    }

    v161 = v8[6];
    v162 = v8;
    v163 = *v8;
    v164 = *v8 + 32;
    while (1)
    {
      v165 = (v161 + 4 * v160);
      v166 = *v165;
      v167 = *v165 & 0x1F;
      if (v165[1])
      {
        v168 = 0;
      }

      else
      {
        v168 = a4 - 2 >= v167;
      }

      if (!v168)
      {
        goto LABEL_419;
      }

      v169 = *(v165 + 1);
      v170 = *(v163 + 168) + v169 * v167 + *(v164 + 4 * v167);
      if (v167 < 8)
      {
        v172 = 0;
        v173 = a2 + 2;
LABEL_422:
        v182 = v167 & 7;
        if ((v167 & 7) != 0)
        {
          v183 = v172 | v182;
          while (*(v170 + v172) == *v173)
          {
            ++v173;
            ++v172;
            if (!--v182)
            {
              v172 = v183;
              break;
            }
          }
        }
      }

      else
      {
        v171 = 0;
        v172 = v167 & 0x18;
        v173 = &v158[v172];
        while (1)
        {
          v174 = *&v158[v171];
          v175 = *(v170 + v171);
          if (v174 != v175)
          {
            break;
          }

          v171 += 8;
          if (v172 == v171)
          {
            goto LABEL_422;
          }
        }

        v172 = v171 + (__clz(__rbit64(v175 ^ v174)) >> 3);
      }

      if (v172 != v167)
      {
        goto LABEL_419;
      }

      v176 = *a2;
      if (v176 == 194)
      {
        break;
      }

      if (v167 + 2 < a4 && a2[v167 + 2] == 32)
      {
        if (v176 == 115)
        {
          v181 = 7;
        }

        else
        {
          v181 = 13;
        }

        if (v176 == 101)
        {
          v177 = 18;
        }

        else
        {
          v177 = v181;
        }

        v178 = 12;
        goto LABEL_407;
      }

LABEL_419:
      ++v160;
      if (v166 < 0)
      {
        goto LABEL_429;
      }
    }

    v177 = 102;
    v178 = 8;
LABEL_407:
    v179 = a5 + v178;
    v180 = v167 | (32 * ((v177 << *(v163 + v167)) + v169));
    if (*(v179 + 4 * v167) < v180)
    {
      v180 = *(v179 + 4 * v167);
    }

    *(v179 + 4 * v167) = v180;
    v157 = 1;
    goto LABEL_419;
  }

LABEL_427:
  v157 = v13;
LABEL_428:
  v162 = v8;
LABEL_429:
  if (a4 < 9)
  {
    return v157;
  }

  v184 = *a2;
  if (v184 == 46)
  {
    v13 = v157;
    if (a2[1] != 99 || a2[2] != 111 || a2[3] != 109 || a2[4] != 47)
    {
      return v13;
    }
  }

  else
  {
    v13 = v157;
    if (v184 != 32 || a2[1] != 116 || a2[2] != 104 || a2[3] != 101 || a2[4] != 32)
    {
      return v13;
    }
  }

  v186 = a2 + 5;
  v187 = (506832829 * *(a2 + 5)) >> 17;
  v188 = *(v162[5] + 2 * v187);
  if (*(v162[5] + 2 * v187))
  {
    v189 = a5 + 36;
    v190 = a5 + 52;
    v191 = *v162;
    v192 = *v162 + 32;
    v193 = v162[6];
    do
    {
      v194 = v13;
      v195 = (v193 + 4 * v188);
      v196 = *v195;
      v197 = *v195 & 0x1F;
      if (v195[1])
      {
        v198 = 0;
      }

      else
      {
        v198 = a4 - 5 >= v197;
      }

      if (v198)
      {
        v199 = *(v195 + 1);
        v200 = *(v191 + 168) + *(v195 + 1) * (*v195 & 0x1F) + *(v192 + 4 * (*v195 & 0x1F));
        if (v197 < 8)
        {
          v202 = 0;
          v203 = a2 + 5;
LABEL_483:
          v215 = v197 & 7;
          if ((v197 & 7) != 0)
          {
            v216 = v202 | v215;
            while (*(v200 + v202) == *v203)
            {
              ++v203;
              ++v202;
              if (!--v215)
              {
                v202 = v216;
                break;
              }
            }
          }
        }

        else
        {
          v201 = 0;
          v202 = v197 & 0x18;
          v203 = &v186[v202];
          while (1)
          {
            v204 = *&v186[v201];
            v205 = *(v200 + v201);
            if (v204 != v205)
            {
              break;
            }

            v201 += 8;
            if (v202 == v201)
            {
              goto LABEL_483;
            }
          }

          v202 = v201 + (__clz(__rbit64(v205 ^ v204)) >> 3);
        }

        if (v202 == v197)
        {
          v206 = *(v191 + v197);
          if (*a2 == 32)
          {
            v207 = 41;
          }

          else
          {
            v207 = 72;
          }

          v208 = (v207 << v206) + v199;
          v209 = v197 + 5;
          v210 = v197 | (32 * v208);
          if (*(a5 + 4 * (v197 + 5)) < v210)
          {
            v210 = *(a5 + 4 * (v197 + 5));
          }

          *(a5 + 4 * v209) = v210;
          if (v209 >= a4)
          {
            v194 = 1;
          }

          else
          {
            v194 = 1;
            if (*a2 == 32 && v197 + 8 < a4)
            {
              v211 = &a2[v209];
              if (*v211 == 32 && v211[1] == 111 && v211[2] == 102 && v211[3] == 32)
              {
                v212 = v197 | (32 * ((62 << v206) + v199));
                if (*(v189 + 4 * v197) < v212)
                {
                  v212 = *(v189 + 4 * v197);
                }

                *(v189 + 4 * v197) = v212;
                if (v197 + 12 < a4 && v211[4] == 116 && v211[5] == 104)
                {
                  v213 = a5;
                  if (__PAIR64__(v211[7], v211[6]) == 0x2000000065)
                  {
                    v214 = v197 | (32 * ((73 << v206) + v199));
                    if (*(v190 + 4 * v197) < v214)
                    {
                      v214 = *(v190 + 4 * v197);
                    }

                    *(v190 + 4 * v197) = v214;
                  }

                  a5 = v213;
                }
              }
            }
          }
        }
      }

      ++v188;
      v13 = v194;
    }

    while ((v196 & 0x80) == 0);
  }

  return v13;
}

BOOL sub_10016906C(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v3 = a1 + 1;
  v4 = a2 - 1;
  v5 = (a2 - 1);
  if (v5 < 8)
  {
    v7 = 0;
LABEL_9:
    v11 = v4 & 7;
    if (v11)
    {
      v12 = v7 | v11;
      while (*(v3 + v7) == *a3)
      {
        ++a3;
        ++v7;
        if (!--v11)
        {
          v7 = v12;
          return v7 == v5;
        }
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = v4 & 0xFFFFFFF8;
    while (1)
    {
      v8 = *&a3[v6];
      v9 = *(v3 + v6);
      if (v8 != v9)
      {
        break;
      }

      v6 += 8;
      if ((v5 & 0xFFFFFFF8) == v6)
      {
        a3 += v4 & 0xFFFFFFF8;
        goto LABEL_9;
      }
    }

    v7 = v6 + (__clz(__rbit64(v9 ^ v8)) >> 3);
  }

  return v7 == v5;
}

uint64_t sub_10016912C(uint64_t a1, int a2, int a3)
{
  if (!a3)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  v5 = sub_100160300(a2);
  v6 = sub_100170C68(*(a1 + 32), 0, a2, v5 + 1573080, v5 + 1572864);
  *(a1 + 32) = v6;
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  result = 0;
  v7[8] = 216;
  v7[13] = 786648;
  v7[14] = 786648;
  v7[15] = 1573080;
  v7[2] = 216;
  v7[3] = 786648;
  v7[4] = 1573080;
  return result;
}

uint64_t sub_1001691C4(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4 = (v3 + 64);
  *(v3 + 64) += v3;
  v5 = vdupq_n_s64(v3);
  *(v3 + 104) = vaddq_s64(v5, *(v3 + 104));
  *(v3 + 120) += v3;
  v37 = v5;
  *(v3 + 16) = vaddq_s64(v5, *(v3 + 16));
  *(v3 + 32) += v3;
  if (a2)
  {
    *(v3 + 44) = 1;
  }

  while (1)
  {
    if (*(v3 + 48))
    {
      v6 = 0;
    }

    else
    {
      v7 = *(v3 + 72);
      v8 = *(a1 + 24);
      if (v8 >= 786432 - v7)
      {
        v6 = 786432 - v7;
      }

      else
      {
        v6 = *(a1 + 24);
      }

      if (v6 >= 1)
      {
        memcpy((*(v3 + 16) + v7), *(a1 + 16), v6);
        *(v3 + 72) += v6;
        v8 = *(a1 + 24) - v6;
        *(a1 + 16) += v6;
        *(a1 + 24) = v8;
      }

      if (!v8 && *(v3 + 44))
      {
        *(v3 + 48) = 1;
      }
    }

    v9 = *(v3 + 112);
    v10 = *(v3 + 24);
    if (v9 >= v10 + 393216)
    {
      v11 = *(v3 + 104);
      v12 = v11 - v9;
      if (v11 != v9)
      {
        memmove(v10, v9, v11 - v9);
        v10 = *(v3 + 24);
      }

      *(v3 + 104) = &v10[v12];
      *(v3 + 112) = v10;
    }

    if (*(v3 + 48))
    {
      break;
    }

    if (!*(v3 + 40) && *(v3 + 72) < 4096)
    {
      goto LABEL_42;
    }

LABEL_28:
    if (!*(v3 + 52))
    {
LABEL_29:
      if (*(v3 + 40))
      {
LABEL_30:
        sub_100160328(v4, *(v3 + 32));
      }

      else
      {
LABEL_31:
        sub_100160358(v4, *(v3 + 4), *(v3 + 32));
        *(v3 + 40) = 1;
      }

      v25 = *(v3 + 72);
      *(v3 + 96) = v25 - 400;
      if (*(v3 + 48))
      {
        *(v3 + 96) = v25 - 8;
      }

      sub_1001604A0(v4);
      if (*(v3 + 48) && *(v3 + 88) >= *(v3 + 72) - 8)
      {
        *(v3 + 52) = 1;
      }

      else if (!*(v3 + 52))
      {
        goto LABEL_42;
      }
    }

LABEL_39:
    if (!*(v3 + 56) && !sub_1001607F8(v4))
    {
      goto LABEL_41;
    }

LABEL_42:
    if (*(v3 + 60))
    {
      if (*(v3 + 56))
      {
        goto LABEL_66;
      }

      v26 = 0;
    }

    else
    {
      v27 = *(v3 + 112);
      if (*(a1 + 8) >= *(v3 + 104) - v27)
      {
        v26 = *(v3 + 104) - v27;
      }

      else
      {
        v26 = *(a1 + 8);
      }

      if (v26 >= 1)
      {
        memcpy(*a1, v27, v26);
        v27 = (*(v3 + 112) + v26);
        *(v3 + 112) = v27;
        v28 = *(a1 + 8) - v26;
        *a1 += v26;
        *(a1 + 8) = v28;
      }

      if (*(v3 + 56))
      {
        if (v27 == *(v3 + 104))
        {
          v32 = 0;
          *(v3 + 60) = 1;
          goto LABEL_68;
        }

        if (*(v3 + 60))
        {
LABEL_66:
          v32 = 0;
          goto LABEL_68;
        }
      }
    }

    v29 = *(v3 + 72);
    if (v29 >= 393216)
    {
      v30 = *(v3 + 88);
      v31 = v30 > 0x80000 ? v30 - 0x40000 : 0;
      if (v31 >= 1)
      {
        sub_100160420(v4, v31);
        if (v29 > v31)
        {
          memmove(*(v3 + 16), (*(v3 + 16) + v31), v29 - v31);
        }

        *(v3 + 64) = *(v3 + 16);
      }
    }

    v32 = v26 | v6;
    if (!(v26 | v6))
    {
      goto LABEL_68;
    }
  }

  if (*(v3 + 52))
  {
    goto LABEL_39;
  }

  if (*(v3 + 40))
  {
    goto LABEL_30;
  }

  v13 = *(v3 + 72);
  if (v13 > 4095)
  {
    goto LABEL_31;
  }

  v14 = *(v3 + 120);
  v15 = *(v3 + 104);
  if (v14 <= v15 + 16)
  {
    goto LABEL_29;
  }

  v16 = sub_100136794(2304);
  v17 = malloc(v16);
  if (v17)
  {
    v18 = v17;
    v19 = v14 - v15;
    v20 = sub_1001367A8((*(v3 + 104) + 12), v19 - 16, *(v3 + 64), v13, v17, 2304);
    free(v18);
    if (v20 && v20 < v13)
    {
      v21 = *(v3 + 104);
      *v21 = 1853388386;
      v21[1] = v13;
      v21[2] = v20;
      v22 = &v20[*(v3 + 104)];
      *(v22 + 3) = 611874402;
      v23 = *(v3 + 72);
      *(v3 + 80) = v23;
      *(v3 + 88) = v23;
      v24 = v22 + 16;
LABEL_65:
      *(v3 + 96) = v23;
      *(v3 + 104) = v24;
      *(v3 + 52) = 1;
LABEL_41:
      *(v3 + 56) = 1;
      goto LABEL_42;
    }

    if (v19 >= v13 + 12)
    {
      v33 = *(v3 + 104);
      *v33 = 762869346;
      v33[1] = v13;
      v34 = (*(v3 + 104) + 8);
      *(v3 + 104) = v34;
      memcpy(v34, *(v3 + 64), v13);
      v35 = (*(v3 + 104) + v13);
      *v35 = 611874402;
      v24 = v35 + 1;
      v23 = *(v3 + 72);
      *(v3 + 80) = v23;
      *(v3 + 88) = v23;
      goto LABEL_65;
    }

    goto LABEL_28;
  }

  v32 = 1;
LABEL_68:
  *(v3 + 64) -= v3;
  *(v3 + 104) = vsubq_s64(*(v3 + 104), v37);
  *(v3 + 120) -= v3;
  *(v3 + 16) = vsubq_s64(*(v3 + 16), v37);
  *(v3 + 32) -= v3;
  if (v32)
  {
    return 0xFFFFFFFFLL;
  }

  return *(v3 + 56) && *(v3 + 60);
}

void sub_100169648(void *a1, unsigned int a2, int a3, unsigned int a4, int a5, unsigned int a6, _BYTE *a7, int a8)
{
  if (a7 && a8 == 112 && *a7 == 49 && a1)
  {
    a1[6] = 0;
    v11 = a1[8];
    if (!v11)
    {
      v11 = sub_100129F74;
      a1[8] = sub_100129F74;
      a1[10] = 0;
    }

    if (!a1[9])
    {
      a1[9] = sub_100129F7C;
    }

    if (a2 == -1)
    {
      v12 = 6;
    }

    else
    {
      v12 = a2;
    }

    v13 = a4 - 16;
    if (a4 > 0xF)
    {
      v14 = 2;
    }

    else
    {
      v13 = a4;
      v14 = 1;
    }

    if ((a4 & 0x80000000) == 0)
    {
      v15 = v14;
    }

    else
    {
      v13 = -a4;
      v15 = 0;
    }

    if (a6 <= 4 && v12 <= 9 && a3 == 8 && (a5 - 10) >= 0xFFFFFFF7 && (v13 - 16) >= 0xFFFFFFF8)
    {
      v16 = v13 == 8 ? 9 : v13;
      v17 = v11 == sub_100129F74 ? calloc(1uLL, 0x1730uLL) : (v11)(a1[10], 1, 5936);
      v18 = v17;
      if (v17)
      {
        a1[7] = v17;
        *v17 = a1;
        v17[11] = v15;
        *(v17 + 6) = 0;
        v17[17] = 1 << v16;
        v17[18] = v16;
        v17[19] = (1 << v16) - 1;
        v17[29] = 128 << a5;
        v17[30] = a5 + 7;
        v17[31] = (128 << a5) - 1;
        v17[32] = (a5 + 9) / 3u;
        v19 = a1[8];
        if (v19 == sub_100129F74)
        {
          v20 = calloc((1 << v16), 2uLL);
        }

        else
        {
          v20 = (v19)(a1[10]);
        }

        *(v18 + 10) = v20;
        v21 = a1[8];
        if (v21 == sub_100129F74)
        {
          v22 = calloc(v18[17], 2uLL);
        }

        else
        {
          v22 = (v21)(a1[10], v18[17], 2);
        }

        *(v18 + 12) = v22;
        v23 = a1[8];
        if (v23 == sub_100129F74)
        {
          v24 = calloc(v18[29], 2uLL);
        }

        else
        {
          v24 = (v23)(a1[10], v18[29], 2);
        }

        *(v18 + 13) = v24;
        *(v18 + 741) = 0;
        v18[1470] = 64 << a5;
        v25 = a1[8];
        if (v25 == sub_100129F74)
        {
          v26 = calloc((64 << a5), 4uLL);
        }

        else
        {
          v26 = (v25)(a1[10]);
        }

        v27 = v18[1470];
        *(v18 + 2) = v26;
        *(v18 + 3) = 4 * v27;
        if (*(v18 + 10) && *(v18 + 12) && *(v18 + 13) && v26)
        {
          *(v18 + 736) = &v26[v27 & 0xFFFFFFFE];
          *(v18 + 734) = &v26[3 * v27];
          v18[45] = v12;
          v18[46] = a6;
          *(v18 + 60) = 8;

          sub_100169A70(a1);
        }

        else
        {
          v18[2] = 666;
          a1[6] = "insufficient memory";
          sub_10016997C(a1);
        }
      }
    }
  }
}

uint64_t sub_10016997C(uint64_t a1)
{
  if (!a1)
  {
    return 4294967294;
  }

  v2 = *(a1 + 56);
  if (!v2)
  {
    return 4294967294;
  }

  v3 = *(v2 + 8);
  v4 = (v3 - 69) > 0x2C || ((1 << (v3 - 69)) & 0x100400400011) == 0;
  if (v4 && v3 != 666 && v3 != 42)
  {
    return 4294967294;
  }

  if (*(v2 + 16))
  {
    (*(a1 + 72))(*(a1 + 80), *(v2 + 16));
    v2 = *(a1 + 56);
  }

  if (*(v2 + 104))
  {
    (*(a1 + 72))(*(a1 + 80), *(v2 + 104));
    v2 = *(a1 + 56);
  }

  if (*(v2 + 96))
  {
    (*(a1 + 72))(*(a1 + 80), *(v2 + 96));
    v2 = *(a1 + 56);
  }

  if (*(v2 + 80))
  {
    (*(a1 + 72))(*(a1 + 80), *(v2 + 80));
    v2 = *(a1 + 56);
  }

  (*(a1 + 72))(*(a1 + 80), v2);
  *(a1 + 56) = 0;
  if (v3 == 113)
  {
    return 4294967293;
  }

  else
  {
    return 0;
  }
}

double sub_100169A70(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      if (*(a1 + 64) && *(a1 + 72))
      {
        *(a1 + 16) = 0;
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
        *(a1 + 88) = 2;
        *(v2 + 40) = 0;
        *(v2 + 32) = *(v2 + 16);
        v3 = *(v2 + 44);
        if (v3 < 0)
        {
          v3 = -v3;
          *(v2 + 44) = v3;
        }

        if (v3)
        {
          v4 = 42;
        }

        else
        {
          v4 = 113;
        }

        *(v2 + 8) = v4;
        if (v3 == 2)
        {
          v5 = sub_10015E3E8(0, 0, 0);
        }

        else
        {
          v5 = sub_100136F30(0, 0, 0);
        }

        *(a1 + 96) = v5;
        *(v2 + 64) = 0;
        sub_10015E674(v2);
        *(v2 + 88) = 2 * *(v2 + 68);
        v6 = *(v2 + 104);
        v7 = 2 * (*(v2 + 116) - 1);
        *&v6[v7] = 0;
        bzero(v6, v7);
        v8 = (&unk_100484A00 + 16 * *(v2 + 180));
        v9 = v8[2];
        *(v2 + 188) = *v8;
        *(v2 + 192) = v9;
        v10 = v8[1];
        *(v2 + 172) = v8[3];
        *(v2 + 176) = v10;
        *(v2 + 136) = 0;
        *&result = 0x200000000;
        *(v2 + 164) = 0x200000000;
        *(v2 + 144) = 2;
        *(v2 + 152) = 0;
        *(v2 + 112) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_100169BAC(uint64_t a1, uint8x16_t *a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294967294;
  }

  result = 4294967294;
  if (a2)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      LODWORD(v7) = a3;
      v8 = *(v6 + 44);
      if (v8)
      {
        if (v8 == 2 || v8 == 1 && *(v6 + 8) != 42)
        {
          return result;
        }

        *(a1 + 96) = sub_100136F30(*(a1 + 96), a2, a3);
      }

      if (v7 >= 3)
      {
        v9 = *(v6 + 68);
        LODWORD(v10) = v7 - v9;
        if (v7 >= v9)
        {
          v10 = v10;
        }

        else
        {
          v10 = 0;
        }

        if (v9 >= v7)
        {
          v7 = v7;
        }

        else
        {
          v7 = v9;
        }

        memcpy(*(v6 + 80), &a2->i8[v10], v7);
        v11 = 0;
        *(v6 + 156) = v7;
        *(v6 + 136) = v7;
        v12 = *(v6 + 80);
        v13 = *v12;
        *(v6 + 112) = v13;
        v15 = *(v6 + 124);
        v14 = *(v6 + 128);
        v16 = ((v13 << v14) ^ v12[1]) & v15;
        *(v6 + 112) = v16;
        v18 = *(v6 + 96);
        v17 = *(v6 + 104);
        v19 = *(v6 + 76);
        LODWORD(v20) = v7 - 2;
        if ((v7 - 2) <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v20;
        }

        do
        {
          v16 = ((v16 << v14) ^ v12[(v11 + 2)]) & v15;
          *(v6 + 112) = v16;
          *(v18 + 2 * (v19 & v11)) = *(v17 + 2 * v16);
          *(v17 + 2 * v16) = v11++;
        }

        while (v20 != v11);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_100169CDC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294967294;
  }

  v2 = *(a1 + 56);
  if (!v2 || *(v2 + 44) != 2)
  {
    return 4294967294;
  }

  result = 0;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_100169D08(uint64_t a1, int a2, __int16 a3)
{
  if (!a1)
  {
    return 4294967294;
  }

  v3 = *(a1 + 56);
  if (!v3)
  {
    return 4294967294;
  }

  result = 0;
  *(v3 + 5924) = a2;
  *(v3 + 5920) = a3 & ~(-1 << a2);
  return result;
}

uint64_t sub_100169D38(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (!a1)
  {
    return 4294967294;
  }

  v4 = *(a1 + 56);
  if (!v4)
  {
    return 4294967294;
  }

  if (a2 == -1)
  {
    v6 = 6;
  }

  else
  {
    v6 = a2;
  }

  result = 4294967294;
  if (a3 <= 4 && v6 <= 9)
  {
    if (v4[46] == a3 && *(&unk_100484A00 + 2 * v4[45] + 1) == *(&unk_100484A00 + 2 * v6 + 1) || !*(a1 + 16))
    {
      result = 0;
    }

    else
    {
      result = sub_100169E20(a1, 5);
    }

    if (v4[45] != v6)
    {
      v4[45] = v6;
      v8 = (&unk_100484A00 + 16 * v6);
      v9 = v8[1];
      v10 = v8[2];
      v4[47] = *v8;
      v4[48] = v10;
      v4[43] = v8[3];
      v4[44] = v9;
    }

    v4[46] = a3;
  }

  return result;
}

uint64_t sub_100169E20(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294967294;
  }

  result = 4294967294;
  if (a2 <= 5)
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      if (!*(a1 + 24) || !*a1 && *(a1 + 8) || (v6 = *(v5 + 8), a2 != 4) && v6 == 666)
      {
        *(a1 + 48) = "stream error";
        return result;
      }

      if (!*(a1 + 32))
      {
        goto LABEL_136;
      }

      *v5 = a1;
      v7 = *(v5 + 64);
      *(v5 + 64) = a2;
      if (v6 == 42)
      {
        if (*(v5 + 44) == 2)
        {
          *(a1 + 96) = sub_10015E3E8(0, 0, 0);
          v8 = *(v5 + 16);
          v9 = *(v5 + 40);
          *(v5 + 40) = v9 + 1;
          *(v8 + v9) = 31;
          v10 = *(v5 + 16);
          v11 = *(v5 + 40);
          *(v5 + 40) = v11 + 1;
          *(v10 + v11) = -117;
          v12 = *(v5 + 16);
          v13 = *(v5 + 40);
          *(v5 + 40) = v13 + 1;
          *(v12 + v13) = 8;
          v14 = *(v5 + 48);
          if (!v14)
          {
            v52 = *(v5 + 16);
            v53 = *(v5 + 40);
            *(v5 + 40) = v53 + 1;
            *(v52 + v53) = 0;
            v54 = *(v5 + 16);
            v55 = *(v5 + 40);
            *(v5 + 40) = v55 + 1;
            *(v54 + v55) = 0;
            v56 = *(v5 + 16);
            v57 = *(v5 + 40);
            *(v5 + 40) = v57 + 1;
            *(v56 + v57) = 0;
            v58 = *(v5 + 16);
            v59 = *(v5 + 40);
            *(v5 + 40) = v59 + 1;
            *(v58 + v59) = 0;
            v60 = *(v5 + 16);
            v61 = *(v5 + 40);
            *(v5 + 40) = v61 + 1;
            *(v60 + v61) = 0;
            v62 = *(v5 + 180);
            if (v62 == 9)
            {
              v63 = 2;
            }

            else if (*(v5 + 184) > 1 || v62 < 2)
            {
              v63 = 4;
            }

            else
            {
              v63 = 0;
            }

            v112 = *(v5 + 16);
            v113 = *(v5 + 40);
            *(v5 + 40) = v113 + 1;
            *(v112 + v113) = v63;
            v114 = *(v5 + 16);
            v115 = *(v5 + 40);
            *(v5 + 40) = v115 + 1;
            *(v114 + v115) = 7;
LABEL_127:
            *(v5 + 8) = 113;
            goto LABEL_128;
          }

          v15 = (*v14 != 0) | (2 * (*(v14 + 68) != 0)) | (4 * (*(v14 + 24) != 0)) | (8 * (*(v14 + 40) != 0)) | (16 * (*(v14 + 56) != 0));
          v16 = *(v5 + 16);
          v17 = *(v5 + 40);
          *(v5 + 40) = v17 + 1;
          *(v16 + v17) = v15;
          v18 = *(*(v5 + 48) + 8);
          v19 = *(v5 + 16);
          v20 = *(v5 + 40);
          *(v5 + 40) = v20 + 1;
          *(v19 + v20) = v18;
          v21 = *(*(v5 + 48) + 8) >> 8;
          v22 = *(v5 + 16);
          v23 = *(v5 + 40);
          *(v5 + 40) = v23 + 1;
          *(v22 + v23) = v21;
          v24 = *(*(v5 + 48) + 8) >> 16;
          v25 = *(v5 + 16);
          v26 = *(v5 + 40);
          *(v5 + 40) = v26 + 1;
          *(v25 + v26) = v24;
          v27 = *(*(v5 + 48) + 8) >> 24;
          v28 = *(v5 + 16);
          v29 = *(v5 + 40);
          *(v5 + 40) = v29 + 1;
          *(v28 + v29) = v27;
          v30 = *(v5 + 180);
          if (v30 == 9)
          {
            v31 = 2;
          }

          else if (*(v5 + 184) > 1 || v30 < 2)
          {
            v31 = 4;
          }

          else
          {
            v31 = 0;
          }

          v65 = *(v5 + 16);
          v66 = *(v5 + 40);
          *(v5 + 40) = v66 + 1;
          *(v65 + v66) = v31;
          v67 = *(*(v5 + 48) + 20);
          v68 = *(v5 + 16);
          v69 = *(v5 + 40);
          *(v5 + 40) = v69 + 1;
          *(v68 + v69) = v67;
          v70 = *(v5 + 48);
          if (*(v70 + 24))
          {
            v71 = *(v70 + 32);
            v72 = *(v5 + 16);
            v73 = *(v5 + 40);
            *(v5 + 40) = v73 + 1;
            *(v72 + v73) = v71;
            v74 = *(*(v5 + 48) + 32) >> 8;
            v75 = *(v5 + 16);
            v76 = *(v5 + 40);
            *(v5 + 40) = v76 + 1;
            *(v75 + v76) = v74;
            v70 = *(v5 + 48);
          }

          if (*(v70 + 68))
          {
            *(a1 + 96) = sub_10015E3E8(*(a1 + 96), *(v5 + 16), *(v5 + 40));
          }

          *(v5 + 56) = 0;
          *(v5 + 8) = 69;
LABEL_49:
          v77 = *(v5 + 48);
          if (!*(v77 + 24))
          {
            goto LABEL_68;
          }

          v78 = *(v5 + 40);
          v79 = *(v5 + 56);
          while (1)
          {
            if (v79 >= *(v77 + 32))
            {
              goto LABEL_63;
            }

            v80 = *(v5 + 40);
            if (*(v5 + 24) == v80)
            {
              if (*(v77 + 68))
              {
                v81 = v80 > v78;
              }

              else
              {
                v81 = 0;
              }

              if (v81)
              {
                *(a1 + 96) = sub_10015E3E8(*(a1 + 96), (*(v5 + 16) + v78), v80 - v78);
              }

              sub_10016AA64(a1);
              v80 = *(v5 + 40);
              v77 = *(v5 + 48);
              if (*(v5 + 24) == v80)
              {
                v78 = *(v5 + 40);
LABEL_63:
                if (*(v77 + 68))
                {
                  v84 = *(v5 + 40);
                  if (v84 > v78)
                  {
                    *(a1 + 96) = sub_10015E3E8(*(a1 + 96), (*(v5 + 16) + v78), v84 - v78);
                    v77 = *(v5 + 48);
                  }
                }

                if (*(v5 + 56) == *(v77 + 32))
                {
                  *(v5 + 56) = 0;
LABEL_68:
                  *(v5 + 8) = 73;
LABEL_72:
                  if (*(v77 + 40))
                  {
                    v85 = *(v5 + 40);
                    do
                    {
                      v86 = *(v5 + 40);
                      v87 = *(v5 + 48);
                      if (*(v5 + 24) == v86)
                      {
                        if (*(v87 + 68))
                        {
                          v88 = v86 > v85;
                        }

                        else
                        {
                          v88 = 0;
                        }

                        if (v88)
                        {
                          *(a1 + 96) = sub_10015E3E8(*(a1 + 96), (*(v5 + 16) + v85), v86 - v85);
                        }

                        sub_10016AA64(a1);
                        v86 = *(v5 + 40);
                        if (*(v5 + 24) == v86)
                        {
                          v92 = 0;
                          goto LABEL_86;
                        }

                        v87 = *(v5 + 48);
                        v85 = *(v5 + 40);
                      }

                      v89 = *(v87 + 40);
                      v90 = *(v5 + 56);
                      *(v5 + 56) = v90 + 1;
                      LODWORD(v89) = *(v89 + v90);
                      v91 = *(v5 + 16);
                      *(v5 + 40) = v86 + 1;
                      *(v91 + v86) = v89;
                    }

                    while (v89);
                    v92 = 1;
                    LODWORD(v86) = v85;
LABEL_86:
                    if (*(*(v5 + 48) + 68))
                    {
                      v93 = *(v5 + 40);
                      if (v93 > v86)
                      {
                        *(a1 + 96) = sub_10015E3E8(*(a1 + 96), (*(v5 + 16) + v86), v93 - v86);
                      }
                    }

                    if (v92)
                    {
                      *(v5 + 56) = 0;
                      goto LABEL_91;
                    }

                    v6 = *(v5 + 8);
LABEL_93:
                    if (v6 != 91)
                    {
                      goto LABEL_114;
                    }
                  }

                  else
                  {
LABEL_91:
                    *(v5 + 8) = 91;
                  }

                  if (!*(*(v5 + 48) + 56))
                  {
                    goto LABEL_112;
                  }

                  v94 = *(v5 + 40);
                  while (1)
                  {
                    v95 = *(v5 + 40);
                    v96 = *(v5 + 48);
                    if (*(v5 + 24) == v95)
                    {
                      if (*(v96 + 68))
                      {
                        v97 = v95 > v94;
                      }

                      else
                      {
                        v97 = 0;
                      }

                      if (v97)
                      {
                        *(a1 + 96) = sub_10015E3E8(*(a1 + 96), (*(v5 + 16) + v94), v95 - v94);
                      }

                      sub_10016AA64(a1);
                      v95 = *(v5 + 40);
                      if (*(v5 + 24) == v95)
                      {
                        v101 = 0;
LABEL_108:
                        if (*(*(v5 + 48) + 68))
                        {
                          v102 = *(v5 + 40);
                          if (v102 > v95)
                          {
                            *(a1 + 96) = sub_10015E3E8(*(a1 + 96), (*(v5 + 16) + v95), v102 - v95);
                          }
                        }

                        if (v101)
                        {
LABEL_112:
                          *(v5 + 8) = 103;
                          goto LABEL_115;
                        }

                        v6 = *(v5 + 8);
LABEL_114:
                        if (v6 == 103)
                        {
LABEL_115:
                          if (!*(*(v5 + 48) + 68))
                          {
                            goto LABEL_127;
                          }

                          v103 = *(v5 + 40);
                          v104 = v103 + 2;
                          v105 = *(v5 + 24);
                          if (v105 < v104)
                          {
                            sub_10016AA64(a1);
                            v103 = *(v5 + 40);
                            v105 = *(v5 + 24);
                            v104 = v103 + 2;
                          }

                          if (v105 >= v104)
                          {
                            v106 = *(a1 + 96);
                            v107 = *(v5 + 16);
                            *(v5 + 40) = v103 + 1;
                            *(v107 + v103) = v106;
                            v108 = *(a1 + 96) >> 8;
                            v109 = *(v5 + 16);
                            v110 = *(v5 + 40);
                            *(v5 + 40) = v110 + 1;
                            *(v109 + v110) = v108;
                            *(a1 + 96) = sub_10015E3E8(0, 0, 0);
                            goto LABEL_127;
                          }
                        }

LABEL_128:
                        if (*(v5 + 40))
                        {
                          sub_10016AA64(a1);
                          if (*(a1 + 32))
                          {
                            goto LABEL_130;
                          }

LABEL_162:
                          result = 0;
                          *(v5 + 64) = -1;
                          return result;
                        }

                        if (!*(a1 + 8) && a2 != 4 && v7 >= a2)
                        {
LABEL_136:
                          *(a1 + 48) = "buffer error";
                          return 4294967291;
                        }

LABEL_130:
                        v116 = *(v5 + 8);
                        v117 = *(a1 + 8);
                        if (v116 != 666)
                        {
                          if (!v117)
                          {
                            goto LABEL_138;
                          }

                          goto LABEL_139;
                        }

                        if (v117)
                        {
                          goto LABEL_136;
                        }

LABEL_138:
                        if (*(v5 + 164))
                        {
LABEL_139:
                          v118 = *(v5 + 184);
                          if (v118 == 3)
                          {
                            v119 = sub_10016AC64(v5, a2);
                          }

                          else if (v118 == 2)
                          {
                            v119 = sub_10016AAF8(v5, a2);
                          }

                          else
                          {
                            v119 = (*(&unk_100484A00 + 2 * *(v5 + 180) + 1))(v5, a2);
                          }

                          if ((v119 & 0xFFFFFFFE) == 2)
                          {
                            *(v5 + 8) = 666;
                          }

                          if ((v119 & 0xFFFFFFFD) != 0)
                          {
                            if (v119 == 1)
                            {
                              if (a2 != 5)
                              {
                                if (a2 == 1)
                                {
                                  sub_10015EB5C(v5);
                                }

                                else
                                {
                                  sub_10015EA14(v5, 0, 0, 0);
                                  if (a2 == 3)
                                  {
                                    v120 = *(v5 + 104);
                                    v121 = 2 * (*(v5 + 116) - 1);
                                    *&v120[v121] = 0;
                                    bzero(v120, v121);
                                    if (!*(v5 + 164))
                                    {
                                      *(v5 + 156) = 0;
                                      *(v5 + 136) = 0;
                                    }
                                  }
                                }
                              }

                              sub_10016AA64(a1);
                              if (!*(a1 + 32))
                              {
                                goto LABEL_162;
                              }
                            }

                            goto LABEL_160;
                          }

                          if (!*(a1 + 32))
                          {
                            goto LABEL_162;
                          }
                        }

                        else if (a2)
                        {
                          if (v116 != 666)
                          {
                            goto LABEL_139;
                          }

LABEL_160:
                          if (a2 == 4)
                          {
                            v122 = *(v5 + 44);
                            if (v122 < 1)
                            {
                              return 1;
                            }

                            v123 = *(a1 + 96);
                            if (v122 == 2)
                            {
                              v124 = *(v5 + 16);
                              v125 = *(v5 + 40);
                              *(v5 + 40) = v125 + 1;
                              *(v124 + v125) = v123;
                              v126 = *(a1 + 96) >> 8;
                              v127 = *(v5 + 16);
                              v128 = *(v5 + 40);
                              *(v5 + 40) = v128 + 1;
                              *(v127 + v128) = v126;
                              v129 = *(a1 + 96) >> 16;
                              v130 = *(v5 + 16);
                              v131 = *(v5 + 40);
                              *(v5 + 40) = v131 + 1;
                              *(v130 + v131) = v129;
                              v132 = *(a1 + 96) >> 24;
                              v133 = *(v5 + 16);
                              v134 = *(v5 + 40);
                              *(v5 + 40) = v134 + 1;
                              *(v133 + v134) = v132;
                              v135 = *(a1 + 16);
                              v136 = *(v5 + 16);
                              v137 = *(v5 + 40);
                              *(v5 + 40) = v137 + 1;
                              *(v136 + v137) = v135;
                              v138 = *(a1 + 16) >> 8;
                              v139 = *(v5 + 16);
                              v140 = *(v5 + 40);
                              *(v5 + 40) = v140 + 1;
                              *(v139 + v140) = v138;
                              v141 = *(a1 + 16) >> 16;
                              v142 = *(v5 + 16);
                              v143 = *(v5 + 40);
                              *(v5 + 40) = v143 + 1;
                              *(v142 + v143) = v141;
                              v144 = *(a1 + 16) >> 24;
                            }

                            else
                            {
                              v145 = v123 >> 16;
                              v146 = *(v5 + 16);
                              v147 = *(v5 + 40);
                              *(v5 + 40) = v147 + 1;
                              *(v146 + v147) = BYTE3(v123);
                              v148 = *(v5 + 16);
                              v149 = *(v5 + 40);
                              *(v5 + 40) = v149 + 1;
                              *(v148 + v149) = v145;
                              v144 = *(a1 + 96);
                              v150 = *(v5 + 16);
                              v151 = *(v5 + 40);
                              *(v5 + 40) = v151 + 1;
                              *(v150 + v151) = BYTE1(v144);
                            }

                            v152 = *(v5 + 16);
                            v153 = *(v5 + 40);
                            *(v5 + 40) = v153 + 1;
                            *(v152 + v153) = v144;
                            sub_10016AA64(a1);
                            v154 = *(v5 + 44);
                            if (v154 >= 1)
                            {
                              *(v5 + 44) = -v154;
                            }

                            return *(v5 + 40) == 0;
                          }
                        }

                        return 0;
                      }

                      v96 = *(v5 + 48);
                      v94 = *(v5 + 40);
                    }

                    v98 = *(v96 + 56);
                    v99 = *(v5 + 56);
                    *(v5 + 56) = v99 + 1;
                    LODWORD(v98) = *(v98 + v99);
                    v100 = *(v5 + 16);
                    *(v5 + 40) = v95 + 1;
                    *(v100 + v95) = v98;
                    if (!v98)
                    {
                      v101 = 1;
                      LODWORD(v95) = v94;
                      goto LABEL_108;
                    }
                  }
                }

                v6 = *(v5 + 8);
LABEL_70:
                if (v6 == 73)
                {
                  v77 = *(v5 + 48);
                  goto LABEL_72;
                }

                goto LABEL_93;
              }

              v79 = *(v5 + 56);
              v78 = *(v5 + 40);
            }

            v82 = *(*(v77 + 24) + v79);
            v83 = *(v5 + 16);
            *(v5 + 40) = v80 + 1;
            *(v83 + v80) = v82;
            v79 = *(v5 + 56) + 1;
            *(v5 + 56) = v79;
            v77 = *(v5 + 48);
          }
        }

        if (*(v5 + 184) <= 1)
        {
          v33 = *(v5 + 180);
          if (v33 == 6)
          {
            v34 = 128;
          }

          else
          {
            v34 = 192;
          }

          if (v33 >= 6)
          {
            v35 = v34;
          }

          else
          {
            v35 = 64;
          }

          if (v33 >= 2)
          {
            v32 = v35;
          }

          else
          {
            v32 = 0;
          }
        }

        else
        {
          v32 = 0;
        }

        v36 = v32 | ((*(v5 + 72) << 12) - 30720);
        if (*(v5 + 156))
        {
          v36 |= 0x20u;
        }

        *(v5 + 8) = 113;
        v37 = *(v5 + 16);
        v38 = *(v5 + 40);
        *(v5 + 40) = v38 + 1;
        *(v37 + v38) = BYTE1(v36);
        v39 = *(v5 + 16);
        v40 = *(v5 + 40);
        *(v5 + 40) = v40 + 1;
        *(v39 + v40) = ((v36 % 0x1F) | v36) ^ 0x1F;
        if (*(v5 + 156))
        {
          v41 = *(a1 + 96);
          v42 = v41 >> 16;
          v43 = *(v5 + 16);
          v44 = *(v5 + 40);
          *(v5 + 40) = v44 + 1;
          *(v43 + v44) = BYTE3(v41);
          v45 = *(v5 + 16);
          v46 = *(v5 + 40);
          *(v5 + 40) = v46 + 1;
          *(v45 + v46) = v42;
          v47 = *(a1 + 96);
          v48 = *(v5 + 16);
          v49 = *(v5 + 40);
          *(v5 + 40) = v49 + 1;
          *(v48 + v49) = BYTE1(v47);
          v50 = *(v5 + 16);
          v51 = *(v5 + 40);
          *(v5 + 40) = v51 + 1;
          *(v50 + v51) = v47;
        }

        *(a1 + 96) = sub_100136F30(0, 0, 0);
        v6 = *(v5 + 8);
      }

      if (v6 != 69)
      {
        goto LABEL_70;
      }

      goto LABEL_49;
    }
  }

  return result;
}

uint64_t sub_10016A94C(uint64_t a1, int a2, int a3, int a4, int a5)
{
  if (!a1)
  {
    return 4294967294;
  }

  v5 = *(a1 + 56);
  if (!v5)
  {
    return 4294967294;
  }

  result = 0;
  v5[47] = a2;
  v5[48] = a4;
  v5[43] = a5;
  v5[44] = a3;
  return result;
}

unint64_t sub_10016A970(uint64_t a1, unint64_t a2)
{
  v2 = a2 + ((a2 + 7) >> 3) + ((a2 + 63) >> 6);
  if (!a1)
  {
    return v2 + 11;
  }

  v3 = *(a1 + 56);
  if (!v3)
  {
    return v2 + 11;
  }

  v4 = *(v3 + 44);
  if (v4)
  {
    if (v4 == 2)
    {
      v6 = *(v3 + 48);
      if (v6)
      {
        if (*(v6 + 24))
        {
          v7 = (*(v6 + 32) + 2) + 18;
        }

        else
        {
          v7 = 18;
        }

        v8 = *(v6 + 40);
        if (v8)
        {
          do
          {
            ++v7;
          }

          while (*v8++);
        }

        v10 = *(v6 + 56);
        if (v10)
        {
          do
          {
            ++v7;
          }

          while (*v10++);
        }

        if (*(v6 + 68))
        {
          v4 = v7 + 2;
        }

        else
        {
          v4 = v7;
        }
      }

      else
      {
        v4 = 18;
      }
    }

    else if (v4 == 1)
    {
      v4 = 10;
      if (!*(v3 + 156))
      {
        v4 = 6;
      }
    }

    else
    {
      v4 = 6;
    }
  }

  if (*(v3 + 72) == 15 && *(v3 + 120) == 15)
  {
    v12 = a2 + 7 + (a2 >> 12) + (a2 >> 14) + (a2 >> 25);
  }

  else
  {
    v12 = v2 + 5;
  }

  return v12 + v4;
}

void *sub_10016AA64(void *result)
{
  v1 = *(result + 7);
  v2 = *(v1 + 40);
  v3 = *(result + 8);
  if (v2 >= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    v5 = result;
    result = memcpy(*(result + 3), *(v1 + 32), v4);
    v5[3] += v4;
    v6 = v5[7];
    *(v6 + 32) += v4;
    v5[5] += v4;
    *(v5 + 8) -= v4;
    v7 = *(v6 + 40) - v4;
    *(v6 + 40) = v7;
    if (!v7)
    {
      *(v6 + 32) = *(v6 + 16);
    }
  }

  return result;
}

uint64_t sub_10016AAF8(uint64_t a1, int a2)
{
  v4 = a1 + 196;
  while (1)
  {
    if (!*(a1 + 164))
    {
      sub_10016BB70(a1);
      if (!*(a1 + 164))
      {
        break;
      }
    }

    *(a1 + 144) = 0;
    v5 = *(*(a1 + 80) + *(a1 + 156));
    v6 = *(a1 + 5884);
    *(*(a1 + 5888) + 2 * v6) = 0;
    v7 = *(a1 + 5872);
    *(a1 + 5884) = v6 + 1;
    *(v7 + v6) = v5;
    ++*(v4 + 4 * v5);
    LODWORD(v7) = *(a1 + 5884);
    LODWORD(v6) = *(a1 + 5880) - 1;
    --*(a1 + 164);
    v8 = (*(a1 + 156) + 1);
    *(a1 + 156) = v8;
    if (v7 == v6)
    {
      v9 = *(a1 + 136);
      v10 = v9 < 0 ? 0 : (*(a1 + 80) + v9);
      sub_10015EDD0(a1, v10, v8 - v9, 0);
      *(a1 + 136) = *(a1 + 156);
      sub_10016AA64(*a1);
      if (!*(*a1 + 32))
      {
        return 0;
      }
    }
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(a1 + 136);
  if (v11 < 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = (*(a1 + 80) + v11);
  }

  sub_10015EDD0(a1, v12, *(a1 + 156) - v11, a2 == 4);
  *(a1 + 136) = *(a1 + 156);
  sub_10016AA64(*a1);
  if (!*(*a1 + 32))
  {
    return 2 * (a2 == 4);
  }

  if (a2 == 4)
  {
    return 3;
  }

  return 1;
}

uint64_t sub_10016AC64(uint64_t a1, int a2)
{
  v4 = a1 + 196;
  v5 = (a1 + 2488);
  while (1)
  {
    v6 = *(a1 + 164);
    if (v6 >= 0x102)
    {
      *(a1 + 144) = 0;
      v7 = *(a1 + 156);
      if (!*(a1 + 156))
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    sub_10016BB70(a1);
    v6 = *(a1 + 164);
    if (!a2 && v6 < 0x102)
    {
      return 0;
    }

    if (!v6)
    {
      break;
    }

    *(a1 + 144) = 0;
    v7 = *(a1 + 156);
    if (v6 < 3 || !*(a1 + 156))
    {
LABEL_24:
      v18 = *(a1 + 5884);
LABEL_25:
      v19 = *(*(a1 + 80) + v7);
      *(*(a1 + 5888) + 2 * v18) = 0;
      v20 = *(a1 + 5872);
      *(a1 + 5884) = v18 + 1;
      *(v20 + v18) = v19;
      ++*(v4 + 4 * v19);
      v21 = *(a1 + 5884);
      v22 = *(a1 + 5880) - 1;
      --*(a1 + 164);
      v23 = *(a1 + 156) + 1;
      *(a1 + 156) = v23;
      goto LABEL_26;
    }

LABEL_10:
    v8 = (*(a1 + 80) + v7);
    v9 = *(v8 - 1);
    if (v9 != *v8 || v9 != v8[1] || v9 != v8[2])
    {
      goto LABEL_24;
    }

    v10 = 0;
    v11 = v8 + 258;
    while (1)
    {
      v12 = &v8[v10];
      if (v9 != v8[v10 + 3])
      {
        v17 = v12 + 3;
        goto LABEL_39;
      }

      if (v9 != v12[4])
      {
        v17 = v8 + v10 + 4;
        goto LABEL_39;
      }

      v13 = &v8[v10];
      if (v9 != v8[v10 + 5])
      {
        v17 = v13 + 5;
        goto LABEL_39;
      }

      if (v9 != v13[6])
      {
        v17 = v8 + v10 + 6;
        goto LABEL_39;
      }

      v14 = &v8[v10];
      if (v9 != v8[v10 + 7])
      {
        v17 = v14 + 7;
        goto LABEL_39;
      }

      if (v9 != v14[8])
      {
        v17 = v8 + v10 + 8;
        goto LABEL_39;
      }

      v15 = &v8[v10];
      if (v9 != v8[v10 + 9])
      {
        break;
      }

      v16 = v10 + 2;
      v10 += 8;
      if (v16 > 0xF9 || v9 != v15[10])
      {
        v17 = v8 + v10 + 2;
        goto LABEL_39;
      }
    }

    v17 = v15 + 9;
LABEL_39:
    v26 = v17 - v11 + 258;
    if (v26 >= v6)
    {
      v26 = v6;
    }

    *(a1 + 144) = v26;
    v18 = *(a1 + 5884);
    v27 = v26 >= 3;
    v28 = v26 - 3;
    if (!v27)
    {
      goto LABEL_25;
    }

    *(*(a1 + 5888) + 2 * v18) = 1;
    v29 = *(a1 + 5872);
    *(a1 + 5884) = v18 + 1;
    *(v29 + v18) = v28;
    v30 = v4 + 4 * byte_1003E7D38[v28];
    ++*(v30 + 1028);
    ++*v5;
    v21 = *(a1 + 5884);
    v22 = *(a1 + 5880) - 1;
    LODWORD(v30) = *(a1 + 144);
    *(a1 + 164) -= v30;
    v23 = *(a1 + 156) + v30;
    *(a1 + 156) = v23;
    *(a1 + 144) = 0;
LABEL_26:
    if (v21 == v22)
    {
      v24 = *(a1 + 136);
      v25 = v24 < 0 ? 0 : (*(a1 + 80) + v24);
      sub_10015EDD0(a1, v25, v23 - v24, 0);
      *(a1 + 136) = *(a1 + 156);
      sub_10016AA64(*a1);
      if (!*(*a1 + 32))
      {
        return 0;
      }
    }
  }

  v32 = *(a1 + 136);
  if (v32 < 0)
  {
    v33 = 0;
  }

  else
  {
    v33 = (*(a1 + 80) + v32);
  }

  sub_10015EDD0(a1, v33, *(a1 + 156) - v32, a2 == 4);
  *(a1 + 136) = *(a1 + 156);
  sub_10016AA64(*a1);
  if (!*(*a1 + 32))
  {
    return 2 * (a2 == 4);
  }

  if (a2 == 4)
  {
    return 3;
  }

  return 1;
}

uint64_t sub_10016AFB8(uint64_t a1, uint64_t a2)
{
  result = 4294967294;
  if (a1)
  {
    if (a2)
    {
      v4 = *(a2 + 56);
      if (v4)
      {
        v5 = *(a2 + 80);
        v6 = *(a2 + 96);
        v7 = *(a2 + 48);
        *(a1 + 64) = *(a2 + 64);
        v8 = *(a2 + 16);
        v9 = *(a2 + 32);
        *a1 = *a2;
        *(a1 + 16) = v8;
        *(a1 + 80) = v5;
        *(a1 + 96) = v6;
        *(a1 + 32) = v9;
        *(a1 + 48) = v7;
        v10 = *(a1 + 64);
        if (v10 == sub_100129F74)
        {
          v11 = calloc(1uLL, 0x1730uLL);
        }

        else
        {
          v11 = (v10)(*(a1 + 80), 1, 5936);
        }

        v12 = v11;
        if (v11)
        {
          *(a1 + 56) = v11;
          memcpy(v11, v4, 0x1730uLL);
          *v12 = a1;
          v13 = *(a1 + 64);
          if (v13 == sub_100129F74)
          {
            v14 = calloc(v12[17], 2uLL);
          }

          else
          {
            v14 = (v13)(*(a1 + 80), v12[17], 2);
          }

          *(v12 + 10) = v14;
          v15 = *(a1 + 64);
          if (v15 == sub_100129F74)
          {
            v16 = calloc(v12[17], 2uLL);
          }

          else
          {
            v16 = (v15)(*(a1 + 80), v12[17], 2);
          }

          *(v12 + 12) = v16;
          v17 = *(a1 + 64);
          if (v17 == sub_100129F74)
          {
            v18 = calloc(v12[29], 2uLL);
          }

          else
          {
            v18 = (v17)(*(a1 + 80), v12[29], 2);
          }

          *(v12 + 13) = v18;
          v19 = *(a1 + 64);
          if (v19 == sub_100129F74)
          {
            v20 = calloc(v12[1470], 4uLL);
          }

          else
          {
            v20 = (v19)(*(a1 + 80), v12[1470], 4);
          }

          v21 = v20;
          *(v12 + 2) = v20;
          v22 = *(v12 + 10);
          if (v22 && *(v12 + 12) && *(v12 + 13) && v21)
          {
            memcpy(v22, *(v4 + 80), 2 * v12[17]);
            memcpy(*(v12 + 12), *(v4 + 96), 2 * v12[17]);
            memcpy(*(v12 + 13), *(v4 + 104), 2 * v12[29]);
            memcpy(*(v12 + 2), *(v4 + 16), v12[6]);
            result = 0;
            v23 = *(v12 + 2);
            *(v12 + 4) = v23 + *(v4 + 32) - *(v4 + 16);
            v24 = v12[1470];
            *(v12 + 736) = &v21[v24 & 0xFFFFFFFE];
            *(v12 + 734) = v23 + 3 * v24;
            *(v12 + 361) = v12 + 49;
            *(v12 + 364) = v12 + 622;
            *(v12 + 367) = v12 + 683;
            return result;
          }

          sub_10016997C(a1);
        }

        return 4294967292;
      }
    }
  }

  return result;
}

uint64_t sub_10016B224(uint64_t a1, int a2)
{
  if ((*(a1 + 24) - 5) >= 0xFFFF)
  {
    v4 = 0xFFFFLL;
  }

  else
  {
    v4 = *(a1 + 24) - 5;
  }

  while (1)
  {
    v5 = *(a1 + 164);
    if (v5 >= 2)
    {
      v6 = *(a1 + 136);
      goto LABEL_9;
    }

    sub_10016BB70(a1);
    v5 = *(a1 + 164);
    if (!(v5 | a2))
    {
      return 0;
    }

    v6 = *(a1 + 136);
    if (!v5)
    {
      break;
    }

LABEL_9:
    v7 = *(a1 + 156) + v5;
    *(a1 + 156) = v7;
    *(a1 + 164) = 0;
    v8 = v6 + v4;
    if (v7)
    {
      v9 = v8 > v7;
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      *(a1 + 164) = v7 - v8;
      *(a1 + 156) = v8;
      if (v6 < 0)
      {
        v10 = 0;
      }

      else
      {
        v10 = (*(a1 + 80) + v6);
      }

      sub_10015EDD0(a1, v10, v8 - v6, 0);
      *(a1 + 136) = *(a1 + 156);
      sub_10016AA64(*a1);
      if (!*(*a1 + 32))
      {
        return 0;
      }

      LODWORD(v7) = *(a1 + 156);
      v6 = *(a1 + 136);
    }

    if (v7 - v6 >= (*(a1 + 68) - 262))
    {
      v11 = v6 < 0 ? 0 : (*(a1 + 80) + v6);
      sub_10015EDD0(a1, v11, v7 - v6, 0);
      *(a1 + 136) = *(a1 + 156);
      sub_10016AA64(*a1);
      if (!*(*a1 + 32))
      {
        return 0;
      }
    }
  }

  if (v6 < 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = (*(a1 + 80) + v6);
  }

  sub_10015EDD0(a1, v13, *(a1 + 156) - v6, a2 == 4);
  *(a1 + 136) = *(a1 + 156);
  sub_10016AA64(*a1);
  if (!*(*a1 + 32))
  {
    return 2 * (a2 == 4);
  }

  if (a2 == 4)
  {
    return 3;
  }

  return 1;
}

uint64_t sub_10016B3D0(uint64_t a1, int a2)
{
  v4 = a1 + 196;
  v5 = a1 + 2488;
  while (1)
  {
    if (*(a1 + 164) > 0x105u)
    {
      goto LABEL_7;
    }

    sub_10016BB70(a1);
    v6 = *(a1 + 164);
    if (!a2 && v6 < 0x106)
    {
      return 0;
    }

    if (!v6)
    {
      break;
    }

    if (v6 < 3)
    {
      goto LABEL_9;
    }

LABEL_7:
    v7 = *(a1 + 156);
    v8 = ((*(a1 + 112) << *(a1 + 128)) ^ *(*(a1 + 80) + v7 + 2)) & *(a1 + 124);
    *(a1 + 112) = v8;
    v9 = *(a1 + 104);
    v10 = *(v9 + 2 * v8);
    *(*(a1 + 96) + 2 * (*(a1 + 76) & v7)) = v10;
    *(v9 + 2 * v8) = v7;
    if (!v10 || v7 - v10 > *(a1 + 68) - 262)
    {
LABEL_9:
      v11 = *(a1 + 144);
      goto LABEL_11;
    }

    v11 = sub_10016BDCC(a1, v10);
    *(a1 + 144) = v11;
LABEL_11:
    if (v11 < 3)
    {
      v32 = *(*(a1 + 80) + *(a1 + 156));
      v33 = *(a1 + 5884);
      *(*(a1 + 5888) + 2 * v33) = 0;
      v34 = *(a1 + 5872);
      *(a1 + 5884) = v33 + 1;
      *(v34 + v33) = v32;
      ++*(v4 + 4 * v32);
      v19 = *(a1 + 5884);
      v20 = *(a1 + 5880) - 1;
      --*(a1 + 164);
      v31 = *(a1 + 156) + 1;
LABEL_20:
      *(a1 + 156) = v31;
      goto LABEL_22;
    }

    v12 = *(a1 + 156) - *(a1 + 160);
    v13 = *(a1 + 5884);
    *(*(a1 + 5888) + 2 * v13) = v12;
    v14 = *(a1 + 5872);
    *(a1 + 5884) = v13 + 1;
    *(v14 + v13) = v11 - 3;
    v15 = v12 - 1;
    v16 = v4 + 4 * byte_1003E7D38[(v11 - 3)];
    ++*(v16 + 1028);
    v17 = (v15 >> 7) + 256;
    if ((v15 & 0xFF00) == 0)
    {
      v17 = v15;
    }

    v18 = 4 * byte_1003E7B38[v17];
    ++*(v5 + v18);
    v19 = *(a1 + 5884);
    v20 = *(a1 + 5880) - 1;
    v21 = *(a1 + 144);
    v22 = *(a1 + 164) - v21;
    *(a1 + 164) = v22;
    if (v21 <= *(a1 + 176) && v22 >= 3)
    {
      *(a1 + 144) = v21 - 1;
      v23 = *(a1 + 80);
      v25 = *(a1 + 124);
      v24 = *(a1 + 128);
      v27 = *(a1 + 96);
      v26 = *(a1 + 104);
      v28 = *(a1 + 76);
      v29 = *(a1 + 112);
      v30 = v21 - 2;
      v31 = *(a1 + 156) + 1;
      do
      {
        *(a1 + 156) = v31;
        v29 = ((v29 << v24) ^ *(v23 + v31 + 2)) & v25;
        *(a1 + 112) = v29;
        *(v27 + 2 * (v28 & v31)) = *(v26 + 2 * v29);
        *(v26 + 2 * v29) = v31;
        *(a1 + 144) = v30--;
        ++v31;
      }

      while (v30 != -1);
      goto LABEL_20;
    }

    v31 = *(a1 + 156) + v21;
    *(a1 + 156) = v31;
    *(a1 + 144) = 0;
    v35 = *(a1 + 80);
    v36 = *(v35 + v31);
    *(a1 + 112) = v36;
    *(a1 + 112) = ((v36 << *(a1 + 128)) ^ *(v35 + v31 + 1)) & *(a1 + 124);
LABEL_22:
    if (v19 == v20)
    {
      v37 = *(a1 + 136);
      v38 = v37 < 0 ? 0 : (*(a1 + 80) + v37);
      sub_10015EDD0(a1, v38, v31 - v37, 0);
      *(a1 + 136) = *(a1 + 156);
      sub_10016AA64(*a1);
      if (!*(*a1 + 32))
      {
        return 0;
      }
    }
  }

  v40 = *(a1 + 136);
  if (v40 < 0)
  {
    v41 = 0;
  }

  else
  {
    v41 = (*(a1 + 80) + v40);
  }

  sub_10015EDD0(a1, v41, *(a1 + 156) - v40, a2 == 4);
  *(a1 + 136) = *(a1 + 156);
  sub_10016AA64(*a1);
  if (!*(*a1 + 32))
  {
    return 2 * (a2 == 4);
  }

  if (a2 == 4)
  {
    return 3;
  }

  return 1;
}

uint64_t sub_10016B71C(uint64_t a1, int a2)
{
  v4 = a1 + 196;
  v5 = a1 + 2488;
  while (1)
  {
    if (*(a1 + 164) >= 0x106u)
    {
      v7 = *(a1 + 144);
      v8 = *(a1 + 160);
      goto LABEL_9;
    }

    sub_10016BB70(a1);
    v6 = *(a1 + 164);
    if (!a2 && v6 < 0x106)
    {
      return 0;
    }

    if (!v6)
    {
      break;
    }

    v7 = *(a1 + 144);
    v8 = *(a1 + 160);
    if (v6 <= 2)
    {
      *(a1 + 168) = v7;
      v9 = 2;
      *(a1 + 144) = 2;
      *(a1 + 148) = v8;
      goto LABEL_19;
    }

LABEL_9:
    v10 = *(a1 + 156);
    v11 = ((*(a1 + 112) << *(a1 + 128)) ^ *(*(a1 + 80) + v10 + 2)) & *(a1 + 124);
    *(a1 + 112) = v11;
    v12 = *(a1 + 104);
    v13 = *(v12 + 2 * v11);
    *(*(a1 + 96) + 2 * (*(a1 + 76) & v10)) = v13;
    *(v12 + 2 * v11) = v10;
    *(a1 + 168) = v7;
    v9 = 2;
    *(a1 + 144) = 2;
    *(a1 + 148) = v8;
    if (!v13)
    {
      goto LABEL_19;
    }

    if (v7 < *(a1 + 176) && v10 - v13 <= *(a1 + 68) - 262)
    {
      v9 = sub_10016BDCC(a1, v13);
      *(a1 + 144) = v9;
      if (v9 <= 5)
      {
        if (*(a1 + 184) != 1)
        {
          if (v9 != 3)
          {
            goto LABEL_18;
          }

          if ((*(a1 + 156) - *(a1 + 160)) <= 0x1000)
          {
            v9 = 3;
            goto LABEL_18;
          }
        }

        v9 = 2;
        *(a1 + 144) = 2;
      }
    }

LABEL_18:
    v7 = *(a1 + 168);
LABEL_19:
    v14 = v7 - 3;
    if (v7 < 3 || v9 > v7)
    {
      if (*(a1 + 152))
      {
        v31 = *(*(a1 + 80) + (*(a1 + 156) - 1));
        v32 = *(a1 + 5884);
        *(*(a1 + 5888) + 2 * v32) = 0;
        v33 = *(a1 + 5872);
        *(a1 + 5884) = v32 + 1;
        *(v33 + v32) = v31;
        ++*(v4 + 4 * v31);
        if (*(a1 + 5884) == *(a1 + 5880) - 1)
        {
          v34 = *(a1 + 136);
          if (v34 < 0)
          {
            v35 = 0;
          }

          else
          {
            v35 = (*(a1 + 80) + v34);
          }

          sub_10015EDD0(a1, v35, *(a1 + 156) - v34, 0);
          *(a1 + 136) = *(a1 + 156);
          sub_10016AA64(*a1);
        }

        ++*(a1 + 156);
        --*(a1 + 164);
        goto LABEL_40;
      }

      v36 = *(a1 + 156) + 1;
      *(a1 + 152) = 1;
      *(a1 + 156) = v36;
      --*(a1 + 164);
    }

    else
    {
      v15 = *(a1 + 156);
      v16 = v15 + *(a1 + 164) - 3;
      v17 = v15 + ~*(a1 + 148);
      v18 = *(a1 + 5884);
      *(*(a1 + 5888) + 2 * v18) = v17;
      v19 = *(a1 + 5872);
      *(a1 + 5884) = v18 + 1;
      *(v19 + v18) = v14;
      v20 = v17 - 1;
      v21 = v4 + 4 * byte_1003E7D38[v14];
      ++*(v21 + 1028);
      v22 = (v20 >> 7) + 256;
      if ((v20 & 0xFF00) == 0)
      {
        v22 = v20;
      }

      v26 = 4 * byte_1003E7B38[v22];
      ++*(v5 + v26);
      v23 = *(a1 + 5884);
      v24 = *(a1 + 5880) - 1;
      LODWORD(v26) = *(a1 + 168);
      *(a1 + 164) = *(a1 + 164) - v26 + 1;
      *(a1 + 168) = v26 - 2;
      v25 = v26 - 3;
      LODWORD(v26) = *(a1 + 156) + 1;
      do
      {
        *(a1 + 156) = v26;
        if (v26 <= v16)
        {
          v27 = ((*(a1 + 112) << *(a1 + 128)) ^ *(*(a1 + 80) + (v26 + 2))) & *(a1 + 124);
          *(a1 + 112) = v27;
          v28 = *(a1 + 104);
          *(*(a1 + 96) + 2 * (*(a1 + 76) & v26)) = *(v28 + 2 * v27);
          *(v28 + 2 * v27) = v26;
        }

        *(a1 + 168) = v25--;
        v26 = (v26 + 1);
      }

      while (v25 != -1);
      *(a1 + 144) = 2;
      *(a1 + 152) = 0;
      *(a1 + 156) = v26;
      if (v23 == v24)
      {
        v29 = *(a1 + 136);
        if (v29 < 0)
        {
          v30 = 0;
        }

        else
        {
          v30 = (*(a1 + 80) + v29);
        }

        sub_10015EDD0(a1, v30, v26 - v29, 0);
        *(a1 + 136) = *(a1 + 156);
        sub_10016AA64(*a1);
LABEL_40:
        if (!*(*a1 + 32))
        {
          return 0;
        }
      }
    }
  }

  if (*(a1 + 152))
  {
    v38 = *(*(a1 + 80) + (*(a1 + 156) - 1));
    v39 = *(a1 + 5884);
    *(*(a1 + 5888) + 2 * v39) = 0;
    v40 = *(a1 + 5872);
    *(a1 + 5884) = v39 + 1;
    *(v40 + v39) = v38;
    ++*(v4 + 4 * v38);
    *(a1 + 152) = 0;
  }

  v41 = *(a1 + 136);
  if (v41 < 0)
  {
    v42 = 0;
  }

  else
  {
    v42 = (*(a1 + 80) + v41);
  }

  sub_10015EDD0(a1, v42, *(a1 + 156) - v41, a2 == 4);
  *(a1 + 136) = *(a1 + 156);
  sub_10016AA64(*a1);
  if (!*(*a1 + 32))
  {
    return 2 * (a2 == 4);
  }

  if (a2 == 4)
  {
    return 3;
  }

  return 1;
}

void sub_10016BB70(uint64_t *a1)
{
  v2 = *(a1 + 17);
  v3 = *(a1 + 41);
  v4 = vdup_n_s32(v2);
  while (1)
  {
    v5 = *(a1 + 39);
    v6 = *(a1 + 22) - (v3 + v5);
    if (v5 >= v2 - 262 + *(a1 + 17))
    {
      memcpy(a1[10], (a1[10] + v2), v2);
      v7 = vsub_s32(*(a1 + 156), v4);
      *(a1 + 156) = v7;
      a1[17] -= v2;
      v8 = *(a1 + 29);
      v9 = (a1[13] + 2 * v8 - 2);
      do
      {
        v10 = *v9;
        v11 = v10 >= v2;
        v12 = v10 - v2;
        if (!v11)
        {
          v12 = 0;
        }

        *v9-- = v12;
        LODWORD(v8) = v8 - 1;
      }

      while (v8);
      v13 = (a1[12] + 2 * v2 - 2);
      v14 = v2;
      do
      {
        v15 = *v13;
        v11 = v15 >= v2;
        v16 = v15 - v2;
        if (!v11)
        {
          v16 = 0;
        }

        *v13-- = v16;
        --v14;
      }

      while (v14);
      v6 += v2;
      v5 = v7;
    }

    v17 = *a1;
    v18 = *(*a1 + 8);
    if (!v18)
    {
      break;
    }

    v19 = *(a1 + 41);
    if (v18 >= v6)
    {
      v20 = v6;
    }

    else
    {
      v20 = v18;
    }

    if (!v6)
    {
      goto LABEL_23;
    }

    v21 = a1[10];
    *(v17 + 8) = v18 - v20;
    v22 = *(*(v17 + 56) + 44);
    if (v22 == 2)
    {
      v23 = sub_10015E3E8(*(v17 + 96), *v17, v20);
      goto LABEL_21;
    }

    if (v22 == 1)
    {
      v23 = sub_100136F30(*(v17 + 96), *v17, v20);
LABEL_21:
      *(v17 + 96) = v23;
    }

    memcpy((v21 + v5 + v19), *v17, v20);
    *v17 += v20;
    *(v17 + 16) += v20;
    LODWORD(v19) = *(a1 + 41);
LABEL_23:
    v3 = v19 + v20;
    *(a1 + 41) = v19 + v20;
    if ((v19 + v20) >= 3 && (v24 = a1[10], v25 = *(a1 + 39), v26 = *(v24 + v25), *(a1 + 28) = v26, *(a1 + 28) = ((v26 << *(a1 + 32)) ^ *(v24 + (v25 + 1))) & *(a1 + 31), v3 > 0x105) || !*(*a1 + 8))
    {
      v27 = a1[741];
      v28 = a1[11];
      if (v28 <= v27)
      {
        return;
      }

      v29 = *(a1 + 39) + v3;
      if (v27 >= v29)
      {
        if (v29 + 258 <= v27)
        {
          return;
        }

        if (v29 + 258 - v27 >= v28 - v27)
        {
          v32 = v28 - v27;
        }

        else
        {
          v32 = v29 + 258 - v27;
        }

        bzero((a1[10] + v27), v32);
        v31 = a1[741] + v32;
      }

      else
      {
        if (v28 - v29 >= 0x102)
        {
          v30 = 258;
        }

        else
        {
          v30 = v28 - v29;
        }

        bzero((a1[10] + v29), v30);
        v31 = v30 + v29;
      }

      a1[741] = v31;
      return;
    }
  }
}

uint64_t sub_10016BDCC(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 172);
  v3 = *(a1 + 168);
  v4 = *(a1 + 80);
  v5 = *(a1 + 156);
  v6 = (v4 + v5);
  v7 = *(a1 + 68) - 262;
  v8 = v5 >= v7;
  v9 = v5 - v7;
  if (!v8)
  {
    v9 = 0;
  }

  v10 = *(a1 + 96);
  v11 = *(a1 + 76);
  v12 = *(a1 + 164);
  v13 = v6[v3 - 1];
  v14 = v6[v3];
  v15 = *(a1 + 192);
  if (v3 >= *(a1 + 188))
  {
    v2 >>= 2;
  }

  if (v15 >= v12)
  {
    v15 = *(a1 + 164);
  }

  while (1)
  {
    v16 = (v4 + a2);
    v17 = &v16[v3];
    if (*v17 != v14 || *(v17 - 1) != v13 || *v16 != *v6 || v16[1] != v6[1])
    {
      goto LABEL_32;
    }

    v18 = 0;
    v19 = v4 + 5 + a2;
    while (1)
    {
      v20 = &v6[v18];
      if (v6[v18 + 3] != *(v19 + v18 - 2))
      {
        v26 = v20 + 3;
        goto LABEL_29;
      }

      if (v20[4] != *(v19 + v18 - 1))
      {
        v26 = v6 + v18 + 4;
        goto LABEL_29;
      }

      v21 = &v6[v18];
      if (v6[v18 + 5] != *(v19 + v18))
      {
        v26 = v21 + 5;
        goto LABEL_29;
      }

      if (v21[6] != *(v19 + v18 + 1))
      {
        v26 = v6 + v18 + 6;
        goto LABEL_29;
      }

      v22 = &v6[v18];
      if (v6[v18 + 7] != *(v19 + v18 + 2))
      {
        v26 = v22 + 7;
        goto LABEL_29;
      }

      if (v22[8] != *(v19 + v18 + 3))
      {
        v26 = v6 + v18 + 8;
        goto LABEL_29;
      }

      v23 = &v6[v18];
      if (v6[v18 + 9] != *(v19 + v18 + 4))
      {
        break;
      }

      v24 = v18 + 8;
      if ((v18 + 2) <= 0xF9)
      {
        v25 = *(v19 + v18 + 5);
        v18 += 8;
        if (v23[10] == v25)
        {
          continue;
        }
      }

      v26 = v6 + v24 + 2;
      goto LABEL_29;
    }

    v26 = v23 + 9;
LABEL_29:
    v27 = v26 - (v6 + 258);
    v28 = v26 - v6;
    if (v28 <= v3)
    {
      goto LABEL_32;
    }

    *(a1 + 160) = a2;
    if (v28 >= v15)
    {
      break;
    }

    v13 = v6[v27 + 257];
    v14 = v6[v28];
    LODWORD(v3) = v28;
LABEL_32:
    a2 = *(v10 + 2 * (a2 & v11));
    --v2;
    if (v9 >= a2 || v2 == 0)
    {
      goto LABEL_37;
    }
  }

  LODWORD(v3) = v28;
LABEL_37:
  if (v3 >= v12)
  {
    return v12;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10016BFDC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v14 = *(a3 + 24);
  if (v14)
  {
    v15 = *v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a4 + 24);
  v45 = v16;
  if (v16)
  {
    v17 = *v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a5 + 24);
  v42 = v18;
  if (v18)
  {
    v19 = *v18;
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    v19 = 0;
    if (!a2)
    {
      return result;
    }
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = a10;
  v27 = a9;
  v44 = 0;
  do
  {
    if (!v17)
    {
      ++v23;
      v22 = *(*(a4 + 16) + v23);
      v17 = v45[v23];
    }

    v28 = (result + 16 * v20);
    v29 = a13 + 2832 * v22;
    v30 = *(v28 + 6);
    ++*(v29 + 4 * v30);
    ++*(v29 + 2816);
    v31 = *v28;
    if (v31)
    {
      do
      {
        v32 = v27;
        if (!v15)
        {
          ++v25;
          v24 = *(*(a3 + 16) + v25);
          v15 = v14[v25];
        }

        v33 = v24;
        if (a11)
        {
          v34 = &byte_1003E3330[*(a11 + 4 * v24) << 9];
          v33 = (v24 << 6) + (v34[v26 + 256] | v34[v32]);
        }

        v35 = a12 + 1040 * v33;
        --v15;
        ++*(v35 + 4 * *(a6 + (a7 & a8)));
        ++*(v35 + 1024);
        v27 = *(a6 + (a7++ & a8));
        v26 = v32;
        --v31;
      }

      while (v31);
    }

    else
    {
      v32 = v26;
    }

    v36 = v28[1] & 0x1FFFFFF;
    a7 += v36;
    if (v36)
    {
      v32 = *(a6 + ((a7 - 2) & a8));
      v27 = *(a6 + ((a7 - 1) & a8));
      if (v30 >= 0x80)
      {
        if (v19)
        {
          v37 = v21;
        }

        else
        {
          v37 = *(*(a5 + 16) + ++v44);
          v19 = v42[v44];
        }

        --v19;
        v38 = v30 >> 6;
        LODWORD(v30) = v30 & 7;
        if (v30 >= 3)
        {
          v30 = 3;
        }

        else
        {
          v30 = v30;
        }

        if (v38 != 4 && v38 != 2 && v38 != 7)
        {
          v30 = 3;
        }

        v21 = v37;
        v41 = a14 + 2192 * (v30 | (4 * v37));
        ++*(v41 + 4 * (*(v28 + 7) & 0x3FF));
        ++*(v41 + 2176);
      }
    }

    --v17;
    ++v20;
    v26 = v32;
  }

  while (v20 != a2);
  return result;
}

uint64_t adler32_vec(uint64_t a1, uint64_t a2, uint8x16_t *a3, int a4)
{
  v4 = a1 + (a2 << 32);
  if (a4 >= 5552)
  {
    v5 = a4 - 5552;
    do
    {
      v6 = *a3;
      v7 = vmlal_high_u8(vmull_u8(*a3->i8, 0x90A0B0C0D0E0F10), *a3, *&qword_10016C3C0[2]);
      v6.i16[0] = vaddlvq_u8(*a3);
      v7.i32[0] = vaddlvq_u16(v7);
      ++a3;
      v8 = vadd_s32((v4 + vshld_n_s64(v4, 0x24uLL)), vzip1_s32(*v6.i8, *v7.i8));
      v9 = 173;
      do
      {
        v10 = *a3;
        v11 = a3[1];
        v12 = vshld_n_s64(v8, 0x25uLL);
        v13 = (v8 + *&v12);
        v10.i16[0] = vaddlvq_u8(*a3);
        v12.i16[0] = vaddlvq_u8(v11);
        v14 = vmlal_high_u8(vmlal_u8(vmlal_high_u8(vmull_u8(*a3->i8, 0x191A1B1C1D1E1F20), *a3, *qword_10016C3C0), *v11.i8, 0x90A0B0C0D0E0F10), v11, *&qword_10016C3C0[2]);
        v14.i32[0] = vaddlvq_u16(v14);
        a3 += 2;
        v8 = vadd_s32(v13, vzip1_s32(*&vaddl_u16(*v10.i8, v12), *v14.i8));
        v15 = __OFSUB__(v9--, 1);
      }

      while (!((v9 < 0) ^ v15 | (v9 == 0)));
      v16 = vshrq_n_u64(vmull_lane_u32(v8, 0x800780710000FFF1, 1), 0x2FuLL);
      v16.i32[1] = v16.i32[2];
      v4 = vmls_lane_s32(v8, *v16.i8, 0x800780710000FFF1, 0);
      v15 = __OFSUB__(v5, 5552);
      v5 -= 5552;
    }

    while (v5 < 0 == v15);
    a4 = v5 + 5552;
  }

  v15 = __OFSUB__(a4, 32);
  for (i = a4 - 32; i < 0 == v15; i -= 32)
  {
    v18 = *a3;
    v19 = a3[1];
    v20 = vshld_n_s64(v4, 0x25uLL);
    v21 = (v4 + *&v20);
    v18.i16[0] = vaddlvq_u8(*a3);
    v20.i16[0] = vaddlvq_u8(v19);
    v22 = vmlal_high_u8(vmlal_u8(vmlal_high_u8(vmull_u8(*a3->i8, 0x191A1B1C1D1E1F20), *a3, *qword_10016C3C0), *v19.i8, 0x90A0B0C0D0E0F10), v19, *&qword_10016C3C0[2]);
    v22.i32[0] = vaddlvq_u16(v22);
    a3 += 2;
    v4 = vadd_s32(v21, vzip1_s32(*&vaddl_u16(*v18.i8, v20), *v22.i8));
    v15 = __OFSUB__(i, 32);
  }

  if ((i & 0x10) != 0)
  {
    v23 = *a3;
    v24 = vmlal_high_u8(vmull_u8(*a3->i8, 0x90A0B0C0D0E0F10), *a3, *&qword_10016C3C0[2]);
    v23.i16[0] = vaddlvq_u8(*a3);
    v24.i32[0] = vaddlvq_u16(v24);
    ++a3;
    v4 = vadd_s32((v4 + vshld_n_s64(v4, 0x24uLL)), vzip1_s32(*v23.i8, *v24.i8));
  }

  for (j = i & 0xF; j; v4 += v26 + vshld_n_s64(v4 + v26, 0x20uLL))
  {
    v26 = a3->u8[0];
    a3 = (a3 + 1);
    --j;
  }

  v27 = vshrq_n_u64(vmull_lane_u32(v4, 0x800780710000FFF1, 1), 0x2FuLL);
  v27.i32[1] = v27.i32[2];
  v28 = vmls_lane_s32(v4, *v27.i8, 0x800780710000FFF1, 0);
  return (v28.i32[0] + (v28.i32[1] << 16));
}

uint64_t sub_10016C3F4(uint64_t a1, int a2, int a3)
{
  if (a3)
  {
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  v6 = sub_100170C68(v5, 1, a2, 0x18B940u, 0x180000u);
  *(a1 + 32) = v6;
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  result = 0;
  if (a2 == 2193)
  {
    v9 = 15000;
  }

  else
  {
    v9 = 40000;
  }

  v7[1838] = v9;
  *(v7 + 16) -= v7;
  *(v7 + 10) = 833856;
  *(v7 + 11) = 1620288;
  *(v7 + 6) = 47424;
  *(v7 + 7) = 47424;
  *(v7 + 8) = 47424;
  *(v7 + 9) = 833856;
  *(v7 + 2) = 47424;
  *(v7 + 3) = 833856;
  *(v7 + 4) = 833856;
  return result;
}

uint64_t sub_10016C4A8(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  *(v4 + 128) += v4;
  v6 = vdupq_n_s64(v4);
  *(v4 + 48) = vaddq_s64(v6, v5);
  v7 = vaddq_s64(v6, *(v4 + 80));
  *(v4 + 64) = vaddq_s64(v6, *(v4 + 64));
  *(v4 + 80) = v7;
  v28 = v6;
  v8 = vaddq_s64(v6, *(v4 + 16));
  *(v4 + 16) = v8;
  *(v4 + 32) += v4;
  v9 = v8.i64[0];
  while (1)
  {
    v10 = *(v4 + 64);
    if (*(a1 + 24) >= &v9[-v10 + 786432])
    {
      v11 = &v9[-v10 + 786432];
    }

    else
    {
      v11 = *(a1 + 24);
    }

    if (v11)
    {
      memcpy(*(v4 + 64), *(a1 + 16), v11);
      *(v4 + 64) += v11;
      v12 = *(a1 + 24) - v11;
      *(a1 + 16) += v11;
      *(a1 + 24) = v12;
    }

    v14 = *(v4 + 24);
    v13 = *(v4 + 32);
    if (v13 >= v14 + 393216)
    {
      v15 = *(v4 + 72);
      v16 = v15 - 0x40000;
      if (v13 < (v15 - 0x40000))
      {
        v16 = *(v4 + 32);
      }

      if (v16 >= v14)
      {
        v17 = v16;
      }

      else
      {
        v17 = *(v4 + 24);
      }

      if (v17 > v14)
      {
        if (v15 != v17)
        {
          memmove(*(v4 + 80), v17, v15 - v17);
          v13 = *(v4 + 32);
          v15 = *(v4 + 72);
        }

        *(v4 + 32) = v13 + v14 - v17;
        *(v4 + 72) = &v15[v14 - v17];
      }
    }

    if (!*(v4 + 40) && *(v4 + 72) < *(v4 + 88))
    {
      v18 = sub_100166FBC((v4 + 48));
      if (v18 == -1)
      {
        if (a2)
        {
LABEL_46:
          v25 = 1;
          goto LABEL_41;
        }
      }

      else if (v18 == -3)
      {
        goto LABEL_46;
      }

      if (*(v4 + 96))
      {
        *(v4 + 40) = 1;
      }
    }

    if (*(v4 + 44))
    {
      goto LABEL_40;
    }

    v19 = *(v4 + 32);
    if (*(a1 + 8) >= *(v4 + 72) - v19)
    {
      v20 = *(v4 + 72) - v19;
    }

    else
    {
      v20 = *(a1 + 8);
    }

    if (v20)
    {
      memcpy(*a1, v19, v20);
      v19 = (*(v4 + 32) + v20);
      *(v4 + 32) = v19;
      v21 = *(a1 + 8) - v20;
      *a1 += v20;
      *(a1 + 8) = v21;
    }

    if (*(v4 + 40) && v19 == *(v4 + 72))
    {
      break;
    }

    if (*(v4 + 44))
    {
LABEL_40:
      v25 = 0;
LABEL_41:
      v26 = *(v4 + 72);
      v19 = *(v4 + 32);
      goto LABEL_42;
    }

    v22 = *(v4 + 48);
    v9 = *(v4 + 16);
    if (v22 >= v9 + 393216)
    {
      v23 = *(v4 + 64);
      v24 = v23 - v22;
      if (v23 - v22 >= 1)
      {
        memmove(v9, v22, v23 - v22);
        v9 = *(v4 + 16);
      }

      *(v4 + 48) = v9;
      *(v4 + 64) = &v9[v24];
    }

    v25 = v20 | v11;
    if (!(v20 | v11))
    {
      goto LABEL_41;
    }
  }

  v25 = 0;
  *(v4 + 44) = 1;
  v26 = v19;
LABEL_42:
  *(v4 + 128) -= v4;
  *(v4 + 48) = vsubq_s64(*(v4 + 48), v28);
  *(v4 + 64) -= v4;
  *(v4 + 72) = &v26[-v4];
  *(v4 + 80) = vsubq_s64(*(v4 + 80), v28);
  *(v4 + 16) = vsubq_s64(*(v4 + 16), v28);
  *(v4 + 32) = &v19[-v4];
  if (v25)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(v4 + 44) != 0;
  }
}

uint64_t sub_10016C76C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  result = 0;
  if (a4 >= 0xC && a5)
  {
    if (*a3 != 1484404733 || *(a3 + 4) != 90)
    {
      return 0;
    }

    v12 = *(a3 + 8);
    if (v12 != sub_10016CAA8((a3 + 6), 2))
    {
      return 0;
    }

    if (*(a3 + 6))
    {
      return 0;
    }

    v13 = *(a3 + 7);
    if (v13 > 0xF)
    {
      return 0;
    }

    result = 0;
    if (*(a3 + 7) > 3u)
    {
      if (v13 == 4)
      {
        v13 = 8;
      }

      else
      {
        if (v13 != 10)
        {
          return result;
        }

        v13 = 32;
      }
    }

    else if (*(a3 + 7))
    {
      if (v13 != 1)
      {
        return result;
      }

      v13 = 4;
    }

    if (a4 < 0xD)
    {
      return 0;
    }

    v14 = 0;
    v15 = 12;
    v32 = v13;
    while (1)
    {
      v16 = (a3 + v15);
      v17 = *(a3 + v15);
      v18 = v15 + 1;
      if (!*(a3 + v15))
      {
        break;
      }

      v33 = 4 * v17 + 4;
      v34 = v14;
      v19 = v33 + v18;
      if (v33 + v18 <= a4)
      {
        v20 = v15;
        v21 = *&v16[4 * v17];
        if (v21 == sub_10016CAA8(v16, 4 * v17))
        {
          v38 = v20 + 2;
          v22 = *(a3 + v18);
          if ((v22 & 0x3F) == 0 && ((*(a3 + v18) & 0x40) == 0 || (sub_10016CAF8(a3, v19, &v38, &v37) & 0x80000000) == 0) && ((v22 & 0x80) == 0 || (sub_10016CAF8(a3, v19, &v38, &v37) & 0x80000000) == 0))
          {
            v35 = 0;
            v36 = 0;
            if ((sub_10016CAF8(a3, v19, &v38, &v36) & 0x80000000) == 0 && (sub_10016CAF8(a3, v19, &v38, &v35) & 0x80000000) == 0 && v36 == 33 && v35 == 1 && v38 < v19 && *(a3 + v38) <= 0x28u)
            {
              v23 = v33 + v20;
              v38 = 0;
              v24 = sub_10017124C(a1 + v34, a2 - v34, a3 + v23, a4 - v23, &v38, a5);
              if (v24)
              {
                if (v38)
                {
                  v15 = v23 + v32 + ((v38 + 3) & 0xFFFFFFFFFFFFFFFCLL);
                  v14 = v24 + v34;
                  if (v15 < a4)
                  {
                    continue;
                  }
                }
              }
            }
          }
        }
      }

      return 0;
    }

    v37 = 0;
    v38 = v15 + 1;
    if ((sub_10016CAF8(a3, a4, &v38, &v37) & 0x80000000) != 0)
    {
      return 0;
    }

    v25 = v37;
    if (v37)
    {
      while ((sub_10016CAF8(a3, a4, &v38, &v36) & 0x80000000) == 0 && (sub_10016CAF8(a3, a4, &v38, &v36) & 0x80000000) == 0)
      {
        if (!--v25)
        {
          goto LABEL_44;
        }
      }

      return 0;
    }

LABEL_44:
    v26 = (v38 - v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v27 = v26 + 4;
    if (&v16[v26 + 4] > a3 + a4)
    {
      return 0;
    }

    v28 = *&v16[v26];
    if (v28 != sub_10016CAA8((a3 + v15), v26))
    {
      return 0;
    }

    v29 = v27 + v15;
    if (v27 + v15 + 12 > a4)
    {
      return 0;
    }

    v30 = (a3 + v29);
    if (*(a3 + v29 + 8) != *(a3 + 6) || *(v30 + 5) != 23129)
    {
      return 0;
    }

    v31 = *v30;
    if (v31 == sub_10016CAA8(v30 + 4, 6))
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10016CAA8(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = -1;
  do
  {
    v3 = *a1++;
    v4 = dword_1003EE278[(v2 ^ v3) & 0xF];
    v2 = (v4 >> 4) ^ (v2 >> 8) ^ dword_1003EE278[(v4 ^ ((v2 ^ v3) >> 4)) & 0xF];
    --a2;
  }

  while (a2);
  return ~v2;
}

uint64_t sub_10016CAF8(uint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v4 = *a3;
  if (*a3 < a2)
  {
    if (v4 + 9 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = v4 + 9;
    }

    v6 = *(a1 + v4);
    v7 = v6 & 0x7F;
    v8 = v4 + 1;
    if ((v6 & 0x80) == 0)
    {
LABEL_6:
      result = 0;
      *a3 = v8;
      *a4 = v7;
      return result;
    }

    v10 = 7;
    while (v5 != v8)
    {
      v11 = *(a1 + v8);
      if (!v11)
      {
        break;
      }

      v7 |= (v11 & 0x7F) << v10;
      v10 += 7;
      ++v8;
      if ((v11 & 0x80) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

size_t compression_decode_scratch_buffer_size(compression_algorithm algorithm)
{
  if (algorithm - 512 >= 0xA)
  {
    v1 = algorithm;
  }

  else
  {
    v1 = COMPRESSION_ZLIB;
  }

  if (v1 - 1280 >= 0xA)
  {
    v2 = v1;
  }

  else
  {
    v2 = 1285;
  }

  if (v2 > 2192)
  {
    if (v2 > 3071)
    {
      if ((v2 - 3072) <= 0x20 && ((1 << v2) & 0x100010001) != 0)
      {
        return sub_10014B1C4(v2);
      }

      return 0;
    }

    if ((v2 - 2304) < 2)
    {
      return default argument 0 of DownloadConfiguration.init(downloadRetries:networkServiceType:alternateCDNHost:maxActiveTasks:chunkSize:)();
    }

    if (v2 != 2193)
    {
      if (v2 == 2209)
      {
        return lzfse_decode_buffer_scratch_size_iboot();
      }

      return 0;
    }

    return sub_10014F818(v2);
  }

  if (v2 > 1284)
  {
    if ((v2 - 1792) < 3)
    {
      return sub_10014B15C();
    }

    if ((v2 - 2049) >= 2)
    {
      if (v2 != 1285)
      {
        return 0;
      }

      return sub_1001380A8();
    }

    return sub_10014F818(v2);
  }

  switch(v2)
  {
    case 517:
      return sub_1001380A8();
    case 774:
      return sub_10016CAA0();
    case 1031:
      return sub_10014B518();
  }

  return 0;
}

size_t compression_encode_scratch_buffer_size(compression_algorithm algorithm)
{
  if ((algorithm ^ 0xA00) >= 0x100)
  {
    v1 = algorithm;
  }

  else
  {
    v1 = 2584;
  }

  if (v1 - 512 >= 0xA)
  {
    v2 = v1;
  }

  else
  {
    v2 = 517;
  }

  if ((v2 - 1280) >= 0xA)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1285;
  }

  if (v3 > 2048)
  {
    if (v3 <= 2303)
    {
      if ((v3 - 2049) < 2 || v3 == 2193 || v3 == 2209)
      {
        return sub_10014AE18(v3);
      }

      return 0;
    }

    if ((v3 - 3072) <= 0x20 && ((1 << v3) & 0x100010001) != 0)
    {
      return sub_10014B198(v3);
    }

    if ((v3 - 2304) < 2)
    {
      return sub_100136794(v3);
    }

    if (v3 != 2584)
    {
      return 0;
    }

    return sub_10013B078();
  }

  else
  {
    if (v3 > 1284)
    {
      if ((v3 - 1536) < 3)
      {
        return sub_10014B0D0(v3 & 0xF);
      }

      if ((v3 - 1792) < 3)
      {
        return sub_10014B164(v3 & 0xF);
      }

      if (v3 != 1285)
      {
        return 0;
      }

      return sub_100134D5C();
    }

    if (v3 <= 773)
    {
      if ((v3 - 256) < 2)
      {
        return 0x8000;
      }

      if (v3 != 517)
      {
        return 0;
      }

      return sub_100134D5C();
    }

    if (v3 != 774)
    {
      return 0;
    }

    return default argument 0 of DownloadConfiguration.init(downloadRetries:networkServiceType:alternateCDNHost:maxActiveTasks:chunkSize:)();
  }
}

size_t compression_encode_buffer(uint8_t *dst_buffer, size_t dst_size, const uint8_t *src_buffer, size_t src_size, void *scratch_buffer, compression_algorithm algorithm)
{
  v6 = algorithm;
  if ((algorithm ^ 0xA00) >= 0x100)
  {
    v11 = algorithm;
  }

  else
  {
    v11 = 2584;
  }

  if (v11 - 2816 >= 0xA)
  {
    v12 = 2;
  }

  else
  {
    v12 = v11 & 0xF;
  }

  if (v11 - 2816 < 0xA)
  {
    v11 = COMPRESSION_BROTLI;
  }

  if (v11 - 512 >= 0xA)
  {
    v13 = 5;
  }

  else
  {
    v13 = v11 & 0xF;
  }

  if (v11 - 512 < 0xA)
  {
    v11 = COMPRESSION_ZLIB;
  }

  if (v11 - 1280 >= 0xA)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11 & 0xF;
  }

  if (v11 - 1280 >= 0xA)
  {
    v15 = v11;
  }

  else
  {
    v15 = 1285;
  }

  v16 = compression_encode_scratch_buffer_size(v15);
  v17 = v16;
  if (scratch_buffer)
  {
    v18 = 1;
  }

  else
  {
    v18 = v16 == 0;
  }

  v19 = v18;
  if (!v18)
  {
    scratch_buffer = malloc(v16);
    if (!scratch_buffer)
    {
      return 0;
    }
  }

  v31 = v19;
  v20 = 0;
  if (v15 <= 2048)
  {
    if (v15 <= 1284)
    {
      if (v15 <= 516)
      {
        if (v15 == 256)
        {
          v21 = sub_10013D67C(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer);
        }

        else
        {
          if (v15 != 257)
          {
            goto LABEL_66;
          }

          v21 = sub_100137F04(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer);
        }

        goto LABEL_65;
      }

      if (v15 != 517)
      {
        if (v15 != 774)
        {
          goto LABEL_66;
        }

        v21 = sub_10015E31C(dst_buffer, dst_size, src_buffer, src_size);
        goto LABEL_65;
      }

      v23 = dst_buffer;
      v24 = dst_size;
      v25 = src_buffer;
      v26 = src_size;
      v27 = scratch_buffer;
      v28 = v14;
      v29 = 0;
    }

    else
    {
      if ((v15 - 1536) < 3)
      {
        v21 = sub_10014B094(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v15 & 0xF);
        goto LABEL_65;
      }

      if ((v15 - 1792) < 3)
      {
        v21 = sub_10014B120(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v15 & 0xF);
LABEL_65:
        v20 = v21;
        goto LABEL_66;
      }

      if (v15 != 1285)
      {
        goto LABEL_66;
      }

      v23 = dst_buffer;
      v24 = dst_size;
      v25 = src_buffer;
      v26 = src_size;
      v27 = scratch_buffer;
      v28 = v14;
      v29 = 1;
    }

    v21 = sub_100134D68(v23, v24, v25, v26, v27, v28, v29);
    goto LABEL_65;
  }

  if (v15 > 2583)
  {
    if ((v15 - 3072) > 0x20 || ((1 << v15) & 0x100010001) == 0)
    {
      if (v15 == 2584)
      {
        v21 = sub_10013B084(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v6);
      }

      else
      {
        if (v15 != 2818)
        {
          goto LABEL_66;
        }

        v21 = sub_1001343AC(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v12);
      }
    }

    else
    {
      v21 = sub_10014B1D4(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v15);
    }

    goto LABEL_65;
  }

  if (v15 > 2208)
  {
    if ((v15 - 2304) < 2)
    {
      v21 = sub_1001367A8(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v15);
      goto LABEL_65;
    }

    if (v15 != 2209)
    {
      goto LABEL_66;
    }

LABEL_60:
    v21 = sub_10014AE58(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v15);
    goto LABEL_65;
  }

  if ((v15 - 2049) < 2 || v15 == 2193)
  {
    goto LABEL_60;
  }

LABEL_66:
  if ((v31 & 1) == 0)
  {
    memset_s(scratch_buffer, v17, 0, v17);
    free(scratch_buffer);
  }

  return v20;
}

size_t compression_decode_buffer(uint8_t *dst_buffer, size_t dst_size, const uint8_t *src_buffer, size_t src_size, void *scratch_buffer, compression_algorithm algorithm)
{
  if ((algorithm ^ 0xA00) >= 0x100)
  {
    v11 = algorithm;
  }

  else
  {
    v11 = 2584;
  }

  if (v11 - 2816 < 0xA)
  {
    v11 = COMPRESSION_BROTLI;
  }

  if (v11 - 512 < 0xA)
  {
    v11 = COMPRESSION_ZLIB;
  }

  if (v11 - 1280 >= 0xA)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1285;
  }

  v13 = compression_decode_scratch_buffer_size(v12);
  v16 = v13;
  if (scratch_buffer)
  {
    v17 = 1;
  }

  else
  {
    v17 = v13 == 0;
  }

  v18 = v17;
  if (!v17)
  {
    scratch_buffer = malloc(v13);
    if (!scratch_buffer)
    {
      return 0;
    }
  }

  v19 = 0;
  if (v12 <= 2048)
  {
    if (v12 <= 1284)
    {
      if (v12 <= 516)
      {
        if (v12 == COMPRESSION_LZ4)
        {
          v20 = sub_100144EF0(dst_buffer, dst_size, src_buffer, src_size);
        }

        else
        {
          if (v12 != COMPRESSION_LZ4_RAW)
          {
            goto LABEL_60;
          }

          v20 = sub_100138008(dst_buffer, dst_size, src_buffer, src_size);
        }

        goto LABEL_59;
      }

      if (v12 != COMPRESSION_ZLIB)
      {
        if (v12 == COMPRESSION_LZMA)
        {
          v19 = sub_10016C76C(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer);
          if (v19)
          {
            goto LABEL_60;
          }

          v20 = sub_10015E2C0(dst_buffer, dst_size, src_buffer, src_size);
        }

        else
        {
          if (v12 != 1031)
          {
            goto LABEL_60;
          }

          v20 = sub_10014B524(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer);
        }

        goto LABEL_59;
      }

      v22 = dst_buffer;
      v23 = dst_size;
      v24 = src_buffer;
      v25 = src_size;
      v26 = scratch_buffer;
      v27 = 0;
      goto LABEL_57;
    }

    if (v12 - 1536 < 3)
    {
      v20 = sub_10014B060(dst_buffer, dst_size, src_buffer, src_size, v14);
    }

    else
    {
      if (v12 - 1792 >= 3)
      {
        if (v12 != 1285)
        {
          goto LABEL_60;
        }

        v22 = dst_buffer;
        v23 = dst_size;
        v24 = src_buffer;
        v25 = src_size;
        v26 = scratch_buffer;
        v27 = 1;
LABEL_57:
        v20 = sub_1001380B4(v22, v23, v24, v25, v26, v27);
        goto LABEL_59;
      }

      v20 = sub_10014B0EC(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v14, v15);
    }

LABEL_59:
    v19 = v20;
    goto LABEL_60;
  }

  if (v12 > 2583)
  {
    if (v12 - 3072 > 0x20 || ((1 << v12) & 0x100010001) == 0)
    {
      if (v12 == 2584)
      {
        v20 = sub_100134FB4(dst_buffer, dst_size, src_buffer, src_size);
      }

      else
      {
        if (v12 != COMPRESSION_BROTLI)
        {
          goto LABEL_60;
        }

        v20 = sub_100134364(dst_buffer, dst_size, src_buffer, src_size);
      }
    }

    else
    {
      v20 = sub_10014B23C(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v12);
    }

    goto LABEL_59;
  }

  if (v12 > 2208)
  {
    if (v12 - 2304 >= 2)
    {
      if (v12 != 2209)
      {
        goto LABEL_60;
      }

      v20 = lzfse_decode_buffer_iboot(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer);
    }

    else
    {
      v20 = lzvn_decode_buffer(dst_buffer, dst_size, src_buffer, src_size);
    }

    goto LABEL_59;
  }

  if (v12 - 2049 < 2 || v12 == 2193)
  {
    v20 = sub_10014F82C(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v12);
    goto LABEL_59;
  }

LABEL_60:
  if ((v18 & 1) == 0)
  {
    memset_s(scratch_buffer, v16, 0, v16);
    free(scratch_buffer);
  }

  return v19;
}

unint64_t sub_10016D458(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  v33 = 0;
  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  sub_10013D158(a1, a2, &v33, v40, v39);
  v8 = v33;
  if (v33)
  {
    v9 = v40;
    do
    {
      v10 = *v9++;
      ++*(v34 + v10);
      --v8;
    }

    while (v8);
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  while (!*(v34 + v13))
  {
LABEL_8:
    if (++v13 == 18)
    {
      goto LABEL_11;
    }
  }

  if (!v12)
  {
    v12 = 1;
    v11 = v13;
    goto LABEL_8;
  }

  v12 = 2;
LABEL_11:
  v14 = 18;
  sub_10013CB14(v34, 18, 5, a3, v37);
  result = sub_10013D55C(v37, 18, v36);
  if (v12 >= 2)
  {
    v16 = &dword_100000010 + 1;
    while (!*(v37 + byte_1003F2E60[v16]))
    {
      if (--v16 == -1)
      {
        v14 = 0;
        goto LABEL_17;
      }
    }

    v14 = v16 + 1;
  }

LABEL_17:
  v17 = 2;
  if (!BYTE3(v37[0]))
  {
    v17 = 3;
  }

  if (BYTE1(v37[0]) | BYTE2(v37[0]))
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  v19 = *a4;
  *(a5 + (*a4 >> 3)) = (v18 << (*a4 & 7)) | *(a5 + (*a4 >> 3));
  v20 = v19 + 2;
  *a4 = v20;
  v21 = v14 - v18;
  if (v14 > v18)
  {
    v22 = &byte_1003F2E60[v18];
    do
    {
      v23 = *v22++;
      v24 = *(v37 + v23);
      v25 = byte_1003F2E78[v24];
      result = v20 & 7;
      *(a5 + (v20 >> 3)) = (byte_1003F2E72[v24] << (v20 & 7)) | *(a5 + (v20 >> 3));
      v20 += v25;
      --v21;
    }

    while (v21);
    *a4 = v20;
  }

  if (v12 == 1)
  {
    *(v37 + v11) = 0;
  }

  v26 = v33;
  if (v33)
  {
    v27 = v39;
    v28 = v40;
    while (1)
    {
      v30 = *v28++;
      v29 = v30;
      v31 = *(v37 + v30);
      result = *(a5 + (v20 >> 3));
      *(a5 + (v20 >> 3)) = (v36[v30] << (v20 & 7)) | result;
      v20 += v31;
      if (v30 == 16)
      {
        break;
      }

      if (v29 == 17)
      {
        v32 = 3;
LABEL_34:
        result = v20 & 7;
        *(a5 + (v20 >> 3)) = (*v27 << (v20 & 7)) | *(a5 + (v20 >> 3));
        v20 += v32;
      }

      ++v27;
      if (!--v26)
      {
        *a4 = v20;
        return result;
      }
    }

    v32 = 2;
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_10016D708(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v89 = 0u;
  v90 = 0u;
  if (!a3)
  {
    goto LABEL_9;
  }

  v14 = 0;
  v15 = 0;
  v16 = 8;
  do
  {
    v17 = *(a2 + 4 * v15);
    if (v17)
    {
      if (v14 <= 3)
      {
        *(&v89 + v14) = v15;
      }

      ++v14;
      a3 -= v17;
    }

    ++v15;
    v16 += 16;
  }

  while (a3);
  v18 = v14 - 1;
  if (v14 <= 1)
  {
LABEL_9:
    v19 = *a7;
    *(a8 + (*a7 >> 3)) = (1 << (*a7 & 7)) | *(a8 + (*a7 >> 3));
    v19 += 4;
    *a7 = v19;
    v20 = v89;
    *(a8 + (v19 >> 3)) = (v89 << (v19 & 7)) | *(a8 + (v19 >> 3));
    *a7 = v19 + a4;
    a5[v20] = 0;
    *(a6 + 2 * v20) = 0;
    return result;
  }

  v88 = result;
  bzero(a5, v15);
  result = sub_100166C7C(v88);
  if (!*(v88 + 24))
  {
    v21 = result;
    v87 = a6;
    v22 = 1;
    do
    {
      if (v15)
      {
        v23 = v15 - 1;
        v24 = v21;
        do
        {
          v25 = *(a2 + 4 * v23);
          if (v25)
          {
            if (v25 < v22)
            {
              v25 = v22;
            }

            *v24 = v25;
            *(v24 + 4) = -1;
            *(v24 + 6) = v23;
            v24 += 8;
          }

          --v23;
        }

        while (v23 != -1);
      }

      else
      {
        v24 = v21;
      }

      v26 = ((v24 - v21) >> 3);
      if (v26 > 0xC)
      {
        v32 = 2 * (v26 < 0x39);
        do
        {
          v33 = qword_1003E2A10[v32];
          if (v33 < v26)
          {
            v34 = 0;
            v35 = qword_1003E2A10[v32];
            do
            {
              v36 = *(v21 + 8 * v35);
              v37 = v35;
              if (v35 >= v33)
              {
                v38 = v34;
                v39 = v35;
                while (*(v21 + v38) > v36)
                {
                  v37 = v39 - v33;
                  *(v21 + 8 * v39) = *(v21 + v38);
                  v38 -= 8 * v33;
                  v39 = v37;
                  if (v37 < v33)
                  {
                    goto LABEL_38;
                  }
                }

                v37 = v39;
              }

LABEL_38:
              *(v21 + 8 * v37) = v36;
              ++v35;
              v34 += 8;
            }

            while (v35 != v26);
          }

          ++v32;
        }

        while (v32 != 6);
      }

      else if (v26 >= 2)
      {
        v27 = 0;
        for (i = 1; i != v26; ++i)
        {
          v29 = *(v21 + 8 * i);
          v30 = v27;
          v31 = i;
          do
          {
            if (*(v21 + v30) <= v29)
            {
              break;
            }

            *(v21 + 8 * v31) = *(v21 + v30);
            v30 -= 8;
            --v31;
          }

          while (v31);
          *(v21 + 8 * v31) = v29;
          v27 += 8;
        }
      }

      v40 = (v24 - v21) >> 3;
      *v24 = -1;
      *(v24 + 8) = -1;
      if (v40 >= 2)
      {
        v41 = 0;
        v42 = v40 + 1;
        v43 = (v24 + 16);
        v44 = v40 + 1;
        do
        {
          v45 = *(v21 + 8 * v41);
          v46 = *(v21 + 8 * v42);
          v47 = v45 > v46;
          if (v45 > v46)
          {
            v48 = v41;
          }

          else
          {
            v48 = v41 + 1;
          }

          if (v47)
          {
            v49 = v42 + 1;
          }

          else
          {
            v49 = v42;
          }

          if (v47)
          {
            v50 = v42;
          }

          else
          {
            v50 = v41;
          }

          v51 = *(v21 + 8 * v48);
          v52 = *(v21 + 8 * v49);
          v53 = v51 > v52;
          if (v51 > v52)
          {
            v41 = v48;
          }

          else
          {
            v41 = v48 + 1;
          }

          if (v53)
          {
            v42 = v49 + 1;
          }

          else
          {
            v42 = v49;
          }

          if (v53)
          {
            v48 = v49;
          }

          *(v43 - 2) = *(v21 + 8 * v48) + *(v21 + 8 * v50);
          *(v43 - 2) = v50;
          *(v43 - 1) = v48;
          *v43++ = -1;
          --v44;
        }

        while (v44 > 2);
      }

      v22 *= 2;
    }

    while (!sub_10013CA54(2 * v40 - 1, v21, a5, 14));
    sub_100166DB4(v88, v21);
    result = sub_10013D55C(a5, v15, v87);
    if (v14 <= 4)
    {
      v54 = 0;
      v55 = *a7;
      *(a8 + (*a7 >> 3)) = (1 << (*a7 & 7)) | *(a8 + (*a7 >> 3));
      *a7 = v55 + 2;
      *(a8 + ((v55 + 2) >> 3)) = (v18 << ((v55 + 2) & 7)) | *(a8 + ((v55 + 2) >> 3));
      v56 = v55 + 4;
      *a7 = v56;
      v57 = &v89 + 8;
      do
      {
        v58 = v54 + 1;
        if (v54 + 1 < v14)
        {
          v59 = *(&v89 + v54);
          v60 = v57;
          v61 = v18;
          do
          {
            v62 = *v60;
            result = a5[v59];
            if (a5[*v60] < result)
            {
              *v60 = v59;
              *(&v89 + v54) = v62;
              v59 = v62;
            }

            ++v60;
            --v61;
          }

          while (v61);
        }

        --v18;
        v57 += 8;
        ++v54;
      }

      while (v58 != v14);
      v63 = v89;
      v64 = v56 >> 3;
      v65 = v89 << (v56 & 7);
      v66 = v56 + a4;
      v67 = (v56 + a4) >> 3;
      v68 = v66 & 7;
      v69 = v66 + a4;
      if (v14 == 3)
      {
        *(a8 + v64) = v65 | *(a8 + v64);
        *a7 = v66;
        v83 = v90;
        *(a8 + v67) = (*(&v89 + 1) << v68) | *(a8 + v67);
        *a7 = v69;
        *(a8 + (v69 >> 3)) = (v83 << (v69 & 7)) | *(a8 + (v69 >> 3));
        v69 += a4;
      }

      else
      {
        *(a8 + v64) = v65 | *(a8 + v64);
        *a7 = v66;
        if (v14 == 2)
        {
          *(a8 + v67) = (*(&v89 + 1) << v68) | *(a8 + v67);
        }

        else
        {
          v84 = v90;
          *(a8 + v67) = (*(&v89 + 1) << v68) | *(a8 + v67);
          *a7 = v69;
          *(a8 + (v69 >> 3)) = (v84 << (v69 & 7)) | *(a8 + (v69 >> 3));
          v85 = v69 + a4;
          *a7 = v85;
          *(a8 + (v85 >> 3)) = (*(&v90 + 1) << (v85 & 7)) | *(a8 + (v85 >> 3));
          v86 = v85 + a4;
          *a7 = v86;
          *(a8 + (v86 >> 3)) = ((a5[v63] == 1) << (v86 & 7)) | *(a8 + (v86 >> 3));
          v69 = v86 + 1;
        }
      }

      *a7 = v69;
      return result;
    }

    v70 = *a7;
    *(a8 + (*a7 >> 3)) = (0xFF55555554 << (*a7 & 7)) | *(a8 + (*a7 >> 3));
    v71 = v70 + 40;
    *a7 = v71;
    if (!v15)
    {
      return result;
    }

    v72 = 0;
    result = 8;
    do
    {
      v73 = a5[v72];
      if (v72 + 1 >= v15)
      {
        ++v72;
        v75 = 1;
        if (!v73)
        {
          goto LABEL_90;
        }
      }

      else
      {
        v74 = v72 - v15 + 1;
        v75 = 1;
        while (a5[v72 + v75] == v73)
        {
          ++v75;
          if (__CFADD__(v74++, 1))
          {
            v75 = v15 - v72;
            break;
          }
        }

        v72 += v75;
        if (!v73)
        {
LABEL_90:
          v80 = dword_1003EE300[v75];
          *(a8 + (v71 >> 3)) = (qword_1003EEE00[v75] << (v71 & 7)) | *(a8 + (v71 >> 3));
          v71 += v80;
          goto LABEL_93;
        }
      }

      if (result != v73)
      {
        v77 = byte_1003F0400[v73];
        *(a8 + (v71 >> 3)) = (dword_1003F0414[v73] << (v71 & 7)) | *(a8 + (v71 >> 3));
        v71 += v77;
        *a7 = v71;
        --v75;
      }

      if (v75 > 2)
      {
        v81 = v75 - 3;
        v82 = dword_1003F045C[v75 - 3];
        *(a8 + (v71 >> 3)) = (qword_1003F0F60[v81] << (v71 & 7)) | *(a8 + (v71 >> 3));
        v71 += v82;
      }

      else
      {
        if (!v75)
        {
          result = v73;
          continue;
        }

        v78 = byte_1003F0400[v73];
        v79 = dword_1003F0414[v73];
        do
        {
          *(a8 + (v71 >> 3)) = (v79 << (v71 & 7)) | *(a8 + (v71 >> 3));
          v71 += v78;
          --v75;
        }

        while (v75);
      }

      result = v73;
LABEL_93:
      *a7 = v71;
    }

    while (v72 < v15);
  }

  return result;
}

uint64_t sub_10016DE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7, uint64_t a8, unsigned int *a9, unsigned int a10, uint64_t a11, uint64_t a12, unint64_t *a13, unint64_t *a14, uint64_t a15)
{
  v15 = a8;
  LODWORD(v92) = a6;
  v19 = a14;
  v20 = a9[19];
  v95 = a9[18];
  sub_10016E7A4(a8, a4, a14, a15);
  result = sub_100166C7C(a1);
  if (!*(a1 + 24))
  {
    v22 = result;
    v23 = a13;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v127 = 0u;
    v126 = 0u;
    v125 = 0u;
    v124 = 0u;
    v123 = 0u;
    v122 = 0u;
    v121 = 0u;
    v120 = 0u;
    v119 = 0u;
    v118 = 0u;
    v117 = 0u;
    v116 = 0u;
    v115 = 0u;
    v114 = 0u;
    memset(v106, 0, sizeof(v106));
    v105 = 0u;
    *v104 = 0u;
    memset(v98, 0, sizeof(v98));
    v96 = 0u;
    v97 = 0u;
    v25 = a13[2];
    v24 = a13[3];
    v26 = *a13;
    v27 = a13[1];
    v112[0] = 256;
    v112[1] = v26;
    v112[2] = v25;
    v112[3] = v24;
    v142 = 0;
    v112[4] = v27;
    v113 = xmmword_1003760E0;
    v143 = 0;
    if (v27)
    {
      v28 = *v24;
    }

    else
    {
      v28 = 0;
    }

    v144 = v28;
    v145 = 0;
    v147 = 0;
    v146 = 0;
    v30 = a13[8];
    v29 = a13[9];
    v31 = a13[6];
    v32 = a13[7];
    v104[0] = 704;
    v104[1] = v31;
    *&v105 = v30;
    *(&v105 + 1) = v29;
    *&v106[0] = v32;
    *(v106 + 8) = xmmword_1003760E0;
    v107 = 0;
    if (v32)
    {
      v33 = *v29;
    }

    else
    {
      v33 = 0;
    }

    v108 = v33;
    v109 = 0;
    v111 = 0;
    v110 = 0;
    v35 = a13[14];
    v34 = a13[15];
    v36 = a13[12];
    v37 = a13[13];
    *&v96 = v20;
    *(&v96 + 1) = v36;
    *&v97 = v35;
    *(&v97 + 1) = v34;
    *&v98[0] = v37;
    *(v98 + 8) = xmmword_1003760E0;
    v99 = 0;
    if (v37)
    {
      v38 = *v34;
    }

    else
    {
      v38 = 0;
    }

    v100 = v38;
    v101 = 0;
    v103 = 0;
    v102 = 0;
    sub_10016E8DC(v112, result, a14, a15);
    sub_10016E8DC(v104, v22, a14, a15);
    sub_10016E8DC(&v96, v22, a14, a15);
    v39 = *a14;
    v40 = a9[16];
    v41 = a9[17];
    *(a15 + (*a14 >> 3)) = (v40 << (*a14 & 7)) | *(a15 + (*a14 >> 3));
    *a14 = v39 + 2;
    *(a15 + ((v39 + 2) >> 3)) = ((v41 >> v40) << ((v39 + 2) & 7)) | *(a15 + ((v39 + 2) >> 3));
    v42 = v39 + 6;
    *a14 = v42;
    if (*a13)
    {
      v43 = 0;
      do
      {
        *(a15 + (v42 >> 3)) = (a10 << (v42 & 7)) | *(a15 + (v42 >> 3));
        v42 += 2;
        *a14 = v42;
        ++v43;
      }

      while (v43 < *a13);
    }

    v44 = a13[19];
    if (v44)
    {
      result = sub_10016ED7C(a1, a13[18], v44, a13[23], v22, a14, a15);
      if (*(a1 + 24))
      {
        return result;
      }
    }

    else
    {
      sub_10016EB60(a13[23], 6uLL, v22, a14, a15);
    }

    v45 = a13[21];
    if (v45)
    {
      result = sub_10016ED7C(a1, a13[20], v45, a13[27], v22, a14, a15);
      if (*(a1 + 24))
      {
        return result;
      }
    }

    else
    {
      sub_10016EB60(a13[27], 2uLL, v22, a14, a15);
    }

    v85 = v15;
    v47 = a13[22];
    v46 = a13[23];
    if (v112[0] * v46)
    {
      v146 = sub_100166C7C(a1);
      result = sub_100166C7C(a1);
    }

    else
    {
      result = 0;
      v146 = 0;
    }

    v147 = result;
    v48 = *(a1 + 24);
    v91 = a1;
    if (v46 && !v48)
    {
      for (i = 0; i != v46; ++i)
      {
        result = sub_10016FB84(v47, v112[0], 256, v22, (v146 + v112[0] * i), v147 + 2 * v112[0] * i, a14, a15);
        v47 += 1040;
      }

      a1 = v91;
      v48 = *(v91 + 24);
    }

    if (!v48)
    {
      v51 = a13[24];
      v50 = a13[25];
      if (v104[0] * v50)
      {
        v110 = sub_100166C7C(a1);
        result = sub_100166C7C(a1);
        v52 = *(a1 + 24);
      }

      else
      {
        v52 = 0;
        result = 0;
        v110 = 0;
      }

      v111 = result;
      if (v50 && !v52)
      {
        for (j = 0; j != v50; ++j)
        {
          result = sub_10016FB84(v51, v104[0], 704, v22, (v110 + v104[0] * j), v111 + 2 * v104[0] * j, a14, a15);
          v51 += 2832;
        }

        a1 = v91;
        v52 = *(v91 + 24);
      }

      if (!v52)
      {
        result = sub_10016F47C(a1, &v96, a13[26], a13[27], v95, v22, a14, a15);
        if (!*(a1 + 24))
        {
          sub_100166DB4(a1, v22);
          if (a12)
          {
            v54 = 0;
            v92 = v92;
            v55 = a7;
            do
            {
              v90 = v54;
              v56 = (a11 + 16 * v54);
              v57 = *v56;
              v58 = v56[1];
              v86 = *(v56 + 7);
              v87 = v56[2];
              v88 = *(v56 + 6);
              sub_10016F560(v104, v88, v19, a15);
              LOWORD(v59) = v57;
              if (v57 >= 6)
              {
                if (v57 > 0x81)
                {
                  if (v57 > 0x841)
                  {
                    v61 = 22;
                    if (v57 >= 0x5842)
                    {
                      v61 = 23;
                    }

                    LOWORD(v59) = 21;
                    if (v57 >> 1 >= 0xC21)
                    {
                      LOWORD(v59) = v61;
                    }
                  }

                  else
                  {
                    LODWORD(v59) = (__clz(v57 - 66) ^ 0x1F) + 10;
                  }
                }

                else
                {
                  v60 = (__clz(v57 - 2) ^ 0x1F) - 1;
                  v59 = ((v57 - 2) >> v60) + 2 * v60 + 2;
                }
              }

              v89 = v58 & 0x1FFFFFF;
              v62 = (v58 & 0x1FFFFFF) + (HIBYTE(v58) & 0x80 | (v58 >> 25));
              if (v62 > 9)
              {
                v64 = a5;
                if (v62 > 0x85)
                {
                  LODWORD(v63) = (__clz(v62 - 70) ^ 0x1F) + 12;
                  if (v62 > 0x845)
                  {
                    LOWORD(v63) = 23;
                  }
                }

                else
                {
                  v65 = (__clz(v62 - 6) ^ 0x1F) - 1;
                  v63 = ((v62 - 6) >> v65) + 2 * v65 + 4;
                }
              }

              else
              {
                LOWORD(v63) = v58 + (HIBYTE(v58) & 0x80 | (v58 >> 25)) - 2;
                v64 = a5;
              }

              v66 = v59;
              v67 = dword_10037C994[v66];
              v68 = v63;
              v69 = ((v62 - *(&unk_10037C9F4 + v68 * 4)) << v67) | (v57 - *(&unk_10037C934 + v66 * 4));
              v70 = dword_10037CA54[v68] + v67;
              v71 = *v19;
              *(a15 + (*v19 >> 3)) = (v69 << (*v19 & 7)) | *(a15 + (*v19 >> 3));
              *v19 = v71 + v70;
              if (v23[19])
              {
                v72 = v64;
                v73 = v55;
                v74 = v23;
                v75 = v92;
                if (v57)
                {
                  do
                  {
                    v73 = v75;
                    v76 = byte_1003E3330[512 * a10 + 256 + v55] | byte_1003E3330[512 * a10 + v75];
                    v75 = *(a2 + (a3 & v72));
                    sub_10016F6EC(v112, v75, v76, v23[18], a14, a15, 6);
                    ++a3;
                    v55 = v73;
                    --v57;
                  }

                  while (v57);
                }
              }

              else
              {
                if (v57)
                {
                  do
                  {
                    sub_10016F560(v112, *(a2 + (a3++ & v64)), v19, a15);
                    --v57;
                  }

                  while (v57);
                }

                v73 = v55;
                v74 = v23;
                v75 = v92;
              }

              v92 = v75;
              a3 += v89;
              a1 = v91;
              v23 = v74;
              v19 = a14;
              if (v89)
              {
                v73 = *(a2 + ((a3 - 2) & a5));
                v92 = *(a2 + ((a3 - 1) & a5));
                if (v88 >= 0x80)
                {
                  if (v23[21])
                  {
                    v77 = v88 >> 6;
                    if ((v88 & 7u) >= 3)
                    {
                      v78 = 3;
                    }

                    else
                    {
                      v78 = v88 & 7;
                    }

                    if (v77 == 4 || v77 == 2 || v77 == 7)
                    {
                      v81 = v78;
                    }

                    else
                    {
                      v81 = 3;
                    }

                    v82 = v86;
                    sub_10016F6EC(&v96, v86 & 0x3FF, v81, v23[20], a14, a15, 2);
                  }

                  else
                  {
                    v82 = v86;
                    sub_10016F560(&v96, v86 & 0x3FF, a14, a15);
                  }

                  v83 = *a14;
                  *(a15 + (*a14 >> 3)) = (v87 << (*a14 & 7)) | *(a15 + (*a14 >> 3));
                  *a14 = v83 + (v82 >> 10);
                }
              }

              v54 = v90 + 1;
              v55 = v73;
            }

            while (v90 + 1 != a12);
          }

          sub_100166DB4(a1, v102);
          v102 = 0;
          sub_100166DB4(a1, v103);
          v103 = 0;
          sub_100166DB4(a1, v110);
          v110 = 0;
          sub_100166DB4(a1, v111);
          v111 = 0;
          sub_100166DB4(a1, v146);
          v146 = 0;
          result = sub_100166DB4(a1, v147);
          if (v85)
          {
            v84 = *v19 + 7;
            *v19 = v84 & 0xFFFFFFF8;
            *(a15 + (v84 >> 3)) = 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10016E7A4(uint64_t result, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  *(a4 + (*a3 >> 3)) = (result << (*a3 & 7)) | *(a4 + (*a3 >> 3));
  v5 = v4 + 1;
  *a3 = v4 + 1;
  if (result)
  {
    *(a4 + (v5 >> 3)) = *(a4 + (v5 >> 3));
    *a3 = v4 + 2;
    if (a2 == 1 || (v6 = __clz(a2 - 1) ^ 0x1F, v6 <= 0xE))
    {
      v7 = 4;
    }

    else
    {
      v7 = (v6 + 4) >> 2;
    }

    *(a4 + ((v4 + 2) >> 3)) = ((v7 - 4) << ((v4 + 2) & 7)) | *(a4 + ((v4 + 2) >> 3));
    v10 = v4 + 4;
    *a3 = v10;
    *(a4 + (v10 >> 3)) = ((a2 - 1) << (v10 & 7)) | *(a4 + (v10 >> 3));
    v11 = v10 + 4 * v7;
  }

  else
  {
    if (a2 == 1 || (v8 = __clz(a2 - 1) ^ 0x1F, v8 <= 0xE))
    {
      v9 = 4;
    }

    else
    {
      v9 = (v8 + 4) >> 2;
    }

    *(a4 + (v5 >> 3)) = ((v9 - 4) << (v5 & 7)) | *(a4 + (v5 >> 3));
    v12 = v4 + 3;
    *a3 = v12;
    *(a4 + (v12 >> 3)) = ((a2 - 1) << (v12 & 7)) | *(a4 + (v12 >> 3));
    v13 = v12 + 4 * v9;
    *a3 = v13;
    *(a4 + (v13 >> 3)) = *(a4 + (v13 >> 3));
    v11 = v13 + 1;
  }

  *a3 = v11;
  return result;
}

uint64_t sub_10016E8DC(void *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[1];
  v10 = a1[2];
  bzero(v40, 4 * (v9 + 2));
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  if (v8)
  {
    v11 = 0;
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = v10[v11];
      if (v11)
      {
        if (v12 == v14)
        {
          v15 = 0;
        }

        else
        {
          v15 = v14 + 2;
        }

        if (v13 + 1 == v14)
        {
          v15 = 1;
        }

        ++v40[v15];
      }

      v16 = v7[v11];
      if (v16 <= 0x2F0)
      {
        v17 = 14;
      }

      else
      {
        v17 = 20;
      }

      if (v16 <= 0x28)
      {
        v18 = 0;
      }

      else
      {
        v18 = 7;
      }

      if (v16 <= 0xB0)
      {
        v19 = v18;
      }

      else
      {
        v19 = v17;
      }

      v20 = (&unk_10037D31E + 4 * v19 + 4);
      do
      {
        v21 = v19;
        if (v19 == 25)
        {
          break;
        }

        ++v19;
        v22 = *v20;
        v20 += 2;
      }

      while (v16 >= v22);
      ++*(v38 + v21);
      ++v11;
      v12 = v13;
      v13 = v14;
    }

    while (v11 != v8);
  }

  result = sub_100170744(v9 - 1, a3, a4);
  if (v9 >= 2)
  {
    sub_10016FB84(v40, v9 + 2, v9 + 2, a2, a1 + 56, a1 + 314, a3, a4);
    result = sub_10016FB84(v38, 0x1AuLL, 26, a2, a1 + 830, (a1 + 107), a3, a4);
    v24 = *v7;
    v25 = a1[5];
    a1[5] = *v10;
    a1[6] = v25;
    v26 = 14;
    if (v24 > 0x2F0)
    {
      v26 = 20;
    }

    v27 = 7;
    if (v24 <= 0x28)
    {
      v27 = 0;
    }

    if (v24 <= 0xB0)
    {
      v28 = v27;
    }

    else
    {
      v28 = v26;
    }

    v29 = (&unk_10037D31E + 4 * v28 + 4);
    do
    {
      v30 = v28;
      if (v28 == 25)
      {
        break;
      }

      ++v28;
      v31 = *v29;
      v29 += 2;
    }

    while (v24 >= v31);
    v32 = (&unk_10037D31E + 4 * v30);
    v33 = *(v32 + 2);
    v34 = *(a1 + v30 + 830);
    v35 = *a3;
    v36 = v24 - *v32;
    *(a4 + (*a3 >> 3)) = (*(a1 + v30 + 428) << (*a3 & 7)) | *(a4 + (*a3 >> 3));
    *a3 = v35 + v34;
    *(a4 + ((v35 + v34) >> 3)) = (v36 << ((v35 + v34) & 7)) | *(a4 + ((v35 + v34) >> 3));
    *a3 = v35 + v34 + v33;
  }

  return result;
}

uint64_t sub_10016EB60(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  result = sub_100170744(a1 - 1, a4, a5);
  if (a1 >= 2)
  {
    v11 = a2 - 1;
    v12 = a2 - 1 + a1;
    bzero(v25, 4 * v12);
    v13 = *a4;
    *(a5 + (*a4 >> 3)) = (1 << (*a4 & 7)) | *(a5 + (*a4 >> 3));
    *a4 = v13 + 1;
    *(a5 + ((v13 + 1) >> 3)) = ((a2 - 2) << ((v13 + 1) & 7)) | *(a5 + ((v13 + 1) >> 3));
    *a4 = v13 + 5;
    v25[a2 - 1] = a1;
    v25[0] = 1;
    if (v12 > a2)
    {
      memset_pattern16(&v25[a2], &unk_1003E3320, 4 * a1 - 4);
    }

    sub_10016FB84(v25, a2 - 1 + a1, a2 - 1 + a1, a3, v24, v23, a4, a5);
    v14 = 0;
    v15 = v24[v11];
    v16 = v23[v11];
    v17 = a2 - 1;
    v18 = *a4;
    do
    {
      if (v14)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0;
      }

      v20 = v24[v19];
      result = v18 & 7;
      *(a5 + (v18 >> 3)) = (v23[v19] << (v18 & 7)) | *(a5 + (v18 >> 3));
      v21 = v18 + v20;
      *a4 = v21;
      *(a5 + (v21 >> 3)) = (v16 << (v21 & 7)) | *(a5 + (v21 >> 3));
      v22 = v21 + v15;
      *a4 = v21 + v15;
      *(a5 + ((v21 + v15) >> 3)) = (~(-1 << (a2 - 1)) << ((v21 + v15) & 7)) | *(a5 + ((v21 + v15) >> 3));
      v18 = v22 + v11;
      *a4 = v22 + v11;
      --v14;
      ++v17;
    }

    while (-a1 != v14);
    *(a5 + (v18 >> 3)) = (1 << (v18 & 7)) | *(a5 + (v18 >> 3));
    *a4 = v22 + a2;
  }

  return result;
}

uint64_t sub_10016ED7C(uint64_t a1, unsigned int *a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  result = sub_100170744(a4 - 1, a6, a7);
  if (a4 == 1)
  {
    return result;
  }

  result = sub_100166C7C(a1);
  if (*(a1 + 24))
  {
    return result;
  }

  v15 = result;
  v16 = *a2;
  if (a3 >= 2)
  {
    v17 = a3 - 1;
    v18 = a2 + 1;
    do
    {
      v20 = *v18++;
      v19 = v20;
      if (v20 > v16)
      {
        v16 = v19;
      }

      --v17;
    }

    while (v17);
  }

  v21 = 0;
  v22 = xmmword_1003EE2C0;
  v23 = xmmword_1003EE2D0;
  v24 = xmmword_1003EE2E0;
  v25 = xmmword_1003EE2F0;
  v26 = xmmword_10037D390;
  v27 = xmmword_10037D3A0;
  v28 = xmmword_10037C710;
  v29 = vdupq_n_s64(v16);
  v30 = xmmword_1003772E0;
  v31 = vdupq_n_s64(0x10uLL);
  do
  {
    v32 = vmovn_s64(vcgeq_u64(v29, v30));
    if (vuzp1_s8(vuzp1_s16(v32, *v22.i8), *v22.i8).u8[0])
    {
      v72[v21 - 1] = v21;
    }

    if (vuzp1_s8(vuzp1_s16(v32, *&v22), *&v22).i8[1])
    {
      v72[v21] = v21 | 1;
    }

    if (vuzp1_s8(vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v29, *&v28))), *&v22).i8[2])
    {
      v72[v21 + 1] = v21 | 2;
      v72[v21 + 2] = v21 | 3;
    }

    v33 = vmovn_s64(vcgeq_u64(v29, v27));
    if (vuzp1_s8(*&v22, vuzp1_s16(v33, *&v22)).i32[1])
    {
      v72[v21 + 3] = v21 | 4;
    }

    if (vuzp1_s8(*&v22, vuzp1_s16(v33, *&v22)).i8[5])
    {
      v72[v21 + 4] = v21 | 5;
    }

    if (vuzp1_s8(*&v22, vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v29, *&v26)))).i8[6])
    {
      v72[v21 + 5] = v21 | 6;
      v72[v21 + 6] = v21 | 7;
    }

    v34 = vmovn_s64(vcgeq_u64(v29, v25));
    if (vuzp1_s8(vuzp1_s16(v34, *v22.i8), *v22.i8).u8[0])
    {
      v72[v21 + 7] = v21 | 8;
    }

    if (vuzp1_s8(vuzp1_s16(v34, *&v22), *&v22).i8[1])
    {
      v72[v21 + 8] = v21 | 9;
    }

    if (vuzp1_s8(vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v29, *&v24))), *&v22).i8[2])
    {
      v72[v21 + 9] = v21 | 0xA;
      v72[v21 + 10] = v21 | 0xB;
    }

    v35 = vmovn_s64(vcgeq_u64(v29, v23));
    if (vuzp1_s8(*&v22, vuzp1_s16(v35, *&v22)).i32[1])
    {
      v72[v21 + 11] = v21 | 0xC;
    }

    if (vuzp1_s8(*&v22, vuzp1_s16(v35, *&v22)).i8[5])
    {
      v72[v21 + 12] = v21 | 0xD;
    }

    if (vuzp1_s8(*&v22, vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v29, *&v22)))).i8[6])
    {
      v72[v21 + 13] = v21 | 0xE;
      v72[v21 + 14] = v21 | 0xF;
    }

    v27 = vaddq_s64(v27, v31);
    v21 += 16;
    v28 = vaddq_s64(v28, v31);
    v30 = vaddq_s64(v30, v31);
    v26 = vaddq_s64(v26, v31);
    v25 = vaddq_s64(v25, v31);
    v24 = vaddq_s64(v24, v31);
    v23 = vaddq_s64(v23, v31);
    v22 = vaddq_s64(v22, v31);
  }

  while (((v16 + 16) & 0x1FFFFFFF0) != v21);
  v68 = a5;
  if (!a3)
  {
    goto LABEL_68;
  }

  v36 = 0;
  v37 = v16 + 1;
  LOBYTE(v38) = __src;
  do
  {
    if (v37)
    {
      v39 = 0;
      v38 = LOBYTE(a2[v36]);
      while (v72[v39 - 1] != v38)
      {
        if (v37 == ++v39)
        {
          *(v15 + 4 * v36) = v37;
          LOBYTE(v38) = v72[v37 - 1];
          v39 = v37;
          goto LABEL_43;
        }
      }

      *(v15 + 4 * v36) = v39;
      if (!v39)
      {
        goto LABEL_44;
      }

LABEL_43:
      memmove(v72, &__src, v39);
    }

    else
    {
      *(v15 + 4 * v36) = 0;
    }

LABEL_44:
    __src = v38;
    ++v36;
  }

  while (v36 != a3);
  v40 = 0;
  v41 = 0;
  do
  {
    if (a3 <= v41 + 1)
    {
      v42 = v41 + 1;
    }

    else
    {
      v42 = a3;
    }

    v43 = (v15 + 4 * v41);
    while (*(v15 + 4 * v41))
    {
      ++v41;
      ++v43;
      if (v42 == v41)
      {
        v47 = 0;
LABEL_64:
        if (v47 > v40)
        {
          v40 = v47;
        }

        goto LABEL_66;
      }
    }

    if (a3 <= v41)
    {
      v46 = 0;
    }

    else
    {
      v44 = 0;
      while (!*v43++)
      {
        if (v41 - a3 == --v44)
        {
          v47 = a3 - v41;
          goto LABEL_64;
        }
      }

      v41 -= v44;
      v46 = -v44;
    }

    if (v46 > v40)
    {
      v40 = v46;
    }
  }

  while (v41 < a3);
LABEL_66:
  if (v40)
  {
    v48 = __clz(v40) ^ 0x1F;
  }

  else
  {
LABEL_68:
    v48 = 0;
  }

  if (v48 >= 6)
  {
    v49 = 6;
  }

  else
  {
    v49 = v48;
  }

  if (!a3)
  {
    bzero(&__src, 0x440uLL);
    v50 = 0;
LABEL_96:
    v58 = 1;
    goto LABEL_97;
  }

  v50 = 0;
  v51 = 0;
  v52 = 2 << v49;
  do
  {
    v53 = *(v15 + 4 * v51);
    if (v53)
    {
      *(v15 + 4 * v50) = v53 + v49;
      ++v51;
LABEL_76:
      ++v50;
      continue;
    }

    if (v51 + 1 >= a3)
    {
      v54 = 1;
      ++v51;
      goto LABEL_87;
    }

    v54 = a3 - v51;
    v55 = 1;
    while (!*(v15 + 4 * v51 + 4 * v55))
    {
      if (a3 - v51 == ++v55)
      {
        goto LABEL_86;
      }
    }

    v54 = v55;
LABEL_86:
    v51 += v54;
    if (v54)
    {
LABEL_87:
      while (1)
      {
        v56 = v54 - v52;
        if (v54 < v52)
        {
          break;
        }

        *(v15 + 4 * v50++) = v49 | (~(-1 << v49) << 9);
        v54 = v56 + 1;
        if (v56 == -1)
        {
          goto LABEL_77;
        }
      }

      v57 = __clz(v54);
      *(v15 + 4 * v50) = v57 ^ 0x1F | (((-1 << (v57 ^ 0x1F)) + v54) << 9);
      goto LABEL_76;
    }

LABEL_77:
    ;
  }

  while (v51 < a3);
  bzero(&__src, 0x440uLL);
  v58 = v50 == 0;
  if (!v50)
  {
    goto LABEL_96;
  }

  for (i = 0; i != v50; ++i)
  {
    v60 = *(v15 + 4 * i) & 0x1FF;
    ++*&v72[4 * v60 - 1];
  }

LABEL_97:
  v61 = *a6;
  *(a7 + (*a6 >> 3)) = ((v48 != 0) << (*a6 & 7)) | *(a7 + (*a6 >> 3));
  *a6 = v61 + 1;
  if (v48)
  {
    *(a7 + ((v61 + 1) >> 3)) = ((v49 - 1) << ((v61 + 1) & 7)) | *(a7 + ((v61 + 1) >> 3));
    *a6 = v61 + 5;
  }

  sub_10016FB84(&__src, a4 + v49, a4 + v49, v68, v70, v69, a6, a7);
  v62 = *a6;
  if (!v58)
  {
    v63 = v15;
    do
    {
      v65 = *v63++;
      v64 = v65;
      v66 = v65 & 0x1FF;
      v67 = v70[v66];
      *(a7 + (v62 >> 3)) = (v69[v66] << (v62 & 7)) | *(a7 + (v62 >> 3));
      v62 += v67;
      *a6 = v62;
      if (v66 - 1 < v49)
      {
        *(a7 + (v62 >> 3)) = (v64 >> 9 << (v62 & 7)) | *(a7 + (v62 >> 3));
        v62 += v66;
        *a6 = v62;
      }

      --v50;
    }

    while (v50);
  }

  *(a7 + (v62 >> 3)) = (1 << (v62 & 7)) | *(a7 + (v62 >> 3));
  *a6 = v62 + 1;
  return sub_100166DB4(a1, v15);
}