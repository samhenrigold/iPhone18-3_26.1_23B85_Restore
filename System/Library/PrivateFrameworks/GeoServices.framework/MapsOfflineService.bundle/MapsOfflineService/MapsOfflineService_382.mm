char *sub_15760B8(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 48);
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

    v12 = *(a1 + 52);
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

  v15 = *(a1 + 32);
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v17 = *(*(a1 + 40) + 8 * i + 8);
      *v11 = 26;
      v18 = *(v17 + 20);
      v11[1] = v18;
      if (v18 > 0x7F)
      {
        v19 = sub_19575D0(v18, v11 + 1);
      }

      else
      {
        v19 = v11 + 2;
      }

      v11 = sub_15751B8(v17, v19, a3);
    }
  }

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v11;
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

  if ((*a3 - v11) >= v23)
  {
    v25 = v23;
    memcpy(v11, v24, v23);
    v11 += v25;
    return v11;
  }

  return sub_1957130(a3, v24, v23, v11);
}

uint64_t sub_1576304(uint64_t a1)
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
      v7 = sub_15752A0(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 16);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = *(a1 + 48);
      if (v9 < 0)
      {
        v10 = 11;
      }

      else
      {
        v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v2 += v10;
    }

    if ((v8 & 2) != 0)
    {
      v11 = *(a1 + 52);
      if (v11 < 0)
      {
        v12 = 11;
      }

      else
      {
        v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v2 += v12;
    }
  }

  v13 = *(a1 + 8);
  if (v13)
  {
    v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    v2 += v16;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_1576420(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_1578388((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
    v7 = *(result + 32) + v4;
    *(result + 32) = v7;
    v8 = *(result + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 3) != 0)
  {
    if (v9)
    {
      *(result + 48) = *(a2 + 48);
    }

    if ((v9 & 2) != 0)
    {
      *(result + 52) = *(a2 + 52);
    }

    *(result + 16) |= v9;
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((result + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_157650C(uint64_t a1)
{
  v1 = *(a1 + 32);
  do
  {
    v2 = v1;
    if (v1 < 1)
    {
      break;
    }

    v3 = *(*(a1 + 40) + 8 * v1--);
  }

  while ((~*(v3 + 16) & 3) == 0);
  return v2 < 1;
}

uint64_t sub_1576554(uint64_t a1)
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

  if (a1 != &off_2777728)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_157539C(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1575D00(v6);
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

void sub_1576624(uint64_t a1)
{
  sub_1576554(a1);

  operator delete();
}

uint64_t sub_157665C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_1574B08(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_1575DB8(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_15766CC(uint64_t a1, char *a2, int32x2_t *a3)
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

          v15 = sub_1576D84(v17);
          *(a1 + 32) = v15;
          v6 = v22;
        }

        v14 = sub_221E90C(a3, v15, v6);
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

        v18 = sub_1576CD4(v20);
        *(a1 + 24) = v18;
        v6 = v22;
      }

      v14 = sub_221E7EC(a3, v18, v6);
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

char *sub_1576874(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_1575830(v7, v9, a3);
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

    v4 = sub_15760B8(v10, v12, a3);
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

uint64_t sub_15769F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_1575A9C(*(a1 + 24));
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
    v5 = sub_1576304(*(a1 + 32));
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

void sub_1576AC0(uint64_t a1, uint64_t a2)
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

        v5 = sub_1576CD4(v7);
        *(a1 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_2777690;
      }

      sub_1574C98(v5, v8);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 16) |= 2u;
      v9 = *(a1 + 32);
      if (!v9)
      {
        v10 = *(a1 + 8);
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
        if (v10)
        {
          v11 = *v11;
        }

        v9 = sub_1576D84(v11);
        *(a1 + 32) = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_27776F0;
      }

      sub_1576420(v9, v12);
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_1576BC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = *(a1 + 24);
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    while (v4 >= 1)
    {
      v6 = *(v5 + 8 * v4--);
      if ((~*(v6 + 16) & 3) != 0)
      {
        return 0;
      }
    }
  }

  if ((v1 & 2) == 0)
  {
    return 1;
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  do
  {
    result = v8 < 1;
    if (v8 < 1)
    {
      break;
    }

    v10 = *(v9 + 8 * v8--);
  }

  while ((~*(v10 + 16) & 3) == 0);
  return result;
}

void *sub_1576C50(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F0818;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

uint64_t sub_1576CD4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F0898;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = &qword_278E990;
  *(result + 64) = &qword_278E990;
  *(result + 72) = &qword_278E990;
  *(result + 80) = &qword_278E990;
  *(result + 88) = 0;
  return result;
}

void *sub_1576D84(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F0918;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

void *sub_1576E20(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F0998;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_1576E9C(uint64_t a1)
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

void sub_1576F54(uint64_t a1)
{
  sub_1576E9C(a1);

  operator delete();
}

uint64_t sub_1576F8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    goto LABEL_11;
  }

  if ((v1 & 1) == 0)
  {
LABEL_5:
    if ((v1 & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_5;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  if ((v1 & 2) != 0)
  {
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
  v5 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1577008(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v21 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v21, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v21 + 1);
    v7 = **v21;
    if (**v21 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v21, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v21 + 2);
      }
    }

    *v21 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v17 = (a1 + 32);
        goto LABEL_26;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 8);
      v16 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v16 = *v16;
      }

      v17 = (a1 + 24);
LABEL_26:
      v19 = sub_194DB04(v17, v16);
      v14 = sub_1958890(v19, *v21, a3);
      goto LABEL_27;
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
        return *v21;
      }

LABEL_33:
      *v21 = 0;
      return *v21;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v21;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_27:
    *v21 = v14;
    if (!v14)
    {
      goto LABEL_33;
    }
  }

  return *v21;
}

char *sub_1577188(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_128AEEC(a3, 2, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
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

uint64_t sub_1577270(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_12;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
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
  v9 = *(a1 + 8);
  if (v9)
  {
    v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v2 += v12;
  }

  *(a1 + 20) = v2;
  return v2;
}

void *sub_157735C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1578404(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15773DC(void *a1)
{
  sub_157735C(a1);

  operator delete();
}

uint64_t sub_1577414(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1576F8C(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_1577490(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_15778DC(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_221E99C(a3, v16, v13);
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

char *sub_1577620(uint64_t a1, char *__dst, unint64_t *a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v8 = *(*(a1 + 32) + 8 * i + 8);
      *__dst = 10;
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

      __dst = sub_1577188(v8, v10, a3);
    }
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return __dst;
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

  if ((*a3 - __dst) >= v14)
  {
    v16 = v14;
    memcpy(__dst, v15, v14);
    __dst += v16;
    return __dst;
  }

  return sub_1957130(a3, v15, v14, __dst);
}

uint64_t sub_1577760(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
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
      v7 = sub_1577270(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

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

  *(a1 + 40) = v2;
  return v2;
}

void sub_1577808(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(result + 16, *(a2 + 24));
    sub_1578488((result + 16), v6, (v5 + 8), v4, **(result + 32) - *(result + 24));
    v7 = *(result + 24) + v4;
    *(result + 24) = v7;
    v8 = *(result + 32);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((result + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_15778DC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F0A18;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

uint64_t sub_1577960(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F0A98;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void sub_1578104(void *a1)
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
          sub_1570890(*v3);
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

void sub_1578188(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_1570E04(v9);
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
      sub_131193C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1578204(void *a1)
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
          sub_1571B28(*v3);
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

void sub_1578288(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_15720DC(v9);
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

void sub_1578304(void *a1)
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
          sub_1574ECC(*v3);
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

void sub_1578388(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_1576C50(v9);
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
      sub_131193C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1578404(void *a1)
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
          sub_1576E9C(*v3);
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

void sub_1578488(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_15778DC(v9);
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
      sub_131193C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1578504()
{
  dword_278D730 = 1001;
  qword_278D738 = &unk_2339A68;
  sub_194EE44(&off_276F370, 1001, 9, 0, 0);
  dword_278D740 = 1002;
  byte_278D744 = 0;
  sub_194EE44(&off_276F370, 1002, 8, 0, 0);
  qword_278D748 = 10001;
  sub_194F628(&off_2772A50, 10001, 14, 0, 0, sub_15728EC);
  dword_278D750 = 10002;
  qword_278D758 = &off_2777638;
  sub_194F72C(&off_2772A50, 10002, 11, 0, 0, &off_2777638);
  qword_278D760 = 10001;
  sub_194F628(&off_2773D28, 10001, 14, 0, 0, sub_15728EC);
  qword_278D768 = 10001;
  sub_194F628(&off_2772158, 10001, 14, 0, 0, sub_15728EC);
  dword_278D770 = 10001;
  qword_278D778 = &off_27775D0;
  sub_194F72C(&off_2780F90, 10001, 11, 0, 0, &off_27775D0);
  dword_278D780 = 10002;
  qword_278D788 = &off_2777608;
  sub_194F72C(&off_2780F90, 10002, 11, 0, 0, &off_2777608);
  dword_278D790 = 10001;
  qword_278D798 = &off_27775D0;
  sub_194F72C(&off_27811E0, 10001, 11, 0, 0, &off_27775D0);
  dword_278D7A0 = 10001;
  qword_278D7A8 = &off_27775D0;
  sub_194F72C(&off_2773FE0, 10001, 11, 0, 0, &off_27775D0);
  dword_278D7B0 = 10001;
  qword_278D7B8 = &off_27775D0;
  sub_194F72C(&off_27741B0, 10001, 11, 0, 0, &off_27775D0);
  dword_278D7C0 = 10001;
  qword_278D7C8 = &off_27775D0;
  sub_194F72C(&off_2770FB8, 10001, 11, 0, 0, &off_27775D0);
  dword_278D7D0 = 10001;
  qword_278D7D8 = &off_27775D0;
  sub_194F72C(&off_2781490, 10001, 11, 0, 0, &off_27775D0);
  qword_278D7E0 = 1051;
  sub_194EE44(&off_2772008, 1051, 5, 0, 0);
  qword_278D7E8 = 1052;
  sub_194EE44(&off_2772008, 1052, 2, 0, 0);
  dword_278D7F0 = 201;
  qword_278D7F8 = 0;
  sub_194EE44(&off_277E5E8, 201, 1, 0, 0);
  dword_278D800 = 17001;
  qword_278D808 = &off_277E980;
  sub_194F72C(&off_2768E38, 17001, 11, 0, 0, &off_277E980);
  dword_278D810 = 17002;
  qword_278D818 = &off_27769A8;
  sub_194F72C(&off_2768E38, 17002, 11, 0, 0, &off_27769A8);
  dword_278D820 = 17003;
  qword_278D828 = &off_2776D50;
  sub_194F72C(&off_2768E38, 17003, 11, 0, 0, &off_2776D50);
  dword_278D830 = 17004;
  qword_278D838 = &off_276B608;
  sub_194F72C(&off_2768E38, 17004, 11, 0, 0, &off_276B608);
  dword_278D840 = 17005;
  qword_278D848 = &off_278AFA0;
  sub_194F72C(&off_2768E38, 17005, 11, 0, 0, &off_278AFA0);
  dword_278D850 = 17006;
  qword_278D858 = &off_278B0B0;
  sub_194F72C(&off_2768E38, 17006, 11, 0, 0, &off_278B0B0);
  dword_278D860 = 17007;
  qword_278D868 = &off_2777780;
  sub_194F72C(&off_2768E38, 17007, 11, 0, 0, &off_2777780);
  dword_278D870 = 17008;
  qword_278D878 = &off_2777750;
  sub_194F72C(&off_2768E38, 17008, 11, 0, 0, &off_2777750);
  dword_278D880 = 10000;
  qword_278D888 = &unk_2339A80;
  sub_194EE44(&off_276FAB8, 10000, 9, 0, 0);
  dword_278D890 = 10001;
  byte_278D894 = 0;
  sub_194EE44(&off_276FAB8, 10001, 8, 0, 0);
  dword_278D898 = 18401;
  qword_278D8A0 = &off_276CBE0;
  sub_194F72C(&off_2768E38, 18401, 11, 0, 0, &off_276CBE0);
  dword_278D8A8 = 18402;
  qword_278D8B0 = &off_276CC68;
  sub_194F72C(&off_2768E38, 18402, 11, 0, 0, &off_276CC68);
  dword_278D8B8 = 18403;
  qword_278D8C0 = &off_276CC90;
  sub_194F72C(&off_2768E38, 18403, 11, 0, 0, &off_276CC90);
  dword_278D8C8 = 18404;
  qword_278D8D0 = &off_276CCF8;
  sub_194F72C(&off_2768E38, 18404, 11, 0, 0, &off_276CCF8);
  dword_278D8D8 = 18405;
  qword_278D8E0 = &off_276D1C0;
  sub_194F72C(&off_2768E38, 18405, 11, 0, 0, &off_276D1C0);
  dword_278D8E8 = 18406;
  qword_278D8F0 = &off_276D228;
  sub_194F72C(&off_2768E38, 18406, 11, 0, 0, &off_276D228);
  dword_278D8F8 = 18407;
  qword_278D900 = &off_276CF48;
  sub_194F72C(&off_2768E38, 18407, 11, 0, 0, &off_276CF48);
  dword_278D908 = 18408;
  qword_278D910 = &off_276CFD8;
  sub_194F72C(&off_2768E38, 18408, 11, 0, 0, &off_276CFD8);
  dword_278D918 = 18409;
  qword_278D920 = &off_277EFB8;
  sub_194F72C(&off_2768E38, 18409, 11, 0, 0, &off_277EFB8);
  dword_278D928 = 18410;
  qword_278D930 = &off_277F2B8;
  sub_194F72C(&off_2768E38, 18410, 11, 0, 0, &off_277F2B8);
  dword_278D938 = 18411;
  byte_278D93C = 0;

  sub_194EE44(&off_2768E38, 18411, 8, 0, 0);
}

char *sub_1578C94()
{
  qword_27CC700 = "NONEUNEXPECTED_INTERACTIONUNKNOWN";
  *algn_27CC708 = 4;
  dword_27CC710 = 0;
  qword_27CC718 = "UNEXPECTED_INTERACTIONUNKNOWN";
  unk_27CC720 = 22;
  dword_27CC728 = 3;
  qword_27CC730 = "UNKNOWN";
  unk_27CC738 = 7;
  dword_27CC740 = 1;
  qword_27CC748 = "UNKNOWN_VERSIONV3V4";
  unk_27CC750 = 15;
  dword_27CC758 = 1;
  qword_27CC760 = "V3V4";
  unk_27CC768 = 2;
  dword_27CC770 = 3;
  qword_27CC778 = "V4";
  unk_27CC780 = 2;
  dword_27CC788 = 4;
  qword_27CC790 = "BLUR_ALGORITHM_UNKNOWNORIGIN_BLURUSER_LOCATION_BLUR";
  *algn_27CC798 = 22;
  dword_27CC7A0 = 0;
  qword_27CC7A8 = "ORIGIN_BLURUSER_LOCATION_BLUR";
  unk_27CC7B0 = 11;
  dword_27CC7B8 = 1;
  qword_27CC7C0 = "USER_LOCATION_BLUR";
  unk_27CC7C8 = 18;
  dword_27CC7D0 = 2;
  qword_27CC7D8 = "CURRENT_USER_LOCATIONLOCATION_SOURCE_UNKNOWNOTHER_KNOWN_SOURCEPLACE_SEARCH_RESPONSESESSION_STATETRIP_ORIGINWAYPOINT_TYPEDZILCH";
  unk_27CC7E0 = 21;
  dword_27CC7E8 = 3;
  qword_27CC7F0 = "LOCATION_SOURCE_UNKNOWNOTHER_KNOWN_SOURCEPLACE_SEARCH_RESPONSESESSION_STATETRIP_ORIGINWAYPOINT_TYPEDZILCH";
  unk_27CC7F8 = 23;
  dword_27CC800 = 0;
  qword_27CC808 = "OTHER_KNOWN_SOURCEPLACE_SEARCH_RESPONSESESSION_STATETRIP_ORIGINWAYPOINT_TYPEDZILCH";
  unk_27CC810 = 18;
  dword_27CC818 = 1;
  qword_27CC820 = "PLACE_SEARCH_RESPONSESESSION_STATETRIP_ORIGINWAYPOINT_TYPEDZILCH";
  unk_27CC828 = 21;
  dword_27CC830 = 6;
  qword_27CC838 = "SESSION_STATETRIP_ORIGINWAYPOINT_TYPEDZILCH";
  unk_27CC840 = 13;
  dword_27CC848 = 2;
  qword_27CC850 = "TRIP_ORIGINWAYPOINT_TYPEDZILCH";
  unk_27CC858 = 11;
  dword_27CC860 = 7;
  qword_27CC868 = "WAYPOINT_TYPEDZILCH";
  unk_27CC870 = 14;
  dword_27CC878 = 4;
  qword_27CC880 = "ZILCH";
  unk_27CC888 = 5;
  dword_27CC890 = 5;
  qword_27CC898 = "EQUAL_TOGREATER_THANLESS_THANREROUTE_DISTANCE_TO_THRESHOLD_RELATION_UNKNOWN";
  unk_27CC8A0 = 8;
  dword_27CC8A8 = 2;
  qword_27CC8B0 = "GREATER_THANLESS_THANREROUTE_DISTANCE_TO_THRESHOLD_RELATION_UNKNOWN";
  unk_27CC8B8 = 12;
  dword_27CC8C0 = 3;
  qword_27CC8C8 = "LESS_THANREROUTE_DISTANCE_TO_THRESHOLD_RELATION_UNKNOWN";
  unk_27CC8D0 = 9;
  dword_27CC8D8 = 1;
  qword_27CC8E0 = "REROUTE_DISTANCE_TO_THRESHOLD_RELATION_UNKNOWN";
  unk_27CC8E8 = 46;
  dword_27CC8F0 = 0;
  qword_27CC8F8 = "BLUR_TYPE_UNKNOWNFULL_BLURNO_BLURPARTIAL_BLURUNABLE_TO_BLUR";
  unk_27CC900 = 17;
  dword_27CC908 = 0;
  qword_27CC910 = "FULL_BLURNO_BLURPARTIAL_BLURUNABLE_TO_BLUR";
  unk_27CC918 = 9;
  dword_27CC920 = 4;
  qword_27CC928 = "NO_BLURPARTIAL_BLURUNABLE_TO_BLUR";
  unk_27CC930 = 7;
  dword_27CC938 = 2;
  qword_27CC940 = "PARTIAL_BLURUNABLE_TO_BLUR";
  unk_27CC948 = 12;
  dword_27CC950 = 3;
  qword_27CC958 = "UNABLE_TO_BLUR";
  unk_27CC960 = 14;
  dword_27CC968 = 1;
  qword_27CC970 = "AUTONAVI_AND_ROWAUTONAVI_ONLYNONEROW_ONLYUNKNOWN";
  *algn_27CC978 = 16;
  dword_27CC980 = 4;
  qword_27CC988 = "AUTONAVI_ONLYNONEROW_ONLYUNKNOWN";
  unk_27CC990 = 13;
  dword_27CC998 = 2;
  qword_27CC9A0 = "NONEROW_ONLYUNKNOWN";
  unk_27CC9A8 = 4;
  dword_27CC9B0 = 1;
  qword_27CC9B8 = "ROW_ONLYUNKNOWN";
  unk_27CC9C0 = 8;
  dword_27CC9C8 = 3;
  qword_27CC9D0 = "UNKNOWN";
  unk_27CC9D8 = 7;
  dword_27CC9E0 = 0;
  qword_27CC9E8 = "INSIDE_CHINAOUTSIDE_CHINAUNKNOWN_VIEWPORT";
  unk_27CC9F0 = 12;
  dword_27CC9F8 = 1;
  qword_27CCA00 = "OUTSIDE_CHINAUNKNOWN_VIEWPORT";
  unk_27CCA08 = 13;
  dword_27CCA10 = 2;
  qword_27CCA18 = "UNKNOWN_VIEWPORT";
  unk_27CCA20 = 16;
  dword_27CCA28 = 0;
  qword_27CCA30 = "DEBUG_LVLERROR_LVLFATAL_LVLINFO_LVLTRACE_LVLWARN_LVL";
  *algn_27CCA38 = 9;
  dword_27CCA40 = 2;
  result = "ERROR_LVLFATAL_LVLINFO_LVLTRACE_LVLWARN_LVL";
  qword_27CCA48 = "ERROR_LVLFATAL_LVLINFO_LVLTRACE_LVLWARN_LVL";
  unk_27CCA50 = 9;
  dword_27CCA58 = 5;
  qword_27CCA60 = "FATAL_LVLINFO_LVLTRACE_LVLWARN_LVL";
  unk_27CCA68 = 9;
  dword_27CCA70 = 6;
  qword_27CCA78 = "INFO_LVLTRACE_LVLWARN_LVL";
  unk_27CCA80 = 8;
  dword_27CCA88 = 3;
  qword_27CCA90 = "TRACE_LVLWARN_LVL";
  unk_27CCA98 = 9;
  dword_27CCAA0 = 1;
  qword_27CCAA8 = "WARN_LVL";
  unk_27CCAB0 = 8;
  dword_27CCAB8 = 4;
  qword_27CCAC0 = "GZIPLZ4NONEZSTD";
  *algn_27CCAC8 = 4;
  dword_27CCAD0 = 3;
  qword_27CCAD8 = "LZ4NONEZSTD";
  unk_27CCAE0 = 3;
  dword_27CCAE8 = 2;
  qword_27CCAF0 = "NONEZSTD";
  unk_27CCAF8 = 4;
  dword_27CCB00 = 1;
  qword_27CCB08 = "ZSTD";
  unk_27CCB10 = 4;
  dword_27CCB18 = 4;
  return result;
}

uint64_t sub_1578F80(uint64_t a1)
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

void sub_1579038(uint64_t a1)
{
  sub_1578F80(a1);

  operator delete();
}

uint64_t sub_1579070(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    goto LABEL_11;
  }

  if ((v1 & 1) == 0)
  {
LABEL_5:
    if ((v1 & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_5;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  if ((v1 & 2) != 0)
  {
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
  v5 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_15790EC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v21 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v21, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v21 + 1);
    v7 = **v21;
    if (**v21 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v21, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v21 + 2);
      }
    }

    *v21 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v17 = (a1 + 32);
        goto LABEL_26;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 8);
      v16 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v16 = *v16;
      }

      v17 = (a1 + 24);
LABEL_26:
      v19 = sub_194DB04(v17, v16);
      v14 = sub_1958890(v19, *v21, a3);
      goto LABEL_27;
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
        return *v21;
      }

LABEL_33:
      *v21 = 0;
      return *v21;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v21;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_27:
    *v21 = v14;
    if (!v14)
    {
      goto LABEL_33;
    }
  }

  return *v21;
}

char *sub_157926C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_128AEEC(a3, 2, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
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

uint64_t sub_1579354(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_12;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
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
  v9 = *(a1 + 8);
  if (v9)
  {
    v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v2 += v12;
  }

  *(a1 + 20) = v2;
  return v2;
}

void *sub_1579440(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1311EE8(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15794C0(void *a1)
{
  sub_1579440(a1);

  operator delete();
}

uint64_t sub_15794F8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1579070(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_1579574(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_157B674(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_21F8DA8(a3, v16, v13);
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

char *sub_1579704(uint64_t a1, char *__dst, unint64_t *a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v8 = *(*(a1 + 32) + 8 * i + 8);
      *__dst = 10;
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

      __dst = sub_157926C(v8, v10, a3);
    }
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return __dst;
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

  if ((*a3 - __dst) >= v14)
  {
    v16 = v14;
    memcpy(__dst, v15, v14);
    __dst += v16;
    return __dst;
  }

  return sub_1957130(a3, v15, v14, __dst);
}

uint64_t sub_1579844(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
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
      v7 = sub_1579354(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

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

  *(a1 + 40) = v2;
  return v2;
}

void sub_15798EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_1311FF0((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
    v7 = *(a1 + 24) + v4;
    *(a1 + 24) = v7;
    v8 = *(a1 + 32);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15799C0(uint64_t a1)
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

void sub_1579A60(uint64_t a1)
{
  sub_15799C0(a1);

  operator delete();
}

uint64_t sub_1579A98(uint64_t a1)
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

uint64_t sub_1579AE0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v24 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v24, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v24 + 1);
    v8 = **v24;
    if (**v24 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v24, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v24 + 2);
      }
    }

    *v24 = v7;
    if (v8 >> 3 != 2)
    {
      break;
    }

    if (v8 != 16)
    {
      goto LABEL_12;
    }

    v5 |= 2u;
    v16 = v7 + 1;
    v17 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    v18 = *v16;
    v17 = v17 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v16 = v7 + 2;
LABEL_23:
      *v24 = v16;
      *(a1 + 32) = v17;
      goto LABEL_28;
    }

    v22 = sub_1958770(v7, v17);
    *v24 = v22;
    *(a1 + 32) = v23;
    if (!v22)
    {
      goto LABEL_35;
    }

LABEL_28:
    if (sub_195ADC0(a3, v24, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1 && v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    v21 = sub_194DB04((a1 + 24), v20);
    v15 = sub_1958890(v21, *v24, a3);
LABEL_27:
    *v24 = v15;
    if (!v15)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

LABEL_12:
  if (v8)
  {
    v12 = (v8 & 7) == 4;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v7 = *v24;
    }

    v15 = sub_1952690(v8, v14, v7, a3);
    goto LABEL_27;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_35:
  *v24 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v24;
}

char *sub_1579CAC(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 32);
    *v4 = 16;
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v9 = v8 >> 7;
      v4[2] = v8 >> 7;
      v7 = v4 + 3;
      if (v8 >= 0x4000)
      {
        LOBYTE(v10) = v4[2];
        do
        {
          *(v7 - 1) = v10 | 0x80;
          v10 = v9 >> 7;
          *v7++ = v9 >> 7;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
      }
    }

    else
    {
      v7 = v4 + 2;
    }
  }

  else
  {
    v7 = v4;
  }

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return v7;
  }

  v14 = v12 & 0xFFFFFFFFFFFFFFFCLL;
  v15 = *(v14 + 31);
  if (v15 < 0)
  {
    v16 = *(v14 + 8);
    v15 = *(v14 + 16);
  }

  else
  {
    v16 = (v14 + 8);
  }

  if ((*a3 - v7) >= v15)
  {
    v17 = v15;
    memcpy(v7, v16, v15);
    v7 += v17;
    return v7;
  }

  return sub_1957130(a3, v16, v15, v7);
}

uint64_t sub_1579DF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_10;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_10;
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
    goto LABEL_9;
  }

LABEL_10:
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

uint64_t sub_1579EC8(uint64_t a1)
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

void sub_1579F68(uint64_t a1)
{
  sub_1579EC8(a1);

  operator delete();
}

uint64_t sub_1579FA0(uint64_t a1)
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

uint64_t sub_1579FE8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v19 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v19, a3[11].u32[1]))
  {
    goto LABEL_29;
  }

  while (1)
  {
    v6 = (*v19 + 1);
    v7 = **v19;
    if (**v19 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v19, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v19 + 2);
      }
    }

    *v19 = v6;
    if (v7 >> 3 == 2)
    {
      break;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_11;
    }

    *(a1 + 16) |= 1u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v17 = sub_194DB04((a1 + 24), v16);
    v14 = sub_1958890(v17, *v19, a3);
LABEL_23:
    *v19 = v14;
    if (!v14)
    {
      goto LABEL_30;
    }

LABEL_24:
    if (sub_195ADC0(a3, v19, a3[11].u32[1]))
    {
      goto LABEL_29;
    }
  }

  if (v7 == 21)
  {
    v5 |= 2u;
    *(a1 + 32) = *v6;
    *v19 = v6 + 4;
    goto LABEL_24;
  }

LABEL_11:
  if (v7)
  {
    v11 = (v7 & 7) == 4;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v19;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
    goto LABEL_23;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_29;
  }

LABEL_30:
  *v19 = 0;
LABEL_29:
  *(a1 + 16) |= v5;
  return *v19;
}

char *sub_157A174(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v7 = *(a1 + 32);
    *v4 = 21;
    *(v4 + 1) = v7;
    v4 += 5;
  }

  v8 = *(a1 + 8);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = *(v10 + 31);
  if (v11 < 0)
  {
    v12 = *(v10 + 8);
    v11 = *(v10 + 16);
  }

  else
  {
    v12 = (v10 + 8);
  }

  if ((*a3 - v4) >= v11)
  {
    v13 = v11;
    memcpy(v4, v12, v11);
    v4 += v13;
    return v4;
  }

  return sub_1957130(a3, v12, v11, v4);
}

uint64_t sub_157A274(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v3 = v2 + 5;
    }

    else
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    v3 += v10;
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_157A324(uint64_t a1)
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

void sub_157A3C4(uint64_t a1)
{
  sub_157A324(a1);

  operator delete();
}

uint64_t sub_157A3FC(uint64_t a1)
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

uint64_t sub_157A444(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v19 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v19, a3[11].u32[1]))
  {
    goto LABEL_29;
  }

  while (1)
  {
    v6 = (*v19 + 1);
    v7 = **v19;
    if (**v19 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v19, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v19 + 2);
      }
    }

    *v19 = v6;
    if (v7 >> 3 == 2)
    {
      break;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_11;
    }

    *(a1 + 16) |= 1u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v17 = sub_194DB04((a1 + 24), v16);
    v14 = sub_1958890(v17, *v19, a3);
LABEL_23:
    *v19 = v14;
    if (!v14)
    {
      goto LABEL_30;
    }

LABEL_24:
    if (sub_195ADC0(a3, v19, a3[11].u32[1]))
    {
      goto LABEL_29;
    }
  }

  if (v7 == 17)
  {
    v5 |= 2u;
    *(a1 + 32) = *v6;
    *v19 = v6 + 8;
    goto LABEL_24;
  }

LABEL_11:
  if (v7)
  {
    v11 = (v7 & 7) == 4;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v19;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
    goto LABEL_23;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_29;
  }

LABEL_30:
  *v19 = 0;
LABEL_29:
  *(a1 + 16) |= v5;
  return *v19;
}

char *sub_157A5D0(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v7 = *(a1 + 32);
    *v4 = 17;
    *(v4 + 1) = v7;
    v4 += 9;
  }

  v8 = *(a1 + 8);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = *(v10 + 31);
  if (v11 < 0)
  {
    v12 = *(v10 + 8);
    v11 = *(v10 + 16);
  }

  else
  {
    v12 = (v10 + 8);
  }

  if ((*a3 - v4) >= v11)
  {
    v13 = v11;
    memcpy(v4, v12, v11);
    v4 += v13;
    return v4;
  }

  return sub_1957130(a3, v12, v11, v4);
}

uint64_t sub_157A6D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v3 = v2 + 9;
    }

    else
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    v3 += v10;
  }

  *(a1 + 20) = v3;
  return v3;
}

void *sub_157A780(void *a1)
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

void sub_157A7F4(void *a1)
{
  sub_157A780(a1);

  operator delete();
}

uint64_t sub_157A82C(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
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

char *sub_157A850(uint64_t a1, char *a2, int32x2_t *a3)
{
  v20 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v20, a3[11].u32[1]))
  {
    goto LABEL_32;
  }

  while (1)
  {
    v6 = v20 + 1;
    v7 = *v20;
    if (*v20 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v20, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v20 + 2;
      }
    }

    v20 = v6;
    if (v7 >> 3 == 2)
    {
      break;
    }

    if (v7 >> 3 != 1 || v7 != 8)
    {
      goto LABEL_11;
    }

    v5 |= 1u;
    v15 = v6 + 1;
    v14 = *v6;
    if ((v14 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

    v16 = *v15;
    v14 = (v16 << 7) + v14 - 128;
    if ((v16 & 0x80000000) == 0)
    {
      v15 = v6 + 2;
LABEL_24:
      v20 = v15;
      *(a1 + 24) = v14;
      goto LABEL_25;
    }

    v17 = sub_19587DC(v6, v14);
    v20 = v17;
    *(a1 + 24) = v18;
    if (!v17)
    {
      goto LABEL_33;
    }

LABEL_25:
    if (sub_195ADC0(a3, &v20, a3[11].u32[1]))
    {
      goto LABEL_32;
    }
  }

  if (v7 == 17)
  {
    v5 |= 2u;
    *(a1 + 32) = *v6;
    v20 = v6 + 8;
    goto LABEL_25;
  }

LABEL_11:
  if (v7)
  {
    v11 = (v7 & 7) == 4;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = v20;
    }

    v20 = sub_1952690(v7, v13, v6, a3);
    if (!v20)
    {
      goto LABEL_33;
    }

    goto LABEL_25;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_32;
  }

LABEL_33:
  v20 = 0;
LABEL_32:
  *(a1 + 16) |= v5;
  return v20;
}

char *sub_157A9F4(uint64_t a1, char *__dst, void *a3)
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

    v11 = *(a1 + 32);
    *v6 = 17;
    *(v6 + 1) = v11;
    v6 += 9;
  }

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return v6;
  }

  v14 = v12 & 0xFFFFFFFFFFFFFFFCLL;
  v15 = *(v14 + 31);
  if (v15 < 0)
  {
    v16 = *(v14 + 8);
    v15 = *(v14 + 16);
  }

  else
  {
    v16 = (v14 + 8);
  }

  if (*a3 - v6 >= v15)
  {
    v17 = v15;
    memcpy(v6, v16, v15);
    v6 += v17;
    return v6;
  }

  return sub_1957130(a3, v16, v15, v6);
}

unint64_t sub_157AB54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v3 = v2 + 9;
    }

    else
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v7 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v7 < 0)
    {
      v7 = *(v6 + 16);
    }

    v3 += v7;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_157ABD0(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
    }

    if ((v2 & 2) != 0)
    {
      result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    }

    LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_157AC34(uint64_t a1)
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

void sub_157ACEC(uint64_t a1)
{
  sub_157AC34(a1);

  operator delete();
}

uint64_t sub_157AD24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    goto LABEL_11;
  }

  if ((v1 & 1) == 0)
  {
LABEL_5:
    if ((v1 & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_5;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  if ((v1 & 2) != 0)
  {
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
  v5 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_157ADA0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v21 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v21, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v21 + 1);
    v7 = **v21;
    if (**v21 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v21, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v21 + 2);
      }
    }

    *v21 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v17 = (a1 + 32);
        goto LABEL_26;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 8);
      v16 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v16 = *v16;
      }

      v17 = (a1 + 24);
LABEL_26:
      v19 = sub_194DB04(v17, v16);
      v14 = sub_1958890(v19, *v21, a3);
      goto LABEL_27;
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
        return *v21;
      }

LABEL_33:
      *v21 = 0;
      return *v21;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v21;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_27:
    *v21 = v14;
    if (!v14)
    {
      goto LABEL_33;
    }
  }

  return *v21;
}

char *sub_157AF20(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_128AEEC(a3, 2, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
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

uint64_t sub_157B008(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_12;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
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
  v9 = *(a1 + 8);
  if (v9)
  {
    v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v2 += v12;
  }

  *(a1 + 20) = v2;
  return v2;
}

void *sub_157B0F4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_15B4834(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_157B174(void *a1)
{
  sub_157B0F4(a1);

  operator delete();
}

uint64_t sub_157B1AC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_157AD24(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_157B228(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_157B9A8(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_221EB4C(a3, v16, v13);
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

char *sub_157B3B8(uint64_t a1, char *__dst, unint64_t *a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v8 = *(*(a1 + 32) + 8 * i + 8);
      *__dst = 10;
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

      __dst = sub_157AF20(v8, v10, a3);
    }
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return __dst;
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

  if ((*a3 - __dst) >= v14)
  {
    v16 = v14;
    memcpy(__dst, v15, v14);
    __dst += v16;
    return __dst;
  }

  return sub_1957130(a3, v15, v14, __dst);
}

uint64_t sub_157B4F8(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
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
      v7 = sub_157B008(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

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

  *(a1 + 40) = v2;
  return v2;
}

void sub_157B5A0(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(result + 16, *(a2 + 24));
    sub_15B49C0((result + 16), v6, (v5 + 8), v4, **(result + 32) - *(result + 24));
    v7 = *(result + 24) + v4;
    *(result + 24) = v7;
    v8 = *(result + 32);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((result + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_157B674(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F0CB0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

uint64_t sub_157B6F8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F0D30;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_157B798(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F0DB0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_157B820(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F0E30;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

void *sub_157B8A8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F0EB0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

void *sub_157B92C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F0F30;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_157B9A8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F0FB0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

uint64_t sub_157BA2C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F1030;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_157BAD8(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_13B52E0(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_157BB58(void *a1)
{
  sub_157BAD8(a1);

  operator delete();
}

unsigned __int8 *sub_157BB90(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (*(result + 4) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E5B70(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_157BC0C(uint64_t a1, char *a2, int32x2_t *a3)
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
            sub_16F58FC(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_21F86E8(a3, v16, v13);
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

char *sub_157BD9C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v8 = *(*(a1 + 32) + 8 * i + 8);
      *__dst = 10;
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

      __dst = sub_16E5FE0(v8, v10, a3);
    }
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return __dst;
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

  if ((*a3 - __dst) >= v14)
  {
    v16 = v14;
    memcpy(__dst, v15, v14);
    __dst += v16;
    return __dst;
  }

  return sub_1957130(a3, v15, v14, __dst);
}

uint64_t sub_157BEDC(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
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
      v7 = sub_16E62F4(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

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

  *(a1 + 40) = v2;
  return v2;
}

void sub_157BF84(uint64_t *result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8((result + 2), *(a2 + 24));
    sub_13B5364(result + 2, v6, (v5 + 8), v4, *result[4] - *(result + 6));
    v7 = *(result + 6) + v4;
    *(result + 6) = v7;
    v8 = result[4];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4(result + 1, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_157C040(uint64_t a1)
{
  v2 = *(a1 + 24);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_16E6614(*(*(a1 + 32) + 8 * v2));
    v2 = v4;
  }

  while (v5);
  return v3 < 1;
}

uint64_t sub_157C0A8(uint64_t a1)
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

  if (a1 != &off_2777810)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_16E4E08(v6);
      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_16E5B34(v7);
      operator delete();
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      sub_157BAD8(v8);
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

void sub_157C1B4(uint64_t a1)
{
  sub_157C0A8(a1);

  operator delete();
}

unsigned __int8 *sub_157C1EC(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_19:
    result = sub_16E4E44(*(result + 4));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_20;
  }

  v5 = *(result + 3) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_19;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_20:
  result = sub_16E5B70(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_157BB90(*(v1 + 48));
  }

LABEL_7:
  if ((v2 & 0xF0) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
    *(v1 + 72) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 80) = 0;
    *(v1 + 88) = 0;
    *(v1 + 96) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 96) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_157C2CC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v58 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v58, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v58 + 1);
    v8 = **v58;
    if (**v58 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v58, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v58 + 2);
      }
    }

    *v58 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_76;
        }

        *(a1 + 16) |= 2u;
        v11 = *(a1 + 32);
        if (!v11)
        {
          v12 = *(a1 + 8);
          v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
          if (v12)
          {
            v13 = *v13;
          }

          v11 = sub_16F5828(v13);
          *(a1 + 32) = v11;
          v7 = *v58;
        }

        v14 = sub_21F4D60(a3, v11, v7);
        goto LABEL_83;
      case 2u:
        if (v8 != 18)
        {
          goto LABEL_76;
        }

        *(a1 + 16) |= 4u;
        v34 = *(a1 + 40);
        if (!v34)
        {
          v35 = *(a1 + 8);
          v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
          if (v35)
          {
            v36 = *v36;
          }

          sub_16F58FC(v36);
          v34 = v37;
          *(a1 + 40) = v37;
          v7 = *v58;
        }

        v14 = sub_21F86E8(a3, v34, v7);
        goto LABEL_83;
      case 3u:
        if (v8 != 25)
        {
          goto LABEL_76;
        }

        v26 = *v7;
        v15 = v7 + 8;
        v5 |= 0x10u;
        *(a1 + 56) = v26;
        goto LABEL_66;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_76;
        }

        v29 = v7 + 1;
        v28 = *v7;
        if ((v28 & 0x8000000000000000) == 0)
        {
          goto LABEL_42;
        }

        v30 = *v29;
        v28 = (v30 << 7) + v28 - 128;
        if (v30 < 0)
        {
          *v58 = sub_19587DC(v7, v28);
          if (!*v58)
          {
            goto LABEL_101;
          }
        }

        else
        {
          v29 = v7 + 2;
LABEL_42:
          *v58 = v29;
        }

        if (v28 > 3)
        {
          sub_12E8500();
        }

        else
        {
          *(a1 + 16) |= 0x20u;
          *(a1 + 64) = v28;
        }

        goto LABEL_84;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_76;
        }

        v20 = v7 + 1;
        v19 = *v7;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          *v58 = sub_19587DC(v7, v19);
          if (!*v58)
          {
            goto LABEL_101;
          }
        }

        else
        {
          v20 = v7 + 2;
LABEL_24:
          *v58 = v20;
        }

        if (v19 > 6)
        {
          sub_1313700();
        }

        else
        {
          *(a1 + 16) |= 0x40u;
          *(a1 + 68) = v19;
        }

        goto LABEL_84;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_76;
        }

        *(a1 + 16) |= 8u;
        v38 = *(a1 + 48);
        if (!v38)
        {
          v39 = *(a1 + 8);
          v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
          if (v39)
          {
            v40 = *v40;
          }

          v38 = sub_157D884(v40);
          *(a1 + 48) = v38;
          v7 = *v58;
        }

        v14 = sub_221EBDC(a3, v38, v7);
        goto LABEL_83;
      case 7u:
        if (v8 != 57)
        {
          goto LABEL_76;
        }

        v42 = *v7;
        v15 = v7 + 8;
        v5 |= 0x80u;
        *(a1 + 72) = v42;
        goto LABEL_66;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_76;
        }

        v5 |= 0x100u;
        v32 = v7 + 1;
        v31 = *v7;
        if ((v31 & 0x8000000000000000) == 0)
        {
          goto LABEL_49;
        }

        v33 = *v32;
        v31 = (v33 << 7) + v31 - 128;
        if (v33 < 0)
        {
          v54 = sub_19587DC(v7, v31);
          *v58 = v54;
          *(a1 + 80) = v55 != 0;
          if (!v54)
          {
            goto LABEL_101;
          }
        }

        else
        {
          v32 = v7 + 2;
LABEL_49:
          *v58 = v32;
          *(a1 + 80) = v31 != 0;
        }

        goto LABEL_84;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_76;
        }

        v5 |= 0x200u;
        v47 = v7 + 1;
        v46 = *v7;
        if ((v46 & 0x8000000000000000) == 0)
        {
          goto LABEL_75;
        }

        v48 = *v47;
        v46 = (v48 << 7) + v46 - 128;
        if (v48 < 0)
        {
          v56 = sub_19587DC(v7, v46);
          *v58 = v56;
          *(a1 + 81) = v57 != 0;
          if (!v56)
          {
            goto LABEL_101;
          }
        }

        else
        {
          v47 = v7 + 2;
LABEL_75:
          *v58 = v47;
          *(a1 + 81) = v46 != 0;
        }

        goto LABEL_84;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_76;
        }

        v5 |= 0x400u;
        v24 = v7 + 1;
        v23 = *v7;
        if ((v23 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        v25 = *v24;
        v23 = (v25 << 7) + v23 - 128;
        if (v25 < 0)
        {
          v52 = sub_19587DC(v7, v23);
          *v58 = v52;
          *(a1 + 82) = v53 != 0;
          if (!v52)
          {
            goto LABEL_101;
          }
        }

        else
        {
          v24 = v7 + 2;
LABEL_33:
          *v58 = v24;
          *(a1 + 82) = v23 != 0;
        }

        goto LABEL_84;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_76;
        }

        *(a1 + 16) |= 1u;
        v43 = *(a1 + 8);
        v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
        if (v43)
        {
          v44 = *v44;
        }

        v45 = sub_194DB04((a1 + 24), v44);
        v14 = sub_1958890(v45, *v58, a3);
        goto LABEL_83;
      case 0xCu:
        if (v8 != 101)
        {
          goto LABEL_76;
        }

        v18 = *v7;
        v15 = v7 + 4;
        v5 |= 0x800u;
        *(a1 + 84) = v18;
        goto LABEL_66;
      case 0xDu:
        if (v8 != 109)
        {
          goto LABEL_76;
        }

        v22 = *v7;
        v15 = v7 + 4;
        v5 |= 0x1000u;
        *(a1 + 88) = v22;
        goto LABEL_66;
      case 0xEu:
        if (v8 != 117)
        {
          goto LABEL_76;
        }

        v41 = *v7;
        v15 = v7 + 4;
        v5 |= 0x2000u;
        *(a1 + 92) = v41;
        goto LABEL_66;
      case 0xFu:
        if (v8 != 125)
        {
          goto LABEL_76;
        }

        v17 = *v7;
        v15 = v7 + 4;
        v5 |= 0x4000u;
        *(a1 + 96) = v17;
        goto LABEL_66;
      case 0x10u:
        if (v8 != 133)
        {
          goto LABEL_76;
        }

        v27 = *v7;
        v15 = v7 + 4;
        v5 |= 0x8000u;
        *(a1 + 100) = v27;
        goto LABEL_66;
      case 0x11u:
        if (v8 != 141)
        {
          goto LABEL_76;
        }

        v16 = *v7;
        v15 = v7 + 4;
        v5 |= 0x10000u;
        *(a1 + 104) = v16;
LABEL_66:
        *v58 = v15;
        goto LABEL_84;
      default:
LABEL_76:
        if (v8)
        {
          v49 = (v8 & 7) == 4;
        }

        else
        {
          v49 = 1;
        }

        if (!v49)
        {
          v50 = *(a1 + 8);
          if (v50)
          {
            v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v51 = sub_11F1920((a1 + 8));
            v7 = *v58;
          }

          v14 = sub_1952690(v8, v51, v7, a3);
LABEL_83:
          *v58 = v14;
          if (!v14)
          {
            goto LABEL_101;
          }

LABEL_84:
          if (sub_195ADC0(a3, v58, a3[11].u32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

        if (v7)
        {
          a3[10].i32[0] = v8 - 1;
        }

        else
        {
LABEL_101:
          *v58 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v58;
    }
  }
}

char *sub_157C8A0(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 32);
    *v4 = 10;
    v9 = *(v8 + 44);
    v4[1] = v9;
    if (v9 > 0x7F)
    {
      v10 = sub_19575D0(v9, v4 + 1);
    }

    else
    {
      v10 = v4 + 2;
    }

    v4 = sub_16E5070(v8, v10, a3);
    if ((v6 & 4) == 0)
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

      v14 = *(a1 + 56);
      *v4 = 25;
      *(v4 + 1) = v14;
      v4 += 9;
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_21;
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

  v11 = *(a1 + 40);
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

  v4 = sub_16E5FE0(v11, v13, a3);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_4:
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    v7 = v4;
    goto LABEL_28;
  }

LABEL_21:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v15 = *(a1 + 64);
  *v4 = 32;
  v4[1] = v15;
  if (v15 > 0x7F)
  {
    v4[1] = v15 | 0x80;
    v16 = v15 >> 7;
    v4[2] = v15 >> 7;
    v7 = v4 + 3;
    if (v15 >= 0x4000)
    {
      LOBYTE(v4) = v4[2];
      do
      {
        *(v7 - 1) = v4 | 0x80;
        v4 = (v16 >> 7);
        *v7++ = v16 >> 7;
        v17 = v16 >> 14;
        v16 >>= 7;
      }

      while (v17);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_28:
  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v19 = *(a1 + 68);
    *v7 = 40;
    v7[1] = v19;
    if (v19 > 0x7F)
    {
      v7[1] = v19 | 0x80;
      v20 = v19 >> 7;
      v7[2] = v19 >> 7;
      v18 = v7 + 3;
      if (v19 >= 0x4000)
      {
        LOBYTE(v7) = v7[2];
        do
        {
          *(v18 - 1) = v7 | 0x80;
          v7 = (v20 >> 7);
          *v18++ = v20 >> 7;
          v21 = v20 >> 14;
          v20 >>= 7;
        }

        while (v21);
      }
    }

    else
    {
      v18 = v7 + 2;
    }
  }

  else
  {
    v18 = v7;
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v18)
    {
      v18 = sub_225EB68(a3, v18);
    }

    v22 = *(a1 + 48);
    *v18 = 50;
    v23 = *(v22 + 40);
    v18[1] = v23;
    if (v23 > 0x7F)
    {
      v24 = sub_19575D0(v23, v18 + 1);
    }

    else
    {
      v24 = v18 + 2;
    }

    v18 = sub_157BD9C(v22, v24, a3);
    if ((v6 & 0x80) == 0)
    {
LABEL_39:
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_59;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_39;
  }

  if (*a3 <= v18)
  {
    v18 = sub_225EB68(a3, v18);
  }

  v25 = *(a1 + 72);
  *v18 = 57;
  *(v18 + 1) = v25;
  v18 += 9;
  if ((v6 & 0x100) == 0)
  {
LABEL_40:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_62;
  }

LABEL_59:
  if (*a3 <= v18)
  {
    v18 = sub_225EB68(a3, v18);
  }

  v26 = *(a1 + 80);
  *v18 = 64;
  v18[1] = v26;
  v18 += 2;
  if ((v6 & 0x200) == 0)
  {
LABEL_41:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_65;
  }

LABEL_62:
  if (*a3 <= v18)
  {
    v18 = sub_225EB68(a3, v18);
  }

  v27 = *(a1 + 81);
  *v18 = 72;
  v18[1] = v27;
  v18 += 2;
  if ((v6 & 0x400) == 0)
  {
LABEL_42:
    if ((v6 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_68;
  }

LABEL_65:
  if (*a3 <= v18)
  {
    v18 = sub_225EB68(a3, v18);
  }

  v28 = *(a1 + 82);
  *v18 = 80;
  v18[1] = v28;
  v18 += 2;
  if ((v6 & 1) == 0)
  {
LABEL_43:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_69;
  }

LABEL_68:
  v18 = sub_128AEEC(a3, 11, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v18);
  if ((v6 & 0x800) == 0)
  {
LABEL_44:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_72;
  }

LABEL_69:
  if (*a3 <= v18)
  {
    v18 = sub_225EB68(a3, v18);
  }

  v29 = *(a1 + 84);
  *v18 = 101;
  *(v18 + 1) = v29;
  v18 += 5;
  if ((v6 & 0x1000) == 0)
  {
LABEL_45:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_75;
  }

LABEL_72:
  if (*a3 <= v18)
  {
    v18 = sub_225EB68(a3, v18);
  }

  v30 = *(a1 + 88);
  *v18 = 109;
  *(v18 + 1) = v30;
  v18 += 5;
  if ((v6 & 0x2000) == 0)
  {
LABEL_46:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_78;
  }

LABEL_75:
  if (*a3 <= v18)
  {
    v18 = sub_225EB68(a3, v18);
  }

  v31 = *(a1 + 92);
  *v18 = 117;
  *(v18 + 1) = v31;
  v18 += 5;
  if ((v6 & 0x4000) == 0)
  {
LABEL_47:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_81;
  }

LABEL_78:
  if (*a3 <= v18)
  {
    v18 = sub_225EB68(a3, v18);
  }

  v32 = *(a1 + 96);
  *v18 = 125;
  *(v18 + 1) = v32;
  v18 += 5;
  if ((v6 & 0x8000) == 0)
  {
LABEL_48:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_84;
  }

LABEL_81:
  if (*a3 <= v18)
  {
    v18 = sub_225EB68(a3, v18);
  }

  v33 = *(a1 + 100);
  *v18 = 389;
  *(v18 + 2) = v33;
  v18 += 6;
  if ((v6 & 0x10000) != 0)
  {
LABEL_84:
    if (*a3 <= v18)
    {
      v18 = sub_225EB68(a3, v18);
    }

    v34 = *(a1 + 104);
    *v18 = 397;
    *(v18 + 2) = v34;
    v18 += 6;
  }

LABEL_87:
  v35 = *(a1 + 8);
  if ((v35 & 1) == 0)
  {
    return v18;
  }

  v37 = v35 & 0xFFFFFFFFFFFFFFFCLL;
  v38 = *(v37 + 31);
  if (v38 < 0)
  {
    v39 = *(v37 + 8);
    v38 = *(v37 + 16);
  }

  else
  {
    v39 = (v37 + 8);
  }

  if ((*a3 - v18) >= v38)
  {
    v40 = v38;
    memcpy(v18, v39, v38);
    v18 += v40;
    return v18;
  }

  return sub_1957130(a3, v39, v38, v18);
}

uint64_t sub_157CE54(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_29;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v8 = sub_16E51F0(*(a1 + 32));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_10;
  }

  v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v6 = *(v5 + 23);
  v7 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v7 = v6;
  }

  v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v12 = sub_16E62F4(*(a1 + 40));
    v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if ((v2 & 8) != 0)
  {
LABEL_12:
    v9 = sub_157BEDC(*(a1 + 48));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  v4 = v3 + 9;
  if ((v2 & 0x10) == 0)
  {
    v4 = v3;
  }

  if ((v2 & 0x20) != 0)
  {
    v10 = *(a1 + 64);
    if (v10 < 0)
    {
      v11 = 11;
    }

    else
    {
      v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v4 += v11;
  }

  if ((v2 & 0x40) != 0)
  {
    v13 = *(a1 + 68);
    if (v13 < 0)
    {
      v14 = 11;
    }

    else
    {
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v4 += v14;
  }

  if ((v2 & 0x80) != 0)
  {
    v4 += 9;
  }

LABEL_29:
  if ((v2 & 0xFF00) != 0)
  {
    v4 += ((v2 >> 8) & 2) + ((v2 >> 7) & 2) + ((v2 >> 9) & 2);
    if ((v2 & 0x800) != 0)
    {
      v4 += 5;
    }

    if ((v2 & 0x1000) != 0)
    {
      v4 += 5;
    }

    if ((v2 & 0x2000) != 0)
    {
      v4 += 5;
    }

    if ((v2 & 0x4000) != 0)
    {
      v4 += 5;
    }

    if ((v2 & 0x8000) != 0)
    {
      v4 += 6;
    }
  }

  if ((v2 & 0x10000) != 0)
  {
    result = v4 + 6;
  }

  else
  {
    result = v4;
  }

  v16 = *(a1 + 8);
  if (v16)
  {
    v17 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v16 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    result += v18;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_157D090(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    if (v4)
    {
      v7 = *(a2 + 24);
      *(a1 + 16) |= 1u;
      v8 = *(a1 + 8);
      v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (v8)
      {
        v9 = *v9;
      }

      sub_194EA1C((a1 + 24), (v7 & 0xFFFFFFFFFFFFFFFELL), v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_40;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 16) |= 2u;
    v10 = *(a1 + 32);
    if (!v10)
    {
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_16F5828(v12);
      *(a1 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_277E5E8;
    }

    sub_16E527C(v10, v13);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_48;
    }

LABEL_40:
    *(a1 + 16) |= 4u;
    v14 = *(a1 + 40);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      sub_16F58FC(v16);
      *(a1 + 40) = v14;
    }

    if (*(a2 + 40))
    {
      v17 = *(a2 + 40);
    }

    else
    {
      v17 = &off_277E650;
    }

    sub_16E645C(v14, v17);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_56;
    }

LABEL_48:
    *(a1 + 16) |= 8u;
    v18 = *(a1 + 48);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_157D884(v20);
      *(a1 + 48) = v18;
    }

    if (*(a2 + 48))
    {
      v21 = *(a2 + 48);
    }

    else
    {
      v21 = &off_27777E0;
    }

    sub_157BF84(v18, v21);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_57;
    }

LABEL_56:
    *(a1 + 56) = *(a2 + 56);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_58;
    }

LABEL_57:
    *(a1 + 64) = *(a2 + 64);
    if ((v4 & 0x40) == 0)
    {
LABEL_9:
      if ((v4 & 0x80) == 0)
      {
LABEL_11:
        *(a1 + 16) |= v4;
        goto LABEL_12;
      }

LABEL_10:
      *(a1 + 72) = *(a2 + 72);
      goto LABEL_11;
    }

LABEL_58:
    *(a1 + 68) = *(a2 + 68);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v4 & 0x100) != 0)
  {
    *(a1 + 80) = *(a2 + 80);
    if ((v4 & 0x200) == 0)
    {
LABEL_15:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_62;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_15;
  }

  *(a1 + 81) = *(a2 + 81);
  if ((v4 & 0x400) == 0)
  {
LABEL_16:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(a1 + 82) = *(a2 + 82);
  if ((v4 & 0x800) == 0)
  {
LABEL_17:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(a1 + 84) = *(a2 + 84);
  if ((v4 & 0x1000) == 0)
  {
LABEL_18:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(a1 + 88) = *(a2 + 88);
  if ((v4 & 0x2000) == 0)
  {
LABEL_19:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

LABEL_66:
    *(a1 + 96) = *(a2 + 96);
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_65:
  *(a1 + 92) = *(a2 + 92);
  if ((v4 & 0x4000) != 0)
  {
    goto LABEL_66;
  }

LABEL_20:
  if ((v4 & 0x8000) != 0)
  {
LABEL_21:
    *(a1 + 100) = *(a2 + 100);
  }

LABEL_22:
  *(a1 + 16) |= v4;
LABEL_23:
  if ((v4 & 0x10000) != 0)
  {
    v5 = *(a2 + 104);
    *(a1 + 16) |= 0x10000u;
    *(a1 + 104) = v5;
  }

  v6 = *(a2 + 8);
  if (v6)
  {

    sub_1957EF4((a1 + 8), (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_157D31C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    if (!sub_16E5370(*(a1 + 32)))
    {
      return 0;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) == 0)
  {
    goto LABEL_7;
  }

  if (!sub_16E6614(*(a1 + 40)))
  {
    return 0;
  }

  v2 = *(a1 + 16);
LABEL_7:
  if ((v2 & 8) == 0)
  {
    return 1;
  }

  v4 = *(a1 + 48);
  v5 = *(v4 + 24);
  do
  {
    v3 = v5 < 1;
    if (v5 < 1)
    {
      break;
    }

    v6 = v5 - 1;
    v7 = sub_16E6614(*(*(v4 + 32) + 8 * v5));
    v5 = v6;
  }

  while (v7);
  return v3;
}

uint64_t sub_157D3C4(uint64_t a1)
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

void sub_157D47C(uint64_t a1)
{
  sub_157D3C4(a1);

  operator delete();
}

uint64_t sub_157D4B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    goto LABEL_11;
  }

  if ((v1 & 1) == 0)
  {
LABEL_5:
    if ((v1 & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_5;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  if ((v1 & 2) != 0)
  {
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
  v5 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_157D530(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v21 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v21, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v21 + 1);
    v7 = **v21;
    if (**v21 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v21, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v21 + 2);
      }
    }

    *v21 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v17 = (a1 + 32);
        goto LABEL_26;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 8);
      v16 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v16 = *v16;
      }

      v17 = (a1 + 24);
LABEL_26:
      v19 = sub_194DB04(v17, v16);
      v14 = sub_1958890(v19, *v21, a3);
      goto LABEL_27;
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
        return *v21;
      }

LABEL_33:
      *v21 = 0;
      return *v21;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v21;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_27:
    *v21 = v14;
    if (!v14)
    {
      goto LABEL_33;
    }
  }

  return *v21;
}

char *sub_157D6B0(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_128AEEC(a3, 2, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
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

uint64_t sub_157D798(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_12;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
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
  v9 = *(a1 + 8);
  if (v9)
  {
    v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v2 += v12;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_157D884(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F10B0;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

double sub_157D924(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26F1130;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 92) = 0u;
  return result;
}

void *sub_157D9B8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F11B0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

void *sub_157DAA0(void *a1)
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

void sub_157DB14(void *a1)
{
  sub_157DAA0(a1);

  operator delete();
}

uint64_t sub_157DB4C(uint64_t a1)
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

char *sub_157DB70(uint64_t a1, char *a2, int32x2_t *a3)
{
  v19 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v19, a3[11].u32[1]))
  {
    goto LABEL_33;
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
    if (v7 >> 3 == 2)
    {
      if (v7 == 21)
      {
        v5 |= 2u;
        *(a1 + 28) = *v6;
        v19 = v6 + 4;
        goto LABEL_26;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 8)
    {
      v5 |= 1u;
      LODWORD(v14) = *v6;
      if ((v14 & 0x80000000) != 0)
      {
        v14 = (v6[1] << 7) + v14 - 128;
        if (v6[1] < 0)
        {
          v16 = sub_19587DC(v6, v14);
          v19 = v16;
          *(a1 + 24) = v17;
          if (!v16)
          {
            goto LABEL_34;
          }

          goto LABEL_26;
        }

        v15 = v6 + 2;
      }

      else
      {
        v15 = v6 + 1;
      }

      v19 = v15;
      *(a1 + 24) = v14;
      goto LABEL_26;
    }

    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = v19;
    }

    v19 = sub_1952690(v7, v13, v6, a3);
    if (!v19)
    {
      goto LABEL_34;
    }

LABEL_26:
    if (sub_195ADC0(a3, &v19, a3[11].u32[1]))
    {
      goto LABEL_33;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_33;
  }

LABEL_34:
  v19 = 0;
LABEL_33:
  *(a1 + 16) |= v5;
  return v19;
}

char *sub_157DD18(uint64_t a1, char *__dst, void *a3)
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

    v11 = *(a1 + 28);
    *v6 = 21;
    *(v6 + 1) = v11;
    v6 += 5;
  }

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return v6;
  }

  v14 = v12 & 0xFFFFFFFFFFFFFFFCLL;
  v15 = *(v14 + 31);
  if (v15 < 0)
  {
    v16 = *(v14 + 8);
    v15 = *(v14 + 16);
  }

  else
  {
    v16 = (v14 + 8);
  }

  if (*a3 - v6 >= v15)
  {
    v17 = v15;
    memcpy(v6, v16, v15);
    v6 += v17;
    return v6;
  }

  return sub_1957130(a3, v16, v15, v6);
}

uint64_t sub_157DE78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = *(a1 + 24);
    if (v3 < 0)
    {
      v2 = 11;
    }

    else
    {
      v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    return v2 + 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_157DEC4(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    result = sub_157DE78(a1);
  }

  else
  {
    v2 = *(a1 + 24);
    if (v2 < 0)
    {
      result = 16;
    }

    else
    {
      result = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 6;
    }
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v6 < 0)
    {
      v6 = *(v5 + 16);
    }

    result += v6;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_157DF54(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      LODWORD(result[1].__r_.__value_.__l.__data_) = *(a2 + 24);
    }

    if ((v2 & 2) != 0)
    {
      HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
    }

    LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_157DFC4(uint64_t a1)
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

void sub_157E07C(uint64_t a1)
{
  sub_157DFC4(a1);

  operator delete();
}

uint64_t sub_157E0B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    goto LABEL_11;
  }

  if ((v1 & 1) == 0)
  {
LABEL_5:
    if ((v1 & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_5;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  if ((v1 & 2) != 0)
  {
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
  v5 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_157E130(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v21 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v21, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v21 + 1);
    v7 = **v21;
    if (**v21 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v21, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v21 + 2);
      }
    }

    *v21 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v17 = (a1 + 32);
        goto LABEL_26;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 8);
      v16 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v16 = *v16;
      }

      v17 = (a1 + 24);
LABEL_26:
      v19 = sub_194DB04(v17, v16);
      v14 = sub_1958890(v19, *v21, a3);
      goto LABEL_27;
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
        return *v21;
      }

LABEL_33:
      *v21 = 0;
      return *v21;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v21;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_27:
    *v21 = v14;
    if (!v14)
    {
      goto LABEL_33;
    }
  }

  return *v21;
}

char *sub_157E2B0(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_128AEEC(a3, 2, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
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

uint64_t sub_157E398(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    result = sub_132CD7C(a1);
  }

  else
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
    v6 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    result = v4 + v8 + v5 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    result += v12;
  }

  *(a1 + 20) = result;
  return result;
}

uint64_t sub_157E494(uint64_t a1)
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

  v5 = (a1 + 40);
  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_157E53C(uint64_t a1)
{
  sub_157E494(a1);

  operator delete();
}

uint64_t sub_157E574(uint64_t a1)
{
  *(a1 + 24) = 0;
  if (*(a1 + 16))
  {
    v1 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
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
  *(result + 8) = 0;
  if (v3)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_157E5BC(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 == 2)
    {
      if (v7 == 16)
      {
        v15 = v6 - 1;
        while (1)
        {
          *v25 = v15 + 1;
          v16 = v15[1];
          if (v16 < 0)
          {
            v17 = (v15[2] << 7) + v16;
            LODWORD(v16) = v17 - 128;
            if (v15[2] < 0)
            {
              v15 = sub_19587DC((v15 + 1), (v17 - 128));
              LODWORD(v16) = v18;
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

          *v25 = v15;
          v19 = *(a1 + 24);
          if (v19 == *(a1 + 28))
          {
            v20 = v19 + 1;
            sub_1958E5C((a1 + 24), v19 + 1);
            *(*(a1 + 32) + 4 * v19) = v16;
            v15 = *v25;
          }

          else
          {
            *(*(a1 + 32) + 4 * v19) = v16;
            v20 = v19 + 1;
          }

          *(a1 + 24) = v20;
          if (!v15)
          {
            break;
          }

          if (*a3 <= v15 || *v15 != 16)
          {
            goto LABEL_37;
          }
        }

LABEL_43:
        *v25 = 0;
        return *v25;
      }

      if (v7 == 18)
      {
        v14 = sub_1958908((a1 + 24), v6, a3);
        goto LABEL_36;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v23 = sub_194DB04((a1 + 40), v22);
      v14 = sub_1958890(v23, *v25, a3);
      goto LABEL_36;
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
        return *v25;
      }

      goto LABEL_43;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v25;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_36:
    *v25 = v14;
    if (!v14)
    {
      goto LABEL_43;
    }

LABEL_37:
    ;
  }

  return *v25;
}

char *sub_157E7E8(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  if (*(a1 + 16))
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  v6 = *(a1 + 24);
  if (v6 < 1)
  {
    v9 = v4;
  }

  else
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v8 = *(*(a1 + 32) + 4 * i);
      *v4 = 16;
      v4[1] = v8;
      if (v8 > 0x7F)
      {
        v4[1] = v8 | 0x80;
        v10 = v8 >> 7;
        v4[2] = v8 >> 7;
        v9 = v4 + 3;
        if (v8 >= 0x4000)
        {
          LOBYTE(v11) = v4[2];
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
        v9 = v4 + 2;
      }

      v4 = v9;
    }
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v9;
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

  if ((*a3 - v9) >= v16)
  {
    v18 = v16;
    memcpy(v9, v17, v16);
    v9 += v18;
    return v9;
  }

  return sub_1957130(a3, v17, v16, v9);
}

uint64_t sub_157E960(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  result = sub_1959E04((a1 + 24)) + v2 + *(a1 + 24);
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

void sub_157EA08(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = (a1 + 24);
    v6 = *(a1 + 24);
    sub_1958E5C((a1 + 24), v6 + v4);
    v7 = *(a1 + 32);
    *v5 += *(a2 + 24);
    memcpy((v7 + 4 * v6), *(a2 + 32), 4 * *(a2 + 24));
  }

  if (*(a2 + 16))
  {
    v8 = *(a2 + 40);
    *(a1 + 16) |= 1u;
    v9 = *(a1 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    sub_194EA1C((a1 + 40), (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
  }

  v11 = *(a2 + 8);
  if (v11)
  {

    sub_1957EF4((a1 + 8), (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_157EB00(uint64_t a1)
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

void sub_157EBA0(uint64_t a1)
{
  sub_157EB00(a1);

  operator delete();
}

uint64_t sub_157EBD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  if ((v1 & 6) != 0)
  {
    *(a1 + 40) = 0;
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v4)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_157EC2C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v28 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v28, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v28 + 1);
    v8 = **v28;
    if (**v28 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v28, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v28 + 2);
      }
    }

    *v28 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
    v21 = v7 + 1;
    v20 = *v7;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

    v22 = *v21;
    v20 = (v22 << 7) + v20 - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v21 = v7 + 2;
LABEL_31:
      *v28 = v21;
      *(a1 + 32) = v20;
      goto LABEL_36;
    }

    v26 = sub_19587DC(v7, v20);
    *v28 = v26;
    *(a1 + 32) = v27;
    if (!v26)
    {
      goto LABEL_46;
    }

LABEL_36:
    if (sub_195ADC0(a3, v28, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 2)
  {
    if (v8 != 16)
    {
      goto LABEL_13;
    }

    v18 = v7 + 1;
    v17 = *v7;
    if (v17 < 0)
    {
      v19 = *v18;
      v17 = (v19 << 7) + v17 - 128;
      if (v19 < 0)
      {
        *v28 = sub_19587DC(v7, v17);
        if (!*v28)
        {
          goto LABEL_46;
        }

        goto LABEL_25;
      }

      v18 = v7 + 2;
    }

    *v28 = v18;
LABEL_25:
    if (v17 > 2)
    {
      sub_12E8418();
    }

    else
    {
      *(a1 + 16) |= 4u;
      *(a1 + 40) = v17;
    }

    goto LABEL_36;
  }

  if (v11 == 1 && v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v23 = *(a1 + 8);
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    v25 = sub_194DB04((a1 + 24), v24);
    v16 = sub_1958890(v25, *v28, a3);
LABEL_35:
    *v28 = v16;
    if (!v16)
    {
      goto LABEL_46;
    }

    goto LABEL_36;
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
      v7 = *v28;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_35;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_46:
  *v28 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v28;
}

char *sub_157EE74(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 40);
    *v4 = 16;
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v9 = v8 >> 7;
      v4[2] = v8 >> 7;
      v7 = v4 + 3;
      if (v8 >= 0x4000)
      {
        LOBYTE(v10) = v4[2];
        do
        {
          *(v7 - 1) = v10 | 0x80;
          v10 = v9 >> 7;
          *v7++ = v9 >> 7;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
      }
    }

    else
    {
      v7 = v4 + 2;
    }
  }

  else
  {
    v7 = v4;
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 32);
    *v7 = 24;
    v7[1] = v13;
    if (v13 > 0x7F)
    {
      v7[1] = v13 | 0x80;
      v14 = v13 >> 7;
      v7[2] = v13 >> 7;
      v12 = v7 + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(v15) = v7[2];
        do
        {
          *(v12 - 1) = v15 | 0x80;
          v15 = v14 >> 7;
          *v12++ = v14 >> 7;
          v16 = v14 >> 14;
          v14 >>= 7;
        }

        while (v16);
      }
    }

    else
    {
      v12 = v7 + 2;
    }
  }

  else
  {
    v12 = v7;
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v12;
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

  if ((*a3 - v12) >= v20)
  {
    v22 = v20;
    memcpy(v12, v21, v20);
    v12 += v22;
    return v12;
  }

  return sub_1957130(a3, v21, v20, v12);
}

uint64_t sub_157F044(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_15;
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
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v1 & 4) != 0)
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

    v2 += v7;
  }

LABEL_15:
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

uint64_t sub_157F144(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_15B4A3C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_157F1F0(uint64_t a1)
{
  sub_157F144(a1);

  operator delete();
}

uint64_t sub_157F228(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_157EBD8(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    v5 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
    }
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 48) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_157F2DC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v31 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v31, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v31 + 1);
    v8 = **v31;
    if (**v31 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v31, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v31 + 2);
      }
    }

    *v31 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      break;
    }

    if (v11 != 2)
    {
      if (v11 != 1 || v8 != 10)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
      v26 = *(a1 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v28 = sub_194DB04((a1 + 48), v27);
      v16 = sub_1958890(v28, *v31, a3);
LABEL_38:
      *v31 = v16;
      if (!v16)
      {
        goto LABEL_46;
      }

      goto LABEL_39;
    }

    if (v8 != 16)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
    v18 = v7 + 1;
    v17 = *v7;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

    v19 = *v18;
    v17 = (v19 << 7) + v17 - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_24:
      *v31 = v18;
      *(a1 + 56) = v17;
      goto LABEL_39;
    }

    v29 = sub_19587DC(v7, v17);
    *v31 = v29;
    *(a1 + 56) = v30;
    if (!v29)
    {
      goto LABEL_46;
    }

LABEL_39:
    if (sub_195ADC0(a3, v31, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
  {
    v20 = v7 - 1;
    while (1)
    {
      v21 = v20 + 1;
      *v31 = v20 + 1;
      v22 = *(a1 + 40);
      if (v22 && (v23 = *(a1 + 32), v23 < *v22))
      {
        *(a1 + 32) = v23 + 1;
        v24 = *&v22[2 * v23 + 2];
      }

      else
      {
        v25 = sub_15AC274(*(a1 + 24));
        v24 = sub_19593CC(a1 + 24, v25);
        v21 = *v31;
      }

      v20 = sub_221EC6C(a3, v24, v21);
      *v31 = v20;
      if (!v20)
      {
        goto LABEL_46;
      }

      if (*a3 <= v20 || *v20 != 26)
      {
        goto LABEL_39;
      }
    }
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
      v7 = *v31;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_38;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_46:
  *v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v31;
}

char *sub_157F53C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 56);
    *v4 = 16;
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v9 = v8 >> 7;
      v4[2] = v8 >> 7;
      v7 = v4 + 3;
      if (v8 >= 0x4000)
      {
        LOBYTE(v10) = v4[2];
        do
        {
          *(v7 - 1) = v10 | 0x80;
          v10 = v9 >> 7;
          *v7++ = v9 >> 7;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
      }
    }

    else
    {
      v7 = v4 + 2;
    }
  }

  else
  {
    v7 = v4;
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v14 = *(*(a1 + 40) + 8 * i + 8);
      *v7 = 26;
      v15 = *(v14 + 20);
      v7[1] = v15;
      if (v15 > 0x7F)
      {
        v16 = sub_19575D0(v15, v7 + 1);
      }

      else
      {
        v16 = v7 + 2;
      }

      v7 = sub_157EE74(v14, v16, a3);
    }
  }

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

uint64_t sub_157F724(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v3 = 0;
  }

  v7 = *(a1 + 32);
  v8 = v3 + v7;
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = (v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  if (v7)
  {
    v11 = 8 * v7;
    do
    {
      v12 = *v10++;
      v13 = sub_157F044(v12);
      v8 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6);
      v11 -= 8;
    }

    while (v11);
    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    v8 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  v14 = *(a1 + 8);
  if (v14)
  {
    v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    v8 += v17;
  }

  *(a1 + 20) = v8;
  return v8;
}

void sub_157F83C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15B58AC((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 3) != 0)
  {
    if (v9)
    {
      v10 = *(a2 + 48);
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      sub_194EA1C((a1 + 48), (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 56) = *(a2 + 56);
    }

    *(a1 + 16) |= v9;
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_157F96C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_13B31E8(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_157F9EC(void *a1)
{
  sub_157F96C(a1);

  operator delete();
}

uint64_t sub_157FA24(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E72AC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 40) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_157FAA8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v26 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v26, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v26 + 1;
    v8 = *v26;
    if (*v26 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v26, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v26 + 2;
      }
    }

    v26 = v7;
    if (v8 >> 3 == 2)
    {
      break;
    }

    if (v8 >> 3 != 1 || v8 != 8)
    {
      goto LABEL_12;
    }

    v22 = v7 + 1;
    v21 = *v7;
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_33;
    }

    v23 = *v22;
    v21 = (v23 << 7) + v21 - 128;
    if ((v23 & 0x80000000) == 0)
    {
      v22 = v7 + 2;
LABEL_33:
      v26 = v22;
      *(a1 + 48) = v21;
      v5 = 1;
      goto LABEL_34;
    }

    v24 = sub_19587DC(v7, v21);
    v26 = v24;
    *(a1 + 48) = v25;
    v5 = 1;
    if (!v24)
    {
      goto LABEL_41;
    }

LABEL_34:
    if (sub_195ADC0(a3, &v26, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 18)
  {
    v15 = v7 - 1;
    while (1)
    {
      v16 = v15 + 1;
      v26 = v15 + 1;
      v17 = *(a1 + 40);
      if (v17 && (v18 = *(a1 + 32), v18 < *v17))
      {
        *(a1 + 32) = v18 + 1;
        v19 = *&v17[2 * v18 + 2];
      }

      else
      {
        v20 = sub_16F5A54(*(a1 + 24));
        v19 = sub_19593CC(a1 + 24, v20);
        v16 = v26;
      }

      v15 = sub_22002C0(a3, v19, v16);
      v26 = v15;
      if (!v15)
      {
        goto LABEL_41;
      }

      if (*a3 <= v15 || *v15 != 18)
      {
        goto LABEL_34;
      }
    }
  }

LABEL_12:
  if (v8)
  {
    v12 = (v8 & 7) == 4;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v7 = v26;
    }

    v26 = sub_1952690(v8, v14, v7, a3);
    if (!v26)
    {
      goto LABEL_41;
    }

    goto LABEL_34;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_41:
  v26 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v26;
}

char *sub_157FCC0(uint64_t a1, char *__dst, unint64_t *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 48);
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

  v10 = *(a1 + 32);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= v5)
      {
        v5 = sub_225EB68(a3, v5);
      }

      v12 = *(*(a1 + 40) + 8 * i + 8);
      *v5 = 18;
      v13 = *(v12 + 20);
      v5[1] = v13;
      if (v13 > 0x7F)
      {
        v14 = sub_19575D0(v13, v5 + 1);
      }

      else
      {
        v14 = v5 + 2;
      }

      v5 = sub_16E74A8(v12, v14, a3);
    }
  }

  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v5;
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

  if ((*a3 - v5) >= v18)
  {
    v20 = v18;
    memcpy(v5, v19, v18);
    v5 += v20;
    return v5;
  }

  return sub_1957130(a3, v19, v18, v5);
}

uint64_t sub_157FE84(uint64_t a1)
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
      v7 = sub_16E7590(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 16))
  {
    v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

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

void sub_157FF54(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B326C((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  if (*(a2 + 16))
  {
    v9 = *(a2 + 48);
    *(a1 + 16) |= 1u;
    *(a1 + 48) = v9;
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1580044(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15B0D00(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    v5 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
    }
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

void *sub_15800F4(void *result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26F1530;
  result[1] = v3;
  result[2] = 0;
  result[3] = a2;
  result[4] = 0;
  result[5] = 0;
  result[6] = a2;
  result[7] = 0;
  result[8] = 0;
  result[9] = a2;
  result[10] = 0;
  result[11] = 0;
  result[12] = a2;
  result[13] = 0;
  result[14] = 0;
  result[15] = a2;
  result[16] = 0;
  result[17] = 0;
  result[18] = a2;
  result[19] = 0;
  result[20] = 0;
  result[21] = 0;
  result[22] = a2;
  result[23] = a2;
  result[24] = 0;
  result[25] = 0;
  result[26] = a2;
  result[27] = 0;
  result[28] = 0;
  result[29] = a2;
  result[30] = 0;
  result[31] = 0;
  result[32] = &qword_278E990;
  result[33] = 0;
  return result;
}

uint64_t sub_158016C(uint64_t a1)
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

  if (*(a1 + 256) != &qword_278E990)
  {
    sub_194E89C((a1 + 256));
  }

  if (a1 != &off_2777880)
  {
    v5 = *(a1 + 264);
    if (v5)
    {
      sub_15B1C80(v5);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_15B4B44((a1 + 232));
  sub_15B4AC0((a1 + 208));
  sub_1956AFC((a1 + 184));
  sub_1956ABC(a1 + 168);
  sub_1311EE8((a1 + 144));
  sub_1956AFC((a1 + 120));
  sub_1956AFC((a1 + 96));
  sub_15B472C((a1 + 72));
  sub_1956AFC((a1 + 48));
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1580298(uint64_t a1)
{
  sub_158016C(a1);

  operator delete();
}

uint64_t sub_15802D0(uint64_t a1)
{
  sub_12A41D0(a1 + 24);
  sub_12A41D0(a1 + 48);
  v2 = *(a1 + 80);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 88) + 8);
    do
    {
      v4 = *v3++;
      sub_157A3FC(v4);
      --v2;
    }

    while (v2);
    *(a1 + 80) = 0;
  }

  sub_12A41D0(a1 + 96);
  sub_12A41D0(a1 + 120);
  v5 = *(a1 + 152);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 160) + 8);
    do
    {
      v7 = *v6++;
      sub_1579070(v7);
      --v5;
    }

    while (v5);
    *(a1 + 152) = 0;
  }

  *(a1 + 168) = 0;
  result = sub_12A41D0(a1 + 184);
  v9 = *(a1 + 216);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 224) + 8);
    do
    {
      v11 = *v10++;
      result = sub_157F228(v11);
      --v9;
    }

    while (v9);
    *(a1 + 216) = 0;
  }

  v12 = *(a1 + 240);
  if (v12 >= 1)
  {
    v13 = (*(a1 + 248) + 8);
    do
    {
      v14 = *v13++;
      result = sub_157FA24(v14);
      --v12;
    }

    while (v12);
    *(a1 + 240) = 0;
  }

  v15 = *(a1 + 16);
  if ((v15 & 3) != 0)
  {
    if ((v15 & 1) == 0)
    {
      goto LABEL_21;
    }

    v16 = *(a1 + 256) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v16 + 23) & 0x80000000) == 0)
    {
      *v16 = 0;
      *(v16 + 23) = 0;
LABEL_21:
      if ((v15 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    **v16 = 0;
    *(v16 + 8) = 0;
    if ((v15 & 2) != 0)
    {
LABEL_22:
      result = sub_1580044(*(a1 + 264));
    }
  }

LABEL_23:
  v18 = *(a1 + 8);
  v17 = a1 + 8;
  *(v17 + 8) = 0;
  if (v18)
  {

    return sub_1957EA8(v17);
  }

  return result;
}

uint64_t sub_158043C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v92 = a2;
  if (sub_195ADC0(a3, v92, a3[11].u32[1]))
  {
    return *v92;
  }

  while (1)
  {
    v6 = (*v92 + 1);
    v7 = **v92;
    if (**v92 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v92, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v92 + 2);
      }
    }

    *v92 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 6)
    {
      break;
    }

    if (v7 >> 3 > 3)
    {
      if (v10 == 4)
      {
        if (v7 == 34)
        {
          v47 = v6 - 1;
          while (1)
          {
            v48 = (v47 + 1);
            *v92 = v47 + 1;
            v49 = *(a1 + 64);
            if (v49 && (v50 = *(a1 + 56), v50 < *v49))
            {
              *(a1 + 56) = v50 + 1;
              v51 = *&v49[2 * v50 + 2];
            }

            else
            {
              v52 = *(a1 + 48);
              if (!v52)
              {
                operator new();
              }

              *v54 = v53;
              v54[1] = sub_195A650;
              *v53 = 0;
              v53[1] = 0;
              v53[2] = 0;
              v51 = sub_19593CC(a1 + 48, v53);
              v48 = *v92;
            }

            v47 = sub_1958890(v51, v48, a3);
            *v92 = v47;
            if (!v47)
            {
              goto LABEL_164;
            }

            if (*a3 <= v47 || *v47 != 34)
            {
              goto LABEL_159;
            }
          }
        }
      }

      else if (v10 == 5)
      {
        if (v7 == 42)
        {
          v77 = v6 - 1;
          while (1)
          {
            v78 = v77 + 1;
            *v92 = v77 + 1;
            v79 = *(a1 + 88);
            if (v79 && (v80 = *(a1 + 80), v80 < *v79))
            {
              *(a1 + 80) = v80 + 1;
              v81 = *&v79[2 * v80 + 2];
            }

            else
            {
              v82 = sub_157B8A8(*(a1 + 72));
              v81 = sub_19593CC(a1 + 72, v82);
              v78 = *v92;
            }

            v77 = sub_221EA2C(a3, v81, v78);
            *v92 = v77;
            if (!v77)
            {
              goto LABEL_164;
            }

            if (*a3 <= v77 || *v77 != 42)
            {
              goto LABEL_159;
            }
          }
        }
      }

      else if (v10 == 6 && v7 == 50)
      {
        v22 = v6 - 1;
        while (1)
        {
          v23 = (v22 + 1);
          *v92 = v22 + 1;
          v24 = *(a1 + 112);
          if (v24 && (v25 = *(a1 + 104), v25 < *v24))
          {
            *(a1 + 104) = v25 + 1;
            v26 = *&v24[2 * v25 + 2];
          }

          else
          {
            v27 = *(a1 + 96);
            if (!v27)
            {
              operator new();
            }

            *v29 = v28;
            v29[1] = sub_195A650;
            *v28 = 0;
            v28[1] = 0;
            v28[2] = 0;
            v26 = sub_19593CC(a1 + 96, v28);
            v23 = *v92;
          }

          v22 = sub_1958890(v26, v23, a3);
          *v92 = v22;
          if (!v22)
          {
            goto LABEL_164;
          }

          if (*a3 <= v22 || *v22 != 50)
          {
            goto LABEL_159;
          }
        }
      }

      goto LABEL_151;
    }

    if (v10 == 1)
    {
      if (v7 != 10)
      {
        goto LABEL_151;
      }

      *(a1 + 16) |= 1u;
      v36 = *(a1 + 8);
      v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
      if (v36)
      {
        v37 = *v37;
      }

      v38 = sub_194DB04((a1 + 256), v37);
      v15 = sub_1958890(v38, *v92, a3);
    }

    else
    {
      if (v10 == 2)
      {
        if (v7 == 18)
        {
          v63 = v6 - 1;
          while (1)
          {
            v64 = (v63 + 1);
            *v92 = v63 + 1;
            v65 = *(a1 + 40);
            if (v65 && (v66 = *(a1 + 32), v66 < *v65))
            {
              *(a1 + 32) = v66 + 1;
              v67 = *&v65[2 * v66 + 2];
            }

            else
            {
              v68 = *(a1 + 24);
              if (!v68)
              {
                operator new();
              }

              *v70 = v69;
              v70[1] = sub_195A650;
              *v69 = 0;
              v69[1] = 0;
              v69[2] = 0;
              v67 = sub_19593CC(a1 + 24, v69);
              v64 = *v92;
            }

            v63 = sub_1958890(v67, v64, a3);
            *v92 = v63;
            if (!v63)
            {
              goto LABEL_164;
            }

            if (*a3 <= v63 || *v63 != 18)
            {
              goto LABEL_159;
            }
          }
        }

        goto LABEL_151;
      }

      if (v10 != 3 || v7 != 26)
      {
        goto LABEL_151;
      }

      *(a1 + 16) |= 2u;
      v12 = *(a1 + 264);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v12 = sub_15B234C(v14);
        *(a1 + 264) = v12;
        v6 = *v92;
      }

      v15 = sub_221ECFC(a3, v12, v6);
    }

LABEL_158:
    *v92 = v15;
    if (!v15)
    {
      goto LABEL_164;
    }

LABEL_159:
    if (sub_195ADC0(a3, v92, a3[11].u32[1]))
    {
      return *v92;
    }
  }

  if (v7 >> 3 > 9)
  {
    if (v10 == 10)
    {
      if (v7 == 82)
      {
        v55 = v6 - 1;
        while (1)
        {
          v56 = (v55 + 1);
          *v92 = v55 + 1;
          v57 = *(a1 + 200);
          if (v57 && (v58 = *(a1 + 192), v58 < *v57))
          {
            *(a1 + 192) = v58 + 1;
            v59 = *&v57[2 * v58 + 2];
          }

          else
          {
            v60 = *(a1 + 184);
            if (!v60)
            {
              operator new();
            }

            *v62 = v61;
            v62[1] = sub_195A650;
            *v61 = 0;
            v61[1] = 0;
            v61[2] = 0;
            v59 = sub_19593CC(a1 + 184, v61);
            v56 = *v92;
          }

          v55 = sub_1958890(v59, v56, a3);
          *v92 = v55;
          if (!v55)
          {
            goto LABEL_164;
          }

          if (*a3 <= v55 || *v55 != 82)
          {
            goto LABEL_159;
          }
        }
      }
    }

    else if (v10 == 11)
    {
      if (v7 == 90)
      {
        v83 = v6 - 1;
        while (1)
        {
          v84 = v83 + 1;
          *v92 = v83 + 1;
          v85 = *(a1 + 224);
          if (v85 && (v86 = *(a1 + 216), v86 < *v85))
          {
            *(a1 + 216) = v86 + 1;
            v87 = *&v85[2 * v86 + 2];
          }

          else
          {
            v88 = sub_15AC2FC(*(a1 + 208));
            v87 = sub_19593CC(a1 + 208, v88);
            v84 = *v92;
          }

          v83 = sub_221ED8C(a3, v87, v84);
          *v92 = v83;
          if (!v83)
          {
            goto LABEL_164;
          }

          if (*a3 <= v83 || *v83 != 90)
          {
            goto LABEL_159;
          }
        }
      }
    }

    else if (v10 == 12 && v7 == 98)
    {
      v30 = v6 - 1;
      while (1)
      {
        v31 = v30 + 1;
        *v92 = v30 + 1;
        v32 = *(a1 + 248);
        if (v32 && (v33 = *(a1 + 240), v33 < *v32))
        {
          *(a1 + 240) = v33 + 1;
          v34 = *&v32[2 * v33 + 2];
        }

        else
        {
          v35 = sub_15AC3A0(*(a1 + 232));
          v34 = sub_19593CC(a1 + 232, v35);
          v31 = *v92;
        }

        v30 = sub_221EE1C(a3, v34, v31);
        *v92 = v30;
        if (!v30)
        {
          goto LABEL_164;
        }

        if (*a3 <= v30 || *v30 != 98)
        {
          goto LABEL_159;
        }
      }
    }
  }

  else
  {
    switch(v10)
    {
      case 7u:
        if (v7 == 58)
        {
          v39 = v6 - 1;
          while (1)
          {
            v40 = (v39 + 1);
            *v92 = v39 + 1;
            v41 = *(a1 + 136);
            if (v41 && (v42 = *(a1 + 128), v42 < *v41))
            {
              *(a1 + 128) = v42 + 1;
              v43 = *&v41[2 * v42 + 2];
            }

            else
            {
              v44 = *(a1 + 120);
              if (!v44)
              {
                operator new();
              }

              *v46 = v45;
              v46[1] = sub_195A650;
              *v45 = 0;
              v45[1] = 0;
              v45[2] = 0;
              v43 = sub_19593CC(a1 + 120, v45);
              v40 = *v92;
            }

            v39 = sub_1958890(v43, v40, a3);
            *v92 = v39;
            if (!v39)
            {
              goto LABEL_164;
            }

            if (*a3 <= v39 || *v39 != 58)
            {
              goto LABEL_159;
            }
          }
        }

        break;
      case 8u:
        if (v7 == 66)
        {
          v71 = v6 - 1;
          while (1)
          {
            v72 = v71 + 1;
            *v92 = v71 + 1;
            v73 = *(a1 + 160);
            if (v73 && (v74 = *(a1 + 152), v74 < *v73))
            {
              *(a1 + 152) = v74 + 1;
              v75 = *&v73[2 * v74 + 2];
            }

            else
            {
              v76 = sub_157B674(*(a1 + 144));
              v75 = sub_19593CC(a1 + 144, v76);
              v72 = *v92;
            }

            v71 = sub_21F8DA8(a3, v75, v72);
            *v92 = v71;
            if (!v71)
            {
              goto LABEL_164;
            }

            if (*a3 <= v71 || *v71 != 66)
            {
              goto LABEL_159;
            }
          }
        }

        break;
      case 9u:
        if (v7 == 72)
        {
          v16 = v6 - 1;
          while (1)
          {
            *v92 = v16 + 1;
            v17 = v16[1];
            if (v17 < 0)
            {
              v18 = (v16[2] << 7) + v17;
              v17 = (v18 - 128);
              if (v16[2] < 0)
              {
                v16 = sub_19587DC((v16 + 1), (v18 - 128));
                v17 = v19;
              }

              else
              {
                v16 += 3;
              }
            }

            else
            {
              v16 += 2;
            }

            *v92 = v16;
            v20 = *(a1 + 168);
            if (v20 == *(a1 + 172))
            {
              v21 = v20 + 1;
              sub_1959094((a1 + 168), v20 + 1);
              *(*(a1 + 176) + 8 * v20) = v17;
              v16 = *v92;
            }

            else
            {
              *(*(a1 + 176) + 8 * v20) = v17;
              v21 = v20 + 1;
            }

            *(a1 + 168) = v21;
            if (!v16)
            {
              goto LABEL_164;
            }

            if (*a3 <= v16 || *v16 != 72)
            {
              goto LABEL_159;
            }
          }
        }

        if (v7 == 74)
        {
          v15 = sub_1958938((a1 + 168), v6, a3);
          goto LABEL_158;
        }

        break;
    }
  }

LABEL_151:
  if (v7)
  {
    v89 = (v7 & 7) == 4;
  }

  else
  {
    v89 = 1;
  }

  if (!v89)
  {
    v90 = *(a1 + 8);
    if (v90)
    {
      v91 = (v90 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v91 = sub_11F1920((a1 + 8));
      v6 = *v92;
    }

    v15 = sub_1952690(v7, v91, v6, a3);
    goto LABEL_158;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v92;
  }

LABEL_164:
  *v92 = 0;
  return *v92;
}