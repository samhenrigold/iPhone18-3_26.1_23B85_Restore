uint64_t sub_240BEB9E0(unsigned int (**a1)(uint64_t), uint64_t a2)
{
  if ((*a1)(a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

float sub_240BEBA08(unsigned int *a1, uint64_t a2, uint64_t a3, float *a4)
{
  v6 = a4[4];
  v7 = a4[8];
  v8 = a4[12];
  v9 = a4[20];
  v10 = a4[16];
  v11 = *a1;
  v12 = a1[1];
  v13 = *(a1 + 2);
  v14 = *(a1 + 3);
  v15 = sub_240BEBD8C(v13, v14, a2, a3, v11, v12, *a4, v6, v7);
  v16 = v15 + sub_240BEBD8C(v13, v14, a2, a3 - 2, v11, v12, v7, v9, v10);
  v17 = sub_240BEBD8C(v13, v14, a2, a3 + 2, v11, v12, v7, v9, v10);
  v18 = v16 + sub_240BEBD8C(v13, v14, a2, a3 - 1, v11, v12, v6, v8, v9);
  return v18 + (v17 + sub_240BEBD8C(v13, v14, a2, a3 + 1, v11, v12, v6, v8, v9));
}

float sub_240BEBB50(unsigned int *a1, uint64_t a2, uint64_t a3, float *a4)
{
  v6 = a4[4];
  v7 = a4[8];
  v8 = a4[12];
  v9 = a4[20];
  v10 = a4[16];
  v11 = *a1;
  v12 = *(a1 + 2);
  v13 = *(a1 + 3);
  v14 = sub_240BEBC84(v12, v13, a2, a3, v11, *a4, v6, v7);
  v15 = v14 + sub_240BEBC84(v12, v13, a2, a3 - 2, v11, v7, v9, v10);
  v16 = sub_240BEBC84(v12, v13, a2, a3 + 2, v11, v7, v9, v10);
  v17 = v15 + sub_240BEBC84(v12, v13, a2, a3 - 1, v11, v6, v8, v9);
  return v17 + (v16 + sub_240BEBC84(v12, v13, a2, a3 + 1, v11, v6, v8, v9));
}

float sub_240BEBC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6, float a7, float a8)
{
  v8 = a3 - 2;
  LOBYTE(v9) = a3 < 2;
  if (a3 < 2)
  {
    goto LABEL_3;
  }

  while (v8 >= a5)
  {
    do
    {
LABEL_3:
      v10 = ~v8;
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = 2 * a5;
      }

      v8 = v11 + v10;
      v9 = v8 >> 63;
    }

    while (v8 < 0);
  }

  v12 = a2 + a1 * a4;
  v13 = a3 + 2;
  LOBYTE(v14) = a3 < -2;
  if (a3 < -2)
  {
    goto LABEL_10;
  }

  while (v13 >= a5)
  {
    do
    {
LABEL_10:
      v15 = ~v13;
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = 2 * a5;
      }

      v13 = v16 + v15;
      v14 = v13 >> 63;
    }

    while (v13 < 0);
  }

  v17 = a3 - 1;
  LOBYTE(v18) = a3 < 1;
  if (a3 < 1 || a3 > a5)
  {
    do
    {
      v19 = ~v17;
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = 2 * a5;
      }

      v17 = v20 + v19;
      v18 = v17 >> 63;
    }

    while (v17 < 0 || v17 >= a5);
  }

  v21 = *(v12 + 4 * v8);
  v22 = *(v12 + 4 * v13);
  v23 = a3 + 1;
  LOBYTE(v13) = a3 < -1;
  if (a3 < -1)
  {
    goto LABEL_24;
  }

  while (v23 >= a5)
  {
    do
    {
LABEL_24:
      v24 = ~v23;
      if (v13)
      {
        v25 = 0;
      }

      else
      {
        v25 = 2 * a5;
      }

      v23 = v25 + v24;
      v13 = v23 >> 63;
    }

    while (v23 < 0);
  }

  return ((v21 + v22) * a8) + (((*(v12 + 4 * v17) + *(v12 + 4 * v23)) * a7) + (*(v12 + 4 * a3) * a6));
}

float sub_240BEBD8C(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4, uint64_t a5, uint64_t a6, float a7, float a8, float a9)
{
  if (a4 < 0 || a4 >= a6)
  {
    v9 = a4 >> 63;
    do
    {
      v10 = ~a4;
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = 2 * a6;
      }

      a4 = v11 + v10;
      v12 = v11 + v10 < 0;
      v9 = (v11 + v10) >> 63;
    }

    while (v12 || a4 >= a6);
  }

  v13 = a3 - 2;
  LOBYTE(v14) = a3 < 2;
  if (a3 < 2)
  {
    goto LABEL_11;
  }

  while (v13 >= a5)
  {
    do
    {
LABEL_11:
      v15 = ~v13;
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = 2 * a5;
      }

      v13 = v16 + v15;
      v14 = v13 >> 63;
    }

    while (v13 < 0);
  }

  v17 = a2 + a4 * a1;
  v18 = a3 + 2;
  LOBYTE(v19) = a3 < -2;
  if (a3 < -2)
  {
    goto LABEL_18;
  }

  while (v18 >= a5)
  {
    do
    {
LABEL_18:
      v20 = ~v18;
      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = 2 * a5;
      }

      v18 = v21 + v20;
      v19 = v18 >> 63;
    }

    while (v18 < 0);
  }

  v22 = a3 - 1;
  LOBYTE(v23) = a3 < 1;
  if (a3 < 1 || a3 > a5)
  {
    do
    {
      v24 = ~v22;
      if (v23)
      {
        v25 = 0;
      }

      else
      {
        v25 = 2 * a5;
      }

      v22 = v25 + v24;
      v23 = v22 >> 63;
    }

    while (v22 < 0 || v22 >= a5);
  }

  v26 = *(v17 + 4 * v13);
  v27 = *(v17 + 4 * v18);
  v28 = a3 + 1;
  LOBYTE(v18) = a3 < -1;
  if (a3 < -1)
  {
    goto LABEL_32;
  }

  while (v28 >= a5)
  {
    do
    {
LABEL_32:
      v29 = ~v28;
      if (v18)
      {
        v30 = 0;
      }

      else
      {
        v30 = 2 * a5;
      }

      v28 = v30 + v29;
      v18 = v28 >> 63;
    }

    while (v28 < 0);
  }

  return ((v26 + v27) * a9) + (((*(v17 + 4 * v22) + *(v17 + 4 * v28)) * a8) + (*(v17 + 4 * a3) * a7));
}

BOOL sub_240BEBEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  v6[0] = sub_240B2AC64;
  v6[1] = a3;
  if (*a1)
  {
    return (*a1)(*(a1 + 8), v6, sub_240BEC074, sub_240BEBF78, 0, a2) != 0;
  }

  for (i = 0; i != v3; ++i)
  {
    sub_240BEBF78(v6, i);
  }

  return 0;
}

uint64_t sub_240BEBF78(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  v3 = (**v2 + (**(v2 + 8) << 6));
  v4 = **(v2 + 16);
  v5 = v3[8 * (v4 % 3) + 3] + v3[8 * (v4 % 3) + 2] * a2;
  v6 = v3[8 * ((v4 + v4 / 3 + 1) % 3) + 3] + v3[8 * ((v4 + v4 / 3 + 1) % 3) + 2] * a2;
  v7 = v4 + ((((1431655765 * v4) >> 32) - v4) >> 1) + ((((1431655765 * v4) >> 32) - v4) >> 31) + 2;
  return (*(&off_2852A3970 + **(v2 + 24)))(v3[3] + v3[2] * a2, v3[11] + v3[10] * a2, v3[19] + v3[18] * a2, v5, v6, v3[8 * (v7 % 3) + 3] + v3[8 * (v7 % 3) + 2] * a2, **(v2 + 32));
}

uint64_t sub_240BEC074(unsigned int (**a1)(uint64_t), uint64_t a2)
{
  if ((*a1)(a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_240BEC09C(unint64_t result, int32x4_t *a2, int32x4_t *a3, int32x4_t *a4, int32x4_t *a5, int32x4_t *a6, unint64_t a7)
{
  if (a7 < 4)
  {
    v22 = 0;
  }

  else
  {
    v7 = 0;
    v8 = result;
    v9 = a2;
    v10 = a3;
    v11 = a4;
    v12 = a5;
    v13 = a6;
    do
    {
      v14 = *v8++;
      v15 = v14;
      v16 = *v9++;
      v17 = v16;
      v18 = *v10++;
      v19 = vsubq_s32(v15, vshrq_n_s32(v18, 1uLL));
      v20 = vaddq_s32(v19, v18);
      v21 = vsubq_s32(v19, vshrq_n_s32(v17, 1uLL));
      *v11++ = vaddq_s32(v21, v17);
      *v12++ = v20;
      v22 = v7 + 4;
      *v13++ = v21;
      v23 = v7 + 7;
      v7 += 4;
    }

    while (v23 < a7);
  }

  v24 = a7 - v22;
  if (a7 > v22)
  {
    v25 = 0;
    v26 = &a6->i8[4 * v22];
    v27 = &a5->i8[4 * v22];
    v28 = &a4->i8[4 * v22];
    v29 = &a3->i8[4 * v22];
    v30 = &a2->i8[4 * v22];
    v31 = (result + 4 * v22);
    do
    {
      v32 = *&v30[4 * v25];
      v33 = *&v29[4 * v25];
      v34 = *&v31[4 * v25] - (v33 >> 1);
      result = (v34 + v33);
      v35 = v34 - (v32 >> 1);
      *&v28[4 * v25] = v35 + v32;
      *&v27[4 * v25] = result;
      *&v26[4 * v25++] = v35;
    }

    while (v24 != v25);
  }

  return result;
}

unint64_t sub_240BEC168(unint64_t result, int32x4_t *a2, int32x4_t *a3, int32x4_t *a4, int32x4_t *a5, int32x4_t *a6, unint64_t a7)
{
  if (a7 < 4)
  {
    v20 = 0;
  }

  else
  {
    v7 = 0;
    v8 = result;
    v9 = a2;
    v10 = a3;
    v11 = a4;
    v12 = a5;
    v13 = a6;
    do
    {
      v14 = *v8++;
      v15 = v14;
      v16 = *v9++;
      v17 = v16;
      v18 = *v10++;
      v19 = vaddq_s32(v18, v15);
      *v11++ = v15;
      *v12++ = vsraq_n_s32(v17, vaddq_s32(v19, v15), 1uLL);
      v20 = v7 + 4;
      *v13++ = v19;
      v21 = v7 + 7;
      v7 += 4;
    }

    while (v21 < a7);
  }

  v22 = a7 - v20;
  if (a7 > v20)
  {
    v23 = 0;
    v24 = &a6->i8[4 * v20];
    v25 = &a5->i8[4 * v20];
    v26 = &a4->i8[4 * v20];
    v27 = &a3->i8[4 * v20];
    v28 = &a2->i8[4 * v20];
    v29 = (result + 4 * v20);
    do
    {
      v30 = *&v29[4 * v23];
      result = (*&v27[4 * v23] + v30);
      v31 = *&v28[4 * v23] + ((result + v30) >> 1);
      *&v26[4 * v23] = v30;
      *&v25[4 * v23] = v31;
      *&v24[4 * v23++] = result;
    }

    while (v22 != v23);
  }

  return result;
}

int32x4_t *sub_240BEC224(int32x4_t *result, int32x4_t *a2, int32x4_t *a3, int32x4_t *a4, int32x4_t *a5, int32x4_t *a6, unint64_t a7)
{
  if (a7 < 4)
  {
    v19 = 0;
  }

  else
  {
    v7 = 0;
    v8 = result;
    v9 = a2;
    v10 = a3;
    v11 = a4;
    v12 = a5;
    v13 = a6;
    do
    {
      v14 = *v8++;
      v15 = v14;
      v16 = *v9++;
      v17 = v16;
      v18 = *v10++;
      *v11++ = v15;
      *v12++ = vsraq_n_s32(v17, vaddq_s32(v18, v15), 1uLL);
      v19 = v7 + 4;
      *v13++ = v18;
      v20 = v7 + 7;
      v7 += 4;
    }

    while (v20 < a7);
  }

  v21 = a7 - v19;
  if (a7 > v19)
  {
    v22 = 0;
    v23 = &a6->i8[4 * v19];
    v24 = &a5->i8[4 * v19];
    v25 = &a4->i8[4 * v19];
    v26 = &a3->i8[4 * v19];
    v27 = &a2->i8[4 * v19];
    v28 = &result->i8[4 * v19];
    do
    {
      v29 = *&v28[4 * v22];
      result = *&v26[4 * v22];
      v30 = *&v27[4 * v22] + ((result + v29) >> 1);
      *&v25[4 * v22] = v29;
      *&v24[4 * v22] = v30;
      *&v23[4 * v22++] = result;
    }

    while (v21 != v22);
  }

  return result;
}

unint64_t sub_240BEC2D8(unint64_t result, int32x4_t *a2, int32x4_t *a3, int32x4_t *a4, int32x4_t *a5, int32x4_t *a6, unint64_t a7)
{
  if (a7 < 4)
  {
    v19 = 0;
  }

  else
  {
    v7 = 0;
    v8 = result;
    v9 = a2;
    v10 = a3;
    v11 = a4;
    v12 = a5;
    v13 = a6;
    do
    {
      v14 = *v8++;
      v15 = v14;
      v16 = *v9++;
      v17 = v16;
      v18 = *v10++;
      v19 = v7 + 4;
      *v11++ = v15;
      *v12++ = vaddq_s32(v17, v15);
      *v13++ = vaddq_s32(v18, v15);
      v20 = v7 + 7;
      v7 += 4;
    }

    while (v20 < a7);
  }

  v21 = a7 - v19;
  if (a7 > v19)
  {
    v22 = 0;
    v23 = &a6->i8[4 * v19];
    v24 = &a5->i8[4 * v19];
    v25 = &a4->i8[4 * v19];
    v26 = &a3->i8[4 * v19];
    v27 = &a2->i8[4 * v19];
    v28 = (result + 4 * v19);
    do
    {
      v29 = *&v28[4 * v22];
      result = (*&v26[4 * v22] + v29);
      v30 = *&v27[4 * v22] + v29;
      *&v25[4 * v22] = v29;
      *&v24[4 * v22] = v30;
      *&v23[4 * v22++] = result;
    }

    while (v21 != v22);
  }

  return result;
}

int32x4_t *sub_240BEC38C(int32x4_t *result, int32x4_t *a2, __int128 *a3, int32x4_t *a4, int32x4_t *a5, _OWORD *a6, unint64_t a7)
{
  if (a7 < 4)
  {
    v19 = 0;
  }

  else
  {
    v7 = 0;
    v8 = result;
    v9 = a2;
    v10 = a3;
    v11 = a4;
    v12 = a5;
    v13 = a6;
    do
    {
      v14 = *v8++;
      v15 = v14;
      v16 = *v9++;
      v17 = v16;
      v18 = *v10++;
      *v11++ = v15;
      *v12++ = vaddq_s32(v17, v15);
      v19 = v7 + 4;
      *v13++ = v18;
      v20 = v7 + 7;
      v7 += 4;
    }

    while (v20 < a7);
  }

  v21 = a7 - v19;
  if (a7 > v19)
  {
    v22 = 0;
    v23 = a6 + 4 * v19;
    v24 = &a5->i8[4 * v19];
    v25 = &a4->i8[4 * v19];
    v26 = a3 + 4 * v19;
    v27 = &a2->i8[4 * v19];
    v28 = &result->i8[4 * v19];
    do
    {
      v29 = *&v28[4 * v22];
      result = *&v26[4 * v22];
      v30 = *&v27[4 * v22] + v29;
      *&v25[4 * v22] = v29;
      *&v24[4 * v22] = v30;
      *&v23[4 * v22++] = result;
    }

    while (v21 != v22);
  }

  return result;
}

unint64_t sub_240BEC438(unint64_t result, __int128 *a2, int32x4_t *a3, int32x4_t *a4, _OWORD *a5, int32x4_t *a6, unint64_t a7)
{
  if (a7 < 4)
  {
    v14 = 0;
  }

  else
  {
    v7 = 0;
    v8 = result;
    v9 = a2;
    v10 = a3;
    v11 = a4;
    v12 = a5;
    v13 = a6;
    do
    {
      v14 = v7 + 4;
      v15 = *v8++;
      v16 = v15;
      v17 = *v9++;
      v18 = v17;
      v19 = *v10++;
      *v11++ = v16;
      *v12++ = v18;
      *v13++ = vaddq_s32(v19, v16);
      v20 = v7 + 7;
      v7 += 4;
    }

    while (v20 < a7);
  }

  v21 = a7 - v14;
  if (a7 > v14)
  {
    v22 = 0;
    v23 = &a6->i8[4 * v14];
    v24 = a5 + 4 * v14;
    v25 = &a4->i8[4 * v14];
    v26 = &a3->i8[4 * v14];
    v27 = a2 + 4 * v14;
    v28 = (result + 4 * v14);
    do
    {
      v29 = *&v28[4 * v22];
      v30 = *&v27[4 * v22];
      result = (*&v26[4 * v22] + v29);
      *&v25[4 * v22] = v29;
      *&v24[4 * v22] = v30;
      *&v23[4 * v22++] = result;
    }

    while (v21 != v22);
  }

  return result;
}

__int128 *sub_240BEC4E4(__int128 *result, __int128 *a2, __int128 *a3, _OWORD *a4, _OWORD *a5, _OWORD *a6, unint64_t a7)
{
  if (a7 < 4)
  {
    v19 = 0;
  }

  else
  {
    v7 = 0;
    v8 = result;
    v9 = a2;
    v10 = a3;
    v11 = a4;
    v12 = a5;
    v13 = a6;
    do
    {
      v14 = *v8++;
      v15 = v14;
      v16 = *v9++;
      v17 = v16;
      v18 = *v10++;
      *v11++ = v15;
      *v12++ = v17;
      v19 = v7 + 4;
      *v13++ = v18;
      v20 = v7 + 7;
      v7 += 4;
    }

    while (v20 < a7);
  }

  v21 = a7 - v19;
  if (a7 > v19)
  {
    v22 = 0;
    v23 = a6 + 4 * v19;
    v24 = a5 + 4 * v19;
    v25 = a4 + 4 * v19;
    v26 = a3 + 4 * v19;
    v27 = a2 + 4 * v19;
    v28 = result + 4 * v19;
    do
    {
      v29 = *&v27[4 * v22];
      result = *&v26[4 * v22];
      *&v25[4 * v22] = *&v28[4 * v22];
      *&v24[4 * v22] = v29;
      *&v23[4 * v22++] = result;
    }

    while (v21 != v22);
  }

  return result;
}

uint64_t sub_240BEC588(uint64_t a1)
{
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  v2 = *(a1 + 112) / *(a1 + 128);
  v3 = __clz(v2) ^ 0x3F;
  if ((v2 & (v2 - 1)) != 0)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = v3;
  }

  *(a1 + 472) = v4;
  v5 = *(a1 + 32);
  v7 = *v5;
  v6 = v5[1];
  v8 = v6 - *v5;
  if (v6 == *v5)
  {
    v30 = 0;
    v26 = 0;
    *(a1 + 456) = 0;
    v11 = v8 >> 4;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = v8 >> 4;
    v12 = 1 << v4;
    v13 = v12 - 1;
    if (v11 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v11;
    }

    v15 = (v7 + 8);
    v16 = (**(a1 + 56) + 8);
    v17 = v14;
    do
    {
      if (v10 <= (v13 + (*(v16 - 1) << *(v15 - 1))) / v12)
      {
        v10 = (v13 + (*(v16 - 1) << *(v15 - 1))) / v12;
      }

      *(a1 + 456) = v10;
      v19 = *v16;
      v16 += 2;
      v18 = v19;
      v20 = *v15;
      v15 += 2;
      v21 = (v13 + (v18 << v20)) / v12;
      if (v9 <= v21)
      {
        v9 = v21;
      }

      *(a1 + 464) = v9;
      --v17;
    }

    while (v17);
    v22 = (v7 + 8);
    v23 = v14;
    do
    {
      v24 = *(v22 - 1);
      if (v24 >= v4)
      {
        v10 = (v10 + (1 << (v24 - v4)) - 1) / (1 << (v24 - v4)) * (1 << (v24 - v4));
        *(a1 + 456) = v10;
      }

      if (*v22 >= v4)
      {
        v9 = (v9 + (1 << (*v22 - v4)) - 1) / (1 << (*v22 - v4)) * (1 << (*v22 - v4));
        *(a1 + 464) = v9;
      }

      v22 += 2;
      --v23;
    }

    while (v23);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    *(a1 + 456) = (v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v28 = sub_240BED250(a1, v25);
      if (v28 > v27)
      {
        v27 = v28;
      }

      if (v29 > v26)
      {
        v26 = v29;
      }

      ++v25;
    }

    while (v14 != v25);
    v30 = (v27 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  *(a1 + 504) = v30;
  *(a1 + 512) = v26;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 264) - *(a1 + 256)) >> 3) < v11)
  {
    sub_240BED3E4((a1 + 256), v11);
    sub_240BED3E4((a1 + 280), (v5[1] - *v5) >> 4);
    v7 = *v5;
    v6 = v5[1];
  }

  if (v6 == v7)
  {
LABEL_52:
    v61 = *(a1 + 192);
    *(a1 + 400) = *(a1 + 176);
    *(a1 + 416) = v61;
    *(a1 + 432) = *(a1 + 208);
    v62 = *(a1 + 128);
    *(a1 + 336) = *(a1 + 112);
    *(a1 + 352) = v62;
    v63 = *(a1 + 160);
    *(a1 + 368) = *(a1 + 144);
    *(a1 + 384) = v63;
    v64 = *(a1 + 96);
    *(a1 + 304) = *(a1 + 80);
    *(a1 + 320) = v64;
    operator new[]();
  }

  v31 = 0;
  v32 = 0;
  v33 = 8;
  while (1)
  {
    v34 = sub_240BED250(a1, v32);
    v36 = v35;
    v37 = *(a1 + 160);
    v38 = (v7 + v33);
    v39 = 1 << *(v7 + v33 - 8);
    v40 = *(a1 + 120);
    v41 = (*(a1 + 112) + v39 - 1) / v39;
    v42 = *v38;
    v43 = (2 * *(a1 + 168) - 2) * v36;
    v44 = (*(a1 + 256) + v31);
    if (v41 != *v44 || v43 != v44[1])
    {
      sub_240B23590(__p, v41, v43);
      v45 = v71;
      if (v71)
      {
        return v45;
      }

      v66 = v34;
      v46 = v69;
      v69 = 0;
      v47 = v70;
      v48 = *(a1 + 256) + v31;
      *(v48 + 16) = v68;
      *v48 = *__p;
      v49 = *(v48 + 24);
      *(v48 + 24) = v46;
      if (v49)
      {
        atomic_fetch_add(&qword_27E519020, -*(v49 - 24));
        free(*(v49 - 32));
        v50 = v71;
        *(v48 + 32) = v47;
        if (v50)
        {
LABEL_41:
          v34 = v66;
          goto LABEL_42;
        }
      }

      else
      {
        *(v48 + 32) = v47;
      }

      v51 = v69;
      v69 = 0;
      if (v51)
      {
        atomic_fetch_add(&qword_27E519020, -*(v51 - 24));
        free(*(v51 - 32));
      }

      goto LABEL_41;
    }

LABEL_42:
    v52 = (2 * v37 - 2) * v34;
    v53 = (*(a1 + 280) + v31);
    v54 = (v40 + (1 << v42) - 1) / (1 << v42);
    if (v52 == *v53 && v54 == v53[1])
    {
      goto LABEL_51;
    }

    sub_240B23590(__p, v52, v54);
    v45 = v71;
    if (v71)
    {
      return v45;
    }

    v55 = v69;
    v69 = 0;
    v56 = v70;
    v57 = *(a1 + 280) + v31;
    *(v57 + 16) = v68;
    *v57 = *__p;
    v58 = *(v57 + 24);
    *(v57 + 24) = v55;
    if (!v58)
    {
      *(v57 + 32) = v56;
LABEL_49:
      v60 = v69;
      v69 = 0;
      if (v60)
      {
        atomic_fetch_add(&qword_27E519020, -*(v60 - 24));
        free(*(v60 - 32));
      }

      goto LABEL_51;
    }

    atomic_fetch_add(&qword_27E519020, -*(v58 - 24));
    free(*(v58 - 32));
    v59 = v71;
    *(v57 + 32) = v56;
    if (!v59)
    {
      goto LABEL_49;
    }

LABEL_51:
    ++v32;
    v7 = *v5;
    v31 += 40;
    v33 += 16;
    if (v32 >= (v5[1] - *v5) >> 4)
    {
      goto LABEL_52;
    }
  }
}

void sub_240BED208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  sub_240B31E8C(&a19);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_240BED2B0(char **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 5;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = (v3 + 32 * a2);
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 5)
    {
      if (!(a2 >> 59))
      {
        v8 = &v7[-v3];
        v9 = v8 >> 4;
        if (v8 >> 4 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFE0)
        {
          v10 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (!(v10 >> 59))
        {
          operator new();
        }

        sub_240B2291C();
      }

      sub_240B228BC();
    }

    bzero(a1[1], 32 * v6);
    v11 = &v4[32 * v6];
  }

  a1[1] = v11;
}

void sub_240BED3E4(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      for (i = v3 + 40 * a2; v4 != i; v4 -= 40)
      {
        sub_240B22320((v4 - 16));
      }

      a1[1] = i;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xCCCCCCCCCCCCCCCDLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0x666666666666666)
      {
        v13 = a1;
        v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x333333333333333)
        {
          v10 = 0x666666666666666;
        }

        else
        {
          v10 = v9;
        }

        sub_240B59980(v10);
      }

      sub_240B228BC();
    }

    v12 = 40 * ((40 * v6 - 40) / 0x28) + 40;
    bzero(a1[1], v12);
    a1[1] = v4 + v12;
  }
}

uint64_t sub_240BED584(uint64_t a1, unint64_t a2, int a3)
{
  v3 = a2;
  v5 = *(a1 + 32);
  *(a1 + 248) = a3;
  v6 = a2;
  if (a3)
  {
    v6 = *(a1 + 192);
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 488) - *(a1 + 480)) >> 3);
  if (v7 < v6)
  {
    v8 = (a1 + 480);
    v97 = v6;
    while (1)
    {
      v9 = *(a1 + 488);
      v10 = *(a1 + 496);
      if (v9 >= v10)
      {
        v12 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *v8) >> 3);
        v13 = v12 + 1;
        if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_103;
        }

        v14 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *v8) >> 3);
        if (2 * v14 > v13)
        {
          v13 = 2 * v14;
        }

        if (v14 >= 0x555555555555555)
        {
          v15 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v15 = v13;
        }

        v102 = a1 + 480;
        if (v15)
        {
          sub_240B82F14(v15);
        }

        v16 = 24 * v12;
        *v16 = 0;
        *(v16 + 8) = 0;
        *(v16 + 16) = 0;
        v11 = 24 * v12 + 24;
        v17 = *(a1 + 480);
        v18 = *(a1 + 488) - v17;
        v19 = 24 * v12 - v18;
        memcpy((v16 - v18), v17, v18);
        v20 = *(a1 + 480);
        *(a1 + 480) = v19;
        *(a1 + 488) = v11;
        v21 = *(a1 + 496);
        *(a1 + 496) = 0;
        v100 = v20;
        v101 = v21;
        *&v99 = v20;
        *(&v99 + 1) = v20;
        sub_240BEDE40(&v99);
      }

      else
      {
        *v9 = 0;
        v9[1] = 0;
        v11 = (v9 + 3);
        v9[2] = 0;
      }

      *(a1 + 488) = v11;
      sub_240BED3E4((*(a1 + 480) + 24 * v7), (v5[1] - *v5) >> 4);
      if (v5[1] != *v5)
      {
        break;
      }

LABEL_26:
      ++v7;
      v3 = a2;
      if (v7 == v97)
      {
        goto LABEL_27;
      }
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    while (1)
    {
      v25 = *(a1 + 208) << *(a1 + 472);
      sub_240B23590(&v99, (v25 >> *(**(a1 + 32) + v22)) + 2 * *(a1 + 504), (v25 >> *(**(a1 + 32) + v22 + 8)) + 2 * *(a1 + 512));
      result = v103;
      if (v103)
      {
        return result;
      }

      v27 = v101;
      v28 = v102;
      v101 = 0;
      v29 = *(*v8 + 24 * v7) + v23;
      *v29 = v99;
      v30 = *(v29 + 24);
      *(v29 + 16) = v100;
      *(v29 + 24) = v27;
      if (!v30)
      {
        break;
      }

      atomic_fetch_add(&qword_27E519020, -*(v30 - 24));
      free(*(v30 - 32));
      v31 = v103;
      *(v29 + 32) = v28;
      if (!v31)
      {
        goto LABEL_23;
      }

LABEL_25:
      ++v24;
      v23 += 40;
      v22 += 16;
      if (v24 >= (v5[1] - *v5) >> 4)
      {
        goto LABEL_26;
      }
    }

    *(v29 + 32) = v28;
LABEL_23:
    v32 = v101;
    v101 = 0;
    if (v32)
    {
      atomic_fetch_add(&qword_27E519020, -*(v32 - 24));
      free(*(v32 - 32));
    }

    goto LABEL_25;
  }

LABEL_27:
  v33 = *(a1 + 528);
  v34 = *(a1 + 520);
  v35 = 0xAAAAAAAAAAAAAAABLL * ((v33 - v34) >> 3);
  v36 = v3 - v35;
  if (v3 <= v35)
  {
    if (v3 < v35)
    {
      v41 = v34 + 24 * v3;
      while (v33 != v41)
      {
        v33 -= 24;
        *&v99 = v33;
        sub_240BEDEA0(&v99);
      }

      *(a1 + 528) = v41;
    }
  }

  else
  {
    v37 = *(a1 + 536);
    if (0xAAAAAAAAAAAAAAABLL * ((v37 - v33) >> 3) < v36)
    {
      if (v3 <= 0xAAAAAAAAAAAAAAALL)
      {
        v38 = 0xAAAAAAAAAAAAAAABLL * ((v37 - v34) >> 3);
        v39 = 2 * v38;
        if (2 * v38 <= v3)
        {
          v39 = v3;
        }

        if (v38 >= 0x555555555555555)
        {
          v40 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v40 = v39;
        }

        if (v40 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_240B2291C();
      }

      sub_240B228BC();
    }

    bzero(*(a1 + 528), 24 * ((24 * v36 - 24) / 0x18) + 24);
    *(a1 + 528) = v33 + 24 * ((24 * v36 - 24) / 0x18) + 24;
  }

  v42 = *(a1 + 472);
  v96 = *(a1 + 208) << v42;
  v98 = ((2 * *(a1 + 504)) << v42) + 32;
  if (v3)
  {
    v43 = 0;
    v44 = *v5;
    v45 = v5[1];
    do
    {
      v46 = *(a1 + 520) + 24 * v43;
      v47 = (v45 - v44) >> 4;
      v48 = *v46;
      v49 = *(v46 + 8);
      v50 = 0xAAAAAAAAAAAAAAABLL * ((v49 - *v46) >> 3);
      v51 = v47 - v50;
      if (v47 <= v50)
      {
        if (v47 < v50)
        {
          v55 = v48 + 24 * v47;
          while (v49 != v55)
          {
            v49 -= 24;
            *&v99 = v49;
            sub_240B30C38(&v99);
          }

          *(v46 + 8) = v55;
        }
      }

      else
      {
        v52 = *(v46 + 16);
        if (0xAAAAAAAAAAAAAAABLL * ((v52 - v49) >> 3) < v51)
        {
          if (v47 <= 0xAAAAAAAAAAAAAAALL)
          {
            v102 = *(a1 + 520) + 24 * v43;
            v53 = 0xAAAAAAAAAAAAAAABLL * ((v52 - v48) >> 3);
            if (2 * v53 > v47)
            {
              v47 = 2 * v53;
            }

            if (v53 >= 0x555555555555555)
            {
              v54 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v54 = v47;
            }

            sub_240B82F14(v54);
          }

LABEL_103:
          sub_240B228BC();
        }

        v56 = 24 * ((24 * v51 - 24) / 0x18) + 24;
        bzero(*(v46 + 8), v56);
        *(v46 + 8) = v49 + v56;
      }

      v44 = v5[1];
      if (v44 != *v5)
      {
        v57 = 0;
        while (1)
        {
          sub_240BED3E4((*(*(a1 + 520) + 24 * v43) + 24 * v57), (*(a1 + 16) - *(a1 + 8)) >> 3);
          v58 = *(a1 + 16) - *(a1 + 8);
          if (v58)
          {
            break;
          }

LABEL_76:
          ++v57;
          v44 = *v5;
          v45 = v5[1];
          if (v57 >= (v45 - *v5) >> 4)
          {
            goto LABEL_79;
          }
        }

        v59 = 0;
        v60 = (v58 >> 3) - 1;
        v61 = 8 * ((v58 >> 1) + (v58 >> 3));
        while (2)
        {
          v62 = *(*(a1 + 8) + 8 * v60);
          if ((*(*v62 + 24))(v62, v57) == 2)
          {
            v63 = *(*(a1 + 8) + 8 * v60);
            v64 = 2 * v59 + (1 << *(v63 + 32));
            v65 = __clz(v64) ^ 0x3F;
            if ((v64 & (v64 - 1)) != 0)
            {
              v66 = v65 + 1;
            }

            else
            {
              v66 = v65;
            }

            v59 = *(v63 + 16);
            sub_240B23590(&v99, v98 + v96, 1 << v66);
            result = v103;
            if (v103)
            {
              return result;
            }

            v67 = v101;
            v101 = 0;
            v68 = v102;
            v69 = *(*(*(a1 + 520) + 24 * v43) + 24 * v57) + v61;
            *(v69 - 24) = v100;
            *(v69 - 40) = v99;
            v70 = *(v69 - 16);
            *(v69 - 16) = v67;
            if (v70)
            {
              atomic_fetch_add(&qword_27E519020, -*(v70 - 24));
              free(*(v70 - 32));
              v71 = v103;
              *(v69 - 8) = v68;
              if (!v71)
              {
                goto LABEL_73;
              }
            }

            else
            {
              *(v69 - 8) = v68;
LABEL_73:
              v72 = v101;
              v101 = 0;
              if (v72)
              {
                atomic_fetch_add(&qword_27E519020, -*(v72 - 24));
                free(*(v72 - 32));
              }
            }
          }

          --v60;
          v61 -= 40;
          if (v60 == -1)
          {
            goto LABEL_76;
          }

          continue;
        }
      }

      v45 = v5[1];
LABEL_79:
      ++v43;
    }

    while (v43 != a2);
  }

  if (*(a1 + 720) != (*(a1 + 16) - *(a1 + 8)) >> 3)
  {
    v73 = *(a1 + 96);
    v74 = *(a1 + 704);
    v75 = *(a1 + 696);
    v76.i64[0] = v75.i32[0];
    v76.i64[1] = v75.i32[1];
    v77 = vandq_s8(v76, vcgtzq_s64(v76));
    v78 = vaddw_s32(v73, v75);
    v79 = vbslq_s8(vcgtq_s64(v78, v74), v74, v78);
    v80 = vbslq_s8(vcgtq_s64(vaddq_s64(v77, v73), v79), vandq_s8(vsubq_s64(v79, v77), vcgtq_s64(v79, v77)), v73);
    v81 = vmovn_s64(vceqzq_s64(v80));
    if ((v81.i8[0] | v81.i8[4]))
    {
      v82 = 0;
    }

    else
    {
      v82 = v77.i64[0];
    }

    v83 = v80.i64[0];
    if ((v81.i8[0] | v81.i8[4]))
    {
      v83 = 0;
    }

    v84 = v74.i64[0] - (v82 + v83);
    v85 = a2;
    if (v96 > v84)
    {
      v84 = v96;
    }

    v86 = v82 <= v84 ? v84 : v82;
    v87 = (a1 + 544);
    sub_240BED3E4(v87, a2);
    if (a2)
    {
      for (i = 0; ; i += 40)
      {
        sub_240B23590(&v99, v86 + v98, (v5[1] - *v5) >> 4);
        result = v103;
        if (v103)
        {
          return result;
        }

        v89 = v101;
        v101 = 0;
        v90 = v102;
        v91 = *v87 + i;
        *(v91 + 16) = v100;
        *v91 = v99;
        v92 = *(v91 + 24);
        *(v91 + 24) = v89;
        if (!v92)
        {
          break;
        }

        atomic_fetch_add(&qword_27E519020, -*(v92 - 24));
        free(*(v92 - 32));
        v93 = v103;
        *(v91 + 32) = v90;
        if (!v93)
        {
          goto LABEL_98;
        }

LABEL_100:
        if (!--v85)
        {
          return 0;
        }
      }

      *(v91 + 32) = v90;
LABEL_98:
      v94 = v101;
      v101 = 0;
      if (v94)
      {
        atomic_fetch_add(&qword_27E519020, -*(v94 - 24));
        free(*(v94 - 32));
      }

      goto LABEL_100;
    }
  }

  return 0;
}

uint64_t sub_240BEDE40(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    sub_240B30C38(&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_240BEDEA0(void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        sub_240B30C38(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_240BEDF34(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v456 = *MEMORY[0x277D85DE8];
  if (*(a1 + 248))
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  v4 = (*(a1 + 480) + 24 * v3);
  v5 = *v4;
  v414 = a1;
  v419 = v4;
  if (v4[1] != *v4)
  {
    v6 = 0;
    do
    {
      v7 = v5 + 40 * v6;
      v8 = *(a1 + 160);
      v9 = a2 / v8;
      v398 = a2 / v8 * v8;
      v10 = (**(a1 + 32) + 16 * v6);
      v12 = *v10;
      v11 = v10[1];
      v13 = *(a1 + 208) << *(a1 + 472);
      v14 = (v13 >> v12) * (a2 % v8);
      v388 = a2 % v8;
      v402 = a2 % v8 + 1;
      v15 = (v13 >> v12) * v402;
      v16 = (*(a1 + 96) + (1 << v12) - 1) / (1 << v12);
      if (v16 >= v15)
      {
        v16 = v15;
      }

      v405 = v16;
      v408 = a2 / v8;
      v391 = v13 >> v11;
      v395 = v9 + 1;
      v17 = (v13 >> v11) * (v9 + 1);
      v18 = (*(a1 + 104) + (1 << v11) - 1) / (1 << v11);
      if (v18 >= v17)
      {
        v18 = v17;
      }

      v411 = v18;
      v420 = v6;
      v415 = sub_240BED250(a1, v6);
      v20 = v19;
      if (v8 <= a2 && v405 != v14 && v19)
      {
        v21 = 0;
        v22 = *(v414 + 512);
        v428 = *(v414 + 504);
        v23 = v19 * (2 * v408 - 1);
        v24 = *(v414 + 256) + 40 * v420;
        v25 = *(v24 + 16);
        v26 = *(v24 + 24);
        v27 = v19;
        do
        {
          memcpy((v26 + (v21 + v23) * v25 + 4 * v14), (*(v7 + 24) + *(v7 + 16) * v22 + 4 * v428), 4 * (v405 - v14));
          ++v21;
          ++v22;
          --v27;
        }

        while (v27);
      }

      v429 = v391 * v408;
      v28 = v14;
      if (v395 < *(v414 + 168) && v405 != v14 && v20)
      {
        v29 = 0;
        v30 = *(v414 + 504);
        v31 = 2 * v408 * v20;
        v32 = *(v414 + 256) + 40 * v420;
        v34 = *(v32 + 16);
        v33 = *(v32 + 24);
        v35 = v411 - (v429 + v20) + *(v414 + 512);
        do
        {
          memcpy((v33 + (v29 + v31) * v34 + 4 * v28), (*(v7 + 24) + *(v7 + 16) * (v35 + v29) + 4 * v30), 4 * (v405 - v28));
          ++v29;
          --v20;
        }

        while (v20);
      }

      v36 = v391 * v408;
      if (a2 != v398 && v415 && v411 != v429)
      {
        v37 = 0;
        v38 = *(v414 + 504);
        v39 = *(v414 + 512);
        v40 = *(v414 + 280) + 40 * v420;
        v42 = *(v40 + 16);
        v41 = *(v40 + 24);
        do
        {
          memcpy((v41 + (v37 + v36) * v42 + 4 * v415 * (2 * v388 - 1)), (*(v7 + 24) + *(v7 + 16) * (v39 + v37) + 4 * v38), 4 * v415);
          v36 = v391 * v408;
          ++v37;
        }

        while (v37 < v411 - v429);
      }

      if (v402 < *(v414 + 160) && v415 && v411 != v36)
      {
        v43 = 0;
        v44 = v405 - (v28 + v415);
        v45 = *(v414 + 504);
        v46 = *(v414 + 512);
        v47 = v411 - v36;
        v48 = *(v414 + 280) + 40 * v420;
        v50 = *(v48 + 16);
        v49 = *(v48 + 24);
        do
        {
          memcpy((v49 + (v43 + v36) * v50 + 8 * v388 * v415), (*(v7 + 24) + *(v7 + 16) * (v46 + v43) + 4 * v44 + 4 * v45), 4 * v415);
          v36 = v391 * v408;
          ++v43;
        }

        while (v43 < v47);
      }

      v4 = v419;
      v6 = v420 + 1;
      v5 = *v419;
      a1 = v414;
    }

    while (v420 + 1 < 0xCCCCCCCCCCCCCCCDLL * ((v419[1] - *v419) >> 3));
  }

  v51 = *(a1 + 160);
  v52 = a2 / v51 * v51;
  v365 = a2 % v51;
  v366 = a2 / v51;
  if (*(a1 + 720) == (*(a1 + 16) - *(a1 + 8)) >> 3)
  {
    goto LABEL_44;
  }

  v53 = *(v414 + 208);
  v54 = *(v414 + 472);
  v55 = *(v414 + 96);
  v56 = *(v414 + 704);
  v57 = *(v414 + 696);
  v58.i64[0] = v57.i32[0];
  v58.i64[1] = v57.i32[1];
  v59 = vandq_s8(v58, vcgtzq_s64(v58));
  v60 = vaddw_s32(v55, v57);
  v61 = vbslq_s8(vcgtq_s64(v60, v56), v56, v60);
  v62 = vbslq_s8(vcgtq_s64(vaddq_s64(v59, v55), v61), vandq_s8(vsubq_s64(v61, v59), vcgtq_s64(v61, v59)), v55);
  if (a2 || (v62.i64[0] ? (v63 = v62.i64[1] == 0) : (v63 = 1), !v63 || (v421 = v62, v430 = v59, v443[0] = 0uLL, v443[1] = v56, v64 = sub_240BF0050(v414, a3, v443), v62 = v421, v59 = v430, !v64)))
  {
    v65 = vdupq_n_s64(v53 << v54);
    v66.i64[0] = (v53 << v54) * v365;
    v66.i64[1] = (v53 << v54) * v366;
    v67 = vaddw_s32(v66, v57);
    v68 = vbslq_s8(vcgtq_s64(v67, v59), v67, v59);
    v69 = vaddq_s64(v67, v65);
    v70 = vaddq_s64(v62, v59);
    v71 = vbslq_s8(vcgtq_s64(v69, v70), v70, v69);
    v72 = vbslq_s8(vcgtq_s64(vaddq_s64(v68, v65), v71), vandq_s8(vsubq_s64(v71, v68), vcgtq_s64(v71, v68)), v65);
    v73 = v72;
    if (!v72.i64[0] || v72.i64[1] == 0)
    {
      goto LABEL_44;
    }

    v431 = v68;
    if (v51 <= a2 || a2 != v52 || (v422 = v72, v443[0] = 0uLL, v443[1] = v68, v64 = sub_240BF0050(v414, a3, v443), v72 = v422, v68 = v431, !v64))
    {
      if (v51 <= a2 || (v443[0] = v68.u64[0], v423 = v72, v72.i64[1] = v68.i64[1], v443[1] = v72, v64 = sub_240BF0050(v414, a3, v443), v72 = v423, v68 = v431, !v64))
      {
        v424 = vaddq_s64(v72, v68);
        if (a2 == v52)
        {
          *&v443[0] = 0;
          *(v443 + 8) = vextq_s8(v68, v68, 8uLL);
          *(&v443[1] + 1) = v73.i64[1];
          v64 = sub_240BF0050(v414, a3, v443);
          v68 = v431;
          if (v64)
          {
            return v64;
          }

          v129 = v366 + 1;
          if (v366 + 1 == *(v414 + 168))
          {
            v130 = *(v414 + 712) - v424.i64[1];
            *&v443[0] = 0;
            *(v443 + 8) = vextq_s8(v424, v431, 8uLL);
            *(&v443[1] + 1) = v130;
            v64 = sub_240BF0050(v414, a3, v443);
            v68 = v431;
            if (v64)
            {
              return v64;
            }
          }
        }

        else
        {
          v129 = v366 + 1;
        }

        if (v129 != *(v414 + 168) || (v357 = *(v414 + 712) - v424.i64[1], *&v358 = v68.i64[0], *(&v358 + 1) = v424.i64[1], v443[0] = v358, *&v443[1] = v73.i64[0], *(&v443[1] + 1) = v357, v64 = sub_240BF0050(v414, a3, v443), v68.i64[1] = v431.i64[1], !v64))
        {
          v359 = *(v414 + 160);
          v360 = v365 + 1;
          if (v51 > a2 && v360 == v359)
          {
            v361 = *(v414 + 704) - v424.i64[0];
            v443[0] = v424.u64[0];
            *&v443[1] = v361;
            *(&v443[1] + 1) = v68.i64[1];
            v64 = sub_240BF0050(v414, a3, v443);
            v68.i64[1] = v431.i64[1];
            if (v64)
            {
              return v64;
            }

            v359 = *(v414 + 160);
          }

          if (v360 != v359 || (*&v362 = v424.i64[0], *(&v362 + 1) = v68.i64[1], v363 = *(v414 + 704) - v424.i64[0], v443[0] = v362, *&v443[1] = v363, *(&v443[1] + 1) = v73.i64[1], v64 = sub_240BF0050(v414, a3, v443), !v64))
          {
            if (v129 != *(v414 + 168) || v360 != *(v414 + 160) || (v364 = vsubq_s64(*(v414 + 704), v424), v443[0] = v424, v443[1] = v364, v64 = sub_240BF0050(v414, a3, v443), !v64))
            {
LABEL_44:
              memset(v444, 0, sizeof(v444));
              memset(v443, 0, sizeof(v443));
              v75 = v414;
              v76 = *(v414 + 464);
              v77 = *(v414 + 376);
              v78 = *(v414 + 384);
              v79 = a2 / v78;
              v80 = a2 % v78;
              v81 = *(v414 + 432);
              v82 = v81 * (a2 % v78);
              v83 = v81 * (a2 / v78);
              v84 = v81 >> 3;
              v85 = *(v414 + 368);
              v86 = v85 - (v82 >> 3);
              if (v85 < v82 >> 3)
              {
                v86 = 0;
              }

              if ((v82 >> 3) + (v81 >> 3) <= v85)
              {
                v86 = v81 >> 3;
              }

              v87 = (v83 >> 3) + (v81 >> 3);
              v88 = v77 - (v83 >> 3);
              if (v77 < v83 >> 3)
              {
                v88 = 0;
              }

              if (v87 > v77)
              {
                v84 = v88;
              }

              v89 = v78 + 1;
              v90 = v80 + v79 * v89;
              v91 = v79 + 1;
              v92 = v80 + (v79 + 1) * v89;
              v93 = *(v414 + 456);
              v94 = atomic_fetch_or((*(v414 + 448) + v90), 4u);
              v95 = atomic_fetch_or((*(v414 + 448) + v90 + 1), 8u);
              v96 = atomic_fetch_or((*(v414 + 448) + v92 + 1), 1u);
              v97 = atomic_fetch_or((*(v414 + 448) + v92), 2u);
              v98 = *(v414 + 384);
              v99 = v80 + 1;
              if (v82 > 7)
              {
                v100 = ((v82 & 0xFFFFFFFFFFFFFFF8) - v93);
                v101 = *(v414 + 304);
                if ((v82 & 0xFFFFFFFFFFFFFFF8) + v93 < v101)
                {
                  v101 = (v82 & 0xFFFFFFFFFFFFFFF8) + v93;
                }
              }

              else
              {
                v100 = 0;
                v101 = 0;
              }

              v102 = v94 | 4;
              v103 = *(v414 + 392);
              v104 = v86 + (v82 >> 3);
              v445 = v100;
              v446 = v101;
              if (v98 == v99)
              {
                v105 = *(v414 + 304);
                v106 = 8 * v104;
                v107 = v105;
              }

              else
              {
                v106 = 8 * v104;
                v107 = v106 - v93;
                v105 = *(v414 + 304);
              }

              v108 = v106 + v93;
              if (v108 >= v105)
              {
                v108 = v105;
              }

              v447 = v107;
              v448 = v108;
              if (v83 >= 8)
              {
                v109 = ((v83 & 0xFFFFFFFFFFFFFFF8) - v76);
                v110 = ((v83 & 0xFFFFFFFFFFFFFFF8) + v76);
                if (v110 >= *(v414 + 312))
                {
                  v110 = *(v414 + 312);
                }
              }

              else
              {
                v109 = 0;
                v110 = 0;
              }

              v111 = v84 + (v83 >> 3);
              if (v103 == v91)
              {
                v112 = *(v414 + 312);
                v113 = 8 * v111;
                v114 = v112;
              }

              else
              {
                v113 = 8 * v111;
                v114 = (8 * v111 - v76);
                v112 = *(v414 + 312);
              }

              v115 = v113 + v76;
              if (v115 >= v112)
              {
                v115 = v112;
              }

              v449 = 0x100000000;
              LOBYTE(v450) = 0;
              if (v102 == 15)
              {
                LOBYTE(v449) = 1;
              }

              if ((v95 & 0xFFFFFFF7) == 7)
              {
                BYTE6(v449) = 1;
              }

              if ((v96 & 0xFE) == 0xE)
              {
                LOBYTE(v450) = 1;
              }

              if ((v97 & 0xFFFFFFFD) == 0xD)
              {
                BYTE2(v449) = 1;
                if ((v102 & 2) != 0)
                {
                  goto LABEL_78;
                }
              }

              else if ((v102 & 2) != 0)
              {
LABEL_78:
                BYTE3(v449) = 1;
                if ((v102 & 8) == 0)
                {
LABEL_83:
                  if ((v95 & 4) != 0)
                  {
                    HIBYTE(v449) = 1;
                  }

                  v116 = v444;
                  if ((v97 & 4) != 0)
                  {
                    BYTE5(v449) = 1;
                  }

                  v117 = 0;
                  v452 = vdupq_n_s64(3uLL);
                  v453 = v452;
                  v454 = v452;
                  do
                  {
                    v118 = 0;
                    v119 = &v452.i64[2 * v117];
                    do
                    {
                      if (*(&v449 + 3 * v118 + v117))
                      {
                        v120 = *v119;
                        if (*v119 == 3)
                        {
                          v120 = v118;
                        }

                        ++v118;
                        *v119 = v120;
                        v119[1] = v118;
                      }

                      else
                      {
                        ++v118;
                      }
                    }

                    while (v118 != 3);
                    ++v117;
                  }

                  while (v117 != 3);
                  v121 = v454;
                  v122 = (&v445)[v452.i64[0]];
                  v123 = (&v445)[v452.i64[1]];
                  if (*&v452 == *&v453)
                  {
                    if (*&v452 == *&v454)
                    {
                      v124 = v123 - v122;
                      if (v123 != v122 && v115 != v109)
                      {
                        *&v443[0] = (&v445)[v452.i64[0]];
                        v116 = v443;
                        v367 = 1;
LABEL_147:
                        v116[1] = v109;
                        v116[2] = v124;
                        v116[3] = (v115 - v109);
                        goto LABEL_149;
                      }

                      return 0;
                    }

                    if (v123 == v122 || v114 == v109)
                    {
                      v367 = 0;
                      v116 = v443;
                    }

                    else
                    {
                      *&v443[0] = (&v445)[v452.i64[0]];
                      *(&v443[0] + 1) = v109;
                      *&v443[1] = v123 - v122;
                      *(&v443[1] + 1) = v114 - v109;
                      v367 = 1;
                    }

                    v139 = (&v445)[v454.i64[0]];
                    v140 = (&v445)[v454.i64[1]];
                    v124 = v140 - v139;
                    if (v140 != v139 && v115 != v114)
                    {
                      ++v367;
                      *v116 = v139;
                      goto LABEL_146;
                    }
                  }

                  else
                  {
                    v126 = v123 - v122;
                    v128 = v123 == v122 || v110 == v109;
                    if (*&v453 == *&v454)
                    {
                      if (v128)
                      {
                        v367 = 0;
                        v116 = v443;
                      }

                      else
                      {
                        *&v443[0] = (&v445)[v452.i64[0]];
                        *(&v443[0] + 1) = v109;
                        *&v443[1] = v126;
                        *(&v443[1] + 1) = v110 - v109;
                        v367 = 1;
                      }

                      v137 = (&v445)[v453.i64[0]];
                      v138 = (&v445)[v453.i64[1]];
                      v124 = v138 - v137;
                      if (v138 != v137 && v115 != v110)
                      {
                        ++v367;
                        *v116 = v137;
                        v109 = v110;
                        goto LABEL_147;
                      }
                    }

                    else
                    {
                      if (v128)
                      {
                        v367 = 0;
                        v116 = v443;
                      }

                      else
                      {
                        *&v443[0] = (&v445)[v452.i64[0]];
                        *(&v443[0] + 1) = v109;
                        *&v443[1] = v126;
                        *(&v443[1] + 1) = v110 - v109;
                        v367 = 1;
                      }

                      v132 = (&v445)[v453.i64[0]];
                      v133 = ((&v445)[v453.i64[1]] - v132);
                      if (v133)
                      {
                        v134 = v114 == v110;
                      }

                      else
                      {
                        v134 = 1;
                      }

                      if (!v134)
                      {
                        ++v367;
                        *v116 = v132;
                        v116[1] = v110;
                        v116[2] = v133;
                        v116[3] = (v114 - v110);
                      }

                      v135 = (&v445)[v121.i64[0]];
                      v136 = (&v445)[v121.i64[1]];
                      v124 = v136 - v135;
                      if (v136 != v135 && v115 != v114)
                      {
                        v116 = &v443[2 * v367];
                        *v116 = v135;
                        ++v367;
LABEL_146:
                        v109 = v114;
                        goto LABEL_147;
                      }
                    }
                  }

                  if (v367)
                  {
LABEL_149:
                    v141 = 0;
                    while (1)
                    {
                      v370 = v141;
                      v142 = &v443[2 * v141];
                      v143 = *v4;
                      v144 = *v142;
                      v373 = *v142;
                      if (v4[1] == *v4)
                      {
                        v205 = v142[2];
                        v374 = v142[1];
                        v206 = v142[3];
                      }

                      else
                      {
                        v145 = 0;
                        v369 = v142[2];
                        v374 = v142[1];
                        v368 = v142[3];
                        v372 = v369 + v144;
                        do
                        {
                          v399 = v143 + 40 * v145;
                          v146 = *(v75 + 160);
                          v147 = a2 / v146;
                          v148 = a2 % v146;
                          v149 = (**(v75 + 32) + 16 * v145);
                          v151 = *v149;
                          v150 = v149[1];
                          v152 = *(v75 + 472);
                          v153 = *(v75 + 208) << v152;
                          v386 = v148;
                          v406 = (v153 >> v151) * v148;
                          v154 = (v153 >> v151) + v406;
                          v432 = 1 << v151;
                          v155 = (1 << v151) - 1;
                          v156 = *(v75 + 104);
                          v157 = v155 + *(v75 + 96);
                          v158 = v75;
                          v159 = v157 / v432;
                          v396 = v154;
                          if (v159 >= v154)
                          {
                            v160 = v154;
                          }

                          else
                          {
                            v160 = v157 / v432;
                          }

                          v379 = v160;
                          v382 = v147;
                          v161 = (v153 >> v150) * v147;
                          v425 = 1 << v150;
                          v162 = (1 << v150) - 1;
                          v163 = (v162 + v156) / (1 << v150);
                          v389 = (v153 >> v150) + v161;
                          if (v163 >= v389)
                          {
                            v164 = (v153 >> v150) + v161;
                          }

                          else
                          {
                            v164 = (v162 + v156) / v425;
                          }

                          v375 = v164;
                          v165 = (**(v158 + 56) + 16 * v145);
                          v166 = *v165;
                          v416 = v165[1];
                          v412 = v145;
                          v403 = sub_240BED250(v158, v145);
                          v168 = v167;
                          v169 = v155 + (v373 << v152);
                          if (v169 >= v432)
                          {
                            v170 = v169 / v432 - v166;
                          }

                          else
                          {
                            v170 = 0;
                          }

                          v171 = (v155 + (v372 << v152)) / v432 + v166;
                          if (v159 < v171)
                          {
                            v171 = v159;
                          }

                          v409 = v171;
                          v172 = v162 + (v374 << v152);
                          v173 = v172 / v425 - v416;
                          if (v172 < v425)
                          {
                            v173 = 0;
                          }

                          v174 = (v162 + ((v368 + v374) << v152)) / v425 + v416;
                          if (v163 < v174)
                          {
                            v174 = v163;
                          }

                          v417 = v174;
                          v392 = v173;
                          v377 = v161;
                          v384 = v173 - v161;
                          v433 = v170;
                          if (v173 < v161 && v409 != v170 && v167)
                          {
                            v175 = 0;
                            v426 = v167 * (2 * v382 - 2);
                            v176 = v170 - v406;
                            v177 = *(v414 + 504);
                            v178 = *(v414 + 512) - v167;
                            v179 = *(v414 + 256) + 40 * v412;
                            v181 = *(v399 + 16);
                            v180 = *(v399 + 24);
                            v182 = 4 * (v409 - v170);
                            v183 = v167;
                            do
                            {
                              memcpy((v180 + (v178 + v175) * v181 + 4 * v176 + 4 * v177), (*(v179 + 24) + *(v179 + 16) * (v175 + v426) + 4 * v170), v182);
                              v170 = v433;
                              ++v175;
                              --v183;
                            }

                            while (v183);
                          }

                          if (v389 < v417 && v409 != v170 && v168)
                          {
                            v184 = 0;
                            v185 = v168 * ((2 * v382) | 1);
                            v186 = v170 - v406;
                            v187 = *(v414 + 504);
                            v188 = *(v414 + 256) + 40 * v412;
                            v189 = *(v399 + 16);
                            v190 = *(v399 + 24);
                            v191 = v375 - v377 + *(v414 + 512);
                            v192 = 4 * (v409 - v170);
                            do
                            {
                              memcpy((v190 + (v191 + v184) * v189 + 4 * v186 + 4 * v187), (*(v188 + 24) + *(v188 + 16) * (v184 + v185) + 4 * v170), v192);
                              v170 = v433;
                              ++v184;
                              --v168;
                            }

                            while (v168);
                          }

                          if (v170 < v406 && v403 && v417 != v392)
                          {
                            v193 = 0;
                            v194 = *(v414 + 504) - v403;
                            v195 = *(v414 + 280) + 40 * v412;
                            v197 = *(v399 + 16);
                            v196 = *(v399 + 24);
                            v198 = v384 + *(v414 + 512);
                            do
                            {
                              memcpy((v196 + (v198 + v193) * v197 + 4 * v194), (*(v195 + 24) + *(v195 + 16) * (v392 + v193) + 4 * v403 * (2 * v386 - 2)), 4 * v403);
                              ++v193;
                            }

                            while (v193 < v417 - v392);
                          }

                          if (v396 < v409 && v403 && v417 != v392)
                          {
                            v199 = 0;
                            v200 = *(v414 + 504);
                            v201 = *(v414 + 280) + 40 * v412;
                            v203 = *(v399 + 16);
                            v202 = *(v399 + 24);
                            v204 = v384 + *(v414 + 512);
                            do
                            {
                              memcpy((v202 + (v204 + v199) * v203 + 4 * (v379 - v406) + 4 * v200), (*(v201 + 24) + *(v201 + 16) * (v392 + v199) + 4 * v403 * ((2 * v386) | 1)), 4 * v403);
                              ++v199;
                            }

                            while (v199 < v417 - v392);
                          }

                          v75 = v414;
                          v145 = v412 + 1;
                          v4 = v419;
                          v143 = *v419;
                        }

                        while (v412 + 1 < 0xCCCCCCCCCCCCCCCDLL * ((v419[1] - *v419) >> 3));
                        v144 = v373;
                        v206 = v368;
                        v205 = v369;
                      }

                      v390 = *(v75 + 504);
                      v393 = *(v75 + 512);
                      v397 = *(v75 + 208);
                      v449 = 0;
                      v450 = 0;
                      v451 = 0;
                      sub_240BED2B0(&v449, (*(v75 + 16) - *(v75 + 8)) >> 3);
                      v207 = *(v75 + 472);
                      v208 = 1 << v207;
                      v209 = v374 * v208;
                      v210 = v206 << v207;
                      v211 = (v206 << v207) + v374 * v208;
                      v213 = *(v75 + 96);
                      v212 = *(v75 + 104);
                      if (v212 >= v211)
                      {
                        v214 = (v206 << v207) + v374 * v208;
                      }

                      else
                      {
                        v214 = *(v75 + 104);
                      }

                      v215 = v214 >= v209;
                      v216 = v214 - v209;
                      if (!v215)
                      {
                        v216 = 0;
                      }

                      v215 = v212 >= v211;
                      v217 = v144 * v208;
                      v218 = v205 << v207;
                      v219 = v218 + v217;
                      if (v215)
                      {
                        v220 = v210;
                      }

                      else
                      {
                        v220 = v216;
                      }

                      if (v213 >= v219)
                      {
                        v221 = v218 + v217;
                      }

                      else
                      {
                        v221 = *(v75 + 96);
                      }

                      v215 = v221 >= v217;
                      v222 = v221 - v217;
                      if (!v215)
                      {
                        v222 = 0;
                      }

                      if (v213 < v219)
                      {
                        v218 = v222;
                      }

                      v223 = *(v75 + 8);
                      v400 = *(v75 + 16);
                      v224 = (v400 - v223) >> 3;
                      if (v400 != v223)
                      {
                        v225 = *(v75 + 32);
                        v226 = *(v75 + 568);
                        if (v224 <= 1)
                        {
                          v227 = 1;
                        }

                        else
                        {
                          v227 = (v400 - v223) >> 3;
                        }

                        v228 = (v449 + 16);
                        do
                        {
                          v230 = *v226++;
                          v229 = v230;
                          v231 = *v225;
                          v225 += 3;
                          v232 = (v231 + 16 * v229);
                          v234 = *v232;
                          v233 = v232[1];
                          *(v228 - 2) = v217 / (1 << v234);
                          *(v228 - 1) = v209 / (1 << v233);
                          *v228 = (v218 + ~(-1 << v234)) >> v234;
                          *(v228 + 1) = (v220 + ~(-1 << v233)) >> v233;
                          v228 += 32;
                          --v227;
                        }

                        while (v227);
                      }

                      v407 = v220;
                      if (*(v75 + 720) == v224)
                      {
                        v235 = 0;
                        v418 = 0;
                        v236 = (v414 + 104);
                        v237 = (v414 + 96);
                      }

                      else
                      {
                        v235 = *(v75 + 696);
                        v418 = *(v75 + 700);
                        v236 = (v414 + 712);
                        v237 = (v414 + 704);
                      }

                      v238 = *v237;
                      v387 = v235 + v217;
                      v239 = (v235 + v217) & ~((v235 + v217) >> 63);
                      v240 = v218 + v217 + v235;
                      if (v238 < v240)
                      {
                        v240 = v238;
                      }

                      v410 = v240 - v239;
                      v413 = v239;
                      if (v240 <= v239)
                      {
                        v64 = 0;
                      }

                      else
                      {
                        v404 = v235;
                        v385 = *v236;
                        v241 = *(v75 + 504);
                        v242 = *(v75 + 512);
                        v243 = *(v75 + 32);
                        v244 = *(v75 + 472);
                        v245 = *(v75 + 520);
                        v438 = 0;
                        v439 = 0;
                        v437 = 0;
                        v247 = *v4;
                        v246 = v4[1];
                        v445 = 0;
                        v446 = 0;
                        v447 = 0;
                        v248 = v246 - v247;
                        v383 = v241;
                        v378 = v243;
                        v380 = v242;
                        v376 = v244;
                        if (v248)
                        {
                          sub_240BF0264(&v445, 0xCCCCCCCCCCCCCCCDLL * (v248 >> 3));
                        }

                        v249 = 0;
                        v250 = v224 + 1;
                        v251 = v224 + 1;
                        if (v224 == -1)
                        {
                          v4 = v419;
                        }

                        else
                        {
                          if (0xAAAAAAAAAAAAAAABLL * (v439 >> 3) < v251)
                          {
                            if (v250 <= 0xAAAAAAAAAAAAAAALL)
                            {
                              if (0x5555555555555556 * (v439 >> 3) > v250)
                              {
                                v250 = 0x5555555555555556 * (v439 >> 3);
                              }

                              if (0xAAAAAAAAAAAAAAABLL * (v439 >> 3) >= 0x555555555555555)
                              {
                                v252 = 0xAAAAAAAAAAAAAAALL;
                              }

                              else
                              {
                                v252 = v250;
                              }

                              v454.i64[0] = &v437;
                              if (v252 <= 0xAAAAAAAAAAAAAAALL)
                              {
                                operator new();
                              }

                              sub_240B2291C();
                            }

                            sub_240B228BC();
                          }

                          v253 = 24 * v224 + 24;
                          v4 = v419;
                          do
                          {
                            sub_240BF02C4(v249, &v445);
                            v249 += 3;
                            v253 -= 24;
                          }

                          while (v253);
                          v438 = 24 * v251;
                          v75 = v414;
                        }

                        if (v445)
                        {
                          operator delete(v445);
                        }

                        v254 = *v4;
                        v255 = v4[1];
                        if (v400 != v223)
                        {
                          v256 = 0;
                          v257 = (v245 + 24 * a3);
                          if (v224 <= 1)
                          {
                            v224 = 1;
                          }

                          do
                          {
                            v63 = v255 == v254;
                            v255 = v254;
                            if (!v63)
                            {
                              v258 = 0;
                              v259 = 0;
                              do
                              {
                                v260 = *(*(v75 + 8) + 8 * v256);
                                if ((*(*v260 + 24))(v260, v259) == 2)
                                {
                                  v261 = *(*v257 + v258) + 40 * v256;
                                  v262 = *&v437[24 * v256 + 24] + v258;
                                  *(v262 + 8) = *(v261 + 4) - 1;
                                  *v262 = *(v261 + 24);
                                  *(v262 + 16) = *(v261 + 16) >> 2;
                                }

                                ++v259;
                                v254 = *v4;
                                v255 = v4[1];
                                v258 += 24;
                              }

                              while (v259 < 0xCCCCCCCCCCCCCCCDLL * ((v255 - *v4) >> 3));
                            }

                            ++v256;
                          }

                          while (v256 != v224);
                        }

                        v263 = v255 - v254;
                        if (v263)
                        {
                          v264 = 0xCCCCCCCCCCCCCCCDLL * (v263 >> 3);
                          if (v264 <= 1)
                          {
                            v264 = 1;
                          }

                          v265 = *v437 + 8;
                          v266 = (v254 + 24);
                          v267 = (*v378 + 8);
                          do
                          {
                            v268 = *(v267 - 2);
                            v269 = *v267;
                            v267 += 4;
                            v270 = *(v266 - 1);
                            *(v265 - 8) = *v266 + v270 * (((v393 - v366 * v397 + v374 + -v380) * (1 << v376)) / (1 << v269) + v380) + 4 * (((v373 + v390 - v365 * v397 + -v383) * (1 << v376)) / (1 << v268)) + 4 * v383 - 64;
                            *(v265 + 8) = v270 >> 2;
                            *v265 = -1;
                            v265 += 24;
                            v266 += 5;
                            --v264;
                          }

                          while (v264);
                        }

                        v271 = *(v75 + 688);
                        v446 = 0;
                        v447 = 0;
                        v445 = 0;
                        v452.i64[0] = &v445;
                        v452.i8[8] = 0;
                        if (v271 != -1)
                        {
                          if ((v271 + 1) <= 0xAAAAAAAAAAAAAAALL)
                          {
                            operator new();
                          }

                          sub_240B228BC();
                        }

                        v272 = 0;
                        do
                        {
                          v273 = &v445[24 * v272];
                          v274 = 0xCCCCCCCCCCCCCCCDLL * ((v4[1] - *v4) >> 3);
                          v275 = *v273;
                          v276 = *(v273 + 1);
                          v277 = 0xAAAAAAAAAAAAAAABLL * ((v276 - *v273) >> 3);
                          v278 = v274 - v277;
                          if (v274 <= v277)
                          {
                            if (v274 < v277)
                            {
                              v282 = v275 + 0x3333333333333338 * ((v4[1] - *v4) >> 3);
                              if (v276 != v282)
                              {
                                v283 = *(v273 + 1);
                                do
                                {
                                  v285 = *(v283 - 24);
                                  v283 -= 24;
                                  v284 = v285;
                                  if (v285)
                                  {
                                    *(v276 - 16) = v284;
                                    operator delete(v284);
                                  }

                                  v276 = v283;
                                }

                                while (v283 != v282);
                              }

                              *(v273 + 1) = v282;
                            }
                          }

                          else
                          {
                            v279 = *(v273 + 2);
                            if (0xAAAAAAAAAAAAAAABLL * ((v279 - v276) >> 3) < v278)
                            {
                              if (v274 <= 0xAAAAAAAAAAAAAAALL)
                              {
                                v454.i64[0] = &v445[24 * v272];
                                v280 = 0xAAAAAAAAAAAAAAABLL * ((v279 - v275) >> 3);
                                if (2 * v280 > v274)
                                {
                                  v274 = 2 * v280;
                                }

                                if (v280 >= 0x555555555555555)
                                {
                                  v281 = 0xAAAAAAAAAAAAAAALL;
                                }

                                else
                                {
                                  v281 = v274;
                                }

                                sub_240B43464(v281);
                              }

                              sub_240B228BC();
                            }

                            bzero(*(v273 + 1), 24 * ((24 * v278 - 24) / 0x18) + 24);
                            *(v273 + 1) = v276 + 24 * ((24 * v278 - 24) / 0x18) + 24;
                          }

                          ++v272;
                          v286 = *(v414 + 688);
                        }

                        while (v272 < v286);
                        v287 = v445;
                        v289 = *v4;
                        v288 = v4[1];
                        sub_240B41F20(&__p, 1uLL);
                        v290 = 0xCCCCCCCCCCCCCCCDLL * ((v288 - v289) >> 3);
                        v291 = &v287[24 * v286];
                        v292 = *v291;
                        v293 = *(v291 + 1);
                        v294 = v293 - *v291;
                        v295 = 0xAAAAAAAAAAAAAAABLL * (v294 >> 3);
                        v296 = v290 - v295;
                        if (v290 <= v295)
                        {
                          v75 = v414;
                          if (v290 < v295)
                          {
                            v300 = (v292 + 24 * v290);
                            if (v293 != v300)
                            {
                              v301 = *(v291 + 1);
                              do
                              {
                                v303 = *(v301 - 3);
                                v301 -= 3;
                                v302 = v303;
                                if (v303)
                                {
                                  *(v293 - 2) = v302;
                                  operator delete(v302);
                                }

                                v293 = v301;
                              }

                              while (v301 != v300);
                            }

                            *(v291 + 1) = v300;
                          }
                        }

                        else
                        {
                          v297 = *(v291 + 2);
                          if (0xAAAAAAAAAAAAAAABLL * ((v297 - v293) >> 3) < v296)
                          {
                            if (v290 <= 0xAAAAAAAAAAAAAAALL)
                            {
                              v454.i64[0] = v291;
                              v298 = 0x5555555555555556 * ((v297 - v292) >> 3);
                              if (v298 <= v290)
                              {
                                v298 = v290;
                              }

                              if (0xAAAAAAAAAAAAAAABLL * ((v297 - v292) >> 3) >= 0x555555555555555)
                              {
                                v299 = 0xAAAAAAAAAAAAAAALL;
                              }

                              else
                              {
                                v299 = v298;
                              }

                              sub_240B43464(v299);
                            }

                            sub_240B228BC();
                          }

                          v304 = &v293[3 * v296];
                          v305 = 24 * v290 - 8 * (v294 >> 3);
                          v75 = v414;
                          do
                          {
                            *v293 = 0;
                            v293[1] = 0;
                            v293[2] = 0;
                            sub_240B43360(v293, __p, v436, (v436 - __p) >> 3);
                            v293 += 3;
                            v305 -= 24;
                          }

                          while (v305);
                          *(v291 + 1) = v304;
                        }

                        if (__p)
                        {
                          v436 = __p;
                          operator delete(__p);
                        }

                        v307 = *v4;
                        v306 = v4[1];
                        sub_240B41F20(v452.i64, 8uLL);
                        sub_240B41F98(&__p, 0xCCCCCCCCCCCCCCCDLL * ((v306 - v307) >> 3));
                        if (v452.i64[0])
                        {
                          v452.i64[1] = v452.i64[0];
                          operator delete(v452.i64[0]);
                        }

                        v308 = *(v75 + 640);
                        v309 = *(v75 + 648);
                        if (v308 == v309)
                        {
                          v311 = v407;
                        }

                        else
                        {
                          v310 = v308 + 1;
                          v311 = v407;
                          if (v308 + 1 != v309)
                          {
                            v312 = *v308;
                            v313 = v308 + 1;
                            do
                            {
                              v315 = *v313++;
                              v314 = v315;
                              v316 = v312 < v315;
                              if (v312 <= v315)
                              {
                                v312 = v314;
                              }

                              if (v316)
                              {
                                v308 = v310;
                              }

                              v310 = v313;
                            }

                            while (v313 != v309);
                          }
                        }

                        v317 = *v308;
                        v318 = -v317;
                        v427 = v317;
                        v401 = v317 + v311;
                        if (v317 + v311 > -v317)
                        {
                          v394 = v418 + v209;
                          do
                          {
                            v319 = *(v75 + 688);
                            v320 = (v318 - v427);
                            v434 = v318;
                            if (v319)
                            {
                              for (i = 0; i < v319; ++i)
                              {
                                v322 = *(*(v75 + 640) + 4 * i);
                                v323 = v322 + v320;
                                v324 = *(*(*(v75 + 32) + 24 * i) + 16 * *(*(v75 + 568) + 4 * i) + 8);
                                v325 = (v322 + v320) & ~(-1 << v324);
                                v326 = -v322;
                                if (v325)
                                {
                                  v327 = 1;
                                }

                                else
                                {
                                  v327 = v323 < v326;
                                }

                                if (!v327)
                                {
                                  v328 = v323 >> v324;
                                  v329 = v449;
                                  v330 = *(v449 + 32 * i + 8) + v328;
                                  if (v330 >= 0 && v330 < *(*(v75 + 592) + 32 * i + 24))
                                  {
                                    v442 = v328;
                                    v441 = i;
                                    v331 = *(v75 + 8);
                                    v332 = *(v331 + 8 * i);
                                    v440 = *(v332 + 16);
                                    v333 = *(v332 + 32);
                                    v452.i64[0] = &v442;
                                    v452.i64[1] = &v440;
                                    v453.i64[0] = &v449;
                                    v453.i64[1] = &v441;
                                    v454.i64[0] = v75;
                                    v454.i64[1] = &v445;
                                    v455 = &v437;
                                    if (v4[1] != *v4)
                                    {
                                      v334 = 0;
                                      do
                                      {
                                        v335 = *(*(v75 + 8) + 8 * v441);
                                        v336 = (*(*v335 + 24))(v335, v334);
                                        if (v336)
                                        {
                                          v337 = v441;
                                          v338 = *&v445[24 * v441] + 24 * v334;
                                          v339 = (2 * v440) | 1;
                                          if (v339 == (*(v338 + 8) - *v338) >> 3)
                                          {
                                            v340 = 2 * v440;
                                            if (2 * v440 >= 1)
                                            {
                                              v341 = 0;
                                              do
                                              {
                                                v342 = (*(*&v445[24 * v337] + 24 * v334) + 8 * v341);
                                                *v342 = v342[1];
                                                ++v341;
                                              }

                                              while (v340 != v341);
                                            }

                                            sub_240BF034C(&v452, v334, v340);
                                          }

                                          else
                                          {
                                            sub_240BF05CC(v338, v339);
                                            if ((v440 & 0x8000000000000000) == 0)
                                            {
                                              v343 = -1;
                                              do
                                              {
                                                sub_240BF034C(&v452, v334, ++v343);
                                              }

                                              while (v343 < 2 * v440);
                                            }
                                          }

                                          v4 = v419;
                                          if (v336 == 2)
                                          {
                                            v344 = 0;
                                            v345 = v442 << v333;
                                            v346 = v441 + 1;
                                            v347 = (1 << v333);
                                            do
                                            {
                                              v348 = *&v437[24 * v346] + 24 * v334;
                                              *(*(__p + 3 * v334) + v344) = *v348 + 4 * *(v348 + 16) * (*(v348 + 8) & v345);
                                              v344 += 8;
                                              ++v345;
                                              --v347;
                                            }

                                            while (v347);
                                          }
                                        }

                                        ++v334;
                                      }

                                      while (v334 < 0xCCCCCCCCCCCCCCCDLL * ((v4[1] - *v4) >> 3));
                                      v331 = *(v75 + 8);
                                      v329 = v449;
                                    }

                                    v64 = (*(**(v331 + 8 * i) + 16))(*(v331 + 8 * i), &v445[24 * i], &__p, *(*(v75 + 664) + 4 * i), *(v329 + 32 * i + 16), *(v329 + 32 * i), v330, a3);
                                    if (v64)
                                    {
                                      goto LABEL_350;
                                    }

                                    v319 = *(v75 + 688);
                                  }
                                }
                              }
                            }

                            if (v4[1] != *v4)
                            {
                              v349 = 0;
                              v350 = 0;
                              do
                              {
                                v351 = *&v437[24 * *(*(*(v75 + 616) + 24 * v319) + 4 * v350) + 24] + v349;
                                **(*&v445[24 * v319] + v349) = *v351 + 4 * *(v351 + 16) * (*(v351 + 8) & v320) + 4 * (-v387 & (v387 >> 63));
                                ++v350;
                                v349 += 24;
                              }

                              while (v350 < 0xCCCCCCCCCCCCCCCDLL * ((v4[1] - *v4) >> 3));
                            }

                            if ((v320 & 0x80000000) == 0 && v407 > v320)
                            {
                              v352 = v394 + v320;
                              if (v352 >= 0 && v352 < v385)
                              {
                                while (1)
                                {
                                  v353 = *(v75 + 8);
                                  if (v319 >= (*(v75 + 16) - v353) >> 3)
                                  {
                                    break;
                                  }

                                  v354 = v404;
                                  if (v319 >= *(v75 + 720))
                                  {
                                    v354 = 0;
                                  }

                                  v355 = v418;
                                  if (v319 >= *(v75 + 720))
                                  {
                                    v355 = 0;
                                  }

                                  v64 = (*(**(v353 + 8 * v319) + 16))(*(v353 + 8 * v319), &v445[24 * *(v75 + 688)], &__p, 0, v410, v413 - v354, v352 - v355, a3);
                                  if (v64)
                                  {
                                    goto LABEL_350;
                                  }

                                  ++v319;
                                }
                              }
                            }

                            v318 = v434 + 1;
                          }

                          while (v434 + 1 != v401);
                        }

                        v64 = 0;
LABEL_350:
                        v452.i64[0] = &__p;
                        sub_240B23988(&v452);
                        v452.i64[0] = &v445;
                        sub_240BF06CC(&v452);
                        sub_240BF0760(&v437);
                      }

                      if (v449)
                      {
                        v450 = v449;
                        operator delete(v449);
                      }

                      if (v64)
                      {
                        return v64;
                      }

                      v141 = v370 + 1;
                      if (v370 + 1 == v367)
                      {
                        return 0;
                      }
                    }
                  }

                  return 0;
                }

LABEL_82:
                BYTE1(v449) = 1;
                goto LABEL_83;
              }

              if ((v102 & 8) == 0)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            }
          }
        }
      }
    }
  }

  return v64;
}

uint64_t sub_240BF0050(void *a1, uint64_t a2, void *a3)
{
  if (!a3[2])
  {
    return 0;
  }

  v6 = a1[4];
  v8 = *v6;
  v7 = v6[1];
  v9 = (v7 - *v6) >> 4;
  sub_240B41F20(&__p, 1uLL);
  sub_240B41F98(v22, v9);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  __p = 0;
  v20 = 0;
  v21 = 0;
  if (v7 != v8)
  {
    v10 = 0;
    v11 = 0;
    if (v9 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v9;
    }

    do
    {
      **(v22[0] + v10) = *(a1[68] + 40 * a2 + 24) + *(a1[68] + 40 * a2 + 16) * v11++;
      v10 += 24;
    }

    while (v12 != v11);
  }

  if (a3[3])
  {
    v13 = 0;
    v14 = a1[1];
    do
    {
      v15 = *(v14 + 8 * a1[90] - 8);
      (*(*v15 + 72))(v15, v22, a3[2], *a3, a3[1] + v13);
      for (i = a1[90]; ; ++i)
      {
        v14 = a1[1];
        if (i >= (a1[2] - v14) >> 3)
        {
          break;
        }

        v17 = (*(**(v14 + 8 * i) + 16))(*(v14 + 8 * i), v22, &__p, 0, a3[2], *a3, a3[1] + v13, a2);
        if (v17)
        {
          goto LABEL_17;
        }
      }

      ++v13;
    }

    while (v13 < a3[3]);
  }

  v17 = 0;
LABEL_17:
  p_p = &__p;
  sub_240B23988(&p_p);
  __p = v22;
  sub_240B23988(&__p);
  return v17;
}

void sub_240BF021C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240BF0264(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_240B228BC();
}

uint64_t *sub_240BF02C4(uint64_t *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    sub_240BF0264(result, 0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3));
  }

  return result;
}

void sub_240BF0330(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float sub_240BF034C(unsigned int **a1, uint64_t a2, uint64_t a3)
{
  v3 = **a1 + a3 - *a1[1];
  v4 = a1[4];
  v5 = *a1[3];
  v6 = *(*a1[2] + 32 * v5 + 8);
  v7 = *(*(v4 + 74) + 32 * v5 + 24);
  if (!v6 && ((v3 & 0x80000000) != 0 || v3 >= v7))
  {
    v6 = v3;
    if ((v3 & 0x80000000) != 0 || v3 >= v7)
    {
      v37 = v3 >> 63;
      do
      {
        v38 = ~v6;
        if (v37)
        {
          v39 = 0;
        }

        else
        {
          v39 = 2 * v7;
        }

        v6 = v39 + v38;
        v37 = v6 >> 63;
      }

      while (v6 < 0 || v6 >= v7);
    }
  }

  else
  {
    v8 = v6 + v3;
    LODWORD(v6) = ~v8 - v6 + 2 * v7;
    if (v8 < v7)
    {
      LODWORD(v6) = **a1 + a3 - *a1[1];
    }
  }

  v9 = 3 * v5;
  v10 = *(*a1[6] + 24 * *(*(*(v4 + 77) + 8 * v9) + 4 * a2) + 24) + 24 * a2;
  *(*(*(*a1[5] + 8 * v9) + 24 * a2) + 8 * a3) = *v10 + 4 * *(v10 + 16) * (*(v10 + 8) & v6);
  v11 = *a1[3];
  v12 = *(*(*(*a1[5] + 24 * v11) + 24 * a2) + 8 * a3);
  v13 = *(*(*(v4 + 1) + 8 * v11) + 8);
  v14 = (*a1[2] + 32 * v11);
  v15 = *v14;
  v16 = v14[2];
  v17 = *(*(v4 + 74) + 32 * v11 + 16);
  if (v17 <= v13)
  {
    if (!v15)
    {
      if (v13 < 1)
      {
        return result;
      }

      for (i = 0; i != v13; ++i)
      {
        v27 = ~i;
        LOBYTE(v28) = 1;
        do
        {
          v29 = ~v27;
          if (v28)
          {
            v30 = 0;
          }

          else
          {
            v30 = 2 * v17;
          }

          v27 = v30 + v29;
          v28 = v27 >> 63;
        }

        while (v27 < 0 || v27 >= v17);
        result = *(v12 + 64 + 4 * v27);
        *(v12 + 4 * (15 - i)) = result;
      }
    }

    if (v15 + v13 + v16 >= v17 && v13 >= 1)
    {
      v31 = 0;
      v32 = v12 + 64;
      do
      {
        v33 = v31 + v17;
        v34 = (v31 + v17) >> 63;
        do
        {
          v35 = ~v33;
          if (v34)
          {
            v36 = 0;
          }

          else
          {
            v36 = 2 * v17;
          }

          v33 = v36 + v35;
          v34 = v33 >> 63;
        }

        while (v33 < 0 || v33 >= v17);
        result = *(v32 + 4 * (v33 - v15));
        *(v32 + 4 * (v17 - v15) + 4 * v31++) = result;
      }

      while (v31 != v13);
    }
  }

  else
  {
    if (!v15)
    {
      if (v13 < 1)
      {
        return result;
      }

      v18 = (v12 + 64);
      v19 = (v12 + 60);
      v20 = v13;
      do
      {
        v21 = *v18++;
        result = v21;
        *v19-- = v21;
        --v20;
      }

      while (v20);
    }

    if (v15 + v13 + v16 >= v17 && v13 >= 1)
    {
      v23 = (v12 + 4 * (v17 - v15) + 64);
      v24 = (v12 - 4 * v15 + 4 * v17 + 60);
      do
      {
        v25 = *v24--;
        result = v25;
        *v23++ = v25;
        --v13;
      }

      while (v13);
    }
  }

  return result;
}

void sub_240BF05CC(const void **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = &v3[8 * a2];
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_240B4341C(v10);
      }

      sub_240B228BC();
    }

    bzero(a1[1], 8 * v6);
    v11 = &v4[8 * v6];
  }

  a1[1] = v11;
}

void sub_240BF06CC(void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        sub_240B23988(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

char **sub_240BF0760(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v7 = *(v5 - 3);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 2) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_240BF07D0(uint64_t a1@<X0>, unint64_t **a4@<X8>)
{
  v5 = *(a1 + 32);
  v7 = *v5;
  v6 = v5[1];
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if ((v8 >> 4) < 0x666666666666667)
    {
      sub_240BF0988(v8 >> 4);
    }

    sub_240B228BC();
  }
}

void sub_240BF0988(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  sub_240B2291C();
}

uint64_t sub_240BF09E0(uint64_t result, unint64_t a2)
{
  v2 = *(result + 384);
  v3 = a2 / v2;
  v4 = a2 % v2++;
  v5 = v4 + v3 * v2;
  v6 = v5 + v2;
  atomic_fetch_and((*(result + 448) + v5), 0xFBu);
  atomic_fetch_and((*(result + 448) + v5 + 1), 0xF7u);
  atomic_fetch_and((*(result + 448) + v6), 0xFDu);
  atomic_fetch_and((*(result + 448) + v6 + 1), 0xFEu);
  return result;
}

void sub_240BF0A44(uint64_t a1)
{
  sub_240BF0A7C(a1);

  JUMPOUT(0x245CCE590);
}

uint64_t sub_240BF0A7C(uint64_t a1)
{
  v2 = *(a1 + 664);
  if (v2)
  {
    *(a1 + 672) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 640);
  if (v3)
  {
    *(a1 + 648) = v3;
    operator delete(v3);
  }

  v11 = (a1 + 616);
  sub_240B31E8C(&v11);
  v4 = *(a1 + 592);
  if (v4)
  {
    *(a1 + 600) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 568);
  if (v5)
  {
    *(a1 + 576) = v5;
    operator delete(v5);
  }

  v11 = (a1 + 544);
  sub_240B30C38(&v11);
  v6 = *(a1 + 520);
  if (v6)
  {
    v7 = *(a1 + 528);
    v8 = *(a1 + 520);
    if (v7 != v6)
    {
      do
      {
        v7 -= 3;
        v11 = v7;
        sub_240BEDEA0(&v11);
      }

      while (v7 != v6);
      v8 = *(a1 + 520);
    }

    *(a1 + 528) = v6;
    operator delete(v8);
  }

  v11 = (a1 + 480);
  sub_240BEDEA0(&v11);
  v9 = *(a1 + 448);
  *(a1 + 448) = 0;
  if (v9)
  {
    MEMORY[0x245CCE570](v9, 0x1000C8077774924);
  }

  v11 = (a1 + 280);
  sub_240B30C38(&v11);
  v11 = (a1 + 256);
  sub_240B30C38(&v11);

  return sub_240BF0BAC(a1);
}

uint64_t sub_240BF0BAC(uint64_t a1)
{
  *a1 = &unk_2852A1BD0;
  v2 = *(a1 + 224);
  if (v2)
  {
    *(a1 + 232) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 56);
  sub_240B23988(&v4);
  v4 = (a1 + 32);
  sub_240B23988(&v4);
  v4 = (a1 + 8);
  sub_240B30CC0(&v4);
  return a1;
}

void sub_240BF0C4C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_240B228BC();
    }

    v10 = v3 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_240B2291C();
    }

    v12 = (8 * (v8 >> 3));
    v13 = *a2;
    *a2 = 0;
    *v12 = v13;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = v4 + 1;
  }

  *(a1 + 8) = v6;
}

void sub_240BF0D54(const void **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = &v3[16 * a2];
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 4)
    {
      if (!(a2 >> 60))
      {
        v8 = v7 - v3;
        v9 = v8 >> 3;
        if (v8 >> 3 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_240B2D470(v10);
      }

      sub_240B228BC();
    }

    bzero(a1[1], 16 * v6);
    v11 = &v4[16 * v6];
  }

  a1[1] = v11;
}

uint64_t sub_240BF0E54(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  v7 = a1[2];
  while (v6 != v7)
  {
    result = (*(**v6 + 48))(*v6, a2);
    if (result)
    {
      return result;
    }

    ++v6;
  }

  v9 = *(*a1 + 40);

  return v9(a1, a2, a3);
}

uint64_t sub_240BF0F20(uint64_t a1)
{
  v1 = (a1 + 248);
  if (*(a1 + 248) != *(a1 + 256))
  {
    return 0;
  }

  v4 = **(a1 + 32);
  if (*(*(a1 + 32) + 8) == v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  while (1)
  {
    v7 = (v4 + v5);
    v8 = 1 << v7[2];
    sub_240B23590(&v26, (*(a1 + 96) + (1 << *v7) - 1) / (1 << *v7) + 32, (*(a1 + 104) + v8 - 1) / v8 + 32);
    result = v30;
    if (v30)
    {
      break;
    }

    v9 = v28;
    v10 = v29;
    v28 = 0;
    v11 = *(a1 + 256);
    v12 = *(a1 + 264);
    if (v11 >= v12)
    {
      v14 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - *v1) >> 3);
      v15 = v14 + 1;
      if (v14 + 1 > 0x666666666666666)
      {
        sub_240B228BC();
      }

      v16 = 0xCCCCCCCCCCCCCCCDLL * ((v12 - *v1) >> 3);
      if (2 * v16 > v15)
      {
        v15 = 2 * v16;
      }

      if (v16 >= 0x333333333333333)
      {
        v17 = 0x666666666666666;
      }

      else
      {
        v17 = v15;
      }

      v34 = v1;
      if (v17)
      {
        sub_240B59980(v17);
      }

      v18 = 40 * v14;
      v31 = 0;
      v32 = v18;
      *(&v33 + 1) = 0;
      *v18 = v26;
      *(v18 + 16) = v27;
      *(v18 + 24) = v9;
      *(v18 + 32) = v10;
      *&v33 = 40 * v14 + 40;
      v19 = *(a1 + 248);
      v20 = *(a1 + 256);
      v21 = 40 * v14 + v19 - v20;
      sub_240B59A2C(v19, v20, v21);
      v22 = *(a1 + 248);
      *(a1 + 248) = v21;
      v23 = *(a1 + 264);
      v25 = v33;
      *(a1 + 256) = v33;
      *&v33 = v22;
      *(&v33 + 1) = v23;
      v31 = v22;
      v32 = v22;
      sub_240B599D8(&v31);
      v13 = v25;
    }

    else
    {
      *v11 = v26;
      *(v11 + 16) = v27;
      *(v11 + 24) = v9;
      *(v11 + 32) = v10;
      v13 = v11 + 40;
    }

    *(a1 + 256) = v13;
    if (!v30)
    {
      v24 = v28;
      v28 = 0;
      if (v24)
      {
        atomic_fetch_add(&qword_27E519020, -*(v24 - 24));
        free(*(v24 - 32));
      }
    }

    ++v6;
    v4 = **(a1 + 32);
    v5 += 16;
    if (v6 >= (*(*(a1 + 32) + 8) - v4) >> 4)
    {
      return 0;
    }
  }

  return result;
}

void sub_240BF1150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  if (!v17 || (atomic_fetch_add(&qword_27E519020, -*(v17 - 24)), free(*(v17 - 32)), !a17))
  {
    if (a15)
    {
      atomic_fetch_add(&qword_27E519020, -*(a15 - 24));
      free(*(a15 - 32));
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240BF11B0(uint64x2_t *a1, unint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = &a1[15].i8[8];
  v5 = a1[16].i64[0] - a1[15].i64[1];
  if (v5)
  {
    v7 = 0;
    v8 = 0xCCCCCCCCCCCCCCCDLL * (v5 >> 3);
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    do
    {
      sub_240BF22E8(&v197, v3, a2, v7++);
    }

    while (v9 != v7);
  }

  v10 = v3[14].i64[0];
  v11 = v3[14].i64[1];
  v12 = v10 + 1;
  if (v10 != v11 && v12 != v11)
  {
    v14 = *v10;
    v15 = v10 + 1;
    do
    {
      v17 = *v15++;
      v16 = v17;
      if (v17 < v14)
      {
        v14 = v16;
        v10 = v12;
      }

      v12 = v15;
    }

    while (v15 != v11);
  }

  v18 = *v10;
  v19 = v3[17].u64[0];
  if (v19 < v18)
  {
    v3[17].i64[0] = v19 + 1;
    v20 = v3->i64[1];
    if (v3[1].i64[0] != v20)
    {
      v21 = 0;
      v171 = vdupq_n_s64(0xFFFFFFFFFFFFFFE0);
      v188 = v3;
      do
      {
        sub_240B977BC(v203, 0xCCCCCCCCCCCCCCCDLL * ((v3[16].i64[0] - v3[15].i64[1]) >> 3));
        v22 = v3[16].i64[0] - v3[15].i64[1];
        if (v22)
        {
          if (!((0xCCCCCCCCCCCCCCCDLL * (v22 >> 3)) >> 61))
          {
            operator new();
          }

          sub_240B228BC();
        }

        sub_240BBE0C0(v202, 0);
        v23 = v3[15].i64[1];
        v24 = v3[16].i64[0] - v23;
        if (v24)
        {
          v25 = 0xCCCCCCCCCCCCCCCDLL * (v24 >> 3);
          v26 = v202[0];
          if (v25 <= 1)
          {
            v25 = 1;
          }

          do
          {
            v27 = *v23;
            v23 += 5;
            *v26++ = vaddw_u32(v171, v27);
            --v25;
          }

          while (v25);
          v28 = 0;
          v29 = 0;
          do
          {
            if ((*(**(v20 + 8 * v21) + 24))(*(v20 + 8 * v21), v29) == 2)
            {
              sub_240B23590(&v197, v3[7].i64[0] + 160, v3[7].i32[2] + 32);
              if (v201)
              {
                v182 = v201;
                v91 = 0;
                goto LABEL_101;
              }

              v31 = v198;
              v30 = v199;
              v199 = 0;
              v32 = v200;
              v33 = v203[0] + v28;
              *v33 = v197;
              v34 = *(v33 + 24);
              *(v33 + 16) = v31;
              *(v33 + 24) = v30;
              if (v34)
              {
                atomic_fetch_add(&qword_27E519020, -*(v34 - 24));
                free(*(v34 - 32));
                v35 = v201 == 0;
              }

              else
              {
                v35 = 1;
              }

              *(v33 + 32) = v32;
              v36 = (v203[0] + v28);
              *v36 = vadd_s32(vmovn_s64(vshlq_u64(*(v202[0] + v29), *(*(v20 + 8 * v21) + 24))), 0x2000000020);
              *(8 * v29) = v36;
              if (v35)
              {
                v37 = v199;
                v199 = 0;
                if (v37)
                {
                  atomic_fetch_add(&qword_27E519020, -*(v37 - 24));
                  free(*(v37 - 32));
                }
              }

              v3 = v188;
            }

            ++v29;
            v39 = v3[15].i64[1];
            v38 = v3[16].i64[0];
            v28 += 40;
          }

          while (v29 < 0xCCCCCCCCCCCCCCCDLL * ((v38 - v39) >> 3));
          if (v38 == v39)
          {
            v175 = 0;
            v176 = 0;
            v86 = 0;
          }

          else
          {
            v40 = 0;
            do
            {
              if ((*(**(v20 + 8 * v21) + 24))(*(v20 + 8 * v21), v40) == 2)
              {
                v41 = (v202[0] + 16 * v40);
                v42 = v41[1];
                v43 = *(v20 + 8 * v21);
                if (v42)
                {
                  v44 = 0;
                  v46 = *(*v4 + 40 * v40 + 16);
                  v45 = *(*v4 + 40 * v40 + 24);
                  v47 = *(v43 + 8);
                  do
                  {
                    if (v47)
                    {
                      v48 = 0;
                      v49 = v45 + v46 * (v44 + 16);
                      v50 = v49 + 64;
                      v51 = v49 + 60;
                      v52 = *v41;
                      v53 = 2 * *v41;
                      do
                      {
                        v54 = ~v48;
                        if ((v48 & 0x8000000000000000) == 0 || v52 <= v54)
                        {
                          LOBYTE(v55) = v48 >= 0;
                          do
                          {
                            v56 = ~v54;
                            if (v55)
                            {
                              v57 = 0;
                            }

                            else
                            {
                              v57 = v53;
                            }

                            v54 = v57 + v56;
                            v55 = v54 >> 63;
                          }

                          while (v54 < 0 || v54 >= v52);
                        }

                        *(v51 - 4 * v48++) = *(v50 + 4 * v54);
                      }

                      while (v48 != v47);
                      for (i = 0; i != v47; ++i)
                      {
                        v59 = v52 + i;
                        if (v52 + i < 0 || v59 >= v52)
                        {
                          v60 = v59 >> 63;
                          do
                          {
                            v61 = ~v59;
                            if (v60)
                            {
                              v62 = 0;
                            }

                            else
                            {
                              v62 = v53;
                            }

                            v59 = v62 + v61;
                            v60 = v59 >> 63;
                          }

                          while (v59 < 0 || v59 >= v52);
                        }

                        *(v50 + 4 * v52 + 4 * i) = *(v50 + 4 * v59);
                      }
                    }

                    ++v44;
                  }

                  while (v44 != v42);
                }

                if (*(v43 + 16) >= 1)
                {
                  v63 = 0;
                  do
                  {
                    v64 = ~v63;
                    v67 = *(v43 + 8);
                    v68 = v202[0] + 16 * v40;
                    v69 = v68[1];
                    LOBYTE(v70) = 1;
                    do
                    {
                      v71 = ~v64;
                      if (v70)
                      {
                        v72 = 0;
                      }

                      else
                      {
                        v72 = 2 * v69;
                      }

                      v64 = v72 + v71;
                      v70 = v64 >> 63;
                    }

                    while (v64 < 0 || v64 >= v69);
                    v65 = *(*v4 + 40 * v40 + 24);
                    v66 = *(*v4 + 40 * v40 + 16);
                    memcpy((v65 + v66 * (15 - v63++) - 4 * v67 + 64), (v65 + (v64 + 16) * v66 - 4 * v67 + 64), 4 * *v68 + 8 * v67);
                    v43 = *(v20 + 8 * v21);
                    v73 = *(v43 + 16);
                  }

                  while (v63 < v73);
                  if (v73 >= 1)
                  {
                    v74 = 0;
                    do
                    {
                      v75 = v202[0] + 16 * v40;
                      v76 = v75[1];
                      v77 = *v4 + 40 * v40;
                      v78 = v76 + v74;
                      v79 = *(v77 + 16);
                      if (v76 + v74 < 0 || (v80 = v79 * (v76 + v74 + 16), v78 >= v76))
                      {
                        v81 = v78 >> 63;
                        do
                        {
                          v82 = ~v78;
                          if (v81)
                          {
                            v83 = 0;
                          }

                          else
                          {
                            v83 = 2 * v76;
                          }

                          v78 = v83 + v82;
                          v81 = v78 >> 63;
                        }

                        while (v78 < 0 || v78 >= v76);
                        v80 = (v78 + 16) * v79;
                      }

                      memcpy((*(v77 + 24) + v79 * (v76 + v74++ + 16) + 64 - 4 * *(v43 + 8)), (*(v77 + 24) + v80 - 4 * *(v43 + 8) + 64), 4 * *v75 + 8 * *(v43 + 8));
                      v43 = *(v20 + 8 * v21);
                    }

                    while (v74 < *(v43 + 16));
                  }
                }
              }

              ++v40;
              v85 = v3[15].i64[1];
              v84 = v3[16].i64[0];
              v86 = 0xCCCCCCCCCCCCCCCDLL * ((v84 - v85) >> 3);
            }

            while (v40 < v86);
            if (v84 == v85)
            {
              v175 = 0;
              v176 = 0;
            }

            else
            {
              v87 = 0;
              v88 = 0;
              v175 = 0;
              v176 = 0;
              do
              {
                if ((*(**(v20 + 8 * v21) + 24))(*(v20 + 8 * v21), v88))
                {
                  v89 = v176;
                  if (*(v202[0] + v87 + 8) > v176)
                  {
                    v89 = *(v202[0] + v87 + 8);
                  }

                  v90 = v175;
                  if (*(v202[0] + v87) > v175)
                  {
                    v90 = *(v202[0] + v87);
                  }

                  v175 = v90;
                  v176 = v89;
                }

                ++v88;
                v86 = 0xCCCCCCCCCCCCCCCDLL * ((v3[16].i64[0] - v3[15].i64[1]) >> 3);
                v87 += 16;
              }

              while (v88 < v86);
            }
          }
        }

        else
        {
          v175 = 0;
          v176 = 0;
          v86 = 0;
        }

        sub_240BF23AC(v196, v86);
        sub_240BF23AC(v195, 0xCCCCCCCCCCCCCCCDLL * ((v3[16].i64[0] - v3[15].i64[1]) >> 3));
        v92 = (*(**(v20 + 8 * v21) + 40))(*(v20 + 8 * v21), v202);
        if (v92)
        {
          v182 = v92;
          v93 = 1;
        }

        else
        {
          if (v176)
          {
            v94 = 0;
            v95 = *(*(v20 + 8 * v21) + 16);
            v174 = 1;
            v183 = v95;
            v184 = ((2 * v95) | 1);
            v178 = 8 * (v95 & 0x7FFFFFFF) + ((0xFFFFFFFF00000000 * v95) >> 29);
            if (v95 >= 0)
            {
              v96 = *(*(v20 + 8 * v21) + 16);
            }

            else
            {
              v96 = -v95;
            }

            v177 = v96 + v95 + 1;
            v180 = -*(*(v20 + 8 * v21) + 16) + 16;
            while (1)
            {
              if (v188[16].i64[0] != v188[15].i64[1])
              {
                v97 = 0;
                do
                {
                  if ((*(**(v20 + 8 * v21) + 24))(*(v20 + 8 * v21), v97))
                  {
                    sub_240BF05CC((v196[0] + 24 * v97), v184);
                    if ((v183 & 0x80000000) == 0)
                    {
                      v99 = v178;
                      v98 = v180;
                      v100 = v177;
                      do
                      {
                        *(*(v196[0] + 24 * v97) + v99) = *(*v4 + 40 * v97 + 24) + *(*v4 + 40 * v97 + 16) * v98;
                        v99 += 8;
                        ++v98;
                        --v100;
                      }

                      while (v100);
                    }
                  }

                  ++v97;
                  v102 = v188[15].i64[1];
                  v101 = v188[16].i64[0];
                }

                while (v97 < 0xCCCCCCCCCCCCCCCDLL * ((v101 - v102) >> 3));
                if (v101 != v102)
                {
                  v103 = 0;
                  do
                  {
                    if (*(8 * v103))
                    {
                      sub_240BF05CC((v195[0] + 24 * v103), 1 << *(*(v20 + 8 * v21) + 32));
                      v104 = *(v195[0] + 24 * v103);
                      if (*(v195[0] + 24 * v103 + 8) != v104)
                      {
                        v105 = 0;
                        do
                        {
                          *(v104 + 8 * v105) = *(*(8 * v103) + 24) + *(*(8 * v103) + 16) * (v105 + (v94 << *(*(v20 + 8 * v21) + 32)) + 16);
                          ++v105;
                          v104 = *(v195[0] + 24 * v103);
                        }

                        while (v105 < (*(v195[0] + 24 * v103 + 8) - v104) >> 3);
                      }
                    }

                    ++v103;
                  }

                  while (v103 < 0xCCCCCCCCCCCCCCCDLL * ((v188[16].i64[0] - v188[15].i64[1]) >> 3));
                }
              }

              v106 = (*(**(v20 + 8 * v21) + 16))(*(v20 + 8 * v21), v196, v195, 0, v175, 0, v94, a3);
              if (v106)
              {
                break;
              }

              ++v94;
              ++v180;
              v174 = v94 < v176;
              if (v94 == v176)
              {
                v182 = 0;
                v93 = 0;
                goto LABEL_130;
              }
            }

            v182 = v106;
            v93 = 1;
LABEL_130:
            if (v174)
            {
              goto LABEL_100;
            }
          }

          else
          {
            v182 = 0;
          }

          v107 = v188;
          if (v188[16].i64[0] != v188[15].i64[1])
          {
            v108 = 0;
            v109 = 0;
            do
            {
              if ((*(**(v20 + 8 * v21) + 24))(*(v20 + 8 * v21), v109) == 2)
              {
                v110 = v203[0] + v108;
                v111 = *v4 + v108;
                v112 = *(v203[0] + v108);
                *(v111 + 16) = *(v203[0] + v108 + 16);
                *v111 = v112;
                v113 = *(v110 + 24);
                *(v110 + 24) = 0;
                v114 = *(v111 + 24);
                *(v111 + 24) = v113;
                if (v114)
                {
                  atomic_fetch_add(&qword_27E519020, -*(v114 - 24));
                  free(*(v114 - 32));
                }

                *(v111 + 32) = *(v110 + 32);
                v107 = v188;
              }

              ++v109;
              v115 = v107[15].i64[1];
              v116 = 0xCCCCCCCCCCCCCCCDLL * ((v107[16].i64[0] - v115) >> 3);
              v108 += 40;
            }

            while (v109 < v116);
            if (v116)
            {
              v117 = v107[2].i64[0];
              if (-1 - 0x5555555555555555 * ((v107[2].i64[1] - v117) >> 3) >= v21 + 1)
              {
                v118 = v21 + 1;
              }

              else
              {
                v118 = -1 - 0x5555555555555555 * ((v107[2].i64[1] - v117) >> 3);
              }

              v119 = *(v117 + 24 * v118);
              v120 = v107[6].i64[0] - 1;
              v121 = v107[6].i64[1] - 1;
              v122 = (v115 + 4);
              v123 = (v119 + 8);
              do
              {
                v124 = (v120 + (1 << *(v123 - 2))) / (1 << *(v123 - 2));
                v125 = *v123;
                v123 += 4;
                *(v122 - 1) = v124 + 32;
                *v122 = (v121 + (1 << v125)) / (1 << v125) + 32;
                v122 += 10;
                --v116;
              }

              while (v116);
            }
          }

          if ((*(**(v20 + 8 * v21) + 56))(*(v20 + 8 * v21)))
          {
            v193 = 0;
            v194 = 0;
            (*(**(v20 + 8 * v21) + 64))(*(v20 + 8 * v21), &v194, &v193, &v191);
            sub_240B3CD70(v107 + 5, v194, v193, 0, 0, 0, 0, 1uLL);
            v189 = v107[15].i64[1];
            v190 = v107[16];
            v126 = 0xCCCCCCCCCCCCCCCDLL * ((v190.i64[0] - v189) >> 3);
            *(v4 + 1) = 0;
            *(v4 + 2) = 0;
            *v4 = 0;
            sub_240B86B24(v4, v126);
            if (v190.i64[0] == v189)
            {
LABEL_166:
              v144 = v193;
              if (v193)
              {
                v145 = 0;
                do
                {
                  v186 = v145;
                  if (v107[16].i64[0] != v107[15].i64[1])
                  {
                    v146 = 0;
                    v147 = 0;
                    v148 = 0;
                    do
                    {
                      sub_240BF05CC((v195[0] + v147), 1uLL);
                      **(v195[0] + v147) = *(v188[15].i64[1] + v146 + 24) + *(v188[15].i64[1] + v146 + 16) * (v186 + 16);
                      ++v148;
                      v147 += 24;
                      v146 += 40;
                    }

                    while (v148 < 0xCCCCCCCCCCCCCCCDLL * ((v188[16].i64[0] - v188[15].i64[1]) >> 3));
                  }

                  (*(**(v20 + 8 * v21) + 72))(*(v20 + 8 * v21), v195, v194, 0, v186);
                  v145 = v186 + 1;
                  v144 = v193;
                  v107 = v188;
                }

                while (v186 + 1 < v193);
              }

              v149 = v191 & ~(v191 >> 31);
              v150 = v192 & ~(v192 >> 31);
              if (v176 + (v192 & (v192 >> 31)) + v150 <= v144)
              {
                v151 = v176 + (v192 & (v192 >> 31));
              }

              else
              {
                v151 = v144 - v150;
              }

              if (v191 >= 0)
              {
                v152 = 16;
              }

              else
              {
                v152 = 16 - v191;
              }

              if (v192 >= 0)
              {
                v153 = 16;
              }

              else
              {
                v153 = 16 - v149;
              }

              v154 = v107[15].i64[1];
              v155 = v107[16].i64[0];
              if (v155 != v154)
              {
                v156 = 0;
                v157 = v175 + (v191 & (v191 >> 31));
                if (v157 + v149 > v194)
                {
                  v157 = v194 - v149;
                }

                if (v157)
                {
                  v158 = v151 == 0;
                }

                else
                {
                  v158 = 1;
                }

                v159 = v158;
                v160 = 4 * v157;
                v161 = 4 * v149 + 64;
                v179 = v150 + 16;
                v172 = v21;
                v181 = v159;
                do
                {
                  if ((v159 & 1) == 0)
                  {
                    v162 = 0;
                    v187 = v156;
                    v163 = v154 + 40 * v156;
                    v164 = v189 + 40 * v156;
                    v165 = *(v163 + 16);
                    v166 = *(v163 + 24) + v179 * v165;
                    do
                    {
                      v167 = v152;
                      v168 = v153;
                      v169 = v161;
                      memcpy((v166 + v161), (*(v164 + 24) + *(v164 + 16) * (v153 + v162) + 4 * v152), v160);
                      v161 = v169;
                      v153 = v168;
                      v152 = v167;
                      ++v162;
                      v166 += v165;
                    }

                    while (v162 < v151);
                    v154 = v188[15].i64[1];
                    v155 = v188[16].i64[0];
                    v21 = v172;
                    v156 = v187;
                    v159 = v181;
                  }

                  ++v156;
                }

                while (v156 < 0xCCCCCCCCCCCCCCCDLL * ((v155 - v154) >> 3));
              }

              *&v197 = &v189;
              sub_240B30C38(&v197);
              v93 = 0;
            }

            else
            {
              v127 = 0;
              while (1)
              {
                sub_240B23590(&v197, v194 + 32, v193 + 32);
                if (v201)
                {
                  break;
                }

                v128 = v199;
                v129 = v200;
                v199 = 0;
                v130 = v107[16].u64[0];
                v131 = v107[16].u64[1];
                if (v130 >= v131)
                {
                  v133 = 0xCCCCCCCCCCCCCCCDLL * ((v130 - *v4) >> 3);
                  v134 = v133 + 1;
                  if (v133 + 1 > 0x666666666666666)
                  {
                    sub_240B228BC();
                  }

                  v135 = 0xCCCCCCCCCCCCCCCDLL * ((v131 - *v4) >> 3);
                  if (2 * v135 > v134)
                  {
                    v134 = 2 * v135;
                  }

                  if (v135 >= 0x333333333333333)
                  {
                    v136 = 0x666666666666666;
                  }

                  else
                  {
                    v136 = v134;
                  }

                  v207 = v4;
                  if (v136)
                  {
                    sub_240B59980(v136);
                  }

                  v137 = 40 * v133;
                  v204 = 0;
                  v205 = v137;
                  v206.i64[1] = 0;
                  *v137 = v197;
                  *(v137 + 16) = v198;
                  *(v137 + 24) = v128;
                  *(v137 + 32) = v129;
                  v206.i64[0] = 40 * v133 + 40;
                  v107 = v188;
                  v138 = v188[15].i64[1];
                  v139 = v188[16].i64[0];
                  v140 = v137 + v138 - v139;
                  sub_240B59A2C(v138, v139, v140);
                  v141 = v188[15].i64[1];
                  v188[15].i64[1] = v140;
                  v142 = v188[16].i64[1];
                  v185 = v206.i64[0];
                  v188[16] = v206;
                  v206.i64[0] = v141;
                  v206.i64[1] = v142;
                  v204 = v141;
                  v205 = v141;
                  sub_240B599D8(&v204);
                  v132 = v185;
                }

                else
                {
                  *v130 = v197;
                  *(v130 + 16) = v198;
                  *(v130 + 24) = v128;
                  *(v130 + 32) = v129;
                  v132 = v130 + 40;
                }

                v107[16].i64[0] = v132;
                if (!v201)
                {
                  v143 = v199;
                  v199 = 0;
                  if (v143)
                  {
                    atomic_fetch_add(&qword_27E519020, -*(v143 - 24));
                    free(*(v143 - 32));
                  }
                }

                if (++v127 >= 0xCCCCCCCCCCCCCCCDLL * ((v190.i64[0] - v189) >> 3))
                {
                  v182 = 0;
                  goto LABEL_166;
                }
              }

              v182 = v201;
              *&v197 = &v189;
              sub_240B30C38(&v197);
              v93 = 1;
            }
          }

          else
          {
            v93 = 0;
          }
        }

LABEL_100:
        *&v197 = v195;
        sub_240B23988(&v197);
        *&v197 = v196;
        sub_240B23988(&v197);
        v91 = v93 == 0;
LABEL_101:
        if (v202[0])
        {
          v202[1] = v202[0];
          operator delete(v202[0]);
        }

        *&v197 = v203;
        sub_240B30C38(&v197);
        if (!v91)
        {
          return v182;
        }

        ++v21;
        v3 = v188;
        v20 = v188->i64[1];
      }

      while (v21 < (v188[1].i64[0] - v20) >> 3);
    }
  }

  return 0;
}

void sub_240BF21C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, void **a37)
{
  a37 = &a25;
  sub_240B30C38(&a37);
  a37 = &a31;
  sub_240B23988(&a37);
  a37 = &a34;
  sub_240B23988(&a37);
  v40 = *(v38 - 192);
  if (v40)
  {
    *(v38 - 184) = v40;
    operator delete(v40);
  }

  if (v37)
  {
    operator delete(v37);
  }

  a37 = (v38 - 168);
  sub_240B30C38(&a37);
  _Unwind_Resume(a1);
}

unint64_t *sub_240BF22E8(unint64_t *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 112) / *(a2 + 128);
  v5 = __clz(v4) ^ 0x3F;
  if ((v4 & (v4 - 1)) != 0)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = *(a2 + 160);
  v8 = a3 / v7;
  v9 = *(a2 + 208) << v6;
  v10 = (**(a2 + 32) + 16 * a4);
  v12 = *v10;
  v11 = v10[1];
  v13 = v9 >> v12;
  v14 = v9 >> v11;
  v15 = v13 * (a3 % v7) + 16;
  v16 = v14 * v8 + 16;
  v17 = (*(a2 + 96) + (1 << v12) - 1) / (1 << v12) + 16;
  v18 = (*(a2 + 104) + (1 << v11) - 1) / (1 << v11) + 16;
  *result = v15;
  result[1] = v16;
  v19 = v15 + v13;
  v20 = v17 >= v15;
  v21 = v17 - v15;
  if (!v20)
  {
    v21 = 0;
  }

  if (v19 <= v17)
  {
    v21 = v13;
  }

  v22 = v16 + v14;
  v20 = v18 >= v16;
  v23 = v18 - v16;
  if (!v20)
  {
    v23 = 0;
  }

  if (v22 > v18)
  {
    v14 = v23;
  }

  result[2] = v21;
  result[3] = v14;
  return result;
}

uint64_t *sub_240BF23AC(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_240B43310(a1, a2);
  }

  return a1;
}

void sub_240BF2450(uint64_t a1@<X0>, unint64_t a2@<X1>, void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *(a1 + 248);
  if (*(a1 + 256) != v4)
  {
    v5 = a2;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = v4 + v7;
      sub_240BF22E8(&v22, a1, v5, v9);
      v11 = a3[2];
      if (v8 >= v11)
      {
        v13 = *a3;
        v14 = v8 - *a3;
        v15 = 0xCCCCCCCCCCCCCCCDLL * (v14 >> 3) + 1;
        if (v15 > 0x666666666666666)
        {
          sub_240B228BC();
        }

        v16 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - v13) >> 3);
        if (2 * v16 > v15)
        {
          v15 = 2 * v16;
        }

        if (v16 >= 0x333333333333333)
        {
          v17 = 0x666666666666666;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          sub_240BF0988(v17);
        }

        v18 = 8 * (v14 >> 3);
        *v18 = v10;
        v19 = v23;
        *(v18 + 8) = v22;
        *(v18 + 24) = v19;
        v8 = (v18 + 40);
        v20 = (v18 - v14);
        memcpy((v18 - v14), v13, v14);
        *a3 = v20;
        a3[1] = v8;
        a3[2] = 0;
        if (v13)
        {
          operator delete(v13);
        }

        v5 = a2;
      }

      else
      {
        *v8 = v10;
        v12 = v22;
        *(v8 + 3) = v23;
        *(v8 + 1) = v12;
        v8 += 5;
      }

      a3[1] = v8;
      ++v9;
      v4 = *(a1 + 248);
      v7 += 40;
    }

    while (v9 < 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 256) - v4) >> 3));
  }
}

void sub_240BF25DC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_240BF25FC(uint64_t a1)
{
  *a1 = &unk_2852A1A58;
  v2 = (a1 + 248);
  sub_240B30C38(&v2);
  sub_240BF0BAC(a1);

  JUMPOUT(0x245CCE590);
}

uint64_t sub_240BF2678(uint64_t a1)
{
  *a1 = &unk_2852A1A58;
  v3 = (a1 + 248);
  sub_240B30C38(&v3);

  return sub_240BF0BAC(a1);
}

void sub_240BF26EC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1[12];
  v10 = 4 * a3;
  if ((*(v9 + 96) || (v13 = *(v9 + 416), v13 != *(v9 + 424)) && *v13) && (*(v9 + 100) || (v14 = *(v9 + 416), v14 != *(v9 + 424)) && *(v14 + 4)))
  {
    v11 = 0;
    for (i = 120; i != 240; i += 40)
    {
      memcpy((*(*(*a2 + v11) + 8 * a1[2]) + 64), (*(a1[12] + i) + *(a1[12] + 112) * a5 + 4 * a4), v10);
      v11 += 24;
    }
  }

  else
  {
    for (j = 0; j != 72; j += 24)
    {
      bzero((*(*(*a2 + j) + 8 * a1[2]) + 64), v10);
    }
  }

  if (*(a1[19] + 8) != *a1[19])
  {
    v16 = 0;
    v17 = 0;
    v18 = 72;
    do
    {
      v19 = a1[6] + 456 * *(*(a1[5] + 344) + v16 * 4 + 20);
      v20 = v19 + 2376;
      v21 = *(v19 + 2472);
      v22 = *(v19 + 2792);
      if ((v21 || v22 != *(v20 + 424) && *v22) && (*(v20 + 100) || v22 != *(v20 + 424) && v22[1]))
      {
        memcpy((*(*(*a2 + v18) + 8 * a1[2]) + 64), (*&v22[v16 + 6] + *&v22[v16 + 4] * a5 + 4 * a4), v10);
      }

      else
      {
        bzero((*(*(*a2 + v18) + 8 * a1[2]) + 64), v10);
      }

      ++v17;
      v16 += 10;
      v18 += 24;
    }

    while (v17 < 0xAAAAAAAAAAAAAAABLL * ((*(a1[19] + 8) - *a1[19]) >> 5));
  }
}

void *sub_240BF28E8(void *result, void *a2, void *a3, void *a4)
{
  *a2 = result[14];
  *a3 = result[15];
  *a4 = *(result[5] + 296);
  return result;
}

uint64_t sub_240BF2930(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 40);
  v8 = *(v7 + 296);
  v9 = v8 + a6;
  v10 = v8 + a6 + a5;
  if (v10 < 1)
  {
    return 0;
  }

  v12 = 0;
  v13 = *(a1 + 112);
  if (v13 <= v8)
  {
    return v12;
  }

  v14 = *(v7 + 300) + a7;
  if (v14 < 0)
  {
    return v12;
  }

  if (v14 >= *(a1 + 120))
  {
    return 0;
  }

  v16 = v9 & ~(v9 >> 63);
  if (v9 >= 0)
  {
    v10 = a5;
  }

  if (v10 + v16 <= v13)
  {
    v17 = v10;
  }

  else
  {
    v17 = (v13 - v16) & ~((v13 - v16) >> 63);
  }

  sub_240B496C0(v35, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  sub_240B41F20(__p, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v18 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  v19 = *(a1 + 152);
  if (0xAAAAAAAAAAAAAAABLL * ((v19[1] - *v19) >> 5) + 3 < v18)
  {
    v18 = 0xAAAAAAAAAAAAAAABLL * ((v19[1] - *v19) >> 5) + 3;
  }

  if (v18)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = *(a1 + 16);
    while (1)
    {
      *(__p[0] + v22) = *(*(*a2 + v20) + 8 * v23) + 4 * (-v9 & (v9 >> 63)) + 64;
      if (v22 > 2)
      {
        v26 = *(a1 + 48) + 456 * *(*(*(a1 + 40) + 344) + v21 * 4 - 100);
        v27 = v26 + 2376;
        v28 = *(v26 + 2472);
        v29 = *(v26 + 2792);
        if (!v28 && (v29 == *(v27 + 424) || !*v29) || !*(v27 + 100) && (v29 == *(v27 + 424) || !v29[1]))
        {
LABEL_33:
          v30 = *(a1 + 160);
          goto LABEL_34;
        }

        v25 = *&v29[v21 - 24] + *&v29[v21 - 26] * v14;
      }

      else
      {
        v24 = *(a1 + 96);
        if (!*(v24 + 96))
        {
          v31 = *(v24 + 416);
          if (v31 == *(v24 + 424) || !*v31)
          {
            goto LABEL_33;
          }
        }

        if (!*(v24 + 100))
        {
          v32 = *(v24 + 416);
          if (v32 == *(v24 + 424) || !*(v32 + 4))
          {
            goto LABEL_33;
          }
        }

        v25 = *(v24 + v21 * 4 + 120) + *(v24 + 112) * v14;
      }

      v30 = v25 + 4 * v16;
LABEL_34:
      *(v35[0] + v22++) = v30;
      v21 += 10;
      v20 += 24;
      if (v18 == v22)
      {
        v19 = *(a1 + 152);
        break;
      }
    }
  }

  v12 = sub_240B22EF4(v35[0], __p[0], __p[0], 0, v17, *(a1 + 128), *(a1 + 128) + 12, v19);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  return v12;
}

void sub_240BF2BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_240BF2BF0(void *a1)
{
  *a1 = &unk_2852A1798;
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  v3 = a1[16];
  if (v3)
  {
    a1[17] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x245CCE590);
}

void *sub_240BF2C70(void *a1)
{
  *a1 = &unk_2852A1798;
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  v3 = a1[16];
  if (v3)
  {
    a1[17] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_240BF2D08(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = (a4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v6 = -v5;
  v7 = v5 + a5;
  if (v7 > v6)
  {
    v8 = (*(*a2 + 24 * *(a1 + 40)) + 8 * *(a1 + 16));
    v10 = *(v8 - 1);
    v9 = *v8;
    v11 = *(*a3 + 24 * *(a1 + 40));
    v12 = 64 - 16 * ((a4 + 3) >> 2);
    v13 = (v11[1] + v12);
    v14 = (*v11 + v12);
    v15 = (v8[1] + v12);
    v16 = (v9 + v12);
    v17 = (v10 + v12);
    __asm
    {
      FMOV            V0.4S, #0.75
      FMOV            V1.4S, #0.25
    }

    do
    {
      v24 = *v17++;
      v25 = v24;
      v26 = *v16++;
      v27 = v26;
      v28 = *v15++;
      v29 = vmulq_f32(v27, _Q0);
      *v14++ = vmlaq_f32(v29, _Q1, v25);
      *v13++ = vmlaq_f32(v29, _Q1, v28);
      v6 += 4;
    }

    while (v6 < v7);
  }

  return 0;
}

uint64_t sub_240BF2DE4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a4 + 3;
  v6 = (a4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v7 = -v6;
  v8 = v6 + a5;
  if (v8 > v7)
  {
    v9 = v5 >> 2;
    v10 = (*(*(*a2 + 24 * *(a1 + 40)) + 8 * *(a1 + 16)) - 16 * (v5 >> 2) + 68);
    v11 = (**(*a3 + 24 * *(a1 + 40)) - 32 * v9 + 80);
    __asm
    {
      FMOV            V0.4S, #0.75
      FMOV            V1.4S, #0.25
    }

    do
    {
      v18 = vmulq_f32(*(v10 - 4), _Q0);
      v19 = *(v10 - 8);
      v20 = *v10++;
      v21 = vmlaq_f32(v18, _Q1, v19);
      v22 = vmlaq_f32(v18, _Q1, v20);
      i32 = v11[-1].i32;
      vst2_f32(i32, v21);
      *v11 = vzip2q_s32(v21, v22);
      v11 += 2;
      v7 += 4;
    }

    while (v7 < v8);
  }

  return 0;
}

uint64_t sub_240BF2EB0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v7 = 0;
  v79[12] = *MEMORY[0x277D85DE8];
  v79[0] = &v67;
  v79[1] = &v66;
  v79[2] = &v65;
  v79[3] = &v64;
  v79[4] = &v63;
  v79[5] = &v62;
  v79[6] = &v61;
  v79[7] = &v60;
  v79[8] = &v59;
  v79[9] = &v58;
  v79[10] = &v57;
  v79[11] = &v56;
  v8 = *(*(a1 + 184) + 24) + *(*(a1 + 184) + 16) * ((a7 >> 3) + 2);
  v9.i32[1] = 1073374822;
  v10 = *(a1 + 148) * 1.65;
  *&v10 = v10;
  *v9.i32 = *(a1 + 156) * *&v10;
  v75 = vdupq_lane_s32(*&v10, 0);
  v74 = v9.i32[0];
  v76 = LODWORD(v10);
  v77 = LODWORD(v10);
  v78 = v9.i32[0];
  v73[0] = vdupq_lane_s32(v9, 0);
  v73[1] = v73[0];
  v11 = *a2;
  v12 = *(a1 + 16);
  v13 = v71;
  do
  {
    v14 = 0;
    v15 = *(v11 + 24 * v7) + 8 * v12 - 24;
    do
    {
      *&v13[v14] = *(v15 + v14) + 64;
      v14 += 8;
    }

    while (v14 != 56);
    ++v7;
    v13 += 56;
  }

  while (v7 != 3);
  v16 = (a4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  _ZF = (a7 & 7) == 7 || (a7 & 7) == 0;
  v18 = &v74;
  if (_ZF)
  {
    v18 = v73;
  }

  v19 = -v16;
  v20 = v16 + a5;
  if (v20 > v19)
  {
    v21 = a1 + 120;
    v55 = v72[0];
    v22 = v72[7];
    v23 = v72[14];
    __asm { FMOV            V3.4S, #1.0 }

    do
    {
      v28 = *(v8 + (((v19 + a6 + 16) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
      v29 = 0;
      if (v28 >= -3.9052)
      {
        v32 = *&v18[(v19 + a6) & 7];
        do
        {
          v33 = v79[v29];
          *v33 = 0;
          v33[1] = 0;
          ++v29;
        }

        while (v29 != 12);
        for (i = 0; i != 3; ++i)
        {
          v35 = 0;
          v36 = *(v21 + 4 * i);
          do
          {
            v37 = 0;
            v68 = 0uLL;
            v69 = 0uLL;
            v70 = 0x100000000;
            DWORD2(v68) = -1;
            *(&v69 + 4) = 0x1FFFFFFFFLL;
            v38 = &dword_240C858D4[2 * v35];
            v39 = 0uLL;
            v40 = *v38;
            v41 = v38[1];
            do
            {
              v42 = 4 * *(&v68 + v37 + 4);
              v39 = vaddq_f32(v39, vabdq_f32(*(*&v71[56 * i + 24 + 8 * *(&v68 + v37)] + 4 * v19 + v42), *(*&v71[56 * i + 24 + 8 * *(&v68 + v37) + 8 * v40] + 4 * v19 + 4 * v41 + v42)));
              v37 += 8;
            }

            while (v37 != 40);
            *v79[v35] = vmlaq_n_f32(*v79[v35], v39, v36);
            ++v35;
          }

          while (v35 != 12);
        }

        v43 = 0;
        v44 = vmulq_n_f32(v32, v28);
        v45 = *(v55 + 4 * v19);
        v46 = *(v22 + 4 * v19);
        v47 = *(v23 + 4 * v19);
        v48 = &unk_240C858D8;
        v49 = _Q3;
        do
        {
          v50 = 8 * *(v48 - 1) + 24;
          v51 = 4 * (v19 + *v48);
          v52 = vmaxnmq_f32(vmlaq_f32(_Q3, v44, *v79[v43]), 0);
          v49 = vaddq_f32(v49, v52);
          v45 = vmlaq_f32(v45, *(*&v71[v50] + v51), v52);
          v46 = vmlaq_f32(v46, *(*(&v72[4] + v50) + v51), v52);
          v47 = vmlaq_f32(v47, *(*(&v72[11] + v50) + v51), v52);
          ++v43;
          v48 += 2;
        }

        while (v43 != 12);
        v53 = vdivq_f32(_Q3, v49);
        *(***a3 + 4 * v19 + 64) = vmulq_f32(v45, v53);
        *(**(*a3 + 24) + 4 * v19 + 64) = vmulq_f32(v53, v46);
        *(**(*a3 + 48) + 4 * v19 + 64) = vmulq_f32(v53, v47);
      }

      else
      {
        v30 = v72;
        do
        {
          v31 = *v30;
          v30 += 7;
          *(**(*a3 + v29 * 8) + 4 * v19 + 64) = *(v31 + 4 * v19);
          v29 += 3;
        }

        while (v29 != 9);
      }

      v19 += 4;
    }

    while (v19 < v20);
  }

  return 0;
}

uint64_t sub_240BF32C4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, double a8)
{
  v8 = 0;
  v90 = *MEMORY[0x277D85DE8];
  v9 = *(*(a1 + 184) + 24) + *(*(a1 + 184) + 16) * ((a7 >> 3) + 2);
  *&a8 = *(a1 + 156) * 1.65;
  v87 = vdupq_n_s32(0x3FD33333u);
  v88 = v87.i64[0];
  v86 = LODWORD(a8);
  v89 = LODWORD(a8);
  v85[0] = vdupq_lane_s32(*&a8, 0);
  v85[1] = v85[0];
  v10 = *a2;
  v11 = *(a1 + 16);
  v12 = &v82;
  do
  {
    v13 = 0;
    v14 = *(v10 + 24 * v8) + 8 * v11 - 16;
    do
    {
      *&v12[v13] = *(v14 + v13) + 64;
      v13 += 8;
    }

    while (v13 != 40);
    ++v8;
    v12 += 40;
  }

  while (v8 != 3);
  v15 = (a4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  _ZF = (a7 & 7) == 7 || (a7 & 7) == 0;
  v17 = &v86;
  if (_ZF)
  {
    v17 = v85;
  }

  v18 = -v15;
  v19 = v15 + a5;
  if (v19 > v18)
  {
    v20 = a1 + 120;
    v22 = v83;
    v21 = v84[0];
    v24 = v84[9];
    v23 = v84[10];
    v25 = v84[4];
    v26 = v84[5];
    v27 = v84[1];
    v28 = v84[6];
    v29 = v84[11];
    __asm { FMOV            V0.4S, #1.0 }

    do
    {
      v34 = *(v9 + (((v18 + a6 + 16) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
      v35 = 0;
      if (v34 >= -3.9052)
      {
        v38 = 0uLL;
        v39 = v84;
        v40 = 0uLL;
        v41 = 0uLL;
        v42 = 0uLL;
        do
        {
          v43 = *(v39 - 1) + 4 * v18;
          v44 = *v43;
          v45 = vabdq_f32(*(*(v39 - 2) + 4 * v18), *v43);
          v46 = *(v43 - 4);
          v47 = vabdq_f32(v46, *v43);
          v48 = *(v43 + 4);
          v49 = vabdq_f32(v48, *v43);
          v50 = *v39 + 4 * v18;
          v51 = *(v50 - 4);
          v52 = vaddq_f32(v45, vabdq_f32(v46, v51));
          v53 = *v50;
          v54 = vabdq_f32(v51, *v50);
          v55 = vaddq_f32(vaddq_f32(v47, vabdq_f32(*(v50 - 8), v51)), v54);
          v56 = vaddq_f32(v49, v54);
          v57 = vabdq_f32(*v50, v44);
          v58 = *(v50 + 4);
          v59 = vaddq_f32(vaddq_f32(v52, v57), vabdq_f32(v48, v58));
          v60 = vabdq_f32(*v50, v58);
          v61 = vaddq_f32(v55, v60);
          v62 = vaddq_f32(vaddq_f32(v56, v60), vabdq_f32(*(v50 + 8), v58));
          v63 = v39[1] + 4 * v18;
          v64 = *(v63 - 4);
          v65 = vabdq_f32(v53, *v63);
          v66 = vaddq_f32(v59, v65);
          v67 = vaddq_f32(vaddq_f32(v57, vabdq_f32(v64, v51)), v65);
          v68 = vaddq_f32(v61, vabdq_f32(v64, *v63));
          v69 = *(v63 + 4);
          v70 = vaddq_f32(v62, vabdq_f32(v69, *v63));
          v71 = vaddq_f32(vaddq_f32(v67, vabdq_f32(v69, v58)), vabdq_f32(*(v39[2] + 4 * v18), *v63));
          v69.i32[0] = *(v20 + v35);
          v38 = vmlaq_n_f32(v38, v66, v69.f32[0]);
          v40 = vmlaq_n_f32(v40, v68, v69.f32[0]);
          v41 = vmlaq_n_f32(v41, v70, v69.f32[0]);
          v42 = vmlaq_n_f32(v42, v71, v69.f32[0]);
          v35 += 4;
          v39 += 5;
        }

        while (v35 != 12);
        v72 = vmulq_n_f32(*(v17 + 4 * ((v18 + a6) & 7)), v34);
        v73 = vmaxnmq_f32(vmlaq_f32(_Q0, v72, v38), 0);
        v74 = vmaxnmq_f32(vmlaq_f32(_Q0, v72, v40), 0);
        v75 = vmaxnmq_f32(vmlaq_f32(_Q0, v72, v41), 0);
        v76 = vmaxnmq_f32(vmlaq_f32(_Q0, v72, v42), 0);
        v77 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(*(v21 + 4 * v18), *(v22 + 4 * v18), v73), *(v21 + 4 * v18 - 4), v74), *(v21 + ((4 * v18) | 4)), v75), *(v27 + 4 * v18), v76);
        v78 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(*(v26 + 4 * v18), *(v25 + 4 * v18), v73), *(v26 + 4 * v18 - 4), v74), *(v26 + ((4 * v18) | 4)), v75), *(v28 + 4 * v18), v76);
        v79 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(*(v23 + 4 * v18), *(v24 + 4 * v18), v73), *(v23 + 4 * v18 - 4), v74), *(v23 + ((4 * v18) | 4)), v75), *(v29 + 4 * v18), v76);
        v80 = vdivq_f32(_Q0, vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v73, _Q0), v74), v75), v76));
        *(***a3 + 4 * v18 + 64) = vmulq_f32(v77, v80);
        *(**(*a3 + 24) + 4 * v18 + 64) = vmulq_f32(v78, v80);
        *(**(*a3 + 48) + 4 * v18 + 64) = vmulq_f32(v79, v80);
      }

      else
      {
        v36 = v84;
        do
        {
          v37 = *v36;
          v36 += 5;
          *(**(*a3 + v35) + 4 * v18 + 64) = *(v37 + 4 * v18);
          v35 += 24;
        }

        while (v35 != 72);
      }

      v18 += 4;
    }

    while (v18 < v19);
  }

  return 0;
}

uint64_t sub_240BF36D4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, double a8, double a9)
{
  v9 = 0;
  v86 = *MEMORY[0x277D85DE8];
  v10 = *(*(a1 + 184) + 24) + *(*(a1 + 184) + 16) * ((a7 >> 3) + 2);
  v11 = *(a1 + 152) * 1.65;
  *&v11 = v11;
  *&a9 = *(a1 + 156) * *&v11;
  v81 = LODWORD(a9);
  v82 = vdupq_lane_s32(*&v11, 0);
  v83 = LODWORD(v11);
  v84 = LODWORD(v11);
  v85 = LODWORD(a9);
  v80[0] = vdupq_lane_s32(*&a9, 0);
  v80[1] = v80[0];
  v12 = *a2;
  v13 = *(a1 + 16);
  v14 = &v78;
  do
  {
    v15 = 0;
    v16 = *(v12 + 24 * v9) + 8 * v13 - 8;
    do
    {
      v14[v15] = *(v16 + v15 * 8) + 64;
      ++v15;
    }

    while (v15 != 3);
    ++v9;
    v14 += 3;
  }

  while (v9 != 3);
  v17 = (a4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  _ZF = (a7 & 7) == 7 || (a7 & 7) == 0;
  v19 = &v81;
  if (_ZF)
  {
    v19 = v80;
  }

  v20 = -v17;
  v21 = v17 + a5;
  if (v21 > v20)
  {
    v23 = v78;
    v22 = v79[0];
    v25 = v79[5];
    v24 = v79[6];
    v26 = v79[1];
    v27 = v79[2];
    v28 = v79[3];
    v29 = v79[4];
    v30 = v79[7];
    __asm { FMOV            V0.4S, #1.0 }

    do
    {
      v35 = *(v10 + (((v20 + a6 + 16) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
      v36 = 4 * v20;
      if (v35 >= -3.9052)
      {
        v38 = *(v22 + 4 * v20);
        v39 = *(v28 + 4 * v20);
        v40 = *(v24 + 4 * v20);
        v41 = *(v23 + 4 * v20);
        v42 = vmulq_n_f32(*&v19[(v20 + a6) & 7], v35);
        v43 = *(v27 + 4 * v20);
        v44 = *(v25 + 4 * v20);
        v45 = *(a1 + 120);
        v46 = *(a1 + 124);
        v47 = *(a1 + 128);
        v48 = vmaxnmq_f32(vmlaq_f32(_Q0, v42, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vabdq_f32(v41, v38), v45), vabdq_f32(v43, v39), v46), vabdq_f32(v44, v40), v47)), 0);
        v49 = *(v22 + v36 - 4);
        v50 = *(v28 + v36 - 4);
        v51 = *(v24 + v36 - 4);
        v52 = vabdq_f32(v49, v38);
        v53 = *(v22 + (v36 | 4));
        v54 = *(v26 + 4 * v20);
        v55 = vabdq_f32(v53, v38);
        v56 = vabdq_f32(v54, v38);
        v57 = vmlaq_f32(v38, v41, v48);
        v58 = *(v28 + (v36 | 4));
        v59 = vabdq_f32(v50, v39);
        v60 = vabdq_f32(v58, v39);
        v61 = *(v29 + 4 * v20);
        v62 = vabdq_f32(v61, v39);
        v63 = vmlaq_f32(v39, v43, v48);
        v64 = vabdq_f32(v51, v40);
        v65 = *(v24 + (v36 | 4));
        v66 = *(v30 + 4 * v20);
        v67 = vabdq_f32(v65, v40);
        v68 = vabdq_f32(v66, v40);
        v69 = vmlaq_f32(v40, v44, v48);
        v70 = vmaxnmq_f32(vmlaq_f32(_Q0, v42, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v52, v45), v59, v46), v64, v47)), 0);
        v71 = vmaxnmq_f32(vmlaq_f32(_Q0, v42, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v55, v45), v60, v46), v67, v47)), 0);
        v72 = vmaxnmq_f32(vmlaq_f32(_Q0, v42, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v56, v45), v62, v46), v68, v47)), 0);
        v73 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v57, v49, v70), v53, v71), v54, v72);
        v74 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v63, v50, v70), v58, v71), v61, v72);
        v75 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v69, v51, v70), v65, v71), v66, v72);
        v76 = vdivq_f32(_Q0, vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v48, _Q0), v70), v71), v72));
        *(***a3 + 4 * v20 + 64) = vmulq_f32(v73, v76);
        *(**(*a3 + 24) + 4 * v20 + 64) = vmulq_f32(v74, v76);
        *(**(*a3 + 48) + 4 * v20 + 64) = vmulq_f32(v75, v76);
      }

      else
      {
        for (i = 0; i != 9; i += 3)
        {
          *(**(*a3 + i * 8) + 4 * v20 + 64) = *(v79[i] + 4 * v20);
        }
      }

      v20 += 4;
    }

    while (v20 < v21);
  }

  return 0;
}

void sub_240BF3A24(uint64_t *a1, uint64_t a2)
{
  if ((*(a2 + 312) & 1) == 0)
  {
    v2 = *(a2 + 320);
    if (v2 <= 12)
    {
      if (v2 == 1)
      {
        operator new();
      }

      if (v2 == 8)
      {
        operator new();
      }
    }

    else
    {
      switch(v2)
      {
        case 13:
          operator new();
        case 16:
          operator new();
        case 18:
          v3 = log2f(*(a2 + 864) / 1000.0);
          powf(1.111, -v3);
          operator new();
      }
    }
  }

  operator new();
}

uint64_t sub_240BF3CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = -a4;
  if (a5 + a4 > -a4)
  {
    v6 = *(a1 + 16);
    v7 = *(**a2 + 8 * v6);
    v8 = 64 - 4 * a4;
    v9 = (*(*(*a2 + 48) + 8 * v6) + v8);
    v10 = (*(*(*a2 + 24) + 8 * v6) + v8);
    v11 = (v7 + v8);
    v12 = vdupq_n_s32(0xC0D55555);
    v13.i64[0] = 0x7F0000007FLL;
    v13.i64[1] = 0x7F0000007FLL;
    __asm { FMOV            V2.4S, #-1.0 }

    v19 = vdupq_n_s32(0x3F3E11C7u);
    v20 = vdupq_n_s32(0x3FB6E02Bu);
    v21 = vdupq_n_s32(0x3E32458Cu);
    v22 = vdupq_n_s32(0x3F813CEDu);
    v23 = vdupq_n_s32(0xB5F85AB0);
    v24 = vdupq_n_s32(0x3F7D8625u);
    __asm { FMOV            V17.4S, #1.0 }

    v26 = vdupq_n_s32(0x4122CC6Bu);
    v27 = vdupq_n_s32(0x424379A1u);
    v28 = vdupq_n_s32(0x42C519F0u);
    v29 = vdupq_n_s32(0x3E5749EEu);
    v30 = vdupq_n_s32(0xBCB621BE);
    v31 = vdupq_n_s32(0xC19B8831);
    v32 = vdupq_n_s32(0x42C519F1u);
    v33 = vdupq_n_s32(0x3727C5ACu);
    do
    {
      v34 = *(a1 + 40);
      v35 = vaddq_s32(*v11, v12);
      v36 = vshrq_n_s32(v35, 0x17uLL);
      v37 = vaddq_f32(vsubq_s32(*v11, vandq_s8(v35, v13)), _Q2);
      v38 = vmulq_n_f32(vaddq_f32(vdivq_f32(vmlaq_f32(v23, v37, vmlaq_f32(v20, v19, v37)), vmlaq_f32(v24, v37, vmlaq_f32(v22, v21, v37))), vcvtq_f32_s32(v36)), v34);
      v39 = vrndmq_f32(v38);
      v40 = vsubq_f32(v38, v39);
      v41 = vbicq_s8(vdivq_f32(vmulq_f32(vmlaq_f32(v28, v40, vmlaq_f32(v27, v40, vaddq_f32(v40, v26))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v39), 0x17uLL), _Q17)), vmlaq_f32(v32, v40, vmlaq_f32(v31, v40, vmlaq_f32(v30, v29, v40)))), vcgeq_f32(v33, *v11));
      v42 = vaddq_s32(*v10, v12);
      v43 = vshrq_n_s32(v42, 0x17uLL);
      v44 = vaddq_f32(vsubq_s32(*v10, vandq_s8(v42, v13)), _Q2);
      v45 = vmulq_n_f32(vaddq_f32(vdivq_f32(vmlaq_f32(v23, v44, vmlaq_f32(v20, v19, v44)), vmlaq_f32(v24, v44, vmlaq_f32(v22, v21, v44))), vcvtq_f32_s32(v43)), v34);
      v46 = vrndmq_f32(v45);
      v47 = vsubq_f32(v45, v46);
      v48 = vbicq_s8(vdivq_f32(vmulq_f32(vmlaq_f32(v28, v47, vmlaq_f32(v27, v47, vaddq_f32(v47, v26))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v46), 0x17uLL), _Q17)), vmlaq_f32(v32, v47, vmlaq_f32(v31, v47, vmlaq_f32(v30, v29, v47)))), vcgeq_f32(v33, *v10));
      v49 = vaddq_s32(*v9, v12);
      v50 = vshrq_n_s32(v49, 0x17uLL);
      v51 = vaddq_f32(vsubq_s32(*v9, vandq_s8(v49, v13)), _Q2);
      v52 = vmulq_n_f32(vaddq_f32(vdivq_f32(vmlaq_f32(v23, v51, vmlaq_f32(v20, v19, v51)), vmlaq_f32(v24, v51, vmlaq_f32(v22, v21, v51))), vcvtq_f32_s32(v50)), v34);
      v53 = vrndmq_f32(v52);
      v54 = vsubq_f32(v52, v53);
      v55 = vbicq_s8(vdivq_f32(vmulq_f32(vmlaq_f32(v28, v54, vmlaq_f32(v27, v54, vaddq_f32(v54, v26))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v53), 0x17uLL), _Q17)), vmlaq_f32(v32, v54, vmlaq_f32(v31, v54, vmlaq_f32(v30, v29, v54)))), vcgeq_f32(v33, *v9));
      *v11++ = v41;
      *v10++ = v48;
      *v9++ = v55;
      v5 += 4;
    }

    while (v5 < a5 + a4);
  }

  return 0;
}

uint64_t sub_240BF4000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = -a4;
  if (a5 + a4 > -a4)
  {
    v6 = *(a1 + 16);
    v7 = *(**a2 + 8 * v6);
    v8 = 64 - 4 * a4;
    v9 = (*(*(*a2 + 48) + 8 * v6) + v8);
    v10 = (*(*(*a2 + 24) + 8 * v6) + v8);
    v11 = (v7 + v8);
    __asm { FMOV            V0.4S, #4.5 }

    v17 = vdupq_n_s32(0xC0D55555);
    v18.i64[0] = 0x7F0000007FLL;
    v18.i64[1] = 0x7F0000007FLL;
    __asm { FMOV            V3.4S, #-1.0 }

    v20 = vdupq_n_s32(0x3F3E11C7u);
    v21 = vdupq_n_s32(0x3FB6E02Bu);
    v22 = vdupq_n_s32(0x3E32458Cu);
    v23 = vdupq_n_s32(0x3F813CEDu);
    v24 = vdupq_n_s32(0xB5F85AB0);
    v25 = vdupq_n_s32(0x3F7D8625u);
    v26 = vdupq_n_s32(0x3EE66666u);
    __asm { FMOV            V19.4S, #1.0 }

    v28 = vdupq_n_s32(0x4122CC6Bu);
    v29 = vdupq_n_s32(0x424379A1u);
    v30 = vdupq_n_s32(0x42C519F0u);
    v31 = vdupq_n_s32(0x3E5749EEu);
    v32 = vdupq_n_s32(0xBCB621BE);
    v33 = vdupq_n_s32(0xC19B8831);
    v34 = vdupq_n_s32(0x42C519F1u);
    v35 = vdupq_n_s32(0x3F8CAC08u);
    v36 = vdupq_n_s32(0xBDCAC083);
    v37 = vdupq_n_s32(0x3C9374BCu);
    do
    {
      v38 = vaddq_s32(*v11, v17);
      v39 = vshrq_n_s32(v38, 0x17uLL);
      v40 = vaddq_f32(vsubq_s32(*v11, vandq_s8(v38, v18)), _Q3);
      v41 = vmulq_f32(vaddq_f32(vdivq_f32(vmlaq_f32(v24, v40, vmlaq_f32(v21, v20, v40)), vmlaq_f32(v25, v40, vmlaq_f32(v23, v22, v40))), vcvtq_f32_s32(v39)), v26);
      v42 = vrndmq_f32(v41);
      v43 = vsubq_f32(v41, v42);
      v44 = vbslq_s8(vcgeq_f32(v37, *v11), vmulq_f32(*v11, _Q0), vmlaq_f32(v36, v35, vdivq_f32(vmulq_f32(vmlaq_f32(v30, v43, vmlaq_f32(v29, v43, vaddq_f32(v43, v28))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v42), 0x17uLL), _Q19)), vmlaq_f32(v34, v43, vmlaq_f32(v33, v43, vmlaq_f32(v32, v31, v43))))));
      v45 = vaddq_s32(*v10, v17);
      v46 = vshrq_n_s32(v45, 0x17uLL);
      v47 = vaddq_f32(vsubq_s32(*v10, vandq_s8(v45, v18)), _Q3);
      v48 = vmulq_f32(vaddq_f32(vdivq_f32(vmlaq_f32(v24, v47, vmlaq_f32(v21, v20, v47)), vmlaq_f32(v25, v47, vmlaq_f32(v23, v22, v47))), vcvtq_f32_s32(v46)), v26);
      v49 = vrndmq_f32(v48);
      v50 = vsubq_f32(v48, v49);
      v51 = vbslq_s8(vcgeq_f32(v37, *v10), vmulq_f32(*v10, _Q0), vmlaq_f32(v36, v35, vdivq_f32(vmulq_f32(vmlaq_f32(v30, v50, vmlaq_f32(v29, v50, vaddq_f32(v50, v28))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v49), 0x17uLL), _Q19)), vmlaq_f32(v34, v50, vmlaq_f32(v33, v50, vmlaq_f32(v32, v31, v50))))));
      v52 = vaddq_s32(*v9, v17);
      v53 = vshrq_n_s32(v52, 0x17uLL);
      v54 = vaddq_f32(vsubq_s32(*v9, vandq_s8(v52, v18)), _Q3);
      v55 = vmulq_f32(vaddq_f32(vdivq_f32(vmlaq_f32(v24, v54, vmlaq_f32(v21, v20, v54)), vmlaq_f32(v25, v54, vmlaq_f32(v23, v22, v54))), vcvtq_f32_s32(v53)), v26);
      v56 = vrndmq_f32(v55);
      v57 = vsubq_f32(v55, v56);
      v58 = vbslq_s8(vcgeq_f32(v37, *v9), vmulq_f32(*v9, _Q0), vmlaq_f32(v36, v35, vdivq_f32(vmulq_f32(vmlaq_f32(v30, v57, vmlaq_f32(v29, v57, vaddq_f32(v57, v28))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v56), 0x17uLL), _Q19)), vmlaq_f32(v34, v57, vmlaq_f32(v33, v57, vmlaq_f32(v32, v31, v57))))));
      *v11++ = v44;
      *v10++ = v51;
      *v9++ = v58;
      v5 += 4;
    }

    while (v5 < a5 + a4);
  }

  return 0;
}

uint64_t sub_240BF4388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = -a4;
  if (a5 + a4 > -a4)
  {
    v6 = *(a1 + 16);
    v7 = *(**a2 + 8 * v6);
    v8 = 64 - 4 * a4;
    v9 = (*(*(*a2 + 48) + 8 * v6) + v8);
    v10 = (*(*(*a2 + 24) + 8 * v6) + v8);
    v11 = (v7 + v8);
    v12 = vdupq_n_s32(0xC0D55555);
    v13.i64[0] = 0x7F0000007FLL;
    v13.i64[1] = 0x7F0000007FLL;
    __asm { FMOV            V2.4S, #-1.0 }

    v19 = vdupq_n_s32(0x3F3E11C7u);
    v20 = vdupq_n_s32(0x3FB6E02Bu);
    v21 = vdupq_n_s32(0x3E32458Cu);
    v22 = vdupq_n_s32(0x3F813CEDu);
    v23 = vdupq_n_s32(0xB5F85AB0);
    v24 = vdupq_n_s32(0x3F7D8625u);
    __asm { FMOV            V7.4S, #1.0 }

    v69 = vdupq_n_s32(0x4122CC6Bu);
    v70 = _Q7;
    v68 = vdupq_n_s32(0x424379A1u);
    v26 = vdupq_n_s32(0x42C519F0u);
    v27 = vdupq_n_s32(0x3E5749EEu);
    v28 = vdupq_n_s32(0xBCB621BE);
    v29 = vdupq_n_s32(0xC19B8831);
    v30 = vdupq_n_s32(0x42C519F1u);
    v31 = vdupq_n_s32(0x4E6E6B28u);
    v32.i64[0] = 0x8000000080000000;
    v32.i64[1] = 0x8000000080000000;
    __asm { FMOV            V27.4S, #3.0 }

    v34 = vdupq_n_s32(0xBE91C020);
    __asm { FMOV            V29.4S, #12.0 }

    v36 = vdupq_n_s32(0x3DFDDD65u);
    v37 = vdupq_n_s32(0x3F0F564Fu);
    v38 = vdupq_n_s32(0x3DAAAAABu);
    do
    {
      v39 = *v11;
      v40 = *v10;
      v41 = *v9;
      if (*(a1 + 44) == 1)
      {
        v42 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v41, *(a1 + 56)), v40, *(a1 + 52)), v39, *(a1 + 48));
        v43 = vaddq_s32(v42, v12);
        v44 = vshrq_n_s32(v43, 0x17uLL);
        v45 = vaddq_f32(vsubq_s32(v42, vandq_s8(v43, v13)), _Q2);
        v46 = vmulq_n_f32(vaddq_f32(vdivq_f32(vmlaq_f32(v23, v45, vmlaq_f32(v20, v19, v45)), vmlaq_f32(v24, v45, vmlaq_f32(v22, v21, v45))), vcvtq_f32_s32(v44)), *(a1 + 40));
        v47 = vrndmq_f32(v46);
        v48 = vsubq_f32(v46, v47);
        v49 = vminnmq_f32(vdivq_f32(vmulq_f32(vmlaq_f32(v26, v48, vmlaq_f32(v68, v48, vaddq_f32(v48, v69))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v47), 0x17uLL), v70)), vmlaq_f32(v30, v48, vmlaq_f32(v29, v48, vmlaq_f32(v28, v27, v48)))), v31);
        v39 = vmulq_f32(v39, v49);
        v40 = vmulq_f32(v40, v49);
        v41 = vmulq_f32(v41, v49);
      }

      v50 = vandq_s8(v39, v32);
      v51 = *&v39 & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL);
      v52 = vmlaq_f32(v34, _Q29, v51);
      v53 = vaddq_s32(v52, v12);
      v54 = vaddq_f32(vsubq_s32(v52, vandq_s8(v53, v13)), _Q2);
      v55 = vorrq_s8(v50, vabsq_f32(vbslq_s8(vcgeq_f32(v38, v51), vsqrtq_f32(vmulq_f32(v51, _Q27)), vmlaq_f32(v37, v36, vaddq_f32(vdivq_f32(vmlaq_f32(v23, v54, vmlaq_f32(v20, v19, v54)), vmlaq_f32(v24, v54, vmlaq_f32(v22, v21, v54))), vcvtq_f32_s32(vshrq_n_s32(v53, 0x17uLL)))))));
      v56 = vandq_s8(v40, v32);
      v57 = *&v40 & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL);
      v58 = vmlaq_f32(v34, _Q29, v57);
      v59 = vaddq_s32(v58, v12);
      v60 = vaddq_f32(vsubq_s32(v58, vandq_s8(v59, v13)), _Q2);
      v61 = vorrq_s8(v56, vabsq_f32(vbslq_s8(vcgeq_f32(v38, v57), vsqrtq_f32(vmulq_f32(v57, _Q27)), vmlaq_f32(v37, v36, vaddq_f32(vdivq_f32(vmlaq_f32(v23, v60, vmlaq_f32(v20, v19, v60)), vmlaq_f32(v24, v60, vmlaq_f32(v22, v21, v60))), vcvtq_f32_s32(vshrq_n_s32(v59, 0x17uLL)))))));
      v62 = vandq_s8(v41, v32);
      v63 = *&v41 & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL);
      v64 = vmlaq_f32(v34, _Q29, v63);
      v65 = vaddq_s32(v64, v12);
      v66 = vaddq_f32(vsubq_s32(v64, vandq_s8(v65, v13)), _Q2);
      *v11++ = v55;
      *v10++ = v61;
      *v9++ = vorrq_s8(v62, vabsq_f32(vbslq_s8(vcgeq_f32(v38, v63), vsqrtq_f32(vmulq_f32(v63, _Q27)), vmlaq_f32(v37, v36, vaddq_f32(vdivq_f32(vmlaq_f32(v23, v66, vmlaq_f32(v20, v19, v66)), vmlaq_f32(v24, v66, vmlaq_f32(v22, v21, v66))), vcvtq_f32_s32(vshrq_n_s32(v65, 0x17uLL)))))));
      v5 += 4;
    }

    while (v5 < a5 + a4);
  }

  return 0;
}

uint64_t sub_240BF4768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = -a4;
  if (a5 + a4 > -a4)
  {
    v6 = *(a1 + 16);
    v7 = *(**a2 + 8 * v6);
    v8 = 64 - 4 * a4;
    v9 = (*(*(*a2 + 48) + 8 * v6) + v8);
    v10 = (*(*(*a2 + 24) + 8 * v6) + v8);
    v11 = (v7 + v8);
    v12.i64[0] = 0x8000000080000000;
    v12.i64[1] = 0x8000000080000000;
    v13 = vdupq_n_s32(0x38D1B717u);
    v14 = vdupq_n_s32(0xC88BE24D);
    v15 = vdupq_n_s32(0x4786914Fu);
    v16 = vdupq_n_s32(0xC84A65A6);
    v17 = vdupq_n_s32(0xC72B7AD7);
    v18 = vdupq_n_s32(0x43074838u);
    v19 = vdupq_n_s32(0x467B5314u);
    v20 = vdupq_n_s32(0x3EC6B81Cu);
    v21 = vdupq_n_s32(0x44B8B702u);
    v22 = vdupq_n_s32(0x37257B02u);
    v23 = vdupq_n_s32(0x4206DFEEu);
    v24 = vdupq_n_s32(0x42418990u);
    v25 = vdupq_n_s32(0x43154069u);
    v26 = vdupq_n_s32(0x41CF3BC3u);
    v27 = vdupq_n_s32(0x42E01F14u);
    v28 = vdupq_n_s32(0x425CE93Au);
    v29 = vdupq_n_s32(0x42B94632u);
    v30 = vdupq_n_s32(0xBF8C4274);
    v31 = vdupq_n_s32(0x41A1562Eu);
    v32 = vdupq_n_s32(0x3C5D697Du);
    v33 = vdupq_n_s32(0x3F8196D9u);
    do
    {
      v34.i64[0] = __PAIR64__(HIDWORD(v11->i64[0]), *v11) & 0x7FFFFFFF7FFFFFFFLL;
      v34.i32[2] = v11->i64[1] & 0x7FFFFFFF;
      v34.i32[3] = HIDWORD(v11->i64[0]) & 0x7FFFFFFF;
      v35 = *(a1 + 40);
      v36 = vsqrtq_f32(vsqrtq_f32(vmulq_n_f32(v34, v35)));
      v37 = vorrq_s8(vandq_s8(*v11, v12), vabsq_f32(vbslq_s8(vcgtq_f32(v13, v34), vdivq_f32(vmlaq_f32(v22, v36, vmlaq_f32(v20, v36, vmlaq_f32(v18, v36, vmlaq_f32(v15, v14, v36)))), vmlaq_f32(v23, v36, vmlaq_f32(v21, v36, vmlaq_f32(v19, v36, vmlaq_f32(v17, v16, v36))))), vdivq_f32(vmlaq_f32(v32, v36, vmlaq_f32(v30, v36, vmlaq_f32(v28, v36, vmlaq_f32(v25, v24, v36)))), vmlaq_f32(v33, v36, vmlaq_f32(v31, v36, vmlaq_f32(v29, v36, vmlaq_f32(v27, v26, v36))))))));
      v38.i64[0] = __PAIR64__(HIDWORD(v10->i64[0]), *v10) & 0x7FFFFFFF7FFFFFFFLL;
      v38.i32[2] = v10->i64[1] & 0x7FFFFFFF;
      v38.i32[3] = HIDWORD(v10->i64[0]) & 0x7FFFFFFF;
      v39 = vsqrtq_f32(vsqrtq_f32(vmulq_n_f32(v38, v35)));
      v40 = vorrq_s8(vandq_s8(*v10, v12), vabsq_f32(vbslq_s8(vcgtq_f32(v13, v38), vdivq_f32(vmlaq_f32(v22, v39, vmlaq_f32(v20, v39, vmlaq_f32(v18, v39, vmlaq_f32(v15, v14, v39)))), vmlaq_f32(v23, v39, vmlaq_f32(v21, v39, vmlaq_f32(v19, v39, vmlaq_f32(v17, v16, v39))))), vdivq_f32(vmlaq_f32(v32, v39, vmlaq_f32(v30, v39, vmlaq_f32(v28, v39, vmlaq_f32(v25, v24, v39)))), vmlaq_f32(v33, v39, vmlaq_f32(v31, v39, vmlaq_f32(v29, v39, vmlaq_f32(v27, v26, v39))))))));
      v41 = vandq_s8(*v9, v12);
      v42.i64[0] = __PAIR64__(HIDWORD(v9->i64[0]), *v9) & 0x7FFFFFFF7FFFFFFFLL;
      v42.i32[2] = v9->i64[1] & 0x7FFFFFFF;
      v42.i32[3] = HIDWORD(v9->i64[0]) & 0x7FFFFFFF;
      v43 = vsqrtq_f32(vsqrtq_f32(vmulq_n_f32(v42, v35)));
      *v11++ = v37;
      *v10++ = v40;
      *v9++ = vorrq_s8(v41, vabsq_f32(vbslq_s8(vcgtq_f32(v13, v42), vdivq_f32(vmlaq_f32(v22, v43, vmlaq_f32(v20, v43, vmlaq_f32(v18, v43, vmlaq_f32(v15, v14, v43)))), vmlaq_f32(v23, v43, vmlaq_f32(v21, v43, vmlaq_f32(v19, v43, vmlaq_f32(v17, v16, v43))))), vdivq_f32(vmlaq_f32(v32, v43, vmlaq_f32(v30, v43, vmlaq_f32(v28, v43, vmlaq_f32(v25, v24, v43)))), vmlaq_f32(v33, v43, vmlaq_f32(v31, v43, vmlaq_f32(v29, v43, vmlaq_f32(v27, v26, v43))))))));
      v5 += 4;
    }

    while (v5 < a5 + a4);
  }

  return 0;
}

uint64_t sub_240BF4B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = -a4;
  if (a5 + a4 > -a4)
  {
    v6 = *(a1 + 16);
    v7 = *(**a2 + 8 * v6);
    v8 = 64 - 4 * a4;
    v9 = (*(*(*a2 + 48) + 8 * v6) + v8);
    v10 = (*(*(*a2 + 24) + 8 * v6) + v8);
    v11 = (v7 + v8);
    v12.i64[0] = 0x8000000080000000;
    v12.i64[1] = 0x8000000080000000;
    v13 = vdupq_n_s32(0x414EB852u);
    v14 = vdupq_n_s32(0x3F3C3A32u);
    v15 = vdupq_n_s32(0x3FBCB2C2u);
    v16 = vdupq_n_s32(0x3CC6A52Au);
    v17 = vdupq_n_s32(0x3F6D0463u);
    v18 = vdupq_n_s32(0x3EC7E073u);
    v19 = vdupq_n_s32(0x3FAB9FE4u);
    v20 = vdupq_n_s32(0x3BAD40B5u);
    v21 = vdupq_n_s32(0x3E9B7A50u);
    v22 = vdupq_n_s32(0xBA069D6D);
    v23 = vdupq_n_s32(0x3C24949Bu);
    v24 = vdupq_n_s32(0x3B4D2E1Cu);
    do
    {
      v25.i64[0] = __PAIR64__(HIDWORD(v11->i64[0]), *v11) & 0x7FFFFFFF7FFFFFFFLL;
      v25.i32[2] = v11->i64[1] & 0x7FFFFFFF;
      v25.i32[3] = HIDWORD(v11->i64[0]) & 0x7FFFFFFF;
      v26 = vsqrtq_f32(v25);
      v27 = vorrq_s8(vandq_s8(*v11, v12), vabsq_f32(vbslq_s8(vcgtq_f32(v25, v24), vdivq_f32(vmlaq_f32(v22, v26, vmlaq_f32(v20, v26, vmlaq_f32(v18, v26, vmlaq_f32(v15, v14, v26)))), vmlaq_f32(v23, v26, vmlaq_f32(v21, v26, vmlaq_f32(v19, v26, vmlaq_f32(v17, v16, v26))))), vmulq_f32(v25, v13))));
      v28.i64[0] = __PAIR64__(HIDWORD(v10->i64[0]), *v10) & 0x7FFFFFFF7FFFFFFFLL;
      v28.i32[2] = v10->i64[1] & 0x7FFFFFFF;
      v28.i32[3] = HIDWORD(v10->i64[0]) & 0x7FFFFFFF;
      v29 = vsqrtq_f32(v28);
      v30 = vorrq_s8(vandq_s8(*v10, v12), vabsq_f32(vbslq_s8(vcgtq_f32(v28, v24), vdivq_f32(vmlaq_f32(v22, v29, vmlaq_f32(v20, v29, vmlaq_f32(v18, v29, vmlaq_f32(v15, v14, v29)))), vmlaq_f32(v23, v29, vmlaq_f32(v21, v29, vmlaq_f32(v19, v29, vmlaq_f32(v17, v16, v29))))), vmulq_f32(v28, v13))));
      v31.i64[0] = __PAIR64__(HIDWORD(v9->i64[0]), *v9) & 0x7FFFFFFF7FFFFFFFLL;
      v31.i32[2] = v9->i64[1] & 0x7FFFFFFF;
      v31.i32[3] = HIDWORD(v9->i64[0]) & 0x7FFFFFFF;
      v32 = vsqrtq_f32(v31);
      v33 = vorrq_s8(vandq_s8(*v9, v12), vabsq_f32(vbslq_s8(vcgtq_f32(v31, v24), vdivq_f32(vmlaq_f32(v22, v32, vmlaq_f32(v20, v32, vmlaq_f32(v18, v32, vmlaq_f32(v15, v14, v32)))), vmlaq_f32(v23, v32, vmlaq_f32(v21, v32, vmlaq_f32(v19, v32, vmlaq_f32(v17, v16, v32))))), vmulq_f32(v31, v13))));
      *v11++ = v27;
      *v10++ = v30;
      *v9++ = v33;
      v5 += 4;
    }

    while (v5 < a5 + a4);
  }

  return 0;
}

uint64_t sub_240BF4DCC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v6 = a1 + 40;
  v7 = -((a4 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = a5 + a4;
  v9 = (4 * (a4 + 3)) & 0xFFFFFFFFFFFFFFF0;
  v10 = 64 - v9;
  v11 = 68 - v9;
  do
  {
    v12 = (*(*a2 + 24 * v5) + 8 * *(a1 + 16));
    v14 = *(v12 - 1);
    v13 = *v12;
    v15 = v12[1];
    v16 = (v6 + 12 * v5);
    v18 = vld1q_dup_f32(v16);
    v17 = (v16 + 1);
    if (v8 > v7)
    {
      v19 = *v17;
      v20 = (**(*a3 + 24 * v5) + v10);
      v21 = *(v6 + 12 * v5 + 8);
      v22 = (v14 + v11);
      v23 = (v15 + v11);
      v24 = (v13 + v11);
      v25 = v7;
      do
      {
        v26 = *(v22 - 4);
        v27 = *(v22 - 8);
        v28 = *v22++;
        v29 = v28;
        v30 = *(v24 - 4);
        v31 = *(v24 - 8);
        v32 = *v24++;
        v33 = v32;
        v34 = *(v23 - 4);
        v35 = *(v23 - 8);
        v36 = *v23++;
        *v20++ = vmlaq_n_f32(vmlaq_n_f32(vmulq_f32(v18, v30), vaddq_f32(vaddq_f32(v31, v33), vaddq_f32(v26, v34)), v19), vaddq_f32(vaddq_f32(v27, v29), vaddq_f32(v35, v36)), v21);
        v25 += 4;
      }

      while (v25 < v8);
    }

    ++v5;
  }

  while (v5 != 3);
  return 0;
}

uint64_t sub_240BF4EE8(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 56) <= a2)
  {
    return 3;
  }

  else
  {
    return a2 < 3;
  }
}

uint64_t sub_240BF4F04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v86 = *MEMORY[0x277D85DE8];
  v6 = a1[5];
  do
  {
    v7 = fabsf(*(v6 + v5));
    _ZF = v7 > 0.001 || v5 == 28;
    v5 += 4;
  }

  while (!_ZF);
  if (v7 > 0.001)
  {
    v9 = 0;
    v10 = v6[1];
    v85[0] = *v6;
    v85[1] = v10;
    v11 = &v84;
    do
    {
      v12 = *(v85 + v9);
      v11->i16[0] = v12;
      v11[-1].i8[0] = BYTE2(v12);
      v11[-1].i8[1] = HIBYTE(v12);
      v9 += 4;
      v11 = (v11 + 2);
    }

    while (v9 != 32);
    if (((a5 + 3) & 0xFFFFFFFFFFFFFFFCLL) != 0)
    {
      v13 = 0;
      v14 = a1[2];
      v15 = *(*(*a2 + 48) + 8 * v14);
      v16 = a1[6];
      v17 = (*a2 + 24 * a1[7]);
      v18 = *(*v17 + 8 * v14);
      v19 = *(v17[3] + 8 * v14);
      v20 = *(v17[6] + 8 * v14);
      v21 = (*(**a2 + 8 * v14) + 64);
      v22 = (*(*(*a2 + 24) + 8 * v14) + 64);
      v23 = v15 + 4;
      v24 = v18 + 4;
      v25 = v19 + 4;
      v26 = v20 + 4;
      v27 = v16[25];
      v28 = v16[27] + (v27 * 0.0);
      v29 = v16[26] + (v27 * 0.0);
      v31 = v83;
      v30 = v84;
      v32.i64[0] = 0x3F0000003F000000;
      v32.i64[1] = 0x3F0000003F000000;
      __asm
      {
        FMOV            V5.4S, #6.0
        FMOV            V7.4S, #7.0
        FMOV            V16.4S, #1.0
      }

      v39 = vdupq_n_s32(0x202u);
      v40.i64[0] = 0x10000000100;
      v40.i64[1] = 0x10000000100;
      v41 = vdupq_n_s32(0x2020000u);
      v42.i64[0] = 0x100000001000000;
      v42.i64[1] = 0x100000001000000;
      v43.i64[0] = 0xFFFF0000FFFF0000;
      v43.i64[1] = 0xFFFF0000FFFF0000;
      v44 = vdupq_n_s32(0x302u);
      v45 = vdupq_n_s32(0x3020000u);
      v46 = vdupq_n_s32(0x3E6147AEu);
      v47 = vdupq_n_s32(0x3F7E0000u);
      v48.i64[0] = 0x3C0000003C000000;
      v48.i64[1] = 0x3C0000003C000000;
      do
      {
        v49 = vmaxnmq_f32(vmulq_f32(vmulq_f32(vsubq_f32(*v22, *v21), v32), _Q5), 0);
        v50 = vrndmq_f32(v49);
        v51 = vsubq_f32(v49, v50);
        v52 = vcgeq_f32(v49, _Q7);
        v53 = vbslq_s8(v52, _Q5, v50);
        v54 = vbslq_s8(v52, _Q16, v51);
        v55 = vcvtq_s32_f32(v53);
        v56 = vmulq_s32(v55, v39);
        v57 = vmulq_s32(v55, v41);
        v58 = vbslq_s8(v43, vqtbl1q_s8(v31, vaddq_s32(v57, v42)), vqtbl1q_s8(v30, vaddq_s32(v56, v40)));
        v59 = vmaxnmq_f32(vminnmq_f32(vmlaq_f32(v58, v54, vsubq_f32(vbslq_s8(v43, vqtbl1q_s8(v31, vaddq_s32(v57, v45)), vqtbl1q_s8(v30, vaddq_s32(v56, v44))), v58)), _Q16), 0);
        v60 = vmaxnmq_f32(vmulq_f32(vmulq_f32(vaddq_f32(*v21, *v22), v32), _Q5), 0);
        v61 = vrndmq_f32(v60);
        v62 = vsubq_f32(v60, v61);
        v63 = vcgeq_f32(v60, _Q7);
        v64 = vbslq_s8(v63, _Q5, v61);
        v65 = vbslq_s8(v63, _Q16, v62);
        v66 = vcvtq_s32_f32(v64);
        v67 = vmulq_s32(v66, v39);
        v68 = vmulq_s32(v66, v41);
        v69 = vbslq_s8(v43, vqtbl1q_s8(v31, vaddq_s32(v68, v42)), vqtbl1q_s8(v30, vaddq_s32(v67, v40)));
        v70 = vmaxnmq_f32(vminnmq_f32(vmlaq_f32(v69, v65, vsubq_f32(vbslq_s8(v43, vqtbl1q_s8(v31, vaddq_s32(v68, v45)), vqtbl1q_s8(v30, vaddq_s32(v67, v44))), v69)), _Q16), 0);
        v71 = *v24++;
        v72 = vmulq_f32(v71, v46);
        v73 = *v25++;
        v74 = vmulq_f32(v73, v46);
        v75 = *v26++;
        v76 = vmulq_f32(vmulq_f32(v75, v46), v47);
        v77 = vmulq_f32(v70, vmlaq_f32(v76, v48, v72));
        v78 = vmulq_f32(v59, vmlaq_f32(v76, v48, v74));
        v79 = vaddq_f32(v77, v78);
        v80 = vaddq_f32(*v22, v79);
        v81 = vmlaq_n_f32(*v23, v79, v28);
        *v21 = vaddq_f32(*v21, vmlaq_n_f32(vsubq_f32(v77, v78), v79, v29));
        ++v21;
        *v22++ = v80;
        *v23++ = v81;
        v13 += 4;
      }

      while (v13 < ((a5 + 3) & 0xFFFFFFFFFFFFFFFCLL));
    }
  }

  return 0;
}

uint64_t sub_240BF5220(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 40);
  if (v5 <= 0xFFFFFFFFFFFFFFFCLL)
  {
    v6 = -((a4 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v7 = a5 + a4;
    v8 = (4 * (a4 + 3)) & 0xFFFFFFFFFFFFFFF0 ^ 0xFFFFFFFFFFFFFFF8;
    v9 = vdupq_n_s32(0xC075C28F);
    v10 = vdupq_n_s32(0x3E23D70Au);
    v11 = *(a1 + 40);
    do
    {
      v12 = 0;
      v27 = 0;
      v25 = 0uLL;
      v26 = 0uLL;
      v13 = *(*a2 + 24 * v11) + 8 * *(a1 + 16) - 16;
      do
      {
        *(&v25 + v12) = *(v13 + v12) + 64;
        v12 += 8;
      }

      while (v12 != 40);
      if (v7 > v6)
      {
        v14 = **(*a3 + 24 * v11) + 64;
        v15 = v27 + v8;
        v16 = v26;
        v17 = *(&v26 + 1) + v8;
        v18 = *(&v25 + 1) + v8;
        v19 = v25 + v8;
        v20 = v6;
        do
        {
          v21 = 0;
          v23 = 0uLL;
          do
          {
            v23 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v23, *(v19 + v21)), *(v18 + v21)), *(v17 + v21)), *(v15 + v21));
            v21 += 4;
          }

          while (v21 != 20);
          v22 = v16 + 4 * v20;
          *(v14 + 4 * v20) = vmlaq_f32(vmulq_f32(*v22, v9), v10, vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v23, *(v22 - 8)), *(v22 - 4)), *(v22 + 4)), *(v22 + 8)));
          v20 += 4;
          v15 += 16;
          v17 += 16;
          v18 += 16;
          v19 += 16;
        }

        while (v20 < v7);
        v5 = *(a1 + 40);
      }

      ++v11;
    }

    while (v11 < v5 + 3);
  }

  return 0;
}

uint64_t sub_240BF5404(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a6)
  {
    v12 = a6 - a4;
  }

  else
  {
    v12 = 0;
  }

  sub_240B41F20(v41, a1[6]);
  v13 = a1[6];
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    v16 = a1[2];
    do
    {
      *(v41[0] + v15++) = *(*(*a2 + v14) + 8 * v16) + 4 * v12 - 4 * a6 + 64;
      v14 += 24;
    }

    while (v13 != v15);
  }

  v17 = a1[5];
  v18 = v41[0];
  v19 = *(**v17 + 320);
  sub_240B496C0(v44, v19 + 3);
  sub_240B493D8(&v42, v17, a7);
  v20 = v43;
  __p = v42;
  if (v42 == v43)
  {
LABEL_25:
    if (__p)
    {
      operator delete(__p);
    }

    v37 = 0;
  }

  else
  {
    v21 = a5 + a4 + a6;
    v22 = v42;
    while (1)
    {
      v23 = (v17[1] + 24 * *v22);
      v24 = (v17[4] + 40 * v23[2]);
      v25 = *v23;
      v26 = v24[3] + *v23;
      if (*v23 < v21 && v26 >= v12)
      {
        v28 = 0;
        v29 = *v22 * (v19 + 1);
        v30 = v24[2] + a7 - v23[1];
        v31 = *v24;
        v32 = v24[1];
        v33 = -v25;
        v34 = 456 * v31 + 2496;
        do
        {
          *(v44[0] + v28) = *(*v17 + v34) + *(*v17 + 456 * v31 + 2488) * v30 + 4 * v32 + 4 * v12 - 4 * v25;
          v28 += 8;
          v34 += 40;
        }

        while (v28 != 24);
        if (v25 <= v12)
        {
          v25 = v12;
        }

        if (v21 < v26)
        {
          v26 = v21;
        }

        if (v19)
        {
          v35 = 0;
          v36 = 24;
          do
          {
            *(v44[0] + v36) = *(*(*v17 + 456 * v31 + 2792) + v35 + 24) + *(*(*v17 + 456 * v31 + 2792) + v35 + 16) * v30 + 4 * v32 + 4 * v12 + 4 * v33;
            v35 += 40;
            v36 += 8;
          }

          while (40 * v19 != v35);
        }

        v37 = sub_240B22EF4(v18, v44[0], v18, v25 - v12, v26 - v25, (v17[7] + 12 * v29), v17[7] + 12 * v29 + 12, (**v17 + 328));
        if (v37)
        {
          break;
        }
      }

      if (++v22 == v20)
      {
        goto LABEL_25;
      }
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  if (v44[0])
  {
    v44[1] = v44[0];
    operator delete(v44[0]);
  }

  if (v41[0])
  {
    v41[1] = v41[0];
    operator delete(v41[0]);
  }

  return v37;
}

void sub_240BF56AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240BF5728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a1 + 40);
  v11 = v10[7];
  if (v11 != v10[8])
  {
    v17[4] = v7;
    v17[5] = v8;
    v12 = *(a1 + 16);
    v13 = *(*(*a2 + 48) + 8 * v12);
    v14 = *(*(*a2 + 24) + 8 * v12);
    v15 = *(**a2 + 8 * v12);
    v17[0] = a6;
    v17[1] = a7;
    v17[2] = a5;
    v17[3] = 1;
    sub_240B6A9F0((v15 + 64), v14 + 64, v13 + 64, v17, 1, v11, v10[10], v10[13]);
  }

  return 0;
}

uint64_t sub_240BF57D0(uint64_t a1, unint64_t a2)
{
  if (a2 < 3)
  {
    return 1;
  }

  if (*(a1 + 40) == a2)
  {
    return 3;
  }

  return 0;
}

uint64_t sub_240BF57F4(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v6 = a1[6];
  v7 = *(v6 + 12);
  v8 = *a2;
  v9 = a1[2];
  v10 = 64 - 4 * a4;
  v11 = (*(*(*a2 + 24 * a1[5]) + 8 * v9) + v10);
  do
  {
    if (a5 + a4 > -a4)
    {
      v12 = (*(*(v8 + 24 * v5) + 8 * v9) + v10);
      v13 = v11;
      v14 = a5 + 2 * a4;
      do
      {
        v15 = *v13++;
        *v12 = ((1.0 - (v7 * v15)) * *v12) + ((v7 * v15) * *(v6 + 4 * v5));
        ++v12;
        --v14;
      }

      while (v14);
    }

    ++v5;
  }

  while (v5 != 3);
  return 0;
}

uint64_t sub_240BF5910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = -a4;
  if (a5 + a4 > -a4)
  {
    v6 = *(a1 + 16);
    v7 = *(**a2 + 8 * v6);
    v8 = 64 - 4 * a4;
    v9 = (*(*(*a2 + 48) + 8 * v6) + v8);
    v10 = (*(*(*a2 + 24) + 8 * v6) + v8);
    v11 = (v7 + v8);
    v12 = vdupq_n_s32(0xC0D55555);
    v13.i64[0] = 0x7F0000007FLL;
    v13.i64[1] = 0x7F0000007FLL;
    __asm { FMOV            V2.4S, #-1.0 }

    v19 = vdupq_n_s32(0x3F3E11C7u);
    v20 = vdupq_n_s32(0x3FB6E02Bu);
    v21 = vdupq_n_s32(0x3E32458Cu);
    v22 = vdupq_n_s32(0x3F813CEDu);
    v23 = vdupq_n_s32(0xB5F85AB0);
    v24 = vdupq_n_s32(0x3F7D8625u);
    __asm { FMOV            V17.4S, #1.0 }

    v26 = vdupq_n_s32(0x4122CC6Bu);
    v27 = vdupq_n_s32(0x424379A1u);
    v28 = vdupq_n_s32(0x42C519F0u);
    v29 = vdupq_n_s32(0x3E5749EEu);
    v30 = vdupq_n_s32(0xBCB621BE);
    v31 = vdupq_n_s32(0xC19B8831);
    v32 = vdupq_n_s32(0x42C519F1u);
    v33 = vdupq_n_s32(0x3727C5ACu);
    do
    {
      v34 = *(a1 + 40);
      v35 = vaddq_s32(*v11, v12);
      v36 = vshrq_n_s32(v35, 0x17uLL);
      v37 = vaddq_f32(vsubq_s32(*v11, vandq_s8(v35, v13)), _Q2);
      v38 = vmulq_n_f32(vaddq_f32(vdivq_f32(vmlaq_f32(v23, v37, vmlaq_f32(v20, v19, v37)), vmlaq_f32(v24, v37, vmlaq_f32(v22, v21, v37))), vcvtq_f32_s32(v36)), v34);
      v39 = vrndmq_f32(v38);
      v40 = vsubq_f32(v38, v39);
      v41 = vbicq_s8(vdivq_f32(vmulq_f32(vmlaq_f32(v28, v40, vmlaq_f32(v27, v40, vaddq_f32(v40, v26))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v39), 0x17uLL), _Q17)), vmlaq_f32(v32, v40, vmlaq_f32(v31, v40, vmlaq_f32(v30, v29, v40)))), vcgeq_f32(v33, *v11));
      v42 = vaddq_s32(*v10, v12);
      v43 = vshrq_n_s32(v42, 0x17uLL);
      v44 = vaddq_f32(vsubq_s32(*v10, vandq_s8(v42, v13)), _Q2);
      v45 = vmulq_n_f32(vaddq_f32(vdivq_f32(vmlaq_f32(v23, v44, vmlaq_f32(v20, v19, v44)), vmlaq_f32(v24, v44, vmlaq_f32(v22, v21, v44))), vcvtq_f32_s32(v43)), v34);
      v46 = vrndmq_f32(v45);
      v47 = vsubq_f32(v45, v46);
      v48 = vbicq_s8(vdivq_f32(vmulq_f32(vmlaq_f32(v28, v47, vmlaq_f32(v27, v47, vaddq_f32(v47, v26))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v46), 0x17uLL), _Q17)), vmlaq_f32(v32, v47, vmlaq_f32(v31, v47, vmlaq_f32(v30, v29, v47)))), vcgeq_f32(v33, *v10));
      v49 = vaddq_s32(*v9, v12);
      v50 = vshrq_n_s32(v49, 0x17uLL);
      v51 = vaddq_f32(vsubq_s32(*v9, vandq_s8(v49, v13)), _Q2);
      v52 = vmulq_n_f32(vaddq_f32(vdivq_f32(vmlaq_f32(v23, v51, vmlaq_f32(v20, v19, v51)), vmlaq_f32(v24, v51, vmlaq_f32(v22, v21, v51))), vcvtq_f32_s32(v50)), v34);
      v53 = vrndmq_f32(v52);
      v54 = vsubq_f32(v52, v53);
      v55 = vbicq_s8(vdivq_f32(vmulq_f32(vmlaq_f32(v28, v54, vmlaq_f32(v27, v54, vaddq_f32(v54, v26))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v53), 0x17uLL), _Q17)), vmlaq_f32(v32, v54, vmlaq_f32(v31, v54, vmlaq_f32(v30, v29, v54)))), vcgeq_f32(v33, *v9));
      *v11++ = v41;
      *v10++ = v48;
      *v9++ = v55;
      v5 += 4;
    }

    while (v5 < a5 + a4);
  }

  return 0;
}

uint64_t sub_240BF5C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = -a4;
  if (a5 + a4 > -a4)
  {
    v6 = *(a1 + 16);
    v7 = *(**a2 + 8 * v6);
    v8 = 64 - 4 * a4;
    v9 = (*(*(*a2 + 48) + 8 * v6) + v8);
    v10 = (*(*(*a2 + 24) + 8 * v6) + v8);
    v11 = (v7 + v8);
    v12 = vdupq_n_s32(0x3E638E39u);
    v13 = vdupq_n_s32(0x3F68F065u);
    v14 = vdupq_n_s32(0x3DB87CDBu);
    v15 = vdupq_n_s32(0xC0D55555);
    v16.i64[0] = 0x7F0000007FLL;
    v16.i64[1] = 0x7F0000007FLL;
    __asm { FMOV            V5.4S, #-1.0 }

    v22 = vdupq_n_s32(0x3F3E11C7u);
    v23 = vdupq_n_s32(0x3FB6E02Bu);
    v24 = vdupq_n_s32(0x3E32458Cu);
    v25 = vdupq_n_s32(0x3F813CEDu);
    v26 = vdupq_n_s32(0xB5F85AB0);
    v27 = vdupq_n_s32(0x3F7D8625u);
    v28 = vdupq_n_s32(0x400E38E4u);
    __asm { FMOV            V21.4S, #1.0 }

    v30 = vdupq_n_s32(0x4122CC6Bu);
    v31 = vdupq_n_s32(0x424379A1u);
    v32 = vdupq_n_s32(0x42C519F0u);
    v33 = vdupq_n_s32(0x3E5749EEu);
    v34 = vdupq_n_s32(0xBCB621BE);
    v35 = vdupq_n_s32(0xC19B8831);
    v36 = vdupq_n_s32(0x42C519F1u);
    v37 = vdupq_n_s32(0x3DA5E354u);
    do
    {
      v38 = vmlaq_f32(v14, v13, *v11);
      v39 = vaddq_s32(v38, v15);
      v40 = vaddq_f32(vsubq_s32(v38, vandq_s8(v39, v16)), _Q5);
      v41 = vmulq_f32(vaddq_f32(vdivq_f32(vmlaq_f32(v26, v40, vmlaq_f32(v23, v22, v40)), vmlaq_f32(v27, v40, vmlaq_f32(v25, v24, v40))), vcvtq_f32_s32(vshrq_n_s32(v39, 0x17uLL))), v28);
      v42 = vrndmq_f32(v41);
      v43 = vsubq_f32(v41, v42);
      v44 = vbslq_s8(vcgtq_f32(v37, *v11), vmulq_f32(*v11, v12), vdivq_f32(vmulq_f32(vmlaq_f32(v32, v43, vmlaq_f32(v31, v43, vaddq_f32(v43, v30))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v42), 0x17uLL), _Q21)), vmlaq_f32(v36, v43, vmlaq_f32(v35, v43, vmlaq_f32(v34, v33, v43)))));
      v45 = vmlaq_f32(v14, v13, *v10);
      v46 = vaddq_s32(v45, v15);
      v47 = vaddq_f32(vsubq_s32(v45, vandq_s8(v46, v16)), _Q5);
      v48 = vmulq_f32(vaddq_f32(vdivq_f32(vmlaq_f32(v26, v47, vmlaq_f32(v23, v22, v47)), vmlaq_f32(v27, v47, vmlaq_f32(v25, v24, v47))), vcvtq_f32_s32(vshrq_n_s32(v46, 0x17uLL))), v28);
      v49 = vrndmq_f32(v48);
      v50 = vsubq_f32(v48, v49);
      v51 = vbslq_s8(vcgtq_f32(v37, *v10), vmulq_f32(*v10, v12), vdivq_f32(vmulq_f32(vmlaq_f32(v32, v50, vmlaq_f32(v31, v50, vaddq_f32(v50, v30))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v49), 0x17uLL), _Q21)), vmlaq_f32(v36, v50, vmlaq_f32(v35, v50, vmlaq_f32(v34, v33, v50)))));
      v52 = vmlaq_f32(v14, v13, *v9);
      v53 = vaddq_s32(v52, v15);
      v54 = vaddq_f32(vsubq_s32(v52, vandq_s8(v53, v16)), _Q5);
      v55 = vmulq_f32(vaddq_f32(vdivq_f32(vmlaq_f32(v26, v54, vmlaq_f32(v23, v22, v54)), vmlaq_f32(v27, v54, vmlaq_f32(v25, v24, v54))), vcvtq_f32_s32(vshrq_n_s32(v53, 0x17uLL))), v28);
      v56 = vrndmq_f32(v55);
      v57 = vsubq_f32(v55, v56);
      v58 = vbslq_s8(vcgtq_f32(v37, *v9), vmulq_f32(*v9, v12), vdivq_f32(vmulq_f32(vmlaq_f32(v32, v57, vmlaq_f32(v31, v57, vaddq_f32(v57, v30))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v56), 0x17uLL), _Q21)), vmlaq_f32(v36, v57, vmlaq_f32(v35, v57, vmlaq_f32(v34, v33, v57)))));
      *v11++ = v44;
      *v10++ = v51;
      *v9++ = v58;
      v5 += 4;
    }

    while (v5 < a5 + a4);
  }

  return 0;
}

uint64_t sub_240BF5FE8(uint64_t a1, uint64_t a2, double a3, double a4, float32x4_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v64[3] = *MEMORY[0x277D85DE8];
  v8 = -a7;
  v58 = a8 + a7;
  if (a8 + a7 > -a7)
  {
    v10 = *(a1 + 16);
    v56 = *(*(*a2 + 24) + 8 * v10) + 64;
    v57 = *(**a2 + 8 * v10) + 64;
    v55 = *(*(*a2 + 48) + 8 * v10) + 64;
    __asm { FMOV            V0.4S, #-1.0 }

    v53 = _Q0;
    v54 = vdupq_n_s32(0xC0D55555);
    v51 = vdupq_n_s32(0x3FB6E02Bu);
    v52 = vdupq_n_s32(0x3F3E11C7u);
    v49 = vdupq_n_s32(0x3F813CEDu);
    v50 = vdupq_n_s32(0x3E32458Cu);
    v47 = vdupq_n_s32(0x3F7D8625u);
    v48 = vdupq_n_s32(0xB5F85AB0);
    __asm { FMOV            V1.4S, #1.0 }

    v45 = vdupq_n_s32(0x4122CC6Bu);
    v46 = _Q1;
    v43 = vdupq_n_s32(0x42C519F0u);
    v44 = vdupq_n_s32(0x424379A1u);
    v41 = vdupq_n_s32(0xBCB621BE);
    v42 = vdupq_n_s32(0x3E5749EEu);
    v39 = vdupq_n_s32(0x42C519F1u);
    v40 = vdupq_n_s32(0xC19B8831);
    v38 = vdupq_n_s32(0x4E6E6B28u);
    v17.i64[0] = 0x8000000080000000;
    v17.i64[1] = 0x8000000080000000;
    do
    {
      v18 = 0;
      v19 = (v57 + 4 * v8);
      v62 = *v19;
      v20 = (v56 + 4 * v8);
      v61 = *v20;
      v21 = (v55 + 4 * v8);
      v60 = *v21;
      v64[0] = &v62;
      v64[1] = &v61;
      v64[2] = &v60;
      do
      {
        v22 = 0;
        v23 = v64[v18];
        v24 = *v23;
        v63 = *v23;
        do
        {
          a5.i32[0] = v63.i32[v22];
          v24.i32[0] = 0;
          if (a5.f32[0] != 0.0)
          {
            v25 = fabs(a5.f32[0]);
            if (v25 <= 0.5)
            {
              *v24.i64 = a5.f32[0] * a5.f32[0] * 0.333333333;
            }

            else
            {
              v59 = a5;
              *v24.i64 = exp((v25 + -0.559910729) * 5.59181631);
              a5 = v59;
              v17.i64[0] = 0x8000000080000000;
              v17.i64[1] = 0x8000000080000000;
              *v24.i64 = (*v24.i64 + 0.28466892) * 0.0833333333;
            }

            *v24.i32 = *v24.i64;
            v24 = vbslq_s8(v17, v24, a5);
          }

          v63.i32[v22++] = v24.i32[0];
        }

        while (v22 != 4);
        *v23 = v63;
        ++v18;
      }

      while (v18 != 3);
      v26 = v61;
      a5 = v62;
      v27 = v60;
      if (*(a1 + 44) == 1)
      {
        v28 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v60, *(a1 + 56)), v61, *(a1 + 52)), v62, *(a1 + 48));
        v29 = vaddq_s32(v28, v54);
        v30 = vshrq_n_s32(v29, 0x17uLL);
        v31.i64[0] = 0x7F0000007FLL;
        v31.i64[1] = 0x7F0000007FLL;
        v32 = vaddq_f32(vsubq_s32(v28, vandq_s8(v29, v31)), v53);
        v33 = vmulq_n_f32(vaddq_f32(vdivq_f32(vmlaq_f32(v48, v32, vmlaq_f32(v51, v52, v32)), vmlaq_f32(v47, v32, vmlaq_f32(v49, v50, v32))), vcvtq_f32_s32(v30)), *(a1 + 40));
        v34 = vrndmq_f32(v33);
        v35 = vsubq_f32(v33, v34);
        v36 = vminnmq_f32(vdivq_f32(vmulq_f32(vmlaq_f32(v43, v35, vmlaq_f32(v44, v35, vaddq_f32(v35, v45))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v34), 0x17uLL), v46)), vmlaq_f32(v39, v35, vmlaq_f32(v40, v35, vmlaq_f32(v41, v42, v35)))), v38);
        a5 = vmulq_f32(v62, v36);
        v26 = vmulq_f32(v61, v36);
        v27 = vmulq_f32(v60, v36);
      }

      *v19 = a5;
      *v20 = v26;
      *v21 = v27;
      v8 += 4;
    }

    while (v8 < v58);
  }

  return 0;
}

uint64_t sub_240BF63DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = -a4;
  if (a5 + a4 > -a4)
  {
    v6 = *(a1 + 16);
    v7 = *(**a2 + 8 * v6);
    v8 = 64 - 4 * a4;
    v9 = (*(*(*a2 + 48) + 8 * v6) + v8);
    v10 = (*(*(*a2 + 24) + 8 * v6) + v8);
    v11 = (v7 + v8);
    v12.i64[0] = 0x8000000080000000;
    v12.i64[1] = 0x8000000080000000;
    v13 = vdupq_n_s32(0x3F0CCF16u);
    v14 = vdupq_n_s32(0x40295064u);
    v15 = vdupq_n_s32(0x402B570Bu);
    v16 = vdupq_n_s32(0xC207A1AD);
    v17 = vdupq_n_s32(0x3F3D150Au);
    v18 = vdupq_n_s32(0x432E5D5Bu);
    v19 = vdupq_n_s32(0xBBCC536D);
    v20 = vdupq_n_s32(0xC3D65E50);
    v21 = vdupq_n_s32(0x3989DFFFu);
    v22 = vdupq_n_s32(0x43D2ACD0u);
    do
    {
      v23.i64[0] = __PAIR64__(HIDWORD(v11->i64[0]), *v11) & 0x7FFFFFFF7FFFFFFFLL;
      v23.i32[2] = v11->i64[1] & 0x7FFFFFFF;
      v23.i32[3] = HIDWORD(v11->i64[0]) & 0x7FFFFFFF;
      v24 = vmlaq_f32(v23, v23, v23);
      v25 = *(a1 + 44);
      v26.i64[0] = __PAIR64__(HIDWORD(v10->i64[0]), *v10) & 0x7FFFFFFF7FFFFFFFLL;
      v26.i32[2] = v10->i64[1] & 0x7FFFFFFF;
      v26.i32[3] = HIDWORD(v10->i64[0]) & 0x7FFFFFFF;
      v27 = vmlaq_f32(v26, v26, v26);
      v28 = vorrq_s8(vandq_s8(*v10, v12), vabsq_f32(vmulq_n_f32(vdivq_f32(vmlaq_f32(v21, v27, vmlaq_f32(v19, v27, vmlaq_f32(v17, v27, vmlaq_f32(v14, v13, v27)))), vmlaq_f32(v22, v27, vmlaq_f32(v20, v27, vmlaq_f32(v18, v27, vmlaq_f32(v16, v15, v27))))), v25)));
      v29.i64[0] = __PAIR64__(HIDWORD(v9->i64[0]), *v9) & 0x7FFFFFFF7FFFFFFFLL;
      v29.i32[2] = v9->i64[1] & 0x7FFFFFFF;
      v29.i32[3] = HIDWORD(v9->i64[0]) & 0x7FFFFFFF;
      v30 = vmlaq_f32(v29, v29, v29);
      v31 = vorrq_s8(vandq_s8(*v9, v12), vabsq_f32(vmulq_n_f32(vdivq_f32(vmlaq_f32(v21, v30, vmlaq_f32(v19, v30, vmlaq_f32(v17, v30, vmlaq_f32(v14, v13, v30)))), vmlaq_f32(v22, v30, vmlaq_f32(v20, v30, vmlaq_f32(v18, v30, vmlaq_f32(v16, v15, v30))))), v25)));
      *v11 = vorrq_s8(vandq_s8(*v11, v12), vabsq_f32(vmulq_n_f32(vdivq_f32(vmlaq_f32(v21, v24, vmlaq_f32(v19, v24, vmlaq_f32(v17, v24, vmlaq_f32(v14, v13, v24)))), vmlaq_f32(v22, v24, vmlaq_f32(v20, v24, vmlaq_f32(v18, v24, vmlaq_f32(v16, v15, v24))))), v25)));
      ++v11;
      *v10++ = v28;
      *v9++ = v31;
      v5 += 4;
    }

    while (v5 < a5 + a4);
  }

  return 0;
}

uint64_t sub_240BF661C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = -a4;
  if (a5 + a4 > -a4)
  {
    v6 = *(a1 + 16);
    v7 = *(**a2 + 8 * v6);
    v8 = 64 - 4 * a4;
    v9 = (*(*(*a2 + 48) + 8 * v6) + v8);
    v10 = (*(*(*a2 + 24) + 8 * v6) + v8);
    v11 = (v7 + v8);
    v12.i64[0] = 0x8000000080000000;
    v12.i64[1] = 0x8000000080000000;
    v13 = vdupq_n_s32(0x3D9E8391u);
    v14 = vdupq_n_s32(0x3F522E0Fu);
    v15 = vdupq_n_s32(0x3F4BD0EAu);
    v16 = vdupq_n_s32(0x3BD5AFDEu);
    v17 = vdupq_n_s32(0xBD61CABC);
    v18 = vdupq_n_s32(0x3E2661B1u);
    v19 = vdupq_n_s32(0x3EFF5C88u);
    v20 = vdupq_n_s32(0x3C2AFD55u);
    v21 = vdupq_n_s32(0x3F89DA5Eu);
    v22 = vdupq_n_s32(0x3966B677u);
    v23 = vdupq_n_s32(0x3E86C025u);
    v24 = vdupq_n_s32(0x3D25AEE6u);
    do
    {
      v25.i64[0] = __PAIR64__(HIDWORD(v11->i64[0]), *v11) & 0x7FFFFFFF7FFFFFFFLL;
      v25.i32[2] = v11->i64[1] & 0x7FFFFFFF;
      v25.i32[3] = HIDWORD(v11->i64[0]) & 0x7FFFFFFF;
      v26.i64[0] = __PAIR64__(HIDWORD(v10->i64[0]), *v10) & 0x7FFFFFFF7FFFFFFFLL;
      v26.i32[2] = v10->i64[1] & 0x7FFFFFFF;
      v26.i32[3] = HIDWORD(v10->i64[0]) & 0x7FFFFFFF;
      v27 = vorrq_s8(vandq_s8(*v10, v12), vabsq_f32(vbslq_s8(vcgtq_f32(v26, v24), vdivq_f32(vmlaq_f32(v22, v26, vmlaq_f32(v20, v26, vmlaq_f32(v18, v26, vmlaq_f32(v15, v14, v26)))), vmlaq_f32(v23, v26, vmlaq_f32(v21, v26, vmlaq_f32(v19, v26, vmlaq_f32(v17, v16, v26))))), vmulq_f32(v26, v13))));
      v28.i64[0] = __PAIR64__(HIDWORD(v9->i64[0]), *v9) & 0x7FFFFFFF7FFFFFFFLL;
      v28.i32[2] = v9->i64[1] & 0x7FFFFFFF;
      v28.i32[3] = HIDWORD(v9->i64[0]) & 0x7FFFFFFF;
      v29 = vorrq_s8(vandq_s8(*v9, v12), vabsq_f32(vbslq_s8(vcgtq_f32(v28, v24), vdivq_f32(vmlaq_f32(v22, v28, vmlaq_f32(v20, v28, vmlaq_f32(v18, v28, vmlaq_f32(v15, v14, v28)))), vmlaq_f32(v23, v28, vmlaq_f32(v21, v28, vmlaq_f32(v19, v28, vmlaq_f32(v17, v16, v28))))), vmulq_f32(v28, v13))));
      *v11 = vorrq_s8(vandq_s8(*v11, v12), vabsq_f32(vbslq_s8(vcgtq_f32(v25, v24), vdivq_f32(vmlaq_f32(v22, v25, vmlaq_f32(v20, v25, vmlaq_f32(v18, v25, vmlaq_f32(v15, v14, v25)))), vmlaq_f32(v23, v25, vmlaq_f32(v21, v25, vmlaq_f32(v19, v25, vmlaq_f32(v17, v16, v25))))), vmulq_f32(v25, v13))));
      ++v11;
      *v10++ = v27;
      *v9++ = v29;
      v5 += 4;
    }

    while (v5 < a5 + a4);
  }

  return 0;
}

uint64_t sub_240BF689C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2852A1CB8;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 21);
  *(a1 + 32) = 0;
  v6 = a1 + 32;
  *(a1 + 21) = v5;
  *(a1 + 16) = v4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_240B28D90((a1 + 32), *(a2 + 32), *(a2 + 40), *(a2 + 40) - *(a2 + 32));
  v7 = *(a2 + 56);
  v8 = *(a2 + 72);
  v9 = *(a2 + 88);
  *(v6 + 72) = *(a2 + 104);
  *(v6 + 56) = v9;
  *(v6 + 40) = v8;
  *(v6 + 24) = v7;
  *(v6 + 80) = &unk_2852A1260;
  *(v6 + 88) = *(a2 + 120);
  *(v6 + 96) = &unk_2852A1A10;
  *(v6 + 104) = *(a2 + 136);
  *(v6 + 120) = &unk_2852A1260;
  *(v6 + 128) = *(a2 + 160);
  *(v6 + 136) = &unk_2852A1260;
  *(v6 + 144) = *(a2 + 176);
  *(v6 + 152) = &unk_2852A1260;
  *(v6 + 160) = *(a2 + 192);
  v10 = *(a2 + 200);
  v11 = *(a2 + 216);
  *(v6 + 194) = *(a2 + 226);
  *(v6 + 184) = v11;
  *(v6 + 168) = v10;
  *(v6 + 216) = &unk_2852A1CB8;
  *(v6 + 224) = *(a2 + 256);
  v12 = *(a2 + 264);
  *(v6 + 237) = *(a2 + 269);
  *(v6 + 232) = v12;
  *(v6 + 256) = 0;
  *(v6 + 264) = 0;
  *(v6 + 248) = 0;
  sub_240B28D90((v6 + 248), *(a2 + 280), *(a2 + 288), *(a2 + 288) - *(a2 + 280));
  v13 = *(a2 + 304);
  v14 = *(a2 + 320);
  v15 = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 320) = v14;
  *(a1 + 336) = v15;
  *(a1 + 304) = v13;
  *(a1 + 360) = &unk_2852A1260;
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 376) = &unk_2852A1A10;
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = &unk_2852A1260;
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 416) = &unk_2852A1260;
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 432) = &unk_2852A1260;
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 448) = &unk_2852A1CB8;
  *(a1 + 456) = *(a2 + 456);
  v16 = *(a2 + 464);
  *(a1 + 469) = *(a2 + 469);
  *(a1 + 464) = v16;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 480) = 0;
  sub_240B28D90((a1 + 480), *(a2 + 480), *(a2 + 488), *(a2 + 488) - *(a2 + 480));
  v17 = *(a2 + 504);
  v18 = *(a2 + 520);
  v19 = *(a2 + 536);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 520) = v18;
  *(a1 + 536) = v19;
  *(a1 + 504) = v17;
  *(a1 + 560) = &unk_2852A1260;
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = &unk_2852A1A10;
  *(a1 + 584) = *(a2 + 584);
  *(a1 + 600) = &unk_2852A1260;
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 616) = &unk_2852A1260;
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 632) = &unk_2852A1260;
  *(a1 + 640) = *(a2 + 640);
  memcpy((a1 + 648), (a2 + 648), 0x120uLL);
  return a1;
}

void sub_240BF6CA0(_Unwind_Exception *exception_object)
{
  *v5 = v4;
  v7 = *(v3 + 248);
  if (v7)
  {
    v1[36] = v7;
    operator delete(v7);
  }

  *v1 = v2;
  v8 = v1[4];
  if (v8)
  {
    v1[5] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

void *sub_240BF6CDC(void *a1)
{
  a1[56] = &unk_2852A1CB8;
  v2 = a1[60];
  if (v2)
  {
    a1[61] = v2;
    operator delete(v2);
  }

  a1[31] = &unk_2852A1CB8;
  v3 = a1[35];
  if (v3)
  {
    a1[36] = v3;
    operator delete(v3);
  }

  *a1 = &unk_2852A1CB8;
  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_240BF6DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v106 = *MEMORY[0x277D85DE8];
  if (*(a1 + 976) || *(a1 + 984))
  {
    v5 = -a4;
    if (a5 + a4 > -a4)
    {
      v6 = *(a1 + 16);
      v7 = *(**a2 + 8 * v6) + 64;
      v8 = *(*(*a2 + 24) + 8 * v6) + 64;
      v9 = *(*(*a2 + 48) + 8 * v6) + 64;
      __asm { FMOV            V0.4S, #-1.0 }

      v98 = _Q0;
      v99 = vdupq_n_s32(0xC0D55555);
      v96 = vdupq_n_s32(0x3FB6E02Bu);
      v97 = vdupq_n_s32(0x3F3E11C7u);
      v94 = vdupq_n_s32(0x3F813CEDu);
      v95 = vdupq_n_s32(0x3E32458Cu);
      v15 = vdupq_n_s32(0xB5F85AB0);
      v16 = vdupq_n_s32(0x3F7D8625u);
      v17 = vdupq_n_s32(0x4122CC6Bu);
      v18 = vdupq_n_s32(0x424379A1u);
      __asm { FMOV            V4.4S, #1.0 }

      v20 = vdupq_n_s32(0x42C519F0u);
      v21 = vdupq_n_s32(0x3E5749EEu);
      v22 = vdupq_n_s32(0xBCB621BE);
      v23 = vdupq_n_s32(0xC19B8831);
      v24 = vdupq_n_s32(0x42C519F1u);
      v25 = vdupq_n_s32(0x4E6E6B28u);
      v26 = vdupq_n_s32(0x3DCCCCCDu);
      v27.i64[0] = 0x8000000080000000;
      v27.i64[1] = 0x8000000080000000;
      v28 = vdupq_n_s32(0x38D1B717u);
      v29 = vdupq_n_s32(0xC88BE24D);
      v30.i64[0] = 0x4000000040000000;
      v30.i64[1] = 0x4000000040000000;
      v31.i64[0] = 0xC0000000C0000000;
      v31.i64[1] = 0xC0000000C0000000;
      while (1)
      {
        v32 = (v7 + 4 * v5);
        v33 = *v32;
        v34 = (v8 + 4 * v5);
        v35 = *v34;
        v36 = (v9 + 4 * v5);
        v37 = *v36;
        v38 = *(a1 + 976);
        if (*(a1 + 976) != 0)
        {
          break;
        }

LABEL_22:
        *v32 = v33;
        *v34 = v35;
        *v36 = v37;
        v5 += 4;
        if (v5 >= a5 + a4)
        {
          return 0;
        }
      }

      v39 = *(a1 + 992);
      v40 = vmulq_n_f32(v33, v39);
      v41 = vmulq_n_f32(v35, v39);
      v101 = v41;
      v102 = v40;
      v42 = vmulq_n_f32(v37, v39);
      v100 = v42;
      if (v38)
      {
        v43 = 0;
        v44 = (v38 + 28);
        v45 = vld1q_dup_f32(v44);
        v46 = (v38 + 12);
        v47 = vld1q_dup_f32(v46);
        v48 = vmulq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v42, *(v38 + 24)), v41, *(v38 + 20)), v40, *(v38 + 16)), *(v38 + 4));
        v49 = vabsq_f32(v48);
        v50 = vsqrtq_f32(vsqrtq_f32(vmulq_n_f32(v49, *(v38 + 72))));
        v51 = vdivq_f32(vmlaq_f32(vdupq_n_s32(0x37257B02u), v50, vmlaq_f32(vdupq_n_s32(0x3EC6B81Cu), v50, vmlaq_f32(vdupq_n_s32(0x43074838u), v50, vmlaq_f32(vdupq_n_s32(0x4786914Fu), v29, v50)))), vmlaq_f32(vdupq_n_s32(0x4206DFEEu), v50, vmlaq_f32(vdupq_n_s32(0x44B8B702u), v50, vmlaq_f32(vdupq_n_s32(0x467B5314u), v50, vmlaq_f32(vdupq_n_s32(0xC72B7AD7), vdupq_n_s32(0xC84A65A6), v50)))));
        v52 = vdivq_f32(vmlaq_f32(vdupq_n_s32(0x3C5D697Du), v50, vmlaq_f32(vdupq_n_s32(0xBF8C4274), v50, vmlaq_f32(vdupq_n_s32(0x425CE93Au), v50, vmlaq_f32(vdupq_n_s32(0x43154069u), vdupq_n_s32(0x42418990u), v50)))), vmlaq_f32(vdupq_n_s32(0x3F8196D9u), v50, vmlaq_f32(vdupq_n_s32(0x41A1562Eu), v50, vmlaq_f32(vdupq_n_s32(0x42B94632u), v50, vmlaq_f32(vdupq_n_s32(0x42E01F14u), vdupq_n_s32(0x41CF3BC3u), v50)))));
        v53 = vminnmq_f32(vmulq_n_f32(vsubq_f32(vorrq_s8(vandq_s8(v48, v27), vabsq_f32(vbslq_s8(vcgtq_f32(v28, v49), v51, v52))), v45), *(v38 + 40)), _Q4);
        v52.i32[0] = *(v38 + 52);
        v54 = vdupq_lane_s32(*v52.i8, 0);
        v55 = vmulq_n_f32(vsubq_f32(v53, v54), *(v38 + 56));
        v56 = vmulq_f32(v55, v55);
        v57 = vmulq_f32(v55, v56);
        __asm { FMOV            V5.4S, #-3.0 }

        v59 = vmlaq_f32(_Q4, _Q5, v56);
        __asm { FMOV            V5.4S, #3.0 }

        v61 = vbslq_s8(vcgtq_f32(v54, v53), v53, vmlaq_n_f32(vmlaq_f32(vmulq_n_f32(vmlaq_f32(vmulq_f32(v56, _Q5), v31, v57), *(v38 + 48)), vsubq_f32(_Q4, v54), vaddq_f32(v57, vmlaq_f32(v55, v31, v56))), vmlaq_f32(v59, v30, v57), *v52.i32));
        v62 = vsubq_f32(_Q4, v61);
        v63 = vmulq_f32(v62, v62);
        v64 = vmlaq_n_f32(v45, vmlaq_n_f32(v61, vmulq_f32(v63, v63), *(v38 + 44)), *(v38 + 36));
        v65 = vmlaq_f32(vabsq_f32(v64), v64, v64);
        v66 = vminnmq_f32(v47, vmaxnmq_f32(vorrq_s8(vandq_s8(v64, v27), vabsq_f32(vmulq_n_f32(vdivq_f32(vmlaq_f32(vdupq_n_s32(0x3989DFFFu), v65, vmlaq_f32(vdupq_n_s32(0xBBCC536D), v65, vmlaq_f32(vdupq_n_s32(0x3F3D150Au), v65, vmlaq_f32(vdupq_n_s32(0x40295064u), vdupq_n_s32(0x3F0CCF16u), v65)))), vmlaq_f32(vdupq_n_s32(0x43D2ACD0u), v65, vmlaq_f32(vdupq_n_s32(0xC3D65E50), v65, vmlaq_f32(vdupq_n_s32(0x432E5D5Bu), v65, vmlaq_f32(vdupq_n_s32(0xC207A1AD), vdupq_n_s32(0x402B570Bu), v65))))), *(v38 + 76)))), 0));
        v67 = vdupq_n_s32(0x358637BDu);
        v68 = vmulq_n_f32(v66, *(v38 + 64));
        v69 = vmulq_n_f32(vdivq_f32(v66, vmaxnmq_f32(v48, v67)), *(v38 + 60));
        v103 = &v102;
        v104 = &v101;
        v105 = &v100;
        do
        {
          **(&v103 + v43) = vbslq_s8(vcgeq_f32(v67, v48), v68, vmulq_f32(v69, **(&v103 + v43)));
          v43 += 8;
        }

        while (v43 != 24);
        if (*(a1 + 976))
        {
LABEL_15:
          v80 = 0;
          v81 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v100, *(a1 + 900)), v101, *(a1 + 896)), v102, *(a1 + 892));
          v103 = &v102;
          v104 = &v101;
          v105 = &v100;
          v82 = 0uLL;
          v83 = 0uLL;
          do
          {
            v84 = *(&v103 + v80);
            v85 = vsubq_f32(*v84, v81);
            v86 = vbslq_s8(vceqzq_f32(v85), _Q4, vdivq_f32(_Q4, v85));
            v87 = vmulq_f32(*v84, v86);
            v82 = vbslq_s8(vcgezq_f32(v85), v82, vmaxnmq_f32(v82, v87));
            v83 = vmaxnmq_f32(v83, vbslq_s8(vclezq_f32(v85), v82, vsubq_f32(v87, v86)));
            v80 += 8;
          }

          while (v80 != 24);
          v88 = 0;
          v89 = vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v83, v26, vsubq_f32(v82, v83)), 0), _Q4);
          v103 = &v102;
          v104 = &v101;
          v105 = &v100;
          do
          {
            **(&v103 + v88) = vmlaq_f32(**(&v103 + v88), vsubq_f32(v81, **(&v103 + v88)), v89);
            v88 += 8;
          }

          while (v88 != 24);
          v90 = 0;
          v91 = vdivq_f32(_Q4, vmaxnmq_f32(vmaxnmq_f32(v102, _Q4), vmaxnmq_f32(v101, v100)));
          v103 = &v102;
          v104 = &v101;
          v105 = &v100;
          do
          {
            **(&v103 + v90) = vmulq_f32(v91, **(&v103 + v90));
            v90 += 8;
          }

          while (v90 != 24);
LABEL_21:
          v92 = *(a1 + 996);
          v33 = vmulq_n_f32(v102, v92);
          v35 = vmulq_n_f32(v101, v92);
          v37 = vmulq_n_f32(v100, v92);
          goto LABEL_22;
        }

        v70 = *(a1 + 984);
      }

      else
      {
        v70 = *(a1 + 984);
        if (*(v70 + 4) == 1)
        {
          v71 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v42, *(v70 + 16)), v41, *(v70 + 12)), v40, *(v70 + 8));
          v72 = vaddq_s32(v71, v99);
          v73 = vshrq_n_s32(v72, 0x17uLL);
          v74.i64[0] = 0x7F0000007FLL;
          v74.i64[1] = 0x7F0000007FLL;
          v75 = vaddq_f32(vsubq_s32(v71, vandq_s8(v72, v74)), v98);
          v76 = vmulq_n_f32(vaddq_f32(vdivq_f32(vmlaq_f32(v15, v75, vmlaq_f32(v96, v97, v75)), vmlaq_f32(v16, v75, vmlaq_f32(v94, v95, v75))), vcvtq_f32_s32(v73)), *v70);
          v77 = vrndmq_f32(v76);
          v78 = vsubq_f32(v76, v77);
          v79 = vminnmq_f32(vdivq_f32(vmulq_f32(vmlaq_f32(v20, v78, vmlaq_f32(v18, v78, vaddq_f32(v78, v17))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v77), 0x17uLL), _Q4)), vmlaq_f32(v24, v78, vmlaq_f32(v23, v78, vmlaq_f32(v22, v21, v78)))), v25);
          v101 = vmulq_f32(v41, v79);
          v102 = vmulq_f32(v40, v79);
          v100 = vmulq_f32(v42, v79);
        }
      }

      if (*(v70 + 4) != 1 || *v70 >= 0.0)
      {
        goto LABEL_21;
      }

      goto LABEL_15;
    }
  }

  return 0;
}

void sub_240BF7500(void *a1)
{
  *a1 = &unk_2852A1660;
  v2 = a1[123];
  a1[123] = 0;
  if (v2)
  {
    MEMORY[0x245CCE590](v2, 0x1000C402A459A87);
  }

  v3 = a1[122];
  a1[122] = 0;
  if (v3)
  {
    MEMORY[0x245CCE590](v3, 0x1000C40B33851A5);
  }

  a1[61] = &unk_2852A1CB8;
  v4 = a1[65];
  if (v4)
  {
    a1[66] = v4;
    operator delete(v4);
  }

  a1[36] = &unk_2852A1CB8;
  v5 = a1[40];
  if (v5)
  {
    a1[41] = v5;
    operator delete(v5);
  }

  a1[5] = &unk_2852A1CB8;
  v6 = a1[9];
  if (v6)
  {
    a1[10] = v6;
    operator delete(v6);
  }

  JUMPOUT(0x245CCE590);
}

void *sub_240BF7630(void *a1)
{
  *a1 = &unk_2852A1660;
  v2 = a1[123];
  a1[123] = 0;
  if (v2)
  {
    MEMORY[0x245CCE590](v2, 0x1000C402A459A87);
  }

  v3 = a1[122];
  a1[122] = 0;
  if (v3)
  {
    MEMORY[0x245CCE590](v3, 0x1000C40B33851A5);
  }

  a1[61] = &unk_2852A1CB8;
  v4 = a1[65];
  if (v4)
  {
    a1[66] = v4;
    operator delete(v4);
  }

  a1[36] = &unk_2852A1CB8;
  v5 = a1[40];
  if (v5)
  {
    a1[41] = v5;
    operator delete(v5);
  }

  a1[5] = &unk_2852A1CB8;
  v6 = a1[9];
  if (v6)
  {
    a1[10] = v6;
    operator delete(v6);
  }

  return a1;
}

uint64_t sub_240BF7760(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v109 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 24);
  switch(v5)
  {
    case 3:
      v55 = 0;
      v104.i64[0] = &v103;
      v104.i64[1] = &v102;
      v105 = &v101;
      v106 = &v100;
      *&v107 = &v99;
      *(&v107 + 1) = &v98;
      *&v108 = &v97;
      *(&v108 + 1) = &v96;
      do
      {
        if (a5 >= 1)
        {
          v56 = 0;
          v57 = *(*(*a3 + 24 * *(a1 + 40)) + 8 * v55) + 64;
          v58 = v55 & 3;
          if (v55 >= 4)
          {
            v58 = v55 & 3 ^ 3;
          }

          v59 = a1 + 48 + 400 * v58;
          v60 = 56;
          do
          {
            for (i = 0; i != 8; ++i)
            {
              v62 = (*(*a2 + 24 * *(a1 + 40)) + 8 * *(a1 + 16));
              v63 = *(*v62 + 4 * v56 + 64);
              v64 = i & 3 ^ 3;
              if (i < 4)
              {
                v64 = i;
              }

              v65 = -2;
              v66 = 0uLL;
              v67 = v59 + 100 * v64;
              v68 = *(*v62 + 4 * v56 + 64);
              do
              {
                if (v55 < 4)
                {
                  v69 = v65;
                }

                else
                {
                  v69 = -v65;
                }

                v70 = v69 + 2;
                v71 = (v62[v65] + v60);
                v72 = -2;
                v73 = v67 + 20 * v70;
                for (j = 2; j != -3; --j)
                {
                  v75 = *v71;
                  v71 = (v71 + 4);
                  v76 = v75;
                  if (i >= 4)
                  {
                    v77 = j;
                  }

                  else
                  {
                    v77 = v72;
                  }

                  v66 = vmlaq_n_f32(v66, v76, *(v73 + 4 * v77 + 8));
                  v63 = vminnmq_f32(v76, v63);
                  v68 = vmaxnmq_f32(v76, v68);
                  ++v72;
                }

                ++v65;
              }

              while (v65 != 3);
              *v104.i64[i] = vminnmq_f32(vmaxnmq_f32(v63, v66), v68);
            }

            v78 = vzip1q_s32(v103, v99);
            v79 = vzip1q_s32(v102, v98);
            v80 = vzip1q_s32(v101, v97);
            v81 = vzip1q_s32(v100, v96);
            v82 = vzip2q_s32(v103, v99);
            v83 = vzip2q_s32(v102, v98);
            v84 = vzip2q_s32(v101, v97);
            v85 = vzip2q_s32(v100, v96);
            v86 = vzip1q_s32(v78, v80);
            v87 = (v57 + 32 * v56);
            v88 = vzip1q_s32(v79, v81);
            v89 = vzip2q_s32(v78, v80);
            v90 = vzip2q_s32(v79, v81);
            v91 = vzip1q_s32(v82, v84);
            v92 = vzip1q_s32(v83, v85);
            v93 = vzip2q_s32(v82, v84);
            *v87 = vzip1q_s32(v86, v88);
            v87[1] = vzip2q_s32(v86, v88);
            v94 = vzip2q_s32(v83, v85);
            v87[2] = vzip1q_s32(v89, v90);
            v87[3] = vzip2q_s32(v89, v90);
            v87[4] = vzip1q_s32(v91, v92);
            v87[5] = vzip2q_s32(v91, v92);
            v87[6] = vzip1q_s32(v93, v94);
            v87[7] = vzip2q_s32(v93, v94);
            v56 += 4;
            v60 += 16;
          }

          while (v56 < a5);
        }

        ++v55;
      }

      while (v55 != 8);
      break;
    case 2:
      v31 = 0;
      v107 = 0u;
      v108 = 0u;
      v104.i64[0] = &v103;
      v104.i64[1] = &v102;
      v105 = &v101;
      v106 = &v100;
      do
      {
        if (a5 >= 1)
        {
          v32 = 0;
          v33 = *(*(*a3 + 24 * *(a1 + 40)) + 8 * v31) + 64;
          v34 = 56;
          do
          {
            for (k = 0; k != 4; ++k)
            {
              v36 = (*(*a2 + 24 * *(a1 + 40)) + 8 * *(a1 + 16));
              v37 = *(*v36 + 4 * v32 + 64);
              v38 = -2;
              v39 = 0uLL;
              v40 = v37;
              do
              {
                if (v31 <= 1)
                {
                  v41 = v38;
                }

                else
                {
                  v41 = -v38;
                }

                v42 = v41 + 2;
                v43 = (v36[v38] + v34);
                v44 = -2;
                v45 = a1 + 48 + 400 * (v31 & 1 ^ (v31 > 1)) + 100 * (k & 1 ^ (k > 1)) + 20 * v42;
                for (m = 2; m != -3; --m)
                {
                  v47 = *v43;
                  v43 = (v43 + 4);
                  v48 = v47;
                  if (k <= 1)
                  {
                    v49 = v44;
                  }

                  else
                  {
                    v49 = m;
                  }

                  v39 = vmlaq_n_f32(v39, v48, *(v45 + 4 * v49 + 8));
                  v37 = vminnmq_f32(v48, v37);
                  v40 = vmaxnmq_f32(v48, v40);
                  ++v44;
                }

                ++v38;
              }

              while (v38 != 3);
              *v104.i64[k] = vminnmq_f32(vmaxnmq_f32(v37, v39), v40);
            }

            v50 = (v33 + 16 * v32);
            v51 = vzip1q_s32(v103, v101);
            v52 = vzip1q_s32(v102, v100);
            v53 = vzip2q_s32(v103, v101);
            v54 = vzip2q_s32(v102, v100);
            *v50 = vzip1q_s32(v51, v52);
            v50[1] = vzip2q_s32(v51, v52);
            v50[2] = vzip1q_s32(v53, v54);
            v50[3] = vzip2q_s32(v53, v54);
            v32 += 4;
            v34 += 16;
          }

          while (v32 < a5);
        }

        ++v31;
      }

      while (v31 != 4);
      break;
    case 1:
      v6 = 0;
      v102.i64[0] = &v104;
      v101.i64[0] = &v103;
      v7 = 1;
      do
      {
        v8 = v7;
        if (a5 >= 1)
        {
          v9 = 0;
          v10 = *(*(*a3 + 24 * *(a1 + 40)) + 8 * v6) + 64;
          v11 = 56;
          do
          {
            v12 = &v102;
            v13 = 1;
            do
            {
              v14 = v13;
              v15 = (*(*a2 + 24 * *(a1 + 40)) + 8 * *(a1 + 16));
              v16 = *(*v15 + 4 * v9 + 64);
              v17 = -2;
              v18 = 0uLL;
              v19 = v16;
              do
              {
                if (v8)
                {
                  v20 = v17;
                }

                else
                {
                  v20 = -v17;
                }

                v21 = v20 + 2;
                v22 = (v15[v17] + v11);
                v23 = -2;
                v24 = a1 + 48 + 20 * v21;
                for (n = 2; n != -3; --n)
                {
                  v26 = *v22;
                  v22 = (v22 + 4);
                  v27 = v26;
                  if (v14)
                  {
                    v28 = v23;
                  }

                  else
                  {
                    v28 = n;
                  }

                  v18 = vmlaq_n_f32(v18, v27, *(v24 + 4 * v28 + 8));
                  v16 = vminnmq_f32(v27, v16);
                  v19 = vmaxnmq_f32(v27, v19);
                  ++v23;
                }

                ++v17;
              }

              while (v17 != 3);
              v13 = 0;
              *v12->i64[0] = vminnmq_f32(vmaxnmq_f32(v16, v18), v19);
              v12 = &v101;
            }

            while ((v14 & 1) != 0);
            v29 = (v10 + 8 * v9);
            v30 = vzip2q_s32(v104, v103);
            *v29 = vzip1q_s32(v104, v103);
            v29[1] = v30;
            v9 += 4;
            v11 += 16;
          }

          while (v9 < a5);
        }

        v7 = 0;
        v6 = 1;
      }

      while ((v8 & 1) != 0);
      break;
  }

  return 0;
}

void sub_240BF7DF4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        sub_240B22320(--v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_240BF7E84(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64))
  {
    v4 = (*(a1 + 56))(*(a1 + 80), a2, 1024);
    *(a1 + 88) = v4;
    if (!v4)
    {
      return 1;
    }
  }

  else if (!*(a1 + 96))
  {
    return 1;
  }

  v5 = *(a1 + 184);
  v6 = *(a1 + 192);
  while (v5 != v6)
  {
    if (*(v5 + 8))
    {
      v7 = (*v5)(*(v5 + 24), a2, 1024);
      *(v5 + 32) = v7;
      if (!v7)
      {
        return 1;
      }
    }

    else if (!*(v5 + 40))
    {
      return 1;
    }

    v5 += 96;
  }

  sub_240BF8040((a1 + 256), a2);
  v9 = *(a1 + 256);
  for (i = *(a1 + 264); v9 != i; ++v9)
  {
    v11 = sub_240C0C5EC(*(a1 + 120) << 12, (atomic_fetch_add_explicit(dword_27E519008, 1u, memory_order_relaxed) & 0xF) << 7);
    v12 = *v9;
    *v9 = v11;
    if (v12)
    {
      atomic_fetch_add(&qword_27E519020, -*(v12 - 24));
      free(*(v12 - 32));
    }
  }

  if ((*(a1 + 161) & 1) != 0 && *(a1 + 160) == 1 && (*(a1 + 162) & 1) != 0 || *(a1 + 176) == 1)
  {
    sub_240BF8040((a1 + 232), *(a1 + 120) * a2);
    v14 = *(a1 + 232);
    for (j = *(a1 + 240); v14 != j; ++v14)
    {
      v15 = sub_240C0C5EC(4096, (atomic_fetch_add_explicit(dword_27E519008, 1u, memory_order_relaxed) & 0xF) << 7);
      v16 = *v14;
      *v14 = v15;
      if (v16)
      {
        atomic_fetch_add(&qword_27E519020, -*(v16 - 24));
        free(*(v16 - 32));
      }
    }
  }

  return 0;
}

void sub_240BF8040(char **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = (v3 + 8 * a2);
      while (v4 != v11)
      {
        sub_240B22320(--v4);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = &v7[-v3];
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (!(v10 >> 61))
        {
          operator new();
        }

        sub_240B2291C();
      }

      sub_240B228BC();
    }

    bzero(a1[1], 8 * v6);
    a1[1] = &v4[v6];
  }
}

uint64_t sub_240BF8190(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 152) > a2 || *(a1 + 161) == 1 && *(a1 + 168) == a2)
  {
    return 3;
  }

  for (i = *(a1 + 184); i != *(a1 + 192); i += 96)
  {
    if (*(i + 88) == a2)
    {
      return 3;
    }
  }

  return 0;
}

uint64_t sub_240BF81E4(uint64_t a1, void **a2, int a3, int a4, unint64_t a5, unint64_t a6, unint64_t a7, size_t __n)
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 48);
  if (v8 > a7)
  {
    v11 = *(a1 + 40);
    v12 = v11 > a6;
    v13 = v11 - a6;
    if (v12)
    {
      v14 = v8 + ~a7;
      if (*(a1 + 177))
      {
        v15 = v14;
      }

      else
      {
        v15 = a7;
      }

      if (v13 >= a5)
      {
        v13 = a5;
      }

      if (v13)
      {
        v17 = 0;
        __asm { FMOV            V0.4S, #1.0 }

        v42 = _Q0;
        v43 = vdupq_n_s32(0x32800000u);
        v44 = a2;
        v45 = v13;
        do
        {
          if (v13 - v17 >= 0x400)
          {
            v23 = 1024;
          }

          else
          {
            v23 = v13 - v17;
          }

          v24.i64[0] = 0;
          memset(__dst, 0, sizeof(__dst));
          v25 = *(a1 + 152);
          if (v25)
          {
            v26 = *a2;
            v27 = *(a1 + 16);
            v28 = __dst;
            v29 = *(a1 + 152);
            do
            {
              v30 = *v26;
              v26 += 3;
              *v28++ = *(v30 + 8 * v27) + 4 * v17 + 64;
              --v29;
            }

            while (v29);
          }

          if (*(a1 + 161))
          {
            *(__dst + v25) = *((*a2)[3 * *(a1 + 168)] + 8 * *(a1 + 16)) + 4 * v17 + 64;
            if (*(a1 + 160) == 1 && *(a1 + 162) == 1)
            {
              v24.i64[0] = 0;
              memset(__src, 0, sizeof(__src));
              v31 = *(a1 + 120);
              if (v31)
              {
                for (i = 0; i < v31; ++i)
                {
                  v33 = *(*(a1 + 232) + 8 * v31 * __n + 8 * i);
                  *(__src + i) = v33;
                  memcpy(v33, *(__dst + i), 4 * v23);
                  v31 = *(a1 + 120);
                }
              }

              v34 = 0;
              v35 = *(a1 + 152);
              do
              {
                if (v35)
                {
                  v36 = 0;
                  v24 = vdivq_f32(v42, vmaxnmq_f32(*(*(__src + v35) + 4 * v34), v43));
                  do
                  {
                    *(*(__src + v36) + 4 * v34) = vmulq_f32(v24, *(*(__src + v36) + 4 * v34));
                    ++v36;
                    v35 = *(a1 + 152);
                  }

                  while (v36 < v35);
                }

                v34 += 4;
              }

              while (v34 < v23);
              v37 = *(a1 + 120);
              if (v37)
              {
                memcpy(__dst, __src, 8 * v37);
              }
            }
          }

          else
          {
            *(__dst + v25) = *(a1 + 208);
          }

          sub_240BF84B0(a1, a1 + 56, __n, v15, v17 + a6, v23, __dst, *v24.i64);
          v39 = *(a1 + 184);
          for (j = *(a1 + 192); v39 != j; v39 += 96)
          {
            *&__dst[0] = *((*v44)[3 * *(v39 + 88)] + 8 * *(a1 + 16)) + 4 * v17 + 64;
            sub_240BF84B0(a1, v39, __n, v15, v17 + a6, v23, __dst, v38);
          }

          v17 += 1024;
          v13 = v45;
          a2 = v44;
        }

        while (v17 < v45);
      }
    }
  }

  return 0;
}

_BYTE *sub_240BF84B0(_BYTE *result, uint64_t a2, size_t __n, uint64_t a4, unint64_t a5, unint64_t a6, const void **__dst, double a8)
{
  v14 = result;
  v120 = *MEMORY[0x277D85DE8];
  if (result[176] == 1)
  {
    HIDWORD(a8) = 0;
    v118 = 0u;
    v119 = 0u;
    v15 = *(a2 + 64);
    if (v15)
    {
      for (i = 0; i < v15; ++i)
      {
        result = *(*(v14 + 29) + 8 * *(v14 + 15) * __n + 8 * i);
        v118.i64[i] = result;
        v17 = __dst[i];
        if (result != v17)
        {
          result = memcpy(result, v17, 4 * a6);
          v15 = *(a2 + 64);
        }
      }
    }

    if (a6 >= 2)
    {
      v18 = 0;
      do
      {
        if (v15)
        {
          v19 = &v118;
          v20 = v15;
          do
          {
            v21 = v19->i64[0];
            v19 = (v19 + 8);
            v22 = v21 + 4 * ~v18;
            v23 = *(v21 + 4 * v18);
            *(v21 + 4 * v18) = *(v22 + 4 * a6);
            *(v22 + 4 * a6) = v23;
            --v20;
          }

          while (v20);
        }

        ++v18;
      }

      while (v18 != a6 >> 1);
    }

    if (v15)
    {
      result = memcpy(__dst, &v118, 8 * v15);
    }

    a5 = *(v14 + 5) - (a5 + a6);
  }

  v24 = *(a2 + 76);
  if (v24 > 2)
  {
    if (v24 != 3 && v24 != 5)
    {
      return result;
    }

    v25 = *(*(v14 + 32) + 8 * __n);
    if (v24 == 3)
    {
      *&a8 = ~(-1 << *(a2 + 80));
      v38 = *(a2 + 64);
      v39 = vdupq_lane_s32(*&a8, 0);
      if (v38 > 2)
      {
        if (v38 == 3)
        {
          if (a6)
          {
            v95 = 0;
            v96 = 0;
            v97 = *(*(v14 + 32) + 8 * __n);
            do
            {
              v125.val[0] = vqmovun_s32(vcvtnq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmulq_n_f32(*(*__dst + v95), *&a8), 0), v39)));
              v125.val[1] = vqmovun_s32(vcvtnq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmulq_n_f32(*(__dst[1] + v95), *&a8), 0), v39)));
              v125.val[2] = vqmovun_s32(vcvtnq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmulq_n_f32(*(__dst[2] + v95), *&a8), 0), v39)));
              vst3_s16(v97, v125);
              v97 += 12;
              v96 += 4;
              v95 += 16;
            }

            while (v96 < a6);
          }
        }

        else if (v38 == 4 && a6)
        {
          v59 = 0;
          v60 = 0;
          v61 = *(*(v14 + 32) + 8 * __n);
          do
          {
            v129.val[0] = vqmovun_s32(vcvtnq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmulq_n_f32(*(*__dst + v59), *&a8), 0), v39)));
            v129.val[1] = vqmovun_s32(vcvtnq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmulq_n_f32(*(__dst[1] + v59), *&a8), 0), v39)));
            v129.val[2] = vqmovun_s32(vcvtnq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmulq_n_f32(*(__dst[2] + v59), *&a8), 0), v39)));
            v129.val[3] = vqmovun_s32(vcvtnq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmulq_n_f32(*(__dst[3] + v59), *&a8), 0), v39)));
            vst4_s16(v61, v129);
            v61 += 16;
            v60 += 4;
            v59 += 16;
          }

          while (v60 < a6);
        }
      }

      else if (v38 == 1)
      {
        if (a6)
        {
          v89 = 0;
          v90 = 0;
          v91 = *(*(v14 + 32) + 8 * __n);
          do
          {
            *v91++ = vqmovun_s32(vcvtnq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmulq_n_f32(*(*__dst + v89), *&a8), 0), v39)));
            v90 += 4;
            v89 += 16;
          }

          while (v90 < a6);
        }
      }

      else if (v38 == 2 && a6)
      {
        v40 = 0;
        v41 = 0;
        do
        {
          v123.val[0] = vqmovun_s32(vcvtnq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmulq_n_f32(*(*__dst + v40 * 16), *&a8), 0), v39)));
          v123.val[1] = vqmovun_s32(vcvtnq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmulq_n_f32(*(__dst[1] + v40 * 16), *&a8), 0), v39)));
          i16 = v25[v40].i16;
          vst2_s16(i16, v123);
          v41 += 4;
          ++v40;
        }

        while (v41 < a6);
      }
    }

    else
    {
      v47 = *(a2 + 64);
      if (v47 > 2)
      {
        if (v47 == 3)
        {
          if (a6)
          {
            v98 = 0;
            v99 = 0;
            v100 = *(*(v14 + 32) + 8 * __n);
            do
            {
              v126.val[0] = vcvt_f16_f32(*(*__dst + v98));
              v126.val[1] = vcvt_f16_f32(*(__dst[1] + v98));
              v126.val[2] = vcvt_f16_f32(*(__dst[2] + v98));
              vst3_s16(v100, v126);
              v100 += 12;
              v99 += 4;
              v98 += 16;
            }

            while (v99 < a6);
          }
        }

        else if (v47 == 4 && a6)
        {
          v62 = 0;
          v63 = 0;
          v64 = *(*(v14 + 32) + 8 * __n);
          do
          {
            v130.val[0] = vcvt_f16_f32(*(*__dst + v62));
            v130.val[1] = vcvt_f16_f32(*(__dst[1] + v62));
            v130.val[2] = vcvt_f16_f32(*(__dst[2] + v62));
            v130.val[3] = vcvt_f16_f32(*(__dst[3] + v62));
            vst4_s16(v64, v130);
            v64 += 16;
            v63 += 4;
            v62 += 16;
          }

          while (v63 < a6);
        }
      }

      else if (v47 == 1)
      {
        if (a6)
        {
          v92 = 0;
          v93 = 0;
          v94 = *(*(v14 + 32) + 8 * __n);
          do
          {
            *v94++ = vcvt_f16_f32(*(*__dst + v92));
            v93 += 4;
            v92 += 16;
          }

          while (v93 < a6);
        }
      }

      else if (v47 == 2 && a6)
      {
        v48 = 0;
        v49 = 0;
        do
        {
          v122.val[0] = vcvt_f16_f32(*(*__dst + v48 * 16));
          v122.val[1] = vcvt_f16_f32(*(__dst[1] + v48 * 16));
          v50 = v25[v48].i16;
          vst2_s16(v50, v122);
          v49 += 4;
          ++v48;
        }

        while (v49 < a6);
      }
    }

    if (*(a2 + 72) == 1)
    {
      v101 = *(a2 + 64) * a6;
      if (v101)
      {
        v102 = 0;
        v103 = v25;
        do
        {
          *v103 = vsraq_n_u16(vshlq_n_s16(*v103, 8uLL), *v103, 8uLL);
          ++v103;
          v102 += 8;
        }

        while (v102 < v101);
      }
    }

    result = *(a2 + 32);
    if (v14[178] != 1)
    {
      if (!result)
      {
        v74 = *(a2 + 56);
        v75 = *(a2 + 40);
        v76 = 2 * *(a2 + 64);
        goto LABEL_140;
      }

LABEL_132:
      v105 = *(a2 + 8);

      return v105();
    }

    if (result)
    {
      if (a6)
      {
        v104 = 0;
        do
        {
          result = (*(a2 + 8))(*(a2 + 32), __n, a4, a5, 1, v25->i64 + 2 * v104);
          v104 += *(a2 + 64);
          ++a5;
          --a6;
        }

        while (a6);
      }
    }

    else if (a6)
    {
      v106 = 0;
      v107 = 0;
      v108 = 2 * *(a2 + 64);
      v109 = *(a2 + 56) * a5 + v108 * a4;
      do
      {
        result = memcpy((*(a2 + 40) + v109 + *(a2 + 56) * v106++), v25 + 2 * v107, v108);
        v107 += *(a2 + 64);
      }

      while (a6 != v106);
    }
  }

  else
  {
    if (v24)
    {
      if (v24 != 2)
      {
        return result;
      }

      v25 = *(*(v14 + 32) + 8 * __n);
      *&a8 = ~(-1 << *(a2 + 80));
      v26 = *(a2 + 64);
      v27 = vdupq_lane_s32(*&a8, 0);
      if (v26 > 2)
      {
        if (v26 == 3)
        {
          if (a6)
          {
            v80 = 0;
            v81 = 0;
            v82 = *(*(v14 + 32) + 8 * __n);
            do
            {
              v83 = *(&unk_240C85E40 + 4 * ((a5 + v81) & 7 | (16 * (a4 & 7))));
              v84 = vcvtnq_s32_f32(vminnmq_f32(vmaxnmq_f32(vaddq_f32(vmulq_n_f32(*(*__dst + v80), *&a8), v83), 0), v27));
              v85 = vqmovun_high_s32(vqmovun_s32(v84), v84);
              v86 = vcvtnq_s32_f32(vminnmq_f32(vmaxnmq_f32(vaddq_f32(v83, vmulq_n_f32(*(__dst[1] + v80), *&a8)), 0), v27));
              v127.val[0] = vqmovn_u16(v85);
              v127.val[1] = vqmovn_u16(vqmovun_high_s32(vqmovun_s32(v86), v86));
              v87 = vcvtnq_s32_f32(vminnmq_f32(vmaxnmq_f32(vaddq_f32(v83, vmulq_n_f32(*(__dst[2] + v80), *&a8)), 0), v27));
              v127.val[2] = vqmovn_u16(vqmovun_high_s32(vqmovun_s32(v87), v87));
              vst3_s8(v118.i8, v127);
              *v82 = v118.i64[0];
              *(v82 + 8) = v118.i32[2];
              v81 += 4;
              v82 += 12;
              v80 += 16;
            }

            while (v81 < a6);
          }
        }

        else if (v26 == 4 && a6)
        {
          v51 = 0;
          v52 = 0;
          do
          {
            v53 = *(&unk_240C85E40 + 4 * ((a5 + v52) & 7 | (16 * (a4 & 7))));
            v54 = vcvtnq_s32_f32(vminnmq_f32(vmaxnmq_f32(vaddq_f32(vmulq_n_f32(*(*__dst + v51), *&a8), v53), 0), v27));
            v55 = vqmovun_high_s32(vqmovun_s32(v54), v54);
            v56 = vcvtnq_s32_f32(vminnmq_f32(vmaxnmq_f32(vaddq_f32(v53, vmulq_n_f32(*(__dst[1] + v51), *&a8)), 0), v27));
            v131.val[0] = vqmovn_u16(v55);
            v131.val[1] = vqmovn_u16(vqmovun_high_s32(vqmovun_s32(v56), v56));
            v57 = vcvtnq_s32_f32(vminnmq_f32(vmaxnmq_f32(vaddq_f32(v53, vmulq_n_f32(*(__dst[2] + v51), *&a8)), 0), v27));
            v131.val[2] = vqmovn_u16(vqmovun_high_s32(vqmovun_s32(v57), v57));
            v58 = vcvtnq_s32_f32(vminnmq_f32(vmaxnmq_f32(vaddq_f32(v53, vmulq_n_f32(*(__dst[3] + v51), *&a8)), 0), v27));
            v131.val[3] = vqmovn_u16(vqmovun_high_s32(vqmovun_s32(v58), v58));
            vst4_s8(v118.i8, v131);
            v25[v51 / 0x10] = v118;
            v52 += 4;
            v51 += 16;
          }

          while (v52 < a6);
        }
      }

      else if (v26 == 1)
      {
        if (a6)
        {
          v77 = 0;
          v78 = 0;
          do
          {
            v79 = vcvtnq_s32_f32(vminnmq_f32(vmaxnmq_f32(vaddq_f32(vmulq_n_f32(*(*__dst + v77), *&a8), *(&unk_240C85E40 + 4 * ((a5 + v78) & 7 | (16 * (a4 & 7))))), 0), v27));
            *v79.i8 = vqmovun_s32(v79);
            v25->i32[v78 / 4] = vqmovn_u16(v79).u32[0];
            v78 += 4;
            v77 += 16;
          }

          while (v78 < a6);
        }
      }

      else if (v26 == 2 && a6)
      {
        v28 = 0;
        v29 = 0;
        v30 = *(*(v14 + 32) + 8 * __n);
        do
        {
          v31 = *(&unk_240C85E40 + 4 * ((a5 + v29) & 7 | (16 * (a4 & 7))));
          v32 = vcvtnq_s32_f32(vminnmq_f32(vmaxnmq_f32(vaddq_f32(vmulq_n_f32(*(*__dst + v28), *&a8), v31), 0), v27));
          v33 = vqmovun_high_s32(vqmovun_s32(v32), v32);
          v34 = vminnmq_f32(vmaxnmq_f32(vaddq_f32(v31, vmulq_n_f32(*(__dst[1] + v28), *&a8)), 0), v27);
          *v31.f32 = vqmovn_u16(v33);
          v35 = vcvtnq_s32_f32(v34);
          v36 = vqmovn_u16(vqmovun_high_s32(vqmovun_s32(v35), v35));
          vst2_s8(v118.i8, v31);
          *v30++ = v118.i64[0];
          v29 += 4;
          v28 += 16;
        }

        while (v29 < a6);
      }

      result = *(a2 + 32);
      if (v14[178] == 1)
      {
        if (result)
        {
          if (a6)
          {
            v88 = 0;
            do
            {
              result = (*(a2 + 8))(*(a2 + 32), __n, a4, a5, 1, &v25->i8[v88]);
              v88 += *(a2 + 64);
              ++a5;
              --a6;
            }

            while (a6);
          }
        }

        else if (a6)
        {
          v110 = 0;
          v111 = 0;
          v112 = *(a2 + 64);
          v113 = *(a2 + 56) * a5 + v112 * a4;
          do
          {
            result = memcpy((*(a2 + 40) + v113 + *(a2 + 56) * v110++), &v25->i8[v111], v112);
            v111 += *(a2 + 64);
          }

          while (a6 != v110);
        }

        return result;
      }

      if (!result)
      {
        v74 = *(a2 + 56);
        v76 = *(a2 + 64);
        v75 = *(a2 + 40);
        goto LABEL_140;
      }

      goto LABEL_132;
    }

    v25 = *(*(v14 + 32) + 8 * __n);
    v43 = *(a2 + 64);
    switch(v43)
    {
      case 1:
        memcpy(*(*(v14 + 32) + 8 * __n), *__dst, 4 * a6);
        break;
      case 2:
        if (a6)
        {
          v65 = 0;
          v66 = 0;
          v67 = *(*(v14 + 32) + 8 * __n);
          do
          {
            v124.val[0] = *(*__dst + v65);
            v124.val[1] = *(__dst[1] + v65);
            vst2q_f32(v67, v124);
            v67 += 8;
            v66 += 4;
            v65 += 16;
          }

          while (v66 < a6);
        }

        break;
      case 3:
        if (a6)
        {
          v44 = 0;
          v45 = 0;
          v46 = *(*(v14 + 32) + 8 * __n);
          do
          {
            v128.val[0] = *(*__dst + v44);
            v128.val[1] = *(__dst[1] + v44);
            v128.val[2] = *(__dst[2] + v44);
            vst3q_f32(v46, v128);
            v46 += 12;
            v45 += 4;
            v44 += 16;
          }

          while (v45 < a6);
        }

        break;
      default:
        if (a6)
        {
          v68 = 0;
          v69 = 0;
          v70 = *(*(v14 + 32) + 8 * __n);
          do
          {
            v132.val[0] = *(*__dst + v68);
            v132.val[1] = *(__dst[1] + v68);
            v132.val[2] = *(__dst[2] + v68);
            v132.val[3] = *(__dst[3] + v68);
            vst4q_f32(v70, v132);
            v70 += 16;
            v69 += 4;
            v68 += 16;
          }

          while (v69 < a6);
        }

        break;
    }

    if (*(a2 + 72) == 1)
    {
      v71 = *(a2 + 64) * a6;
      if (v71)
      {
        v72 = v25;
        do
        {
          *v72 = bswap32(*v72);
          ++v72;
          --v71;
        }

        while (v71);
      }
    }

    result = *(a2 + 32);
    if (v14[178] != 1)
    {
      if (!result)
      {
        v74 = *(a2 + 56);
        v75 = *(a2 + 40);
        v76 = 4 * *(a2 + 64);
LABEL_140:

        return memcpy((v75 + v74 * a4 + v76 * a5), v25, v76 * a6);
      }

      goto LABEL_132;
    }

    if (result)
    {
      if (a6)
      {
        v73 = 0;
        do
        {
          result = (*(a2 + 8))(*(a2 + 32), __n, a4, a5, 1, v25->i64 + 4 * v73);
          v73 += *(a2 + 64);
          ++a5;
          --a6;
        }

        while (a6);
      }
    }

    else if (a6)
    {
      v114 = 0;
      v115 = 0;
      v116 = 4 * *(a2 + 64);
      v117 = *(a2 + 56) * a5 + v116 * a4;
      do
      {
        result = memcpy((*(a2 + 40) + v117 + *(a2 + 56) * v114++), v25 + 4 * v115, v116);
        v115 += *(a2 + 64);
      }

      while (a6 != v114);
    }
  }

  return result;
}

void sub_240BF90E4(uint64_t a1)
{
  sub_240BF911C(a1);

  JUMPOUT(0x245CCE590);
}

uint64_t sub_240BF911C(uint64_t a1)
{
  *a1 = &unk_2852A09C8;
  if (*(a1 + 88))
  {
    (*(a1 + 72))();
  }

  v2 = *(a1 + 184);
  v3 = *(a1 + 192);
  while (v2 != v3)
  {
    if (*(v2 + 32))
    {
      (*(v2 + 16))();
    }

    v2 += 96;
  }

  v7 = (a1 + 256);
  sub_240BF7DF4(&v7);
  v7 = (a1 + 232);
  sub_240BF7DF4(&v7);
  v4 = *(a1 + 208);
  if (v4)
  {
    *(a1 + 216) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 184);
  if (v5)
  {
    *(a1 + 192) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_240BF9398(uint64_t a1, void *a2)
{
  sub_240B2A11C(v42, **a2, *(*a2 + 8));
  v4 = v44;
  if (!v44)
  {
    sub_240B2A358(v41, v42);
    sub_240B598DC(*(a1 + 40), v41, a1 + 48);
    v5 = *(a1 + 40);
    v7 = *(v5 + 416);
    v6 = *(v5 + 424);
    if (v6 != v7)
    {
      do
      {
        v8 = v6 - 40;
        sub_240B22320((v6 - 16));
        v6 = v8;
      }

      while (v8 != v7);
    }

    *(v5 + 424) = v7;
    v9 = *a2;
    if (a2[1] - *a2 < 0x31uLL)
    {
LABEL_22:
      v4 = 0;
    }

    else
    {
      v10 = 0;
      v11 = 3;
      while (1)
      {
        sub_240B23590(&v36, *(v9 + v10 + 48), *(v9 + v10 + 56));
        v4 = v40;
        if (v40)
        {
          break;
        }

        v12 = v38;
        v13 = v39;
        v38 = 0;
        v14 = *(a1 + 40);
        v15 = v14 + 53;
        v17 = v14[53];
        v16 = v14[54];
        if (v17 >= v16)
        {
          v19 = v14[52];
          v20 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - v19) >> 3);
          v21 = v20 + 1;
          if (v20 + 1 > 0x666666666666666)
          {
            sub_240B228BC();
          }

          v22 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - v19) >> 3);
          if (2 * v22 > v21)
          {
            v21 = 2 * v22;
          }

          if (v22 >= 0x333333333333333)
          {
            v23 = 0x666666666666666;
          }

          else
          {
            v23 = v21;
          }

          v48 = v14 + 52;
          if (v23)
          {
            sub_240B59980(v23);
          }

          v24 = 40 * v20;
          v45 = 0;
          v46 = v24;
          *(&v47 + 1) = 0;
          *v24 = v36;
          *(v24 + 16) = v37;
          *(v24 + 24) = v12;
          *(v24 + 32) = v13;
          *&v47 = 40 * v20 + 40;
          v25 = v14[52];
          v26 = v14[53];
          v27 = 40 * v20 + v25 - v26;
          sub_240B59A2C(v25, v26, v27);
          v28 = v14[52];
          v14[52] = v27;
          v29 = v14[54];
          v35 = v47;
          *v15 = v47;
          *&v47 = v28;
          *(&v47 + 1) = v29;
          v45 = v28;
          v46 = v28;
          sub_240B599D8(&v45);
          v18 = v35;
        }

        else
        {
          *v17 = v36;
          *(v17 + 16) = v37;
          *(v17 + 24) = v12;
          *(v17 + 32) = v13;
          v18 = v17 + 40;
        }

        *v15 = v18;
        if (!v40)
        {
          v30 = v38;
          v38 = 0;
          if (v30)
          {
            atomic_fetch_add(&qword_27E519020, -*(v30 - 24));
            free(*(v30 - 32));
          }
        }

        ++v11;
        v9 = *a2;
        v10 += 16;
        if (v11 >= (a2[1] - *a2) >> 4)
        {
          goto LABEL_22;
        }
      }
    }

    for (i = 104; i != -16; i -= 40)
    {
      sub_240B22320(&v41[i]);
    }

    if (!v44)
    {
      v32 = &v43;
      v33 = -120;
      do
      {
        sub_240B22320(v32);
        v32 -= 5;
        v33 += 40;
      }

      while (v33);
    }
  }

  return v4;
}

void sub_240BF962C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48)
{
  for (i = 104; i != -16; i -= 40)
  {
    sub_240B22320((&a18 + i));
  }

  if (!a48)
  {
    v50 = &a46;
    v51 = -120;
    do
    {
      sub_240B22320(v50);
      v50 -= 5;
      v51 += 40;
    }

    while (v51);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240BF96E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = 0;
  v12 = -a4;
  v13 = 4 * a5 + 8 * a4;
  for (i = 120; i != 240; i += 40)
  {
    memcpy((*(*(a1 + 40) + i) + *(*(a1 + 40) + 112) * a7 + 4 * a6 + 4 * v12), (*(*(*a2 + v11) + 8 * *(a1 + 16)) + 4 * v12 + 64), v13);
    v11 += 24;
  }

  v15 = *(*(a1 + 40) + 416);
  if (*(*(a1 + 40) + 424) != v15)
  {
    v16 = 0;
    v17 = 0;
    v18 = 72;
    do
    {
      memcpy((*(v15 + v16 + 24) + *(v15 + v16 + 16) * a7 + 4 * a6 + 4 * v12), (*(*(*a2 + v18) + 8 * *(a1 + 16)) + 4 * v12 + 64), v13);
      ++v17;
      v15 = *(*(a1 + 40) + 416);
      v18 += 24;
      v16 += 40;
    }

    while (v17 < 0xCCCCCCCCCCCCCCCDLL * ((*(*(a1 + 40) + 424) - v15) >> 3));
  }

  return 0;
}

void sub_240BF9810(void *a1)
{
  *a1 = &unk_2852A1CE0;
  a1[6] = &unk_2852A1CB8;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x245CCE590);
}

void *sub_240BF98A0(void *a1)
{
  *a1 = &unk_2852A1CE0;
  a1[6] = &unk_2852A1CB8;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_240BF991C(uint64_t a1, uint64_t a2)
{
  sub_240B2A11C(v8, **a2, *(*a2 + 8));
  result = v10;
  if (!v10)
  {
    sub_240B2A358(v7, v8);
    sub_240B30D80(*(a1 + 40), v7);
    for (i = 104; i != -16; i -= 40)
    {
      sub_240B22320(&v7[i]);
    }

    if (!v10)
    {
      v5 = &v9;
      v6 = -120;
      do
      {
        sub_240B22320(v5);
        v5 -= 5;
        v6 += 40;
      }

      while (v6);
    }

    return 0;
  }

  return result;
}

uint64_t sub_240BF99C4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_240BF99D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = 0;
  v12 = -a4;
  v13 = 4 * a5 + 8 * a4;
  for (i = 24; i != 144; i += 40)
  {
    memcpy((*(*(a1 + 40) + i) + *(*(a1 + 40) + 16) * a7 + 4 * a6 + 4 * v12), (*(*(*a2 + v11) + 8 * *(a1 + 16)) + 4 * v12 + 64), v13);
    v11 += 24;
  }

  return 0;
}

uint64_t sub_240BF9AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  v6 = *(**a2 + 8 * v5);
  v7 = *(*(*a2 + 24) + 8 * v5);
  v8 = *(*(*a2 + 48) + 8 * v5);
  v9 = -a4;
  v10 = a5 + a4;
  if (*(a1 + 232) == 1)
  {
    if (v10 > v9)
    {
      v11 = 64 - 4 * a4;
      v12 = (v8 + v11);
      v13 = (v7 + v11);
      v14 = (v6 + v11);
      v15 = vdupq_n_s32(0x3C7C1620u);
      v16 = vdupq_n_s32(0x41B7F760u);
      v17 = vdupq_n_s32(0x3F976C8Cu);
      v18 = vdupq_n_s32(0x3E8E2F4Cu);
      v19 = vdupq_n_s32(0x3FC0462Bu);
      do
      {
        v20 = vmulq_f32(vaddq_f32(*v13, 0), v17);
        v21 = vmulq_f32(vaddq_f32(vsubq_f32(*v12, *v13), v18), v19);
        *v14 = vmulq_f32(vaddq_f32(*v14, v15), v16);
        ++v14;
        *v13++ = v20;
        *v12++ = v21;
        v9 += 4;
      }

      while (v9 < v10);
    }
  }

  else if (v10 > v9)
  {
    v22 = 64 - 4 * a4;
    v23 = (v8 + v22);
    v24 = (v7 + v22);
    v25 = (v6 + v22);
    do
    {
      v26 = *(a1 + 184);
      v27 = (a1 + 200);
      v28 = vld1q_dup_f32(v27);
      v29 = vsubq_f32(vaddq_f32(*v25, *v24), v28);
      v30 = (a1 + 204);
      v31 = vld1q_dup_f32(v30);
      v32 = vsubq_f32(vsubq_f32(*v24, *v25), v31);
      v33 = (a1 + 208);
      v34 = vld1q_dup_f32(v33);
      v35 = vsubq_f32(*v23, v34);
      v36 = vmlaq_f32(vdupq_lane_s32(*v26.i8, 0), v29, vmulq_f32(v29, v29));
      v37 = vmlaq_f32(vdupq_lane_s32(*v26.i8, 1), v32, vmulq_f32(v32, v32));
      v38 = vmlaq_f32(vdupq_laneq_s32(v26, 2), v35, vmulq_f32(v35, v35));
      v39 = vmlaq_f32(vmlaq_f32(vmulq_f32(*(a1 + 88), v36), v37, *(a1 + 104)), v38, *(a1 + 120));
      v40 = vmlaq_f32(vmlaq_f32(vmulq_f32(*(a1 + 136), v36), v37, *(a1 + 152)), v38, *(a1 + 168));
      *v25++ = vmlaq_f32(vmlaq_f32(vmulq_f32(*(a1 + 40), v36), v37, *(a1 + 56)), v38, *(a1 + 72));
      *v24++ = v39;
      *v23++ = v40;
      v9 += 4;
    }

    while (v9 < v10);
  }

  return 0;
}

uint64_t sub_240BF9C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = *(a1 + 16);
    v7 = *(*(*a2 + 48) + 8 * v6);
    v8 = vdupq_n_s32(0x3F008081u);
    v9 = vdupq_n_s32(0x3FB374BCu);
    v10 = vdupq_n_s32(0xBEB032A1);
    v11 = vdupq_n_s32(0xBF36D1A2);
    v12 = vdupq_n_s32(0x3FE2D0E5u);
    v13 = (*(**a2 + 8 * v6) + 64);
    v14 = (*(*(*a2 + 24) + 8 * v6) + 64);
    v15 = v7 + 4;
    do
    {
      v16 = vaddq_f32(*v14, v8);
      v17 = vmlaq_f32(v16, v9, *v15);
      v18 = vmlaq_f32(vmlaq_f32(v16, v10, *v13), v11, *v15);
      v19 = vmlaq_f32(v16, v12, *v13);
      *v13++ = v17;
      *v14++ = v18;
      *v15++ = v19;
      v5 += 4;
    }

    while (v5 < a5);
  }

  return 0;
}

uint64_t sub_240BF9D60(uint64_t a1, unsigned int a2)
{
  result = malloc_type_malloc(((4 * (*(a1 + 1984) - *(a1 + 1976)) + 1000) >> 3) + 64, 0x100004077774924uLL);
  v5 = *(a1 + 1912);
  *(a1 + 1912) = result;
  if (v5)
  {
    (*(a1 + 1920))(v5);
    result = *(a1 + 1912);
  }

  v6 = *(a1 + 96);
  v7 = *(a1 + 1928);
  v8 = *(a1 + 1944);
  ++*(a1 + 1936);
  *(result + v7) = v8;
  v9 = *(a1 + 1936);
  v10 = v9 & 7;
  v11 = *(a1 + 1944) >> (v9 & 0xF8);
  v12 = *(a1 + 1928) + (v9 >> 3);
  *(a1 + 1928) = v12;
  v13 = *(a1 + 1912);
  *(a1 + 1944) = v11;
  *(a1 + 1936) = v10 + 2;
  *(v13 + v12) = v11;
  v14 = *(a1 + 1936);
  v15 = v14 & 7;
  v16 = *(a1 + 1944) >> (v14 & 0xF8);
  v17 = *(a1 + 1928) + (v14 >> 3);
  *(a1 + 1928) = v17;
  v18 = *(a1 + 1912);
  v19 = v16 | (1 << v15);
  *(a1 + 1944) = v19;
  *(a1 + 1936) = v15 + 1;
  *(v18 + v17) = v19;
  v20 = *(a1 + 1936);
  v21 = v20 & 7;
  v22 = *(a1 + 1944) >> (v20 & 0xF8);
  v23 = *(a1 + 1928) + (v20 >> 3);
  *(a1 + 1928) = v23;
  v24 = *(a1 + 1912);
  *(a1 + 1944) = v22;
  *(a1 + 1936) = v21 + 2;
  *(v24 + v23) = v22;
  v25 = *(a1 + 1936);
  v26 = v25 & 7;
  v27 = *(a1 + 1944) >> (v25 & 0xF8);
  v28 = *(a1 + 1928) + (v25 >> 3);
  *(a1 + 1928) = v28;
  v29 = *(a1 + 1912);
  *(a1 + 1944) = v27;
  *(a1 + 1936) = v26 + 1;
  *(v29 + v28) = v27;
  v30 = *(a1 + 1936);
  v31 = v30 & 7;
  v32 = *(a1 + 1944) >> (v30 & 0xF8);
  v33 = *(a1 + 1928) + (v30 >> 3);
  *(a1 + 1928) = v33;
  v34 = *(a1 + 1912);
  *(a1 + 1944) = v32;
  *(a1 + 1936) = v31 + 2;
  *(v34 + v33) = v32;
  v35 = *(a1 + 1936);
  v36 = v35 & 7;
  v37 = *(a1 + 1944) >> (v35 & 0xF8);
  v38 = *(a1 + 1928) + (v35 >> 3);
  *(a1 + 1928) = v38;
  if (v6 == 4 || v6 == 2)
  {
    v39 = *(a1 + 1912);
    *(a1 + 1944) = v37;
    *(a1 + 1936) = v36 + 2;
    *(v39 + v38) = v37;
    v40 = *(a1 + 1936);
    v36 = v40 & 7;
    v37 = *(a1 + 1944) >> (v40 & 0xF8);
    v38 = *(a1 + 1928) + (v40 >> 3);
    *(a1 + 1928) = v38;
  }

  v41 = *(a1 + 1912);
  v42 = v37 | (1 << v36);
  *(a1 + 1944) = v42;
  *(a1 + 1936) = v36 + 2;
  *(v41 + v38) = v42;
  v43 = *(a1 + 1936);
  v44 = v43 & 7;
  v45 = *(a1 + 1944) >> (v43 & 0xF8);
  v46 = *(a1 + 1928) + (v43 >> 3);
  *(a1 + 1928) = v46;
  v47 = *(a1 + 1912);
  *(a1 + 1944) = v45;
  *(a1 + 1936) = v44 + 2;
  *(v47 + v46) = v45;
  v48 = *(a1 + 1936);
  v49 = v48 & 7;
  v50 = *(a1 + 1944) >> (v48 & 0xF8);
  v51 = *(a1 + 1928) + (v48 >> 3);
  *(a1 + 1928) = v51;
  v52 = *(a1 + 1912);
  *(a1 + 1944) = v50;
  *(a1 + 1936) = v49 + 1;
  *(v52 + v51) = v50;
  v53 = *(a1 + 1936);
  v54 = v53 & 7;
  v55 = *(a1 + 1944) >> (v53 & 0xF8);
  v56 = *(a1 + 1928) + (v53 >> 3);
  *(a1 + 1928) = v56;
  v57 = *(a1 + 1912);
  *(a1 + 1944) = v55;
  *(a1 + 1936) = v54 + 2;
  *(v57 + v56) = v55;
  v58 = *(a1 + 1936);
  v59 = v58 & 7;
  v60 = *(a1 + 1944) >> (v58 & 0xF8);
  v61 = *(a1 + 1928) + (v58 >> 3);
  *(a1 + 1928) = v61;
  if (v6 == 4 || v6 == 2)
  {
    v62 = *(a1 + 1912);
    *(a1 + 1944) = v60;
    *(a1 + 1936) = v59 + 2;
    *(v62 + v61) = v60;
    v63 = *(a1 + 1936);
    v59 = v63 & 7;
    v60 = *(a1 + 1944) >> (v63 & 0xF8);
    v61 = *(a1 + 1928) + (v63 >> 3);
    *(a1 + 1928) = v61;
  }

  v64 = *(a1 + 1912);
  v65 = v60 | (a2 << v59);
  *(a1 + 1944) = v65;
  *(a1 + 1936) = v59 + 1;
  *(v64 + v61) = v65;
  v66 = *(a1 + 1936);
  v67 = v66 & 7;
  v68 = *(a1 + 1944) >> (v66 & 0xF8);
  *(a1 + 1944) = v68;
  v69 = *(a1 + 1928) + (v66 >> 3);
  *(a1 + 1928) = v69;
  if (!a2)
  {
    v70 = *(a1 + 1912);
    *(a1 + 1936) = v67 + 2;
    *(v70 + v69) = v68;
    v71 = *(a1 + 1936);
    v67 = v71 & 7;
    v68 = *(a1 + 1944) >> (v71 & 0xF8);
    *(a1 + 1944) = v68;
    v69 = *(a1 + 1928) + (v71 >> 3);
    *(a1 + 1928) = v69;
  }

  v72 = *(a1 + 1912);
  *(a1 + 1936) = v67 + 2;
  *(v72 + v69) = v68;
  v73 = *(a1 + 1936);
  v74 = v73 & 7;
  v75 = *(a1 + 1944) >> (v73 & 0xF8);
  v76 = *(a1 + 1928) + (v73 >> 3);
  *(a1 + 1928) = v76;
  v77 = *(a1 + 1912);
  *(a1 + 1944) = v75;
  *(a1 + 1936) = v74 + 1;
  *(v77 + v76) = v75;
  v78 = *(a1 + 1936);
  v79 = v78 & 7;
  v80 = *(a1 + 1944) >> (v78 & 0xF8);
  v81 = *(a1 + 1928) + (v78 >> 3);
  *(a1 + 1928) = v81;
  v82 = *(a1 + 1912);
  *(a1 + 1944) = v80;
  *(a1 + 1936) = v79 + 1;
  *(v82 + v81) = v80;
  v83 = *(a1 + 1936);
  v84 = v83 & 7;
  v85 = *(a1 + 1944) >> (v83 & 0xF8);
  v86 = *(a1 + 1928) + (v83 >> 3);
  *(a1 + 1928) = v86;
  v87 = *(a1 + 1912);
  *(a1 + 1944) = v85;
  *(a1 + 1936) = v84 + 2;
  *(v87 + v86) = v85;
  v88 = *(a1 + 1936);
  v89 = v88 & 7;
  v90 = *(a1 + 1944) >> (v88 & 0xF8);
  v91 = *(a1 + 1928) + (v88 >> 3);
  *(a1 + 1928) = v91;
  v92 = *(a1 + 1912);
  *(a1 + 1944) = v90;
  *(a1 + 1936) = v89 + 2;
  *(v92 + v91) = v90;
  v93 = *(a1 + 1936);
  v94 = v93 & 7;
  v95 = *(a1 + 1944) >> (v93 & 0xF8);
  v96 = *(a1 + 1928) + (v93 >> 3);
  *(a1 + 1928) = v96;
  v97 = *(a1 + 1912);
  *(a1 + 1944) = v95;
  *(a1 + 1936) = v94 + 2;
  *(v97 + v96) = v95;
  v98 = *(a1 + 1936);
  v99 = v98 & 7;
  v100 = *(a1 + 1944) >> (v98 & 0xF8);
  v101 = *(a1 + 1928) + (v98 >> 3);
  *(a1 + 1928) = v101;
  v102 = *(a1 + 1912);
  *(a1 + 1944) = v100;
  *(a1 + 1936) = v99 + 1;
  *(v102 + v101) = v100;
  v103 = *(a1 + 1936);
  v104 = *(a1 + 1944) >> (v103 & 0xF8);
  *(a1 + 1944) = v104;
  v105 = *(a1 + 1928) + (v103 >> 3);
  *(a1 + 1928) = v105;
  v106 = v103 & 7;
  *(a1 + 1936) = v106;
  if (v106)
  {
    v107 = *(a1 + 1912);
    *(a1 + 1936) = 8;
    *(v107 + v105) = v104;
    v108 = *(a1 + 1936);
    v106 = v108 & 7;
    *(a1 + 1936) = v106;
    v104 = *(a1 + 1944) >> (v108 & 0xF8);
    *(a1 + 1944) = v104;
    v105 = *(a1 + 1928) + (v108 >> 3);
    *(a1 + 1928) = v105;
  }

  v109 = *(a1 + 1976);
  if (*(a1 + 1984) != v109)
  {
    v110 = 0;
    do
    {
      v111 = *(v109 + 8 * v110);
      v112 = -1;
      v113 = &qword_240C860F8;
      while (v112 != 2)
      {
        v114 = *v113++;
        ++v112;
        if (v114 > v111)
        {
          goto LABEL_20;
        }
      }

      v112 = 3;
LABEL_20:
      v115 = *(a1 + 1912);
      result = v112 << v106;
      v116 = v104 | (v112 << v106);
      *(a1 + 1944) = v116;
      *(a1 + 1936) = v106 + 2;
      *(v115 + v105) = v116;
      v117 = *(a1 + 1936);
      v118 = v117 & 7;
      v119 = *(a1 + 1944) >> (v117 & 0xF8);
      v120 = *(a1 + 1928) + (v117 >> 3);
      *(a1 + 1928) = v120;
      v121 = (LODWORD(qword_240C860D0[v112]) - 2);
      v122 = v111 - qword_240C860F0[v112];
      v123 = *(a1 + 1912);
      v124 = (v122 << v118) | v119;
      *(a1 + 1944) = v124;
      *(a1 + 1936) = v121 + v118;
      *(v123 + v120) = v124;
      v125 = *(a1 + 1936);
      v106 = v125 & 7;
      *(a1 + 1936) = v106;
      v104 = *(a1 + 1944) >> (v125 & 0xF8);
      *(a1 + 1944) = v104;
      v105 = *(a1 + 1928) + (v125 >> 3);
      *(a1 + 1928) = v105;
      ++v110;
      v109 = *(a1 + 1976);
    }

    while (v110 < (*(a1 + 1984) - v109) >> 3);
  }

  if (v106)
  {
    v126 = *(a1 + 1912);
    *(a1 + 1936) = 8;
    *(v126 + v105) = v104;
    v127 = *(a1 + 1936);
    *(a1 + 1936) = v127 & 7;
    *(a1 + 1944) >>= v127 & 0xF8;
    *(a1 + 1928) += v127 >> 3;
  }

  return result;
}

char *sub_240BFA3EC(char *result, unint64_t a2, uint64_t a3)
{
  v5 = result;
  while (a2)
  {
    sub_240BC219C(&__dst, a3, 1uLL, a2);
    v6 = __dst;
    v9 = __dst;
    v10 = v13;
    v11 = v14;
    __dst = 0;
    *&v13 = 0;
    v7 = v10;
    if (v10)
    {
      if (a2 >= v10)
      {
        v8 = v10;
      }

      else
      {
        v8 = a2;
      }

      memcpy(v6, v5, v8);
      v9 += v8;
      *&v10 = v10 - v8;
      *(&v10 + 1) += v8;
      v5 += v8;
      a2 -= v8;
    }

    result = sub_240B96F0C(&v9);
    if (v15)
    {
      if (!v7)
      {
        return result;
      }
    }

    else
    {
      result = sub_240B96F0C(&__dst);
      if (!v7)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_240BFA4C4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 1976);
    if (v2)
    {
      *(v1 + 1984) = v2;
      operator delete(v2);
    }

    v5 = (v1 + 1952);
    sub_240BFA56C(&v5);
    v3 = *(v1 + 1912);
    *(v1 + 1912) = 0;
    if (v3)
    {
      (*(v1 + 1920))();
    }

    v4 = *(v1 + 1888);
    if (v4)
    {
      *(v1 + 1896) = v4;
      operator delete(v4);
    }

    JUMPOUT(0x245CCE590);
  }

  return result;
}

void sub_240BFA56C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_240BFA5C0(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_240BFA5C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; i -= 160)
  {
    v5 = 0;
    v6 = i;
    do
    {
      result = *(v6 + v5 - 40);
      *(v6 + v5 - 40) = 0;
      if (result)
      {
        result = (*(v6 + v5 - 32))();
      }

      v5 -= 40;
    }

    while (v5 != -160);
  }

  *(v3 + 8) = a2;
  return result;
}

void sub_240BFA640(char **a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_240BFA69C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240BFA6B8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a2 < 8)
  {
    v4 = 0;
    v12 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5.i64[0] = 0xFF000000FFLL;
    v5.i64[1] = 0xFF000000FFLL;
    v6 = vdupq_n_s32(0x9E3779B1);
    v7 = a1;
    do
    {
      v8 = 0;
      v24 = 0uLL;
      v25 = 0uLL;
      do
      {
        v24.i32[v8] = *(v7 + v8);
        ++v8;
      }

      while (v8 != 8);
      v9 = 0;
      v24 = vandq_s8(v24, v5);
      v25 = vandq_s8(v25, v5);
      v23[0] = vshrq_n_u32(vmulq_s32(v24, v6), 0x10uLL);
      v23[1] = vshrq_n_u32(vmulq_s32(v25, v6), 0x10uLL);
      do
      {
        v10 = *(a3 + 4 * *(v23 + v9 * 4));
        if (v10)
        {
          LOBYTE(v10) = v24.i32[v9] != v10;
        }

        v4 = v10 | v4 & 1;
        ++v9;
      }

      while (v9 != 8);
      for (i = 0; i != 8; ++i)
      {
        *(a3 + 4 * *(v23 + i * 4)) = v24.i32[i];
      }

      v12 = v3 + 8;
      v13 = v3 + 15;
      v7 += 8;
      v3 += 8;
    }

    while (v13 < a2);
  }

  v14 = a2 - v12;
  if (a2 > v12)
  {
    v15 = (a1 + v12);
    do
    {
      v17 = *v15++;
      v16 = v17;
      v18 = (-1640531535 * v17) >> 16;
      v19 = *(a3 + 4 * v18);
      if (v19)
      {
        v20 = v19 == v16;
      }

      else
      {
        v20 = 1;
      }

      v21 = !v20;
      v4 |= v21;
      *(a3 + 4 * v18) = v16;
      --v14;
    }

    while (v14);
  }

  return v4 & 1;
}

uint64_t sub_240BFA824(__int32 *a1, unint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  if (a2 < 8)
  {
    v4 = 0;
    v14 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5.i64[0] = 0xFFFF0000FFFFLL;
    v5.i64[1] = 0xFFFF0000FFFFLL;
    v6 = vdupq_n_s32(0x9E3779B1);
    v7 = a1;
    do
    {
      v8 = 0;
      v26 = 0uLL;
      v27 = 0uLL;
      v9 = v7;
      do
      {
        v10 = *v9;
        v9 = (v9 + 2);
        v26.i32[v8++] = v10;
      }

      while (v8 != 8);
      v11 = 0;
      v26 = vandq_s8(v26, v5);
      v27 = vandq_s8(v27, v5);
      v25[0] = vshrq_n_u32(vmulq_s32(v26, v6), 0x10uLL);
      v25[1] = vshrq_n_u32(vmulq_s32(v27, v6), 0x10uLL);
      do
      {
        v12 = *(a3 + 4 * *(v25 + v11 * 4));
        if (v12)
        {
          LOBYTE(v12) = v26.i32[v11] != v12;
        }

        v4 = v12 | v4 & 1;
        ++v11;
      }

      while (v11 != 8);
      for (i = 0; i != 8; ++i)
      {
        *(a3 + 4 * *(v25 + i * 4)) = v26.i32[i];
      }

      v14 = v3 + 8;
      v15 = v3 + 15;
      v7 += 4;
      v3 += 8;
    }

    while (v15 < a2);
  }

  v16 = a2 - v14;
  if (a2 > v14)
  {
    v17 = a1 + v14;
    do
    {
      v19 = *v17++;
      v18 = v19;
      v20 = (-1640531535 * v19) >> 16;
      v21 = *(a3 + 4 * v20);
      if (v21)
      {
        v22 = v21 == v18;
      }

      else
      {
        v22 = 1;
      }

      v23 = !v22;
      v4 |= v23;
      *(a3 + 4 * v20) = v18;
      --v16;
    }

    while (v16);
  }

  return v4 & 1;
}