char *sub_12E0A04(uint64_t a1, char *__dst, unint64_t *a3)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
      *__dst = 26;
      v9 = *(v8 + 20);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, __dst + 1);
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = sub_12DDDC8(v8, v10, a3);
    }
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v13 = *(*(a1 + 64) + 8 * j + 8);
      *__dst = 34;
      v14 = *(v13 + 20);
      __dst[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, __dst + 1);
      }

      else
      {
        v15 = __dst + 2;
      }

      __dst = sub_12DC4E0(v13, v15, a3);
    }
  }

  v16 = *(a1 + 80);
  if (v16 >= 1)
  {
    v17 = 8;
    do
    {
      v18 = *(*(a1 + 88) + v17);
      v19 = *(v18 + 23);
      if (v19 < 0 && (v19 = v18[1], v19 > 127) || (*a3 - __dst + 14) < v19)
      {
        __dst = sub_1957480(a3, 5, v18, __dst);
      }

      else
      {
        *__dst = 42;
        __dst[1] = v19;
        if (*(v18 + 23) < 0)
        {
          v18 = *v18;
        }

        v20 = __dst + 2;
        memcpy(v20, v18, v19);
        __dst = &v20[v19];
      }

      v17 += 8;
      --v16;
    }

    while (v16);
  }

  v21 = *(a1 + 104);
  if (v21)
  {
    for (k = 0; k != v21; ++k)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v23 = *(*(a1 + 112) + 8 * k + 8);
      *__dst = 50;
      v24 = *(v23 + 104);
      __dst[1] = v24;
      if (v24 > 0x7F)
      {
        v25 = sub_19575D0(v24, __dst + 1);
      }

      else
      {
        v25 = __dst + 2;
      }

      __dst = sub_12DECB4(v23, v25, a3);
    }
  }

  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v26 = *(a1 + 144);
    *__dst = 56;
    __dst[1] = v26;
    __dst += 2;
  }

  v27 = *(a1 + 128);
  if (v27)
  {
    for (m = 0; m != v27; ++m)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v29 = *(*(a1 + 136) + 8 * m + 8);
      *__dst = 66;
      v30 = *(v29 + 60);
      __dst[1] = v30;
      if (v30 > 0x7F)
      {
        v31 = sub_19575D0(v30, __dst + 1);
      }

      else
      {
        v31 = __dst + 2;
      }

      __dst = sub_12DFF7C(v29, v31, a3);
    }
  }

  v32 = *(a1 + 8);
  if ((v32 & 1) == 0)
  {
    return __dst;
  }

  v34 = v32 & 0xFFFFFFFFFFFFFFFCLL;
  v35 = *(v34 + 31);
  if (v35 < 0)
  {
    v36 = *(v34 + 8);
    v35 = *(v34 + 16);
  }

  else
  {
    v36 = (v34 + 8);
  }

  if ((*a3 - __dst) >= v35)
  {
    v37 = v35;
    memcpy(__dst, v36, v35);
    __dst += v37;
    return __dst;
  }

  return sub_1957130(a3, v36, v35, __dst);
}

uint64_t sub_12E0DA4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_12DE374(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 56);
  v9 = v2 + v8;
  v10 = *(a1 + 64);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = sub_12DC6A8(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 80);
  v16 = v9 + v15;
  if (v15 >= 1)
  {
    v17 = (*(a1 + 88) + 8);
    do
    {
      v18 = *v17++;
      v19 = *(v18 + 23);
      v20 = *(v18 + 8);
      if ((v19 & 0x80u) == 0)
      {
        v20 = v19;
      }

      v16 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      --v15;
    }

    while (v15);
  }

  v21 = *(a1 + 104);
  v22 = v16 + v21;
  v23 = *(a1 + 112);
  if (v23)
  {
    v24 = (v23 + 8);
  }

  else
  {
    v24 = 0;
  }

  if (v21)
  {
    v25 = 8 * v21;
    do
    {
      v26 = *v24++;
      v27 = sub_12DF0E0(v26);
      v22 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6);
      v25 -= 8;
    }

    while (v25);
  }

  v28 = *(a1 + 128);
  v29 = v22 + v28;
  v30 = *(a1 + 136);
  if (v30)
  {
    v31 = (v30 + 8);
  }

  else
  {
    v31 = 0;
  }

  if (v28)
  {
    v32 = 8 * v28;
    do
    {
      v33 = *v31++;
      v34 = sub_12E01AC(v33);
      v29 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6);
      v32 -= 8;
    }

    while (v32);
  }

  result = v29 + 2 * (*(a1 + 16) & 1);
  v36 = *(a1 + 8);
  if (v36)
  {
    v37 = v36 & 0xFFFFFFFFFFFFFFFCLL;
    v38 = *((v36 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v38 < 0)
    {
      v38 = *(v37 + 16);
    }

    result += v38;
  }

  *(a1 + 20) = result;
  return result;
}

uint64_t sub_12E0F9C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    if ((*(v3 + 16) & 4) != 0)
    {
      result = sub_12DD270(*(v3 + 64));
      if (!result)
      {
        break;
      }
    }

    if (v1-- <= 1)
    {
      return 1;
    }
  }

  return result;
}

void *sub_12E1008(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12E107C(void *a1)
{
  sub_12E1008(a1);

  operator delete();
}

char *sub_12E10B4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v14 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v14, a3[11].u32[1]))
  {
    goto LABEL_21;
  }

  while (1)
  {
    v6 = v14 + 1;
    v7 = *v14;
    if (*v14 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v14, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v14 + 2;
      }
    }

    v14 = v6;
    if (v7 == 13)
    {
      *(a1 + 24) = *v6;
      v14 = v6 + 4;
      v5 = 1;
      goto LABEL_16;
    }

    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v12 = sub_11F1920((a1 + 8));
      v6 = v14;
    }

    v14 = sub_1952690(v7, v12, v6, a3);
    if (!v14)
    {
      goto LABEL_22;
    }

LABEL_16:
    if (sub_195ADC0(a3, &v14, a3[11].u32[1]))
    {
      goto LABEL_21;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_21;
  }

LABEL_22:
  v14 = 0;
LABEL_21:
  *(a1 + 16) |= v5;
  return v14;
}

char *sub_12E11E8(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *v4 = 13;
    *(v4 + 1) = v6;
    v4 += 5;
  }

  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
  v10 = *(v9 + 31);
  if (v10 < 0)
  {
    v11 = *(v9 + 8);
    v10 = *(v9 + 16);
  }

  else
  {
    v11 = (v9 + 8);
  }

  if ((*a3 - v4) >= v10)
  {
    v12 = v10;
    memcpy(v4, v11, v10);
    v4 += v12;
    return v4;
  }

  return sub_1957130(a3, v11, v10, v4);
}

uint64_t sub_12E12C8(uint64_t a1)
{
  v1 = 5;
  if ((*(a1 + 16) & 1) == 0)
  {
    v1 = 0;
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = v2 & 0xFFFFFFFFFFFFFFFCLL;
    v5 = *((v2 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v5 < 0)
    {
      v5 = *(v4 + 16);
    }

    v1 += v5;
  }

  *(a1 + 20) = v1;
  return v1;
}

void *sub_12E1320(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 4));
  sub_1956ABC((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12E13A4(void *a1)
{
  sub_12E1320(a1);

  operator delete();
}

char *sub_12E13DC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v25 = a2;
  if (sub_195ADC0(a3, &v25, a3[11].u32[1]))
  {
    return v25;
  }

  while (1)
  {
    v6 = v25 + 1;
    v7 = *v25;
    if (*v25 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v25, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v25 + 2;
      }
    }

    v25 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 16)
      {
        v15 = v6 - 1;
        while (1)
        {
          v25 = v15 + 1;
          v16 = v15[1];
          if ((v16 & 0x8000000000000000) != 0)
          {
            v16 = (v15[2] << 7) + v16 - 128;
            if (v15[2] < 0)
            {
              v15 = sub_19587DC((v15 + 1), v16);
            }

            else
            {
              v15 += 3;
            }
          }

          else
          {
            v15 += 2;
          }

          v25 = v15;
          v17 = -(v16 & 1) ^ (v16 >> 1);
          v18 = *(a1 + 32);
          if (v18 == *(a1 + 36))
          {
            v19 = v18 + 1;
            sub_1959094((a1 + 32), v18 + 1);
            *(*(a1 + 40) + 8 * v18) = v17;
            v15 = v25;
          }

          else
          {
            *(*(a1 + 40) + 8 * v18) = v17;
            v19 = v18 + 1;
          }

          *(a1 + 32) = v19;
          if (!v15)
          {
            return 0;
          }

          if (*a3 <= v15 || *v15 != 16)
          {
            goto LABEL_50;
          }
        }
      }

      if (v7 == 18)
      {
        v20 = (a1 + 32);
        goto LABEL_41;
      }
    }

    else if (v7 >> 3 == 1)
    {
      if (v7 == 8)
      {
        v10 = v6 - 1;
        while (1)
        {
          v25 = v10 + 1;
          v11 = v10[1];
          if ((v11 & 0x8000000000000000) != 0)
          {
            v11 = (v10[2] << 7) + v11 - 128;
            if (v10[2] < 0)
            {
              v10 = sub_19587DC((v10 + 1), v11);
            }

            else
            {
              v10 += 3;
            }
          }

          else
          {
            v10 += 2;
          }

          v25 = v10;
          v12 = -(v11 & 1) ^ (v11 >> 1);
          v13 = *(a1 + 16);
          if (v13 == *(a1 + 20))
          {
            v14 = v13 + 1;
            sub_1959094((a1 + 16), v13 + 1);
            *(*(a1 + 24) + 8 * v13) = v12;
            v10 = v25;
          }

          else
          {
            *(*(a1 + 24) + 8 * v13) = v12;
            v14 = v13 + 1;
          }

          *(a1 + 16) = v14;
          if (!v10)
          {
            return 0;
          }

          if (*a3 <= v10 || *v10 != 8)
          {
            goto LABEL_50;
          }
        }
      }

      if (v7 == 10)
      {
        v20 = (a1 + 16);
LABEL_41:
        v21 = sub_1958958(v20, v6, a3);
        goto LABEL_49;
      }
    }

    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v23 = *(a1 + 8);
    if (v23)
    {
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v24 = sub_11F1920((a1 + 8));
      v6 = v25;
    }

    v21 = sub_1952690(v7, v24, v6, a3);
LABEL_49:
    v25 = v21;
    if (!v21)
    {
      return 0;
    }

LABEL_50:
    if (sub_195ADC0(a3, &v25, a3[11].u32[1]))
    {
      return v25;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return v25;
  }

  return 0;
}

char *sub_12E16B0(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5 < 1)
  {
    v9 = a2;
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v7 = *(*(a1 + 24) + 8 * i);
      *a2 = 8;
      v8 = (2 * v7) ^ (v7 >> 63);
      a2[1] = v8;
      if (v8 > 0x7F)
      {
        a2[1] = v8 | 0x80;
        v10 = v8 >> 7;
        a2[2] = v8 >> 7;
        v9 = a2 + 3;
        if (v8 >= 0x4000)
        {
          LOBYTE(v11) = a2[2];
          do
          {
            *(v9 - 1) = v11 | 0x80;
            v11 = v10 >> 7;
            *v9++ = v10 >> 7;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
        }
      }

      else
      {
        v9 = a2 + 2;
      }

      a2 = v9;
    }
  }

  v13 = *(a1 + 32);
  if (v13 < 1)
  {
    v17 = v9;
  }

  else
  {
    for (j = 0; j != v13; ++j)
    {
      if (*a3 <= v9)
      {
        v9 = sub_225EB68(a3, v9);
      }

      v15 = *(*(a1 + 40) + 8 * j);
      *v9 = 16;
      v16 = (2 * v15) ^ (v15 >> 63);
      v9[1] = v16;
      if (v16 > 0x7F)
      {
        v9[1] = v16 | 0x80;
        v18 = v16 >> 7;
        v9[2] = v16 >> 7;
        v17 = v9 + 3;
        if (v16 >= 0x4000)
        {
          LOBYTE(v9) = v9[2];
          do
          {
            *(v17 - 1) = v9 | 0x80;
            v9 = (v18 >> 7);
            *v17++ = v18 >> 7;
            v19 = v18 >> 14;
            v18 >>= 7;
          }

          while (v19);
        }
      }

      else
      {
        v17 = v9 + 2;
      }

      v9 = v17;
    }
  }

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v17;
  }

  v22 = v20 & 0xFFFFFFFFFFFFFFFCLL;
  v23 = *(v22 + 31);
  if (v23 < 0)
  {
    v24 = *(v22 + 8);
    v23 = *(v22 + 16);
  }

  else
  {
    v24 = (v22 + 8);
  }

  if ((*a3 - v17) >= v23)
  {
    v25 = v23;
    memcpy(v17, v24, v23);
    v17 += v25;
    return v17;
  }

  return sub_1957130(a3, v24, v23, v17);
}

uint64_t sub_12E18B8(uint64_t a1)
{
  v2 = sub_1959F64((a1 + 16));
  v3 = *(a1 + 16);
  result = v2 + sub_1959F64((a1 + 32)) + v3 + *(a1 + 32);
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v7 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v7 < 0)
    {
      v7 = *(v6 + 16);
    }

    result += v7;
  }

  *(a1 + 48) = result;
  return result;
}

void *sub_12E1948(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D0820;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  *(result + 37) = 0;
  return result;
}

void *sub_12E19C8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D08A0;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_12E1A44(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D0920;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = a1;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 120) = &qword_278E990;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  return result;
}

uint64_t sub_12E1B0C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D09A0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 80) = 0;
  *(result + 88) = 0u;
  *(result + 104) = a1;
  *(result + 112) = 0;
  *(result + 120) = a1;
  *(result + 128) = 0;
  *(result + 136) = a1;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  return result;
}

double sub_12E1BEC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26D0A20;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = a1;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = a1;
  result = 0.0;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 132) = 0u;
  return result;
}

uint64_t sub_12E1CB4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26D0AA0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

void *sub_12E1D3C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D0B20;
  result[2] = 0;
  result[4] = 0;
  result[5] = 0;
  result[3] = &qword_278E990;
  return result;
}

double sub_12E1DC4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26D0BA0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = a1;
  *(v2 + 56) = 0;
  return result;
}

double sub_12E1E68(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26D0C20;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return result;
}

uint64_t sub_12E1EE4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26D0CA0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  return result;
}

uint64_t sub_12E1F80(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D0D20;
  *(result + 8) = a1;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

double sub_12E2024(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26D0DA0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 45) = 0u;
  return result;
}

void *sub_12E20A4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D0E20;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_12E2120(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D0EA0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_12E2198(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26D0F20;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_12E2214(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26D0FA0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

void *sub_12E229C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D1020;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

double sub_12E2318(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_26D10A0;
  v2[1] = a1;
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = a1;
  v2[5] = 0;
  v2[6] = 0;
  v2[7] = 0;
  return result;
}

double sub_12E23B8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_26D1120;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = &qword_278E990;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0;
  return result;
}

uint64_t sub_12E2470(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D11A0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = a1;
  *(result + 104) = 0;
  return result;
}

uint64_t sub_12E2548(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D1220;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 80) = 0;
  return result;
}

double sub_12E260C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_26D12A0;
  v2[1] = a1;
  v2[2] = a1;
  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  v2[6] = a1;
  v2[7] = 0;
  return result;
}

uint64_t sub_12E26AC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D1320;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = a1;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 120) = a1;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  return result;
}

uint64_t sub_12E276C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26D13A0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_12E27E8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D1420;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = a1;
  *(result + 48) = 0;
  return result;
}

char *sub_12E4E18(char *result)
{
  v1 = *(result + 2);
  if (v1 >= 1)
  {
    v2 = result;
    v3 = (*(result + 2) + 8);
    do
    {
      result = (*v3 + 8);
      v4 = *result;
      *(result + 2) = 0;
      *(result + 2) = 0;
      if (v4)
      {
        result = sub_1957EA8(result);
      }

      ++v3;
      --v1;
    }

    while (v1);
    *(v2 + 8) = 0;
  }

  return result;
}

void sub_12E4E7C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12E9298(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E4F00(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12E9A5C(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E4F84(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12A6F98(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E5008(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12ED834(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E508C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12EDC14(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E5110(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12EE288(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E5194(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12EACA8(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E5218(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_12F1808(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_12E5294(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_12E52A4(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      sub_12F1890(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_12E5320(v12, v14);
      --v5;
    }

    while (v5);
  }
}

std::string *sub_12E5330(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_12A9084(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E53AC(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_12E53BC(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_12F1AC0(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E53AC(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t **sub_12E5438(uint64_t **result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_12F1B38(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E54B4(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t **sub_12E54C4(uint64_t **result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_12F1BD4(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E5540(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_12E5550(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_12F1954(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_12E55CC(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_12E55DC(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12AF610(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E5660(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12AFC18(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E56E4(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12AADB0(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E5768(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12ADA0C(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

std::string *sub_12E57EC(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_12B0430(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E5868(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_12E5878(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_12B04AC(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12168FC(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_12E58F4(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_12B0184(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_12E5970(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_12E5980(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_12B02F8(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_12E59FC(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_12E5A0C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12B0528(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E5A90(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12B0AE4(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E5B14(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_12B1CD8(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_12E5B90(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_12E5BA0(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_12B1D60(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_12E5B90(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_12E5C1C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12B1EB0(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E5CA0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_16EEBC8(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E5D24(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12B23B4(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E5DA8(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_12B3A4C(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_12E5E24(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_12E5E34(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_16F6038(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_12E5B90(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_12E5EB0(uint64_t **a1, char **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_12B3AC4(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_12E5F2C(v12, v14);
      --v5;
    }

    while (v5);
  }
}

char *sub_12E5F3C(char *result)
{
  v1 = *(result + 2);
  if (v1 >= 1)
  {
    v2 = result;
    v3 = (*(result + 2) + 8);
    do
    {
      result = (*v3 + 8);
      v4 = *result;
      *(result + 2) = 0;
      *(result + 8) = 0;
      *(result + 14) = 0;
      if (v4)
      {
        result = sub_1957EA8(result);
      }

      ++v3;
      --v1;
    }

    while (v1);
    *(v2 + 8) = 0;
  }

  return result;
}

char *sub_12E5FA4(char *result)
{
  v1 = *(result + 2);
  if (v1 >= 1)
  {
    v2 = result;
    v3 = (*(result + 2) + 8);
    do
    {
      result = (*v3 + 8);
      v4 = *result;
      *(result + 2) = 0;
      *(result + 8) = 0;
      *(result + 14) = 0;
      *(result + 20) = 0;
      if (v4)
      {
        result = sub_1957EA8(result);
      }

      ++v3;
      --v1;
    }

    while (v1);
    *(v2 + 8) = 0;
  }

  return result;
}

char *sub_12E6010(char *result)
{
  v1 = *(result + 2);
  if (v1 >= 1)
  {
    v2 = result;
    v3 = (*(result + 2) + 8);
    do
    {
      result = (*v3 + 8);
      v4 = *result;
      *(result + 2) = 0;
      *(result + 6) = 0;
      *(result + 10) = 0;
      if (v4)
      {
        result = sub_1957EA8(result);
      }

      ++v3;
      --v1;
    }

    while (v1);
    *(v2 + 8) = 0;
  }

  return result;
}

void sub_12E6078(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12B46B0(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E60FC(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12CBD48(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E6180(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12B6DC0(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E6204(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_16E4E08(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E6288(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12B89E4(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E630C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12BBDA0(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E6390(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12BE9B8(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E6414(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12C0ADC(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E6498(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12BFDDC(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E651C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12C16A4(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E65A0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12BC770(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E6624(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12C21B8(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E66A8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12C36C4(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E672C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12DFC74(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E67B0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12C29F4(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E6834(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12C5A24(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E68B8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12C6C10(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E693C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12C8310(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E69C0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12C8B38(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E6A44(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12C96B0(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E6AC8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12CA1F4(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E6B4C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12CD40C(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t **sub_12E6BD0(uint64_t **result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_12CFE5C(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E6C4C(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_12E6C5C(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_12D14B4(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_12E6CD8(v12, v14);
      --v5;
    }

    while (v5);
  }
}

uint64_t **sub_12E6CE8(uint64_t **result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_12D00D4(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E6D64(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_12E6D74(uint64_t **result, uint64_t **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_12D0274(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_12E6DF0(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_12E6E00(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_12D06F8(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_12E6E7C(v12, v14);
      --v5;
    }

    while (v5);
  }
}

std::string *sub_12E6E8C(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_12D0864(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E6F08(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_12E6F18(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_12D0A74(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E6F94(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t **sub_12E6FA4(uint64_t **result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_12D09D4(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E7020(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_12E7030(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_12D0BDC(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E70AC(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_12E70BC(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5, __n128 a6)
{
  LODWORD(v6) = a4;
  v8 = a2;
  v9 = a4 - a5;
  if (a4 > a5)
  {
    v10 = *result;
    v11 = &a2[a5];
    do
    {
      *v11++ = sub_12D0798(v10);
      --v9;
    }

    while (v9);
  }

  if (v6 >= 1)
  {
    v6 = v6;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v8++;
      sub_12E7138(v12, v14, a6);
      --v6;
    }

    while (v6);
  }
}

std::string *sub_12E7148(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_12D0C8C(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E71C4(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_12E71D4(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_12D0E28(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_12E7250(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_12E7260(uint64_t **a1, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_12E260C(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_12E72DC(v12, v14);
      --v5;
    }

    while (v5);
  }
}

std::string *sub_12E72EC(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_12D0D28(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E7368(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_12E7378(uint64_t **result, char **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_12D0F50(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_12E73F4(v11, v13);
      --v5;
    }

    while (v5);
  }
}

std::string *sub_12E7404(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_12D101C(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E7480(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_12E7490(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_12D1154(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_12E750C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_12E751C(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_12D11DC(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_12E7598(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_12E75A8(uint64_t **a1, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_12D127C(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_12E7624(v12, v14);
      --v5;
    }

    while (v5);
  }
}

uint64_t **sub_12E7634(uint64_t **result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_12D12FC(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E76B0(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_12E76C0(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_12D15D8(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_12E773C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_12E774C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12D6928(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E77D0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12D6D84(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E7854(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12D76F4(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E78D8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12DB7E4(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E795C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12D9590(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E79E0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12D9D18(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E7A64(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12DA89C(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E7AE8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12DC13C(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E7B6C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12DF3D0(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E7BF0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12DD57C(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E7C74(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12DE998(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E7CF8(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_12E1CB4(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_12E5B90(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_12E7D74(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_12E1D3C(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_12E7DF0(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_12E7E00(uint64_t **a1, char **a2, uint64_t *a3, int a4, int a5, __n128 a6)
{
  LODWORD(v6) = a4;
  v8 = a2;
  v9 = a4 - a5;
  if (a4 > a5)
  {
    v10 = *a1;
    v11 = &a2[a5];
    do
    {
      a6.n128_f64[0] = sub_12E1DC4(v10);
      *v11++ = v12;
      --v9;
    }

    while (v9);
  }

  if (v6 >= 1)
  {
    v6 = v6;
    do
    {
      v14 = *a3++;
      v13 = v14;
      v15 = *v8++;
      sub_12E7E7C(v13, v15, a6);
      --v6;
    }

    while (v6);
  }
}

void sub_12E7E8C(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_12E2214(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_12E7F08(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_12E7F18(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_12E1F80(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_12E7F94(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_12E7FA4(uint64_t **a1, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_12E2024(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_12E8020(v12, v14);
      --v5;
    }

    while (v5);
  }
}

std::string *sub_12E8030(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_12E20A4(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E80AC(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_12E80BC(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_12E229C(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E8138(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t **sub_12E8148(uint64_t **result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_12E2548(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E81C4(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_12E81D4(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_12E23B8(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_12E8250(v12, v14);
      --v5;
    }

    while (v5);
  }
}

uint64_t **sub_12E8260(uint64_t **result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_12E2470(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E82DC(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_12E833C(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *(v2 + 92);

  return sub_195ADC0(v2, va, v4);
}

char *sub_12E8388(uint64_t a1, std::string::size_type a2, char *a3)
{

  return sub_1952690(v4, a2, a3, v3);
}

void sub_12E83A0(uint64_t a1, uint64_t a2, std::string *a3)
{

  sub_19586BC(1, v3, a3);
}

void sub_12E83B8(uint64_t a1, uint64_t a2, std::string *a3)
{

  sub_19586BC(2, v3, a3);
}

void sub_12E83D0(uint64_t a1, uint64_t a2, std::string *a3)
{

  sub_19586BC(5, v3, a3);
}

void sub_12E83E8(uint64_t a1, uint64_t a2, std::string *a3)
{

  sub_19586BC(4, v3, a3);
}

void sub_12E8400(uint64_t a1, uint64_t a2, std::string *a3)
{

  sub_19586BC(6, v3, a3);
}

void sub_12E8418()
{
  sub_12E8330();
  if (v1)
  {
    sub_1201FD0();
  }

  else
  {
    v2 = sub_11F1920(v0);
    v4 = v2;
  }

  sub_12E83B8(v2, v3, v4);
}

void sub_12E8450()
{
  sub_12E8330();
  if (v1)
  {
    sub_1201FD0();
  }

  else
  {
    v2 = sub_11F1920(v0);
    v4 = v2;
  }

  sub_12E83A0(v2, v3, v4);
}

void sub_12E8488()
{
  sub_12E8330();
  if (v2)
  {
    sub_1201FD0();
  }

  else
  {
    v3 = sub_11F1920(v1);
  }

  sub_19586BC(10, v0, v3);
}

void sub_12E84C8()
{
  sub_12E8330();
  if (v1)
  {
    sub_1201FD0();
  }

  else
  {
    v2 = sub_11F1920(v0);
    v4 = v2;
  }

  sub_12E8400(v2, v3, v4);
}

void sub_12E8500()
{
  sub_12E8330();
  if (v1)
  {
    sub_1201FD0();
  }

  else
  {
    v2 = sub_11F1920(v0);
    v4 = v2;
  }

  sub_12E83E8(v2, v3, v4);
}

void sub_12E8538()
{
  sub_12E8330();
  if (v2)
  {
    sub_1201FD0();
  }

  else
  {
    v3 = sub_11F1920(v1);
  }

  sub_19586BC(15, v0, v3);
}

void sub_12E8578()
{
  sub_12E8330();
  if (v2)
  {
    sub_1201FD0();
  }

  else
  {
    v3 = sub_11F1920(v1);
  }

  sub_19586BC(3, v0, v3);
}

void sub_12E85B8()
{
  sub_12E8330();
  if (v1)
  {
    sub_1201FD0();
  }

  else
  {
    v2 = sub_11F1920(v0);
    v4 = v2;
  }

  sub_12E83D0(v2, v3, v4);
}

void sub_12E85F0()
{
  sub_12E8330();
  if (v2)
  {
    sub_1201FD0();
  }

  else
  {
    v3 = sub_11F1920(v1);
  }

  sub_19586BC(8, v0, v3);
}

void sub_12E8630()
{
  dword_278CFC0 = 100;
  byte_278CFC4 = 0;
  sub_194EE44(&off_2789258, 100, 8, 0, 0);
  qword_278CFC8 = 101;
  sub_194F628(&off_2789258, 101, 14, 0, 0, sub_16E4BB4);
  dword_278CFD0 = 100;
  byte_278CFD4 = 0;
  sub_194EE44(&off_27892C0, 100, 8, 0, 0);
  dword_278CFD8 = 100;
  qword_278CFE0 = 0;
  sub_194EE44(&off_2789CD0, 100, 4, 0, 0);
  dword_278CFE8 = 100;
  byte_278CFEC = 0;
  sub_194EE44(&off_2789D28, 100, 8, 0, 0);
  dword_278CFF0 = 1049;
  qword_278CFF8 = &off_2769490;
  sub_194F72C(&off_27811E0, 1049, 11, 0, 0, &off_2769490);
  dword_278D000 = 1050;
  qword_278D008 = &off_2769510;
  sub_194F72C(&off_27811E0, 1050, 11, 0, 0, &off_2769510);
  dword_278D010 = 1051;
  qword_278D018 = &off_276A030;
  sub_194F72C(&off_27811E0, 1051, 11, 1, 0, &off_276A030);
  dword_278D020 = 1049;
  qword_278D028 = &off_2769490;
  sub_194F72C(&off_27745A0, 1049, 11, 0, 0, &off_2769490);
  dword_278D030 = 1049;
  qword_278D038 = &off_2769490;
  sub_194F72C(&off_27741B0, 1049, 11, 0, 0, &off_2769490);
  dword_278D040 = 1050;
  qword_278D048 = &off_276A030;
  sub_194F72C(&off_27741B0, 1050, 11, 0, 0, &off_276A030);
  dword_278D050 = 1049;
  qword_278D058 = &off_2769490;
  sub_194F72C(&off_2771078, 1049, 11, 0, 0, &off_2769490);
  dword_278D060 = 501;
  qword_278D068 = &off_2769BD8;
  sub_194F72C(&off_27811B0, 501, 11, 0, 0, &off_2769BD8);
  dword_278D070 = 1100;
  qword_278D078 = &off_2769C00;
  sub_194F72C(&off_2772A50, 1100, 11, 1, 0, &off_2769C00);
  dword_278D080 = 1101;
  qword_278D088 = &off_2769C30;
  sub_194F72C(&off_2772A50, 1101, 11, 1, 0, &off_2769C30);
  dword_278D090 = 1102;
  qword_278D098 = &off_2769C30;
  sub_194F72C(&off_2772A50, 1102, 11, 1, 0, &off_2769C30);
  dword_278D0A0 = 1103;
  qword_278D0A8 = &off_2769C78;
  sub_194F72C(&off_2772A50, 1103, 11, 0, 0, &off_2769C78);
  qword_278D0B0 = 1100;
  sub_194F628(&off_2772638, 1100, 14, 0, 0, sub_144E2DC);
  qword_278D0B8 = 1101;
  sub_194F628(&off_2772638, 1101, 14, 0, 0, sub_144E2DC);
  qword_278D0C0 = 1102;
  sub_194F628(&off_2772638, 1102, 14, 0, 0, sub_144E2DC);
  qword_278D0C8 = 1103;
  sub_194F628(&off_2772638, 1103, 14, 0, 0, sub_144E2DC);
  qword_278D0D0 = 1100;
  sub_194F628(&off_27731C8, 1100, 14, 0, 0, sub_15528C0);
  qword_278D0D8 = 1000;
  sub_194EE44(&off_2772008, 1000, 13, 0, 0);
  qword_278D0E0 = 1001;
  sub_194EE44(&off_2772008, 1001, 13, 0, 0);
  dword_278D0E8 = 1002;
  qword_278D0F0 = &off_2769CA8;
  sub_194F72C(&off_2772008, 1002, 11, 0, 0, &off_2769CA8);
  dword_278D0F8 = 1053;
  qword_278D100 = &off_2769D10;
  sub_194F72C(&off_2773FE0, 1053, 11, 0, 0, &off_2769D10);
  dword_278D108 = 1053;
  qword_278D110 = &off_2769D10;
  sub_194F72C(&off_27742B0, 1053, 11, 0, 0, &off_2769D10);
  dword_278D118 = 1053;
  qword_278D120 = &off_2769D10;
  sub_194F72C(&off_2780F90, 1053, 11, 0, 0, &off_2769D10);
  dword_278D128 = 1053;
  qword_278D130 = &off_2769D10;
  sub_194F72C(&off_2770FB8, 1053, 11, 0, 0, &off_2769D10);
  dword_278D138 = 100;
  qword_278D140 = &off_278B0B0;
  sub_194F72C(&off_2776E58, 100, 11, 0, 0, &off_278B0B0);
  dword_278D148 = 200;
  qword_278D150 = &off_2776D50;
  sub_194F72C(&off_2776E00, 200, 11, 0, 0, &off_2776D50);
  dword_278D158 = 100;
  qword_278D160 = 0;
  sub_194EE44(&off_2776F10, 100, 3, 0, 0);
  dword_278D168 = 956;
  qword_278D170 = &off_2769410;
  sub_194F72C(&off_2780F90, 956, 11, 0, 0, &off_2769410);
  dword_278D178 = 990;
  qword_278D180 = &off_2769460;
  sub_194F72C(&off_27811E0, 990, 11, 0, 0, &off_2769460);
  dword_278D188 = 1000;
  qword_278D190 = 0;
  sub_194EE44(&off_278B870, 1000, 4, 0, 0);
  dword_278D198 = 1001;
  qword_278D1A0 = 0;

  sub_194EE44(&off_278B870, 1001, 4, 0, 0);
}

uint64_t sub_12E8D9C()
{
  qword_27C4770 = "CLIENTIZE_RESULT_STATUS_BAD_EXTENTCLIENTIZE_RESULT_STATUS_NO_CACHE_MATCHCLIENTIZE_RESULT_STATUS_NO_FEATURE_MATCHCLIENTIZE_RESULT_STATUS_NO_PRIMARY_FEATURECLIENTIZE_RESULT_STATUS_NO_RESULTSCLIENTIZE_RESULT_STATUS_SUCCESSCLIENTIZE_RESULT_STATUS_UNDEFINED";
  *algn_27C4778 = 34;
  dword_27C4780 = 3;
  qword_27C4788 = "CLIENTIZE_RESULT_STATUS_NO_CACHE_MATCHCLIENTIZE_RESULT_STATUS_NO_FEATURE_MATCHCLIENTIZE_RESULT_STATUS_NO_PRIMARY_FEATURECLIENTIZE_RESULT_STATUS_NO_RESULTSCLIENTIZE_RESULT_STATUS_SUCCESSCLIENTIZE_RESULT_STATUS_UNDEFINED";
  unk_27C4790 = 38;
  dword_27C4798 = 4;
  qword_27C47A0 = "CLIENTIZE_RESULT_STATUS_NO_FEATURE_MATCHCLIENTIZE_RESULT_STATUS_NO_PRIMARY_FEATURECLIENTIZE_RESULT_STATUS_NO_RESULTSCLIENTIZE_RESULT_STATUS_SUCCESSCLIENTIZE_RESULT_STATUS_UNDEFINED";
  unk_27C47A8 = 40;
  dword_27C47B0 = 5;
  qword_27C47B8 = "CLIENTIZE_RESULT_STATUS_NO_PRIMARY_FEATURECLIENTIZE_RESULT_STATUS_NO_RESULTSCLIENTIZE_RESULT_STATUS_SUCCESSCLIENTIZE_RESULT_STATUS_UNDEFINED";
  unk_27C47C0 = 42;
  dword_27C47C8 = 2;
  qword_27C47D0 = "CLIENTIZE_RESULT_STATUS_NO_RESULTSCLIENTIZE_RESULT_STATUS_SUCCESSCLIENTIZE_RESULT_STATUS_UNDEFINED";
  unk_27C47D8 = 34;
  dword_27C47E0 = 6;
  qword_27C47E8 = "CLIENTIZE_RESULT_STATUS_SUCCESSCLIENTIZE_RESULT_STATUS_UNDEFINED";
  unk_27C47F0 = 31;
  dword_27C47F8 = 1;
  qword_27C4800 = "CLIENTIZE_RESULT_STATUS_UNDEFINED";
  unk_27C4808 = 33;
  dword_27C4810 = 0;
  qword_27C4818 = "CLIENTIZE_RESPONSE_STATUS_NO_PARAMETERSCLIENTIZE_RESPONSE_STATUS_NO_REQUESTCLIENTIZE_RESPONSE_STATUS_NO_REQUEST_TYPECLIENTIZE_RESPONSE_STATUS_SUCCESSCLIENTIZE_RESPONSE_STATUS_UNDEFINED";
  unk_27C4820 = 39;
  dword_27C4828 = 4;
  qword_27C4830 = "CLIENTIZE_RESPONSE_STATUS_NO_REQUESTCLIENTIZE_RESPONSE_STATUS_NO_REQUEST_TYPECLIENTIZE_RESPONSE_STATUS_SUCCESSCLIENTIZE_RESPONSE_STATUS_UNDEFINED";
  unk_27C4838 = 36;
  dword_27C4840 = 3;
  qword_27C4848 = "CLIENTIZE_RESPONSE_STATUS_NO_REQUEST_TYPECLIENTIZE_RESPONSE_STATUS_SUCCESSCLIENTIZE_RESPONSE_STATUS_UNDEFINED";
  unk_27C4850 = 41;
  dword_27C4858 = 2;
  qword_27C4860 = "CLIENTIZE_RESPONSE_STATUS_SUCCESSCLIENTIZE_RESPONSE_STATUS_UNDEFINED";
  unk_27C4868 = 33;
  dword_27C4870 = 1;
  qword_27C4878 = "CLIENTIZE_RESPONSE_STATUS_UNDEFINED";
  unk_27C4880 = 35;
  dword_27C4888 = 0;
  qword_27C4890 = "GEMINI_REQUESTPLACE_REQUESTPLACE_SEARCH_REQUESTUNDEFINED_REQUEST";
  *algn_27C4898 = 14;
  dword_27C48A0 = 3;
  qword_27C48A8 = "PLACE_REQUESTPLACE_SEARCH_REQUESTUNDEFINED_REQUEST";
  unk_27C48B0 = 13;
  dword_27C48B8 = 1;
  result = 20;
  qword_27C48C0 = "PLACE_SEARCH_REQUESTUNDEFINED_REQUEST";
  unk_27C48C8 = 20;
  dword_27C48D0 = 2;
  qword_27C48D8 = "UNDEFINED_REQUEST";
  unk_27C48E0 = 17;
  dword_27C48E8 = 0;
  qword_27C48F0 = "DISPUTED_AREA_POIS_ALLOWEDDISPUTED_AREA_POIS_NOT_ALLOWEDNON_DISPUTED_AREA_POIS_ALLOWED";
  *algn_27C48F8 = 26;
  dword_27C4900 = 1;
  qword_27C4908 = "DISPUTED_AREA_POIS_NOT_ALLOWEDNON_DISPUTED_AREA_POIS_ALLOWED";
  unk_27C4910 = 30;
  dword_27C4918 = 2;
  qword_27C4920 = "NON_DISPUTED_AREA_POIS_ALLOWED";
  unk_27C4928 = 30;
  dword_27C4930 = 0;
  qword_27C4938 = "FREEWAYLOCALMAJOR_ARTERIALMINOR_ARTERIALUNKNOWN";
  unk_27C4940 = 7;
  dword_27C4948 = 1;
  qword_27C4950 = "LOCALMAJOR_ARTERIALMINOR_ARTERIALUNKNOWN";
  unk_27C4958 = 5;
  dword_27C4960 = 4;
  qword_27C4968 = "MAJOR_ARTERIALMINOR_ARTERIALUNKNOWN";
  unk_27C4970 = 14;
  dword_27C4978 = 2;
  qword_27C4980 = "MINOR_ARTERIALUNKNOWN";
  unk_27C4988 = 14;
  dword_27C4990 = 3;
  qword_27C4998 = "UNKNOWN";
  unk_27C49A0 = 7;
  dword_27C49A8 = 0;
  qword_27C49B0 = "BIASED_TO_USER_ROUTEDISABLEDUNKNOWN";
  *algn_27C49B8 = 20;
  dword_27C49C0 = 2;
  qword_27C49C8 = "DISABLEDUNKNOWN";
  unk_27C49D0 = 8;
  dword_27C49D8 = 1;
  qword_27C49E0 = "UNKNOWN";
  unk_27C49E8 = 7;
  dword_27C49F0 = 0;
  qword_27C49F8 = "ACE";
  unk_27C4A00 = 1;
  dword_27C4A08 = 1;
  qword_27C4A10 = "CE";
  unk_27C4A18 = 1;
  dword_27C4A20 = 3;
  qword_27C4A28 = "E";
  unk_27C4A30 = 1;
  dword_27C4A38 = 5;
  qword_27C4A40 = "GEOJSONWKBWKTZILCH";
  *algn_27C4A48 = 7;
  dword_27C4A50 = 3;
  qword_27C4A58 = "WKBWKTZILCH";
  unk_27C4A60 = 3;
  dword_27C4A68 = 1;
  qword_27C4A70 = "WKTZILCH";
  unk_27C4A78 = 3;
  dword_27C4A80 = 2;
  qword_27C4A88 = "ZILCH";
  unk_27C4A90 = 5;
  dword_27C4A98 = 4;
  qword_27C4AA0 = "ADJACENT_FLOWLINES_BEARING_DIFFERENCEBAD_ELEVATIONSEXCESSIVE_SEGMENT_GEOMETRY_DISTRIBUTION_DIFF_RATIOEXCESSIVE_TORTUOSITYHIGH_ACCELERATIONNONEOUTSIDE_OF_TRANSPORT_NETWORK_POLYGONSOUT_OF_SEGMENT_BOUNDS_IN_OPPOSITE_TRAVEL_DIRECTIONOUT_OF_SEGMENT_BOUNDS_IN_TRAVEL_DIRECTIONROUTE_LINE_DIFFERS_FROM_CENTER_LINE_BEARINGSROUTE_LINE_JAGGEDROUTE_LINE_SELF_INTERSECTS";
  *algn_27C4AA8 = 37;
  dword_27C4AB0 = 7;
  qword_27C4AB8 = "BAD_ELEVATIONSEXCESSIVE_SEGMENT_GEOMETRY_DISTRIBUTION_DIFF_RATIOEXCESSIVE_TORTUOSITYHIGH_ACCELERATIONNONEOUTSIDE_OF_TRANSPORT_NETWORK_POLYGONSOUT_OF_SEGMENT_BOUNDS_IN_OPPOSITE_TRAVEL_DIRECTIONOUT_OF_SEGMENT_BOUNDS_IN_TRAVEL_DIRECTIONROUTE_LINE_DIFFERS_FROM_CENTER_LINE_BEARINGSROUTE_LINE_JAGGEDROUTE_LINE_SELF_INTERSECTS";
  unk_27C4AC0 = 14;
  dword_27C4AC8 = 10;
  qword_27C4AD0 = "EXCESSIVE_SEGMENT_GEOMETRY_DISTRIBUTION_DIFF_RATIOEXCESSIVE_TORTUOSITYHIGH_ACCELERATIONNONEOUTSIDE_OF_TRANSPORT_NETWORK_POLYGONSOUT_OF_SEGMENT_BOUNDS_IN_OPPOSITE_TRAVEL_DIRECTIONOUT_OF_SEGMENT_BOUNDS_IN_TRAVEL_DIRECTIONROUTE_LINE_DIFFERS_FROM_CENTER_LINE_BEARINGSROUTE_LINE_JAGGEDROUTE_LINE_SELF_INTERSECTS";
  unk_27C4AD8 = 50;
  dword_27C4AE0 = 11;
  qword_27C4AE8 = "EXCESSIVE_TORTUOSITYHIGH_ACCELERATIONNONEOUTSIDE_OF_TRANSPORT_NETWORK_POLYGONSOUT_OF_SEGMENT_BOUNDS_IN_OPPOSITE_TRAVEL_DIRECTIONOUT_OF_SEGMENT_BOUNDS_IN_TRAVEL_DIRECTIONROUTE_LINE_DIFFERS_FROM_CENTER_LINE_BEARINGSROUTE_LINE_JAGGEDROUTE_LINE_SELF_INTERSECTS";
  unk_27C4AF0 = 20;
  dword_27C4AF8 = 9;
  qword_27C4B00 = "HIGH_ACCELERATIONNONEOUTSIDE_OF_TRANSPORT_NETWORK_POLYGONSOUT_OF_SEGMENT_BOUNDS_IN_OPPOSITE_TRAVEL_DIRECTIONOUT_OF_SEGMENT_BOUNDS_IN_TRAVEL_DIRECTIONROUTE_LINE_DIFFERS_FROM_CENTER_LINE_BEARINGSROUTE_LINE_JAGGEDROUTE_LINE_SELF_INTERSECTS";
  unk_27C4B08 = 17;
  dword_27C4B10 = 12;
  qword_27C4B18 = "NONEOUTSIDE_OF_TRANSPORT_NETWORK_POLYGONSOUT_OF_SEGMENT_BOUNDS_IN_OPPOSITE_TRAVEL_DIRECTIONOUT_OF_SEGMENT_BOUNDS_IN_TRAVEL_DIRECTIONROUTE_LINE_DIFFERS_FROM_CENTER_LINE_BEARINGSROUTE_LINE_JAGGEDROUTE_LINE_SELF_INTERSECTS";
  unk_27C4B20 = 4;
  dword_27C4B28 = 1;
  qword_27C4B30 = "OUTSIDE_OF_TRANSPORT_NETWORK_POLYGONSOUT_OF_SEGMENT_BOUNDS_IN_OPPOSITE_TRAVEL_DIRECTIONOUT_OF_SEGMENT_BOUNDS_IN_TRAVEL_DIRECTIONROUTE_LINE_DIFFERS_FROM_CENTER_LINE_BEARINGSROUTE_LINE_JAGGEDROUTE_LINE_SELF_INTERSECTS";
  unk_27C4B38 = 37;
  dword_27C4B40 = 8;
  qword_27C4B48 = "OUT_OF_SEGMENT_BOUNDS_IN_OPPOSITE_TRAVEL_DIRECTIONOUT_OF_SEGMENT_BOUNDS_IN_TRAVEL_DIRECTIONROUTE_LINE_DIFFERS_FROM_CENTER_LINE_BEARINGSROUTE_LINE_JAGGEDROUTE_LINE_SELF_INTERSECTS";
  unk_27C4B50 = 50;
  dword_27C4B58 = 3;
  qword_27C4B60 = "OUT_OF_SEGMENT_BOUNDS_IN_TRAVEL_DIRECTIONROUTE_LINE_DIFFERS_FROM_CENTER_LINE_BEARINGSROUTE_LINE_JAGGEDROUTE_LINE_SELF_INTERSECTS";
  unk_27C4B68 = 41;
  dword_27C4B70 = 2;
  qword_27C4B78 = "ROUTE_LINE_DIFFERS_FROM_CENTER_LINE_BEARINGSROUTE_LINE_JAGGEDROUTE_LINE_SELF_INTERSECTS";
  unk_27C4B80 = 44;
  dword_27C4B88 = 6;
  qword_27C4B90 = "ROUTE_LINE_JAGGEDROUTE_LINE_SELF_INTERSECTS";
  unk_27C4B98 = 17;
  dword_27C4BA0 = 5;
  qword_27C4BA8 = "ROUTE_LINE_SELF_INTERSECTS";
  unk_27C4BB0 = 26;
  dword_27C4BB8 = 4;
  qword_27C4BC0 = "EXTREMEHIGHLOWMEDIUMNO_ISSUE";
  *algn_27C4BC8 = 7;
  dword_27C4BD0 = 4;
  qword_27C4BD8 = "HIGHLOWMEDIUMNO_ISSUE";
  unk_27C4BE0 = 4;
  dword_27C4BE8 = 3;
  qword_27C4BF0 = "LOWMEDIUMNO_ISSUE";
  unk_27C4BF8 = 3;
  dword_27C4C00 = 1;
  qword_27C4C08 = "MEDIUMNO_ISSUE";
  unk_27C4C10 = 6;
  dword_27C4C18 = 2;
  qword_27C4C20 = "NO_ISSUE";
  unk_27C4C28 = 8;
  dword_27C4C30 = 0;
  qword_27C4C38 = "DEFAULT_LIVE_TRAFFICECONOMIC_PATH_COMPUTATIONUNKNOWN_SPECIAL_REQUEST_TREATMENT";
  unk_27C4C40 = 20;
  dword_27C4C48 = 2;
  qword_27C4C50 = "ECONOMIC_PATH_COMPUTATIONUNKNOWN_SPECIAL_REQUEST_TREATMENT";
  unk_27C4C58 = 25;
  dword_27C4C60 = 1;
  qword_27C4C68 = "UNKNOWN_SPECIAL_REQUEST_TREATMENT";
  unk_27C4C70 = 33;
  dword_27C4C78 = 0;
  qword_27C4C80 = "DANGER_TYPE_UNKNOWN";
  *algn_27C4C88 = 19;
  dword_27C4C90 = 0;
  qword_27C4C98 = "CLASSIFIER_DANGEROUS_MANEUVERSCLASSIFIER_UNKNOWN";
  unk_27C4CA0 = 30;
  dword_27C4CA8 = 1;
  qword_27C4CB0 = "CLASSIFIER_UNKNOWN";
  unk_27C4CB8 = 18;
  dword_27C4CC0 = 0;
  qword_27C4CC8 = "NAVIGATION_FEEDBACK_EVENT_TYPE_DIRECTIONSNAVIGATION_FEEDBACK_EVENT_TYPE_ETA_UPDATENAVIGATION_FEEDBACK_EVENT_TYPE_UNKNOWN";
  unk_27C4CD0 = 41;
  dword_27C4CD8 = 1;
  qword_27C4CE0 = "NAVIGATION_FEEDBACK_EVENT_TYPE_ETA_UPDATENAVIGATION_FEEDBACK_EVENT_TYPE_UNKNOWN";
  unk_27C4CE8 = 41;
  dword_27C4CF0 = 2;
  qword_27C4CF8 = "NAVIGATION_FEEDBACK_EVENT_TYPE_UNKNOWN";
  unk_27C4D00 = 38;
  dword_27C4D08 = 0;
  return result;
}

uint64_t sub_12E91B4(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_12;
    }
  }

  else if (v4)
  {
    goto LABEL_12;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (a1 != &off_276A318)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      sub_138383C(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12E929C(uint64_t a1)
{
  sub_12E91B4(a1);

  operator delete();
}

uint64_t sub_12E92D4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 7) == 0)
  {
    goto LABEL_6;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v5 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v5 + 23) & 0x80000000) == 0)
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_14;
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  **v5 = 0;
  *(v5 + 8) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    result = sub_1383878(*(result + 40));
    goto LABEL_6;
  }

  **v6 = 0;
  *(v6 + 8) = 0;
  if ((v2 & 4) != 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_12E93A4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v25 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v25, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v25 + 1);
    v7 = **v25;
    if (**v25 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v25, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v25 + 2);
      }
    }

    *v25 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 4u;
        v19 = *(a1 + 40);
        if (!v19)
        {
          v20 = *(a1 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          v19 = sub_13840C4(v21);
          *(a1 + 40) = v19;
          v6 = *v25;
        }

        v15 = sub_21F8898(a3, v19, v6);
        goto LABEL_34;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v18 = (a1 + 32);
        goto LABEL_33;
      }
    }

    else if (v10 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v22 = *(a1 + 8);
      v17 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v17 = *v17;
      }

      v18 = (a1 + 24);
LABEL_33:
      v23 = sub_194DB04(v18, v17);
      v15 = sub_1958890(v23, *v25, a3);
      goto LABEL_34;
    }

    if (v7)
    {
      v12 = (v7 & 7) == 4;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return *v25;
      }

LABEL_40:
      *v25 = 0;
      return *v25;
    }

    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v6 = *v25;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
LABEL_34:
    *v25 = v15;
    if (!v15)
    {
      goto LABEL_40;
    }
  }

  return *v25;
}

char *sub_12E957C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 40);
  *v4 = 26;
  v8 = *(v7 + 20);
  v4[1] = v8;
  if (v8 > 0x7F)
  {
    v9 = sub_19575D0(v8, v4 + 1);
  }

  else
  {
    v9 = v4 + 2;
  }

  v4 = sub_1383BD4(v7, v9, a3);
LABEL_13:
  v10 = *(a1 + 8);
  if ((v10 & 1) == 0)
  {
    return v4;
  }

  v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
  v13 = *(v12 + 31);
  if (v13 < 0)
  {
    v14 = *(v12 + 8);
    v13 = *(v12 + 16);
  }

  else
  {
    v14 = (v12 + 8);
  }

  if ((*a3 - v4) >= v13)
  {
    v15 = v13;
    memcpy(v4, v14, v13);
    v4 += v15;
    return v4;
  }

  return sub_1957130(a3, v14, v13, v4);
}

uint64_t sub_12E96D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_14;
  }

  if (v2)
  {
    v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v10 = sub_1383D30(*(a1 + 40));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_14:
  v11 = *(a1 + 8);
  if (v11)
  {
    v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    v3 += v14;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_12E97F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 7) == 0)
  {
    goto LABEL_20;
  }

  if (v4)
  {
    v5 = *(a2 + 24);
    *(a1 + 16) |= 1u;
    v6 = *(a1 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    sub_194EA1C((a1 + 24), (v5 & 0xFFFFFFFFFFFFFFFELL), v7);
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  v8 = *(a2 + 32);
  *(a1 + 16) |= 2u;
  v9 = *(a1 + 8);
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v10;
  }

  sub_194EA1C((a1 + 32), (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
  if ((v4 & 4) != 0)
  {
LABEL_12:
    *(a1 + 16) |= 4u;
    v11 = *(a1 + 40);
    if (!v11)
    {
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v11 = sub_13840C4(v13);
      *(a1 + 40) = v11;
    }

    if (*(a2 + 40))
    {
      v14 = *(a2 + 40);
    }

    else
    {
      v14 = &off_276D250;
    }

    sub_1383EDC(v11, v14);
  }

LABEL_20:
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_12E9938(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_14;
    }
  }

  else if (v4)
  {
    goto LABEL_14;
  }

  v5 = (a1 + 88);
  if (*(a1 + 88) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_276A348)
  {
    v6 = *(a1 + 96);
    if (v6)
    {
      sub_12E91B4(v6);
      operator delete();
    }

    v7 = *(a1 + 104);
    if (v7)
    {
      sub_1547884(v7);
      operator delete();
    }

    v8 = *(a1 + 112);
    if (v8)
    {
      sub_17A2F70(v8);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_13116B0((a1 + 64));
  sub_1956AFC((a1 + 40));
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12E9A60(uint64_t a1)
{
  sub_12E9938(a1);

  operator delete();
}

uint64_t sub_12E9A98(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_12A41D0(a1 + 40);
  v3 = *(a1 + 72);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 80) + 8);
    do
    {
      v5 = *v4++;
      result = sub_182446C(v5);
      --v3;
    }

    while (v3);
    *(a1 + 72) = 0;
  }

  v6 = *(a1 + 16);
  if ((v6 & 0xF) == 0)
  {
    goto LABEL_11;
  }

  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_21:
    result = sub_12E92D4(*(a1 + 96));
    if ((v6 & 4) == 0)
    {
LABEL_9:
      if ((v6 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_22;
  }

  v9 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v9 + 23) < 0)
  {
    **v9 = 0;
    *(v9 + 8) = 0;
    if ((v6 & 2) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *v9 = 0;
    *(v9 + 23) = 0;
    if ((v6 & 2) != 0)
    {
      goto LABEL_21;
    }
  }

LABEL_8:
  if ((v6 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_22:
  result = sub_14D28E4(*(a1 + 104));
  if ((v6 & 8) != 0)
  {
LABEL_10:
    result = sub_17A2FAC(*(a1 + 112));
  }

LABEL_11:
  if ((v6 & 0x30) != 0)
  {
    *(a1 + 128) = 0;
    *(a1 + 120) = 0;
  }

  v8 = *(a1 + 8);
  v7 = a1 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_12E9BA4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v60 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v60, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v60 + 1);
    v8 = **v60;
    if (**v60 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v60, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v60 + 2);
      }
    }

    *v60 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 4)
    {
      if (v8 >> 3 <= 2)
      {
        if (v11 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_98;
          }

          *(a1 + 16) |= 2u;
          v31 = *(a1 + 96);
          if (!v31)
          {
            v32 = *(a1 + 8);
            v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
            if (v32)
            {
              v33 = *v33;
            }

            v31 = sub_12F1808(v33);
            *(a1 + 96) = v31;
            v7 = *v60;
          }

          v23 = sub_21F4FA0(a3, v31, v7);
        }

        else
        {
          if (v11 != 2 || v8 != 18)
          {
            goto LABEL_98;
          }

          *(a1 + 16) |= 4u;
          v19 = *(a1 + 104);
          if (!v19)
          {
            v20 = *(a1 + 8);
            v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
            if (v20)
            {
              v21 = *v21;
            }

            sub_155218C(v21);
            v19 = v22;
            *(a1 + 104) = v22;
            v7 = *v60;
          }

          v23 = sub_21F36E0(a3, v19, v7);
        }

LABEL_105:
        *v60 = v23;
        if (!v23)
        {
          goto LABEL_112;
        }

        goto LABEL_106;
      }

      if (v11 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_98;
        }

        *(a1 + 16) |= 8u;
        v34 = *(a1 + 112);
        if (!v34)
        {
          v35 = *(a1 + 8);
          v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
          if (v35)
          {
            v36 = *v36;
          }

          v34 = sub_185DD6C(v36);
          *(a1 + 112) = v34;
          v7 = *v60;
        }

        v23 = sub_21F5810(a3, v34, v7);
        goto LABEL_105;
      }

      if (v11 != 4 || v8 != 32)
      {
        goto LABEL_98;
      }

      v24 = v7 + 1;
      v25 = *v7;
      if (v25 < 0)
      {
        v26 = *v24;
        v27 = (v26 << 7) + v25;
        LODWORD(v25) = v27 - 128;
        if (v26 < 0)
        {
          *v60 = sub_19587DC(v7, (v27 - 128));
          if (!*v60)
          {
            goto LABEL_112;
          }

          LODWORD(v25) = v54;
          goto LABEL_41;
        }

        v24 = v7 + 2;
      }

      *v60 = v24;
LABEL_41:
      if (sub_12AE1F4(v25))
      {
        *(a1 + 16) |= 0x20u;
        *(a1 + 128) = v25;
      }

      else
      {
        sub_12E8500();
      }

      goto LABEL_106;
    }

    if (v8 >> 3 <= 6)
    {
      break;
    }

    if (v11 != 7)
    {
      if (v11 == 8)
      {
        if (v8 == 66)
        {
          v46 = v7 - 1;
          while (1)
          {
            v47 = (v46 + 1);
            *v60 = v46 + 1;
            v48 = *(a1 + 56);
            if (v48 && (v49 = *(a1 + 48), v49 < *v48))
            {
              *(a1 + 48) = v49 + 1;
              v50 = *&v48[2 * v49 + 2];
            }

            else
            {
              v51 = *(a1 + 40);
              if (!v51)
              {
                operator new();
              }

              *v53 = v52;
              v53[1] = sub_195A650;
              *v52 = 0;
              v52[1] = 0;
              v52[2] = 0;
              v50 = sub_19593CC(a1 + 40, v52);
              v47 = *v60;
            }

            v46 = sub_1958890(v50, v47, a3);
            *v60 = v46;
            if (!v46)
            {
              goto LABEL_112;
            }

            if (*a3 <= v46 || *v46 != 66)
            {
              goto LABEL_106;
            }
          }
        }
      }

      else if (v11 == 9 && v8 == 74)
      {
        v12 = v7 - 1;
        while (1)
        {
          v13 = v12 + 1;
          *v60 = v12 + 1;
          v14 = *(a1 + 80);
          if (v14 && (v15 = *(a1 + 72), v15 < *v14))
          {
            *(a1 + 72) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = sub_186357C(*(a1 + 64));
            v16 = sub_19593CC(a1 + 64, v17);
            v13 = *v60;
          }

          v12 = sub_21F8928(a3, v16, v13);
          *v60 = v12;
          if (!v12)
          {
            goto LABEL_112;
          }

          if (*a3 <= v12 || *v12 != 74)
          {
            goto LABEL_106;
          }
        }
      }

      goto LABEL_98;
    }

    if (v8 != 56)
    {
      goto LABEL_98;
    }

    v5 |= 0x10u;
    v38 = v7 + 1;
    v37 = *v7;
    if ((v37 & 0x8000000000000000) == 0)
    {
      goto LABEL_65;
    }

    v39 = *v38;
    v37 = (v39 << 7) + v37 - 128;
    if ((v39 & 0x80000000) == 0)
    {
      v38 = v7 + 2;
LABEL_65:
      *v60 = v38;
      *(a1 + 120) = v37;
      goto LABEL_106;
    }

    v55 = sub_19587DC(v7, v37);
    *v60 = v55;
    *(a1 + 120) = v56;
    if (!v55)
    {
      goto LABEL_112;
    }

LABEL_106:
    if (sub_195ADC0(a3, v60, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 5)
  {
    if (v11 != 6 || v8 != 50)
    {
      goto LABEL_98;
    }

    *(a1 + 16) |= 1u;
    v28 = *(a1 + 8);
    v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
    if (v28)
    {
      v29 = *v29;
    }

    v30 = sub_194DB04((a1 + 88), v29);
    v23 = sub_1958890(v30, *v60, a3);
    goto LABEL_105;
  }

  if (v8 == 40)
  {
    v40 = v7 - 1;
    while (1)
    {
      *v60 = v40 + 1;
      v41 = v40[1];
      if (v41 < 0)
      {
        v42 = (v40[2] << 7) + v41;
        v41 = (v42 - 128);
        if (v40[2] < 0)
        {
          v40 = sub_19587DC((v40 + 1), (v42 - 128));
          v41 = v43;
        }

        else
        {
          v40 += 3;
        }
      }

      else
      {
        v40 += 2;
      }

      *v60 = v40;
      v44 = *(a1 + 24);
      if (v44 == *(a1 + 28))
      {
        v45 = v44 + 1;
        sub_1959094((a1 + 24), v44 + 1);
        *(*(a1 + 32) + 8 * v44) = v41;
        v40 = *v60;
      }

      else
      {
        *(*(a1 + 32) + 8 * v44) = v41;
        v45 = v44 + 1;
      }

      *(a1 + 24) = v45;
      if (!v40)
      {
        goto LABEL_112;
      }

      if (*a3 <= v40 || *v40 != 40)
      {
        goto LABEL_106;
      }
    }
  }

  if (v8 == 42)
  {
    v23 = sub_1958938((a1 + 24), v7, a3);
    goto LABEL_105;
  }

LABEL_98:
  if (v8)
  {
    v57 = (v8 & 7) == 4;
  }

  else
  {
    v57 = 1;
  }

  if (!v57)
  {
    v58 = *(a1 + 8);
    if (v58)
    {
      v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v59 = sub_11F1920((a1 + 8));
      v7 = *v60;
    }

    v23 = sub_1952690(v8, v59, v7, a3);
    goto LABEL_105;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_112:
  *v60 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v60;
}

char *sub_12EA184(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v8 = *(a1 + 96);
    *v4 = 10;
    v9 = *(v8 + 20);
    v4[1] = v9;
    if (v9 > 0x7F)
    {
      v10 = sub_19575D0(v9, v4 + 1);
    }

    else
    {
      v10 = v4 + 2;
    }

    v4 = sub_12E957C(v8, v10, a3);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_18:
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v14 = *(a1 + 112);
      *v4 = 26;
      v15 = *(v14 + 44);
      v4[1] = v15;
      if (v15 > 0x7F)
      {
        v16 = sub_19575D0(v15, v4 + 1);
      }

      else
      {
        v16 = v4 + 2;
      }

      v4 = sub_17A31A8(v14, v16, a3);
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_24;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 104);
  *v4 = 18;
  v12 = *(v11 + 20);
  v4[1] = v12;
  if (v12 > 0x7F)
  {
    v13 = sub_19575D0(v12, v4 + 1);
  }

  else
  {
    v13 = v4 + 2;
  }

  v4 = sub_15480D4(v11, v13, a3);
  if ((v6 & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_4:
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    v7 = v4;
    goto LABEL_31;
  }

LABEL_24:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v17 = *(a1 + 128);
  *v4 = 32;
  v4[1] = v17;
  if (v17 > 0x7F)
  {
    v4[1] = v17 | 0x80;
    v18 = v17 >> 7;
    v4[2] = v17 >> 7;
    v7 = v4 + 3;
    if (v17 >= 0x4000)
    {
      LOBYTE(v4) = v4[2];
      do
      {
        *(v7 - 1) = v4 | 0x80;
        v4 = (v18 >> 7);
        *v7++ = v18 >> 7;
        v19 = v18 >> 14;
        v18 >>= 7;
      }

      while (v19);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_31:
  v20 = *(a1 + 24);
  if (v20 < 1)
  {
    v23 = v7;
  }

  else
  {
    for (i = 0; i != v20; ++i)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v22 = *(*(a1 + 32) + 8 * i);
      *v7 = 40;
      v7[1] = v22;
      if (v22 > 0x7F)
      {
        v7[1] = v22 | 0x80;
        v24 = v22 >> 7;
        v7[2] = v22 >> 7;
        v23 = v7 + 3;
        if (v22 >= 0x4000)
        {
          LOBYTE(v7) = v7[2];
          do
          {
            *(v23 - 1) = v7 | 0x80;
            v7 = (v24 >> 7);
            *v23++ = v24 >> 7;
            v25 = v24 >> 14;
            v24 >>= 7;
          }

          while (v25);
        }
      }

      else
      {
        v23 = v7 + 2;
      }

      v7 = v23;
    }
  }

  if (v6)
  {
    v23 = sub_128AEEC(a3, 6, (*(a1 + 88) & 0xFFFFFFFFFFFFFFFELL), v23);
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v23)
    {
      v23 = sub_225EB68(a3, v23);
    }

    v27 = *(a1 + 120);
    *v23 = 56;
    v23[1] = v27;
    if (v27 > 0x7F)
    {
      v23[1] = v27 | 0x80;
      v28 = v27 >> 7;
      v23[2] = v27 >> 7;
      v26 = v23 + 3;
      if (v27 >= 0x4000)
      {
        LOBYTE(v29) = v23[2];
        do
        {
          *(v26 - 1) = v29 | 0x80;
          v29 = v28 >> 7;
          *v26++ = v28 >> 7;
          v30 = v28 >> 14;
          v28 >>= 7;
        }

        while (v30);
      }
    }

    else
    {
      v26 = v23 + 2;
    }
  }

  else
  {
    v26 = v23;
  }

  v31 = *(a1 + 48);
  if (v31 >= 1)
  {
    v32 = 8;
    do
    {
      v33 = *(*(a1 + 56) + v32);
      v34 = *(v33 + 23);
      if (v34 < 0 && (v34 = v33[1], v34 > 127) || (*a3 - v26 + 14) < v34)
      {
        v26 = sub_1957480(a3, 8, v33, v26);
      }

      else
      {
        *v26 = 66;
        v26[1] = v34;
        if (*(v33 + 23) < 0)
        {
          v33 = *v33;
        }

        v35 = v26 + 2;
        memcpy(v35, v33, v34);
        v26 = &v35[v34];
      }

      v32 += 8;
      --v31;
    }

    while (v31);
  }

  v36 = *(a1 + 72);
  if (v36)
  {
    for (j = 0; j != v36; ++j)
    {
      if (*a3 <= v26)
      {
        v26 = sub_225EB68(a3, v26);
      }

      v38 = *(*(a1 + 80) + 8 * j + 8);
      *v26 = 74;
      v39 = *(v38 + 20);
      v26[1] = v39;
      if (v39 > 0x7F)
      {
        v40 = sub_19575D0(v39, v26 + 1);
      }

      else
      {
        v40 = v26 + 2;
      }

      v26 = sub_1824668(v38, v40, a3);
    }
  }

  v41 = *(a1 + 8);
  if ((v41 & 1) == 0)
  {
    return v26;
  }

  v43 = v41 & 0xFFFFFFFFFFFFFFFCLL;
  v44 = *(v43 + 31);
  if (v44 < 0)
  {
    v45 = *(v43 + 8);
    v44 = *(v43 + 16);
  }

  else
  {
    v45 = (v43 + 8);
  }

  if ((*a3 - v26) >= v44)
  {
    v46 = v44;
    memcpy(v26, v45, v44);
    v26 += v46;
    return v26;
  }

  return sub_1957130(a3, v45, v44, v26);
}

uint64_t sub_12EA66C(uint64_t a1)
{
  v2 = sub_1959F14((a1 + 24));
  v3 = *(a1 + 48);
  v4 = v2 + *(a1 + 24) + v3;
  if (v3 >= 1)
  {
    v5 = (*(a1 + 56) + 8);
    do
    {
      v6 = *v5++;
      v7 = *(v6 + 23);
      v8 = *(v6 + 8);
      if ((v7 & 0x80u) == 0)
      {
        v8 = v7;
      }

      v4 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      --v3;
    }

    while (v3);
  }

  v9 = *(a1 + 72);
  v10 = v4 + v9;
  v11 = *(a1 + 80);
  if (v11)
  {
    v12 = (v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  if (v9)
  {
    v13 = 8 * v9;
    do
    {
      v14 = *v12++;
      v15 = sub_1824750(v14);
      v10 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      v13 -= 8;
    }

    while (v13);
  }

  v16 = *(a1 + 16);
  if ((v16 & 0x3F) != 0)
  {
    if (v16)
    {
      v22 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
      v23 = *(v22 + 23);
      v24 = *(v22 + 8);
      if ((v23 & 0x80u) == 0)
      {
        v24 = v23;
      }

      v10 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v16 & 2) == 0)
      {
LABEL_15:
        if ((v16 & 4) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_29;
      }
    }

    else if ((v16 & 2) == 0)
    {
      goto LABEL_15;
    }

    v25 = sub_12E96D4(*(a1 + 96));
    v10 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v16 & 4) == 0)
    {
LABEL_16:
      if ((v16 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_30;
    }

LABEL_29:
    v26 = sub_1548710(*(a1 + 104));
    v10 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v16 & 8) == 0)
    {
LABEL_17:
      if ((v16 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_31;
    }

LABEL_30:
    v27 = sub_17A3294(*(a1 + 112));
    v10 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v16 & 0x10) == 0)
    {
LABEL_18:
      if ((v16 & 0x20) == 0)
      {
        goto LABEL_23;
      }

LABEL_19:
      v17 = *(a1 + 128);
      v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v17 >= 0)
      {
        v19 = v18;
      }

      else
      {
        v19 = 11;
      }

      v10 += v19;
      goto LABEL_23;
    }

LABEL_31:
    v10 += ((9 * (__clz(*(a1 + 120) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v16 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

LABEL_23:
  v20 = *(a1 + 8);
  if (v20)
  {
    v28 = v20 & 0xFFFFFFFFFFFFFFFCLL;
    v29 = *((v20 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v29 < 0)
    {
      v29 = *(v28 + 16);
    }

    v10 += v29;
  }

  *(a1 + 20) = v10;
  return v10;
}

void sub_12EA8C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = (a1 + 24);
    v6 = *(a1 + 24);
    sub_1959094((a1 + 24), v6 + v4);
    v7 = *(a1 + 32);
    *v5 += *(a2 + 24);
    memcpy((v7 + 8 * v6), *(a2 + 32), 8 * *(a2 + 24));
  }

  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = *(a2 + 56);
    v10 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_1201B48((a1 + 40), v10, (v9 + 8), v8, **(a1 + 56) - *(a1 + 48));
    v11 = *(a1 + 48) + v8;
    *(a1 + 48) = v11;
    v12 = *(a1 + 56);
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 72);
  if (v13)
  {
    v14 = *(a2 + 80);
    v15 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_13118C0((a1 + 64), v15, (v14 + 8), v13, **(a1 + 80) - *(a1 + 72));
    v16 = *(a1 + 72) + v13;
    *(a1 + 72) = v16;
    v17 = *(a1 + 80);
    if (*v17 < v16)
    {
      *v17 = v16;
    }
  }

  v18 = *(a2 + 16);
  if ((v18 & 0x3F) != 0)
  {
    if (v18)
    {
      v20 = *(a2 + 88);
      *(a1 + 16) |= 1u;
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      sub_194EA1C((a1 + 88), (v20 & 0xFFFFFFFFFFFFFFFELL), v22);
      if ((v18 & 2) == 0)
      {
LABEL_12:
        if ((v18 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_33;
      }
    }

    else if ((v18 & 2) == 0)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 2u;
    v23 = *(a1 + 96);
    if (!v23)
    {
      v24 = *(a1 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v23 = sub_12F1808(v25);
      *(a1 + 96) = v23;
    }

    if (*(a2 + 96))
    {
      v26 = *(a2 + 96);
    }

    else
    {
      v26 = &off_276A318;
    }

    sub_12E97F4(v23, v26);
    if ((v18 & 4) == 0)
    {
LABEL_13:
      if ((v18 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_41;
    }

LABEL_33:
    *(a1 + 16) |= 4u;
    v27 = *(a1 + 104);
    if (!v27)
    {
      v28 = *(a1 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      sub_155218C(v29);
      *(a1 + 104) = v27;
    }

    if (*(a2 + 104))
    {
      v30 = *(a2 + 104);
    }

    else
    {
      v30 = &off_2776D50;
    }

    sub_14D3AD8(v27, v30);
    if ((v18 & 8) == 0)
    {
LABEL_14:
      if ((v18 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_49;
    }

LABEL_41:
    *(a1 + 16) |= 8u;
    v31 = *(a1 + 112);
    if (!v31)
    {
      v32 = *(a1 + 8);
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      v31 = sub_185DD6C(v33);
      *(a1 + 112) = v31;
    }

    if (*(a2 + 112))
    {
      v34 = *(a2 + 112);
    }

    else
    {
      v34 = &off_27829E0;
    }

    sub_14B7610(v31, v34);
    if ((v18 & 0x10) == 0)
    {
LABEL_15:
      if ((v18 & 0x20) == 0)
      {
LABEL_17:
        *(a1 + 16) |= v18;
        goto LABEL_18;
      }

LABEL_16:
      *(a1 + 128) = *(a2 + 128);
      goto LABEL_17;
    }

LABEL_49:
    *(a1 + 120) = *(a2 + 120);
    if ((v18 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_18:
  v19 = *(a2 + 8);
  if (v19)
  {

    sub_1957EF4((a1 + 8), (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_12EAB84(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 4) != 0)
  {
    result = sub_14D3EC8(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) == 0)
  {
    return 1;
  }

  result = sub_17A332C(*(a1 + 112));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_12EABE0(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_11;
    }
  }

  else if (v4)
  {
    goto LABEL_11;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C((a1 + 40));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_11:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12EACAC(uint64_t a1)
{
  sub_12EABE0(a1);

  operator delete();
}

uint64_t sub_12EACE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    goto LABEL_17;
  }

  if (v1)
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_4:
    if ((v1 & 4) == 0)
    {
      goto LABEL_17;
    }

LABEL_14:
    v4 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
    }

    goto LABEL_17;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_10:
  v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v3 + 23) < 0)
  {
    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v1 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  *v3 = 0;
  *(v3 + 23) = 0;
  if ((v1 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  v6 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v6)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_12EAD9C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v23 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v23, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v23 + 1);
    v7 = **v23;
    if (**v23 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v23, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v23 + 2);
      }
    }

    *v23 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 4u;
        v19 = *(a1 + 8);
        v17 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v17 = *v17;
        }

        v18 = (a1 + 40);
        goto LABEL_31;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v18 = (a1 + 32);
        goto LABEL_31;
      }
    }

    else if (v10 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v20 = *(a1 + 8);
      v17 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v17 = *v17;
      }

      v18 = (a1 + 24);
LABEL_31:
      v21 = sub_194DB04(v18, v17);
      v15 = sub_1958890(v21, *v23, a3);
      goto LABEL_32;
    }

    if (v7)
    {
      v12 = (v7 & 7) == 4;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return *v23;
      }

LABEL_38:
      *v23 = 0;
      return *v23;
    }

    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v6 = *v23;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
LABEL_32:
    *v23 = v15;
    if (!v15)
    {
      goto LABEL_38;
    }
  }

  return *v23;
}

char *sub_12EAF58(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) != 0)
  {
LABEL_4:
    v4 = sub_128AEEC(a3, 3, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_5:
  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
  v10 = *(v9 + 31);
  if (v10 < 0)
  {
    v11 = *(v9 + 8);
    v10 = *(v9 + 16);
  }

  else
  {
    v11 = (v9 + 8);
  }

  if ((*a3 - v4) >= v10)
  {
    v12 = v10;
    memcpy(v4, v11, v10);
    v4 += v12;
    return v4;
  }

  return sub_1957130(a3, v11, v10, v4);
}

uint64_t sub_12EB06C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_16;
  }

  if (v1)
  {
    v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v6 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    v9 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
  v12 = *(a1 + 8);
  if (v12)
  {
    v14 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v2 += v15;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_12EB184(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 7) == 0)
  {
    goto LABEL_15;
  }

  if (v4)
  {
    v5 = *(a2 + 24);
    *(a1 + 16) |= 1u;
    v6 = *(a1 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    sub_194EA1C((a1 + 24), (v5 & 0xFFFFFFFFFFFFFFFELL), v7);
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  v8 = *(a2 + 32);
  *(a1 + 16) |= 2u;
  v9 = *(a1 + 8);
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v10;
  }

  sub_194EA1C((a1 + 32), (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
  if ((v4 & 4) != 0)
  {
LABEL_12:
    v11 = *(a2 + 40);
    *(a1 + 16) |= 4u;
    v12 = *(a1 + 8);
    v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
    if (v12)
    {
      v13 = *v13;
    }

    sub_194EA1C((a1 + 40), (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
  }

LABEL_15:
  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_12EB2B0(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26D1EC0;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = a2;
  *(a1 + 136) = 0;
  *(a1 + 144) = a2;
  *(a1 + 152) = &qword_278E990;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 175) = 0x101010100000000;
  *(a1 + 183) = 1;
  return a1;
}

void sub_12EB364(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_12EB394(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_12;
    }
  }

  else if (v4)
  {
    goto LABEL_12;
  }

  v5 = (a1 + 152);
  if (*(a1 + 152) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_276A3D0)
  {
    v6 = *(a1 + 160);
    if (v6)
    {
      sub_16E4E08(v6);
      operator delete();
    }

    v7 = *(a1 + 168);
    if (v7)
    {
      sub_16E5B34(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_1956ABC(a1 + 136);
  sub_1956ABC(a1 + 120);
  sub_12E4E7C((a1 + 96));
  sub_1956AFC((a1 + 72));
  sub_1311734((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12EB4B8(uint64_t a1)
{
  sub_12EB394(a1);

  operator delete();
}

uint64_t sub_12EB4F0(uint64_t a1)
{
  sub_1951124((a1 + 16));
  v2 = *(a1 + 56);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 64) + 8);
    do
    {
      v4 = *v3++;
      sub_12ECF20(v4);
      --v2;
    }

    while (v2);
    *(a1 + 56) = 0;
  }

  result = sub_12A41D0(a1 + 72);
  v6 = *(a1 + 104);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 112) + 8);
    do
    {
      v8 = *v7++;
      result = sub_12E92D4(v8);
      --v6;
    }

    while (v6);
    *(a1 + 104) = 0;
  }

  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  v9 = *(a1 + 40);
  if ((v9 & 7) == 0)
  {
    goto LABEL_14;
  }

  if ((v9 & 1) == 0)
  {
    if ((v9 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

  v12 = *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v12 + 23) < 0)
  {
    **v12 = 0;
    *(v12 + 8) = 0;
    if ((v9 & 2) != 0)
    {
      goto LABEL_26;
    }

LABEL_12:
    if ((v9 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  *v12 = 0;
  *(v12 + 23) = 0;
  if ((v9 & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_26:
  result = sub_16E4E44(*(a1 + 160));
  if ((v9 & 4) != 0)
  {
LABEL_13:
    result = sub_16E5B70(*(a1 + 168));
  }

LABEL_14:
  *(a1 + 178) = 0;
  *(a1 + 176) = 0;
  if ((v9 & 0xC0) != 0)
  {
    *(a1 + 179) = 257;
  }

  if ((v9 & 0x700) != 0)
  {
    *(a1 + 181) = 257;
    *(a1 + 183) = 1;
  }

  v11 = *(a1 + 8);
  v10 = a1 + 8;
  *(v10 + 32) = 0;
  if (v11)
  {

    return sub_1957EA8(v10);
  }

  return result;
}

uint64_t sub_12EB640(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v102 = a2;
  v6 = 0;
  if (sub_195ADC0(a3, v102, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  v8 = (a1 + 8);
  while (2)
  {
    v9 = (*v102 + 1);
    v10 = **v102;
    if (**v102 < 0)
    {
      v11 = *v9;
      v12 = v10 + (v11 << 7);
      v10 = v12 - 128;
      if (v11 < 0)
      {
        v9 = sub_1958824(*v102, v12 - 128);
        v10 = v13;
      }

      else
      {
        v9 = (*v102 + 2);
      }
    }

    *v102 = v9;
    switch(v10 >> 3)
    {
      case 1u:
        if (v10 != 10)
        {
          goto LABEL_152;
        }

        v14 = v9 - 1;
        while (1)
        {
          v15 = v14 + 1;
          *v102 = v14 + 1;
          v16 = *(a1 + 64);
          if (v16 && (v17 = *(a1 + 56), v17 < *v16))
          {
            *(a1 + 56) = v17 + 1;
            v18 = *&v16[2 * v17 + 2];
          }

          else
          {
            v19 = sub_12F1A38(*(a1 + 48));
            v18 = sub_19593CC(a1 + 48, v19);
            v15 = *v102;
          }

          v14 = sub_21F89B8(a3, v18, v15);
          *v102 = v14;
          if (!v14)
          {
            goto LABEL_167;
          }

          if (*a3 <= v14 || *v14 != 10)
          {
            goto LABEL_162;
          }
        }

      case 2u:
        if (v10 != 18)
        {
          goto LABEL_152;
        }

        *(a1 + 40) |= 1u;
        v46 = *(a1 + 8);
        v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
        if (v46)
        {
          v47 = *v47;
        }

        v48 = sub_194DB04((a1 + 152), v47);
        v39 = sub_1958890(v48, *v102, a3);
        goto LABEL_161;
      case 3u:
        if (v10 != 26)
        {
          goto LABEL_152;
        }

        *(a1 + 40) |= 2u;
        v37 = *(a1 + 160);
        if (!v37)
        {
          v38 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v38 = *v38;
          }

          v37 = sub_16F5828(v38);
          *(a1 + 160) = v37;
          v9 = *v102;
        }

        v39 = sub_21F4D60(a3, v37, v9);
        goto LABEL_161;
      case 4u:
        if (v10 != 34)
        {
          goto LABEL_152;
        }

        *(a1 + 40) |= 4u;
        v71 = *(a1 + 168);
        if (!v71)
        {
          v72 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v72 = *v72;
          }

          sub_16F58FC(v72);
          v71 = v73;
          *(a1 + 168) = v73;
          v9 = *v102;
        }

        v39 = sub_21F86E8(a3, v71, v9);
        goto LABEL_161;
      case 0xAu:
        if (v10 != 80)
        {
          goto LABEL_152;
        }

        v6 |= 0x40u;
        v75 = v9 + 1;
        v74 = *v9;
        if ((v74 & 0x8000000000000000) == 0)
        {
          goto LABEL_120;
        }

        v76 = *v75;
        v74 = (v76 << 7) + v74 - 128;
        if (v76 < 0)
        {
          v93 = sub_19587DC(v9, v74);
          *v102 = v93;
          *(a1 + 179) = v94 != 0;
          if (!v93)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v75 = v9 + 2;
LABEL_120:
          *v102 = v75;
          *(a1 + 179) = v74 != 0;
        }

        goto LABEL_162;
      case 0xBu:
        if (v10 != 88)
        {
          goto LABEL_152;
        }

        v6 |= 0x80u;
        v41 = v9 + 1;
        v40 = *v9;
        if ((v40 & 0x8000000000000000) == 0)
        {
          goto LABEL_56;
        }

        v42 = *v41;
        v40 = (v42 << 7) + v40 - 128;
        if (v42 < 0)
        {
          v85 = sub_19587DC(v9, v40);
          *v102 = v85;
          *(a1 + 180) = v86 != 0;
          if (!v85)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v41 = v9 + 2;
LABEL_56:
          *v102 = v41;
          *(a1 + 180) = v40 != 0;
        }

        goto LABEL_162;
      case 0xCu:
        if (v10 != 96)
        {
          goto LABEL_152;
        }

        v6 |= 0x100u;
        v50 = v9 + 1;
        v49 = *v9;
        if ((v49 & 0x8000000000000000) == 0)
        {
          goto LABEL_70;
        }

        v51 = *v50;
        v49 = (v51 << 7) + v49 - 128;
        if (v51 < 0)
        {
          v89 = sub_19587DC(v9, v49);
          *v102 = v89;
          *(a1 + 181) = v90 != 0;
          if (!v89)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v50 = v9 + 2;
LABEL_70:
          *v102 = v50;
          *(a1 + 181) = v49 != 0;
        }

        goto LABEL_162;
      case 0xDu:
        if (v10 != 104)
        {
          goto LABEL_152;
        }

        v6 |= 0x200u;
        v53 = v9 + 1;
        v52 = *v9;
        if ((v52 & 0x8000000000000000) == 0)
        {
          goto LABEL_75;
        }

        v54 = *v53;
        v52 = (v54 << 7) + v52 - 128;
        if (v54 < 0)
        {
          v91 = sub_19587DC(v9, v52);
          *v102 = v91;
          *(a1 + 182) = v92 != 0;
          if (!v91)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v53 = v9 + 2;
LABEL_75:
          *v102 = v53;
          *(a1 + 182) = v52 != 0;
        }

        goto LABEL_162;
      case 0xEu:
        if (v10 != 112)
        {
          goto LABEL_152;
        }

        v6 |= 0x400u;
        v81 = v9 + 1;
        v80 = *v9;
        if ((v80 & 0x8000000000000000) == 0)
        {
          goto LABEL_130;
        }

        v82 = *v81;
        v80 = (v82 << 7) + v80 - 128;
        if (v82 < 0)
        {
          v97 = sub_19587DC(v9, v80);
          *v102 = v97;
          *(a1 + 183) = v98 != 0;
          if (!v97)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v81 = v9 + 2;
LABEL_130:
          *v102 = v81;
          *(a1 + 183) = v80 != 0;
        }

        goto LABEL_162;
      case 0xFu:
        if (v10 != 120)
        {
          goto LABEL_152;
        }

        v6 |= 8u;
        v78 = v9 + 1;
        v77 = *v9;
        if ((v77 & 0x8000000000000000) == 0)
        {
          goto LABEL_125;
        }

        v79 = *v78;
        v77 = (v79 << 7) + v77 - 128;
        if (v79 < 0)
        {
          v95 = sub_19587DC(v9, v77);
          *v102 = v95;
          *(a1 + 176) = v96 != 0;
          if (!v95)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v78 = v9 + 2;
LABEL_125:
          *v102 = v78;
          *(a1 + 176) = v77 != 0;
        }

        goto LABEL_162;
      case 0x10u:
        if (v10 != 130)
        {
          goto LABEL_152;
        }

        v26 = v9 - 2;
        while (1)
        {
          v27 = (v26 + 2);
          *v102 = v26 + 2;
          v28 = *(a1 + 88);
          if (v28 && (v29 = *(a1 + 80), v29 < *v28))
          {
            *(a1 + 80) = v29 + 1;
            v30 = *&v28[2 * v29 + 2];
          }

          else
          {
            v31 = *(a1 + 72);
            if (!v31)
            {
              operator new();
            }

            *v33 = v32;
            v33[1] = sub_195A650;
            *v32 = 0;
            v32[1] = 0;
            v32[2] = 0;
            v30 = sub_19593CC(a1 + 72, v32);
            v27 = *v102;
          }

          v26 = sub_1958890(v30, v27, a3);
          *v102 = v26;
          if (!v26)
          {
            goto LABEL_167;
          }

          if (*a3 <= v26 || *v26 != 386)
          {
            goto LABEL_162;
          }
        }

      case 0x11u:
        if (v10 != 136)
        {
          goto LABEL_152;
        }

        v6 |= 0x10u;
        v44 = v9 + 1;
        v43 = *v9;
        if ((v43 & 0x8000000000000000) == 0)
        {
          goto LABEL_61;
        }

        v45 = *v44;
        v43 = (v45 << 7) + v43 - 128;
        if (v45 < 0)
        {
          v87 = sub_19587DC(v9, v43);
          *v102 = v87;
          *(a1 + 177) = v88 != 0;
          if (!v87)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v44 = v9 + 2;
LABEL_61:
          *v102 = v44;
          *(a1 + 177) = v43 != 0;
        }

        goto LABEL_162;
      case 0x12u:
        if (v10 != 144)
        {
          goto LABEL_152;
        }

        v6 |= 0x20u;
        v35 = v9 + 1;
        v34 = *v9;
        if ((v34 & 0x8000000000000000) == 0)
        {
          goto LABEL_45;
        }

        v36 = *v35;
        v34 = (v36 << 7) + v34 - 128;
        if (v36 < 0)
        {
          v83 = sub_19587DC(v9, v34);
          *v102 = v83;
          *(a1 + 178) = v84 != 0;
          if (!v83)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v35 = v9 + 2;
LABEL_45:
          *v102 = v35;
          *(a1 + 178) = v34 != 0;
        }

        goto LABEL_162;
      case 0x14u:
        if (v10 != 162)
        {
          goto LABEL_152;
        }

        v20 = v9 - 2;
        while (1)
        {
          v21 = v20 + 2;
          *v102 = v20 + 2;
          v22 = *(a1 + 112);
          if (v22 && (v23 = *(a1 + 104), v23 < *v22))
          {
            *(a1 + 104) = v23 + 1;
            v24 = *&v22[2 * v23 + 2];
          }

          else
          {
            v25 = sub_12F1808(*(a1 + 96));
            v24 = sub_19593CC(a1 + 96, v25);
            v21 = *v102;
          }

          v20 = sub_21F4FA0(a3, v24, v21);
          *v102 = v20;
          if (!v20)
          {
            goto LABEL_167;
          }

          if (*a3 <= v20 || *v20 != 418)
          {
            goto LABEL_162;
          }
        }

      case 0x15u:
        if (v10 == 168)
        {
          v55 = (v9 - 2);
          while (1)
          {
            *v102 = v55 + 2;
            v56 = *(v55 + 2);
            v57 = (v55 + 3);
            if (v56 < 0)
            {
              v58 = *v57;
              v59 = (v58 << 7) + v56;
              LODWORD(v56) = v59 - 128;
              if (v58 < 0)
              {
                *v102 = sub_19587DC(v55 + 2, (v59 - 128));
                if (!*v102)
                {
                  goto LABEL_167;
                }

                LODWORD(v56) = v62;
                goto LABEL_82;
              }

              v57 = (v55 + 4);
            }

            *v102 = v57;
LABEL_82:
            if (sub_14E9E48(v56))
            {
              v60 = *(a1 + 120);
              if (v60 == *(a1 + 124))
              {
                v61 = v60 + 1;
                sub_1958E5C((a1 + 120), v60 + 1);
                *(*(a1 + 128) + 4 * v60) = v56;
              }

              else
              {
                *(*(a1 + 128) + 4 * v60) = v56;
                v61 = v60 + 1;
              }

              *(a1 + 120) = v61;
            }

            else
            {
              sub_1313640();
            }

            v55 = *v102;
            if (*a3 <= *v102 || **v102 != 424)
            {
              goto LABEL_162;
            }
          }
        }

        if (v10 != 170)
        {
          goto LABEL_152;
        }

        *&v103 = a1 + 120;
        *(&v103 + 1) = sub_14E9E48;
        v104 = a1 + 8;
        v99 = 21;
        goto LABEL_151;
      case 0x16u:
        if (v10 == 176)
        {
          v63 = (v9 - 2);
          while (1)
          {
            *v102 = v63 + 2;
            v64 = *(v63 + 2);
            v65 = (v63 + 3);
            if (v64 < 0)
            {
              v66 = *v65;
              v67 = (v66 << 7) + v64;
              LODWORD(v64) = v67 - 128;
              if (v66 < 0)
              {
                *v102 = sub_19587DC(v63 + 2, (v67 - 128));
                if (!*v102)
                {
                  goto LABEL_167;
                }

                LODWORD(v64) = v70;
                goto LABEL_99;
              }

              v65 = (v63 + 4);
            }

            *v102 = v65;
LABEL_99:
            if (v64 > 5)
            {
              sub_1313600();
            }

            else
            {
              v68 = *(a1 + 136);
              if (v68 == *(a1 + 140))
              {
                v69 = v68 + 1;
                sub_1958E5C((a1 + 136), v68 + 1);
                *(*(a1 + 144) + 4 * v68) = v64;
              }

              else
              {
                *(*(a1 + 144) + 4 * v68) = v64;
                v69 = v68 + 1;
              }

              *(a1 + 136) = v69;
            }

            v63 = *v102;
            if (*a3 <= *v102 || **v102 != 432)
            {
              goto LABEL_162;
            }
          }
        }

        if (v10 == 178)
        {
          *&v103 = a1 + 136;
          *(&v103 + 1) = sub_12E91A8;
          v104 = a1 + 8;
          v99 = 22;
LABEL_151:
          v105 = v99;
          v39 = sub_1216588(a3, v9, &v103, v5);
LABEL_161:
          *v102 = v39;
          if (!v39)
          {
            goto LABEL_167;
          }

LABEL_162:
          if (sub_195ADC0(a3, v102, a3[11].u32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

LABEL_152:
        if (v10)
        {
          v100 = (v10 & 7) == 4;
        }

        else
        {
          v100 = 1;
        }

        if (!v100)
        {
          if ((v10 - 80000) >> 3 > 0x3E8)
          {
            if (*v8)
            {
              v101 = (*v8 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v101 = sub_11F1920((a1 + 8));
              v9 = *v102;
            }

            v39 = sub_1952690(v10, v101, v9, a3);
          }

          else
          {
            v39 = sub_19525AC((a1 + 16), v10, v9, &off_276A3D0, (a1 + 8), a3);
          }

          goto LABEL_161;
        }

        if (v9)
        {
          a3[10].i32[0] = v10 - 1;
        }

        else
        {
LABEL_167:
          *v102 = 0;
        }

LABEL_2:
        *(a1 + 40) |= v6;
        return *v102;
      default:
        goto LABEL_152;
    }
  }
}

char *sub_12EC07C(uint64_t a1, char *a2, unint64_t *a3)
{
  v6 = *(a1 + 56);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v8 = *(*(a1 + 64) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 20);
      a2[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, a2 + 1);
      }

      else
      {
        v10 = a2 + 2;
      }

      a2 = sub_12ED31C(v8, v10, a3);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    a2 = sub_128AEEC(a3, 2, (*(a1 + 152) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v11 & 2) == 0)
    {
LABEL_11:
      if ((v11 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_11;
  }

  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v12 = *(a1 + 160);
  *a2 = 26;
  v13 = *(v12 + 44);
  a2[1] = v13;
  if (v13 > 0x7F)
  {
    v14 = sub_19575D0(v13, a2 + 1);
  }

  else
  {
    v14 = a2 + 2;
  }

  a2 = sub_16E5070(v12, v14, a3);
  if ((v11 & 4) == 0)
  {
LABEL_12:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_26:
  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v15 = *(a1 + 168);
  *a2 = 34;
  v16 = *(v15 + 20);
  a2[1] = v16;
  if (v16 > 0x7F)
  {
    v17 = sub_19575D0(v16, a2 + 1);
  }

  else
  {
    v17 = a2 + 2;
  }

  a2 = sub_16E5FE0(v15, v17, a3);
  if ((v11 & 0x40) == 0)
  {
LABEL_13:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_32:
  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v18 = *(a1 + 179);
  *a2 = 80;
  a2[1] = v18;
  a2 += 2;
  if ((v11 & 0x80) == 0)
  {
LABEL_14:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_35:
  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v19 = *(a1 + 180);
  *a2 = 88;
  a2[1] = v19;
  a2 += 2;
  if ((v11 & 0x100) == 0)
  {
LABEL_15:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_38:
  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v20 = *(a1 + 181);
  *a2 = 96;
  a2[1] = v20;
  a2 += 2;
  if ((v11 & 0x200) == 0)
  {
LABEL_16:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_41:
  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v21 = *(a1 + 182);
  *a2 = 104;
  a2[1] = v21;
  a2 += 2;
  if ((v11 & 0x400) == 0)
  {
LABEL_17:
    if ((v11 & 8) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_47;
  }

LABEL_44:
  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v22 = *(a1 + 183);
  *a2 = 112;
  a2[1] = v22;
  a2 += 2;
  if ((v11 & 8) != 0)
  {
LABEL_47:
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v23 = *(a1 + 176);
    *a2 = 120;
    a2[1] = v23;
    a2 += 2;
  }

LABEL_50:
  v24 = *(a1 + 80);
  if (v24 >= 1)
  {
    v25 = 8;
    do
    {
      v26 = *(*(a1 + 88) + v25);
      v27 = *(v26 + 23);
      if (v27 < 0 && (v27 = v26[1], v27 > 127) || (*a3 - a2 + 13) < v27)
      {
        a2 = sub_1957480(a3, 16, v26, a2);
      }

      else
      {
        *a2 = 386;
        a2[2] = v27;
        if (*(v26 + 23) < 0)
        {
          v26 = *v26;
        }

        v28 = a2 + 3;
        memcpy(a2 + 3, v26, v27);
        a2 = &v28[v27];
      }

      v25 += 8;
      --v24;
    }

    while (v24);
  }

  if ((v11 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v29 = *(a1 + 177);
    *a2 = 392;
    a2[2] = v29;
    a2 += 3;
  }

  if ((v11 & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v30 = *(a1 + 178);
    *a2 = 400;
    a2[2] = v30;
    a2 += 3;
  }

  v31 = *(a1 + 104);
  if (v31)
  {
    for (j = 0; j != v31; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v33 = *(*(a1 + 112) + 8 * j + 8);
      *a2 = 418;
      v34 = *(v33 + 20);
      a2[2] = v34;
      if (v34 > 0x7F)
      {
        v35 = sub_19575D0(v34, a2 + 2);
      }

      else
      {
        v35 = a2 + 3;
      }

      a2 = sub_12E957C(v33, v35, a3);
    }
  }

  v36 = *(a1 + 120);
  if (v36 < 1)
  {
    v39 = a2;
  }

  else
  {
    for (k = 0; k != v36; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v38 = *(*(a1 + 128) + 4 * k);
      *a2 = 424;
      a2[2] = v38;
      if (v38 > 0x7F)
      {
        a2[2] = v38 | 0x80;
        v40 = v38 >> 7;
        a2[3] = v38 >> 7;
        v39 = a2 + 4;
        if (v38 >= 0x4000)
        {
          LOBYTE(v41) = a2[3];
          do
          {
            *(v39 - 1) = v41 | 0x80;
            v41 = v40 >> 7;
            *v39++ = v40 >> 7;
            v42 = v40 >> 14;
            v40 >>= 7;
          }

          while (v42);
        }
      }

      else
      {
        v39 = a2 + 3;
      }

      a2 = v39;
    }
  }

  v43 = *(a1 + 136);
  if (v43 < 1)
  {
    v46 = v39;
  }

  else
  {
    for (m = 0; m != v43; ++m)
    {
      if (*a3 <= v39)
      {
        v39 = sub_225EB68(a3, v39);
      }

      v45 = *(*(a1 + 144) + 4 * m);
      *v39 = 432;
      v39[2] = v45;
      if (v45 > 0x7F)
      {
        v39[2] = v45 | 0x80;
        v47 = v45 >> 7;
        v39[3] = v45 >> 7;
        v46 = v39 + 4;
        if (v45 >= 0x4000)
        {
          LOBYTE(v48) = v39[3];
          do
          {
            *(v46 - 1) = v48 | 0x80;
            v48 = v47 >> 7;
            *v46++ = v47 >> 7;
            v49 = v47 >> 14;
            v47 >>= 7;
          }

          while (v49);
        }
      }

      else
      {
        v46 = v39 + 3;
      }

      v39 = v46;
    }
  }

  if (*(a1 + 26))
  {
    v46 = sub_1953428(a1 + 16, 10000, 11001, v46, a3);
  }

  v50 = *(a1 + 8);
  if ((v50 & 1) == 0)
  {
    return v46;
  }

  v52 = v50 & 0xFFFFFFFFFFFFFFFCLL;
  v53 = *(v52 + 31);
  if (v53 < 0)
  {
    v54 = *(v52 + 8);
    v53 = *(v52 + 16);
  }

  else
  {
    v54 = (v52 + 8);
  }

  if ((*a3 - v46) >= v53)
  {
    v55 = v53;
    memcpy(v46, v54, v53);
    v46 += v55;
    return v46;
  }

  return sub_1957130(a3, v54, v53, v46);
}

uint64_t sub_12EC710(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 56);
  v4 = v2 + v3;
  v5 = *(a1 + 64);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = sub_12ED54C(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 80);
  v11 = v4 + 2 * v10;
  if (v10 >= 1)
  {
    v12 = (*(a1 + 88) + 8);
    do
    {
      v13 = *v12++;
      v14 = *(v13 + 23);
      v15 = *(v13 + 8);
      if ((v14 & 0x80u) == 0)
      {
        v15 = v14;
      }

      v11 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      --v10;
    }

    while (v10);
  }

  v16 = *(a1 + 104);
  v17 = v11 + 2 * v16;
  v18 = *(a1 + 112);
  if (v18)
  {
    v19 = (v18 + 8);
  }

  else
  {
    v19 = 0;
  }

  if (v16)
  {
    v20 = 8 * v16;
    do
    {
      v21 = *v19++;
      v22 = sub_12E96D4(v21);
      v17 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      v20 -= 8;
    }

    while (v20);
  }

  v23 = *(a1 + 120);
  if (v23)
  {
    v24 = 0;
    v25 = 0;
    do
    {
      v26 = *(*(a1 + 128) + 4 * v24);
      if (v26 < 0)
      {
        v27 = 10;
      }

      else
      {
        v27 = (9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6;
      }

      v25 += v27;
      ++v24;
    }

    while (v23 != v24);
  }

  else
  {
    v25 = 0;
  }

  v28 = *(a1 + 136);
  if (v28)
  {
    v29 = 0;
    v30 = 0;
    do
    {
      v31 = *(*(a1 + 144) + 4 * v29);
      if (v31 < 0)
      {
        v32 = 10;
      }

      else
      {
        v32 = (9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6;
      }

      v30 += v32;
      ++v29;
    }

    while (v28 != v29);
  }

  else
  {
    v30 = 0;
  }

  v33 = v25 + v17 + 2 * (v28 + v23) + v30;
  v34 = *(a1 + 40);
  if (*(a1 + 40))
  {
    if (v34)
    {
      v39 = *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL;
      v40 = *(v39 + 23);
      v41 = *(v39 + 8);
      if ((v40 & 0x80u) == 0)
      {
        v41 = v40;
      }

      v33 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v34 & 2) == 0)
      {
LABEL_37:
        if ((v34 & 4) == 0)
        {
LABEL_39:
          v36 = v33 + ((v34 >> 2) & 2);
          if ((v34 & 0x10) != 0)
          {
            v36 += 3;
          }

          if ((v34 & 0x20) != 0)
          {
            v36 += 3;
          }

          v33 = v36 + ((v34 >> 6) & 2) + ((v34 >> 5) & 2);
          goto LABEL_44;
        }

LABEL_38:
        v35 = sub_16E62F4(*(a1 + 168));
        v33 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
        goto LABEL_39;
      }
    }

    else if ((v34 & 2) == 0)
    {
      goto LABEL_37;
    }

    v42 = sub_16E51F0(*(a1 + 160));
    v33 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v34 & 4) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_44:
  if ((v34 & 0x700) != 0)
  {
    result = v33 + ((v34 >> 8) & 2) + ((v34 >> 7) & 2) + ((v34 >> 9) & 2);
  }

  else
  {
    result = v33;
  }

  v38 = *(a1 + 8);
  if (v38)
  {
    v43 = v38 & 0xFFFFFFFFFFFFFFFCLL;
    v44 = *((v38 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v44 < 0)
    {
      v44 = *(v43 + 16);
    }

    result += v44;
  }

  *(a1 + 44) = result;
  return result;
}

void sub_12ECA3C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_131194C((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 80);
  if (v9)
  {
    v10 = *(a2 + 88);
    v11 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_1201B48((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 104);
  if (v14)
  {
    v15 = *(a2 + 112);
    v16 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_12E5218((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
    v17 = *(a1 + 104) + v14;
    *(a1 + 104) = v17;
    v18 = *(a1 + 112);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 120);
  if (v19)
  {
    v20 = *(a1 + 120);
    sub_1958E5C((a1 + 120), v20 + v19);
    v21 = *(a1 + 128);
    *(a1 + 120) += *(a2 + 120);
    memcpy((v21 + 4 * v20), *(a2 + 128), 4 * *(a2 + 120));
  }

  v22 = *(a2 + 136);
  if (v22)
  {
    v23 = *(a1 + 136);
    sub_1958E5C((a1 + 136), v23 + v22);
    v24 = *(a1 + 144);
    *(a1 + 136) += *(a2 + 136);
    memcpy((v24 + 4 * v23), *(a2 + 144), 4 * *(a2 + 136));
  }

  v25 = *(a2 + 40);
  if (v25)
  {
    if (v25)
    {
      v27 = *(a2 + 152);
      *(a1 + 40) |= 1u;
      v28 = *(a1 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      sub_194EA1C((a1 + 152), (v27 & 0xFFFFFFFFFFFFFFFELL), v29);
      if ((v25 & 2) == 0)
      {
LABEL_17:
        if ((v25 & 4) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_46;
      }
    }

    else if ((v25 & 2) == 0)
    {
      goto LABEL_17;
    }

    *(a1 + 40) |= 2u;
    v30 = *(a1 + 160);
    if (!v30)
    {
      v31 = *(a1 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      v30 = sub_16F5828(v32);
      *(a1 + 160) = v30;
    }

    if (*(a2 + 160))
    {
      v33 = *(a2 + 160);
    }

    else
    {
      v33 = &off_277E5E8;
    }

    sub_16E527C(v30, v33);
    if ((v25 & 4) == 0)
    {
LABEL_18:
      if ((v25 & 8) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_54;
    }

LABEL_46:
    *(a1 + 40) |= 4u;
    v34 = *(a1 + 168);
    if (!v34)
    {
      v35 = *(a1 + 8);
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
      if (v35)
      {
        v36 = *v36;
      }

      sub_16F58FC(v36);
      *(a1 + 168) = v34;
    }

    if (*(a2 + 168))
    {
      v37 = *(a2 + 168);
    }

    else
    {
      v37 = &off_277E650;
    }

    sub_16E645C(v34, v37);
    if ((v25 & 8) == 0)
    {
LABEL_19:
      if ((v25 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_55;
    }

LABEL_54:
    *(a1 + 176) = *(a2 + 176);
    if ((v25 & 0x10) == 0)
    {
LABEL_20:
      if ((v25 & 0x20) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_56;
    }

LABEL_55:
    *(a1 + 177) = *(a2 + 177);
    if ((v25 & 0x20) == 0)
    {
LABEL_21:
      if ((v25 & 0x40) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_57;
    }

LABEL_56:
    *(a1 + 178) = *(a2 + 178);
    if ((v25 & 0x40) == 0)
    {
LABEL_22:
      if ((v25 & 0x80) == 0)
      {
LABEL_24:
        *(a1 + 40) |= v25;
        goto LABEL_25;
      }

LABEL_23:
      *(a1 + 180) = *(a2 + 180);
      goto LABEL_24;
    }

LABEL_57:
    *(a1 + 179) = *(a2 + 179);
    if ((v25 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_25:
  if ((v25 & 0x700) == 0)
  {
    goto LABEL_31;
  }

  if ((v25 & 0x100) == 0)
  {
    if ((v25 & 0x200) == 0)
    {
      goto LABEL_28;
    }

LABEL_60:
    *(a1 + 182) = *(a2 + 182);
    if ((v25 & 0x400) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  *(a1 + 181) = *(a2 + 181);
  if ((v25 & 0x200) != 0)
  {
    goto LABEL_60;
  }

LABEL_28:
  if ((v25 & 0x400) != 0)
  {
LABEL_29:
    *(a1 + 183) = *(a2 + 183);
  }

LABEL_30:
  *(a1 + 40) |= v25;
LABEL_31:
  sub_225EA0C(a1 + 16, a2 + 16);
  v26 = *(a2 + 8);
  if (v26)
  {

    sub_1957EF4((a1 + 8), (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_12ECDC8(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 40);
    if ((v3 & 2) != 0)
    {
      result = sub_16E5370(*(a1 + 160));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 4) == 0)
    {
      return 1;
    }

    result = sub_16E6614(*(a1 + 168));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_12ECE30(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_9;
    }
  }

  else if (v4)
  {
    goto LABEL_9;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12ECEE8(uint64_t a1)
{
  sub_12ECE30(a1);

  operator delete();
}

uint64_t sub_12ECF20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
        if ((v1 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v2 = 0;
      *(v2 + 23) = 0;
    }

    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

LABEL_11:
  if ((v1 & 0x1C) != 0)
  {
    *(a1 + 48) = 0;
    *(a1 + 40) = 0;
  }

  v5 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_12ECFAC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v38 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v38, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v38 + 1);
    v8 = **v38;
    if (**v38 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v38, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v38 + 2);
      }
    }

    *v38 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_47;
        }

        *(a1 + 16) |= 1u;
        v27 = *(a1 + 8);
        v17 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27)
        {
          v17 = *v17;
        }

        v18 = (a1 + 24);
      }

      else
      {
        if (v11 != 2 || v8 != 18)
        {
          goto LABEL_47;
        }

        *(a1 + 16) |= 2u;
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v18 = (a1 + 32);
      }

      v28 = sub_194DB04(v18, v17);
      v29 = sub_1958890(v28, *v38, a3);
LABEL_54:
      *v38 = v29;
      if (!v29)
      {
        goto LABEL_71;
      }

      goto LABEL_55;
    }

    if (v11 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_47;
    }

    v5 |= 8u;
    v20 = v7 + 1;
    v19 = *v7;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

    v21 = *v20;
    v19 = (v21 << 7) + v19 - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_31:
      *v38 = v20;
      *(a1 + 44) = v19 != 0;
      goto LABEL_55;
    }

    v33 = sub_19587DC(v7, v19);
    *v38 = v33;
    *(a1 + 44) = v34 != 0;
    if (!v33)
    {
      goto LABEL_71;
    }

LABEL_55:
    if (sub_195ADC0(a3, v38, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 10)
  {
    if (v8 != 80)
    {
      goto LABEL_47;
    }

    v22 = v7 + 1;
    v23 = *v7;
    if ((v23 & 0x8000000000000000) != 0)
    {
      v24 = *v22;
      v25 = (v24 << 7) + v23;
      v23 = (v25 - 128);
      if (v24 < 0)
      {
        *v38 = sub_19587DC(v7, (v25 - 128));
        if (!*v38)
        {
          goto LABEL_71;
        }

        v23 = v35;
        goto LABEL_37;
      }

      v22 = v7 + 2;
    }

    *v38 = v22;
LABEL_37:
    if (v23 > 0x3C || ((1 << v23) & 0x1000070041F1FC03) == 0)
    {
      v36 = *(a1 + 8);
      if (v36)
      {
        v37 = ((v36 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }

      else
      {
        v37 = sub_11F1920((a1 + 8));
      }

      sub_19586BC(10, v23, v37);
    }

    else
    {
      *(a1 + 16) |= 0x10u;
      *(a1 + 48) = v23;
    }

    goto LABEL_55;
  }

  if (v11 == 11 && v8 == 88)
  {
    v13 = v7 + 1;
    v12 = *v7;
    if (v12 < 0)
    {
      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if (v14 < 0)
      {
        *v38 = sub_19587DC(v7, v12);
        if (!*v38)
        {
          goto LABEL_71;
        }

        goto LABEL_16;
      }

      v13 = v7 + 2;
    }

    *v38 = v13;
LABEL_16:
    if (v12 > 2)
    {
      sub_1313680();
    }

    else
    {
      *(a1 + 16) |= 4u;
      *(a1 + 40) = v12;
    }

    goto LABEL_55;
  }

LABEL_47:
  if (v8)
  {
    v30 = (v8 & 7) == 4;
  }

  else
  {
    v30 = 1;
  }

  if (!v30)
  {
    v31 = *(a1 + 8);
    if (v31)
    {
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v32 = sub_11F1920((a1 + 8));
      v7 = *v38;
    }

    v29 = sub_1952690(v8, v32, v7, a3);
    goto LABEL_54;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_71:
  *v38 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v38;
}

char *sub_12ED31C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v8 = *(a1 + 44);
      *v4 = 24;
      v4[1] = v8;
      v4 += 2;
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 0x10) == 0)
  {
LABEL_5:
    v7 = v4;
    goto LABEL_18;
  }

LABEL_11:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 48);
  *v4 = 80;
  v4[1] = v9;
  if (v9 > 0x7F)
  {
    v4[1] = v9 | 0x80;
    v10 = v9 >> 7;
    v4[2] = v9 >> 7;
    v7 = v4 + 3;
    if (v9 >= 0x4000)
    {
      LOBYTE(v11) = v4[2];
      do
      {
        *(v7 - 1) = v11 | 0x80;
        v11 = v10 >> 7;
        *v7++ = v10 >> 7;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_18:
  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v14 = *(a1 + 40);
    *v7 = 88;
    v7[1] = v14;
    if (v14 > 0x7F)
    {
      v7[1] = v14 | 0x80;
      v15 = v14 >> 7;
      v7[2] = v14 >> 7;
      v13 = v7 + 3;
      if (v14 >= 0x4000)
      {
        LOBYTE(v16) = v7[2];
        do
        {
          *(v13 - 1) = v16 | 0x80;
          v16 = v15 >> 7;
          *v13++ = v15 >> 7;
          v17 = v15 >> 14;
          v15 >>= 7;
        }

        while (v17);
      }
    }

    else
    {
      v13 = v7 + 2;
    }
  }

  else
  {
    v13 = v7;
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v13;
  }

  v20 = v18 & 0xFFFFFFFFFFFFFFFCLL;
  v21 = *(v20 + 31);
  if (v21 < 0)
  {
    v22 = *(v20 + 8);
    v21 = *(v20 + 16);
  }

  else
  {
    v22 = (v20 + 8);
  }

  if ((*a3 - v13) >= v21)
  {
    v23 = v21;
    memcpy(v13, v22, v21);
    v13 += v23;
    return v13;
  }

  return sub_1957130(a3, v22, v21, v13);
}