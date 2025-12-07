void *sub_17204D4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_5;
    }
  }

  else if (v4)
  {
    goto LABEL_5;
  }

  sub_1720558(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void *sub_1720558(void *result)
{
  if (result != &off_277FC78)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      sub_1717020(v2);
      operator delete();
    }

    v3 = v1[4];
    if (v3)
    {
      sub_18385C8(v3);
      operator delete();
    }

    v4 = v1[5];
    if (v4)
    {
      sub_1720DB0(v4);
      operator delete();
    }

    result = v1[6];
    if (result)
    {
      sub_18FA778(result);

      operator delete();
    }
  }

  return result;
}

void sub_1720624(void *a1)
{
  sub_17204D4(a1);

  operator delete();
}

uint64_t sub_172065C(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_1720680(uint64_t a1, char *a2, int32x2_t *a3)
{
  v33 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v33, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v33 + 1;
    v7 = *v33;
    if (*v33 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v33, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v33 + 2;
      }
    }

    v33 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 2)
    {
      if (v10 == 1)
      {
        if (v7 != 10)
        {
          goto LABEL_47;
        }

        *(a1 + 16) |= 1u;
        v25 = *(a1 + 24);
        if (!v25)
        {
          v26 = *(a1 + 8);
          v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
          if (v26)
          {
            v27 = *v27;
          }

          sub_1729100(v27);
          v25 = v28;
          *(a1 + 24) = v28;
          v6 = v33;
        }

        v14 = sub_2238268(a3, v25, v6);
      }

      else
      {
        if (v10 != 2 || v7 != 18)
        {
          goto LABEL_47;
        }

        *(a1 + 16) |= 2u;
        v16 = *(a1 + 32);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_18648BC(v18);
          *(a1 + 32) = v16;
          v6 = v33;
        }

        v14 = sub_2200230(a3, v16, v6);
      }
    }

    else
    {
      if (v10 == 3)
      {
        if (v7 == 24)
        {
          v20 = v6 + 1;
          v19 = *v6;
          if ((v19 & 0x8000000000000000) == 0)
          {
            goto LABEL_32;
          }

          v21 = *v20;
          v19 = (v21 << 7) + v19 - 128;
          if (v21 < 0)
          {
            v33 = sub_19587DC(v6, v19);
            if (!v33)
            {
              return 0;
            }
          }

          else
          {
            v20 = v6 + 2;
LABEL_32:
            v33 = v20;
          }

          if (v19 > 2)
          {
            sub_1313740();
          }

          else
          {
            *(a1 + 16) |= 0x10u;
            *(a1 + 56) = v19;
          }

          continue;
        }

LABEL_47:
        if (v7)
        {
          v29 = (v7 & 7) == 4;
        }

        else
        {
          v29 = 1;
        }

        if (v29)
        {
          if (v6)
          {
            a3[10].i32[0] = v7 - 1;
            return v33;
          }

          return 0;
        }

        v30 = *(a1 + 8);
        if (v30)
        {
          v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v31 = sub_11F1920((a1 + 8));
          v6 = v33;
        }

        v14 = sub_1952690(v7, v31, v6, a3);
        goto LABEL_54;
      }

      if (v10 == 4)
      {
        if (v7 != 34)
        {
          goto LABEL_47;
        }

        *(a1 + 16) |= 4u;
        v22 = *(a1 + 40);
        if (!v22)
        {
          v23 = *(a1 + 8);
          v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v24 = *v24;
          }

          v22 = sub_1729AD4(v24);
          *(a1 + 40) = v22;
          v6 = v33;
        }

        v14 = sub_2238A48(a3, v22, v6);
      }

      else
      {
        if (v10 != 5 || v7 != 42)
        {
          goto LABEL_47;
        }

        *(a1 + 16) |= 8u;
        v11 = *(a1 + 48);
        if (!v11)
        {
          v12 = *(a1 + 8);
          v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
          if (v12)
          {
            v13 = *v13;
          }

          v11 = sub_1906254(v13);
          *(a1 + 48) = v11;
          v6 = v33;
        }

        v14 = sub_21F3AD0(a3, v11, v6);
      }
    }

LABEL_54:
    v33 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v33;
}

char *sub_172095C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v11 = *(a1 + 32);
    *v4 = 18;
    v12 = *(v11 + 44);
    v4[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, v4 + 1);
    }

    else
    {
      v13 = v4 + 2;
    }

    v4 = sub_1838E28(v11, v13, a3);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  if (*a3 <= __dst)
  {
    v4 = sub_225EB68(a3, __dst);
  }

  v8 = *(a1 + 24);
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

  v4 = sub_17175B0(v8, v10, a3);
  if ((v6 & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_24;
  }

LABEL_17:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v14 = *(a1 + 56);
  *v4 = 24;
  v4[1] = v14;
  if (v14 > 0x7F)
  {
    v4[1] = v14 | 0x80;
    v15 = v14 >> 7;
    v4[2] = v14 >> 7;
    v7 = v4 + 3;
    if (v14 >= 0x4000)
    {
      LOBYTE(v4) = v4[2];
      do
      {
        *(v7 - 1) = v4 | 0x80;
        v4 = (v15 >> 7);
        *v7++ = v15 >> 7;
        v16 = v15 >> 14;
        v15 >>= 7;
      }

      while (v16);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_24:
  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v17 = *(a1 + 40);
    *v7 = 34;
    v18 = *(v17 + 20);
    v7[1] = v18;
    if (v18 > 0x7F)
    {
      v19 = sub_19575D0(v18, v7 + 1);
    }

    else
    {
      v19 = v7 + 2;
    }

    v7 = sub_172106C(v17, v19, a3);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v20 = *(a1 + 48);
    *v7 = 42;
    v21 = *(v20 + 44);
    v7[1] = v21;
    if (v21 > 0x7F)
    {
      v22 = sub_19575D0(v21, v7 + 1);
    }

    else
    {
      v22 = v7 + 2;
    }

    v7 = sub_18FB10C(v20, v22, a3);
  }

  v23 = *(a1 + 8);
  if ((v23 & 1) == 0)
  {
    return v7;
  }

  v25 = v23 & 0xFFFFFFFFFFFFFFFCLL;
  v26 = *(v25 + 31);
  if (v26 < 0)
  {
    v27 = *(v25 + 8);
    v26 = *(v25 + 16);
  }

  else
  {
    v27 = (v25 + 8);
  }

  if ((*a3 - v7) >= v26)
  {
    v28 = v26;
    memcpy(v7, v27, v26);
    v7 += v28;
    return v7;
  }

  return sub_1957130(a3, v27, v26, v7);
}

uint64_t sub_1720C30(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) == 0)
  {
    v3 = 0;
    goto LABEL_18;
  }

  if (v2)
  {
    v4 = sub_17178D4(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = sub_1839564(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = sub_172121C(*(a1 + 40));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v7 = sub_18FB7A4(*(a1 + 48));
  v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  v8 = *(a1 + 56);
  if (v8 < 0)
  {
    v9 = 11;
  }

  else
  {
    v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v9;
LABEL_18:
  v10 = *(a1 + 8);
  if (v10)
  {
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    v3 += v13;
  }

  *(a1 + 20) = v3;
  return v3;
}

void *sub_1720DB0(void *a1)
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

void sub_1720E24(void *a1)
{
  sub_1720DB0(a1);

  operator delete();
}

char *sub_1720E5C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v25 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v25, i) & 1) == 0; i = a3[11].u32[1])
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
        v14 = v6 + 1;
        v15 = *v6;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        v16 = *v14;
        v17 = (v16 << 7) + v15;
        LODWORD(v15) = v17 - 128;
        if (v16 < 0)
        {
          v25 = sub_19587DC(v6, (v17 - 128));
          if (!v25)
          {
            return 0;
          }

          LODWORD(v15) = v22;
        }

        else
        {
          v14 = v6 + 2;
LABEL_24:
          v25 = v14;
        }

        if (sub_13560D8(v15))
        {
          *(a1 + 16) |= 2u;
          *(a1 + 28) = v15;
        }

        else
        {
          sub_12E8418();
        }

        continue;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 8)
    {
      v18 = v6 + 1;
      v19 = *v6;
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

      v20 = *v18;
      v21 = (v20 << 7) + v19;
      LODWORD(v19) = v21 - 128;
      if (v20 < 0)
      {
        v25 = sub_19587DC(v6, (v21 - 128));
        if (!v25)
        {
          return 0;
        }

        LODWORD(v19) = v23;
      }

      else
      {
        v18 = v6 + 2;
LABEL_30:
        v25 = v18;
      }

      if (sub_13560CC(v19))
      {
        *(a1 + 16) |= 1u;
        *(a1 + 24) = v19;
      }

      else
      {
        sub_12E8450();
      }

      continue;
    }

    if (v7)
    {
      v11 = (v7 & 7) == 4;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v25;
      }

      return 0;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = v25;
    }

    v25 = sub_1952690(v7, v13, v6, a3);
    if (!v25)
    {
      return 0;
    }
  }

  return v25;
}

char *sub_172106C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 28);
    *v6 = 16;
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v6[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[2] = v12 >> 7;
      v11 = v6 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v11 - 1) = v6 | 0x80;
          v6 = (v13 >> 7);
          *v11++ = v13 >> 7;
          v14 = v13 >> 14;
          v13 >>= 7;
        }

        while (v14);
      }
    }

    else
    {
      v11 = v6 + 2;
    }
  }

  else
  {
    v11 = v6;
  }

  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v11;
  }

  v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
  v18 = *(v17 + 31);
  if (v18 < 0)
  {
    v19 = *(v17 + 8);
    v18 = *(v17 + 16);
  }

  else
  {
    v19 = (v17 + 8);
  }

  if ((*a3 - v11) >= v18)
  {
    v20 = v18;
    memcpy(v11, v19, v18);
    v11 += v20;
    return v11;
  }

  return sub_1957130(a3, v19, v18, v11);
}

uint64_t sub_172121C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_14;
  }

  if (v1)
  {
    v3 = *(a1 + 24);
    if (v3 < 0)
    {
      v2 = 11;
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v4 = *(a1 + 28);
  if (v4 < 0)
  {
    v5 = 11;
  }

  else
  {
    v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v5;
LABEL_14:
  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    v2 += v9;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_17212EC(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_10;
    }
  }

  else if (v4)
  {
    goto LABEL_10;
  }

  if (a1 != &off_277FCD8)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_1366F00(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_13663C4(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17213BC(uint64_t a1)
{
  sub_17212EC(a1);

  operator delete();
}

char *sub_17213F4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v26 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v26, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v26 + 1;
    v7 = *v26;
    if (*v26 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v26, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v26 + 2;
      }
    }

    v26 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 24)
      {
        v20 = v6 + 1;
        v19 = *v6;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          v26 = sub_19587DC(v6, v19);
          if (!v26)
          {
            return 0;
          }
        }

        else
        {
          v20 = v6 + 2;
LABEL_30:
          v26 = v20;
        }

        if (v19 > 2)
        {
          sub_1313740();
        }

        else
        {
          *(a1 + 16) |= 4u;
          *(a1 + 40) = v19;
        }

        continue;
      }

LABEL_13:
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
          return v26;
        }

        return 0;
      }

      v13 = *(a1 + 8);
      if (v13)
      {
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v14 = sub_11F1920((a1 + 8));
        v6 = v26;
      }

      v15 = sub_1952690(v7, v14, v6, a3);
      goto LABEL_38;
    }

    if (v10 == 2)
    {
      if (v7 != 18)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 2u;
      v16 = *(a1 + 32);
      if (!v16)
      {
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v16 = sub_1379F3C(v18);
        *(a1 + 32) = v16;
        v6 = v26;
      }

      v15 = sub_2200590(a3, v16, v6);
    }

    else
    {
      if (v10 != 1 || v7 != 10)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
      v22 = *(a1 + 24);
      if (!v22)
      {
        v23 = *(a1 + 8);
        v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v24 = *v24;
        }

        v22 = sub_137A034(v24);
        *(a1 + 24) = v22;
        v6 = v26;
      }

      v15 = sub_2200500(a3, v22, v6);
    }

LABEL_38:
    v26 = v15;
    if (!v15)
    {
      return 0;
    }
  }

  return v26;
}

char *sub_1721618(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v11 = *(a1 + 32);
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

    v4 = sub_136659C(v11, v13, a3);
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  if (*a3 <= __dst)
  {
    v4 = sub_225EB68(a3, __dst);
  }

  v8 = *(a1 + 24);
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

  v4 = sub_136730C(v8, v10, a3);
  if ((v6 & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_24;
  }

LABEL_17:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v14 = *(a1 + 40);
  *v4 = 24;
  v4[1] = v14;
  if (v14 > 0x7F)
  {
    v4[1] = v14 | 0x80;
    v15 = v14 >> 7;
    v4[2] = v14 >> 7;
    v7 = v4 + 3;
    if (v14 >= 0x4000)
    {
      LOBYTE(v4) = v4[2];
      do
      {
        *(v7 - 1) = v4 | 0x80;
        v4 = (v15 >> 7);
        *v7++ = v15 >> 7;
        v16 = v15 >> 14;
        v15 >>= 7;
      }

      while (v16);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_24:
  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v7;
  }

  v19 = v17 & 0xFFFFFFFFFFFFFFFCLL;
  v20 = *(v19 + 31);
  if (v20 < 0)
  {
    v21 = *(v19 + 8);
    v20 = *(v19 + 16);
  }

  else
  {
    v21 = (v19 + 8);
  }

  if ((*a3 - v7) >= v20)
  {
    v22 = v20;
    memcpy(v7, v21, v20);
    v7 += v22;
    return v7;
  }

  return sub_1957130(a3, v21, v20, v7);
}

uint64_t sub_1721818(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if (v2)
  {
    v4 = sub_136761C(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = sub_1366718(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = *(a1 + 40);
    if (v6 < 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v7;
  }

LABEL_13:
  v8 = *(a1 + 8);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v3 += v11;
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_172192C(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_10;
    }
  }

  else if (v4)
  {
    goto LABEL_10;
  }

  if (a1 != &off_277FD08)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_1722B10(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1723B74(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17219FC(uint64_t a1)
{
  sub_172192C(a1);

  operator delete();
}

uint64_t sub_1721A34(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_172256C(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  *(v1 + 48) = 0;
  v5 = *(v1 + 72);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 80) + 8);
    do
    {
      v7 = *v6++;
      result = sub_1359064(v7);
      --v5;
    }

    while (v5);
    *(v1 + 72) = 0;
  }

  v8 = *(v1 + 96);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 104) + 8);
    do
    {
      v10 = *v9++;
      result = sub_136980C(v10);
      --v8;
    }

    while (v8);
    *(v1 + 96) = 0;
  }

  v11 = *(v1 + 16);
  if ((v11 & 0x1F) == 0)
  {
    goto LABEL_20;
  }

  if (v11)
  {
    v14 = *(v1 + 112) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v14 + 23) < 0)
    {
      **v14 = 0;
      *(v14 + 8) = 0;
      if ((v11 & 2) != 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      *v14 = 0;
      *(v14 + 23) = 0;
      if ((v11 & 2) != 0)
      {
        goto LABEL_30;
      }
    }

LABEL_16:
    if ((v11 & 4) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    result = sub_1557E90(*(v1 + 128));
    if ((v11 & 8) == 0)
    {
LABEL_18:
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    goto LABEL_35;
  }

  if ((v11 & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_30:
  v15 = *(v1 + 120) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v15 + 23) < 0)
  {
    **v15 = 0;
    *(v15 + 8) = 0;
    if ((v11 & 4) != 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    *v15 = 0;
    *(v15 + 23) = 0;
    if ((v11 & 4) != 0)
    {
      goto LABEL_34;
    }
  }

LABEL_17:
  if ((v11 & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_35:
  result = sub_1559EC4(*(v1 + 136));
  if ((v11 & 0x10) != 0)
  {
LABEL_19:
    result = sub_16F373C(*(v1 + 144));
  }

LABEL_20:
  if ((v11 & 0x60) != 0)
  {
    *(v1 + 160) = 0;
    *(v1 + 152) = 0;
  }

  v13 = *(v1 + 8);
  v12 = v1 + 8;
  *(v12 + 8) = 0;
  if (v13)
  {

    return sub_1957EA8(v12);
  }

  return result;
}

uint64_t sub_1721BBC(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_16F6D1C(*(result + 24));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

char *sub_1721C1C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v23 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v23, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v23 + 1;
    v7 = *v23;
    if (*v23 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v23, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v23 + 2;
      }
    }

    v23 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 32);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          v15 = sub_1729D8C(v17);
          *(a1 + 32) = v15;
          v6 = v23;
        }

        v14 = sub_2238B68(a3, v15, v6);
        goto LABEL_30;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 24);
      if (!v18)
      {
        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        sub_1729CC4(v20);
        v18 = v21;
        *(a1 + 24) = v21;
        v6 = v23;
      }

      v14 = sub_2238AD8(a3, v18, v6);
      goto LABEL_30;
    }

    if (v7)
    {
      v11 = (v7 & 7) == 4;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v23;
      }

      return 0;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = v23;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_30:
    v23 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v23;
}

char *sub_1721DC4(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *v4 = 10;
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

    v4 = sub_1723300(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 32);
    *v4 = 18;
    v11 = *(v10 + 20);
    v4[1] = v11;
    if (v11 > 0x7F)
    {
      v12 = sub_19575D0(v11, v4 + 1);
    }

    else
    {
      v12 = v4 + 2;
    }

    v4 = sub_1723E30(v10, v12, a3);
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
  v16 = *(v15 + 31);
  if (v16 < 0)
  {
    v17 = *(v15 + 8);
    v16 = *(v15 + 16);
  }

  else
  {
    v17 = (v15 + 8);
  }

  if ((*a3 - v4) >= v16)
  {
    v18 = v16;
    memcpy(v4, v17, v16);
    v4 += v18;
    return v4;
  }

  return sub_1957130(a3, v17, v16, v4);
}

uint64_t sub_1721F40(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_172387C(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = sub_1723FBC(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    v3 += v9;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_1722010(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13EC7DC((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a1 + 48);
    sub_1959094((a1 + 48), v10 + v9);
    v11 = *(a1 + 56);
    *(a1 + 48) += *(a2 + 48);
    memcpy((v11 + 8 * v10), *(a2 + 56), 8 * *(a2 + 48));
  }

  v12 = *(a2 + 72);
  if (v12)
  {
    v13 = *(a2 + 80);
    v14 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_1763170((a1 + 64), v14, (v13 + 8), v12, **(a1 + 80) - *(a1 + 72));
    v15 = *(a1 + 72) + v12;
    *(a1 + 72) = v15;
    v16 = *(a1 + 80);
    if (*v16 < v15)
    {
      *v16 = v15;
    }
  }

  v17 = *(a2 + 96);
  if (v17)
  {
    v18 = *(a2 + 104);
    v19 = sub_19592E8(a1 + 88, *(a2 + 96));
    sub_13B4424((a1 + 88), v19, (v18 + 8), v17, **(a1 + 104) - *(a1 + 96));
    v20 = *(a1 + 96) + v17;
    *(a1 + 96) = v20;
    v21 = *(a1 + 104);
    if (*v21 < v20)
    {
      *v21 = v20;
    }
  }

  v22 = *(a2 + 16);
  if ((v22 & 0x7F) != 0)
  {
    if (v22)
    {
      v24 = *(a2 + 112);
      *(a1 + 16) |= 1u;
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      sub_194EA1C((a1 + 112), (v24 & 0xFFFFFFFFFFFFFFFELL), v26);
      if ((v22 & 2) == 0)
      {
LABEL_15:
        if ((v22 & 4) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_32;
      }
    }

    else if ((v22 & 2) == 0)
    {
      goto LABEL_15;
    }

    v27 = *(a2 + 120);
    *(a1 + 16) |= 2u;
    v28 = *(a1 + 8);
    v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
    if (v28)
    {
      v29 = *v29;
    }

    sub_194EA1C((a1 + 120), (v27 & 0xFFFFFFFFFFFFFFFELL), v29);
    if ((v22 & 4) == 0)
    {
LABEL_16:
      if ((v22 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_40;
    }

LABEL_32:
    *(a1 + 16) |= 4u;
    v30 = *(a1 + 128);
    if (!v30)
    {
      v31 = *(a1 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      v30 = sub_155A8BC(v32);
      *(a1 + 128) = v30;
    }

    if (*(a2 + 128))
    {
      v33 = *(a2 + 128);
    }

    else
    {
      v33 = &off_2777350;
    }

    sub_1558F14(v30, v33);
    if ((v22 & 8) == 0)
    {
LABEL_17:
      if ((v22 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_48;
    }

LABEL_40:
    *(a1 + 16) |= 8u;
    v34 = *(a1 + 136);
    if (!v34)
    {
      v35 = *(a1 + 8);
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
      if (v35)
      {
        v36 = *v36;
      }

      v34 = sub_155AA78(v36);
      *(a1 + 136) = v34;
    }

    if (*(a2 + 136))
    {
      v37 = *(a2 + 136);
    }

    else
    {
      v37 = &off_2777450;
    }

    sub_155A328(v34, v37);
    if ((v22 & 0x10) == 0)
    {
LABEL_18:
      if ((v22 & 0x20) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_56;
    }

LABEL_48:
    *(a1 + 16) |= 0x10u;
    v38 = *(a1 + 144);
    if (!v38)
    {
      v39 = *(a1 + 8);
      v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
      if (v39)
      {
        v40 = *v40;
      }

      v38 = sub_16F6438(v40);
      *(a1 + 144) = v38;
    }

    if (*(a2 + 144))
    {
      v41 = *(a2 + 144);
    }

    else
    {
      v41 = &off_277EB80;
    }

    sub_128F948(v38, v41);
    if ((v22 & 0x20) == 0)
    {
LABEL_19:
      if ((v22 & 0x40) == 0)
      {
LABEL_21:
        *(a1 + 16) |= v22;
        goto LABEL_22;
      }

LABEL_20:
      *(a1 + 160) = *(a2 + 160);
      goto LABEL_21;
    }

LABEL_56:
    *(a1 + 152) = *(a2 + 152);
    if ((v22 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_22:
  v23 = *(a2 + 8);
  if (v23)
  {

    sub_1957EF4((a1 + 8), (v23 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1722360(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      *(a1 + 16) |= 1u;
      v5 = *(a1 + 24);
      if (!v5)
      {
        v6 = *(a1 + 8);
        v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
        if (v6)
        {
          v7 = *v7;
        }

        v5 = sub_16F9E44(v7);
        *(a1 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_277EC48;
      }

      sub_135B4C0(v5, v8);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 32) = *(a2 + 32);
    }

    *(a1 + 16) |= v4;
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_1722430(uint64_t a1)
{
  v2 = *(a1 + 72);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_135B718(*(*(a1 + 80) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 96);
  do
  {
    v5 = v6 < 1;
    if (v6 < 1)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = sub_136A598(*(*(a1 + 104) + 8 * v6));
    v6 = v7;
  }

  while (v8);
  return v5;
}

void *sub_17224C0(void *a1)
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

void sub_1722534(void *a1)
{
  sub_17224C0(a1);

  operator delete();
}

uint64_t sub_172256C(uint64_t a1)
{
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_1722594(uint64_t a1, char *a2, int32x2_t *a3)
{
  v29 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v29, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v29 + 1;
    v8 = *v29;
    if (*v29 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v29, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v29 + 2;
      }
    }

    v29 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      break;
    }

    if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_13;
      }

      v5 |= 2u;
      v16 = v7 + 1;
      v17 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      v18 = *v16;
      v17 = v17 + (v18 << 7) - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v16 = v7 + 2;
LABEL_25:
        v29 = v16;
        *(a1 + 28) = v17;
        goto LABEL_37;
      }

      v25 = sub_1958770(v7, v17);
      v29 = v25;
      *(a1 + 28) = v26;
      if (!v25)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v11 != 1 || v8 != 8)
      {
        goto LABEL_13;
      }

      v5 |= 1u;
      v22 = v7 + 1;
      v23 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      v24 = *v22;
      v23 = v23 + (v24 << 7) - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v22 = v7 + 2;
LABEL_36:
        v29 = v22;
        *(a1 + 24) = v23;
        goto LABEL_37;
      }

      v27 = sub_1958770(v7, v23);
      v29 = v27;
      *(a1 + 24) = v28;
      if (!v27)
      {
        goto LABEL_49;
      }
    }

LABEL_37:
    if (sub_195ADC0(a3, &v29, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 24)
  {
    v20 = v7 + 1;
    v19 = *v7;
    if (v19 < 0)
    {
      v21 = *v20;
      v19 = (v21 << 7) + v19 - 128;
      if (v21 < 0)
      {
        v29 = sub_19587DC(v7, v19);
        if (!v29)
        {
          goto LABEL_49;
        }

        goto LABEL_31;
      }

      v20 = v7 + 2;
    }

    v29 = v20;
LABEL_31:
    if (v19 > 2)
    {
      sub_1313740();
    }

    else
    {
      *(a1 + 16) |= 4u;
      *(a1 + 32) = v19;
    }

    goto LABEL_37;
  }

LABEL_13:
  if (v8)
  {
    v13 = (v8 & 7) == 4;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = *(a1 + 8);
    if (v14)
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v15 = sub_11F1920((a1 + 8));
      v7 = v29;
    }

    v29 = sub_1952690(v8, v15, v7, a3);
    if (!v29)
    {
      goto LABEL_49;
    }

    goto LABEL_37;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_49:
  v29 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v29;
}

char *sub_17227F4(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 28);
    *v6 = 16;
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v6[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[2] = v12 >> 7;
      v11 = v6 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v11 - 1) = v6 | 0x80;
          LODWORD(v6) = v13 >> 7;
          *v11++ = v13 >> 7;
          v14 = v13 >> 14;
          v13 >>= 7;
        }

        while (v14);
      }
    }

    else
    {
      v11 = v6 + 2;
    }
  }

  else
  {
    v11 = v6;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 32);
    *v11 = 24;
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v11[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v11[2] = v16 >> 7;
      v15 = v11 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v18) = v11[2];
        do
        {
          *(v15 - 1) = v18 | 0x80;
          v18 = v17 >> 7;
          *v15++ = v17 >> 7;
          v19 = v17 >> 14;
          v17 >>= 7;
        }

        while (v19);
      }
    }

    else
    {
      v15 = v11 + 2;
    }
  }

  else
  {
    v15 = v11;
  }

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v15;
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

  if ((*a3 - v15) >= v23)
  {
    v25 = v23;
    memcpy(v15, v24, v23);
    v15 += v25;
    return v15;
  }

  return sub_1957130(a3, v24, v23, v15);
}

uint64_t sub_1722A28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_13;
  }

  if (v1)
  {
    v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v2 += ((9 * (__clz(*(a1 + 28) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v1 & 4) != 0)
  {
    v3 = *(a1 + 32);
    if (v3 < 0)
    {
      v4 = 11;
    }

    else
    {
      v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v4;
  }

LABEL_13:
  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    v2 += v8;
  }

  *(a1 + 20) = v2;
  return v2;
}

void *sub_1722B10(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_5;
    }
  }

  else if (v4)
  {
    goto LABEL_5;
  }

  sub_1722BC0(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_13B3894(a1 + 11);
  sub_1762DBC(a1 + 8);
  sub_1956ABC((a1 + 6));
  sub_13EC28C(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1722BC0(uint64_t a1)
{
  v3 = *(a1 + 112);
  v2 = (a1 + 112);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  result = (a1 + 120);
  if (*(a1 + 120) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_277FD30)
  {
    v5 = *(a1 + 128);
    if (v5)
    {
      sub_1557E54(v5);
      operator delete();
    }

    v6 = *(a1 + 136);
    if (v6)
    {
      sub_1559E88(v6);
      operator delete();
    }

    result = *(a1 + 144);
    if (result)
    {
      sub_16F3690(result);

      operator delete();
    }
  }

  return result;
}

void sub_1722C98(void *a1)
{
  sub_1722B10(a1);

  operator delete();
}

uint64_t sub_1722CD0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v65 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v65, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v65 + 1);
    v8 = **v65;
    if (**v65 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v65, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v65 + 2);
      }
    }

    *v65 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 5)
    {
      break;
    }

    if (v8 >> 3 > 8)
    {
      if (v11 == 9)
      {
        if (v8 == 74)
        {
          v52 = v7 - 1;
          while (1)
          {
            v53 = v52 + 1;
            *v65 = v52 + 1;
            v54 = *(a1 + 80);
            if (v54 && (v55 = *(a1 + 72), v55 < *v54))
            {
              *(a1 + 72) = v55 + 1;
              v56 = *&v54[2 * v55 + 2];
            }

            else
            {
              v57 = sub_137A034(*(a1 + 64));
              v56 = sub_19593CC(a1 + 64, v57);
              v53 = *v65;
            }

            v52 = sub_2200500(a3, v56, v53);
            *v65 = v52;
            if (!v52)
            {
              goto LABEL_124;
            }

            if (*a3 <= v52 || *v52 != 74)
            {
              goto LABEL_119;
            }
          }
        }

        goto LABEL_111;
      }

      if (v11 == 10)
      {
        if (v8 == 82)
        {
          v37 = v7 - 1;
          while (1)
          {
            v38 = v37 + 1;
            *v65 = v37 + 1;
            v39 = *(a1 + 104);
            if (v39 && (v40 = *(a1 + 96), v40 < *v39))
            {
              *(a1 + 96) = v40 + 1;
              v41 = *&v39[2 * v40 + 2];
            }

            else
            {
              v42 = sub_137A304(*(a1 + 88));
              v41 = sub_19593CC(a1 + 88, v42);
              v38 = *v65;
            }

            v37 = sub_2201700(a3, v41, v38);
            *v65 = v37;
            if (!v37)
            {
              goto LABEL_124;
            }

            if (*a3 <= v37 || *v37 != 82)
            {
              goto LABEL_119;
            }
          }
        }

        goto LABEL_111;
      }

      if (v11 != 11 || v8 != 90)
      {
        goto LABEL_111;
      }

      *(a1 + 16) |= 2u;
      v21 = *(a1 + 8);
      v13 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v13 = *v13;
      }

      v14 = (a1 + 120);
      goto LABEL_37;
    }

    if (v11 == 6)
    {
      if (v8 == 48)
      {
        v46 = v7 - 1;
        while (1)
        {
          *v65 = v46 + 1;
          v47 = v46[1];
          if (v47 < 0)
          {
            v48 = (v46[2] << 7) + v47;
            v47 = (v48 - 128);
            if (v46[2] < 0)
            {
              v46 = sub_19587DC((v46 + 1), (v48 - 128));
              v47 = v49;
            }

            else
            {
              v46 += 3;
            }
          }

          else
          {
            v46 += 2;
          }

          *v65 = v46;
          v50 = *(a1 + 48);
          if (v50 == *(a1 + 52))
          {
            v51 = v50 + 1;
            sub_1959094((a1 + 48), v50 + 1);
            *(*(a1 + 56) + 8 * v50) = v47;
            v46 = *v65;
          }

          else
          {
            *(*(a1 + 56) + 8 * v50) = v47;
            v51 = v50 + 1;
          }

          *(a1 + 48) = v51;
          if (!v46)
          {
            goto LABEL_124;
          }

          if (*a3 <= v46 || *v46 != 48)
          {
            goto LABEL_119;
          }
        }
      }

      if (v8 != 50)
      {
        goto LABEL_111;
      }

      v23 = sub_1958938((a1 + 48), v7, a3);
LABEL_118:
      *v65 = v23;
      if (!v23)
      {
        goto LABEL_124;
      }

      goto LABEL_119;
    }

    if (v11 != 7)
    {
      if (v11 != 8 || v8 != 66)
      {
        goto LABEL_111;
      }

      *(a1 + 16) |= 1u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v14 = (a1 + 112);
LABEL_37:
      v22 = sub_194DB04(v14, v13);
      v23 = sub_1958890(v22, *v65, a3);
      goto LABEL_118;
    }

    if (v8 != 56)
    {
      goto LABEL_111;
    }

    v5 |= 0x20u;
    v35 = v7 + 1;
    v34 = *v7;
    if ((v34 & 0x8000000000000000) == 0)
    {
      goto LABEL_64;
    }

    v36 = *v35;
    v34 = (v36 << 7) + v34 - 128;
    if ((v36 & 0x80000000) == 0)
    {
      v35 = v7 + 2;
LABEL_64:
      *v65 = v35;
      *(a1 + 152) = v34;
      goto LABEL_119;
    }

    v60 = sub_19587DC(v7, v34);
    *v65 = v60;
    *(a1 + 152) = v61;
    if (!v60)
    {
      goto LABEL_124;
    }

LABEL_119:
    if (sub_195ADC0(a3, v65, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 2)
  {
    if (v11 == 1)
    {
      if (v8 != 10)
      {
        goto LABEL_111;
      }

      *(a1 + 16) |= 4u;
      v28 = *(a1 + 128);
      if (!v28)
      {
        v29 = *(a1 + 8);
        v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v30 = *v30;
        }

        v28 = sub_155A8BC(v30);
        *(a1 + 128) = v28;
        v7 = *v65;
      }

      v23 = sub_2206260(a3, v28, v7);
    }

    else
    {
      if (v11 != 2 || v8 != 18)
      {
        goto LABEL_111;
      }

      *(a1 + 16) |= 8u;
      v25 = *(a1 + 136);
      if (!v25)
      {
        v26 = *(a1 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        v25 = sub_155AA78(v27);
        *(a1 + 136) = v25;
        v7 = *v65;
      }

      v23 = sub_22062F0(a3, v25, v7);
    }

    goto LABEL_118;
  }

  if (v11 == 3)
  {
    if (v8 != 26)
    {
      goto LABEL_111;
    }

    *(a1 + 16) |= 0x10u;
    v43 = *(a1 + 144);
    if (!v43)
    {
      v44 = *(a1 + 8);
      v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
      if (v44)
      {
        v45 = *v45;
      }

      v43 = sub_16F6438(v45);
      *(a1 + 144) = v43;
      v7 = *v65;
    }

    v23 = sub_21F9DF8(a3, v43, v7);
    goto LABEL_118;
  }

  if (v11 == 4)
  {
    if (v8 != 32)
    {
      goto LABEL_111;
    }

    v5 |= 0x40u;
    v31 = v7 + 1;
    v32 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    v33 = *v31;
    v32 = v32 + (v33 << 7) - 128;
    if ((v33 & 0x80000000) == 0)
    {
      v31 = v7 + 2;
LABEL_59:
      *v65 = v31;
      *(a1 + 160) = v32;
      goto LABEL_119;
    }

    v58 = sub_1958770(v7, v32);
    *v65 = v58;
    *(a1 + 160) = v59;
    if (!v58)
    {
      goto LABEL_124;
    }

    goto LABEL_119;
  }

  if (v11 == 5 && v8 == 42)
  {
    v15 = v7 - 1;
    while (1)
    {
      v16 = v15 + 1;
      *v65 = v15 + 1;
      v17 = *(a1 + 40);
      if (v17 && (v18 = *(a1 + 32), v18 < *v17))
      {
        *(a1 + 32) = v18 + 1;
        v19 = *&v17[2 * v18 + 2];
      }

      else
      {
        v20 = sub_1729C48(*(a1 + 24));
        v19 = sub_19593CC(a1 + 24, v20);
        v16 = *v65;
      }

      v15 = sub_2206380(a3, v19, v16);
      *v65 = v15;
      if (!v15)
      {
        goto LABEL_124;
      }

      if (*a3 <= v15 || *v15 != 42)
      {
        goto LABEL_119;
      }
    }
  }

LABEL_111:
  if (v8)
  {
    v62 = (v8 & 7) == 4;
  }

  else
  {
    v62 = 1;
  }

  if (!v62)
  {
    v63 = *(a1 + 8);
    if (v63)
    {
      v64 = (v63 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v64 = sub_11F1920((a1 + 8));
      v7 = *v65;
    }

    v23 = sub_1952690(v8, v64, v7, a3);
    goto LABEL_118;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_124:
  *v65 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v65;
}

char *sub_1723300(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v8 = *(a1 + 128);
    *v4 = 10;
    v9 = *(v8 + 20);
    *(v4 + 1) = v9;
    if (v9 > 0x7F)
    {
      v10 = sub_19575D0(v9, (v4 + 1));
    }

    else
    {
      v10 = (v4 + 2);
    }

    v4 = sub_15585F8(v8, v10, a3);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

LABEL_18:
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v14 = *(a1 + 144);
      *v4 = 26;
      v15 = *(v14 + 20);
      *(v4 + 1) = v15;
      if (v15 > 0x7F)
      {
        v16 = sub_19575D0(v15, (v4 + 1));
      }

      else
      {
        v16 = (v4 + 2);
      }

      v4 = sub_16F39A0(v14, v16, a3);
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_24;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 136);
  *v4 = 18;
  v12 = *(v11 + 20);
  *(v4 + 1) = v12;
  if (v12 > 0x7F)
  {
    v13 = sub_19575D0(v12, (v4 + 1));
  }

  else
  {
    v13 = (v4 + 2);
  }

  v4 = sub_155A0DC(v11, v13, a3);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_4:
  if ((v6 & 0x40) == 0)
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

  v17 = *(a1 + 160);
  *v4 = 32;
  *(v4 + 1) = v17;
  if (v17 > 0x7F)
  {
    *(v4 + 1) = v17 | 0x80;
    v18 = v17 >> 7;
    *(v4 + 2) = v17 >> 7;
    v7 = (v4 + 3);
    if (v17 >= 0x4000)
    {
      LOBYTE(v4) = *(v4 + 2);
      do
      {
        *(v7 - 1) = v4 | 0x80;
        LODWORD(v4) = v18 >> 7;
        *v7++ = v18 >> 7;
        v19 = v18 >> 14;
        v18 >>= 7;
      }

      while (v19);
    }
  }

  else
  {
    v7 = (v4 + 2);
  }

LABEL_31:
  v20 = *(a1 + 32);
  if (v20)
  {
    for (i = 0; i != v20; ++i)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v22 = *(*(a1 + 40) + 8 * i + 8);
      *v7 = 42;
      v23 = *(v22 + 20);
      v7[1] = v23;
      if (v23 > 0x7F)
      {
        v24 = sub_19575D0(v23, v7 + 1);
      }

      else
      {
        v24 = v7 + 2;
      }

      v7 = sub_17227F4(v22, v24, a3);
    }
  }

  v25 = *(a1 + 48);
  if (v25 < 1)
  {
    v28 = v7;
  }

  else
  {
    for (j = 0; j != v25; ++j)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v27 = *(*(a1 + 56) + 8 * j);
      *v7 = 48;
      v7[1] = v27;
      if (v27 > 0x7F)
      {
        v7[1] = v27 | 0x80;
        v29 = v27 >> 7;
        v7[2] = v27 >> 7;
        v28 = v7 + 3;
        if (v27 >= 0x4000)
        {
          LOBYTE(v7) = v7[2];
          do
          {
            *(v28 - 1) = v7 | 0x80;
            v7 = (v29 >> 7);
            *v28++ = v29 >> 7;
            v30 = v29 >> 14;
            v29 >>= 7;
          }

          while (v30);
        }
      }

      else
      {
        v28 = v7 + 2;
      }

      v7 = v28;
    }
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v32 = *(a1 + 152);
    *v28 = 56;
    v28[1] = v32;
    if (v32 > 0x7F)
    {
      v28[1] = v32 | 0x80;
      v33 = v32 >> 7;
      v28[2] = v32 >> 7;
      v31 = v28 + 3;
      if (v32 >= 0x4000)
      {
        LOBYTE(v28) = v28[2];
        do
        {
          *(v31 - 1) = v28 | 0x80;
          v28 = (v33 >> 7);
          *v31++ = v33 >> 7;
          v34 = v33 >> 14;
          v33 >>= 7;
        }

        while (v34);
      }
    }

    else
    {
      v31 = v28 + 2;
    }
  }

  else
  {
    v31 = v28;
  }

  if (v6)
  {
    v31 = sub_128AEEC(a3, 8, (*(a1 + 112) & 0xFFFFFFFFFFFFFFFELL), v31);
  }

  v35 = *(a1 + 72);
  if (v35)
  {
    for (k = 0; k != v35; ++k)
    {
      if (*a3 <= v31)
      {
        v31 = sub_225EB68(a3, v31);
      }

      v37 = *(*(a1 + 80) + 8 * k + 8);
      *v31 = 74;
      v38 = *(v37 + 20);
      v31[1] = v38;
      if (v38 > 0x7F)
      {
        v39 = sub_19575D0(v38, v31 + 1);
      }

      else
      {
        v39 = v31 + 2;
      }

      v31 = sub_136730C(v37, v39, a3);
    }
  }

  v40 = *(a1 + 96);
  if (v40)
  {
    for (m = 0; m != v40; ++m)
    {
      if (*a3 <= v31)
      {
        v31 = sub_225EB68(a3, v31);
      }

      v42 = *(*(a1 + 104) + 8 * m + 8);
      *v31 = 82;
      v43 = *(v42 + 20);
      v31[1] = v43;
      if (v43 > 0x7F)
      {
        v44 = sub_19575D0(v43, v31 + 1);
      }

      else
      {
        v44 = v31 + 2;
      }

      v31 = sub_1369D68(v42, v44, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    v31 = sub_128AEEC(a3, 11, (*(a1 + 120) & 0xFFFFFFFFFFFFFFFELL), v31);
  }

  v45 = *(a1 + 8);
  if ((v45 & 1) == 0)
  {
    return v31;
  }

  v47 = v45 & 0xFFFFFFFFFFFFFFFCLL;
  v48 = *(v47 + 31);
  if (v48 < 0)
  {
    v49 = *(v47 + 8);
    v48 = *(v47 + 16);
  }

  else
  {
    v49 = (v47 + 8);
  }

  if ((*a3 - v31) >= v48)
  {
    v50 = v48;
    memcpy(v31, v49, v48);
    v31 += v50;
    return v31;
  }

  return sub_1957130(a3, v49, v48, v31);
}

uint64_t sub_172387C(uint64_t a1)
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
      v7 = sub_1722A28(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = sub_1959F14((a1 + 48));
  v9 = *(a1 + 72);
  v10 = v8 + v2 + *(a1 + 48) + v9;
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
      v15 = sub_136761C(v14);
      v10 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      v13 -= 8;
    }

    while (v13);
  }

  v16 = *(a1 + 96);
  v17 = v10 + v16;
  v18 = *(a1 + 104);
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
      v22 = sub_136A254(v21);
      v17 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      v20 -= 8;
    }

    while (v20);
  }

  v23 = *(a1 + 16);
  if ((v23 & 0x7F) == 0)
  {
    goto LABEL_30;
  }

  if (v23)
  {
    v26 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
    v27 = *(v26 + 23);
    v28 = *(v26 + 8);
    if ((v27 & 0x80u) == 0)
    {
      v28 = v27;
    }

    v17 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v23 & 2) == 0)
    {
LABEL_24:
      if ((v23 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_38;
    }
  }

  else if ((v23 & 2) == 0)
  {
    goto LABEL_24;
  }

  v29 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
  v30 = *(v29 + 23);
  v31 = *(v29 + 8);
  if ((v30 & 0x80u) == 0)
  {
    v31 = v30;
  }

  v17 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v23 & 4) == 0)
  {
LABEL_25:
    if ((v23 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_39;
  }

LABEL_38:
  v32 = sub_1558C60(*(a1 + 128));
  v17 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v23 & 8) == 0)
  {
LABEL_26:
    if ((v23 & 0x10) == 0)
    {
      goto LABEL_27;
    }

LABEL_40:
    v34 = sub_16F3BD8(*(a1 + 144));
    v17 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v23 & 0x20) == 0)
    {
LABEL_28:
      if ((v23 & 0x40) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    goto LABEL_41;
  }

LABEL_39:
  v33 = sub_155A258(*(a1 + 136));
  v17 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v23 & 0x10) != 0)
  {
    goto LABEL_40;
  }

LABEL_27:
  if ((v23 & 0x20) == 0)
  {
    goto LABEL_28;
  }

LABEL_41:
  v17 += ((9 * (__clz(*(a1 + 152) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v23 & 0x40) != 0)
  {
LABEL_29:
    v17 += ((9 * (__clz(*(a1 + 160) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_30:
  v24 = *(a1 + 8);
  if (v24)
  {
    v35 = v24 & 0xFFFFFFFFFFFFFFFCLL;
    v36 = *((v24 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v36 < 0)
    {
      v36 = *(v35 + 16);
    }

    v17 += v36;
  }

  *(a1 + 20) = v17;
  return v17;
}

uint64_t sub_1723B74(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_8;
    }
  }

  else if (v4)
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 8) & 1;
  if (a1 != &off_277FDD8)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_16F6C04(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1723C2C(uint64_t a1)
{
  sub_1723B74(a1);

  operator delete();
}

char *sub_1723C64(uint64_t a1, char *a2, int32x2_t *a3)
{
  v22 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v22, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v22 + 1;
    v7 = *v22;
    if (*v22 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v22, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v22 + 2;
      }
    }

    v22 = v6;
    if (v7 >> 3 != 2)
    {
      if (v7 >> 3 == 1 && v7 == 8)
      {
        v19 = v6 + 1;
        v18 = *v6;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if (v20 < 0)
        {
          v22 = sub_19587DC(v6, v18);
          if (!v22)
          {
            return 0;
          }
        }

        else
        {
          v19 = v6 + 2;
LABEL_30:
          v22 = v19;
        }

        if (v18 > 6)
        {
          sub_12E8450();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v18;
        }

        continue;
      }

LABEL_12:
      if (v7)
      {
        v11 = (v7 & 7) == 4;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        if (v6)
        {
          a3[10].i32[0] = v7 - 1;
          return v22;
        }

        return 0;
      }

      v12 = *(a1 + 8);
      if (v12)
      {
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v13 = sub_11F1920((a1 + 8));
        v6 = v22;
      }

      v14 = sub_1952690(v7, v13, v6, a3);
      goto LABEL_25;
    }

    if (v7 != 18)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v15 = *(a1 + 24);
    if (!v15)
    {
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_16F9E44(v17);
      *(a1 + 24) = v15;
      v6 = v22;
    }

    v14 = sub_2238418(a3, v15, v6);
LABEL_25:
    v22 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v22;
}

char *sub_1723E30(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 32);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 24);
    *v6 = 18;
    v12 = *(v11 + 20);
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, v6 + 1);
    }

    else
    {
      v13 = v6 + 2;
    }

    v6 = sub_16F7008(v11, v13, a3);
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v6;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
  v17 = *(v16 + 31);
  if (v17 < 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
  }

  else
  {
    v18 = (v16 + 8);
  }

  if ((*a3 - v6) >= v17)
  {
    v19 = v17;
    memcpy(v6, v18, v17);
    v6 += v19;
    return v6;
  }

  return sub_1957130(a3, v18, v17, v6);
}

uint64_t sub_1723FBC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    result = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = sub_16F7140(*(a1 + 24));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(a1 + 32);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
LABEL_11:
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    result += v9;
  }

  *(a1 + 20) = result;
  return result;
}

uint64_t sub_172409C(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_10;
    }
  }

  else if (v4)
  {
    goto LABEL_10;
  }

  if (a1 != &off_277FE00)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_17245C8(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1724F58(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_172416C(uint64_t a1)
{
  sub_172409C(a1);

  operator delete();
}

uint64_t sub_17241A4(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 16) = 0;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_17241BC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v22 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v22, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v22 + 1;
    v7 = *v22;
    if (*v22 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v22, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v22 + 2;
      }
    }

    v22 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 32);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          v15 = sub_1729F34(v17);
          *(a1 + 32) = v15;
          v6 = v22;
        }

        v14 = sub_2238BF8(a3, v15, v6);
        goto LABEL_30;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 24);
      if (!v18)
      {
        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v18 = sub_1729E84(v20);
        *(a1 + 24) = v18;
        v6 = v22;
      }

      v14 = sub_2238658(a3, v18, v6);
      goto LABEL_30;
    }

    if (v7)
    {
      v11 = (v7 & 7) == 4;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v22;
      }

      return 0;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = v22;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_30:
    v22 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v22;
}

char *sub_1724364(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *v4 = 10;
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

    v4 = sub_1724AA8(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 32);
    *v4 = 18;
    v11 = *(v10 + 20);
    v4[1] = v11;
    if (v11 > 0x7F)
    {
      v12 = sub_19575D0(v11, v4 + 1);
    }

    else
    {
      v12 = v4 + 2;
    }

    v4 = sub_172516C(v10, v12, a3);
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
  v16 = *(v15 + 31);
  if (v16 < 0)
  {
    v17 = *(v15 + 8);
    v16 = *(v15 + 16);
  }

  else
  {
    v17 = (v15 + 8);
  }

  if ((*a3 - v4) >= v16)
  {
    v18 = v16;
    memcpy(v4, v17, v16);
    v4 += v18;
    return v4;
  }

  return sub_1957130(a3, v17, v16, v4);
}

uint64_t sub_17244E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_1724D80(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = sub_1725294(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    v3 += v9;
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_17245C8(uint64_t a1)
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

  v5 = (a1 + 64);
  if (*(a1 + 64) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C((a1 + 72));
  }

  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C((a1 + 80));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_11:
  sub_1762E40((a1 + 40));
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17246A8(uint64_t a1)
{
  sub_17245C8(a1);

  operator delete();
}

uint64_t sub_17246E0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v40 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v40, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v40 + 1);
    v8 = **v40;
    if (**v40 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v40, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v40 + 2);
      }
    }

    *v40 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      if (v11 == 4)
      {
        if (v8 != 34)
        {
          goto LABEL_63;
        }

        *(a1 + 16) |= 2u;
        v25 = *(a1 + 8);
        v14 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v14 = *v14;
        }

        v15 = (a1 + 72);
        goto LABEL_58;
      }

      if (v11 == 5)
      {
        if (v8 != 42)
        {
          goto LABEL_63;
        }

        *(a1 + 16) |= 4u;
        v32 = *(a1 + 8);
        v14 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
        if (v32)
        {
          v14 = *v14;
        }

        v15 = (a1 + 80);
        goto LABEL_58;
      }

      if (v11 == 6 && v8 == 50)
      {
        v16 = v7 - 1;
        while (1)
        {
          v17 = v16 + 1;
          *v40 = v16 + 1;
          v18 = *(a1 + 56);
          if (v18 && (v19 = *(a1 + 48), v19 < *v18))
          {
            *(a1 + 48) = v19 + 1;
            v20 = *&v18[2 * v19 + 2];
          }

          else
          {
            v21 = sub_17289D8(*(a1 + 40));
            v20 = sub_19593CC(a1 + 40, v21);
            v17 = *v40;
          }

          v16 = sub_2238C88(a3, v20, v17);
          *v40 = v16;
          if (!v16)
          {
            goto LABEL_76;
          }

          if (*a3 <= v16 || *v16 != 50)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_63;
    }

    if (v11 != 1)
    {
      break;
    }

    if (v8 != 8)
    {
      goto LABEL_63;
    }

    v5 |= 8u;
    v23 = v7 + 1;
    v22 = *v7;
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_35;
    }

    v24 = *v23;
    v22 = (v24 << 7) + v22 - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v23 = v7 + 2;
LABEL_35:
      *v40 = v23;
      *(a1 + 88) = v22;
      goto LABEL_71;
    }

    v35 = sub_19587DC(v7, v22);
    *v40 = v35;
    *(a1 + 88) = v36;
    if (!v35)
    {
      goto LABEL_76;
    }

LABEL_71:
    if (sub_195ADC0(a3, v40, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 2)
  {
    if (v11 != 3 || v8 != 26)
    {
      goto LABEL_63;
    }

    *(a1 + 16) |= 1u;
    v13 = *(a1 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    v15 = (a1 + 64);
LABEL_58:
    v33 = sub_194DB04(v15, v14);
    v34 = sub_1958890(v33, *v40, a3);
LABEL_70:
    *v40 = v34;
    if (!v34)
    {
      goto LABEL_76;
    }

    goto LABEL_71;
  }

  if (v8 == 16)
  {
    v26 = v7 - 1;
    while (1)
    {
      *v40 = v26 + 1;
      v27 = v26[1];
      if (v27 < 0)
      {
        v28 = (v26[2] << 7) + v27;
        v27 = (v28 - 128);
        if (v26[2] < 0)
        {
          v26 = sub_19587DC((v26 + 1), (v28 - 128));
          v27 = v29;
        }

        else
        {
          v26 += 3;
        }
      }

      else
      {
        v26 += 2;
      }

      *v40 = v26;
      v30 = *(a1 + 24);
      if (v30 == *(a1 + 28))
      {
        v31 = v30 + 1;
        sub_1959094((a1 + 24), v30 + 1);
        *(*(a1 + 32) + 8 * v30) = v27;
        v26 = *v40;
      }

      else
      {
        *(*(a1 + 32) + 8 * v30) = v27;
        v31 = v30 + 1;
      }

      *(a1 + 24) = v31;
      if (!v26)
      {
        goto LABEL_76;
      }

      if (*a3 <= v26 || *v26 != 16)
      {
        goto LABEL_71;
      }
    }
  }

  if (v8 == 18)
  {
    v34 = sub_1958938((a1 + 24), v7, a3);
    goto LABEL_70;
  }

LABEL_63:
  if (v8)
  {
    v37 = (v8 & 7) == 4;
  }

  else
  {
    v37 = 1;
  }

  if (!v37)
  {
    v38 = *(a1 + 8);
    if (v38)
    {
      v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v39 = sub_11F1920((a1 + 8));
      v7 = *v40;
    }

    v34 = sub_1952690(v8, v39, v7, a3);
    goto LABEL_70;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_76:
  *v40 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v40;
}

char *sub_1724AA8(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 88);
    *a2 = 8;
    a2[1] = v7;
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v8 = v7 >> 7;
      a2[2] = v7 >> 7;
      v6 = a2 + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = a2[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = a2 + 2;
    }
  }

  else
  {
    v6 = a2;
  }

  v11 = *(a1 + 24);
  if (v11 < 1)
  {
    v14 = v6;
  }

  else
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v13 = *(*(a1 + 32) + 8 * i);
      *v6 = 16;
      v6[1] = v13;
      if (v13 > 0x7F)
      {
        v6[1] = v13 | 0x80;
        v15 = v13 >> 7;
        v6[2] = v13 >> 7;
        v14 = v6 + 3;
        if (v13 >= 0x4000)
        {
          LOBYTE(v6) = v6[2];
          do
          {
            *(v14 - 1) = v6 | 0x80;
            v6 = (v15 >> 7);
            *v14++ = v15 >> 7;
            v16 = v15 >> 14;
            v15 >>= 7;
          }

          while (v16);
        }
      }

      else
      {
        v14 = v6 + 2;
      }

      v6 = v14;
    }
  }

  if (v5)
  {
    v14 = sub_128AEEC(a3, 3, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), v14);
    if ((v5 & 2) == 0)
    {
LABEL_24:
      if ((v5 & 4) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_24;
  }

  v14 = sub_128AEEC(a3, 4, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v14);
  if ((v5 & 4) != 0)
  {
LABEL_25:
    v14 = sub_128AEEC(a3, 5, (*(a1 + 80) & 0xFFFFFFFFFFFFFFFELL), v14);
  }

LABEL_26:
  v17 = *(a1 + 48);
  if (v17)
  {
    for (j = 0; j != v17; ++j)
    {
      if (*a3 <= v14)
      {
        v14 = sub_225EB68(a3, v14);
      }

      v19 = *(*(a1 + 56) + 8 * j + 8);
      *v14 = 50;
      v20 = *(v19 + 20);
      v14[1] = v20;
      if (v20 > 0x7F)
      {
        v21 = sub_19575D0(v20, v14 + 1);
      }

      else
      {
        v21 = v14 + 2;
      }

      v14 = sub_170CC70(v19, v21, a3);
    }
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v14;
  }

  v24 = v22 & 0xFFFFFFFFFFFFFFFCLL;
  v25 = *(v24 + 31);
  if (v25 < 0)
  {
    v26 = *(v24 + 8);
    v25 = *(v24 + 16);
  }

  else
  {
    v26 = (v24 + 8);
  }

  if ((*a3 - v14) >= v25)
  {
    v27 = v25;
    memcpy(v14, v26, v25);
    v14 += v27;
    return v14;
  }

  return sub_1957130(a3, v26, v25, v14);
}

uint64_t sub_1724D80(uint64_t a1)
{
  v2 = sub_1959F14((a1 + 24));
  v3 = *(a1 + 48);
  v4 = v2 + *(a1 + 24) + v3;
  v5 = *(a1 + 56);
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
      v9 = sub_170CD58(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 16);
  if ((v10 & 0xF) == 0)
  {
    goto LABEL_13;
  }

  if ((v10 & 1) == 0)
  {
    if ((v10 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_18:
    v16 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v17 = *(v16 + 23);
    v18 = *(v16 + 8);
    if ((v17 & 0x80u) == 0)
    {
      v18 = v17;
    }

    v4 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 4) == 0)
    {
LABEL_11:
      if ((v10 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_21;
  }

  v13 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v14 = *(v13 + 23);
  v15 = *(v13 + 8);
  if ((v14 & 0x80u) == 0)
  {
    v15 = v14;
  }

  v4 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  if ((v10 & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_21:
  v19 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  v20 = *(v19 + 23);
  v21 = *(v19 + 8);
  if ((v20 & 0x80u) == 0)
  {
    v21 = v20;
  }

  v4 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 8) != 0)
  {
LABEL_12:
    v4 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_13:
  v11 = *(a1 + 8);
  if (v11)
  {
    v22 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v23 < 0)
    {
      v23 = *(v22 + 16);
    }

    v4 += v23;
  }

  *(a1 + 20) = v4;
  return v4;
}

void *sub_1724F58(void *a1)
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

void sub_1724FCC(void *a1)
{
  sub_1724F58(a1);

  operator delete();
}

char *sub_1725004(uint64_t a1, char *a2, int32x2_t *a3)
{
  v17 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v17, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v17 + 1;
    v7 = *v17;
    if (*v17 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v17, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v17 + 2;
      }
    }

    v17 = v6;
    if (v7 == 8)
    {
      v14 = v6 + 1;
      v13 = *v6;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if (v15 < 0)
      {
        v17 = sub_19587DC(v6, v13);
        if (!v17)
        {
          return 0;
        }
      }

      else
      {
        v14 = v6 + 2;
LABEL_19:
        v17 = v14;
      }

      if (v13 > 3)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 24) = v13;
      }

      continue;
    }

    if (v7)
    {
      v10 = (v7 & 7) == 4;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v17;
      }

      return 0;
    }

    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v12 = sub_11F1920((a1 + 8));
      v6 = v17;
    }

    v17 = sub_1952690(v7, v12, v6, a3);
    if (!v17)
    {
      return 0;
    }
  }

  return v17;
}

char *sub_172516C(uint64_t a1, char *__dst, void *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *__dst = 8;
    __dst[1] = v6;
    if (v6 > 0x7F)
    {
      __dst[1] = v6 | 0x80;
      v7 = v6 >> 7;
      __dst[2] = v6 >> 7;
      v5 = __dst + 3;
      if (v6 >= 0x4000)
      {
        LOBYTE(v8) = __dst[2];
        do
        {
          *(v5 - 1) = v8 | 0x80;
          v8 = v7 >> 7;
          *v5++ = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }
    }

    else
    {
      v5 = __dst + 2;
    }
  }

  else
  {
    v5 = __dst;
  }

  v10 = *(a1 + 8);
  if ((v10 & 1) == 0)
  {
    return v5;
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

  if (*a3 - v5 >= v13)
  {
    v15 = v13;
    memcpy(v5, v14, v13);
    v5 += v15;
    return v5;
  }

  return sub_1957130(a3, v14, v13, v5);
}

uint64_t sub_1725294(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24);
    if (v2 < 0)
    {
      v1 = 11;
    }

    else
    {
      v1 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    v5 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v6 < 0)
    {
      v6 = *(v5 + 16);
    }

    v1 += v6;
  }

  *(a1 + 20) = v1;
  return v1;
}

uint64_t sub_1725318(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_10;
    }
  }

  else if (v4)
  {
    goto LABEL_10;
  }

  if (a1 != &off_277FEA8)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_1725AF8(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_17261AC(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17253E8(uint64_t a1)
{
  sub_1725318(a1);

  operator delete();
}

uint64_t sub_1725420(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if (v2)
  {
    v5 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_15:
  v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_19;
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *v6 = 0;
  *(v6 + 23) = 0;
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_19:
  result = sub_1835AE0(*(result + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_170CA74(*(v1 + 48));
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_1725500(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v1 + 23) < 0)
    {
      **v1 = 0;
      *(v1 + 8) = 0;
    }

    else
    {
      *v1 = 0;
      *(v1 + 23) = 0;
    }
  }

  v3 = *(a1 + 8);
  result = a1 + 8;
  *(result + 24) = 0;
  *(result + 8) = 0;
  if (v3)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_1725548(uint64_t a1, char *a2, int32x2_t *a3)
{
  v22 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v22, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v22 + 1;
    v7 = *v22;
    if (*v22 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v22, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v22 + 2;
      }
    }

    v22 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 32);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          v15 = sub_172A0B4(v17);
          *(a1 + 32) = v15;
          v6 = v22;
        }

        v14 = sub_2238DA8(a3, v15, v6);
        goto LABEL_30;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 24);
      if (!v18)
      {
        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v18 = sub_172A02C(v20);
        *(a1 + 24) = v18;
        v6 = v22;
      }

      v14 = sub_2238D18(a3, v18, v6);
      goto LABEL_30;
    }

    if (v7)
    {
      v11 = (v7 & 7) == 4;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v22;
      }

      return 0;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = v22;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_30:
    v22 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v22;
}

char *sub_17256F0(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *v4 = 10;
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

    v4 = sub_1725E70(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 32);
    *v4 = 18;
    v11 = *(v10 + 20);
    v4[1] = v11;
    if (v11 > 0x7F)
    {
      v12 = sub_19575D0(v11, v4 + 1);
    }

    else
    {
      v12 = v4 + 2;
    }

    v4 = sub_1726444(v10, v12, a3);
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
  v16 = *(v15 + 31);
  if (v16 < 0)
  {
    v17 = *(v15 + 8);
    v16 = *(v15 + 16);
  }

  else
  {
    v17 = (v15 + 8);
  }

  if ((*a3 - v4) >= v16)
  {
    v18 = v16;
    memcpy(v4, v17, v16);
    v4 += v18;
    return v4;
  }

  return sub_1957130(a3, v17, v16, v4);
}

uint64_t sub_172586C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_172603C(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = sub_172658C(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    v3 += v9;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_172593C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0xF) == 0)
  {
    goto LABEL_29;
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
        goto LABEL_5;
      }

      goto LABEL_13;
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
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

LABEL_13:
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

    v11 = sub_18648BC(v13);
    *(a1 + 40) = v11;
  }

  if (*(a2 + 40))
  {
    v14 = *(a2 + 40);
  }

  else
  {
    v14 = &off_27868A0;
  }

  sub_18367AC(v11, v14);
  if ((v4 & 8) != 0)
  {
LABEL_21:
    *(a1 + 16) |= 8u;
    v15 = *(a1 + 48);
    if (!v15)
    {
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_17289D8(v17);
      *(a1 + 48) = v15;
    }

    if (*(a2 + 48))
    {
      v18 = *(a2 + 48);
    }

    else
    {
      v18 = &off_277F420;
    }

    sub_12F5A34(v15, v18);
  }

LABEL_29:
  v19 = *(a2 + 8);
  if (v19)
  {

    sub_1957EF4((a1 + 8), (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1725AB8(uint64_t a1)
{
  if ((*(a1 + 16) & 4) == 0)
  {
    return 1;
  }

  result = sub_1836CF0(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1725AF8(uint64_t a1)
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

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (a1 != &off_277FED0)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      sub_18385C8(v6);
      operator delete();
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      sub_170C984(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1725C00(uint64_t a1)
{
  sub_1725AF8(a1);

  operator delete();
}

uint64_t sub_1725C38(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v28 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v28, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v28 + 1);
    v7 = **v28;
    if (**v28 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v28, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v28 + 2);
      }
    }

    *v28 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 26)
        {
          *(a1 + 16) |= 2u;
          v22 = *(a1 + 8);
          v13 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
          if (v22)
          {
            v13 = *v13;
          }

          v14 = (a1 + 32);
          goto LABEL_35;
        }
      }

      else if (v10 == 4 && v7 == 34)
      {
        *(a1 + 16) |= 8u;
        v15 = *(a1 + 48);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          v15 = sub_17289D8(v17);
          *(a1 + 48) = v15;
          v6 = *v28;
        }

        v18 = sub_2238C88(a3, v15, v6);
        goto LABEL_43;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
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

          v19 = sub_18648BC(v21);
          *(a1 + 40) = v19;
          v6 = *v28;
        }

        v18 = sub_2200230(a3, v19, v6);
        goto LABEL_43;
      }
    }

    else if (v10 == 2 && v7 == 18)
    {
      *(a1 + 16) |= 1u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v14 = (a1 + 24);
LABEL_35:
      v23 = sub_194DB04(v14, v13);
      v18 = sub_1958890(v23, *v28, a3);
      goto LABEL_43;
    }

    if (v7)
    {
      v24 = (v7 & 7) == 4;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return *v28;
      }

LABEL_49:
      *v28 = 0;
      return *v28;
    }

    v25 = *(a1 + 8);
    if (v25)
    {
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v26 = sub_11F1920((a1 + 8));
      v6 = *v28;
    }

    v18 = sub_1952690(v7, v26, v6, a3);
LABEL_43:
    *v28 = v18;
    if (!v18)
    {
      goto LABEL_49;
    }
  }

  return *v28;
}

char *sub_1725E70(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 40);
    *v4 = 10;
    v8 = *(v7 + 44);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_1838E28(v7, v9, a3);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

LABEL_13:
  v4 = sub_128AEEC(a3, 3, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 48);
  *v4 = 34;
  v11 = *(v10 + 20);
  v4[1] = v11;
  if (v11 > 0x7F)
  {
    v12 = sub_19575D0(v11, v4 + 1);
  }

  else
  {
    v12 = v4 + 2;
  }

  v4 = sub_170CC70(v10, v12, a3);
LABEL_20:
  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
  v16 = *(v15 + 31);
  if (v16 < 0)
  {
    v17 = *(v15 + 8);
    v16 = *(v15 + 16);
  }

  else
  {
    v17 = (v15 + 8);
  }

  if ((*a3 - v4) >= v16)
  {
    v18 = v16;
    memcpy(v4, v17, v16);
    v4 += v18;
    return v4;
  }

  return sub_1957130(a3, v17, v16, v4);
}

uint64_t sub_172603C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v13 = sub_1839564(*(a1 + 40));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_14:
    v10 = sub_170CD58(*(a1 + 48));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  v11 = *(a1 + 8);
  if (v11)
  {
    v14 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v3 += v15;
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_17261AC(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_7;
    }
  }

  else if (v4)
  {
    goto LABEL_7;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_172624C(uint64_t a1)
{
  sub_17261AC(a1);

  operator delete();
}

uint64_t sub_1726284(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v22 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v22, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v22 + 1);
    v7 = **v22;
    if (**v22 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v22, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v22 + 2);
      }
    }

    *v22 = v6;
    if (v7 >> 3 != 2)
    {
      if (v7 >> 3 == 1 && v7 == 8)
      {
        v19 = v6 + 1;
        v18 = *v6;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if (v20 < 0)
        {
          *v22 = sub_19587DC(v6, v18);
          if (!*v22)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v19 = v6 + 2;
LABEL_28:
          *v22 = v19;
        }

        if (v18 > 8)
        {
          sub_12E8450();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v18;
        }

        continue;
      }

LABEL_12:
      if (v7)
      {
        v11 = (v7 & 7) == 4;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        if (v6)
        {
          a3[10].i32[0] = v7 - 1;
          return *v22;
        }

LABEL_39:
        *v22 = 0;
        return *v22;
      }

      v12 = *(a1 + 8);
      if (v12)
      {
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v13 = sub_11F1920((a1 + 8));
        v6 = *v22;
      }

      v14 = sub_1952690(v7, v13, v6, a3);
      goto LABEL_23;
    }

    if (v7 != 18)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v17 = sub_194DB04((a1 + 24), v16);
    v14 = sub_1958890(v17, *v22, a3);
LABEL_23:
    *v22 = v14;
    if (!v14)
    {
      goto LABEL_39;
    }
  }

  return *v22;
}

char *sub_1726444(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 32);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if (v5)
  {
    v6 = sub_128AEEC(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v6);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v6;
  }

  v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
  v14 = *(v13 + 31);
  if (v14 < 0)
  {
    v15 = *(v13 + 8);
    v14 = *(v13 + 16);
  }

  else
  {
    v15 = (v13 + 8);
  }

  if ((*a3 - v6) >= v14)
  {
    v16 = v14;
    memcpy(v6, v15, v14);
    v6 += v16;
    return v6;
  }

  return sub_1957130(a3, v15, v14, v6);
}

uint64_t sub_172658C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_13;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v6 = *(a1 + 32);
    if (v6 < 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v7;
  }

LABEL_13:
  v8 = *(a1 + 8);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v2 += v11;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_1726668(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_8;
    }
  }

  else if (v4)
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 8) & 1;
  if (a1 != &off_277FF30)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      sub_191742C(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1726728(uint64_t a1)
{
  sub_1726668(a1);

  operator delete();
}

char *sub_1726760(uint64_t a1, char *a2, int32x2_t *a3)
{
  v40 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v40, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v40 + 1;
    v8 = *v40;
    if (*v40 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v40, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v40 + 2;
      }
    }

    v40 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_56;
      }

      v5 |= 2u;
      v22 = v7 + 1;
      v21 = *v7;
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_36;
      }

      v23 = *v22;
      v21 = (v23 << 7) + v21 - 128;
      if ((v23 & 0x80000000) == 0)
      {
        v22 = v7 + 2;
LABEL_36:
        v40 = v22;
        *(a1 + 48) = v21 != 0;
        goto LABEL_64;
      }

      v31 = sub_19587DC(v7, v21);
      v40 = v31;
      *(a1 + 48) = v32 != 0;
      if (!v31)
      {
        goto LABEL_69;
      }
    }

    else if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_56;
      }

      v5 |= 4u;
      v25 = v7 + 1;
      v24 = *v7;
      if ((v24 & 0x8000000000000000) == 0)
      {
        goto LABEL_41;
      }

      v26 = *v25;
      v24 = (v26 << 7) + v24 - 128;
      if ((v26 & 0x80000000) == 0)
      {
        v25 = v7 + 2;
LABEL_41:
        v40 = v25;
        *(a1 + 49) = v24 != 0;
        goto LABEL_64;
      }

      v33 = sub_19587DC(v7, v24);
      v40 = v33;
      *(a1 + 49) = v34 != 0;
      if (!v33)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_56;
      }

      v5 |= 8u;
      v13 = v7 + 1;
      v12 = *v7;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v13 = v7 + 2;
LABEL_15:
        v40 = v13;
        *(a1 + 50) = v12 != 0;
        goto LABEL_64;
      }

      v35 = sub_19587DC(v7, v12);
      v40 = v35;
      *(a1 + 50) = v36 != 0;
      if (!v35)
      {
        goto LABEL_69;
      }
    }

LABEL_64:
    if (sub_195ADC0(a3, &v40, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 == 10)
    {
      *(a1 + 16) |= 1u;
      v27 = *(a1 + 40);
      if (!v27)
      {
        v28 = *(a1 + 8);
        v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
        if (v28)
        {
          v29 = *v29;
        }

        v27 = sub_191BA60(v29);
        *(a1 + 40) = v27;
        v7 = v40;
      }

      v30 = sub_2201310(a3, v27, v7);
LABEL_63:
      v40 = v30;
      if (!v30)
      {
        goto LABEL_69;
      }

      goto LABEL_64;
    }
  }

  else if (v11 == 2)
  {
    if (v8 == 16)
    {
      v15 = v7 - 1;
      while (1)
      {
        v40 = v15 + 1;
        v16 = v15[1];
        if (v15[1] < 0)
        {
          v17 = v16 + (v15[2] << 7);
          v16 = v17 - 128;
          if (v15[2] < 0)
          {
            v15 = sub_1958770((v15 + 1), v17 - 128);
            v16 = v18;
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

        v40 = v15;
        v19 = *(a1 + 24);
        if (v19 == *(a1 + 28))
        {
          v20 = v19 + 1;
          sub_1958E5C((a1 + 24), v19 + 1);
          *(*(a1 + 32) + 4 * v19) = v16;
          v15 = v40;
        }

        else
        {
          *(*(a1 + 32) + 4 * v19) = v16;
          v20 = v19 + 1;
        }

        *(a1 + 24) = v20;
        if (!v15)
        {
          goto LABEL_69;
        }

        if (*a3 <= v15 || *v15 != 16)
        {
          goto LABEL_64;
        }
      }
    }

    if (v8 == 18)
    {
      v30 = sub_1958918((a1 + 24), v7, a3);
      goto LABEL_63;
    }
  }

LABEL_56:
  if (v8)
  {
    v37 = (v8 & 7) == 4;
  }

  else
  {
    v37 = 1;
  }

  if (!v37)
  {
    v38 = *(a1 + 8);
    if (v38)
    {
      v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v39 = sub_11F1920((a1 + 8));
      v7 = v40;
    }

    v30 = sub_1952690(v8, v39, v7, a3);
    goto LABEL_63;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_69:
  v40 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v40;
}

char *sub_1726B24(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 40);
    *a2 = 10;
    v7 = *(v6 + 44);
    a2[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, a2 + 1);
    }

    else
    {
      v8 = a2 + 2;
    }

    a2 = sub_1917694(v6, v8, a3);
  }

  v9 = *(a1 + 24);
  if (v9 < 1)
  {
    v12 = a2;
  }

  else
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v11 = *(*(a1 + 32) + 4 * i);
      *a2 = 16;
      a2[1] = v11;
      if (v11 > 0x7F)
      {
        a2[1] = v11 | 0x80;
        v13 = v11 >> 7;
        a2[2] = v11 >> 7;
        v12 = a2 + 3;
        if (v11 >= 0x4000)
        {
          LOBYTE(v14) = a2[2];
          do
          {
            *(v12 - 1) = v14 | 0x80;
            v14 = v13 >> 7;
            *v12++ = v13 >> 7;
            v15 = v13 >> 14;
            v13 >>= 7;
          }

          while (v15);
        }
      }

      else
      {
        v12 = a2 + 2;
      }

      a2 = v12;
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v16 = *(a1 + 48);
    *v12 = 24;
    v12[1] = v16;
    v12 += 2;
    if ((v5 & 4) == 0)
    {
LABEL_22:
      if ((v5 & 8) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_22;
  }

  if (*a3 <= v12)
  {
    v12 = sub_225EB68(a3, v12);
  }

  v17 = *(a1 + 49);
  *v12 = 32;
  v12[1] = v17;
  v12 += 2;
  if ((v5 & 8) != 0)
  {
LABEL_30:
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v18 = *(a1 + 50);
    *v12 = 40;
    v12[1] = v18;
    v12 += 2;
  }

LABEL_33:
  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v12;
  }

  v21 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  v22 = *(v21 + 31);
  if (v22 < 0)
  {
    v23 = *(v21 + 8);
    v22 = *(v21 + 16);
  }

  else
  {
    v23 = (v21 + 8);
  }

  if ((*a3 - v12) >= v22)
  {
    v24 = v22;
    memcpy(v12, v23, v22);
    v12 += v24;
    return v12;
  }

  return sub_1957130(a3, v23, v22, v12);
}

uint64_t sub_1726D9C(uint64_t a1)
{
  v2 = sub_1959E5C((a1 + 24)) + *(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 0xF) != 0)
  {
    if (v3)
    {
      v4 = sub_1917844(*(a1 + 40));
      v2 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += ((v3 >> 1) & 2) + (v3 & 2) + ((v3 >> 2) & 2);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    v2 += v8;
  }

  *(a1 + 20) = v2;
  return v2;
}

void *sub_1726E6C(void *a1)
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

void sub_1726EE0(void *a1)
{
  sub_1726E6C(a1);

  operator delete();
}

char *sub_1726F18(uint64_t a1, char *a2, int32x2_t *a3)
{
  v19 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v19, a3[11].u32[1]))
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = v19 + 1;
    v7 = *v19;
    if (*v19 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v19, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v19 + 2;
      }
    }

    v19 = v6;
    if (v7 != 8)
    {
      break;
    }

    v14 = v6 + 1;
    v13 = *v6;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

    v15 = *v14;
    v13 = (v15 << 7) + v13 - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v14 = v6 + 2;
LABEL_18:
      v19 = v14;
      *(a1 + 24) = v13 != 0;
      v5 = 1;
      goto LABEL_19;
    }

    v16 = sub_19587DC(v6, v13);
    v19 = v16;
    *(a1 + 24) = v17 != 0;
    v5 = 1;
    if (!v16)
    {
      goto LABEL_27;
    }

LABEL_19:
    if (sub_195ADC0(a3, &v19, a3[11].u32[1]))
    {
      goto LABEL_26;
    }
  }

  if (v7)
  {
    v10 = (v7 & 7) == 4;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v12 = sub_11F1920((a1 + 8));
      v6 = v19;
    }

    v19 = sub_1952690(v7, v12, v6, a3);
    if (!v19)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_26;
  }

LABEL_27:
  v19 = 0;
LABEL_26:
  *(a1 + 16) |= v5;
  return v19;
}

char *sub_172709C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *v4 = 8;
    v4[1] = v6;
    v4 += 2;
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

uint64_t sub_172717C(uint64_t a1)
{
  v1 = 2 * (*(a1 + 16) & 1);
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

uint64_t sub_17271CC(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_10;
    }
  }

  else if (v4)
  {
    goto LABEL_10;
  }

  if (a1 != &off_277FF88)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_18385C8(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_18FA778(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_172729C(uint64_t a1)
{
  sub_17271CC(a1);

  operator delete();
}

char *sub_17272D4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v22 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v22, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v22 + 1;
    v7 = *v22;
    if (*v22 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v22, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v22 + 2;
      }
    }

    v22 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 32);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          v15 = sub_1906254(v17);
          *(a1 + 32) = v15;
          v6 = v22;
        }

        v14 = sub_21F3AD0(a3, v15, v6);
        goto LABEL_30;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 24);
      if (!v18)
      {
        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v18 = sub_18648BC(v20);
        *(a1 + 24) = v18;
        v6 = v22;
      }

      v14 = sub_2200230(a3, v18, v6);
      goto LABEL_30;
    }

    if (v7)
    {
      v11 = (v7 & 7) == 4;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v22;
      }

      return 0;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = v22;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_30:
    v22 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v22;
}

char *sub_172747C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *v4 = 10;
    v8 = *(v7 + 44);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_1838E28(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 32);
    *v4 = 18;
    v11 = *(v10 + 44);
    v4[1] = v11;
    if (v11 > 0x7F)
    {
      v12 = sub_19575D0(v11, v4 + 1);
    }

    else
    {
      v12 = v4 + 2;
    }

    v4 = sub_18FB10C(v10, v12, a3);
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
  v16 = *(v15 + 31);
  if (v16 < 0)
  {
    v17 = *(v15 + 8);
    v16 = *(v15 + 16);
  }

  else
  {
    v17 = (v15 + 8);
  }

  if ((*a3 - v4) >= v16)
  {
    v18 = v16;
    memcpy(v4, v17, v16);
    v4 += v18;
    return v4;
  }

  return sub_1957130(a3, v17, v16, v4);
}

uint64_t sub_17275F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_1839564(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = sub_18FB7A4(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    v3 += v9;
  }

  *(a1 + 20) = v3;
  return v3;
}

void *sub_17276D8(void *a1)
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

void sub_172774C(void *a1)
{
  sub_17276D8(a1);

  operator delete();
}

char *sub_1727784(uint64_t a1, char *__dst, void *a3)
{
  v4 = *(a1 + 8);
  if ((v4 & 1) == 0)
  {
    return __dst;
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v7 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v7 < 0)
  {
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
  }

  else
  {
    v8 = (v6 + 8);
  }

  if (*a3 - __dst >= v7)
  {
    v9 = v7;
    memcpy(__dst, v8, v7);
    __dst += v9;
    return __dst;
  }

  return sub_1957130(a3, v8, v7, __dst);
}

uint64_t sub_1727818(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v4 = v1 & 0xFFFFFFFFFFFFFFFCLL;
    v2 = *((v1 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v2 < 0)
    {
      v2 = *(v4 + 16);
    }
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 16) = v2;
  return v2;
}

std::string *sub_1727844(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1727878(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_7;
    }
  }

  else if (v4)
  {
    goto LABEL_7;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1727918(uint64_t a1)
{
  sub_1727878(a1);

  operator delete();
}

uint64_t sub_1727950(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v18 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v18, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v18 + 1);
    v7 = **v18;
    if (**v18 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v18, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v18 + 2);
      }
    }

    *v18 = v6;
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v16 = sub_194DB04((a1 + 24), v15);
      v13 = sub_1958890(v16, *v18, a3);
    }

    else
    {
      if (v7)
      {
        v10 = (v7 & 7) == 4;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        if (v6)
        {
          a3[10].i32[0] = v7 - 1;
          return *v18;
        }

LABEL_24:
        *v18 = 0;
        return *v18;
      }

      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v12 = sub_11F1920((a1 + 8));
        v6 = *v18;
      }

      v13 = sub_1952690(v7, v12, v6, a3);
    }

    *v18 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }
  }

  return *v18;
}

char *sub_1727A88(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  v6 = *(a1 + 8);
  if ((v6 & 1) == 0)
  {
    return v4;
  }

  v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *(v8 + 31);
  if (v9 < 0)
  {
    v10 = *(v8 + 8);
    v9 = *(v8 + 16);
  }

  else
  {
    v10 = (v8 + 8);
  }

  if ((*a3 - v4) >= v9)
  {
    v11 = v9;
    memcpy(v4, v10, v9);
    v4 += v11;
    return v4;
  }

  return sub_1957130(a3, v10, v9, v4);
}

uint64_t sub_1727B50(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    v1 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v1 = 0;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    v1 += v8;
  }

  *(a1 + 20) = v1;
  return v1;
}

uint64_t sub_1727BE4(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_7;
    }
  }

  else if (v4)
  {
    goto LABEL_7;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1727C84(uint64_t a1)
{
  sub_1727BE4(a1);

  operator delete();
}

uint64_t sub_1727CBC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v18 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v18, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v18 + 1);
    v7 = **v18;
    if (**v18 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v18, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v18 + 2);
      }
    }

    *v18 = v6;
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v16 = sub_194DB04((a1 + 24), v15);
      v13 = sub_1958890(v16, *v18, a3);
    }

    else
    {
      if (v7)
      {
        v10 = (v7 & 7) == 4;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        if (v6)
        {
          a3[10].i32[0] = v7 - 1;
          return *v18;
        }

LABEL_24:
        *v18 = 0;
        return *v18;
      }

      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v12 = sub_11F1920((a1 + 8));
        v6 = *v18;
      }

      v13 = sub_1952690(v7, v12, v6, a3);
    }

    *v18 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }
  }

  return *v18;
}

char *sub_1727DF4(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  v6 = *(a1 + 8);
  if ((v6 & 1) == 0)
  {
    return v4;
  }

  v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *(v8 + 31);
  if (v9 < 0)
  {
    v10 = *(v8 + 8);
    v9 = *(v8 + 16);
  }

  else
  {
    v10 = (v8 + 8);
  }

  if ((*a3 - v4) >= v9)
  {
    v11 = v9;
    memcpy(v4, v10, v9);
    v4 += v11;
    return v4;
  }

  return sub_1957130(a3, v10, v9, v4);
}

uint64_t sub_1727EBC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    v1 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v1 = 0;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    v1 += v8;
  }

  *(a1 + 20) = v1;
  return v1;
}

uint64_t sub_1727F50(uint64_t *a1)
{
  if (!a1)
  {

    sub_1763278();
  }

  return sub_16FF3EC(v3, a1, 0);
}

double sub_1727FAC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_2702908;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  return result;
}

double sub_172802C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_2702988;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  *(v2 + 32) = &qword_278E990;
  *(v2 + 40) = &qword_278E990;
  *(v2 + 48) = &qword_278E990;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  return result;
}

void *sub_17280C0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2702A08;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  result[6] = &qword_278E990;
  return result;
}

uint64_t sub_1728148(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2702A88;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = &qword_278E990;
  *(result + 64) = 0;
  return result;
}

void *sub_17281F0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2702B08;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  result[6] = &qword_278E990;
  result[7] = &qword_278E990;
  return result;
}

uint64_t sub_172827C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_2702B88;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void *sub_17282F8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2702C08;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  result[6] = &qword_278E990;
  result[7] = &qword_278E990;
  result[8] = 0;
  return result;
}

void *sub_1728384(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2702C88;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_17283FC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_2702D08;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_1728484(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_2702D88;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_172850C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_2702E08;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

double sub_172858C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_2702E88;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  return result;
}

uint64_t sub_172860C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_2702F08;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1728684(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_2702F88;
  *(result + 16) = 0;
  return result;
}

double sub_17286FC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_2703008;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  *(v2 + 32) = &qword_278E990;
  result = 0.0;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0;
  return result;
}

uint64_t sub_1728790(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2703088;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_172882C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2703108;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_17288CC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2703188;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  result[6] = 0;
  return result;
}

void *sub_1728954(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2703208;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

void *sub_17289D8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2703288;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

void *sub_1728A5C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2703308;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

double sub_1728AD8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_2703388;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = &qword_278E990;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  return result;
}

void *sub_1728B88(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2703408;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  return result;
}

double sub_1728C2C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_2703488;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = a1;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  return result;
}

uint64_t sub_1728CD0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2703508;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = a1;
  *(result + 64) = a1;
  *(result + 72) = 0u;
  *(result + 88) = 0u;
  *(result + 104) = 0u;
  *(result + 120) = 0u;
  *(result + 136) = 0u;
  *(result + 149) = 0u;
  *(result + 168) = -1;
  return result;
}

void *sub_1728DA8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2703588;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

void *sub_1728E2C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2703608;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

double sub_1728EB0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_2703688;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0;
  return result;
}

double sub_1728F40(uint64_t *a1)
{
  if (!a1)
  {

    sub_17632E4();
  }

  *v3 = &off_2703708;
  *(v3 + 8) = a1;
  *(v3 + 16) = 0;
  *(v3 + 24) = a1;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = &qword_278E990;
  *(v3 + 56) = &qword_278E990;
  *(v3 + 64) = &qword_278E990;
  *(v3 + 72) = &qword_278E990;
  *(v3 + 80) = &qword_278E990;
  *(v3 + 88) = &qword_278E990;
  *(v3 + 96) = &qword_278E990;
  result = 0.0;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0;
  return result;
}

uint64_t sub_1728FD0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2703788;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = a1;
  *(result + 64) = 0;
  return result;
}

void *sub_1729084(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2703808;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

double sub_1729100(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_2703888;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  return result;
}

double sub_1729184(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_2703908;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return result;
}

double sub_1729200(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_2703988;
  *(v2 + 8) = a1;
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = a1;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 64) = a1;
  *(v2 + 88) = 0;
  return result;
}

void *sub_17292B0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2703A08;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

uint64_t sub_1729334(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2703A88;
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

void *sub_17293D8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2703B08;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

double sub_1729454(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_2703B88;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 45) = 0u;
  return result;
}

double sub_17294D4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_2703C08;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0;
  return result;
}

double sub_1729590(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_2703C88;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = &qword_278E990;
  *(v2 + 56) = &qword_278E990;
  result = 0.0;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 90) = 0u;
  return result;
}

void *sub_1729640(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2703D08;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_17296BC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2703D88;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_1729738(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2703E08;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_17297D4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_2703E88;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1729850(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_2703F08;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_17298D0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2703F88;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = &qword_278E990;
  *(result + 80) = &qword_278E990;
  *(result + 88) = 0;
  *(result + 96) = 0;
  return result;
}

double sub_1729988(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_2704008;
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
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = a1;
  result = 0.0;
  *(v2 + 153) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  return result;
}

double sub_1729A54(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_2704088;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 44) = 0u;
  return result;
}

void *sub_1729AD4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2704108;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_1729B4C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_2704188;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_1729BCC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2704208;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_1729C48(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_2704288;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_1729CC4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_2704308;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = a1;
  *(v2 + 64) = a1;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = a1;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = &qword_278E990;
  *(v2 + 120) = &qword_278E990;
  result = 0.0;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0;
  return result;
}

uint64_t sub_1729D8C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_2704388;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void *sub_1729E08(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2704408;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_1729E84(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2704488;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  result[4] = a1;
  result[5] = a1;
  result[6] = 0;
  result[7] = 0;
  result[8] = &qword_278E990;
  result[9] = &qword_278E990;
  result[10] = &qword_278E990;
  result[11] = 0;
  return result;
}

uint64_t sub_1729F34(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_2704508;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void *sub_1729FB0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2704588;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_172A02C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2704608;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_172A0B4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_2704688;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_172A13C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2704708;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  *(result + 47) = 0;
  return result;
}

uint64_t sub_172A1D8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_2704788;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void *sub_172A254(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2704808;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_172A2D0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_2704888;
  *(result + 16) = 0;
  return result;
}

void *sub_172A348(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2704908;
  result[2] = 0;
  result[3] = &qword_278E990;
  return result;
}

void *sub_172A3CC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2704988;
  result[2] = 0;
  result[3] = &qword_278E990;
  return result;
}

void *sub_172A45C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 5));
  sub_1956AFC(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_172A4E0(void *a1)
{
  sub_172A45C(a1);

  operator delete();
}

uint64_t sub_172A518(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v33 = a2;
  if (sub_195ADC0(a3, v33, a3[11].u32[1]))
  {
    return *v33;
  }

  v7 = (a1 + 8);
  while (1)
  {
    v8 = (*v33 + 1);
    v9 = **v33;
    if (**v33 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(*v33, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = (*v33 + 2);
      }
    }

    *v33 = v8;
    if (v9 >> 3 != 2)
    {
      break;
    }

    if (v9 == 16)
    {
      v17 = (v8 - 1);
      while (1)
      {
        *v33 = v17 + 1;
        v18 = *(v17 + 1);
        v19 = (v17 + 2);
        if (v18 < 0)
        {
          v20 = *v19;
          v21 = (v20 << 7) + v18;
          LODWORD(v18) = v21 - 128;
          if (v20 < 0)
          {
            *v33 = sub_19587DC(v17 + 1, (v21 - 128));
            if (!*v33)
            {
              goto LABEL_56;
            }

            LODWORD(v18) = v24;
            goto LABEL_28;
          }

          v19 = (v17 + 3);
        }

        *v33 = v19;
LABEL_28:
        if (v18 > 7)
        {
          sub_12E8418();
        }

        else
        {
          v22 = *(a1 + 40);
          if (v22 == *(a1 + 44))
          {
            v23 = v22 + 1;
            sub_1958E5C((a1 + 40), v22 + 1);
            *(*(a1 + 48) + 4 * v22) = v18;
          }

          else
          {
            *(*(a1 + 48) + 4 * v22) = v18;
            v23 = v22 + 1;
          }

          *(a1 + 40) = v23;
        }

        v17 = *v33;
        if (*a3 <= *v33 || **v33 != 16)
        {
          goto LABEL_49;
        }
      }
    }

    if (v9 == 18)
    {
      *&v34 = a1 + 40;
      *(&v34 + 1) = sub_172A450;
      v35 = a1 + 8;
      v36 = 2;
      v16 = sub_1216588(a3, v8, &v34, v5);
      goto LABEL_20;
    }

LABEL_13:
    if (v9)
    {
      v14 = (v9 & 7) == 4;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      if (!v8)
      {
        goto LABEL_56;
      }

      a3[10].i32[0] = v9 - 1;
      return *v33;
    }

    if (*v7)
    {
      v15 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v15 = sub_11F1920((a1 + 8));
      v8 = *v33;
    }

    v16 = sub_1952690(v9, v15, v8, a3);
LABEL_20:
    *v33 = v16;
    if (!v16)
    {
      goto LABEL_56;
    }

LABEL_49:
    if (sub_195ADC0(a3, v33, a3[11].u32[1]))
    {
      return *v33;
    }
  }

  if (v9 >> 3 != 1 || v9 != 10)
  {
    goto LABEL_13;
  }

  v25 = v8 - 1;
  while (1)
  {
    v26 = (v25 + 1);
    *v33 = v25 + 1;
    v27 = *(a1 + 32);
    if (v27 && (v28 = *(a1 + 24), v28 < *v27))
    {
      *(a1 + 24) = v28 + 1;
      v29 = *&v27[2 * v28 + 2];
    }

    else
    {
      v30 = *(a1 + 16);
      if (!v30)
      {
        operator new();
      }

      *v32 = v31;
      v32[1] = sub_195A650;
      *v31 = 0;
      v31[1] = 0;
      v31[2] = 0;
      v29 = sub_19593CC(a1 + 16, v31);
      v26 = *v33;
    }

    v25 = sub_1958890(v29, v26, a3);
    *v33 = v25;
    if (!v25)
    {
      break;
    }

    if (*a3 <= v25 || *v25 != 10)
    {
      goto LABEL_49;
    }
  }

LABEL_56:
  *v33 = 0;
  return *v33;
}

char *sub_172A838(uint64_t a1, char *a2, void *a3)
{
  v6 = *(a1 + 24);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 32) + v7);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = v8[1], v9 > 127) || *a3 - a2 + 14 < v9)
      {
        a2 = sub_1957480(a3, 1, v8, a2);
      }

      else
      {
        *a2 = 10;
        a2[1] = v9;
        if (*(v8 + 23) < 0)
        {
          v8 = *v8;
        }

        v10 = a2 + 2;
        memcpy(a2 + 2, v8, v9);
        a2 = &v10[v9];
      }

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v11 = *(a1 + 40);
  if (v11 < 1)
  {
    v14 = a2;
  }

  else
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v13 = *(*(a1 + 48) + 4 * i);
      *a2 = 16;
      a2[1] = v13;
      if (v13 > 0x7F)
      {
        a2[1] = v13 | 0x80;
        v15 = v13 >> 7;
        a2[2] = v13 >> 7;
        v14 = a2 + 3;
        if (v13 >= 0x4000)
        {
          LOBYTE(v16) = a2[2];
          do
          {
            *(v14 - 1) = v16 | 0x80;
            v16 = v15 >> 7;
            *v14++ = v15 >> 7;
            v17 = v15 >> 14;
            v15 >>= 7;
          }

          while (v17);
        }
      }

      else
      {
        v14 = a2 + 2;
      }

      a2 = v14;
    }
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v14;
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

  if (*a3 - v14 >= v21)
  {
    v23 = v21;
    memcpy(v14, v22, v21);
    v14 += v23;
    return v14;
  }

  return sub_1957130(a3, v22, v21, v14);
}

uint64_t sub_172AA30(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 < 1)
  {
    v3 = *(a1 + 24);
  }

  else
  {
    v2 = (*(a1 + 32) + 8);
    v3 = *(a1 + 24);
    do
    {
      v4 = *v2++;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6);
      --v1;
    }

    while (v1);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(*(a1 + 48) + 4 * v8);
      if (v10 < 0)
      {
        v11 = 10;
      }

      else
      {
        v11 = (9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6;
      }

      v9 += v11;
      ++v8;
    }

    while (v7 != v8);
  }

  else
  {
    v9 = 0;
  }

  v12 = v3 + v7 + v9;
  v13 = *(a1 + 8);
  if (v13)
  {
    v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    v12 += v16;
  }

  *(a1 + 56) = v12;
  return v12;
}

void *sub_172AB34(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1763358(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_172ABB4(void *a1)
{
  sub_172AB34(a1);

  operator delete();
}

char *sub_172ABEC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v19 = a2;
  if ((sub_195ADC0(a3, &v19, a3[11].u32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = v19 + 1;
      v6 = *v19;
      if (*v19 < 0)
      {
        v7 = v6 + (*v5 << 7);
        v6 = v7 - 128;
        if (*v5 < 0)
        {
          v5 = sub_1958824(v19, v7 - 128);
          v6 = v8;
        }

        else
        {
          v5 = v19 + 2;
        }
      }

      v19 = v5;
      if (v6 == 10)
      {
        v12 = v5 - 1;
        while (1)
        {
          v13 = v12 + 1;
          v19 = v12 + 1;
          v14 = *(a1 + 32);
          if (v14 && (v15 = *(a1 + 24), v15 < *v14))
          {
            *(a1 + 24) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = sub_1734890(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_2238EEC(a3, v16, v13);
          v19 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 10)
          {
            goto LABEL_23;
          }
        }
      }

      if (!v6 || (v6 & 7) == 4)
      {
        break;
      }

      v10 = *(a1 + 8);
      if (v10)
      {
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v11 = sub_11F1920((a1 + 8));
        v5 = v19;
      }

      v19 = sub_1952690(v6, v11, v5, a3);
      if (!v19)
      {
        return 0;
      }

LABEL_23:
      if (sub_195ADC0(a3, &v19, a3[11].u32[1]))
      {
        return v19;
      }
    }

    if (v5)
    {
      a3[10].i32[0] = v6 - 1;
      return v19;
    }

    return 0;
  }

  return v19;
}